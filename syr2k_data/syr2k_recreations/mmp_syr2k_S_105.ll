; ModuleID = 'syr2k_recreations//mmp_syr2k_S_105.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_105.c"
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
  %scevgep925 = getelementptr i8, i8* %call2, i64 %12
  %scevgep924 = getelementptr i8, i8* %call2, i64 %11
  %scevgep923 = getelementptr i8, i8* %call1, i64 %12
  %scevgep922 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep922, %scevgep925
  %bound1 = icmp ult i8* %scevgep924, %scevgep923
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
  br i1 %exitcond18.not.i, label %vector.ph929, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph929:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert936 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat937 = shufflevector <4 x i64> %broadcast.splatinsert936, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body928

vector.body928:                                   ; preds = %vector.body928, %vector.ph929
  %index930 = phi i64 [ 0, %vector.ph929 ], [ %index.next931, %vector.body928 ]
  %vec.ind934 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph929 ], [ %vec.ind.next935, %vector.body928 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind934, %broadcast.splat937
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv7.i, i64 %index930
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next931 = add i64 %index930, 4
  %vec.ind.next935 = add <4 x i64> %vec.ind934, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next931, 80
  br i1 %40, label %for.inc41.i, label %vector.body928, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body928
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph929, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1285, label %vector.ph1211

vector.ph1211:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %vector.ph1211
  %index1212 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1213, %vector.body1210 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %index1212
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1213 = add i64 %index1212, 4
  %46 = icmp eq i64 %index.next1213, %n.vec
  br i1 %46, label %middle.block1208, label %vector.body1210, !llvm.loop !18

middle.block1208:                                 ; preds = %vector.body1210
  %cmp.n1215 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1215, label %for.inc6.i, label %for.body3.i46.preheader1285

for.body3.i46.preheader1285:                      ; preds = %for.body3.i46.preheader, %middle.block1208
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1208 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1285, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1285 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1208, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit516
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1231 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1231, label %for.body3.i60.preheader1283, label %vector.ph1232

vector.ph1232:                                    ; preds = %for.body3.i60.preheader
  %n.vec1234 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1232
  %index1235 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1236, %vector.body1230 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %index1235
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1239 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1239, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1236 = add i64 %index1235, 4
  %57 = icmp eq i64 %index.next1236, %n.vec1234
  br i1 %57, label %middle.block1228, label %vector.body1230, !llvm.loop !51

middle.block1228:                                 ; preds = %vector.body1230
  %cmp.n1238 = icmp eq i64 %indvars.iv21.i52, %n.vec1234
  br i1 %cmp.n1238, label %for.inc6.i63, label %for.body3.i60.preheader1283

for.body3.i60.preheader1283:                      ; preds = %for.body3.i60.preheader, %middle.block1228
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1234, %middle.block1228 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1283, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1283 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1228, %for.cond1.preheader.i54
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
  %min.iters.check1257 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1257, label %for.body3.i99.preheader1281, label %vector.ph1258

vector.ph1258:                                    ; preds = %for.body3.i99.preheader
  %n.vec1260 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %vector.ph1258
  %index1261 = phi i64 [ 0, %vector.ph1258 ], [ %index.next1262, %vector.body1256 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %index1261
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1265 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1265, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1262 = add i64 %index1261, 4
  %68 = icmp eq i64 %index.next1262, %n.vec1260
  br i1 %68, label %middle.block1254, label %vector.body1256, !llvm.loop !53

middle.block1254:                                 ; preds = %vector.body1256
  %cmp.n1264 = icmp eq i64 %indvars.iv21.i91, %n.vec1260
  br i1 %cmp.n1264, label %for.inc6.i102, label %for.body3.i99.preheader1281

for.body3.i99.preheader1281:                      ; preds = %for.body3.i99.preheader, %middle.block1254
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1260, %middle.block1254 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1281, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1281 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1254, %for.cond1.preheader.i93
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
  %indvar1269 = phi i64 [ %indvar.next1270, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1269, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1271 = icmp ult i64 %88, 4
  br i1 %min.iters.check1271, label %polly.loop_header191.preheader, label %vector.ph1272

vector.ph1272:                                    ; preds = %polly.loop_header
  %n.vec1274 = and i64 %88, -4
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1272
  %index1275 = phi i64 [ 0, %vector.ph1272 ], [ %index.next1276, %vector.body1268 ]
  %90 = shl nuw nsw i64 %index1275, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1279 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1279, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1276 = add i64 %index1275, 4
  %95 = icmp eq i64 %index.next1276, %n.vec1274
  br i1 %95, label %middle.block1266, label %vector.body1268, !llvm.loop !64

middle.block1266:                                 ; preds = %vector.body1268
  %cmp.n1278 = icmp eq i64 %88, %n.vec1274
  br i1 %cmp.n1278, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1266
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1274, %middle.block1266 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1266
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond789.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1270 = add i64 %indvar1269, 1
  br i1 %exitcond789.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond788.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %polly.indvar202, 4
  %98 = shl nsw i64 %polly.indvar202, 2
  %99 = mul nsw i64 %polly.indvar202, 1920
  %100 = mul nsw i64 %polly.indvar202, 2560
  %101 = or i64 %98, 1
  %102 = mul nuw nsw i64 %101, 480
  %103 = mul nuw nsw i64 %101, 640
  %104 = or i64 %98, 2
  %105 = mul nuw nsw i64 %104, 480
  %106 = mul nuw nsw i64 %104, 640
  %107 = or i64 %98, 3
  %108 = mul nuw nsw i64 %107, 480
  %109 = mul nuw nsw i64 %107, 640
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond787.not = icmp eq i64 %polly.indvar_next203, 20
  br i1 %exitcond787.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %110 = mul nuw nsw i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit225.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next209, 3
  br i1 %exitcond786.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit225.3, %polly.loop_header205
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit225.3 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit225.3 ], [ 0, %polly.loop_header205 ]
  %111 = shl nsw i64 %polly.indvar214, 6
  %112 = sub nsw i64 %98, %111
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv779, i64 63)
  %polly.loop_guard902 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard902, label %polly.loop_header223.us, label %polly.loop_exit225

polly.loop_header223.us:                          ; preds = %polly.loop_header211, %polly.loop_exit231.loopexit.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit231.loopexit.us ], [ 0, %polly.loop_header211 ]
  %113 = add nuw nsw i64 %polly.indvar226.us, %110
  %114 = shl i64 %113, 3
  %115 = add nuw nsw i64 %114, %99
  %scevgep238.us = getelementptr i8, i8* %call2, i64 %115
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us = getelementptr i8, i8* %call1, i64 %115
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %116 = add nuw nsw i64 %polly.indvar232.us, %111
  %117 = mul nuw nsw i64 %116, 480
  %118 = add nuw nsw i64 %117, %114
  %scevgep235.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep235236.us = bitcast i8* %scevgep235.us to double*
  %_p_scalar_237.us = load double, double* %scevgep235236.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_237.us
  %scevgep241.us = getelementptr i8, i8* %call2, i64 %118
  %scevgep241242.us = bitcast i8* %scevgep241.us to double*
  %_p_scalar_243.us = load double, double* %scevgep241242.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_243.us
  %119 = shl i64 %116, 3
  %120 = add nuw nsw i64 %119, %100
  %scevgep247.us = getelementptr i8, i8* %call, i64 %120
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
  %exitcond783.not = icmp eq i64 %polly.indvar_next227.us, 20
  br i1 %exitcond783.not, label %polly.loop_exit225, label %polly.loop_header223.us

polly.loop_exit225:                               ; preds = %polly.loop_exit231.loopexit.us, %polly.loop_header211
  %indvars.iv.next782 = or i64 %indvars.iv779, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782, i64 63)
  %polly.loop_guard.1903 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.1903, label %polly.loop_header223.us.1, label %polly.loop_exit225.1

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1243 = phi i64 [ %indvar.next1244, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %121 = add i64 %indvar1243, 1
  %122 = mul nuw nsw i64 %polly.indvar339, 640
  %scevgep348 = getelementptr i8, i8* %call, i64 %122
  %min.iters.check1245 = icmp ult i64 %121, 4
  br i1 %min.iters.check1245, label %polly.loop_header342.preheader, label %vector.ph1246

vector.ph1246:                                    ; preds = %polly.loop_header336
  %n.vec1248 = and i64 %121, -4
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1246
  %index1249 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1250, %vector.body1242 ]
  %123 = shl nuw nsw i64 %index1249, 3
  %124 = getelementptr i8, i8* %scevgep348, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1253 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !69, !noalias !71
  %126 = fmul fast <4 x double> %wide.load1253, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %127 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !69, !noalias !71
  %index.next1250 = add i64 %index1249, 4
  %128 = icmp eq i64 %index.next1250, %n.vec1248
  br i1 %128, label %middle.block1240, label %vector.body1242, !llvm.loop !74

middle.block1240:                                 ; preds = %vector.body1242
  %cmp.n1252 = icmp eq i64 %121, %n.vec1248
  br i1 %cmp.n1252, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block1240
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1248, %middle.block1240 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block1240
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next340, 80
  %indvar.next1244 = add i64 %indvar1243, 1
  br i1 %exitcond804.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %129
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond803.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !75

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit360
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %130 = lshr i64 %polly.indvar355, 4
  %131 = shl nsw i64 %polly.indvar355, 2
  %132 = mul nsw i64 %polly.indvar355, 1920
  %133 = mul nsw i64 %polly.indvar355, 2560
  %134 = or i64 %131, 1
  %135 = mul nuw nsw i64 %134, 480
  %136 = mul nuw nsw i64 %134, 640
  %137 = or i64 %131, 2
  %138 = mul nuw nsw i64 %137, 480
  %139 = mul nuw nsw i64 %137, 640
  %140 = or i64 %131, 3
  %141 = mul nuw nsw i64 %140, 480
  %142 = mul nuw nsw i64 %140, 640
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_exit367
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 4
  %exitcond802.not = icmp eq i64 %polly.indvar_next356, 20
  br i1 %exitcond802.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header358:                             ; preds = %polly.loop_exit367, %polly.loop_header352
  %polly.indvar361 = phi i64 [ 0, %polly.loop_header352 ], [ %polly.indvar_next362, %polly.loop_exit367 ]
  %143 = mul nuw nsw i64 %polly.indvar361, 20
  br label %polly.loop_header365

polly.loop_exit367:                               ; preds = %polly.loop_exit379.3
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next362, 3
  br i1 %exitcond801.not, label %polly.loop_exit360, label %polly.loop_header358

polly.loop_header365:                             ; preds = %polly.loop_exit379.3, %polly.loop_header358
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit379.3 ], [ %indvars.iv790, %polly.loop_header358 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit379.3 ], [ 0, %polly.loop_header358 ]
  %144 = shl nsw i64 %polly.indvar368, 6
  %145 = sub nsw i64 %131, %144
  %smin796 = call i64 @llvm.smin.i64(i64 %indvars.iv792, i64 63)
  %polly.loop_guard387906 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard387906, label %polly.loop_header377.us, label %polly.loop_exit379

polly.loop_header377.us:                          ; preds = %polly.loop_header365, %polly.loop_exit386.loopexit.us
  %polly.indvar380.us = phi i64 [ %polly.indvar_next381.us, %polly.loop_exit386.loopexit.us ], [ 0, %polly.loop_header365 ]
  %146 = add nuw nsw i64 %polly.indvar380.us, %143
  %147 = shl i64 %146, 3
  %148 = add nuw nsw i64 %147, %132
  %scevgep394.us = getelementptr i8, i8* %call2, i64 %148
  %scevgep394395.us = bitcast i8* %scevgep394.us to double*
  %_p_scalar_396.us = load double, double* %scevgep394395.us, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us = getelementptr i8, i8* %call1, i64 %148
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us

