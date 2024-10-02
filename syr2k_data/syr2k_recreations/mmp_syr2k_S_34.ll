; ModuleID = 'syr2k_recreations//mmp_syr2k_S_34.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_34.c"
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
  %scevgep951 = getelementptr i8, i8* %call2, i64 %12
  %scevgep950 = getelementptr i8, i8* %call2, i64 %11
  %scevgep949 = getelementptr i8, i8* %call1, i64 %12
  %scevgep948 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep948, %scevgep951
  %bound1 = icmp ult i8* %scevgep950, %scevgep949
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
  br i1 %exitcond18.not.i, label %vector.ph955, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph955:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert962 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat963 = shufflevector <4 x i64> %broadcast.splatinsert962, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph955
  %index956 = phi i64 [ 0, %vector.ph955 ], [ %index.next957, %vector.body954 ]
  %vec.ind960 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph955 ], [ %vec.ind.next961, %vector.body954 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind960, %broadcast.splat963
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv7.i, i64 %index956
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next957 = add i64 %index956, 4
  %vec.ind.next961 = add <4 x i64> %vec.ind960, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next957, 80
  br i1 %40, label %for.inc41.i, label %vector.body954, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body954
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph955, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1308, label %vector.ph1237

vector.ph1237:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1237
  %index1238 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1239, %vector.body1236 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %index1238
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1239 = add i64 %index1238, 4
  %46 = icmp eq i64 %index.next1239, %n.vec
  br i1 %46, label %middle.block1234, label %vector.body1236, !llvm.loop !18

middle.block1234:                                 ; preds = %vector.body1236
  %cmp.n1241 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1241, label %for.inc6.i, label %for.body3.i46.preheader1308

for.body3.i46.preheader1308:                      ; preds = %for.body3.i46.preheader, %middle.block1234
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1234 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1308, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1308 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1234, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting436
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1257 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1257, label %for.body3.i60.preheader1307, label %vector.ph1258

vector.ph1258:                                    ; preds = %for.body3.i60.preheader
  %n.vec1260 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %vector.ph1258
  %index1261 = phi i64 [ 0, %vector.ph1258 ], [ %index.next1262, %vector.body1256 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %index1261
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1265 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1265, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1262 = add i64 %index1261, 4
  %57 = icmp eq i64 %index.next1262, %n.vec1260
  br i1 %57, label %middle.block1254, label %vector.body1256, !llvm.loop !60

middle.block1254:                                 ; preds = %vector.body1256
  %cmp.n1264 = icmp eq i64 %indvars.iv21.i52, %n.vec1260
  br i1 %cmp.n1264, label %for.inc6.i63, label %for.body3.i60.preheader1307

for.body3.i60.preheader1307:                      ; preds = %for.body3.i60.preheader, %middle.block1254
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1260, %middle.block1254 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1307, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1307 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1254, %for.cond1.preheader.i54
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
  %min.iters.check1283 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1283, label %for.body3.i99.preheader1306, label %vector.ph1284

vector.ph1284:                                    ; preds = %for.body3.i99.preheader
  %n.vec1286 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.body1282, %vector.ph1284
  %index1287 = phi i64 [ 0, %vector.ph1284 ], [ %index.next1288, %vector.body1282 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %index1287
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1291, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1288 = add i64 %index1287, 4
  %68 = icmp eq i64 %index.next1288, %n.vec1286
  br i1 %68, label %middle.block1280, label %vector.body1282, !llvm.loop !62

middle.block1280:                                 ; preds = %vector.body1282
  %cmp.n1290 = icmp eq i64 %indvars.iv21.i91, %n.vec1286
  br i1 %cmp.n1290, label %for.inc6.i102, label %for.body3.i99.preheader1306

for.body3.i99.preheader1306:                      ; preds = %for.body3.i99.preheader, %middle.block1280
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1286, %middle.block1280 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1306, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1306 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1280, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit229.1
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1295 = phi i64 [ %indvar.next1296, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1295, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1297 = icmp ult i64 %88, 4
  br i1 %min.iters.check1297, label %polly.loop_header191.preheader, label %vector.ph1298

vector.ph1298:                                    ; preds = %polly.loop_header
  %n.vec1300 = and i64 %88, -4
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1302, %vector.body1294 ]
  %90 = shl nuw nsw i64 %index1301, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1305, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1302 = add i64 %index1301, 4
  %95 = icmp eq i64 %index.next1302, %n.vec1300
  br i1 %95, label %middle.block1292, label %vector.body1294, !llvm.loop !74

middle.block1292:                                 ; preds = %vector.body1294
  %cmp.n1304 = icmp eq i64 %88, %n.vec1300
  br i1 %cmp.n1304, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1292
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1300, %middle.block1292 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1292
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1296 = add i64 %indvar1295, 1
  br i1 %exitcond836.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond835.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond835.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit229.1
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit229.1 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit229.1 ]
  %smin832 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -52)
  %97 = add nsw i64 %smin832, 60
  %98 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %99 = add nuw nsw i64 %polly.indvar214, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next215, %97
  br i1 %exitcond826.not, label %polly.loop_header227, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %polly.access.mul.call2224 = mul nuw nsw i64 %polly.indvar220, 60
  %polly.access.add.call2225 = add nuw nsw i64 %99, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 80
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit219, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_exit219 ]
  %100 = add nuw nsw i64 %polly.indvar230, %98
  %101 = shl i64 %100, 3
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %polly.indvar230, 80
  %scevgep256 = getelementptr i8, i8* %call1, i64 %101
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next231, %97
  br i1 %exitcond833.not, label %polly.loop_header211.1, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %smin829 = call i64 @llvm.smin.i64(i64 %indvars.iv827, i64 49)
  %102 = mul nuw nsw i64 %polly.indvar236, 480
  %103 = mul nuw nsw i64 %polly.indvar236, 640
  %scevgep260 = getelementptr i8, i8* %call, i64 %103
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %scevgep257 = getelementptr i8, i8* %scevgep256, i64 %102
  %scevgep257258 = bitcast i8* %scevgep257 to double*
  %_p_scalar_259 = load double, double* %scevgep257258, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 1
  %exitcond831.not = icmp eq i64 %indvars.iv.next828, 80
  br i1 %exitcond831.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %104 = mul nuw nsw i64 %polly.indvar242, 480
  %105 = add i64 %104, %101
  %scevgep245 = getelementptr i8, i8* %call1, i64 %105
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.indvar242, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %106 = shl i64 %polly.indvar242, 3
  %scevgep261 = getelementptr i8, i8* %scevgep260, i64 %106
  %scevgep261262 = bitcast i8* %scevgep261 to double*
  %_p_scalar_263 = load double, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_263
  store double %p_add42.i118, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond830.not = icmp eq i64 %polly.indvar242, %smin829
  br i1 %exitcond830.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header352

polly.exiting267:                                 ; preds = %polly.loop_exit398.1
  tail call void @free(i8* nonnull %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1269 = phi i64 [ %indvar.next1270, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %107 = add i64 %indvar1269, 1
  %108 = mul nuw nsw i64 %polly.indvar355, 640
  %scevgep364 = getelementptr i8, i8* %call, i64 %108
  %min.iters.check1271 = icmp ult i64 %107, 4
  br i1 %min.iters.check1271, label %polly.loop_header358.preheader, label %vector.ph1272

vector.ph1272:                                    ; preds = %polly.loop_header352
  %n.vec1274 = and i64 %107, -4
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1272
  %index1275 = phi i64 [ 0, %vector.ph1272 ], [ %index.next1276, %vector.body1268 ]
  %109 = shl nuw nsw i64 %index1275, 3
  %110 = getelementptr i8, i8* %scevgep364, i64 %109
  %111 = bitcast i8* %110 to <4 x double>*
  %wide.load1279 = load <4 x double>, <4 x double>* %111, align 8, !alias.scope !79, !noalias !81
  %112 = fmul fast <4 x double> %wide.load1279, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %113 = bitcast i8* %110 to <4 x double>*
  store <4 x double> %112, <4 x double>* %113, align 8, !alias.scope !79, !noalias !81
  %index.next1276 = add i64 %index1275, 4
  %114 = icmp eq i64 %index.next1276, %n.vec1274
  br i1 %114, label %middle.block1266, label %vector.body1268, !llvm.loop !85

middle.block1266:                                 ; preds = %vector.body1268
  %cmp.n1278 = icmp eq i64 %107, %n.vec1274
  br i1 %cmp.n1278, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1266
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1274, %middle.block1266 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1266
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next356, 80
  %indvar.next1270 = add i64 %indvar1269, 1
  br i1 %exitcond851.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %115 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %115
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond850.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !86

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit398.1
  %indvars.iv838 = phi i64 [ 0, %polly.loop_header368.preheader ], [ %indvars.iv.next839, %polly.loop_exit398.1 ]
  %polly.indvar371 = phi i64 [ 0, %polly.loop_header368.preheader ], [ %polly.indvar_next372, %polly.loop_exit398.1 ]
  %smin847 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 -52)
  %116 = add nsw i64 %smin847, 60
  %117 = shl nsw i64 %polly.indvar371, 3
  br label %polly.loop_header380

polly.loop_header380:                             ; preds = %polly.loop_exit388, %polly.loop_header368
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next384, %polly.loop_exit388 ]
  %118 = add nuw nsw i64 %polly.indvar383, %117
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar383, 80
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_header386
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next384, %116
  br i1 %exitcond841.not, label %polly.loop_header396, label %polly.loop_header380

