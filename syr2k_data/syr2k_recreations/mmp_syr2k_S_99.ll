; ModuleID = 'syr2k_recreations//mmp_syr2k_S_99.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_99.c"
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
  %scevgep948 = getelementptr i8, i8* %call2, i64 %12
  %scevgep947 = getelementptr i8, i8* %call2, i64 %11
  %scevgep946 = getelementptr i8, i8* %call1, i64 %12
  %scevgep945 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep945, %scevgep948
  %bound1 = icmp ult i8* %scevgep947, %scevgep946
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
  br i1 %exitcond18.not.i, label %vector.ph952, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph952:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert959 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat960 = shufflevector <4 x i64> %broadcast.splatinsert959, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body951

vector.body951:                                   ; preds = %vector.body951, %vector.ph952
  %index953 = phi i64 [ 0, %vector.ph952 ], [ %index.next954, %vector.body951 ]
  %vec.ind957 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph952 ], [ %vec.ind.next958, %vector.body951 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind957, %broadcast.splat960
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv7.i, i64 %index953
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next954 = add i64 %index953, 4
  %vec.ind.next958 = add <4 x i64> %vec.ind957, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next954, 80
  br i1 %40, label %for.inc41.i, label %vector.body951, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body951
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph952, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1305, label %vector.ph1234

vector.ph1234:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1234
  %index1235 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1236, %vector.body1233 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %index1235
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1236 = add i64 %index1235, 4
  %46 = icmp eq i64 %index.next1236, %n.vec
  br i1 %46, label %middle.block1231, label %vector.body1233, !llvm.loop !18

middle.block1231:                                 ; preds = %vector.body1233
  %cmp.n1238 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1238, label %for.inc6.i, label %for.body3.i46.preheader1305

for.body3.i46.preheader1305:                      ; preds = %for.body3.i46.preheader, %middle.block1231
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1231 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1305, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1305 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1231, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit545.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1254 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1254, label %for.body3.i60.preheader1304, label %vector.ph1255

vector.ph1255:                                    ; preds = %for.body3.i60.preheader
  %n.vec1257 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %vector.ph1255
  %index1258 = phi i64 [ 0, %vector.ph1255 ], [ %index.next1259, %vector.body1253 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %index1258
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1262 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1262, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1259 = add i64 %index1258, 4
  %57 = icmp eq i64 %index.next1259, %n.vec1257
  br i1 %57, label %middle.block1251, label %vector.body1253, !llvm.loop !60

middle.block1251:                                 ; preds = %vector.body1253
  %cmp.n1261 = icmp eq i64 %indvars.iv21.i52, %n.vec1257
  br i1 %cmp.n1261, label %for.inc6.i63, label %for.body3.i60.preheader1304

for.body3.i60.preheader1304:                      ; preds = %for.body3.i60.preheader, %middle.block1251
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1257, %middle.block1251 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1304, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1304 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1251, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit376.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1280 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1280, label %for.body3.i99.preheader1303, label %vector.ph1281

vector.ph1281:                                    ; preds = %for.body3.i99.preheader
  %n.vec1283 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1279

vector.body1279:                                  ; preds = %vector.body1279, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1279 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %index1284
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1288 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1288, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1285 = add i64 %index1284, 4
  %68 = icmp eq i64 %index.next1285, %n.vec1283
  br i1 %68, label %middle.block1277, label %vector.body1279, !llvm.loop !62

middle.block1277:                                 ; preds = %vector.body1279
  %cmp.n1287 = icmp eq i64 %indvars.iv21.i91, %n.vec1283
  br i1 %cmp.n1287, label %for.inc6.i102, label %for.body3.i99.preheader1303

for.body3.i99.preheader1303:                      ; preds = %for.body3.i99.preheader, %middle.block1277
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1283, %middle.block1277 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1303, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1303 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1277, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207.2
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
  %malloccall = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1292 = phi i64 [ %indvar.next1293, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1292, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1294 = icmp ult i64 %88, 4
  br i1 %min.iters.check1294, label %polly.loop_header191.preheader, label %vector.ph1295

vector.ph1295:                                    ; preds = %polly.loop_header
  %n.vec1297 = and i64 %88, -4
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %vector.ph1295
  %index1298 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1299, %vector.body1291 ]
  %90 = shl nuw nsw i64 %index1298, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1302 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1302, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1299 = add i64 %index1298, 4
  %95 = icmp eq i64 %index.next1299, %n.vec1297
  br i1 %95, label %middle.block1289, label %vector.body1291, !llvm.loop !74

middle.block1289:                                 ; preds = %vector.body1291
  %cmp.n1301 = icmp eq i64 %88, %n.vec1297
  br i1 %cmp.n1301, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1289
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1297, %middle.block1289 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1289
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1293 = add i64 %indvar1292, 1
  br i1 %exitcond835.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond834.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 80, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nsw i64 %polly.indvar208, 2
  br label %polly.loop_header211

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %exitcond832.not = icmp eq i64 %polly.indvar_next209, 20
  br i1 %exitcond832.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next215, 20
  br i1 %exitcond826.not, label %polly.loop_header227.preheader, label %polly.loop_header211

polly.loop_header227.preheader:                   ; preds = %polly.loop_exit219
  %98 = mul nsw i64 %polly.indvar208, -4
  br label %polly.loop_header227

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %99 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.call2224 = mul nuw nsw i64 %99, 60
  %polly.access.add.call2225 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header227.preheader ]
  %100 = shl i64 %polly.indvar230, 3
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %polly.indvar230, 80
  %scevgep256 = getelementptr i8, i8* %call1, i64 %100
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next231, 20
  br i1 %exitcond831.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ %97, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv827, i64 3)
  %101 = add nsw i64 %polly.indvar236, %98
  %102 = mul nuw nsw i64 %polly.indvar236, 480
  %103 = mul nuw nsw i64 %polly.indvar236, 640
  %scevgep260 = getelementptr i8, i8* %call, i64 %103
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %101, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %scevgep257 = getelementptr i8, i8* %scevgep256, i64 %102
  %scevgep257258 = bitcast i8* %scevgep257 to double*
  %_p_scalar_259 = load double, double* %scevgep257258, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 1
  %exitcond830.not = icmp eq i64 %indvars.iv.next828, %indvars.iv
  br i1 %exitcond830.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %104 = add nuw nsw i64 %polly.indvar242, %97
  %105 = mul nuw nsw i64 %104, 480
  %106 = add nuw nsw i64 %105, %100
  %scevgep245 = getelementptr i8, i8* %call1, i64 %106
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.indvar242, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %107 = shl i64 %104, 3
  %scevgep261 = getelementptr i8, i8* %scevgep260, i64 %107
  %scevgep261262 = bitcast i8* %scevgep261 to double*
  %_p_scalar_263 = load double, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_263
  store double %p_add42.i118, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond829.not = icmp eq i64 %polly.indvar242, %smin
  br i1 %exitcond829.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header352

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1266 = phi i64 [ %indvar.next1267, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %108 = add i64 %indvar1266, 1
  %109 = mul nuw nsw i64 %polly.indvar355, 640
  %scevgep364 = getelementptr i8, i8* %call, i64 %109
  %min.iters.check1268 = icmp ult i64 %108, 4
  br i1 %min.iters.check1268, label %polly.loop_header358.preheader, label %vector.ph1269

vector.ph1269:                                    ; preds = %polly.loop_header352
  %n.vec1271 = and i64 %108, -4
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %vector.ph1269
  %index1272 = phi i64 [ 0, %vector.ph1269 ], [ %index.next1273, %vector.body1265 ]
  %110 = shl nuw nsw i64 %index1272, 3
  %111 = getelementptr i8, i8* %scevgep364, i64 %110
  %112 = bitcast i8* %111 to <4 x double>*
  %wide.load1276 = load <4 x double>, <4 x double>* %112, align 8, !alias.scope !79, !noalias !81
  %113 = fmul fast <4 x double> %wide.load1276, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %114 = bitcast i8* %111 to <4 x double>*
  store <4 x double> %113, <4 x double>* %114, align 8, !alias.scope !79, !noalias !81
  %index.next1273 = add i64 %index1272, 4
  %115 = icmp eq i64 %index.next1273, %n.vec1271
  br i1 %115, label %middle.block1263, label %vector.body1265, !llvm.loop !85

middle.block1263:                                 ; preds = %vector.body1265
  %cmp.n1275 = icmp eq i64 %108, %n.vec1271
  br i1 %cmp.n1275, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1263
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1271, %middle.block1263 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1263
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next356, 80
  %indvar.next1267 = add i64 %indvar1266, 1
  br i1 %exitcond849.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header374

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %116 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %116
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond848.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !86

polly.loop_header374:                             ; preds = %polly.loop_exit398, %polly.loop_header368.preheader
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %polly.loop_exit398 ], [ 80, %polly.loop_header368.preheader ]
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit398 ], [ 0, %polly.loop_header368.preheader ]
  %117 = shl nsw i64 %polly.indvar377, 2
  br label %polly.loop_header380

polly.loop_exit398:                               ; preds = %polly.loop_exit404
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %indvars.iv.next837 = add nsw i64 %indvars.iv836, -4
  %exitcond846.not = icmp eq i64 %polly.indvar_next378, 20
  br i1 %exitcond846.not, label %polly.loop_header374.1, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_exit388, %polly.loop_header374
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header374 ], [ %polly.indvar_next384, %polly.loop_exit388 ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar383, 80
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_header386
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next384, 20
  br i1 %exitcond839.not, label %polly.loop_header396.preheader, label %polly.loop_header380

polly.loop_header396.preheader:                   ; preds = %polly.loop_exit388
  %118 = mul nsw i64 %polly.indvar377, -4
  br label %polly.loop_header396

polly.loop_header386:                             ; preds = %polly.loop_header386, %polly.loop_header380
  %polly.indvar389 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next390, %polly.loop_header386 ]
  %119 = add nuw nsw i64 %polly.indvar389, %117
  %polly.access.mul.call2393 = mul nuw nsw i64 %119, 60
  %polly.access.add.call2394 = add nuw nsw i64 %polly.indvar383, %polly.access.mul.call2393
  %polly.access.call2395 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2394
  %polly.access.call2395.load = load double, double* %polly.access.call2395, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar389, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2395.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next390, %indvars.iv836
  br i1 %exitcond838.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_exit404
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_header396.preheader ]
  %120 = shl i64 %polly.indvar399, 3
  %polly.access.mul.Packed_MemRef_call2269417 = mul nuw nsw i64 %polly.indvar399, 80
  %scevgep425 = getelementptr i8, i8* %call1, i64 %120
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit410
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next400, 20
  br i1 %exitcond845.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit410, %polly.loop_header396
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit410 ], [ 0, %polly.loop_header396 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ %117, %polly.loop_header396 ]
  %smin842 = call i64 @llvm.smin.i64(i64 %indvars.iv840, i64 3)
  %121 = add nsw i64 %polly.indvar405, %118
  %122 = mul nuw nsw i64 %polly.indvar405, 480
  %123 = mul nuw nsw i64 %polly.indvar405, 640
  %scevgep429 = getelementptr i8, i8* %call, i64 %123
  %polly.access.add.Packed_MemRef_call2269418 = add nuw nsw i64 %121, %polly.access.mul.Packed_MemRef_call2269417
  %polly.access.Packed_MemRef_call2269419 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418
  %_p_scalar_420 = load double, double* %polly.access.Packed_MemRef_call2269419, align 8
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %122
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1
  %exitcond844.not = icmp eq i64 %indvars.iv.next841, %indvars.iv836
  br i1 %exitcond844.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %124 = add nuw nsw i64 %polly.indvar411, %117
  %125 = mul nuw nsw i64 %124, 480
  %126 = add nuw nsw i64 %125, %120
  %scevgep414 = getelementptr i8, i8* %call1, i64 %126
  %scevgep414415 = bitcast i8* %scevgep414 to double*
  %_p_scalar_416 = load double, double* %scevgep414415, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_420, %_p_scalar_416
  %polly.access.add.Packed_MemRef_call2269422 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2269417
  %polly.access.Packed_MemRef_call2269423 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422
  %_p_scalar_424 = load double, double* %polly.access.Packed_MemRef_call2269423, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_428, %_p_scalar_424
  %127 = shl i64 %124, 3
  %scevgep430 = getelementptr i8, i8* %scevgep429, i64 %127
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_432
  store double %p_add42.i79, double* %scevgep430431, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond843.not = icmp eq i64 %polly.indvar411, %smin842
  br i1 %exitcond843.not, label %polly.loop_exit410, label %polly.loop_header408

polly.start435:                                   ; preds = %init_array.exit
  %malloccall437 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header521