polly.loop_header384.us:                          ; preds = %polly.loop_header377.us, %polly.loop_header384.us
  %polly.indvar388.us = phi i64 [ %polly.indvar_next389.us, %polly.loop_header384.us ], [ 0, %polly.loop_header377.us ]
  %149 = add nuw nsw i64 %polly.indvar388.us, %144
  %150 = mul nuw nsw i64 %149, 480
  %151 = add nuw nsw i64 %150, %147
  %scevgep391.us = getelementptr i8, i8* %call1, i64 %151
  %scevgep391392.us = bitcast i8* %scevgep391.us to double*
  %_p_scalar_393.us = load double, double* %scevgep391392.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_396.us, %_p_scalar_393.us
  %scevgep397.us = getelementptr i8, i8* %call2, i64 %151
  %scevgep397398.us = bitcast i8* %scevgep397.us to double*
  %_p_scalar_399.us = load double, double* %scevgep397398.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_402.us, %_p_scalar_399.us
  %152 = shl i64 %149, 3
  %153 = add nuw nsw i64 %152, %133
  %scevgep403.us = getelementptr i8, i8* %call, i64 %153
  %scevgep403404.us = bitcast i8* %scevgep403.us to double*
  %_p_scalar_405.us = load double, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_405.us
  store double %p_add42.i79.us, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us = add nuw nsw i64 %polly.indvar388.us, 1
  %exitcond797.not = icmp eq i64 %polly.indvar388.us, %smin796
  br i1 %exitcond797.not, label %polly.loop_exit386.loopexit.us, label %polly.loop_header384.us

polly.loop_exit386.loopexit.us:                   ; preds = %polly.loop_header384.us
  %polly.indvar_next381.us = add nuw nsw i64 %polly.indvar380.us, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next381.us, 20
  br i1 %exitcond798.not, label %polly.loop_exit379, label %polly.loop_header377.us

polly.loop_exit379:                               ; preds = %polly.loop_exit386.loopexit.us, %polly.loop_header365
  %indvars.iv.next795 = or i64 %indvars.iv792, 1
  %smin796.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795, i64 63)
  %polly.loop_guard387.1907 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard387.1907, label %polly.loop_header377.us.1, label %polly.loop_exit379.1

polly.loop_header492:                             ; preds = %init_array.exit, %polly.loop_exit500
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit500 ], [ 0, %init_array.exit ]
  %polly.indvar495 = phi i64 [ %polly.indvar_next496, %polly.loop_exit500 ], [ 1, %init_array.exit ]
  %154 = add i64 %indvar, 1
  %155 = mul nuw nsw i64 %polly.indvar495, 640
  %scevgep504 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check1219 = icmp ult i64 %154, 4
  br i1 %min.iters.check1219, label %polly.loop_header498.preheader, label %vector.ph1220

vector.ph1220:                                    ; preds = %polly.loop_header492
  %n.vec1222 = and i64 %154, -4
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %vector.ph1220
  %index1223 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1224, %vector.body1218 ]
  %156 = shl nuw nsw i64 %index1223, 3
  %157 = getelementptr i8, i8* %scevgep504, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1227 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !78, !noalias !80
  %159 = fmul fast <4 x double> %wide.load1227, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !78, !noalias !80
  %index.next1224 = add i64 %index1223, 4
  %161 = icmp eq i64 %index.next1224, %n.vec1222
  br i1 %161, label %middle.block1216, label %vector.body1218, !llvm.loop !83

middle.block1216:                                 ; preds = %vector.body1218
  %cmp.n1226 = icmp eq i64 %154, %n.vec1222
  br i1 %cmp.n1226, label %polly.loop_exit500, label %polly.loop_header498.preheader

polly.loop_header498.preheader:                   ; preds = %polly.loop_header492, %middle.block1216
  %polly.indvar501.ph = phi i64 [ 0, %polly.loop_header492 ], [ %n.vec1222, %middle.block1216 ]
  br label %polly.loop_header498

polly.loop_exit500:                               ; preds = %polly.loop_header498, %middle.block1216
  %polly.indvar_next496 = add nuw nsw i64 %polly.indvar495, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next496, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond819.not, label %polly.loop_header508, label %polly.loop_header492

polly.loop_header498:                             ; preds = %polly.loop_header498.preheader, %polly.loop_header498
  %polly.indvar501 = phi i64 [ %polly.indvar_next502, %polly.loop_header498 ], [ %polly.indvar501.ph, %polly.loop_header498.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar501, 3
  %scevgep505 = getelementptr i8, i8* %scevgep504, i64 %162
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_507, 1.200000e+00
  store double %p_mul.i, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next502 = add nuw nsw i64 %polly.indvar501, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next502, %polly.indvar495
  br i1 %exitcond818.not, label %polly.loop_exit500, label %polly.loop_header498, !llvm.loop !84

polly.loop_header508:                             ; preds = %polly.loop_exit500, %polly.loop_exit516
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit516 ], [ 0, %polly.loop_exit500 ]
  %polly.indvar511 = phi i64 [ %polly.indvar_next512, %polly.loop_exit516 ], [ 0, %polly.loop_exit500 ]
  %163 = lshr i64 %polly.indvar511, 4
  %164 = shl nsw i64 %polly.indvar511, 2
  %165 = mul nsw i64 %polly.indvar511, 1920
  %166 = mul nsw i64 %polly.indvar511, 2560
  %167 = or i64 %164, 1
  %168 = mul nuw nsw i64 %167, 480
  %169 = mul nuw nsw i64 %167, 640
  %170 = or i64 %164, 2
  %171 = mul nuw nsw i64 %170, 480
  %172 = mul nuw nsw i64 %170, 640
  %173 = or i64 %164, 3
  %174 = mul nuw nsw i64 %173, 480
  %175 = mul nuw nsw i64 %173, 640
  br label %polly.loop_header514

polly.loop_exit516:                               ; preds = %polly.loop_exit523
  %polly.indvar_next512 = add nuw nsw i64 %polly.indvar511, 1
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 4
  %exitcond817.not = icmp eq i64 %polly.indvar_next512, 20
  br i1 %exitcond817.not, label %kernel_syr2k.exit, label %polly.loop_header508

polly.loop_header514:                             ; preds = %polly.loop_exit523, %polly.loop_header508
  %polly.indvar517 = phi i64 [ 0, %polly.loop_header508 ], [ %polly.indvar_next518, %polly.loop_exit523 ]
  %176 = mul nuw nsw i64 %polly.indvar517, 20
  br label %polly.loop_header521

polly.loop_exit523:                               ; preds = %polly.loop_exit535.3
  %polly.indvar_next518 = add nuw nsw i64 %polly.indvar517, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next518, 3
  br i1 %exitcond816.not, label %polly.loop_exit516, label %polly.loop_header514

polly.loop_header521:                             ; preds = %polly.loop_exit535.3, %polly.loop_header514
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit535.3 ], [ %indvars.iv805, %polly.loop_header514 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit535.3 ], [ 0, %polly.loop_header514 ]
  %177 = shl nsw i64 %polly.indvar524, 6
  %178 = sub nsw i64 %164, %177
  %smin811 = call i64 @llvm.smin.i64(i64 %indvars.iv807, i64 63)
  %polly.loop_guard543910 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard543910, label %polly.loop_header533.us, label %polly.loop_exit535

polly.loop_header533.us:                          ; preds = %polly.loop_header521, %polly.loop_exit542.loopexit.us
  %polly.indvar536.us = phi i64 [ %polly.indvar_next537.us, %polly.loop_exit542.loopexit.us ], [ 0, %polly.loop_header521 ]
  %179 = add nuw nsw i64 %polly.indvar536.us, %176
  %180 = shl i64 %179, 3
  %181 = add nuw nsw i64 %180, %165
  %scevgep550.us = getelementptr i8, i8* %call2, i64 %181
  %scevgep550551.us = bitcast i8* %scevgep550.us to double*
  %_p_scalar_552.us = load double, double* %scevgep550551.us, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us = getelementptr i8, i8* %call1, i64 %181
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us

polly.loop_header540.us:                          ; preds = %polly.loop_header533.us, %polly.loop_header540.us
  %polly.indvar544.us = phi i64 [ %polly.indvar_next545.us, %polly.loop_header540.us ], [ 0, %polly.loop_header533.us ]
  %182 = add nuw nsw i64 %polly.indvar544.us, %177
  %183 = mul nuw nsw i64 %182, 480
  %184 = add nuw nsw i64 %183, %180
  %scevgep547.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep547548.us = bitcast i8* %scevgep547.us to double*
  %_p_scalar_549.us = load double, double* %scevgep547548.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_552.us, %_p_scalar_549.us
  %scevgep553.us = getelementptr i8, i8* %call2, i64 %184
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %185 = shl i64 %182, 3
  %186 = add nuw nsw i64 %185, %166
  %scevgep559.us = getelementptr i8, i8* %call, i64 %186
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_561.us
  store double %p_add42.i.us, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us = add nuw nsw i64 %polly.indvar544.us, 1
  %exitcond812.not = icmp eq i64 %polly.indvar544.us, %smin811
  br i1 %exitcond812.not, label %polly.loop_exit542.loopexit.us, label %polly.loop_header540.us

polly.loop_exit542.loopexit.us:                   ; preds = %polly.loop_header540.us
  %polly.indvar_next537.us = add nuw nsw i64 %polly.indvar536.us, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next537.us, 20
  br i1 %exitcond813.not, label %polly.loop_exit535, label %polly.loop_header533.us

polly.loop_exit535:                               ; preds = %polly.loop_exit542.loopexit.us, %polly.loop_header521
  %indvars.iv.next810 = or i64 %indvars.iv807, 1
  %smin811.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next810, i64 63)
  %polly.loop_guard543.1911 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard543.1911, label %polly.loop_header533.us.1, label %polly.loop_exit535.1

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %187 = mul nuw nsw i64 %polly.indvar703, 640
  %188 = trunc i64 %polly.indvar703 to i32
  %broadcast.splatinsert950 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat951 = shufflevector <4 x i32> %broadcast.splatinsert950, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body940

vector.body940:                                   ; preds = %vector.body940, %polly.loop_header700
  %index942 = phi i64 [ 0, %polly.loop_header700 ], [ %index.next943, %vector.body940 ]
  %vec.ind948 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700 ], [ %vec.ind.next949, %vector.body940 ]
  %189 = mul <4 x i32> %vec.ind948, %broadcast.splat951
  %190 = add <4 x i32> %189, <i32 3, i32 3, i32 3, i32 3>
  %191 = urem <4 x i32> %190, <i32 80, i32 80, i32 80, i32 80>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %194 = shl i64 %index942, 3
  %195 = add nuw nsw i64 %194, %187
  %196 = getelementptr i8, i8* %call, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %193, <4 x double>* %197, align 8, !alias.scope !87, !noalias !89
  %index.next943 = add i64 %index942, 4
  %vec.ind.next949 = add <4 x i32> %vec.ind948, <i32 4, i32 4, i32 4, i32 4>
  %198 = icmp eq i64 %index.next943, 32
  br i1 %198, label %polly.loop_exit708, label %vector.body940, !llvm.loop !92

polly.loop_exit708:                               ; preds = %vector.body940
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next704, 32
  br i1 %exitcond839.not, label %polly.loop_header700.1, label %polly.loop_header700

polly.loop_header727:                             ; preds = %polly.loop_exit708.2.2, %polly.loop_exit735
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708.2.2 ]
  %199 = mul nuw nsw i64 %polly.indvar730, 480
  %200 = trunc i64 %polly.indvar730 to i32
  %broadcast.splatinsert1064 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1065 = shufflevector <4 x i32> %broadcast.splatinsert1064, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1054

vector.body1054:                                  ; preds = %vector.body1054, %polly.loop_header727
  %index1056 = phi i64 [ 0, %polly.loop_header727 ], [ %index.next1057, %vector.body1054 ]
  %vec.ind1062 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727 ], [ %vec.ind.next1063, %vector.body1054 ]
  %201 = mul <4 x i32> %vec.ind1062, %broadcast.splat1065
  %202 = add <4 x i32> %201, <i32 2, i32 2, i32 2, i32 2>
  %203 = urem <4 x i32> %202, <i32 60, i32 60, i32 60, i32 60>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %206 = shl i64 %index1056, 3
  %207 = add i64 %206, %199
  %208 = getelementptr i8, i8* %call2, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %205, <4 x double>* %209, align 8, !alias.scope !91, !noalias !93
  %index.next1057 = add i64 %index1056, 4
  %vec.ind.next1063 = add <4 x i32> %vec.ind1062, <i32 4, i32 4, i32 4, i32 4>
  %210 = icmp eq i64 %index.next1057, 32
  br i1 %210, label %polly.loop_exit735, label %vector.body1054, !llvm.loop !94