polly.loop_header386:                             ; preds = %polly.loop_header386, %polly.loop_header380
  %polly.indvar389 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next390, %polly.loop_header386 ]
  %polly.access.mul.call2393 = mul nuw nsw i64 %polly.indvar389, 60
  %polly.access.add.call2394 = add nuw nsw i64 %118, %polly.access.mul.call2393
  %polly.access.call2395 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2394
  %polly.access.call2395.load = load double, double* %polly.access.call2395, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar389, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2395.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next390, 80
  br i1 %exitcond837.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header396:                             ; preds = %polly.loop_exit388, %polly.loop_exit404
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_exit388 ]
  %119 = add nuw nsw i64 %polly.indvar399, %117
  %120 = shl i64 %119, 3
  %polly.access.mul.Packed_MemRef_call2269417 = mul nuw nsw i64 %polly.indvar399, 80
  %scevgep425 = getelementptr i8, i8* %call1, i64 %120
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit410
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next400, %116
  br i1 %exitcond848.not, label %polly.loop_header380.1, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit410, %polly.loop_header396
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit410 ], [ 0, %polly.loop_header396 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header396 ]
  %smin844 = call i64 @llvm.smin.i64(i64 %indvars.iv842, i64 49)
  %121 = mul nuw nsw i64 %polly.indvar405, 480
  %122 = mul nuw nsw i64 %polly.indvar405, 640
  %scevgep429 = getelementptr i8, i8* %call, i64 %122
  %polly.access.add.Packed_MemRef_call2269418 = add nuw nsw i64 %polly.indvar405, %polly.access.mul.Packed_MemRef_call2269417
  %polly.access.Packed_MemRef_call2269419 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418
  %_p_scalar_420 = load double, double* %polly.access.Packed_MemRef_call2269419, align 8
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %121
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next843 = add nuw nsw i64 %indvars.iv842, 1
  %exitcond846.not = icmp eq i64 %indvars.iv.next843, 80
  br i1 %exitcond846.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %123 = mul nuw nsw i64 %polly.indvar411, 480
  %124 = add i64 %123, %120
  %scevgep414 = getelementptr i8, i8* %call1, i64 %124
  %scevgep414415 = bitcast i8* %scevgep414 to double*
  %_p_scalar_416 = load double, double* %scevgep414415, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_420, %_p_scalar_416
  %polly.access.add.Packed_MemRef_call2269422 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2269417
  %polly.access.Packed_MemRef_call2269423 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422
  %_p_scalar_424 = load double, double* %polly.access.Packed_MemRef_call2269423, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_428, %_p_scalar_424
  %125 = shl i64 %polly.indvar411, 3
  %scevgep430 = getelementptr i8, i8* %scevgep429, i64 %125
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_432
  store double %p_add42.i79, double* %scevgep430431, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond845.not = icmp eq i64 %polly.indvar411, %smin844
  br i1 %exitcond845.not, label %polly.loop_exit410, label %polly.loop_header408

polly.start435:                                   ; preds = %init_array.exit
  %malloccall437 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header521

polly.exiting436:                                 ; preds = %polly.loop_exit567.1
  tail call void @free(i8* nonnull %malloccall437)
  br label %kernel_syr2k.exit

polly.loop_header521:                             ; preds = %polly.loop_exit529, %polly.start435
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit529 ], [ 0, %polly.start435 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 1, %polly.start435 ]
  %126 = add i64 %indvar, 1
  %127 = mul nuw nsw i64 %polly.indvar524, 640
  %scevgep533 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1245 = icmp ult i64 %126, 4
  br i1 %min.iters.check1245, label %polly.loop_header527.preheader, label %vector.ph1246

vector.ph1246:                                    ; preds = %polly.loop_header521
  %n.vec1248 = and i64 %126, -4
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1246
  %index1249 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1250, %vector.body1244 ]
  %128 = shl nuw nsw i64 %index1249, 3
  %129 = getelementptr i8, i8* %scevgep533, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1253 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !89, !noalias !91
  %131 = fmul fast <4 x double> %wide.load1253, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !89, !noalias !91
  %index.next1250 = add i64 %index1249, 4
  %133 = icmp eq i64 %index.next1250, %n.vec1248
  br i1 %133, label %middle.block1242, label %vector.body1244, !llvm.loop !95

middle.block1242:                                 ; preds = %vector.body1244
  %cmp.n1252 = icmp eq i64 %126, %n.vec1248
  br i1 %cmp.n1252, label %polly.loop_exit529, label %polly.loop_header527.preheader

polly.loop_header527.preheader:                   ; preds = %polly.loop_header521, %middle.block1242
  %polly.indvar530.ph = phi i64 [ 0, %polly.loop_header521 ], [ %n.vec1248, %middle.block1242 ]
  br label %polly.loop_header527

polly.loop_exit529:                               ; preds = %polly.loop_header527, %middle.block1242
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next525, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond866.not, label %polly.loop_header537.preheader, label %polly.loop_header521

polly.loop_header537.preheader:                   ; preds = %polly.loop_exit529
  %Packed_MemRef_call2438 = bitcast i8* %malloccall437 to double*
  br label %polly.loop_header537

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_header527
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_header527 ], [ %polly.indvar530.ph, %polly.loop_header527.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar530, 3
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 %134
  %scevgep534535 = bitcast i8* %scevgep534 to double*
  %_p_scalar_536 = load double, double* %scevgep534535, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_536, 1.200000e+00
  store double %p_mul.i, double* %scevgep534535, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next531, %polly.indvar524
  br i1 %exitcond865.not, label %polly.loop_exit529, label %polly.loop_header527, !llvm.loop !96

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_exit567.1
  %indvars.iv853 = phi i64 [ 0, %polly.loop_header537.preheader ], [ %indvars.iv.next854, %polly.loop_exit567.1 ]
  %polly.indvar540 = phi i64 [ 0, %polly.loop_header537.preheader ], [ %polly.indvar_next541, %polly.loop_exit567.1 ]
  %smin862 = call i64 @llvm.smin.i64(i64 %indvars.iv853, i64 -52)
  %135 = add nsw i64 %smin862, 60
  %136 = shl nsw i64 %polly.indvar540, 3
  br label %polly.loop_header549

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.loop_header537
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header537 ], [ %polly.indvar_next553, %polly.loop_exit557 ]
  %137 = add nuw nsw i64 %polly.indvar552, %136
  %polly.access.mul.Packed_MemRef_call2438 = mul nuw nsw i64 %polly.indvar552, 80
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_header555
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next553, %135
  br i1 %exitcond856.not, label %polly.loop_header565, label %polly.loop_header549

polly.loop_header555:                             ; preds = %polly.loop_header555, %polly.loop_header549
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header549 ], [ %polly.indvar_next559, %polly.loop_header555 ]
  %polly.access.mul.call2562 = mul nuw nsw i64 %polly.indvar558, 60
  %polly.access.add.call2563 = add nuw nsw i64 %137, %polly.access.mul.call2562
  %polly.access.call2564 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2563
  %polly.access.call2564.load = load double, double* %polly.access.call2564, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438 = add nuw nsw i64 %polly.indvar558, %polly.access.mul.Packed_MemRef_call2438
  %polly.access.Packed_MemRef_call2438 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438
  store double %polly.access.call2564.load, double* %polly.access.Packed_MemRef_call2438, align 8
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next559, 80
  br i1 %exitcond852.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header565:                             ; preds = %polly.loop_exit557, %polly.loop_exit573
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ 0, %polly.loop_exit557 ]
  %138 = add nuw nsw i64 %polly.indvar568, %136
  %139 = shl i64 %138, 3
  %polly.access.mul.Packed_MemRef_call2438586 = mul nuw nsw i64 %polly.indvar568, 80
  %scevgep594 = getelementptr i8, i8* %call1, i64 %139
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit579
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next569, %135
  br i1 %exitcond863.not, label %polly.loop_header549.1, label %polly.loop_header565

polly.loop_header571:                             ; preds = %polly.loop_exit579, %polly.loop_header565
  %indvars.iv857 = phi i64 [ %indvars.iv.next858, %polly.loop_exit579 ], [ 0, %polly.loop_header565 ]
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_exit579 ], [ 0, %polly.loop_header565 ]
  %smin859 = call i64 @llvm.smin.i64(i64 %indvars.iv857, i64 49)
  %140 = mul nuw nsw i64 %polly.indvar574, 480
  %141 = mul nuw nsw i64 %polly.indvar574, 640
  %scevgep598 = getelementptr i8, i8* %call, i64 %141
  %polly.access.add.Packed_MemRef_call2438587 = add nuw nsw i64 %polly.indvar574, %polly.access.mul.Packed_MemRef_call2438586
  %polly.access.Packed_MemRef_call2438588 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2438588, align 8
  %scevgep595 = getelementptr i8, i8* %scevgep594, i64 %140
  %scevgep595596 = bitcast i8* %scevgep595 to double*
  %_p_scalar_597 = load double, double* %scevgep595596, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_header577
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %indvars.iv.next858 = add nuw nsw i64 %indvars.iv857, 1
  %exitcond861.not = icmp eq i64 %indvars.iv.next858, 80
  br i1 %exitcond861.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header577:                             ; preds = %polly.loop_header577, %polly.loop_header571
  %polly.indvar580 = phi i64 [ 0, %polly.loop_header571 ], [ %polly.indvar_next581, %polly.loop_header577 ]
  %142 = mul nuw nsw i64 %polly.indvar580, 480
  %143 = add i64 %142, %139
  %scevgep583 = getelementptr i8, i8* %call1, i64 %143
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_589, %_p_scalar_585
  %polly.access.add.Packed_MemRef_call2438591 = add nuw nsw i64 %polly.indvar580, %polly.access.mul.Packed_MemRef_call2438586
  %polly.access.Packed_MemRef_call2438592 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591
  %_p_scalar_593 = load double, double* %polly.access.Packed_MemRef_call2438592, align 8
  %p_mul37.i = fmul fast double %_p_scalar_597, %_p_scalar_593
  %144 = shl i64 %polly.indvar580, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %144
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_601
  store double %p_add42.i, double* %scevgep599600, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %exitcond860.not = icmp eq i64 %polly.indvar580, %smin859
  br i1 %exitcond860.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %145 = mul nuw nsw i64 %polly.indvar743, 640
  %146 = trunc i64 %polly.indvar743 to i32
  %broadcast.splatinsert976 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat977 = shufflevector <4 x i32> %broadcast.splatinsert976, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %polly.loop_header740
  %index968 = phi i64 [ 0, %polly.loop_header740 ], [ %index.next969, %vector.body966 ]
  %vec.ind974 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740 ], [ %vec.ind.next975, %vector.body966 ]
  %147 = mul <4 x i32> %vec.ind974, %broadcast.splat977
  %148 = add <4 x i32> %147, <i32 3, i32 3, i32 3, i32 3>
  %149 = urem <4 x i32> %148, <i32 80, i32 80, i32 80, i32 80>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index968, 3
  %153 = add nuw nsw i64 %152, %145
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !99, !noalias !101
  %index.next969 = add i64 %index968, 4
  %vec.ind.next975 = add <4 x i32> %vec.ind974, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next969, 32
  br i1 %156, label %polly.loop_exit748, label %vector.body966, !llvm.loop !104

