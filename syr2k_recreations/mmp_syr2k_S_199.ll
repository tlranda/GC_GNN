; ModuleID = 'syr2k_recreations//mmp_syr2k_S_199.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_199.c"
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
  %call760 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1621 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2622 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1621, %call2
  %polly.access.call2641 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2641, %call1
  %2 = or i1 %0, %1
  %polly.access.call661 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call661, %call2
  %4 = icmp ule i8* %polly.access.call2641, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call661, %call1
  %8 = icmp ule i8* %polly.access.call1621, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header746, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep950 = getelementptr i8, i8* %call2, i64 %12
  %scevgep949 = getelementptr i8, i8* %call2, i64 %11
  %scevgep948 = getelementptr i8, i8* %call1, i64 %12
  %scevgep947 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep947, %scevgep950
  %bound1 = icmp ult i8* %scevgep949, %scevgep948
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
  br i1 %exitcond18.not.i, label %vector.ph954, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph954:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert961 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat962 = shufflevector <4 x i64> %broadcast.splatinsert961, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %vector.ph954
  %index955 = phi i64 [ 0, %vector.ph954 ], [ %index.next956, %vector.body953 ]
  %vec.ind959 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph954 ], [ %vec.ind.next960, %vector.body953 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind959, %broadcast.splat962
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv7.i, i64 %index955
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next956 = add i64 %index955, 4
  %vec.ind.next960 = add <4 x i64> %vec.ind959, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next956, 80
  br i1 %40, label %for.inc41.i, label %vector.body953, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body953
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph954, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit807.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start438, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1307, label %vector.ph1236

vector.ph1236:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %vector.ph1236
  %index1237 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1238, %vector.body1235 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i, i64 %index1237
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1238 = add i64 %index1237, 4
  %46 = icmp eq i64 %index.next1238, %n.vec
  br i1 %46, label %middle.block1233, label %vector.body1235, !llvm.loop !18

middle.block1233:                                 ; preds = %vector.body1235
  %cmp.n1240 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1240, label %for.inc6.i, label %for.body3.i46.preheader1307

for.body3.i46.preheader1307:                      ; preds = %for.body3.i46.preheader, %middle.block1233
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1233 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1307, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1307 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1233, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting439
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1256 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1256, label %for.body3.i60.preheader1306, label %vector.ph1257

vector.ph1257:                                    ; preds = %for.body3.i60.preheader
  %n.vec1259 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1255 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i52, i64 %index1260
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1264 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1264, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1261 = add i64 %index1260, 4
  %57 = icmp eq i64 %index.next1261, %n.vec1259
  br i1 %57, label %middle.block1253, label %vector.body1255, !llvm.loop !55

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1263 = icmp eq i64 %indvars.iv21.i52, %n.vec1259
  br i1 %cmp.n1263, label %for.inc6.i63, label %for.body3.i60.preheader1306

for.body3.i60.preheader1306:                      ; preds = %for.body3.i60.preheader, %middle.block1253
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1259, %middle.block1253 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1306, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1306 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1253, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting267
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1282 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1282, label %for.body3.i99.preheader1305, label %vector.ph1283

vector.ph1283:                                    ; preds = %for.body3.i99.preheader
  %n.vec1285 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1287, %vector.body1281 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i91, i64 %index1286
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1290 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1290, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1287 = add i64 %index1286, 4
  %68 = icmp eq i64 %index.next1287, %n.vec1285
  br i1 %68, label %middle.block1279, label %vector.body1281, !llvm.loop !57

middle.block1279:                                 ; preds = %vector.body1281
  %cmp.n1289 = icmp eq i64 %indvars.iv21.i91, %n.vec1285
  br i1 %cmp.n1289, label %for.inc6.i102, label %for.body3.i99.preheader1305

for.body3.i99.preheader1305:                      ; preds = %for.body3.i99.preheader, %middle.block1279
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1285, %middle.block1279 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1305, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1305 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1279, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1294 = phi i64 [ %indvar.next1295, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1294, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1296 = icmp ult i64 %88, 4
  br i1 %min.iters.check1296, label %polly.loop_header191.preheader, label %vector.ph1297

vector.ph1297:                                    ; preds = %polly.loop_header
  %n.vec1299 = and i64 %88, -4
  br label %vector.body1293

vector.body1293:                                  ; preds = %vector.body1293, %vector.ph1297
  %index1300 = phi i64 [ 0, %vector.ph1297 ], [ %index.next1301, %vector.body1293 ]
  %90 = shl nuw nsw i64 %index1300, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1304 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1304, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1301 = add i64 %index1300, 4
  %95 = icmp eq i64 %index.next1301, %n.vec1299
  br i1 %95, label %middle.block1291, label %vector.body1293, !llvm.loop !69

middle.block1291:                                 ; preds = %vector.body1293
  %cmp.n1303 = icmp eq i64 %88, %n.vec1299
  br i1 %cmp.n1303, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1291
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1299, %middle.block1291 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1291
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1295 = add i64 %indvar1294, 1
  br i1 %exitcond830.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond829.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond829.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond828.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 60
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2622, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond827.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar218, 2
  %98 = shl nsw i64 %polly.indvar218, 3
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond826.not = icmp eq i64 %polly.indvar_next219, 10
  br i1 %exitcond826.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit229 ], [ %indvars.iv, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %99 = shl nsw i64 %polly.indvar224, 5
  %100 = sub nsw i64 %98, %99
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, -32
  %exitcond825.not = icmp eq i64 %polly.indvar224, %97
  br i1 %exitcond825.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv821 = phi i64 [ %indvars.iv.next822, %polly.loop_exit235 ], [ %indvars.iv819, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv821, i64 31)
  %101 = add nsw i64 %polly.indvar230, %100
  %polly.loop_guard942 = icmp sgt i64 %101, -1
  %102 = add nuw nsw i64 %polly.indvar230, %98
  %103 = mul nuw nsw i64 %102, 480
  %104 = mul nuw nsw i64 %102, 640
  br i1 %polly.loop_guard942, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header227, %polly.loop_exit241.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit241.loopexit.us ], [ 0, %polly.loop_header227 ]
  %105 = shl nuw nsw i64 %polly.indvar236.us, 3
  %scevgep245.us = getelementptr i8, i8* %call1, i64 %105
  %polly.access.mul.Packed_MemRef_call2249.us = mul nuw nsw i64 %polly.indvar236.us, 80
  %polly.access.add.Packed_MemRef_call2250.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249.us, %102
  %polly.access.Packed_MemRef_call2251.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.us
  %_p_scalar_252.us = load double, double* %polly.access.Packed_MemRef_call2251.us, align 8
  %scevgep258.us = getelementptr i8, i8* %scevgep245.us, i64 %103
  %scevgep258259.us = bitcast i8* %scevgep258.us to double*
  %_p_scalar_260.us = load double, double* %scevgep258259.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.us

polly.loop_header239.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header233.us
  %polly.indvar242.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next243.us, %polly.loop_header239.us ]
  %106 = add nuw nsw i64 %polly.indvar242.us, %99
  %107 = mul nuw nsw i64 %106, 480
  %scevgep246.us = getelementptr i8, i8* %scevgep245.us, i64 %107
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_252.us, %_p_scalar_248.us
  %polly.access.add.Packed_MemRef_call2254.us = add nuw nsw i64 %106, %polly.access.mul.Packed_MemRef_call2249.us
  %polly.access.Packed_MemRef_call2255.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us
  %_p_scalar_256.us = load double, double* %polly.access.Packed_MemRef_call2255.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_260.us, %_p_scalar_256.us
  %108 = shl i64 %106, 3
  %109 = add nuw nsw i64 %108, %104
  %scevgep261.us = getelementptr i8, i8* %call, i64 %109
  %scevgep261262.us = bitcast i8* %scevgep261.us to double*
  %_p_scalar_263.us = load double, double* %scevgep261262.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_263.us
  store double %p_add42.i118.us, double* %scevgep261262.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar242.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit241.loopexit.us, label %polly.loop_header239.us

polly.loop_exit241.loopexit.us:                   ; preds = %polly.loop_header239.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next237.us, 60
  br i1 %exitcond823.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit241.loopexit.us, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next822 = add nsw i64 %indvars.iv821, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next231, 8
  br i1 %exitcond824.not, label %polly.loop_exit229, label %polly.loop_header227

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header352

