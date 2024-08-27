; ModuleID = 'syr2k_recreations//mmp_syr2k_S_39.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_39.c"
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
  %scevgep912 = getelementptr i8, i8* %call2, i64 %12
  %scevgep911 = getelementptr i8, i8* %call2, i64 %11
  %scevgep910 = getelementptr i8, i8* %call1, i64 %12
  %scevgep909 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep909, %scevgep912
  %bound1 = icmp ult i8* %scevgep911, %scevgep910
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
  br i1 %exitcond18.not.i, label %vector.ph916, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph916:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert923 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat924 = shufflevector <4 x i64> %broadcast.splatinsert923, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body915

vector.body915:                                   ; preds = %vector.body915, %vector.ph916
  %index917 = phi i64 [ 0, %vector.ph916 ], [ %index.next918, %vector.body915 ]
  %vec.ind921 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph916 ], [ %vec.ind.next922, %vector.body915 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind921, %broadcast.splat924
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv7.i, i64 %index917
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next918 = add i64 %index917, 4
  %vec.ind.next922 = add <4 x i64> %vec.ind921, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next918, 80
  br i1 %40, label %for.inc41.i, label %vector.body915, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body915
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph916, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1272, label %vector.ph1198

vector.ph1198:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1198
  %index1199 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1200, %vector.body1197 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %index1199
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1200 = add i64 %index1199, 4
  %46 = icmp eq i64 %index.next1200, %n.vec
  br i1 %46, label %middle.block1195, label %vector.body1197, !llvm.loop !18

middle.block1195:                                 ; preds = %vector.body1197
  %cmp.n1202 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1202, label %for.inc6.i, label %for.body3.i46.preheader1272

for.body3.i46.preheader1272:                      ; preds = %for.body3.i46.preheader, %middle.block1195
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1195 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1272, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1272 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1195, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit530.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1218 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1218, label %for.body3.i60.preheader1270, label %vector.ph1219

vector.ph1219:                                    ; preds = %for.body3.i60.preheader
  %n.vec1221 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1217 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %index1222
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1223 = add i64 %index1222, 4
  %57 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %57, label %middle.block1215, label %vector.body1217, !llvm.loop !54

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1225 = icmp eq i64 %indvars.iv21.i52, %n.vec1221
  br i1 %cmp.n1225, label %for.inc6.i63, label %for.body3.i60.preheader1270

for.body3.i60.preheader1270:                      ; preds = %for.body3.i60.preheader, %middle.block1215
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1221, %middle.block1215 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1270, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1270 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1215, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit374.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1244 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1244, label %for.body3.i99.preheader1268, label %vector.ph1245

vector.ph1245:                                    ; preds = %for.body3.i99.preheader
  %n.vec1247 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1243 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %index1248
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1252, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1249 = add i64 %index1248, 4
  %68 = icmp eq i64 %index.next1249, %n.vec1247
  br i1 %68, label %middle.block1241, label %vector.body1243, !llvm.loop !56

middle.block1241:                                 ; preds = %vector.body1243
  %cmp.n1251 = icmp eq i64 %indvars.iv21.i91, %n.vec1247
  br i1 %cmp.n1251, label %for.inc6.i102, label %for.body3.i99.preheader1268

for.body3.i99.preheader1268:                      ; preds = %for.body3.i99.preheader, %middle.block1241
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1247, %middle.block1241 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1268, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1268 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1241, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit219.2
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1256 = phi i64 [ %indvar.next1257, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1256, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1258 = icmp ult i64 %88, 4
  br i1 %min.iters.check1258, label %polly.loop_header191.preheader, label %vector.ph1259

vector.ph1259:                                    ; preds = %polly.loop_header
  %n.vec1261 = and i64 %88, -4
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1259
  %index1262 = phi i64 [ 0, %vector.ph1259 ], [ %index.next1263, %vector.body1255 ]
  %90 = shl nuw nsw i64 %index1262, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1266 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1266, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1263 = add i64 %index1262, 4
  %95 = icmp eq i64 %index.next1263, %n.vec1261
  br i1 %95, label %middle.block1253, label %vector.body1255, !llvm.loop !67

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1265 = icmp eq i64 %88, %n.vec1261
  br i1 %cmp.n1265, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1253
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1261, %middle.block1253 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1253
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1257 = add i64 %indvar1256, 1
  br i1 %exitcond786.not, label %polly.loop_header211.preheader, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond785.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header211.preheader:                   ; preds = %polly.loop_exit193, %polly.loop_exit213
  %polly.loop_cond210 = phi i1 [ false, %polly.loop_exit213 ], [ true, %polly.loop_exit193 ]
  %polly.indvar208 = phi i64 [ 1, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nuw nsw i64 %polly.indvar208, 6
  %98 = mul nuw nsw i64 %polly.indvar208, -64
  %99 = icmp slt i64 %98, -16
  %100 = select i1 %99, i64 %98, i64 -16
  %101 = add nsw i64 %100, 79
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  br i1 %polly.loop_cond210, label %polly.loop_header211.preheader, label %polly.loop_header205.1

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit219
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header211.preheader ]
  %102 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep231 = getelementptr i8, i8* %call1, i64 %102
  %scevgep235 = getelementptr i8, i8* %call2, i64 %102
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit226
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond783.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond783.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit226, %polly.loop_header211
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit226 ], [ %97, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit226 ], [ 0, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 31)
  %103 = add nuw i64 %polly.indvar220, %97
  %polly.loop_guard227895 = icmp sgt i64 %103, -1
  br i1 %polly.loop_guard227895, label %polly.loop_header224.preheader, label %polly.loop_exit226

polly.loop_header224.preheader:                   ; preds = %polly.loop_header217
  %104 = mul i64 %103, 480
  %scevgep236 = getelementptr i8, i8* %scevgep235, i64 %104
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !66, !noalias !70
  %scevgep244 = getelementptr i8, i8* %scevgep231, i64 %104
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !65, !noalias !71
  %105 = mul i64 %103, 640
  br label %polly.loop_header224

polly.loop_exit226:                               ; preds = %polly.loop_header224, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp ult i64 %polly.indvar220, %101
  %indvars.iv.next782 = add i64 %indvars.iv781, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header224:                             ; preds = %polly.loop_header224.preheader, %polly.loop_header224
  %polly.indvar228 = phi i64 [ %polly.indvar_next229, %polly.loop_header224 ], [ 0, %polly.loop_header224.preheader ]
  %106 = mul nuw nsw i64 %polly.indvar228, 480
  %scevgep232 = getelementptr i8, i8* %scevgep231, i64 %106
  %scevgep232233 = bitcast i8* %scevgep232 to double*
  %_p_scalar_234 = load double, double* %scevgep232233, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_238, %_p_scalar_234
  %scevgep240 = getelementptr i8, i8* %scevgep235, i64 %106
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %107 = shl i64 %polly.indvar228, 3
  %108 = add i64 %107, %105
  %scevgep247 = getelementptr i8, i8* %call, i64 %108
  %scevgep247248 = bitcast i8* %scevgep247 to double*
  %_p_scalar_249 = load double, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_249
  store double %p_add42.i118, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next229 = add nuw nsw i64 %polly.indvar228, 1
  %exitcond.not = icmp eq i64 %polly.indvar228, %smin
  br i1 %exitcond.not, label %polly.loop_exit226, label %polly.loop_header224

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1230 = phi i64 [ %indvar.next1231, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %109 = add i64 %indvar1230, 1
  %110 = mul nuw nsw i64 %polly.indvar339, 640
  %scevgep348 = getelementptr i8, i8* %call, i64 %110
  %min.iters.check1232 = icmp ult i64 %109, 4
  br i1 %min.iters.check1232, label %polly.loop_header342.preheader, label %vector.ph1233

vector.ph1233:                                    ; preds = %polly.loop_header336
  %n.vec1235 = and i64 %109, -4
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1229 ]
  %111 = shl nuw nsw i64 %index1236, 3
  %112 = getelementptr i8, i8* %scevgep348, i64 %111
  %113 = bitcast i8* %112 to <4 x double>*
  %wide.load1240 = load <4 x double>, <4 x double>* %113, align 8, !alias.scope !72, !noalias !74
  %114 = fmul fast <4 x double> %wide.load1240, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %115 = bitcast i8* %112 to <4 x double>*
  store <4 x double> %114, <4 x double>* %115, align 8, !alias.scope !72, !noalias !74
  %index.next1237 = add i64 %index1236, 4
  %116 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %116, label %middle.block1227, label %vector.body1229, !llvm.loop !77

middle.block1227:                                 ; preds = %vector.body1229
  %cmp.n1239 = icmp eq i64 %109, %n.vec1235
  br i1 %cmp.n1239, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block1227
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1235, %middle.block1227 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block1227
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next340, 80
  %indvar.next1231 = add i64 %indvar1230, 1
  br i1 %exitcond799.not, label %polly.loop_header365.preheader, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %117 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %117
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond798.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !78

polly.loop_header365.preheader:                   ; preds = %polly.loop_exit344, %polly.loop_exit367
  %polly.loop_cond364 = phi i1 [ false, %polly.loop_exit367 ], [ true, %polly.loop_exit344 ]
  %polly.indvar362 = phi i64 [ 1, %polly.loop_exit367 ], [ 0, %polly.loop_exit344 ]
  %118 = shl nuw nsw i64 %polly.indvar362, 6
  %119 = mul nuw nsw i64 %polly.indvar362, -64
  %120 = icmp slt i64 %119, -16
  %121 = select i1 %120, i64 %119, i64 -16
  %122 = add nsw i64 %121, 79
  br label %polly.loop_header365

polly.loop_exit367:                               ; preds = %polly.loop_exit374
  br i1 %polly.loop_cond364, label %polly.loop_header365.preheader, label %polly.loop_header359.1

polly.loop_header365:                             ; preds = %polly.loop_header365.preheader, %polly.loop_exit374
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit374 ], [ 0, %polly.loop_header365.preheader ]
  %123 = shl nuw nsw i64 %polly.indvar368, 3
  %scevgep387 = getelementptr i8, i8* %call1, i64 %123
  %scevgep391 = getelementptr i8, i8* %call2, i64 %123
  br label %polly.loop_header372

polly.loop_exit374:                               ; preds = %polly.loop_exit382
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond796.not = icmp eq i64 %polly.indvar_next369, 60
  br i1 %exitcond796.not, label %polly.loop_exit367, label %polly.loop_header365

polly.loop_header372:                             ; preds = %polly.loop_exit382, %polly.loop_header365
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit382 ], [ %118, %polly.loop_header365 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit382 ], [ 0, %polly.loop_header365 ]
  %smin794 = call i64 @llvm.smin.i64(i64 %indvars.iv792, i64 31)
  %124 = add nuw i64 %polly.indvar376, %118
  %polly.loop_guard383897 = icmp sgt i64 %124, -1
  br i1 %polly.loop_guard383897, label %polly.loop_header380.preheader, label %polly.loop_exit382

