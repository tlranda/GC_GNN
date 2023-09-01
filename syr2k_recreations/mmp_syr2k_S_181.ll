; ModuleID = 'syr2k_recreations//mmp_syr2k_S_181.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_181.c"
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
  %call712 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1573 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1573, %call2
  %polly.access.call2593 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2593, %call1
  %2 = or i1 %0, %1
  %polly.access.call613 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call613, %call2
  %4 = icmp ule i8* %polly.access.call2593, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call613, %call1
  %8 = icmp ule i8* %polly.access.call1573, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header698, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep928 = getelementptr i8, i8* %call2, i64 %12
  %scevgep927 = getelementptr i8, i8* %call2, i64 %11
  %scevgep926 = getelementptr i8, i8* %call1, i64 %12
  %scevgep925 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep925, %scevgep928
  %bound1 = icmp ult i8* %scevgep927, %scevgep926
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
  br i1 %exitcond18.not.i, label %vector.ph932, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph932:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert939 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat940 = shufflevector <4 x i64> %broadcast.splatinsert939, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body931

vector.body931:                                   ; preds = %vector.body931, %vector.ph932
  %index933 = phi i64 [ 0, %vector.ph932 ], [ %index.next934, %vector.body931 ]
  %vec.ind937 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph932 ], [ %vec.ind.next938, %vector.body931 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind937, %broadcast.splat940
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv7.i, i64 %index933
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next934 = add i64 %index933, 4
  %vec.ind.next938 = add <4 x i64> %vec.ind937, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next934, 80
  br i1 %40, label %for.inc41.i, label %vector.body931, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body931
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph932, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit759.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header491, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1288, label %vector.ph1214

vector.ph1214:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1214
  %index1215 = phi i64 [ 0, %vector.ph1214 ], [ %index.next1216, %vector.body1213 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i, i64 %index1215
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1216 = add i64 %index1215, 4
  %46 = icmp eq i64 %index.next1216, %n.vec
  br i1 %46, label %middle.block1211, label %vector.body1213, !llvm.loop !18

middle.block1211:                                 ; preds = %vector.body1213
  %cmp.n1218 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1218, label %for.inc6.i, label %for.body3.i46.preheader1288

for.body3.i46.preheader1288:                      ; preds = %for.body3.i46.preheader, %middle.block1211
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1211 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1288, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1288 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1211, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit515
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1234 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1234, label %for.body3.i60.preheader1286, label %vector.ph1235

vector.ph1235:                                    ; preds = %for.body3.i60.preheader
  %n.vec1237 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1235
  %index1238 = phi i64 [ 0, %vector.ph1235 ], [ %index.next1239, %vector.body1233 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i52, i64 %index1238
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1242 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1242, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1239 = add i64 %index1238, 4
  %57 = icmp eq i64 %index.next1239, %n.vec1237
  br i1 %57, label %middle.block1231, label %vector.body1233, !llvm.loop !51

middle.block1231:                                 ; preds = %vector.body1233
  %cmp.n1241 = icmp eq i64 %indvars.iv21.i52, %n.vec1237
  br i1 %cmp.n1241, label %for.inc6.i63, label %for.body3.i60.preheader1286

for.body3.i60.preheader1286:                      ; preds = %for.body3.i60.preheader, %middle.block1231
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1237, %middle.block1231 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1286, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1286 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1231, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit360
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1260 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1260, label %for.body3.i99.preheader1284, label %vector.ph1261

vector.ph1261:                                    ; preds = %for.body3.i99.preheader
  %n.vec1263 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1261
  %index1264 = phi i64 [ 0, %vector.ph1261 ], [ %index.next1265, %vector.body1259 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i91, i64 %index1264
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1268 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1268, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1265 = add i64 %index1264, 4
  %68 = icmp eq i64 %index.next1265, %n.vec1263
  br i1 %68, label %middle.block1257, label %vector.body1259, !llvm.loop !53

middle.block1257:                                 ; preds = %vector.body1259
  %cmp.n1267 = icmp eq i64 %indvars.iv21.i91, %n.vec1263
  br i1 %cmp.n1267, label %for.inc6.i102, label %for.body3.i99.preheader1284

for.body3.i99.preheader1284:                      ; preds = %for.body3.i99.preheader, %middle.block1257
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1263, %middle.block1257 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1284, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1284 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1257, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1272 = phi i64 [ %indvar.next1273, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1272, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1274 = icmp ult i64 %88, 4
  br i1 %min.iters.check1274, label %polly.loop_header191.preheader, label %vector.ph1275

vector.ph1275:                                    ; preds = %polly.loop_header
  %n.vec1277 = and i64 %88, -4
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1275
  %index1278 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1279, %vector.body1271 ]
  %90 = shl nuw nsw i64 %index1278, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1282 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1282, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1279 = add i64 %index1278, 4
  %95 = icmp eq i64 %index.next1279, %n.vec1277
  br i1 %95, label %middle.block1269, label %vector.body1271, !llvm.loop !64

middle.block1269:                                 ; preds = %vector.body1271
  %cmp.n1281 = icmp eq i64 %88, %n.vec1277
  br i1 %cmp.n1281, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1269
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1277, %middle.block1269 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1269
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1273 = add i64 %indvar1272, 1
  br i1 %exitcond791.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond790.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %polly.loop_exit207 ], [ 2, %polly.loop_exit193 ]
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nsw i64 %polly.indvar202, -16
  %98 = shl nsw i64 %polly.indvar202, 4
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %indvars.iv.next780 = add nuw nsw i64 %indvars.iv779, 16
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 2
  %exitcond789.not = icmp eq i64 %polly.indvar_next203, 5
  br i1 %exitcond789.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit213 ], [ %indvars.iv779, %polly.loop_header199 ]
  %indvars.iv777 = phi i64 [ %indvars.iv.next778, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = shl nsw i64 %polly.indvar208, 3
  %100 = add nsw i64 %99, %97
  %101 = icmp sgt i64 %100, 0
  %102 = select i1 %101, i64 %100, i64 0
  %polly.loop_guard = icmp slt i64 %102, 16
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv777, i64 0)
  %103 = add i64 %smax, %indvars.iv781
  %104 = sub nsw i64 %98, %99
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next778 = add nsw i64 %indvars.iv777, 8
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, -8
  %exitcond788.not = icmp eq i64 %polly.indvar_next209, %indvars.iv786
  br i1 %exitcond788.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit219
  %indvars.iv783 = phi i64 [ %103, %polly.loop_header211.preheader ], [ %indvars.iv.next784, %polly.loop_exit219 ]
  %polly.indvar214 = phi i64 [ %102, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv783, i64 7)
  %105 = add nsw i64 %polly.indvar214, %104
  %polly.loop_guard227914 = icmp sgt i64 %105, -1
  %106 = add nuw nsw i64 %polly.indvar214, %98
  %107 = mul i64 %106, 480
  %108 = mul i64 %106, 640
  br i1 %polly.loop_guard227914, label %polly.loop_header217.us, label %polly.loop_exit219

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit226.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit226.loopexit.us ], [ 0, %polly.loop_header211 ]
  %109 = shl nuw nsw i64 %polly.indvar220.us, 3
  %scevgep231.us = getelementptr i8, i8* %call1, i64 %109
  %scevgep235.us = getelementptr i8, i8* %call2, i64 %109
  %scevgep236.us = getelementptr i8, i8* %scevgep235.us, i64 %107
  %scevgep236237.us = bitcast i8* %scevgep236.us to double*
  %_p_scalar_238.us = load double, double* %scevgep236237.us, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us = getelementptr i8, i8* %scevgep231.us, i64 %107
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header224.us, %polly.loop_header217.us
  %polly.indvar228.us = phi i64 [ 0, %polly.loop_header217.us ], [ %polly.indvar_next229.us, %polly.loop_header224.us ]
  %110 = add nuw nsw i64 %polly.indvar228.us, %99
  %111 = mul nuw nsw i64 %110, 480
  %scevgep232.us = getelementptr i8, i8* %scevgep231.us, i64 %111
  %scevgep232233.us = bitcast i8* %scevgep232.us to double*
  %_p_scalar_234.us = load double, double* %scevgep232233.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_238.us, %_p_scalar_234.us
  %scevgep240.us = getelementptr i8, i8* %scevgep235.us, i64 %111
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_242.us
  %112 = shl i64 %110, 3
  %113 = add i64 %112, %108
  %scevgep247.us = getelementptr i8, i8* %call, i64 %113
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar228.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit226.loopexit.us, label %polly.loop_header224.us

polly.loop_exit226.loopexit.us:                   ; preds = %polly.loop_header224.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next221.us, 60
  br i1 %exitcond785.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit226.loopexit.us, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 15
  %indvars.iv.next784 = add i64 %indvars.iv783, 1
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1246 = phi i64 [ %indvar.next1247, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %114 = add i64 %indvar1246, 1
  %115 = mul nuw nsw i64 %polly.indvar339, 640
  %scevgep348 = getelementptr i8, i8* %call, i64 %115
  %min.iters.check1248 = icmp ult i64 %114, 4
  br i1 %min.iters.check1248, label %polly.loop_header342.preheader, label %vector.ph1249

vector.ph1249:                                    ; preds = %polly.loop_header336
  %n.vec1251 = and i64 %114, -4
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1249
  %index1252 = phi i64 [ 0, %vector.ph1249 ], [ %index.next1253, %vector.body1245 ]
  %116 = shl nuw nsw i64 %index1252, 3
  %117 = getelementptr i8, i8* %scevgep348, i64 %116
  %118 = bitcast i8* %117 to <4 x double>*
  %wide.load1256 = load <4 x double>, <4 x double>* %118, align 8, !alias.scope !69, !noalias !71
  %119 = fmul fast <4 x double> %wide.load1256, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %120 = bitcast i8* %117 to <4 x double>*
  store <4 x double> %119, <4 x double>* %120, align 8, !alias.scope !69, !noalias !71
  %index.next1253 = add i64 %index1252, 4
  %121 = icmp eq i64 %index.next1253, %n.vec1251
  br i1 %121, label %middle.block1243, label %vector.body1245, !llvm.loop !74

middle.block1243:                                 ; preds = %vector.body1245
  %cmp.n1255 = icmp eq i64 %114, %n.vec1251
  br i1 %cmp.n1255, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block1243
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1251, %middle.block1243 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block1243
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next340, 80
  %indvar.next1247 = add i64 %indvar1246, 1
  br i1 %exitcond811.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %122 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %122
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond810.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !75

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit360
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit360 ], [ 2, %polly.loop_exit344 ]
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %123 = mul nsw i64 %polly.indvar355, -16
  %124 = shl nsw i64 %polly.indvar355, 4
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_exit367
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, -16
  %indvars.iv.next798 = add nuw nsw i64 %indvars.iv797, 16
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 2
  %exitcond809.not = icmp eq i64 %polly.indvar_next356, 5
  br i1 %exitcond809.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header358:                             ; preds = %polly.loop_exit367, %polly.loop_header352
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %polly.loop_exit367 ], [ %indvars.iv797, %polly.loop_header352 ]
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit367 ], [ %indvars.iv792, %polly.loop_header352 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit367 ], [ 0, %polly.loop_header352 ]
  %125 = shl nsw i64 %polly.indvar361, 3
  %126 = add nsw i64 %125, %123
  %127 = icmp sgt i64 %126, 0
  %128 = select i1 %127, i64 %126, i64 0
  %polly.loop_guard368 = icmp slt i64 %128, 16
  br i1 %polly.loop_guard368, label %polly.loop_header365.preheader, label %polly.loop_exit367

