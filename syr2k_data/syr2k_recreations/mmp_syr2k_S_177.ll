; ModuleID = 'syr2k_recreations//mmp_syr2k_S_177.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_177.c"
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
  %call748 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
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
  %scevgep932 = getelementptr i8, i8* %call2, i64 %12
  %scevgep931 = getelementptr i8, i8* %call2, i64 %11
  %scevgep930 = getelementptr i8, i8* %call1, i64 %12
  %scevgep929 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep929, %scevgep932
  %bound1 = icmp ult i8* %scevgep931, %scevgep930
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
  br i1 %exitcond18.not.i, label %vector.ph936, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph936:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert943 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat944 = shufflevector <4 x i64> %broadcast.splatinsert943, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body935

vector.body935:                                   ; preds = %vector.body935, %vector.ph936
  %index937 = phi i64 [ 0, %vector.ph936 ], [ %index.next938, %vector.body935 ]
  %vec.ind941 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph936 ], [ %vec.ind.next942, %vector.body935 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind941, %broadcast.splat944
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv7.i, i64 %index937
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next938 = add i64 %index937, 4
  %vec.ind.next942 = add <4 x i64> %vec.ind941, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next938, 80
  br i1 %40, label %for.inc41.i, label %vector.body935, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body935
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph936, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit795.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start431, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1289, label %vector.ph1218

vector.ph1218:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1218
  %index1219 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1220, %vector.body1217 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %index1219
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1220 = add i64 %index1219, 4
  %46 = icmp eq i64 %index.next1220, %n.vec
  br i1 %46, label %middle.block1215, label %vector.body1217, !llvm.loop !18

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1222 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1222, label %for.inc6.i, label %for.body3.i46.preheader1289

for.body3.i46.preheader1289:                      ; preds = %for.body3.i46.preheader, %middle.block1215
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1215 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1289, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1289 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1215, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting432
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start264, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1238 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1238, label %for.body3.i60.preheader1288, label %vector.ph1239

vector.ph1239:                                    ; preds = %for.body3.i60.preheader
  %n.vec1241 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %vector.ph1239
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1243, %vector.body1237 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %index1242
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1246 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1246, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1243 = add i64 %index1242, 4
  %57 = icmp eq i64 %index.next1243, %n.vec1241
  br i1 %57, label %middle.block1235, label %vector.body1237, !llvm.loop !60

middle.block1235:                                 ; preds = %vector.body1237
  %cmp.n1245 = icmp eq i64 %indvars.iv21.i52, %n.vec1241
  br i1 %cmp.n1245, label %for.inc6.i63, label %for.body3.i60.preheader1288

for.body3.i60.preheader1288:                      ; preds = %for.body3.i60.preheader, %middle.block1235
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1241, %middle.block1235 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1288, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1288 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1235, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting265
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1264 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1264, label %for.body3.i99.preheader1287, label %vector.ph1265

vector.ph1265:                                    ; preds = %for.body3.i99.preheader
  %n.vec1267 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1265
  %index1268 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1269, %vector.body1263 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %index1268
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1272 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1272, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1269 = add i64 %index1268, 4
  %68 = icmp eq i64 %index.next1269, %n.vec1267
  br i1 %68, label %middle.block1261, label %vector.body1263, !llvm.loop !62

middle.block1261:                                 ; preds = %vector.body1263
  %cmp.n1271 = icmp eq i64 %indvars.iv21.i91, %n.vec1267
  br i1 %cmp.n1271, label %for.inc6.i102, label %for.body3.i99.preheader1287

for.body3.i99.preheader1287:                      ; preds = %for.body3.i99.preheader, %middle.block1261
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1267, %middle.block1261 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1287, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1287 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1261, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1276 = phi i64 [ %indvar.next1277, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1276, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1278 = icmp ult i64 %88, 4
  br i1 %min.iters.check1278, label %polly.loop_header191.preheader, label %vector.ph1279

vector.ph1279:                                    ; preds = %polly.loop_header
  %n.vec1281 = and i64 %88, -4
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1275 ]
  %90 = shl nuw nsw i64 %index1282, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1286, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1283 = add i64 %index1282, 4
  %95 = icmp eq i64 %index.next1283, %n.vec1281
  br i1 %95, label %middle.block1273, label %vector.body1275, !llvm.loop !74

middle.block1273:                                 ; preds = %vector.body1275
  %cmp.n1285 = icmp eq i64 %88, %n.vec1281
  br i1 %cmp.n1285, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1273
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1281, %middle.block1273 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1273
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1277 = add i64 %indvar1276, 1
  br i1 %exitcond818.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond817.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit223 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nuw nsw i64 %polly.indvar202, 5
  br label %polly.loop_header205

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond816.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %98 = shl nuw nsw i64 %polly.indvar208, 5
  %scevgep808 = getelementptr i8, i8* %malloccall, i64 %98
  %99 = mul nuw nsw i64 %polly.indvar208, 480
  %100 = add nuw nsw i64 %97, %99
  %scevgep809 = getelementptr i8, i8* %call2, i64 %100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep808, i8* noundef nonnull align 8 dereferenceable(32) %scevgep809, i64 32, i1 false)
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond.not, label %polly.loop_header221.preheader, label %polly.loop_header205

polly.loop_header221.preheader:                   ; preds = %polly.loop_header205
  %101 = shl nsw i64 %polly.indvar202, 2
  br label %polly.loop_header221

polly.loop_header221:                             ; preds = %polly.loop_header221.preheader, %polly.loop_exit229
  %indvars.iv = phi i64 [ 1, %polly.loop_header221.preheader ], [ %indvars.iv.next, %polly.loop_exit229 ]
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header221.preheader ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %102 = shl nsw i64 %polly.indvar224, 3
  %polly.access.mul.Packed_MemRef_call2248 = shl nsw i64 %polly.indvar224, 5
  %103 = mul nsw i64 %polly.indvar224, 3840
  %104 = mul nsw i64 %polly.indvar224, 5120
  %105 = or i64 %102, 1
  %polly.access.mul.Packed_MemRef_call2248.1 = shl nsw i64 %105, 2
  %106 = mul nuw nsw i64 %105, 480
  %107 = mul nuw nsw i64 %105, 640
  %108 = or i64 %102, 2
  %polly.access.mul.Packed_MemRef_call2248.2 = shl nsw i64 %108, 2
  %109 = mul nuw nsw i64 %108, 480
  %110 = mul nuw nsw i64 %108, 640
  %111 = or i64 %102, 3
  %polly.access.mul.Packed_MemRef_call2248.3 = shl nsw i64 %111, 2
  %112 = mul nuw nsw i64 %111, 480
  %113 = mul nuw nsw i64 %111, 640
  %114 = or i64 %102, 4
  %polly.access.mul.Packed_MemRef_call2248.4 = shl nsw i64 %114, 2
  %115 = mul nuw nsw i64 %114, 480
  %116 = mul nuw nsw i64 %114, 640
  %117 = or i64 %102, 5
  %polly.access.mul.Packed_MemRef_call2248.5 = shl nsw i64 %117, 2
  %118 = mul nuw nsw i64 %117, 480
  %119 = mul nuw nsw i64 %117, 640
  %120 = or i64 %102, 6
  %polly.access.mul.Packed_MemRef_call2248.6 = shl nsw i64 %120, 2
  %121 = mul nuw nsw i64 %120, 480
  %122 = mul nuw nsw i64 %120, 640
  %123 = or i64 %102, 7
  %polly.access.mul.Packed_MemRef_call2248.7 = shl nsw i64 %123, 2
  %124 = mul nuw nsw i64 %123, 480
  %125 = mul nuw nsw i64 %123, 640
  %126 = add nuw nsw i64 %indvars.iv, 6
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit241.7
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond815.not = icmp eq i64 %polly.indvar_next225, 10
  br i1 %exitcond815.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit241.7, %polly.loop_header221
  %polly.indvar230 = phi i64 [ 0, %polly.loop_header221 ], [ %polly.indvar_next231, %polly.loop_exit241.7 ]
  %127 = add nuw nsw i64 %polly.indvar230, %101
  %128 = shl i64 %127, 3
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248, %polly.indvar230
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %129 = add nuw nsw i64 %103, %128
  %scevgep256 = getelementptr i8, i8* %call1, i64 %129
  %scevgep256257 = bitcast i8* %scevgep256 to double*
  %_p_scalar_258 = load double, double* %scevgep256257, align 8, !alias.scope !71, !noalias !77
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.1, %polly.indvar230
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %130 = add nuw nsw i64 %106, %128
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %130
  %scevgep256257.1 = bitcast i8* %scevgep256.1 to double*
  %_p_scalar_258.1 = load double, double* %scevgep256257.1, align 8, !alias.scope !71, !noalias !77
  br label %polly.loop_header239.1

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header227
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %131 = mul nuw nsw i64 %polly.indvar242, 480
  %132 = add nuw nsw i64 %131, %128
  %scevgep245 = getelementptr i8, i8* %call1, i64 %132
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.mul.Packed_MemRef_call2252 = shl nsw i64 %polly.indvar242, 2
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252, %polly.indvar230
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_258, %_p_scalar_255
  %133 = shl nuw nsw i64 %polly.indvar242, 3
  %134 = add nuw nsw i64 %133, %104
  %scevgep259 = getelementptr i8, i8* %call, i64 %134
  %scevgep259260 = bitcast i8* %scevgep259 to double*
  %_p_scalar_261 = load double, double* %scevgep259260, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_261
  store double %p_add42.i118, double* %scevgep259260, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next243, %indvars.iv
  br i1 %exitcond812.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start264:                                   ; preds = %kernel_syr2k.exit
  %malloccall266 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header350

polly.exiting265:                                 ; preds = %polly.loop_exit390
  tail call void @free(i8* nonnull %malloccall266)
  br label %kernel_syr2k.exit90

polly.loop_header350:                             ; preds = %polly.loop_exit358, %polly.start264
  %indvar1250 = phi i64 [ %indvar.next1251, %polly.loop_exit358 ], [ 0, %polly.start264 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 1, %polly.start264 ]
  %135 = add i64 %indvar1250, 1
  %136 = mul nuw nsw i64 %polly.indvar353, 640
  %scevgep362 = getelementptr i8, i8* %call, i64 %136
  %min.iters.check1252 = icmp ult i64 %135, 4
  br i1 %min.iters.check1252, label %polly.loop_header356.preheader, label %vector.ph1253

vector.ph1253:                                    ; preds = %polly.loop_header350
  %n.vec1255 = and i64 %135, -4
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1257, %vector.body1249 ]
  %137 = shl nuw nsw i64 %index1256, 3
  %138 = getelementptr i8, i8* %scevgep362, i64 %137
  %139 = bitcast i8* %138 to <4 x double>*
  %wide.load1260 = load <4 x double>, <4 x double>* %139, align 8, !alias.scope !78, !noalias !80
  %140 = fmul fast <4 x double> %wide.load1260, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %141 = bitcast i8* %138 to <4 x double>*
  store <4 x double> %140, <4 x double>* %141, align 8, !alias.scope !78, !noalias !80
  %index.next1257 = add i64 %index1256, 4
  %142 = icmp eq i64 %index.next1257, %n.vec1255
  br i1 %142, label %middle.block1247, label %vector.body1249, !llvm.loop !84

middle.block1247:                                 ; preds = %vector.body1249
  %cmp.n1259 = icmp eq i64 %135, %n.vec1255
  br i1 %cmp.n1259, label %polly.loop_exit358, label %polly.loop_header356.preheader

polly.loop_header356.preheader:                   ; preds = %polly.loop_header350, %middle.block1247
  %polly.indvar359.ph = phi i64 [ 0, %polly.loop_header350 ], [ %n.vec1255, %middle.block1247 ]
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_header356, %middle.block1247
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next354, 80
  %indvar.next1251 = add i64 %indvar1250, 1
  br i1 %exitcond833.not, label %polly.loop_header366.preheader, label %polly.loop_header350

polly.loop_header366.preheader:                   ; preds = %polly.loop_exit358
  %Packed_MemRef_call2267 = bitcast i8* %malloccall266 to double*
  br label %polly.loop_header366

polly.loop_header356:                             ; preds = %polly.loop_header356.preheader, %polly.loop_header356
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_header356 ], [ %polly.indvar359.ph, %polly.loop_header356.preheader ]
  %143 = shl nuw nsw i64 %polly.indvar359, 3
  %scevgep363 = getelementptr i8, i8* %scevgep362, i64 %143
  %scevgep363364 = bitcast i8* %scevgep363 to double*
  %_p_scalar_365 = load double, double* %scevgep363364, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_365, 1.200000e+00
  store double %p_mul.i57, double* %scevgep363364, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next360, %polly.indvar353
  br i1 %exitcond832.not, label %polly.loop_exit358, label %polly.loop_header356, !llvm.loop !85

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_exit390
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_exit390 ], [ 0, %polly.loop_header366.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar369, 5
  br label %polly.loop_header372

polly.loop_exit390:                               ; preds = %polly.loop_exit396
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next370, 15
  br i1 %exitcond831.not, label %polly.exiting265, label %polly.loop_header366

polly.loop_header372:                             ; preds = %polly.loop_header372, %polly.loop_header366
  %polly.indvar375 = phi i64 [ 0, %polly.loop_header366 ], [ %polly.indvar_next376, %polly.loop_header372 ]
  %145 = shl nuw nsw i64 %polly.indvar375, 5
  %scevgep820 = getelementptr i8, i8* %malloccall266, i64 %145
  %146 = mul nuw nsw i64 %polly.indvar375, 480
  %147 = add nuw nsw i64 %144, %146
  %scevgep821 = getelementptr i8, i8* %call2, i64 %147
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep820, i8* noundef nonnull align 8 dereferenceable(32) %scevgep821, i64 32, i1 false)
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next376, 80
  br i1 %exitcond822.not, label %polly.loop_header388.preheader, label %polly.loop_header372

