; ModuleID = 'syr2k_recreations//mmp_syr2k_S_27.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_27.c"
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
  %scevgep941 = getelementptr i8, i8* %call2, i64 %12
  %scevgep940 = getelementptr i8, i8* %call2, i64 %11
  %scevgep939 = getelementptr i8, i8* %call1, i64 %12
  %scevgep938 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep938, %scevgep941
  %bound1 = icmp ult i8* %scevgep940, %scevgep939
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
  br i1 %exitcond18.not.i, label %vector.ph945, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph945:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert952 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat953 = shufflevector <4 x i64> %broadcast.splatinsert952, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %vector.ph945
  %index946 = phi i64 [ 0, %vector.ph945 ], [ %index.next947, %vector.body944 ]
  %vec.ind950 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph945 ], [ %vec.ind.next951, %vector.body944 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind950, %broadcast.splat953
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv7.i, i64 %index946
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next947 = add i64 %index946, 4
  %vec.ind.next951 = add <4 x i64> %vec.ind950, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next947, 80
  br i1 %40, label %for.inc41.i, label %vector.body944, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body944
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph945, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1298, label %vector.ph1227

vector.ph1227:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1227
  %index1228 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1229, %vector.body1226 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %index1228
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1229 = add i64 %index1228, 4
  %46 = icmp eq i64 %index.next1229, %n.vec
  br i1 %46, label %middle.block1224, label %vector.body1226, !llvm.loop !18

middle.block1224:                                 ; preds = %vector.body1226
  %cmp.n1231 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1231, label %for.inc6.i, label %for.body3.i46.preheader1298

for.body3.i46.preheader1298:                      ; preds = %for.body3.i46.preheader, %middle.block1224
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1224 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1298, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1298 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1224, %for.cond1.preheader.i45
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
  %min.iters.check1247 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1247, label %for.body3.i60.preheader1297, label %vector.ph1248

vector.ph1248:                                    ; preds = %for.body3.i60.preheader
  %n.vec1250 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1246 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %index1251
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1255, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1252 = add i64 %index1251, 4
  %57 = icmp eq i64 %index.next1252, %n.vec1250
  br i1 %57, label %middle.block1244, label %vector.body1246, !llvm.loop !55

middle.block1244:                                 ; preds = %vector.body1246
  %cmp.n1254 = icmp eq i64 %indvars.iv21.i52, %n.vec1250
  br i1 %cmp.n1254, label %for.inc6.i63, label %for.body3.i60.preheader1297

for.body3.i60.preheader1297:                      ; preds = %for.body3.i60.preheader, %middle.block1244
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1250, %middle.block1244 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1297, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1297 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1244, %for.cond1.preheader.i54
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
  %min.iters.check1273 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1273, label %for.body3.i99.preheader1296, label %vector.ph1274

vector.ph1274:                                    ; preds = %for.body3.i99.preheader
  %n.vec1276 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %vector.ph1274
  %index1277 = phi i64 [ 0, %vector.ph1274 ], [ %index.next1278, %vector.body1272 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %index1277
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1281 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1281, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1278 = add i64 %index1277, 4
  %68 = icmp eq i64 %index.next1278, %n.vec1276
  br i1 %68, label %middle.block1270, label %vector.body1272, !llvm.loop !57

middle.block1270:                                 ; preds = %vector.body1272
  %cmp.n1280 = icmp eq i64 %indvars.iv21.i91, %n.vec1276
  br i1 %cmp.n1280, label %for.inc6.i102, label %for.body3.i99.preheader1296

for.body3.i99.preheader1296:                      ; preds = %for.body3.i99.preheader, %middle.block1270
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1276, %middle.block1270 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1296, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1296 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1270, %for.cond1.preheader.i93
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

polly.exiting:                                    ; preds = %polly.loop_exit229.3
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1285 = phi i64 [ %indvar.next1286, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1285, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1287 = icmp ult i64 %88, 4
  br i1 %min.iters.check1287, label %polly.loop_header191.preheader, label %vector.ph1288

vector.ph1288:                                    ; preds = %polly.loop_header
  %n.vec1290 = and i64 %88, -4
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.body1284, %vector.ph1288
  %index1291 = phi i64 [ 0, %vector.ph1288 ], [ %index.next1292, %vector.body1284 ]
  %90 = shl nuw nsw i64 %index1291, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1295 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1295, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1292 = add i64 %index1291, 4
  %95 = icmp eq i64 %index.next1292, %n.vec1290
  br i1 %95, label %middle.block1282, label %vector.body1284, !llvm.loop !69

middle.block1282:                                 ; preds = %vector.body1284
  %cmp.n1294 = icmp eq i64 %88, %n.vec1290
  br i1 %cmp.n1294, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1282
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1290, %middle.block1282 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1282
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1286 = add i64 %indvar1285, 1
  br i1 %exitcond822.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond821.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond821.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond820.not, label %polly.loop_header215, label %polly.loop_header199

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
  %exitcond819.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond819.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit229.3
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit229.3 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit229.3 ], [ 0, %polly.loop_exit207 ]
  %smin812 = call i64 @llvm.smin.i64(i64 %indvars.iv810, i64 -52)
  %97 = add nsw i64 %smin812, 60
  %98 = shl nsw i64 %polly.indvar218, 3
  br label %polly.loop_header227

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header215
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit235 ], [ 0, %polly.loop_header215 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header215 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 19)
  %99 = mul nuw nsw i64 %polly.indvar230, 480
  %scevgep256 = getelementptr i8, i8* %call1, i64 %99
  %100 = mul nuw nsw i64 %polly.indvar230, 640
  %scevgep260 = getelementptr i8, i8* %call, i64 %100
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond816.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond816.not, label %polly.loop_header227.1, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %101 = add nuw nsw i64 %polly.indvar236, %98
  %102 = shl i64 %101, 3
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %101, 80
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248, %polly.indvar230
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %scevgep257 = getelementptr i8, i8* %scevgep256, i64 %102
  %scevgep257258 = bitcast i8* %scevgep257 to double*
  %_p_scalar_259 = load double, double* %scevgep257258, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next237, %97
  br i1 %exitcond813.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %103 = mul nuw nsw i64 %polly.indvar242, 480
  %104 = add nuw nsw i64 %103, %102
  %scevgep245 = getelementptr i8, i8* %call1, i64 %104
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.indvar242, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %105 = shl i64 %polly.indvar242, 3
  %scevgep261 = getelementptr i8, i8* %scevgep260, i64 %105
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

polly.exiting267:                                 ; preds = %polly.loop_exit398.3
  tail call void @free(i8* nonnull %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1259 = phi i64 [ %indvar.next1260, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %106 = add i64 %indvar1259, 1
  %107 = mul nuw nsw i64 %polly.indvar355, 640
  %scevgep364 = getelementptr i8, i8* %call, i64 %107
  %min.iters.check1261 = icmp ult i64 %106, 4
  br i1 %min.iters.check1261, label %polly.loop_header358.preheader, label %vector.ph1262

vector.ph1262:                                    ; preds = %polly.loop_header352
  %n.vec1264 = and i64 %106, -4
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %vector.ph1262
  %index1265 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1266, %vector.body1258 ]
  %108 = shl nuw nsw i64 %index1265, 3
  %109 = getelementptr i8, i8* %scevgep364, i64 %108
  %110 = bitcast i8* %109 to <4 x double>*
  %wide.load1269 = load <4 x double>, <4 x double>* %110, align 8, !alias.scope !74, !noalias !76
  %111 = fmul fast <4 x double> %wide.load1269, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %112 = bitcast i8* %109 to <4 x double>*
  store <4 x double> %111, <4 x double>* %112, align 8, !alias.scope !74, !noalias !76
  %index.next1266 = add i64 %index1265, 4
  %113 = icmp eq i64 %index.next1266, %n.vec1264
  br i1 %113, label %middle.block1256, label %vector.body1258, !llvm.loop !80

middle.block1256:                                 ; preds = %vector.body1258
  %cmp.n1268 = icmp eq i64 %106, %n.vec1264
  br i1 %cmp.n1268, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1256
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1264, %middle.block1256 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1256
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next356, 80
  %indvar.next1260 = add i64 %indvar1259, 1
  br i1 %exitcond839.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %114 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %114
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond838.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !81

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit376
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit376 ], [ 0, %polly.loop_header368.preheader ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar371, 80
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next372, 60
  br i1 %exitcond837.not, label %polly.loop_header384, label %polly.loop_header368

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
  %exitcond836.not = icmp eq i64 %polly.indvar_next378, 80
  br i1 %exitcond836.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header384:                             ; preds = %polly.loop_exit376, %polly.loop_exit398.3
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit398.3 ], [ 0, %polly.loop_exit376 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit398.3 ], [ 0, %polly.loop_exit376 ]
  %smin829 = call i64 @llvm.smin.i64(i64 %indvars.iv827, i64 -52)
  %115 = add nsw i64 %smin829, 60
  %116 = shl nsw i64 %polly.indvar387, 3
  br label %polly.loop_header396

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.loop_header384
  %indvars.iv823 = phi i64 [ %indvars.iv.next824, %polly.loop_exit404 ], [ 0, %polly.loop_header384 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_header384 ]
  %smin825 = call i64 @llvm.smin.i64(i64 %indvars.iv823, i64 19)
  %117 = mul nuw nsw i64 %polly.indvar399, 480
  %scevgep425 = getelementptr i8, i8* %call1, i64 %117
  %118 = mul nuw nsw i64 %polly.indvar399, 640
  %scevgep429 = getelementptr i8, i8* %call, i64 %118
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit410
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %indvars.iv.next824 = add nuw nsw i64 %indvars.iv823, 1
  %exitcond833.not = icmp eq i64 %indvars.iv.next824, 80
  br i1 %exitcond833.not, label %polly.loop_header396.1, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit410, %polly.loop_header396
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header396 ], [ %polly.indvar_next406, %polly.loop_exit410 ]
  %119 = add nuw nsw i64 %polly.indvar405, %116
  %120 = shl i64 %119, 3
  %polly.access.mul.Packed_MemRef_call2269417 = mul nuw nsw i64 %119, 80
  %polly.access.add.Packed_MemRef_call2269418 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417, %polly.indvar399
  %polly.access.Packed_MemRef_call2269419 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418
  %_p_scalar_420 = load double, double* %polly.access.Packed_MemRef_call2269419, align 8
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %120
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next406, %115
  br i1 %exitcond830.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %121 = mul nuw nsw i64 %polly.indvar411, 480
  %122 = add nuw nsw i64 %121, %120
  %scevgep414 = getelementptr i8, i8* %call1, i64 %122
  %scevgep414415 = bitcast i8* %scevgep414 to double*
  %_p_scalar_416 = load double, double* %scevgep414415, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73 = fmul fast double %_p_scalar_420, %_p_scalar_416
  %polly.access.add.Packed_MemRef_call2269422 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2269417
  %polly.access.Packed_MemRef_call2269423 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422
  %_p_scalar_424 = load double, double* %polly.access.Packed_MemRef_call2269423, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_428, %_p_scalar_424
  %123 = shl i64 %polly.indvar411, 3
  %scevgep430 = getelementptr i8, i8* %scevgep429, i64 %123
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_432
  store double %p_add42.i79, double* %scevgep430431, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond826.not = icmp eq i64 %polly.indvar411, %smin825
  br i1 %exitcond826.not, label %polly.loop_exit410, label %polly.loop_header408

polly.start435:                                   ; preds = %init_array.exit
  %malloccall437 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header521

