; ModuleID = 'syr2k_recreations//mmp_syr2k_S_46.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_46.c"
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
  %call736 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1597 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1597, %call2
  %polly.access.call2617 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2617, %call1
  %2 = or i1 %0, %1
  %polly.access.call637 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call637, %call2
  %4 = icmp ule i8* %polly.access.call2617, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call637, %call1
  %8 = icmp ule i8* %polly.access.call1597, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header722, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep905 = getelementptr i8, i8* %call2, i64 %12
  %scevgep904 = getelementptr i8, i8* %call2, i64 %11
  %scevgep903 = getelementptr i8, i8* %call1, i64 %12
  %scevgep902 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep902, %scevgep905
  %bound1 = icmp ult i8* %scevgep904, %scevgep903
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
  br i1 %exitcond18.not.i, label %vector.ph909, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph909:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert916 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat917 = shufflevector <4 x i64> %broadcast.splatinsert916, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body908

vector.body908:                                   ; preds = %vector.body908, %vector.ph909
  %index910 = phi i64 [ 0, %vector.ph909 ], [ %index.next911, %vector.body908 ]
  %vec.ind914 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph909 ], [ %vec.ind.next915, %vector.body908 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind914, %broadcast.splat917
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv7.i, i64 %index910
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next911 = add i64 %index910, 4
  %vec.ind.next915 = add <4 x i64> %vec.ind914, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next911, 80
  br i1 %40, label %for.inc41.i, label %vector.body908, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body908
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph909, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit783.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start423, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1262, label %vector.ph1191

vector.ph1191:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %vector.ph1191
  %index1192 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1193, %vector.body1190 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %index1192
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1193 = add i64 %index1192, 4
  %46 = icmp eq i64 %index.next1193, %n.vec
  br i1 %46, label %middle.block1188, label %vector.body1190, !llvm.loop !18

middle.block1188:                                 ; preds = %vector.body1190
  %cmp.n1195 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1195, label %for.inc6.i, label %for.body3.i46.preheader1262

for.body3.i46.preheader1262:                      ; preds = %for.body3.i46.preheader, %middle.block1188
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1188 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1262, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1262 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1188, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit549.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start260, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1211 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1211, label %for.body3.i60.preheader1261, label %vector.ph1212

vector.ph1212:                                    ; preds = %for.body3.i60.preheader
  %n.vec1214 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %vector.ph1212
  %index1215 = phi i64 [ 0, %vector.ph1212 ], [ %index.next1216, %vector.body1210 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %index1215
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1219 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1219, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1216 = add i64 %index1215, 4
  %57 = icmp eq i64 %index.next1216, %n.vec1214
  br i1 %57, label %middle.block1208, label %vector.body1210, !llvm.loop !60

middle.block1208:                                 ; preds = %vector.body1210
  %cmp.n1218 = icmp eq i64 %indvars.iv21.i52, %n.vec1214
  br i1 %cmp.n1218, label %for.inc6.i63, label %for.body3.i60.preheader1261

for.body3.i60.preheader1261:                      ; preds = %for.body3.i60.preheader, %middle.block1208
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1214, %middle.block1208 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1261, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1261 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1208, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit386.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1237 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1237, label %for.body3.i99.preheader1260, label %vector.ph1238

vector.ph1238:                                    ; preds = %for.body3.i99.preheader
  %n.vec1240 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1238
  %index1241 = phi i64 [ 0, %vector.ph1238 ], [ %index.next1242, %vector.body1236 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %index1241
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1245 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1245, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1242 = add i64 %index1241, 4
  %68 = icmp eq i64 %index.next1242, %n.vec1240
  br i1 %68, label %middle.block1234, label %vector.body1236, !llvm.loop !62

middle.block1234:                                 ; preds = %vector.body1236
  %cmp.n1244 = icmp eq i64 %indvars.iv21.i91, %n.vec1240
  br i1 %cmp.n1244, label %for.inc6.i102, label %for.body3.i99.preheader1260

for.body3.i99.preheader1260:                      ; preds = %for.body3.i99.preheader, %middle.block1234
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1240, %middle.block1234 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1260, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1260 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1234, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1249 = phi i64 [ %indvar.next1250, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1249, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1251 = icmp ult i64 %88, 4
  br i1 %min.iters.check1251, label %polly.loop_header191.preheader, label %vector.ph1252

vector.ph1252:                                    ; preds = %polly.loop_header
  %n.vec1254 = and i64 %88, -4
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1248 ]
  %90 = shl nuw nsw i64 %index1255, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1259 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1259, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1256 = add i64 %index1255, 4
  %95 = icmp eq i64 %index.next1256, %n.vec1254
  br i1 %95, label %middle.block1246, label %vector.body1248, !llvm.loop !74

middle.block1246:                                 ; preds = %vector.body1248
  %cmp.n1258 = icmp eq i64 %88, %n.vec1254
  br i1 %cmp.n1258, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1246
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1254, %middle.block1246 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1246
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1250 = add i64 %indvar1249, 1
  br i1 %exitcond799.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep795.1 = getelementptr i8, i8* %malloccall, i64 480
  %scevgep796.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.1, i64 480, i1 false)
  %scevgep795.2 = getelementptr i8, i8* %malloccall, i64 960
  %scevgep796.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.2, i64 480, i1 false)
  %scevgep795.3 = getelementptr i8, i8* %malloccall, i64 1440
  %scevgep796.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.3, i64 480, i1 false)
  %scevgep795.4 = getelementptr i8, i8* %malloccall, i64 1920
  %scevgep796.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.4, i64 480, i1 false)
  %scevgep795.5 = getelementptr i8, i8* %malloccall, i64 2400
  %scevgep796.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.5, i64 480, i1 false)
  %scevgep795.6 = getelementptr i8, i8* %malloccall, i64 2880
  %scevgep796.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.6, i64 480, i1 false)
  %scevgep795.7 = getelementptr i8, i8* %malloccall, i64 3360
  %scevgep796.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.7, i64 480, i1 false)
  %scevgep795.8 = getelementptr i8, i8* %malloccall, i64 3840
  %scevgep796.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.8, i64 480, i1 false)
  %scevgep795.9 = getelementptr i8, i8* %malloccall, i64 4320
  %scevgep796.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.9, i64 480, i1 false)
  %scevgep795.10 = getelementptr i8, i8* %malloccall, i64 4800
  %scevgep796.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.10, i64 480, i1 false)
  %scevgep795.11 = getelementptr i8, i8* %malloccall, i64 5280
  %scevgep796.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.11, i64 480, i1 false)
  %scevgep795.12 = getelementptr i8, i8* %malloccall, i64 5760
  %scevgep796.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.12, i64 480, i1 false)
  %scevgep795.13 = getelementptr i8, i8* %malloccall, i64 6240
  %scevgep796.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.13, i64 480, i1 false)
  %scevgep795.14 = getelementptr i8, i8* %malloccall, i64 6720
  %scevgep796.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.14, i64 480, i1 false)
  %scevgep795.15 = getelementptr i8, i8* %malloccall, i64 7200
  %scevgep796.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.15, i64 480, i1 false)
  %scevgep795.16 = getelementptr i8, i8* %malloccall, i64 7680
  %scevgep796.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.16, i64 480, i1 false)
  %scevgep795.17 = getelementptr i8, i8* %malloccall, i64 8160
  %scevgep796.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.17, i64 480, i1 false)
  %scevgep795.18 = getelementptr i8, i8* %malloccall, i64 8640
  %scevgep796.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.18, i64 480, i1 false)
  %scevgep795.19 = getelementptr i8, i8* %malloccall, i64 9120
  %scevgep796.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.19, i64 480, i1 false)
  %scevgep795.20 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep796.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.20, i64 480, i1 false)
  %scevgep795.21 = getelementptr i8, i8* %malloccall, i64 10080
  %scevgep796.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.21, i64 480, i1 false)
  %scevgep795.22 = getelementptr i8, i8* %malloccall, i64 10560
  %scevgep796.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.22, i64 480, i1 false)
  %scevgep795.23 = getelementptr i8, i8* %malloccall, i64 11040
  %scevgep796.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.23, i64 480, i1 false)
  %scevgep795.24 = getelementptr i8, i8* %malloccall, i64 11520
  %scevgep796.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.24, i64 480, i1 false)
  %scevgep795.25 = getelementptr i8, i8* %malloccall, i64 12000
  %scevgep796.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.25, i64 480, i1 false)
  %scevgep795.26 = getelementptr i8, i8* %malloccall, i64 12480
  %scevgep796.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.26, i64 480, i1 false)
  %scevgep795.27 = getelementptr i8, i8* %malloccall, i64 12960
  %scevgep796.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.27, i64 480, i1 false)
  %scevgep795.28 = getelementptr i8, i8* %malloccall, i64 13440
  %scevgep796.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.28, i64 480, i1 false)
  %scevgep795.29 = getelementptr i8, i8* %malloccall, i64 13920
  %scevgep796.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.29, i64 480, i1 false)
  %scevgep795.30 = getelementptr i8, i8* %malloccall, i64 14400
  %scevgep796.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.30, i64 480, i1 false)
  %scevgep795.31 = getelementptr i8, i8* %malloccall, i64 14880
  %scevgep796.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.31, i64 480, i1 false)
  %scevgep795.32 = getelementptr i8, i8* %malloccall, i64 15360
  %scevgep796.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.32, i64 480, i1 false)
  %scevgep795.33 = getelementptr i8, i8* %malloccall, i64 15840
  %scevgep796.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.33, i64 480, i1 false)
  %scevgep795.34 = getelementptr i8, i8* %malloccall, i64 16320
  %scevgep796.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.34, i64 480, i1 false)
  %scevgep795.35 = getelementptr i8, i8* %malloccall, i64 16800
  %scevgep796.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.35, i64 480, i1 false)
  %scevgep795.36 = getelementptr i8, i8* %malloccall, i64 17280
  %scevgep796.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.36, i64 480, i1 false)
  %scevgep795.37 = getelementptr i8, i8* %malloccall, i64 17760
  %scevgep796.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.37, i64 480, i1 false)
  %scevgep795.38 = getelementptr i8, i8* %malloccall, i64 18240
  %scevgep796.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.38, i64 480, i1 false)
  %scevgep795.39 = getelementptr i8, i8* %malloccall, i64 18720
  %scevgep796.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.39, i64 480, i1 false)
  %scevgep795.40 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep796.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.40, i64 480, i1 false)
  %scevgep795.41 = getelementptr i8, i8* %malloccall, i64 19680
  %scevgep796.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.41, i64 480, i1 false)
  %scevgep795.42 = getelementptr i8, i8* %malloccall, i64 20160
  %scevgep796.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.42, i64 480, i1 false)
  %scevgep795.43 = getelementptr i8, i8* %malloccall, i64 20640
  %scevgep796.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.43, i64 480, i1 false)
  %scevgep795.44 = getelementptr i8, i8* %malloccall, i64 21120
  %scevgep796.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.44, i64 480, i1 false)
  %scevgep795.45 = getelementptr i8, i8* %malloccall, i64 21600
  %scevgep796.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.45, i64 480, i1 false)
  %scevgep795.46 = getelementptr i8, i8* %malloccall, i64 22080
  %scevgep796.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.46, i64 480, i1 false)
  %scevgep795.47 = getelementptr i8, i8* %malloccall, i64 22560
  %scevgep796.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.47, i64 480, i1 false)
  %scevgep795.48 = getelementptr i8, i8* %malloccall, i64 23040
  %scevgep796.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.48, i64 480, i1 false)
  %scevgep795.49 = getelementptr i8, i8* %malloccall, i64 23520
  %scevgep796.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.49, i64 480, i1 false)
  %scevgep795.50 = getelementptr i8, i8* %malloccall, i64 24000
  %scevgep796.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.50, i64 480, i1 false)
  %scevgep795.51 = getelementptr i8, i8* %malloccall, i64 24480
  %scevgep796.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.51, i64 480, i1 false)
  %scevgep795.52 = getelementptr i8, i8* %malloccall, i64 24960
  %scevgep796.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.52, i64 480, i1 false)
  %scevgep795.53 = getelementptr i8, i8* %malloccall, i64 25440
  %scevgep796.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.53, i64 480, i1 false)
  %scevgep795.54 = getelementptr i8, i8* %malloccall, i64 25920
  %scevgep796.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.54, i64 480, i1 false)
  %scevgep795.55 = getelementptr i8, i8* %malloccall, i64 26400
  %scevgep796.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.55, i64 480, i1 false)
  %scevgep795.56 = getelementptr i8, i8* %malloccall, i64 26880
  %scevgep796.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.56, i64 480, i1 false)
  %scevgep795.57 = getelementptr i8, i8* %malloccall, i64 27360
  %scevgep796.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.57, i64 480, i1 false)
  %scevgep795.58 = getelementptr i8, i8* %malloccall, i64 27840
  %scevgep796.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.58, i64 480, i1 false)
  %scevgep795.59 = getelementptr i8, i8* %malloccall, i64 28320
  %scevgep796.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.59, i64 480, i1 false)
  %scevgep795.60 = getelementptr i8, i8* %malloccall, i64 28800
  %scevgep796.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.60, i64 480, i1 false)
  %scevgep795.61 = getelementptr i8, i8* %malloccall, i64 29280
  %scevgep796.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.61, i64 480, i1 false)
  %scevgep795.62 = getelementptr i8, i8* %malloccall, i64 29760
  %scevgep796.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.62, i64 480, i1 false)
  %scevgep795.63 = getelementptr i8, i8* %malloccall, i64 30240
  %scevgep796.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.63, i64 480, i1 false)
  %scevgep795.64 = getelementptr i8, i8* %malloccall, i64 30720
  %scevgep796.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.64, i64 480, i1 false)
  %scevgep795.65 = getelementptr i8, i8* %malloccall, i64 31200
  %scevgep796.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.65, i64 480, i1 false)
  %scevgep795.66 = getelementptr i8, i8* %malloccall, i64 31680
  %scevgep796.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.66, i64 480, i1 false)
  %scevgep795.67 = getelementptr i8, i8* %malloccall, i64 32160
  %scevgep796.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.67, i64 480, i1 false)
  %scevgep795.68 = getelementptr i8, i8* %malloccall, i64 32640
  %scevgep796.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.68, i64 480, i1 false)
  %scevgep795.69 = getelementptr i8, i8* %malloccall, i64 33120
  %scevgep796.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.69, i64 480, i1 false)
  %scevgep795.70 = getelementptr i8, i8* %malloccall, i64 33600
  %scevgep796.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.70, i64 480, i1 false)
  %scevgep795.71 = getelementptr i8, i8* %malloccall, i64 34080
  %scevgep796.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.71, i64 480, i1 false)
  %scevgep795.72 = getelementptr i8, i8* %malloccall, i64 34560
  %scevgep796.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.72, i64 480, i1 false)
  %scevgep795.73 = getelementptr i8, i8* %malloccall, i64 35040
  %scevgep796.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.73, i64 480, i1 false)
  %scevgep795.74 = getelementptr i8, i8* %malloccall, i64 35520
  %scevgep796.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.74, i64 480, i1 false)
  %scevgep795.75 = getelementptr i8, i8* %malloccall, i64 36000
  %scevgep796.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.75, i64 480, i1 false)
  %scevgep795.76 = getelementptr i8, i8* %malloccall, i64 36480
  %scevgep796.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.76, i64 480, i1 false)
  %scevgep795.77 = getelementptr i8, i8* %malloccall, i64 36960
  %scevgep796.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.77, i64 480, i1 false)
  %scevgep795.78 = getelementptr i8, i8* %malloccall, i64 37440
  %scevgep796.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.78, i64 480, i1 false)
  %scevgep795.79 = getelementptr i8, i8* %malloccall, i64 37920
  %scevgep796.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep795.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep796.79, i64 480, i1 false)
  br label %polly.loop_header221

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond798.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header199.preheader
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %97 = shl nuw nsw i64 %polly.indvar224, 3
  %scevgep239 = getelementptr i8, i8* %call1, i64 %97
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next225, 60
  br i1 %exitcond793.not, label %polly.loop_header221.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit235 ], [ 1, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %polly.access.mul.Packed_MemRef_call2243 = mul nuw nsw i64 %polly.indvar230, 60
  %polly.access.add.Packed_MemRef_call2244 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2243, %polly.indvar224
  %polly.access.Packed_MemRef_call2245 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2244
  %_p_scalar_246 = load double, double* %polly.access.Packed_MemRef_call2245, align 8
  %98 = mul nuw nsw i64 %polly.indvar230, 480
  %scevgep252 = getelementptr i8, i8* %scevgep239, i64 %98
  %scevgep252253 = bitcast i8* %scevgep252 to double*
  %_p_scalar_254 = load double, double* %scevgep252253, align 8, !alias.scope !71, !noalias !77
  %99 = mul nuw nsw i64 %polly.indvar230, 640
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next231, 64
  br i1 %exitcond792.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_header233 ]
  %100 = mul nuw nsw i64 %polly.indvar236, 480
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %100
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %polly.access.mul.Packed_MemRef_call2247 = mul nuw nsw i64 %polly.indvar236, 60
  %polly.access.add.Packed_MemRef_call2248 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2247, %polly.indvar224
  %polly.access.Packed_MemRef_call2249 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2248
  %_p_scalar_250 = load double, double* %polly.access.Packed_MemRef_call2249, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %101 = shl nuw nsw i64 %polly.indvar236, 3
  %102 = add nuw nsw i64 %101, %99
  %scevgep255 = getelementptr i8, i8* %call, i64 %102
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_257
  store double %p_add42.i118, double* %scevgep255256, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next237, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start260:                                   ; preds = %kernel_syr2k.exit
  %malloccall262 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header346