polly.loop_exit748:                               ; preds = %vector.body966
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next744, 32
  br i1 %exitcond886.not, label %polly.loop_header740.1, label %polly.loop_header740

polly.loop_header767:                             ; preds = %polly.loop_exit748.2.2, %polly.loop_exit775
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748.2.2 ]
  %157 = mul nuw nsw i64 %polly.indvar770, 480
  %158 = trunc i64 %polly.indvar770 to i32
  %broadcast.splatinsert1090 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1091 = shufflevector <4 x i32> %broadcast.splatinsert1090, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %polly.loop_header767
  %index1082 = phi i64 [ 0, %polly.loop_header767 ], [ %index.next1083, %vector.body1080 ]
  %vec.ind1088 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767 ], [ %vec.ind.next1089, %vector.body1080 ]
  %159 = mul <4 x i32> %vec.ind1088, %broadcast.splat1091
  %160 = add <4 x i32> %159, <i32 2, i32 2, i32 2, i32 2>
  %161 = urem <4 x i32> %160, <i32 60, i32 60, i32 60, i32 60>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %164 = shl i64 %index1082, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call2, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !103, !noalias !105
  %index.next1083 = add i64 %index1082, 4
  %vec.ind.next1089 = add <4 x i32> %vec.ind1088, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1083, 32
  br i1 %168, label %polly.loop_exit775, label %vector.body1080, !llvm.loop !106

polly.loop_exit775:                               ; preds = %vector.body1080
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next771, 32
  br i1 %exitcond877.not, label %polly.loop_header767.1, label %polly.loop_header767

polly.loop_header793:                             ; preds = %polly.loop_exit775.1.2, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775.1.2 ]
  %169 = mul nuw nsw i64 %polly.indvar796, 480
  %170 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1168 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1169 = shufflevector <4 x i32> %broadcast.splatinsert1168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header793
  %index1160 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1166 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1167, %vector.body1158 ]
  %171 = mul <4 x i32> %vec.ind1166, %broadcast.splat1169
  %172 = add <4 x i32> %171, <i32 1, i32 1, i32 1, i32 1>
  %173 = urem <4 x i32> %172, <i32 80, i32 80, i32 80, i32 80>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %176 = shl i64 %index1160, 3
  %177 = add i64 %176, %169
  %178 = getelementptr i8, i8* %call1, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !102, !noalias !107
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1167 = add <4 x i32> %vec.ind1166, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1161, 32
  br i1 %180, label %polly.loop_exit801, label %vector.body1158, !llvm.loop !108

polly.loop_exit801:                               ; preds = %vector.body1158
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond871.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header211.1:                           ; preds = %polly.loop_exit235, %polly.loop_exit219.1
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit235 ]
  %181 = add nuw nsw i64 %polly.indvar214.1, %98
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar214.1, 80
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %182 = mul i64 %polly.indvar220.1, 60
  %polly.access.mul.call2224.1 = add i64 %182, 3000
  %polly.access.add.call2225.1 = add nuw nsw i64 %181, %polly.access.mul.call2224.1
  %polly.access.call2226.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2225.1
  %polly.access.call2226.load.1 = load double, double* %polly.access.call2226.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar220.1, %polly.access.mul.Packed_MemRef_call2.1
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2226.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, 30
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond826.1.not = icmp eq i64 %polly.indvar_next215.1, %97
  br i1 %exitcond826.1.not, label %polly.loop_header227.1, label %polly.loop_header211.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit235.1
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit219.1 ]
  %183 = add nuw nsw i64 %polly.indvar230.1, %98
  %184 = shl i64 %183, 3
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %polly.indvar230.1, 80
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %184
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %indvars.iv827.1 = phi i64 [ %indvars.iv.next828.1, %polly.loop_exit241.1 ], [ 0, %polly.loop_header227.1 ]
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit241.1 ], [ 50, %polly.loop_header227.1 ]
  %smin829.1 = call i64 @llvm.smin.i64(i64 %indvars.iv827.1, i64 49)
  %185 = add nsw i64 %polly.indvar236.1, -50
  %186 = mul nuw nsw i64 %polly.indvar236.1, 480
  %187 = mul nuw nsw i64 %polly.indvar236.1, 640
  %scevgep260.1 = getelementptr i8, i8* %call, i64 %187
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %185, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %scevgep257.1 = getelementptr i8, i8* %scevgep256.1, i64 %186
  %scevgep257258.1 = bitcast i8* %scevgep257.1 to double*
  %_p_scalar_259.1 = load double, double* %scevgep257258.1, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %188 = add nuw nsw i64 %polly.indvar242.1, 50
  %189 = mul nuw nsw i64 %188, 480
  %190 = add i64 %189, %184
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %190
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %polly.indvar242.1, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_259.1, %_p_scalar_255.1
  %191 = shl i64 %188, 3
  %scevgep261.1 = getelementptr i8, i8* %scevgep260.1, i64 %191
  %scevgep261262.1 = bitcast i8* %scevgep261.1 to double*
  %_p_scalar_263.1 = load double, double* %scevgep261262.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_263.1
  store double %p_add42.i118.1, double* %scevgep261262.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond830.1.not = icmp eq i64 %polly.indvar242.1, %smin829.1
  br i1 %exitcond830.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %indvars.iv.next828.1 = add nuw nsw i64 %indvars.iv827.1, 1
  %exitcond831.1.not = icmp eq i64 %indvars.iv.next828.1, 30
  br i1 %exitcond831.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %exitcond833.1.not = icmp eq i64 %polly.indvar_next231.1, %97
  br i1 %exitcond833.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %exitcond834.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond834.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header380.1:                           ; preds = %polly.loop_exit404, %polly.loop_exit388.1
  %polly.indvar383.1 = phi i64 [ %polly.indvar_next384.1, %polly.loop_exit388.1 ], [ 0, %polly.loop_exit404 ]
  %192 = add nuw nsw i64 %polly.indvar383.1, %117
  %polly.access.mul.Packed_MemRef_call2269.1 = mul nuw nsw i64 %polly.indvar383.1, 80
  br label %polly.loop_header386.1

polly.loop_header386.1:                           ; preds = %polly.loop_header386.1, %polly.loop_header380.1
  %polly.indvar389.1 = phi i64 [ 0, %polly.loop_header380.1 ], [ %polly.indvar_next390.1, %polly.loop_header386.1 ]
  %193 = mul i64 %polly.indvar389.1, 60
  %polly.access.mul.call2393.1 = add i64 %193, 3000
  %polly.access.add.call2394.1 = add nuw nsw i64 %192, %polly.access.mul.call2393.1
  %polly.access.call2395.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2394.1
  %polly.access.call2395.load.1 = load double, double* %polly.access.call2395.1, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269.1 = add nuw nsw i64 %polly.indvar389.1, %polly.access.mul.Packed_MemRef_call2269.1
  %polly.access.Packed_MemRef_call2269.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269.1
  store double %polly.access.call2395.load.1, double* %polly.access.Packed_MemRef_call2269.1, align 8
  %polly.indvar_next390.1 = add nuw nsw i64 %polly.indvar389.1, 1
  %exitcond837.1.not = icmp eq i64 %polly.indvar_next390.1, 30
  br i1 %exitcond837.1.not, label %polly.loop_exit388.1, label %polly.loop_header386.1

polly.loop_exit388.1:                             ; preds = %polly.loop_header386.1
  %polly.indvar_next384.1 = add nuw nsw i64 %polly.indvar383.1, 1
  %exitcond841.1.not = icmp eq i64 %polly.indvar_next384.1, %116
  br i1 %exitcond841.1.not, label %polly.loop_header396.1, label %polly.loop_header380.1

polly.loop_header396.1:                           ; preds = %polly.loop_exit388.1, %polly.loop_exit404.1
  %polly.indvar399.1 = phi i64 [ %polly.indvar_next400.1, %polly.loop_exit404.1 ], [ 0, %polly.loop_exit388.1 ]
  %194 = add nuw nsw i64 %polly.indvar399.1, %117
  %195 = shl i64 %194, 3
  %polly.access.mul.Packed_MemRef_call2269417.1 = mul nuw nsw i64 %polly.indvar399.1, 80
  %scevgep425.1 = getelementptr i8, i8* %call1, i64 %195
  br label %polly.loop_header402.1

polly.loop_header402.1:                           ; preds = %polly.loop_exit410.1, %polly.loop_header396.1
  %indvars.iv842.1 = phi i64 [ %indvars.iv.next843.1, %polly.loop_exit410.1 ], [ 0, %polly.loop_header396.1 ]
  %polly.indvar405.1 = phi i64 [ %polly.indvar_next406.1, %polly.loop_exit410.1 ], [ 50, %polly.loop_header396.1 ]
  %smin844.1 = call i64 @llvm.smin.i64(i64 %indvars.iv842.1, i64 49)
  %196 = add nsw i64 %polly.indvar405.1, -50
  %197 = mul nuw nsw i64 %polly.indvar405.1, 480
  %198 = mul nuw nsw i64 %polly.indvar405.1, 640
  %scevgep429.1 = getelementptr i8, i8* %call, i64 %198
  %polly.access.add.Packed_MemRef_call2269418.1 = add nuw nsw i64 %196, %polly.access.mul.Packed_MemRef_call2269417.1
  %polly.access.Packed_MemRef_call2269419.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.1
  %_p_scalar_420.1 = load double, double* %polly.access.Packed_MemRef_call2269419.1, align 8
  %scevgep426.1 = getelementptr i8, i8* %scevgep425.1, i64 %197
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.1