polly.loop_header521:                             ; preds = %polly.loop_exit529, %polly.start435
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit529 ], [ 0, %polly.start435 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 1, %polly.start435 ]
  %128 = add i64 %indvar, 1
  %129 = mul nuw nsw i64 %polly.indvar524, 640
  %scevgep533 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check1242 = icmp ult i64 %128, 4
  br i1 %min.iters.check1242, label %polly.loop_header527.preheader, label %vector.ph1243

vector.ph1243:                                    ; preds = %polly.loop_header521
  %n.vec1245 = and i64 %128, -4
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %vector.ph1243
  %index1246 = phi i64 [ 0, %vector.ph1243 ], [ %index.next1247, %vector.body1241 ]
  %130 = shl nuw nsw i64 %index1246, 3
  %131 = getelementptr i8, i8* %scevgep533, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load1250 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !89, !noalias !91
  %133 = fmul fast <4 x double> %wide.load1250, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !89, !noalias !91
  %index.next1247 = add i64 %index1246, 4
  %135 = icmp eq i64 %index.next1247, %n.vec1245
  br i1 %135, label %middle.block1239, label %vector.body1241, !llvm.loop !95

middle.block1239:                                 ; preds = %vector.body1241
  %cmp.n1249 = icmp eq i64 %128, %n.vec1245
  br i1 %cmp.n1249, label %polly.loop_exit529, label %polly.loop_header527.preheader

polly.loop_header527.preheader:                   ; preds = %polly.loop_header521, %middle.block1239
  %polly.indvar530.ph = phi i64 [ 0, %polly.loop_header521 ], [ %n.vec1245, %middle.block1239 ]
  br label %polly.loop_header527

polly.loop_exit529:                               ; preds = %polly.loop_header527, %middle.block1239
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next525, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond863.not, label %polly.loop_header537.preheader, label %polly.loop_header521

polly.loop_header537.preheader:                   ; preds = %polly.loop_exit529
  %Packed_MemRef_call2438 = bitcast i8* %malloccall437 to double*
  br label %polly.loop_header543

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_header527
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_header527 ], [ %polly.indvar530.ph, %polly.loop_header527.preheader ]
  %136 = shl nuw nsw i64 %polly.indvar530, 3
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 %136
  %scevgep534535 = bitcast i8* %scevgep534 to double*
  %_p_scalar_536 = load double, double* %scevgep534535, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_536, 1.200000e+00
  store double %p_mul.i, double* %scevgep534535, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next531, %polly.indvar524
  br i1 %exitcond862.not, label %polly.loop_exit529, label %polly.loop_header527, !llvm.loop !96

polly.loop_header543:                             ; preds = %polly.loop_exit567, %polly.loop_header537.preheader
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit567 ], [ 80, %polly.loop_header537.preheader ]
  %polly.indvar546 = phi i64 [ %polly.indvar_next547, %polly.loop_exit567 ], [ 0, %polly.loop_header537.preheader ]
  %137 = shl nsw i64 %polly.indvar546, 2
  br label %polly.loop_header549

polly.loop_exit567:                               ; preds = %polly.loop_exit573
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -4
  %exitcond860.not = icmp eq i64 %polly.indvar_next547, 20
  br i1 %exitcond860.not, label %polly.loop_header543.1, label %polly.loop_header543

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.loop_header543
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header543 ], [ %polly.indvar_next553, %polly.loop_exit557 ]
  %polly.access.mul.Packed_MemRef_call2438 = mul nuw nsw i64 %polly.indvar552, 80
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_header555
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next553, 20
  br i1 %exitcond853.not, label %polly.loop_header565.preheader, label %polly.loop_header549

polly.loop_header565.preheader:                   ; preds = %polly.loop_exit557
  %138 = mul nsw i64 %polly.indvar546, -4
  br label %polly.loop_header565

polly.loop_header555:                             ; preds = %polly.loop_header555, %polly.loop_header549
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header549 ], [ %polly.indvar_next559, %polly.loop_header555 ]
  %139 = add nuw nsw i64 %polly.indvar558, %137
  %polly.access.mul.call2562 = mul nuw nsw i64 %139, 60
  %polly.access.add.call2563 = add nuw nsw i64 %polly.indvar552, %polly.access.mul.call2562
  %polly.access.call2564 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2563
  %polly.access.call2564.load = load double, double* %polly.access.call2564, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438 = add nuw nsw i64 %polly.indvar558, %polly.access.mul.Packed_MemRef_call2438
  %polly.access.Packed_MemRef_call2438 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438
  store double %polly.access.call2564.load, double* %polly.access.Packed_MemRef_call2438, align 8
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next559, %indvars.iv850
  br i1 %exitcond852.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header565:                             ; preds = %polly.loop_header565.preheader, %polly.loop_exit573
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ 0, %polly.loop_header565.preheader ]
  %140 = shl i64 %polly.indvar568, 3
  %polly.access.mul.Packed_MemRef_call2438586 = mul nuw nsw i64 %polly.indvar568, 80
  %scevgep594 = getelementptr i8, i8* %call1, i64 %140
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit579
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next569, 20
  br i1 %exitcond859.not, label %polly.loop_exit567, label %polly.loop_header565

polly.loop_header571:                             ; preds = %polly.loop_exit579, %polly.loop_header565
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit579 ], [ 0, %polly.loop_header565 ]
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_exit579 ], [ %137, %polly.loop_header565 ]
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 3)
  %141 = add nsw i64 %polly.indvar574, %138
  %142 = mul nuw nsw i64 %polly.indvar574, 480
  %143 = mul nuw nsw i64 %polly.indvar574, 640
  %scevgep598 = getelementptr i8, i8* %call, i64 %143
  %polly.access.add.Packed_MemRef_call2438587 = add nuw nsw i64 %141, %polly.access.mul.Packed_MemRef_call2438586
  %polly.access.Packed_MemRef_call2438588 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2438588, align 8
  %scevgep595 = getelementptr i8, i8* %scevgep594, i64 %142
  %scevgep595596 = bitcast i8* %scevgep595 to double*
  %_p_scalar_597 = load double, double* %scevgep595596, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_header577
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 1
  %exitcond858.not = icmp eq i64 %indvars.iv.next855, %indvars.iv850
  br i1 %exitcond858.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header577:                             ; preds = %polly.loop_header577, %polly.loop_header571
  %polly.indvar580 = phi i64 [ 0, %polly.loop_header571 ], [ %polly.indvar_next581, %polly.loop_header577 ]
  %144 = add nuw nsw i64 %polly.indvar580, %137
  %145 = mul nuw nsw i64 %144, 480
  %146 = add nuw nsw i64 %145, %140
  %scevgep583 = getelementptr i8, i8* %call1, i64 %146
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_589, %_p_scalar_585
  %polly.access.add.Packed_MemRef_call2438591 = add nuw nsw i64 %polly.indvar580, %polly.access.mul.Packed_MemRef_call2438586
  %polly.access.Packed_MemRef_call2438592 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591
  %_p_scalar_593 = load double, double* %polly.access.Packed_MemRef_call2438592, align 8
  %p_mul37.i = fmul fast double %_p_scalar_597, %_p_scalar_593
  %147 = shl i64 %144, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %147
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_601
  store double %p_add42.i, double* %scevgep599600, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %exitcond857.not = icmp eq i64 %polly.indvar580, %smin856
  br i1 %exitcond857.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %148 = mul nuw nsw i64 %polly.indvar743, 640
  %149 = trunc i64 %polly.indvar743 to i32
  %broadcast.splatinsert973 = insertelement <4 x i32> poison, i32 %149, i32 0
  %broadcast.splat974 = shufflevector <4 x i32> %broadcast.splatinsert973, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body963

vector.body963:                                   ; preds = %vector.body963, %polly.loop_header740
  %index965 = phi i64 [ 0, %polly.loop_header740 ], [ %index.next966, %vector.body963 ]
  %vec.ind971 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740 ], [ %vec.ind.next972, %vector.body963 ]
  %150 = mul <4 x i32> %vec.ind971, %broadcast.splat974
  %151 = add <4 x i32> %150, <i32 3, i32 3, i32 3, i32 3>
  %152 = urem <4 x i32> %151, <i32 80, i32 80, i32 80, i32 80>
  %153 = sitofp <4 x i32> %152 to <4 x double>
  %154 = fmul fast <4 x double> %153, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %155 = shl i64 %index965, 3
  %156 = add nuw nsw i64 %155, %148
  %157 = getelementptr i8, i8* %call, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %154, <4 x double>* %158, align 8, !alias.scope !99, !noalias !101
  %index.next966 = add i64 %index965, 4
  %vec.ind.next972 = add <4 x i32> %vec.ind971, <i32 4, i32 4, i32 4, i32 4>
  %159 = icmp eq i64 %index.next966, 32
  br i1 %159, label %polly.loop_exit748, label %vector.body963, !llvm.loop !104

polly.loop_exit748:                               ; preds = %vector.body963
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next744, 32
  br i1 %exitcond883.not, label %polly.loop_header740.1, label %polly.loop_header740

polly.loop_header767:                             ; preds = %polly.loop_exit748.2.2, %polly.loop_exit775
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748.2.2 ]
  %160 = mul nuw nsw i64 %polly.indvar770, 480
  %161 = trunc i64 %polly.indvar770 to i32
  %broadcast.splatinsert1087 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat1088 = shufflevector <4 x i32> %broadcast.splatinsert1087, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %polly.loop_header767
  %index1079 = phi i64 [ 0, %polly.loop_header767 ], [ %index.next1080, %vector.body1077 ]
  %vec.ind1085 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767 ], [ %vec.ind.next1086, %vector.body1077 ]
  %162 = mul <4 x i32> %vec.ind1085, %broadcast.splat1088
  %163 = add <4 x i32> %162, <i32 2, i32 2, i32 2, i32 2>
  %164 = urem <4 x i32> %163, <i32 60, i32 60, i32 60, i32 60>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %167 = shl i64 %index1079, 3
  %168 = add i64 %167, %160
  %169 = getelementptr i8, i8* %call2, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !103, !noalias !105
  %index.next1080 = add i64 %index1079, 4
  %vec.ind.next1086 = add <4 x i32> %vec.ind1085, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next1080, 32
  br i1 %171, label %polly.loop_exit775, label %vector.body1077, !llvm.loop !106

polly.loop_exit775:                               ; preds = %vector.body1077
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next771, 32
  br i1 %exitcond874.not, label %polly.loop_header767.1, label %polly.loop_header767

polly.loop_header793:                             ; preds = %polly.loop_exit775.1.2, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775.1.2 ]
  %172 = mul nuw nsw i64 %polly.indvar796, 480
  %173 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1165 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat1166 = shufflevector <4 x i32> %broadcast.splatinsert1165, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %polly.loop_header793
  %index1157 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1158, %vector.body1155 ]
  %vec.ind1163 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1164, %vector.body1155 ]
  %174 = mul <4 x i32> %vec.ind1163, %broadcast.splat1166
  %175 = add <4 x i32> %174, <i32 1, i32 1, i32 1, i32 1>
  %176 = urem <4 x i32> %175, <i32 80, i32 80, i32 80, i32 80>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %179 = shl i64 %index1157, 3
  %180 = add i64 %179, %172
  %181 = getelementptr i8, i8* %call1, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !102, !noalias !107
  %index.next1158 = add i64 %index1157, 4
  %vec.ind.next1164 = add <4 x i32> %vec.ind1163, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next1158, 32
  br i1 %183, label %polly.loop_exit801, label %vector.body1155, !llvm.loop !108

polly.loop_exit801:                               ; preds = %vector.body1155
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond868.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header205.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit229.1 ], [ 80, %polly.loop_exit229 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %184 = shl nsw i64 %polly.indvar208.1, 2
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_exit219.1 ]
  %185 = add nuw nsw i64 %polly.indvar214.1, 20
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar214.1, 80
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %186 = add nuw nsw i64 %polly.indvar220.1, %184
  %polly.access.mul.call2224.1 = mul nuw nsw i64 %186, 60
  %polly.access.add.call2225.1 = add nuw nsw i64 %185, %polly.access.mul.call2224.1
  %polly.access.call2226.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2225.1
  %polly.access.call2226.load.1 = load double, double* %polly.access.call2226.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar220.1, %polly.access.mul.Packed_MemRef_call2.1
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2226.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond826.1.not = icmp eq i64 %polly.indvar_next215.1, 20
  br i1 %exitcond826.1.not, label %polly.loop_header227.preheader.1, label %polly.loop_header211.1