polly.loop_header388.preheader:                   ; preds = %polly.loop_header372
  %148 = shl nsw i64 %polly.indvar369, 2
  br label %polly.loop_header388

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_exit396
  %indvars.iv823 = phi i64 [ 1, %polly.loop_header388.preheader ], [ %indvars.iv.next824, %polly.loop_exit396 ]
  %polly.indvar391 = phi i64 [ 0, %polly.loop_header388.preheader ], [ %polly.indvar_next392, %polly.loop_exit396 ]
  %149 = shl nsw i64 %polly.indvar391, 3
  %polly.access.mul.Packed_MemRef_call2267415 = shl nsw i64 %polly.indvar391, 5
  %150 = mul nsw i64 %polly.indvar391, 3840
  %151 = mul nsw i64 %polly.indvar391, 5120
  %152 = or i64 %149, 1
  %polly.access.mul.Packed_MemRef_call2267415.1 = shl nsw i64 %152, 2
  %153 = mul nuw nsw i64 %152, 480
  %154 = mul nuw nsw i64 %152, 640
  %155 = or i64 %149, 2
  %polly.access.mul.Packed_MemRef_call2267415.2 = shl nsw i64 %155, 2
  %156 = mul nuw nsw i64 %155, 480
  %157 = mul nuw nsw i64 %155, 640
  %158 = or i64 %149, 3
  %polly.access.mul.Packed_MemRef_call2267415.3 = shl nsw i64 %158, 2
  %159 = mul nuw nsw i64 %158, 480
  %160 = mul nuw nsw i64 %158, 640
  %161 = or i64 %149, 4
  %polly.access.mul.Packed_MemRef_call2267415.4 = shl nsw i64 %161, 2
  %162 = mul nuw nsw i64 %161, 480
  %163 = mul nuw nsw i64 %161, 640
  %164 = or i64 %149, 5
  %polly.access.mul.Packed_MemRef_call2267415.5 = shl nsw i64 %164, 2
  %165 = mul nuw nsw i64 %164, 480
  %166 = mul nuw nsw i64 %164, 640
  %167 = or i64 %149, 6
  %polly.access.mul.Packed_MemRef_call2267415.6 = shl nsw i64 %167, 2
  %168 = mul nuw nsw i64 %167, 480
  %169 = mul nuw nsw i64 %167, 640
  %170 = or i64 %149, 7
  %polly.access.mul.Packed_MemRef_call2267415.7 = shl nsw i64 %170, 2
  %171 = mul nuw nsw i64 %170, 480
  %172 = mul nuw nsw i64 %170, 640
  %173 = add nuw nsw i64 %indvars.iv823, 6
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit408.7
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next824 = add nuw nsw i64 %indvars.iv823, 8
  %exitcond830.not = icmp eq i64 %polly.indvar_next392, 10
  br i1 %exitcond830.not, label %polly.loop_exit390, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit408.7, %polly.loop_header388
  %polly.indvar397 = phi i64 [ 0, %polly.loop_header388 ], [ %polly.indvar_next398, %polly.loop_exit408.7 ]
  %174 = add nuw nsw i64 %polly.indvar397, %148
  %175 = shl i64 %174, 3
  %polly.access.add.Packed_MemRef_call2267416 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415, %polly.indvar397
  %polly.access.Packed_MemRef_call2267417 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416
  %_p_scalar_418 = load double, double* %polly.access.Packed_MemRef_call2267417, align 8
  %176 = add nuw nsw i64 %150, %175
  %scevgep423 = getelementptr i8, i8* %call1, i64 %176
  %scevgep423424 = bitcast i8* %scevgep423 to double*
  %_p_scalar_425 = load double, double* %scevgep423424, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.access.add.Packed_MemRef_call2267416.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415.1, %polly.indvar397
  %polly.access.Packed_MemRef_call2267417.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1
  %_p_scalar_418.1 = load double, double* %polly.access.Packed_MemRef_call2267417.1, align 8
  %177 = add nuw nsw i64 %153, %175
  %scevgep423.1 = getelementptr i8, i8* %call1, i64 %177
  %scevgep423424.1 = bitcast i8* %scevgep423.1 to double*
  %_p_scalar_425.1 = load double, double* %scevgep423424.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header406.1

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header394
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header394 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %178 = mul nuw nsw i64 %polly.indvar409, 480
  %179 = add nuw nsw i64 %178, %175
  %scevgep412 = getelementptr i8, i8* %call1, i64 %179
  %scevgep412413 = bitcast i8* %scevgep412 to double*
  %_p_scalar_414 = load double, double* %scevgep412413, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73 = fmul fast double %_p_scalar_418, %_p_scalar_414
  %polly.access.mul.Packed_MemRef_call2267419 = shl nsw i64 %polly.indvar409, 2
  %polly.access.add.Packed_MemRef_call2267420 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419, %polly.indvar397
  %polly.access.Packed_MemRef_call2267421 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420
  %_p_scalar_422 = load double, double* %polly.access.Packed_MemRef_call2267421, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_425, %_p_scalar_422
  %180 = shl nuw nsw i64 %polly.indvar409, 3
  %181 = add nuw nsw i64 %180, %151
  %scevgep426 = getelementptr i8, i8* %call, i64 %181
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_428
  store double %p_add42.i79, double* %scevgep426427, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next410, %indvars.iv823
  br i1 %exitcond827.not, label %polly.loop_exit408, label %polly.loop_header406

polly.start431:                                   ; preds = %init_array.exit
  %malloccall433 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header517

polly.exiting432:                                 ; preds = %polly.loop_exit557
  tail call void @free(i8* nonnull %malloccall433)
  br label %kernel_syr2k.exit

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.start431
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit525 ], [ 0, %polly.start431 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 1, %polly.start431 ]
  %182 = add i64 %indvar, 1
  %183 = mul nuw nsw i64 %polly.indvar520, 640
  %scevgep529 = getelementptr i8, i8* %call, i64 %183
  %min.iters.check1226 = icmp ult i64 %182, 4
  br i1 %min.iters.check1226, label %polly.loop_header523.preheader, label %vector.ph1227

vector.ph1227:                                    ; preds = %polly.loop_header517
  %n.vec1229 = and i64 %182, -4
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %vector.ph1227
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1231, %vector.body1225 ]
  %184 = shl nuw nsw i64 %index1230, 3
  %185 = getelementptr i8, i8* %scevgep529, i64 %184
  %186 = bitcast i8* %185 to <4 x double>*
  %wide.load1234 = load <4 x double>, <4 x double>* %186, align 8, !alias.scope !87, !noalias !89
  %187 = fmul fast <4 x double> %wide.load1234, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %188 = bitcast i8* %185 to <4 x double>*
  store <4 x double> %187, <4 x double>* %188, align 8, !alias.scope !87, !noalias !89
  %index.next1231 = add i64 %index1230, 4
  %189 = icmp eq i64 %index.next1231, %n.vec1229
  br i1 %189, label %middle.block1223, label %vector.body1225, !llvm.loop !93

middle.block1223:                                 ; preds = %vector.body1225
  %cmp.n1233 = icmp eq i64 %182, %n.vec1229
  br i1 %cmp.n1233, label %polly.loop_exit525, label %polly.loop_header523.preheader

polly.loop_header523.preheader:                   ; preds = %polly.loop_header517, %middle.block1223
  %polly.indvar526.ph = phi i64 [ 0, %polly.loop_header517 ], [ %n.vec1229, %middle.block1223 ]
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523, %middle.block1223
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next521, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond848.not, label %polly.loop_header533.preheader, label %polly.loop_header517

polly.loop_header533.preheader:                   ; preds = %polly.loop_exit525
  %Packed_MemRef_call2434 = bitcast i8* %malloccall433 to double*
  br label %polly.loop_header533

polly.loop_header523:                             ; preds = %polly.loop_header523.preheader, %polly.loop_header523
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_header523 ], [ %polly.indvar526.ph, %polly.loop_header523.preheader ]
  %190 = shl nuw nsw i64 %polly.indvar526, 3
  %scevgep530 = getelementptr i8, i8* %scevgep529, i64 %190
  %scevgep530531 = bitcast i8* %scevgep530 to double*
  %_p_scalar_532 = load double, double* %scevgep530531, align 8, !alias.scope !87, !noalias !89
  %p_mul.i = fmul fast double %_p_scalar_532, 1.200000e+00
  store double %p_mul.i, double* %scevgep530531, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next527, %polly.indvar520
  br i1 %exitcond847.not, label %polly.loop_exit525, label %polly.loop_header523, !llvm.loop !94

polly.loop_header533:                             ; preds = %polly.loop_header533.preheader, %polly.loop_exit557
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_exit557 ], [ 0, %polly.loop_header533.preheader ]
  %191 = shl nuw nsw i64 %polly.indvar536, 5
  br label %polly.loop_header539

polly.loop_exit557:                               ; preds = %polly.loop_exit563
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next537, 15
  br i1 %exitcond846.not, label %polly.exiting432, label %polly.loop_header533

polly.loop_header539:                             ; preds = %polly.loop_header539, %polly.loop_header533
  %polly.indvar542 = phi i64 [ 0, %polly.loop_header533 ], [ %polly.indvar_next543, %polly.loop_header539 ]
  %192 = shl nuw nsw i64 %polly.indvar542, 5
  %scevgep835 = getelementptr i8, i8* %malloccall433, i64 %192
  %193 = mul nuw nsw i64 %polly.indvar542, 480
  %194 = add nuw nsw i64 %191, %193
  %scevgep836 = getelementptr i8, i8* %call2, i64 %194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep835, i8* noundef nonnull align 8 dereferenceable(32) %scevgep836, i64 32, i1 false)
  %polly.indvar_next543 = add nuw nsw i64 %polly.indvar542, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next543, 80
  br i1 %exitcond837.not, label %polly.loop_header555.preheader, label %polly.loop_header539

polly.loop_header555.preheader:                   ; preds = %polly.loop_header539
  %195 = shl nsw i64 %polly.indvar536, 2
  br label %polly.loop_header555

polly.loop_header555:                             ; preds = %polly.loop_header555.preheader, %polly.loop_exit563
  %indvars.iv838 = phi i64 [ 1, %polly.loop_header555.preheader ], [ %indvars.iv.next839, %polly.loop_exit563 ]
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header555.preheader ], [ %polly.indvar_next559, %polly.loop_exit563 ]
  %196 = shl nsw i64 %polly.indvar558, 3
  %polly.access.mul.Packed_MemRef_call2434582 = shl nsw i64 %polly.indvar558, 5
  %197 = mul nsw i64 %polly.indvar558, 3840
  %198 = mul nsw i64 %polly.indvar558, 5120
  %199 = or i64 %196, 1
  %polly.access.mul.Packed_MemRef_call2434582.1 = shl nsw i64 %199, 2
  %200 = mul nuw nsw i64 %199, 480
  %201 = mul nuw nsw i64 %199, 640
  %202 = or i64 %196, 2
  %polly.access.mul.Packed_MemRef_call2434582.2 = shl nsw i64 %202, 2
  %203 = mul nuw nsw i64 %202, 480
  %204 = mul nuw nsw i64 %202, 640
  %205 = or i64 %196, 3
  %polly.access.mul.Packed_MemRef_call2434582.3 = shl nsw i64 %205, 2
  %206 = mul nuw nsw i64 %205, 480
  %207 = mul nuw nsw i64 %205, 640
  %208 = or i64 %196, 4
  %polly.access.mul.Packed_MemRef_call2434582.4 = shl nsw i64 %208, 2
  %209 = mul nuw nsw i64 %208, 480
  %210 = mul nuw nsw i64 %208, 640
  %211 = or i64 %196, 5
  %polly.access.mul.Packed_MemRef_call2434582.5 = shl nsw i64 %211, 2
  %212 = mul nuw nsw i64 %211, 480
  %213 = mul nuw nsw i64 %211, 640
  %214 = or i64 %196, 6
  %polly.access.mul.Packed_MemRef_call2434582.6 = shl nsw i64 %214, 2
  %215 = mul nuw nsw i64 %214, 480
  %216 = mul nuw nsw i64 %214, 640
  %217 = or i64 %196, 7
  %polly.access.mul.Packed_MemRef_call2434582.7 = shl nsw i64 %217, 2
  %218 = mul nuw nsw i64 %217, 480
  %219 = mul nuw nsw i64 %217, 640
  %220 = add nuw nsw i64 %indvars.iv838, 6
  br label %polly.loop_header561

polly.loop_exit563:                               ; preds = %polly.loop_exit575.7
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 8
  %exitcond845.not = icmp eq i64 %polly.indvar_next559, 10
  br i1 %exitcond845.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header561:                             ; preds = %polly.loop_exit575.7, %polly.loop_header555
  %polly.indvar564 = phi i64 [ 0, %polly.loop_header555 ], [ %polly.indvar_next565, %polly.loop_exit575.7 ]
  %221 = add nuw nsw i64 %polly.indvar564, %195
  %222 = shl i64 %221, 3
  %polly.access.add.Packed_MemRef_call2434583 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582, %polly.indvar564
  %polly.access.Packed_MemRef_call2434584 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583
  %_p_scalar_585 = load double, double* %polly.access.Packed_MemRef_call2434584, align 8
  %223 = add nuw nsw i64 %197, %222
  %scevgep590 = getelementptr i8, i8* %call1, i64 %223
  %scevgep590591 = bitcast i8* %scevgep590 to double*
  %_p_scalar_592 = load double, double* %scevgep590591, align 8, !alias.scope !90, !noalias !95
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_header573
  %polly.access.add.Packed_MemRef_call2434583.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582.1, %polly.indvar564
  %polly.access.Packed_MemRef_call2434584.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1
  %_p_scalar_585.1 = load double, double* %polly.access.Packed_MemRef_call2434584.1, align 8
  %224 = add nuw nsw i64 %200, %222
  %scevgep590.1 = getelementptr i8, i8* %call1, i64 %224
  %scevgep590591.1 = bitcast i8* %scevgep590.1 to double*
  %_p_scalar_592.1 = load double, double* %scevgep590591.1, align 8, !alias.scope !90, !noalias !95
  br label %polly.loop_header573.1

polly.loop_header573:                             ; preds = %polly.loop_header573, %polly.loop_header561
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header561 ], [ %polly.indvar_next577, %polly.loop_header573 ]
  %225 = mul nuw nsw i64 %polly.indvar576, 480
  %226 = add nuw nsw i64 %225, %222
  %scevgep579 = getelementptr i8, i8* %call1, i64 %226
  %scevgep579580 = bitcast i8* %scevgep579 to double*
  %_p_scalar_581 = load double, double* %scevgep579580, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i = fmul fast double %_p_scalar_585, %_p_scalar_581
  %polly.access.mul.Packed_MemRef_call2434586 = shl nsw i64 %polly.indvar576, 2
  %polly.access.add.Packed_MemRef_call2434587 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586, %polly.indvar564
  %polly.access.Packed_MemRef_call2434588 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2434588, align 8
  %p_mul37.i = fmul fast double %_p_scalar_592, %_p_scalar_589
  %227 = shl nuw nsw i64 %polly.indvar576, 3
  %228 = add nuw nsw i64 %227, %198
  %scevgep593 = getelementptr i8, i8* %call, i64 %228
  %scevgep593594 = bitcast i8* %scevgep593 to double*
  %_p_scalar_595 = load double, double* %scevgep593594, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_595
  store double %p_add42.i, double* %scevgep593594, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next577, %indvars.iv838
  br i1 %exitcond842.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header734:                             ; preds = %entry, %polly.loop_exit742
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %entry ]
  %229 = mul nuw nsw i64 %polly.indvar737, 640
  %230 = trunc i64 %polly.indvar737 to i32
  %broadcast.splatinsert957 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat958 = shufflevector <4 x i32> %broadcast.splatinsert957, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %polly.loop_header734
  %index949 = phi i64 [ 0, %polly.loop_header734 ], [ %index.next950, %vector.body947 ]
  %vec.ind955 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734 ], [ %vec.ind.next956, %vector.body947 ]
  %231 = mul <4 x i32> %vec.ind955, %broadcast.splat958
  %232 = add <4 x i32> %231, <i32 3, i32 3, i32 3, i32 3>
  %233 = urem <4 x i32> %232, <i32 80, i32 80, i32 80, i32 80>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %236 = shl i64 %index949, 3
  %237 = add nuw nsw i64 %236, %229
  %238 = getelementptr i8, i8* %call, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %235, <4 x double>* %239, align 8, !alias.scope !96, !noalias !98
  %index.next950 = add i64 %index949, 4
  %vec.ind.next956 = add <4 x i32> %vec.ind955, <i32 4, i32 4, i32 4, i32 4>
  %240 = icmp eq i64 %index.next950, 32
  br i1 %240, label %polly.loop_exit742, label %vector.body947, !llvm.loop !101

polly.loop_exit742:                               ; preds = %vector.body947
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next738, 32
  br i1 %exitcond867.not, label %polly.loop_header734.1, label %polly.loop_header734

polly.loop_header761:                             ; preds = %polly.loop_exit742.2.2, %polly.loop_exit769
  %polly.indvar764 = phi i64 [ %polly.indvar_next765, %polly.loop_exit769 ], [ 0, %polly.loop_exit742.2.2 ]
  %241 = mul nuw nsw i64 %polly.indvar764, 480
  %242 = trunc i64 %polly.indvar764 to i32
  %broadcast.splatinsert1071 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1072 = shufflevector <4 x i32> %broadcast.splatinsert1071, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1061

