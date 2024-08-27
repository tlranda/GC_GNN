; ModuleID = 'syr2k_recreations//mmp_syr2k_S_10.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_10.c"
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

polly.loop_exit223:                               ; preds = %polly.loop_exit235.3
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
  %101 = shl i64 %polly.indvar202, 5
  %102 = shl i64 %polly.indvar202, 5
  %103 = shl i64 %polly.indvar202, 5
  %104 = or i64 %103, 8
  %105 = shl i64 %polly.indvar202, 5
  %106 = or i64 %105, 16
  %107 = or i64 %101, 24
  br label %polly.loop_header221

polly.loop_header221:                             ; preds = %polly.loop_header221.preheader, %polly.loop_exit235.3
  %indvars.iv = phi i64 [ 1, %polly.loop_header221.preheader ], [ %indvars.iv.next, %polly.loop_exit235.3 ]
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header221.preheader ], [ %polly.indvar_next225, %polly.loop_exit235.3 ]
  %108 = shl nsw i64 %polly.indvar224, 4
  br label %polly.loop_header233

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header221
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit241 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header221 ]
  %109 = add nuw nsw i64 %polly.indvar236, %108
  %polly.access.mul.Packed_MemRef_call2248 = shl nsw i64 %109, 2
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.mul.Packed_MemRef_call2248
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %110 = mul nuw nsw i64 %109, 480
  %111 = add nuw nsw i64 %110, %102
  %scevgep256 = getelementptr i8, i8* %call1, i64 %111
  %scevgep256257 = bitcast i8* %scevgep256 to double*
  %_p_scalar_258 = load double, double* %scevgep256257, align 8, !alias.scope !71, !noalias !77
  %112 = mul nuw nsw i64 %109, 640
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next237, 16
  br i1 %exitcond813.not, label %polly.loop_header233.1, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %113 = mul nuw nsw i64 %polly.indvar242, 480
  %114 = add nuw nsw i64 %113, %102
  %scevgep245 = getelementptr i8, i8* %call1, i64 %114
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.mul.Packed_MemRef_call2252 = shl nsw i64 %polly.indvar242, 2
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.mul.Packed_MemRef_call2252
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_258, %_p_scalar_255
  %115 = shl nuw nsw i64 %polly.indvar242, 3
  %116 = add nuw nsw i64 %115, %112
  %scevgep259 = getelementptr i8, i8* %call, i64 %116
  %scevgep259260 = bitcast i8* %scevgep259 to double*
  %_p_scalar_261 = load double, double* %scevgep259260, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_261
  store double %p_add42.i118, double* %scevgep259260, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next243, %indvars.iv810
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
  %117 = add i64 %indvar1250, 1
  %118 = mul nuw nsw i64 %polly.indvar353, 640
  %scevgep362 = getelementptr i8, i8* %call, i64 %118
  %min.iters.check1252 = icmp ult i64 %117, 4
  br i1 %min.iters.check1252, label %polly.loop_header356.preheader, label %vector.ph1253

vector.ph1253:                                    ; preds = %polly.loop_header350
  %n.vec1255 = and i64 %117, -4
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1257, %vector.body1249 ]
  %119 = shl nuw nsw i64 %index1256, 3
  %120 = getelementptr i8, i8* %scevgep362, i64 %119
  %121 = bitcast i8* %120 to <4 x double>*
  %wide.load1260 = load <4 x double>, <4 x double>* %121, align 8, !alias.scope !78, !noalias !80
  %122 = fmul fast <4 x double> %wide.load1260, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %123 = bitcast i8* %120 to <4 x double>*
  store <4 x double> %122, <4 x double>* %123, align 8, !alias.scope !78, !noalias !80
  %index.next1257 = add i64 %index1256, 4
  %124 = icmp eq i64 %index.next1257, %n.vec1255
  br i1 %124, label %middle.block1247, label %vector.body1249, !llvm.loop !84

middle.block1247:                                 ; preds = %vector.body1249
  %cmp.n1259 = icmp eq i64 %117, %n.vec1255
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
  %125 = shl nuw nsw i64 %polly.indvar359, 3
  %scevgep363 = getelementptr i8, i8* %scevgep362, i64 %125
  %scevgep363364 = bitcast i8* %scevgep363 to double*
  %_p_scalar_365 = load double, double* %scevgep363364, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_365, 1.200000e+00
  store double %p_mul.i57, double* %scevgep363364, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next360, %polly.indvar353
  br i1 %exitcond832.not, label %polly.loop_exit358, label %polly.loop_header356, !llvm.loop !85

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_exit390
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_exit390 ], [ 0, %polly.loop_header366.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar369, 5
  br label %polly.loop_header372

polly.loop_exit390:                               ; preds = %polly.loop_exit402.3
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next370, 15
  br i1 %exitcond831.not, label %polly.exiting265, label %polly.loop_header366

polly.loop_header372:                             ; preds = %polly.loop_header372, %polly.loop_header366
  %polly.indvar375 = phi i64 [ 0, %polly.loop_header366 ], [ %polly.indvar_next376, %polly.loop_header372 ]
  %127 = shl nuw nsw i64 %polly.indvar375, 5
  %scevgep820 = getelementptr i8, i8* %malloccall266, i64 %127
  %128 = mul nuw nsw i64 %polly.indvar375, 480
  %129 = add nuw nsw i64 %126, %128
  %scevgep821 = getelementptr i8, i8* %call2, i64 %129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep820, i8* noundef nonnull align 8 dereferenceable(32) %scevgep821, i64 32, i1 false)
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next376, 80
  br i1 %exitcond822.not, label %polly.loop_header388.preheader, label %polly.loop_header372

polly.loop_header388.preheader:                   ; preds = %polly.loop_header372
  %130 = shl i64 %polly.indvar369, 5
  %131 = shl i64 %polly.indvar369, 5
  %132 = shl i64 %polly.indvar369, 5
  %133 = or i64 %132, 8
  %134 = shl i64 %polly.indvar369, 5
  %135 = or i64 %134, 16
  %136 = or i64 %130, 24
  br label %polly.loop_header388

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_exit402.3
  %indvars.iv823 = phi i64 [ 1, %polly.loop_header388.preheader ], [ %indvars.iv.next824, %polly.loop_exit402.3 ]
  %polly.indvar391 = phi i64 [ 0, %polly.loop_header388.preheader ], [ %polly.indvar_next392, %polly.loop_exit402.3 ]
  %137 = shl nsw i64 %polly.indvar391, 4
  br label %polly.loop_header400

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_header388
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit408 ], [ %indvars.iv823, %polly.loop_header388 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit408 ], [ 0, %polly.loop_header388 ]
  %138 = add nuw nsw i64 %polly.indvar403, %137
  %polly.access.mul.Packed_MemRef_call2267415 = shl nsw i64 %138, 2
  %polly.access.Packed_MemRef_call2267417 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.mul.Packed_MemRef_call2267415
  %_p_scalar_418 = load double, double* %polly.access.Packed_MemRef_call2267417, align 8
  %139 = mul nuw nsw i64 %138, 480
  %140 = add nuw nsw i64 %139, %131
  %scevgep423 = getelementptr i8, i8* %call1, i64 %140
  %scevgep423424 = bitcast i8* %scevgep423 to double*
  %_p_scalar_425 = load double, double* %scevgep423424, align 8, !alias.scope !81, !noalias !86
  %141 = mul nuw nsw i64 %138, 640
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next404, 16
  br i1 %exitcond828.not, label %polly.loop_header400.1, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %142 = mul nuw nsw i64 %polly.indvar409, 480
  %143 = add nuw nsw i64 %142, %131
  %scevgep412 = getelementptr i8, i8* %call1, i64 %143
  %scevgep412413 = bitcast i8* %scevgep412 to double*
  %_p_scalar_414 = load double, double* %scevgep412413, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73 = fmul fast double %_p_scalar_418, %_p_scalar_414
  %polly.access.mul.Packed_MemRef_call2267419 = shl nsw i64 %polly.indvar409, 2
  %polly.access.Packed_MemRef_call2267421 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.mul.Packed_MemRef_call2267419
  %_p_scalar_422 = load double, double* %polly.access.Packed_MemRef_call2267421, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_425, %_p_scalar_422
  %144 = shl nuw nsw i64 %polly.indvar409, 3
  %145 = add nuw nsw i64 %144, %141
  %scevgep426 = getelementptr i8, i8* %call, i64 %145
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_428
  store double %p_add42.i79, double* %scevgep426427, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next410, %indvars.iv825
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
  %146 = add i64 %indvar, 1
  %147 = mul nuw nsw i64 %polly.indvar520, 640
  %scevgep529 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check1226 = icmp ult i64 %146, 4
  br i1 %min.iters.check1226, label %polly.loop_header523.preheader, label %vector.ph1227

vector.ph1227:                                    ; preds = %polly.loop_header517
  %n.vec1229 = and i64 %146, -4
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %vector.ph1227
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1231, %vector.body1225 ]
  %148 = shl nuw nsw i64 %index1230, 3
  %149 = getelementptr i8, i8* %scevgep529, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load1234 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !87, !noalias !89
  %151 = fmul fast <4 x double> %wide.load1234, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !87, !noalias !89
  %index.next1231 = add i64 %index1230, 4
  %153 = icmp eq i64 %index.next1231, %n.vec1229
  br i1 %153, label %middle.block1223, label %vector.body1225, !llvm.loop !93

middle.block1223:                                 ; preds = %vector.body1225
  %cmp.n1233 = icmp eq i64 %146, %n.vec1229
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
  %154 = shl nuw nsw i64 %polly.indvar526, 3
  %scevgep530 = getelementptr i8, i8* %scevgep529, i64 %154
  %scevgep530531 = bitcast i8* %scevgep530 to double*
  %_p_scalar_532 = load double, double* %scevgep530531, align 8, !alias.scope !87, !noalias !89
  %p_mul.i = fmul fast double %_p_scalar_532, 1.200000e+00
  store double %p_mul.i, double* %scevgep530531, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next527, %polly.indvar520
  br i1 %exitcond847.not, label %polly.loop_exit525, label %polly.loop_header523, !llvm.loop !94

polly.loop_header533:                             ; preds = %polly.loop_header533.preheader, %polly.loop_exit557
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_exit557 ], [ 0, %polly.loop_header533.preheader ]
  %155 = shl nuw nsw i64 %polly.indvar536, 5
  br label %polly.loop_header539

polly.loop_exit557:                               ; preds = %polly.loop_exit569.3
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next537, 15
  br i1 %exitcond846.not, label %polly.exiting432, label %polly.loop_header533

polly.loop_header539:                             ; preds = %polly.loop_header539, %polly.loop_header533
  %polly.indvar542 = phi i64 [ 0, %polly.loop_header533 ], [ %polly.indvar_next543, %polly.loop_header539 ]
  %156 = shl nuw nsw i64 %polly.indvar542, 5
  %scevgep835 = getelementptr i8, i8* %malloccall433, i64 %156
  %157 = mul nuw nsw i64 %polly.indvar542, 480
  %158 = add nuw nsw i64 %155, %157
  %scevgep836 = getelementptr i8, i8* %call2, i64 %158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep835, i8* noundef nonnull align 8 dereferenceable(32) %scevgep836, i64 32, i1 false)
  %polly.indvar_next543 = add nuw nsw i64 %polly.indvar542, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next543, 80
  br i1 %exitcond837.not, label %polly.loop_header555.preheader, label %polly.loop_header539

