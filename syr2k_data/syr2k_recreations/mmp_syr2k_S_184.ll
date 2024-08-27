; ModuleID = 'syr2k_recreations//mmp_syr2k_S_184.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_184.c"
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
  %scevgep934 = getelementptr i8, i8* %call2, i64 %12
  %scevgep933 = getelementptr i8, i8* %call2, i64 %11
  %scevgep932 = getelementptr i8, i8* %call1, i64 %12
  %scevgep931 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep931, %scevgep934
  %bound1 = icmp ult i8* %scevgep933, %scevgep932
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
  br i1 %exitcond18.not.i, label %vector.ph938, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph938:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert945 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat946 = shufflevector <4 x i64> %broadcast.splatinsert945, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body937

vector.body937:                                   ; preds = %vector.body937, %vector.ph938
  %index939 = phi i64 [ 0, %vector.ph938 ], [ %index.next940, %vector.body937 ]
  %vec.ind943 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph938 ], [ %vec.ind.next944, %vector.body937 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind943, %broadcast.splat946
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv7.i, i64 %index939
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next940 = add i64 %index939, 4
  %vec.ind.next944 = add <4 x i64> %vec.ind943, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next940, 80
  br i1 %40, label %for.inc41.i, label %vector.body937, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body937
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph938, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1294, label %vector.ph1220

vector.ph1220:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %vector.ph1220
  %index1221 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1222, %vector.body1219 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %index1221
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1222 = add i64 %index1221, 4
  %46 = icmp eq i64 %index.next1222, %n.vec
  br i1 %46, label %middle.block1217, label %vector.body1219, !llvm.loop !18

middle.block1217:                                 ; preds = %vector.body1219
  %cmp.n1224 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1224, label %for.inc6.i, label %for.body3.i46.preheader1294

for.body3.i46.preheader1294:                      ; preds = %for.body3.i46.preheader, %middle.block1217
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1217 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1294, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1294 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1217, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit523.3
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1240 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1240, label %for.body3.i60.preheader1292, label %vector.ph1241

vector.ph1241:                                    ; preds = %for.body3.i60.preheader
  %n.vec1243 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1241
  %index1244 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1245, %vector.body1239 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %index1244
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1248 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1248, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1245 = add i64 %index1244, 4
  %57 = icmp eq i64 %index.next1245, %n.vec1243
  br i1 %57, label %middle.block1237, label %vector.body1239, !llvm.loop !51

middle.block1237:                                 ; preds = %vector.body1239
  %cmp.n1247 = icmp eq i64 %indvars.iv21.i52, %n.vec1243
  br i1 %cmp.n1247, label %for.inc6.i63, label %for.body3.i60.preheader1292

for.body3.i60.preheader1292:                      ; preds = %for.body3.i60.preheader, %middle.block1237
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1243, %middle.block1237 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1292, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1292 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1237, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit367.3
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1266 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1266, label %for.body3.i99.preheader1290, label %vector.ph1267

vector.ph1267:                                    ; preds = %for.body3.i99.preheader
  %n.vec1269 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %vector.ph1267
  %index1270 = phi i64 [ 0, %vector.ph1267 ], [ %index.next1271, %vector.body1265 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %index1270
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1274 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1274, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1271 = add i64 %index1270, 4
  %68 = icmp eq i64 %index.next1271, %n.vec1269
  br i1 %68, label %middle.block1263, label %vector.body1265, !llvm.loop !53

middle.block1263:                                 ; preds = %vector.body1265
  %cmp.n1273 = icmp eq i64 %indvars.iv21.i91, %n.vec1269
  br i1 %cmp.n1273, label %for.inc6.i102, label %for.body3.i99.preheader1290

for.body3.i99.preheader1290:                      ; preds = %for.body3.i99.preheader, %middle.block1263
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1269, %middle.block1263 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1290, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1290 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1263, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.3
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !55
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !57

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !58

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1278 = phi i64 [ %indvar.next1279, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1278, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1280 = icmp ult i64 %88, 4
  br i1 %min.iters.check1280, label %polly.loop_header191.preheader, label %vector.ph1281

vector.ph1281:                                    ; preds = %polly.loop_header
  %n.vec1283 = and i64 %88, -4
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1277 ]
  %90 = shl nuw nsw i64 %index1284, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1288 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1288, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1285 = add i64 %index1284, 4
  %95 = icmp eq i64 %index.next1285, %n.vec1283
  br i1 %95, label %middle.block1275, label %vector.body1277, !llvm.loop !64

middle.block1275:                                 ; preds = %vector.body1277
  %cmp.n1287 = icmp eq i64 %88, %n.vec1283
  br i1 %cmp.n1287, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1275
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1283, %middle.block1275 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1275
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1279 = add i64 %indvar1278, 1
  br i1 %exitcond792.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond791.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.3
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213.3 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit213.3 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %polly.indvar202, 2
  %98 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %99 = shl nsw i64 %polly.indvar214, 5
  %100 = sub nsw i64 %98, %99
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next780 = add nsw i64 %indvars.iv779, -32
  %exitcond788.not = icmp eq i64 %polly.indvar214, %97
  br i1 %exitcond788.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit225 ], [ %indvars.iv779, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ 0, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 31)
  %101 = add nsw i64 %polly.indvar220, %100
  %polly.loop_guard911 = icmp sgt i64 %101, -1
  %102 = add nuw nsw i64 %polly.indvar220, %98
  %103 = mul nuw nsw i64 %102, 480
  %104 = mul nuw nsw i64 %102, 640
  br i1 %polly.loop_guard911, label %polly.loop_header223.us, label %polly.loop_exit225

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.loop_exit231.loopexit.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit231.loopexit.us ], [ 0, %polly.loop_header217 ]
  %105 = shl i64 %polly.indvar226.us, 3
  %106 = add nuw nsw i64 %105, %103
  %scevgep238.us = getelementptr i8, i8* %call2, i64 %106
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us = getelementptr i8, i8* %call1, i64 %106
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %107 = add nuw nsw i64 %polly.indvar232.us, %99
  %108 = mul nuw nsw i64 %107, 480
  %109 = add nuw nsw i64 %108, %105
  %scevgep235.us = getelementptr i8, i8* %call1, i64 %109
  %scevgep235236.us = bitcast i8* %scevgep235.us to double*
  %_p_scalar_237.us = load double, double* %scevgep235236.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_237.us
  %scevgep241.us = getelementptr i8, i8* %call2, i64 %109
  %scevgep241242.us = bitcast i8* %scevgep241.us to double*
  %_p_scalar_243.us = load double, double* %scevgep241242.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_243.us
  %110 = shl i64 %107, 3
  %111 = add nuw nsw i64 %110, %104
  %scevgep247.us = getelementptr i8, i8* %call, i64 %111
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar232.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit231.loopexit.us, label %polly.loop_header229.us

polly.loop_exit231.loopexit.us:                   ; preds = %polly.loop_header229.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next227.us, 16
  br i1 %exitcond786.not, label %polly.loop_exit225, label %polly.loop_header223.us

polly.loop_exit225:                               ; preds = %polly.loop_exit231.loopexit.us, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, 1
  %exitcond787.not = icmp eq i64 %polly.indvar_next221, 8
  br i1 %exitcond787.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1252 = phi i64 [ %indvar.next1253, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %112 = add i64 %indvar1252, 1
  %113 = mul nuw nsw i64 %polly.indvar339, 640
  %scevgep348 = getelementptr i8, i8* %call, i64 %113
  %min.iters.check1254 = icmp ult i64 %112, 4
  br i1 %min.iters.check1254, label %polly.loop_header342.preheader, label %vector.ph1255

vector.ph1255:                                    ; preds = %polly.loop_header336
  %n.vec1257 = and i64 %112, -4
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1255
  %index1258 = phi i64 [ 0, %vector.ph1255 ], [ %index.next1259, %vector.body1251 ]
  %114 = shl nuw nsw i64 %index1258, 3
  %115 = getelementptr i8, i8* %scevgep348, i64 %114
  %116 = bitcast i8* %115 to <4 x double>*
  %wide.load1262 = load <4 x double>, <4 x double>* %116, align 8, !alias.scope !69, !noalias !71
  %117 = fmul fast <4 x double> %wide.load1262, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %118 = bitcast i8* %115 to <4 x double>*
  store <4 x double> %117, <4 x double>* %118, align 8, !alias.scope !69, !noalias !71
  %index.next1259 = add i64 %index1258, 4
  %119 = icmp eq i64 %index.next1259, %n.vec1257
  br i1 %119, label %middle.block1249, label %vector.body1251, !llvm.loop !74

middle.block1249:                                 ; preds = %vector.body1251
  %cmp.n1261 = icmp eq i64 %112, %n.vec1257
  br i1 %cmp.n1261, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block1249
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1257, %middle.block1249 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block1249
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next340, 80
  %indvar.next1253 = add i64 %indvar1252, 1
  br i1 %exitcond810.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %120 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %120
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond809.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !75

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit367.3
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit367.3 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit367.3 ], [ 0, %polly.loop_exit344 ]
  %121 = lshr i64 %polly.indvar355, 2
  %122 = shl nsw i64 %polly.indvar355, 3
  br label %polly.loop_header365

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.loop_header352
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %polly.loop_exit373 ], [ %indvars.iv793, %polly.loop_header352 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 0, %polly.loop_header352 ]
  %123 = shl nsw i64 %polly.indvar368, 5
  %124 = sub nsw i64 %122, %123
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_exit379
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %indvars.iv.next796 = add nsw i64 %indvars.iv795, -32
  %exitcond806.not = icmp eq i64 %polly.indvar368, %121
  br i1 %exitcond806.not, label %polly.loop_header365.1, label %polly.loop_header365

polly.loop_header371:                             ; preds = %polly.loop_exit379, %polly.loop_header365
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %polly.loop_exit379 ], [ %indvars.iv795, %polly.loop_header365 ]
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_exit379 ], [ 0, %polly.loop_header365 ]
  %smin799 = call i64 @llvm.smin.i64(i64 %indvars.iv797, i64 31)
  %125 = add nsw i64 %polly.indvar374, %124
  %polly.loop_guard387915 = icmp sgt i64 %125, -1
  %126 = add nuw nsw i64 %polly.indvar374, %122
  %127 = mul nuw nsw i64 %126, 480
  %128 = mul nuw nsw i64 %126, 640
  br i1 %polly.loop_guard387915, label %polly.loop_header377.us, label %polly.loop_exit379

polly.loop_header377.us:                          ; preds = %polly.loop_header371, %polly.loop_exit386.loopexit.us
  %polly.indvar380.us = phi i64 [ %polly.indvar_next381.us, %polly.loop_exit386.loopexit.us ], [ 0, %polly.loop_header371 ]
  %129 = shl i64 %polly.indvar380.us, 3
  %130 = add nuw nsw i64 %129, %127
  %scevgep394.us = getelementptr i8, i8* %call2, i64 %130
  %scevgep394395.us = bitcast i8* %scevgep394.us to double*
  %_p_scalar_396.us = load double, double* %scevgep394395.us, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us = getelementptr i8, i8* %call1, i64 %130
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us

polly.loop_header384.us:                          ; preds = %polly.loop_header377.us, %polly.loop_header384.us
  %polly.indvar388.us = phi i64 [ %polly.indvar_next389.us, %polly.loop_header384.us ], [ 0, %polly.loop_header377.us ]
  %131 = add nuw nsw i64 %polly.indvar388.us, %123
  %132 = mul nuw nsw i64 %131, 480
  %133 = add nuw nsw i64 %132, %129
  %scevgep391.us = getelementptr i8, i8* %call1, i64 %133
  %scevgep391392.us = bitcast i8* %scevgep391.us to double*
  %_p_scalar_393.us = load double, double* %scevgep391392.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_396.us, %_p_scalar_393.us
  %scevgep397.us = getelementptr i8, i8* %call2, i64 %133
  %scevgep397398.us = bitcast i8* %scevgep397.us to double*
  %_p_scalar_399.us = load double, double* %scevgep397398.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_402.us, %_p_scalar_399.us
  %134 = shl i64 %131, 3
  %135 = add nuw nsw i64 %134, %128
  %scevgep403.us = getelementptr i8, i8* %call, i64 %135
  %scevgep403404.us = bitcast i8* %scevgep403.us to double*
  %_p_scalar_405.us = load double, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_405.us
  store double %p_add42.i79.us, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us = add nuw nsw i64 %polly.indvar388.us, 1
  %exitcond800.not = icmp eq i64 %polly.indvar388.us, %smin799
  br i1 %exitcond800.not, label %polly.loop_exit386.loopexit.us, label %polly.loop_header384.us

polly.loop_exit386.loopexit.us:                   ; preds = %polly.loop_header384.us
  %polly.indvar_next381.us = add nuw nsw i64 %polly.indvar380.us, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next381.us, 16
  br i1 %exitcond804.not, label %polly.loop_exit379, label %polly.loop_header377.us

polly.loop_exit379:                               ; preds = %polly.loop_exit386.loopexit.us, %polly.loop_header371
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %indvars.iv.next798 = add nsw i64 %indvars.iv797, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next375, 8
  br i1 %exitcond805.not, label %polly.loop_exit373, label %polly.loop_header371

polly.loop_header492:                             ; preds = %init_array.exit, %polly.loop_exit500
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit500 ], [ 0, %init_array.exit ]
  %polly.indvar495 = phi i64 [ %polly.indvar_next496, %polly.loop_exit500 ], [ 1, %init_array.exit ]
  %136 = add i64 %indvar, 1
  %137 = mul nuw nsw i64 %polly.indvar495, 640
  %scevgep504 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1228 = icmp ult i64 %136, 4
  br i1 %min.iters.check1228, label %polly.loop_header498.preheader, label %vector.ph1229

