; ModuleID = 'syr2k_recreations//mmp_syr2k_S_127.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_127.c"
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
  %call739 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1600 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2601 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1600, %call2
  %polly.access.call2620 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2620, %call1
  %2 = or i1 %0, %1
  %polly.access.call640 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call640, %call2
  %4 = icmp ule i8* %polly.access.call2620, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call640, %call1
  %8 = icmp ule i8* %polly.access.call1600, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header725, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv7.i, i64 %index910
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit786.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start425, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i, i64 %index1192
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
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit551.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start261, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i52, i64 %index1215
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1219 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1219, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1216 = add i64 %index1215, 4
  %57 = icmp eq i64 %index.next1216, %n.vec1214
  br i1 %57, label %middle.block1208, label %vector.body1210, !llvm.loop !54

middle.block1208:                                 ; preds = %vector.body1210
  %cmp.n1218 = icmp eq i64 %indvars.iv21.i52, %n.vec1214
  br i1 %cmp.n1218, label %for.inc6.i63, label %for.body3.i60.preheader1261

for.body3.i60.preheader1261:                      ; preds = %for.body3.i60.preheader, %middle.block1208
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1214, %middle.block1208 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1261, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1261 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit387.1
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
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i91, i64 %index1241
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1245 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1245, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1242 = add i64 %index1241, 4
  %68 = icmp eq i64 %index.next1242, %n.vec1240
  br i1 %68, label %middle.block1234, label %vector.body1236, !llvm.loop !56

middle.block1234:                                 ; preds = %vector.body1236
  %cmp.n1244 = icmp eq i64 %indvars.iv21.i91, %n.vec1240
  br i1 %cmp.n1244, label %for.inc6.i102, label %for.body3.i99.preheader1260

for.body3.i99.preheader1260:                      ; preds = %for.body3.i99.preheader, %middle.block1234
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1240, %middle.block1234 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1260, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1260 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %wide.load1259 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1259, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1256 = add i64 %index1255, 4
  %95 = icmp eq i64 %index.next1256, %n.vec1254
  br i1 %95, label %middle.block1246, label %vector.body1248, !llvm.loop !68

middle.block1246:                                 ; preds = %vector.body1248
  %cmp.n1258 = icmp eq i64 %88, %n.vec1254
  br i1 %cmp.n1258, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1246
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1254, %middle.block1246 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1246
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1250 = add i64 %indvar1249, 1
  br i1 %exitcond800.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond799.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond798.not, label %polly.loop_header221, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 60
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2601, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !66, !noalias !71
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond797.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header221:                             ; preds = %polly.loop_exit207, %polly.loop_exit229
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 63)
  %97 = mul nuw nsw i64 %polly.indvar224, 480
  %scevgep251 = getelementptr i8, i8* %call1, i64 %97
  %98 = mul nuw nsw i64 %polly.indvar224, 640
  %scevgep255 = getelementptr i8, i8* %call, i64 %98
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond796.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond796.not, label %polly.loop_header221.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar230 = phi i64 [ 0, %polly.loop_header221 ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %99 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep239 = getelementptr i8, i8* %call1, i64 %99
  %scevgep252 = getelementptr i8, i8* %scevgep251, i64 %99
  %scevgep252253 = bitcast i8* %scevgep252 to double*
  %_p_scalar_254.pre = load double, double* %scevgep252253, align 8, !alias.scope !65, !noalias !72
  %polly.access.mul.Packed_MemRef_call2243 = mul nuw nsw i64 %polly.indvar230, 80
  %polly.access.add.Packed_MemRef_call2244 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2243, %polly.indvar224
  %polly.access.Packed_MemRef_call2245 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2244
  %_p_scalar_246 = load double, double* %polly.access.Packed_MemRef_call2245, align 8
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next231, 60
  br i1 %exitcond795.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_header233 ]
  %100 = mul nuw nsw i64 %polly.indvar236, 480
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %100
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %polly.access.add.Packed_MemRef_call2248 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call2243
  %polly.access.Packed_MemRef_call2249 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2248
  %_p_scalar_250 = load double, double* %polly.access.Packed_MemRef_call2249, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_254.pre, %_p_scalar_250
  %101 = shl i64 %polly.indvar236, 3
  %scevgep256 = getelementptr i8, i8* %scevgep255, i64 %101
  %scevgep256257 = bitcast i8* %scevgep256 to double*
  %_p_scalar_258 = load double, double* %scevgep256257, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_258
  store double %p_add42.i118, double* %scevgep256257, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond.not = icmp eq i64 %polly.indvar236, %smin
  br i1 %exitcond.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start261:                                   ; preds = %kernel_syr2k.exit
  %malloccall263 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header347

polly.loop_header347:                             ; preds = %polly.loop_exit355, %polly.start261
  %indvar1223 = phi i64 [ %indvar.next1224, %polly.loop_exit355 ], [ 0, %polly.start261 ]
  %polly.indvar350 = phi i64 [ %polly.indvar_next351, %polly.loop_exit355 ], [ 1, %polly.start261 ]
  %102 = add i64 %indvar1223, 1
  %103 = mul nuw nsw i64 %polly.indvar350, 640
  %scevgep359 = getelementptr i8, i8* %call, i64 %103
  %min.iters.check1225 = icmp ult i64 %102, 4
  br i1 %min.iters.check1225, label %polly.loop_header353.preheader, label %vector.ph1226

vector.ph1226:                                    ; preds = %polly.loop_header347
  %n.vec1228 = and i64 %102, -4
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1226
  %index1229 = phi i64 [ 0, %vector.ph1226 ], [ %index.next1230, %vector.body1222 ]
  %104 = shl nuw nsw i64 %index1229, 3
  %105 = getelementptr i8, i8* %scevgep359, i64 %104
  %106 = bitcast i8* %105 to <4 x double>*
  %wide.load1233 = load <4 x double>, <4 x double>* %106, align 8, !alias.scope !73, !noalias !75
  %107 = fmul fast <4 x double> %wide.load1233, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %108 = bitcast i8* %105 to <4 x double>*
  store <4 x double> %107, <4 x double>* %108, align 8, !alias.scope !73, !noalias !75
  %index.next1230 = add i64 %index1229, 4
  %109 = icmp eq i64 %index.next1230, %n.vec1228
  br i1 %109, label %middle.block1220, label %vector.body1222, !llvm.loop !79

middle.block1220:                                 ; preds = %vector.body1222
  %cmp.n1232 = icmp eq i64 %102, %n.vec1228
  br i1 %cmp.n1232, label %polly.loop_exit355, label %polly.loop_header353.preheader

polly.loop_header353.preheader:                   ; preds = %polly.loop_header347, %middle.block1220
  %polly.indvar356.ph = phi i64 [ 0, %polly.loop_header347 ], [ %n.vec1228, %middle.block1220 ]
  br label %polly.loop_header353

polly.loop_exit355:                               ; preds = %polly.loop_header353, %middle.block1220
  %polly.indvar_next351 = add nuw nsw i64 %polly.indvar350, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next351, 80
  %indvar.next1224 = add i64 %indvar1223, 1
  br i1 %exitcond810.not, label %polly.loop_header363.preheader, label %polly.loop_header347

polly.loop_header363.preheader:                   ; preds = %polly.loop_exit355
  %Packed_MemRef_call2264 = bitcast i8* %malloccall263 to double*
  br label %polly.loop_header363

polly.loop_header353:                             ; preds = %polly.loop_header353.preheader, %polly.loop_header353
  %polly.indvar356 = phi i64 [ %polly.indvar_next357, %polly.loop_header353 ], [ %polly.indvar356.ph, %polly.loop_header353.preheader ]
  %110 = shl nuw nsw i64 %polly.indvar356, 3
  %scevgep360 = getelementptr i8, i8* %scevgep359, i64 %110
  %scevgep360361 = bitcast i8* %scevgep360 to double*
  %_p_scalar_362 = load double, double* %scevgep360361, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_362, 1.200000e+00
  store double %p_mul.i57, double* %scevgep360361, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next357 = add nuw nsw i64 %polly.indvar356, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next357, %polly.indvar350
  br i1 %exitcond809.not, label %polly.loop_exit355, label %polly.loop_header353, !llvm.loop !80

polly.loop_header363:                             ; preds = %polly.loop_header363.preheader, %polly.loop_exit371
  %polly.indvar366 = phi i64 [ %polly.indvar_next367, %polly.loop_exit371 ], [ 0, %polly.loop_header363.preheader ]
  %polly.access.mul.Packed_MemRef_call2264 = mul nuw nsw i64 %polly.indvar366, 80
  br label %polly.loop_header369

polly.loop_exit371:                               ; preds = %polly.loop_header369
  %polly.indvar_next367 = add nuw nsw i64 %polly.indvar366, 1
  %exitcond808.not = icmp eq i64 %polly.indvar_next367, 60
  br i1 %exitcond808.not, label %polly.loop_header385, label %polly.loop_header363

polly.loop_header369:                             ; preds = %polly.loop_header369, %polly.loop_header363
  %polly.indvar372 = phi i64 [ 0, %polly.loop_header363 ], [ %polly.indvar_next373, %polly.loop_header369 ]
  %polly.access.mul.call2376 = mul nuw nsw i64 %polly.indvar372, 60
  %polly.access.add.call2377 = add nuw nsw i64 %polly.access.mul.call2376, %polly.indvar366
  %polly.access.call2378 = getelementptr double, double* %polly.access.cast.call2601, i64 %polly.access.add.call2377
  %polly.access.call2378.load = load double, double* %polly.access.call2378, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call2264 = add nuw nsw i64 %polly.indvar372, %polly.access.mul.Packed_MemRef_call2264
  %polly.access.Packed_MemRef_call2264 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264
  store double %polly.access.call2378.load, double* %polly.access.Packed_MemRef_call2264, align 8
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond807.not = icmp eq i64 %polly.indvar_next373, 80
  br i1 %exitcond807.not, label %polly.loop_exit371, label %polly.loop_header369