polly.exiting267:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1268 = phi i64 [ %indvar.next1269, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %110 = add i64 %indvar1268, 1
  %111 = mul nuw nsw i64 %polly.indvar355, 640
  %scevgep364 = getelementptr i8, i8* %call, i64 %111
  %min.iters.check1270 = icmp ult i64 %110, 4
  br i1 %min.iters.check1270, label %polly.loop_header358.preheader, label %vector.ph1271

vector.ph1271:                                    ; preds = %polly.loop_header352
  %n.vec1273 = and i64 %110, -4
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1267 ]
  %112 = shl nuw nsw i64 %index1274, 3
  %113 = getelementptr i8, i8* %scevgep364, i64 %112
  %114 = bitcast i8* %113 to <4 x double>*
  %wide.load1278 = load <4 x double>, <4 x double>* %114, align 8, !alias.scope !74, !noalias !76
  %115 = fmul fast <4 x double> %wide.load1278, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %116 = bitcast i8* %113 to <4 x double>*
  store <4 x double> %115, <4 x double>* %116, align 8, !alias.scope !74, !noalias !76
  %index.next1275 = add i64 %index1274, 4
  %117 = icmp eq i64 %index.next1275, %n.vec1273
  br i1 %117, label %middle.block1265, label %vector.body1267, !llvm.loop !80

middle.block1265:                                 ; preds = %vector.body1267
  %cmp.n1277 = icmp eq i64 %110, %n.vec1273
  br i1 %cmp.n1277, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1265
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1273, %middle.block1265 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1265
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next356, 80
  %indvar.next1269 = add i64 %indvar1268, 1
  br i1 %exitcond846.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %118 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %118
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond845.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !81

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit376
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit376 ], [ 0, %polly.loop_header368.preheader ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar371, 80
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next372, 60
  br i1 %exitcond844.not, label %polly.loop_header384, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %polly.access.mul.call2381 = mul nuw nsw i64 %polly.indvar377, 60
  %polly.access.add.call2382 = add nuw nsw i64 %polly.access.mul.call2381, %polly.indvar371
  %polly.access.call2383 = getelementptr double, double* %polly.access.cast.call2622, i64 %polly.access.add.call2382
  %polly.access.call2383.load = load double, double* %polly.access.call2383, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar377, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2383.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next378, 80
  br i1 %exitcond843.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header384:                             ; preds = %polly.loop_exit376, %polly.loop_exit393
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit393 ], [ 0, %polly.loop_exit376 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit393 ], [ 0, %polly.loop_exit376 ]
  %119 = lshr i64 %polly.indvar387, 2
  %120 = shl nsw i64 %polly.indvar387, 3
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit399
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %indvars.iv.next832 = add nuw nsw i64 %indvars.iv831, 8
  %exitcond842.not = icmp eq i64 %polly.indvar_next388, 10
  br i1 %exitcond842.not, label %polly.exiting267, label %polly.loop_header384

polly.loop_header391:                             ; preds = %polly.loop_exit399, %polly.loop_header384
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit399 ], [ %indvars.iv831, %polly.loop_header384 ]
  %polly.indvar394 = phi i64 [ %polly.indvar_next395, %polly.loop_exit399 ], [ 0, %polly.loop_header384 ]
  %121 = shl nsw i64 %polly.indvar394, 5
  %122 = sub nsw i64 %120, %121
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_exit405
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %indvars.iv.next834 = add nsw i64 %indvars.iv833, -32
  %exitcond841.not = icmp eq i64 %polly.indvar394, %119
  br i1 %exitcond841.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_exit405, %polly.loop_header391
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit405 ], [ %indvars.iv833, %polly.loop_header391 ]
  %polly.indvar400 = phi i64 [ %polly.indvar_next401, %polly.loop_exit405 ], [ 0, %polly.loop_header391 ]
  %smin837 = call i64 @llvm.smin.i64(i64 %indvars.iv835, i64 31)
  %123 = add nsw i64 %polly.indvar400, %122
  %polly.loop_guard413943 = icmp sgt i64 %123, -1
  %124 = add nuw nsw i64 %polly.indvar400, %120
  %125 = mul nuw nsw i64 %124, 480
  %126 = mul nuw nsw i64 %124, 640
  br i1 %polly.loop_guard413943, label %polly.loop_header403.us, label %polly.loop_exit405

polly.loop_header403.us:                          ; preds = %polly.loop_header397, %polly.loop_exit412.loopexit.us
  %polly.indvar406.us = phi i64 [ %polly.indvar_next407.us, %polly.loop_exit412.loopexit.us ], [ 0, %polly.loop_header397 ]
  %127 = shl nuw nsw i64 %polly.indvar406.us, 3
  %scevgep417.us = getelementptr i8, i8* %call1, i64 %127
  %polly.access.mul.Packed_MemRef_call2269421.us = mul nuw nsw i64 %polly.indvar406.us, 80
  %polly.access.add.Packed_MemRef_call2269422.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269421.us, %124
  %polly.access.Packed_MemRef_call2269423.us = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.us
  %_p_scalar_424.us = load double, double* %polly.access.Packed_MemRef_call2269423.us, align 8
  %scevgep430.us = getelementptr i8, i8* %scevgep417.us, i64 %125
  %scevgep430431.us = bitcast i8* %scevgep430.us to double*
  %_p_scalar_432.us = load double, double* %scevgep430431.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header410.us

polly.loop_header410.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header403.us
  %polly.indvar414.us = phi i64 [ 0, %polly.loop_header403.us ], [ %polly.indvar_next415.us, %polly.loop_header410.us ]
  %128 = add nuw nsw i64 %polly.indvar414.us, %121
  %129 = mul nuw nsw i64 %128, 480
  %scevgep418.us = getelementptr i8, i8* %scevgep417.us, i64 %129
  %scevgep418419.us = bitcast i8* %scevgep418.us to double*
  %_p_scalar_420.us = load double, double* %scevgep418419.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_424.us, %_p_scalar_420.us
  %polly.access.add.Packed_MemRef_call2269426.us = add nuw nsw i64 %128, %polly.access.mul.Packed_MemRef_call2269421.us
  %polly.access.Packed_MemRef_call2269427.us = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269426.us
  %_p_scalar_428.us = load double, double* %polly.access.Packed_MemRef_call2269427.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_432.us, %_p_scalar_428.us
  %130 = shl i64 %128, 3
  %131 = add nuw nsw i64 %130, %126
  %scevgep433.us = getelementptr i8, i8* %call, i64 %131
  %scevgep433434.us = bitcast i8* %scevgep433.us to double*
  %_p_scalar_435.us = load double, double* %scevgep433434.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_435.us
  store double %p_add42.i79.us, double* %scevgep433434.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next415.us = add nuw nsw i64 %polly.indvar414.us, 1
  %exitcond838.not = icmp eq i64 %polly.indvar414.us, %smin837
  br i1 %exitcond838.not, label %polly.loop_exit412.loopexit.us, label %polly.loop_header410.us

polly.loop_exit412.loopexit.us:                   ; preds = %polly.loop_header410.us
  %polly.indvar_next407.us = add nuw nsw i64 %polly.indvar406.us, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next407.us, 60
  br i1 %exitcond839.not, label %polly.loop_exit405, label %polly.loop_header403.us

polly.loop_exit405:                               ; preds = %polly.loop_exit412.loopexit.us, %polly.loop_header397
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next401, 8
  br i1 %exitcond840.not, label %polly.loop_exit399, label %polly.loop_header397

polly.start438:                                   ; preds = %init_array.exit
  %malloccall440 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header524

polly.exiting439:                                 ; preds = %polly.loop_exit565
  tail call void @free(i8* %malloccall440)
  br label %kernel_syr2k.exit

polly.loop_header524:                             ; preds = %polly.loop_exit532, %polly.start438
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit532 ], [ 0, %polly.start438 ]
  %polly.indvar527 = phi i64 [ %polly.indvar_next528, %polly.loop_exit532 ], [ 1, %polly.start438 ]
  %132 = add i64 %indvar, 1
  %133 = mul nuw nsw i64 %polly.indvar527, 640
  %scevgep536 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check1244 = icmp ult i64 %132, 4
  br i1 %min.iters.check1244, label %polly.loop_header530.preheader, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header524
  %n.vec1247 = and i64 %132, -4
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1243 ]
  %134 = shl nuw nsw i64 %index1248, 3
  %135 = getelementptr i8, i8* %scevgep536, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !84, !noalias !86
  %137 = fmul fast <4 x double> %wide.load1252, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !84, !noalias !86
  %index.next1249 = add i64 %index1248, 4
  %139 = icmp eq i64 %index.next1249, %n.vec1247
  br i1 %139, label %middle.block1241, label %vector.body1243, !llvm.loop !90

