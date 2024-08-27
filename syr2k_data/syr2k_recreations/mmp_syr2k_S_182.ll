; ModuleID = 'syr2k_recreations//mmp_syr2k_S_182.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_182.c"
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
  %scevgep919 = getelementptr i8, i8* %call2, i64 %12
  %scevgep918 = getelementptr i8, i8* %call2, i64 %11
  %scevgep917 = getelementptr i8, i8* %call1, i64 %12
  %scevgep916 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep916, %scevgep919
  %bound1 = icmp ult i8* %scevgep918, %scevgep917
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
  br i1 %exitcond18.not.i, label %vector.ph923, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph923:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert930 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat931 = shufflevector <4 x i64> %broadcast.splatinsert930, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body922

vector.body922:                                   ; preds = %vector.body922, %vector.ph923
  %index924 = phi i64 [ 0, %vector.ph923 ], [ %index.next925, %vector.body922 ]
  %vec.ind928 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph923 ], [ %vec.ind.next929, %vector.body922 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind928, %broadcast.splat931
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv7.i, i64 %index924
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next925 = add i64 %index924, 4
  %vec.ind.next929 = add <4 x i64> %vec.ind928, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next925, 80
  br i1 %40, label %for.inc41.i, label %vector.body922, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body922
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph923, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1276, label %vector.ph1205

vector.ph1205:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %vector.ph1205
  %index1206 = phi i64 [ 0, %vector.ph1205 ], [ %index.next1207, %vector.body1204 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %index1206
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1207 = add i64 %index1206, 4
  %46 = icmp eq i64 %index.next1207, %n.vec
  br i1 %46, label %middle.block1202, label %vector.body1204, !llvm.loop !18

middle.block1202:                                 ; preds = %vector.body1204
  %cmp.n1209 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1209, label %for.inc6.i, label %for.body3.i46.preheader1276

for.body3.i46.preheader1276:                      ; preds = %for.body3.i46.preheader, %middle.block1202
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1202 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1276, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1276 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1202, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit549.4
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start260, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1225 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1225, label %for.body3.i60.preheader1275, label %vector.ph1226

vector.ph1226:                                    ; preds = %for.body3.i60.preheader
  %n.vec1228 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1226
  %index1229 = phi i64 [ 0, %vector.ph1226 ], [ %index.next1230, %vector.body1224 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %index1229
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1233 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1233, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1230 = add i64 %index1229, 4
  %57 = icmp eq i64 %index.next1230, %n.vec1228
  br i1 %57, label %middle.block1222, label %vector.body1224, !llvm.loop !59

middle.block1222:                                 ; preds = %vector.body1224
  %cmp.n1232 = icmp eq i64 %indvars.iv21.i52, %n.vec1228
  br i1 %cmp.n1232, label %for.inc6.i63, label %for.body3.i60.preheader1275

for.body3.i60.preheader1275:                      ; preds = %for.body3.i60.preheader, %middle.block1222
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1228, %middle.block1222 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1275, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1275 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1222, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit386.4
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1251 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1251, label %for.body3.i99.preheader1274, label %vector.ph1252

vector.ph1252:                                    ; preds = %for.body3.i99.preheader
  %n.vec1254 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1250 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %index1255
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1259 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1259, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1256 = add i64 %index1255, 4
  %68 = icmp eq i64 %index.next1256, %n.vec1254
  br i1 %68, label %middle.block1248, label %vector.body1250, !llvm.loop !61

middle.block1248:                                 ; preds = %vector.body1250
  %cmp.n1258 = icmp eq i64 %indvars.iv21.i91, %n.vec1254
  br i1 %cmp.n1258, label %for.inc6.i102, label %for.body3.i99.preheader1274

for.body3.i99.preheader1274:                      ; preds = %for.body3.i99.preheader, %middle.block1248
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1254, %middle.block1248 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1274, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1274 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1248, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.4
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %indvar1263 = phi i64 [ %indvar.next1264, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1263, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1265 = icmp ult i64 %88, 4
  br i1 %min.iters.check1265, label %polly.loop_header191.preheader, label %vector.ph1266

vector.ph1266:                                    ; preds = %polly.loop_header
  %n.vec1268 = and i64 %88, -4
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1262 ]
  %90 = shl nuw nsw i64 %index1269, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1273, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1270 = add i64 %index1269, 4
  %95 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %95, label %middle.block1260, label %vector.body1262, !llvm.loop !73

middle.block1260:                                 ; preds = %vector.body1262
  %cmp.n1272 = icmp eq i64 %88, %n.vec1268
  br i1 %cmp.n1272, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1260
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1268, %middle.block1260 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1260
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1264 = add i64 %indvar1263, 1
  br i1 %exitcond803.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond802.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199.preheader
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %97 = mul nuw nsw i64 %polly.indvar208, 480
  %scevgep792 = getelementptr i8, i8* %malloccall, i64 %97
  %scevgep793 = getelementptr i8, i8* %call1, i64 %97
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep792, i8* noundef nonnull align 8 dereferenceable(480) %scevgep793, i64 480, i1 false)
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next209, 16
  br i1 %exitcond.not, label %polly.loop_header221, label %polly.loop_header205

polly.loop_header221:                             ; preds = %polly.loop_header205, %polly.loop_exit229
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header205 ]
  %98 = shl nuw nsw i64 %polly.indvar224, 3
  %scevgep243 = getelementptr i8, i8* %call2, i64 %98
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next225, 60
  br i1 %exitcond800.not, label %polly.loop_header205.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit235 ], [ 1, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %99 = mul nuw nsw i64 %polly.indvar230, 480
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %99
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !71, !noalias !76
  %polly.access.mul.Packed_MemRef_call1251 = mul nuw nsw i64 %polly.indvar230, 60
  %polly.access.add.Packed_MemRef_call1252 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251, %polly.indvar224
  %polly.access.Packed_MemRef_call1253 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252
  %_p_scalar_254 = load double, double* %polly.access.Packed_MemRef_call1253, align 8
  %100 = mul nuw nsw i64 %polly.indvar230, 640
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next231, 16
  br i1 %exitcond799.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_header233 ]
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar236, 60
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239, %polly.indvar224
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  %_p_scalar_242 = load double, double* %polly.access.Packed_MemRef_call1241, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %101 = mul nuw nsw i64 %polly.indvar236, 480
  %scevgep248 = getelementptr i8, i8* %scevgep243, i64 %101
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !71, !noalias !76
  %p_mul37.i114 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %102 = shl nuw nsw i64 %polly.indvar236, 3
  %103 = add nuw nsw i64 %102, %100
  %scevgep255 = getelementptr i8, i8* %call, i64 %103
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_257
  store double %p_add42.i118, double* %scevgep255256, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next237, %indvars.iv796
  br i1 %exitcond798.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start260:                                   ; preds = %kernel_syr2k.exit
  %malloccall262 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header346

polly.loop_header346:                             ; preds = %polly.loop_exit354, %polly.start260
  %indvar1237 = phi i64 [ %indvar.next1238, %polly.loop_exit354 ], [ 0, %polly.start260 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 1, %polly.start260 ]
  %104 = add i64 %indvar1237, 1
  %105 = mul nuw nsw i64 %polly.indvar349, 640
  %scevgep358 = getelementptr i8, i8* %call, i64 %105
  %min.iters.check1239 = icmp ult i64 %104, 4
  br i1 %min.iters.check1239, label %polly.loop_header352.preheader, label %vector.ph1240

vector.ph1240:                                    ; preds = %polly.loop_header346
  %n.vec1242 = and i64 %104, -4
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1240
  %index1243 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1244, %vector.body1236 ]
  %106 = shl nuw nsw i64 %index1243, 3
  %107 = getelementptr i8, i8* %scevgep358, i64 %106
  %108 = bitcast i8* %107 to <4 x double>*
  %wide.load1247 = load <4 x double>, <4 x double>* %108, align 8, !alias.scope !77, !noalias !79
  %109 = fmul fast <4 x double> %wide.load1247, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %110 = bitcast i8* %107 to <4 x double>*
  store <4 x double> %109, <4 x double>* %110, align 8, !alias.scope !77, !noalias !79
  %index.next1244 = add i64 %index1243, 4
  %111 = icmp eq i64 %index.next1244, %n.vec1242
  br i1 %111, label %middle.block1234, label %vector.body1236, !llvm.loop !83

middle.block1234:                                 ; preds = %vector.body1236
  %cmp.n1246 = icmp eq i64 %104, %n.vec1242
  br i1 %cmp.n1246, label %polly.loop_exit354, label %polly.loop_header352.preheader

polly.loop_header352.preheader:                   ; preds = %polly.loop_header346, %middle.block1234
  %polly.indvar355.ph = phi i64 [ 0, %polly.loop_header346 ], [ %n.vec1242, %middle.block1234 ]
  br label %polly.loop_header352

polly.loop_exit354:                               ; preds = %polly.loop_header352, %middle.block1234
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next350, 80
  %indvar.next1238 = add i64 %indvar1237, 1
  br i1 %exitcond819.not, label %polly.loop_header362.preheader, label %polly.loop_header346

polly.loop_header362.preheader:                   ; preds = %polly.loop_exit354
  %Packed_MemRef_call1263 = bitcast i8* %malloccall262 to double*
  br label %polly.loop_header368

polly.loop_header352:                             ; preds = %polly.loop_header352.preheader, %polly.loop_header352
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_header352 ], [ %polly.indvar355.ph, %polly.loop_header352.preheader ]
  %112 = shl nuw nsw i64 %polly.indvar355, 3
  %scevgep359 = getelementptr i8, i8* %scevgep358, i64 %112
  %scevgep359360 = bitcast i8* %scevgep359 to double*
  %_p_scalar_361 = load double, double* %scevgep359360, align 8, !alias.scope !77, !noalias !79
  %p_mul.i57 = fmul fast double %_p_scalar_361, 1.200000e+00
  store double %p_mul.i57, double* %scevgep359360, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next356, %polly.indvar349
  br i1 %exitcond818.not, label %polly.loop_exit354, label %polly.loop_header352, !llvm.loop !84

polly.loop_header368:                             ; preds = %polly.loop_header368, %polly.loop_header362.preheader
  %polly.indvar371 = phi i64 [ 0, %polly.loop_header362.preheader ], [ %polly.indvar_next372, %polly.loop_header368 ]
  %113 = mul nuw nsw i64 %polly.indvar371, 480
  %scevgep805 = getelementptr i8, i8* %malloccall262, i64 %113
  %scevgep806 = getelementptr i8, i8* %call1, i64 %113
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep805, i8* noundef nonnull align 8 dereferenceable(480) %scevgep806, i64 480, i1 false)
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next372, 16
  br i1 %exitcond809.not, label %polly.loop_header384, label %polly.loop_header368

polly.loop_header384:                             ; preds = %polly.loop_header368, %polly.loop_exit392
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 0, %polly.loop_header368 ]
  %114 = shl nuw nsw i64 %polly.indvar387, 3
  %scevgep406 = getelementptr i8, i8* %call2, i64 %114
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next388, 60
  br i1 %exitcond816.not, label %polly.loop_header368.1, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_header384
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %polly.loop_exit398 ], [ 1, %polly.loop_header384 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_header384 ]
  %115 = mul nuw nsw i64 %polly.indvar393, 480
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %115
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !81, !noalias !85
  %polly.access.mul.Packed_MemRef_call1263414 = mul nuw nsw i64 %polly.indvar393, 60
  %polly.access.add.Packed_MemRef_call1263415 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414, %polly.indvar387
  %polly.access.Packed_MemRef_call1263416 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415
  %_p_scalar_417 = load double, double* %polly.access.Packed_MemRef_call1263416, align 8
  %116 = mul nuw nsw i64 %polly.indvar393, 640
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next394, 16
  br i1 %exitcond815.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_header396, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_header396 ]
  %polly.access.mul.Packed_MemRef_call1263402 = mul nuw nsw i64 %polly.indvar399, 60
  %polly.access.add.Packed_MemRef_call1263403 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402, %polly.indvar387
  %polly.access.Packed_MemRef_call1263404 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403
  %_p_scalar_405 = load double, double* %polly.access.Packed_MemRef_call1263404, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_409, %_p_scalar_405
  %117 = mul nuw nsw i64 %polly.indvar399, 480
  %scevgep411 = getelementptr i8, i8* %scevgep406, i64 %117
  %scevgep411412 = bitcast i8* %scevgep411 to double*
  %_p_scalar_413 = load double, double* %scevgep411412, align 8, !alias.scope !81, !noalias !85
  %p_mul37.i75 = fmul fast double %_p_scalar_417, %_p_scalar_413
  %118 = shl nuw nsw i64 %polly.indvar399, 3
  %119 = add nuw nsw i64 %118, %116
  %scevgep418 = getelementptr i8, i8* %call, i64 %119
  %scevgep418419 = bitcast i8* %scevgep418 to double*
  %_p_scalar_420 = load double, double* %scevgep418419, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_420
  store double %p_add42.i79, double* %scevgep418419, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next400, %indvars.iv812
  br i1 %exitcond814.not, label %polly.loop_exit398, label %polly.loop_header396

polly.start423:                                   ; preds = %init_array.exit
  %malloccall425 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header509

polly.loop_header509:                             ; preds = %polly.loop_exit517, %polly.start423
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit517 ], [ 0, %polly.start423 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 1, %polly.start423 ]
  %120 = add i64 %indvar, 1
  %121 = mul nuw nsw i64 %polly.indvar512, 640
  %scevgep521 = getelementptr i8, i8* %call, i64 %121
  %min.iters.check1213 = icmp ult i64 %120, 4
  br i1 %min.iters.check1213, label %polly.loop_header515.preheader, label %vector.ph1214

vector.ph1214:                                    ; preds = %polly.loop_header509
  %n.vec1216 = and i64 %120, -4
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1214
  %index1217 = phi i64 [ 0, %vector.ph1214 ], [ %index.next1218, %vector.body1212 ]
  %122 = shl nuw nsw i64 %index1217, 3
  %123 = getelementptr i8, i8* %scevgep521, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1221 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !86, !noalias !88
  %125 = fmul fast <4 x double> %wide.load1221, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %126 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !86, !noalias !88
  %index.next1218 = add i64 %index1217, 4
  %127 = icmp eq i64 %index.next1218, %n.vec1216
  br i1 %127, label %middle.block1210, label %vector.body1212, !llvm.loop !92

middle.block1210:                                 ; preds = %vector.body1212
  %cmp.n1220 = icmp eq i64 %120, %n.vec1216
  br i1 %cmp.n1220, label %polly.loop_exit517, label %polly.loop_header515.preheader

polly.loop_header515.preheader:                   ; preds = %polly.loop_header509, %middle.block1210
  %polly.indvar518.ph = phi i64 [ 0, %polly.loop_header509 ], [ %n.vec1216, %middle.block1210 ]
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_header515, %middle.block1210
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next513, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond835.not, label %polly.loop_header525.preheader, label %polly.loop_header509

polly.loop_header525.preheader:                   ; preds = %polly.loop_exit517
  %Packed_MemRef_call1426 = bitcast i8* %malloccall425 to double*
  br label %polly.loop_header531

polly.loop_header515:                             ; preds = %polly.loop_header515.preheader, %polly.loop_header515
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_header515 ], [ %polly.indvar518.ph, %polly.loop_header515.preheader ]
  %128 = shl nuw nsw i64 %polly.indvar518, 3
  %scevgep522 = getelementptr i8, i8* %scevgep521, i64 %128
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !86, !noalias !88
  %p_mul.i = fmul fast double %_p_scalar_524, 1.200000e+00
  store double %p_mul.i, double* %scevgep522523, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next519, %polly.indvar512
  br i1 %exitcond834.not, label %polly.loop_exit517, label %polly.loop_header515, !llvm.loop !93