polly.loop_header227.preheader.1:                 ; preds = %polly.loop_exit219.1
  %187 = mul nsw i64 %polly.indvar208.1, -4
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header227.preheader.1
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header227.preheader.1 ]
  %188 = shl i64 %polly.indvar230.1, 3
  %189 = add i64 %188, 160
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %polly.indvar230.1, 80
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %189
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %indvars.iv827.1 = phi i64 [ %indvars.iv.next828.1, %polly.loop_exit241.1 ], [ 0, %polly.loop_header227.1 ]
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit241.1 ], [ %184, %polly.loop_header227.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv827.1, i64 3)
  %190 = add nsw i64 %polly.indvar236.1, %187
  %191 = mul nuw nsw i64 %polly.indvar236.1, 480
  %192 = mul nuw nsw i64 %polly.indvar236.1, 640
  %scevgep260.1 = getelementptr i8, i8* %call, i64 %192
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %190, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %scevgep257.1 = getelementptr i8, i8* %scevgep256.1, i64 %191
  %scevgep257258.1 = bitcast i8* %scevgep257.1 to double*
  %_p_scalar_259.1 = load double, double* %scevgep257258.1, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %193 = add nuw nsw i64 %polly.indvar242.1, %184
  %194 = mul nuw nsw i64 %193, 480
  %195 = add nuw nsw i64 %194, %189
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %195
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %polly.indvar242.1, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_259.1, %_p_scalar_255.1
  %196 = shl i64 %193, 3
  %scevgep261.1 = getelementptr i8, i8* %scevgep260.1, i64 %196
  %scevgep261262.1 = bitcast i8* %scevgep261.1 to double*
  %_p_scalar_263.1 = load double, double* %scevgep261262.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_263.1
  store double %p_add42.i118.1, double* %scevgep261262.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond829.1.not = icmp eq i64 %polly.indvar242.1, %smin.1
  br i1 %exitcond829.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %indvars.iv.next828.1 = add nuw nsw i64 %indvars.iv827.1, 1
  %exitcond830.1.not = icmp eq i64 %indvars.iv.next828.1, %indvars.iv.1
  br i1 %exitcond830.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %exitcond831.1.not = icmp eq i64 %polly.indvar_next231.1, 20
  br i1 %exitcond831.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -4
  %exitcond832.1.not = icmp eq i64 %polly.indvar_next209.1, 20
  br i1 %exitcond832.1.not, label %polly.loop_header205.2, label %polly.loop_header205.1

polly.loop_header205.2:                           ; preds = %polly.loop_exit229.1, %polly.loop_exit229.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit229.2 ], [ 80, %polly.loop_exit229.1 ]
  %polly.indvar208.2 = phi i64 [ %polly.indvar_next209.2, %polly.loop_exit229.2 ], [ 0, %polly.loop_exit229.1 ]
  %197 = shl nsw i64 %polly.indvar208.2, 2
  br label %polly.loop_header211.2

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.2, %polly.loop_header205.2
  %polly.indvar214.2 = phi i64 [ 0, %polly.loop_header205.2 ], [ %polly.indvar_next215.2, %polly.loop_exit219.2 ]
  %198 = add nuw nsw i64 %polly.indvar214.2, 40
  %polly.access.mul.Packed_MemRef_call2.2 = mul nuw nsw i64 %polly.indvar214.2, 80
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_header217.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_header217.2 ]
  %199 = add nuw nsw i64 %polly.indvar220.2, %197
  %polly.access.mul.call2224.2 = mul nuw nsw i64 %199, 60
  %polly.access.add.call2225.2 = add nuw nsw i64 %198, %polly.access.mul.call2224.2
  %polly.access.call2226.2 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2225.2
  %polly.access.call2226.load.2 = load double, double* %polly.access.call2226.2, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar220.2, %polly.access.mul.Packed_MemRef_call2.2
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2226.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next221.2, %indvars.iv.2
  br i1 %exitcond.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_header217.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond826.2.not = icmp eq i64 %polly.indvar_next215.2, 20
  br i1 %exitcond826.2.not, label %polly.loop_header227.preheader.2, label %polly.loop_header211.2

polly.loop_header227.preheader.2:                 ; preds = %polly.loop_exit219.2
  %200 = mul nsw i64 %polly.indvar208.2, -4
  br label %polly.loop_header227.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.2, %polly.loop_header227.preheader.2
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_header227.preheader.2 ]
  %201 = shl i64 %polly.indvar230.2, 3
  %202 = add i64 %201, 320
  %polly.access.mul.Packed_MemRef_call2248.2 = mul nuw nsw i64 %polly.indvar230.2, 80
  %scevgep256.2 = getelementptr i8, i8* %call1, i64 %202
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.2, %polly.loop_header227.2
  %indvars.iv827.2 = phi i64 [ %indvars.iv.next828.2, %polly.loop_exit241.2 ], [ 0, %polly.loop_header227.2 ]
  %polly.indvar236.2 = phi i64 [ %polly.indvar_next237.2, %polly.loop_exit241.2 ], [ %197, %polly.loop_header227.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv827.2, i64 3)
  %203 = add nsw i64 %polly.indvar236.2, %200
  %204 = mul nuw nsw i64 %polly.indvar236.2, 480
  %205 = mul nuw nsw i64 %polly.indvar236.2, 640
  %scevgep260.2 = getelementptr i8, i8* %call, i64 %205
  %polly.access.add.Packed_MemRef_call2249.2 = add nuw nsw i64 %203, %polly.access.mul.Packed_MemRef_call2248.2
  %polly.access.Packed_MemRef_call2250.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2
  %_p_scalar_251.2 = load double, double* %polly.access.Packed_MemRef_call2250.2, align 8
  %scevgep257.2 = getelementptr i8, i8* %scevgep256.2, i64 %204
  %scevgep257258.2 = bitcast i8* %scevgep257.2 to double*
  %_p_scalar_259.2 = load double, double* %scevgep257258.2, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_header233.2
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_header233.2 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %206 = add nuw nsw i64 %polly.indvar242.2, %197
  %207 = mul nuw nsw i64 %206, 480
  %208 = add nuw nsw i64 %207, %202
  %scevgep245.2 = getelementptr i8, i8* %call1, i64 %208
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_247.2
  %polly.access.add.Packed_MemRef_call2253.2 = add nuw nsw i64 %polly.indvar242.2, %polly.access.mul.Packed_MemRef_call2248.2
  %polly.access.Packed_MemRef_call2254.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2
  %_p_scalar_255.2 = load double, double* %polly.access.Packed_MemRef_call2254.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_259.2, %_p_scalar_255.2
  %209 = shl i64 %206, 3
  %scevgep261.2 = getelementptr i8, i8* %scevgep260.2, i64 %209
  %scevgep261262.2 = bitcast i8* %scevgep261.2 to double*
  %_p_scalar_263.2 = load double, double* %scevgep261262.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_263.2
  store double %p_add42.i118.2, double* %scevgep261262.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond829.2.not = icmp eq i64 %polly.indvar242.2, %smin.2
  br i1 %exitcond829.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %indvars.iv.next828.2 = add nuw nsw i64 %indvars.iv827.2, 1
  %exitcond830.2.not = icmp eq i64 %indvars.iv.next828.2, %indvars.iv.2
  br i1 %exitcond830.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %exitcond831.2.not = icmp eq i64 %polly.indvar_next231.2, 20
  br i1 %exitcond831.2.not, label %polly.loop_exit229.2, label %polly.loop_header227.2

polly.loop_exit229.2:                             ; preds = %polly.loop_exit235.2
  %polly.indvar_next209.2 = add nuw nsw i64 %polly.indvar208.2, 1
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.2, -4
  %exitcond832.2.not = icmp eq i64 %polly.indvar_next209.2, 20
  br i1 %exitcond832.2.not, label %polly.loop_exit207.2, label %polly.loop_header205.2

polly.loop_exit207.2:                             ; preds = %polly.loop_exit229.2
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header374.1:                           ; preds = %polly.loop_exit398, %polly.loop_exit398.1
  %indvars.iv836.1 = phi i64 [ %indvars.iv.next837.1, %polly.loop_exit398.1 ], [ 80, %polly.loop_exit398 ]
  %polly.indvar377.1 = phi i64 [ %polly.indvar_next378.1, %polly.loop_exit398.1 ], [ 0, %polly.loop_exit398 ]
  %210 = shl nsw i64 %polly.indvar377.1, 2
  br label %polly.loop_header380.1

polly.loop_header380.1:                           ; preds = %polly.loop_exit388.1, %polly.loop_header374.1
  %polly.indvar383.1 = phi i64 [ 0, %polly.loop_header374.1 ], [ %polly.indvar_next384.1, %polly.loop_exit388.1 ]
  %211 = add nuw nsw i64 %polly.indvar383.1, 20
  %polly.access.mul.Packed_MemRef_call2269.1 = mul nuw nsw i64 %polly.indvar383.1, 80
  br label %polly.loop_header386.1

polly.loop_header386.1:                           ; preds = %polly.loop_header386.1, %polly.loop_header380.1
  %polly.indvar389.1 = phi i64 [ 0, %polly.loop_header380.1 ], [ %polly.indvar_next390.1, %polly.loop_header386.1 ]
  %212 = add nuw nsw i64 %polly.indvar389.1, %210
  %polly.access.mul.call2393.1 = mul nuw nsw i64 %212, 60
  %polly.access.add.call2394.1 = add nuw nsw i64 %211, %polly.access.mul.call2393.1
  %polly.access.call2395.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2394.1
  %polly.access.call2395.load.1 = load double, double* %polly.access.call2395.1, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269.1 = add nuw nsw i64 %polly.indvar389.1, %polly.access.mul.Packed_MemRef_call2269.1
  %polly.access.Packed_MemRef_call2269.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269.1
  store double %polly.access.call2395.load.1, double* %polly.access.Packed_MemRef_call2269.1, align 8
  %polly.indvar_next390.1 = add nuw nsw i64 %polly.indvar389.1, 1
  %exitcond838.1.not = icmp eq i64 %polly.indvar_next390.1, %indvars.iv836.1
  br i1 %exitcond838.1.not, label %polly.loop_exit388.1, label %polly.loop_header386.1

polly.loop_exit388.1:                             ; preds = %polly.loop_header386.1
  %polly.indvar_next384.1 = add nuw nsw i64 %polly.indvar383.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar_next384.1, 20
  br i1 %exitcond839.1.not, label %polly.loop_header396.preheader.1, label %polly.loop_header380.1

polly.loop_header396.preheader.1:                 ; preds = %polly.loop_exit388.1
  %213 = mul nsw i64 %polly.indvar377.1, -4
  br label %polly.loop_header396.1

polly.loop_header396.1:                           ; preds = %polly.loop_exit404.1, %polly.loop_header396.preheader.1
  %polly.indvar399.1 = phi i64 [ %polly.indvar_next400.1, %polly.loop_exit404.1 ], [ 0, %polly.loop_header396.preheader.1 ]
  %214 = shl i64 %polly.indvar399.1, 3
  %215 = add i64 %214, 160
  %polly.access.mul.Packed_MemRef_call2269417.1 = mul nuw nsw i64 %polly.indvar399.1, 80
  %scevgep425.1 = getelementptr i8, i8* %call1, i64 %215
  br label %polly.loop_header402.1

polly.loop_header402.1:                           ; preds = %polly.loop_exit410.1, %polly.loop_header396.1
  %indvars.iv840.1 = phi i64 [ %indvars.iv.next841.1, %polly.loop_exit410.1 ], [ 0, %polly.loop_header396.1 ]
  %polly.indvar405.1 = phi i64 [ %polly.indvar_next406.1, %polly.loop_exit410.1 ], [ %210, %polly.loop_header396.1 ]
  %smin842.1 = call i64 @llvm.smin.i64(i64 %indvars.iv840.1, i64 3)
  %216 = add nsw i64 %polly.indvar405.1, %213
  %217 = mul nuw nsw i64 %polly.indvar405.1, 480
  %218 = mul nuw nsw i64 %polly.indvar405.1, 640
  %scevgep429.1 = getelementptr i8, i8* %call, i64 %218
  %polly.access.add.Packed_MemRef_call2269418.1 = add nuw nsw i64 %216, %polly.access.mul.Packed_MemRef_call2269417.1
  %polly.access.Packed_MemRef_call2269419.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.1
  %_p_scalar_420.1 = load double, double* %polly.access.Packed_MemRef_call2269419.1, align 8
  %scevgep426.1 = getelementptr i8, i8* %scevgep425.1, i64 %217
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.1