vector.ph1229:                                    ; preds = %polly.loop_header492
  %n.vec1231 = and i64 %136, -4
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1229
  %index1232 = phi i64 [ 0, %vector.ph1229 ], [ %index.next1233, %vector.body1227 ]
  %138 = shl nuw nsw i64 %index1232, 3
  %139 = getelementptr i8, i8* %scevgep504, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1236 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !78, !noalias !80
  %141 = fmul fast <4 x double> %wide.load1236, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !78, !noalias !80
  %index.next1233 = add i64 %index1232, 4
  %143 = icmp eq i64 %index.next1233, %n.vec1231
  br i1 %143, label %middle.block1225, label %vector.body1227, !llvm.loop !83

middle.block1225:                                 ; preds = %vector.body1227
  %cmp.n1235 = icmp eq i64 %136, %n.vec1231
  br i1 %cmp.n1235, label %polly.loop_exit500, label %polly.loop_header498.preheader

polly.loop_header498.preheader:                   ; preds = %polly.loop_header492, %middle.block1225
  %polly.indvar501.ph = phi i64 [ 0, %polly.loop_header492 ], [ %n.vec1231, %middle.block1225 ]
  br label %polly.loop_header498

polly.loop_exit500:                               ; preds = %polly.loop_header498, %middle.block1225
  %polly.indvar_next496 = add nuw nsw i64 %polly.indvar495, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next496, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond828.not, label %polly.loop_header508, label %polly.loop_header492

polly.loop_header498:                             ; preds = %polly.loop_header498.preheader, %polly.loop_header498
  %polly.indvar501 = phi i64 [ %polly.indvar_next502, %polly.loop_header498 ], [ %polly.indvar501.ph, %polly.loop_header498.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar501, 3
  %scevgep505 = getelementptr i8, i8* %scevgep504, i64 %144
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_507, 1.200000e+00
  store double %p_mul.i, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next502 = add nuw nsw i64 %polly.indvar501, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next502, %polly.indvar495
  br i1 %exitcond827.not, label %polly.loop_exit500, label %polly.loop_header498, !llvm.loop !84

polly.loop_header508:                             ; preds = %polly.loop_exit500, %polly.loop_exit523.3
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %polly.loop_exit523.3 ], [ 0, %polly.loop_exit500 ]
  %polly.indvar511 = phi i64 [ %polly.indvar_next512, %polly.loop_exit523.3 ], [ 0, %polly.loop_exit500 ]
  %145 = lshr i64 %polly.indvar511, 2
  %146 = shl nsw i64 %polly.indvar511, 3
  br label %polly.loop_header521

polly.loop_header521:                             ; preds = %polly.loop_exit529, %polly.loop_header508
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %polly.loop_exit529 ], [ %indvars.iv811, %polly.loop_header508 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 0, %polly.loop_header508 ]
  %147 = shl nsw i64 %polly.indvar524, 5
  %148 = sub nsw i64 %146, %147
  br label %polly.loop_header527

polly.loop_exit529:                               ; preds = %polly.loop_exit535
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %indvars.iv.next814 = add nsw i64 %indvars.iv813, -32
  %exitcond824.not = icmp eq i64 %polly.indvar524, %145
  br i1 %exitcond824.not, label %polly.loop_header521.1, label %polly.loop_header521

polly.loop_header527:                             ; preds = %polly.loop_exit535, %polly.loop_header521
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit535 ], [ %indvars.iv813, %polly.loop_header521 ]
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit535 ], [ 0, %polly.loop_header521 ]
  %smin817 = call i64 @llvm.smin.i64(i64 %indvars.iv815, i64 31)
  %149 = add nsw i64 %polly.indvar530, %148
  %polly.loop_guard543919 = icmp sgt i64 %149, -1
  %150 = add nuw nsw i64 %polly.indvar530, %146
  %151 = mul nuw nsw i64 %150, 480
  %152 = mul nuw nsw i64 %150, 640
  br i1 %polly.loop_guard543919, label %polly.loop_header533.us, label %polly.loop_exit535

polly.loop_header533.us:                          ; preds = %polly.loop_header527, %polly.loop_exit542.loopexit.us
  %polly.indvar536.us = phi i64 [ %polly.indvar_next537.us, %polly.loop_exit542.loopexit.us ], [ 0, %polly.loop_header527 ]
  %153 = shl i64 %polly.indvar536.us, 3
  %154 = add nuw nsw i64 %153, %151
  %scevgep550.us = getelementptr i8, i8* %call2, i64 %154
  %scevgep550551.us = bitcast i8* %scevgep550.us to double*
  %_p_scalar_552.us = load double, double* %scevgep550551.us, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us = getelementptr i8, i8* %call1, i64 %154
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us

polly.loop_header540.us:                          ; preds = %polly.loop_header533.us, %polly.loop_header540.us
  %polly.indvar544.us = phi i64 [ %polly.indvar_next545.us, %polly.loop_header540.us ], [ 0, %polly.loop_header533.us ]
  %155 = add nuw nsw i64 %polly.indvar544.us, %147
  %156 = mul nuw nsw i64 %155, 480
  %157 = add nuw nsw i64 %156, %153
  %scevgep547.us = getelementptr i8, i8* %call1, i64 %157
  %scevgep547548.us = bitcast i8* %scevgep547.us to double*
  %_p_scalar_549.us = load double, double* %scevgep547548.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_552.us, %_p_scalar_549.us
  %scevgep553.us = getelementptr i8, i8* %call2, i64 %157
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %158 = shl i64 %155, 3
  %159 = add nuw nsw i64 %158, %152
  %scevgep559.us = getelementptr i8, i8* %call, i64 %159
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_561.us
  store double %p_add42.i.us, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us = add nuw nsw i64 %polly.indvar544.us, 1
  %exitcond818.not = icmp eq i64 %polly.indvar544.us, %smin817
  br i1 %exitcond818.not, label %polly.loop_exit542.loopexit.us, label %polly.loop_header540.us

polly.loop_exit542.loopexit.us:                   ; preds = %polly.loop_header540.us
  %polly.indvar_next537.us = add nuw nsw i64 %polly.indvar536.us, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next537.us, 16
  br i1 %exitcond822.not, label %polly.loop_exit535, label %polly.loop_header533.us

polly.loop_exit535:                               ; preds = %polly.loop_exit542.loopexit.us, %polly.loop_header527
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %indvars.iv.next816 = add nsw i64 %indvars.iv815, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next531, 8
  br i1 %exitcond823.not, label %polly.loop_exit529, label %polly.loop_header527

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %160 = mul nuw nsw i64 %polly.indvar703, 640
  %161 = trunc i64 %polly.indvar703 to i32
  %broadcast.splatinsert959 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat960 = shufflevector <4 x i32> %broadcast.splatinsert959, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body949

vector.body949:                                   ; preds = %vector.body949, %polly.loop_header700
  %index951 = phi i64 [ 0, %polly.loop_header700 ], [ %index.next952, %vector.body949 ]
  %vec.ind957 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700 ], [ %vec.ind.next958, %vector.body949 ]
  %162 = mul <4 x i32> %vec.ind957, %broadcast.splat960
  %163 = add <4 x i32> %162, <i32 3, i32 3, i32 3, i32 3>
  %164 = urem <4 x i32> %163, <i32 80, i32 80, i32 80, i32 80>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %167 = shl i64 %index951, 3
  %168 = add nuw nsw i64 %167, %160
  %169 = getelementptr i8, i8* %call, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !87, !noalias !89
  %index.next952 = add i64 %index951, 4
  %vec.ind.next958 = add <4 x i32> %vec.ind957, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next952, 32
  br i1 %171, label %polly.loop_exit708, label %vector.body949, !llvm.loop !92

polly.loop_exit708:                               ; preds = %vector.body949
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next704, 32
  br i1 %exitcond848.not, label %polly.loop_header700.1, label %polly.loop_header700

polly.loop_header727:                             ; preds = %polly.loop_exit708.2.2, %polly.loop_exit735
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708.2.2 ]
  %172 = mul nuw nsw i64 %polly.indvar730, 480
  %173 = trunc i64 %polly.indvar730 to i32
  %broadcast.splatinsert1073 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat1074 = shufflevector <4 x i32> %broadcast.splatinsert1073, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1063

vector.body1063:                                  ; preds = %vector.body1063, %polly.loop_header727
  %index1065 = phi i64 [ 0, %polly.loop_header727 ], [ %index.next1066, %vector.body1063 ]
  %vec.ind1071 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727 ], [ %vec.ind.next1072, %vector.body1063 ]
  %174 = mul <4 x i32> %vec.ind1071, %broadcast.splat1074
  %175 = add <4 x i32> %174, <i32 2, i32 2, i32 2, i32 2>
  %176 = urem <4 x i32> %175, <i32 60, i32 60, i32 60, i32 60>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %179 = shl i64 %index1065, 3
  %180 = add i64 %179, %172
  %181 = getelementptr i8, i8* %call2, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !91, !noalias !93
  %index.next1066 = add i64 %index1065, 4
  %vec.ind.next1072 = add <4 x i32> %vec.ind1071, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next1066, 32
  br i1 %183, label %polly.loop_exit735, label %vector.body1063, !llvm.loop !94

polly.loop_exit735:                               ; preds = %vector.body1063
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond839.not, label %polly.loop_header727.1, label %polly.loop_header727

polly.loop_header753:                             ; preds = %polly.loop_exit735.1.2, %polly.loop_exit761
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735.1.2 ]
  %184 = mul nuw nsw i64 %polly.indvar756, 480
  %185 = trunc i64 %polly.indvar756 to i32
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %polly.loop_header753
  %index1143 = phi i64 [ 0, %polly.loop_header753 ], [ %index.next1144, %vector.body1141 ]
  %vec.ind1149 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753 ], [ %vec.ind.next1150, %vector.body1141 ]
  %186 = mul <4 x i32> %vec.ind1149, %broadcast.splat1152
  %187 = add <4 x i32> %186, <i32 1, i32 1, i32 1, i32 1>
  %188 = urem <4 x i32> %187, <i32 80, i32 80, i32 80, i32 80>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %191 = shl i64 %index1143, 3
  %192 = add i64 %191, %184
  %193 = getelementptr i8, i8* %call1, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !90, !noalias !95
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1150 = add <4 x i32> %vec.ind1149, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1144, 32
  br i1 %195, label %polly.loop_exit761, label %vector.body1141, !llvm.loop !96

polly.loop_exit761:                               ; preds = %vector.body1141
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond833.not, label %polly.loop_header753.1, label %polly.loop_header753

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv779.1 = phi i64 [ %indvars.iv.next780.1, %polly.loop_exit219.1 ], [ %indvars.iv, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %196 = shl nsw i64 %polly.indvar214.1, 5
  %197 = sub nsw i64 %98, %196
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %indvars.iv781.1 = phi i64 [ %indvars.iv.next782.1, %polly.loop_exit225.1 ], [ %indvars.iv779.1, %polly.loop_header211.1 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit225.1 ], [ 0, %polly.loop_header211.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv781.1, i64 31)
  %198 = add nsw i64 %polly.indvar220.1, %197
  %polly.loop_guard.1912 = icmp sgt i64 %198, -1
  %199 = add nuw nsw i64 %polly.indvar220.1, %98
  %200 = mul nuw nsw i64 %199, 480
  %201 = mul nuw nsw i64 %199, 640
  br i1 %polly.loop_guard.1912, label %polly.loop_header223.us.1, label %polly.loop_exit225.1

polly.loop_header223.us.1:                        ; preds = %polly.loop_header217.1, %polly.loop_exit231.loopexit.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.loop_exit231.loopexit.us.1 ], [ 0, %polly.loop_header217.1 ]
  %202 = shl i64 %polly.indvar226.us.1, 3
  %203 = add i64 %202, 128
  %204 = add nuw nsw i64 %203, %200
  %scevgep238.us.1 = getelementptr i8, i8* %call2, i64 %204
  %scevgep238239.us.1 = bitcast i8* %scevgep238.us.1 to double*
  %_p_scalar_240.us.1 = load double, double* %scevgep238239.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us.1 = getelementptr i8, i8* %call1, i64 %204
  %scevgep244245.us.1 = bitcast i8* %scevgep244.us.1 to double*
  %_p_scalar_246.us.1 = load double, double* %scevgep244245.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us.1

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1, %polly.loop_header223.us.1
  %polly.indvar232.us.1 = phi i64 [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ], [ 0, %polly.loop_header223.us.1 ]
  %205 = add nuw nsw i64 %polly.indvar232.us.1, %196
  %206 = mul nuw nsw i64 %205, 480
  %207 = add nuw nsw i64 %206, %203
  %scevgep235.us.1 = getelementptr i8, i8* %call1, i64 %207
  %scevgep235236.us.1 = bitcast i8* %scevgep235.us.1 to double*
  %_p_scalar_237.us.1 = load double, double* %scevgep235236.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_240.us.1, %_p_scalar_237.us.1
  %scevgep241.us.1 = getelementptr i8, i8* %call2, i64 %207
  %scevgep241242.us.1 = bitcast i8* %scevgep241.us.1 to double*
  %_p_scalar_243.us.1 = load double, double* %scevgep241242.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_246.us.1, %_p_scalar_243.us.1
  %208 = shl i64 %205, 3
  %209 = add nuw nsw i64 %208, %201
  %scevgep247.us.1 = getelementptr i8, i8* %call, i64 %209
  %scevgep247248.us.1 = bitcast i8* %scevgep247.us.1 to double*
  %_p_scalar_249.us.1 = load double, double* %scevgep247248.us.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_249.us.1
  store double %p_add42.i118.us.1, double* %scevgep247248.us.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next233.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar232.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit231.loopexit.us.1, label %polly.loop_header229.us.1

polly.loop_exit231.loopexit.us.1:                 ; preds = %polly.loop_header229.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond786.1.not = icmp eq i64 %polly.indvar_next227.us.1, 16
  br i1 %exitcond786.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.us.1