polly.loop_header531:                             ; preds = %polly.loop_header531, %polly.loop_header525.preheader
  %polly.indvar534 = phi i64 [ 0, %polly.loop_header525.preheader ], [ %polly.indvar_next535, %polly.loop_header531 ]
  %129 = mul nuw nsw i64 %polly.indvar534, 480
  %scevgep821 = getelementptr i8, i8* %malloccall425, i64 %129
  %scevgep822 = getelementptr i8, i8* %call1, i64 %129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep821, i8* noundef nonnull align 8 dereferenceable(480) %scevgep822, i64 480, i1 false)
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next535, 16
  br i1 %exitcond825.not, label %polly.loop_header547, label %polly.loop_header531

polly.loop_header547:                             ; preds = %polly.loop_header531, %polly.loop_exit555
  %polly.indvar550 = phi i64 [ %polly.indvar_next551, %polly.loop_exit555 ], [ 0, %polly.loop_header531 ]
  %130 = shl nuw nsw i64 %polly.indvar550, 3
  %scevgep569 = getelementptr i8, i8* %call2, i64 %130
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_exit561
  %polly.indvar_next551 = add nuw nsw i64 %polly.indvar550, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next551, 60
  br i1 %exitcond832.not, label %polly.loop_header531.1, label %polly.loop_header547

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.loop_header547
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %polly.loop_exit561 ], [ 1, %polly.loop_header547 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 0, %polly.loop_header547 ]
  %131 = mul nuw nsw i64 %polly.indvar556, 480
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %131
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !90, !noalias !94
  %polly.access.mul.Packed_MemRef_call1426577 = mul nuw nsw i64 %polly.indvar556, 60
  %polly.access.add.Packed_MemRef_call1426578 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577, %polly.indvar550
  %polly.access.Packed_MemRef_call1426579 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578
  %_p_scalar_580 = load double, double* %polly.access.Packed_MemRef_call1426579, align 8
  %132 = mul nuw nsw i64 %polly.indvar556, 640
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %indvars.iv.next829 = add nuw nsw i64 %indvars.iv828, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next557, 16
  br i1 %exitcond831.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header559:                             ; preds = %polly.loop_header559, %polly.loop_header553
  %polly.indvar562 = phi i64 [ 0, %polly.loop_header553 ], [ %polly.indvar_next563, %polly.loop_header559 ]
  %polly.access.mul.Packed_MemRef_call1426565 = mul nuw nsw i64 %polly.indvar562, 60
  %polly.access.add.Packed_MemRef_call1426566 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565, %polly.indvar550
  %polly.access.Packed_MemRef_call1426567 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566
  %_p_scalar_568 = load double, double* %polly.access.Packed_MemRef_call1426567, align 8
  %p_mul27.i = fmul fast double %_p_scalar_572, %_p_scalar_568
  %133 = mul nuw nsw i64 %polly.indvar562, 480
  %scevgep574 = getelementptr i8, i8* %scevgep569, i64 %133
  %scevgep574575 = bitcast i8* %scevgep574 to double*
  %_p_scalar_576 = load double, double* %scevgep574575, align 8, !alias.scope !90, !noalias !94
  %p_mul37.i = fmul fast double %_p_scalar_580, %_p_scalar_576
  %134 = shl nuw nsw i64 %polly.indvar562, 3
  %135 = add nuw nsw i64 %134, %132
  %scevgep581 = getelementptr i8, i8* %call, i64 %135
  %scevgep581582 = bitcast i8* %scevgep581 to double*
  %_p_scalar_583 = load double, double* %scevgep581582, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_583
  store double %p_add42.i, double* %scevgep581582, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next563, %indvars.iv828
  br i1 %exitcond830.not, label %polly.loop_exit561, label %polly.loop_header559

polly.loop_header722:                             ; preds = %entry, %polly.loop_exit730
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_exit730 ], [ 0, %entry ]
  %136 = mul nuw nsw i64 %polly.indvar725, 640
  %137 = trunc i64 %polly.indvar725 to i32
  %broadcast.splatinsert944 = insertelement <4 x i32> poison, i32 %137, i32 0
  %broadcast.splat945 = shufflevector <4 x i32> %broadcast.splatinsert944, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %polly.loop_header722
  %index936 = phi i64 [ 0, %polly.loop_header722 ], [ %index.next937, %vector.body934 ]
  %vec.ind942 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722 ], [ %vec.ind.next943, %vector.body934 ]
  %138 = mul <4 x i32> %vec.ind942, %broadcast.splat945
  %139 = add <4 x i32> %138, <i32 3, i32 3, i32 3, i32 3>
  %140 = urem <4 x i32> %139, <i32 80, i32 80, i32 80, i32 80>
  %141 = sitofp <4 x i32> %140 to <4 x double>
  %142 = fmul fast <4 x double> %141, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %143 = shl i64 %index936, 3
  %144 = add nuw nsw i64 %143, %136
  %145 = getelementptr i8, i8* %call, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %142, <4 x double>* %146, align 8, !alias.scope !95, !noalias !97
  %index.next937 = add i64 %index936, 4
  %vec.ind.next943 = add <4 x i32> %vec.ind942, <i32 4, i32 4, i32 4, i32 4>
  %147 = icmp eq i64 %index.next937, 32
  br i1 %147, label %polly.loop_exit730, label %vector.body934, !llvm.loop !100

polly.loop_exit730:                               ; preds = %vector.body934
  %polly.indvar_next726 = add nuw nsw i64 %polly.indvar725, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next726, 32
  br i1 %exitcond854.not, label %polly.loop_header722.1, label %polly.loop_header722

polly.loop_header749:                             ; preds = %polly.loop_exit730.2.2, %polly.loop_exit757
  %polly.indvar752 = phi i64 [ %polly.indvar_next753, %polly.loop_exit757 ], [ 0, %polly.loop_exit730.2.2 ]
  %148 = mul nuw nsw i64 %polly.indvar752, 480
  %149 = trunc i64 %polly.indvar752 to i32
  %broadcast.splatinsert1058 = insertelement <4 x i32> poison, i32 %149, i32 0
  %broadcast.splat1059 = shufflevector <4 x i32> %broadcast.splatinsert1058, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %polly.loop_header749
  %index1050 = phi i64 [ 0, %polly.loop_header749 ], [ %index.next1051, %vector.body1048 ]
  %vec.ind1056 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749 ], [ %vec.ind.next1057, %vector.body1048 ]
  %150 = mul <4 x i32> %vec.ind1056, %broadcast.splat1059
  %151 = add <4 x i32> %150, <i32 2, i32 2, i32 2, i32 2>
  %152 = urem <4 x i32> %151, <i32 60, i32 60, i32 60, i32 60>
  %153 = sitofp <4 x i32> %152 to <4 x double>
  %154 = fmul fast <4 x double> %153, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %155 = shl i64 %index1050, 3
  %156 = add i64 %155, %148
  %157 = getelementptr i8, i8* %call2, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %154, <4 x double>* %158, align 8, !alias.scope !99, !noalias !101
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1057 = add <4 x i32> %vec.ind1056, <i32 4, i32 4, i32 4, i32 4>
  %159 = icmp eq i64 %index.next1051, 32
  br i1 %159, label %polly.loop_exit757, label %vector.body1048, !llvm.loop !102

polly.loop_exit757:                               ; preds = %vector.body1048
  %polly.indvar_next753 = add nuw nsw i64 %polly.indvar752, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next753, 32
  br i1 %exitcond845.not, label %polly.loop_header749.1, label %polly.loop_header749

polly.loop_header775:                             ; preds = %polly.loop_exit757.1.2, %polly.loop_exit783
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %polly.loop_exit757.1.2 ]
  %160 = mul nuw nsw i64 %polly.indvar778, 480
  %161 = trunc i64 %polly.indvar778 to i32
  %broadcast.splatinsert1136 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat1137 = shufflevector <4 x i32> %broadcast.splatinsert1136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header775
  %index1128 = phi i64 [ 0, %polly.loop_header775 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1134 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775 ], [ %vec.ind.next1135, %vector.body1126 ]
  %162 = mul <4 x i32> %vec.ind1134, %broadcast.splat1137
  %163 = add <4 x i32> %162, <i32 1, i32 1, i32 1, i32 1>
  %164 = urem <4 x i32> %163, <i32 80, i32 80, i32 80, i32 80>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %167 = shl i64 %index1128, 3
  %168 = add i64 %167, %160
  %169 = getelementptr i8, i8* %call1, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !98, !noalias !103
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1135 = add <4 x i32> %vec.ind1134, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next1129, 32
  br i1 %171, label %polly.loop_exit783, label %vector.body1126, !llvm.loop !104

polly.loop_exit783:                               ; preds = %vector.body1126
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next779, 32
  br i1 %exitcond839.not, label %polly.loop_header775.1, label %polly.loop_header775

polly.loop_header205.1:                           ; preds = %polly.loop_exit229, %polly.loop_header205.1
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_header205.1 ], [ 0, %polly.loop_exit229 ]
  %172 = mul nuw nsw i64 %polly.indvar208.1, 480
  %scevgep792.1 = getelementptr i8, i8* %malloccall, i64 %172
  %scevgep793.1 = getelementptr i8, i8* %call1, i64 %172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep793.1, i64 480, i1 false)
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next209.1, 32
  br i1 %exitcond.1.not, label %polly.loop_header221.1, label %polly.loop_header205.1

polly.loop_header221.1:                           ; preds = %polly.loop_header205.1, %polly.loop_exit229.1
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_header205.1 ]
  %173 = shl nuw nsw i64 %polly.indvar224.1, 3
  %scevgep243.1 = getelementptr i8, i8* %call2, i64 %173
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %indvars.iv796.1 = phi i64 [ %indvars.iv.next797.1, %polly.loop_exit235.1 ], [ 17, %polly.loop_header221.1 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header221.1 ]
  %174 = add nuw nsw i64 %polly.indvar230.1, 16
  %175 = mul nuw nsw i64 %174, 480
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %175
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !71, !noalias !76
  %polly.access.mul.Packed_MemRef_call1251.1 = mul nuw nsw i64 %174, 60
  %polly.access.add.Packed_MemRef_call1252.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251.1, %polly.indvar224.1
  %polly.access.Packed_MemRef_call1253.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252.1
  %_p_scalar_254.1 = load double, double* %polly.access.Packed_MemRef_call1253.1, align 8
  %176 = mul nuw nsw i64 %174, 640
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_header233.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_header233.1 ]
  %polly.access.mul.Packed_MemRef_call1239.1 = mul nuw nsw i64 %polly.indvar236.1, 60
  %polly.access.add.Packed_MemRef_call1240.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.1, %polly.indvar224.1
  %polly.access.Packed_MemRef_call1241.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.1
  %_p_scalar_242.1 = load double, double* %polly.access.Packed_MemRef_call1241.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_242.1
  %177 = mul nuw nsw i64 %polly.indvar236.1, 480
  %scevgep248.1 = getelementptr i8, i8* %scevgep243.1, i64 %177
  %scevgep248249.1 = bitcast i8* %scevgep248.1 to double*
  %_p_scalar_250.1 = load double, double* %scevgep248249.1, align 8, !alias.scope !71, !noalias !76
  %p_mul37.i114.1 = fmul fast double %_p_scalar_254.1, %_p_scalar_250.1
  %178 = shl nuw nsw i64 %polly.indvar236.1, 3
  %179 = add nuw nsw i64 %178, %176
  %scevgep255.1 = getelementptr i8, i8* %call, i64 %179
  %scevgep255256.1 = bitcast i8* %scevgep255.1 to double*
  %_p_scalar_257.1 = load double, double* %scevgep255256.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_257.1
  store double %p_add42.i118.1, double* %scevgep255256.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond798.1.not = icmp eq i64 %polly.indvar_next237.1, %indvars.iv796.1
  br i1 %exitcond798.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_header233.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next797.1 = add nuw nsw i64 %indvars.iv796.1, 1
  %exitcond799.1.not = icmp eq i64 %polly.indvar_next231.1, 16
  br i1 %exitcond799.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next225.1, 60
  br i1 %exitcond800.1.not, label %polly.loop_header205.2, label %polly.loop_header221.1

polly.loop_header205.2:                           ; preds = %polly.loop_exit229.1, %polly.loop_header205.2
  %polly.indvar208.2 = phi i64 [ %polly.indvar_next209.2, %polly.loop_header205.2 ], [ 0, %polly.loop_exit229.1 ]
  %180 = mul nuw nsw i64 %polly.indvar208.2, 480
  %scevgep792.2 = getelementptr i8, i8* %malloccall, i64 %180
  %scevgep793.2 = getelementptr i8, i8* %call1, i64 %180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep793.2, i64 480, i1 false)
  %polly.indvar_next209.2 = add nuw nsw i64 %polly.indvar208.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next209.2, 48
  br i1 %exitcond.2.not, label %polly.loop_header221.2, label %polly.loop_header205.2

polly.loop_header221.2:                           ; preds = %polly.loop_header205.2, %polly.loop_exit229.2
  %polly.indvar224.2 = phi i64 [ %polly.indvar_next225.2, %polly.loop_exit229.2 ], [ 0, %polly.loop_header205.2 ]
  %181 = shl nuw nsw i64 %polly.indvar224.2, 3
  %scevgep243.2 = getelementptr i8, i8* %call2, i64 %181
  br label %polly.loop_header227.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.2, %polly.loop_header221.2
  %indvars.iv796.2 = phi i64 [ %indvars.iv.next797.2, %polly.loop_exit235.2 ], [ 33, %polly.loop_header221.2 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_header221.2 ]
  %182 = add nuw nsw i64 %polly.indvar230.2, 32
  %183 = mul nuw nsw i64 %182, 480
  %scevgep244.2 = getelementptr i8, i8* %scevgep243.2, i64 %183
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !71, !noalias !76
  %polly.access.mul.Packed_MemRef_call1251.2 = mul nuw nsw i64 %182, 60
  %polly.access.add.Packed_MemRef_call1252.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251.2, %polly.indvar224.2
  %polly.access.Packed_MemRef_call1253.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252.2
  %_p_scalar_254.2 = load double, double* %polly.access.Packed_MemRef_call1253.2, align 8
  %184 = mul nuw nsw i64 %182, 640
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_header233.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_header233.2 ]
  %polly.access.mul.Packed_MemRef_call1239.2 = mul nuw nsw i64 %polly.indvar236.2, 60
  %polly.access.add.Packed_MemRef_call1240.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.2, %polly.indvar224.2
  %polly.access.Packed_MemRef_call1241.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.2
  %_p_scalar_242.2 = load double, double* %polly.access.Packed_MemRef_call1241.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_242.2
  %185 = mul nuw nsw i64 %polly.indvar236.2, 480
  %scevgep248.2 = getelementptr i8, i8* %scevgep243.2, i64 %185
  %scevgep248249.2 = bitcast i8* %scevgep248.2 to double*
  %_p_scalar_250.2 = load double, double* %scevgep248249.2, align 8, !alias.scope !71, !noalias !76
  %p_mul37.i114.2 = fmul fast double %_p_scalar_254.2, %_p_scalar_250.2
  %186 = shl nuw nsw i64 %polly.indvar236.2, 3
  %187 = add nuw nsw i64 %186, %184
  %scevgep255.2 = getelementptr i8, i8* %call, i64 %187
  %scevgep255256.2 = bitcast i8* %scevgep255.2 to double*
  %_p_scalar_257.2 = load double, double* %scevgep255256.2, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_257.2
  store double %p_add42.i118.2, double* %scevgep255256.2, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond798.2.not = icmp eq i64 %polly.indvar_next237.2, %indvars.iv796.2
  br i1 %exitcond798.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_header233.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %indvars.iv.next797.2 = add nuw nsw i64 %indvars.iv796.2, 1
  %exitcond799.2.not = icmp eq i64 %polly.indvar_next231.2, 16
  br i1 %exitcond799.2.not, label %polly.loop_exit229.2, label %polly.loop_header227.2