polly.loop_header408.1:                           ; preds = %polly.loop_header408.1, %polly.loop_header402.1
  %polly.indvar411.1 = phi i64 [ 0, %polly.loop_header402.1 ], [ %polly.indvar_next412.1, %polly.loop_header408.1 ]
  %219 = add nuw nsw i64 %polly.indvar411.1, %210
  %220 = mul nuw nsw i64 %219, 480
  %221 = add nuw nsw i64 %220, %215
  %scevgep414.1 = getelementptr i8, i8* %call1, i64 %221
  %scevgep414415.1 = bitcast i8* %scevgep414.1 to double*
  %_p_scalar_416.1 = load double, double* %scevgep414415.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_420.1, %_p_scalar_416.1
  %polly.access.add.Packed_MemRef_call2269422.1 = add nuw nsw i64 %polly.indvar411.1, %polly.access.mul.Packed_MemRef_call2269417.1
  %polly.access.Packed_MemRef_call2269423.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.1
  %_p_scalar_424.1 = load double, double* %polly.access.Packed_MemRef_call2269423.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_428.1, %_p_scalar_424.1
  %222 = shl i64 %219, 3
  %scevgep430.1 = getelementptr i8, i8* %scevgep429.1, i64 %222
  %scevgep430431.1 = bitcast i8* %scevgep430.1 to double*
  %_p_scalar_432.1 = load double, double* %scevgep430431.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_432.1
  store double %p_add42.i79.1, double* %scevgep430431.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.1 = add nuw nsw i64 %polly.indvar411.1, 1
  %exitcond843.1.not = icmp eq i64 %polly.indvar411.1, %smin842.1
  br i1 %exitcond843.1.not, label %polly.loop_exit410.1, label %polly.loop_header408.1

polly.loop_exit410.1:                             ; preds = %polly.loop_header408.1
  %polly.indvar_next406.1 = add nuw nsw i64 %polly.indvar405.1, 1
  %indvars.iv.next841.1 = add nuw nsw i64 %indvars.iv840.1, 1
  %exitcond844.1.not = icmp eq i64 %indvars.iv.next841.1, %indvars.iv836.1
  br i1 %exitcond844.1.not, label %polly.loop_exit404.1, label %polly.loop_header402.1

polly.loop_exit404.1:                             ; preds = %polly.loop_exit410.1
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond845.1.not = icmp eq i64 %polly.indvar_next400.1, 20
  br i1 %exitcond845.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_exit404.1
  %polly.indvar_next378.1 = add nuw nsw i64 %polly.indvar377.1, 1
  %indvars.iv.next837.1 = add nsw i64 %indvars.iv836.1, -4
  %exitcond846.1.not = icmp eq i64 %polly.indvar_next378.1, 20
  br i1 %exitcond846.1.not, label %polly.loop_header374.2, label %polly.loop_header374.1

polly.loop_header374.2:                           ; preds = %polly.loop_exit398.1, %polly.loop_exit398.2
  %indvars.iv836.2 = phi i64 [ %indvars.iv.next837.2, %polly.loop_exit398.2 ], [ 80, %polly.loop_exit398.1 ]
  %polly.indvar377.2 = phi i64 [ %polly.indvar_next378.2, %polly.loop_exit398.2 ], [ 0, %polly.loop_exit398.1 ]
  %223 = shl nsw i64 %polly.indvar377.2, 2
  br label %polly.loop_header380.2

polly.loop_header380.2:                           ; preds = %polly.loop_exit388.2, %polly.loop_header374.2
  %polly.indvar383.2 = phi i64 [ 0, %polly.loop_header374.2 ], [ %polly.indvar_next384.2, %polly.loop_exit388.2 ]
  %224 = add nuw nsw i64 %polly.indvar383.2, 40
  %polly.access.mul.Packed_MemRef_call2269.2 = mul nuw nsw i64 %polly.indvar383.2, 80
  br label %polly.loop_header386.2

polly.loop_header386.2:                           ; preds = %polly.loop_header386.2, %polly.loop_header380.2
  %polly.indvar389.2 = phi i64 [ 0, %polly.loop_header380.2 ], [ %polly.indvar_next390.2, %polly.loop_header386.2 ]
  %225 = add nuw nsw i64 %polly.indvar389.2, %223
  %polly.access.mul.call2393.2 = mul nuw nsw i64 %225, 60
  %polly.access.add.call2394.2 = add nuw nsw i64 %224, %polly.access.mul.call2393.2
  %polly.access.call2395.2 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2394.2
  %polly.access.call2395.load.2 = load double, double* %polly.access.call2395.2, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269.2 = add nuw nsw i64 %polly.indvar389.2, %polly.access.mul.Packed_MemRef_call2269.2
  %polly.access.Packed_MemRef_call2269.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269.2
  store double %polly.access.call2395.load.2, double* %polly.access.Packed_MemRef_call2269.2, align 8
  %polly.indvar_next390.2 = add nuw nsw i64 %polly.indvar389.2, 1
  %exitcond838.2.not = icmp eq i64 %polly.indvar_next390.2, %indvars.iv836.2
  br i1 %exitcond838.2.not, label %polly.loop_exit388.2, label %polly.loop_header386.2

polly.loop_exit388.2:                             ; preds = %polly.loop_header386.2
  %polly.indvar_next384.2 = add nuw nsw i64 %polly.indvar383.2, 1
  %exitcond839.2.not = icmp eq i64 %polly.indvar_next384.2, 20
  br i1 %exitcond839.2.not, label %polly.loop_header396.preheader.2, label %polly.loop_header380.2

polly.loop_header396.preheader.2:                 ; preds = %polly.loop_exit388.2
  %226 = mul nsw i64 %polly.indvar377.2, -4
  br label %polly.loop_header396.2

polly.loop_header396.2:                           ; preds = %polly.loop_exit404.2, %polly.loop_header396.preheader.2
  %polly.indvar399.2 = phi i64 [ %polly.indvar_next400.2, %polly.loop_exit404.2 ], [ 0, %polly.loop_header396.preheader.2 ]
  %227 = shl i64 %polly.indvar399.2, 3
  %228 = add i64 %227, 320
  %polly.access.mul.Packed_MemRef_call2269417.2 = mul nuw nsw i64 %polly.indvar399.2, 80
  %scevgep425.2 = getelementptr i8, i8* %call1, i64 %228
  br label %polly.loop_header402.2

polly.loop_header402.2:                           ; preds = %polly.loop_exit410.2, %polly.loop_header396.2
  %indvars.iv840.2 = phi i64 [ %indvars.iv.next841.2, %polly.loop_exit410.2 ], [ 0, %polly.loop_header396.2 ]
  %polly.indvar405.2 = phi i64 [ %polly.indvar_next406.2, %polly.loop_exit410.2 ], [ %223, %polly.loop_header396.2 ]
  %smin842.2 = call i64 @llvm.smin.i64(i64 %indvars.iv840.2, i64 3)
  %229 = add nsw i64 %polly.indvar405.2, %226
  %230 = mul nuw nsw i64 %polly.indvar405.2, 480
  %231 = mul nuw nsw i64 %polly.indvar405.2, 640
  %scevgep429.2 = getelementptr i8, i8* %call, i64 %231
  %polly.access.add.Packed_MemRef_call2269418.2 = add nuw nsw i64 %229, %polly.access.mul.Packed_MemRef_call2269417.2
  %polly.access.Packed_MemRef_call2269419.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.2
  %_p_scalar_420.2 = load double, double* %polly.access.Packed_MemRef_call2269419.2, align 8
  %scevgep426.2 = getelementptr i8, i8* %scevgep425.2, i64 %230
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.2

polly.loop_header408.2:                           ; preds = %polly.loop_header408.2, %polly.loop_header402.2
  %polly.indvar411.2 = phi i64 [ 0, %polly.loop_header402.2 ], [ %polly.indvar_next412.2, %polly.loop_header408.2 ]
  %232 = add nuw nsw i64 %polly.indvar411.2, %223
  %233 = mul nuw nsw i64 %232, 480
  %234 = add nuw nsw i64 %233, %228
  %scevgep414.2 = getelementptr i8, i8* %call1, i64 %234
  %scevgep414415.2 = bitcast i8* %scevgep414.2 to double*
  %_p_scalar_416.2 = load double, double* %scevgep414415.2, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.2 = fmul fast double %_p_scalar_420.2, %_p_scalar_416.2
  %polly.access.add.Packed_MemRef_call2269422.2 = add nuw nsw i64 %polly.indvar411.2, %polly.access.mul.Packed_MemRef_call2269417.2
  %polly.access.Packed_MemRef_call2269423.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.2
  %_p_scalar_424.2 = load double, double* %polly.access.Packed_MemRef_call2269423.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_428.2, %_p_scalar_424.2
  %235 = shl i64 %232, 3
  %scevgep430.2 = getelementptr i8, i8* %scevgep429.2, i64 %235
  %scevgep430431.2 = bitcast i8* %scevgep430.2 to double*
  %_p_scalar_432.2 = load double, double* %scevgep430431.2, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_432.2
  store double %p_add42.i79.2, double* %scevgep430431.2, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.2 = add nuw nsw i64 %polly.indvar411.2, 1
  %exitcond843.2.not = icmp eq i64 %polly.indvar411.2, %smin842.2
  br i1 %exitcond843.2.not, label %polly.loop_exit410.2, label %polly.loop_header408.2

polly.loop_exit410.2:                             ; preds = %polly.loop_header408.2
  %polly.indvar_next406.2 = add nuw nsw i64 %polly.indvar405.2, 1
  %indvars.iv.next841.2 = add nuw nsw i64 %indvars.iv840.2, 1
  %exitcond844.2.not = icmp eq i64 %indvars.iv.next841.2, %indvars.iv836.2
  br i1 %exitcond844.2.not, label %polly.loop_exit404.2, label %polly.loop_header402.2

polly.loop_exit404.2:                             ; preds = %polly.loop_exit410.2
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %exitcond845.2.not = icmp eq i64 %polly.indvar_next400.2, 20
  br i1 %exitcond845.2.not, label %polly.loop_exit398.2, label %polly.loop_header396.2

polly.loop_exit398.2:                             ; preds = %polly.loop_exit404.2
  %polly.indvar_next378.2 = add nuw nsw i64 %polly.indvar377.2, 1
  %indvars.iv.next837.2 = add nsw i64 %indvars.iv836.2, -4
  %exitcond846.2.not = icmp eq i64 %polly.indvar_next378.2, 20
  br i1 %exitcond846.2.not, label %polly.loop_exit376.2, label %polly.loop_header374.2