polly.loop_header346:                             ; preds = %polly.loop_exit354, %polly.start260
  %indvar1223 = phi i64 [ %indvar.next1224, %polly.loop_exit354 ], [ 0, %polly.start260 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 1, %polly.start260 ]
  %103 = add i64 %indvar1223, 1
  %104 = mul nuw nsw i64 %polly.indvar349, 640
  %scevgep358 = getelementptr i8, i8* %call, i64 %104
  %min.iters.check1225 = icmp ult i64 %103, 4
  br i1 %min.iters.check1225, label %polly.loop_header352.preheader, label %vector.ph1226

vector.ph1226:                                    ; preds = %polly.loop_header346
  %n.vec1228 = and i64 %103, -4
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1226
  %index1229 = phi i64 [ 0, %vector.ph1226 ], [ %index.next1230, %vector.body1222 ]
  %105 = shl nuw nsw i64 %index1229, 3
  %106 = getelementptr i8, i8* %scevgep358, i64 %105
  %107 = bitcast i8* %106 to <4 x double>*
  %wide.load1233 = load <4 x double>, <4 x double>* %107, align 8, !alias.scope !78, !noalias !80
  %108 = fmul fast <4 x double> %wide.load1233, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %109 = bitcast i8* %106 to <4 x double>*
  store <4 x double> %108, <4 x double>* %109, align 8, !alias.scope !78, !noalias !80
  %index.next1230 = add i64 %index1229, 4
  %110 = icmp eq i64 %index.next1230, %n.vec1228
  br i1 %110, label %middle.block1220, label %vector.body1222, !llvm.loop !84

middle.block1220:                                 ; preds = %vector.body1222
  %cmp.n1232 = icmp eq i64 %103, %n.vec1228
  br i1 %cmp.n1232, label %polly.loop_exit354, label %polly.loop_header352.preheader

polly.loop_header352.preheader:                   ; preds = %polly.loop_header346, %middle.block1220
  %polly.indvar355.ph = phi i64 [ 0, %polly.loop_header346 ], [ %n.vec1228, %middle.block1220 ]
  br label %polly.loop_header352

polly.loop_exit354:                               ; preds = %polly.loop_header352, %middle.block1220
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next350, 80
  %indvar.next1224 = add i64 %indvar1223, 1
  br i1 %exitcond810.not, label %polly.loop_header362.preheader, label %polly.loop_header346

polly.loop_header362.preheader:                   ; preds = %polly.loop_exit354
  %Packed_MemRef_call2263 = bitcast i8* %malloccall262 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall262, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep806.1 = getelementptr i8, i8* %malloccall262, i64 480
  %scevgep807.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.1, i64 480, i1 false)
  %scevgep806.2 = getelementptr i8, i8* %malloccall262, i64 960
  %scevgep807.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.2, i64 480, i1 false)
  %scevgep806.3 = getelementptr i8, i8* %malloccall262, i64 1440
  %scevgep807.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.3, i64 480, i1 false)
  %scevgep806.4 = getelementptr i8, i8* %malloccall262, i64 1920
  %scevgep807.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.4, i64 480, i1 false)
  %scevgep806.5 = getelementptr i8, i8* %malloccall262, i64 2400
  %scevgep807.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.5, i64 480, i1 false)
  %scevgep806.6 = getelementptr i8, i8* %malloccall262, i64 2880
  %scevgep807.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.6, i64 480, i1 false)
  %scevgep806.7 = getelementptr i8, i8* %malloccall262, i64 3360
  %scevgep807.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.7, i64 480, i1 false)
  %scevgep806.8 = getelementptr i8, i8* %malloccall262, i64 3840
  %scevgep807.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.8, i64 480, i1 false)
  %scevgep806.9 = getelementptr i8, i8* %malloccall262, i64 4320
  %scevgep807.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.9, i64 480, i1 false)
  %scevgep806.10 = getelementptr i8, i8* %malloccall262, i64 4800
  %scevgep807.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.10, i64 480, i1 false)
  %scevgep806.11 = getelementptr i8, i8* %malloccall262, i64 5280
  %scevgep807.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.11, i64 480, i1 false)
  %scevgep806.12 = getelementptr i8, i8* %malloccall262, i64 5760
  %scevgep807.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.12, i64 480, i1 false)
  %scevgep806.13 = getelementptr i8, i8* %malloccall262, i64 6240
  %scevgep807.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.13, i64 480, i1 false)
  %scevgep806.14 = getelementptr i8, i8* %malloccall262, i64 6720
  %scevgep807.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.14, i64 480, i1 false)
  %scevgep806.15 = getelementptr i8, i8* %malloccall262, i64 7200
  %scevgep807.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.15, i64 480, i1 false)
  %scevgep806.16 = getelementptr i8, i8* %malloccall262, i64 7680
  %scevgep807.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.16, i64 480, i1 false)
  %scevgep806.17 = getelementptr i8, i8* %malloccall262, i64 8160
  %scevgep807.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.17, i64 480, i1 false)
  %scevgep806.18 = getelementptr i8, i8* %malloccall262, i64 8640
  %scevgep807.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.18, i64 480, i1 false)
  %scevgep806.19 = getelementptr i8, i8* %malloccall262, i64 9120
  %scevgep807.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.19, i64 480, i1 false)
  %scevgep806.20 = getelementptr i8, i8* %malloccall262, i64 9600
  %scevgep807.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.20, i64 480, i1 false)
  %scevgep806.21 = getelementptr i8, i8* %malloccall262, i64 10080
  %scevgep807.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.21, i64 480, i1 false)
  %scevgep806.22 = getelementptr i8, i8* %malloccall262, i64 10560
  %scevgep807.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.22, i64 480, i1 false)
  %scevgep806.23 = getelementptr i8, i8* %malloccall262, i64 11040
  %scevgep807.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.23, i64 480, i1 false)
  %scevgep806.24 = getelementptr i8, i8* %malloccall262, i64 11520
  %scevgep807.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.24, i64 480, i1 false)
  %scevgep806.25 = getelementptr i8, i8* %malloccall262, i64 12000
  %scevgep807.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.25, i64 480, i1 false)
  %scevgep806.26 = getelementptr i8, i8* %malloccall262, i64 12480
  %scevgep807.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.26, i64 480, i1 false)
  %scevgep806.27 = getelementptr i8, i8* %malloccall262, i64 12960
  %scevgep807.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.27, i64 480, i1 false)
  %scevgep806.28 = getelementptr i8, i8* %malloccall262, i64 13440
  %scevgep807.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.28, i64 480, i1 false)
  %scevgep806.29 = getelementptr i8, i8* %malloccall262, i64 13920
  %scevgep807.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.29, i64 480, i1 false)
  %scevgep806.30 = getelementptr i8, i8* %malloccall262, i64 14400
  %scevgep807.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.30, i64 480, i1 false)
  %scevgep806.31 = getelementptr i8, i8* %malloccall262, i64 14880
  %scevgep807.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.31, i64 480, i1 false)
  %scevgep806.32 = getelementptr i8, i8* %malloccall262, i64 15360
  %scevgep807.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.32, i64 480, i1 false)
  %scevgep806.33 = getelementptr i8, i8* %malloccall262, i64 15840
  %scevgep807.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.33, i64 480, i1 false)
  %scevgep806.34 = getelementptr i8, i8* %malloccall262, i64 16320
  %scevgep807.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.34, i64 480, i1 false)
  %scevgep806.35 = getelementptr i8, i8* %malloccall262, i64 16800
  %scevgep807.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.35, i64 480, i1 false)
  %scevgep806.36 = getelementptr i8, i8* %malloccall262, i64 17280
  %scevgep807.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.36, i64 480, i1 false)
  %scevgep806.37 = getelementptr i8, i8* %malloccall262, i64 17760
  %scevgep807.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.37, i64 480, i1 false)
  %scevgep806.38 = getelementptr i8, i8* %malloccall262, i64 18240
  %scevgep807.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.38, i64 480, i1 false)
  %scevgep806.39 = getelementptr i8, i8* %malloccall262, i64 18720
  %scevgep807.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.39, i64 480, i1 false)
  %scevgep806.40 = getelementptr i8, i8* %malloccall262, i64 19200
  %scevgep807.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.40, i64 480, i1 false)
  %scevgep806.41 = getelementptr i8, i8* %malloccall262, i64 19680
  %scevgep807.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.41, i64 480, i1 false)
  %scevgep806.42 = getelementptr i8, i8* %malloccall262, i64 20160
  %scevgep807.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.42, i64 480, i1 false)
  %scevgep806.43 = getelementptr i8, i8* %malloccall262, i64 20640
  %scevgep807.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.43, i64 480, i1 false)
  %scevgep806.44 = getelementptr i8, i8* %malloccall262, i64 21120
  %scevgep807.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.44, i64 480, i1 false)
  %scevgep806.45 = getelementptr i8, i8* %malloccall262, i64 21600
  %scevgep807.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.45, i64 480, i1 false)
  %scevgep806.46 = getelementptr i8, i8* %malloccall262, i64 22080
  %scevgep807.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.46, i64 480, i1 false)
  %scevgep806.47 = getelementptr i8, i8* %malloccall262, i64 22560
  %scevgep807.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.47, i64 480, i1 false)
  %scevgep806.48 = getelementptr i8, i8* %malloccall262, i64 23040
  %scevgep807.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.48, i64 480, i1 false)
  %scevgep806.49 = getelementptr i8, i8* %malloccall262, i64 23520
  %scevgep807.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.49, i64 480, i1 false)
  %scevgep806.50 = getelementptr i8, i8* %malloccall262, i64 24000
  %scevgep807.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.50, i64 480, i1 false)
  %scevgep806.51 = getelementptr i8, i8* %malloccall262, i64 24480
  %scevgep807.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.51, i64 480, i1 false)
  %scevgep806.52 = getelementptr i8, i8* %malloccall262, i64 24960
  %scevgep807.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.52, i64 480, i1 false)
  %scevgep806.53 = getelementptr i8, i8* %malloccall262, i64 25440
  %scevgep807.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.53, i64 480, i1 false)
  %scevgep806.54 = getelementptr i8, i8* %malloccall262, i64 25920
  %scevgep807.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.54, i64 480, i1 false)
  %scevgep806.55 = getelementptr i8, i8* %malloccall262, i64 26400
  %scevgep807.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.55, i64 480, i1 false)
  %scevgep806.56 = getelementptr i8, i8* %malloccall262, i64 26880
  %scevgep807.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.56, i64 480, i1 false)
  %scevgep806.57 = getelementptr i8, i8* %malloccall262, i64 27360
  %scevgep807.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.57, i64 480, i1 false)
  %scevgep806.58 = getelementptr i8, i8* %malloccall262, i64 27840
  %scevgep807.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.58, i64 480, i1 false)
  %scevgep806.59 = getelementptr i8, i8* %malloccall262, i64 28320
  %scevgep807.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.59, i64 480, i1 false)
  %scevgep806.60 = getelementptr i8, i8* %malloccall262, i64 28800
  %scevgep807.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.60, i64 480, i1 false)
  %scevgep806.61 = getelementptr i8, i8* %malloccall262, i64 29280
  %scevgep807.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.61, i64 480, i1 false)
  %scevgep806.62 = getelementptr i8, i8* %malloccall262, i64 29760
  %scevgep807.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.62, i64 480, i1 false)
  %scevgep806.63 = getelementptr i8, i8* %malloccall262, i64 30240
  %scevgep807.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.63, i64 480, i1 false)
  %scevgep806.64 = getelementptr i8, i8* %malloccall262, i64 30720
  %scevgep807.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.64, i64 480, i1 false)
  %scevgep806.65 = getelementptr i8, i8* %malloccall262, i64 31200
  %scevgep807.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.65, i64 480, i1 false)
  %scevgep806.66 = getelementptr i8, i8* %malloccall262, i64 31680
  %scevgep807.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.66, i64 480, i1 false)
  %scevgep806.67 = getelementptr i8, i8* %malloccall262, i64 32160
  %scevgep807.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.67, i64 480, i1 false)
  %scevgep806.68 = getelementptr i8, i8* %malloccall262, i64 32640
  %scevgep807.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.68, i64 480, i1 false)
  %scevgep806.69 = getelementptr i8, i8* %malloccall262, i64 33120
  %scevgep807.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.69, i64 480, i1 false)
  %scevgep806.70 = getelementptr i8, i8* %malloccall262, i64 33600
  %scevgep807.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.70, i64 480, i1 false)
  %scevgep806.71 = getelementptr i8, i8* %malloccall262, i64 34080
  %scevgep807.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.71, i64 480, i1 false)
  %scevgep806.72 = getelementptr i8, i8* %malloccall262, i64 34560
  %scevgep807.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.72, i64 480, i1 false)
  %scevgep806.73 = getelementptr i8, i8* %malloccall262, i64 35040
  %scevgep807.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.73, i64 480, i1 false)
  %scevgep806.74 = getelementptr i8, i8* %malloccall262, i64 35520
  %scevgep807.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.74, i64 480, i1 false)
  %scevgep806.75 = getelementptr i8, i8* %malloccall262, i64 36000
  %scevgep807.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.75, i64 480, i1 false)
  %scevgep806.76 = getelementptr i8, i8* %malloccall262, i64 36480
  %scevgep807.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.76, i64 480, i1 false)
  %scevgep806.77 = getelementptr i8, i8* %malloccall262, i64 36960
  %scevgep807.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.77, i64 480, i1 false)
  %scevgep806.78 = getelementptr i8, i8* %malloccall262, i64 37440
  %scevgep807.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.78, i64 480, i1 false)
  %scevgep806.79 = getelementptr i8, i8* %malloccall262, i64 37920
  %scevgep807.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.79, i64 480, i1 false)
  br label %polly.loop_header384

