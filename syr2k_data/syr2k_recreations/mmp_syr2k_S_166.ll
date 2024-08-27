; ModuleID = 'syr2k_recreations//mmp_syr2k_S_166.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_166.c"
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting424
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
  br i1 %57, label %middle.block1222, label %vector.body1224, !llvm.loop !60

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting261
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
  br i1 %68, label %middle.block1248, label %vector.body1250, !llvm.loop !62

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

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

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

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
  %wide.load1273 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1273, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1270 = add i64 %index1269, 4
  %95 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %95, label %middle.block1260, label %vector.body1262, !llvm.loop !74

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
  %exitcond802.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond802.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv794 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next795, %polly.loop_exit223 ]
  %indvars.iv = phi i64 [ 4, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  br label %polly.loop_header205

polly.loop_exit223:                               ; preds = %polly.loop_exit235.3
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 4
  %exitcond801.not = icmp eq i64 %polly.indvar_next203, 20
  br i1 %exitcond801.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %97 = mul nuw nsw i64 %polly.indvar208, 480
  %scevgep792 = getelementptr i8, i8* %malloccall, i64 %97
  %scevgep793 = getelementptr i8, i8* %call1, i64 %97
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep792, i8* noundef nonnull align 8 dereferenceable(480) %scevgep793, i64 480, i1 false)
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next209, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header221.preheader, label %polly.loop_header205

polly.loop_header221.preheader:                   ; preds = %polly.loop_header205
  %98 = shl nuw nsw i64 %polly.indvar202, 2
  %99 = mul nuw nsw i64 %polly.indvar202, 1920
  %polly.access.mul.Packed_MemRef_call1251 = mul nuw nsw i64 %polly.indvar202, 240
  %100 = mul nuw nsw i64 %polly.indvar202, 2560
  %101 = or i64 %98, 1
  %102 = mul nuw nsw i64 %101, 480
  %polly.access.mul.Packed_MemRef_call1251.1 = mul nuw nsw i64 %101, 60
  %103 = mul nuw nsw i64 %101, 640
  %104 = or i64 %98, 2
  %105 = mul nuw nsw i64 %104, 480
  %polly.access.mul.Packed_MemRef_call1251.2 = mul nuw nsw i64 %104, 60
  %106 = mul nuw nsw i64 %104, 640
  %107 = or i64 %98, 3
  %108 = mul nuw nsw i64 %107, 480
  %polly.access.mul.Packed_MemRef_call1251.3 = mul nuw nsw i64 %107, 60
  %109 = mul nuw nsw i64 %107, 640
  %110 = add nuw nsw i64 %indvars.iv794, 2
  br label %polly.loop_header221

polly.loop_header221:                             ; preds = %polly.loop_header221.preheader, %polly.loop_exit235.3
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit235.3 ], [ 0, %polly.loop_header221.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar224, 3
  %scevgep243 = getelementptr i8, i8* %call2, i64 %111
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %99
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call1252 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251, %polly.indvar224
  %polly.access.Packed_MemRef_call1253 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252
  %_p_scalar_254 = load double, double* %polly.access.Packed_MemRef_call1253, align 8
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %scevgep244.1 = getelementptr i8, i8* %scevgep243, i64 %102
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call1252.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251.1, %polly.indvar224
  %polly.access.Packed_MemRef_call1253.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252.1
  %_p_scalar_254.1 = load double, double* %polly.access.Packed_MemRef_call1253.1, align 8
  br label %polly.loop_header233.1

polly.loop_header233:                             ; preds = %polly.loop_header233, %polly.loop_header221
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header221 ], [ %polly.indvar_next237, %polly.loop_header233 ]
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar236, 60
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239, %polly.indvar224
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  %_p_scalar_242 = load double, double* %polly.access.Packed_MemRef_call1241, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %112 = mul nuw nsw i64 %polly.indvar236, 480
  %scevgep248 = getelementptr i8, i8* %scevgep243, i64 %112
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %113 = shl nuw nsw i64 %polly.indvar236, 3
  %114 = add nuw nsw i64 %113, %100
  %scevgep255 = getelementptr i8, i8* %call, i64 %114
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_257
  store double %p_add42.i118, double* %scevgep255256, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next237, %indvars.iv794
  br i1 %exitcond798.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start260:                                   ; preds = %kernel_syr2k.exit
  %malloccall262 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header346

polly.exiting261:                                 ; preds = %polly.loop_exit386
  tail call void @free(i8* nonnull %malloccall262)
  br label %kernel_syr2k.exit90

polly.loop_header346:                             ; preds = %polly.loop_exit354, %polly.start260
  %indvar1237 = phi i64 [ %indvar.next1238, %polly.loop_exit354 ], [ 0, %polly.start260 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 1, %polly.start260 ]
  %115 = add i64 %indvar1237, 1
  %116 = mul nuw nsw i64 %polly.indvar349, 640
  %scevgep358 = getelementptr i8, i8* %call, i64 %116
  %min.iters.check1239 = icmp ult i64 %115, 4
  br i1 %min.iters.check1239, label %polly.loop_header352.preheader, label %vector.ph1240

vector.ph1240:                                    ; preds = %polly.loop_header346
  %n.vec1242 = and i64 %115, -4
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1240
  %index1243 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1244, %vector.body1236 ]
  %117 = shl nuw nsw i64 %index1243, 3
  %118 = getelementptr i8, i8* %scevgep358, i64 %117
  %119 = bitcast i8* %118 to <4 x double>*
  %wide.load1247 = load <4 x double>, <4 x double>* %119, align 8, !alias.scope !78, !noalias !80
  %120 = fmul fast <4 x double> %wide.load1247, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %121 = bitcast i8* %118 to <4 x double>*
  store <4 x double> %120, <4 x double>* %121, align 8, !alias.scope !78, !noalias !80
  %index.next1244 = add i64 %index1243, 4
  %122 = icmp eq i64 %index.next1244, %n.vec1242
  br i1 %122, label %middle.block1234, label %vector.body1236, !llvm.loop !84

middle.block1234:                                 ; preds = %vector.body1236
  %cmp.n1246 = icmp eq i64 %115, %n.vec1242
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
  br label %polly.loop_header362

polly.loop_header352:                             ; preds = %polly.loop_header352.preheader, %polly.loop_header352
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_header352 ], [ %polly.indvar355.ph, %polly.loop_header352.preheader ]
  %123 = shl nuw nsw i64 %polly.indvar355, 3
  %scevgep359 = getelementptr i8, i8* %scevgep358, i64 %123
  %scevgep359360 = bitcast i8* %scevgep359 to double*
  %_p_scalar_361 = load double, double* %scevgep359360, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_361, 1.200000e+00
  store double %p_mul.i57, double* %scevgep359360, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next356, %polly.indvar349
  br i1 %exitcond818.not, label %polly.loop_exit354, label %polly.loop_header352, !llvm.loop !85

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_exit386
  %indvars.iv810 = phi i64 [ 1, %polly.loop_header362.preheader ], [ %indvars.iv.next811, %polly.loop_exit386 ]
  %indvars.iv807 = phi i64 [ 4, %polly.loop_header362.preheader ], [ %indvars.iv.next808, %polly.loop_exit386 ]
  %polly.indvar365 = phi i64 [ 0, %polly.loop_header362.preheader ], [ %polly.indvar_next366, %polly.loop_exit386 ]
  br label %polly.loop_header368

polly.loop_exit386:                               ; preds = %polly.loop_exit398.3
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 4
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 4
  %exitcond817.not = icmp eq i64 %polly.indvar_next366, 20
  br i1 %exitcond817.not, label %polly.exiting261, label %polly.loop_header362

polly.loop_header368:                             ; preds = %polly.loop_header368, %polly.loop_header362
  %polly.indvar371 = phi i64 [ 0, %polly.loop_header362 ], [ %polly.indvar_next372, %polly.loop_header368 ]
  %124 = mul nuw nsw i64 %polly.indvar371, 480
  %scevgep805 = getelementptr i8, i8* %malloccall262, i64 %124
  %scevgep806 = getelementptr i8, i8* %call1, i64 %124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep805, i8* noundef nonnull align 8 dereferenceable(480) %scevgep806, i64 480, i1 false)
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next372, %indvars.iv807
  br i1 %exitcond809.not, label %polly.loop_header384.preheader, label %polly.loop_header368

polly.loop_header384.preheader:                   ; preds = %polly.loop_header368
  %125 = shl nuw nsw i64 %polly.indvar365, 2
  %126 = mul nuw nsw i64 %polly.indvar365, 1920
  %polly.access.mul.Packed_MemRef_call1263414 = mul nuw nsw i64 %polly.indvar365, 240
  %127 = mul nuw nsw i64 %polly.indvar365, 2560
  %128 = or i64 %125, 1
  %129 = mul nuw nsw i64 %128, 480
  %polly.access.mul.Packed_MemRef_call1263414.1 = mul nuw nsw i64 %128, 60
  %130 = mul nuw nsw i64 %128, 640
  %131 = or i64 %125, 2
  %132 = mul nuw nsw i64 %131, 480
  %polly.access.mul.Packed_MemRef_call1263414.2 = mul nuw nsw i64 %131, 60
  %133 = mul nuw nsw i64 %131, 640
  %134 = or i64 %125, 3
  %135 = mul nuw nsw i64 %134, 480
  %polly.access.mul.Packed_MemRef_call1263414.3 = mul nuw nsw i64 %134, 60
  %136 = mul nuw nsw i64 %134, 640
  %137 = add nuw nsw i64 %indvars.iv810, 2
  br label %polly.loop_header384

