; ModuleID = 'syr2k_recreations//mmp_syr2k_S_5.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_5.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #7
  %call748 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #7
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #7
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1609 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1609, %call2
  %polly.access.call2629 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2629, %call1
  %2 = or i1 %0, %1
  %polly.access.call649 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call649, %call2
  %4 = icmp ule i8* %polly.access.call2629, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call649, %call1
  %8 = icmp ule i8* %polly.access.call1609, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header734, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv7.i, i64 %index934
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit795.1.2
  tail call void (...) @polybench_timer_start() #7
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start431, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %index1216
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
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit557.1
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  tail call void (...) @polybench_timer_start() #7
  br i1 %41, label %polly.start264, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %index1239
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
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit390.1
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  tail call void (...) @polybench_timer_start() #7
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
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %index1265
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
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #8
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
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
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #8
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #7
  tail call void @free(i8* %call1) #7
  tail call void @free(i8* %call2) #7
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #7
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
  %exitcond814.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1274 = add i64 %indvar1273, 1
  br i1 %exitcond814.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep810.1 = getelementptr i8, i8* %malloccall, i64 480
  %scevgep811.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.1, i64 480, i1 false)
  %scevgep810.2 = getelementptr i8, i8* %malloccall, i64 960
  %scevgep811.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.2, i64 480, i1 false)
  %scevgep810.3 = getelementptr i8, i8* %malloccall, i64 1440
  %scevgep811.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.3, i64 480, i1 false)
  %scevgep810.4 = getelementptr i8, i8* %malloccall, i64 1920
  %scevgep811.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.4, i64 480, i1 false)
  %scevgep810.5 = getelementptr i8, i8* %malloccall, i64 2400
  %scevgep811.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.5, i64 480, i1 false)
  %scevgep810.6 = getelementptr i8, i8* %malloccall, i64 2880
  %scevgep811.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.6, i64 480, i1 false)
  %scevgep810.7 = getelementptr i8, i8* %malloccall, i64 3360
  %scevgep811.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.7, i64 480, i1 false)
  %scevgep810.8 = getelementptr i8, i8* %malloccall, i64 3840
  %scevgep811.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.8, i64 480, i1 false)
  %scevgep810.9 = getelementptr i8, i8* %malloccall, i64 4320
  %scevgep811.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.9, i64 480, i1 false)
  %scevgep810.10 = getelementptr i8, i8* %malloccall, i64 4800
  %scevgep811.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.10, i64 480, i1 false)
  %scevgep810.11 = getelementptr i8, i8* %malloccall, i64 5280
  %scevgep811.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.11, i64 480, i1 false)
  %scevgep810.12 = getelementptr i8, i8* %malloccall, i64 5760
  %scevgep811.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.12, i64 480, i1 false)
  %scevgep810.13 = getelementptr i8, i8* %malloccall, i64 6240
  %scevgep811.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.13, i64 480, i1 false)
  %scevgep810.14 = getelementptr i8, i8* %malloccall, i64 6720
  %scevgep811.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.14, i64 480, i1 false)
  %scevgep810.15 = getelementptr i8, i8* %malloccall, i64 7200
  %scevgep811.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.15, i64 480, i1 false)
  %scevgep810.16 = getelementptr i8, i8* %malloccall, i64 7680
  %scevgep811.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.16, i64 480, i1 false)
  %scevgep810.17 = getelementptr i8, i8* %malloccall, i64 8160
  %scevgep811.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.17, i64 480, i1 false)
  %scevgep810.18 = getelementptr i8, i8* %malloccall, i64 8640
  %scevgep811.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.18, i64 480, i1 false)
  %scevgep810.19 = getelementptr i8, i8* %malloccall, i64 9120
  %scevgep811.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.19, i64 480, i1 false)
  %scevgep810.20 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep811.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.20, i64 480, i1 false)
  %scevgep810.21 = getelementptr i8, i8* %malloccall, i64 10080
  %scevgep811.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.21, i64 480, i1 false)
  %scevgep810.22 = getelementptr i8, i8* %malloccall, i64 10560
  %scevgep811.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.22, i64 480, i1 false)
  %scevgep810.23 = getelementptr i8, i8* %malloccall, i64 11040
  %scevgep811.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.23, i64 480, i1 false)
  %scevgep810.24 = getelementptr i8, i8* %malloccall, i64 11520
  %scevgep811.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.24, i64 480, i1 false)
  %scevgep810.25 = getelementptr i8, i8* %malloccall, i64 12000
  %scevgep811.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.25, i64 480, i1 false)
  %scevgep810.26 = getelementptr i8, i8* %malloccall, i64 12480
  %scevgep811.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.26, i64 480, i1 false)
  %scevgep810.27 = getelementptr i8, i8* %malloccall, i64 12960
  %scevgep811.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.27, i64 480, i1 false)
  %scevgep810.28 = getelementptr i8, i8* %malloccall, i64 13440
  %scevgep811.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.28, i64 480, i1 false)
  %scevgep810.29 = getelementptr i8, i8* %malloccall, i64 13920
  %scevgep811.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.29, i64 480, i1 false)
  %scevgep810.30 = getelementptr i8, i8* %malloccall, i64 14400
  %scevgep811.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.30, i64 480, i1 false)
  %scevgep810.31 = getelementptr i8, i8* %malloccall, i64 14880
  %scevgep811.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.31, i64 480, i1 false)
  %scevgep810.32 = getelementptr i8, i8* %malloccall, i64 15360
  %scevgep811.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.32, i64 480, i1 false)
  %scevgep810.33 = getelementptr i8, i8* %malloccall, i64 15840
  %scevgep811.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.33, i64 480, i1 false)
  %scevgep810.34 = getelementptr i8, i8* %malloccall, i64 16320
  %scevgep811.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.34, i64 480, i1 false)
  %scevgep810.35 = getelementptr i8, i8* %malloccall, i64 16800
  %scevgep811.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.35, i64 480, i1 false)
  %scevgep810.36 = getelementptr i8, i8* %malloccall, i64 17280
  %scevgep811.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.36, i64 480, i1 false)
  %scevgep810.37 = getelementptr i8, i8* %malloccall, i64 17760
  %scevgep811.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.37, i64 480, i1 false)
  %scevgep810.38 = getelementptr i8, i8* %malloccall, i64 18240
  %scevgep811.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.38, i64 480, i1 false)
  %scevgep810.39 = getelementptr i8, i8* %malloccall, i64 18720
  %scevgep811.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.39, i64 480, i1 false)
  %scevgep810.40 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep811.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.40, i64 480, i1 false)
  %scevgep810.41 = getelementptr i8, i8* %malloccall, i64 19680
  %scevgep811.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.41, i64 480, i1 false)
  %scevgep810.42 = getelementptr i8, i8* %malloccall, i64 20160
  %scevgep811.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.42, i64 480, i1 false)
  %scevgep810.43 = getelementptr i8, i8* %malloccall, i64 20640
  %scevgep811.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.43, i64 480, i1 false)
  %scevgep810.44 = getelementptr i8, i8* %malloccall, i64 21120
  %scevgep811.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.44, i64 480, i1 false)
  %scevgep810.45 = getelementptr i8, i8* %malloccall, i64 21600
  %scevgep811.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.45, i64 480, i1 false)
  %scevgep810.46 = getelementptr i8, i8* %malloccall, i64 22080
  %scevgep811.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.46, i64 480, i1 false)
  %scevgep810.47 = getelementptr i8, i8* %malloccall, i64 22560
  %scevgep811.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.47, i64 480, i1 false)
  %scevgep810.48 = getelementptr i8, i8* %malloccall, i64 23040
  %scevgep811.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.48, i64 480, i1 false)
  %scevgep810.49 = getelementptr i8, i8* %malloccall, i64 23520
  %scevgep811.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.49, i64 480, i1 false)
  %scevgep810.50 = getelementptr i8, i8* %malloccall, i64 24000
  %scevgep811.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.50, i64 480, i1 false)
  %scevgep810.51 = getelementptr i8, i8* %malloccall, i64 24480
  %scevgep811.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.51, i64 480, i1 false)
  %scevgep810.52 = getelementptr i8, i8* %malloccall, i64 24960
  %scevgep811.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.52, i64 480, i1 false)
  %scevgep810.53 = getelementptr i8, i8* %malloccall, i64 25440
  %scevgep811.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.53, i64 480, i1 false)
  %scevgep810.54 = getelementptr i8, i8* %malloccall, i64 25920
  %scevgep811.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.54, i64 480, i1 false)
  %scevgep810.55 = getelementptr i8, i8* %malloccall, i64 26400
  %scevgep811.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.55, i64 480, i1 false)
  %scevgep810.56 = getelementptr i8, i8* %malloccall, i64 26880
  %scevgep811.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.56, i64 480, i1 false)
  %scevgep810.57 = getelementptr i8, i8* %malloccall, i64 27360
  %scevgep811.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.57, i64 480, i1 false)
  %scevgep810.58 = getelementptr i8, i8* %malloccall, i64 27840
  %scevgep811.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.58, i64 480, i1 false)
  %scevgep810.59 = getelementptr i8, i8* %malloccall, i64 28320
  %scevgep811.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.59, i64 480, i1 false)
  %scevgep810.60 = getelementptr i8, i8* %malloccall, i64 28800
  %scevgep811.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.60, i64 480, i1 false)
  %scevgep810.61 = getelementptr i8, i8* %malloccall, i64 29280
  %scevgep811.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.61, i64 480, i1 false)
  %scevgep810.62 = getelementptr i8, i8* %malloccall, i64 29760
  %scevgep811.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.62, i64 480, i1 false)
  %scevgep810.63 = getelementptr i8, i8* %malloccall, i64 30240
  %scevgep811.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.63, i64 480, i1 false)
  %scevgep810.64 = getelementptr i8, i8* %malloccall, i64 30720
  %scevgep811.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.64, i64 480, i1 false)
  %scevgep810.65 = getelementptr i8, i8* %malloccall, i64 31200
  %scevgep811.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.65, i64 480, i1 false)
  %scevgep810.66 = getelementptr i8, i8* %malloccall, i64 31680
  %scevgep811.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.66, i64 480, i1 false)
  %scevgep810.67 = getelementptr i8, i8* %malloccall, i64 32160
  %scevgep811.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.67, i64 480, i1 false)
  %scevgep810.68 = getelementptr i8, i8* %malloccall, i64 32640
  %scevgep811.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.68, i64 480, i1 false)
  %scevgep810.69 = getelementptr i8, i8* %malloccall, i64 33120
  %scevgep811.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.69, i64 480, i1 false)
  %scevgep810.70 = getelementptr i8, i8* %malloccall, i64 33600
  %scevgep811.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.70, i64 480, i1 false)
  %scevgep810.71 = getelementptr i8, i8* %malloccall, i64 34080
  %scevgep811.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.71, i64 480, i1 false)
  %scevgep810.72 = getelementptr i8, i8* %malloccall, i64 34560
  %scevgep811.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.72, i64 480, i1 false)
  %scevgep810.73 = getelementptr i8, i8* %malloccall, i64 35040
  %scevgep811.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.73, i64 480, i1 false)
  %scevgep810.74 = getelementptr i8, i8* %malloccall, i64 35520
  %scevgep811.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.74, i64 480, i1 false)
  %scevgep810.75 = getelementptr i8, i8* %malloccall, i64 36000
  %scevgep811.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.75, i64 480, i1 false)
  %scevgep810.76 = getelementptr i8, i8* %malloccall, i64 36480
  %scevgep811.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.76, i64 480, i1 false)
  %scevgep810.77 = getelementptr i8, i8* %malloccall, i64 36960
  %scevgep811.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.77, i64 480, i1 false)
  %scevgep810.78 = getelementptr i8, i8* %malloccall, i64 37440
  %scevgep811.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.78, i64 480, i1 false)
  %scevgep810.79 = getelementptr i8, i8* %malloccall, i64 37920
  %scevgep811.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep810.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep811.79, i64 480, i1 false)
  br label %polly.loop_header221

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond813.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header199.preheader
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv804, i64 -52)
  %97 = shl nsw i64 %polly.indvar224, 3
  %98 = add nsw i64 %smin, 59
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next805 = add nsw i64 %indvars.iv804, -8
  %exitcond808.not = icmp eq i64 %polly.indvar_next225, 8
  br i1 %exitcond808.not, label %polly.loop_header221.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit235 ], [ 1, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %polly.indvar230, 60
  %99 = mul nuw nsw i64 %polly.indvar230, 480
  %100 = mul nuw nsw i64 %polly.indvar230, 640
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond807.not = icmp eq i64 %polly.indvar_next231, 64
  br i1 %exitcond807.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %101 = add nuw nsw i64 %polly.indvar236, %97
  %102 = shl i64 %101, 3
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %101, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %103 = add nuw nsw i64 %102, %99
  %scevgep256 = getelementptr i8, i8* %call1, i64 %103
  %scevgep256257 = bitcast i8* %scevgep256 to double*
  %_p_scalar_258 = load double, double* %scevgep256257, align 8, !alias.scope !66, !noalias !72
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond806.not = icmp eq i64 %polly.indvar236, %98
  br i1 %exitcond806.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %104 = mul nuw nsw i64 %polly.indvar242, 480
  %105 = add nuw nsw i64 %104, %102
  %scevgep245 = getelementptr i8, i8* %call1, i64 %105
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !66, !noalias !72
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.mul.Packed_MemRef_call2252 = mul nuw nsw i64 %polly.indvar242, 60
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252, %101
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_258, %_p_scalar_255
  %106 = shl nuw nsw i64 %polly.indvar242, 3
  %107 = add nuw nsw i64 %106, %100
  %scevgep259 = getelementptr i8, i8* %call, i64 %107
  %scevgep259260 = bitcast i8* %scevgep259 to double*
  %_p_scalar_261 = load double, double* %scevgep259260, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_261
  store double %p_add42.i118, double* %scevgep259260, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next243, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start264:                                   ; preds = %kernel_syr2k.exit
  %malloccall266 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #7
  br label %polly.loop_header350

polly.loop_header350:                             ; preds = %polly.loop_exit358, %polly.start264
  %indvar1247 = phi i64 [ %indvar.next1248, %polly.loop_exit358 ], [ 0, %polly.start264 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 1, %polly.start264 ]
  %108 = add i64 %indvar1247, 1
  %109 = mul nuw nsw i64 %polly.indvar353, 640
  %scevgep362 = getelementptr i8, i8* %call, i64 %109
  %min.iters.check1249 = icmp ult i64 %108, 4
  br i1 %min.iters.check1249, label %polly.loop_header356.preheader, label %vector.ph1250

vector.ph1250:                                    ; preds = %polly.loop_header350
  %n.vec1252 = and i64 %108, -4
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1254, %vector.body1246 ]
  %110 = shl nuw nsw i64 %index1253, 3
  %111 = getelementptr i8, i8* %scevgep362, i64 %110
  %112 = bitcast i8* %111 to <4 x double>*
  %wide.load1257 = load <4 x double>, <4 x double>* %112, align 8, !alias.scope !73, !noalias !75
  %113 = fmul fast <4 x double> %wide.load1257, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %114 = bitcast i8* %111 to <4 x double>*
  store <4 x double> %113, <4 x double>* %114, align 8, !alias.scope !73, !noalias !75
  %index.next1254 = add i64 %index1253, 4
  %115 = icmp eq i64 %index.next1254, %n.vec1252
  br i1 %115, label %middle.block1244, label %vector.body1246, !llvm.loop !79