polly.loop_exit735:                               ; preds = %vector.body1054
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond830.not, label %polly.loop_header727.1, label %polly.loop_header727

polly.loop_header753:                             ; preds = %polly.loop_exit735.1.2, %polly.loop_exit761
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735.1.2 ]
  %211 = mul nuw nsw i64 %polly.indvar756, 480
  %212 = trunc i64 %polly.indvar756 to i32
  %broadcast.splatinsert1142 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1143 = shufflevector <4 x i32> %broadcast.splatinsert1142, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %polly.loop_header753
  %index1134 = phi i64 [ 0, %polly.loop_header753 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1140 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753 ], [ %vec.ind.next1141, %vector.body1132 ]
  %213 = mul <4 x i32> %vec.ind1140, %broadcast.splat1143
  %214 = add <4 x i32> %213, <i32 1, i32 1, i32 1, i32 1>
  %215 = urem <4 x i32> %214, <i32 80, i32 80, i32 80, i32 80>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %218 = shl i64 %index1134, 3
  %219 = add i64 %218, %211
  %220 = getelementptr i8, i8* %call1, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %217, <4 x double>* %221, align 8, !alias.scope !90, !noalias !95
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1141 = add <4 x i32> %vec.ind1140, <i32 4, i32 4, i32 4, i32 4>
  %222 = icmp eq i64 %index.next1135, 32
  br i1 %222, label %polly.loop_exit761, label %vector.body1132, !llvm.loop !96

polly.loop_exit761:                               ; preds = %vector.body1132
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond824.not, label %polly.loop_header753.1, label %polly.loop_header753

polly.loop_header223.us.1:                        ; preds = %polly.loop_exit225, %polly.loop_exit231.loopexit.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.loop_exit231.loopexit.us.1 ], [ 0, %polly.loop_exit225 ]
  %223 = add nuw nsw i64 %polly.indvar226.us.1, %110
  %224 = shl i64 %223, 3
  %225 = add nuw nsw i64 %224, %102
  %scevgep238.us.1 = getelementptr i8, i8* %call2, i64 %225
  %scevgep238239.us.1 = bitcast i8* %scevgep238.us.1 to double*
  %_p_scalar_240.us.1 = load double, double* %scevgep238239.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us.1 = getelementptr i8, i8* %call1, i64 %225
  %scevgep244245.us.1 = bitcast i8* %scevgep244.us.1 to double*
  %_p_scalar_246.us.1 = load double, double* %scevgep244245.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us.1

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1, %polly.loop_header223.us.1
  %polly.indvar232.us.1 = phi i64 [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ], [ 0, %polly.loop_header223.us.1 ]
  %226 = add nuw nsw i64 %polly.indvar232.us.1, %111
  %227 = mul nuw nsw i64 %226, 480
  %228 = add nuw nsw i64 %227, %224
  %scevgep235.us.1 = getelementptr i8, i8* %call1, i64 %228
  %scevgep235236.us.1 = bitcast i8* %scevgep235.us.1 to double*
  %_p_scalar_237.us.1 = load double, double* %scevgep235236.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_240.us.1, %_p_scalar_237.us.1
  %scevgep241.us.1 = getelementptr i8, i8* %call2, i64 %228
  %scevgep241242.us.1 = bitcast i8* %scevgep241.us.1 to double*
  %_p_scalar_243.us.1 = load double, double* %scevgep241242.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_246.us.1, %_p_scalar_243.us.1
  %229 = shl i64 %226, 3
  %230 = add nuw nsw i64 %229, %103
  %scevgep247.us.1 = getelementptr i8, i8* %call, i64 %230
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
  %exitcond783.1.not = icmp eq i64 %polly.indvar_next227.us.1, 20
  br i1 %exitcond783.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.us.1

polly.loop_exit225.1:                             ; preds = %polly.loop_exit231.loopexit.us.1, %polly.loop_exit225
  %indvars.iv.next782.1 = add nuw nsw i64 %indvars.iv.next782, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782.1, i64 63)
  %polly.loop_guard.2904 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.2904, label %polly.loop_header223.us.2, label %polly.loop_exit225.2

polly.loop_header223.us.2:                        ; preds = %polly.loop_exit225.1, %polly.loop_exit231.loopexit.us.2
  %polly.indvar226.us.2 = phi i64 [ %polly.indvar_next227.us.2, %polly.loop_exit231.loopexit.us.2 ], [ 0, %polly.loop_exit225.1 ]
  %231 = add nuw nsw i64 %polly.indvar226.us.2, %110
  %232 = shl i64 %231, 3
  %233 = add nuw nsw i64 %232, %105
  %scevgep238.us.2 = getelementptr i8, i8* %call2, i64 %233
  %scevgep238239.us.2 = bitcast i8* %scevgep238.us.2 to double*
  %_p_scalar_240.us.2 = load double, double* %scevgep238239.us.2, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us.2 = getelementptr i8, i8* %call1, i64 %233
  %scevgep244245.us.2 = bitcast i8* %scevgep244.us.2 to double*
  %_p_scalar_246.us.2 = load double, double* %scevgep244245.us.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us.2

polly.loop_header229.us.2:                        ; preds = %polly.loop_header229.us.2, %polly.loop_header223.us.2
  %polly.indvar232.us.2 = phi i64 [ %polly.indvar_next233.us.2, %polly.loop_header229.us.2 ], [ 0, %polly.loop_header223.us.2 ]
  %234 = add nuw nsw i64 %polly.indvar232.us.2, %111
  %235 = mul nuw nsw i64 %234, 480
  %236 = add nuw nsw i64 %235, %232
  %scevgep235.us.2 = getelementptr i8, i8* %call1, i64 %236
  %scevgep235236.us.2 = bitcast i8* %scevgep235.us.2 to double*
  %_p_scalar_237.us.2 = load double, double* %scevgep235236.us.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_240.us.2, %_p_scalar_237.us.2
  %scevgep241.us.2 = getelementptr i8, i8* %call2, i64 %236
  %scevgep241242.us.2 = bitcast i8* %scevgep241.us.2 to double*
  %_p_scalar_243.us.2 = load double, double* %scevgep241242.us.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_246.us.2, %_p_scalar_243.us.2
  %237 = shl i64 %234, 3
  %238 = add nuw nsw i64 %237, %106
  %scevgep247.us.2 = getelementptr i8, i8* %call, i64 %238
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
  %exitcond783.2.not = icmp eq i64 %polly.indvar_next227.us.2, 20
  br i1 %exitcond783.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.us.2

polly.loop_exit225.2:                             ; preds = %polly.loop_exit231.loopexit.us.2, %polly.loop_exit225.1
  %indvars.iv.next782.2 = or i64 %indvars.iv779, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782.2, i64 63)
  %polly.loop_guard.3905 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.3905, label %polly.loop_header223.us.3, label %polly.loop_exit225.3

polly.loop_header223.us.3:                        ; preds = %polly.loop_exit225.2, %polly.loop_exit231.loopexit.us.3
  %polly.indvar226.us.3 = phi i64 [ %polly.indvar_next227.us.3, %polly.loop_exit231.loopexit.us.3 ], [ 0, %polly.loop_exit225.2 ]
  %239 = add nuw nsw i64 %polly.indvar226.us.3, %110
  %240 = shl i64 %239, 3
  %241 = add nuw nsw i64 %240, %108
  %scevgep238.us.3 = getelementptr i8, i8* %call2, i64 %241
  %scevgep238239.us.3 = bitcast i8* %scevgep238.us.3 to double*
  %_p_scalar_240.us.3 = load double, double* %scevgep238239.us.3, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us.3 = getelementptr i8, i8* %call1, i64 %241
  %scevgep244245.us.3 = bitcast i8* %scevgep244.us.3 to double*
  %_p_scalar_246.us.3 = load double, double* %scevgep244245.us.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us.3

polly.loop_header229.us.3:                        ; preds = %polly.loop_header229.us.3, %polly.loop_header223.us.3
  %polly.indvar232.us.3 = phi i64 [ %polly.indvar_next233.us.3, %polly.loop_header229.us.3 ], [ 0, %polly.loop_header223.us.3 ]
  %242 = add nuw nsw i64 %polly.indvar232.us.3, %111
  %243 = mul nuw nsw i64 %242, 480
  %244 = add nuw nsw i64 %243, %240
  %scevgep235.us.3 = getelementptr i8, i8* %call1, i64 %244
  %scevgep235236.us.3 = bitcast i8* %scevgep235.us.3 to double*
  %_p_scalar_237.us.3 = load double, double* %scevgep235236.us.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_240.us.3, %_p_scalar_237.us.3
  %scevgep241.us.3 = getelementptr i8, i8* %call2, i64 %244
  %scevgep241242.us.3 = bitcast i8* %scevgep241.us.3 to double*
  %_p_scalar_243.us.3 = load double, double* %scevgep241242.us.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_246.us.3, %_p_scalar_243.us.3
  %245 = shl i64 %242, 3
  %246 = add nuw nsw i64 %245, %109
  %scevgep247.us.3 = getelementptr i8, i8* %call, i64 %246
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
  %exitcond783.3.not = icmp eq i64 %polly.indvar_next227.us.3, 20
  br i1 %exitcond783.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.us.3

polly.loop_exit225.3:                             ; preds = %polly.loop_exit231.loopexit.us.3, %polly.loop_exit225.2
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next780 = add nsw i64 %indvars.iv779, -64
  %exitcond785.not = icmp eq i64 %polly.indvar214, %97
  br i1 %exitcond785.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header377.us.1:                        ; preds = %polly.loop_exit379, %polly.loop_exit386.loopexit.us.1
  %polly.indvar380.us.1 = phi i64 [ %polly.indvar_next381.us.1, %polly.loop_exit386.loopexit.us.1 ], [ 0, %polly.loop_exit379 ]
  %247 = add nuw nsw i64 %polly.indvar380.us.1, %143
  %248 = shl i64 %247, 3
  %249 = add nuw nsw i64 %248, %135
  %scevgep394.us.1 = getelementptr i8, i8* %call2, i64 %249
  %scevgep394395.us.1 = bitcast i8* %scevgep394.us.1 to double*
  %_p_scalar_396.us.1 = load double, double* %scevgep394395.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us.1 = getelementptr i8, i8* %call1, i64 %249
  %scevgep400401.us.1 = bitcast i8* %scevgep400.us.1 to double*
  %_p_scalar_402.us.1 = load double, double* %scevgep400401.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us.1

polly.loop_header384.us.1:                        ; preds = %polly.loop_header384.us.1, %polly.loop_header377.us.1
  %polly.indvar388.us.1 = phi i64 [ %polly.indvar_next389.us.1, %polly.loop_header384.us.1 ], [ 0, %polly.loop_header377.us.1 ]
  %250 = add nuw nsw i64 %polly.indvar388.us.1, %144
  %251 = mul nuw nsw i64 %250, 480
  %252 = add nuw nsw i64 %251, %248
  %scevgep391.us.1 = getelementptr i8, i8* %call1, i64 %252
  %scevgep391392.us.1 = bitcast i8* %scevgep391.us.1 to double*
  %_p_scalar_393.us.1 = load double, double* %scevgep391392.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_396.us.1, %_p_scalar_393.us.1
  %scevgep397.us.1 = getelementptr i8, i8* %call2, i64 %252
  %scevgep397398.us.1 = bitcast i8* %scevgep397.us.1 to double*
  %_p_scalar_399.us.1 = load double, double* %scevgep397398.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_402.us.1, %_p_scalar_399.us.1
  %253 = shl i64 %250, 3
  %254 = add nuw nsw i64 %253, %136
  %scevgep403.us.1 = getelementptr i8, i8* %call, i64 %254
  %scevgep403404.us.1 = bitcast i8* %scevgep403.us.1 to double*
  %_p_scalar_405.us.1 = load double, double* %scevgep403404.us.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_405.us.1
  store double %p_add42.i79.us.1, double* %scevgep403404.us.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us.1 = add nuw nsw i64 %polly.indvar388.us.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar388.us.1, %smin796.1
  br i1 %exitcond797.1.not, label %polly.loop_exit386.loopexit.us.1, label %polly.loop_header384.us.1