polly.exiting436:                                 ; preds = %polly.loop_exit567.3
  tail call void @free(i8* nonnull %malloccall437)
  br label %kernel_syr2k.exit

polly.loop_header521:                             ; preds = %polly.loop_exit529, %polly.start435
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit529 ], [ 0, %polly.start435 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 1, %polly.start435 ]
  %124 = add i64 %indvar, 1
  %125 = mul nuw nsw i64 %polly.indvar524, 640
  %scevgep533 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1235 = icmp ult i64 %124, 4
  br i1 %min.iters.check1235, label %polly.loop_header527.preheader, label %vector.ph1236

vector.ph1236:                                    ; preds = %polly.loop_header521
  %n.vec1238 = and i64 %124, -4
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %vector.ph1236
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1240, %vector.body1234 ]
  %126 = shl nuw nsw i64 %index1239, 3
  %127 = getelementptr i8, i8* %scevgep533, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1243 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !84, !noalias !86
  %129 = fmul fast <4 x double> %wide.load1243, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !84, !noalias !86
  %index.next1240 = add i64 %index1239, 4
  %131 = icmp eq i64 %index.next1240, %n.vec1238
  br i1 %131, label %middle.block1232, label %vector.body1234, !llvm.loop !90

middle.block1232:                                 ; preds = %vector.body1234
  %cmp.n1242 = icmp eq i64 %124, %n.vec1238
  br i1 %cmp.n1242, label %polly.loop_exit529, label %polly.loop_header527.preheader

polly.loop_header527.preheader:                   ; preds = %polly.loop_header521, %middle.block1232
  %polly.indvar530.ph = phi i64 [ 0, %polly.loop_header521 ], [ %n.vec1238, %middle.block1232 ]
  br label %polly.loop_header527

polly.loop_exit529:                               ; preds = %polly.loop_header527, %middle.block1232
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next525, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond856.not, label %polly.loop_header537.preheader, label %polly.loop_header521

polly.loop_header537.preheader:                   ; preds = %polly.loop_exit529
  %Packed_MemRef_call2438 = bitcast i8* %malloccall437 to double*
  br label %polly.loop_header537

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_header527
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_header527 ], [ %polly.indvar530.ph, %polly.loop_header527.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar530, 3
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 %132
  %scevgep534535 = bitcast i8* %scevgep534 to double*
  %_p_scalar_536 = load double, double* %scevgep534535, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_536, 1.200000e+00
  store double %p_mul.i, double* %scevgep534535, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next531, %polly.indvar524
  br i1 %exitcond855.not, label %polly.loop_exit529, label %polly.loop_header527, !llvm.loop !91

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_exit545
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_exit545 ], [ 0, %polly.loop_header537.preheader ]
  %polly.access.mul.Packed_MemRef_call2438 = mul nuw nsw i64 %polly.indvar540, 80
  br label %polly.loop_header543

polly.loop_exit545:                               ; preds = %polly.loop_header543
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next541, 60
  br i1 %exitcond854.not, label %polly.loop_header553, label %polly.loop_header537

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
  %exitcond853.not = icmp eq i64 %polly.indvar_next547, 80
  br i1 %exitcond853.not, label %polly.loop_exit545, label %polly.loop_header543

polly.loop_header553:                             ; preds = %polly.loop_exit545, %polly.loop_exit567.3
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit567.3 ], [ 0, %polly.loop_exit545 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit567.3 ], [ 0, %polly.loop_exit545 ]
  %smin846 = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 -52)
  %133 = add nsw i64 %smin846, 60
  %134 = shl nsw i64 %polly.indvar556, 3
  br label %polly.loop_header565

polly.loop_header565:                             ; preds = %polly.loop_exit573, %polly.loop_header553
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit573 ], [ 0, %polly.loop_header553 ]
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ 0, %polly.loop_header553 ]
  %smin842 = call i64 @llvm.smin.i64(i64 %indvars.iv840, i64 19)
  %135 = mul nuw nsw i64 %polly.indvar568, 480
  %scevgep594 = getelementptr i8, i8* %call1, i64 %135
  %136 = mul nuw nsw i64 %polly.indvar568, 640
  %scevgep598 = getelementptr i8, i8* %call, i64 %136
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit579
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1
  %exitcond850.not = icmp eq i64 %indvars.iv.next841, 80
  br i1 %exitcond850.not, label %polly.loop_header565.1, label %polly.loop_header565

polly.loop_header571:                             ; preds = %polly.loop_exit579, %polly.loop_header565
  %polly.indvar574 = phi i64 [ 0, %polly.loop_header565 ], [ %polly.indvar_next575, %polly.loop_exit579 ]
  %137 = add nuw nsw i64 %polly.indvar574, %134
  %138 = shl i64 %137, 3
  %polly.access.mul.Packed_MemRef_call2438586 = mul nuw nsw i64 %137, 80
  %polly.access.add.Packed_MemRef_call2438587 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586, %polly.indvar568
  %polly.access.Packed_MemRef_call2438588 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2438588, align 8
  %scevgep595 = getelementptr i8, i8* %scevgep594, i64 %138
  %scevgep595596 = bitcast i8* %scevgep595 to double*
  %_p_scalar_597 = load double, double* %scevgep595596, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_header577
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next575, %133
  br i1 %exitcond847.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header577:                             ; preds = %polly.loop_header577, %polly.loop_header571
  %polly.indvar580 = phi i64 [ 0, %polly.loop_header571 ], [ %polly.indvar_next581, %polly.loop_header577 ]
  %139 = mul nuw nsw i64 %polly.indvar580, 480
  %140 = add nuw nsw i64 %139, %138
  %scevgep583 = getelementptr i8, i8* %call1, i64 %140
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i = fmul fast double %_p_scalar_589, %_p_scalar_585
  %polly.access.add.Packed_MemRef_call2438591 = add nuw nsw i64 %polly.indvar580, %polly.access.mul.Packed_MemRef_call2438586
  %polly.access.Packed_MemRef_call2438592 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591
  %_p_scalar_593 = load double, double* %polly.access.Packed_MemRef_call2438592, align 8
  %p_mul37.i = fmul fast double %_p_scalar_597, %_p_scalar_593
  %141 = shl i64 %polly.indvar580, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %141
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_601
  store double %p_add42.i, double* %scevgep599600, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %exitcond843.not = icmp eq i64 %polly.indvar580, %smin842
  br i1 %exitcond843.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %142 = mul nuw nsw i64 %polly.indvar743, 640
  %143 = trunc i64 %polly.indvar743 to i32
  %broadcast.splatinsert966 = insertelement <4 x i32> poison, i32 %143, i32 0
  %broadcast.splat967 = shufflevector <4 x i32> %broadcast.splatinsert966, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %polly.loop_header740
  %index958 = phi i64 [ 0, %polly.loop_header740 ], [ %index.next959, %vector.body956 ]
  %vec.ind964 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740 ], [ %vec.ind.next965, %vector.body956 ]
  %144 = mul <4 x i32> %vec.ind964, %broadcast.splat967
  %145 = add <4 x i32> %144, <i32 3, i32 3, i32 3, i32 3>
  %146 = urem <4 x i32> %145, <i32 80, i32 80, i32 80, i32 80>
  %147 = sitofp <4 x i32> %146 to <4 x double>
  %148 = fmul fast <4 x double> %147, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %149 = shl i64 %index958, 3
  %150 = add nuw nsw i64 %149, %142
  %151 = getelementptr i8, i8* %call, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %148, <4 x double>* %152, align 8, !alias.scope !94, !noalias !96
  %index.next959 = add i64 %index958, 4
  %vec.ind.next965 = add <4 x i32> %vec.ind964, <i32 4, i32 4, i32 4, i32 4>
  %153 = icmp eq i64 %index.next959, 32
  br i1 %153, label %polly.loop_exit748, label %vector.body956, !llvm.loop !99

polly.loop_exit748:                               ; preds = %vector.body956
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next744, 32
  br i1 %exitcond876.not, label %polly.loop_header740.1, label %polly.loop_header740

polly.loop_header767:                             ; preds = %polly.loop_exit748.2.2, %polly.loop_exit775
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748.2.2 ]
  %154 = mul nuw nsw i64 %polly.indvar770, 480
  %155 = trunc i64 %polly.indvar770 to i32
  %broadcast.splatinsert1080 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat1081 = shufflevector <4 x i32> %broadcast.splatinsert1080, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %polly.loop_header767
  %index1072 = phi i64 [ 0, %polly.loop_header767 ], [ %index.next1073, %vector.body1070 ]
  %vec.ind1078 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767 ], [ %vec.ind.next1079, %vector.body1070 ]
  %156 = mul <4 x i32> %vec.ind1078, %broadcast.splat1081
  %157 = add <4 x i32> %156, <i32 2, i32 2, i32 2, i32 2>
  %158 = urem <4 x i32> %157, <i32 60, i32 60, i32 60, i32 60>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %161 = shl i64 %index1072, 3
  %162 = add i64 %161, %154
  %163 = getelementptr i8, i8* %call2, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !98, !noalias !100
  %index.next1073 = add i64 %index1072, 4
  %vec.ind.next1079 = add <4 x i32> %vec.ind1078, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next1073, 32
  br i1 %165, label %polly.loop_exit775, label %vector.body1070, !llvm.loop !101

polly.loop_exit775:                               ; preds = %vector.body1070
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next771, 32
  br i1 %exitcond867.not, label %polly.loop_header767.1, label %polly.loop_header767

polly.loop_header793:                             ; preds = %polly.loop_exit775.1.2, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775.1.2 ]
  %166 = mul nuw nsw i64 %polly.indvar796, 480
  %167 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %polly.loop_header793
  %index1150 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1151, %vector.body1148 ]
  %vec.ind1156 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1157, %vector.body1148 ]
  %168 = mul <4 x i32> %vec.ind1156, %broadcast.splat1159
  %169 = add <4 x i32> %168, <i32 1, i32 1, i32 1, i32 1>
  %170 = urem <4 x i32> %169, <i32 80, i32 80, i32 80, i32 80>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %173 = shl i64 %index1150, 3
  %174 = add i64 %173, %166
  %175 = getelementptr i8, i8* %call1, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !97, !noalias !102
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1157 = add <4 x i32> %vec.ind1156, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next1151, 32
  br i1 %177, label %polly.loop_exit801, label %vector.body1148, !llvm.loop !103