polly.loop_header380.preheader:                   ; preds = %polly.loop_header372
  %125 = mul i64 %124, 480
  %scevgep392 = getelementptr i8, i8* %scevgep391, i64 %125
  %scevgep392393 = bitcast i8* %scevgep392 to double*
  %_p_scalar_394 = load double, double* %scevgep392393, align 8, !alias.scope !76, !noalias !79
  %scevgep400 = getelementptr i8, i8* %scevgep387, i64 %125
  %scevgep400401 = bitcast i8* %scevgep400 to double*
  %_p_scalar_402 = load double, double* %scevgep400401, align 8, !alias.scope !75, !noalias !80
  %126 = mul i64 %124, 640
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_header380, %polly.loop_header372
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %polly.loop_cond378.not.not = icmp ult i64 %polly.indvar376, %122
  %indvars.iv.next793 = add i64 %indvars.iv792, 1
  br i1 %polly.loop_cond378.not.not, label %polly.loop_header372, label %polly.loop_exit374

polly.loop_header380:                             ; preds = %polly.loop_header380.preheader, %polly.loop_header380
  %polly.indvar384 = phi i64 [ %polly.indvar_next385, %polly.loop_header380 ], [ 0, %polly.loop_header380.preheader ]
  %127 = mul nuw nsw i64 %polly.indvar384, 480
  %scevgep388 = getelementptr i8, i8* %scevgep387, i64 %127
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_394, %_p_scalar_390
  %scevgep396 = getelementptr i8, i8* %scevgep391, i64 %127
  %scevgep396397 = bitcast i8* %scevgep396 to double*
  %_p_scalar_398 = load double, double* %scevgep396397, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_402, %_p_scalar_398
  %128 = shl i64 %polly.indvar384, 3
  %129 = add i64 %128, %126
  %scevgep403 = getelementptr i8, i8* %call, i64 %129
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_405
  store double %p_add42.i79, double* %scevgep403404, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %exitcond795.not = icmp eq i64 %polly.indvar384, %smin794
  br i1 %exitcond795.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header492:                             ; preds = %init_array.exit, %polly.loop_exit500
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit500 ], [ 0, %init_array.exit ]
  %polly.indvar495 = phi i64 [ %polly.indvar_next496, %polly.loop_exit500 ], [ 1, %init_array.exit ]
  %130 = add i64 %indvar, 1
  %131 = mul nuw nsw i64 %polly.indvar495, 640
  %scevgep504 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1206 = icmp ult i64 %130, 4
  br i1 %min.iters.check1206, label %polly.loop_header498.preheader, label %vector.ph1207

vector.ph1207:                                    ; preds = %polly.loop_header492
  %n.vec1209 = and i64 %130, -4
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1211, %vector.body1205 ]
  %132 = shl nuw nsw i64 %index1210, 3
  %133 = getelementptr i8, i8* %scevgep504, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1214 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !81, !noalias !83
  %135 = fmul fast <4 x double> %wide.load1214, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !81, !noalias !83
  %index.next1211 = add i64 %index1210, 4
  %137 = icmp eq i64 %index.next1211, %n.vec1209
  br i1 %137, label %middle.block1203, label %vector.body1205, !llvm.loop !86

middle.block1203:                                 ; preds = %vector.body1205
  %cmp.n1213 = icmp eq i64 %130, %n.vec1209
  br i1 %cmp.n1213, label %polly.loop_exit500, label %polly.loop_header498.preheader

polly.loop_header498.preheader:                   ; preds = %polly.loop_header492, %middle.block1203
  %polly.indvar501.ph = phi i64 [ 0, %polly.loop_header492 ], [ %n.vec1209, %middle.block1203 ]
  br label %polly.loop_header498

polly.loop_exit500:                               ; preds = %polly.loop_header498, %middle.block1203
  %polly.indvar_next496 = add nuw nsw i64 %polly.indvar495, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next496, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond812.not, label %polly.loop_header521.preheader, label %polly.loop_header492

polly.loop_header498:                             ; preds = %polly.loop_header498.preheader, %polly.loop_header498
  %polly.indvar501 = phi i64 [ %polly.indvar_next502, %polly.loop_header498 ], [ %polly.indvar501.ph, %polly.loop_header498.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar501, 3
  %scevgep505 = getelementptr i8, i8* %scevgep504, i64 %138
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_507, 1.200000e+00
  store double %p_mul.i, double* %scevgep505506, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next502 = add nuw nsw i64 %polly.indvar501, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next502, %polly.indvar495
  br i1 %exitcond811.not, label %polly.loop_exit500, label %polly.loop_header498, !llvm.loop !87

polly.loop_header521.preheader:                   ; preds = %polly.loop_exit500, %polly.loop_exit523
  %polly.loop_cond520 = phi i1 [ false, %polly.loop_exit523 ], [ true, %polly.loop_exit500 ]
  %polly.indvar518 = phi i64 [ 1, %polly.loop_exit523 ], [ 0, %polly.loop_exit500 ]
  %139 = shl nuw nsw i64 %polly.indvar518, 6
  %140 = mul nuw nsw i64 %polly.indvar518, -64
  %141 = icmp slt i64 %140, -16
  %142 = select i1 %141, i64 %140, i64 -16
  %143 = add nsw i64 %142, 79
  br label %polly.loop_header521

polly.loop_exit523:                               ; preds = %polly.loop_exit530
  br i1 %polly.loop_cond520, label %polly.loop_header521.preheader, label %polly.loop_header515.1

polly.loop_header521:                             ; preds = %polly.loop_header521.preheader, %polly.loop_exit530
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit530 ], [ 0, %polly.loop_header521.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar524, 3
  %scevgep543 = getelementptr i8, i8* %call1, i64 %144
  %scevgep547 = getelementptr i8, i8* %call2, i64 %144
  br label %polly.loop_header528

polly.loop_exit530:                               ; preds = %polly.loop_exit538
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next525, 60
  br i1 %exitcond809.not, label %polly.loop_exit523, label %polly.loop_header521

polly.loop_header528:                             ; preds = %polly.loop_exit538, %polly.loop_header521
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit538 ], [ %139, %polly.loop_header521 ]
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_exit538 ], [ 0, %polly.loop_header521 ]
  %smin807 = call i64 @llvm.smin.i64(i64 %indvars.iv805, i64 31)
  %145 = add nuw i64 %polly.indvar532, %139
  %polly.loop_guard539899 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard539899, label %polly.loop_header536.preheader, label %polly.loop_exit538

polly.loop_header536.preheader:                   ; preds = %polly.loop_header528
  %146 = mul i64 %145, 480
  %scevgep548 = getelementptr i8, i8* %scevgep547, i64 %146
  %scevgep548549 = bitcast i8* %scevgep548 to double*
  %_p_scalar_550 = load double, double* %scevgep548549, align 8, !alias.scope !85, !noalias !88
  %scevgep556 = getelementptr i8, i8* %scevgep543, i64 %146
  %scevgep556557 = bitcast i8* %scevgep556 to double*
  %_p_scalar_558 = load double, double* %scevgep556557, align 8, !alias.scope !84, !noalias !89
  %147 = mul i64 %145, 640
  br label %polly.loop_header536

polly.loop_exit538:                               ; preds = %polly.loop_header536, %polly.loop_header528
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %polly.loop_cond534.not.not = icmp ult i64 %polly.indvar532, %143
  %indvars.iv.next806 = add i64 %indvars.iv805, 1
  br i1 %polly.loop_cond534.not.not, label %polly.loop_header528, label %polly.loop_exit530

polly.loop_header536:                             ; preds = %polly.loop_header536.preheader, %polly.loop_header536
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_header536 ], [ 0, %polly.loop_header536.preheader ]
  %148 = mul nuw nsw i64 %polly.indvar540, 480
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %148
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_550, %_p_scalar_546
  %scevgep552 = getelementptr i8, i8* %scevgep547, i64 %148
  %scevgep552553 = bitcast i8* %scevgep552 to double*
  %_p_scalar_554 = load double, double* %scevgep552553, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_558, %_p_scalar_554
  %149 = shl i64 %polly.indvar540, 3
  %150 = add i64 %149, %147
  %scevgep559 = getelementptr i8, i8* %call, i64 %150
  %scevgep559560 = bitcast i8* %scevgep559 to double*
  %_p_scalar_561 = load double, double* %scevgep559560, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_561
  store double %p_add42.i, double* %scevgep559560, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond808.not = icmp eq i64 %polly.indvar540, %smin807
  br i1 %exitcond808.not, label %polly.loop_exit538, label %polly.loop_header536

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %151 = mul nuw nsw i64 %polly.indvar703, 640
  %152 = trunc i64 %polly.indvar703 to i32
  %broadcast.splatinsert937 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat938 = shufflevector <4 x i32> %broadcast.splatinsert937, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %polly.loop_header700
  %index929 = phi i64 [ 0, %polly.loop_header700 ], [ %index.next930, %vector.body927 ]
  %vec.ind935 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700 ], [ %vec.ind.next936, %vector.body927 ]
  %153 = mul <4 x i32> %vec.ind935, %broadcast.splat938
  %154 = add <4 x i32> %153, <i32 3, i32 3, i32 3, i32 3>
  %155 = urem <4 x i32> %154, <i32 80, i32 80, i32 80, i32 80>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index929, 3
  %159 = add nuw nsw i64 %158, %151
  %160 = getelementptr i8, i8* %call, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !90, !noalias !92
  %index.next930 = add i64 %index929, 4
  %vec.ind.next936 = add <4 x i32> %vec.ind935, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next930, 32
  br i1 %162, label %polly.loop_exit708, label %vector.body927, !llvm.loop !95

polly.loop_exit708:                               ; preds = %vector.body927
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next704, 32
  br i1 %exitcond832.not, label %polly.loop_header700.1, label %polly.loop_header700

polly.loop_header727:                             ; preds = %polly.loop_exit708.2.2, %polly.loop_exit735
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708.2.2 ]
  %163 = mul nuw nsw i64 %polly.indvar730, 480
  %164 = trunc i64 %polly.indvar730 to i32
  %broadcast.splatinsert1051 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1052 = shufflevector <4 x i32> %broadcast.splatinsert1051, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %polly.loop_header727
  %index1043 = phi i64 [ 0, %polly.loop_header727 ], [ %index.next1044, %vector.body1041 ]
  %vec.ind1049 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727 ], [ %vec.ind.next1050, %vector.body1041 ]
  %165 = mul <4 x i32> %vec.ind1049, %broadcast.splat1052
  %166 = add <4 x i32> %165, <i32 2, i32 2, i32 2, i32 2>
  %167 = urem <4 x i32> %166, <i32 60, i32 60, i32 60, i32 60>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %170 = shl i64 %index1043, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call2, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !94, !noalias !96
  %index.next1044 = add i64 %index1043, 4
  %vec.ind.next1050 = add <4 x i32> %vec.ind1049, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1044, 32
  br i1 %174, label %polly.loop_exit735, label %vector.body1041, !llvm.loop !97

polly.loop_exit735:                               ; preds = %vector.body1041
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond823.not, label %polly.loop_header727.1, label %polly.loop_header727