polly.loop_exit229.2:                             ; preds = %polly.loop_exit235.2
  %polly.indvar_next225.2 = add nuw nsw i64 %polly.indvar224.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next225.2, 60
  br i1 %exitcond800.2.not, label %polly.loop_header205.3, label %polly.loop_header221.2

polly.loop_header205.3:                           ; preds = %polly.loop_exit229.2, %polly.loop_header205.3
  %polly.indvar208.3 = phi i64 [ %polly.indvar_next209.3, %polly.loop_header205.3 ], [ 0, %polly.loop_exit229.2 ]
  %188 = mul nuw nsw i64 %polly.indvar208.3, 480
  %scevgep792.3 = getelementptr i8, i8* %malloccall, i64 %188
  %scevgep793.3 = getelementptr i8, i8* %call1, i64 %188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep793.3, i64 480, i1 false)
  %polly.indvar_next209.3 = add nuw nsw i64 %polly.indvar208.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next209.3, 64
  br i1 %exitcond.3.not, label %polly.loop_header221.3, label %polly.loop_header205.3

polly.loop_header221.3:                           ; preds = %polly.loop_header205.3, %polly.loop_exit229.3
  %polly.indvar224.3 = phi i64 [ %polly.indvar_next225.3, %polly.loop_exit229.3 ], [ 0, %polly.loop_header205.3 ]
  %189 = shl nuw nsw i64 %polly.indvar224.3, 3
  %scevgep243.3 = getelementptr i8, i8* %call2, i64 %189
  br label %polly.loop_header227.3

polly.loop_header227.3:                           ; preds = %polly.loop_exit235.3, %polly.loop_header221.3
  %indvars.iv796.3 = phi i64 [ %indvars.iv.next797.3, %polly.loop_exit235.3 ], [ 49, %polly.loop_header221.3 ]
  %polly.indvar230.3 = phi i64 [ %polly.indvar_next231.3, %polly.loop_exit235.3 ], [ 0, %polly.loop_header221.3 ]
  %190 = add nuw nsw i64 %polly.indvar230.3, 48
  %191 = mul nuw nsw i64 %190, 480
  %scevgep244.3 = getelementptr i8, i8* %scevgep243.3, i64 %191
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !71, !noalias !76
  %polly.access.mul.Packed_MemRef_call1251.3 = mul nuw nsw i64 %190, 60
  %polly.access.add.Packed_MemRef_call1252.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251.3, %polly.indvar224.3
  %polly.access.Packed_MemRef_call1253.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252.3
  %_p_scalar_254.3 = load double, double* %polly.access.Packed_MemRef_call1253.3, align 8
  %192 = mul nuw nsw i64 %190, 640
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_header233.3, %polly.loop_header227.3
  %polly.indvar236.3 = phi i64 [ 0, %polly.loop_header227.3 ], [ %polly.indvar_next237.3, %polly.loop_header233.3 ]
  %polly.access.mul.Packed_MemRef_call1239.3 = mul nuw nsw i64 %polly.indvar236.3, 60
  %polly.access.add.Packed_MemRef_call1240.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.3, %polly.indvar224.3
  %polly.access.Packed_MemRef_call1241.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.3
  %_p_scalar_242.3 = load double, double* %polly.access.Packed_MemRef_call1241.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_246.3, %_p_scalar_242.3
  %193 = mul nuw nsw i64 %polly.indvar236.3, 480
  %scevgep248.3 = getelementptr i8, i8* %scevgep243.3, i64 %193
  %scevgep248249.3 = bitcast i8* %scevgep248.3 to double*
  %_p_scalar_250.3 = load double, double* %scevgep248249.3, align 8, !alias.scope !71, !noalias !76
  %p_mul37.i114.3 = fmul fast double %_p_scalar_254.3, %_p_scalar_250.3
  %194 = shl nuw nsw i64 %polly.indvar236.3, 3
  %195 = add nuw nsw i64 %194, %192
  %scevgep255.3 = getelementptr i8, i8* %call, i64 %195
  %scevgep255256.3 = bitcast i8* %scevgep255.3 to double*
  %_p_scalar_257.3 = load double, double* %scevgep255256.3, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_257.3
  store double %p_add42.i118.3, double* %scevgep255256.3, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %exitcond798.3.not = icmp eq i64 %polly.indvar_next237.3, %indvars.iv796.3
  br i1 %exitcond798.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_header233.3
  %polly.indvar_next231.3 = add nuw nsw i64 %polly.indvar230.3, 1
  %indvars.iv.next797.3 = add nuw nsw i64 %indvars.iv796.3, 1
  %exitcond799.3.not = icmp eq i64 %polly.indvar_next231.3, 16
  br i1 %exitcond799.3.not, label %polly.loop_exit229.3, label %polly.loop_header227.3

polly.loop_exit229.3:                             ; preds = %polly.loop_exit235.3
  %polly.indvar_next225.3 = add nuw nsw i64 %polly.indvar224.3, 1
  %exitcond800.3.not = icmp eq i64 %polly.indvar_next225.3, 60
  br i1 %exitcond800.3.not, label %polly.loop_header205.4, label %polly.loop_header221.3

polly.loop_header205.4:                           ; preds = %polly.loop_exit229.3, %polly.loop_header205.4
  %polly.indvar208.4 = phi i64 [ %polly.indvar_next209.4, %polly.loop_header205.4 ], [ 0, %polly.loop_exit229.3 ]
  %196 = mul nuw nsw i64 %polly.indvar208.4, 480
  %scevgep792.4 = getelementptr i8, i8* %malloccall, i64 %196
  %scevgep793.4 = getelementptr i8, i8* %call1, i64 %196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep793.4, i64 480, i1 false)
  %polly.indvar_next209.4 = add nuw nsw i64 %polly.indvar208.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar_next209.4, 80
  br i1 %exitcond.4.not, label %polly.loop_header221.4, label %polly.loop_header205.4

polly.loop_header221.4:                           ; preds = %polly.loop_header205.4, %polly.loop_exit229.4
  %polly.indvar224.4 = phi i64 [ %polly.indvar_next225.4, %polly.loop_exit229.4 ], [ 0, %polly.loop_header205.4 ]
  %197 = shl nuw nsw i64 %polly.indvar224.4, 3
  %scevgep243.4 = getelementptr i8, i8* %call2, i64 %197
  br label %polly.loop_header227.4

polly.loop_header227.4:                           ; preds = %polly.loop_exit235.4, %polly.loop_header221.4
  %indvars.iv796.4 = phi i64 [ %indvars.iv.next797.4, %polly.loop_exit235.4 ], [ 65, %polly.loop_header221.4 ]
  %polly.indvar230.4 = phi i64 [ %polly.indvar_next231.4, %polly.loop_exit235.4 ], [ 0, %polly.loop_header221.4 ]
  %198 = add nuw nsw i64 %polly.indvar230.4, 64
  %199 = mul nuw nsw i64 %198, 480
  %scevgep244.4 = getelementptr i8, i8* %scevgep243.4, i64 %199
  %scevgep244245.4 = bitcast i8* %scevgep244.4 to double*
  %_p_scalar_246.4 = load double, double* %scevgep244245.4, align 8, !alias.scope !71, !noalias !76
  %polly.access.mul.Packed_MemRef_call1251.4 = mul nuw nsw i64 %198, 60
  %polly.access.add.Packed_MemRef_call1252.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251.4, %polly.indvar224.4
  %polly.access.Packed_MemRef_call1253.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252.4
  %_p_scalar_254.4 = load double, double* %polly.access.Packed_MemRef_call1253.4, align 8
  %200 = mul nuw nsw i64 %198, 640
  br label %polly.loop_header233.4

polly.loop_header233.4:                           ; preds = %polly.loop_header233.4, %polly.loop_header227.4
  %polly.indvar236.4 = phi i64 [ 0, %polly.loop_header227.4 ], [ %polly.indvar_next237.4, %polly.loop_header233.4 ]
  %polly.access.mul.Packed_MemRef_call1239.4 = mul nuw nsw i64 %polly.indvar236.4, 60
  %polly.access.add.Packed_MemRef_call1240.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.4, %polly.indvar224.4
  %polly.access.Packed_MemRef_call1241.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.4
  %_p_scalar_242.4 = load double, double* %polly.access.Packed_MemRef_call1241.4, align 8
  %p_mul27.i112.4 = fmul fast double %_p_scalar_246.4, %_p_scalar_242.4
  %201 = mul nuw nsw i64 %polly.indvar236.4, 480
  %scevgep248.4 = getelementptr i8, i8* %scevgep243.4, i64 %201
  %scevgep248249.4 = bitcast i8* %scevgep248.4 to double*
  %_p_scalar_250.4 = load double, double* %scevgep248249.4, align 8, !alias.scope !71, !noalias !76
  %p_mul37.i114.4 = fmul fast double %_p_scalar_254.4, %_p_scalar_250.4
  %202 = shl nuw nsw i64 %polly.indvar236.4, 3
  %203 = add nuw nsw i64 %202, %200
  %scevgep255.4 = getelementptr i8, i8* %call, i64 %203
  %scevgep255256.4 = bitcast i8* %scevgep255.4 to double*
  %_p_scalar_257.4 = load double, double* %scevgep255256.4, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_257.4
  store double %p_add42.i118.4, double* %scevgep255256.4, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next237.4 = add nuw nsw i64 %polly.indvar236.4, 1
  %exitcond798.4.not = icmp eq i64 %polly.indvar_next237.4, %indvars.iv796.4
  br i1 %exitcond798.4.not, label %polly.loop_exit235.4, label %polly.loop_header233.4

polly.loop_exit235.4:                             ; preds = %polly.loop_header233.4
  %polly.indvar_next231.4 = add nuw nsw i64 %polly.indvar230.4, 1
  %indvars.iv.next797.4 = add nuw nsw i64 %indvars.iv796.4, 1
  %exitcond799.4.not = icmp eq i64 %polly.indvar_next231.4, 16
  br i1 %exitcond799.4.not, label %polly.loop_exit229.4, label %polly.loop_header227.4

polly.loop_exit229.4:                             ; preds = %polly.loop_exit235.4
  %polly.indvar_next225.4 = add nuw nsw i64 %polly.indvar224.4, 1
  %exitcond800.4.not = icmp eq i64 %polly.indvar_next225.4, 60
  br i1 %exitcond800.4.not, label %polly.loop_exit223.4, label %polly.loop_header221.4

polly.loop_exit223.4:                             ; preds = %polly.loop_exit229.4
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header368.1:                           ; preds = %polly.loop_exit392, %polly.loop_header368.1
  %polly.indvar371.1 = phi i64 [ %polly.indvar_next372.1, %polly.loop_header368.1 ], [ 0, %polly.loop_exit392 ]
  %204 = mul nuw nsw i64 %polly.indvar371.1, 480
  %scevgep805.1 = getelementptr i8, i8* %malloccall262, i64 %204
  %scevgep806.1 = getelementptr i8, i8* %call1, i64 %204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep805.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.1, i64 480, i1 false)
  %polly.indvar_next372.1 = add nuw nsw i64 %polly.indvar371.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next372.1, 32
  br i1 %exitcond809.1.not, label %polly.loop_header384.1, label %polly.loop_header368.1

polly.loop_header384.1:                           ; preds = %polly.loop_header368.1, %polly.loop_exit392.1
  %polly.indvar387.1 = phi i64 [ %polly.indvar_next388.1, %polly.loop_exit392.1 ], [ 0, %polly.loop_header368.1 ]
  %205 = shl nuw nsw i64 %polly.indvar387.1, 3
  %scevgep406.1 = getelementptr i8, i8* %call2, i64 %205
  br label %polly.loop_header390.1

polly.loop_header390.1:                           ; preds = %polly.loop_exit398.1, %polly.loop_header384.1
  %indvars.iv812.1 = phi i64 [ %indvars.iv.next813.1, %polly.loop_exit398.1 ], [ 17, %polly.loop_header384.1 ]
  %polly.indvar393.1 = phi i64 [ %polly.indvar_next394.1, %polly.loop_exit398.1 ], [ 0, %polly.loop_header384.1 ]
  %206 = add nuw nsw i64 %polly.indvar393.1, 16
  %207 = mul nuw nsw i64 %206, 480
  %scevgep407.1 = getelementptr i8, i8* %scevgep406.1, i64 %207
  %scevgep407408.1 = bitcast i8* %scevgep407.1 to double*
  %_p_scalar_409.1 = load double, double* %scevgep407408.1, align 8, !alias.scope !81, !noalias !85
  %polly.access.mul.Packed_MemRef_call1263414.1 = mul nuw nsw i64 %206, 60
  %polly.access.add.Packed_MemRef_call1263415.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414.1, %polly.indvar387.1
  %polly.access.Packed_MemRef_call1263416.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415.1
  %_p_scalar_417.1 = load double, double* %polly.access.Packed_MemRef_call1263416.1, align 8
  %208 = mul nuw nsw i64 %206, 640
  br label %polly.loop_header396.1

polly.loop_header396.1:                           ; preds = %polly.loop_header396.1, %polly.loop_header390.1
  %polly.indvar399.1 = phi i64 [ 0, %polly.loop_header390.1 ], [ %polly.indvar_next400.1, %polly.loop_header396.1 ]
  %polly.access.mul.Packed_MemRef_call1263402.1 = mul nuw nsw i64 %polly.indvar399.1, 60
  %polly.access.add.Packed_MemRef_call1263403.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.1, %polly.indvar387.1
  %polly.access.Packed_MemRef_call1263404.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.1
  %_p_scalar_405.1 = load double, double* %polly.access.Packed_MemRef_call1263404.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_409.1, %_p_scalar_405.1
  %209 = mul nuw nsw i64 %polly.indvar399.1, 480
  %scevgep411.1 = getelementptr i8, i8* %scevgep406.1, i64 %209
  %scevgep411412.1 = bitcast i8* %scevgep411.1 to double*
  %_p_scalar_413.1 = load double, double* %scevgep411412.1, align 8, !alias.scope !81, !noalias !85
  %p_mul37.i75.1 = fmul fast double %_p_scalar_417.1, %_p_scalar_413.1
  %210 = shl nuw nsw i64 %polly.indvar399.1, 3
  %211 = add nuw nsw i64 %210, %208
  %scevgep418.1 = getelementptr i8, i8* %call, i64 %211
  %scevgep418419.1 = bitcast i8* %scevgep418.1 to double*
  %_p_scalar_420.1 = load double, double* %scevgep418419.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_420.1
  store double %p_add42.i79.1, double* %scevgep418419.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond814.1.not = icmp eq i64 %polly.indvar_next400.1, %indvars.iv812.1
  br i1 %exitcond814.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_header396.1
  %polly.indvar_next394.1 = add nuw nsw i64 %polly.indvar393.1, 1
  %indvars.iv.next813.1 = add nuw nsw i64 %indvars.iv812.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar_next394.1, 16
  br i1 %exitcond815.1.not, label %polly.loop_exit392.1, label %polly.loop_header390.1

polly.loop_exit392.1:                             ; preds = %polly.loop_exit398.1
  %polly.indvar_next388.1 = add nuw nsw i64 %polly.indvar387.1, 1
  %exitcond816.1.not = icmp eq i64 %polly.indvar_next388.1, 60
  br i1 %exitcond816.1.not, label %polly.loop_header368.2, label %polly.loop_header384.1