polly.loop_exit801:                               ; preds = %vector.body1148
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond861.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header227.1:                           ; preds = %polly.loop_exit235, %polly.loop_exit235.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit235 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 20, %polly.loop_exit235 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 19)
  %178 = mul nuw nsw i64 %polly.indvar230.1, 480
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %178
  %179 = mul nuw nsw i64 %polly.indvar230.1, 640
  %scevgep260.1 = getelementptr i8, i8* %call, i64 %179
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_exit241.1 ]
  %180 = add nuw nsw i64 %polly.indvar236.1, %98
  %181 = shl i64 %180, 3
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %180, 80
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.1, %polly.indvar230.1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %scevgep257.1 = getelementptr i8, i8* %scevgep256.1, i64 %181
  %scevgep257258.1 = bitcast i8* %scevgep257.1 to double*
  %_p_scalar_259.1 = load double, double* %scevgep257258.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %182 = add nuw nsw i64 %polly.indvar242.1, 20
  %183 = mul nuw nsw i64 %182, 480
  %184 = add nuw nsw i64 %183, %181
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %184
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %182, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_259.1, %_p_scalar_255.1
  %185 = shl i64 %182, 3
  %scevgep261.1 = getelementptr i8, i8* %scevgep260.1, i64 %185
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
  %exitcond813.1.not = icmp eq i64 %polly.indvar_next237.1, %97
  br i1 %exitcond813.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond816.1.not = icmp eq i64 %indvars.iv.next.1, 60
  br i1 %exitcond816.1.not, label %polly.loop_header227.2, label %polly.loop_header227.1

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit235.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_exit235.1 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 40, %polly.loop_exit235.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.2, i64 19)
  %186 = mul nuw nsw i64 %polly.indvar230.2, 480
  %scevgep256.2 = getelementptr i8, i8* %call1, i64 %186
  %187 = mul nuw nsw i64 %polly.indvar230.2, 640
  %scevgep260.2 = getelementptr i8, i8* %call, i64 %187
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_exit241.2 ]
  %188 = add nuw nsw i64 %polly.indvar236.2, %98
  %189 = shl i64 %188, 3
  %polly.access.mul.Packed_MemRef_call2248.2 = mul nuw nsw i64 %188, 80
  %polly.access.add.Packed_MemRef_call2249.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.2, %polly.indvar230.2
  %polly.access.Packed_MemRef_call2250.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2
  %_p_scalar_251.2 = load double, double* %polly.access.Packed_MemRef_call2250.2, align 8
  %scevgep257.2 = getelementptr i8, i8* %scevgep256.2, i64 %189
  %scevgep257258.2 = bitcast i8* %scevgep257.2 to double*
  %_p_scalar_259.2 = load double, double* %scevgep257258.2, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_header233.2
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_header233.2 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %190 = add nuw nsw i64 %polly.indvar242.2, 40
  %191 = mul nuw nsw i64 %190, 480
  %192 = add nuw nsw i64 %191, %189
  %scevgep245.2 = getelementptr i8, i8* %call1, i64 %192
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_247.2
  %polly.access.add.Packed_MemRef_call2253.2 = add nuw nsw i64 %190, %polly.access.mul.Packed_MemRef_call2248.2
  %polly.access.Packed_MemRef_call2254.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2
  %_p_scalar_255.2 = load double, double* %polly.access.Packed_MemRef_call2254.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_259.2, %_p_scalar_255.2
  %193 = shl i64 %190, 3
  %scevgep261.2 = getelementptr i8, i8* %scevgep260.2, i64 %193
  %scevgep261262.2 = bitcast i8* %scevgep261.2 to double*
  %_p_scalar_263.2 = load double, double* %scevgep261262.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_263.2
  store double %p_add42.i118.2, double* %scevgep261262.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar242.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond813.2.not = icmp eq i64 %polly.indvar_next237.2, %97
  br i1 %exitcond813.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond816.2.not = icmp eq i64 %indvars.iv.next.2, 40
  br i1 %exitcond816.2.not, label %polly.loop_header227.3, label %polly.loop_header227.2

polly.loop_header227.3:                           ; preds = %polly.loop_exit235.2, %polly.loop_exit235.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit235.3 ], [ 0, %polly.loop_exit235.2 ]
  %polly.indvar230.3 = phi i64 [ %polly.indvar_next231.3, %polly.loop_exit235.3 ], [ 60, %polly.loop_exit235.2 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.3, i64 19)
  %194 = mul nuw nsw i64 %polly.indvar230.3, 480
  %scevgep256.3 = getelementptr i8, i8* %call1, i64 %194
  %195 = mul nuw nsw i64 %polly.indvar230.3, 640
  %scevgep260.3 = getelementptr i8, i8* %call, i64 %195
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_exit241.3, %polly.loop_header227.3
  %polly.indvar236.3 = phi i64 [ 0, %polly.loop_header227.3 ], [ %polly.indvar_next237.3, %polly.loop_exit241.3 ]
  %196 = add nuw nsw i64 %polly.indvar236.3, %98
  %197 = shl i64 %196, 3
  %polly.access.mul.Packed_MemRef_call2248.3 = mul nuw nsw i64 %196, 80
  %polly.access.add.Packed_MemRef_call2249.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.3, %polly.indvar230.3
  %polly.access.Packed_MemRef_call2250.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.3
  %_p_scalar_251.3 = load double, double* %polly.access.Packed_MemRef_call2250.3, align 8
  %scevgep257.3 = getelementptr i8, i8* %scevgep256.3, i64 %197
  %scevgep257258.3 = bitcast i8* %scevgep257.3 to double*
  %_p_scalar_259.3 = load double, double* %scevgep257258.3, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_header239.3, %polly.loop_header233.3
  %polly.indvar242.3 = phi i64 [ 0, %polly.loop_header233.3 ], [ %polly.indvar_next243.3, %polly.loop_header239.3 ]
  %198 = add nuw nsw i64 %polly.indvar242.3, 60
  %199 = mul nuw nsw i64 %198, 480
  %200 = add nuw nsw i64 %199, %197
  %scevgep245.3 = getelementptr i8, i8* %call1, i64 %200
  %scevgep245246.3 = bitcast i8* %scevgep245.3 to double*
  %_p_scalar_247.3 = load double, double* %scevgep245246.3, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.3 = fmul fast double %_p_scalar_251.3, %_p_scalar_247.3
  %polly.access.add.Packed_MemRef_call2253.3 = add nuw nsw i64 %198, %polly.access.mul.Packed_MemRef_call2248.3
  %polly.access.Packed_MemRef_call2254.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.3
  %_p_scalar_255.3 = load double, double* %polly.access.Packed_MemRef_call2254.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_259.3, %_p_scalar_255.3
  %201 = shl i64 %198, 3
  %scevgep261.3 = getelementptr i8, i8* %scevgep260.3, i64 %201
  %scevgep261262.3 = bitcast i8* %scevgep261.3 to double*
  %_p_scalar_263.3 = load double, double* %scevgep261262.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_263.3
  store double %p_add42.i118.3, double* %scevgep261262.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar242.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.3

polly.loop_exit241.3:                             ; preds = %polly.loop_header239.3
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %exitcond813.3.not = icmp eq i64 %polly.indvar_next237.3, %97
  br i1 %exitcond813.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_exit241.3
  %polly.indvar_next231.3 = add nuw nsw i64 %polly.indvar230.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond816.3.not = icmp eq i64 %indvars.iv.next.3, 20
  br i1 %exitcond816.3.not, label %polly.loop_exit229.3, label %polly.loop_header227.3

polly.loop_exit229.3:                             ; preds = %polly.loop_exit235.3
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next811 = add nsw i64 %indvars.iv810, -8
  %exitcond818.not = icmp eq i64 %polly.indvar_next219, 8
  br i1 %exitcond818.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header396.1:                           ; preds = %polly.loop_exit404, %polly.loop_exit404.1
  %indvars.iv823.1 = phi i64 [ %indvars.iv.next824.1, %polly.loop_exit404.1 ], [ 0, %polly.loop_exit404 ]
  %polly.indvar399.1 = phi i64 [ %polly.indvar_next400.1, %polly.loop_exit404.1 ], [ 20, %polly.loop_exit404 ]
  %smin825.1 = call i64 @llvm.smin.i64(i64 %indvars.iv823.1, i64 19)
  %202 = mul nuw nsw i64 %polly.indvar399.1, 480
  %scevgep425.1 = getelementptr i8, i8* %call1, i64 %202
  %203 = mul nuw nsw i64 %polly.indvar399.1, 640
  %scevgep429.1 = getelementptr i8, i8* %call, i64 %203
  br label %polly.loop_header402.1

polly.loop_header402.1:                           ; preds = %polly.loop_exit410.1, %polly.loop_header396.1
  %polly.indvar405.1 = phi i64 [ 0, %polly.loop_header396.1 ], [ %polly.indvar_next406.1, %polly.loop_exit410.1 ]
  %204 = add nuw nsw i64 %polly.indvar405.1, %116
  %205 = shl i64 %204, 3
  %polly.access.mul.Packed_MemRef_call2269417.1 = mul nuw nsw i64 %204, 80
  %polly.access.add.Packed_MemRef_call2269418.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417.1, %polly.indvar399.1
  %polly.access.Packed_MemRef_call2269419.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.1
  %_p_scalar_420.1 = load double, double* %polly.access.Packed_MemRef_call2269419.1, align 8
  %scevgep426.1 = getelementptr i8, i8* %scevgep425.1, i64 %205
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408.1

polly.loop_header408.1:                           ; preds = %polly.loop_header408.1, %polly.loop_header402.1
  %polly.indvar411.1 = phi i64 [ 0, %polly.loop_header402.1 ], [ %polly.indvar_next412.1, %polly.loop_header408.1 ]
  %206 = add nuw nsw i64 %polly.indvar411.1, 20
  %207 = mul nuw nsw i64 %206, 480
  %208 = add nuw nsw i64 %207, %205
  %scevgep414.1 = getelementptr i8, i8* %call1, i64 %208
  %scevgep414415.1 = bitcast i8* %scevgep414.1 to double*
  %_p_scalar_416.1 = load double, double* %scevgep414415.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.1 = fmul fast double %_p_scalar_420.1, %_p_scalar_416.1
  %polly.access.add.Packed_MemRef_call2269422.1 = add nuw nsw i64 %206, %polly.access.mul.Packed_MemRef_call2269417.1
  %polly.access.Packed_MemRef_call2269423.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.1
  %_p_scalar_424.1 = load double, double* %polly.access.Packed_MemRef_call2269423.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_428.1, %_p_scalar_424.1
  %209 = shl i64 %206, 3
  %scevgep430.1 = getelementptr i8, i8* %scevgep429.1, i64 %209
  %scevgep430431.1 = bitcast i8* %scevgep430.1 to double*
  %_p_scalar_432.1 = load double, double* %scevgep430431.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_432.1
  store double %p_add42.i79.1, double* %scevgep430431.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412.1 = add nuw nsw i64 %polly.indvar411.1, 1
  %exitcond826.1.not = icmp eq i64 %polly.indvar411.1, %smin825.1
  br i1 %exitcond826.1.not, label %polly.loop_exit410.1, label %polly.loop_header408.1

polly.loop_exit410.1:                             ; preds = %polly.loop_header408.1
  %polly.indvar_next406.1 = add nuw nsw i64 %polly.indvar405.1, 1
  %exitcond830.1.not = icmp eq i64 %polly.indvar_next406.1, %115
  br i1 %exitcond830.1.not, label %polly.loop_exit404.1, label %polly.loop_header402.1

polly.loop_exit404.1:                             ; preds = %polly.loop_exit410.1
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %indvars.iv.next824.1 = add nuw nsw i64 %indvars.iv823.1, 1
  %exitcond833.1.not = icmp eq i64 %indvars.iv.next824.1, 60
  br i1 %exitcond833.1.not, label %polly.loop_header396.2, label %polly.loop_header396.1

polly.loop_header396.2:                           ; preds = %polly.loop_exit404.1, %polly.loop_exit404.2
  %indvars.iv823.2 = phi i64 [ %indvars.iv.next824.2, %polly.loop_exit404.2 ], [ 0, %polly.loop_exit404.1 ]
  %polly.indvar399.2 = phi i64 [ %polly.indvar_next400.2, %polly.loop_exit404.2 ], [ 40, %polly.loop_exit404.1 ]
  %smin825.2 = call i64 @llvm.smin.i64(i64 %indvars.iv823.2, i64 19)
  %210 = mul nuw nsw i64 %polly.indvar399.2, 480
  %scevgep425.2 = getelementptr i8, i8* %call1, i64 %210
  %211 = mul nuw nsw i64 %polly.indvar399.2, 640
  %scevgep429.2 = getelementptr i8, i8* %call, i64 %211
  br label %polly.loop_header402.2