vector.body1061:                                  ; preds = %vector.body1061, %polly.loop_header761
  %index1063 = phi i64 [ 0, %polly.loop_header761 ], [ %index.next1064, %vector.body1061 ]
  %vec.ind1069 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761 ], [ %vec.ind.next1070, %vector.body1061 ]
  %243 = mul <4 x i32> %vec.ind1069, %broadcast.splat1072
  %244 = add <4 x i32> %243, <i32 2, i32 2, i32 2, i32 2>
  %245 = urem <4 x i32> %244, <i32 60, i32 60, i32 60, i32 60>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %248 = shl i64 %index1063, 3
  %249 = add i64 %248, %241
  %250 = getelementptr i8, i8* %call2, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %247, <4 x double>* %251, align 8, !alias.scope !100, !noalias !102
  %index.next1064 = add i64 %index1063, 4
  %vec.ind.next1070 = add <4 x i32> %vec.ind1069, <i32 4, i32 4, i32 4, i32 4>
  %252 = icmp eq i64 %index.next1064, 32
  br i1 %252, label %polly.loop_exit769, label %vector.body1061, !llvm.loop !103

polly.loop_exit769:                               ; preds = %vector.body1061
  %polly.indvar_next765 = add nuw nsw i64 %polly.indvar764, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next765, 32
  br i1 %exitcond858.not, label %polly.loop_header761.1, label %polly.loop_header761

polly.loop_header787:                             ; preds = %polly.loop_exit769.1.2, %polly.loop_exit795
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_exit769.1.2 ]
  %253 = mul nuw nsw i64 %polly.indvar790, 480
  %254 = trunc i64 %polly.indvar790 to i32
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %254, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %polly.loop_header787
  %index1141 = phi i64 [ 0, %polly.loop_header787 ], [ %index.next1142, %vector.body1139 ]
  %vec.ind1147 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787 ], [ %vec.ind.next1148, %vector.body1139 ]
  %255 = mul <4 x i32> %vec.ind1147, %broadcast.splat1150
  %256 = add <4 x i32> %255, <i32 1, i32 1, i32 1, i32 1>
  %257 = urem <4 x i32> %256, <i32 80, i32 80, i32 80, i32 80>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %260 = shl i64 %index1141, 3
  %261 = add i64 %260, %253
  %262 = getelementptr i8, i8* %call1, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %259, <4 x double>* %263, align 8, !alias.scope !99, !noalias !104
  %index.next1142 = add i64 %index1141, 4
  %vec.ind.next1148 = add <4 x i32> %vec.ind1147, <i32 4, i32 4, i32 4, i32 4>
  %264 = icmp eq i64 %index.next1142, 32
  br i1 %264, label %polly.loop_exit795, label %vector.body1139, !llvm.loop !105

polly.loop_exit795:                               ; preds = %vector.body1139
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond852.not, label %polly.loop_header787.1, label %polly.loop_header787

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_exit241
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_exit241 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %265 = mul nuw nsw i64 %polly.indvar242.1, 480
  %266 = add nuw nsw i64 %265, %128
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %266
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.mul.Packed_MemRef_call2252.1 = shl nsw i64 %polly.indvar242.1, 2
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.1, %polly.indvar230
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_258.1, %_p_scalar_255.1
  %267 = shl nuw nsw i64 %polly.indvar242.1, 3
  %268 = add nuw nsw i64 %267, %107
  %scevgep259.1 = getelementptr i8, i8* %call, i64 %268
  %scevgep259260.1 = bitcast i8* %scevgep259.1 to double*
  %_p_scalar_261.1 = load double, double* %scevgep259260.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_261.1
  store double %p_add42.i118.1, double* %scevgep259260.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar242.1, %indvars.iv
  br i1 %exitcond812.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.access.add.Packed_MemRef_call2249.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.2, %polly.indvar230
  %polly.access.Packed_MemRef_call2250.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2
  %_p_scalar_251.2 = load double, double* %polly.access.Packed_MemRef_call2250.2, align 8
  %269 = add nuw nsw i64 %109, %128
  %scevgep256.2 = getelementptr i8, i8* %call1, i64 %269
  %scevgep256257.2 = bitcast i8* %scevgep256.2 to double*
  %_p_scalar_258.2 = load double, double* %scevgep256257.2, align 8, !alias.scope !71, !noalias !77
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_exit241.1
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_exit241.1 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %270 = mul nuw nsw i64 %polly.indvar242.2, 480
  %271 = add nuw nsw i64 %270, %128
  %scevgep245.2 = getelementptr i8, i8* %call1, i64 %271
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_247.2
  %polly.access.mul.Packed_MemRef_call2252.2 = shl nsw i64 %polly.indvar242.2, 2
  %polly.access.add.Packed_MemRef_call2253.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.2, %polly.indvar230
  %polly.access.Packed_MemRef_call2254.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2
  %_p_scalar_255.2 = load double, double* %polly.access.Packed_MemRef_call2254.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_258.2, %_p_scalar_255.2
  %272 = shl nuw nsw i64 %polly.indvar242.2, 3
  %273 = add nuw nsw i64 %272, %110
  %scevgep259.2 = getelementptr i8, i8* %call, i64 %273
  %scevgep259260.2 = bitcast i8* %scevgep259.2 to double*
  %_p_scalar_261.2 = load double, double* %scevgep259260.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_261.2
  store double %p_add42.i118.2, double* %scevgep259260.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %274 = add nuw nsw i64 %indvars.iv, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar242.2, %274
  br i1 %exitcond812.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.access.add.Packed_MemRef_call2249.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.3, %polly.indvar230
  %polly.access.Packed_MemRef_call2250.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.3
  %_p_scalar_251.3 = load double, double* %polly.access.Packed_MemRef_call2250.3, align 8
  %275 = add nuw nsw i64 %112, %128
  %scevgep256.3 = getelementptr i8, i8* %call1, i64 %275
  %scevgep256257.3 = bitcast i8* %scevgep256.3 to double*
  %_p_scalar_258.3 = load double, double* %scevgep256257.3, align 8, !alias.scope !71, !noalias !77
  br label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_header239.3, %polly.loop_exit241.2
  %polly.indvar242.3 = phi i64 [ 0, %polly.loop_exit241.2 ], [ %polly.indvar_next243.3, %polly.loop_header239.3 ]
  %276 = mul nuw nsw i64 %polly.indvar242.3, 480
  %277 = add nuw nsw i64 %276, %128
  %scevgep245.3 = getelementptr i8, i8* %call1, i64 %277
  %scevgep245246.3 = bitcast i8* %scevgep245.3 to double*
  %_p_scalar_247.3 = load double, double* %scevgep245246.3, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.3 = fmul fast double %_p_scalar_251.3, %_p_scalar_247.3
  %polly.access.mul.Packed_MemRef_call2252.3 = shl nsw i64 %polly.indvar242.3, 2
  %polly.access.add.Packed_MemRef_call2253.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.3, %polly.indvar230
  %polly.access.Packed_MemRef_call2254.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.3
  %_p_scalar_255.3 = load double, double* %polly.access.Packed_MemRef_call2254.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_258.3, %_p_scalar_255.3
  %278 = shl nuw nsw i64 %polly.indvar242.3, 3
  %279 = add nuw nsw i64 %278, %113
  %scevgep259.3 = getelementptr i8, i8* %call, i64 %279
  %scevgep259260.3 = bitcast i8* %scevgep259.3 to double*
  %_p_scalar_261.3 = load double, double* %scevgep259260.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_261.3
  store double %p_add42.i118.3, double* %scevgep259260.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %280 = add nuw nsw i64 %indvars.iv, 2
  %exitcond812.3.not = icmp eq i64 %polly.indvar242.3, %280
  br i1 %exitcond812.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.3

polly.loop_exit241.3:                             ; preds = %polly.loop_header239.3
  %polly.access.add.Packed_MemRef_call2249.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.4, %polly.indvar230
  %polly.access.Packed_MemRef_call2250.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.4
  %_p_scalar_251.4 = load double, double* %polly.access.Packed_MemRef_call2250.4, align 8
  %281 = add nuw nsw i64 %115, %128
  %scevgep256.4 = getelementptr i8, i8* %call1, i64 %281
  %scevgep256257.4 = bitcast i8* %scevgep256.4 to double*
  %_p_scalar_258.4 = load double, double* %scevgep256257.4, align 8, !alias.scope !71, !noalias !77
  br label %polly.loop_header239.4

polly.loop_header239.4:                           ; preds = %polly.loop_header239.4, %polly.loop_exit241.3
  %polly.indvar242.4 = phi i64 [ 0, %polly.loop_exit241.3 ], [ %polly.indvar_next243.4, %polly.loop_header239.4 ]
  %282 = mul nuw nsw i64 %polly.indvar242.4, 480
  %283 = add nuw nsw i64 %282, %128
  %scevgep245.4 = getelementptr i8, i8* %call1, i64 %283
  %scevgep245246.4 = bitcast i8* %scevgep245.4 to double*
  %_p_scalar_247.4 = load double, double* %scevgep245246.4, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.4 = fmul fast double %_p_scalar_251.4, %_p_scalar_247.4
  %polly.access.mul.Packed_MemRef_call2252.4 = shl nsw i64 %polly.indvar242.4, 2
  %polly.access.add.Packed_MemRef_call2253.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.4, %polly.indvar230
  %polly.access.Packed_MemRef_call2254.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.4
  %_p_scalar_255.4 = load double, double* %polly.access.Packed_MemRef_call2254.4, align 8
  %p_mul37.i114.4 = fmul fast double %_p_scalar_258.4, %_p_scalar_255.4
  %284 = shl nuw nsw i64 %polly.indvar242.4, 3
  %285 = add nuw nsw i64 %284, %116
  %scevgep259.4 = getelementptr i8, i8* %call, i64 %285
  %scevgep259260.4 = bitcast i8* %scevgep259.4 to double*
  %_p_scalar_261.4 = load double, double* %scevgep259260.4, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_261.4
  store double %p_add42.i118.4, double* %scevgep259260.4, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.4 = add nuw nsw i64 %polly.indvar242.4, 1
  %286 = add nuw nsw i64 %indvars.iv, 3
  %exitcond812.4.not = icmp eq i64 %polly.indvar242.4, %286
  br i1 %exitcond812.4.not, label %polly.loop_exit241.4, label %polly.loop_header239.4

polly.loop_exit241.4:                             ; preds = %polly.loop_header239.4
  %polly.access.add.Packed_MemRef_call2249.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.5, %polly.indvar230
  %polly.access.Packed_MemRef_call2250.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.5
  %_p_scalar_251.5 = load double, double* %polly.access.Packed_MemRef_call2250.5, align 8
  %287 = add nuw nsw i64 %118, %128
  %scevgep256.5 = getelementptr i8, i8* %call1, i64 %287
  %scevgep256257.5 = bitcast i8* %scevgep256.5 to double*
  %_p_scalar_258.5 = load double, double* %scevgep256257.5, align 8, !alias.scope !71, !noalias !77
  br label %polly.loop_header239.5

polly.loop_header239.5:                           ; preds = %polly.loop_header239.5, %polly.loop_exit241.4
  %polly.indvar242.5 = phi i64 [ 0, %polly.loop_exit241.4 ], [ %polly.indvar_next243.5, %polly.loop_header239.5 ]
  %288 = mul nuw nsw i64 %polly.indvar242.5, 480
  %289 = add nuw nsw i64 %288, %128
  %scevgep245.5 = getelementptr i8, i8* %call1, i64 %289
  %scevgep245246.5 = bitcast i8* %scevgep245.5 to double*
  %_p_scalar_247.5 = load double, double* %scevgep245246.5, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.5 = fmul fast double %_p_scalar_251.5, %_p_scalar_247.5
  %polly.access.mul.Packed_MemRef_call2252.5 = shl nsw i64 %polly.indvar242.5, 2
  %polly.access.add.Packed_MemRef_call2253.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.5, %polly.indvar230
  %polly.access.Packed_MemRef_call2254.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.5
  %_p_scalar_255.5 = load double, double* %polly.access.Packed_MemRef_call2254.5, align 8
  %p_mul37.i114.5 = fmul fast double %_p_scalar_258.5, %_p_scalar_255.5
  %290 = shl nuw nsw i64 %polly.indvar242.5, 3
  %291 = add nuw nsw i64 %290, %119
  %scevgep259.5 = getelementptr i8, i8* %call, i64 %291
  %scevgep259260.5 = bitcast i8* %scevgep259.5 to double*
  %_p_scalar_261.5 = load double, double* %scevgep259260.5, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_261.5
  store double %p_add42.i118.5, double* %scevgep259260.5, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.5 = add nuw nsw i64 %polly.indvar242.5, 1
  %292 = add nuw nsw i64 %indvars.iv, 4
  %exitcond812.5.not = icmp eq i64 %polly.indvar242.5, %292
  br i1 %exitcond812.5.not, label %polly.loop_exit241.5, label %polly.loop_header239.5

polly.loop_exit241.5:                             ; preds = %polly.loop_header239.5
  %polly.access.add.Packed_MemRef_call2249.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.6, %polly.indvar230
  %polly.access.Packed_MemRef_call2250.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.6
  %_p_scalar_251.6 = load double, double* %polly.access.Packed_MemRef_call2250.6, align 8
  %293 = add nuw nsw i64 %121, %128
  %scevgep256.6 = getelementptr i8, i8* %call1, i64 %293
  %scevgep256257.6 = bitcast i8* %scevgep256.6 to double*
  %_p_scalar_258.6 = load double, double* %scevgep256257.6, align 8, !alias.scope !71, !noalias !77
  br label %polly.loop_header239.6

polly.loop_header239.6:                           ; preds = %polly.loop_header239.6, %polly.loop_exit241.5
  %polly.indvar242.6 = phi i64 [ 0, %polly.loop_exit241.5 ], [ %polly.indvar_next243.6, %polly.loop_header239.6 ]
  %294 = mul nuw nsw i64 %polly.indvar242.6, 480
  %295 = add nuw nsw i64 %294, %128
  %scevgep245.6 = getelementptr i8, i8* %call1, i64 %295
  %scevgep245246.6 = bitcast i8* %scevgep245.6 to double*
  %_p_scalar_247.6 = load double, double* %scevgep245246.6, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.6 = fmul fast double %_p_scalar_251.6, %_p_scalar_247.6
  %polly.access.mul.Packed_MemRef_call2252.6 = shl nsw i64 %polly.indvar242.6, 2
  %polly.access.add.Packed_MemRef_call2253.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.6, %polly.indvar230
  %polly.access.Packed_MemRef_call2254.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.6
  %_p_scalar_255.6 = load double, double* %polly.access.Packed_MemRef_call2254.6, align 8
  %p_mul37.i114.6 = fmul fast double %_p_scalar_258.6, %_p_scalar_255.6
  %296 = shl nuw nsw i64 %polly.indvar242.6, 3
  %297 = add nuw nsw i64 %296, %122
  %scevgep259.6 = getelementptr i8, i8* %call, i64 %297
  %scevgep259260.6 = bitcast i8* %scevgep259.6 to double*
  %_p_scalar_261.6 = load double, double* %scevgep259260.6, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_261.6
  store double %p_add42.i118.6, double* %scevgep259260.6, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.6 = add nuw nsw i64 %polly.indvar242.6, 1
  %298 = add nuw nsw i64 %indvars.iv, 5
  %exitcond812.6.not = icmp eq i64 %polly.indvar242.6, %298
  br i1 %exitcond812.6.not, label %polly.loop_exit241.6, label %polly.loop_header239.6