polly.loop_exit386.loopexit.us.1:                 ; preds = %polly.loop_header384.us.1
  %polly.indvar_next381.us.1 = add nuw nsw i64 %polly.indvar380.us.1, 1
  %exitcond798.1.not = icmp eq i64 %polly.indvar_next381.us.1, 20
  br i1 %exitcond798.1.not, label %polly.loop_exit379.1, label %polly.loop_header377.us.1

polly.loop_exit379.1:                             ; preds = %polly.loop_exit386.loopexit.us.1, %polly.loop_exit379
  %indvars.iv.next795.1 = add nuw nsw i64 %indvars.iv.next795, 1
  %smin796.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795.1, i64 63)
  %polly.loop_guard387.2908 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard387.2908, label %polly.loop_header377.us.2, label %polly.loop_exit379.2

polly.loop_header377.us.2:                        ; preds = %polly.loop_exit379.1, %polly.loop_exit386.loopexit.us.2
  %polly.indvar380.us.2 = phi i64 [ %polly.indvar_next381.us.2, %polly.loop_exit386.loopexit.us.2 ], [ 0, %polly.loop_exit379.1 ]
  %255 = add nuw nsw i64 %polly.indvar380.us.2, %143
  %256 = shl i64 %255, 3
  %257 = add nuw nsw i64 %256, %138
  %scevgep394.us.2 = getelementptr i8, i8* %call2, i64 %257
  %scevgep394395.us.2 = bitcast i8* %scevgep394.us.2 to double*
  %_p_scalar_396.us.2 = load double, double* %scevgep394395.us.2, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us.2 = getelementptr i8, i8* %call1, i64 %257
  %scevgep400401.us.2 = bitcast i8* %scevgep400.us.2 to double*
  %_p_scalar_402.us.2 = load double, double* %scevgep400401.us.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us.2

polly.loop_header384.us.2:                        ; preds = %polly.loop_header384.us.2, %polly.loop_header377.us.2
  %polly.indvar388.us.2 = phi i64 [ %polly.indvar_next389.us.2, %polly.loop_header384.us.2 ], [ 0, %polly.loop_header377.us.2 ]
  %258 = add nuw nsw i64 %polly.indvar388.us.2, %144
  %259 = mul nuw nsw i64 %258, 480
  %260 = add nuw nsw i64 %259, %256
  %scevgep391.us.2 = getelementptr i8, i8* %call1, i64 %260
  %scevgep391392.us.2 = bitcast i8* %scevgep391.us.2 to double*
  %_p_scalar_393.us.2 = load double, double* %scevgep391392.us.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_396.us.2, %_p_scalar_393.us.2
  %scevgep397.us.2 = getelementptr i8, i8* %call2, i64 %260
  %scevgep397398.us.2 = bitcast i8* %scevgep397.us.2 to double*
  %_p_scalar_399.us.2 = load double, double* %scevgep397398.us.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_402.us.2, %_p_scalar_399.us.2
  %261 = shl i64 %258, 3
  %262 = add nuw nsw i64 %261, %139
  %scevgep403.us.2 = getelementptr i8, i8* %call, i64 %262
  %scevgep403404.us.2 = bitcast i8* %scevgep403.us.2 to double*
  %_p_scalar_405.us.2 = load double, double* %scevgep403404.us.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_405.us.2
  store double %p_add42.i79.us.2, double* %scevgep403404.us.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us.2 = add nuw nsw i64 %polly.indvar388.us.2, 1
  %exitcond797.2.not = icmp eq i64 %polly.indvar388.us.2, %smin796.2
  br i1 %exitcond797.2.not, label %polly.loop_exit386.loopexit.us.2, label %polly.loop_header384.us.2

polly.loop_exit386.loopexit.us.2:                 ; preds = %polly.loop_header384.us.2
  %polly.indvar_next381.us.2 = add nuw nsw i64 %polly.indvar380.us.2, 1
  %exitcond798.2.not = icmp eq i64 %polly.indvar_next381.us.2, 20
  br i1 %exitcond798.2.not, label %polly.loop_exit379.2, label %polly.loop_header377.us.2

polly.loop_exit379.2:                             ; preds = %polly.loop_exit386.loopexit.us.2, %polly.loop_exit379.1
  %indvars.iv.next795.2 = or i64 %indvars.iv792, 3
  %smin796.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795.2, i64 63)
  %polly.loop_guard387.3909 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard387.3909, label %polly.loop_header377.us.3, label %polly.loop_exit379.3

polly.loop_header377.us.3:                        ; preds = %polly.loop_exit379.2, %polly.loop_exit386.loopexit.us.3
  %polly.indvar380.us.3 = phi i64 [ %polly.indvar_next381.us.3, %polly.loop_exit386.loopexit.us.3 ], [ 0, %polly.loop_exit379.2 ]
  %263 = add nuw nsw i64 %polly.indvar380.us.3, %143
  %264 = shl i64 %263, 3
  %265 = add nuw nsw i64 %264, %141
  %scevgep394.us.3 = getelementptr i8, i8* %call2, i64 %265
  %scevgep394395.us.3 = bitcast i8* %scevgep394.us.3 to double*
  %_p_scalar_396.us.3 = load double, double* %scevgep394395.us.3, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us.3 = getelementptr i8, i8* %call1, i64 %265
  %scevgep400401.us.3 = bitcast i8* %scevgep400.us.3 to double*
  %_p_scalar_402.us.3 = load double, double* %scevgep400401.us.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us.3

polly.loop_header384.us.3:                        ; preds = %polly.loop_header384.us.3, %polly.loop_header377.us.3
  %polly.indvar388.us.3 = phi i64 [ %polly.indvar_next389.us.3, %polly.loop_header384.us.3 ], [ 0, %polly.loop_header377.us.3 ]
  %266 = add nuw nsw i64 %polly.indvar388.us.3, %144
  %267 = mul nuw nsw i64 %266, 480
  %268 = add nuw nsw i64 %267, %264
  %scevgep391.us.3 = getelementptr i8, i8* %call1, i64 %268
  %scevgep391392.us.3 = bitcast i8* %scevgep391.us.3 to double*
  %_p_scalar_393.us.3 = load double, double* %scevgep391392.us.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_396.us.3, %_p_scalar_393.us.3
  %scevgep397.us.3 = getelementptr i8, i8* %call2, i64 %268
  %scevgep397398.us.3 = bitcast i8* %scevgep397.us.3 to double*
  %_p_scalar_399.us.3 = load double, double* %scevgep397398.us.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_402.us.3, %_p_scalar_399.us.3
  %269 = shl i64 %266, 3
  %270 = add nuw nsw i64 %269, %142
  %scevgep403.us.3 = getelementptr i8, i8* %call, i64 %270
  %scevgep403404.us.3 = bitcast i8* %scevgep403.us.3 to double*
  %_p_scalar_405.us.3 = load double, double* %scevgep403404.us.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_405.us.3
  store double %p_add42.i79.us.3, double* %scevgep403404.us.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us.3 = add nuw nsw i64 %polly.indvar388.us.3, 1
  %exitcond797.3.not = icmp eq i64 %polly.indvar388.us.3, %smin796.3
  br i1 %exitcond797.3.not, label %polly.loop_exit386.loopexit.us.3, label %polly.loop_header384.us.3

polly.loop_exit386.loopexit.us.3:                 ; preds = %polly.loop_header384.us.3
  %polly.indvar_next381.us.3 = add nuw nsw i64 %polly.indvar380.us.3, 1
  %exitcond798.3.not = icmp eq i64 %polly.indvar_next381.us.3, 20
  br i1 %exitcond798.3.not, label %polly.loop_exit379.3, label %polly.loop_header377.us.3

polly.loop_exit379.3:                             ; preds = %polly.loop_exit386.loopexit.us.3, %polly.loop_exit379.2
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, -64
  %exitcond800.not = icmp eq i64 %polly.indvar368, %130
  br i1 %exitcond800.not, label %polly.loop_exit367, label %polly.loop_header365

polly.loop_header533.us.1:                        ; preds = %polly.loop_exit535, %polly.loop_exit542.loopexit.us.1
  %polly.indvar536.us.1 = phi i64 [ %polly.indvar_next537.us.1, %polly.loop_exit542.loopexit.us.1 ], [ 0, %polly.loop_exit535 ]
  %271 = add nuw nsw i64 %polly.indvar536.us.1, %176
  %272 = shl i64 %271, 3
  %273 = add nuw nsw i64 %272, %168
  %scevgep550.us.1 = getelementptr i8, i8* %call2, i64 %273
  %scevgep550551.us.1 = bitcast i8* %scevgep550.us.1 to double*
  %_p_scalar_552.us.1 = load double, double* %scevgep550551.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us.1 = getelementptr i8, i8* %call1, i64 %273
  %scevgep556557.us.1 = bitcast i8* %scevgep556.us.1 to double*
  %_p_scalar_558.us.1 = load double, double* %scevgep556557.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us.1

polly.loop_header540.us.1:                        ; preds = %polly.loop_header540.us.1, %polly.loop_header533.us.1
  %polly.indvar544.us.1 = phi i64 [ %polly.indvar_next545.us.1, %polly.loop_header540.us.1 ], [ 0, %polly.loop_header533.us.1 ]
  %274 = add nuw nsw i64 %polly.indvar544.us.1, %177
  %275 = mul nuw nsw i64 %274, 480
  %276 = add nuw nsw i64 %275, %272
  %scevgep547.us.1 = getelementptr i8, i8* %call1, i64 %276
  %scevgep547548.us.1 = bitcast i8* %scevgep547.us.1 to double*
  %_p_scalar_549.us.1 = load double, double* %scevgep547548.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_552.us.1, %_p_scalar_549.us.1
  %scevgep553.us.1 = getelementptr i8, i8* %call2, i64 %276
  %scevgep553554.us.1 = bitcast i8* %scevgep553.us.1 to double*
  %_p_scalar_555.us.1 = load double, double* %scevgep553554.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_558.us.1, %_p_scalar_555.us.1
  %277 = shl i64 %274, 3
  %278 = add nuw nsw i64 %277, %169
  %scevgep559.us.1 = getelementptr i8, i8* %call, i64 %278
  %scevgep559560.us.1 = bitcast i8* %scevgep559.us.1 to double*
  %_p_scalar_561.us.1 = load double, double* %scevgep559560.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_561.us.1
  store double %p_add42.i.us.1, double* %scevgep559560.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us.1 = add nuw nsw i64 %polly.indvar544.us.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar544.us.1, %smin811.1
  br i1 %exitcond812.1.not, label %polly.loop_exit542.loopexit.us.1, label %polly.loop_header540.us.1

polly.loop_exit542.loopexit.us.1:                 ; preds = %polly.loop_header540.us.1
  %polly.indvar_next537.us.1 = add nuw nsw i64 %polly.indvar536.us.1, 1
  %exitcond813.1.not = icmp eq i64 %polly.indvar_next537.us.1, 20
  br i1 %exitcond813.1.not, label %polly.loop_exit535.1, label %polly.loop_header533.us.1

polly.loop_exit535.1:                             ; preds = %polly.loop_exit542.loopexit.us.1, %polly.loop_exit535
  %indvars.iv.next810.1 = add nuw nsw i64 %indvars.iv.next810, 1
  %smin811.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next810.1, i64 63)
  %polly.loop_guard543.2912 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard543.2912, label %polly.loop_header533.us.2, label %polly.loop_exit535.2