polly.loop_header384:                             ; preds = %polly.loop_header384.preheader, %polly.loop_exit398.3
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit398.3 ], [ 0, %polly.loop_header384.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar387, 3
  %scevgep406 = getelementptr i8, i8* %call2, i64 %138
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %126
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call1263415 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414, %polly.indvar387
  %polly.access.Packed_MemRef_call1263416 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415
  %_p_scalar_417 = load double, double* %polly.access.Packed_MemRef_call1263416, align 8
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396
  %scevgep407.1 = getelementptr i8, i8* %scevgep406, i64 %129
  %scevgep407408.1 = bitcast i8* %scevgep407.1 to double*
  %_p_scalar_409.1 = load double, double* %scevgep407408.1, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call1263415.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414.1, %polly.indvar387
  %polly.access.Packed_MemRef_call1263416.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415.1
  %_p_scalar_417.1 = load double, double* %polly.access.Packed_MemRef_call1263416.1, align 8
  br label %polly.loop_header396.1

polly.loop_header396:                             ; preds = %polly.loop_header396, %polly.loop_header384
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header384 ], [ %polly.indvar_next400, %polly.loop_header396 ]
  %polly.access.mul.Packed_MemRef_call1263402 = mul nuw nsw i64 %polly.indvar399, 60
  %polly.access.add.Packed_MemRef_call1263403 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402, %polly.indvar387
  %polly.access.Packed_MemRef_call1263404 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403
  %_p_scalar_405 = load double, double* %polly.access.Packed_MemRef_call1263404, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_409, %_p_scalar_405
  %139 = mul nuw nsw i64 %polly.indvar399, 480
  %scevgep411 = getelementptr i8, i8* %scevgep406, i64 %139
  %scevgep411412 = bitcast i8* %scevgep411 to double*
  %_p_scalar_413 = load double, double* %scevgep411412, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75 = fmul fast double %_p_scalar_417, %_p_scalar_413
  %140 = shl nuw nsw i64 %polly.indvar399, 3
  %141 = add nuw nsw i64 %140, %127
  %scevgep418 = getelementptr i8, i8* %call, i64 %141
  %scevgep418419 = bitcast i8* %scevgep418 to double*
  %_p_scalar_420 = load double, double* %scevgep418419, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_420
  store double %p_add42.i79, double* %scevgep418419, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next400, %indvars.iv810
  br i1 %exitcond814.not, label %polly.loop_exit398, label %polly.loop_header396

polly.start423:                                   ; preds = %init_array.exit
  %malloccall425 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header509

polly.exiting424:                                 ; preds = %polly.loop_exit549
  tail call void @free(i8* nonnull %malloccall425)
  br label %kernel_syr2k.exit

polly.loop_header509:                             ; preds = %polly.loop_exit517, %polly.start423
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit517 ], [ 0, %polly.start423 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 1, %polly.start423 ]
  %142 = add i64 %indvar, 1
  %143 = mul nuw nsw i64 %polly.indvar512, 640
  %scevgep521 = getelementptr i8, i8* %call, i64 %143
  %min.iters.check1213 = icmp ult i64 %142, 4
  br i1 %min.iters.check1213, label %polly.loop_header515.preheader, label %vector.ph1214

vector.ph1214:                                    ; preds = %polly.loop_header509
  %n.vec1216 = and i64 %142, -4
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1214
  %index1217 = phi i64 [ 0, %vector.ph1214 ], [ %index.next1218, %vector.body1212 ]
  %144 = shl nuw nsw i64 %index1217, 3
  %145 = getelementptr i8, i8* %scevgep521, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  %wide.load1221 = load <4 x double>, <4 x double>* %146, align 8, !alias.scope !87, !noalias !89
  %147 = fmul fast <4 x double> %wide.load1221, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %148 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %147, <4 x double>* %148, align 8, !alias.scope !87, !noalias !89
  %index.next1218 = add i64 %index1217, 4
  %149 = icmp eq i64 %index.next1218, %n.vec1216
  br i1 %149, label %middle.block1210, label %vector.body1212, !llvm.loop !93

middle.block1210:                                 ; preds = %vector.body1212
  %cmp.n1220 = icmp eq i64 %142, %n.vec1216
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
  br label %polly.loop_header525

polly.loop_header515:                             ; preds = %polly.loop_header515.preheader, %polly.loop_header515
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_header515 ], [ %polly.indvar518.ph, %polly.loop_header515.preheader ]
  %150 = shl nuw nsw i64 %polly.indvar518, 3
  %scevgep522 = getelementptr i8, i8* %scevgep521, i64 %150
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !87, !noalias !89
  %p_mul.i = fmul fast double %_p_scalar_524, 1.200000e+00
  store double %p_mul.i, double* %scevgep522523, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next519, %polly.indvar512
  br i1 %exitcond834.not, label %polly.loop_exit517, label %polly.loop_header515, !llvm.loop !94

polly.loop_header525:                             ; preds = %polly.loop_header525.preheader, %polly.loop_exit549
  %indvars.iv826 = phi i64 [ 1, %polly.loop_header525.preheader ], [ %indvars.iv.next827, %polly.loop_exit549 ]
  %indvars.iv823 = phi i64 [ 4, %polly.loop_header525.preheader ], [ %indvars.iv.next824, %polly.loop_exit549 ]
  %polly.indvar528 = phi i64 [ 0, %polly.loop_header525.preheader ], [ %polly.indvar_next529, %polly.loop_exit549 ]
  br label %polly.loop_header531

polly.loop_exit549:                               ; preds = %polly.loop_exit561.3
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %indvars.iv.next824 = add nuw nsw i64 %indvars.iv823, 4
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 4
  %exitcond833.not = icmp eq i64 %polly.indvar_next529, 20
  br i1 %exitcond833.not, label %polly.exiting424, label %polly.loop_header525

polly.loop_header531:                             ; preds = %polly.loop_header531, %polly.loop_header525
  %polly.indvar534 = phi i64 [ 0, %polly.loop_header525 ], [ %polly.indvar_next535, %polly.loop_header531 ]
  %151 = mul nuw nsw i64 %polly.indvar534, 480
  %scevgep821 = getelementptr i8, i8* %malloccall425, i64 %151
  %scevgep822 = getelementptr i8, i8* %call1, i64 %151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep821, i8* noundef nonnull align 8 dereferenceable(480) %scevgep822, i64 480, i1 false)
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next535, %indvars.iv823
  br i1 %exitcond825.not, label %polly.loop_header547.preheader, label %polly.loop_header531

polly.loop_header547.preheader:                   ; preds = %polly.loop_header531
  %152 = shl nuw nsw i64 %polly.indvar528, 2
  %153 = mul nuw nsw i64 %polly.indvar528, 1920
  %polly.access.mul.Packed_MemRef_call1426577 = mul nuw nsw i64 %polly.indvar528, 240
  %154 = mul nuw nsw i64 %polly.indvar528, 2560
  %155 = or i64 %152, 1
  %156 = mul nuw nsw i64 %155, 480
  %polly.access.mul.Packed_MemRef_call1426577.1 = mul nuw nsw i64 %155, 60
  %157 = mul nuw nsw i64 %155, 640
  %158 = or i64 %152, 2
  %159 = mul nuw nsw i64 %158, 480
  %polly.access.mul.Packed_MemRef_call1426577.2 = mul nuw nsw i64 %158, 60
  %160 = mul nuw nsw i64 %158, 640
  %161 = or i64 %152, 3
  %162 = mul nuw nsw i64 %161, 480
  %polly.access.mul.Packed_MemRef_call1426577.3 = mul nuw nsw i64 %161, 60
  %163 = mul nuw nsw i64 %161, 640
  %164 = add nuw nsw i64 %indvars.iv826, 2
  br label %polly.loop_header547

polly.loop_header547:                             ; preds = %polly.loop_header547.preheader, %polly.loop_exit561.3
  %polly.indvar550 = phi i64 [ %polly.indvar_next551, %polly.loop_exit561.3 ], [ 0, %polly.loop_header547.preheader ]
  %165 = shl nuw nsw i64 %polly.indvar550, 3
  %scevgep569 = getelementptr i8, i8* %call2, i64 %165
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %153
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !91, !noalias !95
  %polly.access.add.Packed_MemRef_call1426578 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577, %polly.indvar550
  %polly.access.Packed_MemRef_call1426579 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578
  %_p_scalar_580 = load double, double* %polly.access.Packed_MemRef_call1426579, align 8
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559
  %scevgep570.1 = getelementptr i8, i8* %scevgep569, i64 %156
  %scevgep570571.1 = bitcast i8* %scevgep570.1 to double*
  %_p_scalar_572.1 = load double, double* %scevgep570571.1, align 8, !alias.scope !91, !noalias !95
  %polly.access.add.Packed_MemRef_call1426578.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577.1, %polly.indvar550
  %polly.access.Packed_MemRef_call1426579.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578.1
  %_p_scalar_580.1 = load double, double* %polly.access.Packed_MemRef_call1426579.1, align 8
  br label %polly.loop_header559.1

polly.loop_header559:                             ; preds = %polly.loop_header559, %polly.loop_header547
  %polly.indvar562 = phi i64 [ 0, %polly.loop_header547 ], [ %polly.indvar_next563, %polly.loop_header559 ]
  %polly.access.mul.Packed_MemRef_call1426565 = mul nuw nsw i64 %polly.indvar562, 60
  %polly.access.add.Packed_MemRef_call1426566 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565, %polly.indvar550
  %polly.access.Packed_MemRef_call1426567 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566
  %_p_scalar_568 = load double, double* %polly.access.Packed_MemRef_call1426567, align 8
  %p_mul27.i = fmul fast double %_p_scalar_572, %_p_scalar_568
  %166 = mul nuw nsw i64 %polly.indvar562, 480
  %scevgep574 = getelementptr i8, i8* %scevgep569, i64 %166
  %scevgep574575 = bitcast i8* %scevgep574 to double*
  %_p_scalar_576 = load double, double* %scevgep574575, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i = fmul fast double %_p_scalar_580, %_p_scalar_576
  %167 = shl nuw nsw i64 %polly.indvar562, 3
  %168 = add nuw nsw i64 %167, %154
  %scevgep581 = getelementptr i8, i8* %call, i64 %168
  %scevgep581582 = bitcast i8* %scevgep581 to double*
  %_p_scalar_583 = load double, double* %scevgep581582, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_583
  store double %p_add42.i, double* %scevgep581582, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next563, %indvars.iv826
  br i1 %exitcond830.not, label %polly.loop_exit561, label %polly.loop_header559