polly.loop_header368.2:                           ; preds = %polly.loop_exit392.1, %polly.loop_header368.2
  %polly.indvar371.2 = phi i64 [ %polly.indvar_next372.2, %polly.loop_header368.2 ], [ 0, %polly.loop_exit392.1 ]
  %212 = mul nuw nsw i64 %polly.indvar371.2, 480
  %scevgep805.2 = getelementptr i8, i8* %malloccall262, i64 %212
  %scevgep806.2 = getelementptr i8, i8* %call1, i64 %212
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep805.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.2, i64 480, i1 false)
  %polly.indvar_next372.2 = add nuw nsw i64 %polly.indvar371.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next372.2, 48
  br i1 %exitcond809.2.not, label %polly.loop_header384.2, label %polly.loop_header368.2

polly.loop_header384.2:                           ; preds = %polly.loop_header368.2, %polly.loop_exit392.2
  %polly.indvar387.2 = phi i64 [ %polly.indvar_next388.2, %polly.loop_exit392.2 ], [ 0, %polly.loop_header368.2 ]
  %213 = shl nuw nsw i64 %polly.indvar387.2, 3
  %scevgep406.2 = getelementptr i8, i8* %call2, i64 %213
  br label %polly.loop_header390.2

polly.loop_header390.2:                           ; preds = %polly.loop_exit398.2, %polly.loop_header384.2
  %indvars.iv812.2 = phi i64 [ %indvars.iv.next813.2, %polly.loop_exit398.2 ], [ 33, %polly.loop_header384.2 ]
  %polly.indvar393.2 = phi i64 [ %polly.indvar_next394.2, %polly.loop_exit398.2 ], [ 0, %polly.loop_header384.2 ]
  %214 = add nuw nsw i64 %polly.indvar393.2, 32
  %215 = mul nuw nsw i64 %214, 480
  %scevgep407.2 = getelementptr i8, i8* %scevgep406.2, i64 %215
  %scevgep407408.2 = bitcast i8* %scevgep407.2 to double*
  %_p_scalar_409.2 = load double, double* %scevgep407408.2, align 8, !alias.scope !81, !noalias !85
  %polly.access.mul.Packed_MemRef_call1263414.2 = mul nuw nsw i64 %214, 60
  %polly.access.add.Packed_MemRef_call1263415.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414.2, %polly.indvar387.2
  %polly.access.Packed_MemRef_call1263416.2 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415.2
  %_p_scalar_417.2 = load double, double* %polly.access.Packed_MemRef_call1263416.2, align 8
  %216 = mul nuw nsw i64 %214, 640
  br label %polly.loop_header396.2

polly.loop_header396.2:                           ; preds = %polly.loop_header396.2, %polly.loop_header390.2
  %polly.indvar399.2 = phi i64 [ 0, %polly.loop_header390.2 ], [ %polly.indvar_next400.2, %polly.loop_header396.2 ]
  %polly.access.mul.Packed_MemRef_call1263402.2 = mul nuw nsw i64 %polly.indvar399.2, 60
  %polly.access.add.Packed_MemRef_call1263403.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.2, %polly.indvar387.2
  %polly.access.Packed_MemRef_call1263404.2 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.2
  %_p_scalar_405.2 = load double, double* %polly.access.Packed_MemRef_call1263404.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_409.2, %_p_scalar_405.2
  %217 = mul nuw nsw i64 %polly.indvar399.2, 480
  %scevgep411.2 = getelementptr i8, i8* %scevgep406.2, i64 %217
  %scevgep411412.2 = bitcast i8* %scevgep411.2 to double*
  %_p_scalar_413.2 = load double, double* %scevgep411412.2, align 8, !alias.scope !81, !noalias !85
  %p_mul37.i75.2 = fmul fast double %_p_scalar_417.2, %_p_scalar_413.2
  %218 = shl nuw nsw i64 %polly.indvar399.2, 3
  %219 = add nuw nsw i64 %218, %216
  %scevgep418.2 = getelementptr i8, i8* %call, i64 %219
  %scevgep418419.2 = bitcast i8* %scevgep418.2 to double*
  %_p_scalar_420.2 = load double, double* %scevgep418419.2, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_420.2
  store double %p_add42.i79.2, double* %scevgep418419.2, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %exitcond814.2.not = icmp eq i64 %polly.indvar_next400.2, %indvars.iv812.2
  br i1 %exitcond814.2.not, label %polly.loop_exit398.2, label %polly.loop_header396.2

polly.loop_exit398.2:                             ; preds = %polly.loop_header396.2
  %polly.indvar_next394.2 = add nuw nsw i64 %polly.indvar393.2, 1
  %indvars.iv.next813.2 = add nuw nsw i64 %indvars.iv812.2, 1
  %exitcond815.2.not = icmp eq i64 %polly.indvar_next394.2, 16
  br i1 %exitcond815.2.not, label %polly.loop_exit392.2, label %polly.loop_header390.2

polly.loop_exit392.2:                             ; preds = %polly.loop_exit398.2
  %polly.indvar_next388.2 = add nuw nsw i64 %polly.indvar387.2, 1
  %exitcond816.2.not = icmp eq i64 %polly.indvar_next388.2, 60
  br i1 %exitcond816.2.not, label %polly.loop_header368.3, label %polly.loop_header384.2

polly.loop_header368.3:                           ; preds = %polly.loop_exit392.2, %polly.loop_header368.3
  %polly.indvar371.3 = phi i64 [ %polly.indvar_next372.3, %polly.loop_header368.3 ], [ 0, %polly.loop_exit392.2 ]
  %220 = mul nuw nsw i64 %polly.indvar371.3, 480
  %scevgep805.3 = getelementptr i8, i8* %malloccall262, i64 %220
  %scevgep806.3 = getelementptr i8, i8* %call1, i64 %220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep805.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.3, i64 480, i1 false)
  %polly.indvar_next372.3 = add nuw nsw i64 %polly.indvar371.3, 1
  %exitcond809.3.not = icmp eq i64 %polly.indvar_next372.3, 64
  br i1 %exitcond809.3.not, label %polly.loop_header384.3, label %polly.loop_header368.3

polly.loop_header384.3:                           ; preds = %polly.loop_header368.3, %polly.loop_exit392.3
  %polly.indvar387.3 = phi i64 [ %polly.indvar_next388.3, %polly.loop_exit392.3 ], [ 0, %polly.loop_header368.3 ]
  %221 = shl nuw nsw i64 %polly.indvar387.3, 3
  %scevgep406.3 = getelementptr i8, i8* %call2, i64 %221
  br label %polly.loop_header390.3

polly.loop_header390.3:                           ; preds = %polly.loop_exit398.3, %polly.loop_header384.3
  %indvars.iv812.3 = phi i64 [ %indvars.iv.next813.3, %polly.loop_exit398.3 ], [ 49, %polly.loop_header384.3 ]
  %polly.indvar393.3 = phi i64 [ %polly.indvar_next394.3, %polly.loop_exit398.3 ], [ 0, %polly.loop_header384.3 ]
  %222 = add nuw nsw i64 %polly.indvar393.3, 48
  %223 = mul nuw nsw i64 %222, 480
  %scevgep407.3 = getelementptr i8, i8* %scevgep406.3, i64 %223
  %scevgep407408.3 = bitcast i8* %scevgep407.3 to double*
  %_p_scalar_409.3 = load double, double* %scevgep407408.3, align 8, !alias.scope !81, !noalias !85
  %polly.access.mul.Packed_MemRef_call1263414.3 = mul nuw nsw i64 %222, 60
  %polly.access.add.Packed_MemRef_call1263415.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414.3, %polly.indvar387.3
  %polly.access.Packed_MemRef_call1263416.3 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415.3
  %_p_scalar_417.3 = load double, double* %polly.access.Packed_MemRef_call1263416.3, align 8
  %224 = mul nuw nsw i64 %222, 640
  br label %polly.loop_header396.3

polly.loop_header396.3:                           ; preds = %polly.loop_header396.3, %polly.loop_header390.3
  %polly.indvar399.3 = phi i64 [ 0, %polly.loop_header390.3 ], [ %polly.indvar_next400.3, %polly.loop_header396.3 ]
  %polly.access.mul.Packed_MemRef_call1263402.3 = mul nuw nsw i64 %polly.indvar399.3, 60
  %polly.access.add.Packed_MemRef_call1263403.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.3, %polly.indvar387.3
  %polly.access.Packed_MemRef_call1263404.3 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.3
  %_p_scalar_405.3 = load double, double* %polly.access.Packed_MemRef_call1263404.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_409.3, %_p_scalar_405.3
  %225 = mul nuw nsw i64 %polly.indvar399.3, 480
  %scevgep411.3 = getelementptr i8, i8* %scevgep406.3, i64 %225
  %scevgep411412.3 = bitcast i8* %scevgep411.3 to double*
  %_p_scalar_413.3 = load double, double* %scevgep411412.3, align 8, !alias.scope !81, !noalias !85
  %p_mul37.i75.3 = fmul fast double %_p_scalar_417.3, %_p_scalar_413.3
  %226 = shl nuw nsw i64 %polly.indvar399.3, 3
  %227 = add nuw nsw i64 %226, %224
  %scevgep418.3 = getelementptr i8, i8* %call, i64 %227
  %scevgep418419.3 = bitcast i8* %scevgep418.3 to double*
  %_p_scalar_420.3 = load double, double* %scevgep418419.3, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_420.3
  store double %p_add42.i79.3, double* %scevgep418419.3, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next400.3 = add nuw nsw i64 %polly.indvar399.3, 1
  %exitcond814.3.not = icmp eq i64 %polly.indvar_next400.3, %indvars.iv812.3
  br i1 %exitcond814.3.not, label %polly.loop_exit398.3, label %polly.loop_header396.3

polly.loop_exit398.3:                             ; preds = %polly.loop_header396.3
  %polly.indvar_next394.3 = add nuw nsw i64 %polly.indvar393.3, 1
  %indvars.iv.next813.3 = add nuw nsw i64 %indvars.iv812.3, 1
  %exitcond815.3.not = icmp eq i64 %polly.indvar_next394.3, 16
  br i1 %exitcond815.3.not, label %polly.loop_exit392.3, label %polly.loop_header390.3

polly.loop_exit392.3:                             ; preds = %polly.loop_exit398.3
  %polly.indvar_next388.3 = add nuw nsw i64 %polly.indvar387.3, 1
  %exitcond816.3.not = icmp eq i64 %polly.indvar_next388.3, 60
  br i1 %exitcond816.3.not, label %polly.loop_header368.4, label %polly.loop_header384.3

polly.loop_header368.4:                           ; preds = %polly.loop_exit392.3, %polly.loop_header368.4
  %polly.indvar371.4 = phi i64 [ %polly.indvar_next372.4, %polly.loop_header368.4 ], [ 0, %polly.loop_exit392.3 ]
  %228 = mul nuw nsw i64 %polly.indvar371.4, 480
  %scevgep805.4 = getelementptr i8, i8* %malloccall262, i64 %228
  %scevgep806.4 = getelementptr i8, i8* %call1, i64 %228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep805.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep806.4, i64 480, i1 false)
  %polly.indvar_next372.4 = add nuw nsw i64 %polly.indvar371.4, 1
  %exitcond809.4.not = icmp eq i64 %polly.indvar_next372.4, 80
  br i1 %exitcond809.4.not, label %polly.loop_header384.4, label %polly.loop_header368.4

polly.loop_header384.4:                           ; preds = %polly.loop_header368.4, %polly.loop_exit392.4
  %polly.indvar387.4 = phi i64 [ %polly.indvar_next388.4, %polly.loop_exit392.4 ], [ 0, %polly.loop_header368.4 ]
  %229 = shl nuw nsw i64 %polly.indvar387.4, 3
  %scevgep406.4 = getelementptr i8, i8* %call2, i64 %229
  br label %polly.loop_header390.4

polly.loop_header390.4:                           ; preds = %polly.loop_exit398.4, %polly.loop_header384.4
  %indvars.iv812.4 = phi i64 [ %indvars.iv.next813.4, %polly.loop_exit398.4 ], [ 65, %polly.loop_header384.4 ]
  %polly.indvar393.4 = phi i64 [ %polly.indvar_next394.4, %polly.loop_exit398.4 ], [ 0, %polly.loop_header384.4 ]
  %230 = add nuw nsw i64 %polly.indvar393.4, 64
  %231 = mul nuw nsw i64 %230, 480
  %scevgep407.4 = getelementptr i8, i8* %scevgep406.4, i64 %231
  %scevgep407408.4 = bitcast i8* %scevgep407.4 to double*
  %_p_scalar_409.4 = load double, double* %scevgep407408.4, align 8, !alias.scope !81, !noalias !85
  %polly.access.mul.Packed_MemRef_call1263414.4 = mul nuw nsw i64 %230, 60
  %polly.access.add.Packed_MemRef_call1263415.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414.4, %polly.indvar387.4
  %polly.access.Packed_MemRef_call1263416.4 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415.4
  %_p_scalar_417.4 = load double, double* %polly.access.Packed_MemRef_call1263416.4, align 8
  %232 = mul nuw nsw i64 %230, 640
  br label %polly.loop_header396.4

polly.loop_header396.4:                           ; preds = %polly.loop_header396.4, %polly.loop_header390.4
  %polly.indvar399.4 = phi i64 [ 0, %polly.loop_header390.4 ], [ %polly.indvar_next400.4, %polly.loop_header396.4 ]
  %polly.access.mul.Packed_MemRef_call1263402.4 = mul nuw nsw i64 %polly.indvar399.4, 60
  %polly.access.add.Packed_MemRef_call1263403.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.4, %polly.indvar387.4
  %polly.access.Packed_MemRef_call1263404.4 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.4
  %_p_scalar_405.4 = load double, double* %polly.access.Packed_MemRef_call1263404.4, align 8
  %p_mul27.i73.4 = fmul fast double %_p_scalar_409.4, %_p_scalar_405.4
  %233 = mul nuw nsw i64 %polly.indvar399.4, 480
  %scevgep411.4 = getelementptr i8, i8* %scevgep406.4, i64 %233
  %scevgep411412.4 = bitcast i8* %scevgep411.4 to double*
  %_p_scalar_413.4 = load double, double* %scevgep411412.4, align 8, !alias.scope !81, !noalias !85
  %p_mul37.i75.4 = fmul fast double %_p_scalar_417.4, %_p_scalar_413.4
  %234 = shl nuw nsw i64 %polly.indvar399.4, 3
  %235 = add nuw nsw i64 %234, %232
  %scevgep418.4 = getelementptr i8, i8* %call, i64 %235
  %scevgep418419.4 = bitcast i8* %scevgep418.4 to double*
  %_p_scalar_420.4 = load double, double* %scevgep418419.4, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_420.4
  store double %p_add42.i79.4, double* %scevgep418419.4, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next400.4 = add nuw nsw i64 %polly.indvar399.4, 1
  %exitcond814.4.not = icmp eq i64 %polly.indvar_next400.4, %indvars.iv812.4
  br i1 %exitcond814.4.not, label %polly.loop_exit398.4, label %polly.loop_header396.4

polly.loop_exit398.4:                             ; preds = %polly.loop_header396.4
  %polly.indvar_next394.4 = add nuw nsw i64 %polly.indvar393.4, 1
  %indvars.iv.next813.4 = add nuw nsw i64 %indvars.iv812.4, 1
  %exitcond815.4.not = icmp eq i64 %polly.indvar_next394.4, 16
  br i1 %exitcond815.4.not, label %polly.loop_exit392.4, label %polly.loop_header390.4

polly.loop_exit392.4:                             ; preds = %polly.loop_exit398.4
  %polly.indvar_next388.4 = add nuw nsw i64 %polly.indvar387.4, 1
  %exitcond816.4.not = icmp eq i64 %polly.indvar_next388.4, 60
  br i1 %exitcond816.4.not, label %polly.loop_exit386.4, label %polly.loop_header384.4