polly.loop_header352:                             ; preds = %polly.loop_header352.preheader, %polly.loop_header352
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_header352 ], [ %polly.indvar355.ph, %polly.loop_header352.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar355, 3
  %scevgep359 = getelementptr i8, i8* %scevgep358, i64 %111
  %scevgep359360 = bitcast i8* %scevgep359 to double*
  %_p_scalar_361 = load double, double* %scevgep359360, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_361, 1.200000e+00
  store double %p_mul.i57, double* %scevgep359360, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next356, %polly.indvar349
  br i1 %exitcond809.not, label %polly.loop_exit354, label %polly.loop_header352, !llvm.loop !85

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.loop_header362.preheader
  %polly.indvar387 = phi i64 [ 0, %polly.loop_header362.preheader ], [ %polly.indvar_next388, %polly.loop_exit392 ]
  %112 = shl nuw nsw i64 %polly.indvar387, 3
  %scevgep402 = getelementptr i8, i8* %call1, i64 %112
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next388, 60
  br i1 %exitcond804.not, label %polly.loop_header384.1, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_header384
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %polly.loop_exit398 ], [ 1, %polly.loop_header384 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_header384 ]
  %polly.access.mul.Packed_MemRef_call2263406 = mul nuw nsw i64 %polly.indvar393, 60
  %polly.access.add.Packed_MemRef_call2263407 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263406, %polly.indvar387
  %polly.access.Packed_MemRef_call2263408 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263407
  %_p_scalar_409 = load double, double* %polly.access.Packed_MemRef_call2263408, align 8
  %113 = mul nuw nsw i64 %polly.indvar393, 480
  %scevgep415 = getelementptr i8, i8* %scevgep402, i64 %113
  %scevgep415416 = bitcast i8* %scevgep415 to double*
  %_p_scalar_417 = load double, double* %scevgep415416, align 8, !alias.scope !81, !noalias !86
  %114 = mul nuw nsw i64 %polly.indvar393, 640
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next394, 64
  br i1 %exitcond803.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_header396, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_header396 ]
  %115 = mul nuw nsw i64 %polly.indvar399, 480
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %115
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73 = fmul fast double %_p_scalar_409, %_p_scalar_405
  %polly.access.mul.Packed_MemRef_call2263410 = mul nuw nsw i64 %polly.indvar399, 60
  %polly.access.add.Packed_MemRef_call2263411 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263410, %polly.indvar387
  %polly.access.Packed_MemRef_call2263412 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263411
  %_p_scalar_413 = load double, double* %polly.access.Packed_MemRef_call2263412, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_417, %_p_scalar_413
  %116 = shl nuw nsw i64 %polly.indvar399, 3
  %117 = add nuw nsw i64 %116, %114
  %scevgep418 = getelementptr i8, i8* %call, i64 %117
  %scevgep418419 = bitcast i8* %scevgep418 to double*
  %_p_scalar_420 = load double, double* %scevgep418419, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_420
  store double %p_add42.i79, double* %scevgep418419, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next400, %indvars.iv800
  br i1 %exitcond802.not, label %polly.loop_exit398, label %polly.loop_header396

polly.start423:                                   ; preds = %init_array.exit
  %malloccall425 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header509

polly.loop_header509:                             ; preds = %polly.loop_exit517, %polly.start423
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit517 ], [ 0, %polly.start423 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 1, %polly.start423 ]
  %118 = add i64 %indvar, 1
  %119 = mul nuw nsw i64 %polly.indvar512, 640
  %scevgep521 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1199 = icmp ult i64 %118, 4
  br i1 %min.iters.check1199, label %polly.loop_header515.preheader, label %vector.ph1200

vector.ph1200:                                    ; preds = %polly.loop_header509
  %n.vec1202 = and i64 %118, -4
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1204, %vector.body1198 ]
  %120 = shl nuw nsw i64 %index1203, 3
  %121 = getelementptr i8, i8* %scevgep521, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1207 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !87, !noalias !89
  %123 = fmul fast <4 x double> %wide.load1207, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !87, !noalias !89
  %index.next1204 = add i64 %index1203, 4
  %125 = icmp eq i64 %index.next1204, %n.vec1202
  br i1 %125, label %middle.block1196, label %vector.body1198, !llvm.loop !93

middle.block1196:                                 ; preds = %vector.body1198
  %cmp.n1206 = icmp eq i64 %118, %n.vec1202
  br i1 %cmp.n1206, label %polly.loop_exit517, label %polly.loop_header515.preheader

polly.loop_header515.preheader:                   ; preds = %polly.loop_header509, %middle.block1196
  %polly.indvar518.ph = phi i64 [ 0, %polly.loop_header509 ], [ %n.vec1202, %middle.block1196 ]
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_header515, %middle.block1196
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next513, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond821.not, label %polly.loop_header525.preheader, label %polly.loop_header509