polly.loop_header722:                             ; preds = %entry, %polly.loop_exit730
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_exit730 ], [ 0, %entry ]
  %169 = mul nuw nsw i64 %polly.indvar725, 640
  %170 = trunc i64 %polly.indvar725 to i32
  %broadcast.splatinsert944 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat945 = shufflevector <4 x i32> %broadcast.splatinsert944, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %polly.loop_header722
  %index936 = phi i64 [ 0, %polly.loop_header722 ], [ %index.next937, %vector.body934 ]
  %vec.ind942 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722 ], [ %vec.ind.next943, %vector.body934 ]
  %171 = mul <4 x i32> %vec.ind942, %broadcast.splat945
  %172 = add <4 x i32> %171, <i32 3, i32 3, i32 3, i32 3>
  %173 = urem <4 x i32> %172, <i32 80, i32 80, i32 80, i32 80>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %176 = shl i64 %index936, 3
  %177 = add nuw nsw i64 %176, %169
  %178 = getelementptr i8, i8* %call, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !96, !noalias !98
  %index.next937 = add i64 %index936, 4
  %vec.ind.next943 = add <4 x i32> %vec.ind942, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next937, 32
  br i1 %180, label %polly.loop_exit730, label %vector.body934, !llvm.loop !101

polly.loop_exit730:                               ; preds = %vector.body934
  %polly.indvar_next726 = add nuw nsw i64 %polly.indvar725, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next726, 32
  br i1 %exitcond854.not, label %polly.loop_header722.1, label %polly.loop_header722

polly.loop_header749:                             ; preds = %polly.loop_exit730.2.2, %polly.loop_exit757
  %polly.indvar752 = phi i64 [ %polly.indvar_next753, %polly.loop_exit757 ], [ 0, %polly.loop_exit730.2.2 ]
  %181 = mul nuw nsw i64 %polly.indvar752, 480
  %182 = trunc i64 %polly.indvar752 to i32
  %broadcast.splatinsert1058 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1059 = shufflevector <4 x i32> %broadcast.splatinsert1058, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %polly.loop_header749
  %index1050 = phi i64 [ 0, %polly.loop_header749 ], [ %index.next1051, %vector.body1048 ]
  %vec.ind1056 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749 ], [ %vec.ind.next1057, %vector.body1048 ]
  %183 = mul <4 x i32> %vec.ind1056, %broadcast.splat1059
  %184 = add <4 x i32> %183, <i32 2, i32 2, i32 2, i32 2>
  %185 = urem <4 x i32> %184, <i32 60, i32 60, i32 60, i32 60>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %188 = shl i64 %index1050, 3
  %189 = add i64 %188, %181
  %190 = getelementptr i8, i8* %call2, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %187, <4 x double>* %191, align 8, !alias.scope !100, !noalias !102
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1057 = add <4 x i32> %vec.ind1056, <i32 4, i32 4, i32 4, i32 4>
  %192 = icmp eq i64 %index.next1051, 32
  br i1 %192, label %polly.loop_exit757, label %vector.body1048, !llvm.loop !103

polly.loop_exit757:                               ; preds = %vector.body1048
  %polly.indvar_next753 = add nuw nsw i64 %polly.indvar752, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next753, 32
  br i1 %exitcond845.not, label %polly.loop_header749.1, label %polly.loop_header749

polly.loop_header775:                             ; preds = %polly.loop_exit757.1.2, %polly.loop_exit783
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %polly.loop_exit757.1.2 ]
  %193 = mul nuw nsw i64 %polly.indvar778, 480
  %194 = trunc i64 %polly.indvar778 to i32
  %broadcast.splatinsert1136 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat1137 = shufflevector <4 x i32> %broadcast.splatinsert1136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header775
  %index1128 = phi i64 [ 0, %polly.loop_header775 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1134 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775 ], [ %vec.ind.next1135, %vector.body1126 ]
  %195 = mul <4 x i32> %vec.ind1134, %broadcast.splat1137
  %196 = add <4 x i32> %195, <i32 1, i32 1, i32 1, i32 1>
  %197 = urem <4 x i32> %196, <i32 80, i32 80, i32 80, i32 80>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %200 = shl i64 %index1128, 3
  %201 = add i64 %200, %193
  %202 = getelementptr i8, i8* %call1, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %199, <4 x double>* %203, align 8, !alias.scope !99, !noalias !104
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1135 = add <4 x i32> %vec.ind1134, <i32 4, i32 4, i32 4, i32 4>
  %204 = icmp eq i64 %index.next1129, 32
  br i1 %204, label %polly.loop_exit783, label %vector.body1126, !llvm.loop !105

polly.loop_exit783:                               ; preds = %vector.body1126
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next779, 32
  br i1 %exitcond839.not, label %polly.loop_header775.1, label %polly.loop_header775

polly.loop_header233.1:                           ; preds = %polly.loop_header233.1, %polly.loop_exit235
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_exit235 ], [ %polly.indvar_next237.1, %polly.loop_header233.1 ]
  %polly.access.mul.Packed_MemRef_call1239.1 = mul nuw nsw i64 %polly.indvar236.1, 60
  %polly.access.add.Packed_MemRef_call1240.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.1, %polly.indvar224
  %polly.access.Packed_MemRef_call1241.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.1
  %_p_scalar_242.1 = load double, double* %polly.access.Packed_MemRef_call1241.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_242.1
  %205 = mul nuw nsw i64 %polly.indvar236.1, 480
  %scevgep248.1 = getelementptr i8, i8* %scevgep243, i64 %205
  %scevgep248249.1 = bitcast i8* %scevgep248.1 to double*
  %_p_scalar_250.1 = load double, double* %scevgep248249.1, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114.1 = fmul fast double %_p_scalar_254.1, %_p_scalar_250.1
  %206 = shl nuw nsw i64 %polly.indvar236.1, 3
  %207 = add nuw nsw i64 %206, %103
  %scevgep255.1 = getelementptr i8, i8* %call, i64 %207
  %scevgep255256.1 = bitcast i8* %scevgep255.1 to double*
  %_p_scalar_257.1 = load double, double* %scevgep255256.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_257.1
  store double %p_add42.i118.1, double* %scevgep255256.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond798.1.not = icmp eq i64 %polly.indvar236.1, %indvars.iv794
  br i1 %exitcond798.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_header233.1
  %scevgep244.2 = getelementptr i8, i8* %scevgep243, i64 %105
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call1252.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251.2, %polly.indvar224
  %polly.access.Packed_MemRef_call1253.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252.2
  %_p_scalar_254.2 = load double, double* %polly.access.Packed_MemRef_call1253.2, align 8
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_header233.2, %polly.loop_exit235.1
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_exit235.1 ], [ %polly.indvar_next237.2, %polly.loop_header233.2 ]
  %polly.access.mul.Packed_MemRef_call1239.2 = mul nuw nsw i64 %polly.indvar236.2, 60
  %polly.access.add.Packed_MemRef_call1240.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.2, %polly.indvar224
  %polly.access.Packed_MemRef_call1241.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.2
  %_p_scalar_242.2 = load double, double* %polly.access.Packed_MemRef_call1241.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_242.2
  %208 = mul nuw nsw i64 %polly.indvar236.2, 480
  %scevgep248.2 = getelementptr i8, i8* %scevgep243, i64 %208
  %scevgep248249.2 = bitcast i8* %scevgep248.2 to double*
  %_p_scalar_250.2 = load double, double* %scevgep248249.2, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114.2 = fmul fast double %_p_scalar_254.2, %_p_scalar_250.2
  %209 = shl nuw nsw i64 %polly.indvar236.2, 3
  %210 = add nuw nsw i64 %209, %106
  %scevgep255.2 = getelementptr i8, i8* %call, i64 %210
  %scevgep255256.2 = bitcast i8* %scevgep255.2 to double*
  %_p_scalar_257.2 = load double, double* %scevgep255256.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_257.2
  store double %p_add42.i118.2, double* %scevgep255256.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %211 = add nuw nsw i64 %indvars.iv794, 1
  %exitcond798.2.not = icmp eq i64 %polly.indvar236.2, %211
  br i1 %exitcond798.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_header233.2
  %scevgep244.3 = getelementptr i8, i8* %scevgep243, i64 %108
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call1252.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251.3, %polly.indvar224
  %polly.access.Packed_MemRef_call1253.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252.3
  %_p_scalar_254.3 = load double, double* %polly.access.Packed_MemRef_call1253.3, align 8
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_header233.3, %polly.loop_exit235.2
  %polly.indvar236.3 = phi i64 [ 0, %polly.loop_exit235.2 ], [ %polly.indvar_next237.3, %polly.loop_header233.3 ]
  %polly.access.mul.Packed_MemRef_call1239.3 = mul nuw nsw i64 %polly.indvar236.3, 60
  %polly.access.add.Packed_MemRef_call1240.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.3, %polly.indvar224
  %polly.access.Packed_MemRef_call1241.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.3
  %_p_scalar_242.3 = load double, double* %polly.access.Packed_MemRef_call1241.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_246.3, %_p_scalar_242.3
  %212 = mul nuw nsw i64 %polly.indvar236.3, 480
  %scevgep248.3 = getelementptr i8, i8* %scevgep243, i64 %212
  %scevgep248249.3 = bitcast i8* %scevgep248.3 to double*
  %_p_scalar_250.3 = load double, double* %scevgep248249.3, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114.3 = fmul fast double %_p_scalar_254.3, %_p_scalar_250.3
  %213 = shl nuw nsw i64 %polly.indvar236.3, 3
  %214 = add nuw nsw i64 %213, %109
  %scevgep255.3 = getelementptr i8, i8* %call, i64 %214
  %scevgep255256.3 = bitcast i8* %scevgep255.3 to double*
  %_p_scalar_257.3 = load double, double* %scevgep255256.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_257.3
  store double %p_add42.i118.3, double* %scevgep255256.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %exitcond798.3.not = icmp eq i64 %polly.indvar236.3, %110
  br i1 %exitcond798.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_header233.3
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next225, 60
  br i1 %exitcond800.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header396.1:                           ; preds = %polly.loop_header396.1, %polly.loop_exit398
  %polly.indvar399.1 = phi i64 [ 0, %polly.loop_exit398 ], [ %polly.indvar_next400.1, %polly.loop_header396.1 ]
  %polly.access.mul.Packed_MemRef_call1263402.1 = mul nuw nsw i64 %polly.indvar399.1, 60
  %polly.access.add.Packed_MemRef_call1263403.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.1, %polly.indvar387
  %polly.access.Packed_MemRef_call1263404.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.1
  %_p_scalar_405.1 = load double, double* %polly.access.Packed_MemRef_call1263404.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_409.1, %_p_scalar_405.1
  %215 = mul nuw nsw i64 %polly.indvar399.1, 480
  %scevgep411.1 = getelementptr i8, i8* %scevgep406, i64 %215
  %scevgep411412.1 = bitcast i8* %scevgep411.1 to double*
  %_p_scalar_413.1 = load double, double* %scevgep411412.1, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75.1 = fmul fast double %_p_scalar_417.1, %_p_scalar_413.1
  %216 = shl nuw nsw i64 %polly.indvar399.1, 3
  %217 = add nuw nsw i64 %216, %130
  %scevgep418.1 = getelementptr i8, i8* %call, i64 %217
  %scevgep418419.1 = bitcast i8* %scevgep418.1 to double*
  %_p_scalar_420.1 = load double, double* %scevgep418419.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_420.1
  store double %p_add42.i79.1, double* %scevgep418419.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond814.1.not = icmp eq i64 %polly.indvar399.1, %indvars.iv810
  br i1 %exitcond814.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_header396.1
  %scevgep407.2 = getelementptr i8, i8* %scevgep406, i64 %132
  %scevgep407408.2 = bitcast i8* %scevgep407.2 to double*
  %_p_scalar_409.2 = load double, double* %scevgep407408.2, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call1263415.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414.2, %polly.indvar387
  %polly.access.Packed_MemRef_call1263416.2 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415.2
  %_p_scalar_417.2 = load double, double* %polly.access.Packed_MemRef_call1263416.2, align 8
  br label %polly.loop_header396.2