middle.block1241:                                 ; preds = %vector.body1243
  %cmp.n1251 = icmp eq i64 %132, %n.vec1247
  br i1 %cmp.n1251, label %polly.loop_exit532, label %polly.loop_header530.preheader

polly.loop_header530.preheader:                   ; preds = %polly.loop_header524, %middle.block1241
  %polly.indvar533.ph = phi i64 [ 0, %polly.loop_header524 ], [ %n.vec1247, %middle.block1241 ]
  br label %polly.loop_header530

polly.loop_exit532:                               ; preds = %polly.loop_header530, %middle.block1241
  %polly.indvar_next528 = add nuw nsw i64 %polly.indvar527, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next528, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond862.not, label %polly.loop_header540.preheader, label %polly.loop_header524

polly.loop_header540.preheader:                   ; preds = %polly.loop_exit532
  %Packed_MemRef_call2441 = bitcast i8* %malloccall440 to double*
  br label %polly.loop_header540

polly.loop_header530:                             ; preds = %polly.loop_header530.preheader, %polly.loop_header530
  %polly.indvar533 = phi i64 [ %polly.indvar_next534, %polly.loop_header530 ], [ %polly.indvar533.ph, %polly.loop_header530.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar533, 3
  %scevgep537 = getelementptr i8, i8* %scevgep536, i64 %140
  %scevgep537538 = bitcast i8* %scevgep537 to double*
  %_p_scalar_539 = load double, double* %scevgep537538, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_539, 1.200000e+00
  store double %p_mul.i, double* %scevgep537538, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next534 = add nuw nsw i64 %polly.indvar533, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next534, %polly.indvar527
  br i1 %exitcond861.not, label %polly.loop_exit532, label %polly.loop_header530, !llvm.loop !91

polly.loop_header540:                             ; preds = %polly.loop_header540.preheader, %polly.loop_exit548
  %polly.indvar543 = phi i64 [ %polly.indvar_next544, %polly.loop_exit548 ], [ 0, %polly.loop_header540.preheader ]
  %polly.access.mul.Packed_MemRef_call2441 = mul nuw nsw i64 %polly.indvar543, 80
  br label %polly.loop_header546

polly.loop_exit548:                               ; preds = %polly.loop_header546
  %polly.indvar_next544 = add nuw nsw i64 %polly.indvar543, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next544, 60
  br i1 %exitcond860.not, label %polly.loop_header556, label %polly.loop_header540

polly.loop_header546:                             ; preds = %polly.loop_header546, %polly.loop_header540
  %polly.indvar549 = phi i64 [ 0, %polly.loop_header540 ], [ %polly.indvar_next550, %polly.loop_header546 ]
  %polly.access.mul.call2553 = mul nuw nsw i64 %polly.indvar549, 60
  %polly.access.add.call2554 = add nuw nsw i64 %polly.access.mul.call2553, %polly.indvar543
  %polly.access.call2555 = getelementptr double, double* %polly.access.cast.call2622, i64 %polly.access.add.call2554
  %polly.access.call2555.load = load double, double* %polly.access.call2555, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2441 = add nuw nsw i64 %polly.indvar549, %polly.access.mul.Packed_MemRef_call2441
  %polly.access.Packed_MemRef_call2441 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441
  store double %polly.access.call2555.load, double* %polly.access.Packed_MemRef_call2441, align 8
  %polly.indvar_next550 = add nuw nsw i64 %polly.indvar549, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next550, 80
  br i1 %exitcond859.not, label %polly.loop_exit548, label %polly.loop_header546

polly.loop_header556:                             ; preds = %polly.loop_exit548, %polly.loop_exit565
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit565 ], [ 0, %polly.loop_exit548 ]
  %polly.indvar559 = phi i64 [ %polly.indvar_next560, %polly.loop_exit565 ], [ 0, %polly.loop_exit548 ]
  %141 = lshr i64 %polly.indvar559, 2
  %142 = shl nsw i64 %polly.indvar559, 3
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_exit571
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv847, 8
  %exitcond858.not = icmp eq i64 %polly.indvar_next560, 10
  br i1 %exitcond858.not, label %polly.exiting439, label %polly.loop_header556

polly.loop_header563:                             ; preds = %polly.loop_exit571, %polly.loop_header556
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit571 ], [ %indvars.iv847, %polly.loop_header556 ]
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_exit571 ], [ 0, %polly.loop_header556 ]
  %143 = shl nsw i64 %polly.indvar566, 5
  %144 = sub nsw i64 %142, %143
  br label %polly.loop_header569

polly.loop_exit571:                               ; preds = %polly.loop_exit577
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -32
  %exitcond857.not = icmp eq i64 %polly.indvar566, %141
  br i1 %exitcond857.not, label %polly.loop_exit565, label %polly.loop_header563

polly.loop_header569:                             ; preds = %polly.loop_exit577, %polly.loop_header563
  %indvars.iv851 = phi i64 [ %indvars.iv.next852, %polly.loop_exit577 ], [ %indvars.iv849, %polly.loop_header563 ]
  %polly.indvar572 = phi i64 [ %polly.indvar_next573, %polly.loop_exit577 ], [ 0, %polly.loop_header563 ]
  %smin853 = call i64 @llvm.smin.i64(i64 %indvars.iv851, i64 31)
  %145 = add nsw i64 %polly.indvar572, %144
  %polly.loop_guard585944 = icmp sgt i64 %145, -1
  %146 = add nuw nsw i64 %polly.indvar572, %142
  %147 = mul nuw nsw i64 %146, 480
  %148 = mul nuw nsw i64 %146, 640
  br i1 %polly.loop_guard585944, label %polly.loop_header575.us, label %polly.loop_exit577

polly.loop_header575.us:                          ; preds = %polly.loop_header569, %polly.loop_exit584.loopexit.us
  %polly.indvar578.us = phi i64 [ %polly.indvar_next579.us, %polly.loop_exit584.loopexit.us ], [ 0, %polly.loop_header569 ]
  %149 = shl nuw nsw i64 %polly.indvar578.us, 3
  %scevgep589.us = getelementptr i8, i8* %call1, i64 %149
  %polly.access.mul.Packed_MemRef_call2441593.us = mul nuw nsw i64 %polly.indvar578.us, 80
  %polly.access.add.Packed_MemRef_call2441594.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2441593.us, %146
  %polly.access.Packed_MemRef_call2441595.us = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441594.us
  %_p_scalar_596.us = load double, double* %polly.access.Packed_MemRef_call2441595.us, align 8
  %scevgep602.us = getelementptr i8, i8* %scevgep589.us, i64 %147
  %scevgep602603.us = bitcast i8* %scevgep602.us to double*
  %_p_scalar_604.us = load double, double* %scevgep602603.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header582.us

polly.loop_header582.us:                          ; preds = %polly.loop_header582.us, %polly.loop_header575.us
  %polly.indvar586.us = phi i64 [ 0, %polly.loop_header575.us ], [ %polly.indvar_next587.us, %polly.loop_header582.us ]
  %150 = add nuw nsw i64 %polly.indvar586.us, %143
  %151 = mul nuw nsw i64 %150, 480
  %scevgep590.us = getelementptr i8, i8* %scevgep589.us, i64 %151
  %scevgep590591.us = bitcast i8* %scevgep590.us to double*
  %_p_scalar_592.us = load double, double* %scevgep590591.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_596.us, %_p_scalar_592.us
  %polly.access.add.Packed_MemRef_call2441598.us = add nuw nsw i64 %150, %polly.access.mul.Packed_MemRef_call2441593.us
  %polly.access.Packed_MemRef_call2441599.us = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441598.us
  %_p_scalar_600.us = load double, double* %polly.access.Packed_MemRef_call2441599.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_604.us, %_p_scalar_600.us
  %152 = shl i64 %150, 3
  %153 = add nuw nsw i64 %152, %148
  %scevgep605.us = getelementptr i8, i8* %call, i64 %153
  %scevgep605606.us = bitcast i8* %scevgep605.us to double*
  %_p_scalar_607.us = load double, double* %scevgep605606.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_607.us
  store double %p_add42.i.us, double* %scevgep605606.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next587.us = add nuw nsw i64 %polly.indvar586.us, 1
  %exitcond854.not = icmp eq i64 %polly.indvar586.us, %smin853
  br i1 %exitcond854.not, label %polly.loop_exit584.loopexit.us, label %polly.loop_header582.us

