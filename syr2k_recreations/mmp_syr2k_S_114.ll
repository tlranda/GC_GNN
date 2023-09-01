; ModuleID = 'syr2k_recreations//mmp_syr2k_S_114.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_114.c"
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
  %call754 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1615 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2616 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1615, %call2
  %polly.access.call2635 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2635, %call1
  %2 = or i1 %0, %1
  %polly.access.call655 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call655, %call2
  %4 = icmp ule i8* %polly.access.call2635, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call655, %call1
  %8 = icmp ule i8* %polly.access.call1615, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header740, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep929 = getelementptr i8, i8* %call2, i64 %12
  %scevgep928 = getelementptr i8, i8* %call2, i64 %11
  %scevgep927 = getelementptr i8, i8* %call1, i64 %12
  %scevgep926 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep926, %scevgep929
  %bound1 = icmp ult i8* %scevgep928, %scevgep927
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
  br i1 %exitcond18.not.i, label %vector.ph933, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph933:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert940 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat941 = shufflevector <4 x i64> %broadcast.splatinsert940, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body932

vector.body932:                                   ; preds = %vector.body932, %vector.ph933
  %index934 = phi i64 [ 0, %vector.ph933 ], [ %index.next935, %vector.body932 ]
  %vec.ind938 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph933 ], [ %vec.ind.next939, %vector.body932 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind938, %broadcast.splat941
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv7.i, i64 %index934
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next935 = add i64 %index934, 4
  %vec.ind.next939 = add <4 x i64> %vec.ind938, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next935, 80
  br i1 %40, label %for.inc41.i, label %vector.body932, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body932
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph933, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit801.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start435, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1286, label %vector.ph1215

vector.ph1215:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %vector.ph1215
  %index1216 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1217, %vector.body1214 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %index1216
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1217 = add i64 %index1216, 4
  %46 = icmp eq i64 %index.next1217, %n.vec
  br i1 %46, label %middle.block1212, label %vector.body1214, !llvm.loop !18

middle.block1212:                                 ; preds = %vector.body1214
  %cmp.n1219 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1219, label %for.inc6.i, label %for.body3.i46.preheader1286

for.body3.i46.preheader1286:                      ; preds = %for.body3.i46.preheader, %middle.block1212
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1212 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1286, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1286 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1212, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit561.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1235 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1235, label %for.body3.i60.preheader1285, label %vector.ph1236

vector.ph1236:                                    ; preds = %for.body3.i60.preheader
  %n.vec1238 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %vector.ph1236
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1240, %vector.body1234 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %index1239
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1243 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1243, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1240 = add i64 %index1239, 4
  %57 = icmp eq i64 %index.next1240, %n.vec1238
  br i1 %57, label %middle.block1232, label %vector.body1234, !llvm.loop !55

middle.block1232:                                 ; preds = %vector.body1234
  %cmp.n1242 = icmp eq i64 %indvars.iv21.i52, %n.vec1238
  br i1 %cmp.n1242, label %for.inc6.i63, label %for.body3.i60.preheader1285

for.body3.i60.preheader1285:                      ; preds = %for.body3.i60.preheader, %middle.block1232
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1238, %middle.block1232 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1285, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1285 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1232, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit392.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1261 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1261, label %for.body3.i99.preheader1284, label %vector.ph1262

vector.ph1262:                                    ; preds = %for.body3.i99.preheader
  %n.vec1264 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1262
  %index1265 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1266, %vector.body1260 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %index1265
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1269 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1269, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1266 = add i64 %index1265, 4
  %68 = icmp eq i64 %index.next1266, %n.vec1264
  br i1 %68, label %middle.block1258, label %vector.body1260, !llvm.loop !57

middle.block1258:                                 ; preds = %vector.body1260
  %cmp.n1268 = icmp eq i64 %indvars.iv21.i91, %n.vec1264
  br i1 %cmp.n1268, label %for.inc6.i102, label %for.body3.i99.preheader1284

for.body3.i99.preheader1284:                      ; preds = %for.body3.i99.preheader, %middle.block1258
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1264, %middle.block1258 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1284, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1284 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1258, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.1
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1273 = phi i64 [ %indvar.next1274, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1273, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1275 = icmp ult i64 %88, 4
  br i1 %min.iters.check1275, label %polly.loop_header191.preheader, label %vector.ph1276

vector.ph1276:                                    ; preds = %polly.loop_header
  %n.vec1278 = and i64 %88, -4
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %vector.ph1276
  %index1279 = phi i64 [ 0, %vector.ph1276 ], [ %index.next1280, %vector.body1272 ]
  %90 = shl nuw nsw i64 %index1279, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1283 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1283, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1280 = add i64 %index1279, 4
  %95 = icmp eq i64 %index.next1280, %n.vec1278
  br i1 %95, label %middle.block1270, label %vector.body1272, !llvm.loop !69

middle.block1270:                                 ; preds = %vector.body1272
  %cmp.n1282 = icmp eq i64 %88, %n.vec1278
  br i1 %cmp.n1282, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1270
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1278, %middle.block1270 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1270
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1274 = add i64 %indvar1273, 1
  br i1 %exitcond818.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond817.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond817.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond816.not, label %polly.loop_header221, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 60
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond815.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header221:                             ; preds = %polly.loop_exit207, %polly.loop_exit229
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %polly.loop_exit229 ], [ 80, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %97 = shl nuw nsw i64 %polly.indvar224, 3
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next812 = add nsw i64 %indvars.iv811, -8
  %exitcond814.not = icmp eq i64 %polly.indvar_next225, 10
  br i1 %exitcond814.not, label %polly.loop_header221.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %97, %polly.loop_header221 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 7)
  %98 = mul nuw nsw i64 %polly.indvar230, 480
  %scevgep256 = getelementptr i8, i8* %call1, i64 %98
  %99 = mul nuw nsw i64 %polly.indvar230, 640
  %scevgep260 = getelementptr i8, i8* %call, i64 %99
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond813.not = icmp eq i64 %indvars.iv.next, %indvars.iv811
  br i1 %exitcond813.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %100 = shl i64 %polly.indvar236, 3
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %polly.indvar236, 80
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248, %polly.indvar230
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %scevgep257 = getelementptr i8, i8* %scevgep256, i64 %100
  %scevgep257258 = bitcast i8* %scevgep257 to double*
  %_p_scalar_259 = load double, double* %scevgep257258, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next237, 32
  br i1 %exitcond810.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %101 = add nuw nsw i64 %polly.indvar242, %97
  %102 = mul nuw nsw i64 %101, 480
  %103 = add nuw nsw i64 %102, %100
  %scevgep245 = getelementptr i8, i8* %call1, i64 %103
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %101, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %104 = shl i64 %101, 3
  %scevgep261 = getelementptr i8, i8* %scevgep260, i64 %104
  %scevgep261262 = bitcast i8* %scevgep261 to double*
  %_p_scalar_263 = load double, double* %scevgep261262, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_263
  store double %p_add42.i118, double* %scevgep261262, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond.not = icmp eq i64 %polly.indvar242, %smin
  br i1 %exitcond.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header352

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1247 = phi i64 [ %indvar.next1248, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %105 = add i64 %indvar1247, 1
  %106 = mul nuw nsw i64 %polly.indvar355, 640
  %scevgep364 = getelementptr i8, i8* %call, i64 %106
  %min.iters.check1249 = icmp ult i64 %105, 4
  br i1 %min.iters.check1249, label %polly.loop_header358.preheader, label %vector.ph1250

vector.ph1250:                                    ; preds = %polly.loop_header352
  %n.vec1252 = and i64 %105, -4
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1254, %vector.body1246 ]
  %107 = shl nuw nsw i64 %index1253, 3
  %108 = getelementptr i8, i8* %scevgep364, i64 %107
  %109 = bitcast i8* %108 to <4 x double>*
  %wide.load1257 = load <4 x double>, <4 x double>* %109, align 8, !alias.scope !74, !noalias !76
  %110 = fmul fast <4 x double> %wide.load1257, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %111 = bitcast i8* %108 to <4 x double>*
  store <4 x double> %110, <4 x double>* %111, align 8, !alias.scope !74, !noalias !76
  %index.next1254 = add i64 %index1253, 4
  %112 = icmp eq i64 %index.next1254, %n.vec1252
  br i1 %112, label %middle.block1244, label %vector.body1246, !llvm.loop !80

middle.block1244:                                 ; preds = %vector.body1246
  %cmp.n1256 = icmp eq i64 %105, %n.vec1252
  br i1 %cmp.n1256, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1244
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1252, %middle.block1244 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1244
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next356, 80
  %indvar.next1248 = add i64 %indvar1247, 1
  br i1 %exitcond831.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %113 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %113
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond830.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !81

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit376
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit376 ], [ 0, %polly.loop_header368.preheader ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar371, 80
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next372, 60
  br i1 %exitcond829.not, label %polly.loop_header390, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %polly.access.mul.call2381 = mul nuw nsw i64 %polly.indvar377, 60
  %polly.access.add.call2382 = add nuw nsw i64 %polly.access.mul.call2381, %polly.indvar371
  %polly.access.call2383 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2382
  %polly.access.call2383.load = load double, double* %polly.access.call2383, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar377, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2383.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next378, 80
  br i1 %exitcond828.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header390:                             ; preds = %polly.loop_exit376, %polly.loop_exit398
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit398 ], [ 80, %polly.loop_exit376 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_exit376 ]
  %114 = shl nuw nsw i64 %polly.indvar393, 3
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit404
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, -8
  %exitcond827.not = icmp eq i64 %polly.indvar_next394, 10
  br i1 %exitcond827.not, label %polly.loop_header390.1, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.loop_header390
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit404 ], [ 0, %polly.loop_header390 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ %114, %polly.loop_header390 ]
  %smin821 = call i64 @llvm.smin.i64(i64 %indvars.iv819, i64 7)
  %115 = mul nuw nsw i64 %polly.indvar399, 480
  %scevgep425 = getelementptr i8, i8* %call1, i64 %115
  %116 = mul nuw nsw i64 %polly.indvar399, 640
  %scevgep429 = getelementptr i8, i8* %call, i64 %116
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit410
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1
  %exitcond826.not = icmp eq i64 %indvars.iv.next820, %indvars.iv824
  br i1 %exitcond826.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit410, %polly.loop_header396
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header396 ], [ %polly.indvar_next406, %polly.loop_exit410 ]
  %117 = shl i64 %polly.indvar405, 3
  %polly.access.mul.Packed_MemRef_call2269417 = mul nuw nsw i64 %polly.indvar405, 80
  %polly.access.add.Packed_MemRef_call2269418 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417, %polly.indvar399
  %polly.access.Packed_MemRef_call2269419 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418
  %_p_scalar_420 = load double, double* %polly.access.Packed_MemRef_call2269419, align 8
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %117
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next406, 32
  br i1 %exitcond823.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %118 = add nuw nsw i64 %polly.indvar411, %114
  %119 = mul nuw nsw i64 %118, 480
  %120 = add nuw nsw i64 %119, %117
  %scevgep414 = getelementptr i8, i8* %call1, i64 %120
  %scevgep414415 = bitcast i8* %scevgep414 to double*
  %_p_scalar_416 = load double, double* %scevgep414415, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73 = fmul fast double %_p_scalar_420, %_p_scalar_416
  %polly.access.add.Packed_MemRef_call2269422 = add nuw nsw i64 %118, %polly.access.mul.Packed_MemRef_call2269417
  %polly.access.Packed_MemRef_call2269423 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422
  %_p_scalar_424 = load double, double* %polly.access.Packed_MemRef_call2269423, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_428, %_p_scalar_424
  %121 = shl i64 %118, 3
  %scevgep430 = getelementptr i8, i8* %scevgep429, i64 %121
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_432
  store double %p_add42.i79, double* %scevgep430431, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond822.not = icmp eq i64 %polly.indvar411, %smin821
  br i1 %exitcond822.not, label %polly.loop_exit410, label %polly.loop_header408