polly.loop_header365.preheader:                   ; preds = %polly.loop_header358
  %smax796 = call i64 @llvm.smax.i64(i64 %indvars.iv794, i64 0)
  %129 = add i64 %smax796, %indvars.iv799
  %130 = sub nsw i64 %124, %125
  br label %polly.loop_header365

polly.loop_exit367:                               ; preds = %polly.loop_exit374, %polly.loop_header358
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %indvars.iv.next795 = add nsw i64 %indvars.iv794, 8
  %indvars.iv.next800 = add nsw i64 %indvars.iv799, -8
  %exitcond808.not = icmp eq i64 %polly.indvar_next362, %indvars.iv806
  br i1 %exitcond808.not, label %polly.loop_exit360, label %polly.loop_header358

polly.loop_header365:                             ; preds = %polly.loop_header365.preheader, %polly.loop_exit374
  %indvars.iv801 = phi i64 [ %129, %polly.loop_header365.preheader ], [ %indvars.iv.next802, %polly.loop_exit374 ]
  %polly.indvar369 = phi i64 [ %128, %polly.loop_header365.preheader ], [ %polly.indvar_next370, %polly.loop_exit374 ]
  %smin803 = call i64 @llvm.smin.i64(i64 %indvars.iv801, i64 7)
  %131 = add nsw i64 %polly.indvar369, %130
  %polly.loop_guard382915 = icmp sgt i64 %131, -1
  %132 = add nuw nsw i64 %polly.indvar369, %124
  %133 = mul i64 %132, 480
  %134 = mul i64 %132, 640
  br i1 %polly.loop_guard382915, label %polly.loop_header372.us, label %polly.loop_exit374

polly.loop_header372.us:                          ; preds = %polly.loop_header365, %polly.loop_exit381.loopexit.us
  %polly.indvar375.us = phi i64 [ %polly.indvar_next376.us, %polly.loop_exit381.loopexit.us ], [ 0, %polly.loop_header365 ]
  %135 = shl nuw nsw i64 %polly.indvar375.us, 3
  %scevgep386.us = getelementptr i8, i8* %call1, i64 %135
  %scevgep390.us = getelementptr i8, i8* %call2, i64 %135
  %scevgep391.us = getelementptr i8, i8* %scevgep390.us, i64 %133
  %scevgep391392.us = bitcast i8* %scevgep391.us to double*
  %_p_scalar_393.us = load double, double* %scevgep391392.us, align 8, !alias.scope !73, !noalias !76
  %scevgep399.us = getelementptr i8, i8* %scevgep386.us, i64 %133
  %scevgep399400.us = bitcast i8* %scevgep399.us to double*
  %_p_scalar_401.us = load double, double* %scevgep399400.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header379.us

polly.loop_header379.us:                          ; preds = %polly.loop_header379.us, %polly.loop_header372.us
  %polly.indvar383.us = phi i64 [ 0, %polly.loop_header372.us ], [ %polly.indvar_next384.us, %polly.loop_header379.us ]
  %136 = add nuw nsw i64 %polly.indvar383.us, %125
  %137 = mul nuw nsw i64 %136, 480
  %scevgep387.us = getelementptr i8, i8* %scevgep386.us, i64 %137
  %scevgep387388.us = bitcast i8* %scevgep387.us to double*
  %_p_scalar_389.us = load double, double* %scevgep387388.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_393.us, %_p_scalar_389.us
  %scevgep395.us = getelementptr i8, i8* %scevgep390.us, i64 %137
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_401.us, %_p_scalar_397.us
  %138 = shl i64 %136, 3
  %139 = add i64 %138, %134
  %scevgep402.us = getelementptr i8, i8* %call, i64 %139
  %scevgep402403.us = bitcast i8* %scevgep402.us to double*
  %_p_scalar_404.us = load double, double* %scevgep402403.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_404.us
  store double %p_add42.i79.us, double* %scevgep402403.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next384.us = add nuw nsw i64 %polly.indvar383.us, 1
  %exitcond804.not = icmp eq i64 %polly.indvar383.us, %smin803
  br i1 %exitcond804.not, label %polly.loop_exit381.loopexit.us, label %polly.loop_header379.us

polly.loop_exit381.loopexit.us:                   ; preds = %polly.loop_header379.us
  %polly.indvar_next376.us = add nuw nsw i64 %polly.indvar375.us, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next376.us, 60
  br i1 %exitcond805.not, label %polly.loop_exit374, label %polly.loop_header372.us

polly.loop_exit374:                               ; preds = %polly.loop_exit381.loopexit.us, %polly.loop_header365
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %polly.loop_cond371 = icmp ult i64 %polly.indvar369, 15
  %indvars.iv.next802 = add i64 %indvars.iv801, 1
  br i1 %polly.loop_cond371, label %polly.loop_header365, label %polly.loop_exit367

polly.loop_header491:                             ; preds = %init_array.exit, %polly.loop_exit499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit499 ], [ 0, %init_array.exit ]
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_exit499 ], [ 1, %init_array.exit ]
  %140 = add i64 %indvar, 1
  %141 = mul nuw nsw i64 %polly.indvar494, 640
  %scevgep503 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check1222 = icmp ult i64 %140, 4
  br i1 %min.iters.check1222, label %polly.loop_header497.preheader, label %vector.ph1223

vector.ph1223:                                    ; preds = %polly.loop_header491
  %n.vec1225 = and i64 %140, -4
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1223
  %index1226 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1227, %vector.body1221 ]
  %142 = shl nuw nsw i64 %index1226, 3
  %143 = getelementptr i8, i8* %scevgep503, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1230 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !78, !noalias !80
  %145 = fmul fast <4 x double> %wide.load1230, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !78, !noalias !80
  %index.next1227 = add i64 %index1226, 4
  %147 = icmp eq i64 %index.next1227, %n.vec1225
  br i1 %147, label %middle.block1219, label %vector.body1221, !llvm.loop !83

middle.block1219:                                 ; preds = %vector.body1221
  %cmp.n1229 = icmp eq i64 %140, %n.vec1225
  br i1 %cmp.n1229, label %polly.loop_exit499, label %polly.loop_header497.preheader

polly.loop_header497.preheader:                   ; preds = %polly.loop_header491, %middle.block1219
  %polly.indvar500.ph = phi i64 [ 0, %polly.loop_header491 ], [ %n.vec1225, %middle.block1219 ]
  br label %polly.loop_header497