polly.loop_header555.preheader:                   ; preds = %polly.loop_header539
  %159 = shl i64 %polly.indvar536, 5
  %160 = shl i64 %polly.indvar536, 5
  %161 = shl i64 %polly.indvar536, 5
  %162 = or i64 %161, 8
  %163 = shl i64 %polly.indvar536, 5
  %164 = or i64 %163, 16
  %165 = or i64 %159, 24
  br label %polly.loop_header555

polly.loop_header555:                             ; preds = %polly.loop_header555.preheader, %polly.loop_exit569.3
  %indvars.iv838 = phi i64 [ 1, %polly.loop_header555.preheader ], [ %indvars.iv.next839, %polly.loop_exit569.3 ]
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header555.preheader ], [ %polly.indvar_next559, %polly.loop_exit569.3 ]
  %166 = shl nsw i64 %polly.indvar558, 4
  br label %polly.loop_header567

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_header555
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit575 ], [ %indvars.iv838, %polly.loop_header555 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ 0, %polly.loop_header555 ]
  %167 = add nuw nsw i64 %polly.indvar570, %166
  %polly.access.mul.Packed_MemRef_call2434582 = shl nsw i64 %167, 2
  %polly.access.Packed_MemRef_call2434584 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.mul.Packed_MemRef_call2434582
  %_p_scalar_585 = load double, double* %polly.access.Packed_MemRef_call2434584, align 8
  %168 = mul nuw nsw i64 %167, 480
  %169 = add nuw nsw i64 %168, %160
  %scevgep590 = getelementptr i8, i8* %call1, i64 %169
  %scevgep590591 = bitcast i8* %scevgep590 to double*
  %_p_scalar_592 = load double, double* %scevgep590591, align 8, !alias.scope !90, !noalias !95
  %170 = mul nuw nsw i64 %167, 640
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_header573
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next571, 16
  br i1 %exitcond843.not, label %polly.loop_header567.1, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_header573, %polly.loop_header567
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header567 ], [ %polly.indvar_next577, %polly.loop_header573 ]
  %171 = mul nuw nsw i64 %polly.indvar576, 480
  %172 = add nuw nsw i64 %171, %160
  %scevgep579 = getelementptr i8, i8* %call1, i64 %172
  %scevgep579580 = bitcast i8* %scevgep579 to double*
  %_p_scalar_581 = load double, double* %scevgep579580, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i = fmul fast double %_p_scalar_585, %_p_scalar_581
  %polly.access.mul.Packed_MemRef_call2434586 = shl nsw i64 %polly.indvar576, 2
  %polly.access.Packed_MemRef_call2434588 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.mul.Packed_MemRef_call2434586
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2434588, align 8
  %p_mul37.i = fmul fast double %_p_scalar_592, %_p_scalar_589
  %173 = shl nuw nsw i64 %polly.indvar576, 3
  %174 = add nuw nsw i64 %173, %170
  %scevgep593 = getelementptr i8, i8* %call, i64 %174
  %scevgep593594 = bitcast i8* %scevgep593 to double*
  %_p_scalar_595 = load double, double* %scevgep593594, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_595
  store double %p_add42.i, double* %scevgep593594, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next577, %indvars.iv840
  br i1 %exitcond842.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header734:                             ; preds = %entry, %polly.loop_exit742
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %entry ]
  %175 = mul nuw nsw i64 %polly.indvar737, 640
  %176 = trunc i64 %polly.indvar737 to i32
  %broadcast.splatinsert957 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat958 = shufflevector <4 x i32> %broadcast.splatinsert957, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %polly.loop_header734
  %index949 = phi i64 [ 0, %polly.loop_header734 ], [ %index.next950, %vector.body947 ]
  %vec.ind955 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734 ], [ %vec.ind.next956, %vector.body947 ]
  %177 = mul <4 x i32> %vec.ind955, %broadcast.splat958
  %178 = add <4 x i32> %177, <i32 3, i32 3, i32 3, i32 3>
  %179 = urem <4 x i32> %178, <i32 80, i32 80, i32 80, i32 80>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %182 = shl i64 %index949, 3
  %183 = add nuw nsw i64 %182, %175
  %184 = getelementptr i8, i8* %call, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !96, !noalias !98
  %index.next950 = add i64 %index949, 4
  %vec.ind.next956 = add <4 x i32> %vec.ind955, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next950, 32
  br i1 %186, label %polly.loop_exit742, label %vector.body947, !llvm.loop !101

polly.loop_exit742:                               ; preds = %vector.body947
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next738, 32
  br i1 %exitcond867.not, label %polly.loop_header734.1, label %polly.loop_header734

polly.loop_header761:                             ; preds = %polly.loop_exit742.2.2, %polly.loop_exit769
  %polly.indvar764 = phi i64 [ %polly.indvar_next765, %polly.loop_exit769 ], [ 0, %polly.loop_exit742.2.2 ]
  %187 = mul nuw nsw i64 %polly.indvar764, 480
  %188 = trunc i64 %polly.indvar764 to i32
  %broadcast.splatinsert1071 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1072 = shufflevector <4 x i32> %broadcast.splatinsert1071, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1061

vector.body1061:                                  ; preds = %vector.body1061, %polly.loop_header761
  %index1063 = phi i64 [ 0, %polly.loop_header761 ], [ %index.next1064, %vector.body1061 ]
  %vec.ind1069 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761 ], [ %vec.ind.next1070, %vector.body1061 ]
  %189 = mul <4 x i32> %vec.ind1069, %broadcast.splat1072
  %190 = add <4 x i32> %189, <i32 2, i32 2, i32 2, i32 2>
  %191 = urem <4 x i32> %190, <i32 60, i32 60, i32 60, i32 60>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %194 = shl i64 %index1063, 3
  %195 = add i64 %194, %187
  %196 = getelementptr i8, i8* %call2, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %193, <4 x double>* %197, align 8, !alias.scope !100, !noalias !102
  %index.next1064 = add i64 %index1063, 4
  %vec.ind.next1070 = add <4 x i32> %vec.ind1069, <i32 4, i32 4, i32 4, i32 4>
  %198 = icmp eq i64 %index.next1064, 32
  br i1 %198, label %polly.loop_exit769, label %vector.body1061, !llvm.loop !103

polly.loop_exit769:                               ; preds = %vector.body1061
  %polly.indvar_next765 = add nuw nsw i64 %polly.indvar764, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next765, 32
  br i1 %exitcond858.not, label %polly.loop_header761.1, label %polly.loop_header761

polly.loop_header787:                             ; preds = %polly.loop_exit769.1.2, %polly.loop_exit795
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_exit769.1.2 ]
  %199 = mul nuw nsw i64 %polly.indvar790, 480
  %200 = trunc i64 %polly.indvar790 to i32
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %polly.loop_header787
  %index1141 = phi i64 [ 0, %polly.loop_header787 ], [ %index.next1142, %vector.body1139 ]
  %vec.ind1147 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787 ], [ %vec.ind.next1148, %vector.body1139 ]
  %201 = mul <4 x i32> %vec.ind1147, %broadcast.splat1150
  %202 = add <4 x i32> %201, <i32 1, i32 1, i32 1, i32 1>
  %203 = urem <4 x i32> %202, <i32 80, i32 80, i32 80, i32 80>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %206 = shl i64 %index1141, 3
  %207 = add i64 %206, %199
  %208 = getelementptr i8, i8* %call1, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %205, <4 x double>* %209, align 8, !alias.scope !99, !noalias !104
  %index.next1142 = add i64 %index1141, 4
  %vec.ind.next1148 = add <4 x i32> %vec.ind1147, <i32 4, i32 4, i32 4, i32 4>
  %210 = icmp eq i64 %index.next1142, 32
  br i1 %210, label %polly.loop_exit795, label %vector.body1139, !llvm.loop !105

polly.loop_exit795:                               ; preds = %vector.body1139
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond852.not, label %polly.loop_header787.1, label %polly.loop_header787

polly.loop_header233.1:                           ; preds = %polly.loop_exit241, %polly.loop_exit241.1
  %indvars.iv810.1 = phi i64 [ %indvars.iv.next811.1, %polly.loop_exit241.1 ], [ %indvars.iv, %polly.loop_exit241 ]
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit241.1 ], [ 0, %polly.loop_exit241 ]
  %211 = add nuw nsw i64 %polly.indvar236.1, %108
  %polly.access.mul.Packed_MemRef_call2248.1 = shl nsw i64 %211, 2
  %polly.access.add.Packed_MemRef_call2249.1 = or i64 %polly.access.mul.Packed_MemRef_call2248.1, 1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %212 = mul nuw nsw i64 %211, 480
  %213 = add nuw nsw i64 %212, %104
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %213
  %scevgep256257.1 = bitcast i8* %scevgep256.1 to double*
  %_p_scalar_258.1 = load double, double* %scevgep256257.1, align 8, !alias.scope !71, !noalias !77
  %214 = mul nuw nsw i64 %211, 640
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %215 = mul nuw nsw i64 %polly.indvar242.1, 480
  %216 = add nuw nsw i64 %215, %104
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %216
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.mul.Packed_MemRef_call2252.1 = shl nsw i64 %polly.indvar242.1, 2
  %polly.access.add.Packed_MemRef_call2253.1 = or i64 %polly.access.mul.Packed_MemRef_call2252.1, 1
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_258.1, %_p_scalar_255.1
  %217 = shl nuw nsw i64 %polly.indvar242.1, 3
  %218 = add nuw nsw i64 %217, %214
  %scevgep259.1 = getelementptr i8, i8* %call, i64 %218
  %scevgep259260.1 = bitcast i8* %scevgep259.1 to double*
  %_p_scalar_261.1 = load double, double* %scevgep259260.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_261.1
  store double %p_add42.i118.1, double* %scevgep259260.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar_next243.1, %indvars.iv810.1
  br i1 %exitcond812.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %indvars.iv.next811.1 = add nuw nsw i64 %indvars.iv810.1, 1
  %exitcond813.1.not = icmp eq i64 %polly.indvar_next237.1, 16
  br i1 %exitcond813.1.not, label %polly.loop_header233.2, label %polly.loop_header233.1

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.1, %polly.loop_exit241.2
  %indvars.iv810.2 = phi i64 [ %indvars.iv.next811.2, %polly.loop_exit241.2 ], [ %indvars.iv, %polly.loop_exit241.1 ]
  %polly.indvar236.2 = phi i64 [ %polly.indvar_next237.2, %polly.loop_exit241.2 ], [ 0, %polly.loop_exit241.1 ]
  %219 = add nuw nsw i64 %polly.indvar236.2, %108
  %polly.access.mul.Packed_MemRef_call2248.2 = shl nsw i64 %219, 2
  %polly.access.add.Packed_MemRef_call2249.2 = or i64 %polly.access.mul.Packed_MemRef_call2248.2, 2
  %polly.access.Packed_MemRef_call2250.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2
  %_p_scalar_251.2 = load double, double* %polly.access.Packed_MemRef_call2250.2, align 8
  %220 = mul nuw nsw i64 %219, 480
  %221 = add nuw nsw i64 %220, %106
  %scevgep256.2 = getelementptr i8, i8* %call1, i64 %221
  %scevgep256257.2 = bitcast i8* %scevgep256.2 to double*
  %_p_scalar_258.2 = load double, double* %scevgep256257.2, align 8, !alias.scope !71, !noalias !77
  %222 = mul nuw nsw i64 %219, 640
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_header233.2
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_header233.2 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %223 = mul nuw nsw i64 %polly.indvar242.2, 480
  %224 = add nuw nsw i64 %223, %106
  %scevgep245.2 = getelementptr i8, i8* %call1, i64 %224
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_247.2
  %polly.access.mul.Packed_MemRef_call2252.2 = shl nsw i64 %polly.indvar242.2, 2
  %polly.access.add.Packed_MemRef_call2253.2 = or i64 %polly.access.mul.Packed_MemRef_call2252.2, 2
  %polly.access.Packed_MemRef_call2254.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2
  %_p_scalar_255.2 = load double, double* %polly.access.Packed_MemRef_call2254.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_258.2, %_p_scalar_255.2
  %225 = shl nuw nsw i64 %polly.indvar242.2, 3
  %226 = add nuw nsw i64 %225, %222
  %scevgep259.2 = getelementptr i8, i8* %call, i64 %226
  %scevgep259260.2 = bitcast i8* %scevgep259.2 to double*
  %_p_scalar_261.2 = load double, double* %scevgep259260.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_261.2
  store double %p_add42.i118.2, double* %scevgep259260.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar_next243.2, %indvars.iv810.2
  br i1 %exitcond812.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %indvars.iv.next811.2 = add nuw nsw i64 %indvars.iv810.2, 1
  %exitcond813.2.not = icmp eq i64 %polly.indvar_next237.2, 16
  br i1 %exitcond813.2.not, label %polly.loop_header233.3, label %polly.loop_header233.2