polly.loop_header753:                             ; preds = %polly.loop_exit735.1.2, %polly.loop_exit761
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735.1.2 ]
  %175 = mul nuw nsw i64 %polly.indvar756, 480
  %176 = trunc i64 %polly.indvar756 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header753
  %index1121 = phi i64 [ 0, %polly.loop_header753 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1127 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753 ], [ %vec.ind.next1128, %vector.body1119 ]
  %177 = mul <4 x i32> %vec.ind1127, %broadcast.splat1130
  %178 = add <4 x i32> %177, <i32 1, i32 1, i32 1, i32 1>
  %179 = urem <4 x i32> %178, <i32 80, i32 80, i32 80, i32 80>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %182 = shl i64 %index1121, 3
  %183 = add i64 %182, %175
  %184 = getelementptr i8, i8* %call1, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !93, !noalias !98
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1128 = add <4 x i32> %vec.ind1127, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next1122, 32
  br i1 %186, label %polly.loop_exit761, label %vector.body1119, !llvm.loop !99

polly.loop_exit761:                               ; preds = %vector.body1119
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond817.not, label %polly.loop_header753.1, label %polly.loop_header753

polly.loop_header205.1:                           ; preds = %polly.loop_exit213, %polly.loop_exit213.1
  %polly.loop_cond210.1 = phi i1 [ false, %polly.loop_exit213.1 ], [ true, %polly.loop_exit213 ]
  %polly.indvar208.1 = phi i64 [ 1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit213 ]
  %187 = shl nuw nsw i64 %polly.indvar208.1, 6
  %188 = sub nsw i64 32, %187
  %189 = icmp sgt i64 %188, 0
  %190 = select i1 %189, i64 %188, i64 0
  %191 = mul nuw nsw i64 %polly.indvar208.1, -64
  %192 = icmp slt i64 %191, -16
  %193 = select i1 %192, i64 %191, i64 -16
  %194 = add nsw i64 %193, 79
  %polly.loop_guard.not.1 = icmp sgt i64 %190, %194
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit213.1, label %polly.loop_header211.preheader.1

polly.loop_header211.preheader.1:                 ; preds = %polly.loop_header205.1
  %smax.1 = call i64 @llvm.smax.i64(i64 %188, i64 0)
  %195 = add nsw i64 %smax.1, -32
  %196 = add nsw i64 %195, %187
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header211.preheader.1
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_header211.preheader.1 ]
  %197 = shl nuw nsw i64 %polly.indvar214.1, 3
  %scevgep231.1 = getelementptr i8, i8* %call1, i64 %197
  %scevgep235.1 = getelementptr i8, i8* %call2, i64 %197
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit226.1, %polly.loop_header211.1
  %indvars.iv781.1 = phi i64 [ %indvars.iv.next782.1, %polly.loop_exit226.1 ], [ %196, %polly.loop_header211.1 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit226.1 ], [ %190, %polly.loop_header211.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv781.1, i64 31)
  %198 = add nuw i64 %polly.indvar220.1, %187
  %199 = add i64 %198, -32
  %polly.loop_guard227.1896 = icmp sgt i64 %199, -1
  br i1 %polly.loop_guard227.1896, label %polly.loop_header224.preheader.1, label %polly.loop_exit226.1

polly.loop_header224.preheader.1:                 ; preds = %polly.loop_header217.1
  %200 = mul i64 %198, 480
  %scevgep236.1 = getelementptr i8, i8* %scevgep235.1, i64 %200
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %_p_scalar_238.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !66, !noalias !70
  %scevgep244.1 = getelementptr i8, i8* %scevgep231.1, i64 %200
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !65, !noalias !71
  %201 = mul i64 %198, 640
  br label %polly.loop_header224.1

polly.loop_header224.1:                           ; preds = %polly.loop_header224.1, %polly.loop_header224.preheader.1
  %polly.indvar228.1 = phi i64 [ %polly.indvar_next229.1, %polly.loop_header224.1 ], [ 0, %polly.loop_header224.preheader.1 ]
  %202 = add nuw nsw i64 %polly.indvar228.1, 32
  %203 = mul nuw nsw i64 %202, 480
  %scevgep232.1 = getelementptr i8, i8* %scevgep231.1, i64 %203
  %scevgep232233.1 = bitcast i8* %scevgep232.1 to double*
  %_p_scalar_234.1 = load double, double* %scevgep232233.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_238.1, %_p_scalar_234.1
  %scevgep240.1 = getelementptr i8, i8* %scevgep235.1, i64 %203
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_242.1
  %204 = shl i64 %202, 3
  %205 = add i64 %204, %201
  %scevgep247.1 = getelementptr i8, i8* %call, i64 %205
  %scevgep247248.1 = bitcast i8* %scevgep247.1 to double*
  %_p_scalar_249.1 = load double, double* %scevgep247248.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_249.1
  store double %p_add42.i118.1, double* %scevgep247248.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next229.1 = add nuw nsw i64 %polly.indvar228.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar228.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit226.1, label %polly.loop_header224.1

polly.loop_exit226.1:                             ; preds = %polly.loop_header224.1, %polly.loop_header217.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %polly.loop_cond222.not.not.1 = icmp ult i64 %polly.indvar220.1, %194
  %indvars.iv.next782.1 = add i64 %indvars.iv781.1, 1
  br i1 %polly.loop_cond222.not.not.1, label %polly.loop_header217.1, label %polly.loop_exit219.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit226.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond783.1.not = icmp eq i64 %polly.indvar_next215.1, 60
  br i1 %exitcond783.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  br i1 %polly.loop_cond210.1, label %polly.loop_header205.1, label %polly.loop_header211.2

polly.loop_header211.2:                           ; preds = %polly.loop_exit213.1, %polly.loop_exit219.2
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit213.1 ]
  %206 = shl nuw nsw i64 %polly.indvar214.2, 3
  %scevgep231.2 = getelementptr i8, i8* %call1, i64 %206
  %scevgep235.2 = getelementptr i8, i8* %call2, i64 %206
  br label %polly.loop_header224.preheader.2

polly.loop_header224.preheader.2:                 ; preds = %polly.loop_header211.2, %polly.loop_exit226.2
  %indvars.iv781.2 = phi i64 [ %indvars.iv.next782.2, %polly.loop_exit226.2 ], [ 0, %polly.loop_header211.2 ]
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_exit226.2 ], [ 0, %polly.loop_header211.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv781.2, i64 31)
  %207 = add nuw nsw i64 %polly.indvar220.2, 64
  %208 = mul nuw nsw i64 %207, 480
  %scevgep236.2 = getelementptr i8, i8* %scevgep235.2, i64 %208
  %scevgep236237.2 = bitcast i8* %scevgep236.2 to double*
  %_p_scalar_238.2 = load double, double* %scevgep236237.2, align 8, !alias.scope !66, !noalias !70
  %scevgep244.2 = getelementptr i8, i8* %scevgep231.2, i64 %208
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !65, !noalias !71
  %209 = mul nuw nsw i64 %207, 640
  br label %polly.loop_header224.2

polly.loop_header224.2:                           ; preds = %polly.loop_header224.2, %polly.loop_header224.preheader.2
  %polly.indvar228.2 = phi i64 [ %polly.indvar_next229.2, %polly.loop_header224.2 ], [ 0, %polly.loop_header224.preheader.2 ]
  %210 = add nuw nsw i64 %polly.indvar228.2, 64
  %211 = mul nuw nsw i64 %210, 480
  %scevgep232.2 = getelementptr i8, i8* %scevgep231.2, i64 %211
  %scevgep232233.2 = bitcast i8* %scevgep232.2 to double*
  %_p_scalar_234.2 = load double, double* %scevgep232233.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_238.2, %_p_scalar_234.2
  %scevgep240.2 = getelementptr i8, i8* %scevgep235.2, i64 %211
  %scevgep240241.2 = bitcast i8* %scevgep240.2 to double*
  %_p_scalar_242.2 = load double, double* %scevgep240241.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_242.2
  %212 = shl i64 %210, 3
  %213 = add i64 %212, %209
  %scevgep247.2 = getelementptr i8, i8* %call, i64 %213
  %scevgep247248.2 = bitcast i8* %scevgep247.2 to double*
  %_p_scalar_249.2 = load double, double* %scevgep247248.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_249.2
  store double %p_add42.i118.2, double* %scevgep247248.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next229.2 = add nuw nsw i64 %polly.indvar228.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar228.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit226.2, label %polly.loop_header224.2

polly.loop_exit226.2:                             ; preds = %polly.loop_header224.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %polly.loop_cond222.not.not.2 = icmp ult i64 %polly.indvar220.2, 15
  %indvars.iv.next782.2 = add i64 %indvars.iv781.2, 1
  br i1 %polly.loop_cond222.not.not.2, label %polly.loop_header224.preheader.2, label %polly.loop_exit219.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit226.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond783.2.not = icmp eq i64 %polly.indvar_next215.2, 60
  br i1 %exitcond783.2.not, label %kernel_syr2k.exit129, label %polly.loop_header211.2

polly.loop_header359.1:                           ; preds = %polly.loop_exit367, %polly.loop_exit367.1
  %polly.loop_cond364.1 = phi i1 [ false, %polly.loop_exit367.1 ], [ true, %polly.loop_exit367 ]
  %polly.indvar362.1 = phi i64 [ 1, %polly.loop_exit367.1 ], [ 0, %polly.loop_exit367 ]
  %214 = shl nuw nsw i64 %polly.indvar362.1, 6
  %215 = sub nsw i64 32, %214
  %216 = icmp sgt i64 %215, 0
  %217 = select i1 %216, i64 %215, i64 0
  %218 = mul nuw nsw i64 %polly.indvar362.1, -64
  %219 = icmp slt i64 %218, -16
  %220 = select i1 %219, i64 %218, i64 -16
  %221 = add nsw i64 %220, 79
  %polly.loop_guard375.not.1 = icmp sgt i64 %217, %221
  br i1 %polly.loop_guard375.not.1, label %polly.loop_exit367.1, label %polly.loop_header365.preheader.1

polly.loop_header365.preheader.1:                 ; preds = %polly.loop_header359.1
  %smax791.1 = call i64 @llvm.smax.i64(i64 %215, i64 0)
  %222 = add nsw i64 %smax791.1, -32
  %223 = add nsw i64 %222, %214
  br label %polly.loop_header365.1

polly.loop_header365.1:                           ; preds = %polly.loop_exit374.1, %polly.loop_header365.preheader.1
  %polly.indvar368.1 = phi i64 [ %polly.indvar_next369.1, %polly.loop_exit374.1 ], [ 0, %polly.loop_header365.preheader.1 ]
  %224 = shl nuw nsw i64 %polly.indvar368.1, 3
  %scevgep387.1 = getelementptr i8, i8* %call1, i64 %224
  %scevgep391.1 = getelementptr i8, i8* %call2, i64 %224
  br label %polly.loop_header372.1

polly.loop_header372.1:                           ; preds = %polly.loop_exit382.1, %polly.loop_header365.1
  %indvars.iv792.1 = phi i64 [ %indvars.iv.next793.1, %polly.loop_exit382.1 ], [ %223, %polly.loop_header365.1 ]
  %polly.indvar376.1 = phi i64 [ %polly.indvar_next377.1, %polly.loop_exit382.1 ], [ %217, %polly.loop_header365.1 ]
  %smin794.1 = call i64 @llvm.smin.i64(i64 %indvars.iv792.1, i64 31)
  %225 = add nuw i64 %polly.indvar376.1, %214
  %226 = add i64 %225, -32
  %polly.loop_guard383.1898 = icmp sgt i64 %226, -1
  br i1 %polly.loop_guard383.1898, label %polly.loop_header380.preheader.1, label %polly.loop_exit382.1