polly.loop_exit499:                               ; preds = %polly.loop_header497, %middle.block1219
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next495, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond831.not, label %polly.loop_header507, label %polly.loop_header491

polly.loop_header497:                             ; preds = %polly.loop_header497.preheader, %polly.loop_header497
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_header497 ], [ %polly.indvar500.ph, %polly.loop_header497.preheader ]
  %148 = shl nuw nsw i64 %polly.indvar500, 3
  %scevgep504 = getelementptr i8, i8* %scevgep503, i64 %148
  %scevgep504505 = bitcast i8* %scevgep504 to double*
  %_p_scalar_506 = load double, double* %scevgep504505, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_506, 1.200000e+00
  store double %p_mul.i, double* %scevgep504505, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next501, %polly.indvar494
  br i1 %exitcond830.not, label %polly.loop_exit499, label %polly.loop_header497, !llvm.loop !84

polly.loop_header507:                             ; preds = %polly.loop_exit499, %polly.loop_exit515
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %polly.loop_exit515 ], [ 2, %polly.loop_exit499 ]
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %polly.loop_exit515 ], [ 0, %polly.loop_exit499 ]
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %polly.loop_exit515 ], [ 0, %polly.loop_exit499 ]
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit515 ], [ 0, %polly.loop_exit499 ]
  %149 = mul nsw i64 %polly.indvar510, -16
  %150 = shl nsw i64 %polly.indvar510, 4
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit522
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %indvars.iv.next813 = add nsw i64 %indvars.iv812, -16
  %indvars.iv.next818 = add nuw nsw i64 %indvars.iv817, 16
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 2
  %exitcond829.not = icmp eq i64 %polly.indvar_next511, 5
  br i1 %exitcond829.not, label %kernel_syr2k.exit, label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit522, %polly.loop_header507
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit522 ], [ %indvars.iv817, %polly.loop_header507 ]
  %indvars.iv814 = phi i64 [ %indvars.iv.next815, %polly.loop_exit522 ], [ %indvars.iv812, %polly.loop_header507 ]
  %polly.indvar516 = phi i64 [ %polly.indvar_next517, %polly.loop_exit522 ], [ 0, %polly.loop_header507 ]
  %151 = shl nsw i64 %polly.indvar516, 3
  %152 = add nsw i64 %151, %149
  %153 = icmp sgt i64 %152, 0
  %154 = select i1 %153, i64 %152, i64 0
  %polly.loop_guard523 = icmp slt i64 %154, 16
  br i1 %polly.loop_guard523, label %polly.loop_header520.preheader, label %polly.loop_exit522

polly.loop_header520.preheader:                   ; preds = %polly.loop_header513
  %smax816 = call i64 @llvm.smax.i64(i64 %indvars.iv814, i64 0)
  %155 = add i64 %smax816, %indvars.iv819
  %156 = sub nsw i64 %150, %151
  br label %polly.loop_header520

polly.loop_exit522:                               ; preds = %polly.loop_exit529, %polly.loop_header513
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %indvars.iv.next815 = add nsw i64 %indvars.iv814, 8
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, -8
  %exitcond828.not = icmp eq i64 %polly.indvar_next517, %indvars.iv826
  br i1 %exitcond828.not, label %polly.loop_exit515, label %polly.loop_header513

polly.loop_header520:                             ; preds = %polly.loop_header520.preheader, %polly.loop_exit529
  %indvars.iv821 = phi i64 [ %155, %polly.loop_header520.preheader ], [ %indvars.iv.next822, %polly.loop_exit529 ]
  %polly.indvar524 = phi i64 [ %154, %polly.loop_header520.preheader ], [ %polly.indvar_next525, %polly.loop_exit529 ]
  %smin823 = call i64 @llvm.smin.i64(i64 %indvars.iv821, i64 7)
  %157 = add nsw i64 %polly.indvar524, %156
  %polly.loop_guard537916 = icmp sgt i64 %157, -1
  %158 = add nuw nsw i64 %polly.indvar524, %150
  %159 = mul i64 %158, 480
  %160 = mul i64 %158, 640
  br i1 %polly.loop_guard537916, label %polly.loop_header527.us, label %polly.loop_exit529

polly.loop_header527.us:                          ; preds = %polly.loop_header520, %polly.loop_exit536.loopexit.us
  %polly.indvar530.us = phi i64 [ %polly.indvar_next531.us, %polly.loop_exit536.loopexit.us ], [ 0, %polly.loop_header520 ]
  %161 = shl nuw nsw i64 %polly.indvar530.us, 3
  %scevgep541.us = getelementptr i8, i8* %call1, i64 %161
  %scevgep545.us = getelementptr i8, i8* %call2, i64 %161
  %scevgep546.us = getelementptr i8, i8* %scevgep545.us, i64 %159
  %scevgep546547.us = bitcast i8* %scevgep546.us to double*
  %_p_scalar_548.us = load double, double* %scevgep546547.us, align 8, !alias.scope !82, !noalias !85
  %scevgep554.us = getelementptr i8, i8* %scevgep541.us, i64 %159
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header534.us

polly.loop_header534.us:                          ; preds = %polly.loop_header534.us, %polly.loop_header527.us
  %polly.indvar538.us = phi i64 [ 0, %polly.loop_header527.us ], [ %polly.indvar_next539.us, %polly.loop_header534.us ]
  %162 = add nuw nsw i64 %polly.indvar538.us, %151
  %163 = mul nuw nsw i64 %162, 480
  %scevgep542.us = getelementptr i8, i8* %scevgep541.us, i64 %163
  %scevgep542543.us = bitcast i8* %scevgep542.us to double*
  %_p_scalar_544.us = load double, double* %scevgep542543.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_548.us, %_p_scalar_544.us
  %scevgep550.us = getelementptr i8, i8* %scevgep545.us, i64 %163
  %scevgep550551.us = bitcast i8* %scevgep550.us to double*
  %_p_scalar_552.us = load double, double* %scevgep550551.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_552.us
  %164 = shl i64 %162, 3
  %165 = add i64 %164, %160
  %scevgep557.us = getelementptr i8, i8* %call, i64 %165
  %scevgep557558.us = bitcast i8* %scevgep557.us to double*
  %_p_scalar_559.us = load double, double* %scevgep557558.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_559.us
  store double %p_add42.i.us, double* %scevgep557558.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next539.us = add nuw nsw i64 %polly.indvar538.us, 1
  %exitcond824.not = icmp eq i64 %polly.indvar538.us, %smin823
  br i1 %exitcond824.not, label %polly.loop_exit536.loopexit.us, label %polly.loop_header534.us

polly.loop_exit536.loopexit.us:                   ; preds = %polly.loop_header534.us
  %polly.indvar_next531.us = add nuw nsw i64 %polly.indvar530.us, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next531.us, 60
  br i1 %exitcond825.not, label %polly.loop_exit529, label %polly.loop_header527.us

polly.loop_exit529:                               ; preds = %polly.loop_exit536.loopexit.us, %polly.loop_header520
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %polly.loop_cond526 = icmp ult i64 %polly.indvar524, 15
  %indvars.iv.next822 = add i64 %indvars.iv821, 1
  br i1 %polly.loop_cond526, label %polly.loop_header520, label %polly.loop_exit522

polly.loop_header698:                             ; preds = %entry, %polly.loop_exit706
  %polly.indvar701 = phi i64 [ %polly.indvar_next702, %polly.loop_exit706 ], [ 0, %entry ]
  %166 = mul nuw nsw i64 %polly.indvar701, 640
  %167 = trunc i64 %polly.indvar701 to i32
  %broadcast.splatinsert953 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat954 = shufflevector <4 x i32> %broadcast.splatinsert953, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body943

vector.body943:                                   ; preds = %vector.body943, %polly.loop_header698
  %index945 = phi i64 [ 0, %polly.loop_header698 ], [ %index.next946, %vector.body943 ]
  %vec.ind951 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698 ], [ %vec.ind.next952, %vector.body943 ]
  %168 = mul <4 x i32> %vec.ind951, %broadcast.splat954
  %169 = add <4 x i32> %168, <i32 3, i32 3, i32 3, i32 3>
  %170 = urem <4 x i32> %169, <i32 80, i32 80, i32 80, i32 80>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %173 = shl i64 %index945, 3
  %174 = add nuw nsw i64 %173, %166
  %175 = getelementptr i8, i8* %call, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !87, !noalias !89
  %index.next946 = add i64 %index945, 4
  %vec.ind.next952 = add <4 x i32> %vec.ind951, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next946, 32
  br i1 %177, label %polly.loop_exit706, label %vector.body943, !llvm.loop !92

polly.loop_exit706:                               ; preds = %vector.body943
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next702, 32
  br i1 %exitcond851.not, label %polly.loop_header698.1, label %polly.loop_header698