polly.loop_header408.1:                           ; preds = %polly.loop_header408.1, %polly.loop_header402.1
  %polly.indvar411.1 = phi i64 [ 0, %polly.loop_header402.1 ], [ %polly.indvar_next412.1, %polly.loop_header408.1 ]
  %199 = add nuw nsw i64 %polly.indvar411.1, 50
  %200 = mul nuw nsw i64 %199, 480
  %201 = add i64 %200, %195
  %scevgep414.1 = getelementptr i8, i8* %call1, i64 %201
  %scevgep414415.1 = bitcast i8* %scevgep414.1 to double*
  %_p_scalar_416.1 = load double, double* %scevgep414415.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_420.1, %_p_scalar_416.1
  %polly.access.add.Packed_MemRef_call2269422.1 = add nuw nsw i64 %polly.indvar411.1, %polly.access.mul.Packed_MemRef_call2269417.1
  %polly.access.Packed_MemRef_call2269423.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.1
  %_p_scalar_424.1 = load double, double* %polly.access.Packed_MemRef_call2269423.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_428.1, %_p_scalar_424.1
  %202 = shl i64 %199, 3
  %scevgep430.1 = getelementptr i8, i8* %scevgep429.1, i64 %202
  %scevgep430431.1 = bitcast i8* %scevgep430.1 to double*
  %_p_scalar_432.1 = load double, double* %scevgep430431.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_432.1
  store double %p_add42.i79.1, double* %scevgep430431.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.1 = add nuw nsw i64 %polly.indvar411.1, 1
  %exitcond845.1.not = icmp eq i64 %polly.indvar411.1, %smin844.1
  br i1 %exitcond845.1.not, label %polly.loop_exit410.1, label %polly.loop_header408.1

polly.loop_exit410.1:                             ; preds = %polly.loop_header408.1
  %polly.indvar_next406.1 = add nuw nsw i64 %polly.indvar405.1, 1
  %indvars.iv.next843.1 = add nuw nsw i64 %indvars.iv842.1, 1
  %exitcond846.1.not = icmp eq i64 %indvars.iv.next843.1, 30
  br i1 %exitcond846.1.not, label %polly.loop_exit404.1, label %polly.loop_header402.1

polly.loop_exit404.1:                             ; preds = %polly.loop_exit410.1
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond848.1.not = icmp eq i64 %polly.indvar_next400.1, %116
  br i1 %exitcond848.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_exit404.1
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, -8
  %exitcond849.not = icmp eq i64 %polly.indvar_next372, 8
  br i1 %exitcond849.not, label %polly.exiting267, label %polly.loop_header368

polly.loop_header549.1:                           ; preds = %polly.loop_exit573, %polly.loop_exit557.1
  %polly.indvar552.1 = phi i64 [ %polly.indvar_next553.1, %polly.loop_exit557.1 ], [ 0, %polly.loop_exit573 ]
  %203 = add nuw nsw i64 %polly.indvar552.1, %136
  %polly.access.mul.Packed_MemRef_call2438.1 = mul nuw nsw i64 %polly.indvar552.1, 80
  br label %polly.loop_header555.1

polly.loop_header555.1:                           ; preds = %polly.loop_header555.1, %polly.loop_header549.1
  %polly.indvar558.1 = phi i64 [ 0, %polly.loop_header549.1 ], [ %polly.indvar_next559.1, %polly.loop_header555.1 ]
  %204 = mul i64 %polly.indvar558.1, 60
  %polly.access.mul.call2562.1 = add i64 %204, 3000
  %polly.access.add.call2563.1 = add nuw nsw i64 %203, %polly.access.mul.call2562.1
  %polly.access.call2564.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2563.1
  %polly.access.call2564.load.1 = load double, double* %polly.access.call2564.1, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438.1 = add nuw nsw i64 %polly.indvar558.1, %polly.access.mul.Packed_MemRef_call2438.1
  %polly.access.Packed_MemRef_call2438.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438.1
  store double %polly.access.call2564.load.1, double* %polly.access.Packed_MemRef_call2438.1, align 8
  %polly.indvar_next559.1 = add nuw nsw i64 %polly.indvar558.1, 1
  %exitcond852.1.not = icmp eq i64 %polly.indvar_next559.1, 30
  br i1 %exitcond852.1.not, label %polly.loop_exit557.1, label %polly.loop_header555.1

polly.loop_exit557.1:                             ; preds = %polly.loop_header555.1
  %polly.indvar_next553.1 = add nuw nsw i64 %polly.indvar552.1, 1
  %exitcond856.1.not = icmp eq i64 %polly.indvar_next553.1, %135
  br i1 %exitcond856.1.not, label %polly.loop_header565.1, label %polly.loop_header549.1

polly.loop_header565.1:                           ; preds = %polly.loop_exit557.1, %polly.loop_exit573.1
  %polly.indvar568.1 = phi i64 [ %polly.indvar_next569.1, %polly.loop_exit573.1 ], [ 0, %polly.loop_exit557.1 ]
  %205 = add nuw nsw i64 %polly.indvar568.1, %136
  %206 = shl i64 %205, 3
  %polly.access.mul.Packed_MemRef_call2438586.1 = mul nuw nsw i64 %polly.indvar568.1, 80
  %scevgep594.1 = getelementptr i8, i8* %call1, i64 %206
  br label %polly.loop_header571.1

polly.loop_header571.1:                           ; preds = %polly.loop_exit579.1, %polly.loop_header565.1
  %indvars.iv857.1 = phi i64 [ %indvars.iv.next858.1, %polly.loop_exit579.1 ], [ 0, %polly.loop_header565.1 ]
  %polly.indvar574.1 = phi i64 [ %polly.indvar_next575.1, %polly.loop_exit579.1 ], [ 50, %polly.loop_header565.1 ]
  %smin859.1 = call i64 @llvm.smin.i64(i64 %indvars.iv857.1, i64 49)
  %207 = add nsw i64 %polly.indvar574.1, -50
  %208 = mul nuw nsw i64 %polly.indvar574.1, 480
  %209 = mul nuw nsw i64 %polly.indvar574.1, 640
  %scevgep598.1 = getelementptr i8, i8* %call, i64 %209
  %polly.access.add.Packed_MemRef_call2438587.1 = add nuw nsw i64 %207, %polly.access.mul.Packed_MemRef_call2438586.1
  %polly.access.Packed_MemRef_call2438588.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2438588.1, align 8
  %scevgep595.1 = getelementptr i8, i8* %scevgep594.1, i64 %208
  %scevgep595596.1 = bitcast i8* %scevgep595.1 to double*
  %_p_scalar_597.1 = load double, double* %scevgep595596.1, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.1

polly.loop_header577.1:                           ; preds = %polly.loop_header577.1, %polly.loop_header571.1
  %polly.indvar580.1 = phi i64 [ 0, %polly.loop_header571.1 ], [ %polly.indvar_next581.1, %polly.loop_header577.1 ]
  %210 = add nuw nsw i64 %polly.indvar580.1, 50
  %211 = mul nuw nsw i64 %210, 480
  %212 = add i64 %211, %206
  %scevgep583.1 = getelementptr i8, i8* %call1, i64 %212
  %scevgep583584.1 = bitcast i8* %scevgep583.1 to double*
  %_p_scalar_585.1 = load double, double* %scevgep583584.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_589.1, %_p_scalar_585.1
  %polly.access.add.Packed_MemRef_call2438591.1 = add nuw nsw i64 %polly.indvar580.1, %polly.access.mul.Packed_MemRef_call2438586.1
  %polly.access.Packed_MemRef_call2438592.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.1
  %_p_scalar_593.1 = load double, double* %polly.access.Packed_MemRef_call2438592.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_597.1, %_p_scalar_593.1
  %213 = shl i64 %210, 3
  %scevgep599.1 = getelementptr i8, i8* %scevgep598.1, i64 %213
  %scevgep599600.1 = bitcast i8* %scevgep599.1 to double*
  %_p_scalar_601.1 = load double, double* %scevgep599600.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_601.1
  store double %p_add42.i.1, double* %scevgep599600.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.1 = add nuw nsw i64 %polly.indvar580.1, 1
  %exitcond860.1.not = icmp eq i64 %polly.indvar580.1, %smin859.1
  br i1 %exitcond860.1.not, label %polly.loop_exit579.1, label %polly.loop_header577.1

polly.loop_exit579.1:                             ; preds = %polly.loop_header577.1
  %polly.indvar_next575.1 = add nuw nsw i64 %polly.indvar574.1, 1
  %indvars.iv.next858.1 = add nuw nsw i64 %indvars.iv857.1, 1
  %exitcond861.1.not = icmp eq i64 %indvars.iv.next858.1, 30
  br i1 %exitcond861.1.not, label %polly.loop_exit573.1, label %polly.loop_header571.1

polly.loop_exit573.1:                             ; preds = %polly.loop_exit579.1
  %polly.indvar_next569.1 = add nuw nsw i64 %polly.indvar568.1, 1
  %exitcond863.1.not = icmp eq i64 %polly.indvar_next569.1, %135
  br i1 %exitcond863.1.not, label %polly.loop_exit567.1, label %polly.loop_header565.1