polly.loop_header233.3:                           ; preds = %polly.loop_exit241.2, %polly.loop_exit241.3
  %indvars.iv810.3 = phi i64 [ %indvars.iv.next811.3, %polly.loop_exit241.3 ], [ %indvars.iv, %polly.loop_exit241.2 ]
  %polly.indvar236.3 = phi i64 [ %polly.indvar_next237.3, %polly.loop_exit241.3 ], [ 0, %polly.loop_exit241.2 ]
  %227 = add nuw nsw i64 %polly.indvar236.3, %108
  %polly.access.mul.Packed_MemRef_call2248.3 = shl nsw i64 %227, 2
  %polly.access.add.Packed_MemRef_call2249.3 = or i64 %polly.access.mul.Packed_MemRef_call2248.3, 3
  %polly.access.Packed_MemRef_call2250.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.3
  %_p_scalar_251.3 = load double, double* %polly.access.Packed_MemRef_call2250.3, align 8
  %228 = mul nuw nsw i64 %227, 480
  %229 = add nuw nsw i64 %228, %107
  %scevgep256.3 = getelementptr i8, i8* %call1, i64 %229
  %scevgep256257.3 = bitcast i8* %scevgep256.3 to double*
  %_p_scalar_258.3 = load double, double* %scevgep256257.3, align 8, !alias.scope !71, !noalias !77
  %230 = mul nuw nsw i64 %227, 640
  br label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_header239.3, %polly.loop_header233.3
  %polly.indvar242.3 = phi i64 [ 0, %polly.loop_header233.3 ], [ %polly.indvar_next243.3, %polly.loop_header239.3 ]
  %231 = mul nuw nsw i64 %polly.indvar242.3, 480
  %232 = add nuw nsw i64 %231, %107
  %scevgep245.3 = getelementptr i8, i8* %call1, i64 %232
  %scevgep245246.3 = bitcast i8* %scevgep245.3 to double*
  %_p_scalar_247.3 = load double, double* %scevgep245246.3, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.3 = fmul fast double %_p_scalar_251.3, %_p_scalar_247.3
  %polly.access.mul.Packed_MemRef_call2252.3 = shl nsw i64 %polly.indvar242.3, 2
  %polly.access.add.Packed_MemRef_call2253.3 = or i64 %polly.access.mul.Packed_MemRef_call2252.3, 3
  %polly.access.Packed_MemRef_call2254.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.3
  %_p_scalar_255.3 = load double, double* %polly.access.Packed_MemRef_call2254.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_258.3, %_p_scalar_255.3
  %233 = shl nuw nsw i64 %polly.indvar242.3, 3
  %234 = add nuw nsw i64 %233, %230
  %scevgep259.3 = getelementptr i8, i8* %call, i64 %234
  %scevgep259260.3 = bitcast i8* %scevgep259.3 to double*
  %_p_scalar_261.3 = load double, double* %scevgep259260.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_261.3
  store double %p_add42.i118.3, double* %scevgep259260.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %exitcond812.3.not = icmp eq i64 %polly.indvar_next243.3, %indvars.iv810.3
  br i1 %exitcond812.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.3

polly.loop_exit241.3:                             ; preds = %polly.loop_header239.3
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %indvars.iv.next811.3 = add nuw nsw i64 %indvars.iv810.3, 1
  %exitcond813.3.not = icmp eq i64 %polly.indvar_next237.3, 16
  br i1 %exitcond813.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_exit241.3
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %exitcond815.not = icmp eq i64 %polly.indvar_next225, 5
  br i1 %exitcond815.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header400.1:                           ; preds = %polly.loop_exit408, %polly.loop_exit408.1
  %indvars.iv825.1 = phi i64 [ %indvars.iv.next826.1, %polly.loop_exit408.1 ], [ %indvars.iv823, %polly.loop_exit408 ]
  %polly.indvar403.1 = phi i64 [ %polly.indvar_next404.1, %polly.loop_exit408.1 ], [ 0, %polly.loop_exit408 ]
  %235 = add nuw nsw i64 %polly.indvar403.1, %137
  %polly.access.mul.Packed_MemRef_call2267415.1 = shl nsw i64 %235, 2
  %polly.access.add.Packed_MemRef_call2267416.1 = or i64 %polly.access.mul.Packed_MemRef_call2267415.1, 1
  %polly.access.Packed_MemRef_call2267417.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1
  %_p_scalar_418.1 = load double, double* %polly.access.Packed_MemRef_call2267417.1, align 8
  %236 = mul nuw nsw i64 %235, 480
  %237 = add nuw nsw i64 %236, %133
  %scevgep423.1 = getelementptr i8, i8* %call1, i64 %237
  %scevgep423424.1 = bitcast i8* %scevgep423.1 to double*
  %_p_scalar_425.1 = load double, double* %scevgep423424.1, align 8, !alias.scope !81, !noalias !86
  %238 = mul nuw nsw i64 %235, 640
  br label %polly.loop_header406.1

polly.loop_header406.1:                           ; preds = %polly.loop_header406.1, %polly.loop_header400.1
  %polly.indvar409.1 = phi i64 [ 0, %polly.loop_header400.1 ], [ %polly.indvar_next410.1, %polly.loop_header406.1 ]
  %239 = mul nuw nsw i64 %polly.indvar409.1, 480
  %240 = add nuw nsw i64 %239, %133
  %scevgep412.1 = getelementptr i8, i8* %call1, i64 %240
  %scevgep412413.1 = bitcast i8* %scevgep412.1 to double*
  %_p_scalar_414.1 = load double, double* %scevgep412413.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.1 = fmul fast double %_p_scalar_418.1, %_p_scalar_414.1
  %polly.access.mul.Packed_MemRef_call2267419.1 = shl nsw i64 %polly.indvar409.1, 2
  %polly.access.add.Packed_MemRef_call2267420.1 = or i64 %polly.access.mul.Packed_MemRef_call2267419.1, 1
  %polly.access.Packed_MemRef_call2267421.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1
  %_p_scalar_422.1 = load double, double* %polly.access.Packed_MemRef_call2267421.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_425.1, %_p_scalar_422.1
  %241 = shl nuw nsw i64 %polly.indvar409.1, 3
  %242 = add nuw nsw i64 %241, %238
  %scevgep426.1 = getelementptr i8, i8* %call, i64 %242
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_428.1
  store double %p_add42.i79.1, double* %scevgep426427.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond827.1.not = icmp eq i64 %polly.indvar_next410.1, %indvars.iv825.1
  br i1 %exitcond827.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.1

polly.loop_exit408.1:                             ; preds = %polly.loop_header406.1
  %polly.indvar_next404.1 = add nuw nsw i64 %polly.indvar403.1, 1
  %indvars.iv.next826.1 = add nuw nsw i64 %indvars.iv825.1, 1
  %exitcond828.1.not = icmp eq i64 %polly.indvar_next404.1, 16
  br i1 %exitcond828.1.not, label %polly.loop_header400.2, label %polly.loop_header400.1

polly.loop_header400.2:                           ; preds = %polly.loop_exit408.1, %polly.loop_exit408.2
  %indvars.iv825.2 = phi i64 [ %indvars.iv.next826.2, %polly.loop_exit408.2 ], [ %indvars.iv823, %polly.loop_exit408.1 ]
  %polly.indvar403.2 = phi i64 [ %polly.indvar_next404.2, %polly.loop_exit408.2 ], [ 0, %polly.loop_exit408.1 ]
  %243 = add nuw nsw i64 %polly.indvar403.2, %137
  %polly.access.mul.Packed_MemRef_call2267415.2 = shl nsw i64 %243, 2
  %polly.access.add.Packed_MemRef_call2267416.2 = or i64 %polly.access.mul.Packed_MemRef_call2267415.2, 2
  %polly.access.Packed_MemRef_call2267417.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.2
  %_p_scalar_418.2 = load double, double* %polly.access.Packed_MemRef_call2267417.2, align 8
  %244 = mul nuw nsw i64 %243, 480
  %245 = add nuw nsw i64 %244, %135
  %scevgep423.2 = getelementptr i8, i8* %call1, i64 %245
  %scevgep423424.2 = bitcast i8* %scevgep423.2 to double*
  %_p_scalar_425.2 = load double, double* %scevgep423424.2, align 8, !alias.scope !81, !noalias !86
  %246 = mul nuw nsw i64 %243, 640
  br label %polly.loop_header406.2

polly.loop_header406.2:                           ; preds = %polly.loop_header406.2, %polly.loop_header400.2
  %polly.indvar409.2 = phi i64 [ 0, %polly.loop_header400.2 ], [ %polly.indvar_next410.2, %polly.loop_header406.2 ]
  %247 = mul nuw nsw i64 %polly.indvar409.2, 480
  %248 = add nuw nsw i64 %247, %135
  %scevgep412.2 = getelementptr i8, i8* %call1, i64 %248
  %scevgep412413.2 = bitcast i8* %scevgep412.2 to double*
  %_p_scalar_414.2 = load double, double* %scevgep412413.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.2 = fmul fast double %_p_scalar_418.2, %_p_scalar_414.2
  %polly.access.mul.Packed_MemRef_call2267419.2 = shl nsw i64 %polly.indvar409.2, 2
  %polly.access.add.Packed_MemRef_call2267420.2 = or i64 %polly.access.mul.Packed_MemRef_call2267419.2, 2
  %polly.access.Packed_MemRef_call2267421.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.2
  %_p_scalar_422.2 = load double, double* %polly.access.Packed_MemRef_call2267421.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_425.2, %_p_scalar_422.2
  %249 = shl nuw nsw i64 %polly.indvar409.2, 3
  %250 = add nuw nsw i64 %249, %246
  %scevgep426.2 = getelementptr i8, i8* %call, i64 %250
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_428.2
  store double %p_add42.i79.2, double* %scevgep426427.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.2 = add nuw nsw i64 %polly.indvar409.2, 1
  %exitcond827.2.not = icmp eq i64 %polly.indvar_next410.2, %indvars.iv825.2
  br i1 %exitcond827.2.not, label %polly.loop_exit408.2, label %polly.loop_header406.2