polly.loop_header725:                             ; preds = %polly.loop_exit706.2.2, %polly.loop_exit733
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_exit733 ], [ 0, %polly.loop_exit706.2.2 ]
  %178 = mul nuw nsw i64 %polly.indvar728, 480
  %179 = trunc i64 %polly.indvar728 to i32
  %broadcast.splatinsert1067 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1068 = shufflevector <4 x i32> %broadcast.splatinsert1067, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %polly.loop_header725
  %index1059 = phi i64 [ 0, %polly.loop_header725 ], [ %index.next1060, %vector.body1057 ]
  %vec.ind1065 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725 ], [ %vec.ind.next1066, %vector.body1057 ]
  %180 = mul <4 x i32> %vec.ind1065, %broadcast.splat1068
  %181 = add <4 x i32> %180, <i32 2, i32 2, i32 2, i32 2>
  %182 = urem <4 x i32> %181, <i32 60, i32 60, i32 60, i32 60>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %185 = shl i64 %index1059, 3
  %186 = add i64 %185, %178
  %187 = getelementptr i8, i8* %call2, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %184, <4 x double>* %188, align 8, !alias.scope !91, !noalias !93
  %index.next1060 = add i64 %index1059, 4
  %vec.ind.next1066 = add <4 x i32> %vec.ind1065, <i32 4, i32 4, i32 4, i32 4>
  %189 = icmp eq i64 %index.next1060, 32
  br i1 %189, label %polly.loop_exit733, label %vector.body1057, !llvm.loop !94

polly.loop_exit733:                               ; preds = %vector.body1057
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next729, 32
  br i1 %exitcond842.not, label %polly.loop_header725.1, label %polly.loop_header725

polly.loop_header751:                             ; preds = %polly.loop_exit733.1.2, %polly.loop_exit759
  %polly.indvar754 = phi i64 [ %polly.indvar_next755, %polly.loop_exit759 ], [ 0, %polly.loop_exit733.1.2 ]
  %190 = mul nuw nsw i64 %polly.indvar754, 480
  %191 = trunc i64 %polly.indvar754 to i32
  %broadcast.splatinsert1145 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1146 = shufflevector <4 x i32> %broadcast.splatinsert1145, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %polly.loop_header751
  %index1137 = phi i64 [ 0, %polly.loop_header751 ], [ %index.next1138, %vector.body1135 ]
  %vec.ind1143 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751 ], [ %vec.ind.next1144, %vector.body1135 ]
  %192 = mul <4 x i32> %vec.ind1143, %broadcast.splat1146
  %193 = add <4 x i32> %192, <i32 1, i32 1, i32 1, i32 1>
  %194 = urem <4 x i32> %193, <i32 80, i32 80, i32 80, i32 80>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %197 = shl i64 %index1137, 3
  %198 = add i64 %197, %190
  %199 = getelementptr i8, i8* %call1, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %196, <4 x double>* %200, align 8, !alias.scope !90, !noalias !95
  %index.next1138 = add i64 %index1137, 4
  %vec.ind.next1144 = add <4 x i32> %vec.ind1143, <i32 4, i32 4, i32 4, i32 4>
  %201 = icmp eq i64 %index.next1138, 32
  br i1 %201, label %polly.loop_exit759, label %vector.body1135, !llvm.loop !96

polly.loop_exit759:                               ; preds = %vector.body1135
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next755, 32
  br i1 %exitcond836.not, label %polly.loop_header751.1, label %polly.loop_header751

polly.loop_header751.1:                           ; preds = %polly.loop_exit759, %polly.loop_exit759.1
  %polly.indvar754.1 = phi i64 [ %polly.indvar_next755.1, %polly.loop_exit759.1 ], [ 0, %polly.loop_exit759 ]
  %202 = mul nuw nsw i64 %polly.indvar754.1, 480
  %203 = trunc i64 %polly.indvar754.1 to i32
  %broadcast.splatinsert1157 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat1158 = shufflevector <4 x i32> %broadcast.splatinsert1157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1149

vector.body1149:                                  ; preds = %vector.body1149, %polly.loop_header751.1
  %index1151 = phi i64 [ 0, %polly.loop_header751.1 ], [ %index.next1152, %vector.body1149 ]
  %vec.ind1155 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1 ], [ %vec.ind.next1156, %vector.body1149 ]
  %204 = add nuw nsw <4 x i64> %vec.ind1155, <i64 32, i64 32, i64 32, i64 32>
  %205 = trunc <4 x i64> %204 to <4 x i32>
  %206 = mul <4 x i32> %broadcast.splat1158, %205
  %207 = add <4 x i32> %206, <i32 1, i32 1, i32 1, i32 1>
  %208 = urem <4 x i32> %207, <i32 80, i32 80, i32 80, i32 80>
  %209 = sitofp <4 x i32> %208 to <4 x double>
  %210 = fmul fast <4 x double> %209, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %211 = extractelement <4 x i64> %204, i32 0
  %212 = shl i64 %211, 3
  %213 = add i64 %212, %202
  %214 = getelementptr i8, i8* %call1, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %210, <4 x double>* %215, align 8, !alias.scope !90, !noalias !95
  %index.next1152 = add i64 %index1151, 4
  %vec.ind.next1156 = add <4 x i64> %vec.ind1155, <i64 4, i64 4, i64 4, i64 4>
  %216 = icmp eq i64 %index.next1152, 28
  br i1 %216, label %polly.loop_exit759.1, label %vector.body1149, !llvm.loop !97

polly.loop_exit759.1:                             ; preds = %vector.body1149
  %polly.indvar_next755.1 = add nuw nsw i64 %polly.indvar754.1, 1
  %exitcond836.1.not = icmp eq i64 %polly.indvar_next755.1, 32
  br i1 %exitcond836.1.not, label %polly.loop_header751.1859, label %polly.loop_header751.1

polly.loop_header751.1859:                        ; preds = %polly.loop_exit759.1, %polly.loop_exit759.1870
  %polly.indvar754.1858 = phi i64 [ %polly.indvar_next755.1868, %polly.loop_exit759.1870 ], [ 0, %polly.loop_exit759.1 ]
  %217 = add nuw nsw i64 %polly.indvar754.1858, 32
  %218 = mul nuw nsw i64 %217, 480
  %219 = trunc i64 %217 to i32
  %broadcast.splatinsert1171 = insertelement <4 x i32> poison, i32 %219, i32 0
  %broadcast.splat1172 = shufflevector <4 x i32> %broadcast.splatinsert1171, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %polly.loop_header751.1859
  %index1163 = phi i64 [ 0, %polly.loop_header751.1859 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1169 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751.1859 ], [ %vec.ind.next1170, %vector.body1161 ]
  %220 = mul <4 x i32> %vec.ind1169, %broadcast.splat1172
  %221 = add <4 x i32> %220, <i32 1, i32 1, i32 1, i32 1>
  %222 = urem <4 x i32> %221, <i32 80, i32 80, i32 80, i32 80>
  %223 = sitofp <4 x i32> %222 to <4 x double>
  %224 = fmul fast <4 x double> %223, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %225 = shl i64 %index1163, 3
  %226 = add i64 %225, %218
  %227 = getelementptr i8, i8* %call1, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %224, <4 x double>* %228, align 8, !alias.scope !90, !noalias !95
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1170 = add <4 x i32> %vec.ind1169, <i32 4, i32 4, i32 4, i32 4>
  %229 = icmp eq i64 %index.next1164, 32
  br i1 %229, label %polly.loop_exit759.1870, label %vector.body1161, !llvm.loop !98

polly.loop_exit759.1870:                          ; preds = %vector.body1161
  %polly.indvar_next755.1868 = add nuw nsw i64 %polly.indvar754.1858, 1
  %exitcond836.1869.not = icmp eq i64 %polly.indvar_next755.1868, 32
  br i1 %exitcond836.1869.not, label %polly.loop_header751.1.1, label %polly.loop_header751.1859

polly.loop_header751.1.1:                         ; preds = %polly.loop_exit759.1870, %polly.loop_exit759.1.1
  %polly.indvar754.1.1 = phi i64 [ %polly.indvar_next755.1.1, %polly.loop_exit759.1.1 ], [ 0, %polly.loop_exit759.1870 ]
  %230 = add nuw nsw i64 %polly.indvar754.1.1, 32
  %231 = mul nuw nsw i64 %230, 480
  %232 = trunc i64 %230 to i32
  %broadcast.splatinsert1183 = insertelement <4 x i32> poison, i32 %232, i32 0
  %broadcast.splat1184 = shufflevector <4 x i32> %broadcast.splatinsert1183, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %polly.loop_header751.1.1
  %index1177 = phi i64 [ 0, %polly.loop_header751.1.1 ], [ %index.next1178, %vector.body1175 ]
  %vec.ind1181 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1.1 ], [ %vec.ind.next1182, %vector.body1175 ]
  %233 = add nuw nsw <4 x i64> %vec.ind1181, <i64 32, i64 32, i64 32, i64 32>
  %234 = trunc <4 x i64> %233 to <4 x i32>
  %235 = mul <4 x i32> %broadcast.splat1184, %234
  %236 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %237 = urem <4 x i32> %236, <i32 80, i32 80, i32 80, i32 80>
  %238 = sitofp <4 x i32> %237 to <4 x double>
  %239 = fmul fast <4 x double> %238, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %240 = extractelement <4 x i64> %233, i32 0
  %241 = shl i64 %240, 3
  %242 = add i64 %241, %231
  %243 = getelementptr i8, i8* %call1, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %239, <4 x double>* %244, align 8, !alias.scope !90, !noalias !95
  %index.next1178 = add i64 %index1177, 4
  %vec.ind.next1182 = add <4 x i64> %vec.ind1181, <i64 4, i64 4, i64 4, i64 4>
  %245 = icmp eq i64 %index.next1178, 28
  br i1 %245, label %polly.loop_exit759.1.1, label %vector.body1175, !llvm.loop !99