polly.loop_exit567.1:                             ; preds = %polly.loop_exit573.1
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -8
  %exitcond864.not = icmp eq i64 %polly.indvar_next541, 8
  br i1 %exitcond864.not, label %polly.exiting436, label %polly.loop_header537

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %214 = mul nuw nsw i64 %polly.indvar796.1, 480
  %215 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %polly.loop_header793.1
  %index1174 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1175, %vector.body1172 ]
  %vec.ind1178 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1179, %vector.body1172 ]
  %216 = add nuw nsw <4 x i64> %vec.ind1178, <i64 32, i64 32, i64 32, i64 32>
  %217 = trunc <4 x i64> %216 to <4 x i32>
  %218 = mul <4 x i32> %broadcast.splat1181, %217
  %219 = add <4 x i32> %218, <i32 1, i32 1, i32 1, i32 1>
  %220 = urem <4 x i32> %219, <i32 80, i32 80, i32 80, i32 80>
  %221 = sitofp <4 x i32> %220 to <4 x double>
  %222 = fmul fast <4 x double> %221, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %223 = extractelement <4 x i64> %216, i32 0
  %224 = shl i64 %223, 3
  %225 = add i64 %224, %214
  %226 = getelementptr i8, i8* %call1, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %222, <4 x double>* %227, align 8, !alias.scope !102, !noalias !107
  %index.next1175 = add i64 %index1174, 4
  %vec.ind.next1179 = add <4 x i64> %vec.ind1178, <i64 4, i64 4, i64 4, i64 4>
  %228 = icmp eq i64 %index.next1175, 28
  br i1 %228, label %polly.loop_exit801.1, label %vector.body1172, !llvm.loop !109

polly.loop_exit801.1:                             ; preds = %vector.body1172
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond871.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond871.1.not, label %polly.loop_header793.1891, label %polly.loop_header793.1

polly.loop_header793.1891:                        ; preds = %polly.loop_exit801.1, %polly.loop_exit801.1902
  %polly.indvar796.1890 = phi i64 [ %polly.indvar_next797.1900, %polly.loop_exit801.1902 ], [ 0, %polly.loop_exit801.1 ]
  %229 = add nuw nsw i64 %polly.indvar796.1890, 32
  %230 = mul nuw nsw i64 %229, 480
  %231 = trunc i64 %229 to i32
  %broadcast.splatinsert1194 = insertelement <4 x i32> poison, i32 %231, i32 0
  %broadcast.splat1195 = shufflevector <4 x i32> %broadcast.splatinsert1194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %polly.loop_header793.1891
  %index1186 = phi i64 [ 0, %polly.loop_header793.1891 ], [ %index.next1187, %vector.body1184 ]
  %vec.ind1192 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.1891 ], [ %vec.ind.next1193, %vector.body1184 ]
  %232 = mul <4 x i32> %vec.ind1192, %broadcast.splat1195
  %233 = add <4 x i32> %232, <i32 1, i32 1, i32 1, i32 1>
  %234 = urem <4 x i32> %233, <i32 80, i32 80, i32 80, i32 80>
  %235 = sitofp <4 x i32> %234 to <4 x double>
  %236 = fmul fast <4 x double> %235, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %237 = shl i64 %index1186, 3
  %238 = add i64 %237, %230
  %239 = getelementptr i8, i8* %call1, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %236, <4 x double>* %240, align 8, !alias.scope !102, !noalias !107
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1193 = add <4 x i32> %vec.ind1192, <i32 4, i32 4, i32 4, i32 4>
  %241 = icmp eq i64 %index.next1187, 32
  br i1 %241, label %polly.loop_exit801.1902, label %vector.body1184, !llvm.loop !110

polly.loop_exit801.1902:                          ; preds = %vector.body1184
  %polly.indvar_next797.1900 = add nuw nsw i64 %polly.indvar796.1890, 1
  %exitcond871.1901.not = icmp eq i64 %polly.indvar_next797.1900, 32
  br i1 %exitcond871.1901.not, label %polly.loop_header793.1.1, label %polly.loop_header793.1891

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.1902, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.1902 ]
  %242 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %243 = mul nuw nsw i64 %242, 480
  %244 = trunc i64 %242 to i32
  %broadcast.splatinsert1206 = insertelement <4 x i32> poison, i32 %244, i32 0
  %broadcast.splat1207 = shufflevector <4 x i32> %broadcast.splatinsert1206, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %polly.loop_header793.1.1
  %index1200 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1201, %vector.body1198 ]
  %vec.ind1204 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1205, %vector.body1198 ]
  %245 = add nuw nsw <4 x i64> %vec.ind1204, <i64 32, i64 32, i64 32, i64 32>
  %246 = trunc <4 x i64> %245 to <4 x i32>
  %247 = mul <4 x i32> %broadcast.splat1207, %246
  %248 = add <4 x i32> %247, <i32 1, i32 1, i32 1, i32 1>
  %249 = urem <4 x i32> %248, <i32 80, i32 80, i32 80, i32 80>
  %250 = sitofp <4 x i32> %249 to <4 x double>
  %251 = fmul fast <4 x double> %250, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %252 = extractelement <4 x i64> %245, i32 0
  %253 = shl i64 %252, 3
  %254 = add i64 %253, %243
  %255 = getelementptr i8, i8* %call1, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %251, <4 x double>* %256, align 8, !alias.scope !102, !noalias !107
  %index.next1201 = add i64 %index1200, 4
  %vec.ind.next1205 = add <4 x i64> %vec.ind1204, <i64 4, i64 4, i64 4, i64 4>
  %257 = icmp eq i64 %index.next1201, 28
  br i1 %257, label %polly.loop_exit801.1.1, label %vector.body1198, !llvm.loop !111

polly.loop_exit801.1.1:                           ; preds = %vector.body1198
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond871.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond871.1.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1.1 ]
  %258 = add nuw nsw i64 %polly.indvar796.2, 64
  %259 = mul nuw nsw i64 %258, 480
  %260 = trunc i64 %258 to i32
  %broadcast.splatinsert1220 = insertelement <4 x i32> poison, i32 %260, i32 0
  %broadcast.splat1221 = shufflevector <4 x i32> %broadcast.splatinsert1220, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %polly.loop_header793.2
  %index1212 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1213, %vector.body1210 ]
  %vec.ind1218 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.2 ], [ %vec.ind.next1219, %vector.body1210 ]
  %261 = mul <4 x i32> %vec.ind1218, %broadcast.splat1221
  %262 = add <4 x i32> %261, <i32 1, i32 1, i32 1, i32 1>
  %263 = urem <4 x i32> %262, <i32 80, i32 80, i32 80, i32 80>
  %264 = sitofp <4 x i32> %263 to <4 x double>
  %265 = fmul fast <4 x double> %264, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %266 = shl i64 %index1212, 3
  %267 = add i64 %266, %259
  %268 = getelementptr i8, i8* %call1, i64 %267
  %269 = bitcast i8* %268 to <4 x double>*
  store <4 x double> %265, <4 x double>* %269, align 8, !alias.scope !102, !noalias !107
  %index.next1213 = add i64 %index1212, 4
  %vec.ind.next1219 = add <4 x i32> %vec.ind1218, <i32 4, i32 4, i32 4, i32 4>
  %270 = icmp eq i64 %index.next1213, 32
  br i1 %270, label %polly.loop_exit801.2, label %vector.body1210, !llvm.loop !112

polly.loop_exit801.2:                             ; preds = %vector.body1210
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond871.2.not = icmp eq i64 %polly.indvar_next797.2, 16
  br i1 %exitcond871.2.not, label %polly.loop_header793.1.2, label %polly.loop_header793.2

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.2, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.2 ]
  %271 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %272 = mul nuw nsw i64 %271, 480
  %273 = trunc i64 %271 to i32
  %broadcast.splatinsert1232 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat1233 = shufflevector <4 x i32> %broadcast.splatinsert1232, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %polly.loop_header793.1.2
  %index1226 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1227, %vector.body1224 ]
  %vec.ind1230 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1231, %vector.body1224 ]
  %274 = add nuw nsw <4 x i64> %vec.ind1230, <i64 32, i64 32, i64 32, i64 32>
  %275 = trunc <4 x i64> %274 to <4 x i32>
  %276 = mul <4 x i32> %broadcast.splat1233, %275
  %277 = add <4 x i32> %276, <i32 1, i32 1, i32 1, i32 1>
  %278 = urem <4 x i32> %277, <i32 80, i32 80, i32 80, i32 80>
  %279 = sitofp <4 x i32> %278 to <4 x double>
  %280 = fmul fast <4 x double> %279, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %281 = extractelement <4 x i64> %274, i32 0
  %282 = shl i64 %281, 3
  %283 = add i64 %282, %272
  %284 = getelementptr i8, i8* %call1, i64 %283
  %285 = bitcast i8* %284 to <4 x double>*
  store <4 x double> %280, <4 x double>* %285, align 8, !alias.scope !102, !noalias !107
  %index.next1227 = add i64 %index1226, 4
  %vec.ind.next1231 = add <4 x i64> %vec.ind1230, <i64 4, i64 4, i64 4, i64 4>
  %286 = icmp eq i64 %index.next1227, 28
  br i1 %286, label %polly.loop_exit801.1.2, label %vector.body1224, !llvm.loop !113

polly.loop_exit801.1.2:                           ; preds = %vector.body1224
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond871.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond871.1.2.not, label %init_array.exit, label %polly.loop_header793.1.2