polly.loop_header525.preheader:                   ; preds = %polly.loop_exit517
  %Packed_MemRef_call2426 = bitcast i8* %malloccall425 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall425, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep817.1 = getelementptr i8, i8* %malloccall425, i64 480
  %scevgep818.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.1, i64 480, i1 false)
  %scevgep817.2 = getelementptr i8, i8* %malloccall425, i64 960
  %scevgep818.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.2, i64 480, i1 false)
  %scevgep817.3 = getelementptr i8, i8* %malloccall425, i64 1440
  %scevgep818.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.3, i64 480, i1 false)
  %scevgep817.4 = getelementptr i8, i8* %malloccall425, i64 1920
  %scevgep818.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.4, i64 480, i1 false)
  %scevgep817.5 = getelementptr i8, i8* %malloccall425, i64 2400
  %scevgep818.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.5, i64 480, i1 false)
  %scevgep817.6 = getelementptr i8, i8* %malloccall425, i64 2880
  %scevgep818.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.6, i64 480, i1 false)
  %scevgep817.7 = getelementptr i8, i8* %malloccall425, i64 3360
  %scevgep818.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.7, i64 480, i1 false)
  %scevgep817.8 = getelementptr i8, i8* %malloccall425, i64 3840
  %scevgep818.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.8, i64 480, i1 false)
  %scevgep817.9 = getelementptr i8, i8* %malloccall425, i64 4320
  %scevgep818.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.9, i64 480, i1 false)
  %scevgep817.10 = getelementptr i8, i8* %malloccall425, i64 4800
  %scevgep818.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.10, i64 480, i1 false)
  %scevgep817.11 = getelementptr i8, i8* %malloccall425, i64 5280
  %scevgep818.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.11, i64 480, i1 false)
  %scevgep817.12 = getelementptr i8, i8* %malloccall425, i64 5760
  %scevgep818.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.12, i64 480, i1 false)
  %scevgep817.13 = getelementptr i8, i8* %malloccall425, i64 6240
  %scevgep818.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.13, i64 480, i1 false)
  %scevgep817.14 = getelementptr i8, i8* %malloccall425, i64 6720
  %scevgep818.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.14, i64 480, i1 false)
  %scevgep817.15 = getelementptr i8, i8* %malloccall425, i64 7200
  %scevgep818.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.15, i64 480, i1 false)
  %scevgep817.16 = getelementptr i8, i8* %malloccall425, i64 7680
  %scevgep818.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.16, i64 480, i1 false)
  %scevgep817.17 = getelementptr i8, i8* %malloccall425, i64 8160
  %scevgep818.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.17, i64 480, i1 false)
  %scevgep817.18 = getelementptr i8, i8* %malloccall425, i64 8640
  %scevgep818.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.18, i64 480, i1 false)
  %scevgep817.19 = getelementptr i8, i8* %malloccall425, i64 9120
  %scevgep818.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.19, i64 480, i1 false)
  %scevgep817.20 = getelementptr i8, i8* %malloccall425, i64 9600
  %scevgep818.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.20, i64 480, i1 false)
  %scevgep817.21 = getelementptr i8, i8* %malloccall425, i64 10080
  %scevgep818.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.21, i64 480, i1 false)
  %scevgep817.22 = getelementptr i8, i8* %malloccall425, i64 10560
  %scevgep818.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.22, i64 480, i1 false)
  %scevgep817.23 = getelementptr i8, i8* %malloccall425, i64 11040
  %scevgep818.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.23, i64 480, i1 false)
  %scevgep817.24 = getelementptr i8, i8* %malloccall425, i64 11520
  %scevgep818.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.24, i64 480, i1 false)
  %scevgep817.25 = getelementptr i8, i8* %malloccall425, i64 12000
  %scevgep818.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.25, i64 480, i1 false)
  %scevgep817.26 = getelementptr i8, i8* %malloccall425, i64 12480
  %scevgep818.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.26, i64 480, i1 false)
  %scevgep817.27 = getelementptr i8, i8* %malloccall425, i64 12960
  %scevgep818.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.27, i64 480, i1 false)
  %scevgep817.28 = getelementptr i8, i8* %malloccall425, i64 13440
  %scevgep818.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.28, i64 480, i1 false)
  %scevgep817.29 = getelementptr i8, i8* %malloccall425, i64 13920
  %scevgep818.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.29, i64 480, i1 false)
  %scevgep817.30 = getelementptr i8, i8* %malloccall425, i64 14400
  %scevgep818.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.30, i64 480, i1 false)
  %scevgep817.31 = getelementptr i8, i8* %malloccall425, i64 14880
  %scevgep818.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.31, i64 480, i1 false)
  %scevgep817.32 = getelementptr i8, i8* %malloccall425, i64 15360
  %scevgep818.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.32, i64 480, i1 false)
  %scevgep817.33 = getelementptr i8, i8* %malloccall425, i64 15840
  %scevgep818.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.33, i64 480, i1 false)
  %scevgep817.34 = getelementptr i8, i8* %malloccall425, i64 16320
  %scevgep818.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.34, i64 480, i1 false)
  %scevgep817.35 = getelementptr i8, i8* %malloccall425, i64 16800
  %scevgep818.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.35, i64 480, i1 false)
  %scevgep817.36 = getelementptr i8, i8* %malloccall425, i64 17280
  %scevgep818.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.36, i64 480, i1 false)
  %scevgep817.37 = getelementptr i8, i8* %malloccall425, i64 17760
  %scevgep818.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.37, i64 480, i1 false)
  %scevgep817.38 = getelementptr i8, i8* %malloccall425, i64 18240
  %scevgep818.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.38, i64 480, i1 false)
  %scevgep817.39 = getelementptr i8, i8* %malloccall425, i64 18720
  %scevgep818.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.39, i64 480, i1 false)
  %scevgep817.40 = getelementptr i8, i8* %malloccall425, i64 19200
  %scevgep818.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.40, i64 480, i1 false)
  %scevgep817.41 = getelementptr i8, i8* %malloccall425, i64 19680
  %scevgep818.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.41, i64 480, i1 false)
  %scevgep817.42 = getelementptr i8, i8* %malloccall425, i64 20160
  %scevgep818.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.42, i64 480, i1 false)
  %scevgep817.43 = getelementptr i8, i8* %malloccall425, i64 20640
  %scevgep818.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.43, i64 480, i1 false)
  %scevgep817.44 = getelementptr i8, i8* %malloccall425, i64 21120
  %scevgep818.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.44, i64 480, i1 false)
  %scevgep817.45 = getelementptr i8, i8* %malloccall425, i64 21600
  %scevgep818.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.45, i64 480, i1 false)
  %scevgep817.46 = getelementptr i8, i8* %malloccall425, i64 22080
  %scevgep818.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.46, i64 480, i1 false)
  %scevgep817.47 = getelementptr i8, i8* %malloccall425, i64 22560
  %scevgep818.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.47, i64 480, i1 false)
  %scevgep817.48 = getelementptr i8, i8* %malloccall425, i64 23040
  %scevgep818.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.48, i64 480, i1 false)
  %scevgep817.49 = getelementptr i8, i8* %malloccall425, i64 23520
  %scevgep818.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.49, i64 480, i1 false)
  %scevgep817.50 = getelementptr i8, i8* %malloccall425, i64 24000
  %scevgep818.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.50, i64 480, i1 false)
  %scevgep817.51 = getelementptr i8, i8* %malloccall425, i64 24480
  %scevgep818.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.51, i64 480, i1 false)
  %scevgep817.52 = getelementptr i8, i8* %malloccall425, i64 24960
  %scevgep818.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.52, i64 480, i1 false)
  %scevgep817.53 = getelementptr i8, i8* %malloccall425, i64 25440
  %scevgep818.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.53, i64 480, i1 false)
  %scevgep817.54 = getelementptr i8, i8* %malloccall425, i64 25920
  %scevgep818.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.54, i64 480, i1 false)
  %scevgep817.55 = getelementptr i8, i8* %malloccall425, i64 26400
  %scevgep818.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.55, i64 480, i1 false)
  %scevgep817.56 = getelementptr i8, i8* %malloccall425, i64 26880
  %scevgep818.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.56, i64 480, i1 false)
  %scevgep817.57 = getelementptr i8, i8* %malloccall425, i64 27360
  %scevgep818.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.57, i64 480, i1 false)
  %scevgep817.58 = getelementptr i8, i8* %malloccall425, i64 27840
  %scevgep818.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.58, i64 480, i1 false)
  %scevgep817.59 = getelementptr i8, i8* %malloccall425, i64 28320
  %scevgep818.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.59, i64 480, i1 false)
  %scevgep817.60 = getelementptr i8, i8* %malloccall425, i64 28800
  %scevgep818.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.60, i64 480, i1 false)
  %scevgep817.61 = getelementptr i8, i8* %malloccall425, i64 29280
  %scevgep818.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.61, i64 480, i1 false)
  %scevgep817.62 = getelementptr i8, i8* %malloccall425, i64 29760
  %scevgep818.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.62, i64 480, i1 false)
  %scevgep817.63 = getelementptr i8, i8* %malloccall425, i64 30240
  %scevgep818.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.63, i64 480, i1 false)
  %scevgep817.64 = getelementptr i8, i8* %malloccall425, i64 30720
  %scevgep818.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.64, i64 480, i1 false)
  %scevgep817.65 = getelementptr i8, i8* %malloccall425, i64 31200
  %scevgep818.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.65, i64 480, i1 false)
  %scevgep817.66 = getelementptr i8, i8* %malloccall425, i64 31680
  %scevgep818.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.66, i64 480, i1 false)
  %scevgep817.67 = getelementptr i8, i8* %malloccall425, i64 32160
  %scevgep818.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.67, i64 480, i1 false)
  %scevgep817.68 = getelementptr i8, i8* %malloccall425, i64 32640
  %scevgep818.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.68, i64 480, i1 false)
  %scevgep817.69 = getelementptr i8, i8* %malloccall425, i64 33120
  %scevgep818.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.69, i64 480, i1 false)
  %scevgep817.70 = getelementptr i8, i8* %malloccall425, i64 33600
  %scevgep818.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.70, i64 480, i1 false)
  %scevgep817.71 = getelementptr i8, i8* %malloccall425, i64 34080
  %scevgep818.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.71, i64 480, i1 false)
  %scevgep817.72 = getelementptr i8, i8* %malloccall425, i64 34560
  %scevgep818.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.72, i64 480, i1 false)
  %scevgep817.73 = getelementptr i8, i8* %malloccall425, i64 35040
  %scevgep818.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.73, i64 480, i1 false)
  %scevgep817.74 = getelementptr i8, i8* %malloccall425, i64 35520
  %scevgep818.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.74, i64 480, i1 false)
  %scevgep817.75 = getelementptr i8, i8* %malloccall425, i64 36000
  %scevgep818.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.75, i64 480, i1 false)
  %scevgep817.76 = getelementptr i8, i8* %malloccall425, i64 36480
  %scevgep818.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.76, i64 480, i1 false)
  %scevgep817.77 = getelementptr i8, i8* %malloccall425, i64 36960
  %scevgep818.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.77, i64 480, i1 false)
  %scevgep817.78 = getelementptr i8, i8* %malloccall425, i64 37440
  %scevgep818.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.78, i64 480, i1 false)
  %scevgep817.79 = getelementptr i8, i8* %malloccall425, i64 37920
  %scevgep818.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818.79, i64 480, i1 false)
  br label %polly.loop_header547

polly.loop_header515:                             ; preds = %polly.loop_header515.preheader, %polly.loop_header515
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_header515 ], [ %polly.indvar518.ph, %polly.loop_header515.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar518, 3
  %scevgep522 = getelementptr i8, i8* %scevgep521, i64 %126
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !87, !noalias !89
  %p_mul.i = fmul fast double %_p_scalar_524, 1.200000e+00
  store double %p_mul.i, double* %scevgep522523, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next519, %polly.indvar512
  br i1 %exitcond820.not, label %polly.loop_exit517, label %polly.loop_header515, !llvm.loop !94

polly.loop_header547:                             ; preds = %polly.loop_exit555, %polly.loop_header525.preheader
  %polly.indvar550 = phi i64 [ 0, %polly.loop_header525.preheader ], [ %polly.indvar_next551, %polly.loop_exit555 ]
  %127 = shl nuw nsw i64 %polly.indvar550, 3
  %scevgep565 = getelementptr i8, i8* %call1, i64 %127
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_exit561
  %polly.indvar_next551 = add nuw nsw i64 %polly.indvar550, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next551, 60
  br i1 %exitcond815.not, label %polly.loop_header547.1, label %polly.loop_header547

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.loop_header547
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %polly.loop_exit561 ], [ 1, %polly.loop_header547 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 0, %polly.loop_header547 ]
  %polly.access.mul.Packed_MemRef_call2426569 = mul nuw nsw i64 %polly.indvar556, 60
  %polly.access.add.Packed_MemRef_call2426570 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426569, %polly.indvar550
  %polly.access.Packed_MemRef_call2426571 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426570
  %_p_scalar_572 = load double, double* %polly.access.Packed_MemRef_call2426571, align 8
  %128 = mul nuw nsw i64 %polly.indvar556, 480
  %scevgep578 = getelementptr i8, i8* %scevgep565, i64 %128
  %scevgep578579 = bitcast i8* %scevgep578 to double*
  %_p_scalar_580 = load double, double* %scevgep578579, align 8, !alias.scope !90, !noalias !95
  %129 = mul nuw nsw i64 %polly.indvar556, 640
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next557, 64
  br i1 %exitcond814.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header559:                             ; preds = %polly.loop_header559, %polly.loop_header553
  %polly.indvar562 = phi i64 [ 0, %polly.loop_header553 ], [ %polly.indvar_next563, %polly.loop_header559 ]
  %130 = mul nuw nsw i64 %polly.indvar562, 480
  %scevgep566 = getelementptr i8, i8* %scevgep565, i64 %130
  %scevgep566567 = bitcast i8* %scevgep566 to double*
  %_p_scalar_568 = load double, double* %scevgep566567, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i = fmul fast double %_p_scalar_572, %_p_scalar_568
  %polly.access.mul.Packed_MemRef_call2426573 = mul nuw nsw i64 %polly.indvar562, 60
  %polly.access.add.Packed_MemRef_call2426574 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426573, %polly.indvar550
  %polly.access.Packed_MemRef_call2426575 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426574
  %_p_scalar_576 = load double, double* %polly.access.Packed_MemRef_call2426575, align 8
  %p_mul37.i = fmul fast double %_p_scalar_580, %_p_scalar_576
  %131 = shl nuw nsw i64 %polly.indvar562, 3
  %132 = add nuw nsw i64 %131, %129
  %scevgep581 = getelementptr i8, i8* %call, i64 %132
  %scevgep581582 = bitcast i8* %scevgep581 to double*
  %_p_scalar_583 = load double, double* %scevgep581582, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_583
  store double %p_add42.i, double* %scevgep581582, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next563, %indvars.iv811
  br i1 %exitcond813.not, label %polly.loop_exit561, label %polly.loop_header559

polly.loop_header722:                             ; preds = %entry, %polly.loop_exit730
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_exit730 ], [ 0, %entry ]
  %133 = mul nuw nsw i64 %polly.indvar725, 640
  %134 = trunc i64 %polly.indvar725 to i32
  %broadcast.splatinsert930 = insertelement <4 x i32> poison, i32 %134, i32 0
  %broadcast.splat931 = shufflevector <4 x i32> %broadcast.splatinsert930, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body920