polly.start435:                                   ; preds = %init_array.exit
  %malloccall437 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header521

polly.loop_header521:                             ; preds = %polly.loop_exit529, %polly.start435
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit529 ], [ 0, %polly.start435 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 1, %polly.start435 ]
  %122 = add i64 %indvar, 1
  %123 = mul nuw nsw i64 %polly.indvar524, 640
  %scevgep533 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1223 = icmp ult i64 %122, 4
  br i1 %min.iters.check1223, label %polly.loop_header527.preheader, label %vector.ph1224

vector.ph1224:                                    ; preds = %polly.loop_header521
  %n.vec1226 = and i64 %122, -4
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1228, %vector.body1222 ]
  %124 = shl nuw nsw i64 %index1227, 3
  %125 = getelementptr i8, i8* %scevgep533, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1231 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !84, !noalias !86
  %127 = fmul fast <4 x double> %wide.load1231, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !84, !noalias !86
  %index.next1228 = add i64 %index1227, 4
  %129 = icmp eq i64 %index.next1228, %n.vec1226
  br i1 %129, label %middle.block1220, label %vector.body1222, !llvm.loop !90

middle.block1220:                                 ; preds = %vector.body1222
  %cmp.n1230 = icmp eq i64 %122, %n.vec1226
  br i1 %cmp.n1230, label %polly.loop_exit529, label %polly.loop_header527.preheader

polly.loop_header527.preheader:                   ; preds = %polly.loop_header521, %middle.block1220
  %polly.indvar530.ph = phi i64 [ 0, %polly.loop_header521 ], [ %n.vec1226, %middle.block1220 ]
  br label %polly.loop_header527

polly.loop_exit529:                               ; preds = %polly.loop_header527, %middle.block1220
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next525, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond844.not, label %polly.loop_header537.preheader, label %polly.loop_header521

polly.loop_header537.preheader:                   ; preds = %polly.loop_exit529
  %Packed_MemRef_call2438 = bitcast i8* %malloccall437 to double*
  br label %polly.loop_header537

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_header527
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_header527 ], [ %polly.indvar530.ph, %polly.loop_header527.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar530, 3
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 %130
  %scevgep534535 = bitcast i8* %scevgep534 to double*
  %_p_scalar_536 = load double, double* %scevgep534535, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_536, 1.200000e+00
  store double %p_mul.i, double* %scevgep534535, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next531, %polly.indvar524
  br i1 %exitcond843.not, label %polly.loop_exit529, label %polly.loop_header527, !llvm.loop !91

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_exit545
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_exit545 ], [ 0, %polly.loop_header537.preheader ]
  %polly.access.mul.Packed_MemRef_call2438 = mul nuw nsw i64 %polly.indvar540, 80
  br label %polly.loop_header543

polly.loop_exit545:                               ; preds = %polly.loop_header543
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next541, 60
  br i1 %exitcond842.not, label %polly.loop_header559, label %polly.loop_header537

polly.loop_header543:                             ; preds = %polly.loop_header543, %polly.loop_header537
  %polly.indvar546 = phi i64 [ 0, %polly.loop_header537 ], [ %polly.indvar_next547, %polly.loop_header543 ]
  %polly.access.mul.call2550 = mul nuw nsw i64 %polly.indvar546, 60
  %polly.access.add.call2551 = add nuw nsw i64 %polly.access.mul.call2550, %polly.indvar540
  %polly.access.call2552 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2551
  %polly.access.call2552.load = load double, double* %polly.access.call2552, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2438 = add nuw nsw i64 %polly.indvar546, %polly.access.mul.Packed_MemRef_call2438
  %polly.access.Packed_MemRef_call2438 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438
  store double %polly.access.call2552.load, double* %polly.access.Packed_MemRef_call2438, align 8
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next547, 80
  br i1 %exitcond841.not, label %polly.loop_exit545, label %polly.loop_header543

polly.loop_header559:                             ; preds = %polly.loop_exit545, %polly.loop_exit567
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %polly.loop_exit567 ], [ 80, %polly.loop_exit545 ]
  %polly.indvar562 = phi i64 [ %polly.indvar_next563, %polly.loop_exit567 ], [ 0, %polly.loop_exit545 ]
  %131 = shl nuw nsw i64 %polly.indvar562, 3
  br label %polly.loop_header565

polly.loop_exit567:                               ; preds = %polly.loop_exit573
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %indvars.iv.next838 = add nsw i64 %indvars.iv837, -8
  %exitcond840.not = icmp eq i64 %polly.indvar_next563, 10
  br i1 %exitcond840.not, label %polly.loop_header559.1, label %polly.loop_header559

polly.loop_header565:                             ; preds = %polly.loop_exit573, %polly.loop_header559
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %polly.loop_exit573 ], [ 0, %polly.loop_header559 ]
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ %131, %polly.loop_header559 ]
  %smin834 = call i64 @llvm.smin.i64(i64 %indvars.iv832, i64 7)
  %132 = mul nuw nsw i64 %polly.indvar568, 480
  %scevgep594 = getelementptr i8, i8* %call1, i64 %132
  %133 = mul nuw nsw i64 %polly.indvar568, 640
  %scevgep598 = getelementptr i8, i8* %call, i64 %133
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit579
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %indvars.iv.next833 = add nuw nsw i64 %indvars.iv832, 1
  %exitcond839.not = icmp eq i64 %indvars.iv.next833, %indvars.iv837
  br i1 %exitcond839.not, label %polly.loop_exit567, label %polly.loop_header565