polly.loop_exit759.1.1:                           ; preds = %vector.body1175
  %polly.indvar_next755.1.1 = add nuw nsw i64 %polly.indvar754.1.1, 1
  %exitcond836.1.1.not = icmp eq i64 %polly.indvar_next755.1.1, 32
  br i1 %exitcond836.1.1.not, label %polly.loop_header751.2, label %polly.loop_header751.1.1

polly.loop_header751.2:                           ; preds = %polly.loop_exit759.1.1, %polly.loop_exit759.2
  %polly.indvar754.2 = phi i64 [ %polly.indvar_next755.2, %polly.loop_exit759.2 ], [ 0, %polly.loop_exit759.1.1 ]
  %246 = add nuw nsw i64 %polly.indvar754.2, 64
  %247 = mul nuw nsw i64 %246, 480
  %248 = trunc i64 %246 to i32
  %broadcast.splatinsert1197 = insertelement <4 x i32> poison, i32 %248, i32 0
  %broadcast.splat1198 = shufflevector <4 x i32> %broadcast.splatinsert1197, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %polly.loop_header751.2
  %index1189 = phi i64 [ 0, %polly.loop_header751.2 ], [ %index.next1190, %vector.body1187 ]
  %vec.ind1195 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751.2 ], [ %vec.ind.next1196, %vector.body1187 ]
  %249 = mul <4 x i32> %vec.ind1195, %broadcast.splat1198
  %250 = add <4 x i32> %249, <i32 1, i32 1, i32 1, i32 1>
  %251 = urem <4 x i32> %250, <i32 80, i32 80, i32 80, i32 80>
  %252 = sitofp <4 x i32> %251 to <4 x double>
  %253 = fmul fast <4 x double> %252, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %254 = shl i64 %index1189, 3
  %255 = add i64 %254, %247
  %256 = getelementptr i8, i8* %call1, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %253, <4 x double>* %257, align 8, !alias.scope !90, !noalias !95
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1196 = add <4 x i32> %vec.ind1195, <i32 4, i32 4, i32 4, i32 4>
  %258 = icmp eq i64 %index.next1190, 32
  br i1 %258, label %polly.loop_exit759.2, label %vector.body1187, !llvm.loop !100

polly.loop_exit759.2:                             ; preds = %vector.body1187
  %polly.indvar_next755.2 = add nuw nsw i64 %polly.indvar754.2, 1
  %exitcond836.2.not = icmp eq i64 %polly.indvar_next755.2, 16
  br i1 %exitcond836.2.not, label %polly.loop_header751.1.2, label %polly.loop_header751.2

polly.loop_header751.1.2:                         ; preds = %polly.loop_exit759.2, %polly.loop_exit759.1.2
  %polly.indvar754.1.2 = phi i64 [ %polly.indvar_next755.1.2, %polly.loop_exit759.1.2 ], [ 0, %polly.loop_exit759.2 ]
  %259 = add nuw nsw i64 %polly.indvar754.1.2, 64
  %260 = mul nuw nsw i64 %259, 480
  %261 = trunc i64 %259 to i32
  %broadcast.splatinsert1209 = insertelement <4 x i32> poison, i32 %261, i32 0
  %broadcast.splat1210 = shufflevector <4 x i32> %broadcast.splatinsert1209, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %polly.loop_header751.1.2
  %index1203 = phi i64 [ 0, %polly.loop_header751.1.2 ], [ %index.next1204, %vector.body1201 ]
  %vec.ind1207 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1.2 ], [ %vec.ind.next1208, %vector.body1201 ]
  %262 = add nuw nsw <4 x i64> %vec.ind1207, <i64 32, i64 32, i64 32, i64 32>
  %263 = trunc <4 x i64> %262 to <4 x i32>
  %264 = mul <4 x i32> %broadcast.splat1210, %263
  %265 = add <4 x i32> %264, <i32 1, i32 1, i32 1, i32 1>
  %266 = urem <4 x i32> %265, <i32 80, i32 80, i32 80, i32 80>
  %267 = sitofp <4 x i32> %266 to <4 x double>
  %268 = fmul fast <4 x double> %267, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %269 = extractelement <4 x i64> %262, i32 0
  %270 = shl i64 %269, 3
  %271 = add i64 %270, %260
  %272 = getelementptr i8, i8* %call1, i64 %271
  %273 = bitcast i8* %272 to <4 x double>*
  store <4 x double> %268, <4 x double>* %273, align 8, !alias.scope !90, !noalias !95
  %index.next1204 = add i64 %index1203, 4
  %vec.ind.next1208 = add <4 x i64> %vec.ind1207, <i64 4, i64 4, i64 4, i64 4>
  %274 = icmp eq i64 %index.next1204, 28
  br i1 %274, label %polly.loop_exit759.1.2, label %vector.body1201, !llvm.loop !101

polly.loop_exit759.1.2:                           ; preds = %vector.body1201
  %polly.indvar_next755.1.2 = add nuw nsw i64 %polly.indvar754.1.2, 1
  %exitcond836.1.2.not = icmp eq i64 %polly.indvar_next755.1.2, 16
  br i1 %exitcond836.1.2.not, label %init_array.exit, label %polly.loop_header751.1.2

polly.loop_header725.1:                           ; preds = %polly.loop_exit733, %polly.loop_exit733.1
  %polly.indvar728.1 = phi i64 [ %polly.indvar_next729.1, %polly.loop_exit733.1 ], [ 0, %polly.loop_exit733 ]
  %275 = mul nuw nsw i64 %polly.indvar728.1, 480
  %276 = trunc i64 %polly.indvar728.1 to i32
  %broadcast.splatinsert1079 = insertelement <4 x i32> poison, i32 %276, i32 0
  %broadcast.splat1080 = shufflevector <4 x i32> %broadcast.splatinsert1079, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %polly.loop_header725.1
  %index1073 = phi i64 [ 0, %polly.loop_header725.1 ], [ %index.next1074, %vector.body1071 ]
  %vec.ind1077 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1 ], [ %vec.ind.next1078, %vector.body1071 ]
  %277 = add nuw nsw <4 x i64> %vec.ind1077, <i64 32, i64 32, i64 32, i64 32>
  %278 = trunc <4 x i64> %277 to <4 x i32>
  %279 = mul <4 x i32> %broadcast.splat1080, %278
  %280 = add <4 x i32> %279, <i32 2, i32 2, i32 2, i32 2>
  %281 = urem <4 x i32> %280, <i32 60, i32 60, i32 60, i32 60>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %284 = extractelement <4 x i64> %277, i32 0
  %285 = shl i64 %284, 3
  %286 = add i64 %285, %275
  %287 = getelementptr i8, i8* %call2, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %283, <4 x double>* %288, align 8, !alias.scope !91, !noalias !93
  %index.next1074 = add i64 %index1073, 4
  %vec.ind.next1078 = add <4 x i64> %vec.ind1077, <i64 4, i64 4, i64 4, i64 4>
  %289 = icmp eq i64 %index.next1074, 28
  br i1 %289, label %polly.loop_exit733.1, label %vector.body1071, !llvm.loop !102

polly.loop_exit733.1:                             ; preds = %vector.body1071
  %polly.indvar_next729.1 = add nuw nsw i64 %polly.indvar728.1, 1
  %exitcond842.1.not = icmp eq i64 %polly.indvar_next729.1, 32
  br i1 %exitcond842.1.not, label %polly.loop_header725.1873, label %polly.loop_header725.1