polly.loop_exit584.loopexit.us:                   ; preds = %polly.loop_header582.us
  %polly.indvar_next579.us = add nuw nsw i64 %polly.indvar578.us, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next579.us, 60
  br i1 %exitcond855.not, label %polly.loop_exit577, label %polly.loop_header575.us

polly.loop_exit577:                               ; preds = %polly.loop_exit584.loopexit.us, %polly.loop_header569
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %indvars.iv.next852 = add nsw i64 %indvars.iv851, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next573, 8
  br i1 %exitcond856.not, label %polly.loop_exit571, label %polly.loop_header569

polly.loop_header746:                             ; preds = %entry, %polly.loop_exit754
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %entry ]
  %154 = mul nuw nsw i64 %polly.indvar749, 640
  %155 = trunc i64 %polly.indvar749 to i32
  %broadcast.splatinsert975 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat976 = shufflevector <4 x i32> %broadcast.splatinsert975, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %polly.loop_header746
  %index967 = phi i64 [ 0, %polly.loop_header746 ], [ %index.next968, %vector.body965 ]
  %vec.ind973 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header746 ], [ %vec.ind.next974, %vector.body965 ]
  %156 = mul <4 x i32> %vec.ind973, %broadcast.splat976
  %157 = add <4 x i32> %156, <i32 3, i32 3, i32 3, i32 3>
  %158 = urem <4 x i32> %157, <i32 80, i32 80, i32 80, i32 80>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %161 = shl i64 %index967, 3
  %162 = add nuw nsw i64 %161, %154
  %163 = getelementptr i8, i8* %call, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !94, !noalias !96
  %index.next968 = add i64 %index967, 4
  %vec.ind.next974 = add <4 x i32> %vec.ind973, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next968, 32
  br i1 %165, label %polly.loop_exit754, label %vector.body965, !llvm.loop !99

polly.loop_exit754:                               ; preds = %vector.body965
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next750, 32
  br i1 %exitcond882.not, label %polly.loop_header746.1, label %polly.loop_header746

polly.loop_header773:                             ; preds = %polly.loop_exit754.2.2, %polly.loop_exit781
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_exit754.2.2 ]
  %166 = mul nuw nsw i64 %polly.indvar776, 480
  %167 = trunc i64 %polly.indvar776 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %polly.loop_header773
  %index1081 = phi i64 [ 0, %polly.loop_header773 ], [ %index.next1082, %vector.body1079 ]
  %vec.ind1087 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header773 ], [ %vec.ind.next1088, %vector.body1079 ]
  %168 = mul <4 x i32> %vec.ind1087, %broadcast.splat1090
  %169 = add <4 x i32> %168, <i32 2, i32 2, i32 2, i32 2>
  %170 = urem <4 x i32> %169, <i32 60, i32 60, i32 60, i32 60>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %173 = shl i64 %index1081, 3
  %174 = add i64 %173, %166
  %175 = getelementptr i8, i8* %call2, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !98, !noalias !100
  %index.next1082 = add i64 %index1081, 4
  %vec.ind.next1088 = add <4 x i32> %vec.ind1087, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next1082, 32
  br i1 %177, label %polly.loop_exit781, label %vector.body1079, !llvm.loop !101

polly.loop_exit781:                               ; preds = %vector.body1079
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next777, 32
  br i1 %exitcond873.not, label %polly.loop_header773.1, label %polly.loop_header773

polly.loop_header799:                             ; preds = %polly.loop_exit781.1.2, %polly.loop_exit807
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_exit781.1.2 ]
  %178 = mul nuw nsw i64 %polly.indvar802, 480
  %179 = trunc i64 %polly.indvar802 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %polly.loop_header799
  %index1159 = phi i64 [ 0, %polly.loop_header799 ], [ %index.next1160, %vector.body1157 ]
  %vec.ind1165 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799 ], [ %vec.ind.next1166, %vector.body1157 ]
  %180 = mul <4 x i32> %vec.ind1165, %broadcast.splat1168
  %181 = add <4 x i32> %180, <i32 1, i32 1, i32 1, i32 1>
  %182 = urem <4 x i32> %181, <i32 80, i32 80, i32 80, i32 80>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %185 = shl i64 %index1159, 3
  %186 = add i64 %185, %178
  %187 = getelementptr i8, i8* %call1, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %184, <4 x double>* %188, align 8, !alias.scope !97, !noalias !102
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1166 = add <4 x i32> %vec.ind1165, <i32 4, i32 4, i32 4, i32 4>
  %189 = icmp eq i64 %index.next1160, 32
  br i1 %189, label %polly.loop_exit807, label %vector.body1157, !llvm.loop !103

polly.loop_exit807:                               ; preds = %vector.body1157
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond867.not, label %polly.loop_header799.1, label %polly.loop_header799

polly.loop_header799.1:                           ; preds = %polly.loop_exit807, %polly.loop_exit807.1
  %polly.indvar802.1 = phi i64 [ %polly.indvar_next803.1, %polly.loop_exit807.1 ], [ 0, %polly.loop_exit807 ]
  %190 = mul nuw nsw i64 %polly.indvar802.1, 480
  %191 = trunc i64 %polly.indvar802.1 to i32
  %broadcast.splatinsert1179 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1180 = shufflevector <4 x i32> %broadcast.splatinsert1179, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_header799.1
  %index1173 = phi i64 [ 0, %polly.loop_header799.1 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1177 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1 ], [ %vec.ind.next1178, %vector.body1171 ]
  %192 = add nuw nsw <4 x i64> %vec.ind1177, <i64 32, i64 32, i64 32, i64 32>
  %193 = trunc <4 x i64> %192 to <4 x i32>
  %194 = mul <4 x i32> %broadcast.splat1180, %193
  %195 = add <4 x i32> %194, <i32 1, i32 1, i32 1, i32 1>
  %196 = urem <4 x i32> %195, <i32 80, i32 80, i32 80, i32 80>
  %197 = sitofp <4 x i32> %196 to <4 x double>
  %198 = fmul fast <4 x double> %197, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %199 = extractelement <4 x i64> %192, i32 0
  %200 = shl i64 %199, 3
  %201 = add i64 %200, %190
  %202 = getelementptr i8, i8* %call1, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %198, <4 x double>* %203, align 8, !alias.scope !97, !noalias !102
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1178 = add <4 x i64> %vec.ind1177, <i64 4, i64 4, i64 4, i64 4>
  %204 = icmp eq i64 %index.next1174, 28
  br i1 %204, label %polly.loop_exit807.1, label %vector.body1171, !llvm.loop !104

polly.loop_exit807.1:                             ; preds = %vector.body1171
  %polly.indvar_next803.1 = add nuw nsw i64 %polly.indvar802.1, 1
  %exitcond867.1.not = icmp eq i64 %polly.indvar_next803.1, 32
  br i1 %exitcond867.1.not, label %polly.loop_header799.1887, label %polly.loop_header799.1

polly.loop_header799.1887:                        ; preds = %polly.loop_exit807.1, %polly.loop_exit807.1898
  %polly.indvar802.1886 = phi i64 [ %polly.indvar_next803.1896, %polly.loop_exit807.1898 ], [ 0, %polly.loop_exit807.1 ]
  %205 = add nuw nsw i64 %polly.indvar802.1886, 32
  %206 = mul nuw nsw i64 %205, 480
  %207 = trunc i64 %205 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %207, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %polly.loop_header799.1887
  %index1185 = phi i64 [ 0, %polly.loop_header799.1887 ], [ %index.next1186, %vector.body1183 ]
  %vec.ind1191 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799.1887 ], [ %vec.ind.next1192, %vector.body1183 ]
  %208 = mul <4 x i32> %vec.ind1191, %broadcast.splat1194
  %209 = add <4 x i32> %208, <i32 1, i32 1, i32 1, i32 1>
  %210 = urem <4 x i32> %209, <i32 80, i32 80, i32 80, i32 80>
  %211 = sitofp <4 x i32> %210 to <4 x double>
  %212 = fmul fast <4 x double> %211, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %213 = shl i64 %index1185, 3
  %214 = add i64 %213, %206
  %215 = getelementptr i8, i8* %call1, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %212, <4 x double>* %216, align 8, !alias.scope !97, !noalias !102
  %index.next1186 = add i64 %index1185, 4
  %vec.ind.next1192 = add <4 x i32> %vec.ind1191, <i32 4, i32 4, i32 4, i32 4>
  %217 = icmp eq i64 %index.next1186, 32
  br i1 %217, label %polly.loop_exit807.1898, label %vector.body1183, !llvm.loop !105