middle.block1244:                                 ; preds = %vector.body1246
  %cmp.n1256 = icmp eq i64 %108, %n.vec1252
  br i1 %cmp.n1256, label %polly.loop_exit358, label %polly.loop_header356.preheader

polly.loop_header356.preheader:                   ; preds = %polly.loop_header350, %middle.block1244
  %polly.indvar359.ph = phi i64 [ 0, %polly.loop_header350 ], [ %n.vec1252, %middle.block1244 ]
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_header356, %middle.block1244
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next354, 80
  %indvar.next1248 = add i64 %indvar1247, 1
  br i1 %exitcond829.not, label %polly.loop_header366.preheader, label %polly.loop_header350

polly.loop_header366.preheader:                   ; preds = %polly.loop_exit358
  %Packed_MemRef_call2267 = bitcast i8* %malloccall266 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall266, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep825.1 = getelementptr i8, i8* %malloccall266, i64 480
  %scevgep826.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.1, i64 480, i1 false)
  %scevgep825.2 = getelementptr i8, i8* %malloccall266, i64 960
  %scevgep826.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.2, i64 480, i1 false)
  %scevgep825.3 = getelementptr i8, i8* %malloccall266, i64 1440
  %scevgep826.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.3, i64 480, i1 false)
  %scevgep825.4 = getelementptr i8, i8* %malloccall266, i64 1920
  %scevgep826.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.4, i64 480, i1 false)
  %scevgep825.5 = getelementptr i8, i8* %malloccall266, i64 2400
  %scevgep826.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.5, i64 480, i1 false)
  %scevgep825.6 = getelementptr i8, i8* %malloccall266, i64 2880
  %scevgep826.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.6, i64 480, i1 false)
  %scevgep825.7 = getelementptr i8, i8* %malloccall266, i64 3360
  %scevgep826.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.7, i64 480, i1 false)
  %scevgep825.8 = getelementptr i8, i8* %malloccall266, i64 3840
  %scevgep826.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.8, i64 480, i1 false)
  %scevgep825.9 = getelementptr i8, i8* %malloccall266, i64 4320
  %scevgep826.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.9, i64 480, i1 false)
  %scevgep825.10 = getelementptr i8, i8* %malloccall266, i64 4800
  %scevgep826.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.10, i64 480, i1 false)
  %scevgep825.11 = getelementptr i8, i8* %malloccall266, i64 5280
  %scevgep826.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.11, i64 480, i1 false)
  %scevgep825.12 = getelementptr i8, i8* %malloccall266, i64 5760
  %scevgep826.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.12, i64 480, i1 false)
  %scevgep825.13 = getelementptr i8, i8* %malloccall266, i64 6240
  %scevgep826.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.13, i64 480, i1 false)
  %scevgep825.14 = getelementptr i8, i8* %malloccall266, i64 6720
  %scevgep826.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.14, i64 480, i1 false)
  %scevgep825.15 = getelementptr i8, i8* %malloccall266, i64 7200
  %scevgep826.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.15, i64 480, i1 false)
  %scevgep825.16 = getelementptr i8, i8* %malloccall266, i64 7680
  %scevgep826.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.16, i64 480, i1 false)
  %scevgep825.17 = getelementptr i8, i8* %malloccall266, i64 8160
  %scevgep826.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.17, i64 480, i1 false)
  %scevgep825.18 = getelementptr i8, i8* %malloccall266, i64 8640
  %scevgep826.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.18, i64 480, i1 false)
  %scevgep825.19 = getelementptr i8, i8* %malloccall266, i64 9120
  %scevgep826.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.19, i64 480, i1 false)
  %scevgep825.20 = getelementptr i8, i8* %malloccall266, i64 9600
  %scevgep826.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.20, i64 480, i1 false)
  %scevgep825.21 = getelementptr i8, i8* %malloccall266, i64 10080
  %scevgep826.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.21, i64 480, i1 false)
  %scevgep825.22 = getelementptr i8, i8* %malloccall266, i64 10560
  %scevgep826.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.22, i64 480, i1 false)
  %scevgep825.23 = getelementptr i8, i8* %malloccall266, i64 11040
  %scevgep826.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.23, i64 480, i1 false)
  %scevgep825.24 = getelementptr i8, i8* %malloccall266, i64 11520
  %scevgep826.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.24, i64 480, i1 false)
  %scevgep825.25 = getelementptr i8, i8* %malloccall266, i64 12000
  %scevgep826.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.25, i64 480, i1 false)
  %scevgep825.26 = getelementptr i8, i8* %malloccall266, i64 12480
  %scevgep826.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.26, i64 480, i1 false)
  %scevgep825.27 = getelementptr i8, i8* %malloccall266, i64 12960
  %scevgep826.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.27, i64 480, i1 false)
  %scevgep825.28 = getelementptr i8, i8* %malloccall266, i64 13440
  %scevgep826.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.28, i64 480, i1 false)
  %scevgep825.29 = getelementptr i8, i8* %malloccall266, i64 13920
  %scevgep826.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.29, i64 480, i1 false)
  %scevgep825.30 = getelementptr i8, i8* %malloccall266, i64 14400
  %scevgep826.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.30, i64 480, i1 false)
  %scevgep825.31 = getelementptr i8, i8* %malloccall266, i64 14880
  %scevgep826.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.31, i64 480, i1 false)
  %scevgep825.32 = getelementptr i8, i8* %malloccall266, i64 15360
  %scevgep826.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.32, i64 480, i1 false)
  %scevgep825.33 = getelementptr i8, i8* %malloccall266, i64 15840
  %scevgep826.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.33, i64 480, i1 false)
  %scevgep825.34 = getelementptr i8, i8* %malloccall266, i64 16320
  %scevgep826.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.34, i64 480, i1 false)
  %scevgep825.35 = getelementptr i8, i8* %malloccall266, i64 16800
  %scevgep826.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.35, i64 480, i1 false)
  %scevgep825.36 = getelementptr i8, i8* %malloccall266, i64 17280
  %scevgep826.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.36, i64 480, i1 false)
  %scevgep825.37 = getelementptr i8, i8* %malloccall266, i64 17760
  %scevgep826.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.37, i64 480, i1 false)
  %scevgep825.38 = getelementptr i8, i8* %malloccall266, i64 18240
  %scevgep826.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.38, i64 480, i1 false)
  %scevgep825.39 = getelementptr i8, i8* %malloccall266, i64 18720
  %scevgep826.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.39, i64 480, i1 false)
  %scevgep825.40 = getelementptr i8, i8* %malloccall266, i64 19200
  %scevgep826.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.40, i64 480, i1 false)
  %scevgep825.41 = getelementptr i8, i8* %malloccall266, i64 19680
  %scevgep826.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.41, i64 480, i1 false)
  %scevgep825.42 = getelementptr i8, i8* %malloccall266, i64 20160
  %scevgep826.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.42, i64 480, i1 false)
  %scevgep825.43 = getelementptr i8, i8* %malloccall266, i64 20640
  %scevgep826.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.43, i64 480, i1 false)
  %scevgep825.44 = getelementptr i8, i8* %malloccall266, i64 21120
  %scevgep826.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.44, i64 480, i1 false)
  %scevgep825.45 = getelementptr i8, i8* %malloccall266, i64 21600
  %scevgep826.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.45, i64 480, i1 false)
  %scevgep825.46 = getelementptr i8, i8* %malloccall266, i64 22080
  %scevgep826.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.46, i64 480, i1 false)
  %scevgep825.47 = getelementptr i8, i8* %malloccall266, i64 22560
  %scevgep826.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.47, i64 480, i1 false)
  %scevgep825.48 = getelementptr i8, i8* %malloccall266, i64 23040
  %scevgep826.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.48, i64 480, i1 false)
  %scevgep825.49 = getelementptr i8, i8* %malloccall266, i64 23520
  %scevgep826.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.49, i64 480, i1 false)
  %scevgep825.50 = getelementptr i8, i8* %malloccall266, i64 24000
  %scevgep826.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.50, i64 480, i1 false)
  %scevgep825.51 = getelementptr i8, i8* %malloccall266, i64 24480
  %scevgep826.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.51, i64 480, i1 false)
  %scevgep825.52 = getelementptr i8, i8* %malloccall266, i64 24960
  %scevgep826.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.52, i64 480, i1 false)
  %scevgep825.53 = getelementptr i8, i8* %malloccall266, i64 25440
  %scevgep826.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.53, i64 480, i1 false)
  %scevgep825.54 = getelementptr i8, i8* %malloccall266, i64 25920
  %scevgep826.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.54, i64 480, i1 false)
  %scevgep825.55 = getelementptr i8, i8* %malloccall266, i64 26400
  %scevgep826.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.55, i64 480, i1 false)
  %scevgep825.56 = getelementptr i8, i8* %malloccall266, i64 26880
  %scevgep826.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.56, i64 480, i1 false)
  %scevgep825.57 = getelementptr i8, i8* %malloccall266, i64 27360
  %scevgep826.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.57, i64 480, i1 false)
  %scevgep825.58 = getelementptr i8, i8* %malloccall266, i64 27840
  %scevgep826.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.58, i64 480, i1 false)
  %scevgep825.59 = getelementptr i8, i8* %malloccall266, i64 28320
  %scevgep826.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.59, i64 480, i1 false)
  %scevgep825.60 = getelementptr i8, i8* %malloccall266, i64 28800
  %scevgep826.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.60, i64 480, i1 false)
  %scevgep825.61 = getelementptr i8, i8* %malloccall266, i64 29280
  %scevgep826.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.61, i64 480, i1 false)
  %scevgep825.62 = getelementptr i8, i8* %malloccall266, i64 29760
  %scevgep826.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.62, i64 480, i1 false)
  %scevgep825.63 = getelementptr i8, i8* %malloccall266, i64 30240
  %scevgep826.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.63, i64 480, i1 false)
  %scevgep825.64 = getelementptr i8, i8* %malloccall266, i64 30720
  %scevgep826.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.64, i64 480, i1 false)
  %scevgep825.65 = getelementptr i8, i8* %malloccall266, i64 31200
  %scevgep826.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.65, i64 480, i1 false)
  %scevgep825.66 = getelementptr i8, i8* %malloccall266, i64 31680
  %scevgep826.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.66, i64 480, i1 false)
  %scevgep825.67 = getelementptr i8, i8* %malloccall266, i64 32160
  %scevgep826.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.67, i64 480, i1 false)
  %scevgep825.68 = getelementptr i8, i8* %malloccall266, i64 32640
  %scevgep826.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.68, i64 480, i1 false)
  %scevgep825.69 = getelementptr i8, i8* %malloccall266, i64 33120
  %scevgep826.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.69, i64 480, i1 false)
  %scevgep825.70 = getelementptr i8, i8* %malloccall266, i64 33600
  %scevgep826.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.70, i64 480, i1 false)
  %scevgep825.71 = getelementptr i8, i8* %malloccall266, i64 34080
  %scevgep826.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.71, i64 480, i1 false)
  %scevgep825.72 = getelementptr i8, i8* %malloccall266, i64 34560
  %scevgep826.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.72, i64 480, i1 false)
  %scevgep825.73 = getelementptr i8, i8* %malloccall266, i64 35040
  %scevgep826.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.73, i64 480, i1 false)
  %scevgep825.74 = getelementptr i8, i8* %malloccall266, i64 35520
  %scevgep826.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.74, i64 480, i1 false)
  %scevgep825.75 = getelementptr i8, i8* %malloccall266, i64 36000
  %scevgep826.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.75, i64 480, i1 false)
  %scevgep825.76 = getelementptr i8, i8* %malloccall266, i64 36480
  %scevgep826.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.76, i64 480, i1 false)
  %scevgep825.77 = getelementptr i8, i8* %malloccall266, i64 36960
  %scevgep826.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.77, i64 480, i1 false)
  %scevgep825.78 = getelementptr i8, i8* %malloccall266, i64 37440
  %scevgep826.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.78, i64 480, i1 false)
  %scevgep825.79 = getelementptr i8, i8* %malloccall266, i64 37920
  %scevgep826.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep825.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.79, i64 480, i1 false)
  br label %polly.loop_header388