polly.loop_header533.us.2:                        ; preds = %polly.loop_exit535.1, %polly.loop_exit542.loopexit.us.2
  %polly.indvar536.us.2 = phi i64 [ %polly.indvar_next537.us.2, %polly.loop_exit542.loopexit.us.2 ], [ 0, %polly.loop_exit535.1 ]
  %279 = add nuw nsw i64 %polly.indvar536.us.2, %176
  %280 = shl i64 %279, 3
  %281 = add nuw nsw i64 %280, %171
  %scevgep550.us.2 = getelementptr i8, i8* %call2, i64 %281
  %scevgep550551.us.2 = bitcast i8* %scevgep550.us.2 to double*
  %_p_scalar_552.us.2 = load double, double* %scevgep550551.us.2, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us.2 = getelementptr i8, i8* %call1, i64 %281
  %scevgep556557.us.2 = bitcast i8* %scevgep556.us.2 to double*
  %_p_scalar_558.us.2 = load double, double* %scevgep556557.us.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us.2

polly.loop_header540.us.2:                        ; preds = %polly.loop_header540.us.2, %polly.loop_header533.us.2
  %polly.indvar544.us.2 = phi i64 [ %polly.indvar_next545.us.2, %polly.loop_header540.us.2 ], [ 0, %polly.loop_header533.us.2 ]
  %282 = add nuw nsw i64 %polly.indvar544.us.2, %177
  %283 = mul nuw nsw i64 %282, 480
  %284 = add nuw nsw i64 %283, %280
  %scevgep547.us.2 = getelementptr i8, i8* %call1, i64 %284
  %scevgep547548.us.2 = bitcast i8* %scevgep547.us.2 to double*
  %_p_scalar_549.us.2 = load double, double* %scevgep547548.us.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_552.us.2, %_p_scalar_549.us.2
  %scevgep553.us.2 = getelementptr i8, i8* %call2, i64 %284
  %scevgep553554.us.2 = bitcast i8* %scevgep553.us.2 to double*
  %_p_scalar_555.us.2 = load double, double* %scevgep553554.us.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_558.us.2, %_p_scalar_555.us.2
  %285 = shl i64 %282, 3
  %286 = add nuw nsw i64 %285, %172
  %scevgep559.us.2 = getelementptr i8, i8* %call, i64 %286
  %scevgep559560.us.2 = bitcast i8* %scevgep559.us.2 to double*
  %_p_scalar_561.us.2 = load double, double* %scevgep559560.us.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_561.us.2
  store double %p_add42.i.us.2, double* %scevgep559560.us.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us.2 = add nuw nsw i64 %polly.indvar544.us.2, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar544.us.2, %smin811.2
  br i1 %exitcond812.2.not, label %polly.loop_exit542.loopexit.us.2, label %polly.loop_header540.us.2

polly.loop_exit542.loopexit.us.2:                 ; preds = %polly.loop_header540.us.2
  %polly.indvar_next537.us.2 = add nuw nsw i64 %polly.indvar536.us.2, 1
  %exitcond813.2.not = icmp eq i64 %polly.indvar_next537.us.2, 20
  br i1 %exitcond813.2.not, label %polly.loop_exit535.2, label %polly.loop_header533.us.2

polly.loop_exit535.2:                             ; preds = %polly.loop_exit542.loopexit.us.2, %polly.loop_exit535.1
  %indvars.iv.next810.2 = or i64 %indvars.iv807, 3
  %smin811.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next810.2, i64 63)
  %polly.loop_guard543.3913 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard543.3913, label %polly.loop_header533.us.3, label %polly.loop_exit535.3

polly.loop_header533.us.3:                        ; preds = %polly.loop_exit535.2, %polly.loop_exit542.loopexit.us.3
  %polly.indvar536.us.3 = phi i64 [ %polly.indvar_next537.us.3, %polly.loop_exit542.loopexit.us.3 ], [ 0, %polly.loop_exit535.2 ]
  %287 = add nuw nsw i64 %polly.indvar536.us.3, %176
  %288 = shl i64 %287, 3
  %289 = add nuw nsw i64 %288, %174
  %scevgep550.us.3 = getelementptr i8, i8* %call2, i64 %289
  %scevgep550551.us.3 = bitcast i8* %scevgep550.us.3 to double*
  %_p_scalar_552.us.3 = load double, double* %scevgep550551.us.3, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us.3 = getelementptr i8, i8* %call1, i64 %289
  %scevgep556557.us.3 = bitcast i8* %scevgep556.us.3 to double*
  %_p_scalar_558.us.3 = load double, double* %scevgep556557.us.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us.3

polly.loop_header540.us.3:                        ; preds = %polly.loop_header540.us.3, %polly.loop_header533.us.3
  %polly.indvar544.us.3 = phi i64 [ %polly.indvar_next545.us.3, %polly.loop_header540.us.3 ], [ 0, %polly.loop_header533.us.3 ]
  %290 = add nuw nsw i64 %polly.indvar544.us.3, %177
  %291 = mul nuw nsw i64 %290, 480
  %292 = add nuw nsw i64 %291, %288
  %scevgep547.us.3 = getelementptr i8, i8* %call1, i64 %292
  %scevgep547548.us.3 = bitcast i8* %scevgep547.us.3 to double*
  %_p_scalar_549.us.3 = load double, double* %scevgep547548.us.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_552.us.3, %_p_scalar_549.us.3
  %scevgep553.us.3 = getelementptr i8, i8* %call2, i64 %292
  %scevgep553554.us.3 = bitcast i8* %scevgep553.us.3 to double*
  %_p_scalar_555.us.3 = load double, double* %scevgep553554.us.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_558.us.3, %_p_scalar_555.us.3
  %293 = shl i64 %290, 3
  %294 = add nuw nsw i64 %293, %175
  %scevgep559.us.3 = getelementptr i8, i8* %call, i64 %294
  %scevgep559560.us.3 = bitcast i8* %scevgep559.us.3 to double*
  %_p_scalar_561.us.3 = load double, double* %scevgep559560.us.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_561.us.3
  store double %p_add42.i.us.3, double* %scevgep559560.us.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us.3 = add nuw nsw i64 %polly.indvar544.us.3, 1
  %exitcond812.3.not = icmp eq i64 %polly.indvar544.us.3, %smin811.3
  br i1 %exitcond812.3.not, label %polly.loop_exit542.loopexit.us.3, label %polly.loop_header540.us.3

polly.loop_exit542.loopexit.us.3:                 ; preds = %polly.loop_header540.us.3
  %polly.indvar_next537.us.3 = add nuw nsw i64 %polly.indvar536.us.3, 1
  %exitcond813.3.not = icmp eq i64 %polly.indvar_next537.us.3, 20
  br i1 %exitcond813.3.not, label %polly.loop_exit535.3, label %polly.loop_header533.us.3

polly.loop_exit535.3:                             ; preds = %polly.loop_exit542.loopexit.us.3, %polly.loop_exit535.2
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %indvars.iv.next808 = add nsw i64 %indvars.iv807, -64
  %exitcond815.not = icmp eq i64 %polly.indvar524, %163
  br i1 %exitcond815.not, label %polly.loop_exit523, label %polly.loop_header521

polly.loop_header753.1:                           ; preds = %polly.loop_exit761, %polly.loop_exit761.1
  %polly.indvar756.1 = phi i64 [ %polly.indvar_next757.1, %polly.loop_exit761.1 ], [ 0, %polly.loop_exit761 ]
  %295 = mul nuw nsw i64 %polly.indvar756.1, 480
  %296 = trunc i64 %polly.indvar756.1 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %296, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %polly.loop_header753.1
  %index1148 = phi i64 [ 0, %polly.loop_header753.1 ], [ %index.next1149, %vector.body1146 ]
  %vec.ind1152 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1 ], [ %vec.ind.next1153, %vector.body1146 ]
  %297 = add nuw nsw <4 x i64> %vec.ind1152, <i64 32, i64 32, i64 32, i64 32>
  %298 = trunc <4 x i64> %297 to <4 x i32>
  %299 = mul <4 x i32> %broadcast.splat1155, %298
  %300 = add <4 x i32> %299, <i32 1, i32 1, i32 1, i32 1>
  %301 = urem <4 x i32> %300, <i32 80, i32 80, i32 80, i32 80>
  %302 = sitofp <4 x i32> %301 to <4 x double>
  %303 = fmul fast <4 x double> %302, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %304 = extractelement <4 x i64> %297, i32 0
  %305 = shl i64 %304, 3
  %306 = add i64 %305, %295
  %307 = getelementptr i8, i8* %call1, i64 %306
  %308 = bitcast i8* %307 to <4 x double>*
  store <4 x double> %303, <4 x double>* %308, align 8, !alias.scope !90, !noalias !95
  %index.next1149 = add i64 %index1148, 4
  %vec.ind.next1153 = add <4 x i64> %vec.ind1152, <i64 4, i64 4, i64 4, i64 4>
  %309 = icmp eq i64 %index.next1149, 28
  br i1 %309, label %polly.loop_exit761.1, label %vector.body1146, !llvm.loop !97

polly.loop_exit761.1:                             ; preds = %vector.body1146
  %polly.indvar_next757.1 = add nuw nsw i64 %polly.indvar756.1, 1
  %exitcond824.1.not = icmp eq i64 %polly.indvar_next757.1, 32
  br i1 %exitcond824.1.not, label %polly.loop_header753.1847, label %polly.loop_header753.1

polly.loop_header753.1847:                        ; preds = %polly.loop_exit761.1, %polly.loop_exit761.1858
  %polly.indvar756.1846 = phi i64 [ %polly.indvar_next757.1856, %polly.loop_exit761.1858 ], [ 0, %polly.loop_exit761.1 ]
  %310 = add nuw nsw i64 %polly.indvar756.1846, 32
  %311 = mul nuw nsw i64 %310, 480
  %312 = trunc i64 %310 to i32
  %broadcast.splatinsert1168 = insertelement <4 x i32> poison, i32 %312, i32 0
  %broadcast.splat1169 = shufflevector <4 x i32> %broadcast.splatinsert1168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header753.1847
  %index1160 = phi i64 [ 0, %polly.loop_header753.1847 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1166 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.1847 ], [ %vec.ind.next1167, %vector.body1158 ]
  %313 = mul <4 x i32> %vec.ind1166, %broadcast.splat1169
  %314 = add <4 x i32> %313, <i32 1, i32 1, i32 1, i32 1>
  %315 = urem <4 x i32> %314, <i32 80, i32 80, i32 80, i32 80>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %318 = shl i64 %index1160, 3
  %319 = add i64 %318, %311
  %320 = getelementptr i8, i8* %call1, i64 %319
  %321 = bitcast i8* %320 to <4 x double>*
  store <4 x double> %317, <4 x double>* %321, align 8, !alias.scope !90, !noalias !95
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1167 = add <4 x i32> %vec.ind1166, <i32 4, i32 4, i32 4, i32 4>
  %322 = icmp eq i64 %index.next1161, 32
  br i1 %322, label %polly.loop_exit761.1858, label %vector.body1158, !llvm.loop !98

polly.loop_exit761.1858:                          ; preds = %vector.body1158
  %polly.indvar_next757.1856 = add nuw nsw i64 %polly.indvar756.1846, 1
  %exitcond824.1857.not = icmp eq i64 %polly.indvar_next757.1856, 32
  br i1 %exitcond824.1857.not, label %polly.loop_header753.1.1, label %polly.loop_header753.1847