polly.loop_header380.preheader.1:                 ; preds = %polly.loop_header372.1
  %227 = mul i64 %225, 480
  %scevgep392.1 = getelementptr i8, i8* %scevgep391.1, i64 %227
  %scevgep392393.1 = bitcast i8* %scevgep392.1 to double*
  %_p_scalar_394.1 = load double, double* %scevgep392393.1, align 8, !alias.scope !76, !noalias !79
  %scevgep400.1 = getelementptr i8, i8* %scevgep387.1, i64 %227
  %scevgep400401.1 = bitcast i8* %scevgep400.1 to double*
  %_p_scalar_402.1 = load double, double* %scevgep400401.1, align 8, !alias.scope !75, !noalias !80
  %228 = mul i64 %225, 640
  br label %polly.loop_header380.1

polly.loop_header380.1:                           ; preds = %polly.loop_header380.1, %polly.loop_header380.preheader.1
  %polly.indvar384.1 = phi i64 [ %polly.indvar_next385.1, %polly.loop_header380.1 ], [ 0, %polly.loop_header380.preheader.1 ]
  %229 = add nuw nsw i64 %polly.indvar384.1, 32
  %230 = mul nuw nsw i64 %229, 480
  %scevgep388.1 = getelementptr i8, i8* %scevgep387.1, i64 %230
  %scevgep388389.1 = bitcast i8* %scevgep388.1 to double*
  %_p_scalar_390.1 = load double, double* %scevgep388389.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_394.1, %_p_scalar_390.1
  %scevgep396.1 = getelementptr i8, i8* %scevgep391.1, i64 %230
  %scevgep396397.1 = bitcast i8* %scevgep396.1 to double*
  %_p_scalar_398.1 = load double, double* %scevgep396397.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_402.1, %_p_scalar_398.1
  %231 = shl i64 %229, 3
  %232 = add i64 %231, %228
  %scevgep403.1 = getelementptr i8, i8* %call, i64 %232
  %scevgep403404.1 = bitcast i8* %scevgep403.1 to double*
  %_p_scalar_405.1 = load double, double* %scevgep403404.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_405.1
  store double %p_add42.i79.1, double* %scevgep403404.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next385.1 = add nuw nsw i64 %polly.indvar384.1, 1
  %exitcond795.1.not = icmp eq i64 %polly.indvar384.1, %smin794.1
  br i1 %exitcond795.1.not, label %polly.loop_exit382.1, label %polly.loop_header380.1

polly.loop_exit382.1:                             ; preds = %polly.loop_header380.1, %polly.loop_header372.1
  %polly.indvar_next377.1 = add nuw nsw i64 %polly.indvar376.1, 1
  %polly.loop_cond378.not.not.1 = icmp ult i64 %polly.indvar376.1, %221
  %indvars.iv.next793.1 = add i64 %indvars.iv792.1, 1
  br i1 %polly.loop_cond378.not.not.1, label %polly.loop_header372.1, label %polly.loop_exit374.1

polly.loop_exit374.1:                             ; preds = %polly.loop_exit382.1
  %polly.indvar_next369.1 = add nuw nsw i64 %polly.indvar368.1, 1
  %exitcond796.1.not = icmp eq i64 %polly.indvar_next369.1, 60
  br i1 %exitcond796.1.not, label %polly.loop_exit367.1, label %polly.loop_header365.1

polly.loop_exit367.1:                             ; preds = %polly.loop_exit374.1, %polly.loop_header359.1
  br i1 %polly.loop_cond364.1, label %polly.loop_header359.1, label %polly.loop_header365.2

polly.loop_header365.2:                           ; preds = %polly.loop_exit367.1, %polly.loop_exit374.2
  %polly.indvar368.2 = phi i64 [ %polly.indvar_next369.2, %polly.loop_exit374.2 ], [ 0, %polly.loop_exit367.1 ]
  %233 = shl nuw nsw i64 %polly.indvar368.2, 3
  %scevgep387.2 = getelementptr i8, i8* %call1, i64 %233
  %scevgep391.2 = getelementptr i8, i8* %call2, i64 %233
  br label %polly.loop_header380.preheader.2

polly.loop_header380.preheader.2:                 ; preds = %polly.loop_header365.2, %polly.loop_exit382.2
  %indvars.iv792.2 = phi i64 [ %indvars.iv.next793.2, %polly.loop_exit382.2 ], [ 0, %polly.loop_header365.2 ]
  %polly.indvar376.2 = phi i64 [ %polly.indvar_next377.2, %polly.loop_exit382.2 ], [ 0, %polly.loop_header365.2 ]
  %smin794.2 = call i64 @llvm.smin.i64(i64 %indvars.iv792.2, i64 31)
  %234 = add nuw nsw i64 %polly.indvar376.2, 64
  %235 = mul nuw nsw i64 %234, 480
  %scevgep392.2 = getelementptr i8, i8* %scevgep391.2, i64 %235
  %scevgep392393.2 = bitcast i8* %scevgep392.2 to double*
  %_p_scalar_394.2 = load double, double* %scevgep392393.2, align 8, !alias.scope !76, !noalias !79
  %scevgep400.2 = getelementptr i8, i8* %scevgep387.2, i64 %235
  %scevgep400401.2 = bitcast i8* %scevgep400.2 to double*
  %_p_scalar_402.2 = load double, double* %scevgep400401.2, align 8, !alias.scope !75, !noalias !80
  %236 = mul nuw nsw i64 %234, 640
  br label %polly.loop_header380.2

polly.loop_header380.2:                           ; preds = %polly.loop_header380.2, %polly.loop_header380.preheader.2
  %polly.indvar384.2 = phi i64 [ %polly.indvar_next385.2, %polly.loop_header380.2 ], [ 0, %polly.loop_header380.preheader.2 ]
  %237 = add nuw nsw i64 %polly.indvar384.2, 64
  %238 = mul nuw nsw i64 %237, 480
  %scevgep388.2 = getelementptr i8, i8* %scevgep387.2, i64 %238
  %scevgep388389.2 = bitcast i8* %scevgep388.2 to double*
  %_p_scalar_390.2 = load double, double* %scevgep388389.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_394.2, %_p_scalar_390.2
  %scevgep396.2 = getelementptr i8, i8* %scevgep391.2, i64 %238
  %scevgep396397.2 = bitcast i8* %scevgep396.2 to double*
  %_p_scalar_398.2 = load double, double* %scevgep396397.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_402.2, %_p_scalar_398.2
  %239 = shl i64 %237, 3
  %240 = add i64 %239, %236
  %scevgep403.2 = getelementptr i8, i8* %call, i64 %240
  %scevgep403404.2 = bitcast i8* %scevgep403.2 to double*
  %_p_scalar_405.2 = load double, double* %scevgep403404.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_405.2
  store double %p_add42.i79.2, double* %scevgep403404.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next385.2 = add nuw nsw i64 %polly.indvar384.2, 1
  %exitcond795.2.not = icmp eq i64 %polly.indvar384.2, %smin794.2
  br i1 %exitcond795.2.not, label %polly.loop_exit382.2, label %polly.loop_header380.2

polly.loop_exit382.2:                             ; preds = %polly.loop_header380.2
  %polly.indvar_next377.2 = add nuw nsw i64 %polly.indvar376.2, 1
  %polly.loop_cond378.not.not.2 = icmp ult i64 %polly.indvar376.2, 15
  %indvars.iv.next793.2 = add i64 %indvars.iv792.2, 1
  br i1 %polly.loop_cond378.not.not.2, label %polly.loop_header380.preheader.2, label %polly.loop_exit374.2

polly.loop_exit374.2:                             ; preds = %polly.loop_exit382.2
  %polly.indvar_next369.2 = add nuw nsw i64 %polly.indvar368.2, 1
  %exitcond796.2.not = icmp eq i64 %polly.indvar_next369.2, 60
  br i1 %exitcond796.2.not, label %kernel_syr2k.exit90, label %polly.loop_header365.2

polly.loop_header515.1:                           ; preds = %polly.loop_exit523, %polly.loop_exit523.1
  %polly.loop_cond520.1 = phi i1 [ false, %polly.loop_exit523.1 ], [ true, %polly.loop_exit523 ]
  %polly.indvar518.1 = phi i64 [ 1, %polly.loop_exit523.1 ], [ 0, %polly.loop_exit523 ]
  %241 = shl nuw nsw i64 %polly.indvar518.1, 6
  %242 = sub nsw i64 32, %241
  %243 = icmp sgt i64 %242, 0
  %244 = select i1 %243, i64 %242, i64 0
  %245 = mul nuw nsw i64 %polly.indvar518.1, -64
  %246 = icmp slt i64 %245, -16
  %247 = select i1 %246, i64 %245, i64 -16
  %248 = add nsw i64 %247, 79
  %polly.loop_guard531.not.1 = icmp sgt i64 %244, %248
  br i1 %polly.loop_guard531.not.1, label %polly.loop_exit523.1, label %polly.loop_header521.preheader.1

polly.loop_header521.preheader.1:                 ; preds = %polly.loop_header515.1
  %smax804.1 = call i64 @llvm.smax.i64(i64 %242, i64 0)
  %249 = add nsw i64 %smax804.1, -32
  %250 = add nsw i64 %249, %241
  br label %polly.loop_header521.1

polly.loop_header521.1:                           ; preds = %polly.loop_exit530.1, %polly.loop_header521.preheader.1
  %polly.indvar524.1 = phi i64 [ %polly.indvar_next525.1, %polly.loop_exit530.1 ], [ 0, %polly.loop_header521.preheader.1 ]
  %251 = shl nuw nsw i64 %polly.indvar524.1, 3
  %scevgep543.1 = getelementptr i8, i8* %call1, i64 %251
  %scevgep547.1 = getelementptr i8, i8* %call2, i64 %251
  br label %polly.loop_header528.1

polly.loop_header528.1:                           ; preds = %polly.loop_exit538.1, %polly.loop_header521.1
  %indvars.iv805.1 = phi i64 [ %indvars.iv.next806.1, %polly.loop_exit538.1 ], [ %250, %polly.loop_header521.1 ]
  %polly.indvar532.1 = phi i64 [ %polly.indvar_next533.1, %polly.loop_exit538.1 ], [ %244, %polly.loop_header521.1 ]
  %smin807.1 = call i64 @llvm.smin.i64(i64 %indvars.iv805.1, i64 31)
  %252 = add nuw i64 %polly.indvar532.1, %241
  %253 = add i64 %252, -32
  %polly.loop_guard539.1900 = icmp sgt i64 %253, -1
  br i1 %polly.loop_guard539.1900, label %polly.loop_header536.preheader.1, label %polly.loop_exit538.1

polly.loop_header536.preheader.1:                 ; preds = %polly.loop_header528.1
  %254 = mul i64 %252, 480
  %scevgep548.1 = getelementptr i8, i8* %scevgep547.1, i64 %254
  %scevgep548549.1 = bitcast i8* %scevgep548.1 to double*
  %_p_scalar_550.1 = load double, double* %scevgep548549.1, align 8, !alias.scope !85, !noalias !88
  %scevgep556.1 = getelementptr i8, i8* %scevgep543.1, i64 %254
  %scevgep556557.1 = bitcast i8* %scevgep556.1 to double*
  %_p_scalar_558.1 = load double, double* %scevgep556557.1, align 8, !alias.scope !84, !noalias !89
  %255 = mul i64 %252, 640
  br label %polly.loop_header536.1