polly.loop_exit807.1898:                          ; preds = %vector.body1183
  %polly.indvar_next803.1896 = add nuw nsw i64 %polly.indvar802.1886, 1
  %exitcond867.1897.not = icmp eq i64 %polly.indvar_next803.1896, 32
  br i1 %exitcond867.1897.not, label %polly.loop_header799.1.1, label %polly.loop_header799.1887

polly.loop_header799.1.1:                         ; preds = %polly.loop_exit807.1898, %polly.loop_exit807.1.1
  %polly.indvar802.1.1 = phi i64 [ %polly.indvar_next803.1.1, %polly.loop_exit807.1.1 ], [ 0, %polly.loop_exit807.1898 ]
  %218 = add nuw nsw i64 %polly.indvar802.1.1, 32
  %219 = mul nuw nsw i64 %218, 480
  %220 = trunc i64 %218 to i32
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %220, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %polly.loop_header799.1.1
  %index1199 = phi i64 [ 0, %polly.loop_header799.1.1 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1.1 ], [ %vec.ind.next1204, %vector.body1197 ]
  %221 = add nuw nsw <4 x i64> %vec.ind1203, <i64 32, i64 32, i64 32, i64 32>
  %222 = trunc <4 x i64> %221 to <4 x i32>
  %223 = mul <4 x i32> %broadcast.splat1206, %222
  %224 = add <4 x i32> %223, <i32 1, i32 1, i32 1, i32 1>
  %225 = urem <4 x i32> %224, <i32 80, i32 80, i32 80, i32 80>
  %226 = sitofp <4 x i32> %225 to <4 x double>
  %227 = fmul fast <4 x double> %226, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %228 = extractelement <4 x i64> %221, i32 0
  %229 = shl i64 %228, 3
  %230 = add i64 %229, %219
  %231 = getelementptr i8, i8* %call1, i64 %230
  %232 = bitcast i8* %231 to <4 x double>*
  store <4 x double> %227, <4 x double>* %232, align 8, !alias.scope !97, !noalias !102
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %233 = icmp eq i64 %index.next1200, 28
  br i1 %233, label %polly.loop_exit807.1.1, label %vector.body1197, !llvm.loop !106

polly.loop_exit807.1.1:                           ; preds = %vector.body1197
  %polly.indvar_next803.1.1 = add nuw nsw i64 %polly.indvar802.1.1, 1
  %exitcond867.1.1.not = icmp eq i64 %polly.indvar_next803.1.1, 32
  br i1 %exitcond867.1.1.not, label %polly.loop_header799.2, label %polly.loop_header799.1.1

polly.loop_header799.2:                           ; preds = %polly.loop_exit807.1.1, %polly.loop_exit807.2
  %polly.indvar802.2 = phi i64 [ %polly.indvar_next803.2, %polly.loop_exit807.2 ], [ 0, %polly.loop_exit807.1.1 ]
  %234 = add nuw nsw i64 %polly.indvar802.2, 64
  %235 = mul nuw nsw i64 %234, 480
  %236 = trunc i64 %234 to i32
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %polly.loop_header799.2
  %index1211 = phi i64 [ 0, %polly.loop_header799.2 ], [ %index.next1212, %vector.body1209 ]
  %vec.ind1217 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799.2 ], [ %vec.ind.next1218, %vector.body1209 ]
  %237 = mul <4 x i32> %vec.ind1217, %broadcast.splat1220
  %238 = add <4 x i32> %237, <i32 1, i32 1, i32 1, i32 1>
  %239 = urem <4 x i32> %238, <i32 80, i32 80, i32 80, i32 80>
  %240 = sitofp <4 x i32> %239 to <4 x double>
  %241 = fmul fast <4 x double> %240, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %242 = shl i64 %index1211, 3
  %243 = add i64 %242, %235
  %244 = getelementptr i8, i8* %call1, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %241, <4 x double>* %245, align 8, !alias.scope !97, !noalias !102
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1218 = add <4 x i32> %vec.ind1217, <i32 4, i32 4, i32 4, i32 4>
  %246 = icmp eq i64 %index.next1212, 32
  br i1 %246, label %polly.loop_exit807.2, label %vector.body1209, !llvm.loop !107

polly.loop_exit807.2:                             ; preds = %vector.body1209
  %polly.indvar_next803.2 = add nuw nsw i64 %polly.indvar802.2, 1
  %exitcond867.2.not = icmp eq i64 %polly.indvar_next803.2, 16
  br i1 %exitcond867.2.not, label %polly.loop_header799.1.2, label %polly.loop_header799.2

polly.loop_header799.1.2:                         ; preds = %polly.loop_exit807.2, %polly.loop_exit807.1.2
  %polly.indvar802.1.2 = phi i64 [ %polly.indvar_next803.1.2, %polly.loop_exit807.1.2 ], [ 0, %polly.loop_exit807.2 ]
  %247 = add nuw nsw i64 %polly.indvar802.1.2, 64
  %248 = mul nuw nsw i64 %247, 480
  %249 = trunc i64 %247 to i32
  %broadcast.splatinsert1231 = insertelement <4 x i32> poison, i32 %249, i32 0
  %broadcast.splat1232 = shufflevector <4 x i32> %broadcast.splatinsert1231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %polly.loop_header799.1.2
  %index1225 = phi i64 [ 0, %polly.loop_header799.1.2 ], [ %index.next1226, %vector.body1223 ]
  %vec.ind1229 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1.2 ], [ %vec.ind.next1230, %vector.body1223 ]
  %250 = add nuw nsw <4 x i64> %vec.ind1229, <i64 32, i64 32, i64 32, i64 32>
  %251 = trunc <4 x i64> %250 to <4 x i32>
  %252 = mul <4 x i32> %broadcast.splat1232, %251
  %253 = add <4 x i32> %252, <i32 1, i32 1, i32 1, i32 1>
  %254 = urem <4 x i32> %253, <i32 80, i32 80, i32 80, i32 80>
  %255 = sitofp <4 x i32> %254 to <4 x double>
  %256 = fmul fast <4 x double> %255, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %257 = extractelement <4 x i64> %250, i32 0
  %258 = shl i64 %257, 3
  %259 = add i64 %258, %248
  %260 = getelementptr i8, i8* %call1, i64 %259
  %261 = bitcast i8* %260 to <4 x double>*
  store <4 x double> %256, <4 x double>* %261, align 8, !alias.scope !97, !noalias !102
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1230 = add <4 x i64> %vec.ind1229, <i64 4, i64 4, i64 4, i64 4>
  %262 = icmp eq i64 %index.next1226, 28
  br i1 %262, label %polly.loop_exit807.1.2, label %vector.body1223, !llvm.loop !108

polly.loop_exit807.1.2:                           ; preds = %vector.body1223
  %polly.indvar_next803.1.2 = add nuw nsw i64 %polly.indvar802.1.2, 1
  %exitcond867.1.2.not = icmp eq i64 %polly.indvar_next803.1.2, 16
  br i1 %exitcond867.1.2.not, label %init_array.exit, label %polly.loop_header799.1.2

polly.loop_header773.1:                           ; preds = %polly.loop_exit781, %polly.loop_exit781.1
  %polly.indvar776.1 = phi i64 [ %polly.indvar_next777.1, %polly.loop_exit781.1 ], [ 0, %polly.loop_exit781 ]
  %263 = mul nuw nsw i64 %polly.indvar776.1, 480
  %264 = trunc i64 %polly.indvar776.1 to i32
  %broadcast.splatinsert1101 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat1102 = shufflevector <4 x i32> %broadcast.splatinsert1101, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %polly.loop_header773.1
  %index1095 = phi i64 [ 0, %polly.loop_header773.1 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1099 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header773.1 ], [ %vec.ind.next1100, %vector.body1093 ]
  %265 = add nuw nsw <4 x i64> %vec.ind1099, <i64 32, i64 32, i64 32, i64 32>
  %266 = trunc <4 x i64> %265 to <4 x i32>
  %267 = mul <4 x i32> %broadcast.splat1102, %266
  %268 = add <4 x i32> %267, <i32 2, i32 2, i32 2, i32 2>
  %269 = urem <4 x i32> %268, <i32 60, i32 60, i32 60, i32 60>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %272 = extractelement <4 x i64> %265, i32 0
  %273 = shl i64 %272, 3
  %274 = add i64 %273, %263
  %275 = getelementptr i8, i8* %call2, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %271, <4 x double>* %276, align 8, !alias.scope !98, !noalias !100
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1100 = add <4 x i64> %vec.ind1099, <i64 4, i64 4, i64 4, i64 4>
  %277 = icmp eq i64 %index.next1096, 28
  br i1 %277, label %polly.loop_exit781.1, label %vector.body1093, !llvm.loop !109