polly.loop_exit225.1:                             ; preds = %polly.loop_exit231.loopexit.us.1, %polly.loop_header217.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %indvars.iv.next782.1 = add nsw i64 %indvars.iv781.1, 1
  %exitcond787.1.not = icmp eq i64 %polly.indvar_next221.1, 8
  br i1 %exitcond787.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next780.1 = add nsw i64 %indvars.iv779.1, -32
  %exitcond788.1.not = icmp eq i64 %polly.indvar214.1, %97
  br i1 %exitcond788.1.not, label %polly.loop_header211.2, label %polly.loop_header211.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit219.2
  %indvars.iv779.2 = phi i64 [ %indvars.iv.next780.2, %polly.loop_exit219.2 ], [ %indvars.iv, %polly.loop_exit219.1 ]
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit219.1 ]
  %210 = shl nsw i64 %polly.indvar214.2, 5
  %211 = sub nsw i64 %98, %210
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.2, %polly.loop_header211.2
  %indvars.iv781.2 = phi i64 [ %indvars.iv.next782.2, %polly.loop_exit225.2 ], [ %indvars.iv779.2, %polly.loop_header211.2 ]
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_exit225.2 ], [ 0, %polly.loop_header211.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv781.2, i64 31)
  %212 = add nsw i64 %polly.indvar220.2, %211
  %polly.loop_guard.2913 = icmp sgt i64 %212, -1
  %213 = add nuw nsw i64 %polly.indvar220.2, %98
  %214 = mul nuw nsw i64 %213, 480
  %215 = mul nuw nsw i64 %213, 640
  br i1 %polly.loop_guard.2913, label %polly.loop_header223.us.2, label %polly.loop_exit225.2

polly.loop_header223.us.2:                        ; preds = %polly.loop_header217.2, %polly.loop_exit231.loopexit.us.2
  %polly.indvar226.us.2 = phi i64 [ %polly.indvar_next227.us.2, %polly.loop_exit231.loopexit.us.2 ], [ 0, %polly.loop_header217.2 ]
  %216 = shl i64 %polly.indvar226.us.2, 3
  %217 = add i64 %216, 256
  %218 = add nuw nsw i64 %217, %214
  %scevgep238.us.2 = getelementptr i8, i8* %call2, i64 %218
  %scevgep238239.us.2 = bitcast i8* %scevgep238.us.2 to double*
  %_p_scalar_240.us.2 = load double, double* %scevgep238239.us.2, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us.2 = getelementptr i8, i8* %call1, i64 %218
  %scevgep244245.us.2 = bitcast i8* %scevgep244.us.2 to double*
  %_p_scalar_246.us.2 = load double, double* %scevgep244245.us.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us.2

polly.loop_header229.us.2:                        ; preds = %polly.loop_header229.us.2, %polly.loop_header223.us.2
  %polly.indvar232.us.2 = phi i64 [ %polly.indvar_next233.us.2, %polly.loop_header229.us.2 ], [ 0, %polly.loop_header223.us.2 ]
  %219 = add nuw nsw i64 %polly.indvar232.us.2, %210
  %220 = mul nuw nsw i64 %219, 480
  %221 = add nuw nsw i64 %220, %217
  %scevgep235.us.2 = getelementptr i8, i8* %call1, i64 %221
  %scevgep235236.us.2 = bitcast i8* %scevgep235.us.2 to double*
  %_p_scalar_237.us.2 = load double, double* %scevgep235236.us.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_240.us.2, %_p_scalar_237.us.2
  %scevgep241.us.2 = getelementptr i8, i8* %call2, i64 %221
  %scevgep241242.us.2 = bitcast i8* %scevgep241.us.2 to double*
  %_p_scalar_243.us.2 = load double, double* %scevgep241242.us.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_246.us.2, %_p_scalar_243.us.2
  %222 = shl i64 %219, 3
  %223 = add nuw nsw i64 %222, %215
  %scevgep247.us.2 = getelementptr i8, i8* %call, i64 %223
  %scevgep247248.us.2 = bitcast i8* %scevgep247.us.2 to double*
  %_p_scalar_249.us.2 = load double, double* %scevgep247248.us.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_249.us.2
  store double %p_add42.i118.us.2, double* %scevgep247248.us.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next233.us.2 = add nuw nsw i64 %polly.indvar232.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar232.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit231.loopexit.us.2, label %polly.loop_header229.us.2

polly.loop_exit231.loopexit.us.2:                 ; preds = %polly.loop_header229.us.2
  %polly.indvar_next227.us.2 = add nuw nsw i64 %polly.indvar226.us.2, 1
  %exitcond786.2.not = icmp eq i64 %polly.indvar_next227.us.2, 16
  br i1 %exitcond786.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.us.2

polly.loop_exit225.2:                             ; preds = %polly.loop_exit231.loopexit.us.2, %polly.loop_header217.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %indvars.iv.next782.2 = add nsw i64 %indvars.iv781.2, 1
  %exitcond787.2.not = icmp eq i64 %polly.indvar_next221.2, 8
  br i1 %exitcond787.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %indvars.iv.next780.2 = add nsw i64 %indvars.iv779.2, -32
  %exitcond788.2.not = icmp eq i64 %polly.indvar214.2, %97
  br i1 %exitcond788.2.not, label %polly.loop_header211.3, label %polly.loop_header211.2

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.2, %polly.loop_exit219.3
  %indvars.iv779.3 = phi i64 [ %indvars.iv.next780.3, %polly.loop_exit219.3 ], [ %indvars.iv, %polly.loop_exit219.2 ]
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit219.3 ], [ 0, %polly.loop_exit219.2 ]
  %224 = shl nsw i64 %polly.indvar214.3, 5
  %225 = sub nsw i64 %98, %224
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_exit225.3, %polly.loop_header211.3
  %indvars.iv781.3 = phi i64 [ %indvars.iv.next782.3, %polly.loop_exit225.3 ], [ %indvars.iv779.3, %polly.loop_header211.3 ]
  %polly.indvar220.3 = phi i64 [ %polly.indvar_next221.3, %polly.loop_exit225.3 ], [ 0, %polly.loop_header211.3 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv781.3, i64 31)
  %226 = add nsw i64 %polly.indvar220.3, %225
  %polly.loop_guard.3914 = icmp sgt i64 %226, -1
  %227 = add nuw nsw i64 %polly.indvar220.3, %98
  %228 = mul nuw nsw i64 %227, 480
  %229 = mul nuw nsw i64 %227, 640
  br i1 %polly.loop_guard.3914, label %polly.loop_header223.us.3, label %polly.loop_exit225.3

polly.loop_header223.us.3:                        ; preds = %polly.loop_header217.3, %polly.loop_exit231.loopexit.us.3
  %polly.indvar226.us.3 = phi i64 [ %polly.indvar_next227.us.3, %polly.loop_exit231.loopexit.us.3 ], [ 0, %polly.loop_header217.3 ]
  %230 = shl i64 %polly.indvar226.us.3, 3
  %231 = add i64 %230, 384
  %232 = add nuw nsw i64 %231, %228
  %scevgep238.us.3 = getelementptr i8, i8* %call2, i64 %232
  %scevgep238239.us.3 = bitcast i8* %scevgep238.us.3 to double*
  %_p_scalar_240.us.3 = load double, double* %scevgep238239.us.3, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us.3 = getelementptr i8, i8* %call1, i64 %232
  %scevgep244245.us.3 = bitcast i8* %scevgep244.us.3 to double*
  %_p_scalar_246.us.3 = load double, double* %scevgep244245.us.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us.3

polly.loop_header229.us.3:                        ; preds = %polly.loop_header229.us.3, %polly.loop_header223.us.3
  %polly.indvar232.us.3 = phi i64 [ %polly.indvar_next233.us.3, %polly.loop_header229.us.3 ], [ 0, %polly.loop_header223.us.3 ]
  %233 = add nuw nsw i64 %polly.indvar232.us.3, %224
  %234 = mul nuw nsw i64 %233, 480
  %235 = add nuw nsw i64 %234, %231
  %scevgep235.us.3 = getelementptr i8, i8* %call1, i64 %235
  %scevgep235236.us.3 = bitcast i8* %scevgep235.us.3 to double*
  %_p_scalar_237.us.3 = load double, double* %scevgep235236.us.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_240.us.3, %_p_scalar_237.us.3
  %scevgep241.us.3 = getelementptr i8, i8* %call2, i64 %235
  %scevgep241242.us.3 = bitcast i8* %scevgep241.us.3 to double*
  %_p_scalar_243.us.3 = load double, double* %scevgep241242.us.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_246.us.3, %_p_scalar_243.us.3
  %236 = shl i64 %233, 3
  %237 = add nuw nsw i64 %236, %229
  %scevgep247.us.3 = getelementptr i8, i8* %call, i64 %237
  %scevgep247248.us.3 = bitcast i8* %scevgep247.us.3 to double*
  %_p_scalar_249.us.3 = load double, double* %scevgep247248.us.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_249.us.3
  store double %p_add42.i118.us.3, double* %scevgep247248.us.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next233.us.3 = add nuw nsw i64 %polly.indvar232.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar232.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit231.loopexit.us.3, label %polly.loop_header229.us.3

polly.loop_exit231.loopexit.us.3:                 ; preds = %polly.loop_header229.us.3
  %polly.indvar_next227.us.3 = add nuw nsw i64 %polly.indvar226.us.3, 1
  %exitcond786.3.not = icmp eq i64 %polly.indvar_next227.us.3, 12
  br i1 %exitcond786.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.us.3

polly.loop_exit225.3:                             ; preds = %polly.loop_exit231.loopexit.us.3, %polly.loop_header217.3
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %indvars.iv.next782.3 = add nsw i64 %indvars.iv781.3, 1
  %exitcond787.3.not = icmp eq i64 %polly.indvar_next221.3, 8
  br i1 %exitcond787.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %indvars.iv.next780.3 = add nsw i64 %indvars.iv779.3, -32
  %exitcond788.3.not = icmp eq i64 %polly.indvar214.3, %97
  br i1 %exitcond788.3.not, label %polly.loop_exit213.3, label %polly.loop_header211.3

polly.loop_exit213.3:                             ; preds = %polly.loop_exit219.3
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond790.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond790.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header365.1:                           ; preds = %polly.loop_exit373, %polly.loop_exit373.1
  %indvars.iv795.1 = phi i64 [ %indvars.iv.next796.1, %polly.loop_exit373.1 ], [ %indvars.iv793, %polly.loop_exit373 ]
  %polly.indvar368.1 = phi i64 [ %polly.indvar_next369.1, %polly.loop_exit373.1 ], [ 0, %polly.loop_exit373 ]
  %238 = shl nsw i64 %polly.indvar368.1, 5
  %239 = sub nsw i64 %122, %238
  br label %polly.loop_header371.1

polly.loop_header371.1:                           ; preds = %polly.loop_exit379.1, %polly.loop_header365.1
  %indvars.iv797.1 = phi i64 [ %indvars.iv.next798.1, %polly.loop_exit379.1 ], [ %indvars.iv795.1, %polly.loop_header365.1 ]
  %polly.indvar374.1 = phi i64 [ %polly.indvar_next375.1, %polly.loop_exit379.1 ], [ 0, %polly.loop_header365.1 ]
  %smin799.1 = call i64 @llvm.smin.i64(i64 %indvars.iv797.1, i64 31)
  %240 = add nsw i64 %polly.indvar374.1, %239
  %polly.loop_guard387.1916 = icmp sgt i64 %240, -1
  %241 = add nuw nsw i64 %polly.indvar374.1, %122
  %242 = mul nuw nsw i64 %241, 480
  %243 = mul nuw nsw i64 %241, 640
  br i1 %polly.loop_guard387.1916, label %polly.loop_header377.us.1, label %polly.loop_exit379.1

polly.loop_header377.us.1:                        ; preds = %polly.loop_header371.1, %polly.loop_exit386.loopexit.us.1
  %polly.indvar380.us.1 = phi i64 [ %polly.indvar_next381.us.1, %polly.loop_exit386.loopexit.us.1 ], [ 0, %polly.loop_header371.1 ]
  %244 = shl i64 %polly.indvar380.us.1, 3
  %245 = add i64 %244, 128
  %246 = add nuw nsw i64 %245, %242
  %scevgep394.us.1 = getelementptr i8, i8* %call2, i64 %246
  %scevgep394395.us.1 = bitcast i8* %scevgep394.us.1 to double*
  %_p_scalar_396.us.1 = load double, double* %scevgep394395.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us.1 = getelementptr i8, i8* %call1, i64 %246
  %scevgep400401.us.1 = bitcast i8* %scevgep400.us.1 to double*
  %_p_scalar_402.us.1 = load double, double* %scevgep400401.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us.1

polly.loop_header384.us.1:                        ; preds = %polly.loop_header384.us.1, %polly.loop_header377.us.1
  %polly.indvar388.us.1 = phi i64 [ %polly.indvar_next389.us.1, %polly.loop_header384.us.1 ], [ 0, %polly.loop_header377.us.1 ]
  %247 = add nuw nsw i64 %polly.indvar388.us.1, %238
  %248 = mul nuw nsw i64 %247, 480
  %249 = add nuw nsw i64 %248, %245
  %scevgep391.us.1 = getelementptr i8, i8* %call1, i64 %249
  %scevgep391392.us.1 = bitcast i8* %scevgep391.us.1 to double*
  %_p_scalar_393.us.1 = load double, double* %scevgep391392.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_396.us.1, %_p_scalar_393.us.1
  %scevgep397.us.1 = getelementptr i8, i8* %call2, i64 %249
  %scevgep397398.us.1 = bitcast i8* %scevgep397.us.1 to double*
  %_p_scalar_399.us.1 = load double, double* %scevgep397398.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_402.us.1, %_p_scalar_399.us.1
  %250 = shl i64 %247, 3
  %251 = add nuw nsw i64 %250, %243
  %scevgep403.us.1 = getelementptr i8, i8* %call, i64 %251
  %scevgep403404.us.1 = bitcast i8* %scevgep403.us.1 to double*
  %_p_scalar_405.us.1 = load double, double* %scevgep403404.us.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_405.us.1
  store double %p_add42.i79.us.1, double* %scevgep403404.us.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us.1 = add nuw nsw i64 %polly.indvar388.us.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar388.us.1, %smin799.1
  br i1 %exitcond800.1.not, label %polly.loop_exit386.loopexit.us.1, label %polly.loop_header384.us.1