polly.loop_header396.2:                           ; preds = %polly.loop_header396.2, %polly.loop_exit398.1
  %polly.indvar399.2 = phi i64 [ 0, %polly.loop_exit398.1 ], [ %polly.indvar_next400.2, %polly.loop_header396.2 ]
  %polly.access.mul.Packed_MemRef_call1263402.2 = mul nuw nsw i64 %polly.indvar399.2, 60
  %polly.access.add.Packed_MemRef_call1263403.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.2, %polly.indvar387
  %polly.access.Packed_MemRef_call1263404.2 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.2
  %_p_scalar_405.2 = load double, double* %polly.access.Packed_MemRef_call1263404.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_409.2, %_p_scalar_405.2
  %218 = mul nuw nsw i64 %polly.indvar399.2, 480
  %scevgep411.2 = getelementptr i8, i8* %scevgep406, i64 %218
  %scevgep411412.2 = bitcast i8* %scevgep411.2 to double*
  %_p_scalar_413.2 = load double, double* %scevgep411412.2, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75.2 = fmul fast double %_p_scalar_417.2, %_p_scalar_413.2
  %219 = shl nuw nsw i64 %polly.indvar399.2, 3
  %220 = add nuw nsw i64 %219, %133
  %scevgep418.2 = getelementptr i8, i8* %call, i64 %220
  %scevgep418419.2 = bitcast i8* %scevgep418.2 to double*
  %_p_scalar_420.2 = load double, double* %scevgep418419.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_420.2
  store double %p_add42.i79.2, double* %scevgep418419.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %221 = add nuw nsw i64 %indvars.iv810, 1
  %exitcond814.2.not = icmp eq i64 %polly.indvar399.2, %221
  br i1 %exitcond814.2.not, label %polly.loop_exit398.2, label %polly.loop_header396.2

polly.loop_exit398.2:                             ; preds = %polly.loop_header396.2
  %scevgep407.3 = getelementptr i8, i8* %scevgep406, i64 %135
  %scevgep407408.3 = bitcast i8* %scevgep407.3 to double*
  %_p_scalar_409.3 = load double, double* %scevgep407408.3, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call1263415.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414.3, %polly.indvar387
  %polly.access.Packed_MemRef_call1263416.3 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415.3
  %_p_scalar_417.3 = load double, double* %polly.access.Packed_MemRef_call1263416.3, align 8
  br label %polly.loop_header396.3

polly.loop_header396.3:                           ; preds = %polly.loop_header396.3, %polly.loop_exit398.2
  %polly.indvar399.3 = phi i64 [ 0, %polly.loop_exit398.2 ], [ %polly.indvar_next400.3, %polly.loop_header396.3 ]
  %polly.access.mul.Packed_MemRef_call1263402.3 = mul nuw nsw i64 %polly.indvar399.3, 60
  %polly.access.add.Packed_MemRef_call1263403.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.3, %polly.indvar387
  %polly.access.Packed_MemRef_call1263404.3 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.3
  %_p_scalar_405.3 = load double, double* %polly.access.Packed_MemRef_call1263404.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_409.3, %_p_scalar_405.3
  %222 = mul nuw nsw i64 %polly.indvar399.3, 480
  %scevgep411.3 = getelementptr i8, i8* %scevgep406, i64 %222
  %scevgep411412.3 = bitcast i8* %scevgep411.3 to double*
  %_p_scalar_413.3 = load double, double* %scevgep411412.3, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75.3 = fmul fast double %_p_scalar_417.3, %_p_scalar_413.3
  %223 = shl nuw nsw i64 %polly.indvar399.3, 3
  %224 = add nuw nsw i64 %223, %136
  %scevgep418.3 = getelementptr i8, i8* %call, i64 %224
  %scevgep418419.3 = bitcast i8* %scevgep418.3 to double*
  %_p_scalar_420.3 = load double, double* %scevgep418419.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_420.3
  store double %p_add42.i79.3, double* %scevgep418419.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.3 = add nuw nsw i64 %polly.indvar399.3, 1
  %exitcond814.3.not = icmp eq i64 %polly.indvar399.3, %137
  br i1 %exitcond814.3.not, label %polly.loop_exit398.3, label %polly.loop_header396.3

polly.loop_exit398.3:                             ; preds = %polly.loop_header396.3
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next388, 60
  br i1 %exitcond816.not, label %polly.loop_exit386, label %polly.loop_header384

polly.loop_header559.1:                           ; preds = %polly.loop_header559.1, %polly.loop_exit561
  %polly.indvar562.1 = phi i64 [ 0, %polly.loop_exit561 ], [ %polly.indvar_next563.1, %polly.loop_header559.1 ]
  %polly.access.mul.Packed_MemRef_call1426565.1 = mul nuw nsw i64 %polly.indvar562.1, 60
  %polly.access.add.Packed_MemRef_call1426566.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.1, %polly.indvar550
  %polly.access.Packed_MemRef_call1426567.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.1
  %_p_scalar_568.1 = load double, double* %polly.access.Packed_MemRef_call1426567.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_572.1, %_p_scalar_568.1
  %225 = mul nuw nsw i64 %polly.indvar562.1, 480
  %scevgep574.1 = getelementptr i8, i8* %scevgep569, i64 %225
  %scevgep574575.1 = bitcast i8* %scevgep574.1 to double*
  %_p_scalar_576.1 = load double, double* %scevgep574575.1, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i.1 = fmul fast double %_p_scalar_580.1, %_p_scalar_576.1
  %226 = shl nuw nsw i64 %polly.indvar562.1, 3
  %227 = add nuw nsw i64 %226, %157
  %scevgep581.1 = getelementptr i8, i8* %call, i64 %227
  %scevgep581582.1 = bitcast i8* %scevgep581.1 to double*
  %_p_scalar_583.1 = load double, double* %scevgep581582.1, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_583.1
  store double %p_add42.i.1, double* %scevgep581582.1, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.1 = add nuw nsw i64 %polly.indvar562.1, 1
  %exitcond830.1.not = icmp eq i64 %polly.indvar562.1, %indvars.iv826
  br i1 %exitcond830.1.not, label %polly.loop_exit561.1, label %polly.loop_header559.1

polly.loop_exit561.1:                             ; preds = %polly.loop_header559.1
  %scevgep570.2 = getelementptr i8, i8* %scevgep569, i64 %159
  %scevgep570571.2 = bitcast i8* %scevgep570.2 to double*
  %_p_scalar_572.2 = load double, double* %scevgep570571.2, align 8, !alias.scope !91, !noalias !95
  %polly.access.add.Packed_MemRef_call1426578.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577.2, %polly.indvar550
  %polly.access.Packed_MemRef_call1426579.2 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578.2
  %_p_scalar_580.2 = load double, double* %polly.access.Packed_MemRef_call1426579.2, align 8
  br label %polly.loop_header559.2