polly.loop_exit376.2:                             ; preds = %polly.loop_exit398.2
  tail call void @free(i8* nonnull %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header543.1:                           ; preds = %polly.loop_exit567, %polly.loop_exit567.1
  %indvars.iv850.1 = phi i64 [ %indvars.iv.next851.1, %polly.loop_exit567.1 ], [ 80, %polly.loop_exit567 ]
  %polly.indvar546.1 = phi i64 [ %polly.indvar_next547.1, %polly.loop_exit567.1 ], [ 0, %polly.loop_exit567 ]
  %236 = shl nsw i64 %polly.indvar546.1, 2
  br label %polly.loop_header549.1

polly.loop_header549.1:                           ; preds = %polly.loop_exit557.1, %polly.loop_header543.1
  %polly.indvar552.1 = phi i64 [ 0, %polly.loop_header543.1 ], [ %polly.indvar_next553.1, %polly.loop_exit557.1 ]
  %237 = add nuw nsw i64 %polly.indvar552.1, 20
  %polly.access.mul.Packed_MemRef_call2438.1 = mul nuw nsw i64 %polly.indvar552.1, 80
  br label %polly.loop_header555.1

polly.loop_header555.1:                           ; preds = %polly.loop_header555.1, %polly.loop_header549.1
  %polly.indvar558.1 = phi i64 [ 0, %polly.loop_header549.1 ], [ %polly.indvar_next559.1, %polly.loop_header555.1 ]
  %238 = add nuw nsw i64 %polly.indvar558.1, %236
  %polly.access.mul.call2562.1 = mul nuw nsw i64 %238, 60
  %polly.access.add.call2563.1 = add nuw nsw i64 %237, %polly.access.mul.call2562.1
  %polly.access.call2564.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2563.1
  %polly.access.call2564.load.1 = load double, double* %polly.access.call2564.1, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438.1 = add nuw nsw i64 %polly.indvar558.1, %polly.access.mul.Packed_MemRef_call2438.1
  %polly.access.Packed_MemRef_call2438.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438.1
  store double %polly.access.call2564.load.1, double* %polly.access.Packed_MemRef_call2438.1, align 8
  %polly.indvar_next559.1 = add nuw nsw i64 %polly.indvar558.1, 1
  %exitcond852.1.not = icmp eq i64 %polly.indvar_next559.1, %indvars.iv850.1
  br i1 %exitcond852.1.not, label %polly.loop_exit557.1, label %polly.loop_header555.1

polly.loop_exit557.1:                             ; preds = %polly.loop_header555.1
  %polly.indvar_next553.1 = add nuw nsw i64 %polly.indvar552.1, 1
  %exitcond853.1.not = icmp eq i64 %polly.indvar_next553.1, 20
  br i1 %exitcond853.1.not, label %polly.loop_header565.preheader.1, label %polly.loop_header549.1

polly.loop_header565.preheader.1:                 ; preds = %polly.loop_exit557.1
  %239 = mul nsw i64 %polly.indvar546.1, -4
  br label %polly.loop_header565.1

polly.loop_header565.1:                           ; preds = %polly.loop_exit573.1, %polly.loop_header565.preheader.1
  %polly.indvar568.1 = phi i64 [ %polly.indvar_next569.1, %polly.loop_exit573.1 ], [ 0, %polly.loop_header565.preheader.1 ]
  %240 = shl i64 %polly.indvar568.1, 3
  %241 = add i64 %240, 160
  %polly.access.mul.Packed_MemRef_call2438586.1 = mul nuw nsw i64 %polly.indvar568.1, 80
  %scevgep594.1 = getelementptr i8, i8* %call1, i64 %241
  br label %polly.loop_header571.1

polly.loop_header571.1:                           ; preds = %polly.loop_exit579.1, %polly.loop_header565.1
  %indvars.iv854.1 = phi i64 [ %indvars.iv.next855.1, %polly.loop_exit579.1 ], [ 0, %polly.loop_header565.1 ]
  %polly.indvar574.1 = phi i64 [ %polly.indvar_next575.1, %polly.loop_exit579.1 ], [ %236, %polly.loop_header565.1 ]
  %smin856.1 = call i64 @llvm.smin.i64(i64 %indvars.iv854.1, i64 3)
  %242 = add nsw i64 %polly.indvar574.1, %239
  %243 = mul nuw nsw i64 %polly.indvar574.1, 480
  %244 = mul nuw nsw i64 %polly.indvar574.1, 640
  %scevgep598.1 = getelementptr i8, i8* %call, i64 %244
  %polly.access.add.Packed_MemRef_call2438587.1 = add nuw nsw i64 %242, %polly.access.mul.Packed_MemRef_call2438586.1
  %polly.access.Packed_MemRef_call2438588.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2438588.1, align 8
  %scevgep595.1 = getelementptr i8, i8* %scevgep594.1, i64 %243
  %scevgep595596.1 = bitcast i8* %scevgep595.1 to double*
  %_p_scalar_597.1 = load double, double* %scevgep595596.1, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.1

polly.loop_header577.1:                           ; preds = %polly.loop_header577.1, %polly.loop_header571.1
  %polly.indvar580.1 = phi i64 [ 0, %polly.loop_header571.1 ], [ %polly.indvar_next581.1, %polly.loop_header577.1 ]
  %245 = add nuw nsw i64 %polly.indvar580.1, %236
  %246 = mul nuw nsw i64 %245, 480
  %247 = add nuw nsw i64 %246, %241
  %scevgep583.1 = getelementptr i8, i8* %call1, i64 %247
  %scevgep583584.1 = bitcast i8* %scevgep583.1 to double*
  %_p_scalar_585.1 = load double, double* %scevgep583584.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_589.1, %_p_scalar_585.1
  %polly.access.add.Packed_MemRef_call2438591.1 = add nuw nsw i64 %polly.indvar580.1, %polly.access.mul.Packed_MemRef_call2438586.1
  %polly.access.Packed_MemRef_call2438592.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.1
  %_p_scalar_593.1 = load double, double* %polly.access.Packed_MemRef_call2438592.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_597.1, %_p_scalar_593.1
  %248 = shl i64 %245, 3
  %scevgep599.1 = getelementptr i8, i8* %scevgep598.1, i64 %248
  %scevgep599600.1 = bitcast i8* %scevgep599.1 to double*
  %_p_scalar_601.1 = load double, double* %scevgep599600.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_601.1
  store double %p_add42.i.1, double* %scevgep599600.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.1 = add nuw nsw i64 %polly.indvar580.1, 1
  %exitcond857.1.not = icmp eq i64 %polly.indvar580.1, %smin856.1
  br i1 %exitcond857.1.not, label %polly.loop_exit579.1, label %polly.loop_header577.1

polly.loop_exit579.1:                             ; preds = %polly.loop_header577.1
  %polly.indvar_next575.1 = add nuw nsw i64 %polly.indvar574.1, 1
  %indvars.iv.next855.1 = add nuw nsw i64 %indvars.iv854.1, 1
  %exitcond858.1.not = icmp eq i64 %indvars.iv.next855.1, %indvars.iv850.1
  br i1 %exitcond858.1.not, label %polly.loop_exit573.1, label %polly.loop_header571.1

polly.loop_exit573.1:                             ; preds = %polly.loop_exit579.1
  %polly.indvar_next569.1 = add nuw nsw i64 %polly.indvar568.1, 1
  %exitcond859.1.not = icmp eq i64 %polly.indvar_next569.1, 20
  br i1 %exitcond859.1.not, label %polly.loop_exit567.1, label %polly.loop_header565.1

polly.loop_exit567.1:                             ; preds = %polly.loop_exit573.1
  %polly.indvar_next547.1 = add nuw nsw i64 %polly.indvar546.1, 1
  %indvars.iv.next851.1 = add nsw i64 %indvars.iv850.1, -4
  %exitcond860.1.not = icmp eq i64 %polly.indvar_next547.1, 20
  br i1 %exitcond860.1.not, label %polly.loop_header543.2, label %polly.loop_header543.1

polly.loop_header543.2:                           ; preds = %polly.loop_exit567.1, %polly.loop_exit567.2
  %indvars.iv850.2 = phi i64 [ %indvars.iv.next851.2, %polly.loop_exit567.2 ], [ 80, %polly.loop_exit567.1 ]
  %polly.indvar546.2 = phi i64 [ %polly.indvar_next547.2, %polly.loop_exit567.2 ], [ 0, %polly.loop_exit567.1 ]
  %249 = shl nsw i64 %polly.indvar546.2, 2
  br label %polly.loop_header549.2

polly.loop_header549.2:                           ; preds = %polly.loop_exit557.2, %polly.loop_header543.2
  %polly.indvar552.2 = phi i64 [ 0, %polly.loop_header543.2 ], [ %polly.indvar_next553.2, %polly.loop_exit557.2 ]
  %250 = add nuw nsw i64 %polly.indvar552.2, 40
  %polly.access.mul.Packed_MemRef_call2438.2 = mul nuw nsw i64 %polly.indvar552.2, 80
  br label %polly.loop_header555.2

polly.loop_header555.2:                           ; preds = %polly.loop_header555.2, %polly.loop_header549.2
  %polly.indvar558.2 = phi i64 [ 0, %polly.loop_header549.2 ], [ %polly.indvar_next559.2, %polly.loop_header555.2 ]
  %251 = add nuw nsw i64 %polly.indvar558.2, %249
  %polly.access.mul.call2562.2 = mul nuw nsw i64 %251, 60
  %polly.access.add.call2563.2 = add nuw nsw i64 %250, %polly.access.mul.call2562.2
  %polly.access.call2564.2 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2563.2
  %polly.access.call2564.load.2 = load double, double* %polly.access.call2564.2, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438.2 = add nuw nsw i64 %polly.indvar558.2, %polly.access.mul.Packed_MemRef_call2438.2
  %polly.access.Packed_MemRef_call2438.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438.2
  store double %polly.access.call2564.load.2, double* %polly.access.Packed_MemRef_call2438.2, align 8
  %polly.indvar_next559.2 = add nuw nsw i64 %polly.indvar558.2, 1
  %exitcond852.2.not = icmp eq i64 %polly.indvar_next559.2, %indvars.iv850.2
  br i1 %exitcond852.2.not, label %polly.loop_exit557.2, label %polly.loop_header555.2

polly.loop_exit557.2:                             ; preds = %polly.loop_header555.2
  %polly.indvar_next553.2 = add nuw nsw i64 %polly.indvar552.2, 1
  %exitcond853.2.not = icmp eq i64 %polly.indvar_next553.2, 20
  br i1 %exitcond853.2.not, label %polly.loop_header565.preheader.2, label %polly.loop_header549.2

polly.loop_header565.preheader.2:                 ; preds = %polly.loop_exit557.2
  %252 = mul nsw i64 %polly.indvar546.2, -4
  br label %polly.loop_header565.2

polly.loop_header565.2:                           ; preds = %polly.loop_exit573.2, %polly.loop_header565.preheader.2
  %polly.indvar568.2 = phi i64 [ %polly.indvar_next569.2, %polly.loop_exit573.2 ], [ 0, %polly.loop_header565.preheader.2 ]
  %253 = shl i64 %polly.indvar568.2, 3
  %254 = add i64 %253, 320
  %polly.access.mul.Packed_MemRef_call2438586.2 = mul nuw nsw i64 %polly.indvar568.2, 80
  %scevgep594.2 = getelementptr i8, i8* %call1, i64 %254
  br label %polly.loop_header571.2

polly.loop_header571.2:                           ; preds = %polly.loop_exit579.2, %polly.loop_header565.2
  %indvars.iv854.2 = phi i64 [ %indvars.iv.next855.2, %polly.loop_exit579.2 ], [ 0, %polly.loop_header565.2 ]
  %polly.indvar574.2 = phi i64 [ %polly.indvar_next575.2, %polly.loop_exit579.2 ], [ %249, %polly.loop_header565.2 ]
  %smin856.2 = call i64 @llvm.smin.i64(i64 %indvars.iv854.2, i64 3)
  %255 = add nsw i64 %polly.indvar574.2, %252
  %256 = mul nuw nsw i64 %polly.indvar574.2, 480
  %257 = mul nuw nsw i64 %polly.indvar574.2, 640
  %scevgep598.2 = getelementptr i8, i8* %call, i64 %257
  %polly.access.add.Packed_MemRef_call2438587.2 = add nuw nsw i64 %255, %polly.access.mul.Packed_MemRef_call2438586.2
  %polly.access.Packed_MemRef_call2438588.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.2
  %_p_scalar_589.2 = load double, double* %polly.access.Packed_MemRef_call2438588.2, align 8
  %scevgep595.2 = getelementptr i8, i8* %scevgep594.2, i64 %256
  %scevgep595596.2 = bitcast i8* %scevgep595.2 to double*
  %_p_scalar_597.2 = load double, double* %scevgep595596.2, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.2

polly.loop_header577.2:                           ; preds = %polly.loop_header577.2, %polly.loop_header571.2
  %polly.indvar580.2 = phi i64 [ 0, %polly.loop_header571.2 ], [ %polly.indvar_next581.2, %polly.loop_header577.2 ]
  %258 = add nuw nsw i64 %polly.indvar580.2, %249
  %259 = mul nuw nsw i64 %258, 480
  %260 = add nuw nsw i64 %259, %254
  %scevgep583.2 = getelementptr i8, i8* %call1, i64 %260
  %scevgep583584.2 = bitcast i8* %scevgep583.2 to double*
  %_p_scalar_585.2 = load double, double* %scevgep583584.2, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.2 = fmul fast double %_p_scalar_589.2, %_p_scalar_585.2
  %polly.access.add.Packed_MemRef_call2438591.2 = add nuw nsw i64 %polly.indvar580.2, %polly.access.mul.Packed_MemRef_call2438586.2
  %polly.access.Packed_MemRef_call2438592.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.2
  %_p_scalar_593.2 = load double, double* %polly.access.Packed_MemRef_call2438592.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_597.2, %_p_scalar_593.2
  %261 = shl i64 %258, 3
  %scevgep599.2 = getelementptr i8, i8* %scevgep598.2, i64 %261
  %scevgep599600.2 = bitcast i8* %scevgep599.2 to double*
  %_p_scalar_601.2 = load double, double* %scevgep599600.2, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_601.2
  store double %p_add42.i.2, double* %scevgep599600.2, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.2 = add nuw nsw i64 %polly.indvar580.2, 1
  %exitcond857.2.not = icmp eq i64 %polly.indvar580.2, %smin856.2
  br i1 %exitcond857.2.not, label %polly.loop_exit579.2, label %polly.loop_header577.2

polly.loop_exit579.2:                             ; preds = %polly.loop_header577.2
  %polly.indvar_next575.2 = add nuw nsw i64 %polly.indvar574.2, 1
  %indvars.iv.next855.2 = add nuw nsw i64 %indvars.iv854.2, 1
  %exitcond858.2.not = icmp eq i64 %indvars.iv.next855.2, %indvars.iv850.2
  br i1 %exitcond858.2.not, label %polly.loop_exit573.2, label %polly.loop_header571.2

polly.loop_exit573.2:                             ; preds = %polly.loop_exit579.2
  %polly.indvar_next569.2 = add nuw nsw i64 %polly.indvar568.2, 1
  %exitcond859.2.not = icmp eq i64 %polly.indvar_next569.2, 20
  br i1 %exitcond859.2.not, label %polly.loop_exit567.2, label %polly.loop_header565.2

polly.loop_exit567.2:                             ; preds = %polly.loop_exit573.2
  %polly.indvar_next547.2 = add nuw nsw i64 %polly.indvar546.2, 1
  %indvars.iv.next851.2 = add nsw i64 %indvars.iv850.2, -4
  %exitcond860.2.not = icmp eq i64 %polly.indvar_next547.2, 20
  br i1 %exitcond860.2.not, label %polly.loop_exit545.2, label %polly.loop_header543.2

polly.loop_exit545.2:                             ; preds = %polly.loop_exit567.2
  tail call void @free(i8* nonnull %malloccall437)
  br label %kernel_syr2k.exit

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %262 = mul nuw nsw i64 %polly.indvar796.1, 480
  %263 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %polly.loop_header793.1
  %index1171 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1172, %vector.body1169 ]
  %vec.ind1175 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1176, %vector.body1169 ]
  %264 = add nuw nsw <4 x i64> %vec.ind1175, <i64 32, i64 32, i64 32, i64 32>
  %265 = trunc <4 x i64> %264 to <4 x i32>
  %266 = mul <4 x i32> %broadcast.splat1178, %265
  %267 = add <4 x i32> %266, <i32 1, i32 1, i32 1, i32 1>
  %268 = urem <4 x i32> %267, <i32 80, i32 80, i32 80, i32 80>
  %269 = sitofp <4 x i32> %268 to <4 x double>
  %270 = fmul fast <4 x double> %269, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %271 = extractelement <4 x i64> %264, i32 0
  %272 = shl i64 %271, 3
  %273 = add i64 %272, %262
  %274 = getelementptr i8, i8* %call1, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %270, <4 x double>* %275, align 8, !alias.scope !102, !noalias !107
  %index.next1172 = add i64 %index1171, 4
  %vec.ind.next1176 = add <4 x i64> %vec.ind1175, <i64 4, i64 4, i64 4, i64 4>
  %276 = icmp eq i64 %index.next1172, 28
  br i1 %276, label %polly.loop_exit801.1, label %vector.body1169, !llvm.loop !109