polly.loop_header725.1873:                        ; preds = %polly.loop_exit733.1, %polly.loop_exit733.1884
  %polly.indvar728.1872 = phi i64 [ %polly.indvar_next729.1882, %polly.loop_exit733.1884 ], [ 0, %polly.loop_exit733.1 ]
  %290 = add nuw nsw i64 %polly.indvar728.1872, 32
  %291 = mul nuw nsw i64 %290, 480
  %292 = trunc i64 %290 to i32
  %broadcast.splatinsert1093 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1094 = shufflevector <4 x i32> %broadcast.splatinsert1093, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %polly.loop_header725.1873
  %index1085 = phi i64 [ 0, %polly.loop_header725.1873 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1091 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.1873 ], [ %vec.ind.next1092, %vector.body1083 ]
  %293 = mul <4 x i32> %vec.ind1091, %broadcast.splat1094
  %294 = add <4 x i32> %293, <i32 2, i32 2, i32 2, i32 2>
  %295 = urem <4 x i32> %294, <i32 60, i32 60, i32 60, i32 60>
  %296 = sitofp <4 x i32> %295 to <4 x double>
  %297 = fmul fast <4 x double> %296, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %298 = shl i64 %index1085, 3
  %299 = add i64 %298, %291
  %300 = getelementptr i8, i8* %call2, i64 %299
  %301 = bitcast i8* %300 to <4 x double>*
  store <4 x double> %297, <4 x double>* %301, align 8, !alias.scope !91, !noalias !93
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1092 = add <4 x i32> %vec.ind1091, <i32 4, i32 4, i32 4, i32 4>
  %302 = icmp eq i64 %index.next1086, 32
  br i1 %302, label %polly.loop_exit733.1884, label %vector.body1083, !llvm.loop !103

polly.loop_exit733.1884:                          ; preds = %vector.body1083
  %polly.indvar_next729.1882 = add nuw nsw i64 %polly.indvar728.1872, 1
  %exitcond842.1883.not = icmp eq i64 %polly.indvar_next729.1882, 32
  br i1 %exitcond842.1883.not, label %polly.loop_header725.1.1, label %polly.loop_header725.1873

polly.loop_header725.1.1:                         ; preds = %polly.loop_exit733.1884, %polly.loop_exit733.1.1
  %polly.indvar728.1.1 = phi i64 [ %polly.indvar_next729.1.1, %polly.loop_exit733.1.1 ], [ 0, %polly.loop_exit733.1884 ]
  %303 = add nuw nsw i64 %polly.indvar728.1.1, 32
  %304 = mul nuw nsw i64 %303, 480
  %305 = trunc i64 %303 to i32
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %305, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %polly.loop_header725.1.1
  %index1099 = phi i64 [ 0, %polly.loop_header725.1.1 ], [ %index.next1100, %vector.body1097 ]
  %vec.ind1103 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.1 ], [ %vec.ind.next1104, %vector.body1097 ]
  %306 = add nuw nsw <4 x i64> %vec.ind1103, <i64 32, i64 32, i64 32, i64 32>
  %307 = trunc <4 x i64> %306 to <4 x i32>
  %308 = mul <4 x i32> %broadcast.splat1106, %307
  %309 = add <4 x i32> %308, <i32 2, i32 2, i32 2, i32 2>
  %310 = urem <4 x i32> %309, <i32 60, i32 60, i32 60, i32 60>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %313 = extractelement <4 x i64> %306, i32 0
  %314 = shl i64 %313, 3
  %315 = add i64 %314, %304
  %316 = getelementptr i8, i8* %call2, i64 %315
  %317 = bitcast i8* %316 to <4 x double>*
  store <4 x double> %312, <4 x double>* %317, align 8, !alias.scope !91, !noalias !93
  %index.next1100 = add i64 %index1099, 4
  %vec.ind.next1104 = add <4 x i64> %vec.ind1103, <i64 4, i64 4, i64 4, i64 4>
  %318 = icmp eq i64 %index.next1100, 28
  br i1 %318, label %polly.loop_exit733.1.1, label %vector.body1097, !llvm.loop !104

polly.loop_exit733.1.1:                           ; preds = %vector.body1097
  %polly.indvar_next729.1.1 = add nuw nsw i64 %polly.indvar728.1.1, 1
  %exitcond842.1.1.not = icmp eq i64 %polly.indvar_next729.1.1, 32
  br i1 %exitcond842.1.1.not, label %polly.loop_header725.2, label %polly.loop_header725.1.1

polly.loop_header725.2:                           ; preds = %polly.loop_exit733.1.1, %polly.loop_exit733.2
  %polly.indvar728.2 = phi i64 [ %polly.indvar_next729.2, %polly.loop_exit733.2 ], [ 0, %polly.loop_exit733.1.1 ]
  %319 = add nuw nsw i64 %polly.indvar728.2, 64
  %320 = mul nuw nsw i64 %319, 480
  %321 = trunc i64 %319 to i32
  %broadcast.splatinsert1119 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1120 = shufflevector <4 x i32> %broadcast.splatinsert1119, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %polly.loop_header725.2
  %index1111 = phi i64 [ 0, %polly.loop_header725.2 ], [ %index.next1112, %vector.body1109 ]
  %vec.ind1117 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.2 ], [ %vec.ind.next1118, %vector.body1109 ]
  %322 = mul <4 x i32> %vec.ind1117, %broadcast.splat1120
  %323 = add <4 x i32> %322, <i32 2, i32 2, i32 2, i32 2>
  %324 = urem <4 x i32> %323, <i32 60, i32 60, i32 60, i32 60>
  %325 = sitofp <4 x i32> %324 to <4 x double>
  %326 = fmul fast <4 x double> %325, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %327 = shl i64 %index1111, 3
  %328 = add i64 %327, %320
  %329 = getelementptr i8, i8* %call2, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %326, <4 x double>* %330, align 8, !alias.scope !91, !noalias !93
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1118 = add <4 x i32> %vec.ind1117, <i32 4, i32 4, i32 4, i32 4>
  %331 = icmp eq i64 %index.next1112, 32
  br i1 %331, label %polly.loop_exit733.2, label %vector.body1109, !llvm.loop !105

polly.loop_exit733.2:                             ; preds = %vector.body1109
  %polly.indvar_next729.2 = add nuw nsw i64 %polly.indvar728.2, 1
  %exitcond842.2.not = icmp eq i64 %polly.indvar_next729.2, 16
  br i1 %exitcond842.2.not, label %polly.loop_header725.1.2, label %polly.loop_header725.2

polly.loop_header725.1.2:                         ; preds = %polly.loop_exit733.2, %polly.loop_exit733.1.2
  %polly.indvar728.1.2 = phi i64 [ %polly.indvar_next729.1.2, %polly.loop_exit733.1.2 ], [ 0, %polly.loop_exit733.2 ]
  %332 = add nuw nsw i64 %polly.indvar728.1.2, 64
  %333 = mul nuw nsw i64 %332, 480
  %334 = trunc i64 %332 to i32
  %broadcast.splatinsert1131 = insertelement <4 x i32> poison, i32 %334, i32 0
  %broadcast.splat1132 = shufflevector <4 x i32> %broadcast.splatinsert1131, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1123

vector.body1123:                                  ; preds = %vector.body1123, %polly.loop_header725.1.2
  %index1125 = phi i64 [ 0, %polly.loop_header725.1.2 ], [ %index.next1126, %vector.body1123 ]
  %vec.ind1129 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.2 ], [ %vec.ind.next1130, %vector.body1123 ]
  %335 = add nuw nsw <4 x i64> %vec.ind1129, <i64 32, i64 32, i64 32, i64 32>
  %336 = trunc <4 x i64> %335 to <4 x i32>
  %337 = mul <4 x i32> %broadcast.splat1132, %336
  %338 = add <4 x i32> %337, <i32 2, i32 2, i32 2, i32 2>
  %339 = urem <4 x i32> %338, <i32 60, i32 60, i32 60, i32 60>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %342 = extractelement <4 x i64> %335, i32 0
  %343 = shl i64 %342, 3
  %344 = add i64 %343, %333
  %345 = getelementptr i8, i8* %call2, i64 %344
  %346 = bitcast i8* %345 to <4 x double>*
  store <4 x double> %341, <4 x double>* %346, align 8, !alias.scope !91, !noalias !93
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1130 = add <4 x i64> %vec.ind1129, <i64 4, i64 4, i64 4, i64 4>
  %347 = icmp eq i64 %index.next1126, 28
  br i1 %347, label %polly.loop_exit733.1.2, label %vector.body1123, !llvm.loop !106

polly.loop_exit733.1.2:                           ; preds = %vector.body1123
  %polly.indvar_next729.1.2 = add nuw nsw i64 %polly.indvar728.1.2, 1
  %exitcond842.1.2.not = icmp eq i64 %polly.indvar_next729.1.2, 16
  br i1 %exitcond842.1.2.not, label %polly.loop_header751, label %polly.loop_header725.1.2