polly.loop_exit408.2:                             ; preds = %polly.loop_header406.2
  %polly.indvar_next404.2 = add nuw nsw i64 %polly.indvar403.2, 1
  %indvars.iv.next826.2 = add nuw nsw i64 %indvars.iv825.2, 1
  %exitcond828.2.not = icmp eq i64 %polly.indvar_next404.2, 16
  br i1 %exitcond828.2.not, label %polly.loop_header400.3, label %polly.loop_header400.2

polly.loop_header400.3:                           ; preds = %polly.loop_exit408.2, %polly.loop_exit408.3
  %indvars.iv825.3 = phi i64 [ %indvars.iv.next826.3, %polly.loop_exit408.3 ], [ %indvars.iv823, %polly.loop_exit408.2 ]
  %polly.indvar403.3 = phi i64 [ %polly.indvar_next404.3, %polly.loop_exit408.3 ], [ 0, %polly.loop_exit408.2 ]
  %251 = add nuw nsw i64 %polly.indvar403.3, %137
  %polly.access.mul.Packed_MemRef_call2267415.3 = shl nsw i64 %251, 2
  %polly.access.add.Packed_MemRef_call2267416.3 = or i64 %polly.access.mul.Packed_MemRef_call2267415.3, 3
  %polly.access.Packed_MemRef_call2267417.3 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.3
  %_p_scalar_418.3 = load double, double* %polly.access.Packed_MemRef_call2267417.3, align 8
  %252 = mul nuw nsw i64 %251, 480
  %253 = add nuw nsw i64 %252, %136
  %scevgep423.3 = getelementptr i8, i8* %call1, i64 %253
  %scevgep423424.3 = bitcast i8* %scevgep423.3 to double*
  %_p_scalar_425.3 = load double, double* %scevgep423424.3, align 8, !alias.scope !81, !noalias !86
  %254 = mul nuw nsw i64 %251, 640
  br label %polly.loop_header406.3

polly.loop_header406.3:                           ; preds = %polly.loop_header406.3, %polly.loop_header400.3
  %polly.indvar409.3 = phi i64 [ 0, %polly.loop_header400.3 ], [ %polly.indvar_next410.3, %polly.loop_header406.3 ]
  %255 = mul nuw nsw i64 %polly.indvar409.3, 480
  %256 = add nuw nsw i64 %255, %136
  %scevgep412.3 = getelementptr i8, i8* %call1, i64 %256
  %scevgep412413.3 = bitcast i8* %scevgep412.3 to double*
  %_p_scalar_414.3 = load double, double* %scevgep412413.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.3 = fmul fast double %_p_scalar_418.3, %_p_scalar_414.3
  %polly.access.mul.Packed_MemRef_call2267419.3 = shl nsw i64 %polly.indvar409.3, 2
  %polly.access.add.Packed_MemRef_call2267420.3 = or i64 %polly.access.mul.Packed_MemRef_call2267419.3, 3
  %polly.access.Packed_MemRef_call2267421.3 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.3
  %_p_scalar_422.3 = load double, double* %polly.access.Packed_MemRef_call2267421.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_425.3, %_p_scalar_422.3
  %257 = shl nuw nsw i64 %polly.indvar409.3, 3
  %258 = add nuw nsw i64 %257, %254
  %scevgep426.3 = getelementptr i8, i8* %call, i64 %258
  %scevgep426427.3 = bitcast i8* %scevgep426.3 to double*
  %_p_scalar_428.3 = load double, double* %scevgep426427.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_428.3
  store double %p_add42.i79.3, double* %scevgep426427.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.3 = add nuw nsw i64 %polly.indvar409.3, 1
  %exitcond827.3.not = icmp eq i64 %polly.indvar_next410.3, %indvars.iv825.3
  br i1 %exitcond827.3.not, label %polly.loop_exit408.3, label %polly.loop_header406.3

polly.loop_exit408.3:                             ; preds = %polly.loop_header406.3
  %polly.indvar_next404.3 = add nuw nsw i64 %polly.indvar403.3, 1
  %indvars.iv.next826.3 = add nuw nsw i64 %indvars.iv825.3, 1
  %exitcond828.3.not = icmp eq i64 %polly.indvar_next404.3, 16
  br i1 %exitcond828.3.not, label %polly.loop_exit402.3, label %polly.loop_header400.3

polly.loop_exit402.3:                             ; preds = %polly.loop_exit408.3
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next824 = add nuw nsw i64 %indvars.iv823, 16
  %exitcond830.not = icmp eq i64 %polly.indvar_next392, 5
  br i1 %exitcond830.not, label %polly.loop_exit390, label %polly.loop_header388

polly.loop_header567.1:                           ; preds = %polly.loop_exit575, %polly.loop_exit575.1
  %indvars.iv840.1 = phi i64 [ %indvars.iv.next841.1, %polly.loop_exit575.1 ], [ %indvars.iv838, %polly.loop_exit575 ]
  %polly.indvar570.1 = phi i64 [ %polly.indvar_next571.1, %polly.loop_exit575.1 ], [ 0, %polly.loop_exit575 ]
  %259 = add nuw nsw i64 %polly.indvar570.1, %166
  %polly.access.mul.Packed_MemRef_call2434582.1 = shl nsw i64 %259, 2
  %polly.access.add.Packed_MemRef_call2434583.1 = or i64 %polly.access.mul.Packed_MemRef_call2434582.1, 1
  %polly.access.Packed_MemRef_call2434584.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1
  %_p_scalar_585.1 = load double, double* %polly.access.Packed_MemRef_call2434584.1, align 8
  %260 = mul nuw nsw i64 %259, 480
  %261 = add nuw nsw i64 %260, %162
  %scevgep590.1 = getelementptr i8, i8* %call1, i64 %261
  %scevgep590591.1 = bitcast i8* %scevgep590.1 to double*
  %_p_scalar_592.1 = load double, double* %scevgep590591.1, align 8, !alias.scope !90, !noalias !95
  %262 = mul nuw nsw i64 %259, 640
  br label %polly.loop_header573.1

polly.loop_header573.1:                           ; preds = %polly.loop_header573.1, %polly.loop_header567.1
  %polly.indvar576.1 = phi i64 [ 0, %polly.loop_header567.1 ], [ %polly.indvar_next577.1, %polly.loop_header573.1 ]
  %263 = mul nuw nsw i64 %polly.indvar576.1, 480
  %264 = add nuw nsw i64 %263, %162
  %scevgep579.1 = getelementptr i8, i8* %call1, i64 %264
  %scevgep579580.1 = bitcast i8* %scevgep579.1 to double*
  %_p_scalar_581.1 = load double, double* %scevgep579580.1, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.1 = fmul fast double %_p_scalar_585.1, %_p_scalar_581.1
  %polly.access.mul.Packed_MemRef_call2434586.1 = shl nsw i64 %polly.indvar576.1, 2
  %polly.access.add.Packed_MemRef_call2434587.1 = or i64 %polly.access.mul.Packed_MemRef_call2434586.1, 1
  %polly.access.Packed_MemRef_call2434588.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2434588.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_592.1, %_p_scalar_589.1
  %265 = shl nuw nsw i64 %polly.indvar576.1, 3
  %266 = add nuw nsw i64 %265, %262
  %scevgep593.1 = getelementptr i8, i8* %call, i64 %266
  %scevgep593594.1 = bitcast i8* %scevgep593.1 to double*
  %_p_scalar_595.1 = load double, double* %scevgep593594.1, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_595.1
  store double %p_add42.i.1, double* %scevgep593594.1, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.1 = add nuw nsw i64 %polly.indvar576.1, 1
  %exitcond842.1.not = icmp eq i64 %polly.indvar_next577.1, %indvars.iv840.1
  br i1 %exitcond842.1.not, label %polly.loop_exit575.1, label %polly.loop_header573.1

polly.loop_exit575.1:                             ; preds = %polly.loop_header573.1
  %polly.indvar_next571.1 = add nuw nsw i64 %polly.indvar570.1, 1
  %indvars.iv.next841.1 = add nuw nsw i64 %indvars.iv840.1, 1
  %exitcond843.1.not = icmp eq i64 %polly.indvar_next571.1, 16
  br i1 %exitcond843.1.not, label %polly.loop_header567.2, label %polly.loop_header567.1

polly.loop_header567.2:                           ; preds = %polly.loop_exit575.1, %polly.loop_exit575.2
  %indvars.iv840.2 = phi i64 [ %indvars.iv.next841.2, %polly.loop_exit575.2 ], [ %indvars.iv838, %polly.loop_exit575.1 ]
  %polly.indvar570.2 = phi i64 [ %polly.indvar_next571.2, %polly.loop_exit575.2 ], [ 0, %polly.loop_exit575.1 ]
  %267 = add nuw nsw i64 %polly.indvar570.2, %166
  %polly.access.mul.Packed_MemRef_call2434582.2 = shl nsw i64 %267, 2
  %polly.access.add.Packed_MemRef_call2434583.2 = or i64 %polly.access.mul.Packed_MemRef_call2434582.2, 2
  %polly.access.Packed_MemRef_call2434584.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.2
  %_p_scalar_585.2 = load double, double* %polly.access.Packed_MemRef_call2434584.2, align 8
  %268 = mul nuw nsw i64 %267, 480
  %269 = add nuw nsw i64 %268, %164
  %scevgep590.2 = getelementptr i8, i8* %call1, i64 %269
  %scevgep590591.2 = bitcast i8* %scevgep590.2 to double*
  %_p_scalar_592.2 = load double, double* %scevgep590591.2, align 8, !alias.scope !90, !noalias !95
  %270 = mul nuw nsw i64 %267, 640
  br label %polly.loop_header573.2

polly.loop_header573.2:                           ; preds = %polly.loop_header573.2, %polly.loop_header567.2
  %polly.indvar576.2 = phi i64 [ 0, %polly.loop_header567.2 ], [ %polly.indvar_next577.2, %polly.loop_header573.2 ]
  %271 = mul nuw nsw i64 %polly.indvar576.2, 480
  %272 = add nuw nsw i64 %271, %164
  %scevgep579.2 = getelementptr i8, i8* %call1, i64 %272
  %scevgep579580.2 = bitcast i8* %scevgep579.2 to double*
  %_p_scalar_581.2 = load double, double* %scevgep579580.2, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.2 = fmul fast double %_p_scalar_585.2, %_p_scalar_581.2
  %polly.access.mul.Packed_MemRef_call2434586.2 = shl nsw i64 %polly.indvar576.2, 2
  %polly.access.add.Packed_MemRef_call2434587.2 = or i64 %polly.access.mul.Packed_MemRef_call2434586.2, 2
  %polly.access.Packed_MemRef_call2434588.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.2
  %_p_scalar_589.2 = load double, double* %polly.access.Packed_MemRef_call2434588.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_592.2, %_p_scalar_589.2
  %273 = shl nuw nsw i64 %polly.indvar576.2, 3
  %274 = add nuw nsw i64 %273, %270
  %scevgep593.2 = getelementptr i8, i8* %call, i64 %274
  %scevgep593594.2 = bitcast i8* %scevgep593.2 to double*
  %_p_scalar_595.2 = load double, double* %scevgep593594.2, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_595.2
  store double %p_add42.i.2, double* %scevgep593594.2, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.2 = add nuw nsw i64 %polly.indvar576.2, 1
  %exitcond842.2.not = icmp eq i64 %polly.indvar_next577.2, %indvars.iv840.2
  br i1 %exitcond842.2.not, label %polly.loop_exit575.2, label %polly.loop_header573.2