polly.loop_exit386.loopexit.us.1:                 ; preds = %polly.loop_header384.us.1
  %polly.indvar_next381.us.1 = add nuw nsw i64 %polly.indvar380.us.1, 1
  %exitcond804.1.not = icmp eq i64 %polly.indvar_next381.us.1, 16
  br i1 %exitcond804.1.not, label %polly.loop_exit379.1, label %polly.loop_header377.us.1

polly.loop_exit379.1:                             ; preds = %polly.loop_exit386.loopexit.us.1, %polly.loop_header371.1
  %polly.indvar_next375.1 = add nuw nsw i64 %polly.indvar374.1, 1
  %indvars.iv.next798.1 = add nsw i64 %indvars.iv797.1, 1
  %exitcond805.1.not = icmp eq i64 %polly.indvar_next375.1, 8
  br i1 %exitcond805.1.not, label %polly.loop_exit373.1, label %polly.loop_header371.1

polly.loop_exit373.1:                             ; preds = %polly.loop_exit379.1
  %polly.indvar_next369.1 = add nuw nsw i64 %polly.indvar368.1, 1
  %indvars.iv.next796.1 = add nsw i64 %indvars.iv795.1, -32
  %exitcond806.1.not = icmp eq i64 %polly.indvar368.1, %121
  br i1 %exitcond806.1.not, label %polly.loop_header365.2, label %polly.loop_header365.1

polly.loop_header365.2:                           ; preds = %polly.loop_exit373.1, %polly.loop_exit373.2
  %indvars.iv795.2 = phi i64 [ %indvars.iv.next796.2, %polly.loop_exit373.2 ], [ %indvars.iv793, %polly.loop_exit373.1 ]
  %polly.indvar368.2 = phi i64 [ %polly.indvar_next369.2, %polly.loop_exit373.2 ], [ 0, %polly.loop_exit373.1 ]
  %252 = shl nsw i64 %polly.indvar368.2, 5
  %253 = sub nsw i64 %122, %252
  br label %polly.loop_header371.2

polly.loop_header371.2:                           ; preds = %polly.loop_exit379.2, %polly.loop_header365.2
  %indvars.iv797.2 = phi i64 [ %indvars.iv.next798.2, %polly.loop_exit379.2 ], [ %indvars.iv795.2, %polly.loop_header365.2 ]
  %polly.indvar374.2 = phi i64 [ %polly.indvar_next375.2, %polly.loop_exit379.2 ], [ 0, %polly.loop_header365.2 ]
  %smin799.2 = call i64 @llvm.smin.i64(i64 %indvars.iv797.2, i64 31)
  %254 = add nsw i64 %polly.indvar374.2, %253
  %polly.loop_guard387.2917 = icmp sgt i64 %254, -1
  %255 = add nuw nsw i64 %polly.indvar374.2, %122
  %256 = mul nuw nsw i64 %255, 480
  %257 = mul nuw nsw i64 %255, 640
  br i1 %polly.loop_guard387.2917, label %polly.loop_header377.us.2, label %polly.loop_exit379.2

polly.loop_header377.us.2:                        ; preds = %polly.loop_header371.2, %polly.loop_exit386.loopexit.us.2
  %polly.indvar380.us.2 = phi i64 [ %polly.indvar_next381.us.2, %polly.loop_exit386.loopexit.us.2 ], [ 0, %polly.loop_header371.2 ]
  %258 = shl i64 %polly.indvar380.us.2, 3
  %259 = add i64 %258, 256
  %260 = add nuw nsw i64 %259, %256
  %scevgep394.us.2 = getelementptr i8, i8* %call2, i64 %260
  %scevgep394395.us.2 = bitcast i8* %scevgep394.us.2 to double*
  %_p_scalar_396.us.2 = load double, double* %scevgep394395.us.2, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us.2 = getelementptr i8, i8* %call1, i64 %260
  %scevgep400401.us.2 = bitcast i8* %scevgep400.us.2 to double*
  %_p_scalar_402.us.2 = load double, double* %scevgep400401.us.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us.2

polly.loop_header384.us.2:                        ; preds = %polly.loop_header384.us.2, %polly.loop_header377.us.2
  %polly.indvar388.us.2 = phi i64 [ %polly.indvar_next389.us.2, %polly.loop_header384.us.2 ], [ 0, %polly.loop_header377.us.2 ]
  %261 = add nuw nsw i64 %polly.indvar388.us.2, %252
  %262 = mul nuw nsw i64 %261, 480
  %263 = add nuw nsw i64 %262, %259
  %scevgep391.us.2 = getelementptr i8, i8* %call1, i64 %263
  %scevgep391392.us.2 = bitcast i8* %scevgep391.us.2 to double*
  %_p_scalar_393.us.2 = load double, double* %scevgep391392.us.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_396.us.2, %_p_scalar_393.us.2
  %scevgep397.us.2 = getelementptr i8, i8* %call2, i64 %263
  %scevgep397398.us.2 = bitcast i8* %scevgep397.us.2 to double*
  %_p_scalar_399.us.2 = load double, double* %scevgep397398.us.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_402.us.2, %_p_scalar_399.us.2
  %264 = shl i64 %261, 3
  %265 = add nuw nsw i64 %264, %257
  %scevgep403.us.2 = getelementptr i8, i8* %call, i64 %265
  %scevgep403404.us.2 = bitcast i8* %scevgep403.us.2 to double*
  %_p_scalar_405.us.2 = load double, double* %scevgep403404.us.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_405.us.2
  store double %p_add42.i79.us.2, double* %scevgep403404.us.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us.2 = add nuw nsw i64 %polly.indvar388.us.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar388.us.2, %smin799.2
  br i1 %exitcond800.2.not, label %polly.loop_exit386.loopexit.us.2, label %polly.loop_header384.us.2

polly.loop_exit386.loopexit.us.2:                 ; preds = %polly.loop_header384.us.2
  %polly.indvar_next381.us.2 = add nuw nsw i64 %polly.indvar380.us.2, 1
  %exitcond804.2.not = icmp eq i64 %polly.indvar_next381.us.2, 16
  br i1 %exitcond804.2.not, label %polly.loop_exit379.2, label %polly.loop_header377.us.2

polly.loop_exit379.2:                             ; preds = %polly.loop_exit386.loopexit.us.2, %polly.loop_header371.2
  %polly.indvar_next375.2 = add nuw nsw i64 %polly.indvar374.2, 1
  %indvars.iv.next798.2 = add nsw i64 %indvars.iv797.2, 1
  %exitcond805.2.not = icmp eq i64 %polly.indvar_next375.2, 8
  br i1 %exitcond805.2.not, label %polly.loop_exit373.2, label %polly.loop_header371.2

polly.loop_exit373.2:                             ; preds = %polly.loop_exit379.2
  %polly.indvar_next369.2 = add nuw nsw i64 %polly.indvar368.2, 1
  %indvars.iv.next796.2 = add nsw i64 %indvars.iv795.2, -32
  %exitcond806.2.not = icmp eq i64 %polly.indvar368.2, %121
  br i1 %exitcond806.2.not, label %polly.loop_header365.3, label %polly.loop_header365.2

polly.loop_header365.3:                           ; preds = %polly.loop_exit373.2, %polly.loop_exit373.3
  %indvars.iv795.3 = phi i64 [ %indvars.iv.next796.3, %polly.loop_exit373.3 ], [ %indvars.iv793, %polly.loop_exit373.2 ]
  %polly.indvar368.3 = phi i64 [ %polly.indvar_next369.3, %polly.loop_exit373.3 ], [ 0, %polly.loop_exit373.2 ]
  %266 = shl nsw i64 %polly.indvar368.3, 5
  %267 = sub nsw i64 %122, %266
  br label %polly.loop_header371.3

polly.loop_header371.3:                           ; preds = %polly.loop_exit379.3, %polly.loop_header365.3
  %indvars.iv797.3 = phi i64 [ %indvars.iv.next798.3, %polly.loop_exit379.3 ], [ %indvars.iv795.3, %polly.loop_header365.3 ]
  %polly.indvar374.3 = phi i64 [ %polly.indvar_next375.3, %polly.loop_exit379.3 ], [ 0, %polly.loop_header365.3 ]
  %smin799.3 = call i64 @llvm.smin.i64(i64 %indvars.iv797.3, i64 31)
  %268 = add nsw i64 %polly.indvar374.3, %267
  %polly.loop_guard387.3918 = icmp sgt i64 %268, -1
  %269 = add nuw nsw i64 %polly.indvar374.3, %122
  %270 = mul nuw nsw i64 %269, 480
  %271 = mul nuw nsw i64 %269, 640
  br i1 %polly.loop_guard387.3918, label %polly.loop_header377.us.3, label %polly.loop_exit379.3

polly.loop_header377.us.3:                        ; preds = %polly.loop_header371.3, %polly.loop_exit386.loopexit.us.3
  %polly.indvar380.us.3 = phi i64 [ %polly.indvar_next381.us.3, %polly.loop_exit386.loopexit.us.3 ], [ 0, %polly.loop_header371.3 ]
  %272 = shl i64 %polly.indvar380.us.3, 3
  %273 = add i64 %272, 384
  %274 = add nuw nsw i64 %273, %270
  %scevgep394.us.3 = getelementptr i8, i8* %call2, i64 %274
  %scevgep394395.us.3 = bitcast i8* %scevgep394.us.3 to double*
  %_p_scalar_396.us.3 = load double, double* %scevgep394395.us.3, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us.3 = getelementptr i8, i8* %call1, i64 %274
  %scevgep400401.us.3 = bitcast i8* %scevgep400.us.3 to double*
  %_p_scalar_402.us.3 = load double, double* %scevgep400401.us.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us.3

polly.loop_header384.us.3:                        ; preds = %polly.loop_header384.us.3, %polly.loop_header377.us.3
  %polly.indvar388.us.3 = phi i64 [ %polly.indvar_next389.us.3, %polly.loop_header384.us.3 ], [ 0, %polly.loop_header377.us.3 ]
  %275 = add nuw nsw i64 %polly.indvar388.us.3, %266
  %276 = mul nuw nsw i64 %275, 480
  %277 = add nuw nsw i64 %276, %273
  %scevgep391.us.3 = getelementptr i8, i8* %call1, i64 %277
  %scevgep391392.us.3 = bitcast i8* %scevgep391.us.3 to double*
  %_p_scalar_393.us.3 = load double, double* %scevgep391392.us.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_396.us.3, %_p_scalar_393.us.3
  %scevgep397.us.3 = getelementptr i8, i8* %call2, i64 %277
  %scevgep397398.us.3 = bitcast i8* %scevgep397.us.3 to double*
  %_p_scalar_399.us.3 = load double, double* %scevgep397398.us.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_402.us.3, %_p_scalar_399.us.3
  %278 = shl i64 %275, 3
  %279 = add nuw nsw i64 %278, %271
  %scevgep403.us.3 = getelementptr i8, i8* %call, i64 %279
  %scevgep403404.us.3 = bitcast i8* %scevgep403.us.3 to double*
  %_p_scalar_405.us.3 = load double, double* %scevgep403404.us.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_405.us.3
  store double %p_add42.i79.us.3, double* %scevgep403404.us.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us.3 = add nuw nsw i64 %polly.indvar388.us.3, 1
  %exitcond800.3.not = icmp eq i64 %polly.indvar388.us.3, %smin799.3
  br i1 %exitcond800.3.not, label %polly.loop_exit386.loopexit.us.3, label %polly.loop_header384.us.3

polly.loop_exit386.loopexit.us.3:                 ; preds = %polly.loop_header384.us.3
  %polly.indvar_next381.us.3 = add nuw nsw i64 %polly.indvar380.us.3, 1
  %exitcond804.3.not = icmp eq i64 %polly.indvar_next381.us.3, 12
  br i1 %exitcond804.3.not, label %polly.loop_exit379.3, label %polly.loop_header377.us.3

polly.loop_exit379.3:                             ; preds = %polly.loop_exit386.loopexit.us.3, %polly.loop_header371.3
  %polly.indvar_next375.3 = add nuw nsw i64 %polly.indvar374.3, 1
  %indvars.iv.next798.3 = add nsw i64 %indvars.iv797.3, 1
  %exitcond805.3.not = icmp eq i64 %polly.indvar_next375.3, 8
  br i1 %exitcond805.3.not, label %polly.loop_exit373.3, label %polly.loop_header371.3

polly.loop_exit373.3:                             ; preds = %polly.loop_exit379.3
  %polly.indvar_next369.3 = add nuw nsw i64 %polly.indvar368.3, 1
  %indvars.iv.next796.3 = add nsw i64 %indvars.iv795.3, -32
  %exitcond806.3.not = icmp eq i64 %polly.indvar368.3, %121
  br i1 %exitcond806.3.not, label %polly.loop_exit367.3, label %polly.loop_header365.3

polly.loop_exit367.3:                             ; preds = %polly.loop_exit373.3
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next794 = add nuw nsw i64 %indvars.iv793, 8
  %exitcond808.not = icmp eq i64 %polly.indvar_next356, 10
  br i1 %exitcond808.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header521.1:                           ; preds = %polly.loop_exit529, %polly.loop_exit529.1
  %indvars.iv813.1 = phi i64 [ %indvars.iv.next814.1, %polly.loop_exit529.1 ], [ %indvars.iv811, %polly.loop_exit529 ]
  %polly.indvar524.1 = phi i64 [ %polly.indvar_next525.1, %polly.loop_exit529.1 ], [ 0, %polly.loop_exit529 ]
  %280 = shl nsw i64 %polly.indvar524.1, 5
  %281 = sub nsw i64 %146, %280
  br label %polly.loop_header527.1