polly.loop_header402.2:                           ; preds = %polly.loop_exit410.2, %polly.loop_header396.2
  %polly.indvar405.2 = phi i64 [ 0, %polly.loop_header396.2 ], [ %polly.indvar_next406.2, %polly.loop_exit410.2 ]
  %212 = add nuw nsw i64 %polly.indvar405.2, %116
  %213 = shl i64 %212, 3
  %polly.access.mul.Packed_MemRef_call2269417.2 = mul nuw nsw i64 %212, 80
  %polly.access.add.Packed_MemRef_call2269418.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417.2, %polly.indvar399.2
  %polly.access.Packed_MemRef_call2269419.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.2
  %_p_scalar_420.2 = load double, double* %polly.access.Packed_MemRef_call2269419.2, align 8
  %scevgep426.2 = getelementptr i8, i8* %scevgep425.2, i64 %213
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408.2

polly.loop_header408.2:                           ; preds = %polly.loop_header408.2, %polly.loop_header402.2
  %polly.indvar411.2 = phi i64 [ 0, %polly.loop_header402.2 ], [ %polly.indvar_next412.2, %polly.loop_header408.2 ]
  %214 = add nuw nsw i64 %polly.indvar411.2, 40
  %215 = mul nuw nsw i64 %214, 480
  %216 = add nuw nsw i64 %215, %213
  %scevgep414.2 = getelementptr i8, i8* %call1, i64 %216
  %scevgep414415.2 = bitcast i8* %scevgep414.2 to double*
  %_p_scalar_416.2 = load double, double* %scevgep414415.2, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.2 = fmul fast double %_p_scalar_420.2, %_p_scalar_416.2
  %polly.access.add.Packed_MemRef_call2269422.2 = add nuw nsw i64 %214, %polly.access.mul.Packed_MemRef_call2269417.2
  %polly.access.Packed_MemRef_call2269423.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.2
  %_p_scalar_424.2 = load double, double* %polly.access.Packed_MemRef_call2269423.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_428.2, %_p_scalar_424.2
  %217 = shl i64 %214, 3
  %scevgep430.2 = getelementptr i8, i8* %scevgep429.2, i64 %217
  %scevgep430431.2 = bitcast i8* %scevgep430.2 to double*
  %_p_scalar_432.2 = load double, double* %scevgep430431.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_432.2
  store double %p_add42.i79.2, double* %scevgep430431.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412.2 = add nuw nsw i64 %polly.indvar411.2, 1
  %exitcond826.2.not = icmp eq i64 %polly.indvar411.2, %smin825.2
  br i1 %exitcond826.2.not, label %polly.loop_exit410.2, label %polly.loop_header408.2

polly.loop_exit410.2:                             ; preds = %polly.loop_header408.2
  %polly.indvar_next406.2 = add nuw nsw i64 %polly.indvar405.2, 1
  %exitcond830.2.not = icmp eq i64 %polly.indvar_next406.2, %115
  br i1 %exitcond830.2.not, label %polly.loop_exit404.2, label %polly.loop_header402.2

polly.loop_exit404.2:                             ; preds = %polly.loop_exit410.2
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %indvars.iv.next824.2 = add nuw nsw i64 %indvars.iv823.2, 1
  %exitcond833.2.not = icmp eq i64 %indvars.iv.next824.2, 40
  br i1 %exitcond833.2.not, label %polly.loop_header396.3, label %polly.loop_header396.2

polly.loop_header396.3:                           ; preds = %polly.loop_exit404.2, %polly.loop_exit404.3
  %indvars.iv823.3 = phi i64 [ %indvars.iv.next824.3, %polly.loop_exit404.3 ], [ 0, %polly.loop_exit404.2 ]
  %polly.indvar399.3 = phi i64 [ %polly.indvar_next400.3, %polly.loop_exit404.3 ], [ 60, %polly.loop_exit404.2 ]
  %smin825.3 = call i64 @llvm.smin.i64(i64 %indvars.iv823.3, i64 19)
  %218 = mul nuw nsw i64 %polly.indvar399.3, 480
  %scevgep425.3 = getelementptr i8, i8* %call1, i64 %218
  %219 = mul nuw nsw i64 %polly.indvar399.3, 640
  %scevgep429.3 = getelementptr i8, i8* %call, i64 %219
  br label %polly.loop_header402.3

polly.loop_header402.3:                           ; preds = %polly.loop_exit410.3, %polly.loop_header396.3
  %polly.indvar405.3 = phi i64 [ 0, %polly.loop_header396.3 ], [ %polly.indvar_next406.3, %polly.loop_exit410.3 ]
  %220 = add nuw nsw i64 %polly.indvar405.3, %116
  %221 = shl i64 %220, 3
  %polly.access.mul.Packed_MemRef_call2269417.3 = mul nuw nsw i64 %220, 80
  %polly.access.add.Packed_MemRef_call2269418.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269417.3, %polly.indvar399.3
  %polly.access.Packed_MemRef_call2269419.3 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.3
  %_p_scalar_420.3 = load double, double* %polly.access.Packed_MemRef_call2269419.3, align 8
  %scevgep426.3 = getelementptr i8, i8* %scevgep425.3, i64 %221
  %scevgep426427.3 = bitcast i8* %scevgep426.3 to double*
  %_p_scalar_428.3 = load double, double* %scevgep426427.3, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header408.3

polly.loop_header408.3:                           ; preds = %polly.loop_header408.3, %polly.loop_header402.3
  %polly.indvar411.3 = phi i64 [ 0, %polly.loop_header402.3 ], [ %polly.indvar_next412.3, %polly.loop_header408.3 ]
  %222 = add nuw nsw i64 %polly.indvar411.3, 60
  %223 = mul nuw nsw i64 %222, 480
  %224 = add nuw nsw i64 %223, %221
  %scevgep414.3 = getelementptr i8, i8* %call1, i64 %224
  %scevgep414415.3 = bitcast i8* %scevgep414.3 to double*
  %_p_scalar_416.3 = load double, double* %scevgep414415.3, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.3 = fmul fast double %_p_scalar_420.3, %_p_scalar_416.3
  %polly.access.add.Packed_MemRef_call2269422.3 = add nuw nsw i64 %222, %polly.access.mul.Packed_MemRef_call2269417.3
  %polly.access.Packed_MemRef_call2269423.3 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.3
  %_p_scalar_424.3 = load double, double* %polly.access.Packed_MemRef_call2269423.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_428.3, %_p_scalar_424.3
  %225 = shl i64 %222, 3
  %scevgep430.3 = getelementptr i8, i8* %scevgep429.3, i64 %225
  %scevgep430431.3 = bitcast i8* %scevgep430.3 to double*
  %_p_scalar_432.3 = load double, double* %scevgep430431.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_432.3
  store double %p_add42.i79.3, double* %scevgep430431.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next412.3 = add nuw nsw i64 %polly.indvar411.3, 1
  %exitcond826.3.not = icmp eq i64 %polly.indvar411.3, %smin825.3
  br i1 %exitcond826.3.not, label %polly.loop_exit410.3, label %polly.loop_header408.3

polly.loop_exit410.3:                             ; preds = %polly.loop_header408.3
  %polly.indvar_next406.3 = add nuw nsw i64 %polly.indvar405.3, 1
  %exitcond830.3.not = icmp eq i64 %polly.indvar_next406.3, %115
  br i1 %exitcond830.3.not, label %polly.loop_exit404.3, label %polly.loop_header402.3

polly.loop_exit404.3:                             ; preds = %polly.loop_exit410.3
  %polly.indvar_next400.3 = add nuw nsw i64 %polly.indvar399.3, 1
  %indvars.iv.next824.3 = add nuw nsw i64 %indvars.iv823.3, 1
  %exitcond833.3.not = icmp eq i64 %indvars.iv.next824.3, 20
  br i1 %exitcond833.3.not, label %polly.loop_exit398.3, label %polly.loop_header396.3

polly.loop_exit398.3:                             ; preds = %polly.loop_exit404.3
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %indvars.iv.next828 = add nsw i64 %indvars.iv827, -8
  %exitcond835.not = icmp eq i64 %polly.indvar_next388, 8
  br i1 %exitcond835.not, label %polly.exiting267, label %polly.loop_header384

polly.loop_header565.1:                           ; preds = %polly.loop_exit573, %polly.loop_exit573.1
  %indvars.iv840.1 = phi i64 [ %indvars.iv.next841.1, %polly.loop_exit573.1 ], [ 0, %polly.loop_exit573 ]
  %polly.indvar568.1 = phi i64 [ %polly.indvar_next569.1, %polly.loop_exit573.1 ], [ 20, %polly.loop_exit573 ]
  %smin842.1 = call i64 @llvm.smin.i64(i64 %indvars.iv840.1, i64 19)
  %226 = mul nuw nsw i64 %polly.indvar568.1, 480
  %scevgep594.1 = getelementptr i8, i8* %call1, i64 %226
  %227 = mul nuw nsw i64 %polly.indvar568.1, 640
  %scevgep598.1 = getelementptr i8, i8* %call, i64 %227
  br label %polly.loop_header571.1

polly.loop_header571.1:                           ; preds = %polly.loop_exit579.1, %polly.loop_header565.1
  %polly.indvar574.1 = phi i64 [ 0, %polly.loop_header565.1 ], [ %polly.indvar_next575.1, %polly.loop_exit579.1 ]
  %228 = add nuw nsw i64 %polly.indvar574.1, %134
  %229 = shl i64 %228, 3
  %polly.access.mul.Packed_MemRef_call2438586.1 = mul nuw nsw i64 %228, 80
  %polly.access.add.Packed_MemRef_call2438587.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586.1, %polly.indvar568.1
  %polly.access.Packed_MemRef_call2438588.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2438588.1, align 8
  %scevgep595.1 = getelementptr i8, i8* %scevgep594.1, i64 %229
  %scevgep595596.1 = bitcast i8* %scevgep595.1 to double*
  %_p_scalar_597.1 = load double, double* %scevgep595596.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577.1

polly.loop_header577.1:                           ; preds = %polly.loop_header577.1, %polly.loop_header571.1
  %polly.indvar580.1 = phi i64 [ 0, %polly.loop_header571.1 ], [ %polly.indvar_next581.1, %polly.loop_header577.1 ]
  %230 = add nuw nsw i64 %polly.indvar580.1, 20
  %231 = mul nuw nsw i64 %230, 480
  %232 = add nuw nsw i64 %231, %229
  %scevgep583.1 = getelementptr i8, i8* %call1, i64 %232
  %scevgep583584.1 = bitcast i8* %scevgep583.1 to double*
  %_p_scalar_585.1 = load double, double* %scevgep583584.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.1 = fmul fast double %_p_scalar_589.1, %_p_scalar_585.1
  %polly.access.add.Packed_MemRef_call2438591.1 = add nuw nsw i64 %230, %polly.access.mul.Packed_MemRef_call2438586.1
  %polly.access.Packed_MemRef_call2438592.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.1
  %_p_scalar_593.1 = load double, double* %polly.access.Packed_MemRef_call2438592.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_597.1, %_p_scalar_593.1
  %233 = shl i64 %230, 3
  %scevgep599.1 = getelementptr i8, i8* %scevgep598.1, i64 %233
  %scevgep599600.1 = bitcast i8* %scevgep599.1 to double*
  %_p_scalar_601.1 = load double, double* %scevgep599600.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_601.1
  store double %p_add42.i.1, double* %scevgep599600.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581.1 = add nuw nsw i64 %polly.indvar580.1, 1
  %exitcond843.1.not = icmp eq i64 %polly.indvar580.1, %smin842.1
  br i1 %exitcond843.1.not, label %polly.loop_exit579.1, label %polly.loop_header577.1