polly.loop_exit801.1:                             ; preds = %vector.body1169
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond868.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond868.1.not, label %polly.loop_header793.1888, label %polly.loop_header793.1

polly.loop_header793.1888:                        ; preds = %polly.loop_exit801.1, %polly.loop_exit801.1899
  %polly.indvar796.1887 = phi i64 [ %polly.indvar_next797.1897, %polly.loop_exit801.1899 ], [ 0, %polly.loop_exit801.1 ]
  %277 = add nuw nsw i64 %polly.indvar796.1887, 32
  %278 = mul nuw nsw i64 %277, 480
  %279 = trunc i64 %277 to i32
  %broadcast.splatinsert1191 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1192 = shufflevector <4 x i32> %broadcast.splatinsert1191, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %polly.loop_header793.1888
  %index1183 = phi i64 [ 0, %polly.loop_header793.1888 ], [ %index.next1184, %vector.body1181 ]
  %vec.ind1189 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.1888 ], [ %vec.ind.next1190, %vector.body1181 ]
  %280 = mul <4 x i32> %vec.ind1189, %broadcast.splat1192
  %281 = add <4 x i32> %280, <i32 1, i32 1, i32 1, i32 1>
  %282 = urem <4 x i32> %281, <i32 80, i32 80, i32 80, i32 80>
  %283 = sitofp <4 x i32> %282 to <4 x double>
  %284 = fmul fast <4 x double> %283, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %285 = shl i64 %index1183, 3
  %286 = add i64 %285, %278
  %287 = getelementptr i8, i8* %call1, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %284, <4 x double>* %288, align 8, !alias.scope !102, !noalias !107
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1190 = add <4 x i32> %vec.ind1189, <i32 4, i32 4, i32 4, i32 4>
  %289 = icmp eq i64 %index.next1184, 32
  br i1 %289, label %polly.loop_exit801.1899, label %vector.body1181, !llvm.loop !110

polly.loop_exit801.1899:                          ; preds = %vector.body1181
  %polly.indvar_next797.1897 = add nuw nsw i64 %polly.indvar796.1887, 1
  %exitcond868.1898.not = icmp eq i64 %polly.indvar_next797.1897, 32
  br i1 %exitcond868.1898.not, label %polly.loop_header793.1.1, label %polly.loop_header793.1888

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.1899, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.1899 ]
  %290 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %291 = mul nuw nsw i64 %290, 480
  %292 = trunc i64 %290 to i32
  %broadcast.splatinsert1203 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1204 = shufflevector <4 x i32> %broadcast.splatinsert1203, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %polly.loop_header793.1.1
  %index1197 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1198, %vector.body1195 ]
  %vec.ind1201 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1202, %vector.body1195 ]
  %293 = add nuw nsw <4 x i64> %vec.ind1201, <i64 32, i64 32, i64 32, i64 32>
  %294 = trunc <4 x i64> %293 to <4 x i32>
  %295 = mul <4 x i32> %broadcast.splat1204, %294
  %296 = add <4 x i32> %295, <i32 1, i32 1, i32 1, i32 1>
  %297 = urem <4 x i32> %296, <i32 80, i32 80, i32 80, i32 80>
  %298 = sitofp <4 x i32> %297 to <4 x double>
  %299 = fmul fast <4 x double> %298, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %300 = extractelement <4 x i64> %293, i32 0
  %301 = shl i64 %300, 3
  %302 = add i64 %301, %291
  %303 = getelementptr i8, i8* %call1, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %299, <4 x double>* %304, align 8, !alias.scope !102, !noalias !107
  %index.next1198 = add i64 %index1197, 4
  %vec.ind.next1202 = add <4 x i64> %vec.ind1201, <i64 4, i64 4, i64 4, i64 4>
  %305 = icmp eq i64 %index.next1198, 28
  br i1 %305, label %polly.loop_exit801.1.1, label %vector.body1195, !llvm.loop !111

polly.loop_exit801.1.1:                           ; preds = %vector.body1195
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond868.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond868.1.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1.1 ]
  %306 = add nuw nsw i64 %polly.indvar796.2, 64
  %307 = mul nuw nsw i64 %306, 480
  %308 = trunc i64 %306 to i32
  %broadcast.splatinsert1217 = insertelement <4 x i32> poison, i32 %308, i32 0
  %broadcast.splat1218 = shufflevector <4 x i32> %broadcast.splatinsert1217, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %polly.loop_header793.2
  %index1209 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1210, %vector.body1207 ]
  %vec.ind1215 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.2 ], [ %vec.ind.next1216, %vector.body1207 ]
  %309 = mul <4 x i32> %vec.ind1215, %broadcast.splat1218
  %310 = add <4 x i32> %309, <i32 1, i32 1, i32 1, i32 1>
  %311 = urem <4 x i32> %310, <i32 80, i32 80, i32 80, i32 80>
  %312 = sitofp <4 x i32> %311 to <4 x double>
  %313 = fmul fast <4 x double> %312, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %314 = shl i64 %index1209, 3
  %315 = add i64 %314, %307
  %316 = getelementptr i8, i8* %call1, i64 %315
  %317 = bitcast i8* %316 to <4 x double>*
  store <4 x double> %313, <4 x double>* %317, align 8, !alias.scope !102, !noalias !107
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1216 = add <4 x i32> %vec.ind1215, <i32 4, i32 4, i32 4, i32 4>
  %318 = icmp eq i64 %index.next1210, 32
  br i1 %318, label %polly.loop_exit801.2, label %vector.body1207, !llvm.loop !112

polly.loop_exit801.2:                             ; preds = %vector.body1207
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond868.2.not = icmp eq i64 %polly.indvar_next797.2, 16
  br i1 %exitcond868.2.not, label %polly.loop_header793.1.2, label %polly.loop_header793.2

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.2, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.2 ]
  %319 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %320 = mul nuw nsw i64 %319, 480
  %321 = trunc i64 %319 to i32
  %broadcast.splatinsert1229 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1230 = shufflevector <4 x i32> %broadcast.splatinsert1229, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %polly.loop_header793.1.2
  %index1223 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1224, %vector.body1221 ]
  %vec.ind1227 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1228, %vector.body1221 ]
  %322 = add nuw nsw <4 x i64> %vec.ind1227, <i64 32, i64 32, i64 32, i64 32>
  %323 = trunc <4 x i64> %322 to <4 x i32>
  %324 = mul <4 x i32> %broadcast.splat1230, %323
  %325 = add <4 x i32> %324, <i32 1, i32 1, i32 1, i32 1>
  %326 = urem <4 x i32> %325, <i32 80, i32 80, i32 80, i32 80>
  %327 = sitofp <4 x i32> %326 to <4 x double>
  %328 = fmul fast <4 x double> %327, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %329 = extractelement <4 x i64> %322, i32 0
  %330 = shl i64 %329, 3
  %331 = add i64 %330, %320
  %332 = getelementptr i8, i8* %call1, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %328, <4 x double>* %333, align 8, !alias.scope !102, !noalias !107
  %index.next1224 = add i64 %index1223, 4
  %vec.ind.next1228 = add <4 x i64> %vec.ind1227, <i64 4, i64 4, i64 4, i64 4>
  %334 = icmp eq i64 %index.next1224, 28
  br i1 %334, label %polly.loop_exit801.1.2, label %vector.body1221, !llvm.loop !113

polly.loop_exit801.1.2:                           ; preds = %vector.body1221
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond868.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond868.1.2.not, label %init_array.exit, label %polly.loop_header793.1.2

polly.loop_header767.1:                           ; preds = %polly.loop_exit775, %polly.loop_exit775.1
  %polly.indvar770.1 = phi i64 [ %polly.indvar_next771.1, %polly.loop_exit775.1 ], [ 0, %polly.loop_exit775 ]
  %335 = mul nuw nsw i64 %polly.indvar770.1, 480
  %336 = trunc i64 %polly.indvar770.1 to i32
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %336, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.body1091, %polly.loop_header767.1
  %index1093 = phi i64 [ 0, %polly.loop_header767.1 ], [ %index.next1094, %vector.body1091 ]
  %vec.ind1097 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1 ], [ %vec.ind.next1098, %vector.body1091 ]
  %337 = add nuw nsw <4 x i64> %vec.ind1097, <i64 32, i64 32, i64 32, i64 32>
  %338 = trunc <4 x i64> %337 to <4 x i32>
  %339 = mul <4 x i32> %broadcast.splat1100, %338
  %340 = add <4 x i32> %339, <i32 2, i32 2, i32 2, i32 2>
  %341 = urem <4 x i32> %340, <i32 60, i32 60, i32 60, i32 60>
  %342 = sitofp <4 x i32> %341 to <4 x double>
  %343 = fmul fast <4 x double> %342, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %344 = extractelement <4 x i64> %337, i32 0
  %345 = shl i64 %344, 3
  %346 = add i64 %345, %335
  %347 = getelementptr i8, i8* %call2, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %343, <4 x double>* %348, align 8, !alias.scope !103, !noalias !105
  %index.next1094 = add i64 %index1093, 4
  %vec.ind.next1098 = add <4 x i64> %vec.ind1097, <i64 4, i64 4, i64 4, i64 4>
  %349 = icmp eq i64 %index.next1094, 28
  br i1 %349, label %polly.loop_exit775.1, label %vector.body1091, !llvm.loop !114

polly.loop_exit775.1:                             ; preds = %vector.body1091
  %polly.indvar_next771.1 = add nuw nsw i64 %polly.indvar770.1, 1
  %exitcond874.1.not = icmp eq i64 %polly.indvar_next771.1, 32
  br i1 %exitcond874.1.not, label %polly.loop_header767.1902, label %polly.loop_header767.1

polly.loop_header767.1902:                        ; preds = %polly.loop_exit775.1, %polly.loop_exit775.1913
  %polly.indvar770.1901 = phi i64 [ %polly.indvar_next771.1911, %polly.loop_exit775.1913 ], [ 0, %polly.loop_exit775.1 ]
  %350 = add nuw nsw i64 %polly.indvar770.1901, 32
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1113 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1114 = shufflevector <4 x i32> %broadcast.splatinsert1113, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %polly.loop_header767.1902
  %index1105 = phi i64 [ 0, %polly.loop_header767.1902 ], [ %index.next1106, %vector.body1103 ]
  %vec.ind1111 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.1902 ], [ %vec.ind.next1112, %vector.body1103 ]
  %353 = mul <4 x i32> %vec.ind1111, %broadcast.splat1114
  %354 = add <4 x i32> %353, <i32 2, i32 2, i32 2, i32 2>
  %355 = urem <4 x i32> %354, <i32 60, i32 60, i32 60, i32 60>
  %356 = sitofp <4 x i32> %355 to <4 x double>
  %357 = fmul fast <4 x double> %356, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %358 = shl i64 %index1105, 3
  %359 = add i64 %358, %351
  %360 = getelementptr i8, i8* %call2, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %357, <4 x double>* %361, align 8, !alias.scope !103, !noalias !105
  %index.next1106 = add i64 %index1105, 4
  %vec.ind.next1112 = add <4 x i32> %vec.ind1111, <i32 4, i32 4, i32 4, i32 4>
  %362 = icmp eq i64 %index.next1106, 32
  br i1 %362, label %polly.loop_exit775.1913, label %vector.body1103, !llvm.loop !115