polly.loop_header536.1:                           ; preds = %polly.loop_header536.1, %polly.loop_header536.preheader.1
  %polly.indvar540.1 = phi i64 [ %polly.indvar_next541.1, %polly.loop_header536.1 ], [ 0, %polly.loop_header536.preheader.1 ]
  %256 = add nuw nsw i64 %polly.indvar540.1, 32
  %257 = mul nuw nsw i64 %256, 480
  %scevgep544.1 = getelementptr i8, i8* %scevgep543.1, i64 %257
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_550.1, %_p_scalar_546.1
  %scevgep552.1 = getelementptr i8, i8* %scevgep547.1, i64 %257
  %scevgep552553.1 = bitcast i8* %scevgep552.1 to double*
  %_p_scalar_554.1 = load double, double* %scevgep552553.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_558.1, %_p_scalar_554.1
  %258 = shl i64 %256, 3
  %259 = add i64 %258, %255
  %scevgep559.1 = getelementptr i8, i8* %call, i64 %259
  %scevgep559560.1 = bitcast i8* %scevgep559.1 to double*
  %_p_scalar_561.1 = load double, double* %scevgep559560.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_561.1
  store double %p_add42.i.1, double* %scevgep559560.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next541.1 = add nuw nsw i64 %polly.indvar540.1, 1
  %exitcond808.1.not = icmp eq i64 %polly.indvar540.1, %smin807.1
  br i1 %exitcond808.1.not, label %polly.loop_exit538.1, label %polly.loop_header536.1

polly.loop_exit538.1:                             ; preds = %polly.loop_header536.1, %polly.loop_header528.1
  %polly.indvar_next533.1 = add nuw nsw i64 %polly.indvar532.1, 1
  %polly.loop_cond534.not.not.1 = icmp ult i64 %polly.indvar532.1, %248
  %indvars.iv.next806.1 = add i64 %indvars.iv805.1, 1
  br i1 %polly.loop_cond534.not.not.1, label %polly.loop_header528.1, label %polly.loop_exit530.1

polly.loop_exit530.1:                             ; preds = %polly.loop_exit538.1
  %polly.indvar_next525.1 = add nuw nsw i64 %polly.indvar524.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next525.1, 60
  br i1 %exitcond809.1.not, label %polly.loop_exit523.1, label %polly.loop_header521.1

polly.loop_exit523.1:                             ; preds = %polly.loop_exit530.1, %polly.loop_header515.1
  br i1 %polly.loop_cond520.1, label %polly.loop_header515.1, label %polly.loop_header521.2

polly.loop_header521.2:                           ; preds = %polly.loop_exit523.1, %polly.loop_exit530.2
  %polly.indvar524.2 = phi i64 [ %polly.indvar_next525.2, %polly.loop_exit530.2 ], [ 0, %polly.loop_exit523.1 ]
  %260 = shl nuw nsw i64 %polly.indvar524.2, 3
  %scevgep543.2 = getelementptr i8, i8* %call1, i64 %260
  %scevgep547.2 = getelementptr i8, i8* %call2, i64 %260
  br label %polly.loop_header536.preheader.2

polly.loop_header536.preheader.2:                 ; preds = %polly.loop_header521.2, %polly.loop_exit538.2
  %indvars.iv805.2 = phi i64 [ %indvars.iv.next806.2, %polly.loop_exit538.2 ], [ 0, %polly.loop_header521.2 ]
  %polly.indvar532.2 = phi i64 [ %polly.indvar_next533.2, %polly.loop_exit538.2 ], [ 0, %polly.loop_header521.2 ]
  %smin807.2 = call i64 @llvm.smin.i64(i64 %indvars.iv805.2, i64 31)
  %261 = add nuw nsw i64 %polly.indvar532.2, 64
  %262 = mul nuw nsw i64 %261, 480
  %scevgep548.2 = getelementptr i8, i8* %scevgep547.2, i64 %262
  %scevgep548549.2 = bitcast i8* %scevgep548.2 to double*
  %_p_scalar_550.2 = load double, double* %scevgep548549.2, align 8, !alias.scope !85, !noalias !88
  %scevgep556.2 = getelementptr i8, i8* %scevgep543.2, i64 %262
  %scevgep556557.2 = bitcast i8* %scevgep556.2 to double*
  %_p_scalar_558.2 = load double, double* %scevgep556557.2, align 8, !alias.scope !84, !noalias !89
  %263 = mul nuw nsw i64 %261, 640
  br label %polly.loop_header536.2

polly.loop_header536.2:                           ; preds = %polly.loop_header536.2, %polly.loop_header536.preheader.2
  %polly.indvar540.2 = phi i64 [ %polly.indvar_next541.2, %polly.loop_header536.2 ], [ 0, %polly.loop_header536.preheader.2 ]
  %264 = add nuw nsw i64 %polly.indvar540.2, 64
  %265 = mul nuw nsw i64 %264, 480
  %scevgep544.2 = getelementptr i8, i8* %scevgep543.2, i64 %265
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_550.2, %_p_scalar_546.2
  %scevgep552.2 = getelementptr i8, i8* %scevgep547.2, i64 %265
  %scevgep552553.2 = bitcast i8* %scevgep552.2 to double*
  %_p_scalar_554.2 = load double, double* %scevgep552553.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_558.2, %_p_scalar_554.2
  %266 = shl i64 %264, 3
  %267 = add i64 %266, %263
  %scevgep559.2 = getelementptr i8, i8* %call, i64 %267
  %scevgep559560.2 = bitcast i8* %scevgep559.2 to double*
  %_p_scalar_561.2 = load double, double* %scevgep559560.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_561.2
  store double %p_add42.i.2, double* %scevgep559560.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next541.2 = add nuw nsw i64 %polly.indvar540.2, 1
  %exitcond808.2.not = icmp eq i64 %polly.indvar540.2, %smin807.2
  br i1 %exitcond808.2.not, label %polly.loop_exit538.2, label %polly.loop_header536.2

polly.loop_exit538.2:                             ; preds = %polly.loop_header536.2
  %polly.indvar_next533.2 = add nuw nsw i64 %polly.indvar532.2, 1
  %polly.loop_cond534.not.not.2 = icmp ult i64 %polly.indvar532.2, 15
  %indvars.iv.next806.2 = add i64 %indvars.iv805.2, 1
  br i1 %polly.loop_cond534.not.not.2, label %polly.loop_header536.preheader.2, label %polly.loop_exit530.2

polly.loop_exit530.2:                             ; preds = %polly.loop_exit538.2
  %polly.indvar_next525.2 = add nuw nsw i64 %polly.indvar524.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next525.2, 60
  br i1 %exitcond809.2.not, label %kernel_syr2k.exit, label %polly.loop_header521.2

polly.loop_header753.1:                           ; preds = %polly.loop_exit761, %polly.loop_exit761.1
  %polly.indvar756.1 = phi i64 [ %polly.indvar_next757.1, %polly.loop_exit761.1 ], [ 0, %polly.loop_exit761 ]
  %268 = mul nuw nsw i64 %polly.indvar756.1, 480
  %269 = trunc i64 %polly.indvar756.1 to i32
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %269, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header753.1
  %index1135 = phi i64 [ 0, %polly.loop_header753.1 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1139 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1 ], [ %vec.ind.next1140, %vector.body1133 ]
  %270 = add nuw nsw <4 x i64> %vec.ind1139, <i64 32, i64 32, i64 32, i64 32>
  %271 = trunc <4 x i64> %270 to <4 x i32>
  %272 = mul <4 x i32> %broadcast.splat1142, %271
  %273 = add <4 x i32> %272, <i32 1, i32 1, i32 1, i32 1>
  %274 = urem <4 x i32> %273, <i32 80, i32 80, i32 80, i32 80>
  %275 = sitofp <4 x i32> %274 to <4 x double>
  %276 = fmul fast <4 x double> %275, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %277 = extractelement <4 x i64> %270, i32 0
  %278 = shl i64 %277, 3
  %279 = add i64 %278, %268
  %280 = getelementptr i8, i8* %call1, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %276, <4 x double>* %281, align 8, !alias.scope !93, !noalias !98
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1140 = add <4 x i64> %vec.ind1139, <i64 4, i64 4, i64 4, i64 4>
  %282 = icmp eq i64 %index.next1136, 28
  br i1 %282, label %polly.loop_exit761.1, label %vector.body1133, !llvm.loop !100

polly.loop_exit761.1:                             ; preds = %vector.body1133
  %polly.indvar_next757.1 = add nuw nsw i64 %polly.indvar756.1, 1
  %exitcond817.1.not = icmp eq i64 %polly.indvar_next757.1, 32
  br i1 %exitcond817.1.not, label %polly.loop_header753.1840, label %polly.loop_header753.1

polly.loop_header753.1840:                        ; preds = %polly.loop_exit761.1, %polly.loop_exit761.1851
  %polly.indvar756.1839 = phi i64 [ %polly.indvar_next757.1849, %polly.loop_exit761.1851 ], [ 0, %polly.loop_exit761.1 ]
  %283 = add nuw nsw i64 %polly.indvar756.1839, 32
  %284 = mul nuw nsw i64 %283, 480
  %285 = trunc i64 %283 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %polly.loop_header753.1840
  %index1147 = phi i64 [ 0, %polly.loop_header753.1840 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1153 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.1840 ], [ %vec.ind.next1154, %vector.body1145 ]
  %286 = mul <4 x i32> %vec.ind1153, %broadcast.splat1156
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 80, i32 80, i32 80, i32 80>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %291 = shl i64 %index1147, 3
  %292 = add i64 %291, %284
  %293 = getelementptr i8, i8* %call1, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %290, <4 x double>* %294, align 8, !alias.scope !93, !noalias !98
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1154 = add <4 x i32> %vec.ind1153, <i32 4, i32 4, i32 4, i32 4>
  %295 = icmp eq i64 %index.next1148, 32
  br i1 %295, label %polly.loop_exit761.1851, label %vector.body1145, !llvm.loop !101

polly.loop_exit761.1851:                          ; preds = %vector.body1145
  %polly.indvar_next757.1849 = add nuw nsw i64 %polly.indvar756.1839, 1
  %exitcond817.1850.not = icmp eq i64 %polly.indvar_next757.1849, 32
  br i1 %exitcond817.1850.not, label %polly.loop_header753.1.1, label %polly.loop_header753.1840