polly.loop_exit781.1:                             ; preds = %vector.body1093
  %polly.indvar_next777.1 = add nuw nsw i64 %polly.indvar776.1, 1
  %exitcond873.1.not = icmp eq i64 %polly.indvar_next777.1, 32
  br i1 %exitcond873.1.not, label %polly.loop_header773.1901, label %polly.loop_header773.1

polly.loop_header773.1901:                        ; preds = %polly.loop_exit781.1, %polly.loop_exit781.1912
  %polly.indvar776.1900 = phi i64 [ %polly.indvar_next777.1910, %polly.loop_exit781.1912 ], [ 0, %polly.loop_exit781.1 ]
  %278 = add nuw nsw i64 %polly.indvar776.1900, 32
  %279 = mul nuw nsw i64 %278, 480
  %280 = trunc i64 %278 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %280, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.body1105, %polly.loop_header773.1901
  %index1107 = phi i64 [ 0, %polly.loop_header773.1901 ], [ %index.next1108, %vector.body1105 ]
  %vec.ind1113 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header773.1901 ], [ %vec.ind.next1114, %vector.body1105 ]
  %281 = mul <4 x i32> %vec.ind1113, %broadcast.splat1116
  %282 = add <4 x i32> %281, <i32 2, i32 2, i32 2, i32 2>
  %283 = urem <4 x i32> %282, <i32 60, i32 60, i32 60, i32 60>
  %284 = sitofp <4 x i32> %283 to <4 x double>
  %285 = fmul fast <4 x double> %284, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %286 = shl i64 %index1107, 3
  %287 = add i64 %286, %279
  %288 = getelementptr i8, i8* %call2, i64 %287
  %289 = bitcast i8* %288 to <4 x double>*
  store <4 x double> %285, <4 x double>* %289, align 8, !alias.scope !98, !noalias !100
  %index.next1108 = add i64 %index1107, 4
  %vec.ind.next1114 = add <4 x i32> %vec.ind1113, <i32 4, i32 4, i32 4, i32 4>
  %290 = icmp eq i64 %index.next1108, 32
  br i1 %290, label %polly.loop_exit781.1912, label %vector.body1105, !llvm.loop !110

polly.loop_exit781.1912:                          ; preds = %vector.body1105
  %polly.indvar_next777.1910 = add nuw nsw i64 %polly.indvar776.1900, 1
  %exitcond873.1911.not = icmp eq i64 %polly.indvar_next777.1910, 32
  br i1 %exitcond873.1911.not, label %polly.loop_header773.1.1, label %polly.loop_header773.1901

polly.loop_header773.1.1:                         ; preds = %polly.loop_exit781.1912, %polly.loop_exit781.1.1
  %polly.indvar776.1.1 = phi i64 [ %polly.indvar_next777.1.1, %polly.loop_exit781.1.1 ], [ 0, %polly.loop_exit781.1912 ]
  %291 = add nuw nsw i64 %polly.indvar776.1.1, 32
  %292 = mul nuw nsw i64 %291, 480
  %293 = trunc i64 %291 to i32
  %broadcast.splatinsert1127 = insertelement <4 x i32> poison, i32 %293, i32 0
  %broadcast.splat1128 = shufflevector <4 x i32> %broadcast.splatinsert1127, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header773.1.1
  %index1121 = phi i64 [ 0, %polly.loop_header773.1.1 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1125 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header773.1.1 ], [ %vec.ind.next1126, %vector.body1119 ]
  %294 = add nuw nsw <4 x i64> %vec.ind1125, <i64 32, i64 32, i64 32, i64 32>
  %295 = trunc <4 x i64> %294 to <4 x i32>
  %296 = mul <4 x i32> %broadcast.splat1128, %295
  %297 = add <4 x i32> %296, <i32 2, i32 2, i32 2, i32 2>
  %298 = urem <4 x i32> %297, <i32 60, i32 60, i32 60, i32 60>
  %299 = sitofp <4 x i32> %298 to <4 x double>
  %300 = fmul fast <4 x double> %299, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %301 = extractelement <4 x i64> %294, i32 0
  %302 = shl i64 %301, 3
  %303 = add i64 %302, %292
  %304 = getelementptr i8, i8* %call2, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %300, <4 x double>* %305, align 8, !alias.scope !98, !noalias !100
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1126 = add <4 x i64> %vec.ind1125, <i64 4, i64 4, i64 4, i64 4>
  %306 = icmp eq i64 %index.next1122, 28
  br i1 %306, label %polly.loop_exit781.1.1, label %vector.body1119, !llvm.loop !111

polly.loop_exit781.1.1:                           ; preds = %vector.body1119
  %polly.indvar_next777.1.1 = add nuw nsw i64 %polly.indvar776.1.1, 1
  %exitcond873.1.1.not = icmp eq i64 %polly.indvar_next777.1.1, 32
  br i1 %exitcond873.1.1.not, label %polly.loop_header773.2, label %polly.loop_header773.1.1

polly.loop_header773.2:                           ; preds = %polly.loop_exit781.1.1, %polly.loop_exit781.2
  %polly.indvar776.2 = phi i64 [ %polly.indvar_next777.2, %polly.loop_exit781.2 ], [ 0, %polly.loop_exit781.1.1 ]
  %307 = add nuw nsw i64 %polly.indvar776.2, 64
  %308 = mul nuw nsw i64 %307, 480
  %309 = trunc i64 %307 to i32
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %polly.loop_header773.2
  %index1133 = phi i64 [ 0, %polly.loop_header773.2 ], [ %index.next1134, %vector.body1131 ]
  %vec.ind1139 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header773.2 ], [ %vec.ind.next1140, %vector.body1131 ]
  %310 = mul <4 x i32> %vec.ind1139, %broadcast.splat1142
  %311 = add <4 x i32> %310, <i32 2, i32 2, i32 2, i32 2>
  %312 = urem <4 x i32> %311, <i32 60, i32 60, i32 60, i32 60>
  %313 = sitofp <4 x i32> %312 to <4 x double>
  %314 = fmul fast <4 x double> %313, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %315 = shl i64 %index1133, 3
  %316 = add i64 %315, %308
  %317 = getelementptr i8, i8* %call2, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %314, <4 x double>* %318, align 8, !alias.scope !98, !noalias !100
  %index.next1134 = add i64 %index1133, 4
  %vec.ind.next1140 = add <4 x i32> %vec.ind1139, <i32 4, i32 4, i32 4, i32 4>
  %319 = icmp eq i64 %index.next1134, 32
  br i1 %319, label %polly.loop_exit781.2, label %vector.body1131, !llvm.loop !112

polly.loop_exit781.2:                             ; preds = %vector.body1131
  %polly.indvar_next777.2 = add nuw nsw i64 %polly.indvar776.2, 1
  %exitcond873.2.not = icmp eq i64 %polly.indvar_next777.2, 16
  br i1 %exitcond873.2.not, label %polly.loop_header773.1.2, label %polly.loop_header773.2

polly.loop_header773.1.2:                         ; preds = %polly.loop_exit781.2, %polly.loop_exit781.1.2
  %polly.indvar776.1.2 = phi i64 [ %polly.indvar_next777.1.2, %polly.loop_exit781.1.2 ], [ 0, %polly.loop_exit781.2 ]
  %320 = add nuw nsw i64 %polly.indvar776.1.2, 64
  %321 = mul nuw nsw i64 %320, 480
  %322 = trunc i64 %320 to i32
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %polly.loop_header773.1.2
  %index1147 = phi i64 [ 0, %polly.loop_header773.1.2 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1151 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header773.1.2 ], [ %vec.ind.next1152, %vector.body1145 ]
  %323 = add nuw nsw <4 x i64> %vec.ind1151, <i64 32, i64 32, i64 32, i64 32>
  %324 = trunc <4 x i64> %323 to <4 x i32>
  %325 = mul <4 x i32> %broadcast.splat1154, %324
  %326 = add <4 x i32> %325, <i32 2, i32 2, i32 2, i32 2>
  %327 = urem <4 x i32> %326, <i32 60, i32 60, i32 60, i32 60>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %330 = extractelement <4 x i64> %323, i32 0
  %331 = shl i64 %330, 3
  %332 = add i64 %331, %321
  %333 = getelementptr i8, i8* %call2, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %329, <4 x double>* %334, align 8, !alias.scope !98, !noalias !100
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1152 = add <4 x i64> %vec.ind1151, <i64 4, i64 4, i64 4, i64 4>
  %335 = icmp eq i64 %index.next1148, 28
  br i1 %335, label %polly.loop_exit781.1.2, label %vector.body1145, !llvm.loop !113