polly.loop_header385:                             ; preds = %polly.loop_exit371, %polly.loop_exit393
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit393 ], [ 0, %polly.loop_exit371 ]
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_exit393 ], [ 0, %polly.loop_exit371 ]
  %smin803 = call i64 @llvm.smin.i64(i64 %indvars.iv801, i64 63)
  %111 = mul nuw nsw i64 %polly.indvar388, 480
  %scevgep415 = getelementptr i8, i8* %call1, i64 %111
  %112 = mul nuw nsw i64 %polly.indvar388, 640
  %scevgep419 = getelementptr i8, i8* %call, i64 %112
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit399
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1
  %exitcond806.not = icmp eq i64 %indvars.iv.next802, 80
  br i1 %exitcond806.not, label %polly.loop_header385.1, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit399, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit399 ]
  %113 = shl nuw nsw i64 %polly.indvar394, 3
  %scevgep403 = getelementptr i8, i8* %call1, i64 %113
  %scevgep416 = getelementptr i8, i8* %scevgep415, i64 %113
  %scevgep416417 = bitcast i8* %scevgep416 to double*
  %_p_scalar_418.pre = load double, double* %scevgep416417, align 8, !alias.scope !76, !noalias !82
  %polly.access.mul.Packed_MemRef_call2264407 = mul nuw nsw i64 %polly.indvar394, 80
  %polly.access.add.Packed_MemRef_call2264408 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2264407, %polly.indvar388
  %polly.access.Packed_MemRef_call2264409 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264408
  %_p_scalar_410 = load double, double* %polly.access.Packed_MemRef_call2264409, align 8
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_header397
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next395, 60
  br i1 %exitcond805.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_header397, %polly.loop_header391
  %polly.indvar400 = phi i64 [ 0, %polly.loop_header391 ], [ %polly.indvar_next401, %polly.loop_header397 ]
  %114 = mul nuw nsw i64 %polly.indvar400, 480
  %scevgep404 = getelementptr i8, i8* %scevgep403, i64 %114
  %scevgep404405 = bitcast i8* %scevgep404 to double*
  %_p_scalar_406 = load double, double* %scevgep404405, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73 = fmul fast double %_p_scalar_410, %_p_scalar_406
  %polly.access.add.Packed_MemRef_call2264412 = add nuw nsw i64 %polly.indvar400, %polly.access.mul.Packed_MemRef_call2264407
  %polly.access.Packed_MemRef_call2264413 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264412
  %_p_scalar_414 = load double, double* %polly.access.Packed_MemRef_call2264413, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_418.pre, %_p_scalar_414
  %115 = shl i64 %polly.indvar400, 3
  %scevgep420 = getelementptr i8, i8* %scevgep419, i64 %115
  %scevgep420421 = bitcast i8* %scevgep420 to double*
  %_p_scalar_422 = load double, double* %scevgep420421, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_422
  store double %p_add42.i79, double* %scevgep420421, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %exitcond804.not = icmp eq i64 %polly.indvar400, %smin803
  br i1 %exitcond804.not, label %polly.loop_exit399, label %polly.loop_header397

polly.start425:                                   ; preds = %init_array.exit
  %malloccall427 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header511

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.start425
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit519 ], [ 0, %polly.start425 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 1, %polly.start425 ]
  %116 = add i64 %indvar, 1
  %117 = mul nuw nsw i64 %polly.indvar514, 640
  %scevgep523 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1199 = icmp ult i64 %116, 4
  br i1 %min.iters.check1199, label %polly.loop_header517.preheader, label %vector.ph1200

vector.ph1200:                                    ; preds = %polly.loop_header511
  %n.vec1202 = and i64 %116, -4
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1204, %vector.body1198 ]
  %118 = shl nuw nsw i64 %index1203, 3
  %119 = getelementptr i8, i8* %scevgep523, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1207 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !83, !noalias !85
  %121 = fmul fast <4 x double> %wide.load1207, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !83, !noalias !85
  %index.next1204 = add i64 %index1203, 4
  %123 = icmp eq i64 %index.next1204, %n.vec1202
  br i1 %123, label %middle.block1196, label %vector.body1198, !llvm.loop !89

middle.block1196:                                 ; preds = %vector.body1198
  %cmp.n1206 = icmp eq i64 %116, %n.vec1202
  br i1 %cmp.n1206, label %polly.loop_exit519, label %polly.loop_header517.preheader

polly.loop_header517.preheader:                   ; preds = %polly.loop_header511, %middle.block1196
  %polly.indvar520.ph = phi i64 [ 0, %polly.loop_header511 ], [ %n.vec1202, %middle.block1196 ]
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_header517, %middle.block1196
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next515, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond820.not, label %polly.loop_header527.preheader, label %polly.loop_header511

polly.loop_header527.preheader:                   ; preds = %polly.loop_exit519
  %Packed_MemRef_call2428 = bitcast i8* %malloccall427 to double*
  br label %polly.loop_header527

polly.loop_header517:                             ; preds = %polly.loop_header517.preheader, %polly.loop_header517
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_header517 ], [ %polly.indvar520.ph, %polly.loop_header517.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar520, 3
  %scevgep524 = getelementptr i8, i8* %scevgep523, i64 %124
  %scevgep524525 = bitcast i8* %scevgep524 to double*
  %_p_scalar_526 = load double, double* %scevgep524525, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_526, 1.200000e+00
  store double %p_mul.i, double* %scevgep524525, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next521, %polly.indvar514
  br i1 %exitcond819.not, label %polly.loop_exit519, label %polly.loop_header517, !llvm.loop !90

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_exit535
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit535 ], [ 0, %polly.loop_header527.preheader ]
  %polly.access.mul.Packed_MemRef_call2428 = mul nuw nsw i64 %polly.indvar530, 80
  br label %polly.loop_header533

polly.loop_exit535:                               ; preds = %polly.loop_header533
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next531, 60
  br i1 %exitcond818.not, label %polly.loop_header549, label %polly.loop_header527

polly.loop_header533:                             ; preds = %polly.loop_header533, %polly.loop_header527
  %polly.indvar536 = phi i64 [ 0, %polly.loop_header527 ], [ %polly.indvar_next537, %polly.loop_header533 ]
  %polly.access.mul.call2540 = mul nuw nsw i64 %polly.indvar536, 60
  %polly.access.add.call2541 = add nuw nsw i64 %polly.access.mul.call2540, %polly.indvar530
  %polly.access.call2542 = getelementptr double, double* %polly.access.cast.call2601, i64 %polly.access.add.call2541
  %polly.access.call2542.load = load double, double* %polly.access.call2542, align 8, !alias.scope !87, !noalias !91
  %polly.access.add.Packed_MemRef_call2428 = add nuw nsw i64 %polly.indvar536, %polly.access.mul.Packed_MemRef_call2428
  %polly.access.Packed_MemRef_call2428 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428
  store double %polly.access.call2542.load, double* %polly.access.Packed_MemRef_call2428, align 8
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next537, 80
  br i1 %exitcond817.not, label %polly.loop_exit535, label %polly.loop_header533

polly.loop_header549:                             ; preds = %polly.loop_exit535, %polly.loop_exit557
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %polly.loop_exit557 ], [ 0, %polly.loop_exit535 ]
  %polly.indvar552 = phi i64 [ %polly.indvar_next553, %polly.loop_exit557 ], [ 0, %polly.loop_exit535 ]
  %smin813 = call i64 @llvm.smin.i64(i64 %indvars.iv811, i64 63)
  %125 = mul nuw nsw i64 %polly.indvar552, 480
  %scevgep579 = getelementptr i8, i8* %call1, i64 %125
  %126 = mul nuw nsw i64 %polly.indvar552, 640
  %scevgep583 = getelementptr i8, i8* %call, i64 %126
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_exit563
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1
  %exitcond816.not = icmp eq i64 %indvars.iv.next812, 80
  br i1 %exitcond816.not, label %polly.loop_header549.1, label %polly.loop_header549

polly.loop_header555:                             ; preds = %polly.loop_exit563, %polly.loop_header549
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header549 ], [ %polly.indvar_next559, %polly.loop_exit563 ]
  %127 = shl nuw nsw i64 %polly.indvar558, 3
  %scevgep567 = getelementptr i8, i8* %call1, i64 %127
  %scevgep580 = getelementptr i8, i8* %scevgep579, i64 %127
  %scevgep580581 = bitcast i8* %scevgep580 to double*
  %_p_scalar_582.pre = load double, double* %scevgep580581, align 8, !alias.scope !86, !noalias !92
  %polly.access.mul.Packed_MemRef_call2428571 = mul nuw nsw i64 %polly.indvar558, 80
  %polly.access.add.Packed_MemRef_call2428572 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2428571, %polly.indvar552
  %polly.access.Packed_MemRef_call2428573 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428572
  %_p_scalar_574 = load double, double* %polly.access.Packed_MemRef_call2428573, align 8
  br label %polly.loop_header561

polly.loop_exit563:                               ; preds = %polly.loop_header561
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next559, 60
  br i1 %exitcond815.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header561:                             ; preds = %polly.loop_header561, %polly.loop_header555
  %polly.indvar564 = phi i64 [ 0, %polly.loop_header555 ], [ %polly.indvar_next565, %polly.loop_header561 ]
  %128 = mul nuw nsw i64 %polly.indvar564, 480
  %scevgep568 = getelementptr i8, i8* %scevgep567, i64 %128
  %scevgep568569 = bitcast i8* %scevgep568 to double*
  %_p_scalar_570 = load double, double* %scevgep568569, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i = fmul fast double %_p_scalar_574, %_p_scalar_570
  %polly.access.add.Packed_MemRef_call2428576 = add nuw nsw i64 %polly.indvar564, %polly.access.mul.Packed_MemRef_call2428571
  %polly.access.Packed_MemRef_call2428577 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428576
  %_p_scalar_578 = load double, double* %polly.access.Packed_MemRef_call2428577, align 8
  %p_mul37.i = fmul fast double %_p_scalar_582.pre, %_p_scalar_578
  %129 = shl i64 %polly.indvar564, 3
  %scevgep584 = getelementptr i8, i8* %scevgep583, i64 %129
  %scevgep584585 = bitcast i8* %scevgep584 to double*
  %_p_scalar_586 = load double, double* %scevgep584585, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_586
  store double %p_add42.i, double* %scevgep584585, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %exitcond814.not = icmp eq i64 %polly.indvar564, %smin813
  br i1 %exitcond814.not, label %polly.loop_exit563, label %polly.loop_header561