polly.loop_header753.1.1:                         ; preds = %polly.loop_exit761.1851, %polly.loop_exit761.1.1
  %polly.indvar756.1.1 = phi i64 [ %polly.indvar_next757.1.1, %polly.loop_exit761.1.1 ], [ 0, %polly.loop_exit761.1851 ]
  %296 = add nuw nsw i64 %polly.indvar756.1.1, 32
  %297 = mul nuw nsw i64 %296, 480
  %298 = trunc i64 %296 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %298, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header753.1.1
  %index1161 = phi i64 [ 0, %polly.loop_header753.1.1 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.1 ], [ %vec.ind.next1166, %vector.body1159 ]
  %299 = add nuw nsw <4 x i64> %vec.ind1165, <i64 32, i64 32, i64 32, i64 32>
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = mul <4 x i32> %broadcast.splat1168, %300
  %302 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  %303 = urem <4 x i32> %302, <i32 80, i32 80, i32 80, i32 80>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %306 = extractelement <4 x i64> %299, i32 0
  %307 = shl i64 %306, 3
  %308 = add i64 %307, %297
  %309 = getelementptr i8, i8* %call1, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %305, <4 x double>* %310, align 8, !alias.scope !93, !noalias !98
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %311 = icmp eq i64 %index.next1162, 28
  br i1 %311, label %polly.loop_exit761.1.1, label %vector.body1159, !llvm.loop !102

polly.loop_exit761.1.1:                           ; preds = %vector.body1159
  %polly.indvar_next757.1.1 = add nuw nsw i64 %polly.indvar756.1.1, 1
  %exitcond817.1.1.not = icmp eq i64 %polly.indvar_next757.1.1, 32
  br i1 %exitcond817.1.1.not, label %polly.loop_header753.2, label %polly.loop_header753.1.1

polly.loop_header753.2:                           ; preds = %polly.loop_exit761.1.1, %polly.loop_exit761.2
  %polly.indvar756.2 = phi i64 [ %polly.indvar_next757.2, %polly.loop_exit761.2 ], [ 0, %polly.loop_exit761.1.1 ]
  %312 = add nuw nsw i64 %polly.indvar756.2, 64
  %313 = mul nuw nsw i64 %312, 480
  %314 = trunc i64 %312 to i32
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %314, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_header753.2
  %index1173 = phi i64 [ 0, %polly.loop_header753.2 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1179 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.2 ], [ %vec.ind.next1180, %vector.body1171 ]
  %315 = mul <4 x i32> %vec.ind1179, %broadcast.splat1182
  %316 = add <4 x i32> %315, <i32 1, i32 1, i32 1, i32 1>
  %317 = urem <4 x i32> %316, <i32 80, i32 80, i32 80, i32 80>
  %318 = sitofp <4 x i32> %317 to <4 x double>
  %319 = fmul fast <4 x double> %318, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %320 = shl i64 %index1173, 3
  %321 = add i64 %320, %313
  %322 = getelementptr i8, i8* %call1, i64 %321
  %323 = bitcast i8* %322 to <4 x double>*
  store <4 x double> %319, <4 x double>* %323, align 8, !alias.scope !93, !noalias !98
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1180 = add <4 x i32> %vec.ind1179, <i32 4, i32 4, i32 4, i32 4>
  %324 = icmp eq i64 %index.next1174, 32
  br i1 %324, label %polly.loop_exit761.2, label %vector.body1171, !llvm.loop !103

polly.loop_exit761.2:                             ; preds = %vector.body1171
  %polly.indvar_next757.2 = add nuw nsw i64 %polly.indvar756.2, 1
  %exitcond817.2.not = icmp eq i64 %polly.indvar_next757.2, 16
  br i1 %exitcond817.2.not, label %polly.loop_header753.1.2, label %polly.loop_header753.2

polly.loop_header753.1.2:                         ; preds = %polly.loop_exit761.2, %polly.loop_exit761.1.2
  %polly.indvar756.1.2 = phi i64 [ %polly.indvar_next757.1.2, %polly.loop_exit761.1.2 ], [ 0, %polly.loop_exit761.2 ]
  %325 = add nuw nsw i64 %polly.indvar756.1.2, 64
  %326 = mul nuw nsw i64 %325, 480
  %327 = trunc i64 %325 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %327, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header753.1.2
  %index1187 = phi i64 [ 0, %polly.loop_header753.1.2 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.2 ], [ %vec.ind.next1192, %vector.body1185 ]
  %328 = add nuw nsw <4 x i64> %vec.ind1191, <i64 32, i64 32, i64 32, i64 32>
  %329 = trunc <4 x i64> %328 to <4 x i32>
  %330 = mul <4 x i32> %broadcast.splat1194, %329
  %331 = add <4 x i32> %330, <i32 1, i32 1, i32 1, i32 1>
  %332 = urem <4 x i32> %331, <i32 80, i32 80, i32 80, i32 80>
  %333 = sitofp <4 x i32> %332 to <4 x double>
  %334 = fmul fast <4 x double> %333, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %335 = extractelement <4 x i64> %328, i32 0
  %336 = shl i64 %335, 3
  %337 = add i64 %336, %326
  %338 = getelementptr i8, i8* %call1, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %334, <4 x double>* %339, align 8, !alias.scope !93, !noalias !98
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %340 = icmp eq i64 %index.next1188, 28
  br i1 %340, label %polly.loop_exit761.1.2, label %vector.body1185, !llvm.loop !104

polly.loop_exit761.1.2:                           ; preds = %vector.body1185
  %polly.indvar_next757.1.2 = add nuw nsw i64 %polly.indvar756.1.2, 1
  %exitcond817.1.2.not = icmp eq i64 %polly.indvar_next757.1.2, 16
  br i1 %exitcond817.1.2.not, label %init_array.exit, label %polly.loop_header753.1.2

polly.loop_header727.1:                           ; preds = %polly.loop_exit735, %polly.loop_exit735.1
  %polly.indvar730.1 = phi i64 [ %polly.indvar_next731.1, %polly.loop_exit735.1 ], [ 0, %polly.loop_exit735 ]
  %341 = mul nuw nsw i64 %polly.indvar730.1, 480
  %342 = trunc i64 %polly.indvar730.1 to i32
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %polly.loop_header727.1
  %index1057 = phi i64 [ 0, %polly.loop_header727.1 ], [ %index.next1058, %vector.body1055 ]
  %vec.ind1061 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1 ], [ %vec.ind.next1062, %vector.body1055 ]
  %343 = add nuw nsw <4 x i64> %vec.ind1061, <i64 32, i64 32, i64 32, i64 32>
  %344 = trunc <4 x i64> %343 to <4 x i32>
  %345 = mul <4 x i32> %broadcast.splat1064, %344
  %346 = add <4 x i32> %345, <i32 2, i32 2, i32 2, i32 2>
  %347 = urem <4 x i32> %346, <i32 60, i32 60, i32 60, i32 60>
  %348 = sitofp <4 x i32> %347 to <4 x double>
  %349 = fmul fast <4 x double> %348, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %350 = extractelement <4 x i64> %343, i32 0
  %351 = shl i64 %350, 3
  %352 = add i64 %351, %341
  %353 = getelementptr i8, i8* %call2, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %349, <4 x double>* %354, align 8, !alias.scope !94, !noalias !96
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1062 = add <4 x i64> %vec.ind1061, <i64 4, i64 4, i64 4, i64 4>
  %355 = icmp eq i64 %index.next1058, 28
  br i1 %355, label %polly.loop_exit735.1, label %vector.body1055, !llvm.loop !105

polly.loop_exit735.1:                             ; preds = %vector.body1055
  %polly.indvar_next731.1 = add nuw nsw i64 %polly.indvar730.1, 1
  %exitcond823.1.not = icmp eq i64 %polly.indvar_next731.1, 32
  br i1 %exitcond823.1.not, label %polly.loop_header727.1854, label %polly.loop_header727.1

polly.loop_header727.1854:                        ; preds = %polly.loop_exit735.1, %polly.loop_exit735.1865
  %polly.indvar730.1853 = phi i64 [ %polly.indvar_next731.1863, %polly.loop_exit735.1865 ], [ 0, %polly.loop_exit735.1 ]
  %356 = add nuw nsw i64 %polly.indvar730.1853, 32
  %357 = mul nuw nsw i64 %356, 480
  %358 = trunc i64 %356 to i32
  %broadcast.splatinsert1077 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat1078 = shufflevector <4 x i32> %broadcast.splatinsert1077, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header727.1854
  %index1069 = phi i64 [ 0, %polly.loop_header727.1854 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1075 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.1854 ], [ %vec.ind.next1076, %vector.body1067 ]
  %359 = mul <4 x i32> %vec.ind1075, %broadcast.splat1078
  %360 = add <4 x i32> %359, <i32 2, i32 2, i32 2, i32 2>
  %361 = urem <4 x i32> %360, <i32 60, i32 60, i32 60, i32 60>
  %362 = sitofp <4 x i32> %361 to <4 x double>
  %363 = fmul fast <4 x double> %362, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %364 = shl i64 %index1069, 3
  %365 = add i64 %364, %357
  %366 = getelementptr i8, i8* %call2, i64 %365
  %367 = bitcast i8* %366 to <4 x double>*
  store <4 x double> %363, <4 x double>* %367, align 8, !alias.scope !94, !noalias !96
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1076 = add <4 x i32> %vec.ind1075, <i32 4, i32 4, i32 4, i32 4>
  %368 = icmp eq i64 %index.next1070, 32
  br i1 %368, label %polly.loop_exit735.1865, label %vector.body1067, !llvm.loop !106

polly.loop_exit735.1865:                          ; preds = %vector.body1067
  %polly.indvar_next731.1863 = add nuw nsw i64 %polly.indvar730.1853, 1
  %exitcond823.1864.not = icmp eq i64 %polly.indvar_next731.1863, 32
  br i1 %exitcond823.1864.not, label %polly.loop_header727.1.1, label %polly.loop_header727.1854

polly.loop_header727.1.1:                         ; preds = %polly.loop_exit735.1865, %polly.loop_exit735.1.1
  %polly.indvar730.1.1 = phi i64 [ %polly.indvar_next731.1.1, %polly.loop_exit735.1.1 ], [ 0, %polly.loop_exit735.1865 ]
  %369 = add nuw nsw i64 %polly.indvar730.1.1, 32
  %370 = mul nuw nsw i64 %369, 480
  %371 = trunc i64 %369 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %371, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %polly.loop_header727.1.1
  %index1083 = phi i64 [ 0, %polly.loop_header727.1.1 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1087 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.1 ], [ %vec.ind.next1088, %vector.body1081 ]
  %372 = add nuw nsw <4 x i64> %vec.ind1087, <i64 32, i64 32, i64 32, i64 32>
  %373 = trunc <4 x i64> %372 to <4 x i32>
  %374 = mul <4 x i32> %broadcast.splat1090, %373
  %375 = add <4 x i32> %374, <i32 2, i32 2, i32 2, i32 2>
  %376 = urem <4 x i32> %375, <i32 60, i32 60, i32 60, i32 60>
  %377 = sitofp <4 x i32> %376 to <4 x double>
  %378 = fmul fast <4 x double> %377, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %379 = extractelement <4 x i64> %372, i32 0
  %380 = shl i64 %379, 3
  %381 = add i64 %380, %370
  %382 = getelementptr i8, i8* %call2, i64 %381
  %383 = bitcast i8* %382 to <4 x double>*
  store <4 x double> %378, <4 x double>* %383, align 8, !alias.scope !94, !noalias !96
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1088 = add <4 x i64> %vec.ind1087, <i64 4, i64 4, i64 4, i64 4>
  %384 = icmp eq i64 %index.next1084, 28
  br i1 %384, label %polly.loop_exit735.1.1, label %vector.body1081, !llvm.loop !107