polly.loop_exit386.4:                             ; preds = %polly.loop_exit392.4
  tail call void @free(i8* nonnull %malloccall262)
  br label %kernel_syr2k.exit90

polly.loop_header531.1:                           ; preds = %polly.loop_exit555, %polly.loop_header531.1
  %polly.indvar534.1 = phi i64 [ %polly.indvar_next535.1, %polly.loop_header531.1 ], [ 0, %polly.loop_exit555 ]
  %236 = mul nuw nsw i64 %polly.indvar534.1, 480
  %scevgep821.1 = getelementptr i8, i8* %malloccall425, i64 %236
  %scevgep822.1 = getelementptr i8, i8* %call1, i64 %236
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep822.1, i64 480, i1 false)
  %polly.indvar_next535.1 = add nuw nsw i64 %polly.indvar534.1, 1
  %exitcond825.1.not = icmp eq i64 %polly.indvar_next535.1, 32
  br i1 %exitcond825.1.not, label %polly.loop_header547.1, label %polly.loop_header531.1

polly.loop_header547.1:                           ; preds = %polly.loop_header531.1, %polly.loop_exit555.1
  %polly.indvar550.1 = phi i64 [ %polly.indvar_next551.1, %polly.loop_exit555.1 ], [ 0, %polly.loop_header531.1 ]
  %237 = shl nuw nsw i64 %polly.indvar550.1, 3
  %scevgep569.1 = getelementptr i8, i8* %call2, i64 %237
  br label %polly.loop_header553.1

polly.loop_header553.1:                           ; preds = %polly.loop_exit561.1, %polly.loop_header547.1
  %indvars.iv828.1 = phi i64 [ %indvars.iv.next829.1, %polly.loop_exit561.1 ], [ 17, %polly.loop_header547.1 ]
  %polly.indvar556.1 = phi i64 [ %polly.indvar_next557.1, %polly.loop_exit561.1 ], [ 0, %polly.loop_header547.1 ]
  %238 = add nuw nsw i64 %polly.indvar556.1, 16
  %239 = mul nuw nsw i64 %238, 480
  %scevgep570.1 = getelementptr i8, i8* %scevgep569.1, i64 %239
  %scevgep570571.1 = bitcast i8* %scevgep570.1 to double*
  %_p_scalar_572.1 = load double, double* %scevgep570571.1, align 8, !alias.scope !90, !noalias !94
  %polly.access.mul.Packed_MemRef_call1426577.1 = mul nuw nsw i64 %238, 60
  %polly.access.add.Packed_MemRef_call1426578.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577.1, %polly.indvar550.1
  %polly.access.Packed_MemRef_call1426579.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578.1
  %_p_scalar_580.1 = load double, double* %polly.access.Packed_MemRef_call1426579.1, align 8
  %240 = mul nuw nsw i64 %238, 640
  br label %polly.loop_header559.1

polly.loop_header559.1:                           ; preds = %polly.loop_header559.1, %polly.loop_header553.1
  %polly.indvar562.1 = phi i64 [ 0, %polly.loop_header553.1 ], [ %polly.indvar_next563.1, %polly.loop_header559.1 ]
  %polly.access.mul.Packed_MemRef_call1426565.1 = mul nuw nsw i64 %polly.indvar562.1, 60
  %polly.access.add.Packed_MemRef_call1426566.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.1, %polly.indvar550.1
  %polly.access.Packed_MemRef_call1426567.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.1
  %_p_scalar_568.1 = load double, double* %polly.access.Packed_MemRef_call1426567.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_572.1, %_p_scalar_568.1
  %241 = mul nuw nsw i64 %polly.indvar562.1, 480
  %scevgep574.1 = getelementptr i8, i8* %scevgep569.1, i64 %241
  %scevgep574575.1 = bitcast i8* %scevgep574.1 to double*
  %_p_scalar_576.1 = load double, double* %scevgep574575.1, align 8, !alias.scope !90, !noalias !94
  %p_mul37.i.1 = fmul fast double %_p_scalar_580.1, %_p_scalar_576.1
  %242 = shl nuw nsw i64 %polly.indvar562.1, 3
  %243 = add nuw nsw i64 %242, %240
  %scevgep581.1 = getelementptr i8, i8* %call, i64 %243
  %scevgep581582.1 = bitcast i8* %scevgep581.1 to double*
  %_p_scalar_583.1 = load double, double* %scevgep581582.1, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_583.1
  store double %p_add42.i.1, double* %scevgep581582.1, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next563.1 = add nuw nsw i64 %polly.indvar562.1, 1
  %exitcond830.1.not = icmp eq i64 %polly.indvar_next563.1, %indvars.iv828.1
  br i1 %exitcond830.1.not, label %polly.loop_exit561.1, label %polly.loop_header559.1

polly.loop_exit561.1:                             ; preds = %polly.loop_header559.1
  %polly.indvar_next557.1 = add nuw nsw i64 %polly.indvar556.1, 1
  %indvars.iv.next829.1 = add nuw nsw i64 %indvars.iv828.1, 1
  %exitcond831.1.not = icmp eq i64 %polly.indvar_next557.1, 16
  br i1 %exitcond831.1.not, label %polly.loop_exit555.1, label %polly.loop_header553.1

polly.loop_exit555.1:                             ; preds = %polly.loop_exit561.1
  %polly.indvar_next551.1 = add nuw nsw i64 %polly.indvar550.1, 1
  %exitcond832.1.not = icmp eq i64 %polly.indvar_next551.1, 60
  br i1 %exitcond832.1.not, label %polly.loop_header531.2, label %polly.loop_header547.1

polly.loop_header531.2:                           ; preds = %polly.loop_exit555.1, %polly.loop_header531.2
  %polly.indvar534.2 = phi i64 [ %polly.indvar_next535.2, %polly.loop_header531.2 ], [ 0, %polly.loop_exit555.1 ]
  %244 = mul nuw nsw i64 %polly.indvar534.2, 480
  %scevgep821.2 = getelementptr i8, i8* %malloccall425, i64 %244
  %scevgep822.2 = getelementptr i8, i8* %call1, i64 %244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep822.2, i64 480, i1 false)
  %polly.indvar_next535.2 = add nuw nsw i64 %polly.indvar534.2, 1
  %exitcond825.2.not = icmp eq i64 %polly.indvar_next535.2, 48
  br i1 %exitcond825.2.not, label %polly.loop_header547.2, label %polly.loop_header531.2

polly.loop_header547.2:                           ; preds = %polly.loop_header531.2, %polly.loop_exit555.2
  %polly.indvar550.2 = phi i64 [ %polly.indvar_next551.2, %polly.loop_exit555.2 ], [ 0, %polly.loop_header531.2 ]
  %245 = shl nuw nsw i64 %polly.indvar550.2, 3
  %scevgep569.2 = getelementptr i8, i8* %call2, i64 %245
  br label %polly.loop_header553.2

polly.loop_header553.2:                           ; preds = %polly.loop_exit561.2, %polly.loop_header547.2
  %indvars.iv828.2 = phi i64 [ %indvars.iv.next829.2, %polly.loop_exit561.2 ], [ 33, %polly.loop_header547.2 ]
  %polly.indvar556.2 = phi i64 [ %polly.indvar_next557.2, %polly.loop_exit561.2 ], [ 0, %polly.loop_header547.2 ]
  %246 = add nuw nsw i64 %polly.indvar556.2, 32
  %247 = mul nuw nsw i64 %246, 480
  %scevgep570.2 = getelementptr i8, i8* %scevgep569.2, i64 %247
  %scevgep570571.2 = bitcast i8* %scevgep570.2 to double*
  %_p_scalar_572.2 = load double, double* %scevgep570571.2, align 8, !alias.scope !90, !noalias !94
  %polly.access.mul.Packed_MemRef_call1426577.2 = mul nuw nsw i64 %246, 60
  %polly.access.add.Packed_MemRef_call1426578.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577.2, %polly.indvar550.2
  %polly.access.Packed_MemRef_call1426579.2 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578.2
  %_p_scalar_580.2 = load double, double* %polly.access.Packed_MemRef_call1426579.2, align 8
  %248 = mul nuw nsw i64 %246, 640
  br label %polly.loop_header559.2

polly.loop_header559.2:                           ; preds = %polly.loop_header559.2, %polly.loop_header553.2
  %polly.indvar562.2 = phi i64 [ 0, %polly.loop_header553.2 ], [ %polly.indvar_next563.2, %polly.loop_header559.2 ]
  %polly.access.mul.Packed_MemRef_call1426565.2 = mul nuw nsw i64 %polly.indvar562.2, 60
  %polly.access.add.Packed_MemRef_call1426566.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.2, %polly.indvar550.2
  %polly.access.Packed_MemRef_call1426567.2 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.2
  %_p_scalar_568.2 = load double, double* %polly.access.Packed_MemRef_call1426567.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_572.2, %_p_scalar_568.2
  %249 = mul nuw nsw i64 %polly.indvar562.2, 480
  %scevgep574.2 = getelementptr i8, i8* %scevgep569.2, i64 %249
  %scevgep574575.2 = bitcast i8* %scevgep574.2 to double*
  %_p_scalar_576.2 = load double, double* %scevgep574575.2, align 8, !alias.scope !90, !noalias !94
  %p_mul37.i.2 = fmul fast double %_p_scalar_580.2, %_p_scalar_576.2
  %250 = shl nuw nsw i64 %polly.indvar562.2, 3
  %251 = add nuw nsw i64 %250, %248
  %scevgep581.2 = getelementptr i8, i8* %call, i64 %251
  %scevgep581582.2 = bitcast i8* %scevgep581.2 to double*
  %_p_scalar_583.2 = load double, double* %scevgep581582.2, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_583.2
  store double %p_add42.i.2, double* %scevgep581582.2, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next563.2 = add nuw nsw i64 %polly.indvar562.2, 1
  %exitcond830.2.not = icmp eq i64 %polly.indvar_next563.2, %indvars.iv828.2
  br i1 %exitcond830.2.not, label %polly.loop_exit561.2, label %polly.loop_header559.2

polly.loop_exit561.2:                             ; preds = %polly.loop_header559.2
  %polly.indvar_next557.2 = add nuw nsw i64 %polly.indvar556.2, 1
  %indvars.iv.next829.2 = add nuw nsw i64 %indvars.iv828.2, 1
  %exitcond831.2.not = icmp eq i64 %polly.indvar_next557.2, 16
  br i1 %exitcond831.2.not, label %polly.loop_exit555.2, label %polly.loop_header553.2

polly.loop_exit555.2:                             ; preds = %polly.loop_exit561.2
  %polly.indvar_next551.2 = add nuw nsw i64 %polly.indvar550.2, 1
  %exitcond832.2.not = icmp eq i64 %polly.indvar_next551.2, 60
  br i1 %exitcond832.2.not, label %polly.loop_header531.3, label %polly.loop_header547.2

polly.loop_header531.3:                           ; preds = %polly.loop_exit555.2, %polly.loop_header531.3
  %polly.indvar534.3 = phi i64 [ %polly.indvar_next535.3, %polly.loop_header531.3 ], [ 0, %polly.loop_exit555.2 ]
  %252 = mul nuw nsw i64 %polly.indvar534.3, 480
  %scevgep821.3 = getelementptr i8, i8* %malloccall425, i64 %252
  %scevgep822.3 = getelementptr i8, i8* %call1, i64 %252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep822.3, i64 480, i1 false)
  %polly.indvar_next535.3 = add nuw nsw i64 %polly.indvar534.3, 1
  %exitcond825.3.not = icmp eq i64 %polly.indvar_next535.3, 64
  br i1 %exitcond825.3.not, label %polly.loop_header547.3, label %polly.loop_header531.3

polly.loop_header547.3:                           ; preds = %polly.loop_header531.3, %polly.loop_exit555.3
  %polly.indvar550.3 = phi i64 [ %polly.indvar_next551.3, %polly.loop_exit555.3 ], [ 0, %polly.loop_header531.3 ]
  %253 = shl nuw nsw i64 %polly.indvar550.3, 3
  %scevgep569.3 = getelementptr i8, i8* %call2, i64 %253
  br label %polly.loop_header553.3

polly.loop_header553.3:                           ; preds = %polly.loop_exit561.3, %polly.loop_header547.3
  %indvars.iv828.3 = phi i64 [ %indvars.iv.next829.3, %polly.loop_exit561.3 ], [ 49, %polly.loop_header547.3 ]
  %polly.indvar556.3 = phi i64 [ %polly.indvar_next557.3, %polly.loop_exit561.3 ], [ 0, %polly.loop_header547.3 ]
  %254 = add nuw nsw i64 %polly.indvar556.3, 48
  %255 = mul nuw nsw i64 %254, 480
  %scevgep570.3 = getelementptr i8, i8* %scevgep569.3, i64 %255
  %scevgep570571.3 = bitcast i8* %scevgep570.3 to double*
  %_p_scalar_572.3 = load double, double* %scevgep570571.3, align 8, !alias.scope !90, !noalias !94
  %polly.access.mul.Packed_MemRef_call1426577.3 = mul nuw nsw i64 %254, 60
  %polly.access.add.Packed_MemRef_call1426578.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577.3, %polly.indvar550.3
  %polly.access.Packed_MemRef_call1426579.3 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578.3
  %_p_scalar_580.3 = load double, double* %polly.access.Packed_MemRef_call1426579.3, align 8
  %256 = mul nuw nsw i64 %254, 640
  br label %polly.loop_header559.3

polly.loop_header559.3:                           ; preds = %polly.loop_header559.3, %polly.loop_header553.3
  %polly.indvar562.3 = phi i64 [ 0, %polly.loop_header553.3 ], [ %polly.indvar_next563.3, %polly.loop_header559.3 ]
  %polly.access.mul.Packed_MemRef_call1426565.3 = mul nuw nsw i64 %polly.indvar562.3, 60
  %polly.access.add.Packed_MemRef_call1426566.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.3, %polly.indvar550.3
  %polly.access.Packed_MemRef_call1426567.3 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.3
  %_p_scalar_568.3 = load double, double* %polly.access.Packed_MemRef_call1426567.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_572.3, %_p_scalar_568.3
  %257 = mul nuw nsw i64 %polly.indvar562.3, 480
  %scevgep574.3 = getelementptr i8, i8* %scevgep569.3, i64 %257
  %scevgep574575.3 = bitcast i8* %scevgep574.3 to double*
  %_p_scalar_576.3 = load double, double* %scevgep574575.3, align 8, !alias.scope !90, !noalias !94
  %p_mul37.i.3 = fmul fast double %_p_scalar_580.3, %_p_scalar_576.3
  %258 = shl nuw nsw i64 %polly.indvar562.3, 3
  %259 = add nuw nsw i64 %258, %256
  %scevgep581.3 = getelementptr i8, i8* %call, i64 %259
  %scevgep581582.3 = bitcast i8* %scevgep581.3 to double*
  %_p_scalar_583.3 = load double, double* %scevgep581582.3, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_583.3
  store double %p_add42.i.3, double* %scevgep581582.3, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next563.3 = add nuw nsw i64 %polly.indvar562.3, 1
  %exitcond830.3.not = icmp eq i64 %polly.indvar_next563.3, %indvars.iv828.3
  br i1 %exitcond830.3.not, label %polly.loop_exit561.3, label %polly.loop_header559.3

polly.loop_exit561.3:                             ; preds = %polly.loop_header559.3
  %polly.indvar_next557.3 = add nuw nsw i64 %polly.indvar556.3, 1
  %indvars.iv.next829.3 = add nuw nsw i64 %indvars.iv828.3, 1
  %exitcond831.3.not = icmp eq i64 %polly.indvar_next557.3, 16
  br i1 %exitcond831.3.not, label %polly.loop_exit555.3, label %polly.loop_header553.3