polly.loop_exit775.1913:                          ; preds = %vector.body1103
  %polly.indvar_next771.1911 = add nuw nsw i64 %polly.indvar770.1901, 1
  %exitcond874.1912.not = icmp eq i64 %polly.indvar_next771.1911, 32
  br i1 %exitcond874.1912.not, label %polly.loop_header767.1.1, label %polly.loop_header767.1902

polly.loop_header767.1.1:                         ; preds = %polly.loop_exit775.1913, %polly.loop_exit775.1.1
  %polly.indvar770.1.1 = phi i64 [ %polly.indvar_next771.1.1, %polly.loop_exit775.1.1 ], [ 0, %polly.loop_exit775.1913 ]
  %363 = add nuw nsw i64 %polly.indvar770.1.1, 32
  %364 = mul nuw nsw i64 %363, 480
  %365 = trunc i64 %363 to i32
  %broadcast.splatinsert1125 = insertelement <4 x i32> poison, i32 %365, i32 0
  %broadcast.splat1126 = shufflevector <4 x i32> %broadcast.splatinsert1125, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1117

vector.body1117:                                  ; preds = %vector.body1117, %polly.loop_header767.1.1
  %index1119 = phi i64 [ 0, %polly.loop_header767.1.1 ], [ %index.next1120, %vector.body1117 ]
  %vec.ind1123 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.1 ], [ %vec.ind.next1124, %vector.body1117 ]
  %366 = add nuw nsw <4 x i64> %vec.ind1123, <i64 32, i64 32, i64 32, i64 32>
  %367 = trunc <4 x i64> %366 to <4 x i32>
  %368 = mul <4 x i32> %broadcast.splat1126, %367
  %369 = add <4 x i32> %368, <i32 2, i32 2, i32 2, i32 2>
  %370 = urem <4 x i32> %369, <i32 60, i32 60, i32 60, i32 60>
  %371 = sitofp <4 x i32> %370 to <4 x double>
  %372 = fmul fast <4 x double> %371, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %373 = extractelement <4 x i64> %366, i32 0
  %374 = shl i64 %373, 3
  %375 = add i64 %374, %364
  %376 = getelementptr i8, i8* %call2, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %372, <4 x double>* %377, align 8, !alias.scope !103, !noalias !105
  %index.next1120 = add i64 %index1119, 4
  %vec.ind.next1124 = add <4 x i64> %vec.ind1123, <i64 4, i64 4, i64 4, i64 4>
  %378 = icmp eq i64 %index.next1120, 28
  br i1 %378, label %polly.loop_exit775.1.1, label %vector.body1117, !llvm.loop !116

polly.loop_exit775.1.1:                           ; preds = %vector.body1117
  %polly.indvar_next771.1.1 = add nuw nsw i64 %polly.indvar770.1.1, 1
  %exitcond874.1.1.not = icmp eq i64 %polly.indvar_next771.1.1, 32
  br i1 %exitcond874.1.1.not, label %polly.loop_header767.2, label %polly.loop_header767.1.1

polly.loop_header767.2:                           ; preds = %polly.loop_exit775.1.1, %polly.loop_exit775.2
  %polly.indvar770.2 = phi i64 [ %polly.indvar_next771.2, %polly.loop_exit775.2 ], [ 0, %polly.loop_exit775.1.1 ]
  %379 = add nuw nsw i64 %polly.indvar770.2, 64
  %380 = mul nuw nsw i64 %379, 480
  %381 = trunc i64 %379 to i32
  %broadcast.splatinsert1139 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat1140 = shufflevector <4 x i32> %broadcast.splatinsert1139, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %polly.loop_header767.2
  %index1131 = phi i64 [ 0, %polly.loop_header767.2 ], [ %index.next1132, %vector.body1129 ]
  %vec.ind1137 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.2 ], [ %vec.ind.next1138, %vector.body1129 ]
  %382 = mul <4 x i32> %vec.ind1137, %broadcast.splat1140
  %383 = add <4 x i32> %382, <i32 2, i32 2, i32 2, i32 2>
  %384 = urem <4 x i32> %383, <i32 60, i32 60, i32 60, i32 60>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = shl i64 %index1131, 3
  %388 = add i64 %387, %380
  %389 = getelementptr i8, i8* %call2, i64 %388
  %390 = bitcast i8* %389 to <4 x double>*
  store <4 x double> %386, <4 x double>* %390, align 8, !alias.scope !103, !noalias !105
  %index.next1132 = add i64 %index1131, 4
  %vec.ind.next1138 = add <4 x i32> %vec.ind1137, <i32 4, i32 4, i32 4, i32 4>
  %391 = icmp eq i64 %index.next1132, 32
  br i1 %391, label %polly.loop_exit775.2, label %vector.body1129, !llvm.loop !117

polly.loop_exit775.2:                             ; preds = %vector.body1129
  %polly.indvar_next771.2 = add nuw nsw i64 %polly.indvar770.2, 1
  %exitcond874.2.not = icmp eq i64 %polly.indvar_next771.2, 16
  br i1 %exitcond874.2.not, label %polly.loop_header767.1.2, label %polly.loop_header767.2

polly.loop_header767.1.2:                         ; preds = %polly.loop_exit775.2, %polly.loop_exit775.1.2
  %polly.indvar770.1.2 = phi i64 [ %polly.indvar_next771.1.2, %polly.loop_exit775.1.2 ], [ 0, %polly.loop_exit775.2 ]
  %392 = add nuw nsw i64 %polly.indvar770.1.2, 64
  %393 = mul nuw nsw i64 %392, 480
  %394 = trunc i64 %392 to i32
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %polly.loop_header767.1.2
  %index1145 = phi i64 [ 0, %polly.loop_header767.1.2 ], [ %index.next1146, %vector.body1143 ]
  %vec.ind1149 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.2 ], [ %vec.ind.next1150, %vector.body1143 ]
  %395 = add nuw nsw <4 x i64> %vec.ind1149, <i64 32, i64 32, i64 32, i64 32>
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat1152, %396
  %398 = add <4 x i32> %397, <i32 2, i32 2, i32 2, i32 2>
  %399 = urem <4 x i32> %398, <i32 60, i32 60, i32 60, i32 60>
  %400 = sitofp <4 x i32> %399 to <4 x double>
  %401 = fmul fast <4 x double> %400, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %402 = extractelement <4 x i64> %395, i32 0
  %403 = shl i64 %402, 3
  %404 = add i64 %403, %393
  %405 = getelementptr i8, i8* %call2, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %401, <4 x double>* %406, align 8, !alias.scope !103, !noalias !105
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1150 = add <4 x i64> %vec.ind1149, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next1146, 28
  br i1 %407, label %polly.loop_exit775.1.2, label %vector.body1143, !llvm.loop !118

polly.loop_exit775.1.2:                           ; preds = %vector.body1143
  %polly.indvar_next771.1.2 = add nuw nsw i64 %polly.indvar770.1.2, 1
  %exitcond874.1.2.not = icmp eq i64 %polly.indvar_next771.1.2, 16
  br i1 %exitcond874.1.2.not, label %polly.loop_header793, label %polly.loop_header767.1.2

polly.loop_header740.1:                           ; preds = %polly.loop_exit748, %polly.loop_exit748.1
  %polly.indvar743.1 = phi i64 [ %polly.indvar_next744.1, %polly.loop_exit748.1 ], [ 0, %polly.loop_exit748 ]
  %408 = mul nuw nsw i64 %polly.indvar743.1, 640
  %409 = trunc i64 %polly.indvar743.1 to i32
  %broadcast.splatinsert985 = insertelement <4 x i32> poison, i32 %409, i32 0
  %broadcast.splat986 = shufflevector <4 x i32> %broadcast.splatinsert985, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %polly.loop_header740.1
  %index979 = phi i64 [ 0, %polly.loop_header740.1 ], [ %index.next980, %vector.body977 ]
  %vec.ind983 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1 ], [ %vec.ind.next984, %vector.body977 ]
  %410 = add nuw nsw <4 x i64> %vec.ind983, <i64 32, i64 32, i64 32, i64 32>
  %411 = trunc <4 x i64> %410 to <4 x i32>
  %412 = mul <4 x i32> %broadcast.splat986, %411
  %413 = add <4 x i32> %412, <i32 3, i32 3, i32 3, i32 3>
  %414 = urem <4 x i32> %413, <i32 80, i32 80, i32 80, i32 80>
  %415 = sitofp <4 x i32> %414 to <4 x double>
  %416 = fmul fast <4 x double> %415, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %417 = extractelement <4 x i64> %410, i32 0
  %418 = shl i64 %417, 3
  %419 = add nuw nsw i64 %418, %408
  %420 = getelementptr i8, i8* %call, i64 %419
  %421 = bitcast i8* %420 to <4 x double>*
  store <4 x double> %416, <4 x double>* %421, align 8, !alias.scope !99, !noalias !101
  %index.next980 = add i64 %index979, 4
  %vec.ind.next984 = add <4 x i64> %vec.ind983, <i64 4, i64 4, i64 4, i64 4>
  %422 = icmp eq i64 %index.next980, 32
  br i1 %422, label %polly.loop_exit748.1, label %vector.body977, !llvm.loop !119

polly.loop_exit748.1:                             ; preds = %vector.body977
  %polly.indvar_next744.1 = add nuw nsw i64 %polly.indvar743.1, 1
  %exitcond883.1.not = icmp eq i64 %polly.indvar_next744.1, 32
  br i1 %exitcond883.1.not, label %polly.loop_header740.2, label %polly.loop_header740.1

polly.loop_header740.2:                           ; preds = %polly.loop_exit748.1, %polly.loop_exit748.2
  %polly.indvar743.2 = phi i64 [ %polly.indvar_next744.2, %polly.loop_exit748.2 ], [ 0, %polly.loop_exit748.1 ]
  %423 = mul nuw nsw i64 %polly.indvar743.2, 640
  %424 = trunc i64 %polly.indvar743.2 to i32
  %broadcast.splatinsert997 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat998 = shufflevector <4 x i32> %broadcast.splatinsert997, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %polly.loop_header740.2
  %index991 = phi i64 [ 0, %polly.loop_header740.2 ], [ %index.next992, %vector.body989 ]
  %vec.ind995 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2 ], [ %vec.ind.next996, %vector.body989 ]
  %425 = add nuw nsw <4 x i64> %vec.ind995, <i64 64, i64 64, i64 64, i64 64>
  %426 = trunc <4 x i64> %425 to <4 x i32>
  %427 = mul <4 x i32> %broadcast.splat998, %426
  %428 = add <4 x i32> %427, <i32 3, i32 3, i32 3, i32 3>
  %429 = urem <4 x i32> %428, <i32 80, i32 80, i32 80, i32 80>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = extractelement <4 x i64> %425, i32 0
  %433 = shl i64 %432, 3
  %434 = add nuw nsw i64 %433, %423
  %435 = getelementptr i8, i8* %call, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %431, <4 x double>* %436, align 8, !alias.scope !99, !noalias !101
  %index.next992 = add i64 %index991, 4
  %vec.ind.next996 = add <4 x i64> %vec.ind995, <i64 4, i64 4, i64 4, i64 4>
  %437 = icmp eq i64 %index.next992, 16
  br i1 %437, label %polly.loop_exit748.2, label %vector.body989, !llvm.loop !120

polly.loop_exit748.2:                             ; preds = %vector.body989
  %polly.indvar_next744.2 = add nuw nsw i64 %polly.indvar743.2, 1
  %exitcond883.2.not = icmp eq i64 %polly.indvar_next744.2, 32
  br i1 %exitcond883.2.not, label %polly.loop_header740.1916, label %polly.loop_header740.2

polly.loop_header740.1916:                        ; preds = %polly.loop_exit748.2, %polly.loop_exit748.1927
  %polly.indvar743.1915 = phi i64 [ %polly.indvar_next744.1925, %polly.loop_exit748.1927 ], [ 0, %polly.loop_exit748.2 ]
  %438 = add nuw nsw i64 %polly.indvar743.1915, 32
  %439 = mul nuw nsw i64 %438, 640
  %440 = trunc i64 %438 to i32
  %broadcast.splatinsert1011 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1012 = shufflevector <4 x i32> %broadcast.splatinsert1011, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %polly.loop_header740.1916
  %index1003 = phi i64 [ 0, %polly.loop_header740.1916 ], [ %index.next1004, %vector.body1001 ]
  %vec.ind1009 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.1916 ], [ %vec.ind.next1010, %vector.body1001 ]
  %441 = mul <4 x i32> %vec.ind1009, %broadcast.splat1012
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = shl i64 %index1003, 3
  %447 = add nuw nsw i64 %446, %439
  %448 = getelementptr i8, i8* %call, i64 %447
  %449 = bitcast i8* %448 to <4 x double>*
  store <4 x double> %445, <4 x double>* %449, align 8, !alias.scope !99, !noalias !101
  %index.next1004 = add i64 %index1003, 4
  %vec.ind.next1010 = add <4 x i32> %vec.ind1009, <i32 4, i32 4, i32 4, i32 4>
  %450 = icmp eq i64 %index.next1004, 32
  br i1 %450, label %polly.loop_exit748.1927, label %vector.body1001, !llvm.loop !121