polly.loop_header698.1:                           ; preds = %polly.loop_exit706, %polly.loop_exit706.1
  %polly.indvar701.1 = phi i64 [ %polly.indvar_next702.1, %polly.loop_exit706.1 ], [ 0, %polly.loop_exit706 ]
  %348 = mul nuw nsw i64 %polly.indvar701.1, 640
  %349 = trunc i64 %polly.indvar701.1 to i32
  %broadcast.splatinsert965 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat966 = shufflevector <4 x i32> %broadcast.splatinsert965, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %polly.loop_header698.1
  %index959 = phi i64 [ 0, %polly.loop_header698.1 ], [ %index.next960, %vector.body957 ]
  %vec.ind963 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1 ], [ %vec.ind.next964, %vector.body957 ]
  %350 = add nuw nsw <4 x i64> %vec.ind963, <i64 32, i64 32, i64 32, i64 32>
  %351 = trunc <4 x i64> %350 to <4 x i32>
  %352 = mul <4 x i32> %broadcast.splat966, %351
  %353 = add <4 x i32> %352, <i32 3, i32 3, i32 3, i32 3>
  %354 = urem <4 x i32> %353, <i32 80, i32 80, i32 80, i32 80>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = extractelement <4 x i64> %350, i32 0
  %358 = shl i64 %357, 3
  %359 = add nuw nsw i64 %358, %348
  %360 = getelementptr i8, i8* %call, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %356, <4 x double>* %361, align 8, !alias.scope !87, !noalias !89
  %index.next960 = add i64 %index959, 4
  %vec.ind.next964 = add <4 x i64> %vec.ind963, <i64 4, i64 4, i64 4, i64 4>
  %362 = icmp eq i64 %index.next960, 32
  br i1 %362, label %polly.loop_exit706.1, label %vector.body957, !llvm.loop !107

polly.loop_exit706.1:                             ; preds = %vector.body957
  %polly.indvar_next702.1 = add nuw nsw i64 %polly.indvar701.1, 1
  %exitcond851.1.not = icmp eq i64 %polly.indvar_next702.1, 32
  br i1 %exitcond851.1.not, label %polly.loop_header698.2, label %polly.loop_header698.1

polly.loop_header698.2:                           ; preds = %polly.loop_exit706.1, %polly.loop_exit706.2
  %polly.indvar701.2 = phi i64 [ %polly.indvar_next702.2, %polly.loop_exit706.2 ], [ 0, %polly.loop_exit706.1 ]
  %363 = mul nuw nsw i64 %polly.indvar701.2, 640
  %364 = trunc i64 %polly.indvar701.2 to i32
  %broadcast.splatinsert977 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat978 = shufflevector <4 x i32> %broadcast.splatinsert977, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %polly.loop_header698.2
  %index971 = phi i64 [ 0, %polly.loop_header698.2 ], [ %index.next972, %vector.body969 ]
  %vec.ind975 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2 ], [ %vec.ind.next976, %vector.body969 ]
  %365 = add nuw nsw <4 x i64> %vec.ind975, <i64 64, i64 64, i64 64, i64 64>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat978, %366
  %368 = add <4 x i32> %367, <i32 3, i32 3, i32 3, i32 3>
  %369 = urem <4 x i32> %368, <i32 80, i32 80, i32 80, i32 80>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add nuw nsw i64 %373, %363
  %375 = getelementptr i8, i8* %call, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !87, !noalias !89
  %index.next972 = add i64 %index971, 4
  %vec.ind.next976 = add <4 x i64> %vec.ind975, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next972, 16
  br i1 %377, label %polly.loop_exit706.2, label %vector.body969, !llvm.loop !108

polly.loop_exit706.2:                             ; preds = %vector.body969
  %polly.indvar_next702.2 = add nuw nsw i64 %polly.indvar701.2, 1
  %exitcond851.2.not = icmp eq i64 %polly.indvar_next702.2, 32
  br i1 %exitcond851.2.not, label %polly.loop_header698.1887, label %polly.loop_header698.2

polly.loop_header698.1887:                        ; preds = %polly.loop_exit706.2, %polly.loop_exit706.1898
  %polly.indvar701.1886 = phi i64 [ %polly.indvar_next702.1896, %polly.loop_exit706.1898 ], [ 0, %polly.loop_exit706.2 ]
  %378 = add nuw nsw i64 %polly.indvar701.1886, 32
  %379 = mul nuw nsw i64 %378, 640
  %380 = trunc i64 %378 to i32
  %broadcast.splatinsert991 = insertelement <4 x i32> poison, i32 %380, i32 0
  %broadcast.splat992 = shufflevector <4 x i32> %broadcast.splatinsert991, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %polly.loop_header698.1887
  %index983 = phi i64 [ 0, %polly.loop_header698.1887 ], [ %index.next984, %vector.body981 ]
  %vec.ind989 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698.1887 ], [ %vec.ind.next990, %vector.body981 ]
  %381 = mul <4 x i32> %vec.ind989, %broadcast.splat992
  %382 = add <4 x i32> %381, <i32 3, i32 3, i32 3, i32 3>
  %383 = urem <4 x i32> %382, <i32 80, i32 80, i32 80, i32 80>
  %384 = sitofp <4 x i32> %383 to <4 x double>
  %385 = fmul fast <4 x double> %384, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %386 = shl i64 %index983, 3
  %387 = add nuw nsw i64 %386, %379
  %388 = getelementptr i8, i8* %call, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %385, <4 x double>* %389, align 8, !alias.scope !87, !noalias !89
  %index.next984 = add i64 %index983, 4
  %vec.ind.next990 = add <4 x i32> %vec.ind989, <i32 4, i32 4, i32 4, i32 4>
  %390 = icmp eq i64 %index.next984, 32
  br i1 %390, label %polly.loop_exit706.1898, label %vector.body981, !llvm.loop !109

polly.loop_exit706.1898:                          ; preds = %vector.body981
  %polly.indvar_next702.1896 = add nuw nsw i64 %polly.indvar701.1886, 1
  %exitcond851.1897.not = icmp eq i64 %polly.indvar_next702.1896, 32
  br i1 %exitcond851.1897.not, label %polly.loop_header698.1.1, label %polly.loop_header698.1887

polly.loop_header698.1.1:                         ; preds = %polly.loop_exit706.1898, %polly.loop_exit706.1.1
  %polly.indvar701.1.1 = phi i64 [ %polly.indvar_next702.1.1, %polly.loop_exit706.1.1 ], [ 0, %polly.loop_exit706.1898 ]
  %391 = add nuw nsw i64 %polly.indvar701.1.1, 32
  %392 = mul nuw nsw i64 %391, 640
  %393 = trunc i64 %391 to i32
  %broadcast.splatinsert1003 = insertelement <4 x i32> poison, i32 %393, i32 0
  %broadcast.splat1004 = shufflevector <4 x i32> %broadcast.splatinsert1003, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %polly.loop_header698.1.1
  %index997 = phi i64 [ 0, %polly.loop_header698.1.1 ], [ %index.next998, %vector.body995 ]
  %vec.ind1001 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1.1 ], [ %vec.ind.next1002, %vector.body995 ]
  %394 = add nuw nsw <4 x i64> %vec.ind1001, <i64 32, i64 32, i64 32, i64 32>
  %395 = trunc <4 x i64> %394 to <4 x i32>
  %396 = mul <4 x i32> %broadcast.splat1004, %395
  %397 = add <4 x i32> %396, <i32 3, i32 3, i32 3, i32 3>
  %398 = urem <4 x i32> %397, <i32 80, i32 80, i32 80, i32 80>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %401 = extractelement <4 x i64> %394, i32 0
  %402 = shl i64 %401, 3
  %403 = add nuw nsw i64 %402, %392
  %404 = getelementptr i8, i8* %call, i64 %403
  %405 = bitcast i8* %404 to <4 x double>*
  store <4 x double> %400, <4 x double>* %405, align 8, !alias.scope !87, !noalias !89
  %index.next998 = add i64 %index997, 4
  %vec.ind.next1002 = add <4 x i64> %vec.ind1001, <i64 4, i64 4, i64 4, i64 4>
  %406 = icmp eq i64 %index.next998, 32
  br i1 %406, label %polly.loop_exit706.1.1, label %vector.body995, !llvm.loop !110

polly.loop_exit706.1.1:                           ; preds = %vector.body995
  %polly.indvar_next702.1.1 = add nuw nsw i64 %polly.indvar701.1.1, 1
  %exitcond851.1.1.not = icmp eq i64 %polly.indvar_next702.1.1, 32
  br i1 %exitcond851.1.1.not, label %polly.loop_header698.2.1, label %polly.loop_header698.1.1