polly.loop_header356:                             ; preds = %polly.loop_header356.preheader, %polly.loop_header356
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_header356 ], [ %polly.indvar359.ph, %polly.loop_header356.preheader ]
  %116 = shl nuw nsw i64 %polly.indvar359, 3
  %scevgep363 = getelementptr i8, i8* %scevgep362, i64 %116
  %scevgep363364 = bitcast i8* %scevgep363 to double*
  %_p_scalar_365 = load double, double* %scevgep363364, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_365, 1.200000e+00
  store double %p_mul.i57, double* %scevgep363364, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next360, %polly.indvar353
  br i1 %exitcond828.not, label %polly.loop_exit358, label %polly.loop_header356, !llvm.loop !80

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.loop_header366.preheader
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %polly.loop_exit396 ], [ 0, %polly.loop_header366.preheader ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 0, %polly.loop_header366.preheader ]
  %smin820 = call i64 @llvm.smin.i64(i64 %indvars.iv818, i64 -52)
  %117 = shl nsw i64 %polly.indvar391, 3
  %118 = add nsw i64 %smin820, 59
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit402
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next819 = add nsw i64 %indvars.iv818, -8
  %exitcond823.not = icmp eq i64 %polly.indvar_next392, 8
  br i1 %exitcond823.not, label %polly.loop_header388.1, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.loop_header388
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit402 ], [ 1, %polly.loop_header388 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 0, %polly.loop_header388 ]
  %polly.access.mul.Packed_MemRef_call2267415 = mul nuw nsw i64 %polly.indvar397, 60
  %119 = mul nuw nsw i64 %polly.indvar397, 480
  %120 = mul nuw nsw i64 %polly.indvar397, 640
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next398, 64
  br i1 %exitcond822.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_header394
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header394 ], [ %polly.indvar_next404, %polly.loop_exit408 ]
  %121 = add nuw nsw i64 %polly.indvar403, %117
  %122 = shl i64 %121, 3
  %polly.access.add.Packed_MemRef_call2267416 = add nuw nsw i64 %121, %polly.access.mul.Packed_MemRef_call2267415
  %polly.access.Packed_MemRef_call2267417 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416
  %_p_scalar_418 = load double, double* %polly.access.Packed_MemRef_call2267417, align 8
  %123 = add nuw nsw i64 %122, %119
  %scevgep423 = getelementptr i8, i8* %call1, i64 %123
  %scevgep423424 = bitcast i8* %scevgep423 to double*
  %_p_scalar_425 = load double, double* %scevgep423424, align 8, !alias.scope !76, !noalias !81
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond821.not = icmp eq i64 %polly.indvar403, %118
  br i1 %exitcond821.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %124 = mul nuw nsw i64 %polly.indvar409, 480
  %125 = add nuw nsw i64 %124, %122
  %scevgep412 = getelementptr i8, i8* %call1, i64 %125
  %scevgep412413 = bitcast i8* %scevgep412 to double*
  %_p_scalar_414 = load double, double* %scevgep412413, align 8, !alias.scope !76, !noalias !81
  %p_mul27.i73 = fmul fast double %_p_scalar_418, %_p_scalar_414
  %polly.access.mul.Packed_MemRef_call2267419 = mul nuw nsw i64 %polly.indvar409, 60
  %polly.access.add.Packed_MemRef_call2267420 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419, %121
  %polly.access.Packed_MemRef_call2267421 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420
  %_p_scalar_422 = load double, double* %polly.access.Packed_MemRef_call2267421, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_425, %_p_scalar_422
  %126 = shl nuw nsw i64 %polly.indvar409, 3
  %127 = add nuw nsw i64 %126, %120
  %scevgep426 = getelementptr i8, i8* %call, i64 %127
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_428
  store double %p_add42.i79, double* %scevgep426427, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next410, %indvars.iv815
  br i1 %exitcond817.not, label %polly.loop_exit408, label %polly.loop_header406

polly.start431:                                   ; preds = %init_array.exit
  %malloccall433 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #7
  br label %polly.loop_header517

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.start431
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit525 ], [ 0, %polly.start431 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 1, %polly.start431 ]
  %128 = add i64 %indvar, 1
  %129 = mul nuw nsw i64 %polly.indvar520, 640
  %scevgep529 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check1223 = icmp ult i64 %128, 4
  br i1 %min.iters.check1223, label %polly.loop_header523.preheader, label %vector.ph1224

vector.ph1224:                                    ; preds = %polly.loop_header517
  %n.vec1226 = and i64 %128, -4
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1228, %vector.body1222 ]
  %130 = shl nuw nsw i64 %index1227, 3
  %131 = getelementptr i8, i8* %scevgep529, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load1231 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !82, !noalias !84
  %133 = fmul fast <4 x double> %wide.load1231, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !82, !noalias !84
  %index.next1228 = add i64 %index1227, 4
  %135 = icmp eq i64 %index.next1228, %n.vec1226
  br i1 %135, label %middle.block1220, label %vector.body1222, !llvm.loop !88

middle.block1220:                                 ; preds = %vector.body1222
  %cmp.n1230 = icmp eq i64 %128, %n.vec1226
  br i1 %cmp.n1230, label %polly.loop_exit525, label %polly.loop_header523.preheader

polly.loop_header523.preheader:                   ; preds = %polly.loop_header517, %middle.block1220
  %polly.indvar526.ph = phi i64 [ 0, %polly.loop_header517 ], [ %n.vec1226, %middle.block1220 ]
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523, %middle.block1220
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next521, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond844.not, label %polly.loop_header533.preheader, label %polly.loop_header517