polly.loop_header559.2:                           ; preds = %polly.loop_header559.2, %polly.loop_exit561.1
  %polly.indvar562.2 = phi i64 [ 0, %polly.loop_exit561.1 ], [ %polly.indvar_next563.2, %polly.loop_header559.2 ]
  %polly.access.mul.Packed_MemRef_call1426565.2 = mul nuw nsw i64 %polly.indvar562.2, 60
  %polly.access.add.Packed_MemRef_call1426566.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.2, %polly.indvar550
  %polly.access.Packed_MemRef_call1426567.2 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.2
  %_p_scalar_568.2 = load double, double* %polly.access.Packed_MemRef_call1426567.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_572.2, %_p_scalar_568.2
  %228 = mul nuw nsw i64 %polly.indvar562.2, 480
  %scevgep574.2 = getelementptr i8, i8* %scevgep569, i64 %228
  %scevgep574575.2 = bitcast i8* %scevgep574.2 to double*
  %_p_scalar_576.2 = load double, double* %scevgep574575.2, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i.2 = fmul fast double %_p_scalar_580.2, %_p_scalar_576.2
  %229 = shl nuw nsw i64 %polly.indvar562.2, 3
  %230 = add nuw nsw i64 %229, %160
  %scevgep581.2 = getelementptr i8, i8* %call, i64 %230
  %scevgep581582.2 = bitcast i8* %scevgep581.2 to double*
  %_p_scalar_583.2 = load double, double* %scevgep581582.2, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_583.2
  store double %p_add42.i.2, double* %scevgep581582.2, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.2 = add nuw nsw i64 %polly.indvar562.2, 1
  %231 = add nuw nsw i64 %indvars.iv826, 1
  %exitcond830.2.not = icmp eq i64 %polly.indvar562.2, %231
  br i1 %exitcond830.2.not, label %polly.loop_exit561.2, label %polly.loop_header559.2

polly.loop_exit561.2:                             ; preds = %polly.loop_header559.2
  %scevgep570.3 = getelementptr i8, i8* %scevgep569, i64 %162
  %scevgep570571.3 = bitcast i8* %scevgep570.3 to double*
  %_p_scalar_572.3 = load double, double* %scevgep570571.3, align 8, !alias.scope !91, !noalias !95
  %polly.access.add.Packed_MemRef_call1426578.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577.3, %polly.indvar550
  %polly.access.Packed_MemRef_call1426579.3 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578.3
  %_p_scalar_580.3 = load double, double* %polly.access.Packed_MemRef_call1426579.3, align 8
  br label %polly.loop_header559.3

polly.loop_header559.3:                           ; preds = %polly.loop_header559.3, %polly.loop_exit561.2
  %polly.indvar562.3 = phi i64 [ 0, %polly.loop_exit561.2 ], [ %polly.indvar_next563.3, %polly.loop_header559.3 ]
  %polly.access.mul.Packed_MemRef_call1426565.3 = mul nuw nsw i64 %polly.indvar562.3, 60
  %polly.access.add.Packed_MemRef_call1426566.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.3, %polly.indvar550
  %polly.access.Packed_MemRef_call1426567.3 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.3
  %_p_scalar_568.3 = load double, double* %polly.access.Packed_MemRef_call1426567.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_572.3, %_p_scalar_568.3
  %232 = mul nuw nsw i64 %polly.indvar562.3, 480
  %scevgep574.3 = getelementptr i8, i8* %scevgep569, i64 %232
  %scevgep574575.3 = bitcast i8* %scevgep574.3 to double*
  %_p_scalar_576.3 = load double, double* %scevgep574575.3, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i.3 = fmul fast double %_p_scalar_580.3, %_p_scalar_576.3
  %233 = shl nuw nsw i64 %polly.indvar562.3, 3
  %234 = add nuw nsw i64 %233, %163
  %scevgep581.3 = getelementptr i8, i8* %call, i64 %234
  %scevgep581582.3 = bitcast i8* %scevgep581.3 to double*
  %_p_scalar_583.3 = load double, double* %scevgep581582.3, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_583.3
  store double %p_add42.i.3, double* %scevgep581582.3, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.3 = add nuw nsw i64 %polly.indvar562.3, 1
  %exitcond830.3.not = icmp eq i64 %polly.indvar562.3, %164
  br i1 %exitcond830.3.not, label %polly.loop_exit561.3, label %polly.loop_header559.3

polly.loop_exit561.3:                             ; preds = %polly.loop_header559.3
  %polly.indvar_next551 = add nuw nsw i64 %polly.indvar550, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next551, 60
  br i1 %exitcond832.not, label %polly.loop_exit549, label %polly.loop_header547

polly.loop_header775.1:                           ; preds = %polly.loop_exit783, %polly.loop_exit783.1
  %polly.indvar778.1 = phi i64 [ %polly.indvar_next779.1, %polly.loop_exit783.1 ], [ 0, %polly.loop_exit783 ]
  %235 = mul nuw nsw i64 %polly.indvar778.1, 480
  %236 = trunc i64 %polly.indvar778.1 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %polly.loop_header775.1
  %index1142 = phi i64 [ 0, %polly.loop_header775.1 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1 ], [ %vec.ind.next1147, %vector.body1140 ]
  %237 = add nuw nsw <4 x i64> %vec.ind1146, <i64 32, i64 32, i64 32, i64 32>
  %238 = trunc <4 x i64> %237 to <4 x i32>
  %239 = mul <4 x i32> %broadcast.splat1149, %238
  %240 = add <4 x i32> %239, <i32 1, i32 1, i32 1, i32 1>
  %241 = urem <4 x i32> %240, <i32 80, i32 80, i32 80, i32 80>
  %242 = sitofp <4 x i32> %241 to <4 x double>
  %243 = fmul fast <4 x double> %242, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %244 = extractelement <4 x i64> %237, i32 0
  %245 = shl i64 %244, 3
  %246 = add i64 %245, %235
  %247 = getelementptr i8, i8* %call1, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %243, <4 x double>* %248, align 8, !alias.scope !99, !noalias !104
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next1143, 28
  br i1 %249, label %polly.loop_exit783.1, label %vector.body1140, !llvm.loop !106

polly.loop_exit783.1:                             ; preds = %vector.body1140
  %polly.indvar_next779.1 = add nuw nsw i64 %polly.indvar778.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar_next779.1, 32
  br i1 %exitcond839.1.not, label %polly.loop_header775.1859, label %polly.loop_header775.1

polly.loop_header775.1859:                        ; preds = %polly.loop_exit783.1, %polly.loop_exit783.1870
  %polly.indvar778.1858 = phi i64 [ %polly.indvar_next779.1868, %polly.loop_exit783.1870 ], [ 0, %polly.loop_exit783.1 ]
  %250 = add nuw nsw i64 %polly.indvar778.1858, 32
  %251 = mul nuw nsw i64 %250, 480
  %252 = trunc i64 %250 to i32
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header775.1859
  %index1154 = phi i64 [ 0, %polly.loop_header775.1859 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1160 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.1859 ], [ %vec.ind.next1161, %vector.body1152 ]
  %253 = mul <4 x i32> %vec.ind1160, %broadcast.splat1163
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = shl i64 %index1154, 3
  %259 = add i64 %258, %251
  %260 = getelementptr i8, i8* %call1, i64 %259
  %261 = bitcast i8* %260 to <4 x double>*
  store <4 x double> %257, <4 x double>* %261, align 8, !alias.scope !99, !noalias !104
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1161 = add <4 x i32> %vec.ind1160, <i32 4, i32 4, i32 4, i32 4>
  %262 = icmp eq i64 %index.next1155, 32
  br i1 %262, label %polly.loop_exit783.1870, label %vector.body1152, !llvm.loop !107

polly.loop_exit783.1870:                          ; preds = %vector.body1152
  %polly.indvar_next779.1868 = add nuw nsw i64 %polly.indvar778.1858, 1
  %exitcond839.1869.not = icmp eq i64 %polly.indvar_next779.1868, 32
  br i1 %exitcond839.1869.not, label %polly.loop_header775.1.1, label %polly.loop_header775.1859

polly.loop_header775.1.1:                         ; preds = %polly.loop_exit783.1870, %polly.loop_exit783.1.1
  %polly.indvar778.1.1 = phi i64 [ %polly.indvar_next779.1.1, %polly.loop_exit783.1.1 ], [ 0, %polly.loop_exit783.1870 ]
  %263 = add nuw nsw i64 %polly.indvar778.1.1, 32
  %264 = mul nuw nsw i64 %263, 480
  %265 = trunc i64 %263 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %265, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %polly.loop_header775.1.1
  %index1168 = phi i64 [ 0, %polly.loop_header775.1.1 ], [ %index.next1169, %vector.body1166 ]
  %vec.ind1172 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.1 ], [ %vec.ind.next1173, %vector.body1166 ]
  %266 = add nuw nsw <4 x i64> %vec.ind1172, <i64 32, i64 32, i64 32, i64 32>
  %267 = trunc <4 x i64> %266 to <4 x i32>
  %268 = mul <4 x i32> %broadcast.splat1175, %267
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 80, i32 80, i32 80, i32 80>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %273 = extractelement <4 x i64> %266, i32 0
  %274 = shl i64 %273, 3
  %275 = add i64 %274, %264
  %276 = getelementptr i8, i8* %call1, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %272, <4 x double>* %277, align 8, !alias.scope !99, !noalias !104
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1173 = add <4 x i64> %vec.ind1172, <i64 4, i64 4, i64 4, i64 4>
  %278 = icmp eq i64 %index.next1169, 28
  br i1 %278, label %polly.loop_exit783.1.1, label %vector.body1166, !llvm.loop !108