polly.loop_exit241.6:                             ; preds = %polly.loop_header239.6
  %polly.access.add.Packed_MemRef_call2249.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.7, %polly.indvar230
  %polly.access.Packed_MemRef_call2250.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.7
  %_p_scalar_251.7 = load double, double* %polly.access.Packed_MemRef_call2250.7, align 8
  %299 = add nuw nsw i64 %124, %128
  %scevgep256.7 = getelementptr i8, i8* %call1, i64 %299
  %scevgep256257.7 = bitcast i8* %scevgep256.7 to double*
  %_p_scalar_258.7 = load double, double* %scevgep256257.7, align 8, !alias.scope !71, !noalias !77
  br label %polly.loop_header239.7

polly.loop_header239.7:                           ; preds = %polly.loop_header239.7, %polly.loop_exit241.6
  %polly.indvar242.7 = phi i64 [ 0, %polly.loop_exit241.6 ], [ %polly.indvar_next243.7, %polly.loop_header239.7 ]
  %300 = mul nuw nsw i64 %polly.indvar242.7, 480
  %301 = add nuw nsw i64 %300, %128
  %scevgep245.7 = getelementptr i8, i8* %call1, i64 %301
  %scevgep245246.7 = bitcast i8* %scevgep245.7 to double*
  %_p_scalar_247.7 = load double, double* %scevgep245246.7, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.7 = fmul fast double %_p_scalar_251.7, %_p_scalar_247.7
  %polly.access.mul.Packed_MemRef_call2252.7 = shl nsw i64 %polly.indvar242.7, 2
  %polly.access.add.Packed_MemRef_call2253.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.7, %polly.indvar230
  %polly.access.Packed_MemRef_call2254.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.7
  %_p_scalar_255.7 = load double, double* %polly.access.Packed_MemRef_call2254.7, align 8
  %p_mul37.i114.7 = fmul fast double %_p_scalar_258.7, %_p_scalar_255.7
  %302 = shl nuw nsw i64 %polly.indvar242.7, 3
  %303 = add nuw nsw i64 %302, %125
  %scevgep259.7 = getelementptr i8, i8* %call, i64 %303
  %scevgep259260.7 = bitcast i8* %scevgep259.7 to double*
  %_p_scalar_261.7 = load double, double* %scevgep259260.7, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_261.7
  store double %p_add42.i118.7, double* %scevgep259260.7, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.7 = add nuw nsw i64 %polly.indvar242.7, 1
  %exitcond812.7.not = icmp eq i64 %polly.indvar242.7, %126
  br i1 %exitcond812.7.not, label %polly.loop_exit241.7, label %polly.loop_header239.7

polly.loop_exit241.7:                             ; preds = %polly.loop_header239.7
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next231, 4
  br i1 %exitcond814.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header406.1:                           ; preds = %polly.loop_header406.1, %polly.loop_exit408
  %polly.indvar409.1 = phi i64 [ 0, %polly.loop_exit408 ], [ %polly.indvar_next410.1, %polly.loop_header406.1 ]
  %304 = mul nuw nsw i64 %polly.indvar409.1, 480
  %305 = add nuw nsw i64 %304, %175
  %scevgep412.1 = getelementptr i8, i8* %call1, i64 %305
  %scevgep412413.1 = bitcast i8* %scevgep412.1 to double*
  %_p_scalar_414.1 = load double, double* %scevgep412413.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.1 = fmul fast double %_p_scalar_418.1, %_p_scalar_414.1
  %polly.access.mul.Packed_MemRef_call2267419.1 = shl nsw i64 %polly.indvar409.1, 2
  %polly.access.add.Packed_MemRef_call2267420.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.1, %polly.indvar397
  %polly.access.Packed_MemRef_call2267421.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1
  %_p_scalar_422.1 = load double, double* %polly.access.Packed_MemRef_call2267421.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_425.1, %_p_scalar_422.1
  %306 = shl nuw nsw i64 %polly.indvar409.1, 3
  %307 = add nuw nsw i64 %306, %154
  %scevgep426.1 = getelementptr i8, i8* %call, i64 %307
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_428.1
  store double %p_add42.i79.1, double* %scevgep426427.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond827.1.not = icmp eq i64 %polly.indvar409.1, %indvars.iv823
  br i1 %exitcond827.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.1

polly.loop_exit408.1:                             ; preds = %polly.loop_header406.1
  %polly.access.add.Packed_MemRef_call2267416.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415.2, %polly.indvar397
  %polly.access.Packed_MemRef_call2267417.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.2
  %_p_scalar_418.2 = load double, double* %polly.access.Packed_MemRef_call2267417.2, align 8
  %308 = add nuw nsw i64 %156, %175
  %scevgep423.2 = getelementptr i8, i8* %call1, i64 %308
  %scevgep423424.2 = bitcast i8* %scevgep423.2 to double*
  %_p_scalar_425.2 = load double, double* %scevgep423424.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header406.2

polly.loop_header406.2:                           ; preds = %polly.loop_header406.2, %polly.loop_exit408.1
  %polly.indvar409.2 = phi i64 [ 0, %polly.loop_exit408.1 ], [ %polly.indvar_next410.2, %polly.loop_header406.2 ]
  %309 = mul nuw nsw i64 %polly.indvar409.2, 480
  %310 = add nuw nsw i64 %309, %175
  %scevgep412.2 = getelementptr i8, i8* %call1, i64 %310
  %scevgep412413.2 = bitcast i8* %scevgep412.2 to double*
  %_p_scalar_414.2 = load double, double* %scevgep412413.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.2 = fmul fast double %_p_scalar_418.2, %_p_scalar_414.2
  %polly.access.mul.Packed_MemRef_call2267419.2 = shl nsw i64 %polly.indvar409.2, 2
  %polly.access.add.Packed_MemRef_call2267420.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.2, %polly.indvar397
  %polly.access.Packed_MemRef_call2267421.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.2
  %_p_scalar_422.2 = load double, double* %polly.access.Packed_MemRef_call2267421.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_425.2, %_p_scalar_422.2
  %311 = shl nuw nsw i64 %polly.indvar409.2, 3
  %312 = add nuw nsw i64 %311, %157
  %scevgep426.2 = getelementptr i8, i8* %call, i64 %312
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_428.2
  store double %p_add42.i79.2, double* %scevgep426427.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.2 = add nuw nsw i64 %polly.indvar409.2, 1
  %313 = add nuw nsw i64 %indvars.iv823, 1
  %exitcond827.2.not = icmp eq i64 %polly.indvar409.2, %313
  br i1 %exitcond827.2.not, label %polly.loop_exit408.2, label %polly.loop_header406.2

polly.loop_exit408.2:                             ; preds = %polly.loop_header406.2
  %polly.access.add.Packed_MemRef_call2267416.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415.3, %polly.indvar397
  %polly.access.Packed_MemRef_call2267417.3 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.3
  %_p_scalar_418.3 = load double, double* %polly.access.Packed_MemRef_call2267417.3, align 8
  %314 = add nuw nsw i64 %159, %175
  %scevgep423.3 = getelementptr i8, i8* %call1, i64 %314
  %scevgep423424.3 = bitcast i8* %scevgep423.3 to double*
  %_p_scalar_425.3 = load double, double* %scevgep423424.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header406.3

polly.loop_header406.3:                           ; preds = %polly.loop_header406.3, %polly.loop_exit408.2
  %polly.indvar409.3 = phi i64 [ 0, %polly.loop_exit408.2 ], [ %polly.indvar_next410.3, %polly.loop_header406.3 ]
  %315 = mul nuw nsw i64 %polly.indvar409.3, 480
  %316 = add nuw nsw i64 %315, %175
  %scevgep412.3 = getelementptr i8, i8* %call1, i64 %316
  %scevgep412413.3 = bitcast i8* %scevgep412.3 to double*
  %_p_scalar_414.3 = load double, double* %scevgep412413.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.3 = fmul fast double %_p_scalar_418.3, %_p_scalar_414.3
  %polly.access.mul.Packed_MemRef_call2267419.3 = shl nsw i64 %polly.indvar409.3, 2
  %polly.access.add.Packed_MemRef_call2267420.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.3, %polly.indvar397
  %polly.access.Packed_MemRef_call2267421.3 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.3
  %_p_scalar_422.3 = load double, double* %polly.access.Packed_MemRef_call2267421.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_425.3, %_p_scalar_422.3
  %317 = shl nuw nsw i64 %polly.indvar409.3, 3
  %318 = add nuw nsw i64 %317, %160
  %scevgep426.3 = getelementptr i8, i8* %call, i64 %318
  %scevgep426427.3 = bitcast i8* %scevgep426.3 to double*
  %_p_scalar_428.3 = load double, double* %scevgep426427.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_428.3
  store double %p_add42.i79.3, double* %scevgep426427.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.3 = add nuw nsw i64 %polly.indvar409.3, 1
  %319 = add nuw nsw i64 %indvars.iv823, 2
  %exitcond827.3.not = icmp eq i64 %polly.indvar409.3, %319
  br i1 %exitcond827.3.not, label %polly.loop_exit408.3, label %polly.loop_header406.3

polly.loop_exit408.3:                             ; preds = %polly.loop_header406.3
  %polly.access.add.Packed_MemRef_call2267416.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415.4, %polly.indvar397
  %polly.access.Packed_MemRef_call2267417.4 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.4
  %_p_scalar_418.4 = load double, double* %polly.access.Packed_MemRef_call2267417.4, align 8
  %320 = add nuw nsw i64 %162, %175
  %scevgep423.4 = getelementptr i8, i8* %call1, i64 %320
  %scevgep423424.4 = bitcast i8* %scevgep423.4 to double*
  %_p_scalar_425.4 = load double, double* %scevgep423424.4, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header406.4

polly.loop_header406.4:                           ; preds = %polly.loop_header406.4, %polly.loop_exit408.3
  %polly.indvar409.4 = phi i64 [ 0, %polly.loop_exit408.3 ], [ %polly.indvar_next410.4, %polly.loop_header406.4 ]
  %321 = mul nuw nsw i64 %polly.indvar409.4, 480
  %322 = add nuw nsw i64 %321, %175
  %scevgep412.4 = getelementptr i8, i8* %call1, i64 %322
  %scevgep412413.4 = bitcast i8* %scevgep412.4 to double*
  %_p_scalar_414.4 = load double, double* %scevgep412413.4, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.4 = fmul fast double %_p_scalar_418.4, %_p_scalar_414.4
  %polly.access.mul.Packed_MemRef_call2267419.4 = shl nsw i64 %polly.indvar409.4, 2
  %polly.access.add.Packed_MemRef_call2267420.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.4, %polly.indvar397
  %polly.access.Packed_MemRef_call2267421.4 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.4
  %_p_scalar_422.4 = load double, double* %polly.access.Packed_MemRef_call2267421.4, align 8
  %p_mul37.i75.4 = fmul fast double %_p_scalar_425.4, %_p_scalar_422.4
  %323 = shl nuw nsw i64 %polly.indvar409.4, 3
  %324 = add nuw nsw i64 %323, %163
  %scevgep426.4 = getelementptr i8, i8* %call, i64 %324
  %scevgep426427.4 = bitcast i8* %scevgep426.4 to double*
  %_p_scalar_428.4 = load double, double* %scevgep426427.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_428.4
  store double %p_add42.i79.4, double* %scevgep426427.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.4 = add nuw nsw i64 %polly.indvar409.4, 1
  %325 = add nuw nsw i64 %indvars.iv823, 3
  %exitcond827.4.not = icmp eq i64 %polly.indvar409.4, %325
  br i1 %exitcond827.4.not, label %polly.loop_exit408.4, label %polly.loop_header406.4

polly.loop_exit408.4:                             ; preds = %polly.loop_header406.4
  %polly.access.add.Packed_MemRef_call2267416.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415.5, %polly.indvar397
  %polly.access.Packed_MemRef_call2267417.5 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.5
  %_p_scalar_418.5 = load double, double* %polly.access.Packed_MemRef_call2267417.5, align 8
  %326 = add nuw nsw i64 %165, %175
  %scevgep423.5 = getelementptr i8, i8* %call1, i64 %326
  %scevgep423424.5 = bitcast i8* %scevgep423.5 to double*
  %_p_scalar_425.5 = load double, double* %scevgep423424.5, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header406.5

polly.loop_header406.5:                           ; preds = %polly.loop_header406.5, %polly.loop_exit408.4
  %polly.indvar409.5 = phi i64 [ 0, %polly.loop_exit408.4 ], [ %polly.indvar_next410.5, %polly.loop_header406.5 ]
  %327 = mul nuw nsw i64 %polly.indvar409.5, 480
  %328 = add nuw nsw i64 %327, %175
  %scevgep412.5 = getelementptr i8, i8* %call1, i64 %328
  %scevgep412413.5 = bitcast i8* %scevgep412.5 to double*
  %_p_scalar_414.5 = load double, double* %scevgep412413.5, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.5 = fmul fast double %_p_scalar_418.5, %_p_scalar_414.5
  %polly.access.mul.Packed_MemRef_call2267419.5 = shl nsw i64 %polly.indvar409.5, 2
  %polly.access.add.Packed_MemRef_call2267420.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.5, %polly.indvar397
  %polly.access.Packed_MemRef_call2267421.5 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.5
  %_p_scalar_422.5 = load double, double* %polly.access.Packed_MemRef_call2267421.5, align 8
  %p_mul37.i75.5 = fmul fast double %_p_scalar_425.5, %_p_scalar_422.5
  %329 = shl nuw nsw i64 %polly.indvar409.5, 3
  %330 = add nuw nsw i64 %329, %166
  %scevgep426.5 = getelementptr i8, i8* %call, i64 %330
  %scevgep426427.5 = bitcast i8* %scevgep426.5 to double*
  %_p_scalar_428.5 = load double, double* %scevgep426427.5, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_428.5
  store double %p_add42.i79.5, double* %scevgep426427.5, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.5 = add nuw nsw i64 %polly.indvar409.5, 1
  %331 = add nuw nsw i64 %indvars.iv823, 4
  %exitcond827.5.not = icmp eq i64 %polly.indvar409.5, %331
  br i1 %exitcond827.5.not, label %polly.loop_exit408.5, label %polly.loop_header406.5

polly.loop_exit408.5:                             ; preds = %polly.loop_header406.5
  %polly.access.add.Packed_MemRef_call2267416.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415.6, %polly.indvar397
  %polly.access.Packed_MemRef_call2267417.6 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.6
  %_p_scalar_418.6 = load double, double* %polly.access.Packed_MemRef_call2267417.6, align 8
  %332 = add nuw nsw i64 %168, %175
  %scevgep423.6 = getelementptr i8, i8* %call1, i64 %332
  %scevgep423424.6 = bitcast i8* %scevgep423.6 to double*
  %_p_scalar_425.6 = load double, double* %scevgep423424.6, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header406.6

polly.loop_header406.6:                           ; preds = %polly.loop_header406.6, %polly.loop_exit408.5
  %polly.indvar409.6 = phi i64 [ 0, %polly.loop_exit408.5 ], [ %polly.indvar_next410.6, %polly.loop_header406.6 ]
  %333 = mul nuw nsw i64 %polly.indvar409.6, 480
  %334 = add nuw nsw i64 %333, %175
  %scevgep412.6 = getelementptr i8, i8* %call1, i64 %334
  %scevgep412413.6 = bitcast i8* %scevgep412.6 to double*
  %_p_scalar_414.6 = load double, double* %scevgep412413.6, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.6 = fmul fast double %_p_scalar_418.6, %_p_scalar_414.6
  %polly.access.mul.Packed_MemRef_call2267419.6 = shl nsw i64 %polly.indvar409.6, 2
  %polly.access.add.Packed_MemRef_call2267420.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.6, %polly.indvar397
  %polly.access.Packed_MemRef_call2267421.6 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.6
  %_p_scalar_422.6 = load double, double* %polly.access.Packed_MemRef_call2267421.6, align 8
  %p_mul37.i75.6 = fmul fast double %_p_scalar_425.6, %_p_scalar_422.6
  %335 = shl nuw nsw i64 %polly.indvar409.6, 3
  %336 = add nuw nsw i64 %335, %169
  %scevgep426.6 = getelementptr i8, i8* %call, i64 %336
  %scevgep426427.6 = bitcast i8* %scevgep426.6 to double*
  %_p_scalar_428.6 = load double, double* %scevgep426427.6, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_428.6
  store double %p_add42.i79.6, double* %scevgep426427.6, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.6 = add nuw nsw i64 %polly.indvar409.6, 1
  %337 = add nuw nsw i64 %indvars.iv823, 5
  %exitcond827.6.not = icmp eq i64 %polly.indvar409.6, %337
  br i1 %exitcond827.6.not, label %polly.loop_exit408.6, label %polly.loop_header406.6