polly.loop_header533.preheader:                   ; preds = %polly.loop_exit525
  %Packed_MemRef_call2434 = bitcast i8* %malloccall433 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall433, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep840.1 = getelementptr i8, i8* %malloccall433, i64 480
  %scevgep841.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.1, i64 480, i1 false)
  %scevgep840.2 = getelementptr i8, i8* %malloccall433, i64 960
  %scevgep841.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.2, i64 480, i1 false)
  %scevgep840.3 = getelementptr i8, i8* %malloccall433, i64 1440
  %scevgep841.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.3, i64 480, i1 false)
  %scevgep840.4 = getelementptr i8, i8* %malloccall433, i64 1920
  %scevgep841.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.4, i64 480, i1 false)
  %scevgep840.5 = getelementptr i8, i8* %malloccall433, i64 2400
  %scevgep841.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.5, i64 480, i1 false)
  %scevgep840.6 = getelementptr i8, i8* %malloccall433, i64 2880
  %scevgep841.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.6, i64 480, i1 false)
  %scevgep840.7 = getelementptr i8, i8* %malloccall433, i64 3360
  %scevgep841.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.7, i64 480, i1 false)
  %scevgep840.8 = getelementptr i8, i8* %malloccall433, i64 3840
  %scevgep841.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.8, i64 480, i1 false)
  %scevgep840.9 = getelementptr i8, i8* %malloccall433, i64 4320
  %scevgep841.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.9, i64 480, i1 false)
  %scevgep840.10 = getelementptr i8, i8* %malloccall433, i64 4800
  %scevgep841.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.10, i64 480, i1 false)
  %scevgep840.11 = getelementptr i8, i8* %malloccall433, i64 5280
  %scevgep841.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.11, i64 480, i1 false)
  %scevgep840.12 = getelementptr i8, i8* %malloccall433, i64 5760
  %scevgep841.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.12, i64 480, i1 false)
  %scevgep840.13 = getelementptr i8, i8* %malloccall433, i64 6240
  %scevgep841.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.13, i64 480, i1 false)
  %scevgep840.14 = getelementptr i8, i8* %malloccall433, i64 6720
  %scevgep841.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.14, i64 480, i1 false)
  %scevgep840.15 = getelementptr i8, i8* %malloccall433, i64 7200
  %scevgep841.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.15, i64 480, i1 false)
  %scevgep840.16 = getelementptr i8, i8* %malloccall433, i64 7680
  %scevgep841.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.16, i64 480, i1 false)
  %scevgep840.17 = getelementptr i8, i8* %malloccall433, i64 8160
  %scevgep841.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.17, i64 480, i1 false)
  %scevgep840.18 = getelementptr i8, i8* %malloccall433, i64 8640
  %scevgep841.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.18, i64 480, i1 false)
  %scevgep840.19 = getelementptr i8, i8* %malloccall433, i64 9120
  %scevgep841.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.19, i64 480, i1 false)
  %scevgep840.20 = getelementptr i8, i8* %malloccall433, i64 9600
  %scevgep841.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.20, i64 480, i1 false)
  %scevgep840.21 = getelementptr i8, i8* %malloccall433, i64 10080
  %scevgep841.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.21, i64 480, i1 false)
  %scevgep840.22 = getelementptr i8, i8* %malloccall433, i64 10560
  %scevgep841.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.22, i64 480, i1 false)
  %scevgep840.23 = getelementptr i8, i8* %malloccall433, i64 11040
  %scevgep841.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.23, i64 480, i1 false)
  %scevgep840.24 = getelementptr i8, i8* %malloccall433, i64 11520
  %scevgep841.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.24, i64 480, i1 false)
  %scevgep840.25 = getelementptr i8, i8* %malloccall433, i64 12000
  %scevgep841.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.25, i64 480, i1 false)
  %scevgep840.26 = getelementptr i8, i8* %malloccall433, i64 12480
  %scevgep841.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.26, i64 480, i1 false)
  %scevgep840.27 = getelementptr i8, i8* %malloccall433, i64 12960
  %scevgep841.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.27, i64 480, i1 false)
  %scevgep840.28 = getelementptr i8, i8* %malloccall433, i64 13440
  %scevgep841.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.28, i64 480, i1 false)
  %scevgep840.29 = getelementptr i8, i8* %malloccall433, i64 13920
  %scevgep841.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.29, i64 480, i1 false)
  %scevgep840.30 = getelementptr i8, i8* %malloccall433, i64 14400
  %scevgep841.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.30, i64 480, i1 false)
  %scevgep840.31 = getelementptr i8, i8* %malloccall433, i64 14880
  %scevgep841.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.31, i64 480, i1 false)
  %scevgep840.32 = getelementptr i8, i8* %malloccall433, i64 15360
  %scevgep841.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.32, i64 480, i1 false)
  %scevgep840.33 = getelementptr i8, i8* %malloccall433, i64 15840
  %scevgep841.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.33, i64 480, i1 false)
  %scevgep840.34 = getelementptr i8, i8* %malloccall433, i64 16320
  %scevgep841.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.34, i64 480, i1 false)
  %scevgep840.35 = getelementptr i8, i8* %malloccall433, i64 16800
  %scevgep841.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.35, i64 480, i1 false)
  %scevgep840.36 = getelementptr i8, i8* %malloccall433, i64 17280
  %scevgep841.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.36, i64 480, i1 false)
  %scevgep840.37 = getelementptr i8, i8* %malloccall433, i64 17760
  %scevgep841.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.37, i64 480, i1 false)
  %scevgep840.38 = getelementptr i8, i8* %malloccall433, i64 18240
  %scevgep841.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.38, i64 480, i1 false)
  %scevgep840.39 = getelementptr i8, i8* %malloccall433, i64 18720
  %scevgep841.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.39, i64 480, i1 false)
  %scevgep840.40 = getelementptr i8, i8* %malloccall433, i64 19200
  %scevgep841.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.40, i64 480, i1 false)
  %scevgep840.41 = getelementptr i8, i8* %malloccall433, i64 19680
  %scevgep841.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.41, i64 480, i1 false)
  %scevgep840.42 = getelementptr i8, i8* %malloccall433, i64 20160
  %scevgep841.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.42, i64 480, i1 false)
  %scevgep840.43 = getelementptr i8, i8* %malloccall433, i64 20640
  %scevgep841.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.43, i64 480, i1 false)
  %scevgep840.44 = getelementptr i8, i8* %malloccall433, i64 21120
  %scevgep841.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.44, i64 480, i1 false)
  %scevgep840.45 = getelementptr i8, i8* %malloccall433, i64 21600
  %scevgep841.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.45, i64 480, i1 false)
  %scevgep840.46 = getelementptr i8, i8* %malloccall433, i64 22080
  %scevgep841.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.46, i64 480, i1 false)
  %scevgep840.47 = getelementptr i8, i8* %malloccall433, i64 22560
  %scevgep841.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.47, i64 480, i1 false)
  %scevgep840.48 = getelementptr i8, i8* %malloccall433, i64 23040
  %scevgep841.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.48, i64 480, i1 false)
  %scevgep840.49 = getelementptr i8, i8* %malloccall433, i64 23520
  %scevgep841.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.49, i64 480, i1 false)
  %scevgep840.50 = getelementptr i8, i8* %malloccall433, i64 24000
  %scevgep841.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.50, i64 480, i1 false)
  %scevgep840.51 = getelementptr i8, i8* %malloccall433, i64 24480
  %scevgep841.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.51, i64 480, i1 false)
  %scevgep840.52 = getelementptr i8, i8* %malloccall433, i64 24960
  %scevgep841.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.52, i64 480, i1 false)
  %scevgep840.53 = getelementptr i8, i8* %malloccall433, i64 25440
  %scevgep841.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.53, i64 480, i1 false)
  %scevgep840.54 = getelementptr i8, i8* %malloccall433, i64 25920
  %scevgep841.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.54, i64 480, i1 false)
  %scevgep840.55 = getelementptr i8, i8* %malloccall433, i64 26400
  %scevgep841.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.55, i64 480, i1 false)
  %scevgep840.56 = getelementptr i8, i8* %malloccall433, i64 26880
  %scevgep841.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.56, i64 480, i1 false)
  %scevgep840.57 = getelementptr i8, i8* %malloccall433, i64 27360
  %scevgep841.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.57, i64 480, i1 false)
  %scevgep840.58 = getelementptr i8, i8* %malloccall433, i64 27840
  %scevgep841.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.58, i64 480, i1 false)
  %scevgep840.59 = getelementptr i8, i8* %malloccall433, i64 28320
  %scevgep841.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.59, i64 480, i1 false)
  %scevgep840.60 = getelementptr i8, i8* %malloccall433, i64 28800
  %scevgep841.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.60, i64 480, i1 false)
  %scevgep840.61 = getelementptr i8, i8* %malloccall433, i64 29280
  %scevgep841.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.61, i64 480, i1 false)
  %scevgep840.62 = getelementptr i8, i8* %malloccall433, i64 29760
  %scevgep841.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.62, i64 480, i1 false)
  %scevgep840.63 = getelementptr i8, i8* %malloccall433, i64 30240
  %scevgep841.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.63, i64 480, i1 false)
  %scevgep840.64 = getelementptr i8, i8* %malloccall433, i64 30720
  %scevgep841.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.64, i64 480, i1 false)
  %scevgep840.65 = getelementptr i8, i8* %malloccall433, i64 31200
  %scevgep841.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.65, i64 480, i1 false)
  %scevgep840.66 = getelementptr i8, i8* %malloccall433, i64 31680
  %scevgep841.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.66, i64 480, i1 false)
  %scevgep840.67 = getelementptr i8, i8* %malloccall433, i64 32160
  %scevgep841.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.67, i64 480, i1 false)
  %scevgep840.68 = getelementptr i8, i8* %malloccall433, i64 32640
  %scevgep841.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.68, i64 480, i1 false)
  %scevgep840.69 = getelementptr i8, i8* %malloccall433, i64 33120
  %scevgep841.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.69, i64 480, i1 false)
  %scevgep840.70 = getelementptr i8, i8* %malloccall433, i64 33600
  %scevgep841.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.70, i64 480, i1 false)
  %scevgep840.71 = getelementptr i8, i8* %malloccall433, i64 34080
  %scevgep841.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.71, i64 480, i1 false)
  %scevgep840.72 = getelementptr i8, i8* %malloccall433, i64 34560
  %scevgep841.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.72, i64 480, i1 false)
  %scevgep840.73 = getelementptr i8, i8* %malloccall433, i64 35040
  %scevgep841.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.73, i64 480, i1 false)
  %scevgep840.74 = getelementptr i8, i8* %malloccall433, i64 35520
  %scevgep841.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.74, i64 480, i1 false)
  %scevgep840.75 = getelementptr i8, i8* %malloccall433, i64 36000
  %scevgep841.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.75, i64 480, i1 false)
  %scevgep840.76 = getelementptr i8, i8* %malloccall433, i64 36480
  %scevgep841.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.76, i64 480, i1 false)
  %scevgep840.77 = getelementptr i8, i8* %malloccall433, i64 36960
  %scevgep841.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.77, i64 480, i1 false)
  %scevgep840.78 = getelementptr i8, i8* %malloccall433, i64 37440
  %scevgep841.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.78, i64 480, i1 false)
  %scevgep840.79 = getelementptr i8, i8* %malloccall433, i64 37920
  %scevgep841.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep840.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep841.79, i64 480, i1 false)
  br label %polly.loop_header555

polly.loop_header523:                             ; preds = %polly.loop_header523.preheader, %polly.loop_header523
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_header523 ], [ %polly.indvar526.ph, %polly.loop_header523.preheader ]
  %136 = shl nuw nsw i64 %polly.indvar526, 3
  %scevgep530 = getelementptr i8, i8* %scevgep529, i64 %136
  %scevgep530531 = bitcast i8* %scevgep530 to double*
  %_p_scalar_532 = load double, double* %scevgep530531, align 8, !alias.scope !82, !noalias !84
  %p_mul.i = fmul fast double %_p_scalar_532, 1.200000e+00
  store double %p_mul.i, double* %scevgep530531, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next527, %polly.indvar520
  br i1 %exitcond843.not, label %polly.loop_exit525, label %polly.loop_header523, !llvm.loop !89

polly.loop_header555:                             ; preds = %polly.loop_exit563, %polly.loop_header533.preheader
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit563 ], [ 0, %polly.loop_header533.preheader ]
  %polly.indvar558 = phi i64 [ %polly.indvar_next559, %polly.loop_exit563 ], [ 0, %polly.loop_header533.preheader ]
  %smin835 = call i64 @llvm.smin.i64(i64 %indvars.iv833, i64 -52)
  %137 = shl nsw i64 %polly.indvar558, 3
  %138 = add nsw i64 %smin835, 59
  br label %polly.loop_header561

polly.loop_exit563:                               ; preds = %polly.loop_exit569
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %indvars.iv.next834 = add nsw i64 %indvars.iv833, -8
  %exitcond838.not = icmp eq i64 %polly.indvar_next559, 8
  br i1 %exitcond838.not, label %polly.loop_header555.1, label %polly.loop_header555

polly.loop_header561:                             ; preds = %polly.loop_exit569, %polly.loop_header555
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %polly.loop_exit569 ], [ 1, %polly.loop_header555 ]
  %polly.indvar564 = phi i64 [ %polly.indvar_next565, %polly.loop_exit569 ], [ 0, %polly.loop_header555 ]
  %polly.access.mul.Packed_MemRef_call2434582 = mul nuw nsw i64 %polly.indvar564, 60
  %139 = mul nuw nsw i64 %polly.indvar564, 480
  %140 = mul nuw nsw i64 %polly.indvar564, 640
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %indvars.iv.next831 = add nuw nsw i64 %indvars.iv830, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next565, 64
  br i1 %exitcond837.not, label %polly.loop_exit563, label %polly.loop_header561

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_header561
  %polly.indvar570 = phi i64 [ 0, %polly.loop_header561 ], [ %polly.indvar_next571, %polly.loop_exit575 ]
  %141 = add nuw nsw i64 %polly.indvar570, %137
  %142 = shl i64 %141, 3
  %polly.access.add.Packed_MemRef_call2434583 = add nuw nsw i64 %141, %polly.access.mul.Packed_MemRef_call2434582
  %polly.access.Packed_MemRef_call2434584 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583
  %_p_scalar_585 = load double, double* %polly.access.Packed_MemRef_call2434584, align 8
  %143 = add nuw nsw i64 %142, %139
  %scevgep590 = getelementptr i8, i8* %call1, i64 %143
  %scevgep590591 = bitcast i8* %scevgep590 to double*
  %_p_scalar_592 = load double, double* %scevgep590591, align 8, !alias.scope !85, !noalias !90
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_header573
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %exitcond836.not = icmp eq i64 %polly.indvar570, %138
  br i1 %exitcond836.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_header573, %polly.loop_header567
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header567 ], [ %polly.indvar_next577, %polly.loop_header573 ]
  %144 = mul nuw nsw i64 %polly.indvar576, 480
  %145 = add nuw nsw i64 %144, %142
  %scevgep579 = getelementptr i8, i8* %call1, i64 %145
  %scevgep579580 = bitcast i8* %scevgep579 to double*
  %_p_scalar_581 = load double, double* %scevgep579580, align 8, !alias.scope !85, !noalias !90
  %p_mul27.i = fmul fast double %_p_scalar_585, %_p_scalar_581
  %polly.access.mul.Packed_MemRef_call2434586 = mul nuw nsw i64 %polly.indvar576, 60
  %polly.access.add.Packed_MemRef_call2434587 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586, %141
  %polly.access.Packed_MemRef_call2434588 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2434588, align 8
  %p_mul37.i = fmul fast double %_p_scalar_592, %_p_scalar_589
  %146 = shl nuw nsw i64 %polly.indvar576, 3
  %147 = add nuw nsw i64 %146, %140
  %scevgep593 = getelementptr i8, i8* %call, i64 %147
  %scevgep593594 = bitcast i8* %scevgep593 to double*
  %_p_scalar_595 = load double, double* %scevgep593594, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_595
  store double %p_add42.i, double* %scevgep593594, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next577, %indvars.iv830
  br i1 %exitcond832.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header734:                             ; preds = %entry, %polly.loop_exit742
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %entry ]
  %148 = mul nuw nsw i64 %polly.indvar737, 640
  %149 = trunc i64 %polly.indvar737 to i32
  %broadcast.splatinsert954 = insertelement <4 x i32> poison, i32 %149, i32 0
  %broadcast.splat955 = shufflevector <4 x i32> %broadcast.splatinsert954, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %polly.loop_header734
  %index946 = phi i64 [ 0, %polly.loop_header734 ], [ %index.next947, %vector.body944 ]
  %vec.ind952 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734 ], [ %vec.ind.next953, %vector.body944 ]
  %150 = mul <4 x i32> %vec.ind952, %broadcast.splat955
  %151 = add <4 x i32> %150, <i32 3, i32 3, i32 3, i32 3>
  %152 = urem <4 x i32> %151, <i32 80, i32 80, i32 80, i32 80>
  %153 = sitofp <4 x i32> %152 to <4 x double>
  %154 = fmul fast <4 x double> %153, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %155 = shl i64 %index946, 3
  %156 = add nuw nsw i64 %155, %148
  %157 = getelementptr i8, i8* %call, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %154, <4 x double>* %158, align 8, !alias.scope !91, !noalias !93
  %index.next947 = add i64 %index946, 4
  %vec.ind.next953 = add <4 x i32> %vec.ind952, <i32 4, i32 4, i32 4, i32 4>
  %159 = icmp eq i64 %index.next947, 32
  br i1 %159, label %polly.loop_exit742, label %vector.body944, !llvm.loop !96