polly.loop_header753.1.1:                         ; preds = %polly.loop_exit761.1858, %polly.loop_exit761.1.1
  %polly.indvar756.1.1 = phi i64 [ %polly.indvar_next757.1.1, %polly.loop_exit761.1.1 ], [ 0, %polly.loop_exit761.1858 ]
  %323 = add nuw nsw i64 %polly.indvar756.1.1, 32
  %324 = mul nuw nsw i64 %323, 480
  %325 = trunc i64 %323 to i32
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %325, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %polly.loop_header753.1.1
  %index1174 = phi i64 [ 0, %polly.loop_header753.1.1 ], [ %index.next1175, %vector.body1172 ]
  %vec.ind1178 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.1 ], [ %vec.ind.next1179, %vector.body1172 ]
  %326 = add nuw nsw <4 x i64> %vec.ind1178, <i64 32, i64 32, i64 32, i64 32>
  %327 = trunc <4 x i64> %326 to <4 x i32>
  %328 = mul <4 x i32> %broadcast.splat1181, %327
  %329 = add <4 x i32> %328, <i32 1, i32 1, i32 1, i32 1>
  %330 = urem <4 x i32> %329, <i32 80, i32 80, i32 80, i32 80>
  %331 = sitofp <4 x i32> %330 to <4 x double>
  %332 = fmul fast <4 x double> %331, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %333 = extractelement <4 x i64> %326, i32 0
  %334 = shl i64 %333, 3
  %335 = add i64 %334, %324
  %336 = getelementptr i8, i8* %call1, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %332, <4 x double>* %337, align 8, !alias.scope !90, !noalias !95
  %index.next1175 = add i64 %index1174, 4
  %vec.ind.next1179 = add <4 x i64> %vec.ind1178, <i64 4, i64 4, i64 4, i64 4>
  %338 = icmp eq i64 %index.next1175, 28
  br i1 %338, label %polly.loop_exit761.1.1, label %vector.body1172, !llvm.loop !99

polly.loop_exit761.1.1:                           ; preds = %vector.body1172
  %polly.indvar_next757.1.1 = add nuw nsw i64 %polly.indvar756.1.1, 1
  %exitcond824.1.1.not = icmp eq i64 %polly.indvar_next757.1.1, 32
  br i1 %exitcond824.1.1.not, label %polly.loop_header753.2, label %polly.loop_header753.1.1

polly.loop_header753.2:                           ; preds = %polly.loop_exit761.1.1, %polly.loop_exit761.2
  %polly.indvar756.2 = phi i64 [ %polly.indvar_next757.2, %polly.loop_exit761.2 ], [ 0, %polly.loop_exit761.1.1 ]
  %339 = add nuw nsw i64 %polly.indvar756.2, 64
  %340 = mul nuw nsw i64 %339, 480
  %341 = trunc i64 %339 to i32
  %broadcast.splatinsert1194 = insertelement <4 x i32> poison, i32 %341, i32 0
  %broadcast.splat1195 = shufflevector <4 x i32> %broadcast.splatinsert1194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %polly.loop_header753.2
  %index1186 = phi i64 [ 0, %polly.loop_header753.2 ], [ %index.next1187, %vector.body1184 ]
  %vec.ind1192 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.2 ], [ %vec.ind.next1193, %vector.body1184 ]
  %342 = mul <4 x i32> %vec.ind1192, %broadcast.splat1195
  %343 = add <4 x i32> %342, <i32 1, i32 1, i32 1, i32 1>
  %344 = urem <4 x i32> %343, <i32 80, i32 80, i32 80, i32 80>
  %345 = sitofp <4 x i32> %344 to <4 x double>
  %346 = fmul fast <4 x double> %345, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %347 = shl i64 %index1186, 3
  %348 = add i64 %347, %340
  %349 = getelementptr i8, i8* %call1, i64 %348
  %350 = bitcast i8* %349 to <4 x double>*
  store <4 x double> %346, <4 x double>* %350, align 8, !alias.scope !90, !noalias !95
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1193 = add <4 x i32> %vec.ind1192, <i32 4, i32 4, i32 4, i32 4>
  %351 = icmp eq i64 %index.next1187, 32
  br i1 %351, label %polly.loop_exit761.2, label %vector.body1184, !llvm.loop !100

polly.loop_exit761.2:                             ; preds = %vector.body1184
  %polly.indvar_next757.2 = add nuw nsw i64 %polly.indvar756.2, 1
  %exitcond824.2.not = icmp eq i64 %polly.indvar_next757.2, 16
  br i1 %exitcond824.2.not, label %polly.loop_header753.1.2, label %polly.loop_header753.2

polly.loop_header753.1.2:                         ; preds = %polly.loop_exit761.2, %polly.loop_exit761.1.2
  %polly.indvar756.1.2 = phi i64 [ %polly.indvar_next757.1.2, %polly.loop_exit761.1.2 ], [ 0, %polly.loop_exit761.2 ]
  %352 = add nuw nsw i64 %polly.indvar756.1.2, 64
  %353 = mul nuw nsw i64 %352, 480
  %354 = trunc i64 %352 to i32
  %broadcast.splatinsert1206 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1207 = shufflevector <4 x i32> %broadcast.splatinsert1206, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %polly.loop_header753.1.2
  %index1200 = phi i64 [ 0, %polly.loop_header753.1.2 ], [ %index.next1201, %vector.body1198 ]
  %vec.ind1204 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.2 ], [ %vec.ind.next1205, %vector.body1198 ]
  %355 = add nuw nsw <4 x i64> %vec.ind1204, <i64 32, i64 32, i64 32, i64 32>
  %356 = trunc <4 x i64> %355 to <4 x i32>
  %357 = mul <4 x i32> %broadcast.splat1207, %356
  %358 = add <4 x i32> %357, <i32 1, i32 1, i32 1, i32 1>
  %359 = urem <4 x i32> %358, <i32 80, i32 80, i32 80, i32 80>
  %360 = sitofp <4 x i32> %359 to <4 x double>
  %361 = fmul fast <4 x double> %360, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %362 = extractelement <4 x i64> %355, i32 0
  %363 = shl i64 %362, 3
  %364 = add i64 %363, %353
  %365 = getelementptr i8, i8* %call1, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %361, <4 x double>* %366, align 8, !alias.scope !90, !noalias !95
  %index.next1201 = add i64 %index1200, 4
  %vec.ind.next1205 = add <4 x i64> %vec.ind1204, <i64 4, i64 4, i64 4, i64 4>
  %367 = icmp eq i64 %index.next1201, 28
  br i1 %367, label %polly.loop_exit761.1.2, label %vector.body1198, !llvm.loop !101

polly.loop_exit761.1.2:                           ; preds = %vector.body1198
  %polly.indvar_next757.1.2 = add nuw nsw i64 %polly.indvar756.1.2, 1
  %exitcond824.1.2.not = icmp eq i64 %polly.indvar_next757.1.2, 16
  br i1 %exitcond824.1.2.not, label %init_array.exit, label %polly.loop_header753.1.2

polly.loop_header727.1:                           ; preds = %polly.loop_exit735, %polly.loop_exit735.1
  %polly.indvar730.1 = phi i64 [ %polly.indvar_next731.1, %polly.loop_exit735.1 ], [ 0, %polly.loop_exit735 ]
  %368 = mul nuw nsw i64 %polly.indvar730.1, 480
  %369 = trunc i64 %polly.indvar730.1 to i32
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %369, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1068

vector.body1068:                                  ; preds = %vector.body1068, %polly.loop_header727.1
  %index1070 = phi i64 [ 0, %polly.loop_header727.1 ], [ %index.next1071, %vector.body1068 ]
  %vec.ind1074 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1 ], [ %vec.ind.next1075, %vector.body1068 ]
  %370 = add nuw nsw <4 x i64> %vec.ind1074, <i64 32, i64 32, i64 32, i64 32>
  %371 = trunc <4 x i64> %370 to <4 x i32>
  %372 = mul <4 x i32> %broadcast.splat1077, %371
  %373 = add <4 x i32> %372, <i32 2, i32 2, i32 2, i32 2>
  %374 = urem <4 x i32> %373, <i32 60, i32 60, i32 60, i32 60>
  %375 = sitofp <4 x i32> %374 to <4 x double>
  %376 = fmul fast <4 x double> %375, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %377 = extractelement <4 x i64> %370, i32 0
  %378 = shl i64 %377, 3
  %379 = add i64 %378, %368
  %380 = getelementptr i8, i8* %call2, i64 %379
  %381 = bitcast i8* %380 to <4 x double>*
  store <4 x double> %376, <4 x double>* %381, align 8, !alias.scope !91, !noalias !93
  %index.next1071 = add i64 %index1070, 4
  %vec.ind.next1075 = add <4 x i64> %vec.ind1074, <i64 4, i64 4, i64 4, i64 4>
  %382 = icmp eq i64 %index.next1071, 28
  br i1 %382, label %polly.loop_exit735.1, label %vector.body1068, !llvm.loop !102

polly.loop_exit735.1:                             ; preds = %vector.body1068
  %polly.indvar_next731.1 = add nuw nsw i64 %polly.indvar730.1, 1
  %exitcond830.1.not = icmp eq i64 %polly.indvar_next731.1, 32
  br i1 %exitcond830.1.not, label %polly.loop_header727.1861, label %polly.loop_header727.1

polly.loop_header727.1861:                        ; preds = %polly.loop_exit735.1, %polly.loop_exit735.1872
  %polly.indvar730.1860 = phi i64 [ %polly.indvar_next731.1870, %polly.loop_exit735.1872 ], [ 0, %polly.loop_exit735.1 ]
  %383 = add nuw nsw i64 %polly.indvar730.1860, 32
  %384 = mul nuw nsw i64 %383, 480
  %385 = trunc i64 %383 to i32
  %broadcast.splatinsert1090 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1091 = shufflevector <4 x i32> %broadcast.splatinsert1090, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %polly.loop_header727.1861
  %index1082 = phi i64 [ 0, %polly.loop_header727.1861 ], [ %index.next1083, %vector.body1080 ]
  %vec.ind1088 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.1861 ], [ %vec.ind.next1089, %vector.body1080 ]
  %386 = mul <4 x i32> %vec.ind1088, %broadcast.splat1091
  %387 = add <4 x i32> %386, <i32 2, i32 2, i32 2, i32 2>
  %388 = urem <4 x i32> %387, <i32 60, i32 60, i32 60, i32 60>
  %389 = sitofp <4 x i32> %388 to <4 x double>
  %390 = fmul fast <4 x double> %389, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %391 = shl i64 %index1082, 3
  %392 = add i64 %391, %384
  %393 = getelementptr i8, i8* %call2, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %390, <4 x double>* %394, align 8, !alias.scope !91, !noalias !93
  %index.next1083 = add i64 %index1082, 4
  %vec.ind.next1089 = add <4 x i32> %vec.ind1088, <i32 4, i32 4, i32 4, i32 4>
  %395 = icmp eq i64 %index.next1083, 32
  br i1 %395, label %polly.loop_exit735.1872, label %vector.body1080, !llvm.loop !103

polly.loop_exit735.1872:                          ; preds = %vector.body1080
  %polly.indvar_next731.1870 = add nuw nsw i64 %polly.indvar730.1860, 1
  %exitcond830.1871.not = icmp eq i64 %polly.indvar_next731.1870, 32
  br i1 %exitcond830.1871.not, label %polly.loop_header727.1.1, label %polly.loop_header727.1861

polly.loop_header727.1.1:                         ; preds = %polly.loop_exit735.1872, %polly.loop_exit735.1.1
  %polly.indvar730.1.1 = phi i64 [ %polly.indvar_next731.1.1, %polly.loop_exit735.1.1 ], [ 0, %polly.loop_exit735.1872 ]
  %396 = add nuw nsw i64 %polly.indvar730.1.1, 32
  %397 = mul nuw nsw i64 %396, 480
  %398 = trunc i64 %396 to i32
  %broadcast.splatinsert1102 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat1103 = shufflevector <4 x i32> %broadcast.splatinsert1102, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %polly.loop_header727.1.1
  %index1096 = phi i64 [ 0, %polly.loop_header727.1.1 ], [ %index.next1097, %vector.body1094 ]
  %vec.ind1100 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.1 ], [ %vec.ind.next1101, %vector.body1094 ]
  %399 = add nuw nsw <4 x i64> %vec.ind1100, <i64 32, i64 32, i64 32, i64 32>
  %400 = trunc <4 x i64> %399 to <4 x i32>
  %401 = mul <4 x i32> %broadcast.splat1103, %400
  %402 = add <4 x i32> %401, <i32 2, i32 2, i32 2, i32 2>
  %403 = urem <4 x i32> %402, <i32 60, i32 60, i32 60, i32 60>
  %404 = sitofp <4 x i32> %403 to <4 x double>
  %405 = fmul fast <4 x double> %404, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %406 = extractelement <4 x i64> %399, i32 0
  %407 = shl i64 %406, 3
  %408 = add i64 %407, %397
  %409 = getelementptr i8, i8* %call2, i64 %408
  %410 = bitcast i8* %409 to <4 x double>*
  store <4 x double> %405, <4 x double>* %410, align 8, !alias.scope !91, !noalias !93
  %index.next1097 = add i64 %index1096, 4
  %vec.ind.next1101 = add <4 x i64> %vec.ind1100, <i64 4, i64 4, i64 4, i64 4>
  %411 = icmp eq i64 %index.next1097, 28
  br i1 %411, label %polly.loop_exit735.1.1, label %vector.body1094, !llvm.loop !104