polly.loop_exit579.1:                             ; preds = %polly.loop_header577.1
  %polly.indvar_next575.1 = add nuw nsw i64 %polly.indvar574.1, 1
  %exitcond847.1.not = icmp eq i64 %polly.indvar_next575.1, %133
  br i1 %exitcond847.1.not, label %polly.loop_exit573.1, label %polly.loop_header571.1

polly.loop_exit573.1:                             ; preds = %polly.loop_exit579.1
  %polly.indvar_next569.1 = add nuw nsw i64 %polly.indvar568.1, 1
  %indvars.iv.next841.1 = add nuw nsw i64 %indvars.iv840.1, 1
  %exitcond850.1.not = icmp eq i64 %indvars.iv.next841.1, 60
  br i1 %exitcond850.1.not, label %polly.loop_header565.2, label %polly.loop_header565.1

polly.loop_header565.2:                           ; preds = %polly.loop_exit573.1, %polly.loop_exit573.2
  %indvars.iv840.2 = phi i64 [ %indvars.iv.next841.2, %polly.loop_exit573.2 ], [ 0, %polly.loop_exit573.1 ]
  %polly.indvar568.2 = phi i64 [ %polly.indvar_next569.2, %polly.loop_exit573.2 ], [ 40, %polly.loop_exit573.1 ]
  %smin842.2 = call i64 @llvm.smin.i64(i64 %indvars.iv840.2, i64 19)
  %234 = mul nuw nsw i64 %polly.indvar568.2, 480
  %scevgep594.2 = getelementptr i8, i8* %call1, i64 %234
  %235 = mul nuw nsw i64 %polly.indvar568.2, 640
  %scevgep598.2 = getelementptr i8, i8* %call, i64 %235
  br label %polly.loop_header571.2

polly.loop_header571.2:                           ; preds = %polly.loop_exit579.2, %polly.loop_header565.2
  %polly.indvar574.2 = phi i64 [ 0, %polly.loop_header565.2 ], [ %polly.indvar_next575.2, %polly.loop_exit579.2 ]
  %236 = add nuw nsw i64 %polly.indvar574.2, %134
  %237 = shl i64 %236, 3
  %polly.access.mul.Packed_MemRef_call2438586.2 = mul nuw nsw i64 %236, 80
  %polly.access.add.Packed_MemRef_call2438587.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586.2, %polly.indvar568.2
  %polly.access.Packed_MemRef_call2438588.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.2
  %_p_scalar_589.2 = load double, double* %polly.access.Packed_MemRef_call2438588.2, align 8
  %scevgep595.2 = getelementptr i8, i8* %scevgep594.2, i64 %237
  %scevgep595596.2 = bitcast i8* %scevgep595.2 to double*
  %_p_scalar_597.2 = load double, double* %scevgep595596.2, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577.2

polly.loop_header577.2:                           ; preds = %polly.loop_header577.2, %polly.loop_header571.2
  %polly.indvar580.2 = phi i64 [ 0, %polly.loop_header571.2 ], [ %polly.indvar_next581.2, %polly.loop_header577.2 ]
  %238 = add nuw nsw i64 %polly.indvar580.2, 40
  %239 = mul nuw nsw i64 %238, 480
  %240 = add nuw nsw i64 %239, %237
  %scevgep583.2 = getelementptr i8, i8* %call1, i64 %240
  %scevgep583584.2 = bitcast i8* %scevgep583.2 to double*
  %_p_scalar_585.2 = load double, double* %scevgep583584.2, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.2 = fmul fast double %_p_scalar_589.2, %_p_scalar_585.2
  %polly.access.add.Packed_MemRef_call2438591.2 = add nuw nsw i64 %238, %polly.access.mul.Packed_MemRef_call2438586.2
  %polly.access.Packed_MemRef_call2438592.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.2
  %_p_scalar_593.2 = load double, double* %polly.access.Packed_MemRef_call2438592.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_597.2, %_p_scalar_593.2
  %241 = shl i64 %238, 3
  %scevgep599.2 = getelementptr i8, i8* %scevgep598.2, i64 %241
  %scevgep599600.2 = bitcast i8* %scevgep599.2 to double*
  %_p_scalar_601.2 = load double, double* %scevgep599600.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_601.2
  store double %p_add42.i.2, double* %scevgep599600.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581.2 = add nuw nsw i64 %polly.indvar580.2, 1
  %exitcond843.2.not = icmp eq i64 %polly.indvar580.2, %smin842.2
  br i1 %exitcond843.2.not, label %polly.loop_exit579.2, label %polly.loop_header577.2

polly.loop_exit579.2:                             ; preds = %polly.loop_header577.2
  %polly.indvar_next575.2 = add nuw nsw i64 %polly.indvar574.2, 1
  %exitcond847.2.not = icmp eq i64 %polly.indvar_next575.2, %133
  br i1 %exitcond847.2.not, label %polly.loop_exit573.2, label %polly.loop_header571.2

polly.loop_exit573.2:                             ; preds = %polly.loop_exit579.2
  %polly.indvar_next569.2 = add nuw nsw i64 %polly.indvar568.2, 1
  %indvars.iv.next841.2 = add nuw nsw i64 %indvars.iv840.2, 1
  %exitcond850.2.not = icmp eq i64 %indvars.iv.next841.2, 40
  br i1 %exitcond850.2.not, label %polly.loop_header565.3, label %polly.loop_header565.2

polly.loop_header565.3:                           ; preds = %polly.loop_exit573.2, %polly.loop_exit573.3
  %indvars.iv840.3 = phi i64 [ %indvars.iv.next841.3, %polly.loop_exit573.3 ], [ 0, %polly.loop_exit573.2 ]
  %polly.indvar568.3 = phi i64 [ %polly.indvar_next569.3, %polly.loop_exit573.3 ], [ 60, %polly.loop_exit573.2 ]
  %smin842.3 = call i64 @llvm.smin.i64(i64 %indvars.iv840.3, i64 19)
  %242 = mul nuw nsw i64 %polly.indvar568.3, 480
  %scevgep594.3 = getelementptr i8, i8* %call1, i64 %242
  %243 = mul nuw nsw i64 %polly.indvar568.3, 640
  %scevgep598.3 = getelementptr i8, i8* %call, i64 %243
  br label %polly.loop_header571.3

polly.loop_header571.3:                           ; preds = %polly.loop_exit579.3, %polly.loop_header565.3
  %polly.indvar574.3 = phi i64 [ 0, %polly.loop_header565.3 ], [ %polly.indvar_next575.3, %polly.loop_exit579.3 ]
  %244 = add nuw nsw i64 %polly.indvar574.3, %134
  %245 = shl i64 %244, 3
  %polly.access.mul.Packed_MemRef_call2438586.3 = mul nuw nsw i64 %244, 80
  %polly.access.add.Packed_MemRef_call2438587.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438586.3, %polly.indvar568.3
  %polly.access.Packed_MemRef_call2438588.3 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.3
  %_p_scalar_589.3 = load double, double* %polly.access.Packed_MemRef_call2438588.3, align 8
  %scevgep595.3 = getelementptr i8, i8* %scevgep594.3, i64 %245
  %scevgep595596.3 = bitcast i8* %scevgep595.3 to double*
  %_p_scalar_597.3 = load double, double* %scevgep595596.3, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header577.3

polly.loop_header577.3:                           ; preds = %polly.loop_header577.3, %polly.loop_header571.3
  %polly.indvar580.3 = phi i64 [ 0, %polly.loop_header571.3 ], [ %polly.indvar_next581.3, %polly.loop_header577.3 ]
  %246 = add nuw nsw i64 %polly.indvar580.3, 60
  %247 = mul nuw nsw i64 %246, 480
  %248 = add nuw nsw i64 %247, %245
  %scevgep583.3 = getelementptr i8, i8* %call1, i64 %248
  %scevgep583584.3 = bitcast i8* %scevgep583.3 to double*
  %_p_scalar_585.3 = load double, double* %scevgep583584.3, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.3 = fmul fast double %_p_scalar_589.3, %_p_scalar_585.3
  %polly.access.add.Packed_MemRef_call2438591.3 = add nuw nsw i64 %246, %polly.access.mul.Packed_MemRef_call2438586.3
  %polly.access.Packed_MemRef_call2438592.3 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.3
  %_p_scalar_593.3 = load double, double* %polly.access.Packed_MemRef_call2438592.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_597.3, %_p_scalar_593.3
  %249 = shl i64 %246, 3
  %scevgep599.3 = getelementptr i8, i8* %scevgep598.3, i64 %249
  %scevgep599600.3 = bitcast i8* %scevgep599.3 to double*
  %_p_scalar_601.3 = load double, double* %scevgep599600.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_601.3
  store double %p_add42.i.3, double* %scevgep599600.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next581.3 = add nuw nsw i64 %polly.indvar580.3, 1
  %exitcond843.3.not = icmp eq i64 %polly.indvar580.3, %smin842.3
  br i1 %exitcond843.3.not, label %polly.loop_exit579.3, label %polly.loop_header577.3

polly.loop_exit579.3:                             ; preds = %polly.loop_header577.3
  %polly.indvar_next575.3 = add nuw nsw i64 %polly.indvar574.3, 1
  %exitcond847.3.not = icmp eq i64 %polly.indvar_next575.3, %133
  br i1 %exitcond847.3.not, label %polly.loop_exit573.3, label %polly.loop_header571.3

polly.loop_exit573.3:                             ; preds = %polly.loop_exit579.3
  %polly.indvar_next569.3 = add nuw nsw i64 %polly.indvar568.3, 1
  %indvars.iv.next841.3 = add nuw nsw i64 %indvars.iv840.3, 1
  %exitcond850.3.not = icmp eq i64 %indvars.iv.next841.3, 20
  br i1 %exitcond850.3.not, label %polly.loop_exit567.3, label %polly.loop_header565.3

polly.loop_exit567.3:                             ; preds = %polly.loop_exit573.3
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -8
  %exitcond852.not = icmp eq i64 %polly.indvar_next557, 8
  br i1 %exitcond852.not, label %polly.exiting436, label %polly.loop_header553

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %250 = mul nuw nsw i64 %polly.indvar796.1, 480
  %251 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1170 = insertelement <4 x i32> poison, i32 %251, i32 0
  %broadcast.splat1171 = shufflevector <4 x i32> %broadcast.splatinsert1170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %polly.loop_header793.1
  %index1164 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1168 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1169, %vector.body1162 ]
  %252 = add nuw nsw <4 x i64> %vec.ind1168, <i64 32, i64 32, i64 32, i64 32>
  %253 = trunc <4 x i64> %252 to <4 x i32>
  %254 = mul <4 x i32> %broadcast.splat1171, %253
  %255 = add <4 x i32> %254, <i32 1, i32 1, i32 1, i32 1>
  %256 = urem <4 x i32> %255, <i32 80, i32 80, i32 80, i32 80>
  %257 = sitofp <4 x i32> %256 to <4 x double>
  %258 = fmul fast <4 x double> %257, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %259 = extractelement <4 x i64> %252, i32 0
  %260 = shl i64 %259, 3
  %261 = add i64 %260, %250
  %262 = getelementptr i8, i8* %call1, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %258, <4 x double>* %263, align 8, !alias.scope !97, !noalias !102
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1169 = add <4 x i64> %vec.ind1168, <i64 4, i64 4, i64 4, i64 4>
  %264 = icmp eq i64 %index.next1165, 28
  br i1 %264, label %polly.loop_exit801.1, label %vector.body1162, !llvm.loop !104