polly.loop_exit742:                               ; preds = %vector.body944
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next738, 32
  br i1 %exitcond864.not, label %polly.loop_header734.1, label %polly.loop_header734

polly.loop_header761:                             ; preds = %polly.loop_exit742.2.2, %polly.loop_exit769
  %polly.indvar764 = phi i64 [ %polly.indvar_next765, %polly.loop_exit769 ], [ 0, %polly.loop_exit742.2.2 ]
  %160 = mul nuw nsw i64 %polly.indvar764, 480
  %161 = trunc i64 %polly.indvar764 to i32
  %broadcast.splatinsert1068 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat1069 = shufflevector <4 x i32> %broadcast.splatinsert1068, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %polly.loop_header761
  %index1060 = phi i64 [ 0, %polly.loop_header761 ], [ %index.next1061, %vector.body1058 ]
  %vec.ind1066 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761 ], [ %vec.ind.next1067, %vector.body1058 ]
  %162 = mul <4 x i32> %vec.ind1066, %broadcast.splat1069
  %163 = add <4 x i32> %162, <i32 2, i32 2, i32 2, i32 2>
  %164 = urem <4 x i32> %163, <i32 60, i32 60, i32 60, i32 60>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %167 = shl i64 %index1060, 3
  %168 = add i64 %167, %160
  %169 = getelementptr i8, i8* %call2, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !95, !noalias !97
  %index.next1061 = add i64 %index1060, 4
  %vec.ind.next1067 = add <4 x i32> %vec.ind1066, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next1061, 32
  br i1 %171, label %polly.loop_exit769, label %vector.body1058, !llvm.loop !98

polly.loop_exit769:                               ; preds = %vector.body1058
  %polly.indvar_next765 = add nuw nsw i64 %polly.indvar764, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next765, 32
  br i1 %exitcond855.not, label %polly.loop_header761.1, label %polly.loop_header761

polly.loop_header787:                             ; preds = %polly.loop_exit769.1.2, %polly.loop_exit795
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_exit769.1.2 ]
  %172 = mul nuw nsw i64 %polly.indvar790, 480
  %173 = trunc i64 %polly.indvar790 to i32
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %polly.loop_header787
  %index1138 = phi i64 [ 0, %polly.loop_header787 ], [ %index.next1139, %vector.body1136 ]
  %vec.ind1144 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787 ], [ %vec.ind.next1145, %vector.body1136 ]
  %174 = mul <4 x i32> %vec.ind1144, %broadcast.splat1147
  %175 = add <4 x i32> %174, <i32 1, i32 1, i32 1, i32 1>
  %176 = urem <4 x i32> %175, <i32 80, i32 80, i32 80, i32 80>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %179 = shl i64 %index1138, 3
  %180 = add i64 %179, %172
  %181 = getelementptr i8, i8* %call1, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !94, !noalias !99
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1145 = add <4 x i32> %vec.ind1144, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next1139, 32
  br i1 %183, label %polly.loop_exit795, label %vector.body1136, !llvm.loop !100

polly.loop_exit795:                               ; preds = %vector.body1136
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond849.not, label %polly.loop_header787.1, label %polly.loop_header787

polly.loop_header221.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv804.1 = phi i64 [ %indvars.iv.next805.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv804.1, i64 -52)
  %184 = shl nsw i64 %polly.indvar224.1, 3
  %185 = add nsw i64 %smin.1, 59
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit235.1 ], [ 65, %polly.loop_header221.1 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header221.1 ]
  %186 = add nuw nsw i64 %polly.indvar230.1, 64
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %186, 60
  %187 = mul nuw nsw i64 %186, 480
  %188 = mul nuw nsw i64 %186, 640
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_exit241.1 ]
  %189 = add nuw nsw i64 %polly.indvar236.1, %184
  %190 = shl i64 %189, 3
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %189, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %191 = add nuw nsw i64 %190, %187
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %191
  %scevgep256257.1 = bitcast i8* %scevgep256.1 to double*
  %_p_scalar_258.1 = load double, double* %scevgep256257.1, align 8, !alias.scope !66, !noalias !72
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %192 = mul nuw nsw i64 %polly.indvar242.1, 480
  %193 = add nuw nsw i64 %192, %190
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %193
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !66, !noalias !72
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.mul.Packed_MemRef_call2252.1 = mul nuw nsw i64 %polly.indvar242.1, 60
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.1, %189
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_258.1, %_p_scalar_255.1
  %194 = shl nuw nsw i64 %polly.indvar242.1, 3
  %195 = add nuw nsw i64 %194, %188
  %scevgep259.1 = getelementptr i8, i8* %call, i64 %195
  %scevgep259260.1 = bitcast i8* %scevgep259.1 to double*
  %_p_scalar_261.1 = load double, double* %scevgep259260.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_261.1
  store double %p_add42.i118.1, double* %scevgep259260.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next243.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond806.1.not = icmp eq i64 %polly.indvar236.1, %185
  br i1 %exitcond806.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond807.1.not = icmp eq i64 %polly.indvar_next231.1, 16
  br i1 %exitcond807.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %indvars.iv.next805.1 = add nsw i64 %indvars.iv804.1, -8
  %exitcond808.1.not = icmp eq i64 %polly.indvar_next225.1, 8
  br i1 %exitcond808.1.not, label %polly.loop_exit223.1, label %polly.loop_header221.1

polly.loop_exit223.1:                             ; preds = %polly.loop_exit229.1
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header388.1:                           ; preds = %polly.loop_exit396, %polly.loop_exit396.1
  %indvars.iv818.1 = phi i64 [ %indvars.iv.next819.1, %polly.loop_exit396.1 ], [ 0, %polly.loop_exit396 ]
  %polly.indvar391.1 = phi i64 [ %polly.indvar_next392.1, %polly.loop_exit396.1 ], [ 0, %polly.loop_exit396 ]
  %smin820.1 = call i64 @llvm.smin.i64(i64 %indvars.iv818.1, i64 -52)
  %196 = shl nsw i64 %polly.indvar391.1, 3
  %197 = add nsw i64 %smin820.1, 59
  br label %polly.loop_header394.1

polly.loop_header394.1:                           ; preds = %polly.loop_exit402.1, %polly.loop_header388.1
  %indvars.iv815.1 = phi i64 [ %indvars.iv.next816.1, %polly.loop_exit402.1 ], [ 65, %polly.loop_header388.1 ]
  %polly.indvar397.1 = phi i64 [ %polly.indvar_next398.1, %polly.loop_exit402.1 ], [ 0, %polly.loop_header388.1 ]
  %198 = add nuw nsw i64 %polly.indvar397.1, 64
  %polly.access.mul.Packed_MemRef_call2267415.1 = mul nuw nsw i64 %198, 60
  %199 = mul nuw nsw i64 %198, 480
  %200 = mul nuw nsw i64 %198, 640
  br label %polly.loop_header400.1

polly.loop_header400.1:                           ; preds = %polly.loop_exit408.1, %polly.loop_header394.1
  %polly.indvar403.1 = phi i64 [ 0, %polly.loop_header394.1 ], [ %polly.indvar_next404.1, %polly.loop_exit408.1 ]
  %201 = add nuw nsw i64 %polly.indvar403.1, %196
  %202 = shl i64 %201, 3
  %polly.access.add.Packed_MemRef_call2267416.1 = add nuw nsw i64 %201, %polly.access.mul.Packed_MemRef_call2267415.1
  %polly.access.Packed_MemRef_call2267417.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1
  %_p_scalar_418.1 = load double, double* %polly.access.Packed_MemRef_call2267417.1, align 8
  %203 = add nuw nsw i64 %202, %199
  %scevgep423.1 = getelementptr i8, i8* %call1, i64 %203
  %scevgep423424.1 = bitcast i8* %scevgep423.1 to double*
  %_p_scalar_425.1 = load double, double* %scevgep423424.1, align 8, !alias.scope !76, !noalias !81
  br label %polly.loop_header406.1

polly.loop_header406.1:                           ; preds = %polly.loop_header406.1, %polly.loop_header400.1
  %polly.indvar409.1 = phi i64 [ 0, %polly.loop_header400.1 ], [ %polly.indvar_next410.1, %polly.loop_header406.1 ]
  %204 = mul nuw nsw i64 %polly.indvar409.1, 480
  %205 = add nuw nsw i64 %204, %202
  %scevgep412.1 = getelementptr i8, i8* %call1, i64 %205
  %scevgep412413.1 = bitcast i8* %scevgep412.1 to double*
  %_p_scalar_414.1 = load double, double* %scevgep412413.1, align 8, !alias.scope !76, !noalias !81
  %p_mul27.i73.1 = fmul fast double %_p_scalar_418.1, %_p_scalar_414.1
  %polly.access.mul.Packed_MemRef_call2267419.1 = mul nuw nsw i64 %polly.indvar409.1, 60
  %polly.access.add.Packed_MemRef_call2267420.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.1, %201
  %polly.access.Packed_MemRef_call2267421.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1
  %_p_scalar_422.1 = load double, double* %polly.access.Packed_MemRef_call2267421.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_425.1, %_p_scalar_422.1
  %206 = shl nuw nsw i64 %polly.indvar409.1, 3
  %207 = add nuw nsw i64 %206, %200
  %scevgep426.1 = getelementptr i8, i8* %call, i64 %207
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_428.1
  store double %p_add42.i79.1, double* %scevgep426427.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond817.1.not = icmp eq i64 %polly.indvar_next410.1, %indvars.iv815.1
  br i1 %exitcond817.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.1

polly.loop_exit408.1:                             ; preds = %polly.loop_header406.1
  %polly.indvar_next404.1 = add nuw nsw i64 %polly.indvar403.1, 1
  %exitcond821.1.not = icmp eq i64 %polly.indvar403.1, %197
  br i1 %exitcond821.1.not, label %polly.loop_exit402.1, label %polly.loop_header400.1

polly.loop_exit402.1:                             ; preds = %polly.loop_exit408.1
  %polly.indvar_next398.1 = add nuw nsw i64 %polly.indvar397.1, 1
  %indvars.iv.next816.1 = add nuw nsw i64 %indvars.iv815.1, 1
  %exitcond822.1.not = icmp eq i64 %polly.indvar_next398.1, 16
  br i1 %exitcond822.1.not, label %polly.loop_exit396.1, label %polly.loop_header394.1

polly.loop_exit396.1:                             ; preds = %polly.loop_exit402.1
  %polly.indvar_next392.1 = add nuw nsw i64 %polly.indvar391.1, 1
  %indvars.iv.next819.1 = add nsw i64 %indvars.iv818.1, -8
  %exitcond823.1.not = icmp eq i64 %polly.indvar_next392.1, 8
  br i1 %exitcond823.1.not, label %polly.loop_exit390.1, label %polly.loop_header388.1

polly.loop_exit390.1:                             ; preds = %polly.loop_exit396.1
  tail call void @free(i8* nonnull %malloccall266)
  br label %kernel_syr2k.exit90

polly.loop_header555.1:                           ; preds = %polly.loop_exit563, %polly.loop_exit563.1
  %indvars.iv833.1 = phi i64 [ %indvars.iv.next834.1, %polly.loop_exit563.1 ], [ 0, %polly.loop_exit563 ]
  %polly.indvar558.1 = phi i64 [ %polly.indvar_next559.1, %polly.loop_exit563.1 ], [ 0, %polly.loop_exit563 ]
  %smin835.1 = call i64 @llvm.smin.i64(i64 %indvars.iv833.1, i64 -52)
  %208 = shl nsw i64 %polly.indvar558.1, 3
  %209 = add nsw i64 %smin835.1, 59
  br label %polly.loop_header561.1