polly.loop_header571:                             ; preds = %polly.loop_exit579, %polly.loop_header565
  %polly.indvar574 = phi i64 [ 0, %polly.loop_header565 ], [ %polly.indvar_next575, %polly.loop_exit579 ]
  %134 = shl i64 %polly.indvar574, 3
  %polly.access.mul.Packed_MemRef_call2438586 = mul nuw nsw i64 %polly.indvar574, 80
  %polly.access.add.Packed_MemRef_call2438587 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586, %polly.indvar568
  %polly.access.Packed_MemRef_call2438588 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2438588, align 8
  %scevgep595 = getelementptr i8, i8* %scevgep594, i64 %134
  %scevgep595596 = bitcast i8* %scevgep595 to double*
  %_p_scalar_597 = load double, double* %scevgep595596, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_header577
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next575, 32
  br i1 %exitcond836.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header577:                             ; preds = %polly.loop_header577, %polly.loop_header571
  %polly.indvar580 = phi i64 [ 0, %polly.loop_header571 ], [ %polly.indvar_next581, %polly.loop_header577 ]
  %135 = add nuw nsw i64 %polly.indvar580, %131
  %136 = mul nuw nsw i64 %135, 480
  %137 = add nuw nsw i64 %136, %134
  %scevgep583 = getelementptr i8, i8* %call1, i64 %137
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i = fmul fast double %_p_scalar_589, %_p_scalar_585
  %polly.access.add.Packed_MemRef_call2438591 = add nuw nsw i64 %135, %polly.access.mul.Packed_MemRef_call2438586
  %polly.access.Packed_MemRef_call2438592 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591
  %_p_scalar_593 = load double, double* %polly.access.Packed_MemRef_call2438592, align 8
  %p_mul37.i = fmul fast double %_p_scalar_597, %_p_scalar_593
  %138 = shl i64 %135, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %138
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_601
  store double %p_add42.i, double* %scevgep599600, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %exitcond835.not = icmp eq i64 %polly.indvar580, %smin834
  br i1 %exitcond835.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %139 = mul nuw nsw i64 %polly.indvar743, 640
  %140 = trunc i64 %polly.indvar743 to i32
  %broadcast.splatinsert954 = insertelement <4 x i32> poison, i32 %140, i32 0
  %broadcast.splat955 = shufflevector <4 x i32> %broadcast.splatinsert954, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %polly.loop_header740
  %index946 = phi i64 [ 0, %polly.loop_header740 ], [ %index.next947, %vector.body944 ]
  %vec.ind952 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740 ], [ %vec.ind.next953, %vector.body944 ]
  %141 = mul <4 x i32> %vec.ind952, %broadcast.splat955
  %142 = add <4 x i32> %141, <i32 3, i32 3, i32 3, i32 3>
  %143 = urem <4 x i32> %142, <i32 80, i32 80, i32 80, i32 80>
  %144 = sitofp <4 x i32> %143 to <4 x double>
  %145 = fmul fast <4 x double> %144, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %146 = shl i64 %index946, 3
  %147 = add nuw nsw i64 %146, %139
  %148 = getelementptr i8, i8* %call, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %145, <4 x double>* %149, align 8, !alias.scope !94, !noalias !96
  %index.next947 = add i64 %index946, 4
  %vec.ind.next953 = add <4 x i32> %vec.ind952, <i32 4, i32 4, i32 4, i32 4>
  %150 = icmp eq i64 %index.next947, 32
  br i1 %150, label %polly.loop_exit748, label %vector.body944, !llvm.loop !99

polly.loop_exit748:                               ; preds = %vector.body944
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next744, 32
  br i1 %exitcond864.not, label %polly.loop_header740.1, label %polly.loop_header740

polly.loop_header767:                             ; preds = %polly.loop_exit748.2.2, %polly.loop_exit775
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748.2.2 ]
  %151 = mul nuw nsw i64 %polly.indvar770, 480
  %152 = trunc i64 %polly.indvar770 to i32
  %broadcast.splatinsert1068 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat1069 = shufflevector <4 x i32> %broadcast.splatinsert1068, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %polly.loop_header767
  %index1060 = phi i64 [ 0, %polly.loop_header767 ], [ %index.next1061, %vector.body1058 ]
  %vec.ind1066 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767 ], [ %vec.ind.next1067, %vector.body1058 ]
  %153 = mul <4 x i32> %vec.ind1066, %broadcast.splat1069
  %154 = add <4 x i32> %153, <i32 2, i32 2, i32 2, i32 2>
  %155 = urem <4 x i32> %154, <i32 60, i32 60, i32 60, i32 60>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index1060, 3
  %159 = add i64 %158, %151
  %160 = getelementptr i8, i8* %call2, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !98, !noalias !100
  %index.next1061 = add i64 %index1060, 4
  %vec.ind.next1067 = add <4 x i32> %vec.ind1066, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next1061, 32
  br i1 %162, label %polly.loop_exit775, label %vector.body1058, !llvm.loop !101

polly.loop_exit775:                               ; preds = %vector.body1058
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next771, 32
  br i1 %exitcond855.not, label %polly.loop_header767.1, label %polly.loop_header767

polly.loop_header793:                             ; preds = %polly.loop_exit775.1.2, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775.1.2 ]
  %163 = mul nuw nsw i64 %polly.indvar796, 480
  %164 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %polly.loop_header793
  %index1138 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1139, %vector.body1136 ]
  %vec.ind1144 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1145, %vector.body1136 ]
  %165 = mul <4 x i32> %vec.ind1144, %broadcast.splat1147
  %166 = add <4 x i32> %165, <i32 1, i32 1, i32 1, i32 1>
  %167 = urem <4 x i32> %166, <i32 80, i32 80, i32 80, i32 80>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %170 = shl i64 %index1138, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call1, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !97, !noalias !102
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1145 = add <4 x i32> %vec.ind1144, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1139, 32
  br i1 %174, label %polly.loop_exit801, label %vector.body1136, !llvm.loop !103

polly.loop_exit801:                               ; preds = %vector.body1136
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond849.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header221.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv811.1 = phi i64 [ %indvars.iv.next812.1, %polly.loop_exit229.1 ], [ 80, %polly.loop_exit229 ]
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %175 = shl nuw nsw i64 %polly.indvar224.1, 3
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header221.1 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ %175, %polly.loop_header221.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 7)
  %176 = mul nuw nsw i64 %polly.indvar230.1, 480
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %176
  %177 = mul nuw nsw i64 %polly.indvar230.1, 640
  %scevgep260.1 = getelementptr i8, i8* %call, i64 %177
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_exit241.1 ]
  %178 = add nuw nsw i64 %polly.indvar236.1, 32
  %179 = shl i64 %178, 3
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %178, 80
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.1, %polly.indvar230.1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %scevgep257.1 = getelementptr i8, i8* %scevgep256.1, i64 %179
  %scevgep257258.1 = bitcast i8* %scevgep257.1 to double*
  %_p_scalar_259.1 = load double, double* %scevgep257258.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %180 = add nuw nsw i64 %polly.indvar242.1, %175
  %181 = mul nuw nsw i64 %180, 480
  %182 = add nuw nsw i64 %181, %179
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %182
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %180, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_259.1, %_p_scalar_255.1
  %183 = shl i64 %180, 3
  %scevgep261.1 = getelementptr i8, i8* %scevgep260.1, i64 %183
  %scevgep261262.1 = bitcast i8* %scevgep261.1 to double*
  %_p_scalar_263.1 = load double, double* %scevgep261262.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_263.1
  store double %p_add42.i118.1, double* %scevgep261262.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar242.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond810.1.not = icmp eq i64 %polly.indvar_next237.1, 28
  br i1 %exitcond810.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond813.1.not = icmp eq i64 %indvars.iv.next.1, %indvars.iv811.1
  br i1 %exitcond813.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %indvars.iv.next812.1 = add nsw i64 %indvars.iv811.1, -8
  %exitcond814.1.not = icmp eq i64 %polly.indvar_next225.1, 10
  br i1 %exitcond814.1.not, label %polly.loop_exit223.1, label %polly.loop_header221.1

polly.loop_exit223.1:                             ; preds = %polly.loop_exit229.1
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header390.1:                           ; preds = %polly.loop_exit398, %polly.loop_exit398.1
  %indvars.iv824.1 = phi i64 [ %indvars.iv.next825.1, %polly.loop_exit398.1 ], [ 80, %polly.loop_exit398 ]
  %polly.indvar393.1 = phi i64 [ %polly.indvar_next394.1, %polly.loop_exit398.1 ], [ 0, %polly.loop_exit398 ]
  %184 = shl nuw nsw i64 %polly.indvar393.1, 3
  br label %polly.loop_header396.1

polly.loop_header396.1:                           ; preds = %polly.loop_exit404.1, %polly.loop_header390.1
  %indvars.iv819.1 = phi i64 [ %indvars.iv.next820.1, %polly.loop_exit404.1 ], [ 0, %polly.loop_header390.1 ]
  %polly.indvar399.1 = phi i64 [ %polly.indvar_next400.1, %polly.loop_exit404.1 ], [ %184, %polly.loop_header390.1 ]
  %smin821.1 = call i64 @llvm.smin.i64(i64 %indvars.iv819.1, i64 7)
  %185 = mul nuw nsw i64 %polly.indvar399.1, 480
  %scevgep425.1 = getelementptr i8, i8* %call1, i64 %185
  %186 = mul nuw nsw i64 %polly.indvar399.1, 640
  %scevgep429.1 = getelementptr i8, i8* %call, i64 %186
  br label %polly.loop_header402.1

polly.loop_header402.1:                           ; preds = %polly.loop_exit410.1, %polly.loop_header396.1
  %polly.indvar405.1 = phi i64 [ 0, %polly.loop_header396.1 ], [ %polly.indvar_next406.1, %polly.loop_exit410.1 ]
  %187 = add nuw nsw i64 %polly.indvar405.1, 32
  %188 = shl i64 %187, 3
  %polly.access.mul.Packed_MemRef_call2269417.1 = mul nuw nsw i64 %187, 80
  %polly.access.add.Packed_MemRef_call2269418.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417.1, %polly.indvar399.1
  %polly.access.Packed_MemRef_call2269419.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.1
  %_p_scalar_420.1 = load double, double* %polly.access.Packed_MemRef_call2269419.1, align 8
  %scevgep426.1 = getelementptr i8, i8* %scevgep425.1, i64 %188
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408.1