polly.loop_header527.1:                           ; preds = %polly.loop_exit535.1, %polly.loop_header521.1
  %indvars.iv815.1 = phi i64 [ %indvars.iv.next816.1, %polly.loop_exit535.1 ], [ %indvars.iv813.1, %polly.loop_header521.1 ]
  %polly.indvar530.1 = phi i64 [ %polly.indvar_next531.1, %polly.loop_exit535.1 ], [ 0, %polly.loop_header521.1 ]
  %smin817.1 = call i64 @llvm.smin.i64(i64 %indvars.iv815.1, i64 31)
  %282 = add nsw i64 %polly.indvar530.1, %281
  %polly.loop_guard543.1920 = icmp sgt i64 %282, -1
  %283 = add nuw nsw i64 %polly.indvar530.1, %146
  %284 = mul nuw nsw i64 %283, 480
  %285 = mul nuw nsw i64 %283, 640
  br i1 %polly.loop_guard543.1920, label %polly.loop_header533.us.1, label %polly.loop_exit535.1

polly.loop_header533.us.1:                        ; preds = %polly.loop_header527.1, %polly.loop_exit542.loopexit.us.1
  %polly.indvar536.us.1 = phi i64 [ %polly.indvar_next537.us.1, %polly.loop_exit542.loopexit.us.1 ], [ 0, %polly.loop_header527.1 ]
  %286 = shl i64 %polly.indvar536.us.1, 3
  %287 = add i64 %286, 128
  %288 = add nuw nsw i64 %287, %284
  %scevgep550.us.1 = getelementptr i8, i8* %call2, i64 %288
  %scevgep550551.us.1 = bitcast i8* %scevgep550.us.1 to double*
  %_p_scalar_552.us.1 = load double, double* %scevgep550551.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us.1 = getelementptr i8, i8* %call1, i64 %288
  %scevgep556557.us.1 = bitcast i8* %scevgep556.us.1 to double*
  %_p_scalar_558.us.1 = load double, double* %scevgep556557.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us.1

polly.loop_header540.us.1:                        ; preds = %polly.loop_header540.us.1, %polly.loop_header533.us.1
  %polly.indvar544.us.1 = phi i64 [ %polly.indvar_next545.us.1, %polly.loop_header540.us.1 ], [ 0, %polly.loop_header533.us.1 ]
  %289 = add nuw nsw i64 %polly.indvar544.us.1, %280
  %290 = mul nuw nsw i64 %289, 480
  %291 = add nuw nsw i64 %290, %287
  %scevgep547.us.1 = getelementptr i8, i8* %call1, i64 %291
  %scevgep547548.us.1 = bitcast i8* %scevgep547.us.1 to double*
  %_p_scalar_549.us.1 = load double, double* %scevgep547548.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_552.us.1, %_p_scalar_549.us.1
  %scevgep553.us.1 = getelementptr i8, i8* %call2, i64 %291
  %scevgep553554.us.1 = bitcast i8* %scevgep553.us.1 to double*
  %_p_scalar_555.us.1 = load double, double* %scevgep553554.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_558.us.1, %_p_scalar_555.us.1
  %292 = shl i64 %289, 3
  %293 = add nuw nsw i64 %292, %285
  %scevgep559.us.1 = getelementptr i8, i8* %call, i64 %293
  %scevgep559560.us.1 = bitcast i8* %scevgep559.us.1 to double*
  %_p_scalar_561.us.1 = load double, double* %scevgep559560.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_561.us.1
  store double %p_add42.i.us.1, double* %scevgep559560.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us.1 = add nuw nsw i64 %polly.indvar544.us.1, 1
  %exitcond818.1.not = icmp eq i64 %polly.indvar544.us.1, %smin817.1
  br i1 %exitcond818.1.not, label %polly.loop_exit542.loopexit.us.1, label %polly.loop_header540.us.1

polly.loop_exit542.loopexit.us.1:                 ; preds = %polly.loop_header540.us.1
  %polly.indvar_next537.us.1 = add nuw nsw i64 %polly.indvar536.us.1, 1
  %exitcond822.1.not = icmp eq i64 %polly.indvar_next537.us.1, 16
  br i1 %exitcond822.1.not, label %polly.loop_exit535.1, label %polly.loop_header533.us.1

polly.loop_exit535.1:                             ; preds = %polly.loop_exit542.loopexit.us.1, %polly.loop_header527.1
  %polly.indvar_next531.1 = add nuw nsw i64 %polly.indvar530.1, 1
  %indvars.iv.next816.1 = add nsw i64 %indvars.iv815.1, 1
  %exitcond823.1.not = icmp eq i64 %polly.indvar_next531.1, 8
  br i1 %exitcond823.1.not, label %polly.loop_exit529.1, label %polly.loop_header527.1

polly.loop_exit529.1:                             ; preds = %polly.loop_exit535.1
  %polly.indvar_next525.1 = add nuw nsw i64 %polly.indvar524.1, 1
  %indvars.iv.next814.1 = add nsw i64 %indvars.iv813.1, -32
  %exitcond824.1.not = icmp eq i64 %polly.indvar524.1, %145
  br i1 %exitcond824.1.not, label %polly.loop_header521.2, label %polly.loop_header521.1

polly.loop_header521.2:                           ; preds = %polly.loop_exit529.1, %polly.loop_exit529.2
  %indvars.iv813.2 = phi i64 [ %indvars.iv.next814.2, %polly.loop_exit529.2 ], [ %indvars.iv811, %polly.loop_exit529.1 ]
  %polly.indvar524.2 = phi i64 [ %polly.indvar_next525.2, %polly.loop_exit529.2 ], [ 0, %polly.loop_exit529.1 ]
  %294 = shl nsw i64 %polly.indvar524.2, 5
  %295 = sub nsw i64 %146, %294
  br label %polly.loop_header527.2

polly.loop_header527.2:                           ; preds = %polly.loop_exit535.2, %polly.loop_header521.2
  %indvars.iv815.2 = phi i64 [ %indvars.iv.next816.2, %polly.loop_exit535.2 ], [ %indvars.iv813.2, %polly.loop_header521.2 ]
  %polly.indvar530.2 = phi i64 [ %polly.indvar_next531.2, %polly.loop_exit535.2 ], [ 0, %polly.loop_header521.2 ]
  %smin817.2 = call i64 @llvm.smin.i64(i64 %indvars.iv815.2, i64 31)
  %296 = add nsw i64 %polly.indvar530.2, %295
  %polly.loop_guard543.2921 = icmp sgt i64 %296, -1
  %297 = add nuw nsw i64 %polly.indvar530.2, %146
  %298 = mul nuw nsw i64 %297, 480
  %299 = mul nuw nsw i64 %297, 640
  br i1 %polly.loop_guard543.2921, label %polly.loop_header533.us.2, label %polly.loop_exit535.2

polly.loop_header533.us.2:                        ; preds = %polly.loop_header527.2, %polly.loop_exit542.loopexit.us.2
  %polly.indvar536.us.2 = phi i64 [ %polly.indvar_next537.us.2, %polly.loop_exit542.loopexit.us.2 ], [ 0, %polly.loop_header527.2 ]
  %300 = shl i64 %polly.indvar536.us.2, 3
  %301 = add i64 %300, 256
  %302 = add nuw nsw i64 %301, %298
  %scevgep550.us.2 = getelementptr i8, i8* %call2, i64 %302
  %scevgep550551.us.2 = bitcast i8* %scevgep550.us.2 to double*
  %_p_scalar_552.us.2 = load double, double* %scevgep550551.us.2, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us.2 = getelementptr i8, i8* %call1, i64 %302
  %scevgep556557.us.2 = bitcast i8* %scevgep556.us.2 to double*
  %_p_scalar_558.us.2 = load double, double* %scevgep556557.us.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us.2

polly.loop_header540.us.2:                        ; preds = %polly.loop_header540.us.2, %polly.loop_header533.us.2
  %polly.indvar544.us.2 = phi i64 [ %polly.indvar_next545.us.2, %polly.loop_header540.us.2 ], [ 0, %polly.loop_header533.us.2 ]
  %303 = add nuw nsw i64 %polly.indvar544.us.2, %294
  %304 = mul nuw nsw i64 %303, 480
  %305 = add nuw nsw i64 %304, %301
  %scevgep547.us.2 = getelementptr i8, i8* %call1, i64 %305
  %scevgep547548.us.2 = bitcast i8* %scevgep547.us.2 to double*
  %_p_scalar_549.us.2 = load double, double* %scevgep547548.us.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_552.us.2, %_p_scalar_549.us.2
  %scevgep553.us.2 = getelementptr i8, i8* %call2, i64 %305
  %scevgep553554.us.2 = bitcast i8* %scevgep553.us.2 to double*
  %_p_scalar_555.us.2 = load double, double* %scevgep553554.us.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_558.us.2, %_p_scalar_555.us.2
  %306 = shl i64 %303, 3
  %307 = add nuw nsw i64 %306, %299
  %scevgep559.us.2 = getelementptr i8, i8* %call, i64 %307
  %scevgep559560.us.2 = bitcast i8* %scevgep559.us.2 to double*
  %_p_scalar_561.us.2 = load double, double* %scevgep559560.us.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_561.us.2
  store double %p_add42.i.us.2, double* %scevgep559560.us.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us.2 = add nuw nsw i64 %polly.indvar544.us.2, 1
  %exitcond818.2.not = icmp eq i64 %polly.indvar544.us.2, %smin817.2
  br i1 %exitcond818.2.not, label %polly.loop_exit542.loopexit.us.2, label %polly.loop_header540.us.2

polly.loop_exit542.loopexit.us.2:                 ; preds = %polly.loop_header540.us.2
  %polly.indvar_next537.us.2 = add nuw nsw i64 %polly.indvar536.us.2, 1
  %exitcond822.2.not = icmp eq i64 %polly.indvar_next537.us.2, 16
  br i1 %exitcond822.2.not, label %polly.loop_exit535.2, label %polly.loop_header533.us.2

polly.loop_exit535.2:                             ; preds = %polly.loop_exit542.loopexit.us.2, %polly.loop_header527.2
  %polly.indvar_next531.2 = add nuw nsw i64 %polly.indvar530.2, 1
  %indvars.iv.next816.2 = add nsw i64 %indvars.iv815.2, 1
  %exitcond823.2.not = icmp eq i64 %polly.indvar_next531.2, 8
  br i1 %exitcond823.2.not, label %polly.loop_exit529.2, label %polly.loop_header527.2

polly.loop_exit529.2:                             ; preds = %polly.loop_exit535.2
  %polly.indvar_next525.2 = add nuw nsw i64 %polly.indvar524.2, 1
  %indvars.iv.next814.2 = add nsw i64 %indvars.iv813.2, -32
  %exitcond824.2.not = icmp eq i64 %polly.indvar524.2, %145
  br i1 %exitcond824.2.not, label %polly.loop_header521.3, label %polly.loop_header521.2

polly.loop_header521.3:                           ; preds = %polly.loop_exit529.2, %polly.loop_exit529.3
  %indvars.iv813.3 = phi i64 [ %indvars.iv.next814.3, %polly.loop_exit529.3 ], [ %indvars.iv811, %polly.loop_exit529.2 ]
  %polly.indvar524.3 = phi i64 [ %polly.indvar_next525.3, %polly.loop_exit529.3 ], [ 0, %polly.loop_exit529.2 ]
  %308 = shl nsw i64 %polly.indvar524.3, 5
  %309 = sub nsw i64 %146, %308
  br label %polly.loop_header527.3

polly.loop_header527.3:                           ; preds = %polly.loop_exit535.3, %polly.loop_header521.3
  %indvars.iv815.3 = phi i64 [ %indvars.iv.next816.3, %polly.loop_exit535.3 ], [ %indvars.iv813.3, %polly.loop_header521.3 ]
  %polly.indvar530.3 = phi i64 [ %polly.indvar_next531.3, %polly.loop_exit535.3 ], [ 0, %polly.loop_header521.3 ]
  %smin817.3 = call i64 @llvm.smin.i64(i64 %indvars.iv815.3, i64 31)
  %310 = add nsw i64 %polly.indvar530.3, %309
  %polly.loop_guard543.3922 = icmp sgt i64 %310, -1
  %311 = add nuw nsw i64 %polly.indvar530.3, %146
  %312 = mul nuw nsw i64 %311, 480
  %313 = mul nuw nsw i64 %311, 640
  br i1 %polly.loop_guard543.3922, label %polly.loop_header533.us.3, label %polly.loop_exit535.3

polly.loop_header533.us.3:                        ; preds = %polly.loop_header527.3, %polly.loop_exit542.loopexit.us.3
  %polly.indvar536.us.3 = phi i64 [ %polly.indvar_next537.us.3, %polly.loop_exit542.loopexit.us.3 ], [ 0, %polly.loop_header527.3 ]
  %314 = shl i64 %polly.indvar536.us.3, 3
  %315 = add i64 %314, 384
  %316 = add nuw nsw i64 %315, %312
  %scevgep550.us.3 = getelementptr i8, i8* %call2, i64 %316
  %scevgep550551.us.3 = bitcast i8* %scevgep550.us.3 to double*
  %_p_scalar_552.us.3 = load double, double* %scevgep550551.us.3, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us.3 = getelementptr i8, i8* %call1, i64 %316
  %scevgep556557.us.3 = bitcast i8* %scevgep556.us.3 to double*
  %_p_scalar_558.us.3 = load double, double* %scevgep556557.us.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us.3

polly.loop_header540.us.3:                        ; preds = %polly.loop_header540.us.3, %polly.loop_header533.us.3
  %polly.indvar544.us.3 = phi i64 [ %polly.indvar_next545.us.3, %polly.loop_header540.us.3 ], [ 0, %polly.loop_header533.us.3 ]
  %317 = add nuw nsw i64 %polly.indvar544.us.3, %308
  %318 = mul nuw nsw i64 %317, 480
  %319 = add nuw nsw i64 %318, %315
  %scevgep547.us.3 = getelementptr i8, i8* %call1, i64 %319
  %scevgep547548.us.3 = bitcast i8* %scevgep547.us.3 to double*
  %_p_scalar_549.us.3 = load double, double* %scevgep547548.us.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_552.us.3, %_p_scalar_549.us.3
  %scevgep553.us.3 = getelementptr i8, i8* %call2, i64 %319
  %scevgep553554.us.3 = bitcast i8* %scevgep553.us.3 to double*
  %_p_scalar_555.us.3 = load double, double* %scevgep553554.us.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_558.us.3, %_p_scalar_555.us.3
  %320 = shl i64 %317, 3
  %321 = add nuw nsw i64 %320, %313
  %scevgep559.us.3 = getelementptr i8, i8* %call, i64 %321
  %scevgep559560.us.3 = bitcast i8* %scevgep559.us.3 to double*
  %_p_scalar_561.us.3 = load double, double* %scevgep559560.us.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_561.us.3
  store double %p_add42.i.us.3, double* %scevgep559560.us.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us.3 = add nuw nsw i64 %polly.indvar544.us.3, 1
  %exitcond818.3.not = icmp eq i64 %polly.indvar544.us.3, %smin817.3
  br i1 %exitcond818.3.not, label %polly.loop_exit542.loopexit.us.3, label %polly.loop_header540.us.3