polly.loop_header561.1:                           ; preds = %polly.loop_exit569.1, %polly.loop_header555.1
  %indvars.iv830.1 = phi i64 [ %indvars.iv.next831.1, %polly.loop_exit569.1 ], [ 65, %polly.loop_header555.1 ]
  %polly.indvar564.1 = phi i64 [ %polly.indvar_next565.1, %polly.loop_exit569.1 ], [ 0, %polly.loop_header555.1 ]
  %210 = add nuw nsw i64 %polly.indvar564.1, 64
  %polly.access.mul.Packed_MemRef_call2434582.1 = mul nuw nsw i64 %210, 60
  %211 = mul nuw nsw i64 %210, 480
  %212 = mul nuw nsw i64 %210, 640
  br label %polly.loop_header567.1

polly.loop_header567.1:                           ; preds = %polly.loop_exit575.1, %polly.loop_header561.1
  %polly.indvar570.1 = phi i64 [ 0, %polly.loop_header561.1 ], [ %polly.indvar_next571.1, %polly.loop_exit575.1 ]
  %213 = add nuw nsw i64 %polly.indvar570.1, %208
  %214 = shl i64 %213, 3
  %polly.access.add.Packed_MemRef_call2434583.1 = add nuw nsw i64 %213, %polly.access.mul.Packed_MemRef_call2434582.1
  %polly.access.Packed_MemRef_call2434584.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1
  %_p_scalar_585.1 = load double, double* %polly.access.Packed_MemRef_call2434584.1, align 8
  %215 = add nuw nsw i64 %214, %211
  %scevgep590.1 = getelementptr i8, i8* %call1, i64 %215
  %scevgep590591.1 = bitcast i8* %scevgep590.1 to double*
  %_p_scalar_592.1 = load double, double* %scevgep590591.1, align 8, !alias.scope !85, !noalias !90
  br label %polly.loop_header573.1

polly.loop_header573.1:                           ; preds = %polly.loop_header573.1, %polly.loop_header567.1
  %polly.indvar576.1 = phi i64 [ 0, %polly.loop_header567.1 ], [ %polly.indvar_next577.1, %polly.loop_header573.1 ]
  %216 = mul nuw nsw i64 %polly.indvar576.1, 480
  %217 = add nuw nsw i64 %216, %214
  %scevgep579.1 = getelementptr i8, i8* %call1, i64 %217
  %scevgep579580.1 = bitcast i8* %scevgep579.1 to double*
  %_p_scalar_581.1 = load double, double* %scevgep579580.1, align 8, !alias.scope !85, !noalias !90
  %p_mul27.i.1 = fmul fast double %_p_scalar_585.1, %_p_scalar_581.1
  %polly.access.mul.Packed_MemRef_call2434586.1 = mul nuw nsw i64 %polly.indvar576.1, 60
  %polly.access.add.Packed_MemRef_call2434587.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.1, %213
  %polly.access.Packed_MemRef_call2434588.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2434588.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_592.1, %_p_scalar_589.1
  %218 = shl nuw nsw i64 %polly.indvar576.1, 3
  %219 = add nuw nsw i64 %218, %212
  %scevgep593.1 = getelementptr i8, i8* %call, i64 %219
  %scevgep593594.1 = bitcast i8* %scevgep593.1 to double*
  %_p_scalar_595.1 = load double, double* %scevgep593594.1, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_595.1
  store double %p_add42.i.1, double* %scevgep593594.1, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577.1 = add nuw nsw i64 %polly.indvar576.1, 1
  %exitcond832.1.not = icmp eq i64 %polly.indvar_next577.1, %indvars.iv830.1
  br i1 %exitcond832.1.not, label %polly.loop_exit575.1, label %polly.loop_header573.1

polly.loop_exit575.1:                             ; preds = %polly.loop_header573.1
  %polly.indvar_next571.1 = add nuw nsw i64 %polly.indvar570.1, 1
  %exitcond836.1.not = icmp eq i64 %polly.indvar570.1, %209
  br i1 %exitcond836.1.not, label %polly.loop_exit569.1, label %polly.loop_header567.1

polly.loop_exit569.1:                             ; preds = %polly.loop_exit575.1
  %polly.indvar_next565.1 = add nuw nsw i64 %polly.indvar564.1, 1
  %indvars.iv.next831.1 = add nuw nsw i64 %indvars.iv830.1, 1
  %exitcond837.1.not = icmp eq i64 %polly.indvar_next565.1, 16
  br i1 %exitcond837.1.not, label %polly.loop_exit563.1, label %polly.loop_header561.1

polly.loop_exit563.1:                             ; preds = %polly.loop_exit569.1
  %polly.indvar_next559.1 = add nuw nsw i64 %polly.indvar558.1, 1
  %indvars.iv.next834.1 = add nsw i64 %indvars.iv833.1, -8
  %exitcond838.1.not = icmp eq i64 %polly.indvar_next559.1, 8
  br i1 %exitcond838.1.not, label %polly.loop_exit557.1, label %polly.loop_header555.1

polly.loop_exit557.1:                             ; preds = %polly.loop_exit563.1
  tail call void @free(i8* nonnull %malloccall433)
  br label %kernel_syr2k.exit

polly.loop_header787.1:                           ; preds = %polly.loop_exit795, %polly.loop_exit795.1
  %polly.indvar790.1 = phi i64 [ %polly.indvar_next791.1, %polly.loop_exit795.1 ], [ 0, %polly.loop_exit795 ]
  %220 = mul nuw nsw i64 %polly.indvar790.1, 480
  %221 = trunc i64 %polly.indvar790.1 to i32
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %polly.loop_header787.1
  %index1152 = phi i64 [ 0, %polly.loop_header787.1 ], [ %index.next1153, %vector.body1150 ]
  %vec.ind1156 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1 ], [ %vec.ind.next1157, %vector.body1150 ]
  %222 = add nuw nsw <4 x i64> %vec.ind1156, <i64 32, i64 32, i64 32, i64 32>
  %223 = trunc <4 x i64> %222 to <4 x i32>
  %224 = mul <4 x i32> %broadcast.splat1159, %223
  %225 = add <4 x i32> %224, <i32 1, i32 1, i32 1, i32 1>
  %226 = urem <4 x i32> %225, <i32 80, i32 80, i32 80, i32 80>
  %227 = sitofp <4 x i32> %226 to <4 x double>
  %228 = fmul fast <4 x double> %227, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %229 = extractelement <4 x i64> %222, i32 0
  %230 = shl i64 %229, 3
  %231 = add i64 %230, %220
  %232 = getelementptr i8, i8* %call1, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %228, <4 x double>* %233, align 8, !alias.scope !94, !noalias !99
  %index.next1153 = add i64 %index1152, 4
  %vec.ind.next1157 = add <4 x i64> %vec.ind1156, <i64 4, i64 4, i64 4, i64 4>
  %234 = icmp eq i64 %index.next1153, 28
  br i1 %234, label %polly.loop_exit795.1, label %vector.body1150, !llvm.loop !101

polly.loop_exit795.1:                             ; preds = %vector.body1150
  %polly.indvar_next791.1 = add nuw nsw i64 %polly.indvar790.1, 1
  %exitcond849.1.not = icmp eq i64 %polly.indvar_next791.1, 32
  br i1 %exitcond849.1.not, label %polly.loop_header787.1869, label %polly.loop_header787.1

polly.loop_header787.1869:                        ; preds = %polly.loop_exit795.1, %polly.loop_exit795.1880
  %polly.indvar790.1868 = phi i64 [ %polly.indvar_next791.1878, %polly.loop_exit795.1880 ], [ 0, %polly.loop_exit795.1 ]
  %235 = add nuw nsw i64 %polly.indvar790.1868, 32
  %236 = mul nuw nsw i64 %235, 480
  %237 = trunc i64 %235 to i32
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %polly.loop_header787.1869
  %index1164 = phi i64 [ 0, %polly.loop_header787.1869 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.1869 ], [ %vec.ind.next1171, %vector.body1162 ]
  %238 = mul <4 x i32> %vec.ind1170, %broadcast.splat1173
  %239 = add <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %240 = urem <4 x i32> %239, <i32 80, i32 80, i32 80, i32 80>
  %241 = sitofp <4 x i32> %240 to <4 x double>
  %242 = fmul fast <4 x double> %241, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %243 = shl i64 %index1164, 3
  %244 = add i64 %243, %236
  %245 = getelementptr i8, i8* %call1, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %242, <4 x double>* %246, align 8, !alias.scope !94, !noalias !99
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1171 = add <4 x i32> %vec.ind1170, <i32 4, i32 4, i32 4, i32 4>
  %247 = icmp eq i64 %index.next1165, 32
  br i1 %247, label %polly.loop_exit795.1880, label %vector.body1162, !llvm.loop !102

polly.loop_exit795.1880:                          ; preds = %vector.body1162
  %polly.indvar_next791.1878 = add nuw nsw i64 %polly.indvar790.1868, 1
  %exitcond849.1879.not = icmp eq i64 %polly.indvar_next791.1878, 32
  br i1 %exitcond849.1879.not, label %polly.loop_header787.1.1, label %polly.loop_header787.1869

polly.loop_header787.1.1:                         ; preds = %polly.loop_exit795.1880, %polly.loop_exit795.1.1
  %polly.indvar790.1.1 = phi i64 [ %polly.indvar_next791.1.1, %polly.loop_exit795.1.1 ], [ 0, %polly.loop_exit795.1880 ]
  %248 = add nuw nsw i64 %polly.indvar790.1.1, 32
  %249 = mul nuw nsw i64 %248, 480
  %250 = trunc i64 %248 to i32
  %broadcast.splatinsert1184 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1185 = shufflevector <4 x i32> %broadcast.splatinsert1184, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %polly.loop_header787.1.1
  %index1178 = phi i64 [ 0, %polly.loop_header787.1.1 ], [ %index.next1179, %vector.body1176 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.1 ], [ %vec.ind.next1183, %vector.body1176 ]
  %251 = add nuw nsw <4 x i64> %vec.ind1182, <i64 32, i64 32, i64 32, i64 32>
  %252 = trunc <4 x i64> %251 to <4 x i32>
  %253 = mul <4 x i32> %broadcast.splat1185, %252
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = extractelement <4 x i64> %251, i32 0
  %259 = shl i64 %258, 3
  %260 = add i64 %259, %249
  %261 = getelementptr i8, i8* %call1, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %257, <4 x double>* %262, align 8, !alias.scope !94, !noalias !99
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %263 = icmp eq i64 %index.next1179, 28
  br i1 %263, label %polly.loop_exit795.1.1, label %vector.body1176, !llvm.loop !103

polly.loop_exit795.1.1:                           ; preds = %vector.body1176
  %polly.indvar_next791.1.1 = add nuw nsw i64 %polly.indvar790.1.1, 1
  %exitcond849.1.1.not = icmp eq i64 %polly.indvar_next791.1.1, 32
  br i1 %exitcond849.1.1.not, label %polly.loop_header787.2, label %polly.loop_header787.1.1

polly.loop_header787.2:                           ; preds = %polly.loop_exit795.1.1, %polly.loop_exit795.2
  %polly.indvar790.2 = phi i64 [ %polly.indvar_next791.2, %polly.loop_exit795.2 ], [ 0, %polly.loop_exit795.1.1 ]
  %264 = add nuw nsw i64 %polly.indvar790.2, 64
  %265 = mul nuw nsw i64 %264, 480
  %266 = trunc i64 %264 to i32
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %polly.loop_header787.2
  %index1190 = phi i64 [ 0, %polly.loop_header787.2 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1196 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.2 ], [ %vec.ind.next1197, %vector.body1188 ]
  %267 = mul <4 x i32> %vec.ind1196, %broadcast.splat1199
  %268 = add <4 x i32> %267, <i32 1, i32 1, i32 1, i32 1>
  %269 = urem <4 x i32> %268, <i32 80, i32 80, i32 80, i32 80>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %272 = shl i64 %index1190, 3
  %273 = add i64 %272, %265
  %274 = getelementptr i8, i8* %call1, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %271, <4 x double>* %275, align 8, !alias.scope !94, !noalias !99
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1197 = add <4 x i32> %vec.ind1196, <i32 4, i32 4, i32 4, i32 4>
  %276 = icmp eq i64 %index.next1191, 32
  br i1 %276, label %polly.loop_exit795.2, label %vector.body1188, !llvm.loop !104

polly.loop_exit795.2:                             ; preds = %vector.body1188
  %polly.indvar_next791.2 = add nuw nsw i64 %polly.indvar790.2, 1
  %exitcond849.2.not = icmp eq i64 %polly.indvar_next791.2, 16
  br i1 %exitcond849.2.not, label %polly.loop_header787.1.2, label %polly.loop_header787.2