polly.loop_header725:                             ; preds = %entry, %polly.loop_exit733
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_exit733 ], [ 0, %entry ]
  %130 = mul nuw nsw i64 %polly.indvar728, 640
  %131 = trunc i64 %polly.indvar728 to i32
  %broadcast.splatinsert930 = insertelement <4 x i32> poison, i32 %131, i32 0
  %broadcast.splat931 = shufflevector <4 x i32> %broadcast.splatinsert930, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body920

vector.body920:                                   ; preds = %vector.body920, %polly.loop_header725
  %index922 = phi i64 [ 0, %polly.loop_header725 ], [ %index.next923, %vector.body920 ]
  %vec.ind928 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725 ], [ %vec.ind.next929, %vector.body920 ]
  %132 = mul <4 x i32> %vec.ind928, %broadcast.splat931
  %133 = add <4 x i32> %132, <i32 3, i32 3, i32 3, i32 3>
  %134 = urem <4 x i32> %133, <i32 80, i32 80, i32 80, i32 80>
  %135 = sitofp <4 x i32> %134 to <4 x double>
  %136 = fmul fast <4 x double> %135, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %137 = shl i64 %index922, 3
  %138 = add nuw nsw i64 %137, %130
  %139 = getelementptr i8, i8* %call, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %136, <4 x double>* %140, align 8, !alias.scope !93, !noalias !95
  %index.next923 = add i64 %index922, 4
  %vec.ind.next929 = add <4 x i32> %vec.ind928, <i32 4, i32 4, i32 4, i32 4>
  %141 = icmp eq i64 %index.next923, 32
  br i1 %141, label %polly.loop_exit733, label %vector.body920, !llvm.loop !98

polly.loop_exit733:                               ; preds = %vector.body920
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next729, 32
  br i1 %exitcond840.not, label %polly.loop_header725.1, label %polly.loop_header725

polly.loop_header752:                             ; preds = %polly.loop_exit733.2.2, %polly.loop_exit760
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %polly.loop_exit733.2.2 ]
  %142 = mul nuw nsw i64 %polly.indvar755, 480
  %143 = trunc i64 %polly.indvar755 to i32
  %broadcast.splatinsert1044 = insertelement <4 x i32> poison, i32 %143, i32 0
  %broadcast.splat1045 = shufflevector <4 x i32> %broadcast.splatinsert1044, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %polly.loop_header752
  %index1036 = phi i64 [ 0, %polly.loop_header752 ], [ %index.next1037, %vector.body1034 ]
  %vec.ind1042 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752 ], [ %vec.ind.next1043, %vector.body1034 ]
  %144 = mul <4 x i32> %vec.ind1042, %broadcast.splat1045
  %145 = add <4 x i32> %144, <i32 2, i32 2, i32 2, i32 2>
  %146 = urem <4 x i32> %145, <i32 60, i32 60, i32 60, i32 60>
  %147 = sitofp <4 x i32> %146 to <4 x double>
  %148 = fmul fast <4 x double> %147, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %149 = shl i64 %index1036, 3
  %150 = add i64 %149, %142
  %151 = getelementptr i8, i8* %call2, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %148, <4 x double>* %152, align 8, !alias.scope !97, !noalias !99
  %index.next1037 = add i64 %index1036, 4
  %vec.ind.next1043 = add <4 x i32> %vec.ind1042, <i32 4, i32 4, i32 4, i32 4>
  %153 = icmp eq i64 %index.next1037, 32
  br i1 %153, label %polly.loop_exit760, label %vector.body1034, !llvm.loop !100

polly.loop_exit760:                               ; preds = %vector.body1034
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next756, 32
  br i1 %exitcond831.not, label %polly.loop_header752.1, label %polly.loop_header752

polly.loop_header778:                             ; preds = %polly.loop_exit760.1.2, %polly.loop_exit786
  %polly.indvar781 = phi i64 [ %polly.indvar_next782, %polly.loop_exit786 ], [ 0, %polly.loop_exit760.1.2 ]
  %154 = mul nuw nsw i64 %polly.indvar781, 480
  %155 = trunc i64 %polly.indvar781 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %polly.loop_header778
  %index1114 = phi i64 [ 0, %polly.loop_header778 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1120 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778 ], [ %vec.ind.next1121, %vector.body1112 ]
  %156 = mul <4 x i32> %vec.ind1120, %broadcast.splat1123
  %157 = add <4 x i32> %156, <i32 1, i32 1, i32 1, i32 1>
  %158 = urem <4 x i32> %157, <i32 80, i32 80, i32 80, i32 80>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %161 = shl i64 %index1114, 3
  %162 = add i64 %161, %154
  %163 = getelementptr i8, i8* %call1, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !96, !noalias !101
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1121 = add <4 x i32> %vec.ind1120, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next1115, 32
  br i1 %165, label %polly.loop_exit786, label %vector.body1112, !llvm.loop !102

polly.loop_exit786:                               ; preds = %vector.body1112
  %polly.indvar_next782 = add nuw nsw i64 %polly.indvar781, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next782, 32
  br i1 %exitcond825.not, label %polly.loop_header778.1, label %polly.loop_header778

polly.loop_header221.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 64, %polly.loop_exit229 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 63)
  %166 = mul nuw nsw i64 %polly.indvar224.1, 480
  %scevgep251.1 = getelementptr i8, i8* %call1, i64 %166
  %167 = mul nuw nsw i64 %polly.indvar224.1, 640
  %scevgep255.1 = getelementptr i8, i8* %call, i64 %167
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %polly.indvar230.1 = phi i64 [ 0, %polly.loop_header221.1 ], [ %polly.indvar_next231.1, %polly.loop_exit235.1 ]
  %168 = shl nuw nsw i64 %polly.indvar230.1, 3
  %scevgep239.1 = getelementptr i8, i8* %call1, i64 %168
  %scevgep252.1 = getelementptr i8, i8* %scevgep251.1, i64 %168
  %scevgep252253.1 = bitcast i8* %scevgep252.1 to double*
  %_p_scalar_254.pre.1 = load double, double* %scevgep252253.1, align 8, !alias.scope !65, !noalias !72
  %polly.access.mul.Packed_MemRef_call2243.1 = mul nuw nsw i64 %polly.indvar230.1, 80
  %polly.access.add.Packed_MemRef_call2244.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2243.1, %polly.indvar224.1
  %polly.access.Packed_MemRef_call2245.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2244.1
  %_p_scalar_246.1 = load double, double* %polly.access.Packed_MemRef_call2245.1, align 8
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_header233.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_header233.1 ]
  %169 = add nuw nsw i64 %polly.indvar236.1, 64
  %170 = mul nuw nsw i64 %169, 480
  %scevgep240.1 = getelementptr i8, i8* %scevgep239.1, i64 %170
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_242.1
  %polly.access.add.Packed_MemRef_call2248.1 = add nuw nsw i64 %169, %polly.access.mul.Packed_MemRef_call2243.1
  %polly.access.Packed_MemRef_call2249.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2248.1
  %_p_scalar_250.1 = load double, double* %polly.access.Packed_MemRef_call2249.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_254.pre.1, %_p_scalar_250.1
  %171 = shl i64 %169, 3
  %scevgep256.1 = getelementptr i8, i8* %scevgep255.1, i64 %171
  %scevgep256257.1 = bitcast i8* %scevgep256.1 to double*
  %_p_scalar_258.1 = load double, double* %scevgep256257.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_258.1
  store double %p_add42.i118.1, double* %scevgep256257.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar236.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_header233.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %exitcond795.1.not = icmp eq i64 %polly.indvar_next231.1, 60
  br i1 %exitcond795.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond796.1.not = icmp eq i64 %indvars.iv.next.1, 16
  br i1 %exitcond796.1.not, label %polly.loop_exit223.1, label %polly.loop_header221.1

polly.loop_exit223.1:                             ; preds = %polly.loop_exit229.1
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header385.1:                           ; preds = %polly.loop_exit393, %polly.loop_exit393.1
  %indvars.iv801.1 = phi i64 [ %indvars.iv.next802.1, %polly.loop_exit393.1 ], [ 0, %polly.loop_exit393 ]
  %polly.indvar388.1 = phi i64 [ %polly.indvar_next389.1, %polly.loop_exit393.1 ], [ 64, %polly.loop_exit393 ]
  %smin803.1 = call i64 @llvm.smin.i64(i64 %indvars.iv801.1, i64 63)
  %172 = mul nuw nsw i64 %polly.indvar388.1, 480
  %scevgep415.1 = getelementptr i8, i8* %call1, i64 %172
  %173 = mul nuw nsw i64 %polly.indvar388.1, 640
  %scevgep419.1 = getelementptr i8, i8* %call, i64 %173
  br label %polly.loop_header391.1