polly.loop_exit783.1.1:                           ; preds = %vector.body1166
  %polly.indvar_next779.1.1 = add nuw nsw i64 %polly.indvar778.1.1, 1
  %exitcond839.1.1.not = icmp eq i64 %polly.indvar_next779.1.1, 32
  br i1 %exitcond839.1.1.not, label %polly.loop_header775.2, label %polly.loop_header775.1.1

polly.loop_header775.2:                           ; preds = %polly.loop_exit783.1.1, %polly.loop_exit783.2
  %polly.indvar778.2 = phi i64 [ %polly.indvar_next779.2, %polly.loop_exit783.2 ], [ 0, %polly.loop_exit783.1.1 ]
  %279 = add nuw nsw i64 %polly.indvar778.2, 64
  %280 = mul nuw nsw i64 %279, 480
  %281 = trunc i64 %279 to i32
  %broadcast.splatinsert1188 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1189 = shufflevector <4 x i32> %broadcast.splatinsert1188, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header775.2
  %index1180 = phi i64 [ 0, %polly.loop_header775.2 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1186 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.2 ], [ %vec.ind.next1187, %vector.body1178 ]
  %282 = mul <4 x i32> %vec.ind1186, %broadcast.splat1189
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = shl i64 %index1180, 3
  %288 = add i64 %287, %280
  %289 = getelementptr i8, i8* %call1, i64 %288
  %290 = bitcast i8* %289 to <4 x double>*
  store <4 x double> %286, <4 x double>* %290, align 8, !alias.scope !99, !noalias !104
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1187 = add <4 x i32> %vec.ind1186, <i32 4, i32 4, i32 4, i32 4>
  %291 = icmp eq i64 %index.next1181, 32
  br i1 %291, label %polly.loop_exit783.2, label %vector.body1178, !llvm.loop !109

polly.loop_exit783.2:                             ; preds = %vector.body1178
  %polly.indvar_next779.2 = add nuw nsw i64 %polly.indvar778.2, 1
  %exitcond839.2.not = icmp eq i64 %polly.indvar_next779.2, 16
  br i1 %exitcond839.2.not, label %polly.loop_header775.1.2, label %polly.loop_header775.2

polly.loop_header775.1.2:                         ; preds = %polly.loop_exit783.2, %polly.loop_exit783.1.2
  %polly.indvar778.1.2 = phi i64 [ %polly.indvar_next779.1.2, %polly.loop_exit783.1.2 ], [ 0, %polly.loop_exit783.2 ]
  %292 = add nuw nsw i64 %polly.indvar778.1.2, 64
  %293 = mul nuw nsw i64 %292, 480
  %294 = trunc i64 %292 to i32
  %broadcast.splatinsert1200 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1201 = shufflevector <4 x i32> %broadcast.splatinsert1200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %polly.loop_header775.1.2
  %index1194 = phi i64 [ 0, %polly.loop_header775.1.2 ], [ %index.next1195, %vector.body1192 ]
  %vec.ind1198 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.2 ], [ %vec.ind.next1199, %vector.body1192 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1198, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1201, %296
  %298 = add <4 x i32> %297, <i32 1, i32 1, i32 1, i32 1>
  %299 = urem <4 x i32> %298, <i32 80, i32 80, i32 80, i32 80>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add i64 %303, %293
  %305 = getelementptr i8, i8* %call1, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !99, !noalias !104
  %index.next1195 = add i64 %index1194, 4
  %vec.ind.next1199 = add <4 x i64> %vec.ind1198, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1195, 28
  br i1 %307, label %polly.loop_exit783.1.2, label %vector.body1192, !llvm.loop !110

polly.loop_exit783.1.2:                           ; preds = %vector.body1192
  %polly.indvar_next779.1.2 = add nuw nsw i64 %polly.indvar778.1.2, 1
  %exitcond839.1.2.not = icmp eq i64 %polly.indvar_next779.1.2, 16
  br i1 %exitcond839.1.2.not, label %init_array.exit, label %polly.loop_header775.1.2

polly.loop_header749.1:                           ; preds = %polly.loop_exit757, %polly.loop_exit757.1
  %polly.indvar752.1 = phi i64 [ %polly.indvar_next753.1, %polly.loop_exit757.1 ], [ 0, %polly.loop_exit757 ]
  %308 = mul nuw nsw i64 %polly.indvar752.1, 480
  %309 = trunc i64 %polly.indvar752.1 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %polly.loop_header749.1
  %index1064 = phi i64 [ 0, %polly.loop_header749.1 ], [ %index.next1065, %vector.body1062 ]
  %vec.ind1068 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1 ], [ %vec.ind.next1069, %vector.body1062 ]
  %310 = add nuw nsw <4 x i64> %vec.ind1068, <i64 32, i64 32, i64 32, i64 32>
  %311 = trunc <4 x i64> %310 to <4 x i32>
  %312 = mul <4 x i32> %broadcast.splat1071, %311
  %313 = add <4 x i32> %312, <i32 2, i32 2, i32 2, i32 2>
  %314 = urem <4 x i32> %313, <i32 60, i32 60, i32 60, i32 60>
  %315 = sitofp <4 x i32> %314 to <4 x double>
  %316 = fmul fast <4 x double> %315, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %317 = extractelement <4 x i64> %310, i32 0
  %318 = shl i64 %317, 3
  %319 = add i64 %318, %308
  %320 = getelementptr i8, i8* %call2, i64 %319
  %321 = bitcast i8* %320 to <4 x double>*
  store <4 x double> %316, <4 x double>* %321, align 8, !alias.scope !100, !noalias !102
  %index.next1065 = add i64 %index1064, 4
  %vec.ind.next1069 = add <4 x i64> %vec.ind1068, <i64 4, i64 4, i64 4, i64 4>
  %322 = icmp eq i64 %index.next1065, 28
  br i1 %322, label %polly.loop_exit757.1, label %vector.body1062, !llvm.loop !111

polly.loop_exit757.1:                             ; preds = %vector.body1062
  %polly.indvar_next753.1 = add nuw nsw i64 %polly.indvar752.1, 1
  %exitcond845.1.not = icmp eq i64 %polly.indvar_next753.1, 32
  br i1 %exitcond845.1.not, label %polly.loop_header749.1873, label %polly.loop_header749.1

polly.loop_header749.1873:                        ; preds = %polly.loop_exit757.1, %polly.loop_exit757.1884
  %polly.indvar752.1872 = phi i64 [ %polly.indvar_next753.1882, %polly.loop_exit757.1884 ], [ 0, %polly.loop_exit757.1 ]
  %323 = add nuw nsw i64 %polly.indvar752.1872, 32
  %324 = mul nuw nsw i64 %323, 480
  %325 = trunc i64 %323 to i32
  %broadcast.splatinsert1084 = insertelement <4 x i32> poison, i32 %325, i32 0
  %broadcast.splat1085 = shufflevector <4 x i32> %broadcast.splatinsert1084, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header749.1873
  %index1076 = phi i64 [ 0, %polly.loop_header749.1873 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1082 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.1873 ], [ %vec.ind.next1083, %vector.body1074 ]
  %326 = mul <4 x i32> %vec.ind1082, %broadcast.splat1085
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = shl i64 %index1076, 3
  %332 = add i64 %331, %324
  %333 = getelementptr i8, i8* %call2, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %330, <4 x double>* %334, align 8, !alias.scope !100, !noalias !102
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1083 = add <4 x i32> %vec.ind1082, <i32 4, i32 4, i32 4, i32 4>
  %335 = icmp eq i64 %index.next1077, 32
  br i1 %335, label %polly.loop_exit757.1884, label %vector.body1074, !llvm.loop !112

polly.loop_exit757.1884:                          ; preds = %vector.body1074
  %polly.indvar_next753.1882 = add nuw nsw i64 %polly.indvar752.1872, 1
  %exitcond845.1883.not = icmp eq i64 %polly.indvar_next753.1882, 32
  br i1 %exitcond845.1883.not, label %polly.loop_header749.1.1, label %polly.loop_header749.1873

polly.loop_header749.1.1:                         ; preds = %polly.loop_exit757.1884, %polly.loop_exit757.1.1
  %polly.indvar752.1.1 = phi i64 [ %polly.indvar_next753.1.1, %polly.loop_exit757.1.1 ], [ 0, %polly.loop_exit757.1884 ]
  %336 = add nuw nsw i64 %polly.indvar752.1.1, 32
  %337 = mul nuw nsw i64 %336, 480
  %338 = trunc i64 %336 to i32
  %broadcast.splatinsert1096 = insertelement <4 x i32> poison, i32 %338, i32 0
  %broadcast.splat1097 = shufflevector <4 x i32> %broadcast.splatinsert1096, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %polly.loop_header749.1.1
  %index1090 = phi i64 [ 0, %polly.loop_header749.1.1 ], [ %index.next1091, %vector.body1088 ]
  %vec.ind1094 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.1 ], [ %vec.ind.next1095, %vector.body1088 ]
  %339 = add nuw nsw <4 x i64> %vec.ind1094, <i64 32, i64 32, i64 32, i64 32>
  %340 = trunc <4 x i64> %339 to <4 x i32>
  %341 = mul <4 x i32> %broadcast.splat1097, %340
  %342 = add <4 x i32> %341, <i32 2, i32 2, i32 2, i32 2>
  %343 = urem <4 x i32> %342, <i32 60, i32 60, i32 60, i32 60>
  %344 = sitofp <4 x i32> %343 to <4 x double>
  %345 = fmul fast <4 x double> %344, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %346 = extractelement <4 x i64> %339, i32 0
  %347 = shl i64 %346, 3
  %348 = add i64 %347, %337
  %349 = getelementptr i8, i8* %call2, i64 %348
  %350 = bitcast i8* %349 to <4 x double>*
  store <4 x double> %345, <4 x double>* %350, align 8, !alias.scope !100, !noalias !102
  %index.next1091 = add i64 %index1090, 4
  %vec.ind.next1095 = add <4 x i64> %vec.ind1094, <i64 4, i64 4, i64 4, i64 4>
  %351 = icmp eq i64 %index.next1091, 28
  br i1 %351, label %polly.loop_exit757.1.1, label %vector.body1088, !llvm.loop !113