vector.body920:                                   ; preds = %vector.body920, %polly.loop_header722
  %index922 = phi i64 [ 0, %polly.loop_header722 ], [ %index.next923, %vector.body920 ]
  %vec.ind928 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722 ], [ %vec.ind.next929, %vector.body920 ]
  %135 = mul <4 x i32> %vec.ind928, %broadcast.splat931
  %136 = add <4 x i32> %135, <i32 3, i32 3, i32 3, i32 3>
  %137 = urem <4 x i32> %136, <i32 80, i32 80, i32 80, i32 80>
  %138 = sitofp <4 x i32> %137 to <4 x double>
  %139 = fmul fast <4 x double> %138, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %140 = shl i64 %index922, 3
  %141 = add nuw nsw i64 %140, %133
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %139, <4 x double>* %143, align 8, !alias.scope !96, !noalias !98
  %index.next923 = add i64 %index922, 4
  %vec.ind.next929 = add <4 x i32> %vec.ind928, <i32 4, i32 4, i32 4, i32 4>
  %144 = icmp eq i64 %index.next923, 32
  br i1 %144, label %polly.loop_exit730, label %vector.body920, !llvm.loop !101

polly.loop_exit730:                               ; preds = %vector.body920
  %polly.indvar_next726 = add nuw nsw i64 %polly.indvar725, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next726, 32
  br i1 %exitcond840.not, label %polly.loop_header722.1, label %polly.loop_header722

polly.loop_header749:                             ; preds = %polly.loop_exit730.2.2, %polly.loop_exit757
  %polly.indvar752 = phi i64 [ %polly.indvar_next753, %polly.loop_exit757 ], [ 0, %polly.loop_exit730.2.2 ]
  %145 = mul nuw nsw i64 %polly.indvar752, 480
  %146 = trunc i64 %polly.indvar752 to i32
  %broadcast.splatinsert1044 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat1045 = shufflevector <4 x i32> %broadcast.splatinsert1044, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %polly.loop_header749
  %index1036 = phi i64 [ 0, %polly.loop_header749 ], [ %index.next1037, %vector.body1034 ]
  %vec.ind1042 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749 ], [ %vec.ind.next1043, %vector.body1034 ]
  %147 = mul <4 x i32> %vec.ind1042, %broadcast.splat1045
  %148 = add <4 x i32> %147, <i32 2, i32 2, i32 2, i32 2>
  %149 = urem <4 x i32> %148, <i32 60, i32 60, i32 60, i32 60>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index1036, 3
  %153 = add i64 %152, %145
  %154 = getelementptr i8, i8* %call2, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !100, !noalias !102
  %index.next1037 = add i64 %index1036, 4
  %vec.ind.next1043 = add <4 x i32> %vec.ind1042, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next1037, 32
  br i1 %156, label %polly.loop_exit757, label %vector.body1034, !llvm.loop !103

polly.loop_exit757:                               ; preds = %vector.body1034
  %polly.indvar_next753 = add nuw nsw i64 %polly.indvar752, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next753, 32
  br i1 %exitcond831.not, label %polly.loop_header749.1, label %polly.loop_header749

polly.loop_header775:                             ; preds = %polly.loop_exit757.1.2, %polly.loop_exit783
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %polly.loop_exit757.1.2 ]
  %157 = mul nuw nsw i64 %polly.indvar778, 480
  %158 = trunc i64 %polly.indvar778 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %polly.loop_header775
  %index1114 = phi i64 [ 0, %polly.loop_header775 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1120 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775 ], [ %vec.ind.next1121, %vector.body1112 ]
  %159 = mul <4 x i32> %vec.ind1120, %broadcast.splat1123
  %160 = add <4 x i32> %159, <i32 1, i32 1, i32 1, i32 1>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %164 = shl i64 %index1114, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call1, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !99, !noalias !104
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1121 = add <4 x i32> %vec.ind1120, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1115, 32
  br i1 %168, label %polly.loop_exit783, label %vector.body1112, !llvm.loop !105

polly.loop_exit783:                               ; preds = %vector.body1112
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next779, 32
  br i1 %exitcond825.not, label %polly.loop_header775.1, label %polly.loop_header775

polly.loop_header221.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %169 = shl nuw nsw i64 %polly.indvar224.1, 3
  %scevgep239.1 = getelementptr i8, i8* %call1, i64 %169
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit235.1 ], [ 65, %polly.loop_header221.1 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header221.1 ]
  %170 = add nuw nsw i64 %polly.indvar230.1, 64
  %polly.access.mul.Packed_MemRef_call2243.1 = mul nuw nsw i64 %170, 60
  %polly.access.add.Packed_MemRef_call2244.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2243.1, %polly.indvar224.1
  %polly.access.Packed_MemRef_call2245.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2244.1
  %_p_scalar_246.1 = load double, double* %polly.access.Packed_MemRef_call2245.1, align 8
  %171 = mul nuw nsw i64 %170, 480
  %scevgep252.1 = getelementptr i8, i8* %scevgep239.1, i64 %171
  %scevgep252253.1 = bitcast i8* %scevgep252.1 to double*
  %_p_scalar_254.1 = load double, double* %scevgep252253.1, align 8, !alias.scope !71, !noalias !77
  %172 = mul nuw nsw i64 %170, 640
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_header233.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_header233.1 ]
  %173 = mul nuw nsw i64 %polly.indvar236.1, 480
  %scevgep240.1 = getelementptr i8, i8* %scevgep239.1, i64 %173
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_242.1
  %polly.access.mul.Packed_MemRef_call2247.1 = mul nuw nsw i64 %polly.indvar236.1, 60
  %polly.access.add.Packed_MemRef_call2248.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2247.1, %polly.indvar224.1
  %polly.access.Packed_MemRef_call2249.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2248.1
  %_p_scalar_250.1 = load double, double* %polly.access.Packed_MemRef_call2249.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_254.1, %_p_scalar_250.1
  %174 = shl nuw nsw i64 %polly.indvar236.1, 3
  %175 = add nuw nsw i64 %174, %172
  %scevgep255.1 = getelementptr i8, i8* %call, i64 %175
  %scevgep255256.1 = bitcast i8* %scevgep255.1 to double*
  %_p_scalar_257.1 = load double, double* %scevgep255256.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_257.1
  store double %p_add42.i118.1, double* %scevgep255256.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next237.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_header233.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond792.1.not = icmp eq i64 %polly.indvar_next231.1, 16
  br i1 %exitcond792.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %exitcond793.1.not = icmp eq i64 %polly.indvar_next225.1, 60
  br i1 %exitcond793.1.not, label %polly.loop_exit223.1, label %polly.loop_header221.1

polly.loop_exit223.1:                             ; preds = %polly.loop_exit229.1
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header384.1:                           ; preds = %polly.loop_exit392, %polly.loop_exit392.1
  %polly.indvar387.1 = phi i64 [ %polly.indvar_next388.1, %polly.loop_exit392.1 ], [ 0, %polly.loop_exit392 ]
  %176 = shl nuw nsw i64 %polly.indvar387.1, 3
  %scevgep402.1 = getelementptr i8, i8* %call1, i64 %176
  br label %polly.loop_header390.1

polly.loop_header390.1:                           ; preds = %polly.loop_exit398.1, %polly.loop_header384.1
  %indvars.iv800.1 = phi i64 [ %indvars.iv.next801.1, %polly.loop_exit398.1 ], [ 65, %polly.loop_header384.1 ]
  %polly.indvar393.1 = phi i64 [ %polly.indvar_next394.1, %polly.loop_exit398.1 ], [ 0, %polly.loop_header384.1 ]
  %177 = add nuw nsw i64 %polly.indvar393.1, 64
  %polly.access.mul.Packed_MemRef_call2263406.1 = mul nuw nsw i64 %177, 60
  %polly.access.add.Packed_MemRef_call2263407.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263406.1, %polly.indvar387.1
  %polly.access.Packed_MemRef_call2263408.1 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263407.1
  %_p_scalar_409.1 = load double, double* %polly.access.Packed_MemRef_call2263408.1, align 8
  %178 = mul nuw nsw i64 %177, 480
  %scevgep415.1 = getelementptr i8, i8* %scevgep402.1, i64 %178
  %scevgep415416.1 = bitcast i8* %scevgep415.1 to double*
  %_p_scalar_417.1 = load double, double* %scevgep415416.1, align 8, !alias.scope !81, !noalias !86
  %179 = mul nuw nsw i64 %177, 640
  br label %polly.loop_header396.1

polly.loop_header396.1:                           ; preds = %polly.loop_header396.1, %polly.loop_header390.1
  %polly.indvar399.1 = phi i64 [ 0, %polly.loop_header390.1 ], [ %polly.indvar_next400.1, %polly.loop_header396.1 ]
  %180 = mul nuw nsw i64 %polly.indvar399.1, 480
  %scevgep403.1 = getelementptr i8, i8* %scevgep402.1, i64 %180
  %scevgep403404.1 = bitcast i8* %scevgep403.1 to double*
  %_p_scalar_405.1 = load double, double* %scevgep403404.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.1 = fmul fast double %_p_scalar_409.1, %_p_scalar_405.1
  %polly.access.mul.Packed_MemRef_call2263410.1 = mul nuw nsw i64 %polly.indvar399.1, 60
  %polly.access.add.Packed_MemRef_call2263411.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263410.1, %polly.indvar387.1
  %polly.access.Packed_MemRef_call2263412.1 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263411.1
  %_p_scalar_413.1 = load double, double* %polly.access.Packed_MemRef_call2263412.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_417.1, %_p_scalar_413.1
  %181 = shl nuw nsw i64 %polly.indvar399.1, 3
  %182 = add nuw nsw i64 %181, %179
  %scevgep418.1 = getelementptr i8, i8* %call, i64 %182
  %scevgep418419.1 = bitcast i8* %scevgep418.1 to double*
  %_p_scalar_420.1 = load double, double* %scevgep418419.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_420.1
  store double %p_add42.i79.1, double* %scevgep418419.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond802.1.not = icmp eq i64 %polly.indvar_next400.1, %indvars.iv800.1
  br i1 %exitcond802.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_header396.1
  %polly.indvar_next394.1 = add nuw nsw i64 %polly.indvar393.1, 1
  %indvars.iv.next801.1 = add nuw nsw i64 %indvars.iv800.1, 1
  %exitcond803.1.not = icmp eq i64 %polly.indvar_next394.1, 16
  br i1 %exitcond803.1.not, label %polly.loop_exit392.1, label %polly.loop_header390.1

polly.loop_exit392.1:                             ; preds = %polly.loop_exit398.1
  %polly.indvar_next388.1 = add nuw nsw i64 %polly.indvar387.1, 1
  %exitcond804.1.not = icmp eq i64 %polly.indvar_next388.1, 60
  br i1 %exitcond804.1.not, label %polly.loop_exit386.1, label %polly.loop_header384.1

polly.loop_exit386.1:                             ; preds = %polly.loop_exit392.1
  tail call void @free(i8* nonnull %malloccall262)
  br label %kernel_syr2k.exit90

polly.loop_header547.1:                           ; preds = %polly.loop_exit555, %polly.loop_exit555.1
  %polly.indvar550.1 = phi i64 [ %polly.indvar_next551.1, %polly.loop_exit555.1 ], [ 0, %polly.loop_exit555 ]
  %183 = shl nuw nsw i64 %polly.indvar550.1, 3
  %scevgep565.1 = getelementptr i8, i8* %call1, i64 %183
  br label %polly.loop_header553.1

polly.loop_header553.1:                           ; preds = %polly.loop_exit561.1, %polly.loop_header547.1
  %indvars.iv811.1 = phi i64 [ %indvars.iv.next812.1, %polly.loop_exit561.1 ], [ 65, %polly.loop_header547.1 ]
  %polly.indvar556.1 = phi i64 [ %polly.indvar_next557.1, %polly.loop_exit561.1 ], [ 0, %polly.loop_header547.1 ]
  %184 = add nuw nsw i64 %polly.indvar556.1, 64
  %polly.access.mul.Packed_MemRef_call2426569.1 = mul nuw nsw i64 %184, 60
  %polly.access.add.Packed_MemRef_call2426570.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426569.1, %polly.indvar550.1
  %polly.access.Packed_MemRef_call2426571.1 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426570.1
  %_p_scalar_572.1 = load double, double* %polly.access.Packed_MemRef_call2426571.1, align 8
  %185 = mul nuw nsw i64 %184, 480
  %scevgep578.1 = getelementptr i8, i8* %scevgep565.1, i64 %185
  %scevgep578579.1 = bitcast i8* %scevgep578.1 to double*
  %_p_scalar_580.1 = load double, double* %scevgep578579.1, align 8, !alias.scope !90, !noalias !95
  %186 = mul nuw nsw i64 %184, 640
  br label %polly.loop_header559.1