polly.loop_exit555.3:                             ; preds = %polly.loop_exit561.3
  %polly.indvar_next551.3 = add nuw nsw i64 %polly.indvar550.3, 1
  %exitcond832.3.not = icmp eq i64 %polly.indvar_next551.3, 60
  br i1 %exitcond832.3.not, label %polly.loop_header531.4, label %polly.loop_header547.3

polly.loop_header531.4:                           ; preds = %polly.loop_exit555.3, %polly.loop_header531.4
  %polly.indvar534.4 = phi i64 [ %polly.indvar_next535.4, %polly.loop_header531.4 ], [ 0, %polly.loop_exit555.3 ]
  %260 = mul nuw nsw i64 %polly.indvar534.4, 480
  %scevgep821.4 = getelementptr i8, i8* %malloccall425, i64 %260
  %scevgep822.4 = getelementptr i8, i8* %call1, i64 %260
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep822.4, i64 480, i1 false)
  %polly.indvar_next535.4 = add nuw nsw i64 %polly.indvar534.4, 1
  %exitcond825.4.not = icmp eq i64 %polly.indvar_next535.4, 80
  br i1 %exitcond825.4.not, label %polly.loop_header547.4, label %polly.loop_header531.4

polly.loop_header547.4:                           ; preds = %polly.loop_header531.4, %polly.loop_exit555.4
  %polly.indvar550.4 = phi i64 [ %polly.indvar_next551.4, %polly.loop_exit555.4 ], [ 0, %polly.loop_header531.4 ]
  %261 = shl nuw nsw i64 %polly.indvar550.4, 3
  %scevgep569.4 = getelementptr i8, i8* %call2, i64 %261
  br label %polly.loop_header553.4

polly.loop_header553.4:                           ; preds = %polly.loop_exit561.4, %polly.loop_header547.4
  %indvars.iv828.4 = phi i64 [ %indvars.iv.next829.4, %polly.loop_exit561.4 ], [ 65, %polly.loop_header547.4 ]
  %polly.indvar556.4 = phi i64 [ %polly.indvar_next557.4, %polly.loop_exit561.4 ], [ 0, %polly.loop_header547.4 ]
  %262 = add nuw nsw i64 %polly.indvar556.4, 64
  %263 = mul nuw nsw i64 %262, 480
  %scevgep570.4 = getelementptr i8, i8* %scevgep569.4, i64 %263
  %scevgep570571.4 = bitcast i8* %scevgep570.4 to double*
  %_p_scalar_572.4 = load double, double* %scevgep570571.4, align 8, !alias.scope !90, !noalias !94
  %polly.access.mul.Packed_MemRef_call1426577.4 = mul nuw nsw i64 %262, 60
  %polly.access.add.Packed_MemRef_call1426578.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577.4, %polly.indvar550.4
  %polly.access.Packed_MemRef_call1426579.4 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578.4
  %_p_scalar_580.4 = load double, double* %polly.access.Packed_MemRef_call1426579.4, align 8
  %264 = mul nuw nsw i64 %262, 640
  br label %polly.loop_header559.4

polly.loop_header559.4:                           ; preds = %polly.loop_header559.4, %polly.loop_header553.4
  %polly.indvar562.4 = phi i64 [ 0, %polly.loop_header553.4 ], [ %polly.indvar_next563.4, %polly.loop_header559.4 ]
  %polly.access.mul.Packed_MemRef_call1426565.4 = mul nuw nsw i64 %polly.indvar562.4, 60
  %polly.access.add.Packed_MemRef_call1426566.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.4, %polly.indvar550.4
  %polly.access.Packed_MemRef_call1426567.4 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.4
  %_p_scalar_568.4 = load double, double* %polly.access.Packed_MemRef_call1426567.4, align 8
  %p_mul27.i.4 = fmul fast double %_p_scalar_572.4, %_p_scalar_568.4
  %265 = mul nuw nsw i64 %polly.indvar562.4, 480
  %scevgep574.4 = getelementptr i8, i8* %scevgep569.4, i64 %265
  %scevgep574575.4 = bitcast i8* %scevgep574.4 to double*
  %_p_scalar_576.4 = load double, double* %scevgep574575.4, align 8, !alias.scope !90, !noalias !94
  %p_mul37.i.4 = fmul fast double %_p_scalar_580.4, %_p_scalar_576.4
  %266 = shl nuw nsw i64 %polly.indvar562.4, 3
  %267 = add nuw nsw i64 %266, %264
  %scevgep581.4 = getelementptr i8, i8* %call, i64 %267
  %scevgep581582.4 = bitcast i8* %scevgep581.4 to double*
  %_p_scalar_583.4 = load double, double* %scevgep581582.4, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_583.4
  store double %p_add42.i.4, double* %scevgep581582.4, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next563.4 = add nuw nsw i64 %polly.indvar562.4, 1
  %exitcond830.4.not = icmp eq i64 %polly.indvar_next563.4, %indvars.iv828.4
  br i1 %exitcond830.4.not, label %polly.loop_exit561.4, label %polly.loop_header559.4

polly.loop_exit561.4:                             ; preds = %polly.loop_header559.4
  %polly.indvar_next557.4 = add nuw nsw i64 %polly.indvar556.4, 1
  %indvars.iv.next829.4 = add nuw nsw i64 %indvars.iv828.4, 1
  %exitcond831.4.not = icmp eq i64 %polly.indvar_next557.4, 16
  br i1 %exitcond831.4.not, label %polly.loop_exit555.4, label %polly.loop_header553.4

polly.loop_exit555.4:                             ; preds = %polly.loop_exit561.4
  %polly.indvar_next551.4 = add nuw nsw i64 %polly.indvar550.4, 1
  %exitcond832.4.not = icmp eq i64 %polly.indvar_next551.4, 60
  br i1 %exitcond832.4.not, label %polly.loop_exit549.4, label %polly.loop_header547.4

polly.loop_exit549.4:                             ; preds = %polly.loop_exit555.4
  tail call void @free(i8* nonnull %malloccall425)
  br label %kernel_syr2k.exit

polly.loop_header775.1:                           ; preds = %polly.loop_exit783, %polly.loop_exit783.1
  %polly.indvar778.1 = phi i64 [ %polly.indvar_next779.1, %polly.loop_exit783.1 ], [ 0, %polly.loop_exit783 ]
  %268 = mul nuw nsw i64 %polly.indvar778.1, 480
  %269 = trunc i64 %polly.indvar778.1 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %269, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %polly.loop_header775.1
  %index1142 = phi i64 [ 0, %polly.loop_header775.1 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1 ], [ %vec.ind.next1147, %vector.body1140 ]
  %270 = add nuw nsw <4 x i64> %vec.ind1146, <i64 32, i64 32, i64 32, i64 32>
  %271 = trunc <4 x i64> %270 to <4 x i32>
  %272 = mul <4 x i32> %broadcast.splat1149, %271
  %273 = add <4 x i32> %272, <i32 1, i32 1, i32 1, i32 1>
  %274 = urem <4 x i32> %273, <i32 80, i32 80, i32 80, i32 80>
  %275 = sitofp <4 x i32> %274 to <4 x double>
  %276 = fmul fast <4 x double> %275, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %277 = extractelement <4 x i64> %270, i32 0
  %278 = shl i64 %277, 3
  %279 = add i64 %278, %268
  %280 = getelementptr i8, i8* %call1, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %276, <4 x double>* %281, align 8, !alias.scope !98, !noalias !103
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %282 = icmp eq i64 %index.next1143, 28
  br i1 %282, label %polly.loop_exit783.1, label %vector.body1140, !llvm.loop !105

polly.loop_exit783.1:                             ; preds = %vector.body1140
  %polly.indvar_next779.1 = add nuw nsw i64 %polly.indvar778.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar_next779.1, 32
  br i1 %exitcond839.1.not, label %polly.loop_header775.1859, label %polly.loop_header775.1

polly.loop_header775.1859:                        ; preds = %polly.loop_exit783.1, %polly.loop_exit783.1870
  %polly.indvar778.1858 = phi i64 [ %polly.indvar_next779.1868, %polly.loop_exit783.1870 ], [ 0, %polly.loop_exit783.1 ]
  %283 = add nuw nsw i64 %polly.indvar778.1858, 32
  %284 = mul nuw nsw i64 %283, 480
  %285 = trunc i64 %283 to i32
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header775.1859
  %index1154 = phi i64 [ 0, %polly.loop_header775.1859 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1160 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.1859 ], [ %vec.ind.next1161, %vector.body1152 ]
  %286 = mul <4 x i32> %vec.ind1160, %broadcast.splat1163
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 80, i32 80, i32 80, i32 80>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %291 = shl i64 %index1154, 3
  %292 = add i64 %291, %284
  %293 = getelementptr i8, i8* %call1, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %290, <4 x double>* %294, align 8, !alias.scope !98, !noalias !103
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1161 = add <4 x i32> %vec.ind1160, <i32 4, i32 4, i32 4, i32 4>
  %295 = icmp eq i64 %index.next1155, 32
  br i1 %295, label %polly.loop_exit783.1870, label %vector.body1152, !llvm.loop !106

polly.loop_exit783.1870:                          ; preds = %vector.body1152
  %polly.indvar_next779.1868 = add nuw nsw i64 %polly.indvar778.1858, 1
  %exitcond839.1869.not = icmp eq i64 %polly.indvar_next779.1868, 32
  br i1 %exitcond839.1869.not, label %polly.loop_header775.1.1, label %polly.loop_header775.1859

polly.loop_header775.1.1:                         ; preds = %polly.loop_exit783.1870, %polly.loop_exit783.1.1
  %polly.indvar778.1.1 = phi i64 [ %polly.indvar_next779.1.1, %polly.loop_exit783.1.1 ], [ 0, %polly.loop_exit783.1870 ]
  %296 = add nuw nsw i64 %polly.indvar778.1.1, 32
  %297 = mul nuw nsw i64 %296, 480
  %298 = trunc i64 %296 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %298, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %polly.loop_header775.1.1
  %index1168 = phi i64 [ 0, %polly.loop_header775.1.1 ], [ %index.next1169, %vector.body1166 ]
  %vec.ind1172 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.1 ], [ %vec.ind.next1173, %vector.body1166 ]
  %299 = add nuw nsw <4 x i64> %vec.ind1172, <i64 32, i64 32, i64 32, i64 32>
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = mul <4 x i32> %broadcast.splat1175, %300
  %302 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  %303 = urem <4 x i32> %302, <i32 80, i32 80, i32 80, i32 80>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %306 = extractelement <4 x i64> %299, i32 0
  %307 = shl i64 %306, 3
  %308 = add i64 %307, %297
  %309 = getelementptr i8, i8* %call1, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %305, <4 x double>* %310, align 8, !alias.scope !98, !noalias !103
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1173 = add <4 x i64> %vec.ind1172, <i64 4, i64 4, i64 4, i64 4>
  %311 = icmp eq i64 %index.next1169, 28
  br i1 %311, label %polly.loop_exit783.1.1, label %vector.body1166, !llvm.loop !107

polly.loop_exit783.1.1:                           ; preds = %vector.body1166
  %polly.indvar_next779.1.1 = add nuw nsw i64 %polly.indvar778.1.1, 1
  %exitcond839.1.1.not = icmp eq i64 %polly.indvar_next779.1.1, 32
  br i1 %exitcond839.1.1.not, label %polly.loop_header775.2, label %polly.loop_header775.1.1

polly.loop_header775.2:                           ; preds = %polly.loop_exit783.1.1, %polly.loop_exit783.2
  %polly.indvar778.2 = phi i64 [ %polly.indvar_next779.2, %polly.loop_exit783.2 ], [ 0, %polly.loop_exit783.1.1 ]
  %312 = add nuw nsw i64 %polly.indvar778.2, 64
  %313 = mul nuw nsw i64 %312, 480
  %314 = trunc i64 %312 to i32
  %broadcast.splatinsert1188 = insertelement <4 x i32> poison, i32 %314, i32 0
  %broadcast.splat1189 = shufflevector <4 x i32> %broadcast.splatinsert1188, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header775.2
  %index1180 = phi i64 [ 0, %polly.loop_header775.2 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1186 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.2 ], [ %vec.ind.next1187, %vector.body1178 ]
  %315 = mul <4 x i32> %vec.ind1186, %broadcast.splat1189
  %316 = add <4 x i32> %315, <i32 1, i32 1, i32 1, i32 1>
  %317 = urem <4 x i32> %316, <i32 80, i32 80, i32 80, i32 80>
  %318 = sitofp <4 x i32> %317 to <4 x double>
  %319 = fmul fast <4 x double> %318, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %320 = shl i64 %index1180, 3
  %321 = add i64 %320, %313
  %322 = getelementptr i8, i8* %call1, i64 %321
  %323 = bitcast i8* %322 to <4 x double>*
  store <4 x double> %319, <4 x double>* %323, align 8, !alias.scope !98, !noalias !103
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1187 = add <4 x i32> %vec.ind1186, <i32 4, i32 4, i32 4, i32 4>
  %324 = icmp eq i64 %index.next1181, 32
  br i1 %324, label %polly.loop_exit783.2, label %vector.body1178, !llvm.loop !108

polly.loop_exit783.2:                             ; preds = %vector.body1178
  %polly.indvar_next779.2 = add nuw nsw i64 %polly.indvar778.2, 1
  %exitcond839.2.not = icmp eq i64 %polly.indvar_next779.2, 16
  br i1 %exitcond839.2.not, label %polly.loop_header775.1.2, label %polly.loop_header775.2

polly.loop_header775.1.2:                         ; preds = %polly.loop_exit783.2, %polly.loop_exit783.1.2
  %polly.indvar778.1.2 = phi i64 [ %polly.indvar_next779.1.2, %polly.loop_exit783.1.2 ], [ 0, %polly.loop_exit783.2 ]
  %325 = add nuw nsw i64 %polly.indvar778.1.2, 64
  %326 = mul nuw nsw i64 %325, 480
  %327 = trunc i64 %325 to i32
  %broadcast.splatinsert1200 = insertelement <4 x i32> poison, i32 %327, i32 0
  %broadcast.splat1201 = shufflevector <4 x i32> %broadcast.splatinsert1200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %polly.loop_header775.1.2
  %index1194 = phi i64 [ 0, %polly.loop_header775.1.2 ], [ %index.next1195, %vector.body1192 ]
  %vec.ind1198 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.2 ], [ %vec.ind.next1199, %vector.body1192 ]
  %328 = add nuw nsw <4 x i64> %vec.ind1198, <i64 32, i64 32, i64 32, i64 32>
  %329 = trunc <4 x i64> %328 to <4 x i32>
  %330 = mul <4 x i32> %broadcast.splat1201, %329
  %331 = add <4 x i32> %330, <i32 1, i32 1, i32 1, i32 1>
  %332 = urem <4 x i32> %331, <i32 80, i32 80, i32 80, i32 80>
  %333 = sitofp <4 x i32> %332 to <4 x double>
  %334 = fmul fast <4 x double> %333, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %335 = extractelement <4 x i64> %328, i32 0
  %336 = shl i64 %335, 3
  %337 = add i64 %336, %326
  %338 = getelementptr i8, i8* %call1, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %334, <4 x double>* %339, align 8, !alias.scope !98, !noalias !103
  %index.next1195 = add i64 %index1194, 4
  %vec.ind.next1199 = add <4 x i64> %vec.ind1198, <i64 4, i64 4, i64 4, i64 4>
  %340 = icmp eq i64 %index.next1195, 28
  br i1 %340, label %polly.loop_exit783.1.2, label %vector.body1192, !llvm.loop !109