polly.loop_exit757.1.1:                           ; preds = %vector.body1088
  %polly.indvar_next753.1.1 = add nuw nsw i64 %polly.indvar752.1.1, 1
  %exitcond845.1.1.not = icmp eq i64 %polly.indvar_next753.1.1, 32
  br i1 %exitcond845.1.1.not, label %polly.loop_header749.2, label %polly.loop_header749.1.1

polly.loop_header749.2:                           ; preds = %polly.loop_exit757.1.1, %polly.loop_exit757.2
  %polly.indvar752.2 = phi i64 [ %polly.indvar_next753.2, %polly.loop_exit757.2 ], [ 0, %polly.loop_exit757.1.1 ]
  %352 = add nuw nsw i64 %polly.indvar752.2, 64
  %353 = mul nuw nsw i64 %352, 480
  %354 = trunc i64 %352 to i32
  %broadcast.splatinsert1110 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1111 = shufflevector <4 x i32> %broadcast.splatinsert1110, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header749.2
  %index1102 = phi i64 [ 0, %polly.loop_header749.2 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1108 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.2 ], [ %vec.ind.next1109, %vector.body1100 ]
  %355 = mul <4 x i32> %vec.ind1108, %broadcast.splat1111
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = shl i64 %index1102, 3
  %361 = add i64 %360, %353
  %362 = getelementptr i8, i8* %call2, i64 %361
  %363 = bitcast i8* %362 to <4 x double>*
  store <4 x double> %359, <4 x double>* %363, align 8, !alias.scope !100, !noalias !102
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1109 = add <4 x i32> %vec.ind1108, <i32 4, i32 4, i32 4, i32 4>
  %364 = icmp eq i64 %index.next1103, 32
  br i1 %364, label %polly.loop_exit757.2, label %vector.body1100, !llvm.loop !114

polly.loop_exit757.2:                             ; preds = %vector.body1100
  %polly.indvar_next753.2 = add nuw nsw i64 %polly.indvar752.2, 1
  %exitcond845.2.not = icmp eq i64 %polly.indvar_next753.2, 16
  br i1 %exitcond845.2.not, label %polly.loop_header749.1.2, label %polly.loop_header749.2

polly.loop_header749.1.2:                         ; preds = %polly.loop_exit757.2, %polly.loop_exit757.1.2
  %polly.indvar752.1.2 = phi i64 [ %polly.indvar_next753.1.2, %polly.loop_exit757.1.2 ], [ 0, %polly.loop_exit757.2 ]
  %365 = add nuw nsw i64 %polly.indvar752.1.2, 64
  %366 = mul nuw nsw i64 %365, 480
  %367 = trunc i64 %365 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %polly.loop_header749.1.2
  %index1116 = phi i64 [ 0, %polly.loop_header749.1.2 ], [ %index.next1117, %vector.body1114 ]
  %vec.ind1120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.2 ], [ %vec.ind.next1121, %vector.body1114 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1120, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1123, %369
  %371 = add <4 x i32> %370, <i32 2, i32 2, i32 2, i32 2>
  %372 = urem <4 x i32> %371, <i32 60, i32 60, i32 60, i32 60>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add i64 %376, %366
  %378 = getelementptr i8, i8* %call2, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !100, !noalias !102
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1121 = add <4 x i64> %vec.ind1120, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1117, 28
  br i1 %380, label %polly.loop_exit757.1.2, label %vector.body1114, !llvm.loop !115

polly.loop_exit757.1.2:                           ; preds = %vector.body1114
  %polly.indvar_next753.1.2 = add nuw nsw i64 %polly.indvar752.1.2, 1
  %exitcond845.1.2.not = icmp eq i64 %polly.indvar_next753.1.2, 16
  br i1 %exitcond845.1.2.not, label %polly.loop_header775, label %polly.loop_header749.1.2

polly.loop_header722.1:                           ; preds = %polly.loop_exit730, %polly.loop_exit730.1
  %polly.indvar725.1 = phi i64 [ %polly.indvar_next726.1, %polly.loop_exit730.1 ], [ 0, %polly.loop_exit730 ]
  %381 = mul nuw nsw i64 %polly.indvar725.1, 640
  %382 = trunc i64 %polly.indvar725.1 to i32
  %broadcast.splatinsert956 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat957 = shufflevector <4 x i32> %broadcast.splatinsert956, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %polly.loop_header722.1
  %index950 = phi i64 [ 0, %polly.loop_header722.1 ], [ %index.next951, %vector.body948 ]
  %vec.ind954 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1 ], [ %vec.ind.next955, %vector.body948 ]
  %383 = add nuw nsw <4 x i64> %vec.ind954, <i64 32, i64 32, i64 32, i64 32>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat957, %384
  %386 = add <4 x i32> %385, <i32 3, i32 3, i32 3, i32 3>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %381
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !96, !noalias !98
  %index.next951 = add i64 %index950, 4
  %vec.ind.next955 = add <4 x i64> %vec.ind954, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next951, 32
  br i1 %395, label %polly.loop_exit730.1, label %vector.body948, !llvm.loop !116

polly.loop_exit730.1:                             ; preds = %vector.body948
  %polly.indvar_next726.1 = add nuw nsw i64 %polly.indvar725.1, 1
  %exitcond854.1.not = icmp eq i64 %polly.indvar_next726.1, 32
  br i1 %exitcond854.1.not, label %polly.loop_header722.2, label %polly.loop_header722.1

polly.loop_header722.2:                           ; preds = %polly.loop_exit730.1, %polly.loop_exit730.2
  %polly.indvar725.2 = phi i64 [ %polly.indvar_next726.2, %polly.loop_exit730.2 ], [ 0, %polly.loop_exit730.1 ]
  %396 = mul nuw nsw i64 %polly.indvar725.2, 640
  %397 = trunc i64 %polly.indvar725.2 to i32
  %broadcast.splatinsert968 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat969 = shufflevector <4 x i32> %broadcast.splatinsert968, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body960

vector.body960:                                   ; preds = %vector.body960, %polly.loop_header722.2
  %index962 = phi i64 [ 0, %polly.loop_header722.2 ], [ %index.next963, %vector.body960 ]
  %vec.ind966 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2 ], [ %vec.ind.next967, %vector.body960 ]
  %398 = add nuw nsw <4 x i64> %vec.ind966, <i64 64, i64 64, i64 64, i64 64>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat969, %399
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
  %index.next963 = add i64 %index962, 4
  %vec.ind.next967 = add <4 x i64> %vec.ind966, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next963, 16
  br i1 %410, label %polly.loop_exit730.2, label %vector.body960, !llvm.loop !117

polly.loop_exit730.2:                             ; preds = %vector.body960
  %polly.indvar_next726.2 = add nuw nsw i64 %polly.indvar725.2, 1
  %exitcond854.2.not = icmp eq i64 %polly.indvar_next726.2, 32
  br i1 %exitcond854.2.not, label %polly.loop_header722.1887, label %polly.loop_header722.2

polly.loop_header722.1887:                        ; preds = %polly.loop_exit730.2, %polly.loop_exit730.1898
  %polly.indvar725.1886 = phi i64 [ %polly.indvar_next726.1896, %polly.loop_exit730.1898 ], [ 0, %polly.loop_exit730.2 ]
  %411 = add nuw nsw i64 %polly.indvar725.1886, 32
  %412 = mul nuw nsw i64 %411, 640
  %413 = trunc i64 %411 to i32
  %broadcast.splatinsert982 = insertelement <4 x i32> poison, i32 %413, i32 0
  %broadcast.splat983 = shufflevector <4 x i32> %broadcast.splatinsert982, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %polly.loop_header722.1887
  %index974 = phi i64 [ 0, %polly.loop_header722.1887 ], [ %index.next975, %vector.body972 ]
  %vec.ind980 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.1887 ], [ %vec.ind.next981, %vector.body972 ]
  %414 = mul <4 x i32> %vec.ind980, %broadcast.splat983
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = shl i64 %index974, 3
  %420 = add nuw nsw i64 %419, %412
  %421 = getelementptr i8, i8* %call, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %418, <4 x double>* %422, align 8, !alias.scope !96, !noalias !98
  %index.next975 = add i64 %index974, 4
  %vec.ind.next981 = add <4 x i32> %vec.ind980, <i32 4, i32 4, i32 4, i32 4>
  %423 = icmp eq i64 %index.next975, 32
  br i1 %423, label %polly.loop_exit730.1898, label %vector.body972, !llvm.loop !118

polly.loop_exit730.1898:                          ; preds = %vector.body972
  %polly.indvar_next726.1896 = add nuw nsw i64 %polly.indvar725.1886, 1
  %exitcond854.1897.not = icmp eq i64 %polly.indvar_next726.1896, 32
  br i1 %exitcond854.1897.not, label %polly.loop_header722.1.1, label %polly.loop_header722.1887