polly.loop_exit748.1927:                          ; preds = %vector.body1001
  %polly.indvar_next744.1925 = add nuw nsw i64 %polly.indvar743.1915, 1
  %exitcond883.1926.not = icmp eq i64 %polly.indvar_next744.1925, 32
  br i1 %exitcond883.1926.not, label %polly.loop_header740.1.1, label %polly.loop_header740.1916

polly.loop_header740.1.1:                         ; preds = %polly.loop_exit748.1927, %polly.loop_exit748.1.1
  %polly.indvar743.1.1 = phi i64 [ %polly.indvar_next744.1.1, %polly.loop_exit748.1.1 ], [ 0, %polly.loop_exit748.1927 ]
  %451 = add nuw nsw i64 %polly.indvar743.1.1, 32
  %452 = mul nuw nsw i64 %451, 640
  %453 = trunc i64 %451 to i32
  %broadcast.splatinsert1023 = insertelement <4 x i32> poison, i32 %453, i32 0
  %broadcast.splat1024 = shufflevector <4 x i32> %broadcast.splatinsert1023, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %polly.loop_header740.1.1
  %index1017 = phi i64 [ 0, %polly.loop_header740.1.1 ], [ %index.next1018, %vector.body1015 ]
  %vec.ind1021 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.1 ], [ %vec.ind.next1022, %vector.body1015 ]
  %454 = add nuw nsw <4 x i64> %vec.ind1021, <i64 32, i64 32, i64 32, i64 32>
  %455 = trunc <4 x i64> %454 to <4 x i32>
  %456 = mul <4 x i32> %broadcast.splat1024, %455
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = extractelement <4 x i64> %454, i32 0
  %462 = shl i64 %461, 3
  %463 = add nuw nsw i64 %462, %452
  %464 = getelementptr i8, i8* %call, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %460, <4 x double>* %465, align 8, !alias.scope !99, !noalias !101
  %index.next1018 = add i64 %index1017, 4
  %vec.ind.next1022 = add <4 x i64> %vec.ind1021, <i64 4, i64 4, i64 4, i64 4>
  %466 = icmp eq i64 %index.next1018, 32
  br i1 %466, label %polly.loop_exit748.1.1, label %vector.body1015, !llvm.loop !122

polly.loop_exit748.1.1:                           ; preds = %vector.body1015
  %polly.indvar_next744.1.1 = add nuw nsw i64 %polly.indvar743.1.1, 1
  %exitcond883.1.1.not = icmp eq i64 %polly.indvar_next744.1.1, 32
  br i1 %exitcond883.1.1.not, label %polly.loop_header740.2.1, label %polly.loop_header740.1.1

polly.loop_header740.2.1:                         ; preds = %polly.loop_exit748.1.1, %polly.loop_exit748.2.1
  %polly.indvar743.2.1 = phi i64 [ %polly.indvar_next744.2.1, %polly.loop_exit748.2.1 ], [ 0, %polly.loop_exit748.1.1 ]
  %467 = add nuw nsw i64 %polly.indvar743.2.1, 32
  %468 = mul nuw nsw i64 %467, 640
  %469 = trunc i64 %467 to i32
  %broadcast.splatinsert1035 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1036 = shufflevector <4 x i32> %broadcast.splatinsert1035, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %polly.loop_header740.2.1
  %index1029 = phi i64 [ 0, %polly.loop_header740.2.1 ], [ %index.next1030, %vector.body1027 ]
  %vec.ind1033 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.1 ], [ %vec.ind.next1034, %vector.body1027 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1033, <i64 64, i64 64, i64 64, i64 64>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1036, %471
  %473 = add <4 x i32> %472, <i32 3, i32 3, i32 3, i32 3>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add nuw nsw i64 %478, %468
  %480 = getelementptr i8, i8* %call, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !99, !noalias !101
  %index.next1030 = add i64 %index1029, 4
  %vec.ind.next1034 = add <4 x i64> %vec.ind1033, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1030, 16
  br i1 %482, label %polly.loop_exit748.2.1, label %vector.body1027, !llvm.loop !123

polly.loop_exit748.2.1:                           ; preds = %vector.body1027
  %polly.indvar_next744.2.1 = add nuw nsw i64 %polly.indvar743.2.1, 1
  %exitcond883.2.1.not = icmp eq i64 %polly.indvar_next744.2.1, 32
  br i1 %exitcond883.2.1.not, label %polly.loop_header740.2930, label %polly.loop_header740.2.1

polly.loop_header740.2930:                        ; preds = %polly.loop_exit748.2.1, %polly.loop_exit748.2941
  %polly.indvar743.2929 = phi i64 [ %polly.indvar_next744.2939, %polly.loop_exit748.2941 ], [ 0, %polly.loop_exit748.2.1 ]
  %483 = add nuw nsw i64 %polly.indvar743.2929, 64
  %484 = mul nuw nsw i64 %483, 640
  %485 = trunc i64 %483 to i32
  %broadcast.splatinsert1049 = insertelement <4 x i32> poison, i32 %485, i32 0
  %broadcast.splat1050 = shufflevector <4 x i32> %broadcast.splatinsert1049, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1039

vector.body1039:                                  ; preds = %vector.body1039, %polly.loop_header740.2930
  %index1041 = phi i64 [ 0, %polly.loop_header740.2930 ], [ %index.next1042, %vector.body1039 ]
  %vec.ind1047 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.2930 ], [ %vec.ind.next1048, %vector.body1039 ]
  %486 = mul <4 x i32> %vec.ind1047, %broadcast.splat1050
  %487 = add <4 x i32> %486, <i32 3, i32 3, i32 3, i32 3>
  %488 = urem <4 x i32> %487, <i32 80, i32 80, i32 80, i32 80>
  %489 = sitofp <4 x i32> %488 to <4 x double>
  %490 = fmul fast <4 x double> %489, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %491 = shl i64 %index1041, 3
  %492 = add nuw nsw i64 %491, %484
  %493 = getelementptr i8, i8* %call, i64 %492
  %494 = bitcast i8* %493 to <4 x double>*
  store <4 x double> %490, <4 x double>* %494, align 8, !alias.scope !99, !noalias !101
  %index.next1042 = add i64 %index1041, 4
  %vec.ind.next1048 = add <4 x i32> %vec.ind1047, <i32 4, i32 4, i32 4, i32 4>
  %495 = icmp eq i64 %index.next1042, 32
  br i1 %495, label %polly.loop_exit748.2941, label %vector.body1039, !llvm.loop !124

polly.loop_exit748.2941:                          ; preds = %vector.body1039
  %polly.indvar_next744.2939 = add nuw nsw i64 %polly.indvar743.2929, 1
  %exitcond883.2940.not = icmp eq i64 %polly.indvar_next744.2939, 16
  br i1 %exitcond883.2940.not, label %polly.loop_header740.1.2, label %polly.loop_header740.2930

polly.loop_header740.1.2:                         ; preds = %polly.loop_exit748.2941, %polly.loop_exit748.1.2
  %polly.indvar743.1.2 = phi i64 [ %polly.indvar_next744.1.2, %polly.loop_exit748.1.2 ], [ 0, %polly.loop_exit748.2941 ]
  %496 = add nuw nsw i64 %polly.indvar743.1.2, 64
  %497 = mul nuw nsw i64 %496, 640
  %498 = trunc i64 %496 to i32
  %broadcast.splatinsert1061 = insertelement <4 x i32> poison, i32 %498, i32 0
  %broadcast.splat1062 = shufflevector <4 x i32> %broadcast.splatinsert1061, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %polly.loop_header740.1.2
  %index1055 = phi i64 [ 0, %polly.loop_header740.1.2 ], [ %index.next1056, %vector.body1053 ]
  %vec.ind1059 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.2 ], [ %vec.ind.next1060, %vector.body1053 ]
  %499 = add nuw nsw <4 x i64> %vec.ind1059, <i64 32, i64 32, i64 32, i64 32>
  %500 = trunc <4 x i64> %499 to <4 x i32>
  %501 = mul <4 x i32> %broadcast.splat1062, %500
  %502 = add <4 x i32> %501, <i32 3, i32 3, i32 3, i32 3>
  %503 = urem <4 x i32> %502, <i32 80, i32 80, i32 80, i32 80>
  %504 = sitofp <4 x i32> %503 to <4 x double>
  %505 = fmul fast <4 x double> %504, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %506 = extractelement <4 x i64> %499, i32 0
  %507 = shl i64 %506, 3
  %508 = add nuw nsw i64 %507, %497
  %509 = getelementptr i8, i8* %call, i64 %508
  %510 = bitcast i8* %509 to <4 x double>*
  store <4 x double> %505, <4 x double>* %510, align 8, !alias.scope !99, !noalias !101
  %index.next1056 = add i64 %index1055, 4
  %vec.ind.next1060 = add <4 x i64> %vec.ind1059, <i64 4, i64 4, i64 4, i64 4>
  %511 = icmp eq i64 %index.next1056, 32
  br i1 %511, label %polly.loop_exit748.1.2, label %vector.body1053, !llvm.loop !125

polly.loop_exit748.1.2:                           ; preds = %vector.body1053
  %polly.indvar_next744.1.2 = add nuw nsw i64 %polly.indvar743.1.2, 1
  %exitcond883.1.2.not = icmp eq i64 %polly.indvar_next744.1.2, 16
  br i1 %exitcond883.1.2.not, label %polly.loop_header740.2.2, label %polly.loop_header740.1.2

polly.loop_header740.2.2:                         ; preds = %polly.loop_exit748.1.2, %polly.loop_exit748.2.2
  %polly.indvar743.2.2 = phi i64 [ %polly.indvar_next744.2.2, %polly.loop_exit748.2.2 ], [ 0, %polly.loop_exit748.1.2 ]
  %512 = add nuw nsw i64 %polly.indvar743.2.2, 64
  %513 = mul nuw nsw i64 %512, 640
  %514 = trunc i64 %512 to i32
  %broadcast.splatinsert1073 = insertelement <4 x i32> poison, i32 %514, i32 0
  %broadcast.splat1074 = shufflevector <4 x i32> %broadcast.splatinsert1073, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %polly.loop_header740.2.2
  %index1067 = phi i64 [ 0, %polly.loop_header740.2.2 ], [ %index.next1068, %vector.body1065 ]
  %vec.ind1071 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.2 ], [ %vec.ind.next1072, %vector.body1065 ]
  %515 = add nuw nsw <4 x i64> %vec.ind1071, <i64 64, i64 64, i64 64, i64 64>
  %516 = trunc <4 x i64> %515 to <4 x i32>
  %517 = mul <4 x i32> %broadcast.splat1074, %516
  %518 = add <4 x i32> %517, <i32 3, i32 3, i32 3, i32 3>
  %519 = urem <4 x i32> %518, <i32 80, i32 80, i32 80, i32 80>
  %520 = sitofp <4 x i32> %519 to <4 x double>
  %521 = fmul fast <4 x double> %520, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %522 = extractelement <4 x i64> %515, i32 0
  %523 = shl i64 %522, 3
  %524 = add nuw nsw i64 %523, %513
  %525 = getelementptr i8, i8* %call, i64 %524
  %526 = bitcast i8* %525 to <4 x double>*
  store <4 x double> %521, <4 x double>* %526, align 8, !alias.scope !99, !noalias !101
  %index.next1068 = add i64 %index1067, 4
  %vec.ind.next1072 = add <4 x i64> %vec.ind1071, <i64 4, i64 4, i64 4, i64 4>
  %527 = icmp eq i64 %index.next1068, 16
  br i1 %527, label %polly.loop_exit748.2.2, label %vector.body1065, !llvm.loop !126

polly.loop_exit748.2.2:                           ; preds = %vector.body1065
  %polly.indvar_next744.2.2 = add nuw nsw i64 %polly.indvar743.2.2, 1
  %exitcond883.2.2.not = icmp eq i64 %polly.indvar_next744.2.2, 16
  br i1 %exitcond883.2.2.not, label %polly.loop_header767, label %polly.loop_header740.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 4}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 20}
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
!45 = !{!"llvm.loop.tile.size", i32 100}
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