polly.loop_exit408.6:                             ; preds = %polly.loop_header406.6
  %polly.access.add.Packed_MemRef_call2267416.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415.7, %polly.indvar397
  %polly.access.Packed_MemRef_call2267417.7 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.7
  %_p_scalar_418.7 = load double, double* %polly.access.Packed_MemRef_call2267417.7, align 8
  %338 = add nuw nsw i64 %171, %175
  %scevgep423.7 = getelementptr i8, i8* %call1, i64 %338
  %scevgep423424.7 = bitcast i8* %scevgep423.7 to double*
  %_p_scalar_425.7 = load double, double* %scevgep423424.7, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header406.7

polly.loop_header406.7:                           ; preds = %polly.loop_header406.7, %polly.loop_exit408.6
  %polly.indvar409.7 = phi i64 [ 0, %polly.loop_exit408.6 ], [ %polly.indvar_next410.7, %polly.loop_header406.7 ]
  %339 = mul nuw nsw i64 %polly.indvar409.7, 480
  %340 = add nuw nsw i64 %339, %175
  %scevgep412.7 = getelementptr i8, i8* %call1, i64 %340
  %scevgep412413.7 = bitcast i8* %scevgep412.7 to double*
  %_p_scalar_414.7 = load double, double* %scevgep412413.7, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.7 = fmul fast double %_p_scalar_418.7, %_p_scalar_414.7
  %polly.access.mul.Packed_MemRef_call2267419.7 = shl nsw i64 %polly.indvar409.7, 2
  %polly.access.add.Packed_MemRef_call2267420.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.7, %polly.indvar397
  %polly.access.Packed_MemRef_call2267421.7 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.7
  %_p_scalar_422.7 = load double, double* %polly.access.Packed_MemRef_call2267421.7, align 8
  %p_mul37.i75.7 = fmul fast double %_p_scalar_425.7, %_p_scalar_422.7
  %341 = shl nuw nsw i64 %polly.indvar409.7, 3
  %342 = add nuw nsw i64 %341, %172
  %scevgep426.7 = getelementptr i8, i8* %call, i64 %342
  %scevgep426427.7 = bitcast i8* %scevgep426.7 to double*
  %_p_scalar_428.7 = load double, double* %scevgep426427.7, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_428.7
  store double %p_add42.i79.7, double* %scevgep426427.7, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.7 = add nuw nsw i64 %polly.indvar409.7, 1
  %exitcond827.7.not = icmp eq i64 %polly.indvar409.7, %173
  br i1 %exitcond827.7.not, label %polly.loop_exit408.7, label %polly.loop_header406.7

polly.loop_exit408.7:                             ; preds = %polly.loop_header406.7
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next398, 4
  br i1 %exitcond829.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header573.1:                           ; preds = %polly.loop_header573.1, %polly.loop_exit575
  %polly.indvar576.1 = phi i64 [ 0, %polly.loop_exit575 ], [ %polly.indvar_next577.1, %polly.loop_header573.1 ]
  %343 = mul nuw nsw i64 %polly.indvar576.1, 480
  %344 = add nuw nsw i64 %343, %222
  %scevgep579.1 = getelementptr i8, i8* %call1, i64 %344
  %scevgep579580.1 = bitcast i8* %scevgep579.1 to double*
  %_p_scalar_581.1 = load double, double* %scevgep579580.1, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.1 = fmul fast double %_p_scalar_585.1, %_p_scalar_581.1
  %polly.access.mul.Packed_MemRef_call2434586.1 = shl nsw i64 %polly.indvar576.1, 2
  %polly.access.add.Packed_MemRef_call2434587.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.1, %polly.indvar564
  %polly.access.Packed_MemRef_call2434588.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2434588.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_592.1, %_p_scalar_589.1
  %345 = shl nuw nsw i64 %polly.indvar576.1, 3
  %346 = add nuw nsw i64 %345, %201
  %scevgep593.1 = getelementptr i8, i8* %call, i64 %346
  %scevgep593594.1 = bitcast i8* %scevgep593.1 to double*
  %_p_scalar_595.1 = load double, double* %scevgep593594.1, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_595.1
  store double %p_add42.i.1, double* %scevgep593594.1, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.1 = add nuw nsw i64 %polly.indvar576.1, 1
  %exitcond842.1.not = icmp eq i64 %polly.indvar576.1, %indvars.iv838
  br i1 %exitcond842.1.not, label %polly.loop_exit575.1, label %polly.loop_header573.1

polly.loop_exit575.1:                             ; preds = %polly.loop_header573.1
  %polly.access.add.Packed_MemRef_call2434583.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582.2, %polly.indvar564
  %polly.access.Packed_MemRef_call2434584.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.2
  %_p_scalar_585.2 = load double, double* %polly.access.Packed_MemRef_call2434584.2, align 8
  %347 = add nuw nsw i64 %203, %222
  %scevgep590.2 = getelementptr i8, i8* %call1, i64 %347
  %scevgep590591.2 = bitcast i8* %scevgep590.2 to double*
  %_p_scalar_592.2 = load double, double* %scevgep590591.2, align 8, !alias.scope !90, !noalias !95
  br label %polly.loop_header573.2

polly.loop_header573.2:                           ; preds = %polly.loop_header573.2, %polly.loop_exit575.1
  %polly.indvar576.2 = phi i64 [ 0, %polly.loop_exit575.1 ], [ %polly.indvar_next577.2, %polly.loop_header573.2 ]
  %348 = mul nuw nsw i64 %polly.indvar576.2, 480
  %349 = add nuw nsw i64 %348, %222
  %scevgep579.2 = getelementptr i8, i8* %call1, i64 %349
  %scevgep579580.2 = bitcast i8* %scevgep579.2 to double*
  %_p_scalar_581.2 = load double, double* %scevgep579580.2, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.2 = fmul fast double %_p_scalar_585.2, %_p_scalar_581.2
  %polly.access.mul.Packed_MemRef_call2434586.2 = shl nsw i64 %polly.indvar576.2, 2
  %polly.access.add.Packed_MemRef_call2434587.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.2, %polly.indvar564
  %polly.access.Packed_MemRef_call2434588.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.2
  %_p_scalar_589.2 = load double, double* %polly.access.Packed_MemRef_call2434588.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_592.2, %_p_scalar_589.2
  %350 = shl nuw nsw i64 %polly.indvar576.2, 3
  %351 = add nuw nsw i64 %350, %204
  %scevgep593.2 = getelementptr i8, i8* %call, i64 %351
  %scevgep593594.2 = bitcast i8* %scevgep593.2 to double*
  %_p_scalar_595.2 = load double, double* %scevgep593594.2, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_595.2
  store double %p_add42.i.2, double* %scevgep593594.2, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.2 = add nuw nsw i64 %polly.indvar576.2, 1
  %352 = add nuw nsw i64 %indvars.iv838, 1
  %exitcond842.2.not = icmp eq i64 %polly.indvar576.2, %352
  br i1 %exitcond842.2.not, label %polly.loop_exit575.2, label %polly.loop_header573.2

polly.loop_exit575.2:                             ; preds = %polly.loop_header573.2
  %polly.access.add.Packed_MemRef_call2434583.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582.3, %polly.indvar564
  %polly.access.Packed_MemRef_call2434584.3 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.3
  %_p_scalar_585.3 = load double, double* %polly.access.Packed_MemRef_call2434584.3, align 8
  %353 = add nuw nsw i64 %206, %222
  %scevgep590.3 = getelementptr i8, i8* %call1, i64 %353
  %scevgep590591.3 = bitcast i8* %scevgep590.3 to double*
  %_p_scalar_592.3 = load double, double* %scevgep590591.3, align 8, !alias.scope !90, !noalias !95
  br label %polly.loop_header573.3

polly.loop_header573.3:                           ; preds = %polly.loop_header573.3, %polly.loop_exit575.2
  %polly.indvar576.3 = phi i64 [ 0, %polly.loop_exit575.2 ], [ %polly.indvar_next577.3, %polly.loop_header573.3 ]
  %354 = mul nuw nsw i64 %polly.indvar576.3, 480
  %355 = add nuw nsw i64 %354, %222
  %scevgep579.3 = getelementptr i8, i8* %call1, i64 %355
  %scevgep579580.3 = bitcast i8* %scevgep579.3 to double*
  %_p_scalar_581.3 = load double, double* %scevgep579580.3, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.3 = fmul fast double %_p_scalar_585.3, %_p_scalar_581.3
  %polly.access.mul.Packed_MemRef_call2434586.3 = shl nsw i64 %polly.indvar576.3, 2
  %polly.access.add.Packed_MemRef_call2434587.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.3, %polly.indvar564
  %polly.access.Packed_MemRef_call2434588.3 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.3
  %_p_scalar_589.3 = load double, double* %polly.access.Packed_MemRef_call2434588.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_592.3, %_p_scalar_589.3
  %356 = shl nuw nsw i64 %polly.indvar576.3, 3
  %357 = add nuw nsw i64 %356, %207
  %scevgep593.3 = getelementptr i8, i8* %call, i64 %357
  %scevgep593594.3 = bitcast i8* %scevgep593.3 to double*
  %_p_scalar_595.3 = load double, double* %scevgep593594.3, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_595.3
  store double %p_add42.i.3, double* %scevgep593594.3, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.3 = add nuw nsw i64 %polly.indvar576.3, 1
  %358 = add nuw nsw i64 %indvars.iv838, 2
  %exitcond842.3.not = icmp eq i64 %polly.indvar576.3, %358
  br i1 %exitcond842.3.not, label %polly.loop_exit575.3, label %polly.loop_header573.3

polly.loop_exit575.3:                             ; preds = %polly.loop_header573.3
  %polly.access.add.Packed_MemRef_call2434583.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582.4, %polly.indvar564
  %polly.access.Packed_MemRef_call2434584.4 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.4
  %_p_scalar_585.4 = load double, double* %polly.access.Packed_MemRef_call2434584.4, align 8
  %359 = add nuw nsw i64 %209, %222
  %scevgep590.4 = getelementptr i8, i8* %call1, i64 %359
  %scevgep590591.4 = bitcast i8* %scevgep590.4 to double*
  %_p_scalar_592.4 = load double, double* %scevgep590591.4, align 8, !alias.scope !90, !noalias !95
  br label %polly.loop_header573.4

polly.loop_header573.4:                           ; preds = %polly.loop_header573.4, %polly.loop_exit575.3
  %polly.indvar576.4 = phi i64 [ 0, %polly.loop_exit575.3 ], [ %polly.indvar_next577.4, %polly.loop_header573.4 ]
  %360 = mul nuw nsw i64 %polly.indvar576.4, 480
  %361 = add nuw nsw i64 %360, %222
  %scevgep579.4 = getelementptr i8, i8* %call1, i64 %361
  %scevgep579580.4 = bitcast i8* %scevgep579.4 to double*
  %_p_scalar_581.4 = load double, double* %scevgep579580.4, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.4 = fmul fast double %_p_scalar_585.4, %_p_scalar_581.4
  %polly.access.mul.Packed_MemRef_call2434586.4 = shl nsw i64 %polly.indvar576.4, 2
  %polly.access.add.Packed_MemRef_call2434587.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.4, %polly.indvar564
  %polly.access.Packed_MemRef_call2434588.4 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.4
  %_p_scalar_589.4 = load double, double* %polly.access.Packed_MemRef_call2434588.4, align 8
  %p_mul37.i.4 = fmul fast double %_p_scalar_592.4, %_p_scalar_589.4
  %362 = shl nuw nsw i64 %polly.indvar576.4, 3
  %363 = add nuw nsw i64 %362, %210
  %scevgep593.4 = getelementptr i8, i8* %call, i64 %363
  %scevgep593594.4 = bitcast i8* %scevgep593.4 to double*
  %_p_scalar_595.4 = load double, double* %scevgep593594.4, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_595.4
  store double %p_add42.i.4, double* %scevgep593594.4, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.4 = add nuw nsw i64 %polly.indvar576.4, 1
  %364 = add nuw nsw i64 %indvars.iv838, 3
  %exitcond842.4.not = icmp eq i64 %polly.indvar576.4, %364
  br i1 %exitcond842.4.not, label %polly.loop_exit575.4, label %polly.loop_header573.4

polly.loop_exit575.4:                             ; preds = %polly.loop_header573.4
  %polly.access.add.Packed_MemRef_call2434583.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582.5, %polly.indvar564
  %polly.access.Packed_MemRef_call2434584.5 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.5
  %_p_scalar_585.5 = load double, double* %polly.access.Packed_MemRef_call2434584.5, align 8
  %365 = add nuw nsw i64 %212, %222
  %scevgep590.5 = getelementptr i8, i8* %call1, i64 %365
  %scevgep590591.5 = bitcast i8* %scevgep590.5 to double*
  %_p_scalar_592.5 = load double, double* %scevgep590591.5, align 8, !alias.scope !90, !noalias !95
  br label %polly.loop_header573.5

polly.loop_header573.5:                           ; preds = %polly.loop_header573.5, %polly.loop_exit575.4
  %polly.indvar576.5 = phi i64 [ 0, %polly.loop_exit575.4 ], [ %polly.indvar_next577.5, %polly.loop_header573.5 ]
  %366 = mul nuw nsw i64 %polly.indvar576.5, 480
  %367 = add nuw nsw i64 %366, %222
  %scevgep579.5 = getelementptr i8, i8* %call1, i64 %367
  %scevgep579580.5 = bitcast i8* %scevgep579.5 to double*
  %_p_scalar_581.5 = load double, double* %scevgep579580.5, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.5 = fmul fast double %_p_scalar_585.5, %_p_scalar_581.5
  %polly.access.mul.Packed_MemRef_call2434586.5 = shl nsw i64 %polly.indvar576.5, 2
  %polly.access.add.Packed_MemRef_call2434587.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.5, %polly.indvar564
  %polly.access.Packed_MemRef_call2434588.5 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.5
  %_p_scalar_589.5 = load double, double* %polly.access.Packed_MemRef_call2434588.5, align 8
  %p_mul37.i.5 = fmul fast double %_p_scalar_592.5, %_p_scalar_589.5
  %368 = shl nuw nsw i64 %polly.indvar576.5, 3
  %369 = add nuw nsw i64 %368, %213
  %scevgep593.5 = getelementptr i8, i8* %call, i64 %369
  %scevgep593594.5 = bitcast i8* %scevgep593.5 to double*
  %_p_scalar_595.5 = load double, double* %scevgep593594.5, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_595.5
  store double %p_add42.i.5, double* %scevgep593594.5, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.5 = add nuw nsw i64 %polly.indvar576.5, 1
  %370 = add nuw nsw i64 %indvars.iv838, 4
  %exitcond842.5.not = icmp eq i64 %polly.indvar576.5, %370
  br i1 %exitcond842.5.not, label %polly.loop_exit575.5, label %polly.loop_header573.5