polly.loop_exit783.1.2:                           ; preds = %vector.body1192
  %polly.indvar_next779.1.2 = add nuw nsw i64 %polly.indvar778.1.2, 1
  %exitcond839.1.2.not = icmp eq i64 %polly.indvar_next779.1.2, 16
  br i1 %exitcond839.1.2.not, label %init_array.exit, label %polly.loop_header775.1.2

polly.loop_header749.1:                           ; preds = %polly.loop_exit757, %polly.loop_exit757.1
  %polly.indvar752.1 = phi i64 [ %polly.indvar_next753.1, %polly.loop_exit757.1 ], [ 0, %polly.loop_exit757 ]
  %341 = mul nuw nsw i64 %polly.indvar752.1, 480
  %342 = trunc i64 %polly.indvar752.1 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %polly.loop_header749.1
  %index1064 = phi i64 [ 0, %polly.loop_header749.1 ], [ %index.next1065, %vector.body1062 ]
  %vec.ind1068 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1 ], [ %vec.ind.next1069, %vector.body1062 ]
  %343 = add nuw nsw <4 x i64> %vec.ind1068, <i64 32, i64 32, i64 32, i64 32>
  %344 = trunc <4 x i64> %343 to <4 x i32>
  %345 = mul <4 x i32> %broadcast.splat1071, %344
  %346 = add <4 x i32> %345, <i32 2, i32 2, i32 2, i32 2>
  %347 = urem <4 x i32> %346, <i32 60, i32 60, i32 60, i32 60>
  %348 = sitofp <4 x i32> %347 to <4 x double>
  %349 = fmul fast <4 x double> %348, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %350 = extractelement <4 x i64> %343, i32 0
  %351 = shl i64 %350, 3
  %352 = add i64 %351, %341
  %353 = getelementptr i8, i8* %call2, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %349, <4 x double>* %354, align 8, !alias.scope !99, !noalias !101
  %index.next1065 = add i64 %index1064, 4
  %vec.ind.next1069 = add <4 x i64> %vec.ind1068, <i64 4, i64 4, i64 4, i64 4>
  %355 = icmp eq i64 %index.next1065, 28
  br i1 %355, label %polly.loop_exit757.1, label %vector.body1062, !llvm.loop !110

polly.loop_exit757.1:                             ; preds = %vector.body1062
  %polly.indvar_next753.1 = add nuw nsw i64 %polly.indvar752.1, 1
  %exitcond845.1.not = icmp eq i64 %polly.indvar_next753.1, 32
  br i1 %exitcond845.1.not, label %polly.loop_header749.1873, label %polly.loop_header749.1

polly.loop_header749.1873:                        ; preds = %polly.loop_exit757.1, %polly.loop_exit757.1884
  %polly.indvar752.1872 = phi i64 [ %polly.indvar_next753.1882, %polly.loop_exit757.1884 ], [ 0, %polly.loop_exit757.1 ]
  %356 = add nuw nsw i64 %polly.indvar752.1872, 32
  %357 = mul nuw nsw i64 %356, 480
  %358 = trunc i64 %356 to i32
  %broadcast.splatinsert1084 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat1085 = shufflevector <4 x i32> %broadcast.splatinsert1084, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header749.1873
  %index1076 = phi i64 [ 0, %polly.loop_header749.1873 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1082 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.1873 ], [ %vec.ind.next1083, %vector.body1074 ]
  %359 = mul <4 x i32> %vec.ind1082, %broadcast.splat1085
  %360 = add <4 x i32> %359, <i32 2, i32 2, i32 2, i32 2>
  %361 = urem <4 x i32> %360, <i32 60, i32 60, i32 60, i32 60>
  %362 = sitofp <4 x i32> %361 to <4 x double>
  %363 = fmul fast <4 x double> %362, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %364 = shl i64 %index1076, 3
  %365 = add i64 %364, %357
  %366 = getelementptr i8, i8* %call2, i64 %365
  %367 = bitcast i8* %366 to <4 x double>*
  store <4 x double> %363, <4 x double>* %367, align 8, !alias.scope !99, !noalias !101
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1083 = add <4 x i32> %vec.ind1082, <i32 4, i32 4, i32 4, i32 4>
  %368 = icmp eq i64 %index.next1077, 32
  br i1 %368, label %polly.loop_exit757.1884, label %vector.body1074, !llvm.loop !111

polly.loop_exit757.1884:                          ; preds = %vector.body1074
  %polly.indvar_next753.1882 = add nuw nsw i64 %polly.indvar752.1872, 1
  %exitcond845.1883.not = icmp eq i64 %polly.indvar_next753.1882, 32
  br i1 %exitcond845.1883.not, label %polly.loop_header749.1.1, label %polly.loop_header749.1873

polly.loop_header749.1.1:                         ; preds = %polly.loop_exit757.1884, %polly.loop_exit757.1.1
  %polly.indvar752.1.1 = phi i64 [ %polly.indvar_next753.1.1, %polly.loop_exit757.1.1 ], [ 0, %polly.loop_exit757.1884 ]
  %369 = add nuw nsw i64 %polly.indvar752.1.1, 32
  %370 = mul nuw nsw i64 %369, 480
  %371 = trunc i64 %369 to i32
  %broadcast.splatinsert1096 = insertelement <4 x i32> poison, i32 %371, i32 0
  %broadcast.splat1097 = shufflevector <4 x i32> %broadcast.splatinsert1096, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %polly.loop_header749.1.1
  %index1090 = phi i64 [ 0, %polly.loop_header749.1.1 ], [ %index.next1091, %vector.body1088 ]
  %vec.ind1094 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.1 ], [ %vec.ind.next1095, %vector.body1088 ]
  %372 = add nuw nsw <4 x i64> %vec.ind1094, <i64 32, i64 32, i64 32, i64 32>
  %373 = trunc <4 x i64> %372 to <4 x i32>
  %374 = mul <4 x i32> %broadcast.splat1097, %373
  %375 = add <4 x i32> %374, <i32 2, i32 2, i32 2, i32 2>
  %376 = urem <4 x i32> %375, <i32 60, i32 60, i32 60, i32 60>
  %377 = sitofp <4 x i32> %376 to <4 x double>
  %378 = fmul fast <4 x double> %377, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %379 = extractelement <4 x i64> %372, i32 0
  %380 = shl i64 %379, 3
  %381 = add i64 %380, %370
  %382 = getelementptr i8, i8* %call2, i64 %381
  %383 = bitcast i8* %382 to <4 x double>*
  store <4 x double> %378, <4 x double>* %383, align 8, !alias.scope !99, !noalias !101
  %index.next1091 = add i64 %index1090, 4
  %vec.ind.next1095 = add <4 x i64> %vec.ind1094, <i64 4, i64 4, i64 4, i64 4>
  %384 = icmp eq i64 %index.next1091, 28
  br i1 %384, label %polly.loop_exit757.1.1, label %vector.body1088, !llvm.loop !112

polly.loop_exit757.1.1:                           ; preds = %vector.body1088
  %polly.indvar_next753.1.1 = add nuw nsw i64 %polly.indvar752.1.1, 1
  %exitcond845.1.1.not = icmp eq i64 %polly.indvar_next753.1.1, 32
  br i1 %exitcond845.1.1.not, label %polly.loop_header749.2, label %polly.loop_header749.1.1

polly.loop_header749.2:                           ; preds = %polly.loop_exit757.1.1, %polly.loop_exit757.2
  %polly.indvar752.2 = phi i64 [ %polly.indvar_next753.2, %polly.loop_exit757.2 ], [ 0, %polly.loop_exit757.1.1 ]
  %385 = add nuw nsw i64 %polly.indvar752.2, 64
  %386 = mul nuw nsw i64 %385, 480
  %387 = trunc i64 %385 to i32
  %broadcast.splatinsert1110 = insertelement <4 x i32> poison, i32 %387, i32 0
  %broadcast.splat1111 = shufflevector <4 x i32> %broadcast.splatinsert1110, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header749.2
  %index1102 = phi i64 [ 0, %polly.loop_header749.2 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1108 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.2 ], [ %vec.ind.next1109, %vector.body1100 ]
  %388 = mul <4 x i32> %vec.ind1108, %broadcast.splat1111
  %389 = add <4 x i32> %388, <i32 2, i32 2, i32 2, i32 2>
  %390 = urem <4 x i32> %389, <i32 60, i32 60, i32 60, i32 60>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = shl i64 %index1102, 3
  %394 = add i64 %393, %386
  %395 = getelementptr i8, i8* %call2, i64 %394
  %396 = bitcast i8* %395 to <4 x double>*
  store <4 x double> %392, <4 x double>* %396, align 8, !alias.scope !99, !noalias !101
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1109 = add <4 x i32> %vec.ind1108, <i32 4, i32 4, i32 4, i32 4>
  %397 = icmp eq i64 %index.next1103, 32
  br i1 %397, label %polly.loop_exit757.2, label %vector.body1100, !llvm.loop !113

polly.loop_exit757.2:                             ; preds = %vector.body1100
  %polly.indvar_next753.2 = add nuw nsw i64 %polly.indvar752.2, 1
  %exitcond845.2.not = icmp eq i64 %polly.indvar_next753.2, 16
  br i1 %exitcond845.2.not, label %polly.loop_header749.1.2, label %polly.loop_header749.2

polly.loop_header749.1.2:                         ; preds = %polly.loop_exit757.2, %polly.loop_exit757.1.2
  %polly.indvar752.1.2 = phi i64 [ %polly.indvar_next753.1.2, %polly.loop_exit757.1.2 ], [ 0, %polly.loop_exit757.2 ]
  %398 = add nuw nsw i64 %polly.indvar752.1.2, 64
  %399 = mul nuw nsw i64 %398, 480
  %400 = trunc i64 %398 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %400, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %polly.loop_header749.1.2
  %index1116 = phi i64 [ 0, %polly.loop_header749.1.2 ], [ %index.next1117, %vector.body1114 ]
  %vec.ind1120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.2 ], [ %vec.ind.next1121, %vector.body1114 ]
  %401 = add nuw nsw <4 x i64> %vec.ind1120, <i64 32, i64 32, i64 32, i64 32>
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat1123, %402
  %404 = add <4 x i32> %403, <i32 2, i32 2, i32 2, i32 2>
  %405 = urem <4 x i32> %404, <i32 60, i32 60, i32 60, i32 60>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add i64 %409, %399
  %411 = getelementptr i8, i8* %call2, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !99, !noalias !101
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1121 = add <4 x i64> %vec.ind1120, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next1117, 28
  br i1 %413, label %polly.loop_exit757.1.2, label %vector.body1114, !llvm.loop !114

polly.loop_exit757.1.2:                           ; preds = %vector.body1114
  %polly.indvar_next753.1.2 = add nuw nsw i64 %polly.indvar752.1.2, 1
  %exitcond845.1.2.not = icmp eq i64 %polly.indvar_next753.1.2, 16
  br i1 %exitcond845.1.2.not, label %polly.loop_header775, label %polly.loop_header749.1.2

polly.loop_header722.1:                           ; preds = %polly.loop_exit730, %polly.loop_exit730.1
  %polly.indvar725.1 = phi i64 [ %polly.indvar_next726.1, %polly.loop_exit730.1 ], [ 0, %polly.loop_exit730 ]
  %414 = mul nuw nsw i64 %polly.indvar725.1, 640
  %415 = trunc i64 %polly.indvar725.1 to i32
  %broadcast.splatinsert956 = insertelement <4 x i32> poison, i32 %415, i32 0
  %broadcast.splat957 = shufflevector <4 x i32> %broadcast.splatinsert956, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %polly.loop_header722.1
  %index950 = phi i64 [ 0, %polly.loop_header722.1 ], [ %index.next951, %vector.body948 ]
  %vec.ind954 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1 ], [ %vec.ind.next955, %vector.body948 ]
  %416 = add nuw nsw <4 x i64> %vec.ind954, <i64 32, i64 32, i64 32, i64 32>
  %417 = trunc <4 x i64> %416 to <4 x i32>
  %418 = mul <4 x i32> %broadcast.splat957, %417
  %419 = add <4 x i32> %418, <i32 3, i32 3, i32 3, i32 3>
  %420 = urem <4 x i32> %419, <i32 80, i32 80, i32 80, i32 80>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %423 = extractelement <4 x i64> %416, i32 0
  %424 = shl i64 %423, 3
  %425 = add nuw nsw i64 %424, %414
  %426 = getelementptr i8, i8* %call, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %422, <4 x double>* %427, align 8, !alias.scope !95, !noalias !97
  %index.next951 = add i64 %index950, 4
  %vec.ind.next955 = add <4 x i64> %vec.ind954, <i64 4, i64 4, i64 4, i64 4>
  %428 = icmp eq i64 %index.next951, 32
  br i1 %428, label %polly.loop_exit730.1, label %vector.body948, !llvm.loop !115

polly.loop_exit730.1:                             ; preds = %vector.body948
  %polly.indvar_next726.1 = add nuw nsw i64 %polly.indvar725.1, 1
  %exitcond854.1.not = icmp eq i64 %polly.indvar_next726.1, 32
  br i1 %exitcond854.1.not, label %polly.loop_header722.2, label %polly.loop_header722.1

polly.loop_header722.2:                           ; preds = %polly.loop_exit730.1, %polly.loop_exit730.2
  %polly.indvar725.2 = phi i64 [ %polly.indvar_next726.2, %polly.loop_exit730.2 ], [ 0, %polly.loop_exit730.1 ]
  %429 = mul nuw nsw i64 %polly.indvar725.2, 640
  %430 = trunc i64 %polly.indvar725.2 to i32
  %broadcast.splatinsert968 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat969 = shufflevector <4 x i32> %broadcast.splatinsert968, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body960

vector.body960:                                   ; preds = %vector.body960, %polly.loop_header722.2
  %index962 = phi i64 [ 0, %polly.loop_header722.2 ], [ %index.next963, %vector.body960 ]
  %vec.ind966 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2 ], [ %vec.ind.next967, %vector.body960 ]
  %431 = add nuw nsw <4 x i64> %vec.ind966, <i64 64, i64 64, i64 64, i64 64>
  %432 = trunc <4 x i64> %431 to <4 x i32>
  %433 = mul <4 x i32> %broadcast.splat969, %432
  %434 = add <4 x i32> %433, <i32 3, i32 3, i32 3, i32 3>
  %435 = urem <4 x i32> %434, <i32 80, i32 80, i32 80, i32 80>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = extractelement <4 x i64> %431, i32 0
  %439 = shl i64 %438, 3
  %440 = add nuw nsw i64 %439, %429
  %441 = getelementptr i8, i8* %call, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %437, <4 x double>* %442, align 8, !alias.scope !95, !noalias !97
  %index.next963 = add i64 %index962, 4
  %vec.ind.next967 = add <4 x i64> %vec.ind966, <i64 4, i64 4, i64 4, i64 4>
  %443 = icmp eq i64 %index.next963, 16
  br i1 %443, label %polly.loop_exit730.2, label %vector.body960, !llvm.loop !116

polly.loop_exit730.2:                             ; preds = %vector.body960
  %polly.indvar_next726.2 = add nuw nsw i64 %polly.indvar725.2, 1
  %exitcond854.2.not = icmp eq i64 %polly.indvar_next726.2, 32
  br i1 %exitcond854.2.not, label %polly.loop_header722.1887, label %polly.loop_header722.2