polly.loop_header408.1:                           ; preds = %polly.loop_header408.1, %polly.loop_header402.1
  %polly.indvar411.1 = phi i64 [ 0, %polly.loop_header402.1 ], [ %polly.indvar_next412.1, %polly.loop_header408.1 ]
  %189 = add nuw nsw i64 %polly.indvar411.1, %184
  %190 = mul nuw nsw i64 %189, 480
  %191 = add nuw nsw i64 %190, %188
  %scevgep414.1 = getelementptr i8, i8* %call1, i64 %191
  %scevgep414415.1 = bitcast i8* %scevgep414.1 to double*
  %_p_scalar_416.1 = load double, double* %scevgep414415.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.1 = fmul fast double %_p_scalar_420.1, %_p_scalar_416.1
  %polly.access.add.Packed_MemRef_call2269422.1 = add nuw nsw i64 %189, %polly.access.mul.Packed_MemRef_call2269417.1
  %polly.access.Packed_MemRef_call2269423.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.1
  %_p_scalar_424.1 = load double, double* %polly.access.Packed_MemRef_call2269423.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_428.1, %_p_scalar_424.1
  %192 = shl i64 %189, 3
  %scevgep430.1 = getelementptr i8, i8* %scevgep429.1, i64 %192
  %scevgep430431.1 = bitcast i8* %scevgep430.1 to double*
  %_p_scalar_432.1 = load double, double* %scevgep430431.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_432.1
  store double %p_add42.i79.1, double* %scevgep430431.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412.1 = add nuw nsw i64 %polly.indvar411.1, 1
  %exitcond822.1.not = icmp eq i64 %polly.indvar411.1, %smin821.1
  br i1 %exitcond822.1.not, label %polly.loop_exit410.1, label %polly.loop_header408.1

polly.loop_exit410.1:                             ; preds = %polly.loop_header408.1
  %polly.indvar_next406.1 = add nuw nsw i64 %polly.indvar405.1, 1
  %exitcond823.1.not = icmp eq i64 %polly.indvar_next406.1, 28
  br i1 %exitcond823.1.not, label %polly.loop_exit404.1, label %polly.loop_header402.1

polly.loop_exit404.1:                             ; preds = %polly.loop_exit410.1
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %indvars.iv.next820.1 = add nuw nsw i64 %indvars.iv819.1, 1
  %exitcond826.1.not = icmp eq i64 %indvars.iv.next820.1, %indvars.iv824.1
  br i1 %exitcond826.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_exit404.1
  %polly.indvar_next394.1 = add nuw nsw i64 %polly.indvar393.1, 1
  %indvars.iv.next825.1 = add nsw i64 %indvars.iv824.1, -8
  %exitcond827.1.not = icmp eq i64 %polly.indvar_next394.1, 10
  br i1 %exitcond827.1.not, label %polly.loop_exit392.1, label %polly.loop_header390.1

polly.loop_exit392.1:                             ; preds = %polly.loop_exit398.1
  tail call void @free(i8* nonnull %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header559.1:                           ; preds = %polly.loop_exit567, %polly.loop_exit567.1
  %indvars.iv837.1 = phi i64 [ %indvars.iv.next838.1, %polly.loop_exit567.1 ], [ 80, %polly.loop_exit567 ]
  %polly.indvar562.1 = phi i64 [ %polly.indvar_next563.1, %polly.loop_exit567.1 ], [ 0, %polly.loop_exit567 ]
  %193 = shl nuw nsw i64 %polly.indvar562.1, 3
  br label %polly.loop_header565.1

polly.loop_header565.1:                           ; preds = %polly.loop_exit573.1, %polly.loop_header559.1
  %indvars.iv832.1 = phi i64 [ %indvars.iv.next833.1, %polly.loop_exit573.1 ], [ 0, %polly.loop_header559.1 ]
  %polly.indvar568.1 = phi i64 [ %polly.indvar_next569.1, %polly.loop_exit573.1 ], [ %193, %polly.loop_header559.1 ]
  %smin834.1 = call i64 @llvm.smin.i64(i64 %indvars.iv832.1, i64 7)
  %194 = mul nuw nsw i64 %polly.indvar568.1, 480
  %scevgep594.1 = getelementptr i8, i8* %call1, i64 %194
  %195 = mul nuw nsw i64 %polly.indvar568.1, 640
  %scevgep598.1 = getelementptr i8, i8* %call, i64 %195
  br label %polly.loop_header571.1

polly.loop_header571.1:                           ; preds = %polly.loop_exit579.1, %polly.loop_header565.1
  %polly.indvar574.1 = phi i64 [ 0, %polly.loop_header565.1 ], [ %polly.indvar_next575.1, %polly.loop_exit579.1 ]
  %196 = add nuw nsw i64 %polly.indvar574.1, 32
  %197 = shl i64 %196, 3
  %polly.access.mul.Packed_MemRef_call2438586.1 = mul nuw nsw i64 %196, 80
  %polly.access.add.Packed_MemRef_call2438587.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586.1, %polly.indvar568.1
  %polly.access.Packed_MemRef_call2438588.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2438588.1, align 8
  %scevgep595.1 = getelementptr i8, i8* %scevgep594.1, i64 %197
  %scevgep595596.1 = bitcast i8* %scevgep595.1 to double*
  %_p_scalar_597.1 = load double, double* %scevgep595596.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577.1

polly.loop_header577.1:                           ; preds = %polly.loop_header577.1, %polly.loop_header571.1
  %polly.indvar580.1 = phi i64 [ 0, %polly.loop_header571.1 ], [ %polly.indvar_next581.1, %polly.loop_header577.1 ]
  %198 = add nuw nsw i64 %polly.indvar580.1, %193
  %199 = mul nuw nsw i64 %198, 480
  %200 = add nuw nsw i64 %199, %197
  %scevgep583.1 = getelementptr i8, i8* %call1, i64 %200
  %scevgep583584.1 = bitcast i8* %scevgep583.1 to double*
  %_p_scalar_585.1 = load double, double* %scevgep583584.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.1 = fmul fast double %_p_scalar_589.1, %_p_scalar_585.1
  %polly.access.add.Packed_MemRef_call2438591.1 = add nuw nsw i64 %198, %polly.access.mul.Packed_MemRef_call2438586.1
  %polly.access.Packed_MemRef_call2438592.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.1
  %_p_scalar_593.1 = load double, double* %polly.access.Packed_MemRef_call2438592.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_597.1, %_p_scalar_593.1
  %201 = shl i64 %198, 3
  %scevgep599.1 = getelementptr i8, i8* %scevgep598.1, i64 %201
  %scevgep599600.1 = bitcast i8* %scevgep599.1 to double*
  %_p_scalar_601.1 = load double, double* %scevgep599600.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_601.1
  store double %p_add42.i.1, double* %scevgep599600.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581.1 = add nuw nsw i64 %polly.indvar580.1, 1
  %exitcond835.1.not = icmp eq i64 %polly.indvar580.1, %smin834.1
  br i1 %exitcond835.1.not, label %polly.loop_exit579.1, label %polly.loop_header577.1

polly.loop_exit579.1:                             ; preds = %polly.loop_header577.1
  %polly.indvar_next575.1 = add nuw nsw i64 %polly.indvar574.1, 1
  %exitcond836.1.not = icmp eq i64 %polly.indvar_next575.1, 28
  br i1 %exitcond836.1.not, label %polly.loop_exit573.1, label %polly.loop_header571.1

polly.loop_exit573.1:                             ; preds = %polly.loop_exit579.1
  %polly.indvar_next569.1 = add nuw nsw i64 %polly.indvar568.1, 1
  %indvars.iv.next833.1 = add nuw nsw i64 %indvars.iv832.1, 1
  %exitcond839.1.not = icmp eq i64 %indvars.iv.next833.1, %indvars.iv837.1
  br i1 %exitcond839.1.not, label %polly.loop_exit567.1, label %polly.loop_header565.1

polly.loop_exit567.1:                             ; preds = %polly.loop_exit573.1
  %polly.indvar_next563.1 = add nuw nsw i64 %polly.indvar562.1, 1
  %indvars.iv.next838.1 = add nsw i64 %indvars.iv837.1, -8
  %exitcond840.1.not = icmp eq i64 %polly.indvar_next563.1, 10
  br i1 %exitcond840.1.not, label %polly.loop_exit561.1, label %polly.loop_header559.1

polly.loop_exit561.1:                             ; preds = %polly.loop_exit567.1
  tail call void @free(i8* nonnull %malloccall437)
  br label %kernel_syr2k.exit

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %202 = mul nuw nsw i64 %polly.indvar796.1, 480
  %203 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %polly.loop_header793.1
  %index1152 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1153, %vector.body1150 ]
  %vec.ind1156 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1157, %vector.body1150 ]
  %204 = add nuw nsw <4 x i64> %vec.ind1156, <i64 32, i64 32, i64 32, i64 32>
  %205 = trunc <4 x i64> %204 to <4 x i32>
  %206 = mul <4 x i32> %broadcast.splat1159, %205
  %207 = add <4 x i32> %206, <i32 1, i32 1, i32 1, i32 1>
  %208 = urem <4 x i32> %207, <i32 80, i32 80, i32 80, i32 80>
  %209 = sitofp <4 x i32> %208 to <4 x double>
  %210 = fmul fast <4 x double> %209, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %211 = extractelement <4 x i64> %204, i32 0
  %212 = shl i64 %211, 3
  %213 = add i64 %212, %202
  %214 = getelementptr i8, i8* %call1, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %210, <4 x double>* %215, align 8, !alias.scope !97, !noalias !102
  %index.next1153 = add i64 %index1152, 4
  %vec.ind.next1157 = add <4 x i64> %vec.ind1156, <i64 4, i64 4, i64 4, i64 4>
  %216 = icmp eq i64 %index.next1153, 28
  br i1 %216, label %polly.loop_exit801.1, label %vector.body1150, !llvm.loop !104