polly.loop_header698.2.1:                         ; preds = %polly.loop_exit706.1.1, %polly.loop_exit706.2.1
  %polly.indvar701.2.1 = phi i64 [ %polly.indvar_next702.2.1, %polly.loop_exit706.2.1 ], [ 0, %polly.loop_exit706.1.1 ]
  %407 = add nuw nsw i64 %polly.indvar701.2.1, 32
  %408 = mul nuw nsw i64 %407, 640
  %409 = trunc i64 %407 to i32
  %broadcast.splatinsert1015 = insertelement <4 x i32> poison, i32 %409, i32 0
  %broadcast.splat1016 = shufflevector <4 x i32> %broadcast.splatinsert1015, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %polly.loop_header698.2.1
  %index1009 = phi i64 [ 0, %polly.loop_header698.2.1 ], [ %index.next1010, %vector.body1007 ]
  %vec.ind1013 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2.1 ], [ %vec.ind.next1014, %vector.body1007 ]
  %410 = add nuw nsw <4 x i64> %vec.ind1013, <i64 64, i64 64, i64 64, i64 64>
  %411 = trunc <4 x i64> %410 to <4 x i32>
  %412 = mul <4 x i32> %broadcast.splat1016, %411
  %413 = add <4 x i32> %412, <i32 3, i32 3, i32 3, i32 3>
  %414 = urem <4 x i32> %413, <i32 80, i32 80, i32 80, i32 80>
  %415 = sitofp <4 x i32> %414 to <4 x double>
  %416 = fmul fast <4 x double> %415, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %417 = extractelement <4 x i64> %410, i32 0
  %418 = shl i64 %417, 3
  %419 = add nuw nsw i64 %418, %408
  %420 = getelementptr i8, i8* %call, i64 %419
  %421 = bitcast i8* %420 to <4 x double>*
  store <4 x double> %416, <4 x double>* %421, align 8, !alias.scope !87, !noalias !89
  %index.next1010 = add i64 %index1009, 4
  %vec.ind.next1014 = add <4 x i64> %vec.ind1013, <i64 4, i64 4, i64 4, i64 4>
  %422 = icmp eq i64 %index.next1010, 16
  br i1 %422, label %polly.loop_exit706.2.1, label %vector.body1007, !llvm.loop !111

polly.loop_exit706.2.1:                           ; preds = %vector.body1007
  %polly.indvar_next702.2.1 = add nuw nsw i64 %polly.indvar701.2.1, 1
  %exitcond851.2.1.not = icmp eq i64 %polly.indvar_next702.2.1, 32
  br i1 %exitcond851.2.1.not, label %polly.loop_header698.2901, label %polly.loop_header698.2.1

polly.loop_header698.2901:                        ; preds = %polly.loop_exit706.2.1, %polly.loop_exit706.2912
  %polly.indvar701.2900 = phi i64 [ %polly.indvar_next702.2910, %polly.loop_exit706.2912 ], [ 0, %polly.loop_exit706.2.1 ]
  %423 = add nuw nsw i64 %polly.indvar701.2900, 64
  %424 = mul nuw nsw i64 %423, 640
  %425 = trunc i64 %423 to i32
  %broadcast.splatinsert1029 = insertelement <4 x i32> poison, i32 %425, i32 0
  %broadcast.splat1030 = shufflevector <4 x i32> %broadcast.splatinsert1029, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %polly.loop_header698.2901
  %index1021 = phi i64 [ 0, %polly.loop_header698.2901 ], [ %index.next1022, %vector.body1019 ]
  %vec.ind1027 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698.2901 ], [ %vec.ind.next1028, %vector.body1019 ]
  %426 = mul <4 x i32> %vec.ind1027, %broadcast.splat1030
  %427 = add <4 x i32> %426, <i32 3, i32 3, i32 3, i32 3>
  %428 = urem <4 x i32> %427, <i32 80, i32 80, i32 80, i32 80>
  %429 = sitofp <4 x i32> %428 to <4 x double>
  %430 = fmul fast <4 x double> %429, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %431 = shl i64 %index1021, 3
  %432 = add nuw nsw i64 %431, %424
  %433 = getelementptr i8, i8* %call, i64 %432
  %434 = bitcast i8* %433 to <4 x double>*
  store <4 x double> %430, <4 x double>* %434, align 8, !alias.scope !87, !noalias !89
  %index.next1022 = add i64 %index1021, 4
  %vec.ind.next1028 = add <4 x i32> %vec.ind1027, <i32 4, i32 4, i32 4, i32 4>
  %435 = icmp eq i64 %index.next1022, 32
  br i1 %435, label %polly.loop_exit706.2912, label %vector.body1019, !llvm.loop !112

polly.loop_exit706.2912:                          ; preds = %vector.body1019
  %polly.indvar_next702.2910 = add nuw nsw i64 %polly.indvar701.2900, 1
  %exitcond851.2911.not = icmp eq i64 %polly.indvar_next702.2910, 16
  br i1 %exitcond851.2911.not, label %polly.loop_header698.1.2, label %polly.loop_header698.2901

polly.loop_header698.1.2:                         ; preds = %polly.loop_exit706.2912, %polly.loop_exit706.1.2
  %polly.indvar701.1.2 = phi i64 [ %polly.indvar_next702.1.2, %polly.loop_exit706.1.2 ], [ 0, %polly.loop_exit706.2912 ]
  %436 = add nuw nsw i64 %polly.indvar701.1.2, 64
  %437 = mul nuw nsw i64 %436, 640
  %438 = trunc i64 %436 to i32
  %broadcast.splatinsert1041 = insertelement <4 x i32> poison, i32 %438, i32 0
  %broadcast.splat1042 = shufflevector <4 x i32> %broadcast.splatinsert1041, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %polly.loop_header698.1.2
  %index1035 = phi i64 [ 0, %polly.loop_header698.1.2 ], [ %index.next1036, %vector.body1033 ]
  %vec.ind1039 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1.2 ], [ %vec.ind.next1040, %vector.body1033 ]
  %439 = add nuw nsw <4 x i64> %vec.ind1039, <i64 32, i64 32, i64 32, i64 32>
  %440 = trunc <4 x i64> %439 to <4 x i32>
  %441 = mul <4 x i32> %broadcast.splat1042, %440
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = extractelement <4 x i64> %439, i32 0
  %447 = shl i64 %446, 3
  %448 = add nuw nsw i64 %447, %437
  %449 = getelementptr i8, i8* %call, i64 %448
  %450 = bitcast i8* %449 to <4 x double>*
  store <4 x double> %445, <4 x double>* %450, align 8, !alias.scope !87, !noalias !89
  %index.next1036 = add i64 %index1035, 4
  %vec.ind.next1040 = add <4 x i64> %vec.ind1039, <i64 4, i64 4, i64 4, i64 4>
  %451 = icmp eq i64 %index.next1036, 32
  br i1 %451, label %polly.loop_exit706.1.2, label %vector.body1033, !llvm.loop !113

polly.loop_exit706.1.2:                           ; preds = %vector.body1033
  %polly.indvar_next702.1.2 = add nuw nsw i64 %polly.indvar701.1.2, 1
  %exitcond851.1.2.not = icmp eq i64 %polly.indvar_next702.1.2, 16
  br i1 %exitcond851.1.2.not, label %polly.loop_header698.2.2, label %polly.loop_header698.1.2

polly.loop_header698.2.2:                         ; preds = %polly.loop_exit706.1.2, %polly.loop_exit706.2.2
  %polly.indvar701.2.2 = phi i64 [ %polly.indvar_next702.2.2, %polly.loop_exit706.2.2 ], [ 0, %polly.loop_exit706.1.2 ]
  %452 = add nuw nsw i64 %polly.indvar701.2.2, 64
  %453 = mul nuw nsw i64 %452, 640
  %454 = trunc i64 %452 to i32
  %broadcast.splatinsert1053 = insertelement <4 x i32> poison, i32 %454, i32 0
  %broadcast.splat1054 = shufflevector <4 x i32> %broadcast.splatinsert1053, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %polly.loop_header698.2.2
  %index1047 = phi i64 [ 0, %polly.loop_header698.2.2 ], [ %index.next1048, %vector.body1045 ]
  %vec.ind1051 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2.2 ], [ %vec.ind.next1052, %vector.body1045 ]
  %455 = add nuw nsw <4 x i64> %vec.ind1051, <i64 64, i64 64, i64 64, i64 64>
  %456 = trunc <4 x i64> %455 to <4 x i32>
  %457 = mul <4 x i32> %broadcast.splat1054, %456
  %458 = add <4 x i32> %457, <i32 3, i32 3, i32 3, i32 3>
  %459 = urem <4 x i32> %458, <i32 80, i32 80, i32 80, i32 80>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = extractelement <4 x i64> %455, i32 0
  %463 = shl i64 %462, 3
  %464 = add nuw nsw i64 %463, %453
  %465 = getelementptr i8, i8* %call, i64 %464
  %466 = bitcast i8* %465 to <4 x double>*
  store <4 x double> %461, <4 x double>* %466, align 8, !alias.scope !87, !noalias !89
  %index.next1048 = add i64 %index1047, 4
  %vec.ind.next1052 = add <4 x i64> %vec.ind1051, <i64 4, i64 4, i64 4, i64 4>
  %467 = icmp eq i64 %index.next1048, 16
  br i1 %467, label %polly.loop_exit706.2.2, label %vector.body1045, !llvm.loop !114

polly.loop_exit706.2.2:                           ; preds = %vector.body1045
  %polly.indvar_next702.2.2 = add nuw nsw i64 %polly.indvar701.2.2, 1
  %exitcond851.2.2.not = icmp eq i64 %polly.indvar_next702.2.2, 16
  br i1 %exitcond851.2.2.not, label %polly.loop_header725, label %polly.loop_header698.2.2
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
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 2048}
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
!44 = !{!"llvm.loop.tile.size", i32 16}
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