polly.loop_exit801.1:                             ; preds = %vector.body1162
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond861.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond861.1.not, label %polly.loop_header793.1881, label %polly.loop_header793.1

polly.loop_header793.1881:                        ; preds = %polly.loop_exit801.1, %polly.loop_exit801.1892
  %polly.indvar796.1880 = phi i64 [ %polly.indvar_next797.1890, %polly.loop_exit801.1892 ], [ 0, %polly.loop_exit801.1 ]
  %265 = add nuw nsw i64 %polly.indvar796.1880, 32
  %266 = mul nuw nsw i64 %265, 480
  %267 = trunc i64 %265 to i32
  %broadcast.splatinsert1184 = insertelement <4 x i32> poison, i32 %267, i32 0
  %broadcast.splat1185 = shufflevector <4 x i32> %broadcast.splatinsert1184, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %polly.loop_header793.1881
  %index1176 = phi i64 [ 0, %polly.loop_header793.1881 ], [ %index.next1177, %vector.body1174 ]
  %vec.ind1182 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.1881 ], [ %vec.ind.next1183, %vector.body1174 ]
  %268 = mul <4 x i32> %vec.ind1182, %broadcast.splat1185
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 80, i32 80, i32 80, i32 80>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %273 = shl i64 %index1176, 3
  %274 = add i64 %273, %266
  %275 = getelementptr i8, i8* %call1, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %272, <4 x double>* %276, align 8, !alias.scope !97, !noalias !102
  %index.next1177 = add i64 %index1176, 4
  %vec.ind.next1183 = add <4 x i32> %vec.ind1182, <i32 4, i32 4, i32 4, i32 4>
  %277 = icmp eq i64 %index.next1177, 32
  br i1 %277, label %polly.loop_exit801.1892, label %vector.body1174, !llvm.loop !105

polly.loop_exit801.1892:                          ; preds = %vector.body1174
  %polly.indvar_next797.1890 = add nuw nsw i64 %polly.indvar796.1880, 1
  %exitcond861.1891.not = icmp eq i64 %polly.indvar_next797.1890, 32
  br i1 %exitcond861.1891.not, label %polly.loop_header793.1.1, label %polly.loop_header793.1881

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.1892, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.1892 ]
  %278 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %279 = mul nuw nsw i64 %278, 480
  %280 = trunc i64 %278 to i32
  %broadcast.splatinsert1196 = insertelement <4 x i32> poison, i32 %280, i32 0
  %broadcast.splat1197 = shufflevector <4 x i32> %broadcast.splatinsert1196, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %polly.loop_header793.1.1
  %index1190 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1195, %vector.body1188 ]
  %281 = add nuw nsw <4 x i64> %vec.ind1194, <i64 32, i64 32, i64 32, i64 32>
  %282 = trunc <4 x i64> %281 to <4 x i32>
  %283 = mul <4 x i32> %broadcast.splat1197, %282
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 80, i32 80, i32 80, i32 80>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %288 = extractelement <4 x i64> %281, i32 0
  %289 = shl i64 %288, 3
  %290 = add i64 %289, %279
  %291 = getelementptr i8, i8* %call1, i64 %290
  %292 = bitcast i8* %291 to <4 x double>*
  store <4 x double> %287, <4 x double>* %292, align 8, !alias.scope !97, !noalias !102
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %293 = icmp eq i64 %index.next1191, 28
  br i1 %293, label %polly.loop_exit801.1.1, label %vector.body1188, !llvm.loop !106

polly.loop_exit801.1.1:                           ; preds = %vector.body1188
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond861.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond861.1.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1.1 ]
  %294 = add nuw nsw i64 %polly.indvar796.2, 64
  %295 = mul nuw nsw i64 %294, 480
  %296 = trunc i64 %294 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %296, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %polly.loop_header793.2
  %index1202 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1203, %vector.body1200 ]
  %vec.ind1208 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.2 ], [ %vec.ind.next1209, %vector.body1200 ]
  %297 = mul <4 x i32> %vec.ind1208, %broadcast.splat1211
  %298 = add <4 x i32> %297, <i32 1, i32 1, i32 1, i32 1>
  %299 = urem <4 x i32> %298, <i32 80, i32 80, i32 80, i32 80>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %302 = shl i64 %index1202, 3
  %303 = add i64 %302, %295
  %304 = getelementptr i8, i8* %call1, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %301, <4 x double>* %305, align 8, !alias.scope !97, !noalias !102
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1209 = add <4 x i32> %vec.ind1208, <i32 4, i32 4, i32 4, i32 4>
  %306 = icmp eq i64 %index.next1203, 32
  br i1 %306, label %polly.loop_exit801.2, label %vector.body1200, !llvm.loop !107

polly.loop_exit801.2:                             ; preds = %vector.body1200
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond861.2.not = icmp eq i64 %polly.indvar_next797.2, 16
  br i1 %exitcond861.2.not, label %polly.loop_header793.1.2, label %polly.loop_header793.2

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.2, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.2 ]
  %307 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %308 = mul nuw nsw i64 %307, 480
  %309 = trunc i64 %307 to i32
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %polly.loop_header793.1.2
  %index1216 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1217, %vector.body1214 ]
  %vec.ind1220 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1221, %vector.body1214 ]
  %310 = add nuw nsw <4 x i64> %vec.ind1220, <i64 32, i64 32, i64 32, i64 32>
  %311 = trunc <4 x i64> %310 to <4 x i32>
  %312 = mul <4 x i32> %broadcast.splat1223, %311
  %313 = add <4 x i32> %312, <i32 1, i32 1, i32 1, i32 1>
  %314 = urem <4 x i32> %313, <i32 80, i32 80, i32 80, i32 80>
  %315 = sitofp <4 x i32> %314 to <4 x double>
  %316 = fmul fast <4 x double> %315, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %317 = extractelement <4 x i64> %310, i32 0
  %318 = shl i64 %317, 3
  %319 = add i64 %318, %308
  %320 = getelementptr i8, i8* %call1, i64 %319
  %321 = bitcast i8* %320 to <4 x double>*
  store <4 x double> %316, <4 x double>* %321, align 8, !alias.scope !97, !noalias !102
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1221 = add <4 x i64> %vec.ind1220, <i64 4, i64 4, i64 4, i64 4>
  %322 = icmp eq i64 %index.next1217, 28
  br i1 %322, label %polly.loop_exit801.1.2, label %vector.body1214, !llvm.loop !108

polly.loop_exit801.1.2:                           ; preds = %vector.body1214
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond861.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond861.1.2.not, label %init_array.exit, label %polly.loop_header793.1.2

polly.loop_header767.1:                           ; preds = %polly.loop_exit775, %polly.loop_exit775.1
  %polly.indvar770.1 = phi i64 [ %polly.indvar_next771.1, %polly.loop_exit775.1 ], [ 0, %polly.loop_exit775 ]
  %323 = mul nuw nsw i64 %polly.indvar770.1, 480
  %324 = trunc i64 %polly.indvar770.1 to i32
  %broadcast.splatinsert1092 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat1093 = shufflevector <4 x i32> %broadcast.splatinsert1092, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %polly.loop_header767.1
  %index1086 = phi i64 [ 0, %polly.loop_header767.1 ], [ %index.next1087, %vector.body1084 ]
  %vec.ind1090 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1 ], [ %vec.ind.next1091, %vector.body1084 ]
  %325 = add nuw nsw <4 x i64> %vec.ind1090, <i64 32, i64 32, i64 32, i64 32>
  %326 = trunc <4 x i64> %325 to <4 x i32>
  %327 = mul <4 x i32> %broadcast.splat1093, %326
  %328 = add <4 x i32> %327, <i32 2, i32 2, i32 2, i32 2>
  %329 = urem <4 x i32> %328, <i32 60, i32 60, i32 60, i32 60>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %332 = extractelement <4 x i64> %325, i32 0
  %333 = shl i64 %332, 3
  %334 = add i64 %333, %323
  %335 = getelementptr i8, i8* %call2, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %331, <4 x double>* %336, align 8, !alias.scope !98, !noalias !100
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1091 = add <4 x i64> %vec.ind1090, <i64 4, i64 4, i64 4, i64 4>
  %337 = icmp eq i64 %index.next1087, 28
  br i1 %337, label %polly.loop_exit775.1, label %vector.body1084, !llvm.loop !109

polly.loop_exit775.1:                             ; preds = %vector.body1084
  %polly.indvar_next771.1 = add nuw nsw i64 %polly.indvar770.1, 1
  %exitcond867.1.not = icmp eq i64 %polly.indvar_next771.1, 32
  br i1 %exitcond867.1.not, label %polly.loop_header767.1895, label %polly.loop_header767.1

polly.loop_header767.1895:                        ; preds = %polly.loop_exit775.1, %polly.loop_exit775.1906
  %polly.indvar770.1894 = phi i64 [ %polly.indvar_next771.1904, %polly.loop_exit775.1906 ], [ 0, %polly.loop_exit775.1 ]
  %338 = add nuw nsw i64 %polly.indvar770.1894, 32
  %339 = mul nuw nsw i64 %338, 480
  %340 = trunc i64 %338 to i32
  %broadcast.splatinsert1106 = insertelement <4 x i32> poison, i32 %340, i32 0
  %broadcast.splat1107 = shufflevector <4 x i32> %broadcast.splatinsert1106, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %polly.loop_header767.1895
  %index1098 = phi i64 [ 0, %polly.loop_header767.1895 ], [ %index.next1099, %vector.body1096 ]
  %vec.ind1104 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.1895 ], [ %vec.ind.next1105, %vector.body1096 ]
  %341 = mul <4 x i32> %vec.ind1104, %broadcast.splat1107
  %342 = add <4 x i32> %341, <i32 2, i32 2, i32 2, i32 2>
  %343 = urem <4 x i32> %342, <i32 60, i32 60, i32 60, i32 60>
  %344 = sitofp <4 x i32> %343 to <4 x double>
  %345 = fmul fast <4 x double> %344, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %346 = shl i64 %index1098, 3
  %347 = add i64 %346, %339
  %348 = getelementptr i8, i8* %call2, i64 %347
  %349 = bitcast i8* %348 to <4 x double>*
  store <4 x double> %345, <4 x double>* %349, align 8, !alias.scope !98, !noalias !100
  %index.next1099 = add i64 %index1098, 4
  %vec.ind.next1105 = add <4 x i32> %vec.ind1104, <i32 4, i32 4, i32 4, i32 4>
  %350 = icmp eq i64 %index.next1099, 32
  br i1 %350, label %polly.loop_exit775.1906, label %vector.body1096, !llvm.loop !110

polly.loop_exit775.1906:                          ; preds = %vector.body1096
  %polly.indvar_next771.1904 = add nuw nsw i64 %polly.indvar770.1894, 1
  %exitcond867.1905.not = icmp eq i64 %polly.indvar_next771.1904, 32
  br i1 %exitcond867.1905.not, label %polly.loop_header767.1.1, label %polly.loop_header767.1895