polly.loop_exit542.loopexit.us.3:                 ; preds = %polly.loop_header540.us.3
  %polly.indvar_next537.us.3 = add nuw nsw i64 %polly.indvar536.us.3, 1
  %exitcond822.3.not = icmp eq i64 %polly.indvar_next537.us.3, 12
  br i1 %exitcond822.3.not, label %polly.loop_exit535.3, label %polly.loop_header533.us.3

polly.loop_exit535.3:                             ; preds = %polly.loop_exit542.loopexit.us.3, %polly.loop_header527.3
  %polly.indvar_next531.3 = add nuw nsw i64 %polly.indvar530.3, 1
  %indvars.iv.next816.3 = add nsw i64 %indvars.iv815.3, 1
  %exitcond823.3.not = icmp eq i64 %polly.indvar_next531.3, 8
  br i1 %exitcond823.3.not, label %polly.loop_exit529.3, label %polly.loop_header527.3

polly.loop_exit529.3:                             ; preds = %polly.loop_exit535.3
  %polly.indvar_next525.3 = add nuw nsw i64 %polly.indvar524.3, 1
  %indvars.iv.next814.3 = add nsw i64 %indvars.iv813.3, -32
  %exitcond824.3.not = icmp eq i64 %polly.indvar524.3, %145
  br i1 %exitcond824.3.not, label %polly.loop_exit523.3, label %polly.loop_header521.3

polly.loop_exit523.3:                             ; preds = %polly.loop_exit529.3
  %polly.indvar_next512 = add nuw nsw i64 %polly.indvar511, 1
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 8
  %exitcond826.not = icmp eq i64 %polly.indvar_next512, 10
  br i1 %exitcond826.not, label %kernel_syr2k.exit, label %polly.loop_header508

polly.loop_header753.1:                           ; preds = %polly.loop_exit761, %polly.loop_exit761.1
  %polly.indvar756.1 = phi i64 [ %polly.indvar_next757.1, %polly.loop_exit761.1 ], [ 0, %polly.loop_exit761 ]
  %322 = mul nuw nsw i64 %polly.indvar756.1, 480
  %323 = trunc i64 %polly.indvar756.1 to i32
  %broadcast.splatinsert1163 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1164 = shufflevector <4 x i32> %broadcast.splatinsert1163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %polly.loop_header753.1
  %index1157 = phi i64 [ 0, %polly.loop_header753.1 ], [ %index.next1158, %vector.body1155 ]
  %vec.ind1161 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1 ], [ %vec.ind.next1162, %vector.body1155 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1161, <i64 32, i64 32, i64 32, i64 32>
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1164, %325
  %327 = add <4 x i32> %326, <i32 1, i32 1, i32 1, i32 1>
  %328 = urem <4 x i32> %327, <i32 80, i32 80, i32 80, i32 80>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %322
  %334 = getelementptr i8, i8* %call1, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !90, !noalias !95
  %index.next1158 = add i64 %index1157, 4
  %vec.ind.next1162 = add <4 x i64> %vec.ind1161, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1158, 28
  br i1 %336, label %polly.loop_exit761.1, label %vector.body1155, !llvm.loop !97

polly.loop_exit761.1:                             ; preds = %vector.body1155
  %polly.indvar_next757.1 = add nuw nsw i64 %polly.indvar756.1, 1
  %exitcond833.1.not = icmp eq i64 %polly.indvar_next757.1, 32
  br i1 %exitcond833.1.not, label %polly.loop_header753.1856, label %polly.loop_header753.1

polly.loop_header753.1856:                        ; preds = %polly.loop_exit761.1, %polly.loop_exit761.1867
  %polly.indvar756.1855 = phi i64 [ %polly.indvar_next757.1865, %polly.loop_exit761.1867 ], [ 0, %polly.loop_exit761.1 ]
  %337 = add nuw nsw i64 %polly.indvar756.1855, 32
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %polly.loop_header753.1856
  %index1169 = phi i64 [ 0, %polly.loop_header753.1856 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1175 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.1856 ], [ %vec.ind.next1176, %vector.body1167 ]
  %340 = mul <4 x i32> %vec.ind1175, %broadcast.splat1178
  %341 = add <4 x i32> %340, <i32 1, i32 1, i32 1, i32 1>
  %342 = urem <4 x i32> %341, <i32 80, i32 80, i32 80, i32 80>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %345 = shl i64 %index1169, 3
  %346 = add i64 %345, %338
  %347 = getelementptr i8, i8* %call1, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %344, <4 x double>* %348, align 8, !alias.scope !90, !noalias !95
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1176 = add <4 x i32> %vec.ind1175, <i32 4, i32 4, i32 4, i32 4>
  %349 = icmp eq i64 %index.next1170, 32
  br i1 %349, label %polly.loop_exit761.1867, label %vector.body1167, !llvm.loop !98

polly.loop_exit761.1867:                          ; preds = %vector.body1167
  %polly.indvar_next757.1865 = add nuw nsw i64 %polly.indvar756.1855, 1
  %exitcond833.1866.not = icmp eq i64 %polly.indvar_next757.1865, 32
  br i1 %exitcond833.1866.not, label %polly.loop_header753.1.1, label %polly.loop_header753.1856

polly.loop_header753.1.1:                         ; preds = %polly.loop_exit761.1867, %polly.loop_exit761.1.1
  %polly.indvar756.1.1 = phi i64 [ %polly.indvar_next757.1.1, %polly.loop_exit761.1.1 ], [ 0, %polly.loop_exit761.1867 ]
  %350 = add nuw nsw i64 %polly.indvar756.1.1, 32
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1189 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1190 = shufflevector <4 x i32> %broadcast.splatinsert1189, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %polly.loop_header753.1.1
  %index1183 = phi i64 [ 0, %polly.loop_header753.1.1 ], [ %index.next1184, %vector.body1181 ]
  %vec.ind1187 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.1 ], [ %vec.ind.next1188, %vector.body1181 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1187, <i64 32, i64 32, i64 32, i64 32>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1190, %354
  %356 = add <4 x i32> %355, <i32 1, i32 1, i32 1, i32 1>
  %357 = urem <4 x i32> %356, <i32 80, i32 80, i32 80, i32 80>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add i64 %361, %351
  %363 = getelementptr i8, i8* %call1, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !90, !noalias !95
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1188 = add <4 x i64> %vec.ind1187, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1184, 28
  br i1 %365, label %polly.loop_exit761.1.1, label %vector.body1181, !llvm.loop !99

polly.loop_exit761.1.1:                           ; preds = %vector.body1181
  %polly.indvar_next757.1.1 = add nuw nsw i64 %polly.indvar756.1.1, 1
  %exitcond833.1.1.not = icmp eq i64 %polly.indvar_next757.1.1, 32
  br i1 %exitcond833.1.1.not, label %polly.loop_header753.2, label %polly.loop_header753.1.1

polly.loop_header753.2:                           ; preds = %polly.loop_exit761.1.1, %polly.loop_exit761.2
  %polly.indvar756.2 = phi i64 [ %polly.indvar_next757.2, %polly.loop_exit761.2 ], [ 0, %polly.loop_exit761.1.1 ]
  %366 = add nuw nsw i64 %polly.indvar756.2, 64
  %367 = mul nuw nsw i64 %366, 480
  %368 = trunc i64 %366 to i32
  %broadcast.splatinsert1203 = insertelement <4 x i32> poison, i32 %368, i32 0
  %broadcast.splat1204 = shufflevector <4 x i32> %broadcast.splatinsert1203, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %polly.loop_header753.2
  %index1195 = phi i64 [ 0, %polly.loop_header753.2 ], [ %index.next1196, %vector.body1193 ]
  %vec.ind1201 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.2 ], [ %vec.ind.next1202, %vector.body1193 ]
  %369 = mul <4 x i32> %vec.ind1201, %broadcast.splat1204
  %370 = add <4 x i32> %369, <i32 1, i32 1, i32 1, i32 1>
  %371 = urem <4 x i32> %370, <i32 80, i32 80, i32 80, i32 80>
  %372 = sitofp <4 x i32> %371 to <4 x double>
  %373 = fmul fast <4 x double> %372, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %374 = shl i64 %index1195, 3
  %375 = add i64 %374, %367
  %376 = getelementptr i8, i8* %call1, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %373, <4 x double>* %377, align 8, !alias.scope !90, !noalias !95
  %index.next1196 = add i64 %index1195, 4
  %vec.ind.next1202 = add <4 x i32> %vec.ind1201, <i32 4, i32 4, i32 4, i32 4>
  %378 = icmp eq i64 %index.next1196, 32
  br i1 %378, label %polly.loop_exit761.2, label %vector.body1193, !llvm.loop !100

polly.loop_exit761.2:                             ; preds = %vector.body1193
  %polly.indvar_next757.2 = add nuw nsw i64 %polly.indvar756.2, 1
  %exitcond833.2.not = icmp eq i64 %polly.indvar_next757.2, 16
  br i1 %exitcond833.2.not, label %polly.loop_header753.1.2, label %polly.loop_header753.2

polly.loop_header753.1.2:                         ; preds = %polly.loop_exit761.2, %polly.loop_exit761.1.2
  %polly.indvar756.1.2 = phi i64 [ %polly.indvar_next757.1.2, %polly.loop_exit761.1.2 ], [ 0, %polly.loop_exit761.2 ]
  %379 = add nuw nsw i64 %polly.indvar756.1.2, 64
  %380 = mul nuw nsw i64 %379, 480
  %381 = trunc i64 %379 to i32
  %broadcast.splatinsert1215 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat1216 = shufflevector <4 x i32> %broadcast.splatinsert1215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %polly.loop_header753.1.2
  %index1209 = phi i64 [ 0, %polly.loop_header753.1.2 ], [ %index.next1210, %vector.body1207 ]
  %vec.ind1213 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.2 ], [ %vec.ind.next1214, %vector.body1207 ]
  %382 = add nuw nsw <4 x i64> %vec.ind1213, <i64 32, i64 32, i64 32, i64 32>
  %383 = trunc <4 x i64> %382 to <4 x i32>
  %384 = mul <4 x i32> %broadcast.splat1216, %383
  %385 = add <4 x i32> %384, <i32 1, i32 1, i32 1, i32 1>
  %386 = urem <4 x i32> %385, <i32 80, i32 80, i32 80, i32 80>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %389 = extractelement <4 x i64> %382, i32 0
  %390 = shl i64 %389, 3
  %391 = add i64 %390, %380
  %392 = getelementptr i8, i8* %call1, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %388, <4 x double>* %393, align 8, !alias.scope !90, !noalias !95
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1214 = add <4 x i64> %vec.ind1213, <i64 4, i64 4, i64 4, i64 4>
  %394 = icmp eq i64 %index.next1210, 28
  br i1 %394, label %polly.loop_exit761.1.2, label %vector.body1207, !llvm.loop !101

polly.loop_exit761.1.2:                           ; preds = %vector.body1207
  %polly.indvar_next757.1.2 = add nuw nsw i64 %polly.indvar756.1.2, 1
  %exitcond833.1.2.not = icmp eq i64 %polly.indvar_next757.1.2, 16
  br i1 %exitcond833.1.2.not, label %init_array.exit, label %polly.loop_header753.1.2

polly.loop_header727.1:                           ; preds = %polly.loop_exit735, %polly.loop_exit735.1
  %polly.indvar730.1 = phi i64 [ %polly.indvar_next731.1, %polly.loop_exit735.1 ], [ 0, %polly.loop_exit735 ]
  %395 = mul nuw nsw i64 %polly.indvar730.1, 480
  %396 = trunc i64 %polly.indvar730.1 to i32
  %broadcast.splatinsert1085 = insertelement <4 x i32> poison, i32 %396, i32 0
  %broadcast.splat1086 = shufflevector <4 x i32> %broadcast.splatinsert1085, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %polly.loop_header727.1
  %index1079 = phi i64 [ 0, %polly.loop_header727.1 ], [ %index.next1080, %vector.body1077 ]
  %vec.ind1083 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1 ], [ %vec.ind.next1084, %vector.body1077 ]
  %397 = add nuw nsw <4 x i64> %vec.ind1083, <i64 32, i64 32, i64 32, i64 32>
  %398 = trunc <4 x i64> %397 to <4 x i32>
  %399 = mul <4 x i32> %broadcast.splat1086, %398
  %400 = add <4 x i32> %399, <i32 2, i32 2, i32 2, i32 2>
  %401 = urem <4 x i32> %400, <i32 60, i32 60, i32 60, i32 60>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = extractelement <4 x i64> %397, i32 0
  %405 = shl i64 %404, 3
  %406 = add i64 %405, %395
  %407 = getelementptr i8, i8* %call2, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %403, <4 x double>* %408, align 8, !alias.scope !91, !noalias !93
  %index.next1080 = add i64 %index1079, 4
  %vec.ind.next1084 = add <4 x i64> %vec.ind1083, <i64 4, i64 4, i64 4, i64 4>
  %409 = icmp eq i64 %index.next1080, 28
  br i1 %409, label %polly.loop_exit735.1, label %vector.body1077, !llvm.loop !102

polly.loop_exit735.1:                             ; preds = %vector.body1077
  %polly.indvar_next731.1 = add nuw nsw i64 %polly.indvar730.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar_next731.1, 32
  br i1 %exitcond839.1.not, label %polly.loop_header727.1870, label %polly.loop_header727.1