polly.loop_exit575.5:                             ; preds = %polly.loop_header573.5
  %polly.access.add.Packed_MemRef_call2434583.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582.6, %polly.indvar564
  %polly.access.Packed_MemRef_call2434584.6 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.6
  %_p_scalar_585.6 = load double, double* %polly.access.Packed_MemRef_call2434584.6, align 8
  %371 = add nuw nsw i64 %215, %222
  %scevgep590.6 = getelementptr i8, i8* %call1, i64 %371
  %scevgep590591.6 = bitcast i8* %scevgep590.6 to double*
  %_p_scalar_592.6 = load double, double* %scevgep590591.6, align 8, !alias.scope !90, !noalias !95
  br label %polly.loop_header573.6

polly.loop_header573.6:                           ; preds = %polly.loop_header573.6, %polly.loop_exit575.5
  %polly.indvar576.6 = phi i64 [ 0, %polly.loop_exit575.5 ], [ %polly.indvar_next577.6, %polly.loop_header573.6 ]
  %372 = mul nuw nsw i64 %polly.indvar576.6, 480
  %373 = add nuw nsw i64 %372, %222
  %scevgep579.6 = getelementptr i8, i8* %call1, i64 %373
  %scevgep579580.6 = bitcast i8* %scevgep579.6 to double*
  %_p_scalar_581.6 = load double, double* %scevgep579580.6, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.6 = fmul fast double %_p_scalar_585.6, %_p_scalar_581.6
  %polly.access.mul.Packed_MemRef_call2434586.6 = shl nsw i64 %polly.indvar576.6, 2
  %polly.access.add.Packed_MemRef_call2434587.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.6, %polly.indvar564
  %polly.access.Packed_MemRef_call2434588.6 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.6
  %_p_scalar_589.6 = load double, double* %polly.access.Packed_MemRef_call2434588.6, align 8
  %p_mul37.i.6 = fmul fast double %_p_scalar_592.6, %_p_scalar_589.6
  %374 = shl nuw nsw i64 %polly.indvar576.6, 3
  %375 = add nuw nsw i64 %374, %216
  %scevgep593.6 = getelementptr i8, i8* %call, i64 %375
  %scevgep593594.6 = bitcast i8* %scevgep593.6 to double*
  %_p_scalar_595.6 = load double, double* %scevgep593594.6, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_595.6
  store double %p_add42.i.6, double* %scevgep593594.6, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.6 = add nuw nsw i64 %polly.indvar576.6, 1
  %376 = add nuw nsw i64 %indvars.iv838, 5
  %exitcond842.6.not = icmp eq i64 %polly.indvar576.6, %376
  br i1 %exitcond842.6.not, label %polly.loop_exit575.6, label %polly.loop_header573.6

polly.loop_exit575.6:                             ; preds = %polly.loop_header573.6
  %polly.access.add.Packed_MemRef_call2434583.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582.7, %polly.indvar564
  %polly.access.Packed_MemRef_call2434584.7 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.7
  %_p_scalar_585.7 = load double, double* %polly.access.Packed_MemRef_call2434584.7, align 8
  %377 = add nuw nsw i64 %218, %222
  %scevgep590.7 = getelementptr i8, i8* %call1, i64 %377
  %scevgep590591.7 = bitcast i8* %scevgep590.7 to double*
  %_p_scalar_592.7 = load double, double* %scevgep590591.7, align 8, !alias.scope !90, !noalias !95
  br label %polly.loop_header573.7

polly.loop_header573.7:                           ; preds = %polly.loop_header573.7, %polly.loop_exit575.6
  %polly.indvar576.7 = phi i64 [ 0, %polly.loop_exit575.6 ], [ %polly.indvar_next577.7, %polly.loop_header573.7 ]
  %378 = mul nuw nsw i64 %polly.indvar576.7, 480
  %379 = add nuw nsw i64 %378, %222
  %scevgep579.7 = getelementptr i8, i8* %call1, i64 %379
  %scevgep579580.7 = bitcast i8* %scevgep579.7 to double*
  %_p_scalar_581.7 = load double, double* %scevgep579580.7, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.7 = fmul fast double %_p_scalar_585.7, %_p_scalar_581.7
  %polly.access.mul.Packed_MemRef_call2434586.7 = shl nsw i64 %polly.indvar576.7, 2
  %polly.access.add.Packed_MemRef_call2434587.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.7, %polly.indvar564
  %polly.access.Packed_MemRef_call2434588.7 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.7
  %_p_scalar_589.7 = load double, double* %polly.access.Packed_MemRef_call2434588.7, align 8
  %p_mul37.i.7 = fmul fast double %_p_scalar_592.7, %_p_scalar_589.7
  %380 = shl nuw nsw i64 %polly.indvar576.7, 3
  %381 = add nuw nsw i64 %380, %219
  %scevgep593.7 = getelementptr i8, i8* %call, i64 %381
  %scevgep593594.7 = bitcast i8* %scevgep593.7 to double*
  %_p_scalar_595.7 = load double, double* %scevgep593594.7, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_595.7
  store double %p_add42.i.7, double* %scevgep593594.7, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.7 = add nuw nsw i64 %polly.indvar576.7, 1
  %exitcond842.7.not = icmp eq i64 %polly.indvar576.7, %220
  br i1 %exitcond842.7.not, label %polly.loop_exit575.7, label %polly.loop_header573.7

polly.loop_exit575.7:                             ; preds = %polly.loop_header573.7
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next565, 4
  br i1 %exitcond844.not, label %polly.loop_exit563, label %polly.loop_header561

polly.loop_header787.1:                           ; preds = %polly.loop_exit795, %polly.loop_exit795.1
  %polly.indvar790.1 = phi i64 [ %polly.indvar_next791.1, %polly.loop_exit795.1 ], [ 0, %polly.loop_exit795 ]
  %382 = mul nuw nsw i64 %polly.indvar790.1, 480
  %383 = trunc i64 %polly.indvar790.1 to i32
  %broadcast.splatinsert1161 = insertelement <4 x i32> poison, i32 %383, i32 0
  %broadcast.splat1162 = shufflevector <4 x i32> %broadcast.splatinsert1161, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_header787.1
  %index1155 = phi i64 [ 0, %polly.loop_header787.1 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1159 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1 ], [ %vec.ind.next1160, %vector.body1153 ]
  %384 = add nuw nsw <4 x i64> %vec.ind1159, <i64 32, i64 32, i64 32, i64 32>
  %385 = trunc <4 x i64> %384 to <4 x i32>
  %386 = mul <4 x i32> %broadcast.splat1162, %385
  %387 = add <4 x i32> %386, <i32 1, i32 1, i32 1, i32 1>
  %388 = urem <4 x i32> %387, <i32 80, i32 80, i32 80, i32 80>
  %389 = sitofp <4 x i32> %388 to <4 x double>
  %390 = fmul fast <4 x double> %389, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %391 = extractelement <4 x i64> %384, i32 0
  %392 = shl i64 %391, 3
  %393 = add i64 %392, %382
  %394 = getelementptr i8, i8* %call1, i64 %393
  %395 = bitcast i8* %394 to <4 x double>*
  store <4 x double> %390, <4 x double>* %395, align 8, !alias.scope !99, !noalias !104
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1160 = add <4 x i64> %vec.ind1159, <i64 4, i64 4, i64 4, i64 4>
  %396 = icmp eq i64 %index.next1156, 28
  br i1 %396, label %polly.loop_exit795.1, label %vector.body1153, !llvm.loop !106

polly.loop_exit795.1:                             ; preds = %vector.body1153
  %polly.indvar_next791.1 = add nuw nsw i64 %polly.indvar790.1, 1
  %exitcond852.1.not = icmp eq i64 %polly.indvar_next791.1, 32
  br i1 %exitcond852.1.not, label %polly.loop_header787.1872, label %polly.loop_header787.1

polly.loop_header787.1872:                        ; preds = %polly.loop_exit795.1, %polly.loop_exit795.1883
  %polly.indvar790.1871 = phi i64 [ %polly.indvar_next791.1881, %polly.loop_exit795.1883 ], [ 0, %polly.loop_exit795.1 ]
  %397 = add nuw nsw i64 %polly.indvar790.1871, 32
  %398 = mul nuw nsw i64 %397, 480
  %399 = trunc i64 %397 to i32
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %polly.loop_header787.1872
  %index1167 = phi i64 [ 0, %polly.loop_header787.1872 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1173 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.1872 ], [ %vec.ind.next1174, %vector.body1165 ]
  %400 = mul <4 x i32> %vec.ind1173, %broadcast.splat1176
  %401 = add <4 x i32> %400, <i32 1, i32 1, i32 1, i32 1>
  %402 = urem <4 x i32> %401, <i32 80, i32 80, i32 80, i32 80>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %405 = shl i64 %index1167, 3
  %406 = add i64 %405, %398
  %407 = getelementptr i8, i8* %call1, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %404, <4 x double>* %408, align 8, !alias.scope !99, !noalias !104
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1174 = add <4 x i32> %vec.ind1173, <i32 4, i32 4, i32 4, i32 4>
  %409 = icmp eq i64 %index.next1168, 32
  br i1 %409, label %polly.loop_exit795.1883, label %vector.body1165, !llvm.loop !107

polly.loop_exit795.1883:                          ; preds = %vector.body1165
  %polly.indvar_next791.1881 = add nuw nsw i64 %polly.indvar790.1871, 1
  %exitcond852.1882.not = icmp eq i64 %polly.indvar_next791.1881, 32
  br i1 %exitcond852.1882.not, label %polly.loop_header787.1.1, label %polly.loop_header787.1872

polly.loop_header787.1.1:                         ; preds = %polly.loop_exit795.1883, %polly.loop_exit795.1.1
  %polly.indvar790.1.1 = phi i64 [ %polly.indvar_next791.1.1, %polly.loop_exit795.1.1 ], [ 0, %polly.loop_exit795.1883 ]
  %410 = add nuw nsw i64 %polly.indvar790.1.1, 32
  %411 = mul nuw nsw i64 %410, 480
  %412 = trunc i64 %410 to i32
  %broadcast.splatinsert1187 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1188 = shufflevector <4 x i32> %broadcast.splatinsert1187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %polly.loop_header787.1.1
  %index1181 = phi i64 [ 0, %polly.loop_header787.1.1 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1185 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.1 ], [ %vec.ind.next1186, %vector.body1179 ]
  %413 = add nuw nsw <4 x i64> %vec.ind1185, <i64 32, i64 32, i64 32, i64 32>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1188, %414
  %416 = add <4 x i32> %415, <i32 1, i32 1, i32 1, i32 1>
  %417 = urem <4 x i32> %416, <i32 80, i32 80, i32 80, i32 80>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add i64 %421, %411
  %423 = getelementptr i8, i8* %call1, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !99, !noalias !104
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1186 = add <4 x i64> %vec.ind1185, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next1182, 28
  br i1 %425, label %polly.loop_exit795.1.1, label %vector.body1179, !llvm.loop !108

polly.loop_exit795.1.1:                           ; preds = %vector.body1179
  %polly.indvar_next791.1.1 = add nuw nsw i64 %polly.indvar790.1.1, 1
  %exitcond852.1.1.not = icmp eq i64 %polly.indvar_next791.1.1, 32
  br i1 %exitcond852.1.1.not, label %polly.loop_header787.2, label %polly.loop_header787.1.1

polly.loop_header787.2:                           ; preds = %polly.loop_exit795.1.1, %polly.loop_exit795.2
  %polly.indvar790.2 = phi i64 [ %polly.indvar_next791.2, %polly.loop_exit795.2 ], [ 0, %polly.loop_exit795.1.1 ]
  %426 = add nuw nsw i64 %polly.indvar790.2, 64
  %427 = mul nuw nsw i64 %426, 480
  %428 = trunc i64 %426 to i32
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %428, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %polly.loop_header787.2
  %index1193 = phi i64 [ 0, %polly.loop_header787.2 ], [ %index.next1194, %vector.body1191 ]
  %vec.ind1199 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.2 ], [ %vec.ind.next1200, %vector.body1191 ]
  %429 = mul <4 x i32> %vec.ind1199, %broadcast.splat1202
  %430 = add <4 x i32> %429, <i32 1, i32 1, i32 1, i32 1>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %434 = shl i64 %index1193, 3
  %435 = add i64 %434, %427
  %436 = getelementptr i8, i8* %call1, i64 %435
  %437 = bitcast i8* %436 to <4 x double>*
  store <4 x double> %433, <4 x double>* %437, align 8, !alias.scope !99, !noalias !104
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1200 = add <4 x i32> %vec.ind1199, <i32 4, i32 4, i32 4, i32 4>
  %438 = icmp eq i64 %index.next1194, 32
  br i1 %438, label %polly.loop_exit795.2, label %vector.body1191, !llvm.loop !109

polly.loop_exit795.2:                             ; preds = %vector.body1191
  %polly.indvar_next791.2 = add nuw nsw i64 %polly.indvar790.2, 1
  %exitcond852.2.not = icmp eq i64 %polly.indvar_next791.2, 16
  br i1 %exitcond852.2.not, label %polly.loop_header787.1.2, label %polly.loop_header787.2

polly.loop_header787.1.2:                         ; preds = %polly.loop_exit795.2, %polly.loop_exit795.1.2
  %polly.indvar790.1.2 = phi i64 [ %polly.indvar_next791.1.2, %polly.loop_exit795.1.2 ], [ 0, %polly.loop_exit795.2 ]
  %439 = add nuw nsw i64 %polly.indvar790.1.2, 64
  %440 = mul nuw nsw i64 %439, 480
  %441 = trunc i64 %439 to i32
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %441, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %polly.loop_header787.1.2
  %index1207 = phi i64 [ 0, %polly.loop_header787.1.2 ], [ %index.next1208, %vector.body1205 ]
  %vec.ind1211 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.2 ], [ %vec.ind.next1212, %vector.body1205 ]
  %442 = add nuw nsw <4 x i64> %vec.ind1211, <i64 32, i64 32, i64 32, i64 32>
  %443 = trunc <4 x i64> %442 to <4 x i32>
  %444 = mul <4 x i32> %broadcast.splat1214, %443
  %445 = add <4 x i32> %444, <i32 1, i32 1, i32 1, i32 1>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %449 = extractelement <4 x i64> %442, i32 0
  %450 = shl i64 %449, 3
  %451 = add i64 %450, %440
  %452 = getelementptr i8, i8* %call1, i64 %451
  %453 = bitcast i8* %452 to <4 x double>*
  store <4 x double> %448, <4 x double>* %453, align 8, !alias.scope !99, !noalias !104
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1212 = add <4 x i64> %vec.ind1211, <i64 4, i64 4, i64 4, i64 4>
  %454 = icmp eq i64 %index.next1208, 28
  br i1 %454, label %polly.loop_exit795.1.2, label %vector.body1205, !llvm.loop !110

polly.loop_exit795.1.2:                           ; preds = %vector.body1205
  %polly.indvar_next791.1.2 = add nuw nsw i64 %polly.indvar790.1.2, 1
  %exitcond852.1.2.not = icmp eq i64 %polly.indvar_next791.1.2, 16
  br i1 %exitcond852.1.2.not, label %init_array.exit, label %polly.loop_header787.1.2