polly.loop_header767.1.1:                         ; preds = %polly.loop_exit775.1906, %polly.loop_exit775.1.1
  %polly.indvar770.1.1 = phi i64 [ %polly.indvar_next771.1.1, %polly.loop_exit775.1.1 ], [ 0, %polly.loop_exit775.1906 ]
  %351 = add nuw nsw i64 %polly.indvar770.1.1, 32
  %352 = mul nuw nsw i64 %351, 480
  %353 = trunc i64 %351 to i32
  %broadcast.splatinsert1118 = insertelement <4 x i32> poison, i32 %353, i32 0
  %broadcast.splat1119 = shufflevector <4 x i32> %broadcast.splatinsert1118, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %polly.loop_header767.1.1
  %index1112 = phi i64 [ 0, %polly.loop_header767.1.1 ], [ %index.next1113, %vector.body1110 ]
  %vec.ind1116 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.1 ], [ %vec.ind.next1117, %vector.body1110 ]
  %354 = add nuw nsw <4 x i64> %vec.ind1116, <i64 32, i64 32, i64 32, i64 32>
  %355 = trunc <4 x i64> %354 to <4 x i32>
  %356 = mul <4 x i32> %broadcast.splat1119, %355
  %357 = add <4 x i32> %356, <i32 2, i32 2, i32 2, i32 2>
  %358 = urem <4 x i32> %357, <i32 60, i32 60, i32 60, i32 60>
  %359 = sitofp <4 x i32> %358 to <4 x double>
  %360 = fmul fast <4 x double> %359, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %361 = extractelement <4 x i64> %354, i32 0
  %362 = shl i64 %361, 3
  %363 = add i64 %362, %352
  %364 = getelementptr i8, i8* %call2, i64 %363
  %365 = bitcast i8* %364 to <4 x double>*
  store <4 x double> %360, <4 x double>* %365, align 8, !alias.scope !98, !noalias !100
  %index.next1113 = add i64 %index1112, 4
  %vec.ind.next1117 = add <4 x i64> %vec.ind1116, <i64 4, i64 4, i64 4, i64 4>
  %366 = icmp eq i64 %index.next1113, 28
  br i1 %366, label %polly.loop_exit775.1.1, label %vector.body1110, !llvm.loop !111

polly.loop_exit775.1.1:                           ; preds = %vector.body1110
  %polly.indvar_next771.1.1 = add nuw nsw i64 %polly.indvar770.1.1, 1
  %exitcond867.1.1.not = icmp eq i64 %polly.indvar_next771.1.1, 32
  br i1 %exitcond867.1.1.not, label %polly.loop_header767.2, label %polly.loop_header767.1.1

polly.loop_header767.2:                           ; preds = %polly.loop_exit775.1.1, %polly.loop_exit775.2
  %polly.indvar770.2 = phi i64 [ %polly.indvar_next771.2, %polly.loop_exit775.2 ], [ 0, %polly.loop_exit775.1.1 ]
  %367 = add nuw nsw i64 %polly.indvar770.2, 64
  %368 = mul nuw nsw i64 %367, 480
  %369 = trunc i64 %367 to i32
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %369, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %polly.loop_header767.2
  %index1124 = phi i64 [ 0, %polly.loop_header767.2 ], [ %index.next1125, %vector.body1122 ]
  %vec.ind1130 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.2 ], [ %vec.ind.next1131, %vector.body1122 ]
  %370 = mul <4 x i32> %vec.ind1130, %broadcast.splat1133
  %371 = add <4 x i32> %370, <i32 2, i32 2, i32 2, i32 2>
  %372 = urem <4 x i32> %371, <i32 60, i32 60, i32 60, i32 60>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = shl i64 %index1124, 3
  %376 = add i64 %375, %368
  %377 = getelementptr i8, i8* %call2, i64 %376
  %378 = bitcast i8* %377 to <4 x double>*
  store <4 x double> %374, <4 x double>* %378, align 8, !alias.scope !98, !noalias !100
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1131 = add <4 x i32> %vec.ind1130, <i32 4, i32 4, i32 4, i32 4>
  %379 = icmp eq i64 %index.next1125, 32
  br i1 %379, label %polly.loop_exit775.2, label %vector.body1122, !llvm.loop !112

polly.loop_exit775.2:                             ; preds = %vector.body1122
  %polly.indvar_next771.2 = add nuw nsw i64 %polly.indvar770.2, 1
  %exitcond867.2.not = icmp eq i64 %polly.indvar_next771.2, 16
  br i1 %exitcond867.2.not, label %polly.loop_header767.1.2, label %polly.loop_header767.2

polly.loop_header767.1.2:                         ; preds = %polly.loop_exit775.2, %polly.loop_exit775.1.2
  %polly.indvar770.1.2 = phi i64 [ %polly.indvar_next771.1.2, %polly.loop_exit775.1.2 ], [ 0, %polly.loop_exit775.2 ]
  %380 = add nuw nsw i64 %polly.indvar770.1.2, 64
  %381 = mul nuw nsw i64 %380, 480
  %382 = trunc i64 %380 to i32
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %polly.loop_header767.1.2
  %index1138 = phi i64 [ 0, %polly.loop_header767.1.2 ], [ %index.next1139, %vector.body1136 ]
  %vec.ind1142 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.2 ], [ %vec.ind.next1143, %vector.body1136 ]
  %383 = add nuw nsw <4 x i64> %vec.ind1142, <i64 32, i64 32, i64 32, i64 32>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat1145, %384
  %386 = add <4 x i32> %385, <i32 2, i32 2, i32 2, i32 2>
  %387 = urem <4 x i32> %386, <i32 60, i32 60, i32 60, i32 60>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add i64 %391, %381
  %393 = getelementptr i8, i8* %call2, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !98, !noalias !100
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1143 = add <4 x i64> %vec.ind1142, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next1139, 28
  br i1 %395, label %polly.loop_exit775.1.2, label %vector.body1136, !llvm.loop !113

polly.loop_exit775.1.2:                           ; preds = %vector.body1136
  %polly.indvar_next771.1.2 = add nuw nsw i64 %polly.indvar770.1.2, 1
  %exitcond867.1.2.not = icmp eq i64 %polly.indvar_next771.1.2, 16
  br i1 %exitcond867.1.2.not, label %polly.loop_header793, label %polly.loop_header767.1.2

polly.loop_header740.1:                           ; preds = %polly.loop_exit748, %polly.loop_exit748.1
  %polly.indvar743.1 = phi i64 [ %polly.indvar_next744.1, %polly.loop_exit748.1 ], [ 0, %polly.loop_exit748 ]
  %396 = mul nuw nsw i64 %polly.indvar743.1, 640
  %397 = trunc i64 %polly.indvar743.1 to i32
  %broadcast.splatinsert978 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat979 = shufflevector <4 x i32> %broadcast.splatinsert978, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body970

vector.body970:                                   ; preds = %vector.body970, %polly.loop_header740.1
  %index972 = phi i64 [ 0, %polly.loop_header740.1 ], [ %index.next973, %vector.body970 ]
  %vec.ind976 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1 ], [ %vec.ind.next977, %vector.body970 ]
  %398 = add nuw nsw <4 x i64> %vec.ind976, <i64 32, i64 32, i64 32, i64 32>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat979, %399
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
  %index.next973 = add i64 %index972, 4
  %vec.ind.next977 = add <4 x i64> %vec.ind976, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next973, 32
  br i1 %410, label %polly.loop_exit748.1, label %vector.body970, !llvm.loop !114

polly.loop_exit748.1:                             ; preds = %vector.body970
  %polly.indvar_next744.1 = add nuw nsw i64 %polly.indvar743.1, 1
  %exitcond876.1.not = icmp eq i64 %polly.indvar_next744.1, 32
  br i1 %exitcond876.1.not, label %polly.loop_header740.2, label %polly.loop_header740.1

polly.loop_header740.2:                           ; preds = %polly.loop_exit748.1, %polly.loop_exit748.2
  %polly.indvar743.2 = phi i64 [ %polly.indvar_next744.2, %polly.loop_exit748.2 ], [ 0, %polly.loop_exit748.1 ]
  %411 = mul nuw nsw i64 %polly.indvar743.2, 640
  %412 = trunc i64 %polly.indvar743.2 to i32
  %broadcast.splatinsert990 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat991 = shufflevector <4 x i32> %broadcast.splatinsert990, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %polly.loop_header740.2
  %index984 = phi i64 [ 0, %polly.loop_header740.2 ], [ %index.next985, %vector.body982 ]
  %vec.ind988 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2 ], [ %vec.ind.next989, %vector.body982 ]
  %413 = add nuw nsw <4 x i64> %vec.ind988, <i64 64, i64 64, i64 64, i64 64>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat991, %414
  %416 = add <4 x i32> %415, <i32 3, i32 3, i32 3, i32 3>
  %417 = urem <4 x i32> %416, <i32 80, i32 80, i32 80, i32 80>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add nuw nsw i64 %421, %411
  %423 = getelementptr i8, i8* %call, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !94, !noalias !96
  %index.next985 = add i64 %index984, 4
  %vec.ind.next989 = add <4 x i64> %vec.ind988, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next985, 16
  br i1 %425, label %polly.loop_exit748.2, label %vector.body982, !llvm.loop !115

polly.loop_exit748.2:                             ; preds = %vector.body982
  %polly.indvar_next744.2 = add nuw nsw i64 %polly.indvar743.2, 1
  %exitcond876.2.not = icmp eq i64 %polly.indvar_next744.2, 32
  br i1 %exitcond876.2.not, label %polly.loop_header740.1909, label %polly.loop_header740.2

polly.loop_header740.1909:                        ; preds = %polly.loop_exit748.2, %polly.loop_exit748.1920
  %polly.indvar743.1908 = phi i64 [ %polly.indvar_next744.1918, %polly.loop_exit748.1920 ], [ 0, %polly.loop_exit748.2 ]
  %426 = add nuw nsw i64 %polly.indvar743.1908, 32
  %427 = mul nuw nsw i64 %426, 640
  %428 = trunc i64 %426 to i32
  %broadcast.splatinsert1004 = insertelement <4 x i32> poison, i32 %428, i32 0
  %broadcast.splat1005 = shufflevector <4 x i32> %broadcast.splatinsert1004, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %polly.loop_header740.1909
  %index996 = phi i64 [ 0, %polly.loop_header740.1909 ], [ %index.next997, %vector.body994 ]
  %vec.ind1002 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.1909 ], [ %vec.ind.next1003, %vector.body994 ]
  %429 = mul <4 x i32> %vec.ind1002, %broadcast.splat1005
  %430 = add <4 x i32> %429, <i32 3, i32 3, i32 3, i32 3>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %434 = shl i64 %index996, 3
  %435 = add nuw nsw i64 %434, %427
  %436 = getelementptr i8, i8* %call, i64 %435
  %437 = bitcast i8* %436 to <4 x double>*
  store <4 x double> %433, <4 x double>* %437, align 8, !alias.scope !94, !noalias !96
  %index.next997 = add i64 %index996, 4
  %vec.ind.next1003 = add <4 x i32> %vec.ind1002, <i32 4, i32 4, i32 4, i32 4>
  %438 = icmp eq i64 %index.next997, 32
  br i1 %438, label %polly.loop_exit748.1920, label %vector.body994, !llvm.loop !116

polly.loop_exit748.1920:                          ; preds = %vector.body994
  %polly.indvar_next744.1918 = add nuw nsw i64 %polly.indvar743.1908, 1
  %exitcond876.1919.not = icmp eq i64 %polly.indvar_next744.1918, 32
  br i1 %exitcond876.1919.not, label %polly.loop_header740.1.1, label %polly.loop_header740.1909