polly.loop_exit735.1.1:                           ; preds = %vector.body1094
  %polly.indvar_next731.1.1 = add nuw nsw i64 %polly.indvar730.1.1, 1
  %exitcond830.1.1.not = icmp eq i64 %polly.indvar_next731.1.1, 32
  br i1 %exitcond830.1.1.not, label %polly.loop_header727.2, label %polly.loop_header727.1.1

polly.loop_header727.2:                           ; preds = %polly.loop_exit735.1.1, %polly.loop_exit735.2
  %polly.indvar730.2 = phi i64 [ %polly.indvar_next731.2, %polly.loop_exit735.2 ], [ 0, %polly.loop_exit735.1.1 ]
  %412 = add nuw nsw i64 %polly.indvar730.2, 64
  %413 = mul nuw nsw i64 %412, 480
  %414 = trunc i64 %412 to i32
  %broadcast.splatinsert1116 = insertelement <4 x i32> poison, i32 %414, i32 0
  %broadcast.splat1117 = shufflevector <4 x i32> %broadcast.splatinsert1116, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %polly.loop_header727.2
  %index1108 = phi i64 [ 0, %polly.loop_header727.2 ], [ %index.next1109, %vector.body1106 ]
  %vec.ind1114 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.2 ], [ %vec.ind.next1115, %vector.body1106 ]
  %415 = mul <4 x i32> %vec.ind1114, %broadcast.splat1117
  %416 = add <4 x i32> %415, <i32 2, i32 2, i32 2, i32 2>
  %417 = urem <4 x i32> %416, <i32 60, i32 60, i32 60, i32 60>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = shl i64 %index1108, 3
  %421 = add i64 %420, %413
  %422 = getelementptr i8, i8* %call2, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %419, <4 x double>* %423, align 8, !alias.scope !91, !noalias !93
  %index.next1109 = add i64 %index1108, 4
  %vec.ind.next1115 = add <4 x i32> %vec.ind1114, <i32 4, i32 4, i32 4, i32 4>
  %424 = icmp eq i64 %index.next1109, 32
  br i1 %424, label %polly.loop_exit735.2, label %vector.body1106, !llvm.loop !105

polly.loop_exit735.2:                             ; preds = %vector.body1106
  %polly.indvar_next731.2 = add nuw nsw i64 %polly.indvar730.2, 1
  %exitcond830.2.not = icmp eq i64 %polly.indvar_next731.2, 16
  br i1 %exitcond830.2.not, label %polly.loop_header727.1.2, label %polly.loop_header727.2

polly.loop_header727.1.2:                         ; preds = %polly.loop_exit735.2, %polly.loop_exit735.1.2
  %polly.indvar730.1.2 = phi i64 [ %polly.indvar_next731.1.2, %polly.loop_exit735.1.2 ], [ 0, %polly.loop_exit735.2 ]
  %425 = add nuw nsw i64 %polly.indvar730.1.2, 64
  %426 = mul nuw nsw i64 %425, 480
  %427 = trunc i64 %425 to i32
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %polly.loop_header727.1.2
  %index1122 = phi i64 [ 0, %polly.loop_header727.1.2 ], [ %index.next1123, %vector.body1120 ]
  %vec.ind1126 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.2 ], [ %vec.ind.next1127, %vector.body1120 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1126, <i64 32, i64 32, i64 32, i64 32>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1129, %429
  %431 = add <4 x i32> %430, <i32 2, i32 2, i32 2, i32 2>
  %432 = urem <4 x i32> %431, <i32 60, i32 60, i32 60, i32 60>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add i64 %436, %426
  %438 = getelementptr i8, i8* %call2, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !91, !noalias !93
  %index.next1123 = add i64 %index1122, 4
  %vec.ind.next1127 = add <4 x i64> %vec.ind1126, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1123, 28
  br i1 %440, label %polly.loop_exit735.1.2, label %vector.body1120, !llvm.loop !106

polly.loop_exit735.1.2:                           ; preds = %vector.body1120
  %polly.indvar_next731.1.2 = add nuw nsw i64 %polly.indvar730.1.2, 1
  %exitcond830.1.2.not = icmp eq i64 %polly.indvar_next731.1.2, 16
  br i1 %exitcond830.1.2.not, label %polly.loop_header753, label %polly.loop_header727.1.2

polly.loop_header700.1:                           ; preds = %polly.loop_exit708, %polly.loop_exit708.1
  %polly.indvar703.1 = phi i64 [ %polly.indvar_next704.1, %polly.loop_exit708.1 ], [ 0, %polly.loop_exit708 ]
  %441 = mul nuw nsw i64 %polly.indvar703.1, 640
  %442 = trunc i64 %polly.indvar703.1 to i32
  %broadcast.splatinsert962 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat963 = shufflevector <4 x i32> %broadcast.splatinsert962, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %polly.loop_header700.1
  %index956 = phi i64 [ 0, %polly.loop_header700.1 ], [ %index.next957, %vector.body954 ]
  %vec.ind960 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1 ], [ %vec.ind.next961, %vector.body954 ]
  %443 = add nuw nsw <4 x i64> %vec.ind960, <i64 32, i64 32, i64 32, i64 32>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat963, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !87, !noalias !89
  %index.next957 = add i64 %index956, 4
  %vec.ind.next961 = add <4 x i64> %vec.ind960, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next957, 32
  br i1 %455, label %polly.loop_exit708.1, label %vector.body954, !llvm.loop !107

polly.loop_exit708.1:                             ; preds = %vector.body954
  %polly.indvar_next704.1 = add nuw nsw i64 %polly.indvar703.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar_next704.1, 32
  br i1 %exitcond839.1.not, label %polly.loop_header700.2, label %polly.loop_header700.1

polly.loop_header700.2:                           ; preds = %polly.loop_exit708.1, %polly.loop_exit708.2
  %polly.indvar703.2 = phi i64 [ %polly.indvar_next704.2, %polly.loop_exit708.2 ], [ 0, %polly.loop_exit708.1 ]
  %456 = mul nuw nsw i64 %polly.indvar703.2, 640
  %457 = trunc i64 %polly.indvar703.2 to i32
  %broadcast.splatinsert974 = insertelement <4 x i32> poison, i32 %457, i32 0
  %broadcast.splat975 = shufflevector <4 x i32> %broadcast.splatinsert974, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %polly.loop_header700.2
  %index968 = phi i64 [ 0, %polly.loop_header700.2 ], [ %index.next969, %vector.body966 ]
  %vec.ind972 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2 ], [ %vec.ind.next973, %vector.body966 ]
  %458 = add nuw nsw <4 x i64> %vec.ind972, <i64 64, i64 64, i64 64, i64 64>
  %459 = trunc <4 x i64> %458 to <4 x i32>
  %460 = mul <4 x i32> %broadcast.splat975, %459
  %461 = add <4 x i32> %460, <i32 3, i32 3, i32 3, i32 3>
  %462 = urem <4 x i32> %461, <i32 80, i32 80, i32 80, i32 80>
  %463 = sitofp <4 x i32> %462 to <4 x double>
  %464 = fmul fast <4 x double> %463, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %465 = extractelement <4 x i64> %458, i32 0
  %466 = shl i64 %465, 3
  %467 = add nuw nsw i64 %466, %456
  %468 = getelementptr i8, i8* %call, i64 %467
  %469 = bitcast i8* %468 to <4 x double>*
  store <4 x double> %464, <4 x double>* %469, align 8, !alias.scope !87, !noalias !89
  %index.next969 = add i64 %index968, 4
  %vec.ind.next973 = add <4 x i64> %vec.ind972, <i64 4, i64 4, i64 4, i64 4>
  %470 = icmp eq i64 %index.next969, 16
  br i1 %470, label %polly.loop_exit708.2, label %vector.body966, !llvm.loop !108

polly.loop_exit708.2:                             ; preds = %vector.body966
  %polly.indvar_next704.2 = add nuw nsw i64 %polly.indvar703.2, 1
  %exitcond839.2.not = icmp eq i64 %polly.indvar_next704.2, 32
  br i1 %exitcond839.2.not, label %polly.loop_header700.1875, label %polly.loop_header700.2

polly.loop_header700.1875:                        ; preds = %polly.loop_exit708.2, %polly.loop_exit708.1886
  %polly.indvar703.1874 = phi i64 [ %polly.indvar_next704.1884, %polly.loop_exit708.1886 ], [ 0, %polly.loop_exit708.2 ]
  %471 = add nuw nsw i64 %polly.indvar703.1874, 32
  %472 = mul nuw nsw i64 %471, 640
  %473 = trunc i64 %471 to i32
  %broadcast.splatinsert988 = insertelement <4 x i32> poison, i32 %473, i32 0
  %broadcast.splat989 = shufflevector <4 x i32> %broadcast.splatinsert988, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body978

vector.body978:                                   ; preds = %vector.body978, %polly.loop_header700.1875
  %index980 = phi i64 [ 0, %polly.loop_header700.1875 ], [ %index.next981, %vector.body978 ]
  %vec.ind986 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.1875 ], [ %vec.ind.next987, %vector.body978 ]
  %474 = mul <4 x i32> %vec.ind986, %broadcast.splat989
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = shl i64 %index980, 3
  %480 = add nuw nsw i64 %479, %472
  %481 = getelementptr i8, i8* %call, i64 %480
  %482 = bitcast i8* %481 to <4 x double>*
  store <4 x double> %478, <4 x double>* %482, align 8, !alias.scope !87, !noalias !89
  %index.next981 = add i64 %index980, 4
  %vec.ind.next987 = add <4 x i32> %vec.ind986, <i32 4, i32 4, i32 4, i32 4>
  %483 = icmp eq i64 %index.next981, 32
  br i1 %483, label %polly.loop_exit708.1886, label %vector.body978, !llvm.loop !109

polly.loop_exit708.1886:                          ; preds = %vector.body978
  %polly.indvar_next704.1884 = add nuw nsw i64 %polly.indvar703.1874, 1
  %exitcond839.1885.not = icmp eq i64 %polly.indvar_next704.1884, 32
  br i1 %exitcond839.1885.not, label %polly.loop_header700.1.1, label %polly.loop_header700.1875