polly.loop_header727.1870:                        ; preds = %polly.loop_exit735.1, %polly.loop_exit735.1881
  %polly.indvar730.1869 = phi i64 [ %polly.indvar_next731.1879, %polly.loop_exit735.1881 ], [ 0, %polly.loop_exit735.1 ]
  %410 = add nuw nsw i64 %polly.indvar730.1869, 32
  %411 = mul nuw nsw i64 %410, 480
  %412 = trunc i64 %410 to i32
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %polly.loop_header727.1870
  %index1091 = phi i64 [ 0, %polly.loop_header727.1870 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1097 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.1870 ], [ %vec.ind.next1098, %vector.body1089 ]
  %413 = mul <4 x i32> %vec.ind1097, %broadcast.splat1100
  %414 = add <4 x i32> %413, <i32 2, i32 2, i32 2, i32 2>
  %415 = urem <4 x i32> %414, <i32 60, i32 60, i32 60, i32 60>
  %416 = sitofp <4 x i32> %415 to <4 x double>
  %417 = fmul fast <4 x double> %416, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %418 = shl i64 %index1091, 3
  %419 = add i64 %418, %411
  %420 = getelementptr i8, i8* %call2, i64 %419
  %421 = bitcast i8* %420 to <4 x double>*
  store <4 x double> %417, <4 x double>* %421, align 8, !alias.scope !91, !noalias !93
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1098 = add <4 x i32> %vec.ind1097, <i32 4, i32 4, i32 4, i32 4>
  %422 = icmp eq i64 %index.next1092, 32
  br i1 %422, label %polly.loop_exit735.1881, label %vector.body1089, !llvm.loop !103

polly.loop_exit735.1881:                          ; preds = %vector.body1089
  %polly.indvar_next731.1879 = add nuw nsw i64 %polly.indvar730.1869, 1
  %exitcond839.1880.not = icmp eq i64 %polly.indvar_next731.1879, 32
  br i1 %exitcond839.1880.not, label %polly.loop_header727.1.1, label %polly.loop_header727.1870

polly.loop_header727.1.1:                         ; preds = %polly.loop_exit735.1881, %polly.loop_exit735.1.1
  %polly.indvar730.1.1 = phi i64 [ %polly.indvar_next731.1.1, %polly.loop_exit735.1.1 ], [ 0, %polly.loop_exit735.1881 ]
  %423 = add nuw nsw i64 %polly.indvar730.1.1, 32
  %424 = mul nuw nsw i64 %423, 480
  %425 = trunc i64 %423 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %425, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %polly.loop_header727.1.1
  %index1105 = phi i64 [ 0, %polly.loop_header727.1.1 ], [ %index.next1106, %vector.body1103 ]
  %vec.ind1109 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.1 ], [ %vec.ind.next1110, %vector.body1103 ]
  %426 = add nuw nsw <4 x i64> %vec.ind1109, <i64 32, i64 32, i64 32, i64 32>
  %427 = trunc <4 x i64> %426 to <4 x i32>
  %428 = mul <4 x i32> %broadcast.splat1112, %427
  %429 = add <4 x i32> %428, <i32 2, i32 2, i32 2, i32 2>
  %430 = urem <4 x i32> %429, <i32 60, i32 60, i32 60, i32 60>
  %431 = sitofp <4 x i32> %430 to <4 x double>
  %432 = fmul fast <4 x double> %431, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %433 = extractelement <4 x i64> %426, i32 0
  %434 = shl i64 %433, 3
  %435 = add i64 %434, %424
  %436 = getelementptr i8, i8* %call2, i64 %435
  %437 = bitcast i8* %436 to <4 x double>*
  store <4 x double> %432, <4 x double>* %437, align 8, !alias.scope !91, !noalias !93
  %index.next1106 = add i64 %index1105, 4
  %vec.ind.next1110 = add <4 x i64> %vec.ind1109, <i64 4, i64 4, i64 4, i64 4>
  %438 = icmp eq i64 %index.next1106, 28
  br i1 %438, label %polly.loop_exit735.1.1, label %vector.body1103, !llvm.loop !104

polly.loop_exit735.1.1:                           ; preds = %vector.body1103
  %polly.indvar_next731.1.1 = add nuw nsw i64 %polly.indvar730.1.1, 1
  %exitcond839.1.1.not = icmp eq i64 %polly.indvar_next731.1.1, 32
  br i1 %exitcond839.1.1.not, label %polly.loop_header727.2, label %polly.loop_header727.1.1

polly.loop_header727.2:                           ; preds = %polly.loop_exit735.1.1, %polly.loop_exit735.2
  %polly.indvar730.2 = phi i64 [ %polly.indvar_next731.2, %polly.loop_exit735.2 ], [ 0, %polly.loop_exit735.1.1 ]
  %439 = add nuw nsw i64 %polly.indvar730.2, 64
  %440 = mul nuw nsw i64 %439, 480
  %441 = trunc i64 %439 to i32
  %broadcast.splatinsert1125 = insertelement <4 x i32> poison, i32 %441, i32 0
  %broadcast.splat1126 = shufflevector <4 x i32> %broadcast.splatinsert1125, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header727.2
  %index1117 = phi i64 [ 0, %polly.loop_header727.2 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1123 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.2 ], [ %vec.ind.next1124, %vector.body1115 ]
  %442 = mul <4 x i32> %vec.ind1123, %broadcast.splat1126
  %443 = add <4 x i32> %442, <i32 2, i32 2, i32 2, i32 2>
  %444 = urem <4 x i32> %443, <i32 60, i32 60, i32 60, i32 60>
  %445 = sitofp <4 x i32> %444 to <4 x double>
  %446 = fmul fast <4 x double> %445, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %447 = shl i64 %index1117, 3
  %448 = add i64 %447, %440
  %449 = getelementptr i8, i8* %call2, i64 %448
  %450 = bitcast i8* %449 to <4 x double>*
  store <4 x double> %446, <4 x double>* %450, align 8, !alias.scope !91, !noalias !93
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1124 = add <4 x i32> %vec.ind1123, <i32 4, i32 4, i32 4, i32 4>
  %451 = icmp eq i64 %index.next1118, 32
  br i1 %451, label %polly.loop_exit735.2, label %vector.body1115, !llvm.loop !105

polly.loop_exit735.2:                             ; preds = %vector.body1115
  %polly.indvar_next731.2 = add nuw nsw i64 %polly.indvar730.2, 1
  %exitcond839.2.not = icmp eq i64 %polly.indvar_next731.2, 16
  br i1 %exitcond839.2.not, label %polly.loop_header727.1.2, label %polly.loop_header727.2

polly.loop_header727.1.2:                         ; preds = %polly.loop_exit735.2, %polly.loop_exit735.1.2
  %polly.indvar730.1.2 = phi i64 [ %polly.indvar_next731.1.2, %polly.loop_exit735.1.2 ], [ 0, %polly.loop_exit735.2 ]
  %452 = add nuw nsw i64 %polly.indvar730.1.2, 64
  %453 = mul nuw nsw i64 %452, 480
  %454 = trunc i64 %452 to i32
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %454, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %polly.loop_header727.1.2
  %index1131 = phi i64 [ 0, %polly.loop_header727.1.2 ], [ %index.next1132, %vector.body1129 ]
  %vec.ind1135 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.2 ], [ %vec.ind.next1136, %vector.body1129 ]
  %455 = add nuw nsw <4 x i64> %vec.ind1135, <i64 32, i64 32, i64 32, i64 32>
  %456 = trunc <4 x i64> %455 to <4 x i32>
  %457 = mul <4 x i32> %broadcast.splat1138, %456
  %458 = add <4 x i32> %457, <i32 2, i32 2, i32 2, i32 2>
  %459 = urem <4 x i32> %458, <i32 60, i32 60, i32 60, i32 60>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = extractelement <4 x i64> %455, i32 0
  %463 = shl i64 %462, 3
  %464 = add i64 %463, %453
  %465 = getelementptr i8, i8* %call2, i64 %464
  %466 = bitcast i8* %465 to <4 x double>*
  store <4 x double> %461, <4 x double>* %466, align 8, !alias.scope !91, !noalias !93
  %index.next1132 = add i64 %index1131, 4
  %vec.ind.next1136 = add <4 x i64> %vec.ind1135, <i64 4, i64 4, i64 4, i64 4>
  %467 = icmp eq i64 %index.next1132, 28
  br i1 %467, label %polly.loop_exit735.1.2, label %vector.body1129, !llvm.loop !106

polly.loop_exit735.1.2:                           ; preds = %vector.body1129
  %polly.indvar_next731.1.2 = add nuw nsw i64 %polly.indvar730.1.2, 1
  %exitcond839.1.2.not = icmp eq i64 %polly.indvar_next731.1.2, 16
  br i1 %exitcond839.1.2.not, label %polly.loop_header753, label %polly.loop_header727.1.2

polly.loop_header700.1:                           ; preds = %polly.loop_exit708, %polly.loop_exit708.1
  %polly.indvar703.1 = phi i64 [ %polly.indvar_next704.1, %polly.loop_exit708.1 ], [ 0, %polly.loop_exit708 ]
  %468 = mul nuw nsw i64 %polly.indvar703.1, 640
  %469 = trunc i64 %polly.indvar703.1 to i32
  %broadcast.splatinsert971 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat972 = shufflevector <4 x i32> %broadcast.splatinsert971, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body963

vector.body963:                                   ; preds = %vector.body963, %polly.loop_header700.1
  %index965 = phi i64 [ 0, %polly.loop_header700.1 ], [ %index.next966, %vector.body963 ]
  %vec.ind969 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1 ], [ %vec.ind.next970, %vector.body963 ]
  %470 = add nuw nsw <4 x i64> %vec.ind969, <i64 32, i64 32, i64 32, i64 32>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat972, %471
  %473 = add <4 x i32> %472, <i32 3, i32 3, i32 3, i32 3>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add nuw nsw i64 %478, %468
  %480 = getelementptr i8, i8* %call, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !87, !noalias !89
  %index.next966 = add i64 %index965, 4
  %vec.ind.next970 = add <4 x i64> %vec.ind969, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next966, 32
  br i1 %482, label %polly.loop_exit708.1, label %vector.body963, !llvm.loop !107

polly.loop_exit708.1:                             ; preds = %vector.body963
  %polly.indvar_next704.1 = add nuw nsw i64 %polly.indvar703.1, 1
  %exitcond848.1.not = icmp eq i64 %polly.indvar_next704.1, 32
  br i1 %exitcond848.1.not, label %polly.loop_header700.2, label %polly.loop_header700.1

polly.loop_header700.2:                           ; preds = %polly.loop_exit708.1, %polly.loop_exit708.2
  %polly.indvar703.2 = phi i64 [ %polly.indvar_next704.2, %polly.loop_exit708.2 ], [ 0, %polly.loop_exit708.1 ]
  %483 = mul nuw nsw i64 %polly.indvar703.2, 640
  %484 = trunc i64 %polly.indvar703.2 to i32
  %broadcast.splatinsert983 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat984 = shufflevector <4 x i32> %broadcast.splatinsert983, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %polly.loop_header700.2
  %index977 = phi i64 [ 0, %polly.loop_header700.2 ], [ %index.next978, %vector.body975 ]
  %vec.ind981 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2 ], [ %vec.ind.next982, %vector.body975 ]
  %485 = add nuw nsw <4 x i64> %vec.ind981, <i64 64, i64 64, i64 64, i64 64>
  %486 = trunc <4 x i64> %485 to <4 x i32>
  %487 = mul <4 x i32> %broadcast.splat984, %486
  %488 = add <4 x i32> %487, <i32 3, i32 3, i32 3, i32 3>
  %489 = urem <4 x i32> %488, <i32 80, i32 80, i32 80, i32 80>
  %490 = sitofp <4 x i32> %489 to <4 x double>
  %491 = fmul fast <4 x double> %490, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %492 = extractelement <4 x i64> %485, i32 0
  %493 = shl i64 %492, 3
  %494 = add nuw nsw i64 %493, %483
  %495 = getelementptr i8, i8* %call, i64 %494
  %496 = bitcast i8* %495 to <4 x double>*
  store <4 x double> %491, <4 x double>* %496, align 8, !alias.scope !87, !noalias !89
  %index.next978 = add i64 %index977, 4
  %vec.ind.next982 = add <4 x i64> %vec.ind981, <i64 4, i64 4, i64 4, i64 4>
  %497 = icmp eq i64 %index.next978, 16
  br i1 %497, label %polly.loop_exit708.2, label %vector.body975, !llvm.loop !108

polly.loop_exit708.2:                             ; preds = %vector.body975
  %polly.indvar_next704.2 = add nuw nsw i64 %polly.indvar703.2, 1
  %exitcond848.2.not = icmp eq i64 %polly.indvar_next704.2, 32
  br i1 %exitcond848.2.not, label %polly.loop_header700.1884, label %polly.loop_header700.2

polly.loop_header700.1884:                        ; preds = %polly.loop_exit708.2, %polly.loop_exit708.1895
  %polly.indvar703.1883 = phi i64 [ %polly.indvar_next704.1893, %polly.loop_exit708.1895 ], [ 0, %polly.loop_exit708.2 ]
  %498 = add nuw nsw i64 %polly.indvar703.1883, 32
  %499 = mul nuw nsw i64 %498, 640
  %500 = trunc i64 %498 to i32
  %broadcast.splatinsert997 = insertelement <4 x i32> poison, i32 %500, i32 0
  %broadcast.splat998 = shufflevector <4 x i32> %broadcast.splatinsert997, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %polly.loop_header700.1884
  %index989 = phi i64 [ 0, %polly.loop_header700.1884 ], [ %index.next990, %vector.body987 ]
  %vec.ind995 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.1884 ], [ %vec.ind.next996, %vector.body987 ]
  %501 = mul <4 x i32> %vec.ind995, %broadcast.splat998
  %502 = add <4 x i32> %501, <i32 3, i32 3, i32 3, i32 3>
  %503 = urem <4 x i32> %502, <i32 80, i32 80, i32 80, i32 80>
  %504 = sitofp <4 x i32> %503 to <4 x double>
  %505 = fmul fast <4 x double> %504, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %506 = shl i64 %index989, 3
  %507 = add nuw nsw i64 %506, %499
  %508 = getelementptr i8, i8* %call, i64 %507
  %509 = bitcast i8* %508 to <4 x double>*
  store <4 x double> %505, <4 x double>* %509, align 8, !alias.scope !87, !noalias !89
  %index.next990 = add i64 %index989, 4
  %vec.ind.next996 = add <4 x i32> %vec.ind995, <i32 4, i32 4, i32 4, i32 4>
  %510 = icmp eq i64 %index.next990, 32
  br i1 %510, label %polly.loop_exit708.1895, label %vector.body987, !llvm.loop !109