polly.loop_exit781.1.2:                           ; preds = %vector.body1145
  %polly.indvar_next777.1.2 = add nuw nsw i64 %polly.indvar776.1.2, 1
  %exitcond873.1.2.not = icmp eq i64 %polly.indvar_next777.1.2, 16
  br i1 %exitcond873.1.2.not, label %polly.loop_header799, label %polly.loop_header773.1.2

polly.loop_header746.1:                           ; preds = %polly.loop_exit754, %polly.loop_exit754.1
  %polly.indvar749.1 = phi i64 [ %polly.indvar_next750.1, %polly.loop_exit754.1 ], [ 0, %polly.loop_exit754 ]
  %336 = mul nuw nsw i64 %polly.indvar749.1, 640
  %337 = trunc i64 %polly.indvar749.1 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %337, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %polly.loop_header746.1
  %index981 = phi i64 [ 0, %polly.loop_header746.1 ], [ %index.next982, %vector.body979 ]
  %vec.ind985 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.1 ], [ %vec.ind.next986, %vector.body979 ]
  %338 = add nuw nsw <4 x i64> %vec.ind985, <i64 32, i64 32, i64 32, i64 32>
  %339 = trunc <4 x i64> %338 to <4 x i32>
  %340 = mul <4 x i32> %broadcast.splat988, %339
  %341 = add <4 x i32> %340, <i32 3, i32 3, i32 3, i32 3>
  %342 = urem <4 x i32> %341, <i32 80, i32 80, i32 80, i32 80>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = extractelement <4 x i64> %338, i32 0
  %346 = shl i64 %345, 3
  %347 = add nuw nsw i64 %346, %336
  %348 = getelementptr i8, i8* %call, i64 %347
  %349 = bitcast i8* %348 to <4 x double>*
  store <4 x double> %344, <4 x double>* %349, align 8, !alias.scope !94, !noalias !96
  %index.next982 = add i64 %index981, 4
  %vec.ind.next986 = add <4 x i64> %vec.ind985, <i64 4, i64 4, i64 4, i64 4>
  %350 = icmp eq i64 %index.next982, 32
  br i1 %350, label %polly.loop_exit754.1, label %vector.body979, !llvm.loop !114

polly.loop_exit754.1:                             ; preds = %vector.body979
  %polly.indvar_next750.1 = add nuw nsw i64 %polly.indvar749.1, 1
  %exitcond882.1.not = icmp eq i64 %polly.indvar_next750.1, 32
  br i1 %exitcond882.1.not, label %polly.loop_header746.2, label %polly.loop_header746.1

polly.loop_header746.2:                           ; preds = %polly.loop_exit754.1, %polly.loop_exit754.2
  %polly.indvar749.2 = phi i64 [ %polly.indvar_next750.2, %polly.loop_exit754.2 ], [ 0, %polly.loop_exit754.1 ]
  %351 = mul nuw nsw i64 %polly.indvar749.2, 640
  %352 = trunc i64 %polly.indvar749.2 to i32
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header746.2
  %index993 = phi i64 [ 0, %polly.loop_header746.2 ], [ %index.next994, %vector.body991 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.2 ], [ %vec.ind.next998, %vector.body991 ]
  %353 = add nuw nsw <4 x i64> %vec.ind997, <i64 64, i64 64, i64 64, i64 64>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1000, %354
  %356 = add <4 x i32> %355, <i32 3, i32 3, i32 3, i32 3>
  %357 = urem <4 x i32> %356, <i32 80, i32 80, i32 80, i32 80>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add nuw nsw i64 %361, %351
  %363 = getelementptr i8, i8* %call, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !94, !noalias !96
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next994, 16
  br i1 %365, label %polly.loop_exit754.2, label %vector.body991, !llvm.loop !115

polly.loop_exit754.2:                             ; preds = %vector.body991
  %polly.indvar_next750.2 = add nuw nsw i64 %polly.indvar749.2, 1
  %exitcond882.2.not = icmp eq i64 %polly.indvar_next750.2, 32
  br i1 %exitcond882.2.not, label %polly.loop_header746.1915, label %polly.loop_header746.2

polly.loop_header746.1915:                        ; preds = %polly.loop_exit754.2, %polly.loop_exit754.1926
  %polly.indvar749.1914 = phi i64 [ %polly.indvar_next750.1924, %polly.loop_exit754.1926 ], [ 0, %polly.loop_exit754.2 ]
  %366 = add nuw nsw i64 %polly.indvar749.1914, 32
  %367 = mul nuw nsw i64 %366, 640
  %368 = trunc i64 %366 to i32
  %broadcast.splatinsert1013 = insertelement <4 x i32> poison, i32 %368, i32 0
  %broadcast.splat1014 = shufflevector <4 x i32> %broadcast.splatinsert1013, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %polly.loop_header746.1915
  %index1005 = phi i64 [ 0, %polly.loop_header746.1915 ], [ %index.next1006, %vector.body1003 ]
  %vec.ind1011 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header746.1915 ], [ %vec.ind.next1012, %vector.body1003 ]
  %369 = mul <4 x i32> %vec.ind1011, %broadcast.splat1014
  %370 = add <4 x i32> %369, <i32 3, i32 3, i32 3, i32 3>
  %371 = urem <4 x i32> %370, <i32 80, i32 80, i32 80, i32 80>
  %372 = sitofp <4 x i32> %371 to <4 x double>
  %373 = fmul fast <4 x double> %372, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %374 = shl i64 %index1005, 3
  %375 = add nuw nsw i64 %374, %367
  %376 = getelementptr i8, i8* %call, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %373, <4 x double>* %377, align 8, !alias.scope !94, !noalias !96
  %index.next1006 = add i64 %index1005, 4
  %vec.ind.next1012 = add <4 x i32> %vec.ind1011, <i32 4, i32 4, i32 4, i32 4>
  %378 = icmp eq i64 %index.next1006, 32
  br i1 %378, label %polly.loop_exit754.1926, label %vector.body1003, !llvm.loop !116

polly.loop_exit754.1926:                          ; preds = %vector.body1003
  %polly.indvar_next750.1924 = add nuw nsw i64 %polly.indvar749.1914, 1
  %exitcond882.1925.not = icmp eq i64 %polly.indvar_next750.1924, 32
  br i1 %exitcond882.1925.not, label %polly.loop_header746.1.1, label %polly.loop_header746.1915

polly.loop_header746.1.1:                         ; preds = %polly.loop_exit754.1926, %polly.loop_exit754.1.1
  %polly.indvar749.1.1 = phi i64 [ %polly.indvar_next750.1.1, %polly.loop_exit754.1.1 ], [ 0, %polly.loop_exit754.1926 ]
  %379 = add nuw nsw i64 %polly.indvar749.1.1, 32
  %380 = mul nuw nsw i64 %379, 640
  %381 = trunc i64 %379 to i32
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %polly.loop_header746.1.1
  %index1019 = phi i64 [ 0, %polly.loop_header746.1.1 ], [ %index.next1020, %vector.body1017 ]
  %vec.ind1023 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.1.1 ], [ %vec.ind.next1024, %vector.body1017 ]
  %382 = add nuw nsw <4 x i64> %vec.ind1023, <i64 32, i64 32, i64 32, i64 32>
  %383 = trunc <4 x i64> %382 to <4 x i32>
  %384 = mul <4 x i32> %broadcast.splat1026, %383
  %385 = add <4 x i32> %384, <i32 3, i32 3, i32 3, i32 3>
  %386 = urem <4 x i32> %385, <i32 80, i32 80, i32 80, i32 80>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %389 = extractelement <4 x i64> %382, i32 0
  %390 = shl i64 %389, 3
  %391 = add nuw nsw i64 %390, %380
  %392 = getelementptr i8, i8* %call, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %388, <4 x double>* %393, align 8, !alias.scope !94, !noalias !96
  %index.next1020 = add i64 %index1019, 4
  %vec.ind.next1024 = add <4 x i64> %vec.ind1023, <i64 4, i64 4, i64 4, i64 4>
  %394 = icmp eq i64 %index.next1020, 32
  br i1 %394, label %polly.loop_exit754.1.1, label %vector.body1017, !llvm.loop !117