polly.loop_header700.1.1:                         ; preds = %polly.loop_exit708.1886, %polly.loop_exit708.1.1
  %polly.indvar703.1.1 = phi i64 [ %polly.indvar_next704.1.1, %polly.loop_exit708.1.1 ], [ 0, %polly.loop_exit708.1886 ]
  %484 = add nuw nsw i64 %polly.indvar703.1.1, 32
  %485 = mul nuw nsw i64 %484, 640
  %486 = trunc i64 %484 to i32
  %broadcast.splatinsert1000 = insertelement <4 x i32> poison, i32 %486, i32 0
  %broadcast.splat1001 = shufflevector <4 x i32> %broadcast.splatinsert1000, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %polly.loop_header700.1.1
  %index994 = phi i64 [ 0, %polly.loop_header700.1.1 ], [ %index.next995, %vector.body992 ]
  %vec.ind998 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.1 ], [ %vec.ind.next999, %vector.body992 ]
  %487 = add nuw nsw <4 x i64> %vec.ind998, <i64 32, i64 32, i64 32, i64 32>
  %488 = trunc <4 x i64> %487 to <4 x i32>
  %489 = mul <4 x i32> %broadcast.splat1001, %488
  %490 = add <4 x i32> %489, <i32 3, i32 3, i32 3, i32 3>
  %491 = urem <4 x i32> %490, <i32 80, i32 80, i32 80, i32 80>
  %492 = sitofp <4 x i32> %491 to <4 x double>
  %493 = fmul fast <4 x double> %492, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %494 = extractelement <4 x i64> %487, i32 0
  %495 = shl i64 %494, 3
  %496 = add nuw nsw i64 %495, %485
  %497 = getelementptr i8, i8* %call, i64 %496
  %498 = bitcast i8* %497 to <4 x double>*
  store <4 x double> %493, <4 x double>* %498, align 8, !alias.scope !87, !noalias !89
  %index.next995 = add i64 %index994, 4
  %vec.ind.next999 = add <4 x i64> %vec.ind998, <i64 4, i64 4, i64 4, i64 4>
  %499 = icmp eq i64 %index.next995, 32
  br i1 %499, label %polly.loop_exit708.1.1, label %vector.body992, !llvm.loop !110

polly.loop_exit708.1.1:                           ; preds = %vector.body992
  %polly.indvar_next704.1.1 = add nuw nsw i64 %polly.indvar703.1.1, 1
  %exitcond839.1.1.not = icmp eq i64 %polly.indvar_next704.1.1, 32
  br i1 %exitcond839.1.1.not, label %polly.loop_header700.2.1, label %polly.loop_header700.1.1

polly.loop_header700.2.1:                         ; preds = %polly.loop_exit708.1.1, %polly.loop_exit708.2.1
  %polly.indvar703.2.1 = phi i64 [ %polly.indvar_next704.2.1, %polly.loop_exit708.2.1 ], [ 0, %polly.loop_exit708.1.1 ]
  %500 = add nuw nsw i64 %polly.indvar703.2.1, 32
  %501 = mul nuw nsw i64 %500, 640
  %502 = trunc i64 %500 to i32
  %broadcast.splatinsert1012 = insertelement <4 x i32> poison, i32 %502, i32 0
  %broadcast.splat1013 = shufflevector <4 x i32> %broadcast.splatinsert1012, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %polly.loop_header700.2.1
  %index1006 = phi i64 [ 0, %polly.loop_header700.2.1 ], [ %index.next1007, %vector.body1004 ]
  %vec.ind1010 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.1 ], [ %vec.ind.next1011, %vector.body1004 ]
  %503 = add nuw nsw <4 x i64> %vec.ind1010, <i64 64, i64 64, i64 64, i64 64>
  %504 = trunc <4 x i64> %503 to <4 x i32>
  %505 = mul <4 x i32> %broadcast.splat1013, %504
  %506 = add <4 x i32> %505, <i32 3, i32 3, i32 3, i32 3>
  %507 = urem <4 x i32> %506, <i32 80, i32 80, i32 80, i32 80>
  %508 = sitofp <4 x i32> %507 to <4 x double>
  %509 = fmul fast <4 x double> %508, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %510 = extractelement <4 x i64> %503, i32 0
  %511 = shl i64 %510, 3
  %512 = add nuw nsw i64 %511, %501
  %513 = getelementptr i8, i8* %call, i64 %512
  %514 = bitcast i8* %513 to <4 x double>*
  store <4 x double> %509, <4 x double>* %514, align 8, !alias.scope !87, !noalias !89
  %index.next1007 = add i64 %index1006, 4
  %vec.ind.next1011 = add <4 x i64> %vec.ind1010, <i64 4, i64 4, i64 4, i64 4>
  %515 = icmp eq i64 %index.next1007, 16
  br i1 %515, label %polly.loop_exit708.2.1, label %vector.body1004, !llvm.loop !111

polly.loop_exit708.2.1:                           ; preds = %vector.body1004
  %polly.indvar_next704.2.1 = add nuw nsw i64 %polly.indvar703.2.1, 1
  %exitcond839.2.1.not = icmp eq i64 %polly.indvar_next704.2.1, 32
  br i1 %exitcond839.2.1.not, label %polly.loop_header700.2889, label %polly.loop_header700.2.1

polly.loop_header700.2889:                        ; preds = %polly.loop_exit708.2.1, %polly.loop_exit708.2900
  %polly.indvar703.2888 = phi i64 [ %polly.indvar_next704.2898, %polly.loop_exit708.2900 ], [ 0, %polly.loop_exit708.2.1 ]
  %516 = add nuw nsw i64 %polly.indvar703.2888, 64
  %517 = mul nuw nsw i64 %516, 640
  %518 = trunc i64 %516 to i32
  %broadcast.splatinsert1026 = insertelement <4 x i32> poison, i32 %518, i32 0
  %broadcast.splat1027 = shufflevector <4 x i32> %broadcast.splatinsert1026, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %polly.loop_header700.2889
  %index1018 = phi i64 [ 0, %polly.loop_header700.2889 ], [ %index.next1019, %vector.body1016 ]
  %vec.ind1024 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.2889 ], [ %vec.ind.next1025, %vector.body1016 ]
  %519 = mul <4 x i32> %vec.ind1024, %broadcast.splat1027
  %520 = add <4 x i32> %519, <i32 3, i32 3, i32 3, i32 3>
  %521 = urem <4 x i32> %520, <i32 80, i32 80, i32 80, i32 80>
  %522 = sitofp <4 x i32> %521 to <4 x double>
  %523 = fmul fast <4 x double> %522, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %524 = shl i64 %index1018, 3
  %525 = add nuw nsw i64 %524, %517
  %526 = getelementptr i8, i8* %call, i64 %525
  %527 = bitcast i8* %526 to <4 x double>*
  store <4 x double> %523, <4 x double>* %527, align 8, !alias.scope !87, !noalias !89
  %index.next1019 = add i64 %index1018, 4
  %vec.ind.next1025 = add <4 x i32> %vec.ind1024, <i32 4, i32 4, i32 4, i32 4>
  %528 = icmp eq i64 %index.next1019, 32
  br i1 %528, label %polly.loop_exit708.2900, label %vector.body1016, !llvm.loop !112

polly.loop_exit708.2900:                          ; preds = %vector.body1016
  %polly.indvar_next704.2898 = add nuw nsw i64 %polly.indvar703.2888, 1
  %exitcond839.2899.not = icmp eq i64 %polly.indvar_next704.2898, 16
  br i1 %exitcond839.2899.not, label %polly.loop_header700.1.2, label %polly.loop_header700.2889

polly.loop_header700.1.2:                         ; preds = %polly.loop_exit708.2900, %polly.loop_exit708.1.2
  %polly.indvar703.1.2 = phi i64 [ %polly.indvar_next704.1.2, %polly.loop_exit708.1.2 ], [ 0, %polly.loop_exit708.2900 ]
  %529 = add nuw nsw i64 %polly.indvar703.1.2, 64
  %530 = mul nuw nsw i64 %529, 640
  %531 = trunc i64 %529 to i32
  %broadcast.splatinsert1038 = insertelement <4 x i32> poison, i32 %531, i32 0
  %broadcast.splat1039 = shufflevector <4 x i32> %broadcast.splatinsert1038, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %polly.loop_header700.1.2
  %index1032 = phi i64 [ 0, %polly.loop_header700.1.2 ], [ %index.next1033, %vector.body1030 ]
  %vec.ind1036 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.2 ], [ %vec.ind.next1037, %vector.body1030 ]
  %532 = add nuw nsw <4 x i64> %vec.ind1036, <i64 32, i64 32, i64 32, i64 32>
  %533 = trunc <4 x i64> %532 to <4 x i32>
  %534 = mul <4 x i32> %broadcast.splat1039, %533
  %535 = add <4 x i32> %534, <i32 3, i32 3, i32 3, i32 3>
  %536 = urem <4 x i32> %535, <i32 80, i32 80, i32 80, i32 80>
  %537 = sitofp <4 x i32> %536 to <4 x double>
  %538 = fmul fast <4 x double> %537, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %539 = extractelement <4 x i64> %532, i32 0
  %540 = shl i64 %539, 3
  %541 = add nuw nsw i64 %540, %530
  %542 = getelementptr i8, i8* %call, i64 %541
  %543 = bitcast i8* %542 to <4 x double>*
  store <4 x double> %538, <4 x double>* %543, align 8, !alias.scope !87, !noalias !89
  %index.next1033 = add i64 %index1032, 4
  %vec.ind.next1037 = add <4 x i64> %vec.ind1036, <i64 4, i64 4, i64 4, i64 4>
  %544 = icmp eq i64 %index.next1033, 32
  br i1 %544, label %polly.loop_exit708.1.2, label %vector.body1030, !llvm.loop !113

polly.loop_exit708.1.2:                           ; preds = %vector.body1030
  %polly.indvar_next704.1.2 = add nuw nsw i64 %polly.indvar703.1.2, 1
  %exitcond839.1.2.not = icmp eq i64 %polly.indvar_next704.1.2, 16
  br i1 %exitcond839.1.2.not, label %polly.loop_header700.2.2, label %polly.loop_header700.1.2

polly.loop_header700.2.2:                         ; preds = %polly.loop_exit708.1.2, %polly.loop_exit708.2.2
  %polly.indvar703.2.2 = phi i64 [ %polly.indvar_next704.2.2, %polly.loop_exit708.2.2 ], [ 0, %polly.loop_exit708.1.2 ]
  %545 = add nuw nsw i64 %polly.indvar703.2.2, 64
  %546 = mul nuw nsw i64 %545, 640
  %547 = trunc i64 %545 to i32
  %broadcast.splatinsert1050 = insertelement <4 x i32> poison, i32 %547, i32 0
  %broadcast.splat1051 = shufflevector <4 x i32> %broadcast.splatinsert1050, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %polly.loop_header700.2.2
  %index1044 = phi i64 [ 0, %polly.loop_header700.2.2 ], [ %index.next1045, %vector.body1042 ]
  %vec.ind1048 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.2 ], [ %vec.ind.next1049, %vector.body1042 ]
  %548 = add nuw nsw <4 x i64> %vec.ind1048, <i64 64, i64 64, i64 64, i64 64>
  %549 = trunc <4 x i64> %548 to <4 x i32>
  %550 = mul <4 x i32> %broadcast.splat1051, %549
  %551 = add <4 x i32> %550, <i32 3, i32 3, i32 3, i32 3>
  %552 = urem <4 x i32> %551, <i32 80, i32 80, i32 80, i32 80>
  %553 = sitofp <4 x i32> %552 to <4 x double>
  %554 = fmul fast <4 x double> %553, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %555 = extractelement <4 x i64> %548, i32 0
  %556 = shl i64 %555, 3
  %557 = add nuw nsw i64 %556, %546
  %558 = getelementptr i8, i8* %call, i64 %557
  %559 = bitcast i8* %558 to <4 x double>*
  store <4 x double> %554, <4 x double>* %559, align 8, !alias.scope !87, !noalias !89
  %index.next1045 = add i64 %index1044, 4
  %vec.ind.next1049 = add <4 x i64> %vec.ind1048, <i64 4, i64 4, i64 4, i64 4>
  %560 = icmp eq i64 %index.next1045, 16
  br i1 %560, label %polly.loop_exit708.2.2, label %vector.body1042, !llvm.loop !114

polly.loop_exit708.2.2:                           ; preds = %vector.body1042
  %polly.indvar_next704.2.2 = add nuw nsw i64 %polly.indvar703.2.2, 1
  %exitcond839.2.2.not = icmp eq i64 %polly.indvar_next704.2.2, 16
  br i1 %exitcond839.2.2.not, label %polly.loop_header727, label %polly.loop_header700.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 64}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 20}
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
!44 = !{!"llvm.loop.tile.size", i32 4}
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