polly.loop_header787.1.2:                         ; preds = %polly.loop_exit795.2, %polly.loop_exit795.1.2
  %polly.indvar790.1.2 = phi i64 [ %polly.indvar_next791.1.2, %polly.loop_exit795.1.2 ], [ 0, %polly.loop_exit795.2 ]
  %277 = add nuw nsw i64 %polly.indvar790.1.2, 64
  %278 = mul nuw nsw i64 %277, 480
  %279 = trunc i64 %277 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header787.1.2
  %index1204 = phi i64 [ 0, %polly.loop_header787.1.2 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1208 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.2 ], [ %vec.ind.next1209, %vector.body1202 ]
  %280 = add nuw nsw <4 x i64> %vec.ind1208, <i64 32, i64 32, i64 32, i64 32>
  %281 = trunc <4 x i64> %280 to <4 x i32>
  %282 = mul <4 x i32> %broadcast.splat1211, %281
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = extractelement <4 x i64> %280, i32 0
  %288 = shl i64 %287, 3
  %289 = add i64 %288, %278
  %290 = getelementptr i8, i8* %call1, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %286, <4 x double>* %291, align 8, !alias.scope !94, !noalias !99
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1209 = add <4 x i64> %vec.ind1208, <i64 4, i64 4, i64 4, i64 4>
  %292 = icmp eq i64 %index.next1205, 28
  br i1 %292, label %polly.loop_exit795.1.2, label %vector.body1202, !llvm.loop !105

polly.loop_exit795.1.2:                           ; preds = %vector.body1202
  %polly.indvar_next791.1.2 = add nuw nsw i64 %polly.indvar790.1.2, 1
  %exitcond849.1.2.not = icmp eq i64 %polly.indvar_next791.1.2, 16
  br i1 %exitcond849.1.2.not, label %init_array.exit, label %polly.loop_header787.1.2

polly.loop_header761.1:                           ; preds = %polly.loop_exit769, %polly.loop_exit769.1
  %polly.indvar764.1 = phi i64 [ %polly.indvar_next765.1, %polly.loop_exit769.1 ], [ 0, %polly.loop_exit769 ]
  %293 = mul nuw nsw i64 %polly.indvar764.1, 480
  %294 = trunc i64 %polly.indvar764.1 to i32
  %broadcast.splatinsert1080 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1081 = shufflevector <4 x i32> %broadcast.splatinsert1080, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1072

vector.body1072:                                  ; preds = %vector.body1072, %polly.loop_header761.1
  %index1074 = phi i64 [ 0, %polly.loop_header761.1 ], [ %index.next1075, %vector.body1072 ]
  %vec.ind1078 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1 ], [ %vec.ind.next1079, %vector.body1072 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1078, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1081, %296
  %298 = add <4 x i32> %297, <i32 2, i32 2, i32 2, i32 2>
  %299 = urem <4 x i32> %298, <i32 60, i32 60, i32 60, i32 60>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add i64 %303, %293
  %305 = getelementptr i8, i8* %call2, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !95, !noalias !97
  %index.next1075 = add i64 %index1074, 4
  %vec.ind.next1079 = add <4 x i64> %vec.ind1078, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1075, 28
  br i1 %307, label %polly.loop_exit769.1, label %vector.body1072, !llvm.loop !106

polly.loop_exit769.1:                             ; preds = %vector.body1072
  %polly.indvar_next765.1 = add nuw nsw i64 %polly.indvar764.1, 1
  %exitcond855.1.not = icmp eq i64 %polly.indvar_next765.1, 32
  br i1 %exitcond855.1.not, label %polly.loop_header761.1883, label %polly.loop_header761.1

polly.loop_header761.1883:                        ; preds = %polly.loop_exit769.1, %polly.loop_exit769.1894
  %polly.indvar764.1882 = phi i64 [ %polly.indvar_next765.1892, %polly.loop_exit769.1894 ], [ 0, %polly.loop_exit769.1 ]
  %308 = add nuw nsw i64 %polly.indvar764.1882, 32
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %polly.loop_header761.1883
  %index1086 = phi i64 [ 0, %polly.loop_header761.1883 ], [ %index.next1087, %vector.body1084 ]
  %vec.ind1092 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.1883 ], [ %vec.ind.next1093, %vector.body1084 ]
  %311 = mul <4 x i32> %vec.ind1092, %broadcast.splat1095
  %312 = add <4 x i32> %311, <i32 2, i32 2, i32 2, i32 2>
  %313 = urem <4 x i32> %312, <i32 60, i32 60, i32 60, i32 60>
  %314 = sitofp <4 x i32> %313 to <4 x double>
  %315 = fmul fast <4 x double> %314, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %316 = shl i64 %index1086, 3
  %317 = add i64 %316, %309
  %318 = getelementptr i8, i8* %call2, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  store <4 x double> %315, <4 x double>* %319, align 8, !alias.scope !95, !noalias !97
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1093 = add <4 x i32> %vec.ind1092, <i32 4, i32 4, i32 4, i32 4>
  %320 = icmp eq i64 %index.next1087, 32
  br i1 %320, label %polly.loop_exit769.1894, label %vector.body1084, !llvm.loop !107

polly.loop_exit769.1894:                          ; preds = %vector.body1084
  %polly.indvar_next765.1892 = add nuw nsw i64 %polly.indvar764.1882, 1
  %exitcond855.1893.not = icmp eq i64 %polly.indvar_next765.1892, 32
  br i1 %exitcond855.1893.not, label %polly.loop_header761.1.1, label %polly.loop_header761.1883

polly.loop_header761.1.1:                         ; preds = %polly.loop_exit769.1894, %polly.loop_exit769.1.1
  %polly.indvar764.1.1 = phi i64 [ %polly.indvar_next765.1.1, %polly.loop_exit769.1.1 ], [ 0, %polly.loop_exit769.1894 ]
  %321 = add nuw nsw i64 %polly.indvar764.1.1, 32
  %322 = mul nuw nsw i64 %321, 480
  %323 = trunc i64 %321 to i32
  %broadcast.splatinsert1106 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1107 = shufflevector <4 x i32> %broadcast.splatinsert1106, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %polly.loop_header761.1.1
  %index1100 = phi i64 [ 0, %polly.loop_header761.1.1 ], [ %index.next1101, %vector.body1098 ]
  %vec.ind1104 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.1 ], [ %vec.ind.next1105, %vector.body1098 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1104, <i64 32, i64 32, i64 32, i64 32>
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1107, %325
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %322
  %334 = getelementptr i8, i8* %call2, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !95, !noalias !97
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1105 = add <4 x i64> %vec.ind1104, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1101, 28
  br i1 %336, label %polly.loop_exit769.1.1, label %vector.body1098, !llvm.loop !108

polly.loop_exit769.1.1:                           ; preds = %vector.body1098
  %polly.indvar_next765.1.1 = add nuw nsw i64 %polly.indvar764.1.1, 1
  %exitcond855.1.1.not = icmp eq i64 %polly.indvar_next765.1.1, 32
  br i1 %exitcond855.1.1.not, label %polly.loop_header761.2, label %polly.loop_header761.1.1

polly.loop_header761.2:                           ; preds = %polly.loop_exit769.1.1, %polly.loop_exit769.2
  %polly.indvar764.2 = phi i64 [ %polly.indvar_next765.2, %polly.loop_exit769.2 ], [ 0, %polly.loop_exit769.1.1 ]
  %337 = add nuw nsw i64 %polly.indvar764.2, 64
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1120 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1121 = shufflevector <4 x i32> %broadcast.splatinsert1120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %polly.loop_header761.2
  %index1112 = phi i64 [ 0, %polly.loop_header761.2 ], [ %index.next1113, %vector.body1110 ]
  %vec.ind1118 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.2 ], [ %vec.ind.next1119, %vector.body1110 ]
  %340 = mul <4 x i32> %vec.ind1118, %broadcast.splat1121
  %341 = add <4 x i32> %340, <i32 2, i32 2, i32 2, i32 2>
  %342 = urem <4 x i32> %341, <i32 60, i32 60, i32 60, i32 60>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = shl i64 %index1112, 3
  %346 = add i64 %345, %338
  %347 = getelementptr i8, i8* %call2, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %344, <4 x double>* %348, align 8, !alias.scope !95, !noalias !97
  %index.next1113 = add i64 %index1112, 4
  %vec.ind.next1119 = add <4 x i32> %vec.ind1118, <i32 4, i32 4, i32 4, i32 4>
  %349 = icmp eq i64 %index.next1113, 32
  br i1 %349, label %polly.loop_exit769.2, label %vector.body1110, !llvm.loop !109

polly.loop_exit769.2:                             ; preds = %vector.body1110
  %polly.indvar_next765.2 = add nuw nsw i64 %polly.indvar764.2, 1
  %exitcond855.2.not = icmp eq i64 %polly.indvar_next765.2, 16
  br i1 %exitcond855.2.not, label %polly.loop_header761.1.2, label %polly.loop_header761.2

polly.loop_header761.1.2:                         ; preds = %polly.loop_exit769.2, %polly.loop_exit769.1.2
  %polly.indvar764.1.2 = phi i64 [ %polly.indvar_next765.1.2, %polly.loop_exit769.1.2 ], [ 0, %polly.loop_exit769.2 ]
  %350 = add nuw nsw i64 %polly.indvar764.1.2, 64
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %polly.loop_header761.1.2
  %index1126 = phi i64 [ 0, %polly.loop_header761.1.2 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1130 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.2 ], [ %vec.ind.next1131, %vector.body1124 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1130, <i64 32, i64 32, i64 32, i64 32>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1133, %354
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add i64 %361, %351
  %363 = getelementptr i8, i8* %call2, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !95, !noalias !97
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1131 = add <4 x i64> %vec.ind1130, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1127, 28
  br i1 %365, label %polly.loop_exit769.1.2, label %vector.body1124, !llvm.loop !110

polly.loop_exit769.1.2:                           ; preds = %vector.body1124
  %polly.indvar_next765.1.2 = add nuw nsw i64 %polly.indvar764.1.2, 1
  %exitcond855.1.2.not = icmp eq i64 %polly.indvar_next765.1.2, 16
  br i1 %exitcond855.1.2.not, label %polly.loop_header787, label %polly.loop_header761.1.2

polly.loop_header734.1:                           ; preds = %polly.loop_exit742, %polly.loop_exit742.1
  %polly.indvar737.1 = phi i64 [ %polly.indvar_next738.1, %polly.loop_exit742.1 ], [ 0, %polly.loop_exit742 ]
  %366 = mul nuw nsw i64 %polly.indvar737.1, 640
  %367 = trunc i64 %polly.indvar737.1 to i32
  %broadcast.splatinsert966 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat967 = shufflevector <4 x i32> %broadcast.splatinsert966, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body958

vector.body958:                                   ; preds = %vector.body958, %polly.loop_header734.1
  %index960 = phi i64 [ 0, %polly.loop_header734.1 ], [ %index.next961, %vector.body958 ]
  %vec.ind964 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1 ], [ %vec.ind.next965, %vector.body958 ]
  %368 = add nuw nsw <4 x i64> %vec.ind964, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat967, %369
  %371 = add <4 x i32> %370, <i32 3, i32 3, i32 3, i32 3>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add nuw nsw i64 %376, %366
  %378 = getelementptr i8, i8* %call, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !91, !noalias !93
  %index.next961 = add i64 %index960, 4
  %vec.ind.next965 = add <4 x i64> %vec.ind964, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next961, 32
  br i1 %380, label %polly.loop_exit742.1, label %vector.body958, !llvm.loop !111

polly.loop_exit742.1:                             ; preds = %vector.body958
  %polly.indvar_next738.1 = add nuw nsw i64 %polly.indvar737.1, 1
  %exitcond864.1.not = icmp eq i64 %polly.indvar_next738.1, 32
  br i1 %exitcond864.1.not, label %polly.loop_header734.2, label %polly.loop_header734.1

polly.loop_header734.2:                           ; preds = %polly.loop_exit742.1, %polly.loop_exit742.2
  %polly.indvar737.2 = phi i64 [ %polly.indvar_next738.2, %polly.loop_exit742.2 ], [ 0, %polly.loop_exit742.1 ]
  %381 = mul nuw nsw i64 %polly.indvar737.2, 640
  %382 = trunc i64 %polly.indvar737.2 to i32
  %broadcast.splatinsert978 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat979 = shufflevector <4 x i32> %broadcast.splatinsert978, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body970