polly.loop_header391.1:                           ; preds = %polly.loop_exit399.1, %polly.loop_header385.1
  %polly.indvar394.1 = phi i64 [ 0, %polly.loop_header385.1 ], [ %polly.indvar_next395.1, %polly.loop_exit399.1 ]
  %174 = shl nuw nsw i64 %polly.indvar394.1, 3
  %scevgep403.1 = getelementptr i8, i8* %call1, i64 %174
  %scevgep416.1 = getelementptr i8, i8* %scevgep415.1, i64 %174
  %scevgep416417.1 = bitcast i8* %scevgep416.1 to double*
  %_p_scalar_418.pre.1 = load double, double* %scevgep416417.1, align 8, !alias.scope !76, !noalias !82
  %polly.access.mul.Packed_MemRef_call2264407.1 = mul nuw nsw i64 %polly.indvar394.1, 80
  %polly.access.add.Packed_MemRef_call2264408.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2264407.1, %polly.indvar388.1
  %polly.access.Packed_MemRef_call2264409.1 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264408.1
  %_p_scalar_410.1 = load double, double* %polly.access.Packed_MemRef_call2264409.1, align 8
  br label %polly.loop_header397.1

polly.loop_header397.1:                           ; preds = %polly.loop_header397.1, %polly.loop_header391.1
  %polly.indvar400.1 = phi i64 [ 0, %polly.loop_header391.1 ], [ %polly.indvar_next401.1, %polly.loop_header397.1 ]
  %175 = add nuw nsw i64 %polly.indvar400.1, 64
  %176 = mul nuw nsw i64 %175, 480
  %scevgep404.1 = getelementptr i8, i8* %scevgep403.1, i64 %176
  %scevgep404405.1 = bitcast i8* %scevgep404.1 to double*
  %_p_scalar_406.1 = load double, double* %scevgep404405.1, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.1 = fmul fast double %_p_scalar_410.1, %_p_scalar_406.1
  %polly.access.add.Packed_MemRef_call2264412.1 = add nuw nsw i64 %175, %polly.access.mul.Packed_MemRef_call2264407.1
  %polly.access.Packed_MemRef_call2264413.1 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264412.1
  %_p_scalar_414.1 = load double, double* %polly.access.Packed_MemRef_call2264413.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_418.pre.1, %_p_scalar_414.1
  %177 = shl i64 %175, 3
  %scevgep420.1 = getelementptr i8, i8* %scevgep419.1, i64 %177
  %scevgep420421.1 = bitcast i8* %scevgep420.1 to double*
  %_p_scalar_422.1 = load double, double* %scevgep420421.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_422.1
  store double %p_add42.i79.1, double* %scevgep420421.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next401.1 = add nuw nsw i64 %polly.indvar400.1, 1
  %exitcond804.1.not = icmp eq i64 %polly.indvar400.1, %smin803.1
  br i1 %exitcond804.1.not, label %polly.loop_exit399.1, label %polly.loop_header397.1

polly.loop_exit399.1:                             ; preds = %polly.loop_header397.1
  %polly.indvar_next395.1 = add nuw nsw i64 %polly.indvar394.1, 1
  %exitcond805.1.not = icmp eq i64 %polly.indvar_next395.1, 60
  br i1 %exitcond805.1.not, label %polly.loop_exit393.1, label %polly.loop_header391.1

polly.loop_exit393.1:                             ; preds = %polly.loop_exit399.1
  %polly.indvar_next389.1 = add nuw nsw i64 %polly.indvar388.1, 1
  %indvars.iv.next802.1 = add nuw nsw i64 %indvars.iv801.1, 1
  %exitcond806.1.not = icmp eq i64 %indvars.iv.next802.1, 16
  br i1 %exitcond806.1.not, label %polly.loop_exit387.1, label %polly.loop_header385.1

polly.loop_exit387.1:                             ; preds = %polly.loop_exit393.1
  tail call void @free(i8* nonnull %malloccall263)
  br label %kernel_syr2k.exit90

polly.loop_header549.1:                           ; preds = %polly.loop_exit557, %polly.loop_exit557.1
  %indvars.iv811.1 = phi i64 [ %indvars.iv.next812.1, %polly.loop_exit557.1 ], [ 0, %polly.loop_exit557 ]
  %polly.indvar552.1 = phi i64 [ %polly.indvar_next553.1, %polly.loop_exit557.1 ], [ 64, %polly.loop_exit557 ]
  %smin813.1 = call i64 @llvm.smin.i64(i64 %indvars.iv811.1, i64 63)
  %178 = mul nuw nsw i64 %polly.indvar552.1, 480
  %scevgep579.1 = getelementptr i8, i8* %call1, i64 %178
  %179 = mul nuw nsw i64 %polly.indvar552.1, 640
  %scevgep583.1 = getelementptr i8, i8* %call, i64 %179
  br label %polly.loop_header555.1

polly.loop_header555.1:                           ; preds = %polly.loop_exit563.1, %polly.loop_header549.1
  %polly.indvar558.1 = phi i64 [ 0, %polly.loop_header549.1 ], [ %polly.indvar_next559.1, %polly.loop_exit563.1 ]
  %180 = shl nuw nsw i64 %polly.indvar558.1, 3
  %scevgep567.1 = getelementptr i8, i8* %call1, i64 %180
  %scevgep580.1 = getelementptr i8, i8* %scevgep579.1, i64 %180
  %scevgep580581.1 = bitcast i8* %scevgep580.1 to double*
  %_p_scalar_582.pre.1 = load double, double* %scevgep580581.1, align 8, !alias.scope !86, !noalias !92
  %polly.access.mul.Packed_MemRef_call2428571.1 = mul nuw nsw i64 %polly.indvar558.1, 80
  %polly.access.add.Packed_MemRef_call2428572.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2428571.1, %polly.indvar552.1
  %polly.access.Packed_MemRef_call2428573.1 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428572.1
  %_p_scalar_574.1 = load double, double* %polly.access.Packed_MemRef_call2428573.1, align 8
  br label %polly.loop_header561.1

polly.loop_header561.1:                           ; preds = %polly.loop_header561.1, %polly.loop_header555.1
  %polly.indvar564.1 = phi i64 [ 0, %polly.loop_header555.1 ], [ %polly.indvar_next565.1, %polly.loop_header561.1 ]
  %181 = add nuw nsw i64 %polly.indvar564.1, 64
  %182 = mul nuw nsw i64 %181, 480
  %scevgep568.1 = getelementptr i8, i8* %scevgep567.1, i64 %182
  %scevgep568569.1 = bitcast i8* %scevgep568.1 to double*
  %_p_scalar_570.1 = load double, double* %scevgep568569.1, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.1 = fmul fast double %_p_scalar_574.1, %_p_scalar_570.1
  %polly.access.add.Packed_MemRef_call2428576.1 = add nuw nsw i64 %181, %polly.access.mul.Packed_MemRef_call2428571.1
  %polly.access.Packed_MemRef_call2428577.1 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428576.1
  %_p_scalar_578.1 = load double, double* %polly.access.Packed_MemRef_call2428577.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_582.pre.1, %_p_scalar_578.1
  %183 = shl i64 %181, 3
  %scevgep584.1 = getelementptr i8, i8* %scevgep583.1, i64 %183
  %scevgep584585.1 = bitcast i8* %scevgep584.1 to double*
  %_p_scalar_586.1 = load double, double* %scevgep584585.1, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_586.1
  store double %p_add42.i.1, double* %scevgep584585.1, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next565.1 = add nuw nsw i64 %polly.indvar564.1, 1
  %exitcond814.1.not = icmp eq i64 %polly.indvar564.1, %smin813.1
  br i1 %exitcond814.1.not, label %polly.loop_exit563.1, label %polly.loop_header561.1

polly.loop_exit563.1:                             ; preds = %polly.loop_header561.1
  %polly.indvar_next559.1 = add nuw nsw i64 %polly.indvar558.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar_next559.1, 60
  br i1 %exitcond815.1.not, label %polly.loop_exit557.1, label %polly.loop_header555.1

polly.loop_exit557.1:                             ; preds = %polly.loop_exit563.1
  %polly.indvar_next553.1 = add nuw nsw i64 %polly.indvar552.1, 1
  %indvars.iv.next812.1 = add nuw nsw i64 %indvars.iv811.1, 1
  %exitcond816.1.not = icmp eq i64 %indvars.iv.next812.1, 16
  br i1 %exitcond816.1.not, label %polly.loop_exit551.1, label %polly.loop_header549.1

polly.loop_exit551.1:                             ; preds = %polly.loop_exit557.1
  tail call void @free(i8* nonnull %malloccall427)
  br label %kernel_syr2k.exit

polly.loop_header778.1:                           ; preds = %polly.loop_exit786, %polly.loop_exit786.1
  %polly.indvar781.1 = phi i64 [ %polly.indvar_next782.1, %polly.loop_exit786.1 ], [ 0, %polly.loop_exit786 ]
  %184 = mul nuw nsw i64 %polly.indvar781.1, 480
  %185 = trunc i64 %polly.indvar781.1 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header778.1
  %index1128 = phi i64 [ 0, %polly.loop_header778.1 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1132 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1 ], [ %vec.ind.next1133, %vector.body1126 ]
  %186 = add nuw nsw <4 x i64> %vec.ind1132, <i64 32, i64 32, i64 32, i64 32>
  %187 = trunc <4 x i64> %186 to <4 x i32>
  %188 = mul <4 x i32> %broadcast.splat1135, %187
  %189 = add <4 x i32> %188, <i32 1, i32 1, i32 1, i32 1>
  %190 = urem <4 x i32> %189, <i32 80, i32 80, i32 80, i32 80>
  %191 = sitofp <4 x i32> %190 to <4 x double>
  %192 = fmul fast <4 x double> %191, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %193 = extractelement <4 x i64> %186, i32 0
  %194 = shl i64 %193, 3
  %195 = add i64 %194, %184
  %196 = getelementptr i8, i8* %call1, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %192, <4 x double>* %197, align 8, !alias.scope !96, !noalias !101
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1133 = add <4 x i64> %vec.ind1132, <i64 4, i64 4, i64 4, i64 4>
  %198 = icmp eq i64 %index.next1129, 28
  br i1 %198, label %polly.loop_exit786.1, label %vector.body1126, !llvm.loop !103