polly.loop_header559.1:                           ; preds = %polly.loop_header559.1, %polly.loop_header553.1
  %polly.indvar562.1 = phi i64 [ 0, %polly.loop_header553.1 ], [ %polly.indvar_next563.1, %polly.loop_header559.1 ]
  %187 = mul nuw nsw i64 %polly.indvar562.1, 480
  %scevgep566.1 = getelementptr i8, i8* %scevgep565.1, i64 %187
  %scevgep566567.1 = bitcast i8* %scevgep566.1 to double*
  %_p_scalar_568.1 = load double, double* %scevgep566567.1, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.1 = fmul fast double %_p_scalar_572.1, %_p_scalar_568.1
  %polly.access.mul.Packed_MemRef_call2426573.1 = mul nuw nsw i64 %polly.indvar562.1, 60
  %polly.access.add.Packed_MemRef_call2426574.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426573.1, %polly.indvar550.1
  %polly.access.Packed_MemRef_call2426575.1 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426574.1
  %_p_scalar_576.1 = load double, double* %polly.access.Packed_MemRef_call2426575.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_580.1, %_p_scalar_576.1
  %188 = shl nuw nsw i64 %polly.indvar562.1, 3
  %189 = add nuw nsw i64 %188, %186
  %scevgep581.1 = getelementptr i8, i8* %call, i64 %189
  %scevgep581582.1 = bitcast i8* %scevgep581.1 to double*
  %_p_scalar_583.1 = load double, double* %scevgep581582.1, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_583.1
  store double %p_add42.i.1, double* %scevgep581582.1, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.1 = add nuw nsw i64 %polly.indvar562.1, 1
  %exitcond813.1.not = icmp eq i64 %polly.indvar_next563.1, %indvars.iv811.1
  br i1 %exitcond813.1.not, label %polly.loop_exit561.1, label %polly.loop_header559.1

polly.loop_exit561.1:                             ; preds = %polly.loop_header559.1
  %polly.indvar_next557.1 = add nuw nsw i64 %polly.indvar556.1, 1
  %indvars.iv.next812.1 = add nuw nsw i64 %indvars.iv811.1, 1
  %exitcond814.1.not = icmp eq i64 %polly.indvar_next557.1, 16
  br i1 %exitcond814.1.not, label %polly.loop_exit555.1, label %polly.loop_header553.1

polly.loop_exit555.1:                             ; preds = %polly.loop_exit561.1
  %polly.indvar_next551.1 = add nuw nsw i64 %polly.indvar550.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar_next551.1, 60
  br i1 %exitcond815.1.not, label %polly.loop_exit549.1, label %polly.loop_header547.1

polly.loop_exit549.1:                             ; preds = %polly.loop_exit555.1
  tail call void @free(i8* nonnull %malloccall425)
  br label %kernel_syr2k.exit

polly.loop_header775.1:                           ; preds = %polly.loop_exit783, %polly.loop_exit783.1
  %polly.indvar778.1 = phi i64 [ %polly.indvar_next779.1, %polly.loop_exit783.1 ], [ 0, %polly.loop_exit783 ]
  %190 = mul nuw nsw i64 %polly.indvar778.1, 480
  %191 = trunc i64 %polly.indvar778.1 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header775.1
  %index1128 = phi i64 [ 0, %polly.loop_header775.1 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1132 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1 ], [ %vec.ind.next1133, %vector.body1126 ]
  %192 = add nuw nsw <4 x i64> %vec.ind1132, <i64 32, i64 32, i64 32, i64 32>
  %193 = trunc <4 x i64> %192 to <4 x i32>
  %194 = mul <4 x i32> %broadcast.splat1135, %193
  %195 = add <4 x i32> %194, <i32 1, i32 1, i32 1, i32 1>
  %196 = urem <4 x i32> %195, <i32 80, i32 80, i32 80, i32 80>
  %197 = sitofp <4 x i32> %196 to <4 x double>
  %198 = fmul fast <4 x double> %197, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %199 = extractelement <4 x i64> %192, i32 0
  %200 = shl i64 %199, 3
  %201 = add i64 %200, %190
  %202 = getelementptr i8, i8* %call1, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %198, <4 x double>* %203, align 8, !alias.scope !99, !noalias !104
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1133 = add <4 x i64> %vec.ind1132, <i64 4, i64 4, i64 4, i64 4>
  %204 = icmp eq i64 %index.next1129, 28
  br i1 %204, label %polly.loop_exit783.1, label %vector.body1126, !llvm.loop !106

polly.loop_exit783.1:                             ; preds = %vector.body1126
  %polly.indvar_next779.1 = add nuw nsw i64 %polly.indvar778.1, 1
  %exitcond825.1.not = icmp eq i64 %polly.indvar_next779.1, 32
  br i1 %exitcond825.1.not, label %polly.loop_header775.1845, label %polly.loop_header775.1

polly.loop_header775.1845:                        ; preds = %polly.loop_exit783.1, %polly.loop_exit783.1856
  %polly.indvar778.1844 = phi i64 [ %polly.indvar_next779.1854, %polly.loop_exit783.1856 ], [ 0, %polly.loop_exit783.1 ]
  %205 = add nuw nsw i64 %polly.indvar778.1844, 32
  %206 = mul nuw nsw i64 %205, 480
  %207 = trunc i64 %205 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %207, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header775.1845
  %index1140 = phi i64 [ 0, %polly.loop_header775.1845 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1146 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.1845 ], [ %vec.ind.next1147, %vector.body1138 ]
  %208 = mul <4 x i32> %vec.ind1146, %broadcast.splat1149
  %209 = add <4 x i32> %208, <i32 1, i32 1, i32 1, i32 1>
  %210 = urem <4 x i32> %209, <i32 80, i32 80, i32 80, i32 80>
  %211 = sitofp <4 x i32> %210 to <4 x double>
  %212 = fmul fast <4 x double> %211, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %213 = shl i64 %index1140, 3
  %214 = add i64 %213, %206
  %215 = getelementptr i8, i8* %call1, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %212, <4 x double>* %216, align 8, !alias.scope !99, !noalias !104
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1147 = add <4 x i32> %vec.ind1146, <i32 4, i32 4, i32 4, i32 4>
  %217 = icmp eq i64 %index.next1141, 32
  br i1 %217, label %polly.loop_exit783.1856, label %vector.body1138, !llvm.loop !107

polly.loop_exit783.1856:                          ; preds = %vector.body1138
  %polly.indvar_next779.1854 = add nuw nsw i64 %polly.indvar778.1844, 1
  %exitcond825.1855.not = icmp eq i64 %polly.indvar_next779.1854, 32
  br i1 %exitcond825.1855.not, label %polly.loop_header775.1.1, label %polly.loop_header775.1845

polly.loop_header775.1.1:                         ; preds = %polly.loop_exit783.1856, %polly.loop_exit783.1.1
  %polly.indvar778.1.1 = phi i64 [ %polly.indvar_next779.1.1, %polly.loop_exit783.1.1 ], [ 0, %polly.loop_exit783.1856 ]
  %218 = add nuw nsw i64 %polly.indvar778.1.1, 32
  %219 = mul nuw nsw i64 %218, 480
  %220 = trunc i64 %218 to i32
  %broadcast.splatinsert1160 = insertelement <4 x i32> poison, i32 %220, i32 0
  %broadcast.splat1161 = shufflevector <4 x i32> %broadcast.splatinsert1160, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header775.1.1
  %index1154 = phi i64 [ 0, %polly.loop_header775.1.1 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.1 ], [ %vec.ind.next1159, %vector.body1152 ]
  %221 = add nuw nsw <4 x i64> %vec.ind1158, <i64 32, i64 32, i64 32, i64 32>
  %222 = trunc <4 x i64> %221 to <4 x i32>
  %223 = mul <4 x i32> %broadcast.splat1161, %222
  %224 = add <4 x i32> %223, <i32 1, i32 1, i32 1, i32 1>
  %225 = urem <4 x i32> %224, <i32 80, i32 80, i32 80, i32 80>
  %226 = sitofp <4 x i32> %225 to <4 x double>
  %227 = fmul fast <4 x double> %226, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %228 = extractelement <4 x i64> %221, i32 0
  %229 = shl i64 %228, 3
  %230 = add i64 %229, %219
  %231 = getelementptr i8, i8* %call1, i64 %230
  %232 = bitcast i8* %231 to <4 x double>*
  store <4 x double> %227, <4 x double>* %232, align 8, !alias.scope !99, !noalias !104
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %233 = icmp eq i64 %index.next1155, 28
  br i1 %233, label %polly.loop_exit783.1.1, label %vector.body1152, !llvm.loop !108

polly.loop_exit783.1.1:                           ; preds = %vector.body1152
  %polly.indvar_next779.1.1 = add nuw nsw i64 %polly.indvar778.1.1, 1
  %exitcond825.1.1.not = icmp eq i64 %polly.indvar_next779.1.1, 32
  br i1 %exitcond825.1.1.not, label %polly.loop_header775.2, label %polly.loop_header775.1.1

polly.loop_header775.2:                           ; preds = %polly.loop_exit783.1.1, %polly.loop_exit783.2
  %polly.indvar778.2 = phi i64 [ %polly.indvar_next779.2, %polly.loop_exit783.2 ], [ 0, %polly.loop_exit783.1.1 ]
  %234 = add nuw nsw i64 %polly.indvar778.2, 64
  %235 = mul nuw nsw i64 %234, 480
  %236 = trunc i64 %234 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %polly.loop_header775.2
  %index1166 = phi i64 [ 0, %polly.loop_header775.2 ], [ %index.next1167, %vector.body1164 ]
  %vec.ind1172 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.2 ], [ %vec.ind.next1173, %vector.body1164 ]
  %237 = mul <4 x i32> %vec.ind1172, %broadcast.splat1175
  %238 = add <4 x i32> %237, <i32 1, i32 1, i32 1, i32 1>
  %239 = urem <4 x i32> %238, <i32 80, i32 80, i32 80, i32 80>
  %240 = sitofp <4 x i32> %239 to <4 x double>
  %241 = fmul fast <4 x double> %240, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %242 = shl i64 %index1166, 3
  %243 = add i64 %242, %235
  %244 = getelementptr i8, i8* %call1, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %241, <4 x double>* %245, align 8, !alias.scope !99, !noalias !104
  %index.next1167 = add i64 %index1166, 4
  %vec.ind.next1173 = add <4 x i32> %vec.ind1172, <i32 4, i32 4, i32 4, i32 4>
  %246 = icmp eq i64 %index.next1167, 32
  br i1 %246, label %polly.loop_exit783.2, label %vector.body1164, !llvm.loop !109

polly.loop_exit783.2:                             ; preds = %vector.body1164
  %polly.indvar_next779.2 = add nuw nsw i64 %polly.indvar778.2, 1
  %exitcond825.2.not = icmp eq i64 %polly.indvar_next779.2, 16
  br i1 %exitcond825.2.not, label %polly.loop_header775.1.2, label %polly.loop_header775.2

polly.loop_header775.1.2:                         ; preds = %polly.loop_exit783.2, %polly.loop_exit783.1.2
  %polly.indvar778.1.2 = phi i64 [ %polly.indvar_next779.1.2, %polly.loop_exit783.1.2 ], [ 0, %polly.loop_exit783.2 ]
  %247 = add nuw nsw i64 %polly.indvar778.1.2, 64
  %248 = mul nuw nsw i64 %247, 480
  %249 = trunc i64 %247 to i32
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %249, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header775.1.2
  %index1180 = phi i64 [ 0, %polly.loop_header775.1.2 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1184 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.2 ], [ %vec.ind.next1185, %vector.body1178 ]
  %250 = add nuw nsw <4 x i64> %vec.ind1184, <i64 32, i64 32, i64 32, i64 32>
  %251 = trunc <4 x i64> %250 to <4 x i32>
  %252 = mul <4 x i32> %broadcast.splat1187, %251
  %253 = add <4 x i32> %252, <i32 1, i32 1, i32 1, i32 1>
  %254 = urem <4 x i32> %253, <i32 80, i32 80, i32 80, i32 80>
  %255 = sitofp <4 x i32> %254 to <4 x double>
  %256 = fmul fast <4 x double> %255, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %257 = extractelement <4 x i64> %250, i32 0
  %258 = shl i64 %257, 3
  %259 = add i64 %258, %248
  %260 = getelementptr i8, i8* %call1, i64 %259
  %261 = bitcast i8* %260 to <4 x double>*
  store <4 x double> %256, <4 x double>* %261, align 8, !alias.scope !99, !noalias !104
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1185 = add <4 x i64> %vec.ind1184, <i64 4, i64 4, i64 4, i64 4>
  %262 = icmp eq i64 %index.next1181, 28
  br i1 %262, label %polly.loop_exit783.1.2, label %vector.body1178, !llvm.loop !110

polly.loop_exit783.1.2:                           ; preds = %vector.body1178
  %polly.indvar_next779.1.2 = add nuw nsw i64 %polly.indvar778.1.2, 1
  %exitcond825.1.2.not = icmp eq i64 %polly.indvar_next779.1.2, 16
  br i1 %exitcond825.1.2.not, label %init_array.exit, label %polly.loop_header775.1.2