polly.loop_header767.1:                           ; preds = %polly.loop_exit775, %polly.loop_exit775.1
  %polly.indvar770.1 = phi i64 [ %polly.indvar_next771.1, %polly.loop_exit775.1 ], [ 0, %polly.loop_exit775 ]
  %287 = mul nuw nsw i64 %polly.indvar770.1, 480
  %288 = trunc i64 %polly.indvar770.1 to i32
  %broadcast.splatinsert1102 = insertelement <4 x i32> poison, i32 %288, i32 0
  %broadcast.splat1103 = shufflevector <4 x i32> %broadcast.splatinsert1102, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %polly.loop_header767.1
  %index1096 = phi i64 [ 0, %polly.loop_header767.1 ], [ %index.next1097, %vector.body1094 ]
  %vec.ind1100 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1 ], [ %vec.ind.next1101, %vector.body1094 ]
  %289 = add nuw nsw <4 x i64> %vec.ind1100, <i64 32, i64 32, i64 32, i64 32>
  %290 = trunc <4 x i64> %289 to <4 x i32>
  %291 = mul <4 x i32> %broadcast.splat1103, %290
  %292 = add <4 x i32> %291, <i32 2, i32 2, i32 2, i32 2>
  %293 = urem <4 x i32> %292, <i32 60, i32 60, i32 60, i32 60>
  %294 = sitofp <4 x i32> %293 to <4 x double>
  %295 = fmul fast <4 x double> %294, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %296 = extractelement <4 x i64> %289, i32 0
  %297 = shl i64 %296, 3
  %298 = add i64 %297, %287
  %299 = getelementptr i8, i8* %call2, i64 %298
  %300 = bitcast i8* %299 to <4 x double>*
  store <4 x double> %295, <4 x double>* %300, align 8, !alias.scope !103, !noalias !105
  %index.next1097 = add i64 %index1096, 4
  %vec.ind.next1101 = add <4 x i64> %vec.ind1100, <i64 4, i64 4, i64 4, i64 4>
  %301 = icmp eq i64 %index.next1097, 28
  br i1 %301, label %polly.loop_exit775.1, label %vector.body1094, !llvm.loop !114

polly.loop_exit775.1:                             ; preds = %vector.body1094
  %polly.indvar_next771.1 = add nuw nsw i64 %polly.indvar770.1, 1
  %exitcond877.1.not = icmp eq i64 %polly.indvar_next771.1, 32
  br i1 %exitcond877.1.not, label %polly.loop_header767.1905, label %polly.loop_header767.1

polly.loop_header767.1905:                        ; preds = %polly.loop_exit775.1, %polly.loop_exit775.1916
  %polly.indvar770.1904 = phi i64 [ %polly.indvar_next771.1914, %polly.loop_exit775.1916 ], [ 0, %polly.loop_exit775.1 ]
  %302 = add nuw nsw i64 %polly.indvar770.1904, 32
  %303 = mul nuw nsw i64 %302, 480
  %304 = trunc i64 %302 to i32
  %broadcast.splatinsert1116 = insertelement <4 x i32> poison, i32 %304, i32 0
  %broadcast.splat1117 = shufflevector <4 x i32> %broadcast.splatinsert1116, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %polly.loop_header767.1905
  %index1108 = phi i64 [ 0, %polly.loop_header767.1905 ], [ %index.next1109, %vector.body1106 ]
  %vec.ind1114 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.1905 ], [ %vec.ind.next1115, %vector.body1106 ]
  %305 = mul <4 x i32> %vec.ind1114, %broadcast.splat1117
  %306 = add <4 x i32> %305, <i32 2, i32 2, i32 2, i32 2>
  %307 = urem <4 x i32> %306, <i32 60, i32 60, i32 60, i32 60>
  %308 = sitofp <4 x i32> %307 to <4 x double>
  %309 = fmul fast <4 x double> %308, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %310 = shl i64 %index1108, 3
  %311 = add i64 %310, %303
  %312 = getelementptr i8, i8* %call2, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %309, <4 x double>* %313, align 8, !alias.scope !103, !noalias !105
  %index.next1109 = add i64 %index1108, 4
  %vec.ind.next1115 = add <4 x i32> %vec.ind1114, <i32 4, i32 4, i32 4, i32 4>
  %314 = icmp eq i64 %index.next1109, 32
  br i1 %314, label %polly.loop_exit775.1916, label %vector.body1106, !llvm.loop !115

polly.loop_exit775.1916:                          ; preds = %vector.body1106
  %polly.indvar_next771.1914 = add nuw nsw i64 %polly.indvar770.1904, 1
  %exitcond877.1915.not = icmp eq i64 %polly.indvar_next771.1914, 32
  br i1 %exitcond877.1915.not, label %polly.loop_header767.1.1, label %polly.loop_header767.1905

polly.loop_header767.1.1:                         ; preds = %polly.loop_exit775.1916, %polly.loop_exit775.1.1
  %polly.indvar770.1.1 = phi i64 [ %polly.indvar_next771.1.1, %polly.loop_exit775.1.1 ], [ 0, %polly.loop_exit775.1916 ]
  %315 = add nuw nsw i64 %polly.indvar770.1.1, 32
  %316 = mul nuw nsw i64 %315, 480
  %317 = trunc i64 %315 to i32
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %polly.loop_header767.1.1
  %index1122 = phi i64 [ 0, %polly.loop_header767.1.1 ], [ %index.next1123, %vector.body1120 ]
  %vec.ind1126 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.1 ], [ %vec.ind.next1127, %vector.body1120 ]
  %318 = add nuw nsw <4 x i64> %vec.ind1126, <i64 32, i64 32, i64 32, i64 32>
  %319 = trunc <4 x i64> %318 to <4 x i32>
  %320 = mul <4 x i32> %broadcast.splat1129, %319
  %321 = add <4 x i32> %320, <i32 2, i32 2, i32 2, i32 2>
  %322 = urem <4 x i32> %321, <i32 60, i32 60, i32 60, i32 60>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %325 = extractelement <4 x i64> %318, i32 0
  %326 = shl i64 %325, 3
  %327 = add i64 %326, %316
  %328 = getelementptr i8, i8* %call2, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %324, <4 x double>* %329, align 8, !alias.scope !103, !noalias !105
  %index.next1123 = add i64 %index1122, 4
  %vec.ind.next1127 = add <4 x i64> %vec.ind1126, <i64 4, i64 4, i64 4, i64 4>
  %330 = icmp eq i64 %index.next1123, 28
  br i1 %330, label %polly.loop_exit775.1.1, label %vector.body1120, !llvm.loop !116

polly.loop_exit775.1.1:                           ; preds = %vector.body1120
  %polly.indvar_next771.1.1 = add nuw nsw i64 %polly.indvar770.1.1, 1
  %exitcond877.1.1.not = icmp eq i64 %polly.indvar_next771.1.1, 32
  br i1 %exitcond877.1.1.not, label %polly.loop_header767.2, label %polly.loop_header767.1.1

polly.loop_header767.2:                           ; preds = %polly.loop_exit775.1.1, %polly.loop_exit775.2
  %polly.indvar770.2 = phi i64 [ %polly.indvar_next771.2, %polly.loop_exit775.2 ], [ 0, %polly.loop_exit775.1.1 ]
  %331 = add nuw nsw i64 %polly.indvar770.2, 64
  %332 = mul nuw nsw i64 %331, 480
  %333 = trunc i64 %331 to i32
  %broadcast.splatinsert1142 = insertelement <4 x i32> poison, i32 %333, i32 0
  %broadcast.splat1143 = shufflevector <4 x i32> %broadcast.splatinsert1142, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %polly.loop_header767.2
  %index1134 = phi i64 [ 0, %polly.loop_header767.2 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1140 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.2 ], [ %vec.ind.next1141, %vector.body1132 ]
  %334 = mul <4 x i32> %vec.ind1140, %broadcast.splat1143
  %335 = add <4 x i32> %334, <i32 2, i32 2, i32 2, i32 2>
  %336 = urem <4 x i32> %335, <i32 60, i32 60, i32 60, i32 60>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %339 = shl i64 %index1134, 3
  %340 = add i64 %339, %332
  %341 = getelementptr i8, i8* %call2, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %338, <4 x double>* %342, align 8, !alias.scope !103, !noalias !105
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1141 = add <4 x i32> %vec.ind1140, <i32 4, i32 4, i32 4, i32 4>
  %343 = icmp eq i64 %index.next1135, 32
  br i1 %343, label %polly.loop_exit775.2, label %vector.body1132, !llvm.loop !117

polly.loop_exit775.2:                             ; preds = %vector.body1132
  %polly.indvar_next771.2 = add nuw nsw i64 %polly.indvar770.2, 1
  %exitcond877.2.not = icmp eq i64 %polly.indvar_next771.2, 16
  br i1 %exitcond877.2.not, label %polly.loop_header767.1.2, label %polly.loop_header767.2

polly.loop_header767.1.2:                         ; preds = %polly.loop_exit775.2, %polly.loop_exit775.1.2
  %polly.indvar770.1.2 = phi i64 [ %polly.indvar_next771.1.2, %polly.loop_exit775.1.2 ], [ 0, %polly.loop_exit775.2 ]
  %344 = add nuw nsw i64 %polly.indvar770.1.2, 64
  %345 = mul nuw nsw i64 %344, 480
  %346 = trunc i64 %344 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %polly.loop_header767.1.2
  %index1148 = phi i64 [ 0, %polly.loop_header767.1.2 ], [ %index.next1149, %vector.body1146 ]
  %vec.ind1152 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.2 ], [ %vec.ind.next1153, %vector.body1146 ]
  %347 = add nuw nsw <4 x i64> %vec.ind1152, <i64 32, i64 32, i64 32, i64 32>
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat1155, %348
  %350 = add <4 x i32> %349, <i32 2, i32 2, i32 2, i32 2>
  %351 = urem <4 x i32> %350, <i32 60, i32 60, i32 60, i32 60>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add i64 %355, %345
  %357 = getelementptr i8, i8* %call2, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !103, !noalias !105
  %index.next1149 = add i64 %index1148, 4
  %vec.ind.next1153 = add <4 x i64> %vec.ind1152, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next1149, 28
  br i1 %359, label %polly.loop_exit775.1.2, label %vector.body1146, !llvm.loop !118

polly.loop_exit775.1.2:                           ; preds = %vector.body1146
  %polly.indvar_next771.1.2 = add nuw nsw i64 %polly.indvar770.1.2, 1
  %exitcond877.1.2.not = icmp eq i64 %polly.indvar_next771.1.2, 16
  br i1 %exitcond877.1.2.not, label %polly.loop_header793, label %polly.loop_header767.1.2