polly.loop_exit575.2:                             ; preds = %polly.loop_header573.2
  %polly.indvar_next571.2 = add nuw nsw i64 %polly.indvar570.2, 1
  %indvars.iv.next841.2 = add nuw nsw i64 %indvars.iv840.2, 1
  %exitcond843.2.not = icmp eq i64 %polly.indvar_next571.2, 16
  br i1 %exitcond843.2.not, label %polly.loop_header567.3, label %polly.loop_header567.2

polly.loop_header567.3:                           ; preds = %polly.loop_exit575.2, %polly.loop_exit575.3
  %indvars.iv840.3 = phi i64 [ %indvars.iv.next841.3, %polly.loop_exit575.3 ], [ %indvars.iv838, %polly.loop_exit575.2 ]
  %polly.indvar570.3 = phi i64 [ %polly.indvar_next571.3, %polly.loop_exit575.3 ], [ 0, %polly.loop_exit575.2 ]
  %275 = add nuw nsw i64 %polly.indvar570.3, %166
  %polly.access.mul.Packed_MemRef_call2434582.3 = shl nsw i64 %275, 2
  %polly.access.add.Packed_MemRef_call2434583.3 = or i64 %polly.access.mul.Packed_MemRef_call2434582.3, 3
  %polly.access.Packed_MemRef_call2434584.3 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.3
  %_p_scalar_585.3 = load double, double* %polly.access.Packed_MemRef_call2434584.3, align 8
  %276 = mul nuw nsw i64 %275, 480
  %277 = add nuw nsw i64 %276, %165
  %scevgep590.3 = getelementptr i8, i8* %call1, i64 %277
  %scevgep590591.3 = bitcast i8* %scevgep590.3 to double*
  %_p_scalar_592.3 = load double, double* %scevgep590591.3, align 8, !alias.scope !90, !noalias !95
  %278 = mul nuw nsw i64 %275, 640
  br label %polly.loop_header573.3

polly.loop_header573.3:                           ; preds = %polly.loop_header573.3, %polly.loop_header567.3
  %polly.indvar576.3 = phi i64 [ 0, %polly.loop_header567.3 ], [ %polly.indvar_next577.3, %polly.loop_header573.3 ]
  %279 = mul nuw nsw i64 %polly.indvar576.3, 480
  %280 = add nuw nsw i64 %279, %165
  %scevgep579.3 = getelementptr i8, i8* %call1, i64 %280
  %scevgep579580.3 = bitcast i8* %scevgep579.3 to double*
  %_p_scalar_581.3 = load double, double* %scevgep579580.3, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.3 = fmul fast double %_p_scalar_585.3, %_p_scalar_581.3
  %polly.access.mul.Packed_MemRef_call2434586.3 = shl nsw i64 %polly.indvar576.3, 2
  %polly.access.add.Packed_MemRef_call2434587.3 = or i64 %polly.access.mul.Packed_MemRef_call2434586.3, 3
  %polly.access.Packed_MemRef_call2434588.3 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.3
  %_p_scalar_589.3 = load double, double* %polly.access.Packed_MemRef_call2434588.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_592.3, %_p_scalar_589.3
  %281 = shl nuw nsw i64 %polly.indvar576.3, 3
  %282 = add nuw nsw i64 %281, %278
  %scevgep593.3 = getelementptr i8, i8* %call, i64 %282
  %scevgep593594.3 = bitcast i8* %scevgep593.3 to double*
  %_p_scalar_595.3 = load double, double* %scevgep593594.3, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_595.3
  store double %p_add42.i.3, double* %scevgep593594.3, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.3 = add nuw nsw i64 %polly.indvar576.3, 1
  %exitcond842.3.not = icmp eq i64 %polly.indvar_next577.3, %indvars.iv840.3
  br i1 %exitcond842.3.not, label %polly.loop_exit575.3, label %polly.loop_header573.3

polly.loop_exit575.3:                             ; preds = %polly.loop_header573.3
  %polly.indvar_next571.3 = add nuw nsw i64 %polly.indvar570.3, 1
  %indvars.iv.next841.3 = add nuw nsw i64 %indvars.iv840.3, 1
  %exitcond843.3.not = icmp eq i64 %polly.indvar_next571.3, 16
  br i1 %exitcond843.3.not, label %polly.loop_exit569.3, label %polly.loop_header567.3

polly.loop_exit569.3:                             ; preds = %polly.loop_exit575.3
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 16
  %exitcond845.not = icmp eq i64 %polly.indvar_next559, 5
  br i1 %exitcond845.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header787.1:                           ; preds = %polly.loop_exit795, %polly.loop_exit795.1
  %polly.indvar790.1 = phi i64 [ %polly.indvar_next791.1, %polly.loop_exit795.1 ], [ 0, %polly.loop_exit795 ]
  %283 = mul nuw nsw i64 %polly.indvar790.1, 480
  %284 = trunc i64 %polly.indvar790.1 to i32
  %broadcast.splatinsert1161 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1162 = shufflevector <4 x i32> %broadcast.splatinsert1161, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_header787.1
  %index1155 = phi i64 [ 0, %polly.loop_header787.1 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1159 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1 ], [ %vec.ind.next1160, %vector.body1153 ]
  %285 = add nuw nsw <4 x i64> %vec.ind1159, <i64 32, i64 32, i64 32, i64 32>
  %286 = trunc <4 x i64> %285 to <4 x i32>
  %287 = mul <4 x i32> %broadcast.splat1162, %286
  %288 = add <4 x i32> %287, <i32 1, i32 1, i32 1, i32 1>
  %289 = urem <4 x i32> %288, <i32 80, i32 80, i32 80, i32 80>
  %290 = sitofp <4 x i32> %289 to <4 x double>
  %291 = fmul fast <4 x double> %290, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %292 = extractelement <4 x i64> %285, i32 0
  %293 = shl i64 %292, 3
  %294 = add i64 %293, %283
  %295 = getelementptr i8, i8* %call1, i64 %294
  %296 = bitcast i8* %295 to <4 x double>*
  store <4 x double> %291, <4 x double>* %296, align 8, !alias.scope !99, !noalias !104
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1160 = add <4 x i64> %vec.ind1159, <i64 4, i64 4, i64 4, i64 4>
  %297 = icmp eq i64 %index.next1156, 28
  br i1 %297, label %polly.loop_exit795.1, label %vector.body1153, !llvm.loop !106

polly.loop_exit795.1:                             ; preds = %vector.body1153
  %polly.indvar_next791.1 = add nuw nsw i64 %polly.indvar790.1, 1
  %exitcond852.1.not = icmp eq i64 %polly.indvar_next791.1, 32
  br i1 %exitcond852.1.not, label %polly.loop_header787.1872, label %polly.loop_header787.1

polly.loop_header787.1872:                        ; preds = %polly.loop_exit795.1, %polly.loop_exit795.1883
  %polly.indvar790.1871 = phi i64 [ %polly.indvar_next791.1881, %polly.loop_exit795.1883 ], [ 0, %polly.loop_exit795.1 ]
  %298 = add nuw nsw i64 %polly.indvar790.1871, 32
  %299 = mul nuw nsw i64 %298, 480
  %300 = trunc i64 %298 to i32
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %polly.loop_header787.1872
  %index1167 = phi i64 [ 0, %polly.loop_header787.1872 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1173 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.1872 ], [ %vec.ind.next1174, %vector.body1165 ]
  %301 = mul <4 x i32> %vec.ind1173, %broadcast.splat1176
  %302 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  %303 = urem <4 x i32> %302, <i32 80, i32 80, i32 80, i32 80>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %306 = shl i64 %index1167, 3
  %307 = add i64 %306, %299
  %308 = getelementptr i8, i8* %call1, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %305, <4 x double>* %309, align 8, !alias.scope !99, !noalias !104
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1174 = add <4 x i32> %vec.ind1173, <i32 4, i32 4, i32 4, i32 4>
  %310 = icmp eq i64 %index.next1168, 32
  br i1 %310, label %polly.loop_exit795.1883, label %vector.body1165, !llvm.loop !107

polly.loop_exit795.1883:                          ; preds = %vector.body1165
  %polly.indvar_next791.1881 = add nuw nsw i64 %polly.indvar790.1871, 1
  %exitcond852.1882.not = icmp eq i64 %polly.indvar_next791.1881, 32
  br i1 %exitcond852.1882.not, label %polly.loop_header787.1.1, label %polly.loop_header787.1872

polly.loop_header787.1.1:                         ; preds = %polly.loop_exit795.1883, %polly.loop_exit795.1.1
  %polly.indvar790.1.1 = phi i64 [ %polly.indvar_next791.1.1, %polly.loop_exit795.1.1 ], [ 0, %polly.loop_exit795.1883 ]
  %311 = add nuw nsw i64 %polly.indvar790.1.1, 32
  %312 = mul nuw nsw i64 %311, 480
  %313 = trunc i64 %311 to i32
  %broadcast.splatinsert1187 = insertelement <4 x i32> poison, i32 %313, i32 0
  %broadcast.splat1188 = shufflevector <4 x i32> %broadcast.splatinsert1187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %polly.loop_header787.1.1
  %index1181 = phi i64 [ 0, %polly.loop_header787.1.1 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1185 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.1 ], [ %vec.ind.next1186, %vector.body1179 ]
  %314 = add nuw nsw <4 x i64> %vec.ind1185, <i64 32, i64 32, i64 32, i64 32>
  %315 = trunc <4 x i64> %314 to <4 x i32>
  %316 = mul <4 x i32> %broadcast.splat1188, %315
  %317 = add <4 x i32> %316, <i32 1, i32 1, i32 1, i32 1>
  %318 = urem <4 x i32> %317, <i32 80, i32 80, i32 80, i32 80>
  %319 = sitofp <4 x i32> %318 to <4 x double>
  %320 = fmul fast <4 x double> %319, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %321 = extractelement <4 x i64> %314, i32 0
  %322 = shl i64 %321, 3
  %323 = add i64 %322, %312
  %324 = getelementptr i8, i8* %call1, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %320, <4 x double>* %325, align 8, !alias.scope !99, !noalias !104
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1186 = add <4 x i64> %vec.ind1185, <i64 4, i64 4, i64 4, i64 4>
  %326 = icmp eq i64 %index.next1182, 28
  br i1 %326, label %polly.loop_exit795.1.1, label %vector.body1179, !llvm.loop !108

polly.loop_exit795.1.1:                           ; preds = %vector.body1179
  %polly.indvar_next791.1.1 = add nuw nsw i64 %polly.indvar790.1.1, 1
  %exitcond852.1.1.not = icmp eq i64 %polly.indvar_next791.1.1, 32
  br i1 %exitcond852.1.1.not, label %polly.loop_header787.2, label %polly.loop_header787.1.1