polly.loop_header722.1.1:                         ; preds = %polly.loop_exit730.1898, %polly.loop_exit730.1.1
  %polly.indvar725.1.1 = phi i64 [ %polly.indvar_next726.1.1, %polly.loop_exit730.1.1 ], [ 0, %polly.loop_exit730.1898 ]
  %424 = add nuw nsw i64 %polly.indvar725.1.1, 32
  %425 = mul nuw nsw i64 %424, 640
  %426 = trunc i64 %424 to i32
  %broadcast.splatinsert994 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat995 = shufflevector <4 x i32> %broadcast.splatinsert994, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %polly.loop_header722.1.1
  %index988 = phi i64 [ 0, %polly.loop_header722.1.1 ], [ %index.next989, %vector.body986 ]
  %vec.ind992 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.1 ], [ %vec.ind.next993, %vector.body986 ]
  %427 = add nuw nsw <4 x i64> %vec.ind992, <i64 32, i64 32, i64 32, i64 32>
  %428 = trunc <4 x i64> %427 to <4 x i32>
  %429 = mul <4 x i32> %broadcast.splat995, %428
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
  %index.next989 = add i64 %index988, 4
  %vec.ind.next993 = add <4 x i64> %vec.ind992, <i64 4, i64 4, i64 4, i64 4>
  %439 = icmp eq i64 %index.next989, 32
  br i1 %439, label %polly.loop_exit730.1.1, label %vector.body986, !llvm.loop !119

polly.loop_exit730.1.1:                           ; preds = %vector.body986
  %polly.indvar_next726.1.1 = add nuw nsw i64 %polly.indvar725.1.1, 1
  %exitcond854.1.1.not = icmp eq i64 %polly.indvar_next726.1.1, 32
  br i1 %exitcond854.1.1.not, label %polly.loop_header722.2.1, label %polly.loop_header722.1.1

polly.loop_header722.2.1:                         ; preds = %polly.loop_exit730.1.1, %polly.loop_exit730.2.1
  %polly.indvar725.2.1 = phi i64 [ %polly.indvar_next726.2.1, %polly.loop_exit730.2.1 ], [ 0, %polly.loop_exit730.1.1 ]
  %440 = add nuw nsw i64 %polly.indvar725.2.1, 32
  %441 = mul nuw nsw i64 %440, 640
  %442 = trunc i64 %440 to i32
  %broadcast.splatinsert1006 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1007 = shufflevector <4 x i32> %broadcast.splatinsert1006, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %polly.loop_header722.2.1
  %index1000 = phi i64 [ 0, %polly.loop_header722.2.1 ], [ %index.next1001, %vector.body998 ]
  %vec.ind1004 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.1 ], [ %vec.ind.next1005, %vector.body998 ]
  %443 = add nuw nsw <4 x i64> %vec.ind1004, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat1007, %444
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
  %index.next1001 = add i64 %index1000, 4
  %vec.ind.next1005 = add <4 x i64> %vec.ind1004, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next1001, 16
  br i1 %455, label %polly.loop_exit730.2.1, label %vector.body998, !llvm.loop !120

polly.loop_exit730.2.1:                           ; preds = %vector.body998
  %polly.indvar_next726.2.1 = add nuw nsw i64 %polly.indvar725.2.1, 1
  %exitcond854.2.1.not = icmp eq i64 %polly.indvar_next726.2.1, 32
  br i1 %exitcond854.2.1.not, label %polly.loop_header722.2901, label %polly.loop_header722.2.1

polly.loop_header722.2901:                        ; preds = %polly.loop_exit730.2.1, %polly.loop_exit730.2912
  %polly.indvar725.2900 = phi i64 [ %polly.indvar_next726.2910, %polly.loop_exit730.2912 ], [ 0, %polly.loop_exit730.2.1 ]
  %456 = add nuw nsw i64 %polly.indvar725.2900, 64
  %457 = mul nuw nsw i64 %456, 640
  %458 = trunc i64 %456 to i32
  %broadcast.splatinsert1020 = insertelement <4 x i32> poison, i32 %458, i32 0
  %broadcast.splat1021 = shufflevector <4 x i32> %broadcast.splatinsert1020, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %polly.loop_header722.2901
  %index1012 = phi i64 [ 0, %polly.loop_header722.2901 ], [ %index.next1013, %vector.body1010 ]
  %vec.ind1018 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.2901 ], [ %vec.ind.next1019, %vector.body1010 ]
  %459 = mul <4 x i32> %vec.ind1018, %broadcast.splat1021
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = shl i64 %index1012, 3
  %465 = add nuw nsw i64 %464, %457
  %466 = getelementptr i8, i8* %call, i64 %465
  %467 = bitcast i8* %466 to <4 x double>*
  store <4 x double> %463, <4 x double>* %467, align 8, !alias.scope !96, !noalias !98
  %index.next1013 = add i64 %index1012, 4
  %vec.ind.next1019 = add <4 x i32> %vec.ind1018, <i32 4, i32 4, i32 4, i32 4>
  %468 = icmp eq i64 %index.next1013, 32
  br i1 %468, label %polly.loop_exit730.2912, label %vector.body1010, !llvm.loop !121

polly.loop_exit730.2912:                          ; preds = %vector.body1010
  %polly.indvar_next726.2910 = add nuw nsw i64 %polly.indvar725.2900, 1
  %exitcond854.2911.not = icmp eq i64 %polly.indvar_next726.2910, 16
  br i1 %exitcond854.2911.not, label %polly.loop_header722.1.2, label %polly.loop_header722.2901

polly.loop_header722.1.2:                         ; preds = %polly.loop_exit730.2912, %polly.loop_exit730.1.2
  %polly.indvar725.1.2 = phi i64 [ %polly.indvar_next726.1.2, %polly.loop_exit730.1.2 ], [ 0, %polly.loop_exit730.2912 ]
  %469 = add nuw nsw i64 %polly.indvar725.1.2, 64
  %470 = mul nuw nsw i64 %469, 640
  %471 = trunc i64 %469 to i32
  %broadcast.splatinsert1032 = insertelement <4 x i32> poison, i32 %471, i32 0
  %broadcast.splat1033 = shufflevector <4 x i32> %broadcast.splatinsert1032, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %polly.loop_header722.1.2
  %index1026 = phi i64 [ 0, %polly.loop_header722.1.2 ], [ %index.next1027, %vector.body1024 ]
  %vec.ind1030 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.2 ], [ %vec.ind.next1031, %vector.body1024 ]
  %472 = add nuw nsw <4 x i64> %vec.ind1030, <i64 32, i64 32, i64 32, i64 32>
  %473 = trunc <4 x i64> %472 to <4 x i32>
  %474 = mul <4 x i32> %broadcast.splat1033, %473
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = extractelement <4 x i64> %472, i32 0
  %480 = shl i64 %479, 3
  %481 = add nuw nsw i64 %480, %470
  %482 = getelementptr i8, i8* %call, i64 %481
  %483 = bitcast i8* %482 to <4 x double>*
  store <4 x double> %478, <4 x double>* %483, align 8, !alias.scope !96, !noalias !98
  %index.next1027 = add i64 %index1026, 4
  %vec.ind.next1031 = add <4 x i64> %vec.ind1030, <i64 4, i64 4, i64 4, i64 4>
  %484 = icmp eq i64 %index.next1027, 32
  br i1 %484, label %polly.loop_exit730.1.2, label %vector.body1024, !llvm.loop !122

polly.loop_exit730.1.2:                           ; preds = %vector.body1024
  %polly.indvar_next726.1.2 = add nuw nsw i64 %polly.indvar725.1.2, 1
  %exitcond854.1.2.not = icmp eq i64 %polly.indvar_next726.1.2, 16
  br i1 %exitcond854.1.2.not, label %polly.loop_header722.2.2, label %polly.loop_header722.1.2

polly.loop_header722.2.2:                         ; preds = %polly.loop_exit730.1.2, %polly.loop_exit730.2.2
  %polly.indvar725.2.2 = phi i64 [ %polly.indvar_next726.2.2, %polly.loop_exit730.2.2 ], [ 0, %polly.loop_exit730.1.2 ]
  %485 = add nuw nsw i64 %polly.indvar725.2.2, 64
  %486 = mul nuw nsw i64 %485, 640
  %487 = trunc i64 %485 to i32
  %broadcast.splatinsert1044 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1045 = shufflevector <4 x i32> %broadcast.splatinsert1044, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %polly.loop_header722.2.2
  %index1038 = phi i64 [ 0, %polly.loop_header722.2.2 ], [ %index.next1039, %vector.body1036 ]
  %vec.ind1042 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.2 ], [ %vec.ind.next1043, %vector.body1036 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1042, <i64 64, i64 64, i64 64, i64 64>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1045, %489
  %491 = add <4 x i32> %490, <i32 3, i32 3, i32 3, i32 3>
  %492 = urem <4 x i32> %491, <i32 80, i32 80, i32 80, i32 80>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = extractelement <4 x i64> %488, i32 0
  %496 = shl i64 %495, 3
  %497 = add nuw nsw i64 %496, %486
  %498 = getelementptr i8, i8* %call, i64 %497
  %499 = bitcast i8* %498 to <4 x double>*
  store <4 x double> %494, <4 x double>* %499, align 8, !alias.scope !96, !noalias !98
  %index.next1039 = add i64 %index1038, 4
  %vec.ind.next1043 = add <4 x i64> %vec.ind1042, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1039, 16
  br i1 %500, label %polly.loop_exit730.2.2, label %vector.body1036, !llvm.loop !123

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
!25 = !{!"llvm.loop.tile.size", i32 100}
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
!39 = distinct !{!39, !12, !23, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !23, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 4}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
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
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !71, !73}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !76, !13}
!86 = !{!78, !81, !83}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91, !92}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !88, !"polly.alias.scope.Packed_MemRef_call1"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !76, !13}
!95 = !{!87, !90, !92}
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