polly.loop_header749.1:                           ; preds = %polly.loop_exit757, %polly.loop_exit757.1
  %polly.indvar752.1 = phi i64 [ %polly.indvar_next753.1, %polly.loop_exit757.1 ], [ 0, %polly.loop_exit757 ]
  %263 = mul nuw nsw i64 %polly.indvar752.1, 480
  %264 = trunc i64 %polly.indvar752.1 to i32
  %broadcast.splatinsert1056 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat1057 = shufflevector <4 x i32> %broadcast.splatinsert1056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %polly.loop_header749.1
  %index1050 = phi i64 [ 0, %polly.loop_header749.1 ], [ %index.next1051, %vector.body1048 ]
  %vec.ind1054 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1 ], [ %vec.ind.next1055, %vector.body1048 ]
  %265 = add nuw nsw <4 x i64> %vec.ind1054, <i64 32, i64 32, i64 32, i64 32>
  %266 = trunc <4 x i64> %265 to <4 x i32>
  %267 = mul <4 x i32> %broadcast.splat1057, %266
  %268 = add <4 x i32> %267, <i32 2, i32 2, i32 2, i32 2>
  %269 = urem <4 x i32> %268, <i32 60, i32 60, i32 60, i32 60>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %272 = extractelement <4 x i64> %265, i32 0
  %273 = shl i64 %272, 3
  %274 = add i64 %273, %263
  %275 = getelementptr i8, i8* %call2, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %271, <4 x double>* %276, align 8, !alias.scope !100, !noalias !102
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1055 = add <4 x i64> %vec.ind1054, <i64 4, i64 4, i64 4, i64 4>
  %277 = icmp eq i64 %index.next1051, 28
  br i1 %277, label %polly.loop_exit757.1, label %vector.body1048, !llvm.loop !111

polly.loop_exit757.1:                             ; preds = %vector.body1048
  %polly.indvar_next753.1 = add nuw nsw i64 %polly.indvar752.1, 1
  %exitcond831.1.not = icmp eq i64 %polly.indvar_next753.1, 32
  br i1 %exitcond831.1.not, label %polly.loop_header749.1859, label %polly.loop_header749.1

polly.loop_header749.1859:                        ; preds = %polly.loop_exit757.1, %polly.loop_exit757.1870
  %polly.indvar752.1858 = phi i64 [ %polly.indvar_next753.1868, %polly.loop_exit757.1870 ], [ 0, %polly.loop_exit757.1 ]
  %278 = add nuw nsw i64 %polly.indvar752.1858, 32
  %279 = mul nuw nsw i64 %278, 480
  %280 = trunc i64 %278 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %280, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %polly.loop_header749.1859
  %index1062 = phi i64 [ 0, %polly.loop_header749.1859 ], [ %index.next1063, %vector.body1060 ]
  %vec.ind1068 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.1859 ], [ %vec.ind.next1069, %vector.body1060 ]
  %281 = mul <4 x i32> %vec.ind1068, %broadcast.splat1071
  %282 = add <4 x i32> %281, <i32 2, i32 2, i32 2, i32 2>
  %283 = urem <4 x i32> %282, <i32 60, i32 60, i32 60, i32 60>
  %284 = sitofp <4 x i32> %283 to <4 x double>
  %285 = fmul fast <4 x double> %284, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %286 = shl i64 %index1062, 3
  %287 = add i64 %286, %279
  %288 = getelementptr i8, i8* %call2, i64 %287
  %289 = bitcast i8* %288 to <4 x double>*
  store <4 x double> %285, <4 x double>* %289, align 8, !alias.scope !100, !noalias !102
  %index.next1063 = add i64 %index1062, 4
  %vec.ind.next1069 = add <4 x i32> %vec.ind1068, <i32 4, i32 4, i32 4, i32 4>
  %290 = icmp eq i64 %index.next1063, 32
  br i1 %290, label %polly.loop_exit757.1870, label %vector.body1060, !llvm.loop !112

polly.loop_exit757.1870:                          ; preds = %vector.body1060
  %polly.indvar_next753.1868 = add nuw nsw i64 %polly.indvar752.1858, 1
  %exitcond831.1869.not = icmp eq i64 %polly.indvar_next753.1868, 32
  br i1 %exitcond831.1869.not, label %polly.loop_header749.1.1, label %polly.loop_header749.1859

polly.loop_header749.1.1:                         ; preds = %polly.loop_exit757.1870, %polly.loop_exit757.1.1
  %polly.indvar752.1.1 = phi i64 [ %polly.indvar_next753.1.1, %polly.loop_exit757.1.1 ], [ 0, %polly.loop_exit757.1870 ]
  %291 = add nuw nsw i64 %polly.indvar752.1.1, 32
  %292 = mul nuw nsw i64 %291, 480
  %293 = trunc i64 %291 to i32
  %broadcast.splatinsert1082 = insertelement <4 x i32> poison, i32 %293, i32 0
  %broadcast.splat1083 = shufflevector <4 x i32> %broadcast.splatinsert1082, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header749.1.1
  %index1076 = phi i64 [ 0, %polly.loop_header749.1.1 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1080 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.1 ], [ %vec.ind.next1081, %vector.body1074 ]
  %294 = add nuw nsw <4 x i64> %vec.ind1080, <i64 32, i64 32, i64 32, i64 32>
  %295 = trunc <4 x i64> %294 to <4 x i32>
  %296 = mul <4 x i32> %broadcast.splat1083, %295
  %297 = add <4 x i32> %296, <i32 2, i32 2, i32 2, i32 2>
  %298 = urem <4 x i32> %297, <i32 60, i32 60, i32 60, i32 60>
  %299 = sitofp <4 x i32> %298 to <4 x double>
  %300 = fmul fast <4 x double> %299, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %301 = extractelement <4 x i64> %294, i32 0
  %302 = shl i64 %301, 3
  %303 = add i64 %302, %292
  %304 = getelementptr i8, i8* %call2, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %300, <4 x double>* %305, align 8, !alias.scope !100, !noalias !102
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1081 = add <4 x i64> %vec.ind1080, <i64 4, i64 4, i64 4, i64 4>
  %306 = icmp eq i64 %index.next1077, 28
  br i1 %306, label %polly.loop_exit757.1.1, label %vector.body1074, !llvm.loop !113

polly.loop_exit757.1.1:                           ; preds = %vector.body1074
  %polly.indvar_next753.1.1 = add nuw nsw i64 %polly.indvar752.1.1, 1
  %exitcond831.1.1.not = icmp eq i64 %polly.indvar_next753.1.1, 32
  br i1 %exitcond831.1.1.not, label %polly.loop_header749.2, label %polly.loop_header749.1.1

polly.loop_header749.2:                           ; preds = %polly.loop_exit757.1.1, %polly.loop_exit757.2
  %polly.indvar752.2 = phi i64 [ %polly.indvar_next753.2, %polly.loop_exit757.2 ], [ 0, %polly.loop_exit757.1.1 ]
  %307 = add nuw nsw i64 %polly.indvar752.2, 64
  %308 = mul nuw nsw i64 %307, 480
  %309 = trunc i64 %307 to i32
  %broadcast.splatinsert1096 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1097 = shufflevector <4 x i32> %broadcast.splatinsert1096, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %polly.loop_header749.2
  %index1088 = phi i64 [ 0, %polly.loop_header749.2 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1094 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.2 ], [ %vec.ind.next1095, %vector.body1086 ]
  %310 = mul <4 x i32> %vec.ind1094, %broadcast.splat1097
  %311 = add <4 x i32> %310, <i32 2, i32 2, i32 2, i32 2>
  %312 = urem <4 x i32> %311, <i32 60, i32 60, i32 60, i32 60>
  %313 = sitofp <4 x i32> %312 to <4 x double>
  %314 = fmul fast <4 x double> %313, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %315 = shl i64 %index1088, 3
  %316 = add i64 %315, %308
  %317 = getelementptr i8, i8* %call2, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %314, <4 x double>* %318, align 8, !alias.scope !100, !noalias !102
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1095 = add <4 x i32> %vec.ind1094, <i32 4, i32 4, i32 4, i32 4>
  %319 = icmp eq i64 %index.next1089, 32
  br i1 %319, label %polly.loop_exit757.2, label %vector.body1086, !llvm.loop !114

polly.loop_exit757.2:                             ; preds = %vector.body1086
  %polly.indvar_next753.2 = add nuw nsw i64 %polly.indvar752.2, 1
  %exitcond831.2.not = icmp eq i64 %polly.indvar_next753.2, 16
  br i1 %exitcond831.2.not, label %polly.loop_header749.1.2, label %polly.loop_header749.2

polly.loop_header749.1.2:                         ; preds = %polly.loop_exit757.2, %polly.loop_exit757.1.2
  %polly.indvar752.1.2 = phi i64 [ %polly.indvar_next753.1.2, %polly.loop_exit757.1.2 ], [ 0, %polly.loop_exit757.2 ]
  %320 = add nuw nsw i64 %polly.indvar752.1.2, 64
  %321 = mul nuw nsw i64 %320, 480
  %322 = trunc i64 %320 to i32
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header749.1.2
  %index1102 = phi i64 [ 0, %polly.loop_header749.1.2 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1106 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.2 ], [ %vec.ind.next1107, %vector.body1100 ]
  %323 = add nuw nsw <4 x i64> %vec.ind1106, <i64 32, i64 32, i64 32, i64 32>
  %324 = trunc <4 x i64> %323 to <4 x i32>
  %325 = mul <4 x i32> %broadcast.splat1109, %324
  %326 = add <4 x i32> %325, <i32 2, i32 2, i32 2, i32 2>
  %327 = urem <4 x i32> %326, <i32 60, i32 60, i32 60, i32 60>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %330 = extractelement <4 x i64> %323, i32 0
  %331 = shl i64 %330, 3
  %332 = add i64 %331, %321
  %333 = getelementptr i8, i8* %call2, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %329, <4 x double>* %334, align 8, !alias.scope !100, !noalias !102
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1107 = add <4 x i64> %vec.ind1106, <i64 4, i64 4, i64 4, i64 4>
  %335 = icmp eq i64 %index.next1103, 28
  br i1 %335, label %polly.loop_exit757.1.2, label %vector.body1100, !llvm.loop !115

polly.loop_exit757.1.2:                           ; preds = %vector.body1100
  %polly.indvar_next753.1.2 = add nuw nsw i64 %polly.indvar752.1.2, 1
  %exitcond831.1.2.not = icmp eq i64 %polly.indvar_next753.1.2, 16
  br i1 %exitcond831.1.2.not, label %polly.loop_header775, label %polly.loop_header749.1.2

polly.loop_header722.1:                           ; preds = %polly.loop_exit730, %polly.loop_exit730.1
  %polly.indvar725.1 = phi i64 [ %polly.indvar_next726.1, %polly.loop_exit730.1 ], [ 0, %polly.loop_exit730 ]
  %336 = mul nuw nsw i64 %polly.indvar725.1, 640
  %337 = trunc i64 %polly.indvar725.1 to i32
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %337, i32 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %polly.loop_header722.1
  %index936 = phi i64 [ 0, %polly.loop_header722.1 ], [ %index.next937, %vector.body934 ]
  %vec.ind940 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1 ], [ %vec.ind.next941, %vector.body934 ]
  %338 = add nuw nsw <4 x i64> %vec.ind940, <i64 32, i64 32, i64 32, i64 32>
  %339 = trunc <4 x i64> %338 to <4 x i32>
  %340 = mul <4 x i32> %broadcast.splat943, %339
  %341 = add <4 x i32> %340, <i32 3, i32 3, i32 3, i32 3>
  %342 = urem <4 x i32> %341, <i32 80, i32 80, i32 80, i32 80>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = extractelement <4 x i64> %338, i32 0
  %346 = shl i64 %345, 3
  %347 = add nuw nsw i64 %346, %336
  %348 = getelementptr i8, i8* %call, i64 %347
  %349 = bitcast i8* %348 to <4 x double>*
  store <4 x double> %344, <4 x double>* %349, align 8, !alias.scope !96, !noalias !98
  %index.next937 = add i64 %index936, 4
  %vec.ind.next941 = add <4 x i64> %vec.ind940, <i64 4, i64 4, i64 4, i64 4>
  %350 = icmp eq i64 %index.next937, 32
  br i1 %350, label %polly.loop_exit730.1, label %vector.body934, !llvm.loop !116

polly.loop_exit730.1:                             ; preds = %vector.body934
  %polly.indvar_next726.1 = add nuw nsw i64 %polly.indvar725.1, 1
  %exitcond840.1.not = icmp eq i64 %polly.indvar_next726.1, 32
  br i1 %exitcond840.1.not, label %polly.loop_header722.2, label %polly.loop_header722.1

polly.loop_header722.2:                           ; preds = %polly.loop_exit730.1, %polly.loop_exit730.2
  %polly.indvar725.2 = phi i64 [ %polly.indvar_next726.2, %polly.loop_exit730.2 ], [ 0, %polly.loop_exit730.1 ]
  %351 = mul nuw nsw i64 %polly.indvar725.2, 640
  %352 = trunc i64 %polly.indvar725.2 to i32
  %broadcast.splatinsert954 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat955 = shufflevector <4 x i32> %broadcast.splatinsert954, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body946

vector.body946:                                   ; preds = %vector.body946, %polly.loop_header722.2
  %index948 = phi i64 [ 0, %polly.loop_header722.2 ], [ %index.next949, %vector.body946 ]
  %vec.ind952 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2 ], [ %vec.ind.next953, %vector.body946 ]
  %353 = add nuw nsw <4 x i64> %vec.ind952, <i64 64, i64 64, i64 64, i64 64>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat955, %354
  %356 = add <4 x i32> %355, <i32 3, i32 3, i32 3, i32 3>
  %357 = urem <4 x i32> %356, <i32 80, i32 80, i32 80, i32 80>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add nuw nsw i64 %361, %351
  %363 = getelementptr i8, i8* %call, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !96, !noalias !98
  %index.next949 = add i64 %index948, 4
  %vec.ind.next953 = add <4 x i64> %vec.ind952, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next949, 16
  br i1 %365, label %polly.loop_exit730.2, label %vector.body946, !llvm.loop !117