polly.loop_header787.2:                           ; preds = %polly.loop_exit795.1.1, %polly.loop_exit795.2
  %polly.indvar790.2 = phi i64 [ %polly.indvar_next791.2, %polly.loop_exit795.2 ], [ 0, %polly.loop_exit795.1.1 ]
  %327 = add nuw nsw i64 %polly.indvar790.2, 64
  %328 = mul nuw nsw i64 %327, 480
  %329 = trunc i64 %327 to i32
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %329, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %polly.loop_header787.2
  %index1193 = phi i64 [ 0, %polly.loop_header787.2 ], [ %index.next1194, %vector.body1191 ]
  %vec.ind1199 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.2 ], [ %vec.ind.next1200, %vector.body1191 ]
  %330 = mul <4 x i32> %vec.ind1199, %broadcast.splat1202
  %331 = add <4 x i32> %330, <i32 1, i32 1, i32 1, i32 1>
  %332 = urem <4 x i32> %331, <i32 80, i32 80, i32 80, i32 80>
  %333 = sitofp <4 x i32> %332 to <4 x double>
  %334 = fmul fast <4 x double> %333, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %335 = shl i64 %index1193, 3
  %336 = add i64 %335, %328
  %337 = getelementptr i8, i8* %call1, i64 %336
  %338 = bitcast i8* %337 to <4 x double>*
  store <4 x double> %334, <4 x double>* %338, align 8, !alias.scope !99, !noalias !104
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1200 = add <4 x i32> %vec.ind1199, <i32 4, i32 4, i32 4, i32 4>
  %339 = icmp eq i64 %index.next1194, 32
  br i1 %339, label %polly.loop_exit795.2, label %vector.body1191, !llvm.loop !109

polly.loop_exit795.2:                             ; preds = %vector.body1191
  %polly.indvar_next791.2 = add nuw nsw i64 %polly.indvar790.2, 1
  %exitcond852.2.not = icmp eq i64 %polly.indvar_next791.2, 16
  br i1 %exitcond852.2.not, label %polly.loop_header787.1.2, label %polly.loop_header787.2

polly.loop_header787.1.2:                         ; preds = %polly.loop_exit795.2, %polly.loop_exit795.1.2
  %polly.indvar790.1.2 = phi i64 [ %polly.indvar_next791.1.2, %polly.loop_exit795.1.2 ], [ 0, %polly.loop_exit795.2 ]
  %340 = add nuw nsw i64 %polly.indvar790.1.2, 64
  %341 = mul nuw nsw i64 %340, 480
  %342 = trunc i64 %340 to i32
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %polly.loop_header787.1.2
  %index1207 = phi i64 [ 0, %polly.loop_header787.1.2 ], [ %index.next1208, %vector.body1205 ]
  %vec.ind1211 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.2 ], [ %vec.ind.next1212, %vector.body1205 ]
  %343 = add nuw nsw <4 x i64> %vec.ind1211, <i64 32, i64 32, i64 32, i64 32>
  %344 = trunc <4 x i64> %343 to <4 x i32>
  %345 = mul <4 x i32> %broadcast.splat1214, %344
  %346 = add <4 x i32> %345, <i32 1, i32 1, i32 1, i32 1>
  %347 = urem <4 x i32> %346, <i32 80, i32 80, i32 80, i32 80>
  %348 = sitofp <4 x i32> %347 to <4 x double>
  %349 = fmul fast <4 x double> %348, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %350 = extractelement <4 x i64> %343, i32 0
  %351 = shl i64 %350, 3
  %352 = add i64 %351, %341
  %353 = getelementptr i8, i8* %call1, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %349, <4 x double>* %354, align 8, !alias.scope !99, !noalias !104
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1212 = add <4 x i64> %vec.ind1211, <i64 4, i64 4, i64 4, i64 4>
  %355 = icmp eq i64 %index.next1208, 28
  br i1 %355, label %polly.loop_exit795.1.2, label %vector.body1205, !llvm.loop !110

polly.loop_exit795.1.2:                           ; preds = %vector.body1205
  %polly.indvar_next791.1.2 = add nuw nsw i64 %polly.indvar790.1.2, 1
  %exitcond852.1.2.not = icmp eq i64 %polly.indvar_next791.1.2, 16
  br i1 %exitcond852.1.2.not, label %init_array.exit, label %polly.loop_header787.1.2

polly.loop_header761.1:                           ; preds = %polly.loop_exit769, %polly.loop_exit769.1
  %polly.indvar764.1 = phi i64 [ %polly.indvar_next765.1, %polly.loop_exit769.1 ], [ 0, %polly.loop_exit769 ]
  %356 = mul nuw nsw i64 %polly.indvar764.1, 480
  %357 = trunc i64 %polly.indvar764.1 to i32
  %broadcast.splatinsert1083 = insertelement <4 x i32> poison, i32 %357, i32 0
  %broadcast.splat1084 = shufflevector <4 x i32> %broadcast.splatinsert1083, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %polly.loop_header761.1
  %index1077 = phi i64 [ 0, %polly.loop_header761.1 ], [ %index.next1078, %vector.body1075 ]
  %vec.ind1081 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1 ], [ %vec.ind.next1082, %vector.body1075 ]
  %358 = add nuw nsw <4 x i64> %vec.ind1081, <i64 32, i64 32, i64 32, i64 32>
  %359 = trunc <4 x i64> %358 to <4 x i32>
  %360 = mul <4 x i32> %broadcast.splat1084, %359
  %361 = add <4 x i32> %360, <i32 2, i32 2, i32 2, i32 2>
  %362 = urem <4 x i32> %361, <i32 60, i32 60, i32 60, i32 60>
  %363 = sitofp <4 x i32> %362 to <4 x double>
  %364 = fmul fast <4 x double> %363, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %365 = extractelement <4 x i64> %358, i32 0
  %366 = shl i64 %365, 3
  %367 = add i64 %366, %356
  %368 = getelementptr i8, i8* %call2, i64 %367
  %369 = bitcast i8* %368 to <4 x double>*
  store <4 x double> %364, <4 x double>* %369, align 8, !alias.scope !100, !noalias !102
  %index.next1078 = add i64 %index1077, 4
  %vec.ind.next1082 = add <4 x i64> %vec.ind1081, <i64 4, i64 4, i64 4, i64 4>
  %370 = icmp eq i64 %index.next1078, 28
  br i1 %370, label %polly.loop_exit769.1, label %vector.body1075, !llvm.loop !111

polly.loop_exit769.1:                             ; preds = %vector.body1075
  %polly.indvar_next765.1 = add nuw nsw i64 %polly.indvar764.1, 1
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next765.1, 32
  br i1 %exitcond858.1.not, label %polly.loop_header761.1886, label %polly.loop_header761.1

polly.loop_header761.1886:                        ; preds = %polly.loop_exit769.1, %polly.loop_exit769.1897
  %polly.indvar764.1885 = phi i64 [ %polly.indvar_next765.1895, %polly.loop_exit769.1897 ], [ 0, %polly.loop_exit769.1 ]
  %371 = add nuw nsw i64 %polly.indvar764.1885, 32
  %372 = mul nuw nsw i64 %371, 480
  %373 = trunc i64 %371 to i32
  %broadcast.splatinsert1097 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat1098 = shufflevector <4 x i32> %broadcast.splatinsert1097, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.body1087, %polly.loop_header761.1886
  %index1089 = phi i64 [ 0, %polly.loop_header761.1886 ], [ %index.next1090, %vector.body1087 ]
  %vec.ind1095 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.1886 ], [ %vec.ind.next1096, %vector.body1087 ]
  %374 = mul <4 x i32> %vec.ind1095, %broadcast.splat1098
  %375 = add <4 x i32> %374, <i32 2, i32 2, i32 2, i32 2>
  %376 = urem <4 x i32> %375, <i32 60, i32 60, i32 60, i32 60>
  %377 = sitofp <4 x i32> %376 to <4 x double>
  %378 = fmul fast <4 x double> %377, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %379 = shl i64 %index1089, 3
  %380 = add i64 %379, %372
  %381 = getelementptr i8, i8* %call2, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %378, <4 x double>* %382, align 8, !alias.scope !100, !noalias !102
  %index.next1090 = add i64 %index1089, 4
  %vec.ind.next1096 = add <4 x i32> %vec.ind1095, <i32 4, i32 4, i32 4, i32 4>
  %383 = icmp eq i64 %index.next1090, 32
  br i1 %383, label %polly.loop_exit769.1897, label %vector.body1087, !llvm.loop !112

polly.loop_exit769.1897:                          ; preds = %vector.body1087
  %polly.indvar_next765.1895 = add nuw nsw i64 %polly.indvar764.1885, 1
  %exitcond858.1896.not = icmp eq i64 %polly.indvar_next765.1895, 32
  br i1 %exitcond858.1896.not, label %polly.loop_header761.1.1, label %polly.loop_header761.1886

polly.loop_header761.1.1:                         ; preds = %polly.loop_exit769.1897, %polly.loop_exit769.1.1
  %polly.indvar764.1.1 = phi i64 [ %polly.indvar_next765.1.1, %polly.loop_exit769.1.1 ], [ 0, %polly.loop_exit769.1897 ]
  %384 = add nuw nsw i64 %polly.indvar764.1.1, 32
  %385 = mul nuw nsw i64 %384, 480
  %386 = trunc i64 %384 to i32
  %broadcast.splatinsert1109 = insertelement <4 x i32> poison, i32 %386, i32 0
  %broadcast.splat1110 = shufflevector <4 x i32> %broadcast.splatinsert1109, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %polly.loop_header761.1.1
  %index1103 = phi i64 [ 0, %polly.loop_header761.1.1 ], [ %index.next1104, %vector.body1101 ]
  %vec.ind1107 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.1 ], [ %vec.ind.next1108, %vector.body1101 ]
  %387 = add nuw nsw <4 x i64> %vec.ind1107, <i64 32, i64 32, i64 32, i64 32>
  %388 = trunc <4 x i64> %387 to <4 x i32>
  %389 = mul <4 x i32> %broadcast.splat1110, %388
  %390 = add <4 x i32> %389, <i32 2, i32 2, i32 2, i32 2>
  %391 = urem <4 x i32> %390, <i32 60, i32 60, i32 60, i32 60>
  %392 = sitofp <4 x i32> %391 to <4 x double>
  %393 = fmul fast <4 x double> %392, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %394 = extractelement <4 x i64> %387, i32 0
  %395 = shl i64 %394, 3
  %396 = add i64 %395, %385
  %397 = getelementptr i8, i8* %call2, i64 %396
  %398 = bitcast i8* %397 to <4 x double>*
  store <4 x double> %393, <4 x double>* %398, align 8, !alias.scope !100, !noalias !102
  %index.next1104 = add i64 %index1103, 4
  %vec.ind.next1108 = add <4 x i64> %vec.ind1107, <i64 4, i64 4, i64 4, i64 4>
  %399 = icmp eq i64 %index.next1104, 28
  br i1 %399, label %polly.loop_exit769.1.1, label %vector.body1101, !llvm.loop !113

polly.loop_exit769.1.1:                           ; preds = %vector.body1101
  %polly.indvar_next765.1.1 = add nuw nsw i64 %polly.indvar764.1.1, 1
  %exitcond858.1.1.not = icmp eq i64 %polly.indvar_next765.1.1, 32
  br i1 %exitcond858.1.1.not, label %polly.loop_header761.2, label %polly.loop_header761.1.1