polly.loop_exit801.1:                             ; preds = %vector.body1150
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond849.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond849.1.not, label %polly.loop_header793.1869, label %polly.loop_header793.1

polly.loop_header793.1869:                        ; preds = %polly.loop_exit801.1, %polly.loop_exit801.1880
  %polly.indvar796.1868 = phi i64 [ %polly.indvar_next797.1878, %polly.loop_exit801.1880 ], [ 0, %polly.loop_exit801.1 ]
  %217 = add nuw nsw i64 %polly.indvar796.1868, 32
  %218 = mul nuw nsw i64 %217, 480
  %219 = trunc i64 %217 to i32
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %219, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %polly.loop_header793.1869
  %index1164 = phi i64 [ 0, %polly.loop_header793.1869 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.1869 ], [ %vec.ind.next1171, %vector.body1162 ]
  %220 = mul <4 x i32> %vec.ind1170, %broadcast.splat1173
  %221 = add <4 x i32> %220, <i32 1, i32 1, i32 1, i32 1>
  %222 = urem <4 x i32> %221, <i32 80, i32 80, i32 80, i32 80>
  %223 = sitofp <4 x i32> %222 to <4 x double>
  %224 = fmul fast <4 x double> %223, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %225 = shl i64 %index1164, 3
  %226 = add i64 %225, %218
  %227 = getelementptr i8, i8* %call1, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %224, <4 x double>* %228, align 8, !alias.scope !97, !noalias !102
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1171 = add <4 x i32> %vec.ind1170, <i32 4, i32 4, i32 4, i32 4>
  %229 = icmp eq i64 %index.next1165, 32
  br i1 %229, label %polly.loop_exit801.1880, label %vector.body1162, !llvm.loop !105

polly.loop_exit801.1880:                          ; preds = %vector.body1162
  %polly.indvar_next797.1878 = add nuw nsw i64 %polly.indvar796.1868, 1
  %exitcond849.1879.not = icmp eq i64 %polly.indvar_next797.1878, 32
  br i1 %exitcond849.1879.not, label %polly.loop_header793.1.1, label %polly.loop_header793.1869

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.1880, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.1880 ]
  %230 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %231 = mul nuw nsw i64 %230, 480
  %232 = trunc i64 %230 to i32
  %broadcast.splatinsert1184 = insertelement <4 x i32> poison, i32 %232, i32 0
  %broadcast.splat1185 = shufflevector <4 x i32> %broadcast.splatinsert1184, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %polly.loop_header793.1.1
  %index1178 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1179, %vector.body1176 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1183, %vector.body1176 ]
  %233 = add nuw nsw <4 x i64> %vec.ind1182, <i64 32, i64 32, i64 32, i64 32>
  %234 = trunc <4 x i64> %233 to <4 x i32>
  %235 = mul <4 x i32> %broadcast.splat1185, %234
  %236 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %237 = urem <4 x i32> %236, <i32 80, i32 80, i32 80, i32 80>
  %238 = sitofp <4 x i32> %237 to <4 x double>
  %239 = fmul fast <4 x double> %238, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %240 = extractelement <4 x i64> %233, i32 0
  %241 = shl i64 %240, 3
  %242 = add i64 %241, %231
  %243 = getelementptr i8, i8* %call1, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %239, <4 x double>* %244, align 8, !alias.scope !97, !noalias !102
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %245 = icmp eq i64 %index.next1179, 28
  br i1 %245, label %polly.loop_exit801.1.1, label %vector.body1176, !llvm.loop !106

polly.loop_exit801.1.1:                           ; preds = %vector.body1176
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond849.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond849.1.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1.1 ]
  %246 = add nuw nsw i64 %polly.indvar796.2, 64
  %247 = mul nuw nsw i64 %246, 480
  %248 = trunc i64 %246 to i32
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %248, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %polly.loop_header793.2
  %index1190 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1196 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.2 ], [ %vec.ind.next1197, %vector.body1188 ]
  %249 = mul <4 x i32> %vec.ind1196, %broadcast.splat1199
  %250 = add <4 x i32> %249, <i32 1, i32 1, i32 1, i32 1>
  %251 = urem <4 x i32> %250, <i32 80, i32 80, i32 80, i32 80>
  %252 = sitofp <4 x i32> %251 to <4 x double>
  %253 = fmul fast <4 x double> %252, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %254 = shl i64 %index1190, 3
  %255 = add i64 %254, %247
  %256 = getelementptr i8, i8* %call1, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %253, <4 x double>* %257, align 8, !alias.scope !97, !noalias !102
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1197 = add <4 x i32> %vec.ind1196, <i32 4, i32 4, i32 4, i32 4>
  %258 = icmp eq i64 %index.next1191, 32
  br i1 %258, label %polly.loop_exit801.2, label %vector.body1188, !llvm.loop !107

polly.loop_exit801.2:                             ; preds = %vector.body1188
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond849.2.not = icmp eq i64 %polly.indvar_next797.2, 16
  br i1 %exitcond849.2.not, label %polly.loop_header793.1.2, label %polly.loop_header793.2

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.2, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.2 ]
  %259 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %260 = mul nuw nsw i64 %259, 480
  %261 = trunc i64 %259 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %261, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header793.1.2
  %index1204 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1208 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1209, %vector.body1202 ]
  %262 = add nuw nsw <4 x i64> %vec.ind1208, <i64 32, i64 32, i64 32, i64 32>
  %263 = trunc <4 x i64> %262 to <4 x i32>
  %264 = mul <4 x i32> %broadcast.splat1211, %263
  %265 = add <4 x i32> %264, <i32 1, i32 1, i32 1, i32 1>
  %266 = urem <4 x i32> %265, <i32 80, i32 80, i32 80, i32 80>
  %267 = sitofp <4 x i32> %266 to <4 x double>
  %268 = fmul fast <4 x double> %267, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %269 = extractelement <4 x i64> %262, i32 0
  %270 = shl i64 %269, 3
  %271 = add i64 %270, %260
  %272 = getelementptr i8, i8* %call1, i64 %271
  %273 = bitcast i8* %272 to <4 x double>*
  store <4 x double> %268, <4 x double>* %273, align 8, !alias.scope !97, !noalias !102
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1209 = add <4 x i64> %vec.ind1208, <i64 4, i64 4, i64 4, i64 4>
  %274 = icmp eq i64 %index.next1205, 28
  br i1 %274, label %polly.loop_exit801.1.2, label %vector.body1202, !llvm.loop !108

polly.loop_exit801.1.2:                           ; preds = %vector.body1202
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond849.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond849.1.2.not, label %init_array.exit, label %polly.loop_header793.1.2

polly.loop_header767.1:                           ; preds = %polly.loop_exit775, %polly.loop_exit775.1
  %polly.indvar770.1 = phi i64 [ %polly.indvar_next771.1, %polly.loop_exit775.1 ], [ 0, %polly.loop_exit775 ]
  %275 = mul nuw nsw i64 %polly.indvar770.1, 480
  %276 = trunc i64 %polly.indvar770.1 to i32
  %broadcast.splatinsert1080 = insertelement <4 x i32> poison, i32 %276, i32 0
  %broadcast.splat1081 = shufflevector <4 x i32> %broadcast.splatinsert1080, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1072

vector.body1072:                                  ; preds = %vector.body1072, %polly.loop_header767.1
  %index1074 = phi i64 [ 0, %polly.loop_header767.1 ], [ %index.next1075, %vector.body1072 ]
  %vec.ind1078 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1 ], [ %vec.ind.next1079, %vector.body1072 ]
  %277 = add nuw nsw <4 x i64> %vec.ind1078, <i64 32, i64 32, i64 32, i64 32>
  %278 = trunc <4 x i64> %277 to <4 x i32>
  %279 = mul <4 x i32> %broadcast.splat1081, %278
  %280 = add <4 x i32> %279, <i32 2, i32 2, i32 2, i32 2>
  %281 = urem <4 x i32> %280, <i32 60, i32 60, i32 60, i32 60>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %284 = extractelement <4 x i64> %277, i32 0
  %285 = shl i64 %284, 3
  %286 = add i64 %285, %275
  %287 = getelementptr i8, i8* %call2, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %283, <4 x double>* %288, align 8, !alias.scope !98, !noalias !100
  %index.next1075 = add i64 %index1074, 4
  %vec.ind.next1079 = add <4 x i64> %vec.ind1078, <i64 4, i64 4, i64 4, i64 4>
  %289 = icmp eq i64 %index.next1075, 28
  br i1 %289, label %polly.loop_exit775.1, label %vector.body1072, !llvm.loop !109