vector.body970:                                   ; preds = %vector.body970, %polly.loop_header734.2
  %index972 = phi i64 [ 0, %polly.loop_header734.2 ], [ %index.next973, %vector.body970 ]
  %vec.ind976 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2 ], [ %vec.ind.next977, %vector.body970 ]
  %383 = add nuw nsw <4 x i64> %vec.ind976, <i64 64, i64 64, i64 64, i64 64>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat979, %384
  %386 = add <4 x i32> %385, <i32 3, i32 3, i32 3, i32 3>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %381
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !91, !noalias !93
  %index.next973 = add i64 %index972, 4
  %vec.ind.next977 = add <4 x i64> %vec.ind976, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next973, 16
  br i1 %395, label %polly.loop_exit742.2, label %vector.body970, !llvm.loop !112

polly.loop_exit742.2:                             ; preds = %vector.body970
  %polly.indvar_next738.2 = add nuw nsw i64 %polly.indvar737.2, 1
  %exitcond864.2.not = icmp eq i64 %polly.indvar_next738.2, 32
  br i1 %exitcond864.2.not, label %polly.loop_header734.1897, label %polly.loop_header734.2

polly.loop_header734.1897:                        ; preds = %polly.loop_exit742.2, %polly.loop_exit742.1908
  %polly.indvar737.1896 = phi i64 [ %polly.indvar_next738.1906, %polly.loop_exit742.1908 ], [ 0, %polly.loop_exit742.2 ]
  %396 = add nuw nsw i64 %polly.indvar737.1896, 32
  %397 = mul nuw nsw i64 %396, 640
  %398 = trunc i64 %396 to i32
  %broadcast.splatinsert992 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat993 = shufflevector <4 x i32> %broadcast.splatinsert992, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %polly.loop_header734.1897
  %index984 = phi i64 [ 0, %polly.loop_header734.1897 ], [ %index.next985, %vector.body982 ]
  %vec.ind990 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.1897 ], [ %vec.ind.next991, %vector.body982 ]
  %399 = mul <4 x i32> %vec.ind990, %broadcast.splat993
  %400 = add <4 x i32> %399, <i32 3, i32 3, i32 3, i32 3>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = shl i64 %index984, 3
  %405 = add nuw nsw i64 %404, %397
  %406 = getelementptr i8, i8* %call, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %403, <4 x double>* %407, align 8, !alias.scope !91, !noalias !93
  %index.next985 = add i64 %index984, 4
  %vec.ind.next991 = add <4 x i32> %vec.ind990, <i32 4, i32 4, i32 4, i32 4>
  %408 = icmp eq i64 %index.next985, 32
  br i1 %408, label %polly.loop_exit742.1908, label %vector.body982, !llvm.loop !113

polly.loop_exit742.1908:                          ; preds = %vector.body982
  %polly.indvar_next738.1906 = add nuw nsw i64 %polly.indvar737.1896, 1
  %exitcond864.1907.not = icmp eq i64 %polly.indvar_next738.1906, 32
  br i1 %exitcond864.1907.not, label %polly.loop_header734.1.1, label %polly.loop_header734.1897

polly.loop_header734.1.1:                         ; preds = %polly.loop_exit742.1908, %polly.loop_exit742.1.1
  %polly.indvar737.1.1 = phi i64 [ %polly.indvar_next738.1.1, %polly.loop_exit742.1.1 ], [ 0, %polly.loop_exit742.1908 ]
  %409 = add nuw nsw i64 %polly.indvar737.1.1, 32
  %410 = mul nuw nsw i64 %409, 640
  %411 = trunc i64 %409 to i32
  %broadcast.splatinsert1004 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1005 = shufflevector <4 x i32> %broadcast.splatinsert1004, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %polly.loop_header734.1.1
  %index998 = phi i64 [ 0, %polly.loop_header734.1.1 ], [ %index.next999, %vector.body996 ]
  %vec.ind1002 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.1 ], [ %vec.ind.next1003, %vector.body996 ]
  %412 = add nuw nsw <4 x i64> %vec.ind1002, <i64 32, i64 32, i64 32, i64 32>
  %413 = trunc <4 x i64> %412 to <4 x i32>
  %414 = mul <4 x i32> %broadcast.splat1005, %413
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = extractelement <4 x i64> %412, i32 0
  %420 = shl i64 %419, 3
  %421 = add nuw nsw i64 %420, %410
  %422 = getelementptr i8, i8* %call, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %418, <4 x double>* %423, align 8, !alias.scope !91, !noalias !93
  %index.next999 = add i64 %index998, 4
  %vec.ind.next1003 = add <4 x i64> %vec.ind1002, <i64 4, i64 4, i64 4, i64 4>
  %424 = icmp eq i64 %index.next999, 32
  br i1 %424, label %polly.loop_exit742.1.1, label %vector.body996, !llvm.loop !114

polly.loop_exit742.1.1:                           ; preds = %vector.body996
  %polly.indvar_next738.1.1 = add nuw nsw i64 %polly.indvar737.1.1, 1
  %exitcond864.1.1.not = icmp eq i64 %polly.indvar_next738.1.1, 32
  br i1 %exitcond864.1.1.not, label %polly.loop_header734.2.1, label %polly.loop_header734.1.1

polly.loop_header734.2.1:                         ; preds = %polly.loop_exit742.1.1, %polly.loop_exit742.2.1
  %polly.indvar737.2.1 = phi i64 [ %polly.indvar_next738.2.1, %polly.loop_exit742.2.1 ], [ 0, %polly.loop_exit742.1.1 ]
  %425 = add nuw nsw i64 %polly.indvar737.2.1, 32
  %426 = mul nuw nsw i64 %425, 640
  %427 = trunc i64 %425 to i32
  %broadcast.splatinsert1016 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1017 = shufflevector <4 x i32> %broadcast.splatinsert1016, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %polly.loop_header734.2.1
  %index1010 = phi i64 [ 0, %polly.loop_header734.2.1 ], [ %index.next1011, %vector.body1008 ]
  %vec.ind1014 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.1 ], [ %vec.ind.next1015, %vector.body1008 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1014, <i64 64, i64 64, i64 64, i64 64>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1017, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !91, !noalias !93
  %index.next1011 = add i64 %index1010, 4
  %vec.ind.next1015 = add <4 x i64> %vec.ind1014, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1011, 16
  br i1 %440, label %polly.loop_exit742.2.1, label %vector.body1008, !llvm.loop !115

polly.loop_exit742.2.1:                           ; preds = %vector.body1008
  %polly.indvar_next738.2.1 = add nuw nsw i64 %polly.indvar737.2.1, 1
  %exitcond864.2.1.not = icmp eq i64 %polly.indvar_next738.2.1, 32
  br i1 %exitcond864.2.1.not, label %polly.loop_header734.2911, label %polly.loop_header734.2.1

polly.loop_header734.2911:                        ; preds = %polly.loop_exit742.2.1, %polly.loop_exit742.2922
  %polly.indvar737.2910 = phi i64 [ %polly.indvar_next738.2920, %polly.loop_exit742.2922 ], [ 0, %polly.loop_exit742.2.1 ]
  %441 = add nuw nsw i64 %polly.indvar737.2910, 64
  %442 = mul nuw nsw i64 %441, 640
  %443 = trunc i64 %441 to i32
  %broadcast.splatinsert1030 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat1031 = shufflevector <4 x i32> %broadcast.splatinsert1030, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %polly.loop_header734.2911
  %index1022 = phi i64 [ 0, %polly.loop_header734.2911 ], [ %index.next1023, %vector.body1020 ]
  %vec.ind1028 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.2911 ], [ %vec.ind.next1029, %vector.body1020 ]
  %444 = mul <4 x i32> %vec.ind1028, %broadcast.splat1031
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = shl i64 %index1022, 3
  %450 = add nuw nsw i64 %449, %442
  %451 = getelementptr i8, i8* %call, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %448, <4 x double>* %452, align 8, !alias.scope !91, !noalias !93
  %index.next1023 = add i64 %index1022, 4
  %vec.ind.next1029 = add <4 x i32> %vec.ind1028, <i32 4, i32 4, i32 4, i32 4>
  %453 = icmp eq i64 %index.next1023, 32
  br i1 %453, label %polly.loop_exit742.2922, label %vector.body1020, !llvm.loop !116

polly.loop_exit742.2922:                          ; preds = %vector.body1020
  %polly.indvar_next738.2920 = add nuw nsw i64 %polly.indvar737.2910, 1
  %exitcond864.2921.not = icmp eq i64 %polly.indvar_next738.2920, 16
  br i1 %exitcond864.2921.not, label %polly.loop_header734.1.2, label %polly.loop_header734.2911

polly.loop_header734.1.2:                         ; preds = %polly.loop_exit742.2922, %polly.loop_exit742.1.2
  %polly.indvar737.1.2 = phi i64 [ %polly.indvar_next738.1.2, %polly.loop_exit742.1.2 ], [ 0, %polly.loop_exit742.2922 ]
  %454 = add nuw nsw i64 %polly.indvar737.1.2, 64
  %455 = mul nuw nsw i64 %454, 640
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1042 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1043 = shufflevector <4 x i32> %broadcast.splatinsert1042, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %polly.loop_header734.1.2
  %index1036 = phi i64 [ 0, %polly.loop_header734.1.2 ], [ %index.next1037, %vector.body1034 ]
  %vec.ind1040 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.2 ], [ %vec.ind.next1041, %vector.body1034 ]
  %457 = add nuw nsw <4 x i64> %vec.ind1040, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat1043, %458
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add nuw nsw i64 %465, %455
  %467 = getelementptr i8, i8* %call, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !91, !noalias !93
  %index.next1037 = add i64 %index1036, 4
  %vec.ind.next1041 = add <4 x i64> %vec.ind1040, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next1037, 32
  br i1 %469, label %polly.loop_exit742.1.2, label %vector.body1034, !llvm.loop !117

polly.loop_exit742.1.2:                           ; preds = %vector.body1034
  %polly.indvar_next738.1.2 = add nuw nsw i64 %polly.indvar737.1.2, 1
  %exitcond864.1.2.not = icmp eq i64 %polly.indvar_next738.1.2, 16
  br i1 %exitcond864.1.2.not, label %polly.loop_header734.2.2, label %polly.loop_header734.1.2

polly.loop_header734.2.2:                         ; preds = %polly.loop_exit742.1.2, %polly.loop_exit742.2.2
  %polly.indvar737.2.2 = phi i64 [ %polly.indvar_next738.2.2, %polly.loop_exit742.2.2 ], [ 0, %polly.loop_exit742.1.2 ]
  %470 = add nuw nsw i64 %polly.indvar737.2.2, 64
  %471 = mul nuw nsw i64 %470, 640
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1054 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1055 = shufflevector <4 x i32> %broadcast.splatinsert1054, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %polly.loop_header734.2.2
  %index1048 = phi i64 [ 0, %polly.loop_header734.2.2 ], [ %index.next1049, %vector.body1046 ]
  %vec.ind1052 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.2 ], [ %vec.ind.next1053, %vector.body1046 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1052, <i64 64, i64 64, i64 64, i64 64>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1055, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !91, !noalias !93
  %index.next1049 = add i64 %index1048, 4
  %vec.ind.next1053 = add <4 x i64> %vec.ind1052, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1049, 16
  br i1 %485, label %polly.loop_exit742.2.2, label %vector.body1046, !llvm.loop !118

polly.loop_exit742.2.2:                           ; preds = %vector.body1046
  %polly.indvar_next738.2.2 = add nuw nsw i64 %polly.indvar737.2.2, 1
  %exitcond864.2.2.not = icmp eq i64 %polly.indvar_next738.2.2, 16
  br i1 %exitcond864.2.2.not, label %polly.loop_header761, label %polly.loop_header734.2.2
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!25 = !{!"llvm.loop.tile.size", i32 80}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 8}
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
!45 = !{!"llvm.loop.tile.size", i32 64}
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
!72 = !{!63, !67, !68}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !71, !13}
!81 = !{!73, !77, !78}
!82 = distinct !{!82, !83, !"polly.alias.scope.MemRef_call"}
!83 = distinct !{!83, !"polly.alias.scope.domain"}
!84 = !{!85, !86, !87}
!85 = distinct !{!85, !83, !"polly.alias.scope.MemRef_call1"}
!86 = distinct !{!86, !83, !"polly.alias.scope.MemRef_call2"}
!87 = distinct !{!87, !83, !"polly.alias.scope.Packed_MemRef_call2"}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !71, !13}
!90 = !{!82, !86, !87}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !13}
!97 = !{!94, !91}
!98 = distinct !{!98, !13}
!99 = !{!95, !91}
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
!118 = distinct !{!118, !13}