polly.loop_exit708.1895:                          ; preds = %vector.body987
  %polly.indvar_next704.1893 = add nuw nsw i64 %polly.indvar703.1883, 1
  %exitcond848.1894.not = icmp eq i64 %polly.indvar_next704.1893, 32
  br i1 %exitcond848.1894.not, label %polly.loop_header700.1.1, label %polly.loop_header700.1884

polly.loop_header700.1.1:                         ; preds = %polly.loop_exit708.1895, %polly.loop_exit708.1.1
  %polly.indvar703.1.1 = phi i64 [ %polly.indvar_next704.1.1, %polly.loop_exit708.1.1 ], [ 0, %polly.loop_exit708.1895 ]
  %511 = add nuw nsw i64 %polly.indvar703.1.1, 32
  %512 = mul nuw nsw i64 %511, 640
  %513 = trunc i64 %511 to i32
  %broadcast.splatinsert1009 = insertelement <4 x i32> poison, i32 %513, i32 0
  %broadcast.splat1010 = shufflevector <4 x i32> %broadcast.splatinsert1009, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %polly.loop_header700.1.1
  %index1003 = phi i64 [ 0, %polly.loop_header700.1.1 ], [ %index.next1004, %vector.body1001 ]
  %vec.ind1007 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.1 ], [ %vec.ind.next1008, %vector.body1001 ]
  %514 = add nuw nsw <4 x i64> %vec.ind1007, <i64 32, i64 32, i64 32, i64 32>
  %515 = trunc <4 x i64> %514 to <4 x i32>
  %516 = mul <4 x i32> %broadcast.splat1010, %515
  %517 = add <4 x i32> %516, <i32 3, i32 3, i32 3, i32 3>
  %518 = urem <4 x i32> %517, <i32 80, i32 80, i32 80, i32 80>
  %519 = sitofp <4 x i32> %518 to <4 x double>
  %520 = fmul fast <4 x double> %519, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %521 = extractelement <4 x i64> %514, i32 0
  %522 = shl i64 %521, 3
  %523 = add nuw nsw i64 %522, %512
  %524 = getelementptr i8, i8* %call, i64 %523
  %525 = bitcast i8* %524 to <4 x double>*
  store <4 x double> %520, <4 x double>* %525, align 8, !alias.scope !87, !noalias !89
  %index.next1004 = add i64 %index1003, 4
  %vec.ind.next1008 = add <4 x i64> %vec.ind1007, <i64 4, i64 4, i64 4, i64 4>
  %526 = icmp eq i64 %index.next1004, 32
  br i1 %526, label %polly.loop_exit708.1.1, label %vector.body1001, !llvm.loop !110

polly.loop_exit708.1.1:                           ; preds = %vector.body1001
  %polly.indvar_next704.1.1 = add nuw nsw i64 %polly.indvar703.1.1, 1
  %exitcond848.1.1.not = icmp eq i64 %polly.indvar_next704.1.1, 32
  br i1 %exitcond848.1.1.not, label %polly.loop_header700.2.1, label %polly.loop_header700.1.1

polly.loop_header700.2.1:                         ; preds = %polly.loop_exit708.1.1, %polly.loop_exit708.2.1
  %polly.indvar703.2.1 = phi i64 [ %polly.indvar_next704.2.1, %polly.loop_exit708.2.1 ], [ 0, %polly.loop_exit708.1.1 ]
  %527 = add nuw nsw i64 %polly.indvar703.2.1, 32
  %528 = mul nuw nsw i64 %527, 640
  %529 = trunc i64 %527 to i32
  %broadcast.splatinsert1021 = insertelement <4 x i32> poison, i32 %529, i32 0
  %broadcast.splat1022 = shufflevector <4 x i32> %broadcast.splatinsert1021, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %polly.loop_header700.2.1
  %index1015 = phi i64 [ 0, %polly.loop_header700.2.1 ], [ %index.next1016, %vector.body1013 ]
  %vec.ind1019 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.1 ], [ %vec.ind.next1020, %vector.body1013 ]
  %530 = add nuw nsw <4 x i64> %vec.ind1019, <i64 64, i64 64, i64 64, i64 64>
  %531 = trunc <4 x i64> %530 to <4 x i32>
  %532 = mul <4 x i32> %broadcast.splat1022, %531
  %533 = add <4 x i32> %532, <i32 3, i32 3, i32 3, i32 3>
  %534 = urem <4 x i32> %533, <i32 80, i32 80, i32 80, i32 80>
  %535 = sitofp <4 x i32> %534 to <4 x double>
  %536 = fmul fast <4 x double> %535, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %537 = extractelement <4 x i64> %530, i32 0
  %538 = shl i64 %537, 3
  %539 = add nuw nsw i64 %538, %528
  %540 = getelementptr i8, i8* %call, i64 %539
  %541 = bitcast i8* %540 to <4 x double>*
  store <4 x double> %536, <4 x double>* %541, align 8, !alias.scope !87, !noalias !89
  %index.next1016 = add i64 %index1015, 4
  %vec.ind.next1020 = add <4 x i64> %vec.ind1019, <i64 4, i64 4, i64 4, i64 4>
  %542 = icmp eq i64 %index.next1016, 16
  br i1 %542, label %polly.loop_exit708.2.1, label %vector.body1013, !llvm.loop !111

polly.loop_exit708.2.1:                           ; preds = %vector.body1013
  %polly.indvar_next704.2.1 = add nuw nsw i64 %polly.indvar703.2.1, 1
  %exitcond848.2.1.not = icmp eq i64 %polly.indvar_next704.2.1, 32
  br i1 %exitcond848.2.1.not, label %polly.loop_header700.2898, label %polly.loop_header700.2.1

polly.loop_header700.2898:                        ; preds = %polly.loop_exit708.2.1, %polly.loop_exit708.2909
  %polly.indvar703.2897 = phi i64 [ %polly.indvar_next704.2907, %polly.loop_exit708.2909 ], [ 0, %polly.loop_exit708.2.1 ]
  %543 = add nuw nsw i64 %polly.indvar703.2897, 64
  %544 = mul nuw nsw i64 %543, 640
  %545 = trunc i64 %543 to i32
  %broadcast.splatinsert1035 = insertelement <4 x i32> poison, i32 %545, i32 0
  %broadcast.splat1036 = shufflevector <4 x i32> %broadcast.splatinsert1035, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %polly.loop_header700.2898
  %index1027 = phi i64 [ 0, %polly.loop_header700.2898 ], [ %index.next1028, %vector.body1025 ]
  %vec.ind1033 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.2898 ], [ %vec.ind.next1034, %vector.body1025 ]
  %546 = mul <4 x i32> %vec.ind1033, %broadcast.splat1036
  %547 = add <4 x i32> %546, <i32 3, i32 3, i32 3, i32 3>
  %548 = urem <4 x i32> %547, <i32 80, i32 80, i32 80, i32 80>
  %549 = sitofp <4 x i32> %548 to <4 x double>
  %550 = fmul fast <4 x double> %549, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %551 = shl i64 %index1027, 3
  %552 = add nuw nsw i64 %551, %544
  %553 = getelementptr i8, i8* %call, i64 %552
  %554 = bitcast i8* %553 to <4 x double>*
  store <4 x double> %550, <4 x double>* %554, align 8, !alias.scope !87, !noalias !89
  %index.next1028 = add i64 %index1027, 4
  %vec.ind.next1034 = add <4 x i32> %vec.ind1033, <i32 4, i32 4, i32 4, i32 4>
  %555 = icmp eq i64 %index.next1028, 32
  br i1 %555, label %polly.loop_exit708.2909, label %vector.body1025, !llvm.loop !112

polly.loop_exit708.2909:                          ; preds = %vector.body1025
  %polly.indvar_next704.2907 = add nuw nsw i64 %polly.indvar703.2897, 1
  %exitcond848.2908.not = icmp eq i64 %polly.indvar_next704.2907, 16
  br i1 %exitcond848.2908.not, label %polly.loop_header700.1.2, label %polly.loop_header700.2898

polly.loop_header700.1.2:                         ; preds = %polly.loop_exit708.2909, %polly.loop_exit708.1.2
  %polly.indvar703.1.2 = phi i64 [ %polly.indvar_next704.1.2, %polly.loop_exit708.1.2 ], [ 0, %polly.loop_exit708.2909 ]
  %556 = add nuw nsw i64 %polly.indvar703.1.2, 64
  %557 = mul nuw nsw i64 %556, 640
  %558 = trunc i64 %556 to i32
  %broadcast.splatinsert1047 = insertelement <4 x i32> poison, i32 %558, i32 0
  %broadcast.splat1048 = shufflevector <4 x i32> %broadcast.splatinsert1047, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1039

vector.body1039:                                  ; preds = %vector.body1039, %polly.loop_header700.1.2
  %index1041 = phi i64 [ 0, %polly.loop_header700.1.2 ], [ %index.next1042, %vector.body1039 ]
  %vec.ind1045 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.2 ], [ %vec.ind.next1046, %vector.body1039 ]
  %559 = add nuw nsw <4 x i64> %vec.ind1045, <i64 32, i64 32, i64 32, i64 32>
  %560 = trunc <4 x i64> %559 to <4 x i32>
  %561 = mul <4 x i32> %broadcast.splat1048, %560
  %562 = add <4 x i32> %561, <i32 3, i32 3, i32 3, i32 3>
  %563 = urem <4 x i32> %562, <i32 80, i32 80, i32 80, i32 80>
  %564 = sitofp <4 x i32> %563 to <4 x double>
  %565 = fmul fast <4 x double> %564, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %566 = extractelement <4 x i64> %559, i32 0
  %567 = shl i64 %566, 3
  %568 = add nuw nsw i64 %567, %557
  %569 = getelementptr i8, i8* %call, i64 %568
  %570 = bitcast i8* %569 to <4 x double>*
  store <4 x double> %565, <4 x double>* %570, align 8, !alias.scope !87, !noalias !89
  %index.next1042 = add i64 %index1041, 4
  %vec.ind.next1046 = add <4 x i64> %vec.ind1045, <i64 4, i64 4, i64 4, i64 4>
  %571 = icmp eq i64 %index.next1042, 32
  br i1 %571, label %polly.loop_exit708.1.2, label %vector.body1039, !llvm.loop !113

polly.loop_exit708.1.2:                           ; preds = %vector.body1039
  %polly.indvar_next704.1.2 = add nuw nsw i64 %polly.indvar703.1.2, 1
  %exitcond848.1.2.not = icmp eq i64 %polly.indvar_next704.1.2, 16
  br i1 %exitcond848.1.2.not, label %polly.loop_header700.2.2, label %polly.loop_header700.1.2

polly.loop_header700.2.2:                         ; preds = %polly.loop_exit708.1.2, %polly.loop_exit708.2.2
  %polly.indvar703.2.2 = phi i64 [ %polly.indvar_next704.2.2, %polly.loop_exit708.2.2 ], [ 0, %polly.loop_exit708.1.2 ]
  %572 = add nuw nsw i64 %polly.indvar703.2.2, 64
  %573 = mul nuw nsw i64 %572, 640
  %574 = trunc i64 %572 to i32
  %broadcast.splatinsert1059 = insertelement <4 x i32> poison, i32 %574, i32 0
  %broadcast.splat1060 = shufflevector <4 x i32> %broadcast.splatinsert1059, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %polly.loop_header700.2.2
  %index1053 = phi i64 [ 0, %polly.loop_header700.2.2 ], [ %index.next1054, %vector.body1051 ]
  %vec.ind1057 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.2 ], [ %vec.ind.next1058, %vector.body1051 ]
  %575 = add nuw nsw <4 x i64> %vec.ind1057, <i64 64, i64 64, i64 64, i64 64>
  %576 = trunc <4 x i64> %575 to <4 x i32>
  %577 = mul <4 x i32> %broadcast.splat1060, %576
  %578 = add <4 x i32> %577, <i32 3, i32 3, i32 3, i32 3>
  %579 = urem <4 x i32> %578, <i32 80, i32 80, i32 80, i32 80>
  %580 = sitofp <4 x i32> %579 to <4 x double>
  %581 = fmul fast <4 x double> %580, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %582 = extractelement <4 x i64> %575, i32 0
  %583 = shl i64 %582, 3
  %584 = add nuw nsw i64 %583, %573
  %585 = getelementptr i8, i8* %call, i64 %584
  %586 = bitcast i8* %585 to <4 x double>*
  store <4 x double> %581, <4 x double>* %586, align 8, !alias.scope !87, !noalias !89
  %index.next1054 = add i64 %index1053, 4
  %vec.ind.next1058 = add <4 x i64> %vec.ind1057, <i64 4, i64 4, i64 4, i64 4>
  %587 = icmp eq i64 %index.next1054, 16
  br i1 %587, label %polly.loop_exit708.2.2, label %vector.body1051, !llvm.loop !114

polly.loop_exit708.2.2:                           ; preds = %vector.body1051
  %polly.indvar_next704.2.2 = add nuw nsw i64 %polly.indvar703.2.2, 1
  %exitcond848.2.2.not = icmp eq i64 %polly.indvar_next704.2.2, 16
  br i1 %exitcond848.2.2.not, label %polly.loop_header727, label %polly.loop_header700.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 32}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 16}
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
!44 = !{!"llvm.loop.tile.size", i32 8}
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