polly.loop_exit775.1:                             ; preds = %vector.body1072
  %polly.indvar_next771.1 = add nuw nsw i64 %polly.indvar770.1, 1
  %exitcond855.1.not = icmp eq i64 %polly.indvar_next771.1, 32
  br i1 %exitcond855.1.not, label %polly.loop_header767.1883, label %polly.loop_header767.1

polly.loop_header767.1883:                        ; preds = %polly.loop_exit775.1, %polly.loop_exit775.1894
  %polly.indvar770.1882 = phi i64 [ %polly.indvar_next771.1892, %polly.loop_exit775.1894 ], [ 0, %polly.loop_exit775.1 ]
  %290 = add nuw nsw i64 %polly.indvar770.1882, 32
  %291 = mul nuw nsw i64 %290, 480
  %292 = trunc i64 %290 to i32
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %polly.loop_header767.1883
  %index1086 = phi i64 [ 0, %polly.loop_header767.1883 ], [ %index.next1087, %vector.body1084 ]
  %vec.ind1092 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.1883 ], [ %vec.ind.next1093, %vector.body1084 ]
  %293 = mul <4 x i32> %vec.ind1092, %broadcast.splat1095
  %294 = add <4 x i32> %293, <i32 2, i32 2, i32 2, i32 2>
  %295 = urem <4 x i32> %294, <i32 60, i32 60, i32 60, i32 60>
  %296 = sitofp <4 x i32> %295 to <4 x double>
  %297 = fmul fast <4 x double> %296, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %298 = shl i64 %index1086, 3
  %299 = add i64 %298, %291
  %300 = getelementptr i8, i8* %call2, i64 %299
  %301 = bitcast i8* %300 to <4 x double>*
  store <4 x double> %297, <4 x double>* %301, align 8, !alias.scope !98, !noalias !100
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1093 = add <4 x i32> %vec.ind1092, <i32 4, i32 4, i32 4, i32 4>
  %302 = icmp eq i64 %index.next1087, 32
  br i1 %302, label %polly.loop_exit775.1894, label %vector.body1084, !llvm.loop !110

polly.loop_exit775.1894:                          ; preds = %vector.body1084
  %polly.indvar_next771.1892 = add nuw nsw i64 %polly.indvar770.1882, 1
  %exitcond855.1893.not = icmp eq i64 %polly.indvar_next771.1892, 32
  br i1 %exitcond855.1893.not, label %polly.loop_header767.1.1, label %polly.loop_header767.1883

polly.loop_header767.1.1:                         ; preds = %polly.loop_exit775.1894, %polly.loop_exit775.1.1
  %polly.indvar770.1.1 = phi i64 [ %polly.indvar_next771.1.1, %polly.loop_exit775.1.1 ], [ 0, %polly.loop_exit775.1894 ]
  %303 = add nuw nsw i64 %polly.indvar770.1.1, 32
  %304 = mul nuw nsw i64 %303, 480
  %305 = trunc i64 %303 to i32
  %broadcast.splatinsert1106 = insertelement <4 x i32> poison, i32 %305, i32 0
  %broadcast.splat1107 = shufflevector <4 x i32> %broadcast.splatinsert1106, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %polly.loop_header767.1.1
  %index1100 = phi i64 [ 0, %polly.loop_header767.1.1 ], [ %index.next1101, %vector.body1098 ]
  %vec.ind1104 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.1 ], [ %vec.ind.next1105, %vector.body1098 ]
  %306 = add nuw nsw <4 x i64> %vec.ind1104, <i64 32, i64 32, i64 32, i64 32>
  %307 = trunc <4 x i64> %306 to <4 x i32>
  %308 = mul <4 x i32> %broadcast.splat1107, %307
  %309 = add <4 x i32> %308, <i32 2, i32 2, i32 2, i32 2>
  %310 = urem <4 x i32> %309, <i32 60, i32 60, i32 60, i32 60>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %313 = extractelement <4 x i64> %306, i32 0
  %314 = shl i64 %313, 3
  %315 = add i64 %314, %304
  %316 = getelementptr i8, i8* %call2, i64 %315
  %317 = bitcast i8* %316 to <4 x double>*
  store <4 x double> %312, <4 x double>* %317, align 8, !alias.scope !98, !noalias !100
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1105 = add <4 x i64> %vec.ind1104, <i64 4, i64 4, i64 4, i64 4>
  %318 = icmp eq i64 %index.next1101, 28
  br i1 %318, label %polly.loop_exit775.1.1, label %vector.body1098, !llvm.loop !111

polly.loop_exit775.1.1:                           ; preds = %vector.body1098
  %polly.indvar_next771.1.1 = add nuw nsw i64 %polly.indvar770.1.1, 1
  %exitcond855.1.1.not = icmp eq i64 %polly.indvar_next771.1.1, 32
  br i1 %exitcond855.1.1.not, label %polly.loop_header767.2, label %polly.loop_header767.1.1

polly.loop_header767.2:                           ; preds = %polly.loop_exit775.1.1, %polly.loop_exit775.2
  %polly.indvar770.2 = phi i64 [ %polly.indvar_next771.2, %polly.loop_exit775.2 ], [ 0, %polly.loop_exit775.1.1 ]
  %319 = add nuw nsw i64 %polly.indvar770.2, 64
  %320 = mul nuw nsw i64 %319, 480
  %321 = trunc i64 %319 to i32
  %broadcast.splatinsert1120 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1121 = shufflevector <4 x i32> %broadcast.splatinsert1120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %polly.loop_header767.2
  %index1112 = phi i64 [ 0, %polly.loop_header767.2 ], [ %index.next1113, %vector.body1110 ]
  %vec.ind1118 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.2 ], [ %vec.ind.next1119, %vector.body1110 ]
  %322 = mul <4 x i32> %vec.ind1118, %broadcast.splat1121
  %323 = add <4 x i32> %322, <i32 2, i32 2, i32 2, i32 2>
  %324 = urem <4 x i32> %323, <i32 60, i32 60, i32 60, i32 60>
  %325 = sitofp <4 x i32> %324 to <4 x double>
  %326 = fmul fast <4 x double> %325, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %327 = shl i64 %index1112, 3
  %328 = add i64 %327, %320
  %329 = getelementptr i8, i8* %call2, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %326, <4 x double>* %330, align 8, !alias.scope !98, !noalias !100
  %index.next1113 = add i64 %index1112, 4
  %vec.ind.next1119 = add <4 x i32> %vec.ind1118, <i32 4, i32 4, i32 4, i32 4>
  %331 = icmp eq i64 %index.next1113, 32
  br i1 %331, label %polly.loop_exit775.2, label %vector.body1110, !llvm.loop !112

polly.loop_exit775.2:                             ; preds = %vector.body1110
  %polly.indvar_next771.2 = add nuw nsw i64 %polly.indvar770.2, 1
  %exitcond855.2.not = icmp eq i64 %polly.indvar_next771.2, 16
  br i1 %exitcond855.2.not, label %polly.loop_header767.1.2, label %polly.loop_header767.2

polly.loop_header767.1.2:                         ; preds = %polly.loop_exit775.2, %polly.loop_exit775.1.2
  %polly.indvar770.1.2 = phi i64 [ %polly.indvar_next771.1.2, %polly.loop_exit775.1.2 ], [ 0, %polly.loop_exit775.2 ]
  %332 = add nuw nsw i64 %polly.indvar770.1.2, 64
  %333 = mul nuw nsw i64 %332, 480
  %334 = trunc i64 %332 to i32
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %334, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %polly.loop_header767.1.2
  %index1126 = phi i64 [ 0, %polly.loop_header767.1.2 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1130 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.2 ], [ %vec.ind.next1131, %vector.body1124 ]
  %335 = add nuw nsw <4 x i64> %vec.ind1130, <i64 32, i64 32, i64 32, i64 32>
  %336 = trunc <4 x i64> %335 to <4 x i32>
  %337 = mul <4 x i32> %broadcast.splat1133, %336
  %338 = add <4 x i32> %337, <i32 2, i32 2, i32 2, i32 2>
  %339 = urem <4 x i32> %338, <i32 60, i32 60, i32 60, i32 60>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %342 = extractelement <4 x i64> %335, i32 0
  %343 = shl i64 %342, 3
  %344 = add i64 %343, %333
  %345 = getelementptr i8, i8* %call2, i64 %344
  %346 = bitcast i8* %345 to <4 x double>*
  store <4 x double> %341, <4 x double>* %346, align 8, !alias.scope !98, !noalias !100
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1131 = add <4 x i64> %vec.ind1130, <i64 4, i64 4, i64 4, i64 4>
  %347 = icmp eq i64 %index.next1127, 28
  br i1 %347, label %polly.loop_exit775.1.2, label %vector.body1124, !llvm.loop !113