polly.loop_exit786.1:                             ; preds = %vector.body1126
  %polly.indvar_next782.1 = add nuw nsw i64 %polly.indvar781.1, 1
  %exitcond825.1.not = icmp eq i64 %polly.indvar_next782.1, 32
  br i1 %exitcond825.1.not, label %polly.loop_header778.1845, label %polly.loop_header778.1

polly.loop_header778.1845:                        ; preds = %polly.loop_exit786.1, %polly.loop_exit786.1856
  %polly.indvar781.1844 = phi i64 [ %polly.indvar_next782.1854, %polly.loop_exit786.1856 ], [ 0, %polly.loop_exit786.1 ]
  %199 = add nuw nsw i64 %polly.indvar781.1844, 32
  %200 = mul nuw nsw i64 %199, 480
  %201 = trunc i64 %199 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %201, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header778.1845
  %index1140 = phi i64 [ 0, %polly.loop_header778.1845 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1146 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.1845 ], [ %vec.ind.next1147, %vector.body1138 ]
  %202 = mul <4 x i32> %vec.ind1146, %broadcast.splat1149
  %203 = add <4 x i32> %202, <i32 1, i32 1, i32 1, i32 1>
  %204 = urem <4 x i32> %203, <i32 80, i32 80, i32 80, i32 80>
  %205 = sitofp <4 x i32> %204 to <4 x double>
  %206 = fmul fast <4 x double> %205, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %207 = shl i64 %index1140, 3
  %208 = add i64 %207, %200
  %209 = getelementptr i8, i8* %call1, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %206, <4 x double>* %210, align 8, !alias.scope !96, !noalias !101
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1147 = add <4 x i32> %vec.ind1146, <i32 4, i32 4, i32 4, i32 4>
  %211 = icmp eq i64 %index.next1141, 32
  br i1 %211, label %polly.loop_exit786.1856, label %vector.body1138, !llvm.loop !104

polly.loop_exit786.1856:                          ; preds = %vector.body1138
  %polly.indvar_next782.1854 = add nuw nsw i64 %polly.indvar781.1844, 1
  %exitcond825.1855.not = icmp eq i64 %polly.indvar_next782.1854, 32
  br i1 %exitcond825.1855.not, label %polly.loop_header778.1.1, label %polly.loop_header778.1845

polly.loop_header778.1.1:                         ; preds = %polly.loop_exit786.1856, %polly.loop_exit786.1.1
  %polly.indvar781.1.1 = phi i64 [ %polly.indvar_next782.1.1, %polly.loop_exit786.1.1 ], [ 0, %polly.loop_exit786.1856 ]
  %212 = add nuw nsw i64 %polly.indvar781.1.1, 32
  %213 = mul nuw nsw i64 %212, 480
  %214 = trunc i64 %212 to i32
  %broadcast.splatinsert1160 = insertelement <4 x i32> poison, i32 %214, i32 0
  %broadcast.splat1161 = shufflevector <4 x i32> %broadcast.splatinsert1160, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header778.1.1
  %index1154 = phi i64 [ 0, %polly.loop_header778.1.1 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.1 ], [ %vec.ind.next1159, %vector.body1152 ]
  %215 = add nuw nsw <4 x i64> %vec.ind1158, <i64 32, i64 32, i64 32, i64 32>
  %216 = trunc <4 x i64> %215 to <4 x i32>
  %217 = mul <4 x i32> %broadcast.splat1161, %216
  %218 = add <4 x i32> %217, <i32 1, i32 1, i32 1, i32 1>
  %219 = urem <4 x i32> %218, <i32 80, i32 80, i32 80, i32 80>
  %220 = sitofp <4 x i32> %219 to <4 x double>
  %221 = fmul fast <4 x double> %220, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %222 = extractelement <4 x i64> %215, i32 0
  %223 = shl i64 %222, 3
  %224 = add i64 %223, %213
  %225 = getelementptr i8, i8* %call1, i64 %224
  %226 = bitcast i8* %225 to <4 x double>*
  store <4 x double> %221, <4 x double>* %226, align 8, !alias.scope !96, !noalias !101
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %227 = icmp eq i64 %index.next1155, 28
  br i1 %227, label %polly.loop_exit786.1.1, label %vector.body1152, !llvm.loop !105

polly.loop_exit786.1.1:                           ; preds = %vector.body1152
  %polly.indvar_next782.1.1 = add nuw nsw i64 %polly.indvar781.1.1, 1
  %exitcond825.1.1.not = icmp eq i64 %polly.indvar_next782.1.1, 32
  br i1 %exitcond825.1.1.not, label %polly.loop_header778.2, label %polly.loop_header778.1.1

polly.loop_header778.2:                           ; preds = %polly.loop_exit786.1.1, %polly.loop_exit786.2
  %polly.indvar781.2 = phi i64 [ %polly.indvar_next782.2, %polly.loop_exit786.2 ], [ 0, %polly.loop_exit786.1.1 ]
  %228 = add nuw nsw i64 %polly.indvar781.2, 64
  %229 = mul nuw nsw i64 %228, 480
  %230 = trunc i64 %228 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %polly.loop_header778.2
  %index1166 = phi i64 [ 0, %polly.loop_header778.2 ], [ %index.next1167, %vector.body1164 ]
  %vec.ind1172 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.2 ], [ %vec.ind.next1173, %vector.body1164 ]
  %231 = mul <4 x i32> %vec.ind1172, %broadcast.splat1175
  %232 = add <4 x i32> %231, <i32 1, i32 1, i32 1, i32 1>
  %233 = urem <4 x i32> %232, <i32 80, i32 80, i32 80, i32 80>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %236 = shl i64 %index1166, 3
  %237 = add i64 %236, %229
  %238 = getelementptr i8, i8* %call1, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %235, <4 x double>* %239, align 8, !alias.scope !96, !noalias !101
  %index.next1167 = add i64 %index1166, 4
  %vec.ind.next1173 = add <4 x i32> %vec.ind1172, <i32 4, i32 4, i32 4, i32 4>
  %240 = icmp eq i64 %index.next1167, 32
  br i1 %240, label %polly.loop_exit786.2, label %vector.body1164, !llvm.loop !106

polly.loop_exit786.2:                             ; preds = %vector.body1164
  %polly.indvar_next782.2 = add nuw nsw i64 %polly.indvar781.2, 1
  %exitcond825.2.not = icmp eq i64 %polly.indvar_next782.2, 16
  br i1 %exitcond825.2.not, label %polly.loop_header778.1.2, label %polly.loop_header778.2

polly.loop_header778.1.2:                         ; preds = %polly.loop_exit786.2, %polly.loop_exit786.1.2
  %polly.indvar781.1.2 = phi i64 [ %polly.indvar_next782.1.2, %polly.loop_exit786.1.2 ], [ 0, %polly.loop_exit786.2 ]
  %241 = add nuw nsw i64 %polly.indvar781.1.2, 64
  %242 = mul nuw nsw i64 %241, 480
  %243 = trunc i64 %241 to i32
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header778.1.2
  %index1180 = phi i64 [ 0, %polly.loop_header778.1.2 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1184 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.2 ], [ %vec.ind.next1185, %vector.body1178 ]
  %244 = add nuw nsw <4 x i64> %vec.ind1184, <i64 32, i64 32, i64 32, i64 32>
  %245 = trunc <4 x i64> %244 to <4 x i32>
  %246 = mul <4 x i32> %broadcast.splat1187, %245
  %247 = add <4 x i32> %246, <i32 1, i32 1, i32 1, i32 1>
  %248 = urem <4 x i32> %247, <i32 80, i32 80, i32 80, i32 80>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %251 = extractelement <4 x i64> %244, i32 0
  %252 = shl i64 %251, 3
  %253 = add i64 %252, %242
  %254 = getelementptr i8, i8* %call1, i64 %253
  %255 = bitcast i8* %254 to <4 x double>*
  store <4 x double> %250, <4 x double>* %255, align 8, !alias.scope !96, !noalias !101
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1185 = add <4 x i64> %vec.ind1184, <i64 4, i64 4, i64 4, i64 4>
  %256 = icmp eq i64 %index.next1181, 28
  br i1 %256, label %polly.loop_exit786.1.2, label %vector.body1178, !llvm.loop !107

polly.loop_exit786.1.2:                           ; preds = %vector.body1178
  %polly.indvar_next782.1.2 = add nuw nsw i64 %polly.indvar781.1.2, 1
  %exitcond825.1.2.not = icmp eq i64 %polly.indvar_next782.1.2, 16
  br i1 %exitcond825.1.2.not, label %init_array.exit, label %polly.loop_header778.1.2

polly.loop_header752.1:                           ; preds = %polly.loop_exit760, %polly.loop_exit760.1
  %polly.indvar755.1 = phi i64 [ %polly.indvar_next756.1, %polly.loop_exit760.1 ], [ 0, %polly.loop_exit760 ]
  %257 = mul nuw nsw i64 %polly.indvar755.1, 480
  %258 = trunc i64 %polly.indvar755.1 to i32
  %broadcast.splatinsert1056 = insertelement <4 x i32> poison, i32 %258, i32 0
  %broadcast.splat1057 = shufflevector <4 x i32> %broadcast.splatinsert1056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %polly.loop_header752.1
  %index1050 = phi i64 [ 0, %polly.loop_header752.1 ], [ %index.next1051, %vector.body1048 ]
  %vec.ind1054 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1 ], [ %vec.ind.next1055, %vector.body1048 ]
  %259 = add nuw nsw <4 x i64> %vec.ind1054, <i64 32, i64 32, i64 32, i64 32>
  %260 = trunc <4 x i64> %259 to <4 x i32>
  %261 = mul <4 x i32> %broadcast.splat1057, %260
  %262 = add <4 x i32> %261, <i32 2, i32 2, i32 2, i32 2>
  %263 = urem <4 x i32> %262, <i32 60, i32 60, i32 60, i32 60>
  %264 = sitofp <4 x i32> %263 to <4 x double>
  %265 = fmul fast <4 x double> %264, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %266 = extractelement <4 x i64> %259, i32 0
  %267 = shl i64 %266, 3
  %268 = add i64 %267, %257
  %269 = getelementptr i8, i8* %call2, i64 %268
  %270 = bitcast i8* %269 to <4 x double>*
  store <4 x double> %265, <4 x double>* %270, align 8, !alias.scope !97, !noalias !99
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1055 = add <4 x i64> %vec.ind1054, <i64 4, i64 4, i64 4, i64 4>
  %271 = icmp eq i64 %index.next1051, 28
  br i1 %271, label %polly.loop_exit760.1, label %vector.body1048, !llvm.loop !108