polly.loop_header761.1:                           ; preds = %polly.loop_exit769, %polly.loop_exit769.1
  %polly.indvar764.1 = phi i64 [ %polly.indvar_next765.1, %polly.loop_exit769.1 ], [ 0, %polly.loop_exit769 ]
  %455 = mul nuw nsw i64 %polly.indvar764.1, 480
  %456 = trunc i64 %polly.indvar764.1 to i32
  %broadcast.splatinsert1083 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1084 = shufflevector <4 x i32> %broadcast.splatinsert1083, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %polly.loop_header761.1
  %index1077 = phi i64 [ 0, %polly.loop_header761.1 ], [ %index.next1078, %vector.body1075 ]
  %vec.ind1081 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1 ], [ %vec.ind.next1082, %vector.body1075 ]
  %457 = add nuw nsw <4 x i64> %vec.ind1081, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat1084, %458
  %460 = add <4 x i32> %459, <i32 2, i32 2, i32 2, i32 2>
  %461 = urem <4 x i32> %460, <i32 60, i32 60, i32 60, i32 60>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add i64 %465, %455
  %467 = getelementptr i8, i8* %call2, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !100, !noalias !102
  %index.next1078 = add i64 %index1077, 4
  %vec.ind.next1082 = add <4 x i64> %vec.ind1081, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next1078, 28
  br i1 %469, label %polly.loop_exit769.1, label %vector.body1075, !llvm.loop !111

polly.loop_exit769.1:                             ; preds = %vector.body1075
  %polly.indvar_next765.1 = add nuw nsw i64 %polly.indvar764.1, 1
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next765.1, 32
  br i1 %exitcond858.1.not, label %polly.loop_header761.1886, label %polly.loop_header761.1

polly.loop_header761.1886:                        ; preds = %polly.loop_exit769.1, %polly.loop_exit769.1897
  %polly.indvar764.1885 = phi i64 [ %polly.indvar_next765.1895, %polly.loop_exit769.1897 ], [ 0, %polly.loop_exit769.1 ]
  %470 = add nuw nsw i64 %polly.indvar764.1885, 32
  %471 = mul nuw nsw i64 %470, 480
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1097 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1098 = shufflevector <4 x i32> %broadcast.splatinsert1097, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.body1087, %polly.loop_header761.1886
  %index1089 = phi i64 [ 0, %polly.loop_header761.1886 ], [ %index.next1090, %vector.body1087 ]
  %vec.ind1095 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.1886 ], [ %vec.ind.next1096, %vector.body1087 ]
  %473 = mul <4 x i32> %vec.ind1095, %broadcast.splat1098
  %474 = add <4 x i32> %473, <i32 2, i32 2, i32 2, i32 2>
  %475 = urem <4 x i32> %474, <i32 60, i32 60, i32 60, i32 60>
  %476 = sitofp <4 x i32> %475 to <4 x double>
  %477 = fmul fast <4 x double> %476, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %478 = shl i64 %index1089, 3
  %479 = add i64 %478, %471
  %480 = getelementptr i8, i8* %call2, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %477, <4 x double>* %481, align 8, !alias.scope !100, !noalias !102
  %index.next1090 = add i64 %index1089, 4
  %vec.ind.next1096 = add <4 x i32> %vec.ind1095, <i32 4, i32 4, i32 4, i32 4>
  %482 = icmp eq i64 %index.next1090, 32
  br i1 %482, label %polly.loop_exit769.1897, label %vector.body1087, !llvm.loop !112

polly.loop_exit769.1897:                          ; preds = %vector.body1087
  %polly.indvar_next765.1895 = add nuw nsw i64 %polly.indvar764.1885, 1
  %exitcond858.1896.not = icmp eq i64 %polly.indvar_next765.1895, 32
  br i1 %exitcond858.1896.not, label %polly.loop_header761.1.1, label %polly.loop_header761.1886

polly.loop_header761.1.1:                         ; preds = %polly.loop_exit769.1897, %polly.loop_exit769.1.1
  %polly.indvar764.1.1 = phi i64 [ %polly.indvar_next765.1.1, %polly.loop_exit769.1.1 ], [ 0, %polly.loop_exit769.1897 ]
  %483 = add nuw nsw i64 %polly.indvar764.1.1, 32
  %484 = mul nuw nsw i64 %483, 480
  %485 = trunc i64 %483 to i32
  %broadcast.splatinsert1109 = insertelement <4 x i32> poison, i32 %485, i32 0
  %broadcast.splat1110 = shufflevector <4 x i32> %broadcast.splatinsert1109, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %polly.loop_header761.1.1
  %index1103 = phi i64 [ 0, %polly.loop_header761.1.1 ], [ %index.next1104, %vector.body1101 ]
  %vec.ind1107 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.1 ], [ %vec.ind.next1108, %vector.body1101 ]
  %486 = add nuw nsw <4 x i64> %vec.ind1107, <i64 32, i64 32, i64 32, i64 32>
  %487 = trunc <4 x i64> %486 to <4 x i32>
  %488 = mul <4 x i32> %broadcast.splat1110, %487
  %489 = add <4 x i32> %488, <i32 2, i32 2, i32 2, i32 2>
  %490 = urem <4 x i32> %489, <i32 60, i32 60, i32 60, i32 60>
  %491 = sitofp <4 x i32> %490 to <4 x double>
  %492 = fmul fast <4 x double> %491, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %493 = extractelement <4 x i64> %486, i32 0
  %494 = shl i64 %493, 3
  %495 = add i64 %494, %484
  %496 = getelementptr i8, i8* %call2, i64 %495
  %497 = bitcast i8* %496 to <4 x double>*
  store <4 x double> %492, <4 x double>* %497, align 8, !alias.scope !100, !noalias !102
  %index.next1104 = add i64 %index1103, 4
  %vec.ind.next1108 = add <4 x i64> %vec.ind1107, <i64 4, i64 4, i64 4, i64 4>
  %498 = icmp eq i64 %index.next1104, 28
  br i1 %498, label %polly.loop_exit769.1.1, label %vector.body1101, !llvm.loop !113

polly.loop_exit769.1.1:                           ; preds = %vector.body1101
  %polly.indvar_next765.1.1 = add nuw nsw i64 %polly.indvar764.1.1, 1
  %exitcond858.1.1.not = icmp eq i64 %polly.indvar_next765.1.1, 32
  br i1 %exitcond858.1.1.not, label %polly.loop_header761.2, label %polly.loop_header761.1.1

polly.loop_header761.2:                           ; preds = %polly.loop_exit769.1.1, %polly.loop_exit769.2
  %polly.indvar764.2 = phi i64 [ %polly.indvar_next765.2, %polly.loop_exit769.2 ], [ 0, %polly.loop_exit769.1.1 ]
  %499 = add nuw nsw i64 %polly.indvar764.2, 64
  %500 = mul nuw nsw i64 %499, 480
  %501 = trunc i64 %499 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %501, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %polly.loop_header761.2
  %index1115 = phi i64 [ 0, %polly.loop_header761.2 ], [ %index.next1116, %vector.body1113 ]
  %vec.ind1121 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.2 ], [ %vec.ind.next1122, %vector.body1113 ]
  %502 = mul <4 x i32> %vec.ind1121, %broadcast.splat1124
  %503 = add <4 x i32> %502, <i32 2, i32 2, i32 2, i32 2>
  %504 = urem <4 x i32> %503, <i32 60, i32 60, i32 60, i32 60>
  %505 = sitofp <4 x i32> %504 to <4 x double>
  %506 = fmul fast <4 x double> %505, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %507 = shl i64 %index1115, 3
  %508 = add i64 %507, %500
  %509 = getelementptr i8, i8* %call2, i64 %508
  %510 = bitcast i8* %509 to <4 x double>*
  store <4 x double> %506, <4 x double>* %510, align 8, !alias.scope !100, !noalias !102
  %index.next1116 = add i64 %index1115, 4
  %vec.ind.next1122 = add <4 x i32> %vec.ind1121, <i32 4, i32 4, i32 4, i32 4>
  %511 = icmp eq i64 %index.next1116, 32
  br i1 %511, label %polly.loop_exit769.2, label %vector.body1113, !llvm.loop !114

polly.loop_exit769.2:                             ; preds = %vector.body1113
  %polly.indvar_next765.2 = add nuw nsw i64 %polly.indvar764.2, 1
  %exitcond858.2.not = icmp eq i64 %polly.indvar_next765.2, 16
  br i1 %exitcond858.2.not, label %polly.loop_header761.1.2, label %polly.loop_header761.2

polly.loop_header761.1.2:                         ; preds = %polly.loop_exit769.2, %polly.loop_exit769.1.2
  %polly.indvar764.1.2 = phi i64 [ %polly.indvar_next765.1.2, %polly.loop_exit769.1.2 ], [ 0, %polly.loop_exit769.2 ]
  %512 = add nuw nsw i64 %polly.indvar764.1.2, 64
  %513 = mul nuw nsw i64 %512, 480
  %514 = trunc i64 %512 to i32
  %broadcast.splatinsert1135 = insertelement <4 x i32> poison, i32 %514, i32 0
  %broadcast.splat1136 = shufflevector <4 x i32> %broadcast.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header761.1.2
  %index1129 = phi i64 [ 0, %polly.loop_header761.1.2 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1133 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.2 ], [ %vec.ind.next1134, %vector.body1127 ]
  %515 = add nuw nsw <4 x i64> %vec.ind1133, <i64 32, i64 32, i64 32, i64 32>
  %516 = trunc <4 x i64> %515 to <4 x i32>
  %517 = mul <4 x i32> %broadcast.splat1136, %516
  %518 = add <4 x i32> %517, <i32 2, i32 2, i32 2, i32 2>
  %519 = urem <4 x i32> %518, <i32 60, i32 60, i32 60, i32 60>
  %520 = sitofp <4 x i32> %519 to <4 x double>
  %521 = fmul fast <4 x double> %520, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %522 = extractelement <4 x i64> %515, i32 0
  %523 = shl i64 %522, 3
  %524 = add i64 %523, %513
  %525 = getelementptr i8, i8* %call2, i64 %524
  %526 = bitcast i8* %525 to <4 x double>*
  store <4 x double> %521, <4 x double>* %526, align 8, !alias.scope !100, !noalias !102
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1134 = add <4 x i64> %vec.ind1133, <i64 4, i64 4, i64 4, i64 4>
  %527 = icmp eq i64 %index.next1130, 28
  br i1 %527, label %polly.loop_exit769.1.2, label %vector.body1127, !llvm.loop !115

polly.loop_exit769.1.2:                           ; preds = %vector.body1127
  %polly.indvar_next765.1.2 = add nuw nsw i64 %polly.indvar764.1.2, 1
  %exitcond858.1.2.not = icmp eq i64 %polly.indvar_next765.1.2, 16
  br i1 %exitcond858.1.2.not, label %polly.loop_header787, label %polly.loop_header761.1.2

polly.loop_header734.1:                           ; preds = %polly.loop_exit742, %polly.loop_exit742.1
  %polly.indvar737.1 = phi i64 [ %polly.indvar_next738.1, %polly.loop_exit742.1 ], [ 0, %polly.loop_exit742 ]
  %528 = mul nuw nsw i64 %polly.indvar737.1, 640
  %529 = trunc i64 %polly.indvar737.1 to i32
  %broadcast.splatinsert969 = insertelement <4 x i32> poison, i32 %529, i32 0
  %broadcast.splat970 = shufflevector <4 x i32> %broadcast.splatinsert969, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %polly.loop_header734.1
  %index963 = phi i64 [ 0, %polly.loop_header734.1 ], [ %index.next964, %vector.body961 ]
  %vec.ind967 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1 ], [ %vec.ind.next968, %vector.body961 ]
  %530 = add nuw nsw <4 x i64> %vec.ind967, <i64 32, i64 32, i64 32, i64 32>
  %531 = trunc <4 x i64> %530 to <4 x i32>
  %532 = mul <4 x i32> %broadcast.splat970, %531
  %533 = add <4 x i32> %532, <i32 3, i32 3, i32 3, i32 3>
  %534 = urem <4 x i32> %533, <i32 80, i32 80, i32 80, i32 80>
  %535 = sitofp <4 x i32> %534 to <4 x double>
  %536 = fmul fast <4 x double> %535, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %537 = extractelement <4 x i64> %530, i32 0
  %538 = shl i64 %537, 3
  %539 = add nuw nsw i64 %538, %528
  %540 = getelementptr i8, i8* %call, i64 %539
  %541 = bitcast i8* %540 to <4 x double>*
  store <4 x double> %536, <4 x double>* %541, align 8, !alias.scope !96, !noalias !98
  %index.next964 = add i64 %index963, 4
  %vec.ind.next968 = add <4 x i64> %vec.ind967, <i64 4, i64 4, i64 4, i64 4>
  %542 = icmp eq i64 %index.next964, 32
  br i1 %542, label %polly.loop_exit742.1, label %vector.body961, !llvm.loop !116

polly.loop_exit742.1:                             ; preds = %vector.body961
  %polly.indvar_next738.1 = add nuw nsw i64 %polly.indvar737.1, 1
  %exitcond867.1.not = icmp eq i64 %polly.indvar_next738.1, 32
  br i1 %exitcond867.1.not, label %polly.loop_header734.2, label %polly.loop_header734.1

polly.loop_header734.2:                           ; preds = %polly.loop_exit742.1, %polly.loop_exit742.2
  %polly.indvar737.2 = phi i64 [ %polly.indvar_next738.2, %polly.loop_exit742.2 ], [ 0, %polly.loop_exit742.1 ]
  %543 = mul nuw nsw i64 %polly.indvar737.2, 640
  %544 = trunc i64 %polly.indvar737.2 to i32
  %broadcast.splatinsert981 = insertelement <4 x i32> poison, i32 %544, i32 0
  %broadcast.splat982 = shufflevector <4 x i32> %broadcast.splatinsert981, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %polly.loop_header734.2
  %index975 = phi i64 [ 0, %polly.loop_header734.2 ], [ %index.next976, %vector.body973 ]
  %vec.ind979 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2 ], [ %vec.ind.next980, %vector.body973 ]
  %545 = add nuw nsw <4 x i64> %vec.ind979, <i64 64, i64 64, i64 64, i64 64>
  %546 = trunc <4 x i64> %545 to <4 x i32>
  %547 = mul <4 x i32> %broadcast.splat982, %546
  %548 = add <4 x i32> %547, <i32 3, i32 3, i32 3, i32 3>
  %549 = urem <4 x i32> %548, <i32 80, i32 80, i32 80, i32 80>
  %550 = sitofp <4 x i32> %549 to <4 x double>
  %551 = fmul fast <4 x double> %550, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %552 = extractelement <4 x i64> %545, i32 0
  %553 = shl i64 %552, 3
  %554 = add nuw nsw i64 %553, %543
  %555 = getelementptr i8, i8* %call, i64 %554
  %556 = bitcast i8* %555 to <4 x double>*
  store <4 x double> %551, <4 x double>* %556, align 8, !alias.scope !96, !noalias !98
  %index.next976 = add i64 %index975, 4
  %vec.ind.next980 = add <4 x i64> %vec.ind979, <i64 4, i64 4, i64 4, i64 4>
  %557 = icmp eq i64 %index.next976, 16
  br i1 %557, label %polly.loop_exit742.2, label %vector.body973, !llvm.loop !117

polly.loop_exit742.2:                             ; preds = %vector.body973
  %polly.indvar_next738.2 = add nuw nsw i64 %polly.indvar737.2, 1
  %exitcond867.2.not = icmp eq i64 %polly.indvar_next738.2, 32
  br i1 %exitcond867.2.not, label %polly.loop_header734.1900, label %polly.loop_header734.2

polly.loop_header734.1900:                        ; preds = %polly.loop_exit742.2, %polly.loop_exit742.1911
  %polly.indvar737.1899 = phi i64 [ %polly.indvar_next738.1909, %polly.loop_exit742.1911 ], [ 0, %polly.loop_exit742.2 ]
  %558 = add nuw nsw i64 %polly.indvar737.1899, 32
  %559 = mul nuw nsw i64 %558, 640
  %560 = trunc i64 %558 to i32
  %broadcast.splatinsert995 = insertelement <4 x i32> poison, i32 %560, i32 0
  %broadcast.splat996 = shufflevector <4 x i32> %broadcast.splatinsert995, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body985