polly.loop_header761.2:                           ; preds = %polly.loop_exit769.1.1, %polly.loop_exit769.2
  %polly.indvar764.2 = phi i64 [ %polly.indvar_next765.2, %polly.loop_exit769.2 ], [ 0, %polly.loop_exit769.1.1 ]
  %400 = add nuw nsw i64 %polly.indvar764.2, 64
  %401 = mul nuw nsw i64 %400, 480
  %402 = trunc i64 %400 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %402, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %polly.loop_header761.2
  %index1115 = phi i64 [ 0, %polly.loop_header761.2 ], [ %index.next1116, %vector.body1113 ]
  %vec.ind1121 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.2 ], [ %vec.ind.next1122, %vector.body1113 ]
  %403 = mul <4 x i32> %vec.ind1121, %broadcast.splat1124
  %404 = add <4 x i32> %403, <i32 2, i32 2, i32 2, i32 2>
  %405 = urem <4 x i32> %404, <i32 60, i32 60, i32 60, i32 60>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %408 = shl i64 %index1115, 3
  %409 = add i64 %408, %401
  %410 = getelementptr i8, i8* %call2, i64 %409
  %411 = bitcast i8* %410 to <4 x double>*
  store <4 x double> %407, <4 x double>* %411, align 8, !alias.scope !100, !noalias !102
  %index.next1116 = add i64 %index1115, 4
  %vec.ind.next1122 = add <4 x i32> %vec.ind1121, <i32 4, i32 4, i32 4, i32 4>
  %412 = icmp eq i64 %index.next1116, 32
  br i1 %412, label %polly.loop_exit769.2, label %vector.body1113, !llvm.loop !114

polly.loop_exit769.2:                             ; preds = %vector.body1113
  %polly.indvar_next765.2 = add nuw nsw i64 %polly.indvar764.2, 1
  %exitcond858.2.not = icmp eq i64 %polly.indvar_next765.2, 16
  br i1 %exitcond858.2.not, label %polly.loop_header761.1.2, label %polly.loop_header761.2

polly.loop_header761.1.2:                         ; preds = %polly.loop_exit769.2, %polly.loop_exit769.1.2
  %polly.indvar764.1.2 = phi i64 [ %polly.indvar_next765.1.2, %polly.loop_exit769.1.2 ], [ 0, %polly.loop_exit769.2 ]
  %413 = add nuw nsw i64 %polly.indvar764.1.2, 64
  %414 = mul nuw nsw i64 %413, 480
  %415 = trunc i64 %413 to i32
  %broadcast.splatinsert1135 = insertelement <4 x i32> poison, i32 %415, i32 0
  %broadcast.splat1136 = shufflevector <4 x i32> %broadcast.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header761.1.2
  %index1129 = phi i64 [ 0, %polly.loop_header761.1.2 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1133 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.2 ], [ %vec.ind.next1134, %vector.body1127 ]
  %416 = add nuw nsw <4 x i64> %vec.ind1133, <i64 32, i64 32, i64 32, i64 32>
  %417 = trunc <4 x i64> %416 to <4 x i32>
  %418 = mul <4 x i32> %broadcast.splat1136, %417
  %419 = add <4 x i32> %418, <i32 2, i32 2, i32 2, i32 2>
  %420 = urem <4 x i32> %419, <i32 60, i32 60, i32 60, i32 60>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %423 = extractelement <4 x i64> %416, i32 0
  %424 = shl i64 %423, 3
  %425 = add i64 %424, %414
  %426 = getelementptr i8, i8* %call2, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %422, <4 x double>* %427, align 8, !alias.scope !100, !noalias !102
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1134 = add <4 x i64> %vec.ind1133, <i64 4, i64 4, i64 4, i64 4>
  %428 = icmp eq i64 %index.next1130, 28
  br i1 %428, label %polly.loop_exit769.1.2, label %vector.body1127, !llvm.loop !115

polly.loop_exit769.1.2:                           ; preds = %vector.body1127
  %polly.indvar_next765.1.2 = add nuw nsw i64 %polly.indvar764.1.2, 1
  %exitcond858.1.2.not = icmp eq i64 %polly.indvar_next765.1.2, 16
  br i1 %exitcond858.1.2.not, label %polly.loop_header787, label %polly.loop_header761.1.2

polly.loop_header734.1:                           ; preds = %polly.loop_exit742, %polly.loop_exit742.1
  %polly.indvar737.1 = phi i64 [ %polly.indvar_next738.1, %polly.loop_exit742.1 ], [ 0, %polly.loop_exit742 ]
  %429 = mul nuw nsw i64 %polly.indvar737.1, 640
  %430 = trunc i64 %polly.indvar737.1 to i32
  %broadcast.splatinsert969 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat970 = shufflevector <4 x i32> %broadcast.splatinsert969, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %polly.loop_header734.1
  %index963 = phi i64 [ 0, %polly.loop_header734.1 ], [ %index.next964, %vector.body961 ]
  %vec.ind967 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1 ], [ %vec.ind.next968, %vector.body961 ]
  %431 = add nuw nsw <4 x i64> %vec.ind967, <i64 32, i64 32, i64 32, i64 32>
  %432 = trunc <4 x i64> %431 to <4 x i32>
  %433 = mul <4 x i32> %broadcast.splat970, %432
  %434 = add <4 x i32> %433, <i32 3, i32 3, i32 3, i32 3>
  %435 = urem <4 x i32> %434, <i32 80, i32 80, i32 80, i32 80>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = extractelement <4 x i64> %431, i32 0
  %439 = shl i64 %438, 3
  %440 = add nuw nsw i64 %439, %429
  %441 = getelementptr i8, i8* %call, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %437, <4 x double>* %442, align 8, !alias.scope !96, !noalias !98
  %index.next964 = add i64 %index963, 4
  %vec.ind.next968 = add <4 x i64> %vec.ind967, <i64 4, i64 4, i64 4, i64 4>
  %443 = icmp eq i64 %index.next964, 32
  br i1 %443, label %polly.loop_exit742.1, label %vector.body961, !llvm.loop !116

polly.loop_exit742.1:                             ; preds = %vector.body961
  %polly.indvar_next738.1 = add nuw nsw i64 %polly.indvar737.1, 1
  %exitcond867.1.not = icmp eq i64 %polly.indvar_next738.1, 32
  br i1 %exitcond867.1.not, label %polly.loop_header734.2, label %polly.loop_header734.1

polly.loop_header734.2:                           ; preds = %polly.loop_exit742.1, %polly.loop_exit742.2
  %polly.indvar737.2 = phi i64 [ %polly.indvar_next738.2, %polly.loop_exit742.2 ], [ 0, %polly.loop_exit742.1 ]
  %444 = mul nuw nsw i64 %polly.indvar737.2, 640
  %445 = trunc i64 %polly.indvar737.2 to i32
  %broadcast.splatinsert981 = insertelement <4 x i32> poison, i32 %445, i32 0
  %broadcast.splat982 = shufflevector <4 x i32> %broadcast.splatinsert981, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %polly.loop_header734.2
  %index975 = phi i64 [ 0, %polly.loop_header734.2 ], [ %index.next976, %vector.body973 ]
  %vec.ind979 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2 ], [ %vec.ind.next980, %vector.body973 ]
  %446 = add nuw nsw <4 x i64> %vec.ind979, <i64 64, i64 64, i64 64, i64 64>
  %447 = trunc <4 x i64> %446 to <4 x i32>
  %448 = mul <4 x i32> %broadcast.splat982, %447
  %449 = add <4 x i32> %448, <i32 3, i32 3, i32 3, i32 3>
  %450 = urem <4 x i32> %449, <i32 80, i32 80, i32 80, i32 80>
  %451 = sitofp <4 x i32> %450 to <4 x double>
  %452 = fmul fast <4 x double> %451, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %453 = extractelement <4 x i64> %446, i32 0
  %454 = shl i64 %453, 3
  %455 = add nuw nsw i64 %454, %444
  %456 = getelementptr i8, i8* %call, i64 %455
  %457 = bitcast i8* %456 to <4 x double>*
  store <4 x double> %452, <4 x double>* %457, align 8, !alias.scope !96, !noalias !98
  %index.next976 = add i64 %index975, 4
  %vec.ind.next980 = add <4 x i64> %vec.ind979, <i64 4, i64 4, i64 4, i64 4>
  %458 = icmp eq i64 %index.next976, 16
  br i1 %458, label %polly.loop_exit742.2, label %vector.body973, !llvm.loop !117

polly.loop_exit742.2:                             ; preds = %vector.body973
  %polly.indvar_next738.2 = add nuw nsw i64 %polly.indvar737.2, 1
  %exitcond867.2.not = icmp eq i64 %polly.indvar_next738.2, 32
  br i1 %exitcond867.2.not, label %polly.loop_header734.1900, label %polly.loop_header734.2

polly.loop_header734.1900:                        ; preds = %polly.loop_exit742.2, %polly.loop_exit742.1911
  %polly.indvar737.1899 = phi i64 [ %polly.indvar_next738.1909, %polly.loop_exit742.1911 ], [ 0, %polly.loop_exit742.2 ]
  %459 = add nuw nsw i64 %polly.indvar737.1899, 32
  %460 = mul nuw nsw i64 %459, 640
  %461 = trunc i64 %459 to i32
  %broadcast.splatinsert995 = insertelement <4 x i32> poison, i32 %461, i32 0
  %broadcast.splat996 = shufflevector <4 x i32> %broadcast.splatinsert995, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body985

vector.body985:                                   ; preds = %vector.body985, %polly.loop_header734.1900
  %index987 = phi i64 [ 0, %polly.loop_header734.1900 ], [ %index.next988, %vector.body985 ]
  %vec.ind993 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.1900 ], [ %vec.ind.next994, %vector.body985 ]
  %462 = mul <4 x i32> %vec.ind993, %broadcast.splat996
  %463 = add <4 x i32> %462, <i32 3, i32 3, i32 3, i32 3>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %467 = shl i64 %index987, 3
  %468 = add nuw nsw i64 %467, %460
  %469 = getelementptr i8, i8* %call, i64 %468
  %470 = bitcast i8* %469 to <4 x double>*
  store <4 x double> %466, <4 x double>* %470, align 8, !alias.scope !96, !noalias !98
  %index.next988 = add i64 %index987, 4
  %vec.ind.next994 = add <4 x i32> %vec.ind993, <i32 4, i32 4, i32 4, i32 4>
  %471 = icmp eq i64 %index.next988, 32
  br i1 %471, label %polly.loop_exit742.1911, label %vector.body985, !llvm.loop !118

polly.loop_exit742.1911:                          ; preds = %vector.body985
  %polly.indvar_next738.1909 = add nuw nsw i64 %polly.indvar737.1899, 1
  %exitcond867.1910.not = icmp eq i64 %polly.indvar_next738.1909, 32
  br i1 %exitcond867.1910.not, label %polly.loop_header734.1.1, label %polly.loop_header734.1900