polly.loop_exit735.1.1:                           ; preds = %vector.body1081
  %polly.indvar_next731.1.1 = add nuw nsw i64 %polly.indvar730.1.1, 1
  %exitcond823.1.1.not = icmp eq i64 %polly.indvar_next731.1.1, 32
  br i1 %exitcond823.1.1.not, label %polly.loop_header727.2, label %polly.loop_header727.1.1

polly.loop_header727.2:                           ; preds = %polly.loop_exit735.1.1, %polly.loop_exit735.2
  %polly.indvar730.2 = phi i64 [ %polly.indvar_next731.2, %polly.loop_exit735.2 ], [ 0, %polly.loop_exit735.1.1 ]
  %385 = add nuw nsw i64 %polly.indvar730.2, 64
  %386 = mul nuw nsw i64 %385, 480
  %387 = trunc i64 %385 to i32
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %387, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %polly.loop_header727.2
  %index1095 = phi i64 [ 0, %polly.loop_header727.2 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1101 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.2 ], [ %vec.ind.next1102, %vector.body1093 ]
  %388 = mul <4 x i32> %vec.ind1101, %broadcast.splat1104
  %389 = add <4 x i32> %388, <i32 2, i32 2, i32 2, i32 2>
  %390 = urem <4 x i32> %389, <i32 60, i32 60, i32 60, i32 60>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = shl i64 %index1095, 3
  %394 = add i64 %393, %386
  %395 = getelementptr i8, i8* %call2, i64 %394
  %396 = bitcast i8* %395 to <4 x double>*
  store <4 x double> %392, <4 x double>* %396, align 8, !alias.scope !94, !noalias !96
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1102 = add <4 x i32> %vec.ind1101, <i32 4, i32 4, i32 4, i32 4>
  %397 = icmp eq i64 %index.next1096, 32
  br i1 %397, label %polly.loop_exit735.2, label %vector.body1093, !llvm.loop !108

polly.loop_exit735.2:                             ; preds = %vector.body1093
  %polly.indvar_next731.2 = add nuw nsw i64 %polly.indvar730.2, 1
  %exitcond823.2.not = icmp eq i64 %polly.indvar_next731.2, 16
  br i1 %exitcond823.2.not, label %polly.loop_header727.1.2, label %polly.loop_header727.2

polly.loop_header727.1.2:                         ; preds = %polly.loop_exit735.2, %polly.loop_exit735.1.2
  %polly.indvar730.1.2 = phi i64 [ %polly.indvar_next731.1.2, %polly.loop_exit735.1.2 ], [ 0, %polly.loop_exit735.2 ]
  %398 = add nuw nsw i64 %polly.indvar730.1.2, 64
  %399 = mul nuw nsw i64 %398, 480
  %400 = trunc i64 %398 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %400, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %polly.loop_header727.1.2
  %index1109 = phi i64 [ 0, %polly.loop_header727.1.2 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1113 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.2 ], [ %vec.ind.next1114, %vector.body1107 ]
  %401 = add nuw nsw <4 x i64> %vec.ind1113, <i64 32, i64 32, i64 32, i64 32>
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat1116, %402
  %404 = add <4 x i32> %403, <i32 2, i32 2, i32 2, i32 2>
  %405 = urem <4 x i32> %404, <i32 60, i32 60, i32 60, i32 60>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add i64 %409, %399
  %411 = getelementptr i8, i8* %call2, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !94, !noalias !96
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1114 = add <4 x i64> %vec.ind1113, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next1110, 28
  br i1 %413, label %polly.loop_exit735.1.2, label %vector.body1107, !llvm.loop !109

polly.loop_exit735.1.2:                           ; preds = %vector.body1107
  %polly.indvar_next731.1.2 = add nuw nsw i64 %polly.indvar730.1.2, 1
  %exitcond823.1.2.not = icmp eq i64 %polly.indvar_next731.1.2, 16
  br i1 %exitcond823.1.2.not, label %polly.loop_header753, label %polly.loop_header727.1.2

polly.loop_header700.1:                           ; preds = %polly.loop_exit708, %polly.loop_exit708.1
  %polly.indvar703.1 = phi i64 [ %polly.indvar_next704.1, %polly.loop_exit708.1 ], [ 0, %polly.loop_exit708 ]
  %414 = mul nuw nsw i64 %polly.indvar703.1, 640
  %415 = trunc i64 %polly.indvar703.1 to i32
  %broadcast.splatinsert949 = insertelement <4 x i32> poison, i32 %415, i32 0
  %broadcast.splat950 = shufflevector <4 x i32> %broadcast.splatinsert949, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body941

vector.body941:                                   ; preds = %vector.body941, %polly.loop_header700.1
  %index943 = phi i64 [ 0, %polly.loop_header700.1 ], [ %index.next944, %vector.body941 ]
  %vec.ind947 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1 ], [ %vec.ind.next948, %vector.body941 ]
  %416 = add nuw nsw <4 x i64> %vec.ind947, <i64 32, i64 32, i64 32, i64 32>
  %417 = trunc <4 x i64> %416 to <4 x i32>
  %418 = mul <4 x i32> %broadcast.splat950, %417
  %419 = add <4 x i32> %418, <i32 3, i32 3, i32 3, i32 3>
  %420 = urem <4 x i32> %419, <i32 80, i32 80, i32 80, i32 80>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %423 = extractelement <4 x i64> %416, i32 0
  %424 = shl i64 %423, 3
  %425 = add nuw nsw i64 %424, %414
  %426 = getelementptr i8, i8* %call, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %422, <4 x double>* %427, align 8, !alias.scope !90, !noalias !92
  %index.next944 = add i64 %index943, 4
  %vec.ind.next948 = add <4 x i64> %vec.ind947, <i64 4, i64 4, i64 4, i64 4>
  %428 = icmp eq i64 %index.next944, 32
  br i1 %428, label %polly.loop_exit708.1, label %vector.body941, !llvm.loop !110

polly.loop_exit708.1:                             ; preds = %vector.body941
  %polly.indvar_next704.1 = add nuw nsw i64 %polly.indvar703.1, 1
  %exitcond832.1.not = icmp eq i64 %polly.indvar_next704.1, 32
  br i1 %exitcond832.1.not, label %polly.loop_header700.2, label %polly.loop_header700.1

polly.loop_header700.2:                           ; preds = %polly.loop_exit708.1, %polly.loop_exit708.2
  %polly.indvar703.2 = phi i64 [ %polly.indvar_next704.2, %polly.loop_exit708.2 ], [ 0, %polly.loop_exit708.1 ]
  %429 = mul nuw nsw i64 %polly.indvar703.2, 640
  %430 = trunc i64 %polly.indvar703.2 to i32
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %polly.loop_header700.2
  %index955 = phi i64 [ 0, %polly.loop_header700.2 ], [ %index.next956, %vector.body953 ]
  %vec.ind959 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2 ], [ %vec.ind.next960, %vector.body953 ]
  %431 = add nuw nsw <4 x i64> %vec.ind959, <i64 64, i64 64, i64 64, i64 64>
  %432 = trunc <4 x i64> %431 to <4 x i32>
  %433 = mul <4 x i32> %broadcast.splat962, %432
  %434 = add <4 x i32> %433, <i32 3, i32 3, i32 3, i32 3>
  %435 = urem <4 x i32> %434, <i32 80, i32 80, i32 80, i32 80>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = extractelement <4 x i64> %431, i32 0
  %439 = shl i64 %438, 3
  %440 = add nuw nsw i64 %439, %429
  %441 = getelementptr i8, i8* %call, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %437, <4 x double>* %442, align 8, !alias.scope !90, !noalias !92
  %index.next956 = add i64 %index955, 4
  %vec.ind.next960 = add <4 x i64> %vec.ind959, <i64 4, i64 4, i64 4, i64 4>
  %443 = icmp eq i64 %index.next956, 16
  br i1 %443, label %polly.loop_exit708.2, label %vector.body953, !llvm.loop !111

polly.loop_exit708.2:                             ; preds = %vector.body953
  %polly.indvar_next704.2 = add nuw nsw i64 %polly.indvar703.2, 1
  %exitcond832.2.not = icmp eq i64 %polly.indvar_next704.2, 32
  br i1 %exitcond832.2.not, label %polly.loop_header700.1868, label %polly.loop_header700.2

polly.loop_header700.1868:                        ; preds = %polly.loop_exit708.2, %polly.loop_exit708.1879
  %polly.indvar703.1867 = phi i64 [ %polly.indvar_next704.1877, %polly.loop_exit708.1879 ], [ 0, %polly.loop_exit708.2 ]
  %444 = add nuw nsw i64 %polly.indvar703.1867, 32
  %445 = mul nuw nsw i64 %444, 640
  %446 = trunc i64 %444 to i32
  %broadcast.splatinsert975 = insertelement <4 x i32> poison, i32 %446, i32 0
  %broadcast.splat976 = shufflevector <4 x i32> %broadcast.splatinsert975, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %polly.loop_header700.1868
  %index967 = phi i64 [ 0, %polly.loop_header700.1868 ], [ %index.next968, %vector.body965 ]
  %vec.ind973 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.1868 ], [ %vec.ind.next974, %vector.body965 ]
  %447 = mul <4 x i32> %vec.ind973, %broadcast.splat976
  %448 = add <4 x i32> %447, <i32 3, i32 3, i32 3, i32 3>
  %449 = urem <4 x i32> %448, <i32 80, i32 80, i32 80, i32 80>
  %450 = sitofp <4 x i32> %449 to <4 x double>
  %451 = fmul fast <4 x double> %450, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %452 = shl i64 %index967, 3
  %453 = add nuw nsw i64 %452, %445
  %454 = getelementptr i8, i8* %call, i64 %453
  %455 = bitcast i8* %454 to <4 x double>*
  store <4 x double> %451, <4 x double>* %455, align 8, !alias.scope !90, !noalias !92
  %index.next968 = add i64 %index967, 4
  %vec.ind.next974 = add <4 x i32> %vec.ind973, <i32 4, i32 4, i32 4, i32 4>
  %456 = icmp eq i64 %index.next968, 32
  br i1 %456, label %polly.loop_exit708.1879, label %vector.body965, !llvm.loop !112

polly.loop_exit708.1879:                          ; preds = %vector.body965
  %polly.indvar_next704.1877 = add nuw nsw i64 %polly.indvar703.1867, 1
  %exitcond832.1878.not = icmp eq i64 %polly.indvar_next704.1877, 32
  br i1 %exitcond832.1878.not, label %polly.loop_header700.1.1, label %polly.loop_header700.1868