vector.body985:                                   ; preds = %vector.body985, %polly.loop_header734.1900
  %index987 = phi i64 [ 0, %polly.loop_header734.1900 ], [ %index.next988, %vector.body985 ]
  %vec.ind993 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.1900 ], [ %vec.ind.next994, %vector.body985 ]
  %561 = mul <4 x i32> %vec.ind993, %broadcast.splat996
  %562 = add <4 x i32> %561, <i32 3, i32 3, i32 3, i32 3>
  %563 = urem <4 x i32> %562, <i32 80, i32 80, i32 80, i32 80>
  %564 = sitofp <4 x i32> %563 to <4 x double>
  %565 = fmul fast <4 x double> %564, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %566 = shl i64 %index987, 3
  %567 = add nuw nsw i64 %566, %559
  %568 = getelementptr i8, i8* %call, i64 %567
  %569 = bitcast i8* %568 to <4 x double>*
  store <4 x double> %565, <4 x double>* %569, align 8, !alias.scope !96, !noalias !98
  %index.next988 = add i64 %index987, 4
  %vec.ind.next994 = add <4 x i32> %vec.ind993, <i32 4, i32 4, i32 4, i32 4>
  %570 = icmp eq i64 %index.next988, 32
  br i1 %570, label %polly.loop_exit742.1911, label %vector.body985, !llvm.loop !118

polly.loop_exit742.1911:                          ; preds = %vector.body985
  %polly.indvar_next738.1909 = add nuw nsw i64 %polly.indvar737.1899, 1
  %exitcond867.1910.not = icmp eq i64 %polly.indvar_next738.1909, 32
  br i1 %exitcond867.1910.not, label %polly.loop_header734.1.1, label %polly.loop_header734.1900

polly.loop_header734.1.1:                         ; preds = %polly.loop_exit742.1911, %polly.loop_exit742.1.1
  %polly.indvar737.1.1 = phi i64 [ %polly.indvar_next738.1.1, %polly.loop_exit742.1.1 ], [ 0, %polly.loop_exit742.1911 ]
  %571 = add nuw nsw i64 %polly.indvar737.1.1, 32
  %572 = mul nuw nsw i64 %571, 640
  %573 = trunc i64 %571 to i32
  %broadcast.splatinsert1007 = insertelement <4 x i32> poison, i32 %573, i32 0
  %broadcast.splat1008 = shufflevector <4 x i32> %broadcast.splatinsert1007, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %polly.loop_header734.1.1
  %index1001 = phi i64 [ 0, %polly.loop_header734.1.1 ], [ %index.next1002, %vector.body999 ]
  %vec.ind1005 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.1 ], [ %vec.ind.next1006, %vector.body999 ]
  %574 = add nuw nsw <4 x i64> %vec.ind1005, <i64 32, i64 32, i64 32, i64 32>
  %575 = trunc <4 x i64> %574 to <4 x i32>
  %576 = mul <4 x i32> %broadcast.splat1008, %575
  %577 = add <4 x i32> %576, <i32 3, i32 3, i32 3, i32 3>
  %578 = urem <4 x i32> %577, <i32 80, i32 80, i32 80, i32 80>
  %579 = sitofp <4 x i32> %578 to <4 x double>
  %580 = fmul fast <4 x double> %579, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %581 = extractelement <4 x i64> %574, i32 0
  %582 = shl i64 %581, 3
  %583 = add nuw nsw i64 %582, %572
  %584 = getelementptr i8, i8* %call, i64 %583
  %585 = bitcast i8* %584 to <4 x double>*
  store <4 x double> %580, <4 x double>* %585, align 8, !alias.scope !96, !noalias !98
  %index.next1002 = add i64 %index1001, 4
  %vec.ind.next1006 = add <4 x i64> %vec.ind1005, <i64 4, i64 4, i64 4, i64 4>
  %586 = icmp eq i64 %index.next1002, 32
  br i1 %586, label %polly.loop_exit742.1.1, label %vector.body999, !llvm.loop !119

polly.loop_exit742.1.1:                           ; preds = %vector.body999
  %polly.indvar_next738.1.1 = add nuw nsw i64 %polly.indvar737.1.1, 1
  %exitcond867.1.1.not = icmp eq i64 %polly.indvar_next738.1.1, 32
  br i1 %exitcond867.1.1.not, label %polly.loop_header734.2.1, label %polly.loop_header734.1.1

polly.loop_header734.2.1:                         ; preds = %polly.loop_exit742.1.1, %polly.loop_exit742.2.1
  %polly.indvar737.2.1 = phi i64 [ %polly.indvar_next738.2.1, %polly.loop_exit742.2.1 ], [ 0, %polly.loop_exit742.1.1 ]
  %587 = add nuw nsw i64 %polly.indvar737.2.1, 32
  %588 = mul nuw nsw i64 %587, 640
  %589 = trunc i64 %587 to i32
  %broadcast.splatinsert1019 = insertelement <4 x i32> poison, i32 %589, i32 0
  %broadcast.splat1020 = shufflevector <4 x i32> %broadcast.splatinsert1019, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %polly.loop_header734.2.1
  %index1013 = phi i64 [ 0, %polly.loop_header734.2.1 ], [ %index.next1014, %vector.body1011 ]
  %vec.ind1017 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.1 ], [ %vec.ind.next1018, %vector.body1011 ]
  %590 = add nuw nsw <4 x i64> %vec.ind1017, <i64 64, i64 64, i64 64, i64 64>
  %591 = trunc <4 x i64> %590 to <4 x i32>
  %592 = mul <4 x i32> %broadcast.splat1020, %591
  %593 = add <4 x i32> %592, <i32 3, i32 3, i32 3, i32 3>
  %594 = urem <4 x i32> %593, <i32 80, i32 80, i32 80, i32 80>
  %595 = sitofp <4 x i32> %594 to <4 x double>
  %596 = fmul fast <4 x double> %595, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %597 = extractelement <4 x i64> %590, i32 0
  %598 = shl i64 %597, 3
  %599 = add nuw nsw i64 %598, %588
  %600 = getelementptr i8, i8* %call, i64 %599
  %601 = bitcast i8* %600 to <4 x double>*
  store <4 x double> %596, <4 x double>* %601, align 8, !alias.scope !96, !noalias !98
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1018 = add <4 x i64> %vec.ind1017, <i64 4, i64 4, i64 4, i64 4>
  %602 = icmp eq i64 %index.next1014, 16
  br i1 %602, label %polly.loop_exit742.2.1, label %vector.body1011, !llvm.loop !120

polly.loop_exit742.2.1:                           ; preds = %vector.body1011
  %polly.indvar_next738.2.1 = add nuw nsw i64 %polly.indvar737.2.1, 1
  %exitcond867.2.1.not = icmp eq i64 %polly.indvar_next738.2.1, 32
  br i1 %exitcond867.2.1.not, label %polly.loop_header734.2914, label %polly.loop_header734.2.1

polly.loop_header734.2914:                        ; preds = %polly.loop_exit742.2.1, %polly.loop_exit742.2925
  %polly.indvar737.2913 = phi i64 [ %polly.indvar_next738.2923, %polly.loop_exit742.2925 ], [ 0, %polly.loop_exit742.2.1 ]
  %603 = add nuw nsw i64 %polly.indvar737.2913, 64
  %604 = mul nuw nsw i64 %603, 640
  %605 = trunc i64 %603 to i32
  %broadcast.splatinsert1033 = insertelement <4 x i32> poison, i32 %605, i32 0
  %broadcast.splat1034 = shufflevector <4 x i32> %broadcast.splatinsert1033, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.body1023, %polly.loop_header734.2914
  %index1025 = phi i64 [ 0, %polly.loop_header734.2914 ], [ %index.next1026, %vector.body1023 ]
  %vec.ind1031 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.2914 ], [ %vec.ind.next1032, %vector.body1023 ]
  %606 = mul <4 x i32> %vec.ind1031, %broadcast.splat1034
  %607 = add <4 x i32> %606, <i32 3, i32 3, i32 3, i32 3>
  %608 = urem <4 x i32> %607, <i32 80, i32 80, i32 80, i32 80>
  %609 = sitofp <4 x i32> %608 to <4 x double>
  %610 = fmul fast <4 x double> %609, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %611 = shl i64 %index1025, 3
  %612 = add nuw nsw i64 %611, %604
  %613 = getelementptr i8, i8* %call, i64 %612
  %614 = bitcast i8* %613 to <4 x double>*
  store <4 x double> %610, <4 x double>* %614, align 8, !alias.scope !96, !noalias !98
  %index.next1026 = add i64 %index1025, 4
  %vec.ind.next1032 = add <4 x i32> %vec.ind1031, <i32 4, i32 4, i32 4, i32 4>
  %615 = icmp eq i64 %index.next1026, 32
  br i1 %615, label %polly.loop_exit742.2925, label %vector.body1023, !llvm.loop !121

polly.loop_exit742.2925:                          ; preds = %vector.body1023
  %polly.indvar_next738.2923 = add nuw nsw i64 %polly.indvar737.2913, 1
  %exitcond867.2924.not = icmp eq i64 %polly.indvar_next738.2923, 16
  br i1 %exitcond867.2924.not, label %polly.loop_header734.1.2, label %polly.loop_header734.2914

polly.loop_header734.1.2:                         ; preds = %polly.loop_exit742.2925, %polly.loop_exit742.1.2
  %polly.indvar737.1.2 = phi i64 [ %polly.indvar_next738.1.2, %polly.loop_exit742.1.2 ], [ 0, %polly.loop_exit742.2925 ]
  %616 = add nuw nsw i64 %polly.indvar737.1.2, 64
  %617 = mul nuw nsw i64 %616, 640
  %618 = trunc i64 %616 to i32
  %broadcast.splatinsert1045 = insertelement <4 x i32> poison, i32 %618, i32 0
  %broadcast.splat1046 = shufflevector <4 x i32> %broadcast.splatinsert1045, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %polly.loop_header734.1.2
  %index1039 = phi i64 [ 0, %polly.loop_header734.1.2 ], [ %index.next1040, %vector.body1037 ]
  %vec.ind1043 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.2 ], [ %vec.ind.next1044, %vector.body1037 ]
  %619 = add nuw nsw <4 x i64> %vec.ind1043, <i64 32, i64 32, i64 32, i64 32>
  %620 = trunc <4 x i64> %619 to <4 x i32>
  %621 = mul <4 x i32> %broadcast.splat1046, %620
  %622 = add <4 x i32> %621, <i32 3, i32 3, i32 3, i32 3>
  %623 = urem <4 x i32> %622, <i32 80, i32 80, i32 80, i32 80>
  %624 = sitofp <4 x i32> %623 to <4 x double>
  %625 = fmul fast <4 x double> %624, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %626 = extractelement <4 x i64> %619, i32 0
  %627 = shl i64 %626, 3
  %628 = add nuw nsw i64 %627, %617
  %629 = getelementptr i8, i8* %call, i64 %628
  %630 = bitcast i8* %629 to <4 x double>*
  store <4 x double> %625, <4 x double>* %630, align 8, !alias.scope !96, !noalias !98
  %index.next1040 = add i64 %index1039, 4
  %vec.ind.next1044 = add <4 x i64> %vec.ind1043, <i64 4, i64 4, i64 4, i64 4>
  %631 = icmp eq i64 %index.next1040, 32
  br i1 %631, label %polly.loop_exit742.1.2, label %vector.body1037, !llvm.loop !122

polly.loop_exit742.1.2:                           ; preds = %vector.body1037
  %polly.indvar_next738.1.2 = add nuw nsw i64 %polly.indvar737.1.2, 1
  %exitcond867.1.2.not = icmp eq i64 %polly.indvar_next738.1.2, 16
  br i1 %exitcond867.1.2.not, label %polly.loop_header734.2.2, label %polly.loop_header734.1.2

polly.loop_header734.2.2:                         ; preds = %polly.loop_exit742.1.2, %polly.loop_exit742.2.2
  %polly.indvar737.2.2 = phi i64 [ %polly.indvar_next738.2.2, %polly.loop_exit742.2.2 ], [ 0, %polly.loop_exit742.1.2 ]
  %632 = add nuw nsw i64 %polly.indvar737.2.2, 64
  %633 = mul nuw nsw i64 %632, 640
  %634 = trunc i64 %632 to i32
  %broadcast.splatinsert1057 = insertelement <4 x i32> poison, i32 %634, i32 0
  %broadcast.splat1058 = shufflevector <4 x i32> %broadcast.splatinsert1057, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %polly.loop_header734.2.2
  %index1051 = phi i64 [ 0, %polly.loop_header734.2.2 ], [ %index.next1052, %vector.body1049 ]
  %vec.ind1055 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.2 ], [ %vec.ind.next1056, %vector.body1049 ]
  %635 = add nuw nsw <4 x i64> %vec.ind1055, <i64 64, i64 64, i64 64, i64 64>
  %636 = trunc <4 x i64> %635 to <4 x i32>
  %637 = mul <4 x i32> %broadcast.splat1058, %636
  %638 = add <4 x i32> %637, <i32 3, i32 3, i32 3, i32 3>
  %639 = urem <4 x i32> %638, <i32 80, i32 80, i32 80, i32 80>
  %640 = sitofp <4 x i32> %639 to <4 x double>
  %641 = fmul fast <4 x double> %640, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %642 = extractelement <4 x i64> %635, i32 0
  %643 = shl i64 %642, 3
  %644 = add nuw nsw i64 %643, %633
  %645 = getelementptr i8, i8* %call, i64 %644
  %646 = bitcast i8* %645 to <4 x double>*
  store <4 x double> %641, <4 x double>* %646, align 8, !alias.scope !96, !noalias !98
  %index.next1052 = add i64 %index1051, 4
  %vec.ind.next1056 = add <4 x i64> %vec.ind1055, <i64 4, i64 4, i64 4, i64 4>
  %647 = icmp eq i64 %index.next1052, 16
  br i1 %647, label %polly.loop_exit742.2.2, label %vector.body1049, !llvm.loop !123

polly.loop_exit742.2.2:                           ; preds = %vector.body1049
  %polly.indvar_next738.2.2 = add nuw nsw i64 %polly.indvar737.2.2, 1
  %exitcond867.2.2.not = icmp eq i64 %polly.indvar_next738.2.2, 16
  br i1 %exitcond867.2.2.not, label %polly.loop_header761, label %polly.loop_header734.2.2
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 4}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 8}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51, !52}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.loop.interchange.enable", i1 true}
!50 = !{!"llvm.loop.interchange.depth", i32 5}
!51 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!52 = !{!"llvm.loop.interchange.followup_interchanged", !53}
!53 = distinct !{!53, !12, !23, !48, !54, !55, !56}
!54 = !{!"llvm.data.pack.enable", i1 true}
!55 = !{!"llvm.data.pack.array", !21}
!56 = !{!"llvm.data.pack.allocate", !"malloc"}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !72, !73}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !76, !13}
!86 = !{!78, !82, !83}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91, !92}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !88, !"polly.alias.scope.Packed_MemRef_call2"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !76, !13}
!95 = !{!87, !91, !92}
!96 = distinct !{!96, !97, !"polly.alias.scope.MemRef_call"}
!97 = distinct !{!97, !"polly.alias.scope.domain"}
!98 = !{!99, !100}
!99 = distinct !{!99, !97, !"polly.alias.scope.MemRef_call1"}
!100 = distinct !{!100, !97, !"polly.alias.scope.MemRef_call2"}
!101 = distinct !{!101, !13}
!102 = !{!99, !96}
!103 = distinct !{!103, !13}
!104 = !{!100, !96}
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
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