polly.loop_exit760.1:                             ; preds = %vector.body1048
  %polly.indvar_next756.1 = add nuw nsw i64 %polly.indvar755.1, 1
  %exitcond831.1.not = icmp eq i64 %polly.indvar_next756.1, 32
  br i1 %exitcond831.1.not, label %polly.loop_header752.1859, label %polly.loop_header752.1

polly.loop_header752.1859:                        ; preds = %polly.loop_exit760.1, %polly.loop_exit760.1870
  %polly.indvar755.1858 = phi i64 [ %polly.indvar_next756.1868, %polly.loop_exit760.1870 ], [ 0, %polly.loop_exit760.1 ]
  %272 = add nuw nsw i64 %polly.indvar755.1858, 32
  %273 = mul nuw nsw i64 %272, 480
  %274 = trunc i64 %272 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %274, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %polly.loop_header752.1859
  %index1062 = phi i64 [ 0, %polly.loop_header752.1859 ], [ %index.next1063, %vector.body1060 ]
  %vec.ind1068 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.1859 ], [ %vec.ind.next1069, %vector.body1060 ]
  %275 = mul <4 x i32> %vec.ind1068, %broadcast.splat1071
  %276 = add <4 x i32> %275, <i32 2, i32 2, i32 2, i32 2>
  %277 = urem <4 x i32> %276, <i32 60, i32 60, i32 60, i32 60>
  %278 = sitofp <4 x i32> %277 to <4 x double>
  %279 = fmul fast <4 x double> %278, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %280 = shl i64 %index1062, 3
  %281 = add i64 %280, %273
  %282 = getelementptr i8, i8* %call2, i64 %281
  %283 = bitcast i8* %282 to <4 x double>*
  store <4 x double> %279, <4 x double>* %283, align 8, !alias.scope !97, !noalias !99
  %index.next1063 = add i64 %index1062, 4
  %vec.ind.next1069 = add <4 x i32> %vec.ind1068, <i32 4, i32 4, i32 4, i32 4>
  %284 = icmp eq i64 %index.next1063, 32
  br i1 %284, label %polly.loop_exit760.1870, label %vector.body1060, !llvm.loop !109

polly.loop_exit760.1870:                          ; preds = %vector.body1060
  %polly.indvar_next756.1868 = add nuw nsw i64 %polly.indvar755.1858, 1
  %exitcond831.1869.not = icmp eq i64 %polly.indvar_next756.1868, 32
  br i1 %exitcond831.1869.not, label %polly.loop_header752.1.1, label %polly.loop_header752.1859

polly.loop_header752.1.1:                         ; preds = %polly.loop_exit760.1870, %polly.loop_exit760.1.1
  %polly.indvar755.1.1 = phi i64 [ %polly.indvar_next756.1.1, %polly.loop_exit760.1.1 ], [ 0, %polly.loop_exit760.1870 ]
  %285 = add nuw nsw i64 %polly.indvar755.1.1, 32
  %286 = mul nuw nsw i64 %285, 480
  %287 = trunc i64 %285 to i32
  %broadcast.splatinsert1082 = insertelement <4 x i32> poison, i32 %287, i32 0
  %broadcast.splat1083 = shufflevector <4 x i32> %broadcast.splatinsert1082, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header752.1.1
  %index1076 = phi i64 [ 0, %polly.loop_header752.1.1 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1080 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.1 ], [ %vec.ind.next1081, %vector.body1074 ]
  %288 = add nuw nsw <4 x i64> %vec.ind1080, <i64 32, i64 32, i64 32, i64 32>
  %289 = trunc <4 x i64> %288 to <4 x i32>
  %290 = mul <4 x i32> %broadcast.splat1083, %289
  %291 = add <4 x i32> %290, <i32 2, i32 2, i32 2, i32 2>
  %292 = urem <4 x i32> %291, <i32 60, i32 60, i32 60, i32 60>
  %293 = sitofp <4 x i32> %292 to <4 x double>
  %294 = fmul fast <4 x double> %293, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %295 = extractelement <4 x i64> %288, i32 0
  %296 = shl i64 %295, 3
  %297 = add i64 %296, %286
  %298 = getelementptr i8, i8* %call2, i64 %297
  %299 = bitcast i8* %298 to <4 x double>*
  store <4 x double> %294, <4 x double>* %299, align 8, !alias.scope !97, !noalias !99
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1081 = add <4 x i64> %vec.ind1080, <i64 4, i64 4, i64 4, i64 4>
  %300 = icmp eq i64 %index.next1077, 28
  br i1 %300, label %polly.loop_exit760.1.1, label %vector.body1074, !llvm.loop !110

polly.loop_exit760.1.1:                           ; preds = %vector.body1074
  %polly.indvar_next756.1.1 = add nuw nsw i64 %polly.indvar755.1.1, 1
  %exitcond831.1.1.not = icmp eq i64 %polly.indvar_next756.1.1, 32
  br i1 %exitcond831.1.1.not, label %polly.loop_header752.2, label %polly.loop_header752.1.1

polly.loop_header752.2:                           ; preds = %polly.loop_exit760.1.1, %polly.loop_exit760.2
  %polly.indvar755.2 = phi i64 [ %polly.indvar_next756.2, %polly.loop_exit760.2 ], [ 0, %polly.loop_exit760.1.1 ]
  %301 = add nuw nsw i64 %polly.indvar755.2, 64
  %302 = mul nuw nsw i64 %301, 480
  %303 = trunc i64 %301 to i32
  %broadcast.splatinsert1096 = insertelement <4 x i32> poison, i32 %303, i32 0
  %broadcast.splat1097 = shufflevector <4 x i32> %broadcast.splatinsert1096, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %polly.loop_header752.2
  %index1088 = phi i64 [ 0, %polly.loop_header752.2 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1094 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.2 ], [ %vec.ind.next1095, %vector.body1086 ]
  %304 = mul <4 x i32> %vec.ind1094, %broadcast.splat1097
  %305 = add <4 x i32> %304, <i32 2, i32 2, i32 2, i32 2>
  %306 = urem <4 x i32> %305, <i32 60, i32 60, i32 60, i32 60>
  %307 = sitofp <4 x i32> %306 to <4 x double>
  %308 = fmul fast <4 x double> %307, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %309 = shl i64 %index1088, 3
  %310 = add i64 %309, %302
  %311 = getelementptr i8, i8* %call2, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %308, <4 x double>* %312, align 8, !alias.scope !97, !noalias !99
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1095 = add <4 x i32> %vec.ind1094, <i32 4, i32 4, i32 4, i32 4>
  %313 = icmp eq i64 %index.next1089, 32
  br i1 %313, label %polly.loop_exit760.2, label %vector.body1086, !llvm.loop !111

polly.loop_exit760.2:                             ; preds = %vector.body1086
  %polly.indvar_next756.2 = add nuw nsw i64 %polly.indvar755.2, 1
  %exitcond831.2.not = icmp eq i64 %polly.indvar_next756.2, 16
  br i1 %exitcond831.2.not, label %polly.loop_header752.1.2, label %polly.loop_header752.2

polly.loop_header752.1.2:                         ; preds = %polly.loop_exit760.2, %polly.loop_exit760.1.2
  %polly.indvar755.1.2 = phi i64 [ %polly.indvar_next756.1.2, %polly.loop_exit760.1.2 ], [ 0, %polly.loop_exit760.2 ]
  %314 = add nuw nsw i64 %polly.indvar755.1.2, 64
  %315 = mul nuw nsw i64 %314, 480
  %316 = trunc i64 %314 to i32
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header752.1.2
  %index1102 = phi i64 [ 0, %polly.loop_header752.1.2 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1106 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.2 ], [ %vec.ind.next1107, %vector.body1100 ]
  %317 = add nuw nsw <4 x i64> %vec.ind1106, <i64 32, i64 32, i64 32, i64 32>
  %318 = trunc <4 x i64> %317 to <4 x i32>
  %319 = mul <4 x i32> %broadcast.splat1109, %318
  %320 = add <4 x i32> %319, <i32 2, i32 2, i32 2, i32 2>
  %321 = urem <4 x i32> %320, <i32 60, i32 60, i32 60, i32 60>
  %322 = sitofp <4 x i32> %321 to <4 x double>
  %323 = fmul fast <4 x double> %322, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %324 = extractelement <4 x i64> %317, i32 0
  %325 = shl i64 %324, 3
  %326 = add i64 %325, %315
  %327 = getelementptr i8, i8* %call2, i64 %326
  %328 = bitcast i8* %327 to <4 x double>*
  store <4 x double> %323, <4 x double>* %328, align 8, !alias.scope !97, !noalias !99
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1107 = add <4 x i64> %vec.ind1106, <i64 4, i64 4, i64 4, i64 4>
  %329 = icmp eq i64 %index.next1103, 28
  br i1 %329, label %polly.loop_exit760.1.2, label %vector.body1100, !llvm.loop !112