polly.loop_header740.1:                           ; preds = %polly.loop_exit748, %polly.loop_exit748.1
  %polly.indvar743.1 = phi i64 [ %polly.indvar_next744.1, %polly.loop_exit748.1 ], [ 0, %polly.loop_exit748 ]
  %360 = mul nuw nsw i64 %polly.indvar743.1, 640
  %361 = trunc i64 %polly.indvar743.1 to i32
  %broadcast.splatinsert988 = insertelement <4 x i32> poison, i32 %361, i32 0
  %broadcast.splat989 = shufflevector <4 x i32> %broadcast.splatinsert988, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %polly.loop_header740.1
  %index982 = phi i64 [ 0, %polly.loop_header740.1 ], [ %index.next983, %vector.body980 ]
  %vec.ind986 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1 ], [ %vec.ind.next987, %vector.body980 ]
  %362 = add nuw nsw <4 x i64> %vec.ind986, <i64 32, i64 32, i64 32, i64 32>
  %363 = trunc <4 x i64> %362 to <4 x i32>
  %364 = mul <4 x i32> %broadcast.splat989, %363
  %365 = add <4 x i32> %364, <i32 3, i32 3, i32 3, i32 3>
  %366 = urem <4 x i32> %365, <i32 80, i32 80, i32 80, i32 80>
  %367 = sitofp <4 x i32> %366 to <4 x double>
  %368 = fmul fast <4 x double> %367, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %369 = extractelement <4 x i64> %362, i32 0
  %370 = shl i64 %369, 3
  %371 = add nuw nsw i64 %370, %360
  %372 = getelementptr i8, i8* %call, i64 %371
  %373 = bitcast i8* %372 to <4 x double>*
  store <4 x double> %368, <4 x double>* %373, align 8, !alias.scope !99, !noalias !101
  %index.next983 = add i64 %index982, 4
  %vec.ind.next987 = add <4 x i64> %vec.ind986, <i64 4, i64 4, i64 4, i64 4>
  %374 = icmp eq i64 %index.next983, 32
  br i1 %374, label %polly.loop_exit748.1, label %vector.body980, !llvm.loop !119

polly.loop_exit748.1:                             ; preds = %vector.body980
  %polly.indvar_next744.1 = add nuw nsw i64 %polly.indvar743.1, 1
  %exitcond886.1.not = icmp eq i64 %polly.indvar_next744.1, 32
  br i1 %exitcond886.1.not, label %polly.loop_header740.2, label %polly.loop_header740.1

polly.loop_header740.2:                           ; preds = %polly.loop_exit748.1, %polly.loop_exit748.2
  %polly.indvar743.2 = phi i64 [ %polly.indvar_next744.2, %polly.loop_exit748.2 ], [ 0, %polly.loop_exit748.1 ]
  %375 = mul nuw nsw i64 %polly.indvar743.2, 640
  %376 = trunc i64 %polly.indvar743.2 to i32
  %broadcast.splatinsert1000 = insertelement <4 x i32> poison, i32 %376, i32 0
  %broadcast.splat1001 = shufflevector <4 x i32> %broadcast.splatinsert1000, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %polly.loop_header740.2
  %index994 = phi i64 [ 0, %polly.loop_header740.2 ], [ %index.next995, %vector.body992 ]
  %vec.ind998 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2 ], [ %vec.ind.next999, %vector.body992 ]
  %377 = add nuw nsw <4 x i64> %vec.ind998, <i64 64, i64 64, i64 64, i64 64>
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat1001, %378
  %380 = add <4 x i32> %379, <i32 3, i32 3, i32 3, i32 3>
  %381 = urem <4 x i32> %380, <i32 80, i32 80, i32 80, i32 80>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add nuw nsw i64 %385, %375
  %387 = getelementptr i8, i8* %call, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !99, !noalias !101
  %index.next995 = add i64 %index994, 4
  %vec.ind.next999 = add <4 x i64> %vec.ind998, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next995, 16
  br i1 %389, label %polly.loop_exit748.2, label %vector.body992, !llvm.loop !120

polly.loop_exit748.2:                             ; preds = %vector.body992
  %polly.indvar_next744.2 = add nuw nsw i64 %polly.indvar743.2, 1
  %exitcond886.2.not = icmp eq i64 %polly.indvar_next744.2, 32
  br i1 %exitcond886.2.not, label %polly.loop_header740.1919, label %polly.loop_header740.2

polly.loop_header740.1919:                        ; preds = %polly.loop_exit748.2, %polly.loop_exit748.1930
  %polly.indvar743.1918 = phi i64 [ %polly.indvar_next744.1928, %polly.loop_exit748.1930 ], [ 0, %polly.loop_exit748.2 ]
  %390 = add nuw nsw i64 %polly.indvar743.1918, 32
  %391 = mul nuw nsw i64 %390, 640
  %392 = trunc i64 %390 to i32
  %broadcast.splatinsert1014 = insertelement <4 x i32> poison, i32 %392, i32 0
  %broadcast.splat1015 = shufflevector <4 x i32> %broadcast.splatinsert1014, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %polly.loop_header740.1919
  %index1006 = phi i64 [ 0, %polly.loop_header740.1919 ], [ %index.next1007, %vector.body1004 ]
  %vec.ind1012 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.1919 ], [ %vec.ind.next1013, %vector.body1004 ]
  %393 = mul <4 x i32> %vec.ind1012, %broadcast.splat1015
  %394 = add <4 x i32> %393, <i32 3, i32 3, i32 3, i32 3>
  %395 = urem <4 x i32> %394, <i32 80, i32 80, i32 80, i32 80>
  %396 = sitofp <4 x i32> %395 to <4 x double>
  %397 = fmul fast <4 x double> %396, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %398 = shl i64 %index1006, 3
  %399 = add nuw nsw i64 %398, %391
  %400 = getelementptr i8, i8* %call, i64 %399
  %401 = bitcast i8* %400 to <4 x double>*
  store <4 x double> %397, <4 x double>* %401, align 8, !alias.scope !99, !noalias !101
  %index.next1007 = add i64 %index1006, 4
  %vec.ind.next1013 = add <4 x i32> %vec.ind1012, <i32 4, i32 4, i32 4, i32 4>
  %402 = icmp eq i64 %index.next1007, 32
  br i1 %402, label %polly.loop_exit748.1930, label %vector.body1004, !llvm.loop !121

polly.loop_exit748.1930:                          ; preds = %vector.body1004
  %polly.indvar_next744.1928 = add nuw nsw i64 %polly.indvar743.1918, 1
  %exitcond886.1929.not = icmp eq i64 %polly.indvar_next744.1928, 32
  br i1 %exitcond886.1929.not, label %polly.loop_header740.1.1, label %polly.loop_header740.1919

polly.loop_header740.1.1:                         ; preds = %polly.loop_exit748.1930, %polly.loop_exit748.1.1
  %polly.indvar743.1.1 = phi i64 [ %polly.indvar_next744.1.1, %polly.loop_exit748.1.1 ], [ 0, %polly.loop_exit748.1930 ]
  %403 = add nuw nsw i64 %polly.indvar743.1.1, 32
  %404 = mul nuw nsw i64 %403, 640
  %405 = trunc i64 %403 to i32
  %broadcast.splatinsert1026 = insertelement <4 x i32> poison, i32 %405, i32 0
  %broadcast.splat1027 = shufflevector <4 x i32> %broadcast.splatinsert1026, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %polly.loop_header740.1.1
  %index1020 = phi i64 [ 0, %polly.loop_header740.1.1 ], [ %index.next1021, %vector.body1018 ]
  %vec.ind1024 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.1 ], [ %vec.ind.next1025, %vector.body1018 ]
  %406 = add nuw nsw <4 x i64> %vec.ind1024, <i64 32, i64 32, i64 32, i64 32>
  %407 = trunc <4 x i64> %406 to <4 x i32>
  %408 = mul <4 x i32> %broadcast.splat1027, %407
  %409 = add <4 x i32> %408, <i32 3, i32 3, i32 3, i32 3>
  %410 = urem <4 x i32> %409, <i32 80, i32 80, i32 80, i32 80>
  %411 = sitofp <4 x i32> %410 to <4 x double>
  %412 = fmul fast <4 x double> %411, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %413 = extractelement <4 x i64> %406, i32 0
  %414 = shl i64 %413, 3
  %415 = add nuw nsw i64 %414, %404
  %416 = getelementptr i8, i8* %call, i64 %415
  %417 = bitcast i8* %416 to <4 x double>*
  store <4 x double> %412, <4 x double>* %417, align 8, !alias.scope !99, !noalias !101
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1025 = add <4 x i64> %vec.ind1024, <i64 4, i64 4, i64 4, i64 4>
  %418 = icmp eq i64 %index.next1021, 32
  br i1 %418, label %polly.loop_exit748.1.1, label %vector.body1018, !llvm.loop !122

polly.loop_exit748.1.1:                           ; preds = %vector.body1018
  %polly.indvar_next744.1.1 = add nuw nsw i64 %polly.indvar743.1.1, 1
  %exitcond886.1.1.not = icmp eq i64 %polly.indvar_next744.1.1, 32
  br i1 %exitcond886.1.1.not, label %polly.loop_header740.2.1, label %polly.loop_header740.1.1