polly.loop_header700.1.1:                         ; preds = %polly.loop_exit708.1879, %polly.loop_exit708.1.1
  %polly.indvar703.1.1 = phi i64 [ %polly.indvar_next704.1.1, %polly.loop_exit708.1.1 ], [ 0, %polly.loop_exit708.1879 ]
  %457 = add nuw nsw i64 %polly.indvar703.1.1, 32
  %458 = mul nuw nsw i64 %457, 640
  %459 = trunc i64 %457 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %459, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %polly.loop_header700.1.1
  %index981 = phi i64 [ 0, %polly.loop_header700.1.1 ], [ %index.next982, %vector.body979 ]
  %vec.ind985 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.1 ], [ %vec.ind.next986, %vector.body979 ]
  %460 = add nuw nsw <4 x i64> %vec.ind985, <i64 32, i64 32, i64 32, i64 32>
  %461 = trunc <4 x i64> %460 to <4 x i32>
  %462 = mul <4 x i32> %broadcast.splat988, %461
  %463 = add <4 x i32> %462, <i32 3, i32 3, i32 3, i32 3>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %467 = extractelement <4 x i64> %460, i32 0
  %468 = shl i64 %467, 3
  %469 = add nuw nsw i64 %468, %458
  %470 = getelementptr i8, i8* %call, i64 %469
  %471 = bitcast i8* %470 to <4 x double>*
  store <4 x double> %466, <4 x double>* %471, align 8, !alias.scope !90, !noalias !92
  %index.next982 = add i64 %index981, 4
  %vec.ind.next986 = add <4 x i64> %vec.ind985, <i64 4, i64 4, i64 4, i64 4>
  %472 = icmp eq i64 %index.next982, 32
  br i1 %472, label %polly.loop_exit708.1.1, label %vector.body979, !llvm.loop !113

polly.loop_exit708.1.1:                           ; preds = %vector.body979
  %polly.indvar_next704.1.1 = add nuw nsw i64 %polly.indvar703.1.1, 1
  %exitcond832.1.1.not = icmp eq i64 %polly.indvar_next704.1.1, 32
  br i1 %exitcond832.1.1.not, label %polly.loop_header700.2.1, label %polly.loop_header700.1.1

polly.loop_header700.2.1:                         ; preds = %polly.loop_exit708.1.1, %polly.loop_exit708.2.1
  %polly.indvar703.2.1 = phi i64 [ %polly.indvar_next704.2.1, %polly.loop_exit708.2.1 ], [ 0, %polly.loop_exit708.1.1 ]
  %473 = add nuw nsw i64 %polly.indvar703.2.1, 32
  %474 = mul nuw nsw i64 %473, 640
  %475 = trunc i64 %473 to i32
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %475, i32 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header700.2.1
  %index993 = phi i64 [ 0, %polly.loop_header700.2.1 ], [ %index.next994, %vector.body991 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.1 ], [ %vec.ind.next998, %vector.body991 ]
  %476 = add nuw nsw <4 x i64> %vec.ind997, <i64 64, i64 64, i64 64, i64 64>
  %477 = trunc <4 x i64> %476 to <4 x i32>
  %478 = mul <4 x i32> %broadcast.splat1000, %477
  %479 = add <4 x i32> %478, <i32 3, i32 3, i32 3, i32 3>
  %480 = urem <4 x i32> %479, <i32 80, i32 80, i32 80, i32 80>
  %481 = sitofp <4 x i32> %480 to <4 x double>
  %482 = fmul fast <4 x double> %481, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %483 = extractelement <4 x i64> %476, i32 0
  %484 = shl i64 %483, 3
  %485 = add nuw nsw i64 %484, %474
  %486 = getelementptr i8, i8* %call, i64 %485
  %487 = bitcast i8* %486 to <4 x double>*
  store <4 x double> %482, <4 x double>* %487, align 8, !alias.scope !90, !noalias !92
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %488 = icmp eq i64 %index.next994, 16
  br i1 %488, label %polly.loop_exit708.2.1, label %vector.body991, !llvm.loop !114

polly.loop_exit708.2.1:                           ; preds = %vector.body991
  %polly.indvar_next704.2.1 = add nuw nsw i64 %polly.indvar703.2.1, 1
  %exitcond832.2.1.not = icmp eq i64 %polly.indvar_next704.2.1, 32
  br i1 %exitcond832.2.1.not, label %polly.loop_header700.2882, label %polly.loop_header700.2.1

polly.loop_header700.2882:                        ; preds = %polly.loop_exit708.2.1, %polly.loop_exit708.2893
  %polly.indvar703.2881 = phi i64 [ %polly.indvar_next704.2891, %polly.loop_exit708.2893 ], [ 0, %polly.loop_exit708.2.1 ]
  %489 = add nuw nsw i64 %polly.indvar703.2881, 64
  %490 = mul nuw nsw i64 %489, 640
  %491 = trunc i64 %489 to i32
  %broadcast.splatinsert1013 = insertelement <4 x i32> poison, i32 %491, i32 0
  %broadcast.splat1014 = shufflevector <4 x i32> %broadcast.splatinsert1013, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %polly.loop_header700.2882
  %index1005 = phi i64 [ 0, %polly.loop_header700.2882 ], [ %index.next1006, %vector.body1003 ]
  %vec.ind1011 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.2882 ], [ %vec.ind.next1012, %vector.body1003 ]
  %492 = mul <4 x i32> %vec.ind1011, %broadcast.splat1014
  %493 = add <4 x i32> %492, <i32 3, i32 3, i32 3, i32 3>
  %494 = urem <4 x i32> %493, <i32 80, i32 80, i32 80, i32 80>
  %495 = sitofp <4 x i32> %494 to <4 x double>
  %496 = fmul fast <4 x double> %495, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %497 = shl i64 %index1005, 3
  %498 = add nuw nsw i64 %497, %490
  %499 = getelementptr i8, i8* %call, i64 %498
  %500 = bitcast i8* %499 to <4 x double>*
  store <4 x double> %496, <4 x double>* %500, align 8, !alias.scope !90, !noalias !92
  %index.next1006 = add i64 %index1005, 4
  %vec.ind.next1012 = add <4 x i32> %vec.ind1011, <i32 4, i32 4, i32 4, i32 4>
  %501 = icmp eq i64 %index.next1006, 32
  br i1 %501, label %polly.loop_exit708.2893, label %vector.body1003, !llvm.loop !115

polly.loop_exit708.2893:                          ; preds = %vector.body1003
  %polly.indvar_next704.2891 = add nuw nsw i64 %polly.indvar703.2881, 1
  %exitcond832.2892.not = icmp eq i64 %polly.indvar_next704.2891, 16
  br i1 %exitcond832.2892.not, label %polly.loop_header700.1.2, label %polly.loop_header700.2882

polly.loop_header700.1.2:                         ; preds = %polly.loop_exit708.2893, %polly.loop_exit708.1.2
  %polly.indvar703.1.2 = phi i64 [ %polly.indvar_next704.1.2, %polly.loop_exit708.1.2 ], [ 0, %polly.loop_exit708.2893 ]
  %502 = add nuw nsw i64 %polly.indvar703.1.2, 64
  %503 = mul nuw nsw i64 %502, 640
  %504 = trunc i64 %502 to i32
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %504, i32 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %polly.loop_header700.1.2
  %index1019 = phi i64 [ 0, %polly.loop_header700.1.2 ], [ %index.next1020, %vector.body1017 ]
  %vec.ind1023 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.2 ], [ %vec.ind.next1024, %vector.body1017 ]
  %505 = add nuw nsw <4 x i64> %vec.ind1023, <i64 32, i64 32, i64 32, i64 32>
  %506 = trunc <4 x i64> %505 to <4 x i32>
  %507 = mul <4 x i32> %broadcast.splat1026, %506
  %508 = add <4 x i32> %507, <i32 3, i32 3, i32 3, i32 3>
  %509 = urem <4 x i32> %508, <i32 80, i32 80, i32 80, i32 80>
  %510 = sitofp <4 x i32> %509 to <4 x double>
  %511 = fmul fast <4 x double> %510, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %512 = extractelement <4 x i64> %505, i32 0
  %513 = shl i64 %512, 3
  %514 = add nuw nsw i64 %513, %503
  %515 = getelementptr i8, i8* %call, i64 %514
  %516 = bitcast i8* %515 to <4 x double>*
  store <4 x double> %511, <4 x double>* %516, align 8, !alias.scope !90, !noalias !92
  %index.next1020 = add i64 %index1019, 4
  %vec.ind.next1024 = add <4 x i64> %vec.ind1023, <i64 4, i64 4, i64 4, i64 4>
  %517 = icmp eq i64 %index.next1020, 32
  br i1 %517, label %polly.loop_exit708.1.2, label %vector.body1017, !llvm.loop !116

polly.loop_exit708.1.2:                           ; preds = %vector.body1017
  %polly.indvar_next704.1.2 = add nuw nsw i64 %polly.indvar703.1.2, 1
  %exitcond832.1.2.not = icmp eq i64 %polly.indvar_next704.1.2, 16
  br i1 %exitcond832.1.2.not, label %polly.loop_header700.2.2, label %polly.loop_header700.1.2

polly.loop_header700.2.2:                         ; preds = %polly.loop_exit708.1.2, %polly.loop_exit708.2.2
  %polly.indvar703.2.2 = phi i64 [ %polly.indvar_next704.2.2, %polly.loop_exit708.2.2 ], [ 0, %polly.loop_exit708.1.2 ]
  %518 = add nuw nsw i64 %polly.indvar703.2.2, 64
  %519 = mul nuw nsw i64 %518, 640
  %520 = trunc i64 %518 to i32
  %broadcast.splatinsert1037 = insertelement <4 x i32> poison, i32 %520, i32 0
  %broadcast.splat1038 = shufflevector <4 x i32> %broadcast.splatinsert1037, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header700.2.2
  %index1031 = phi i64 [ 0, %polly.loop_header700.2.2 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1035 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.2 ], [ %vec.ind.next1036, %vector.body1029 ]
  %521 = add nuw nsw <4 x i64> %vec.ind1035, <i64 64, i64 64, i64 64, i64 64>
  %522 = trunc <4 x i64> %521 to <4 x i32>
  %523 = mul <4 x i32> %broadcast.splat1038, %522
  %524 = add <4 x i32> %523, <i32 3, i32 3, i32 3, i32 3>
  %525 = urem <4 x i32> %524, <i32 80, i32 80, i32 80, i32 80>
  %526 = sitofp <4 x i32> %525 to <4 x double>
  %527 = fmul fast <4 x double> %526, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %528 = extractelement <4 x i64> %521, i32 0
  %529 = shl i64 %528, 3
  %530 = add nuw nsw i64 %529, %519
  %531 = getelementptr i8, i8* %call, i64 %530
  %532 = bitcast i8* %531 to <4 x double>*
  store <4 x double> %527, <4 x double>* %532, align 8, !alias.scope !90, !noalias !92
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1036 = add <4 x i64> %vec.ind1035, <i64 4, i64 4, i64 4, i64 4>
  %533 = icmp eq i64 %index.next1032, 16
  br i1 %533, label %polly.loop_exit708.2.2, label %vector.body1029, !llvm.loop !117

polly.loop_exit708.2.2:                           ; preds = %vector.body1029
  %polly.indvar_next704.2.2 = add nuw nsw i64 %polly.indvar703.2.2, 1
  %exitcond832.2.2.not = icmp eq i64 %polly.indvar_next704.2.2, 16
  br i1 %exitcond832.2.2.not, label %polly.loop_header727, label %polly.loop_header700.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 32}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 100}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 64}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !22, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !22, !53}
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
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!62, !65}
!71 = !{!62, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !75}
!80 = !{!72, !76}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !84}
!89 = !{!81, !85}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = !{!93, !90}
!97 = distinct !{!97, !13}
!98 = !{!94, !90}
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
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