polly.loop_exit730.2:                             ; preds = %vector.body946
  %polly.indvar_next726.2 = add nuw nsw i64 %polly.indvar725.2, 1
  %exitcond840.2.not = icmp eq i64 %polly.indvar_next726.2, 32
  br i1 %exitcond840.2.not, label %polly.loop_header722.1873, label %polly.loop_header722.2

polly.loop_header722.1873:                        ; preds = %polly.loop_exit730.2, %polly.loop_exit730.1884
  %polly.indvar725.1872 = phi i64 [ %polly.indvar_next726.1882, %polly.loop_exit730.1884 ], [ 0, %polly.loop_exit730.2 ]
  %366 = add nuw nsw i64 %polly.indvar725.1872, 32
  %367 = mul nuw nsw i64 %366, 640
  %368 = trunc i64 %366 to i32
  %broadcast.splatinsert968 = insertelement <4 x i32> poison, i32 %368, i32 0
  %broadcast.splat969 = shufflevector <4 x i32> %broadcast.splatinsert968, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body958

vector.body958:                                   ; preds = %vector.body958, %polly.loop_header722.1873
  %index960 = phi i64 [ 0, %polly.loop_header722.1873 ], [ %index.next961, %vector.body958 ]
  %vec.ind966 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.1873 ], [ %vec.ind.next967, %vector.body958 ]
  %369 = mul <4 x i32> %vec.ind966, %broadcast.splat969
  %370 = add <4 x i32> %369, <i32 3, i32 3, i32 3, i32 3>
  %371 = urem <4 x i32> %370, <i32 80, i32 80, i32 80, i32 80>
  %372 = sitofp <4 x i32> %371 to <4 x double>
  %373 = fmul fast <4 x double> %372, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %374 = shl i64 %index960, 3
  %375 = add nuw nsw i64 %374, %367
  %376 = getelementptr i8, i8* %call, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %373, <4 x double>* %377, align 8, !alias.scope !96, !noalias !98
  %index.next961 = add i64 %index960, 4
  %vec.ind.next967 = add <4 x i32> %vec.ind966, <i32 4, i32 4, i32 4, i32 4>
  %378 = icmp eq i64 %index.next961, 32
  br i1 %378, label %polly.loop_exit730.1884, label %vector.body958, !llvm.loop !118

polly.loop_exit730.1884:                          ; preds = %vector.body958
  %polly.indvar_next726.1882 = add nuw nsw i64 %polly.indvar725.1872, 1
  %exitcond840.1883.not = icmp eq i64 %polly.indvar_next726.1882, 32
  br i1 %exitcond840.1883.not, label %polly.loop_header722.1.1, label %polly.loop_header722.1873

polly.loop_header722.1.1:                         ; preds = %polly.loop_exit730.1884, %polly.loop_exit730.1.1
  %polly.indvar725.1.1 = phi i64 [ %polly.indvar_next726.1.1, %polly.loop_exit730.1.1 ], [ 0, %polly.loop_exit730.1884 ]
  %379 = add nuw nsw i64 %polly.indvar725.1.1, 32
  %380 = mul nuw nsw i64 %379, 640
  %381 = trunc i64 %379 to i32
  %broadcast.splatinsert980 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat981 = shufflevector <4 x i32> %broadcast.splatinsert980, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %polly.loop_header722.1.1
  %index974 = phi i64 [ 0, %polly.loop_header722.1.1 ], [ %index.next975, %vector.body972 ]
  %vec.ind978 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.1 ], [ %vec.ind.next979, %vector.body972 ]
  %382 = add nuw nsw <4 x i64> %vec.ind978, <i64 32, i64 32, i64 32, i64 32>
  %383 = trunc <4 x i64> %382 to <4 x i32>
  %384 = mul <4 x i32> %broadcast.splat981, %383
  %385 = add <4 x i32> %384, <i32 3, i32 3, i32 3, i32 3>
  %386 = urem <4 x i32> %385, <i32 80, i32 80, i32 80, i32 80>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %389 = extractelement <4 x i64> %382, i32 0
  %390 = shl i64 %389, 3
  %391 = add nuw nsw i64 %390, %380
  %392 = getelementptr i8, i8* %call, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %388, <4 x double>* %393, align 8, !alias.scope !96, !noalias !98
  %index.next975 = add i64 %index974, 4
  %vec.ind.next979 = add <4 x i64> %vec.ind978, <i64 4, i64 4, i64 4, i64 4>
  %394 = icmp eq i64 %index.next975, 32
  br i1 %394, label %polly.loop_exit730.1.1, label %vector.body972, !llvm.loop !119

polly.loop_exit730.1.1:                           ; preds = %vector.body972
  %polly.indvar_next726.1.1 = add nuw nsw i64 %polly.indvar725.1.1, 1
  %exitcond840.1.1.not = icmp eq i64 %polly.indvar_next726.1.1, 32
  br i1 %exitcond840.1.1.not, label %polly.loop_header722.2.1, label %polly.loop_header722.1.1

polly.loop_header722.2.1:                         ; preds = %polly.loop_exit730.1.1, %polly.loop_exit730.2.1
  %polly.indvar725.2.1 = phi i64 [ %polly.indvar_next726.2.1, %polly.loop_exit730.2.1 ], [ 0, %polly.loop_exit730.1.1 ]
  %395 = add nuw nsw i64 %polly.indvar725.2.1, 32
  %396 = mul nuw nsw i64 %395, 640
  %397 = trunc i64 %395 to i32
  %broadcast.splatinsert992 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat993 = shufflevector <4 x i32> %broadcast.splatinsert992, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body984

vector.body984:                                   ; preds = %vector.body984, %polly.loop_header722.2.1
  %index986 = phi i64 [ 0, %polly.loop_header722.2.1 ], [ %index.next987, %vector.body984 ]
  %vec.ind990 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.1 ], [ %vec.ind.next991, %vector.body984 ]
  %398 = add nuw nsw <4 x i64> %vec.ind990, <i64 64, i64 64, i64 64, i64 64>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat993, %399
  %401 = add <4 x i32> %400, <i32 3, i32 3, i32 3, i32 3>
  %402 = urem <4 x i32> %401, <i32 80, i32 80, i32 80, i32 80>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add nuw nsw i64 %406, %396
  %408 = getelementptr i8, i8* %call, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !96, !noalias !98
  %index.next987 = add i64 %index986, 4
  %vec.ind.next991 = add <4 x i64> %vec.ind990, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next987, 16
  br i1 %410, label %polly.loop_exit730.2.1, label %vector.body984, !llvm.loop !120

polly.loop_exit730.2.1:                           ; preds = %vector.body984
  %polly.indvar_next726.2.1 = add nuw nsw i64 %polly.indvar725.2.1, 1
  %exitcond840.2.1.not = icmp eq i64 %polly.indvar_next726.2.1, 32
  br i1 %exitcond840.2.1.not, label %polly.loop_header722.2887, label %polly.loop_header722.2.1

polly.loop_header722.2887:                        ; preds = %polly.loop_exit730.2.1, %polly.loop_exit730.2898
  %polly.indvar725.2886 = phi i64 [ %polly.indvar_next726.2896, %polly.loop_exit730.2898 ], [ 0, %polly.loop_exit730.2.1 ]
  %411 = add nuw nsw i64 %polly.indvar725.2886, 64
  %412 = mul nuw nsw i64 %411, 640
  %413 = trunc i64 %411 to i32
  %broadcast.splatinsert1006 = insertelement <4 x i32> poison, i32 %413, i32 0
  %broadcast.splat1007 = shufflevector <4 x i32> %broadcast.splatinsert1006, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %polly.loop_header722.2887
  %index998 = phi i64 [ 0, %polly.loop_header722.2887 ], [ %index.next999, %vector.body996 ]
  %vec.ind1004 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.2887 ], [ %vec.ind.next1005, %vector.body996 ]
  %414 = mul <4 x i32> %vec.ind1004, %broadcast.splat1007
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = shl i64 %index998, 3
  %420 = add nuw nsw i64 %419, %412
  %421 = getelementptr i8, i8* %call, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %418, <4 x double>* %422, align 8, !alias.scope !96, !noalias !98
  %index.next999 = add i64 %index998, 4
  %vec.ind.next1005 = add <4 x i32> %vec.ind1004, <i32 4, i32 4, i32 4, i32 4>
  %423 = icmp eq i64 %index.next999, 32
  br i1 %423, label %polly.loop_exit730.2898, label %vector.body996, !llvm.loop !121

polly.loop_exit730.2898:                          ; preds = %vector.body996
  %polly.indvar_next726.2896 = add nuw nsw i64 %polly.indvar725.2886, 1
  %exitcond840.2897.not = icmp eq i64 %polly.indvar_next726.2896, 16
  br i1 %exitcond840.2897.not, label %polly.loop_header722.1.2, label %polly.loop_header722.2887

polly.loop_header722.1.2:                         ; preds = %polly.loop_exit730.2898, %polly.loop_exit730.1.2
  %polly.indvar725.1.2 = phi i64 [ %polly.indvar_next726.1.2, %polly.loop_exit730.1.2 ], [ 0, %polly.loop_exit730.2898 ]
  %424 = add nuw nsw i64 %polly.indvar725.1.2, 64
  %425 = mul nuw nsw i64 %424, 640
  %426 = trunc i64 %424 to i32
  %broadcast.splatinsert1018 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat1019 = shufflevector <4 x i32> %broadcast.splatinsert1018, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %polly.loop_header722.1.2
  %index1012 = phi i64 [ 0, %polly.loop_header722.1.2 ], [ %index.next1013, %vector.body1010 ]
  %vec.ind1016 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.2 ], [ %vec.ind.next1017, %vector.body1010 ]
  %427 = add nuw nsw <4 x i64> %vec.ind1016, <i64 32, i64 32, i64 32, i64 32>
  %428 = trunc <4 x i64> %427 to <4 x i32>
  %429 = mul <4 x i32> %broadcast.splat1019, %428
  %430 = add <4 x i32> %429, <i32 3, i32 3, i32 3, i32 3>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %434 = extractelement <4 x i64> %427, i32 0
  %435 = shl i64 %434, 3
  %436 = add nuw nsw i64 %435, %425
  %437 = getelementptr i8, i8* %call, i64 %436
  %438 = bitcast i8* %437 to <4 x double>*
  store <4 x double> %433, <4 x double>* %438, align 8, !alias.scope !96, !noalias !98
  %index.next1013 = add i64 %index1012, 4
  %vec.ind.next1017 = add <4 x i64> %vec.ind1016, <i64 4, i64 4, i64 4, i64 4>
  %439 = icmp eq i64 %index.next1013, 32
  br i1 %439, label %polly.loop_exit730.1.2, label %vector.body1010, !llvm.loop !122

polly.loop_exit730.1.2:                           ; preds = %vector.body1010
  %polly.indvar_next726.1.2 = add nuw nsw i64 %polly.indvar725.1.2, 1
  %exitcond840.1.2.not = icmp eq i64 %polly.indvar_next726.1.2, 16
  br i1 %exitcond840.1.2.not, label %polly.loop_header722.2.2, label %polly.loop_header722.1.2

polly.loop_header722.2.2:                         ; preds = %polly.loop_exit730.1.2, %polly.loop_exit730.2.2
  %polly.indvar725.2.2 = phi i64 [ %polly.indvar_next726.2.2, %polly.loop_exit730.2.2 ], [ 0, %polly.loop_exit730.1.2 ]
  %440 = add nuw nsw i64 %polly.indvar725.2.2, 64
  %441 = mul nuw nsw i64 %440, 640
  %442 = trunc i64 %440 to i32
  %broadcast.splatinsert1030 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1031 = shufflevector <4 x i32> %broadcast.splatinsert1030, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %polly.loop_header722.2.2
  %index1024 = phi i64 [ 0, %polly.loop_header722.2.2 ], [ %index.next1025, %vector.body1022 ]
  %vec.ind1028 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.2 ], [ %vec.ind.next1029, %vector.body1022 ]
  %443 = add nuw nsw <4 x i64> %vec.ind1028, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat1031, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !96, !noalias !98
  %index.next1025 = add i64 %index1024, 4
  %vec.ind.next1029 = add <4 x i64> %vec.ind1028, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next1025, 16
  br i1 %455, label %polly.loop_exit730.2.2, label %vector.body1022, !llvm.loop !123

polly.loop_exit730.2.2:                           ; preds = %vector.body1022
  %polly.indvar_next726.2.2 = add nuw nsw i64 %polly.indvar725.2.2, 1
  %exitcond840.2.2.not = icmp eq i64 %polly.indvar_next726.2.2, 16
  br i1 %exitcond840.2.2.not, label %polly.loop_header749, label %polly.loop_header722.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 128}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 80}
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
!45 = !{!"llvm.loop.tile.size", i32 64}
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