polly.loop_exit760.1.2:                           ; preds = %vector.body1100
  %polly.indvar_next756.1.2 = add nuw nsw i64 %polly.indvar755.1.2, 1
  %exitcond831.1.2.not = icmp eq i64 %polly.indvar_next756.1.2, 16
  br i1 %exitcond831.1.2.not, label %polly.loop_header778, label %polly.loop_header752.1.2

polly.loop_header725.1:                           ; preds = %polly.loop_exit733, %polly.loop_exit733.1
  %polly.indvar728.1 = phi i64 [ %polly.indvar_next729.1, %polly.loop_exit733.1 ], [ 0, %polly.loop_exit733 ]
  %330 = mul nuw nsw i64 %polly.indvar728.1, 640
  %331 = trunc i64 %polly.indvar728.1 to i32
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %331, i32 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %polly.loop_header725.1
  %index936 = phi i64 [ 0, %polly.loop_header725.1 ], [ %index.next937, %vector.body934 ]
  %vec.ind940 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1 ], [ %vec.ind.next941, %vector.body934 ]
  %332 = add nuw nsw <4 x i64> %vec.ind940, <i64 32, i64 32, i64 32, i64 32>
  %333 = trunc <4 x i64> %332 to <4 x i32>
  %334 = mul <4 x i32> %broadcast.splat943, %333
  %335 = add <4 x i32> %334, <i32 3, i32 3, i32 3, i32 3>
  %336 = urem <4 x i32> %335, <i32 80, i32 80, i32 80, i32 80>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %339 = extractelement <4 x i64> %332, i32 0
  %340 = shl i64 %339, 3
  %341 = add nuw nsw i64 %340, %330
  %342 = getelementptr i8, i8* %call, i64 %341
  %343 = bitcast i8* %342 to <4 x double>*
  store <4 x double> %338, <4 x double>* %343, align 8, !alias.scope !93, !noalias !95
  %index.next937 = add i64 %index936, 4
  %vec.ind.next941 = add <4 x i64> %vec.ind940, <i64 4, i64 4, i64 4, i64 4>
  %344 = icmp eq i64 %index.next937, 32
  br i1 %344, label %polly.loop_exit733.1, label %vector.body934, !llvm.loop !113

polly.loop_exit733.1:                             ; preds = %vector.body934
  %polly.indvar_next729.1 = add nuw nsw i64 %polly.indvar728.1, 1
  %exitcond840.1.not = icmp eq i64 %polly.indvar_next729.1, 32
  br i1 %exitcond840.1.not, label %polly.loop_header725.2, label %polly.loop_header725.1

polly.loop_header725.2:                           ; preds = %polly.loop_exit733.1, %polly.loop_exit733.2
  %polly.indvar728.2 = phi i64 [ %polly.indvar_next729.2, %polly.loop_exit733.2 ], [ 0, %polly.loop_exit733.1 ]
  %345 = mul nuw nsw i64 %polly.indvar728.2, 640
  %346 = trunc i64 %polly.indvar728.2 to i32
  %broadcast.splatinsert954 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat955 = shufflevector <4 x i32> %broadcast.splatinsert954, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body946

vector.body946:                                   ; preds = %vector.body946, %polly.loop_header725.2
  %index948 = phi i64 [ 0, %polly.loop_header725.2 ], [ %index.next949, %vector.body946 ]
  %vec.ind952 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2 ], [ %vec.ind.next953, %vector.body946 ]
  %347 = add nuw nsw <4 x i64> %vec.ind952, <i64 64, i64 64, i64 64, i64 64>
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat955, %348
  %350 = add <4 x i32> %349, <i32 3, i32 3, i32 3, i32 3>
  %351 = urem <4 x i32> %350, <i32 80, i32 80, i32 80, i32 80>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add nuw nsw i64 %355, %345
  %357 = getelementptr i8, i8* %call, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !93, !noalias !95
  %index.next949 = add i64 %index948, 4
  %vec.ind.next953 = add <4 x i64> %vec.ind952, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next949, 16
  br i1 %359, label %polly.loop_exit733.2, label %vector.body946, !llvm.loop !114

polly.loop_exit733.2:                             ; preds = %vector.body946
  %polly.indvar_next729.2 = add nuw nsw i64 %polly.indvar728.2, 1
  %exitcond840.2.not = icmp eq i64 %polly.indvar_next729.2, 32
  br i1 %exitcond840.2.not, label %polly.loop_header725.1873, label %polly.loop_header725.2

polly.loop_header725.1873:                        ; preds = %polly.loop_exit733.2, %polly.loop_exit733.1884
  %polly.indvar728.1872 = phi i64 [ %polly.indvar_next729.1882, %polly.loop_exit733.1884 ], [ 0, %polly.loop_exit733.2 ]
  %360 = add nuw nsw i64 %polly.indvar728.1872, 32
  %361 = mul nuw nsw i64 %360, 640
  %362 = trunc i64 %360 to i32
  %broadcast.splatinsert968 = insertelement <4 x i32> poison, i32 %362, i32 0
  %broadcast.splat969 = shufflevector <4 x i32> %broadcast.splatinsert968, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body958

vector.body958:                                   ; preds = %vector.body958, %polly.loop_header725.1873
  %index960 = phi i64 [ 0, %polly.loop_header725.1873 ], [ %index.next961, %vector.body958 ]
  %vec.ind966 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.1873 ], [ %vec.ind.next967, %vector.body958 ]
  %363 = mul <4 x i32> %vec.ind966, %broadcast.splat969
  %364 = add <4 x i32> %363, <i32 3, i32 3, i32 3, i32 3>
  %365 = urem <4 x i32> %364, <i32 80, i32 80, i32 80, i32 80>
  %366 = sitofp <4 x i32> %365 to <4 x double>
  %367 = fmul fast <4 x double> %366, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %368 = shl i64 %index960, 3
  %369 = add nuw nsw i64 %368, %361
  %370 = getelementptr i8, i8* %call, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %367, <4 x double>* %371, align 8, !alias.scope !93, !noalias !95
  %index.next961 = add i64 %index960, 4
  %vec.ind.next967 = add <4 x i32> %vec.ind966, <i32 4, i32 4, i32 4, i32 4>
  %372 = icmp eq i64 %index.next961, 32
  br i1 %372, label %polly.loop_exit733.1884, label %vector.body958, !llvm.loop !115

polly.loop_exit733.1884:                          ; preds = %vector.body958
  %polly.indvar_next729.1882 = add nuw nsw i64 %polly.indvar728.1872, 1
  %exitcond840.1883.not = icmp eq i64 %polly.indvar_next729.1882, 32
  br i1 %exitcond840.1883.not, label %polly.loop_header725.1.1, label %polly.loop_header725.1873

polly.loop_header725.1.1:                         ; preds = %polly.loop_exit733.1884, %polly.loop_exit733.1.1
  %polly.indvar728.1.1 = phi i64 [ %polly.indvar_next729.1.1, %polly.loop_exit733.1.1 ], [ 0, %polly.loop_exit733.1884 ]
  %373 = add nuw nsw i64 %polly.indvar728.1.1, 32
  %374 = mul nuw nsw i64 %373, 640
  %375 = trunc i64 %373 to i32
  %broadcast.splatinsert980 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat981 = shufflevector <4 x i32> %broadcast.splatinsert980, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %polly.loop_header725.1.1
  %index974 = phi i64 [ 0, %polly.loop_header725.1.1 ], [ %index.next975, %vector.body972 ]
  %vec.ind978 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.1 ], [ %vec.ind.next979, %vector.body972 ]
  %376 = add nuw nsw <4 x i64> %vec.ind978, <i64 32, i64 32, i64 32, i64 32>
  %377 = trunc <4 x i64> %376 to <4 x i32>
  %378 = mul <4 x i32> %broadcast.splat981, %377
  %379 = add <4 x i32> %378, <i32 3, i32 3, i32 3, i32 3>
  %380 = urem <4 x i32> %379, <i32 80, i32 80, i32 80, i32 80>
  %381 = sitofp <4 x i32> %380 to <4 x double>
  %382 = fmul fast <4 x double> %381, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %383 = extractelement <4 x i64> %376, i32 0
  %384 = shl i64 %383, 3
  %385 = add nuw nsw i64 %384, %374
  %386 = getelementptr i8, i8* %call, i64 %385
  %387 = bitcast i8* %386 to <4 x double>*
  store <4 x double> %382, <4 x double>* %387, align 8, !alias.scope !93, !noalias !95
  %index.next975 = add i64 %index974, 4
  %vec.ind.next979 = add <4 x i64> %vec.ind978, <i64 4, i64 4, i64 4, i64 4>
  %388 = icmp eq i64 %index.next975, 32
  br i1 %388, label %polly.loop_exit733.1.1, label %vector.body972, !llvm.loop !116

polly.loop_exit733.1.1:                           ; preds = %vector.body972
  %polly.indvar_next729.1.1 = add nuw nsw i64 %polly.indvar728.1.1, 1
  %exitcond840.1.1.not = icmp eq i64 %polly.indvar_next729.1.1, 32
  br i1 %exitcond840.1.1.not, label %polly.loop_header725.2.1, label %polly.loop_header725.1.1

polly.loop_header725.2.1:                         ; preds = %polly.loop_exit733.1.1, %polly.loop_exit733.2.1
  %polly.indvar728.2.1 = phi i64 [ %polly.indvar_next729.2.1, %polly.loop_exit733.2.1 ], [ 0, %polly.loop_exit733.1.1 ]
  %389 = add nuw nsw i64 %polly.indvar728.2.1, 32
  %390 = mul nuw nsw i64 %389, 640
  %391 = trunc i64 %389 to i32
  %broadcast.splatinsert992 = insertelement <4 x i32> poison, i32 %391, i32 0
  %broadcast.splat993 = shufflevector <4 x i32> %broadcast.splatinsert992, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body984