polly.loop_header722.1887:                        ; preds = %polly.loop_exit730.2, %polly.loop_exit730.1898
  %polly.indvar725.1886 = phi i64 [ %polly.indvar_next726.1896, %polly.loop_exit730.1898 ], [ 0, %polly.loop_exit730.2 ]
  %444 = add nuw nsw i64 %polly.indvar725.1886, 32
  %445 = mul nuw nsw i64 %444, 640
  %446 = trunc i64 %444 to i32
  %broadcast.splatinsert982 = insertelement <4 x i32> poison, i32 %446, i32 0
  %broadcast.splat983 = shufflevector <4 x i32> %broadcast.splatinsert982, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %polly.loop_header722.1887
  %index974 = phi i64 [ 0, %polly.loop_header722.1887 ], [ %index.next975, %vector.body972 ]
  %vec.ind980 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.1887 ], [ %vec.ind.next981, %vector.body972 ]
  %447 = mul <4 x i32> %vec.ind980, %broadcast.splat983
  %448 = add <4 x i32> %447, <i32 3, i32 3, i32 3, i32 3>
  %449 = urem <4 x i32> %448, <i32 80, i32 80, i32 80, i32 80>
  %450 = sitofp <4 x i32> %449 to <4 x double>
  %451 = fmul fast <4 x double> %450, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %452 = shl i64 %index974, 3
  %453 = add nuw nsw i64 %452, %445
  %454 = getelementptr i8, i8* %call, i64 %453
  %455 = bitcast i8* %454 to <4 x double>*
  store <4 x double> %451, <4 x double>* %455, align 8, !alias.scope !95, !noalias !97
  %index.next975 = add i64 %index974, 4
  %vec.ind.next981 = add <4 x i32> %vec.ind980, <i32 4, i32 4, i32 4, i32 4>
  %456 = icmp eq i64 %index.next975, 32
  br i1 %456, label %polly.loop_exit730.1898, label %vector.body972, !llvm.loop !117

polly.loop_exit730.1898:                          ; preds = %vector.body972
  %polly.indvar_next726.1896 = add nuw nsw i64 %polly.indvar725.1886, 1
  %exitcond854.1897.not = icmp eq i64 %polly.indvar_next726.1896, 32
  br i1 %exitcond854.1897.not, label %polly.loop_header722.1.1, label %polly.loop_header722.1887

polly.loop_header722.1.1:                         ; preds = %polly.loop_exit730.1898, %polly.loop_exit730.1.1
  %polly.indvar725.1.1 = phi i64 [ %polly.indvar_next726.1.1, %polly.loop_exit730.1.1 ], [ 0, %polly.loop_exit730.1898 ]
  %457 = add nuw nsw i64 %polly.indvar725.1.1, 32
  %458 = mul nuw nsw i64 %457, 640
  %459 = trunc i64 %457 to i32
  %broadcast.splatinsert994 = insertelement <4 x i32> poison, i32 %459, i32 0
  %broadcast.splat995 = shufflevector <4 x i32> %broadcast.splatinsert994, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %polly.loop_header722.1.1
  %index988 = phi i64 [ 0, %polly.loop_header722.1.1 ], [ %index.next989, %vector.body986 ]
  %vec.ind992 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.1 ], [ %vec.ind.next993, %vector.body986 ]
  %460 = add nuw nsw <4 x i64> %vec.ind992, <i64 32, i64 32, i64 32, i64 32>
  %461 = trunc <4 x i64> %460 to <4 x i32>
  %462 = mul <4 x i32> %broadcast.splat995, %461
  %463 = add <4 x i32> %462, <i32 3, i32 3, i32 3, i32 3>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %467 = extractelement <4 x i64> %460, i32 0
  %468 = shl i64 %467, 3
  %469 = add nuw nsw i64 %468, %458
  %470 = getelementptr i8, i8* %call, i64 %469
  %471 = bitcast i8* %470 to <4 x double>*
  store <4 x double> %466, <4 x double>* %471, align 8, !alias.scope !95, !noalias !97
  %index.next989 = add i64 %index988, 4
  %vec.ind.next993 = add <4 x i64> %vec.ind992, <i64 4, i64 4, i64 4, i64 4>
  %472 = icmp eq i64 %index.next989, 32
  br i1 %472, label %polly.loop_exit730.1.1, label %vector.body986, !llvm.loop !118

polly.loop_exit730.1.1:                           ; preds = %vector.body986
  %polly.indvar_next726.1.1 = add nuw nsw i64 %polly.indvar725.1.1, 1
  %exitcond854.1.1.not = icmp eq i64 %polly.indvar_next726.1.1, 32
  br i1 %exitcond854.1.1.not, label %polly.loop_header722.2.1, label %polly.loop_header722.1.1

polly.loop_header722.2.1:                         ; preds = %polly.loop_exit730.1.1, %polly.loop_exit730.2.1
  %polly.indvar725.2.1 = phi i64 [ %polly.indvar_next726.2.1, %polly.loop_exit730.2.1 ], [ 0, %polly.loop_exit730.1.1 ]
  %473 = add nuw nsw i64 %polly.indvar725.2.1, 32
  %474 = mul nuw nsw i64 %473, 640
  %475 = trunc i64 %473 to i32
  %broadcast.splatinsert1006 = insertelement <4 x i32> poison, i32 %475, i32 0
  %broadcast.splat1007 = shufflevector <4 x i32> %broadcast.splatinsert1006, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %polly.loop_header722.2.1
  %index1000 = phi i64 [ 0, %polly.loop_header722.2.1 ], [ %index.next1001, %vector.body998 ]
  %vec.ind1004 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.1 ], [ %vec.ind.next1005, %vector.body998 ]
  %476 = add nuw nsw <4 x i64> %vec.ind1004, <i64 64, i64 64, i64 64, i64 64>
  %477 = trunc <4 x i64> %476 to <4 x i32>
  %478 = mul <4 x i32> %broadcast.splat1007, %477
  %479 = add <4 x i32> %478, <i32 3, i32 3, i32 3, i32 3>
  %480 = urem <4 x i32> %479, <i32 80, i32 80, i32 80, i32 80>
  %481 = sitofp <4 x i32> %480 to <4 x double>
  %482 = fmul fast <4 x double> %481, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %483 = extractelement <4 x i64> %476, i32 0
  %484 = shl i64 %483, 3
  %485 = add nuw nsw i64 %484, %474
  %486 = getelementptr i8, i8* %call, i64 %485
  %487 = bitcast i8* %486 to <4 x double>*
  store <4 x double> %482, <4 x double>* %487, align 8, !alias.scope !95, !noalias !97
  %index.next1001 = add i64 %index1000, 4
  %vec.ind.next1005 = add <4 x i64> %vec.ind1004, <i64 4, i64 4, i64 4, i64 4>
  %488 = icmp eq i64 %index.next1001, 16
  br i1 %488, label %polly.loop_exit730.2.1, label %vector.body998, !llvm.loop !119

polly.loop_exit730.2.1:                           ; preds = %vector.body998
  %polly.indvar_next726.2.1 = add nuw nsw i64 %polly.indvar725.2.1, 1
  %exitcond854.2.1.not = icmp eq i64 %polly.indvar_next726.2.1, 32
  br i1 %exitcond854.2.1.not, label %polly.loop_header722.2901, label %polly.loop_header722.2.1

polly.loop_header722.2901:                        ; preds = %polly.loop_exit730.2.1, %polly.loop_exit730.2912
  %polly.indvar725.2900 = phi i64 [ %polly.indvar_next726.2910, %polly.loop_exit730.2912 ], [ 0, %polly.loop_exit730.2.1 ]
  %489 = add nuw nsw i64 %polly.indvar725.2900, 64
  %490 = mul nuw nsw i64 %489, 640
  %491 = trunc i64 %489 to i32
  %broadcast.splatinsert1020 = insertelement <4 x i32> poison, i32 %491, i32 0
  %broadcast.splat1021 = shufflevector <4 x i32> %broadcast.splatinsert1020, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %polly.loop_header722.2901
  %index1012 = phi i64 [ 0, %polly.loop_header722.2901 ], [ %index.next1013, %vector.body1010 ]
  %vec.ind1018 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.2901 ], [ %vec.ind.next1019, %vector.body1010 ]
  %492 = mul <4 x i32> %vec.ind1018, %broadcast.splat1021
  %493 = add <4 x i32> %492, <i32 3, i32 3, i32 3, i32 3>
  %494 = urem <4 x i32> %493, <i32 80, i32 80, i32 80, i32 80>
  %495 = sitofp <4 x i32> %494 to <4 x double>
  %496 = fmul fast <4 x double> %495, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %497 = shl i64 %index1012, 3
  %498 = add nuw nsw i64 %497, %490
  %499 = getelementptr i8, i8* %call, i64 %498
  %500 = bitcast i8* %499 to <4 x double>*
  store <4 x double> %496, <4 x double>* %500, align 8, !alias.scope !95, !noalias !97
  %index.next1013 = add i64 %index1012, 4
  %vec.ind.next1019 = add <4 x i32> %vec.ind1018, <i32 4, i32 4, i32 4, i32 4>
  %501 = icmp eq i64 %index.next1013, 32
  br i1 %501, label %polly.loop_exit730.2912, label %vector.body1010, !llvm.loop !120

polly.loop_exit730.2912:                          ; preds = %vector.body1010
  %polly.indvar_next726.2910 = add nuw nsw i64 %polly.indvar725.2900, 1
  %exitcond854.2911.not = icmp eq i64 %polly.indvar_next726.2910, 16
  br i1 %exitcond854.2911.not, label %polly.loop_header722.1.2, label %polly.loop_header722.2901

polly.loop_header722.1.2:                         ; preds = %polly.loop_exit730.2912, %polly.loop_exit730.1.2
  %polly.indvar725.1.2 = phi i64 [ %polly.indvar_next726.1.2, %polly.loop_exit730.1.2 ], [ 0, %polly.loop_exit730.2912 ]
  %502 = add nuw nsw i64 %polly.indvar725.1.2, 64
  %503 = mul nuw nsw i64 %502, 640
  %504 = trunc i64 %502 to i32
  %broadcast.splatinsert1032 = insertelement <4 x i32> poison, i32 %504, i32 0
  %broadcast.splat1033 = shufflevector <4 x i32> %broadcast.splatinsert1032, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %polly.loop_header722.1.2
  %index1026 = phi i64 [ 0, %polly.loop_header722.1.2 ], [ %index.next1027, %vector.body1024 ]
  %vec.ind1030 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.2 ], [ %vec.ind.next1031, %vector.body1024 ]
  %505 = add nuw nsw <4 x i64> %vec.ind1030, <i64 32, i64 32, i64 32, i64 32>
  %506 = trunc <4 x i64> %505 to <4 x i32>
  %507 = mul <4 x i32> %broadcast.splat1033, %506
  %508 = add <4 x i32> %507, <i32 3, i32 3, i32 3, i32 3>
  %509 = urem <4 x i32> %508, <i32 80, i32 80, i32 80, i32 80>
  %510 = sitofp <4 x i32> %509 to <4 x double>
  %511 = fmul fast <4 x double> %510, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %512 = extractelement <4 x i64> %505, i32 0
  %513 = shl i64 %512, 3
  %514 = add nuw nsw i64 %513, %503
  %515 = getelementptr i8, i8* %call, i64 %514
  %516 = bitcast i8* %515 to <4 x double>*
  store <4 x double> %511, <4 x double>* %516, align 8, !alias.scope !95, !noalias !97
  %index.next1027 = add i64 %index1026, 4
  %vec.ind.next1031 = add <4 x i64> %vec.ind1030, <i64 4, i64 4, i64 4, i64 4>
  %517 = icmp eq i64 %index.next1027, 32
  br i1 %517, label %polly.loop_exit730.1.2, label %vector.body1024, !llvm.loop !121

polly.loop_exit730.1.2:                           ; preds = %vector.body1024
  %polly.indvar_next726.1.2 = add nuw nsw i64 %polly.indvar725.1.2, 1
  %exitcond854.1.2.not = icmp eq i64 %polly.indvar_next726.1.2, 16
  br i1 %exitcond854.1.2.not, label %polly.loop_header722.2.2, label %polly.loop_header722.1.2

polly.loop_header722.2.2:                         ; preds = %polly.loop_exit730.1.2, %polly.loop_exit730.2.2
  %polly.indvar725.2.2 = phi i64 [ %polly.indvar_next726.2.2, %polly.loop_exit730.2.2 ], [ 0, %polly.loop_exit730.1.2 ]
  %518 = add nuw nsw i64 %polly.indvar725.2.2, 64
  %519 = mul nuw nsw i64 %518, 640
  %520 = trunc i64 %518 to i32
  %broadcast.splatinsert1044 = insertelement <4 x i32> poison, i32 %520, i32 0
  %broadcast.splat1045 = shufflevector <4 x i32> %broadcast.splatinsert1044, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %polly.loop_header722.2.2
  %index1038 = phi i64 [ 0, %polly.loop_header722.2.2 ], [ %index.next1039, %vector.body1036 ]
  %vec.ind1042 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.2 ], [ %vec.ind.next1043, %vector.body1036 ]
  %521 = add nuw nsw <4 x i64> %vec.ind1042, <i64 64, i64 64, i64 64, i64 64>
  %522 = trunc <4 x i64> %521 to <4 x i32>
  %523 = mul <4 x i32> %broadcast.splat1045, %522
  %524 = add <4 x i32> %523, <i32 3, i32 3, i32 3, i32 3>
  %525 = urem <4 x i32> %524, <i32 80, i32 80, i32 80, i32 80>
  %526 = sitofp <4 x i32> %525 to <4 x double>
  %527 = fmul fast <4 x double> %526, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %528 = extractelement <4 x i64> %521, i32 0
  %529 = shl i64 %528, 3
  %530 = add nuw nsw i64 %529, %519
  %531 = getelementptr i8, i8* %call, i64 %530
  %532 = bitcast i8* %531 to <4 x double>*
  store <4 x double> %527, <4 x double>* %532, align 8, !alias.scope !95, !noalias !97
  %index.next1039 = add i64 %index1038, 4
  %vec.ind.next1043 = add <4 x i64> %vec.ind1042, <i64 4, i64 4, i64 4, i64 4>
  %533 = icmp eq i64 %index.next1039, 16
  br i1 %533, label %polly.loop_exit730.2.2, label %vector.body1036, !llvm.loop !122

polly.loop_exit730.2.2:                           ; preds = %vector.body1036
  %polly.indvar_next726.2.2 = add nuw nsw i64 %polly.indvar725.2.2, 1
  %exitcond854.2.2.not = icmp eq i64 %polly.indvar_next726.2.2, 16
  br i1 %exitcond854.2.2.not, label %polly.loop_header749, label %polly.loop_header722.2.2
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
!21 = distinct !{!"A"}
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
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !23, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !23, !39, !40}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = !{!"llvm.loop.interchange.followup_interchanged", !41}
!41 = distinct !{!41, !12, !23, !39, !42, !43, !44}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !23, !46, !47, !48, !49, !50, !56}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 16}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !23, !52, !53, !54, !55}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call1"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !70, !72}
!77 = distinct !{!77, !78, !"polly.alias.scope.MemRef_call"}
!78 = distinct !{!78, !"polly.alias.scope.domain"}
!79 = !{!80, !81, !82}
!80 = distinct !{!80, !78, !"polly.alias.scope.MemRef_call1"}
!81 = distinct !{!81, !78, !"polly.alias.scope.MemRef_call2"}
!82 = distinct !{!82, !78, !"polly.alias.scope.Packed_MemRef_call1"}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !75, !13}
!85 = !{!77, !80, !82}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90, !91}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !87, !"polly.alias.scope.Packed_MemRef_call1"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !75, !13}
!94 = !{!86, !89, !91}
!95 = distinct !{!95, !96, !"polly.alias.scope.MemRef_call"}
!96 = distinct !{!96, !"polly.alias.scope.domain"}
!97 = !{!98, !99}
!98 = distinct !{!98, !96, !"polly.alias.scope.MemRef_call1"}
!99 = distinct !{!99, !96, !"polly.alias.scope.MemRef_call2"}
!100 = distinct !{!100, !13}
!101 = !{!98, !95}
!102 = distinct !{!102, !13}
!103 = !{!99, !95}
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
!122 = distinct !{!122, !13}