polly.loop_header734.1.1:                         ; preds = %polly.loop_exit742.1911, %polly.loop_exit742.1.1
  %polly.indvar737.1.1 = phi i64 [ %polly.indvar_next738.1.1, %polly.loop_exit742.1.1 ], [ 0, %polly.loop_exit742.1911 ]
  %472 = add nuw nsw i64 %polly.indvar737.1.1, 32
  %473 = mul nuw nsw i64 %472, 640
  %474 = trunc i64 %472 to i32
  %broadcast.splatinsert1007 = insertelement <4 x i32> poison, i32 %474, i32 0
  %broadcast.splat1008 = shufflevector <4 x i32> %broadcast.splatinsert1007, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %polly.loop_header734.1.1
  %index1001 = phi i64 [ 0, %polly.loop_header734.1.1 ], [ %index.next1002, %vector.body999 ]
  %vec.ind1005 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.1 ], [ %vec.ind.next1006, %vector.body999 ]
  %475 = add nuw nsw <4 x i64> %vec.ind1005, <i64 32, i64 32, i64 32, i64 32>
  %476 = trunc <4 x i64> %475 to <4 x i32>
  %477 = mul <4 x i32> %broadcast.splat1008, %476
  %478 = add <4 x i32> %477, <i32 3, i32 3, i32 3, i32 3>
  %479 = urem <4 x i32> %478, <i32 80, i32 80, i32 80, i32 80>
  %480 = sitofp <4 x i32> %479 to <4 x double>
  %481 = fmul fast <4 x double> %480, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %482 = extractelement <4 x i64> %475, i32 0
  %483 = shl i64 %482, 3
  %484 = add nuw nsw i64 %483, %473
  %485 = getelementptr i8, i8* %call, i64 %484
  %486 = bitcast i8* %485 to <4 x double>*
  store <4 x double> %481, <4 x double>* %486, align 8, !alias.scope !96, !noalias !98
  %index.next1002 = add i64 %index1001, 4
  %vec.ind.next1006 = add <4 x i64> %vec.ind1005, <i64 4, i64 4, i64 4, i64 4>
  %487 = icmp eq i64 %index.next1002, 32
  br i1 %487, label %polly.loop_exit742.1.1, label %vector.body999, !llvm.loop !119

polly.loop_exit742.1.1:                           ; preds = %vector.body999
  %polly.indvar_next738.1.1 = add nuw nsw i64 %polly.indvar737.1.1, 1
  %exitcond867.1.1.not = icmp eq i64 %polly.indvar_next738.1.1, 32
  br i1 %exitcond867.1.1.not, label %polly.loop_header734.2.1, label %polly.loop_header734.1.1

polly.loop_header734.2.1:                         ; preds = %polly.loop_exit742.1.1, %polly.loop_exit742.2.1
  %polly.indvar737.2.1 = phi i64 [ %polly.indvar_next738.2.1, %polly.loop_exit742.2.1 ], [ 0, %polly.loop_exit742.1.1 ]
  %488 = add nuw nsw i64 %polly.indvar737.2.1, 32
  %489 = mul nuw nsw i64 %488, 640
  %490 = trunc i64 %488 to i32
  %broadcast.splatinsert1019 = insertelement <4 x i32> poison, i32 %490, i32 0
  %broadcast.splat1020 = shufflevector <4 x i32> %broadcast.splatinsert1019, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %polly.loop_header734.2.1
  %index1013 = phi i64 [ 0, %polly.loop_header734.2.1 ], [ %index.next1014, %vector.body1011 ]
  %vec.ind1017 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.1 ], [ %vec.ind.next1018, %vector.body1011 ]
  %491 = add nuw nsw <4 x i64> %vec.ind1017, <i64 64, i64 64, i64 64, i64 64>
  %492 = trunc <4 x i64> %491 to <4 x i32>
  %493 = mul <4 x i32> %broadcast.splat1020, %492
  %494 = add <4 x i32> %493, <i32 3, i32 3, i32 3, i32 3>
  %495 = urem <4 x i32> %494, <i32 80, i32 80, i32 80, i32 80>
  %496 = sitofp <4 x i32> %495 to <4 x double>
  %497 = fmul fast <4 x double> %496, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %498 = extractelement <4 x i64> %491, i32 0
  %499 = shl i64 %498, 3
  %500 = add nuw nsw i64 %499, %489
  %501 = getelementptr i8, i8* %call, i64 %500
  %502 = bitcast i8* %501 to <4 x double>*
  store <4 x double> %497, <4 x double>* %502, align 8, !alias.scope !96, !noalias !98
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1018 = add <4 x i64> %vec.ind1017, <i64 4, i64 4, i64 4, i64 4>
  %503 = icmp eq i64 %index.next1014, 16
  br i1 %503, label %polly.loop_exit742.2.1, label %vector.body1011, !llvm.loop !120

polly.loop_exit742.2.1:                           ; preds = %vector.body1011
  %polly.indvar_next738.2.1 = add nuw nsw i64 %polly.indvar737.2.1, 1
  %exitcond867.2.1.not = icmp eq i64 %polly.indvar_next738.2.1, 32
  br i1 %exitcond867.2.1.not, label %polly.loop_header734.2914, label %polly.loop_header734.2.1

polly.loop_header734.2914:                        ; preds = %polly.loop_exit742.2.1, %polly.loop_exit742.2925
  %polly.indvar737.2913 = phi i64 [ %polly.indvar_next738.2923, %polly.loop_exit742.2925 ], [ 0, %polly.loop_exit742.2.1 ]
  %504 = add nuw nsw i64 %polly.indvar737.2913, 64
  %505 = mul nuw nsw i64 %504, 640
  %506 = trunc i64 %504 to i32
  %broadcast.splatinsert1033 = insertelement <4 x i32> poison, i32 %506, i32 0
  %broadcast.splat1034 = shufflevector <4 x i32> %broadcast.splatinsert1033, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.body1023, %polly.loop_header734.2914
  %index1025 = phi i64 [ 0, %polly.loop_header734.2914 ], [ %index.next1026, %vector.body1023 ]
  %vec.ind1031 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.2914 ], [ %vec.ind.next1032, %vector.body1023 ]
  %507 = mul <4 x i32> %vec.ind1031, %broadcast.splat1034
  %508 = add <4 x i32> %507, <i32 3, i32 3, i32 3, i32 3>
  %509 = urem <4 x i32> %508, <i32 80, i32 80, i32 80, i32 80>
  %510 = sitofp <4 x i32> %509 to <4 x double>
  %511 = fmul fast <4 x double> %510, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %512 = shl i64 %index1025, 3
  %513 = add nuw nsw i64 %512, %505
  %514 = getelementptr i8, i8* %call, i64 %513
  %515 = bitcast i8* %514 to <4 x double>*
  store <4 x double> %511, <4 x double>* %515, align 8, !alias.scope !96, !noalias !98
  %index.next1026 = add i64 %index1025, 4
  %vec.ind.next1032 = add <4 x i32> %vec.ind1031, <i32 4, i32 4, i32 4, i32 4>
  %516 = icmp eq i64 %index.next1026, 32
  br i1 %516, label %polly.loop_exit742.2925, label %vector.body1023, !llvm.loop !121

polly.loop_exit742.2925:                          ; preds = %vector.body1023
  %polly.indvar_next738.2923 = add nuw nsw i64 %polly.indvar737.2913, 1
  %exitcond867.2924.not = icmp eq i64 %polly.indvar_next738.2923, 16
  br i1 %exitcond867.2924.not, label %polly.loop_header734.1.2, label %polly.loop_header734.2914

polly.loop_header734.1.2:                         ; preds = %polly.loop_exit742.2925, %polly.loop_exit742.1.2
  %polly.indvar737.1.2 = phi i64 [ %polly.indvar_next738.1.2, %polly.loop_exit742.1.2 ], [ 0, %polly.loop_exit742.2925 ]
  %517 = add nuw nsw i64 %polly.indvar737.1.2, 64
  %518 = mul nuw nsw i64 %517, 640
  %519 = trunc i64 %517 to i32
  %broadcast.splatinsert1045 = insertelement <4 x i32> poison, i32 %519, i32 0
  %broadcast.splat1046 = shufflevector <4 x i32> %broadcast.splatinsert1045, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %polly.loop_header734.1.2
  %index1039 = phi i64 [ 0, %polly.loop_header734.1.2 ], [ %index.next1040, %vector.body1037 ]
  %vec.ind1043 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.2 ], [ %vec.ind.next1044, %vector.body1037 ]
  %520 = add nuw nsw <4 x i64> %vec.ind1043, <i64 32, i64 32, i64 32, i64 32>
  %521 = trunc <4 x i64> %520 to <4 x i32>
  %522 = mul <4 x i32> %broadcast.splat1046, %521
  %523 = add <4 x i32> %522, <i32 3, i32 3, i32 3, i32 3>
  %524 = urem <4 x i32> %523, <i32 80, i32 80, i32 80, i32 80>
  %525 = sitofp <4 x i32> %524 to <4 x double>
  %526 = fmul fast <4 x double> %525, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %527 = extractelement <4 x i64> %520, i32 0
  %528 = shl i64 %527, 3
  %529 = add nuw nsw i64 %528, %518
  %530 = getelementptr i8, i8* %call, i64 %529
  %531 = bitcast i8* %530 to <4 x double>*
  store <4 x double> %526, <4 x double>* %531, align 8, !alias.scope !96, !noalias !98
  %index.next1040 = add i64 %index1039, 4
  %vec.ind.next1044 = add <4 x i64> %vec.ind1043, <i64 4, i64 4, i64 4, i64 4>
  %532 = icmp eq i64 %index.next1040, 32
  br i1 %532, label %polly.loop_exit742.1.2, label %vector.body1037, !llvm.loop !122

polly.loop_exit742.1.2:                           ; preds = %vector.body1037
  %polly.indvar_next738.1.2 = add nuw nsw i64 %polly.indvar737.1.2, 1
  %exitcond867.1.2.not = icmp eq i64 %polly.indvar_next738.1.2, 16
  br i1 %exitcond867.1.2.not, label %polly.loop_header734.2.2, label %polly.loop_header734.1.2

polly.loop_header734.2.2:                         ; preds = %polly.loop_exit742.1.2, %polly.loop_exit742.2.2
  %polly.indvar737.2.2 = phi i64 [ %polly.indvar_next738.2.2, %polly.loop_exit742.2.2 ], [ 0, %polly.loop_exit742.1.2 ]
  %533 = add nuw nsw i64 %polly.indvar737.2.2, 64
  %534 = mul nuw nsw i64 %533, 640
  %535 = trunc i64 %533 to i32
  %broadcast.splatinsert1057 = insertelement <4 x i32> poison, i32 %535, i32 0
  %broadcast.splat1058 = shufflevector <4 x i32> %broadcast.splatinsert1057, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %polly.loop_header734.2.2
  %index1051 = phi i64 [ 0, %polly.loop_header734.2.2 ], [ %index.next1052, %vector.body1049 ]
  %vec.ind1055 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.2 ], [ %vec.ind.next1056, %vector.body1049 ]
  %536 = add nuw nsw <4 x i64> %vec.ind1055, <i64 64, i64 64, i64 64, i64 64>
  %537 = trunc <4 x i64> %536 to <4 x i32>
  %538 = mul <4 x i32> %broadcast.splat1058, %537
  %539 = add <4 x i32> %538, <i32 3, i32 3, i32 3, i32 3>
  %540 = urem <4 x i32> %539, <i32 80, i32 80, i32 80, i32 80>
  %541 = sitofp <4 x i32> %540 to <4 x double>
  %542 = fmul fast <4 x double> %541, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %543 = extractelement <4 x i64> %536, i32 0
  %544 = shl i64 %543, 3
  %545 = add nuw nsw i64 %544, %534
  %546 = getelementptr i8, i8* %call, i64 %545
  %547 = bitcast i8* %546 to <4 x double>*
  store <4 x double> %542, <4 x double>* %547, align 8, !alias.scope !96, !noalias !98
  %index.next1052 = add i64 %index1051, 4
  %vec.ind.next1056 = add <4 x i64> %vec.ind1055, <i64 4, i64 4, i64 4, i64 4>
  %548 = icmp eq i64 %index.next1052, 16
  br i1 %548, label %polly.loop_exit742.2.2, label %vector.body1049, !llvm.loop !123

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
!45 = !{!"llvm.loop.tile.size", i32 16}
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