vector.body984:                                   ; preds = %vector.body984, %polly.loop_header725.2.1
  %index986 = phi i64 [ 0, %polly.loop_header725.2.1 ], [ %index.next987, %vector.body984 ]
  %vec.ind990 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2.1 ], [ %vec.ind.next991, %vector.body984 ]
  %392 = add nuw nsw <4 x i64> %vec.ind990, <i64 64, i64 64, i64 64, i64 64>
  %393 = trunc <4 x i64> %392 to <4 x i32>
  %394 = mul <4 x i32> %broadcast.splat993, %393
  %395 = add <4 x i32> %394, <i32 3, i32 3, i32 3, i32 3>
  %396 = urem <4 x i32> %395, <i32 80, i32 80, i32 80, i32 80>
  %397 = sitofp <4 x i32> %396 to <4 x double>
  %398 = fmul fast <4 x double> %397, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %399 = extractelement <4 x i64> %392, i32 0
  %400 = shl i64 %399, 3
  %401 = add nuw nsw i64 %400, %390
  %402 = getelementptr i8, i8* %call, i64 %401
  %403 = bitcast i8* %402 to <4 x double>*
  store <4 x double> %398, <4 x double>* %403, align 8, !alias.scope !93, !noalias !95
  %index.next987 = add i64 %index986, 4
  %vec.ind.next991 = add <4 x i64> %vec.ind990, <i64 4, i64 4, i64 4, i64 4>
  %404 = icmp eq i64 %index.next987, 16
  br i1 %404, label %polly.loop_exit733.2.1, label %vector.body984, !llvm.loop !117

polly.loop_exit733.2.1:                           ; preds = %vector.body984
  %polly.indvar_next729.2.1 = add nuw nsw i64 %polly.indvar728.2.1, 1
  %exitcond840.2.1.not = icmp eq i64 %polly.indvar_next729.2.1, 32
  br i1 %exitcond840.2.1.not, label %polly.loop_header725.2887, label %polly.loop_header725.2.1

polly.loop_header725.2887:                        ; preds = %polly.loop_exit733.2.1, %polly.loop_exit733.2898
  %polly.indvar728.2886 = phi i64 [ %polly.indvar_next729.2896, %polly.loop_exit733.2898 ], [ 0, %polly.loop_exit733.2.1 ]
  %405 = add nuw nsw i64 %polly.indvar728.2886, 64
  %406 = mul nuw nsw i64 %405, 640
  %407 = trunc i64 %405 to i32
  %broadcast.splatinsert1006 = insertelement <4 x i32> poison, i32 %407, i32 0
  %broadcast.splat1007 = shufflevector <4 x i32> %broadcast.splatinsert1006, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %polly.loop_header725.2887
  %index998 = phi i64 [ 0, %polly.loop_header725.2887 ], [ %index.next999, %vector.body996 ]
  %vec.ind1004 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.2887 ], [ %vec.ind.next1005, %vector.body996 ]
  %408 = mul <4 x i32> %vec.ind1004, %broadcast.splat1007
  %409 = add <4 x i32> %408, <i32 3, i32 3, i32 3, i32 3>
  %410 = urem <4 x i32> %409, <i32 80, i32 80, i32 80, i32 80>
  %411 = sitofp <4 x i32> %410 to <4 x double>
  %412 = fmul fast <4 x double> %411, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %413 = shl i64 %index998, 3
  %414 = add nuw nsw i64 %413, %406
  %415 = getelementptr i8, i8* %call, i64 %414
  %416 = bitcast i8* %415 to <4 x double>*
  store <4 x double> %412, <4 x double>* %416, align 8, !alias.scope !93, !noalias !95
  %index.next999 = add i64 %index998, 4
  %vec.ind.next1005 = add <4 x i32> %vec.ind1004, <i32 4, i32 4, i32 4, i32 4>
  %417 = icmp eq i64 %index.next999, 32
  br i1 %417, label %polly.loop_exit733.2898, label %vector.body996, !llvm.loop !118

polly.loop_exit733.2898:                          ; preds = %vector.body996
  %polly.indvar_next729.2896 = add nuw nsw i64 %polly.indvar728.2886, 1
  %exitcond840.2897.not = icmp eq i64 %polly.indvar_next729.2896, 16
  br i1 %exitcond840.2897.not, label %polly.loop_header725.1.2, label %polly.loop_header725.2887

polly.loop_header725.1.2:                         ; preds = %polly.loop_exit733.2898, %polly.loop_exit733.1.2
  %polly.indvar728.1.2 = phi i64 [ %polly.indvar_next729.1.2, %polly.loop_exit733.1.2 ], [ 0, %polly.loop_exit733.2898 ]
  %418 = add nuw nsw i64 %polly.indvar728.1.2, 64
  %419 = mul nuw nsw i64 %418, 640
  %420 = trunc i64 %418 to i32
  %broadcast.splatinsert1018 = insertelement <4 x i32> poison, i32 %420, i32 0
  %broadcast.splat1019 = shufflevector <4 x i32> %broadcast.splatinsert1018, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %polly.loop_header725.1.2
  %index1012 = phi i64 [ 0, %polly.loop_header725.1.2 ], [ %index.next1013, %vector.body1010 ]
  %vec.ind1016 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.2 ], [ %vec.ind.next1017, %vector.body1010 ]
  %421 = add nuw nsw <4 x i64> %vec.ind1016, <i64 32, i64 32, i64 32, i64 32>
  %422 = trunc <4 x i64> %421 to <4 x i32>
  %423 = mul <4 x i32> %broadcast.splat1019, %422
  %424 = add <4 x i32> %423, <i32 3, i32 3, i32 3, i32 3>
  %425 = urem <4 x i32> %424, <i32 80, i32 80, i32 80, i32 80>
  %426 = sitofp <4 x i32> %425 to <4 x double>
  %427 = fmul fast <4 x double> %426, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %428 = extractelement <4 x i64> %421, i32 0
  %429 = shl i64 %428, 3
  %430 = add nuw nsw i64 %429, %419
  %431 = getelementptr i8, i8* %call, i64 %430
  %432 = bitcast i8* %431 to <4 x double>*
  store <4 x double> %427, <4 x double>* %432, align 8, !alias.scope !93, !noalias !95
  %index.next1013 = add i64 %index1012, 4
  %vec.ind.next1017 = add <4 x i64> %vec.ind1016, <i64 4, i64 4, i64 4, i64 4>
  %433 = icmp eq i64 %index.next1013, 32
  br i1 %433, label %polly.loop_exit733.1.2, label %vector.body1010, !llvm.loop !119

polly.loop_exit733.1.2:                           ; preds = %vector.body1010
  %polly.indvar_next729.1.2 = add nuw nsw i64 %polly.indvar728.1.2, 1
  %exitcond840.1.2.not = icmp eq i64 %polly.indvar_next729.1.2, 16
  br i1 %exitcond840.1.2.not, label %polly.loop_header725.2.2, label %polly.loop_header725.1.2

polly.loop_header725.2.2:                         ; preds = %polly.loop_exit733.1.2, %polly.loop_exit733.2.2
  %polly.indvar728.2.2 = phi i64 [ %polly.indvar_next729.2.2, %polly.loop_exit733.2.2 ], [ 0, %polly.loop_exit733.1.2 ]
  %434 = add nuw nsw i64 %polly.indvar728.2.2, 64
  %435 = mul nuw nsw i64 %434, 640
  %436 = trunc i64 %434 to i32
  %broadcast.splatinsert1030 = insertelement <4 x i32> poison, i32 %436, i32 0
  %broadcast.splat1031 = shufflevector <4 x i32> %broadcast.splatinsert1030, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %polly.loop_header725.2.2
  %index1024 = phi i64 [ 0, %polly.loop_header725.2.2 ], [ %index.next1025, %vector.body1022 ]
  %vec.ind1028 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2.2 ], [ %vec.ind.next1029, %vector.body1022 ]
  %437 = add nuw nsw <4 x i64> %vec.ind1028, <i64 64, i64 64, i64 64, i64 64>
  %438 = trunc <4 x i64> %437 to <4 x i32>
  %439 = mul <4 x i32> %broadcast.splat1031, %438
  %440 = add <4 x i32> %439, <i32 3, i32 3, i32 3, i32 3>
  %441 = urem <4 x i32> %440, <i32 80, i32 80, i32 80, i32 80>
  %442 = sitofp <4 x i32> %441 to <4 x double>
  %443 = fmul fast <4 x double> %442, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %444 = extractelement <4 x i64> %437, i32 0
  %445 = shl i64 %444, 3
  %446 = add nuw nsw i64 %445, %435
  %447 = getelementptr i8, i8* %call, i64 %446
  %448 = bitcast i8* %447 to <4 x double>*
  store <4 x double> %443, <4 x double>* %448, align 8, !alias.scope !93, !noalias !95
  %index.next1025 = add i64 %index1024, 4
  %vec.ind.next1029 = add <4 x i64> %vec.ind1028, <i64 4, i64 4, i64 4, i64 4>
  %449 = icmp eq i64 %index.next1025, 16
  br i1 %449, label %polly.loop_exit733.2.2, label %vector.body1022, !llvm.loop !120

polly.loop_exit733.2.2:                           ; preds = %vector.body1022
  %polly.indvar_next729.2.2 = add nuw nsw i64 %polly.indvar728.2.2, 1
  %exitcond840.2.2.not = icmp eq i64 %polly.indvar_next729.2.2, 16
  br i1 %exitcond840.2.2.not, label %polly.loop_header752, label %polly.loop_header725.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 64}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 80}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !34, !45, !51}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.data.pack.enable", i1 true}
!49 = !{!"llvm.data.pack.array", !21}
!50 = !{!"llvm.data.pack.allocate", !"malloc"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call2"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !65, !67}
!72 = !{!62, !66, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !76, !78}
!82 = !{!73, !77, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call2"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !86, !88}
!92 = !{!83, !87, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = !{!96, !93}
!100 = distinct !{!100, !13}
!101 = !{!97, !93}
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
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