polly.loop_exit775.1.2:                           ; preds = %vector.body1124
  %polly.indvar_next771.1.2 = add nuw nsw i64 %polly.indvar770.1.2, 1
  %exitcond855.1.2.not = icmp eq i64 %polly.indvar_next771.1.2, 16
  br i1 %exitcond855.1.2.not, label %polly.loop_header793, label %polly.loop_header767.1.2

polly.loop_header740.1:                           ; preds = %polly.loop_exit748, %polly.loop_exit748.1
  %polly.indvar743.1 = phi i64 [ %polly.indvar_next744.1, %polly.loop_exit748.1 ], [ 0, %polly.loop_exit748 ]
  %348 = mul nuw nsw i64 %polly.indvar743.1, 640
  %349 = trunc i64 %polly.indvar743.1 to i32
  %broadcast.splatinsert966 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat967 = shufflevector <4 x i32> %broadcast.splatinsert966, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body958

vector.body958:                                   ; preds = %vector.body958, %polly.loop_header740.1
  %index960 = phi i64 [ 0, %polly.loop_header740.1 ], [ %index.next961, %vector.body958 ]
  %vec.ind964 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1 ], [ %vec.ind.next965, %vector.body958 ]
  %350 = add nuw nsw <4 x i64> %vec.ind964, <i64 32, i64 32, i64 32, i64 32>
  %351 = trunc <4 x i64> %350 to <4 x i32>
  %352 = mul <4 x i32> %broadcast.splat967, %351
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
  %index.next961 = add i64 %index960, 4
  %vec.ind.next965 = add <4 x i64> %vec.ind964, <i64 4, i64 4, i64 4, i64 4>
  %362 = icmp eq i64 %index.next961, 32
  br i1 %362, label %polly.loop_exit748.1, label %vector.body958, !llvm.loop !114

polly.loop_exit748.1:                             ; preds = %vector.body958
  %polly.indvar_next744.1 = add nuw nsw i64 %polly.indvar743.1, 1
  %exitcond864.1.not = icmp eq i64 %polly.indvar_next744.1, 32
  br i1 %exitcond864.1.not, label %polly.loop_header740.2, label %polly.loop_header740.1

polly.loop_header740.2:                           ; preds = %polly.loop_exit748.1, %polly.loop_exit748.2
  %polly.indvar743.2 = phi i64 [ %polly.indvar_next744.2, %polly.loop_exit748.2 ], [ 0, %polly.loop_exit748.1 ]
  %363 = mul nuw nsw i64 %polly.indvar743.2, 640
  %364 = trunc i64 %polly.indvar743.2 to i32
  %broadcast.splatinsert978 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat979 = shufflevector <4 x i32> %broadcast.splatinsert978, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body970

vector.body970:                                   ; preds = %vector.body970, %polly.loop_header740.2
  %index972 = phi i64 [ 0, %polly.loop_header740.2 ], [ %index.next973, %vector.body970 ]
  %vec.ind976 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2 ], [ %vec.ind.next977, %vector.body970 ]
  %365 = add nuw nsw <4 x i64> %vec.ind976, <i64 64, i64 64, i64 64, i64 64>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat979, %366
  %368 = add <4 x i32> %367, <i32 3, i32 3, i32 3, i32 3>
  %369 = urem <4 x i32> %368, <i32 80, i32 80, i32 80, i32 80>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add nuw nsw i64 %373, %363
  %375 = getelementptr i8, i8* %call, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !94, !noalias !96
  %index.next973 = add i64 %index972, 4
  %vec.ind.next977 = add <4 x i64> %vec.ind976, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next973, 16
  br i1 %377, label %polly.loop_exit748.2, label %vector.body970, !llvm.loop !115

polly.loop_exit748.2:                             ; preds = %vector.body970
  %polly.indvar_next744.2 = add nuw nsw i64 %polly.indvar743.2, 1
  %exitcond864.2.not = icmp eq i64 %polly.indvar_next744.2, 32
  br i1 %exitcond864.2.not, label %polly.loop_header740.1897, label %polly.loop_header740.2

polly.loop_header740.1897:                        ; preds = %polly.loop_exit748.2, %polly.loop_exit748.1908
  %polly.indvar743.1896 = phi i64 [ %polly.indvar_next744.1906, %polly.loop_exit748.1908 ], [ 0, %polly.loop_exit748.2 ]
  %378 = add nuw nsw i64 %polly.indvar743.1896, 32
  %379 = mul nuw nsw i64 %378, 640
  %380 = trunc i64 %378 to i32
  %broadcast.splatinsert992 = insertelement <4 x i32> poison, i32 %380, i32 0
  %broadcast.splat993 = shufflevector <4 x i32> %broadcast.splatinsert992, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %polly.loop_header740.1897
  %index984 = phi i64 [ 0, %polly.loop_header740.1897 ], [ %index.next985, %vector.body982 ]
  %vec.ind990 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.1897 ], [ %vec.ind.next991, %vector.body982 ]
  %381 = mul <4 x i32> %vec.ind990, %broadcast.splat993
  %382 = add <4 x i32> %381, <i32 3, i32 3, i32 3, i32 3>
  %383 = urem <4 x i32> %382, <i32 80, i32 80, i32 80, i32 80>
  %384 = sitofp <4 x i32> %383 to <4 x double>
  %385 = fmul fast <4 x double> %384, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %386 = shl i64 %index984, 3
  %387 = add nuw nsw i64 %386, %379
  %388 = getelementptr i8, i8* %call, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %385, <4 x double>* %389, align 8, !alias.scope !94, !noalias !96
  %index.next985 = add i64 %index984, 4
  %vec.ind.next991 = add <4 x i32> %vec.ind990, <i32 4, i32 4, i32 4, i32 4>
  %390 = icmp eq i64 %index.next985, 32
  br i1 %390, label %polly.loop_exit748.1908, label %vector.body982, !llvm.loop !116

polly.loop_exit748.1908:                          ; preds = %vector.body982
  %polly.indvar_next744.1906 = add nuw nsw i64 %polly.indvar743.1896, 1
  %exitcond864.1907.not = icmp eq i64 %polly.indvar_next744.1906, 32
  br i1 %exitcond864.1907.not, label %polly.loop_header740.1.1, label %polly.loop_header740.1897

polly.loop_header740.1.1:                         ; preds = %polly.loop_exit748.1908, %polly.loop_exit748.1.1
  %polly.indvar743.1.1 = phi i64 [ %polly.indvar_next744.1.1, %polly.loop_exit748.1.1 ], [ 0, %polly.loop_exit748.1908 ]
  %391 = add nuw nsw i64 %polly.indvar743.1.1, 32
  %392 = mul nuw nsw i64 %391, 640
  %393 = trunc i64 %391 to i32
  %broadcast.splatinsert1004 = insertelement <4 x i32> poison, i32 %393, i32 0
  %broadcast.splat1005 = shufflevector <4 x i32> %broadcast.splatinsert1004, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %polly.loop_header740.1.1
  %index998 = phi i64 [ 0, %polly.loop_header740.1.1 ], [ %index.next999, %vector.body996 ]
  %vec.ind1002 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.1 ], [ %vec.ind.next1003, %vector.body996 ]
  %394 = add nuw nsw <4 x i64> %vec.ind1002, <i64 32, i64 32, i64 32, i64 32>
  %395 = trunc <4 x i64> %394 to <4 x i32>
  %396 = mul <4 x i32> %broadcast.splat1005, %395
  %397 = add <4 x i32> %396, <i32 3, i32 3, i32 3, i32 3>
  %398 = urem <4 x i32> %397, <i32 80, i32 80, i32 80, i32 80>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %401 = extractelement <4 x i64> %394, i32 0
  %402 = shl i64 %401, 3
  %403 = add nuw nsw i64 %402, %392
  %404 = getelementptr i8, i8* %call, i64 %403
  %405 = bitcast i8* %404 to <4 x double>*
  store <4 x double> %400, <4 x double>* %405, align 8, !alias.scope !94, !noalias !96
  %index.next999 = add i64 %index998, 4
  %vec.ind.next1003 = add <4 x i64> %vec.ind1002, <i64 4, i64 4, i64 4, i64 4>
  %406 = icmp eq i64 %index.next999, 32
  br i1 %406, label %polly.loop_exit748.1.1, label %vector.body996, !llvm.loop !117

polly.loop_exit748.1.1:                           ; preds = %vector.body996
  %polly.indvar_next744.1.1 = add nuw nsw i64 %polly.indvar743.1.1, 1
  %exitcond864.1.1.not = icmp eq i64 %polly.indvar_next744.1.1, 32
  br i1 %exitcond864.1.1.not, label %polly.loop_header740.2.1, label %polly.loop_header740.1.1