polly.loop_exit754.1.1:                           ; preds = %vector.body1017
  %polly.indvar_next750.1.1 = add nuw nsw i64 %polly.indvar749.1.1, 1
  %exitcond882.1.1.not = icmp eq i64 %polly.indvar_next750.1.1, 32
  br i1 %exitcond882.1.1.not, label %polly.loop_header746.2.1, label %polly.loop_header746.1.1

polly.loop_header746.2.1:                         ; preds = %polly.loop_exit754.1.1, %polly.loop_exit754.2.1
  %polly.indvar749.2.1 = phi i64 [ %polly.indvar_next750.2.1, %polly.loop_exit754.2.1 ], [ 0, %polly.loop_exit754.1.1 ]
  %395 = add nuw nsw i64 %polly.indvar749.2.1, 32
  %396 = mul nuw nsw i64 %395, 640
  %397 = trunc i64 %395 to i32
  %broadcast.splatinsert1037 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat1038 = shufflevector <4 x i32> %broadcast.splatinsert1037, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header746.2.1
  %index1031 = phi i64 [ 0, %polly.loop_header746.2.1 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1035 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.2.1 ], [ %vec.ind.next1036, %vector.body1029 ]
  %398 = add nuw nsw <4 x i64> %vec.ind1035, <i64 64, i64 64, i64 64, i64 64>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat1038, %399
  %401 = add <4 x i32> %400, <i32 3, i32 3, i32 3, i32 3>
  %402 = urem <4 x i32> %401, <i32 80, i32 80, i32 80, i32 80>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add nuw nsw i64 %406, %396
  %408 = getelementptr i8, i8* %call, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !94, !noalias !96
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1036 = add <4 x i64> %vec.ind1035, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next1032, 16
  br i1 %410, label %polly.loop_exit754.2.1, label %vector.body1029, !llvm.loop !118

polly.loop_exit754.2.1:                           ; preds = %vector.body1029
  %polly.indvar_next750.2.1 = add nuw nsw i64 %polly.indvar749.2.1, 1
  %exitcond882.2.1.not = icmp eq i64 %polly.indvar_next750.2.1, 32
  br i1 %exitcond882.2.1.not, label %polly.loop_header746.2929, label %polly.loop_header746.2.1

polly.loop_header746.2929:                        ; preds = %polly.loop_exit754.2.1, %polly.loop_exit754.2940
  %polly.indvar749.2928 = phi i64 [ %polly.indvar_next750.2938, %polly.loop_exit754.2940 ], [ 0, %polly.loop_exit754.2.1 ]
  %411 = add nuw nsw i64 %polly.indvar749.2928, 64
  %412 = mul nuw nsw i64 %411, 640
  %413 = trunc i64 %411 to i32
  %broadcast.splatinsert1051 = insertelement <4 x i32> poison, i32 %413, i32 0
  %broadcast.splat1052 = shufflevector <4 x i32> %broadcast.splatinsert1051, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %polly.loop_header746.2929
  %index1043 = phi i64 [ 0, %polly.loop_header746.2929 ], [ %index.next1044, %vector.body1041 ]
  %vec.ind1049 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header746.2929 ], [ %vec.ind.next1050, %vector.body1041 ]
  %414 = mul <4 x i32> %vec.ind1049, %broadcast.splat1052
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = shl i64 %index1043, 3
  %420 = add nuw nsw i64 %419, %412
  %421 = getelementptr i8, i8* %call, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %418, <4 x double>* %422, align 8, !alias.scope !94, !noalias !96
  %index.next1044 = add i64 %index1043, 4
  %vec.ind.next1050 = add <4 x i32> %vec.ind1049, <i32 4, i32 4, i32 4, i32 4>
  %423 = icmp eq i64 %index.next1044, 32
  br i1 %423, label %polly.loop_exit754.2940, label %vector.body1041, !llvm.loop !119

polly.loop_exit754.2940:                          ; preds = %vector.body1041
  %polly.indvar_next750.2938 = add nuw nsw i64 %polly.indvar749.2928, 1
  %exitcond882.2939.not = icmp eq i64 %polly.indvar_next750.2938, 16
  br i1 %exitcond882.2939.not, label %polly.loop_header746.1.2, label %polly.loop_header746.2929

polly.loop_header746.1.2:                         ; preds = %polly.loop_exit754.2940, %polly.loop_exit754.1.2
  %polly.indvar749.1.2 = phi i64 [ %polly.indvar_next750.1.2, %polly.loop_exit754.1.2 ], [ 0, %polly.loop_exit754.2940 ]
  %424 = add nuw nsw i64 %polly.indvar749.1.2, 64
  %425 = mul nuw nsw i64 %424, 640
  %426 = trunc i64 %424 to i32
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %polly.loop_header746.1.2
  %index1057 = phi i64 [ 0, %polly.loop_header746.1.2 ], [ %index.next1058, %vector.body1055 ]
  %vec.ind1061 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.1.2 ], [ %vec.ind.next1062, %vector.body1055 ]
  %427 = add nuw nsw <4 x i64> %vec.ind1061, <i64 32, i64 32, i64 32, i64 32>
  %428 = trunc <4 x i64> %427 to <4 x i32>
  %429 = mul <4 x i32> %broadcast.splat1064, %428
  %430 = add <4 x i32> %429, <i32 3, i32 3, i32 3, i32 3>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %434 = extractelement <4 x i64> %427, i32 0
  %435 = shl i64 %434, 3
  %436 = add nuw nsw i64 %435, %425
  %437 = getelementptr i8, i8* %call, i64 %436
  %438 = bitcast i8* %437 to <4 x double>*
  store <4 x double> %433, <4 x double>* %438, align 8, !alias.scope !94, !noalias !96
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1062 = add <4 x i64> %vec.ind1061, <i64 4, i64 4, i64 4, i64 4>
  %439 = icmp eq i64 %index.next1058, 32
  br i1 %439, label %polly.loop_exit754.1.2, label %vector.body1055, !llvm.loop !120

polly.loop_exit754.1.2:                           ; preds = %vector.body1055
  %polly.indvar_next750.1.2 = add nuw nsw i64 %polly.indvar749.1.2, 1
  %exitcond882.1.2.not = icmp eq i64 %polly.indvar_next750.1.2, 16
  br i1 %exitcond882.1.2.not, label %polly.loop_header746.2.2, label %polly.loop_header746.1.2

polly.loop_header746.2.2:                         ; preds = %polly.loop_exit754.1.2, %polly.loop_exit754.2.2
  %polly.indvar749.2.2 = phi i64 [ %polly.indvar_next750.2.2, %polly.loop_exit754.2.2 ], [ 0, %polly.loop_exit754.1.2 ]
  %440 = add nuw nsw i64 %polly.indvar749.2.2, 64
  %441 = mul nuw nsw i64 %440, 640
  %442 = trunc i64 %440 to i32
  %broadcast.splatinsert1075 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1076 = shufflevector <4 x i32> %broadcast.splatinsert1075, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header746.2.2
  %index1069 = phi i64 [ 0, %polly.loop_header746.2.2 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1073 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.2.2 ], [ %vec.ind.next1074, %vector.body1067 ]
  %443 = add nuw nsw <4 x i64> %vec.ind1073, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat1076, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !94, !noalias !96
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1074 = add <4 x i64> %vec.ind1073, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next1070, 16
  br i1 %455, label %polly.loop_exit754.2.2, label %vector.body1067, !llvm.loop !121

polly.loop_exit754.2.2:                           ; preds = %vector.body1067
  %polly.indvar_next750.2.2 = add nuw nsw i64 %polly.indvar749.2.2, 1
  %exitcond882.2.2.not = icmp eq i64 %polly.indvar_next750.2.2, 16
  br i1 %exitcond882.2.2.not, label %polly.loop_header773, label %polly.loop_header746.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 32}
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
!45 = !{!"llvm.loop.tile.size", i32 8}
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