polly.loop_header740.1.1:                         ; preds = %polly.loop_exit748.1920, %polly.loop_exit748.1.1
  %polly.indvar743.1.1 = phi i64 [ %polly.indvar_next744.1.1, %polly.loop_exit748.1.1 ], [ 0, %polly.loop_exit748.1920 ]
  %439 = add nuw nsw i64 %polly.indvar743.1.1, 32
  %440 = mul nuw nsw i64 %439, 640
  %441 = trunc i64 %439 to i32
  %broadcast.splatinsert1016 = insertelement <4 x i32> poison, i32 %441, i32 0
  %broadcast.splat1017 = shufflevector <4 x i32> %broadcast.splatinsert1016, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %polly.loop_header740.1.1
  %index1010 = phi i64 [ 0, %polly.loop_header740.1.1 ], [ %index.next1011, %vector.body1008 ]
  %vec.ind1014 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.1 ], [ %vec.ind.next1015, %vector.body1008 ]
  %442 = add nuw nsw <4 x i64> %vec.ind1014, <i64 32, i64 32, i64 32, i64 32>
  %443 = trunc <4 x i64> %442 to <4 x i32>
  %444 = mul <4 x i32> %broadcast.splat1017, %443
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = extractelement <4 x i64> %442, i32 0
  %450 = shl i64 %449, 3
  %451 = add nuw nsw i64 %450, %440
  %452 = getelementptr i8, i8* %call, i64 %451
  %453 = bitcast i8* %452 to <4 x double>*
  store <4 x double> %448, <4 x double>* %453, align 8, !alias.scope !94, !noalias !96
  %index.next1011 = add i64 %index1010, 4
  %vec.ind.next1015 = add <4 x i64> %vec.ind1014, <i64 4, i64 4, i64 4, i64 4>
  %454 = icmp eq i64 %index.next1011, 32
  br i1 %454, label %polly.loop_exit748.1.1, label %vector.body1008, !llvm.loop !117

polly.loop_exit748.1.1:                           ; preds = %vector.body1008
  %polly.indvar_next744.1.1 = add nuw nsw i64 %polly.indvar743.1.1, 1
  %exitcond876.1.1.not = icmp eq i64 %polly.indvar_next744.1.1, 32
  br i1 %exitcond876.1.1.not, label %polly.loop_header740.2.1, label %polly.loop_header740.1.1

polly.loop_header740.2.1:                         ; preds = %polly.loop_exit748.1.1, %polly.loop_exit748.2.1
  %polly.indvar743.2.1 = phi i64 [ %polly.indvar_next744.2.1, %polly.loop_exit748.2.1 ], [ 0, %polly.loop_exit748.1.1 ]
  %455 = add nuw nsw i64 %polly.indvar743.2.1, 32
  %456 = mul nuw nsw i64 %455, 640
  %457 = trunc i64 %455 to i32
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %457, i32 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %polly.loop_header740.2.1
  %index1022 = phi i64 [ 0, %polly.loop_header740.2.1 ], [ %index.next1023, %vector.body1020 ]
  %vec.ind1026 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.1 ], [ %vec.ind.next1027, %vector.body1020 ]
  %458 = add nuw nsw <4 x i64> %vec.ind1026, <i64 64, i64 64, i64 64, i64 64>
  %459 = trunc <4 x i64> %458 to <4 x i32>
  %460 = mul <4 x i32> %broadcast.splat1029, %459
  %461 = add <4 x i32> %460, <i32 3, i32 3, i32 3, i32 3>
  %462 = urem <4 x i32> %461, <i32 80, i32 80, i32 80, i32 80>
  %463 = sitofp <4 x i32> %462 to <4 x double>
  %464 = fmul fast <4 x double> %463, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %465 = extractelement <4 x i64> %458, i32 0
  %466 = shl i64 %465, 3
  %467 = add nuw nsw i64 %466, %456
  %468 = getelementptr i8, i8* %call, i64 %467
  %469 = bitcast i8* %468 to <4 x double>*
  store <4 x double> %464, <4 x double>* %469, align 8, !alias.scope !94, !noalias !96
  %index.next1023 = add i64 %index1022, 4
  %vec.ind.next1027 = add <4 x i64> %vec.ind1026, <i64 4, i64 4, i64 4, i64 4>
  %470 = icmp eq i64 %index.next1023, 16
  br i1 %470, label %polly.loop_exit748.2.1, label %vector.body1020, !llvm.loop !118

polly.loop_exit748.2.1:                           ; preds = %vector.body1020
  %polly.indvar_next744.2.1 = add nuw nsw i64 %polly.indvar743.2.1, 1
  %exitcond876.2.1.not = icmp eq i64 %polly.indvar_next744.2.1, 32
  br i1 %exitcond876.2.1.not, label %polly.loop_header740.2923, label %polly.loop_header740.2.1

polly.loop_header740.2923:                        ; preds = %polly.loop_exit748.2.1, %polly.loop_exit748.2934
  %polly.indvar743.2922 = phi i64 [ %polly.indvar_next744.2932, %polly.loop_exit748.2934 ], [ 0, %polly.loop_exit748.2.1 ]
  %471 = add nuw nsw i64 %polly.indvar743.2922, 64
  %472 = mul nuw nsw i64 %471, 640
  %473 = trunc i64 %471 to i32
  %broadcast.splatinsert1042 = insertelement <4 x i32> poison, i32 %473, i32 0
  %broadcast.splat1043 = shufflevector <4 x i32> %broadcast.splatinsert1042, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %polly.loop_header740.2923
  %index1034 = phi i64 [ 0, %polly.loop_header740.2923 ], [ %index.next1035, %vector.body1032 ]
  %vec.ind1040 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.2923 ], [ %vec.ind.next1041, %vector.body1032 ]
  %474 = mul <4 x i32> %vec.ind1040, %broadcast.splat1043
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = shl i64 %index1034, 3
  %480 = add nuw nsw i64 %479, %472
  %481 = getelementptr i8, i8* %call, i64 %480
  %482 = bitcast i8* %481 to <4 x double>*
  store <4 x double> %478, <4 x double>* %482, align 8, !alias.scope !94, !noalias !96
  %index.next1035 = add i64 %index1034, 4
  %vec.ind.next1041 = add <4 x i32> %vec.ind1040, <i32 4, i32 4, i32 4, i32 4>
  %483 = icmp eq i64 %index.next1035, 32
  br i1 %483, label %polly.loop_exit748.2934, label %vector.body1032, !llvm.loop !119

polly.loop_exit748.2934:                          ; preds = %vector.body1032
  %polly.indvar_next744.2932 = add nuw nsw i64 %polly.indvar743.2922, 1
  %exitcond876.2933.not = icmp eq i64 %polly.indvar_next744.2932, 16
  br i1 %exitcond876.2933.not, label %polly.loop_header740.1.2, label %polly.loop_header740.2923

polly.loop_header740.1.2:                         ; preds = %polly.loop_exit748.2934, %polly.loop_exit748.1.2
  %polly.indvar743.1.2 = phi i64 [ %polly.indvar_next744.1.2, %polly.loop_exit748.1.2 ], [ 0, %polly.loop_exit748.2934 ]
  %484 = add nuw nsw i64 %polly.indvar743.1.2, 64
  %485 = mul nuw nsw i64 %484, 640
  %486 = trunc i64 %484 to i32
  %broadcast.splatinsert1054 = insertelement <4 x i32> poison, i32 %486, i32 0
  %broadcast.splat1055 = shufflevector <4 x i32> %broadcast.splatinsert1054, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %polly.loop_header740.1.2
  %index1048 = phi i64 [ 0, %polly.loop_header740.1.2 ], [ %index.next1049, %vector.body1046 ]
  %vec.ind1052 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.2 ], [ %vec.ind.next1053, %vector.body1046 ]
  %487 = add nuw nsw <4 x i64> %vec.ind1052, <i64 32, i64 32, i64 32, i64 32>
  %488 = trunc <4 x i64> %487 to <4 x i32>
  %489 = mul <4 x i32> %broadcast.splat1055, %488
  %490 = add <4 x i32> %489, <i32 3, i32 3, i32 3, i32 3>
  %491 = urem <4 x i32> %490, <i32 80, i32 80, i32 80, i32 80>
  %492 = sitofp <4 x i32> %491 to <4 x double>
  %493 = fmul fast <4 x double> %492, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %494 = extractelement <4 x i64> %487, i32 0
  %495 = shl i64 %494, 3
  %496 = add nuw nsw i64 %495, %485
  %497 = getelementptr i8, i8* %call, i64 %496
  %498 = bitcast i8* %497 to <4 x double>*
  store <4 x double> %493, <4 x double>* %498, align 8, !alias.scope !94, !noalias !96
  %index.next1049 = add i64 %index1048, 4
  %vec.ind.next1053 = add <4 x i64> %vec.ind1052, <i64 4, i64 4, i64 4, i64 4>
  %499 = icmp eq i64 %index.next1049, 32
  br i1 %499, label %polly.loop_exit748.1.2, label %vector.body1046, !llvm.loop !120

polly.loop_exit748.1.2:                           ; preds = %vector.body1046
  %polly.indvar_next744.1.2 = add nuw nsw i64 %polly.indvar743.1.2, 1
  %exitcond876.1.2.not = icmp eq i64 %polly.indvar_next744.1.2, 16
  br i1 %exitcond876.1.2.not, label %polly.loop_header740.2.2, label %polly.loop_header740.1.2

polly.loop_header740.2.2:                         ; preds = %polly.loop_exit748.1.2, %polly.loop_exit748.2.2
  %polly.indvar743.2.2 = phi i64 [ %polly.indvar_next744.2.2, %polly.loop_exit748.2.2 ], [ 0, %polly.loop_exit748.1.2 ]
  %500 = add nuw nsw i64 %polly.indvar743.2.2, 64
  %501 = mul nuw nsw i64 %500, 640
  %502 = trunc i64 %500 to i32
  %broadcast.splatinsert1066 = insertelement <4 x i32> poison, i32 %502, i32 0
  %broadcast.splat1067 = shufflevector <4 x i32> %broadcast.splatinsert1066, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %polly.loop_header740.2.2
  %index1060 = phi i64 [ 0, %polly.loop_header740.2.2 ], [ %index.next1061, %vector.body1058 ]
  %vec.ind1064 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.2 ], [ %vec.ind.next1065, %vector.body1058 ]
  %503 = add nuw nsw <4 x i64> %vec.ind1064, <i64 64, i64 64, i64 64, i64 64>
  %504 = trunc <4 x i64> %503 to <4 x i32>
  %505 = mul <4 x i32> %broadcast.splat1067, %504
  %506 = add <4 x i32> %505, <i32 3, i32 3, i32 3, i32 3>
  %507 = urem <4 x i32> %506, <i32 80, i32 80, i32 80, i32 80>
  %508 = sitofp <4 x i32> %507 to <4 x double>
  %509 = fmul fast <4 x double> %508, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %510 = extractelement <4 x i64> %503, i32 0
  %511 = shl i64 %510, 3
  %512 = add nuw nsw i64 %511, %501
  %513 = getelementptr i8, i8* %call, i64 %512
  %514 = bitcast i8* %513 to <4 x double>*
  store <4 x double> %509, <4 x double>* %514, align 8, !alias.scope !94, !noalias !96
  %index.next1061 = add i64 %index1060, 4
  %vec.ind.next1065 = add <4 x i64> %vec.ind1064, <i64 4, i64 4, i64 4, i64 4>
  %515 = icmp eq i64 %index.next1061, 16
  br i1 %515, label %polly.loop_exit748.2.2, label %vector.body1058, !llvm.loop !121

polly.loop_exit748.2.2:                           ; preds = %vector.body1058
  %polly.indvar_next744.2.2 = add nuw nsw i64 %polly.indvar743.2.2, 1
  %exitcond876.2.2.not = icmp eq i64 %polly.indvar_next744.2.2, 16
  br i1 %exitcond876.2.2.not, label %polly.loop_header767, label %polly.loop_header740.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 20}
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
!45 = !{!"llvm.loop.tile.size", i32 96}
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