polly.loop_header740.2.1:                         ; preds = %polly.loop_exit748.1.1, %polly.loop_exit748.2.1
  %polly.indvar743.2.1 = phi i64 [ %polly.indvar_next744.2.1, %polly.loop_exit748.2.1 ], [ 0, %polly.loop_exit748.1.1 ]
  %407 = add nuw nsw i64 %polly.indvar743.2.1, 32
  %408 = mul nuw nsw i64 %407, 640
  %409 = trunc i64 %407 to i32
  %broadcast.splatinsert1016 = insertelement <4 x i32> poison, i32 %409, i32 0
  %broadcast.splat1017 = shufflevector <4 x i32> %broadcast.splatinsert1016, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %polly.loop_header740.2.1
  %index1010 = phi i64 [ 0, %polly.loop_header740.2.1 ], [ %index.next1011, %vector.body1008 ]
  %vec.ind1014 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.1 ], [ %vec.ind.next1015, %vector.body1008 ]
  %410 = add nuw nsw <4 x i64> %vec.ind1014, <i64 64, i64 64, i64 64, i64 64>
  %411 = trunc <4 x i64> %410 to <4 x i32>
  %412 = mul <4 x i32> %broadcast.splat1017, %411
  %413 = add <4 x i32> %412, <i32 3, i32 3, i32 3, i32 3>
  %414 = urem <4 x i32> %413, <i32 80, i32 80, i32 80, i32 80>
  %415 = sitofp <4 x i32> %414 to <4 x double>
  %416 = fmul fast <4 x double> %415, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %417 = extractelement <4 x i64> %410, i32 0
  %418 = shl i64 %417, 3
  %419 = add nuw nsw i64 %418, %408
  %420 = getelementptr i8, i8* %call, i64 %419
  %421 = bitcast i8* %420 to <4 x double>*
  store <4 x double> %416, <4 x double>* %421, align 8, !alias.scope !94, !noalias !96
  %index.next1011 = add i64 %index1010, 4
  %vec.ind.next1015 = add <4 x i64> %vec.ind1014, <i64 4, i64 4, i64 4, i64 4>
  %422 = icmp eq i64 %index.next1011, 16
  br i1 %422, label %polly.loop_exit748.2.1, label %vector.body1008, !llvm.loop !118

polly.loop_exit748.2.1:                           ; preds = %vector.body1008
  %polly.indvar_next744.2.1 = add nuw nsw i64 %polly.indvar743.2.1, 1
  %exitcond864.2.1.not = icmp eq i64 %polly.indvar_next744.2.1, 32
  br i1 %exitcond864.2.1.not, label %polly.loop_header740.2911, label %polly.loop_header740.2.1

polly.loop_header740.2911:                        ; preds = %polly.loop_exit748.2.1, %polly.loop_exit748.2922
  %polly.indvar743.2910 = phi i64 [ %polly.indvar_next744.2920, %polly.loop_exit748.2922 ], [ 0, %polly.loop_exit748.2.1 ]
  %423 = add nuw nsw i64 %polly.indvar743.2910, 64
  %424 = mul nuw nsw i64 %423, 640
  %425 = trunc i64 %423 to i32
  %broadcast.splatinsert1030 = insertelement <4 x i32> poison, i32 %425, i32 0
  %broadcast.splat1031 = shufflevector <4 x i32> %broadcast.splatinsert1030, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %polly.loop_header740.2911
  %index1022 = phi i64 [ 0, %polly.loop_header740.2911 ], [ %index.next1023, %vector.body1020 ]
  %vec.ind1028 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.2911 ], [ %vec.ind.next1029, %vector.body1020 ]
  %426 = mul <4 x i32> %vec.ind1028, %broadcast.splat1031
  %427 = add <4 x i32> %426, <i32 3, i32 3, i32 3, i32 3>
  %428 = urem <4 x i32> %427, <i32 80, i32 80, i32 80, i32 80>
  %429 = sitofp <4 x i32> %428 to <4 x double>
  %430 = fmul fast <4 x double> %429, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %431 = shl i64 %index1022, 3
  %432 = add nuw nsw i64 %431, %424
  %433 = getelementptr i8, i8* %call, i64 %432
  %434 = bitcast i8* %433 to <4 x double>*
  store <4 x double> %430, <4 x double>* %434, align 8, !alias.scope !94, !noalias !96
  %index.next1023 = add i64 %index1022, 4
  %vec.ind.next1029 = add <4 x i32> %vec.ind1028, <i32 4, i32 4, i32 4, i32 4>
  %435 = icmp eq i64 %index.next1023, 32
  br i1 %435, label %polly.loop_exit748.2922, label %vector.body1020, !llvm.loop !119

polly.loop_exit748.2922:                          ; preds = %vector.body1020
  %polly.indvar_next744.2920 = add nuw nsw i64 %polly.indvar743.2910, 1
  %exitcond864.2921.not = icmp eq i64 %polly.indvar_next744.2920, 16
  br i1 %exitcond864.2921.not, label %polly.loop_header740.1.2, label %polly.loop_header740.2911

polly.loop_header740.1.2:                         ; preds = %polly.loop_exit748.2922, %polly.loop_exit748.1.2
  %polly.indvar743.1.2 = phi i64 [ %polly.indvar_next744.1.2, %polly.loop_exit748.1.2 ], [ 0, %polly.loop_exit748.2922 ]
  %436 = add nuw nsw i64 %polly.indvar743.1.2, 64
  %437 = mul nuw nsw i64 %436, 640
  %438 = trunc i64 %436 to i32
  %broadcast.splatinsert1042 = insertelement <4 x i32> poison, i32 %438, i32 0
  %broadcast.splat1043 = shufflevector <4 x i32> %broadcast.splatinsert1042, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %polly.loop_header740.1.2
  %index1036 = phi i64 [ 0, %polly.loop_header740.1.2 ], [ %index.next1037, %vector.body1034 ]
  %vec.ind1040 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.2 ], [ %vec.ind.next1041, %vector.body1034 ]
  %439 = add nuw nsw <4 x i64> %vec.ind1040, <i64 32, i64 32, i64 32, i64 32>
  %440 = trunc <4 x i64> %439 to <4 x i32>
  %441 = mul <4 x i32> %broadcast.splat1043, %440
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = extractelement <4 x i64> %439, i32 0
  %447 = shl i64 %446, 3
  %448 = add nuw nsw i64 %447, %437
  %449 = getelementptr i8, i8* %call, i64 %448
  %450 = bitcast i8* %449 to <4 x double>*
  store <4 x double> %445, <4 x double>* %450, align 8, !alias.scope !94, !noalias !96
  %index.next1037 = add i64 %index1036, 4
  %vec.ind.next1041 = add <4 x i64> %vec.ind1040, <i64 4, i64 4, i64 4, i64 4>
  %451 = icmp eq i64 %index.next1037, 32
  br i1 %451, label %polly.loop_exit748.1.2, label %vector.body1034, !llvm.loop !120

polly.loop_exit748.1.2:                           ; preds = %vector.body1034
  %polly.indvar_next744.1.2 = add nuw nsw i64 %polly.indvar743.1.2, 1
  %exitcond864.1.2.not = icmp eq i64 %polly.indvar_next744.1.2, 16
  br i1 %exitcond864.1.2.not, label %polly.loop_header740.2.2, label %polly.loop_header740.1.2

polly.loop_header740.2.2:                         ; preds = %polly.loop_exit748.1.2, %polly.loop_exit748.2.2
  %polly.indvar743.2.2 = phi i64 [ %polly.indvar_next744.2.2, %polly.loop_exit748.2.2 ], [ 0, %polly.loop_exit748.1.2 ]
  %452 = add nuw nsw i64 %polly.indvar743.2.2, 64
  %453 = mul nuw nsw i64 %452, 640
  %454 = trunc i64 %452 to i32
  %broadcast.splatinsert1054 = insertelement <4 x i32> poison, i32 %454, i32 0
  %broadcast.splat1055 = shufflevector <4 x i32> %broadcast.splatinsert1054, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %polly.loop_header740.2.2
  %index1048 = phi i64 [ 0, %polly.loop_header740.2.2 ], [ %index.next1049, %vector.body1046 ]
  %vec.ind1052 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.2 ], [ %vec.ind.next1053, %vector.body1046 ]
  %455 = add nuw nsw <4 x i64> %vec.ind1052, <i64 64, i64 64, i64 64, i64 64>
  %456 = trunc <4 x i64> %455 to <4 x i32>
  %457 = mul <4 x i32> %broadcast.splat1055, %456
  %458 = add <4 x i32> %457, <i32 3, i32 3, i32 3, i32 3>
  %459 = urem <4 x i32> %458, <i32 80, i32 80, i32 80, i32 80>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = extractelement <4 x i64> %455, i32 0
  %463 = shl i64 %462, 3
  %464 = add nuw nsw i64 %463, %453
  %465 = getelementptr i8, i8* %call, i64 %464
  %466 = bitcast i8* %465 to <4 x double>*
  store <4 x double> %461, <4 x double>* %466, align 8, !alias.scope !94, !noalias !96
  %index.next1049 = add i64 %index1048, 4
  %vec.ind.next1053 = add <4 x i64> %vec.ind1052, <i64 4, i64 4, i64 4, i64 4>
  %467 = icmp eq i64 %index.next1049, 16
  br i1 %467, label %polly.loop_exit748.2.2, label %vector.body1046, !llvm.loop !121

polly.loop_exit748.2.2:                           ; preds = %vector.body1046
  %polly.indvar_next744.2.2 = add nuw nsw i64 %polly.indvar743.2.2, 1
  %exitcond864.2.2.not = icmp eq i64 %polly.indvar_next744.2.2, 16
  br i1 %exitcond864.2.2.not, label %polly.loop_header767, label %polly.loop_header740.2.2
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
!34 = !{!"llvm.loop.tile.size", i32 32}
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
!45 = !{!"llvm.loop.tile.size", i32 80}
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