polly.loop_header740.2.1:                         ; preds = %polly.loop_exit748.1.1, %polly.loop_exit748.2.1
  %polly.indvar743.2.1 = phi i64 [ %polly.indvar_next744.2.1, %polly.loop_exit748.2.1 ], [ 0, %polly.loop_exit748.1.1 ]
  %419 = add nuw nsw i64 %polly.indvar743.2.1, 32
  %420 = mul nuw nsw i64 %419, 640
  %421 = trunc i64 %419 to i32
  %broadcast.splatinsert1038 = insertelement <4 x i32> poison, i32 %421, i32 0
  %broadcast.splat1039 = shufflevector <4 x i32> %broadcast.splatinsert1038, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %polly.loop_header740.2.1
  %index1032 = phi i64 [ 0, %polly.loop_header740.2.1 ], [ %index.next1033, %vector.body1030 ]
  %vec.ind1036 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.1 ], [ %vec.ind.next1037, %vector.body1030 ]
  %422 = add nuw nsw <4 x i64> %vec.ind1036, <i64 64, i64 64, i64 64, i64 64>
  %423 = trunc <4 x i64> %422 to <4 x i32>
  %424 = mul <4 x i32> %broadcast.splat1039, %423
  %425 = add <4 x i32> %424, <i32 3, i32 3, i32 3, i32 3>
  %426 = urem <4 x i32> %425, <i32 80, i32 80, i32 80, i32 80>
  %427 = sitofp <4 x i32> %426 to <4 x double>
  %428 = fmul fast <4 x double> %427, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %429 = extractelement <4 x i64> %422, i32 0
  %430 = shl i64 %429, 3
  %431 = add nuw nsw i64 %430, %420
  %432 = getelementptr i8, i8* %call, i64 %431
  %433 = bitcast i8* %432 to <4 x double>*
  store <4 x double> %428, <4 x double>* %433, align 8, !alias.scope !99, !noalias !101
  %index.next1033 = add i64 %index1032, 4
  %vec.ind.next1037 = add <4 x i64> %vec.ind1036, <i64 4, i64 4, i64 4, i64 4>
  %434 = icmp eq i64 %index.next1033, 16
  br i1 %434, label %polly.loop_exit748.2.1, label %vector.body1030, !llvm.loop !123

polly.loop_exit748.2.1:                           ; preds = %vector.body1030
  %polly.indvar_next744.2.1 = add nuw nsw i64 %polly.indvar743.2.1, 1
  %exitcond886.2.1.not = icmp eq i64 %polly.indvar_next744.2.1, 32
  br i1 %exitcond886.2.1.not, label %polly.loop_header740.2933, label %polly.loop_header740.2.1

polly.loop_header740.2933:                        ; preds = %polly.loop_exit748.2.1, %polly.loop_exit748.2944
  %polly.indvar743.2932 = phi i64 [ %polly.indvar_next744.2942, %polly.loop_exit748.2944 ], [ 0, %polly.loop_exit748.2.1 ]
  %435 = add nuw nsw i64 %polly.indvar743.2932, 64
  %436 = mul nuw nsw i64 %435, 640
  %437 = trunc i64 %435 to i32
  %broadcast.splatinsert1052 = insertelement <4 x i32> poison, i32 %437, i32 0
  %broadcast.splat1053 = shufflevector <4 x i32> %broadcast.splatinsert1052, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %polly.loop_header740.2933
  %index1044 = phi i64 [ 0, %polly.loop_header740.2933 ], [ %index.next1045, %vector.body1042 ]
  %vec.ind1050 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.2933 ], [ %vec.ind.next1051, %vector.body1042 ]
  %438 = mul <4 x i32> %vec.ind1050, %broadcast.splat1053
  %439 = add <4 x i32> %438, <i32 3, i32 3, i32 3, i32 3>
  %440 = urem <4 x i32> %439, <i32 80, i32 80, i32 80, i32 80>
  %441 = sitofp <4 x i32> %440 to <4 x double>
  %442 = fmul fast <4 x double> %441, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %443 = shl i64 %index1044, 3
  %444 = add nuw nsw i64 %443, %436
  %445 = getelementptr i8, i8* %call, i64 %444
  %446 = bitcast i8* %445 to <4 x double>*
  store <4 x double> %442, <4 x double>* %446, align 8, !alias.scope !99, !noalias !101
  %index.next1045 = add i64 %index1044, 4
  %vec.ind.next1051 = add <4 x i32> %vec.ind1050, <i32 4, i32 4, i32 4, i32 4>
  %447 = icmp eq i64 %index.next1045, 32
  br i1 %447, label %polly.loop_exit748.2944, label %vector.body1042, !llvm.loop !124

polly.loop_exit748.2944:                          ; preds = %vector.body1042
  %polly.indvar_next744.2942 = add nuw nsw i64 %polly.indvar743.2932, 1
  %exitcond886.2943.not = icmp eq i64 %polly.indvar_next744.2942, 16
  br i1 %exitcond886.2943.not, label %polly.loop_header740.1.2, label %polly.loop_header740.2933

polly.loop_header740.1.2:                         ; preds = %polly.loop_exit748.2944, %polly.loop_exit748.1.2
  %polly.indvar743.1.2 = phi i64 [ %polly.indvar_next744.1.2, %polly.loop_exit748.1.2 ], [ 0, %polly.loop_exit748.2944 ]
  %448 = add nuw nsw i64 %polly.indvar743.1.2, 64
  %449 = mul nuw nsw i64 %448, 640
  %450 = trunc i64 %448 to i32
  %broadcast.splatinsert1064 = insertelement <4 x i32> poison, i32 %450, i32 0
  %broadcast.splat1065 = shufflevector <4 x i32> %broadcast.splatinsert1064, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %polly.loop_header740.1.2
  %index1058 = phi i64 [ 0, %polly.loop_header740.1.2 ], [ %index.next1059, %vector.body1056 ]
  %vec.ind1062 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.2 ], [ %vec.ind.next1063, %vector.body1056 ]
  %451 = add nuw nsw <4 x i64> %vec.ind1062, <i64 32, i64 32, i64 32, i64 32>
  %452 = trunc <4 x i64> %451 to <4 x i32>
  %453 = mul <4 x i32> %broadcast.splat1065, %452
  %454 = add <4 x i32> %453, <i32 3, i32 3, i32 3, i32 3>
  %455 = urem <4 x i32> %454, <i32 80, i32 80, i32 80, i32 80>
  %456 = sitofp <4 x i32> %455 to <4 x double>
  %457 = fmul fast <4 x double> %456, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %458 = extractelement <4 x i64> %451, i32 0
  %459 = shl i64 %458, 3
  %460 = add nuw nsw i64 %459, %449
  %461 = getelementptr i8, i8* %call, i64 %460
  %462 = bitcast i8* %461 to <4 x double>*
  store <4 x double> %457, <4 x double>* %462, align 8, !alias.scope !99, !noalias !101
  %index.next1059 = add i64 %index1058, 4
  %vec.ind.next1063 = add <4 x i64> %vec.ind1062, <i64 4, i64 4, i64 4, i64 4>
  %463 = icmp eq i64 %index.next1059, 32
  br i1 %463, label %polly.loop_exit748.1.2, label %vector.body1056, !llvm.loop !125

polly.loop_exit748.1.2:                           ; preds = %vector.body1056
  %polly.indvar_next744.1.2 = add nuw nsw i64 %polly.indvar743.1.2, 1
  %exitcond886.1.2.not = icmp eq i64 %polly.indvar_next744.1.2, 16
  br i1 %exitcond886.1.2.not, label %polly.loop_header740.2.2, label %polly.loop_header740.1.2

polly.loop_header740.2.2:                         ; preds = %polly.loop_exit748.1.2, %polly.loop_exit748.2.2
  %polly.indvar743.2.2 = phi i64 [ %polly.indvar_next744.2.2, %polly.loop_exit748.2.2 ], [ 0, %polly.loop_exit748.1.2 ]
  %464 = add nuw nsw i64 %polly.indvar743.2.2, 64
  %465 = mul nuw nsw i64 %464, 640
  %466 = trunc i64 %464 to i32
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %466, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1068

vector.body1068:                                  ; preds = %vector.body1068, %polly.loop_header740.2.2
  %index1070 = phi i64 [ 0, %polly.loop_header740.2.2 ], [ %index.next1071, %vector.body1068 ]
  %vec.ind1074 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.2 ], [ %vec.ind.next1075, %vector.body1068 ]
  %467 = add nuw nsw <4 x i64> %vec.ind1074, <i64 64, i64 64, i64 64, i64 64>
  %468 = trunc <4 x i64> %467 to <4 x i32>
  %469 = mul <4 x i32> %broadcast.splat1077, %468
  %470 = add <4 x i32> %469, <i32 3, i32 3, i32 3, i32 3>
  %471 = urem <4 x i32> %470, <i32 80, i32 80, i32 80, i32 80>
  %472 = sitofp <4 x i32> %471 to <4 x double>
  %473 = fmul fast <4 x double> %472, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %474 = extractelement <4 x i64> %467, i32 0
  %475 = shl i64 %474, 3
  %476 = add nuw nsw i64 %475, %465
  %477 = getelementptr i8, i8* %call, i64 %476
  %478 = bitcast i8* %477 to <4 x double>*
  store <4 x double> %473, <4 x double>* %478, align 8, !alias.scope !99, !noalias !101
  %index.next1071 = add i64 %index1070, 4
  %vec.ind.next1075 = add <4 x i64> %vec.ind1074, <i64 4, i64 4, i64 4, i64 4>
  %479 = icmp eq i64 %index.next1071, 16
  br i1 %479, label %polly.loop_exit748.2.2, label %vector.body1068, !llvm.loop !126

polly.loop_exit748.2.2:                           ; preds = %vector.body1068
  %polly.indvar_next744.2.2 = add nuw nsw i64 %polly.indvar743.2.2, 1
  %exitcond886.2.2.not = icmp eq i64 %polly.indvar_next744.2.2, 16
  br i1 %exitcond886.2.2.not, label %polly.loop_header767, label %polly.loop_header740.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 8}
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
!45 = !{!"llvm.loop.tile.size", i32 80}
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
!77 = !{!68, !71, !73}
!78 = !{!68, !72, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !82, !84}
!88 = !{!79, !83, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !92, !94}
!98 = !{!89, !93, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = !{!102, !99}
!106 = distinct !{!106, !13}
!107 = !{!103, !99}
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
!126 = distinct !{!126, !13}
