; ModuleID = 'syr2k_recreations//mmp_syr2k_S_165.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_165.c"
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
  %scevgep911 = getelementptr i8, i8* %call2, i64 %12
  %scevgep910 = getelementptr i8, i8* %call2, i64 %11
  %scevgep909 = getelementptr i8, i8* %call1, i64 %12
  %scevgep908 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep908, %scevgep911
  %bound1 = icmp ult i8* %scevgep910, %scevgep909
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
  br i1 %exitcond18.not.i, label %vector.ph915, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph915:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert922 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat923 = shufflevector <4 x i64> %broadcast.splatinsert922, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body914

vector.body914:                                   ; preds = %vector.body914, %vector.ph915
  %index916 = phi i64 [ 0, %vector.ph915 ], [ %index.next917, %vector.body914 ]
  %vec.ind920 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph915 ], [ %vec.ind.next921, %vector.body914 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind920, %broadcast.splat923
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv7.i, i64 %index916
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next917 = add i64 %index916, 4
  %vec.ind.next921 = add <4 x i64> %vec.ind920, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next917, 80
  br i1 %40, label %for.inc41.i, label %vector.body914, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body914
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph915, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1268, label %vector.ph1197

vector.ph1197:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %vector.ph1197
  %index1198 = phi i64 [ 0, %vector.ph1197 ], [ %index.next1199, %vector.body1196 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %index1198
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1199 = add i64 %index1198, 4
  %46 = icmp eq i64 %index.next1199, %n.vec
  br i1 %46, label %middle.block1194, label %vector.body1196, !llvm.loop !18

middle.block1194:                                 ; preds = %vector.body1196
  %cmp.n1201 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1201, label %for.inc6.i, label %for.body3.i46.preheader1268

for.body3.i46.preheader1268:                      ; preds = %for.body3.i46.preheader, %middle.block1194
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1194 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1268, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1268 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1194, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit549.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start260, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1217 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1217, label %for.body3.i60.preheader1267, label %vector.ph1218

vector.ph1218:                                    ; preds = %for.body3.i60.preheader
  %n.vec1220 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %vector.ph1218
  %index1221 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1222, %vector.body1216 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %index1221
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1225 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1225, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1222 = add i64 %index1221, 4
  %57 = icmp eq i64 %index.next1222, %n.vec1220
  br i1 %57, label %middle.block1214, label %vector.body1216, !llvm.loop !60

middle.block1214:                                 ; preds = %vector.body1216
  %cmp.n1224 = icmp eq i64 %indvars.iv21.i52, %n.vec1220
  br i1 %cmp.n1224, label %for.inc6.i63, label %for.body3.i60.preheader1267

for.body3.i60.preheader1267:                      ; preds = %for.body3.i60.preheader, %middle.block1214
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1220, %middle.block1214 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1267, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1267 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1214, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit386.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1243 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1243, label %for.body3.i99.preheader1266, label %vector.ph1244

vector.ph1244:                                    ; preds = %for.body3.i99.preheader
  %n.vec1246 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1244
  %index1247 = phi i64 [ 0, %vector.ph1244 ], [ %index.next1248, %vector.body1242 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %index1247
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1251 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1251, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1248 = add i64 %index1247, 4
  %68 = icmp eq i64 %index.next1248, %n.vec1246
  br i1 %68, label %middle.block1240, label %vector.body1242, !llvm.loop !62

middle.block1240:                                 ; preds = %vector.body1242
  %cmp.n1250 = icmp eq i64 %indvars.iv21.i91, %n.vec1246
  br i1 %cmp.n1250, label %for.inc6.i102, label %for.body3.i99.preheader1266

for.body3.i99.preheader1266:                      ; preds = %for.body3.i99.preheader, %middle.block1240
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1246, %middle.block1240 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1266, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1266 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1240, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.2
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
  %malloccall = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1255 = phi i64 [ %indvar.next1256, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1255, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1257 = icmp ult i64 %88, 4
  br i1 %min.iters.check1257, label %polly.loop_header191.preheader, label %vector.ph1258

vector.ph1258:                                    ; preds = %polly.loop_header
  %n.vec1260 = and i64 %88, -4
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1258
  %index1261 = phi i64 [ 0, %vector.ph1258 ], [ %index.next1262, %vector.body1254 ]
  %90 = shl nuw nsw i64 %index1261, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1265 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1265, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1262 = add i64 %index1261, 4
  %95 = icmp eq i64 %index.next1262, %n.vec1260
  br i1 %95, label %middle.block1252, label %vector.body1254, !llvm.loop !74

middle.block1252:                                 ; preds = %vector.body1254
  %cmp.n1264 = icmp eq i64 %88, %n.vec1260
  br i1 %cmp.n1264, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1252
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1260, %middle.block1252 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1252
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1256 = add i64 %indvar1255, 1
  br i1 %exitcond803.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond802.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond802.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199.preheader
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %97 = mul nuw nsw i64 %polly.indvar208, 160
  %scevgep796 = getelementptr i8, i8* %malloccall, i64 %97
  %98 = mul nuw nsw i64 %polly.indvar208, 480
  %scevgep797 = getelementptr i8, i8* %call2, i64 %98
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep796, i8* noundef nonnull align 8 dereferenceable(160) %scevgep797, i64 160, i1 false)
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond.not, label %polly.loop_header221, label %polly.loop_header205

polly.loop_header221:                             ; preds = %polly.loop_header205, %polly.loop_exit229
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header205 ]
  %99 = shl i64 %polly.indvar224, 3
  %scevgep250 = getelementptr i8, i8* %call1, i64 %99
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next225, 20
  br i1 %exitcond800.not, label %polly.loop_header205.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit235 ], [ 1, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %100 = mul nuw nsw i64 %polly.indvar230, 480
  %101 = mul nuw nsw i64 %polly.indvar230, 640
  %scevgep254 = getelementptr i8, i8* %call, i64 %101
  %polly.access.mul.Packed_MemRef_call2242 = mul nuw nsw i64 %polly.indvar230, 20
  %polly.access.add.Packed_MemRef_call2243 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2242, %polly.indvar224
  %polly.access.Packed_MemRef_call2244 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2243
  %_p_scalar_245 = load double, double* %polly.access.Packed_MemRef_call2244, align 8
  %scevgep251 = getelementptr i8, i8* %scevgep250, i64 %100
  %scevgep251252 = bitcast i8* %scevgep251 to double*
  %_p_scalar_253 = load double, double* %scevgep251252, align 8, !alias.scope !71, !noalias !77
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next231, 80
  br i1 %exitcond799.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_header233 ]
  %102 = mul nuw nsw i64 %polly.indvar236, 480
  %103 = add nuw nsw i64 %102, %99
  %scevgep239 = getelementptr i8, i8* %call1, i64 %103
  %scevgep239240 = bitcast i8* %scevgep239 to double*
  %_p_scalar_241 = load double, double* %scevgep239240, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112 = fmul fast double %_p_scalar_245, %_p_scalar_241
  %polly.access.mul.Packed_MemRef_call2246 = mul nuw nsw i64 %polly.indvar236, 20
  %polly.access.add.Packed_MemRef_call2247 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2246, %polly.indvar224
  %polly.access.Packed_MemRef_call2248 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2247
  %_p_scalar_249 = load double, double* %polly.access.Packed_MemRef_call2248, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_253, %_p_scalar_249
  %104 = shl nuw nsw i64 %polly.indvar236, 3
  %scevgep255 = getelementptr i8, i8* %scevgep254, i64 %104
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_257
  store double %p_add42.i118, double* %scevgep255256, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next237, %indvars.iv
  br i1 %exitcond798.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start260:                                   ; preds = %kernel_syr2k.exit
  %malloccall262 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header346

polly.loop_header346:                             ; preds = %polly.loop_exit354, %polly.start260
  %indvar1229 = phi i64 [ %indvar.next1230, %polly.loop_exit354 ], [ 0, %polly.start260 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 1, %polly.start260 ]
  %105 = add i64 %indvar1229, 1
  %106 = mul nuw nsw i64 %polly.indvar349, 640
  %scevgep358 = getelementptr i8, i8* %call, i64 %106
  %min.iters.check1231 = icmp ult i64 %105, 4
  br i1 %min.iters.check1231, label %polly.loop_header352.preheader, label %vector.ph1232

vector.ph1232:                                    ; preds = %polly.loop_header346
  %n.vec1234 = and i64 %105, -4
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %vector.ph1232
  %index1235 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1236, %vector.body1228 ]
  %107 = shl nuw nsw i64 %index1235, 3
  %108 = getelementptr i8, i8* %scevgep358, i64 %107
  %109 = bitcast i8* %108 to <4 x double>*
  %wide.load1239 = load <4 x double>, <4 x double>* %109, align 8, !alias.scope !78, !noalias !80
  %110 = fmul fast <4 x double> %wide.load1239, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %111 = bitcast i8* %108 to <4 x double>*
  store <4 x double> %110, <4 x double>* %111, align 8, !alias.scope !78, !noalias !80
  %index.next1236 = add i64 %index1235, 4
  %112 = icmp eq i64 %index.next1236, %n.vec1234
  br i1 %112, label %middle.block1226, label %vector.body1228, !llvm.loop !84

middle.block1226:                                 ; preds = %vector.body1228
  %cmp.n1238 = icmp eq i64 %105, %n.vec1234
  br i1 %cmp.n1238, label %polly.loop_exit354, label %polly.loop_header352.preheader

polly.loop_header352.preheader:                   ; preds = %polly.loop_header346, %middle.block1226
  %polly.indvar355.ph = phi i64 [ 0, %polly.loop_header346 ], [ %n.vec1234, %middle.block1226 ]
  br label %polly.loop_header352

polly.loop_exit354:                               ; preds = %polly.loop_header352, %middle.block1226
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next350, 80
  %indvar.next1230 = add i64 %indvar1229, 1
  br i1 %exitcond815.not, label %polly.loop_header362.preheader, label %polly.loop_header346

polly.loop_header362.preheader:                   ; preds = %polly.loop_exit354
  %Packed_MemRef_call2263 = bitcast i8* %malloccall262 to double*
  br label %polly.loop_header368

polly.loop_header352:                             ; preds = %polly.loop_header352.preheader, %polly.loop_header352
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_header352 ], [ %polly.indvar355.ph, %polly.loop_header352.preheader ]
  %113 = shl nuw nsw i64 %polly.indvar355, 3
  %scevgep359 = getelementptr i8, i8* %scevgep358, i64 %113
  %scevgep359360 = bitcast i8* %scevgep359 to double*
  %_p_scalar_361 = load double, double* %scevgep359360, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_361, 1.200000e+00
  store double %p_mul.i57, double* %scevgep359360, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next356, %polly.indvar349
  br i1 %exitcond814.not, label %polly.loop_exit354, label %polly.loop_header352, !llvm.loop !85

polly.loop_header368:                             ; preds = %polly.loop_header368, %polly.loop_header362.preheader
  %polly.indvar371 = phi i64 [ 0, %polly.loop_header362.preheader ], [ %polly.indvar_next372, %polly.loop_header368 ]
  %114 = mul nuw nsw i64 %polly.indvar371, 160
  %scevgep805 = getelementptr i8, i8* %malloccall262, i64 %114
  %115 = mul nuw nsw i64 %polly.indvar371, 480
  %scevgep806 = getelementptr i8, i8* %call2, i64 %115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep805, i8* noundef nonnull align 8 dereferenceable(160) %scevgep806, i64 160, i1 false)
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond807.not = icmp eq i64 %polly.indvar_next372, 80
  br i1 %exitcond807.not, label %polly.loop_header384, label %polly.loop_header368

polly.loop_header384:                             ; preds = %polly.loop_header368, %polly.loop_exit392
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 0, %polly.loop_header368 ]
  %116 = shl i64 %polly.indvar387, 3
  %scevgep413 = getelementptr i8, i8* %call1, i64 %116
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next388, 20
  br i1 %exitcond812.not, label %polly.loop_header368.1, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_header384
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %polly.loop_exit398 ], [ 1, %polly.loop_header384 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_header384 ]
  %117 = mul nuw nsw i64 %polly.indvar393, 480
  %118 = mul nuw nsw i64 %polly.indvar393, 640
  %scevgep417 = getelementptr i8, i8* %call, i64 %118
  %polly.access.mul.Packed_MemRef_call2263405 = mul nuw nsw i64 %polly.indvar393, 20
  %polly.access.add.Packed_MemRef_call2263406 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263405, %polly.indvar387
  %polly.access.Packed_MemRef_call2263407 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263406
  %_p_scalar_408 = load double, double* %polly.access.Packed_MemRef_call2263407, align 8
  %scevgep414 = getelementptr i8, i8* %scevgep413, i64 %117
  %scevgep414415 = bitcast i8* %scevgep414 to double*
  %_p_scalar_416 = load double, double* %scevgep414415, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next394, 80
  br i1 %exitcond811.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_header396, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_header396 ]
  %119 = mul nuw nsw i64 %polly.indvar399, 480
  %120 = add nuw nsw i64 %119, %116
  %scevgep402 = getelementptr i8, i8* %call1, i64 %120
  %scevgep402403 = bitcast i8* %scevgep402 to double*
  %_p_scalar_404 = load double, double* %scevgep402403, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73 = fmul fast double %_p_scalar_408, %_p_scalar_404
  %polly.access.mul.Packed_MemRef_call2263409 = mul nuw nsw i64 %polly.indvar399, 20
  %polly.access.add.Packed_MemRef_call2263410 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263409, %polly.indvar387
  %polly.access.Packed_MemRef_call2263411 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263410
  %_p_scalar_412 = load double, double* %polly.access.Packed_MemRef_call2263411, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_416, %_p_scalar_412
  %121 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep418 = getelementptr i8, i8* %scevgep417, i64 %121
  %scevgep418419 = bitcast i8* %scevgep418 to double*
  %_p_scalar_420 = load double, double* %scevgep418419, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_420
  store double %p_add42.i79, double* %scevgep418419, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next400, %indvars.iv808
  br i1 %exitcond810.not, label %polly.loop_exit398, label %polly.loop_header396

polly.start423:                                   ; preds = %init_array.exit
  %malloccall425 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header509

polly.loop_header509:                             ; preds = %polly.loop_exit517, %polly.start423
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit517 ], [ 0, %polly.start423 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 1, %polly.start423 ]
  %122 = add i64 %indvar, 1
  %123 = mul nuw nsw i64 %polly.indvar512, 640
  %scevgep521 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1205 = icmp ult i64 %122, 4
  br i1 %min.iters.check1205, label %polly.loop_header515.preheader, label %vector.ph1206

vector.ph1206:                                    ; preds = %polly.loop_header509
  %n.vec1208 = and i64 %122, -4
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %vector.ph1206
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1210, %vector.body1204 ]
  %124 = shl nuw nsw i64 %index1209, 3
  %125 = getelementptr i8, i8* %scevgep521, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1213 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !87, !noalias !89
  %127 = fmul fast <4 x double> %wide.load1213, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !87, !noalias !89
  %index.next1210 = add i64 %index1209, 4
  %129 = icmp eq i64 %index.next1210, %n.vec1208
  br i1 %129, label %middle.block1202, label %vector.body1204, !llvm.loop !93

middle.block1202:                                 ; preds = %vector.body1204
  %cmp.n1212 = icmp eq i64 %122, %n.vec1208
  br i1 %cmp.n1212, label %polly.loop_exit517, label %polly.loop_header515.preheader

polly.loop_header515.preheader:                   ; preds = %polly.loop_header509, %middle.block1202
  %polly.indvar518.ph = phi i64 [ 0, %polly.loop_header509 ], [ %n.vec1208, %middle.block1202 ]
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_header515, %middle.block1202
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next513, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond827.not, label %polly.loop_header525.preheader, label %polly.loop_header509

polly.loop_header525.preheader:                   ; preds = %polly.loop_exit517
  %Packed_MemRef_call2426 = bitcast i8* %malloccall425 to double*
  br label %polly.loop_header531

polly.loop_header515:                             ; preds = %polly.loop_header515.preheader, %polly.loop_header515
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_header515 ], [ %polly.indvar518.ph, %polly.loop_header515.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar518, 3
  %scevgep522 = getelementptr i8, i8* %scevgep521, i64 %130
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !87, !noalias !89
  %p_mul.i = fmul fast double %_p_scalar_524, 1.200000e+00
  store double %p_mul.i, double* %scevgep522523, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next519, %polly.indvar512
  br i1 %exitcond826.not, label %polly.loop_exit517, label %polly.loop_header515, !llvm.loop !94

polly.loop_header531:                             ; preds = %polly.loop_header531, %polly.loop_header525.preheader
  %polly.indvar534 = phi i64 [ 0, %polly.loop_header525.preheader ], [ %polly.indvar_next535, %polly.loop_header531 ]
  %131 = mul nuw nsw i64 %polly.indvar534, 160
  %scevgep817 = getelementptr i8, i8* %malloccall425, i64 %131
  %132 = mul nuw nsw i64 %polly.indvar534, 480
  %scevgep818 = getelementptr i8, i8* %call2, i64 %132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep817, i8* noundef nonnull align 8 dereferenceable(160) %scevgep818, i64 160, i1 false)
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next535, 80
  br i1 %exitcond819.not, label %polly.loop_header547, label %polly.loop_header531

polly.loop_header547:                             ; preds = %polly.loop_header531, %polly.loop_exit555
  %polly.indvar550 = phi i64 [ %polly.indvar_next551, %polly.loop_exit555 ], [ 0, %polly.loop_header531 ]
  %133 = shl i64 %polly.indvar550, 3
  %scevgep576 = getelementptr i8, i8* %call1, i64 %133
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_exit561
  %polly.indvar_next551 = add nuw nsw i64 %polly.indvar550, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next551, 20
  br i1 %exitcond824.not, label %polly.loop_header531.1, label %polly.loop_header547

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.loop_header547
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit561 ], [ 1, %polly.loop_header547 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 0, %polly.loop_header547 ]
  %134 = mul nuw nsw i64 %polly.indvar556, 480
  %135 = mul nuw nsw i64 %polly.indvar556, 640
  %scevgep580 = getelementptr i8, i8* %call, i64 %135
  %polly.access.mul.Packed_MemRef_call2426568 = mul nuw nsw i64 %polly.indvar556, 20
  %polly.access.add.Packed_MemRef_call2426569 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426568, %polly.indvar550
  %polly.access.Packed_MemRef_call2426570 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426569
  %_p_scalar_571 = load double, double* %polly.access.Packed_MemRef_call2426570, align 8
  %scevgep577 = getelementptr i8, i8* %scevgep576, i64 %134
  %scevgep577578 = bitcast i8* %scevgep577 to double*
  %_p_scalar_579 = load double, double* %scevgep577578, align 8, !alias.scope !90, !noalias !95
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next557, 80
  br i1 %exitcond823.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header559:                             ; preds = %polly.loop_header559, %polly.loop_header553
  %polly.indvar562 = phi i64 [ 0, %polly.loop_header553 ], [ %polly.indvar_next563, %polly.loop_header559 ]
  %136 = mul nuw nsw i64 %polly.indvar562, 480
  %137 = add nuw nsw i64 %136, %133
  %scevgep565 = getelementptr i8, i8* %call1, i64 %137
  %scevgep565566 = bitcast i8* %scevgep565 to double*
  %_p_scalar_567 = load double, double* %scevgep565566, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i = fmul fast double %_p_scalar_571, %_p_scalar_567
  %polly.access.mul.Packed_MemRef_call2426572 = mul nuw nsw i64 %polly.indvar562, 20
  %polly.access.add.Packed_MemRef_call2426573 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426572, %polly.indvar550
  %polly.access.Packed_MemRef_call2426574 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426573
  %_p_scalar_575 = load double, double* %polly.access.Packed_MemRef_call2426574, align 8
  %p_mul37.i = fmul fast double %_p_scalar_579, %_p_scalar_575
  %138 = shl nuw nsw i64 %polly.indvar562, 3
  %scevgep581 = getelementptr i8, i8* %scevgep580, i64 %138
  %scevgep581582 = bitcast i8* %scevgep581 to double*
  %_p_scalar_583 = load double, double* %scevgep581582, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_583
  store double %p_add42.i, double* %scevgep581582, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next563, %indvars.iv820
  br i1 %exitcond822.not, label %polly.loop_exit561, label %polly.loop_header559

polly.loop_header722:                             ; preds = %entry, %polly.loop_exit730
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_exit730 ], [ 0, %entry ]
  %139 = mul nuw nsw i64 %polly.indvar725, 640
  %140 = trunc i64 %polly.indvar725 to i32
  %broadcast.splatinsert936 = insertelement <4 x i32> poison, i32 %140, i32 0
  %broadcast.splat937 = shufflevector <4 x i32> %broadcast.splatinsert936, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body926

vector.body926:                                   ; preds = %vector.body926, %polly.loop_header722
  %index928 = phi i64 [ 0, %polly.loop_header722 ], [ %index.next929, %vector.body926 ]
  %vec.ind934 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722 ], [ %vec.ind.next935, %vector.body926 ]
  %141 = mul <4 x i32> %vec.ind934, %broadcast.splat937
  %142 = add <4 x i32> %141, <i32 3, i32 3, i32 3, i32 3>
  %143 = urem <4 x i32> %142, <i32 80, i32 80, i32 80, i32 80>
  %144 = sitofp <4 x i32> %143 to <4 x double>
  %145 = fmul fast <4 x double> %144, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %146 = shl i64 %index928, 3
  %147 = add nuw nsw i64 %146, %139
  %148 = getelementptr i8, i8* %call, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %145, <4 x double>* %149, align 8, !alias.scope !96, !noalias !98
  %index.next929 = add i64 %index928, 4
  %vec.ind.next935 = add <4 x i32> %vec.ind934, <i32 4, i32 4, i32 4, i32 4>
  %150 = icmp eq i64 %index.next929, 32
  br i1 %150, label %polly.loop_exit730, label %vector.body926, !llvm.loop !101

polly.loop_exit730:                               ; preds = %vector.body926
  %polly.indvar_next726 = add nuw nsw i64 %polly.indvar725, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next726, 32
  br i1 %exitcond846.not, label %polly.loop_header722.1, label %polly.loop_header722

polly.loop_header749:                             ; preds = %polly.loop_exit730.2.2, %polly.loop_exit757
  %polly.indvar752 = phi i64 [ %polly.indvar_next753, %polly.loop_exit757 ], [ 0, %polly.loop_exit730.2.2 ]
  %151 = mul nuw nsw i64 %polly.indvar752, 480
  %152 = trunc i64 %polly.indvar752 to i32
  %broadcast.splatinsert1050 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat1051 = shufflevector <4 x i32> %broadcast.splatinsert1050, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %polly.loop_header749
  %index1042 = phi i64 [ 0, %polly.loop_header749 ], [ %index.next1043, %vector.body1040 ]
  %vec.ind1048 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749 ], [ %vec.ind.next1049, %vector.body1040 ]
  %153 = mul <4 x i32> %vec.ind1048, %broadcast.splat1051
  %154 = add <4 x i32> %153, <i32 2, i32 2, i32 2, i32 2>
  %155 = urem <4 x i32> %154, <i32 60, i32 60, i32 60, i32 60>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index1042, 3
  %159 = add i64 %158, %151
  %160 = getelementptr i8, i8* %call2, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !100, !noalias !102
  %index.next1043 = add i64 %index1042, 4
  %vec.ind.next1049 = add <4 x i32> %vec.ind1048, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next1043, 32
  br i1 %162, label %polly.loop_exit757, label %vector.body1040, !llvm.loop !103

polly.loop_exit757:                               ; preds = %vector.body1040
  %polly.indvar_next753 = add nuw nsw i64 %polly.indvar752, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next753, 32
  br i1 %exitcond837.not, label %polly.loop_header749.1, label %polly.loop_header749

polly.loop_header775:                             ; preds = %polly.loop_exit757.1.2, %polly.loop_exit783
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %polly.loop_exit757.1.2 ]
  %163 = mul nuw nsw i64 %polly.indvar778, 480
  %164 = trunc i64 %polly.indvar778 to i32
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %polly.loop_header775
  %index1120 = phi i64 [ 0, %polly.loop_header775 ], [ %index.next1121, %vector.body1118 ]
  %vec.ind1126 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775 ], [ %vec.ind.next1127, %vector.body1118 ]
  %165 = mul <4 x i32> %vec.ind1126, %broadcast.splat1129
  %166 = add <4 x i32> %165, <i32 1, i32 1, i32 1, i32 1>
  %167 = urem <4 x i32> %166, <i32 80, i32 80, i32 80, i32 80>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %170 = shl i64 %index1120, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call1, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !99, !noalias !104
  %index.next1121 = add i64 %index1120, 4
  %vec.ind.next1127 = add <4 x i32> %vec.ind1126, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1121, 32
  br i1 %174, label %polly.loop_exit783, label %vector.body1118, !llvm.loop !105

polly.loop_exit783:                               ; preds = %vector.body1118
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next779, 32
  br i1 %exitcond831.not, label %polly.loop_header775.1, label %polly.loop_header775

polly.loop_header205.1:                           ; preds = %polly.loop_exit229, %polly.loop_header205.1
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_header205.1 ], [ 0, %polly.loop_exit229 ]
  %175 = mul nuw nsw i64 %polly.indvar208.1, 160
  %scevgep796.1 = getelementptr i8, i8* %malloccall, i64 %175
  %176 = mul nuw nsw i64 %polly.indvar208.1, 480
  %177 = add nuw nsw i64 %176, 160
  %scevgep797.1 = getelementptr i8, i8* %call2, i64 %177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep796.1, i8* noundef nonnull align 8 dereferenceable(160) %scevgep797.1, i64 160, i1 false)
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next209.1, 80
  br i1 %exitcond.1.not, label %polly.loop_header221.1, label %polly.loop_header205.1

polly.loop_header221.1:                           ; preds = %polly.loop_header205.1, %polly.loop_exit229.1
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_header205.1 ]
  %178 = shl i64 %polly.indvar224.1, 3
  %179 = add i64 %178, 160
  %scevgep250.1 = getelementptr i8, i8* %call1, i64 %179
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit235.1 ], [ 1, %polly.loop_header221.1 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header221.1 ]
  %180 = mul nuw nsw i64 %polly.indvar230.1, 480
  %181 = mul nuw nsw i64 %polly.indvar230.1, 640
  %scevgep254.1 = getelementptr i8, i8* %call, i64 %181
  %polly.access.mul.Packed_MemRef_call2242.1 = mul nuw nsw i64 %polly.indvar230.1, 20
  %polly.access.add.Packed_MemRef_call2243.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2242.1, %polly.indvar224.1
  %polly.access.Packed_MemRef_call2244.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2243.1
  %_p_scalar_245.1 = load double, double* %polly.access.Packed_MemRef_call2244.1, align 8
  %scevgep251.1 = getelementptr i8, i8* %scevgep250.1, i64 %180
  %scevgep251252.1 = bitcast i8* %scevgep251.1 to double*
  %_p_scalar_253.1 = load double, double* %scevgep251252.1, align 8, !alias.scope !71, !noalias !77
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_header233.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_header233.1 ]
  %182 = mul nuw nsw i64 %polly.indvar236.1, 480
  %183 = add nuw nsw i64 %182, %179
  %scevgep239.1 = getelementptr i8, i8* %call1, i64 %183
  %scevgep239240.1 = bitcast i8* %scevgep239.1 to double*
  %_p_scalar_241.1 = load double, double* %scevgep239240.1, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.1 = fmul fast double %_p_scalar_245.1, %_p_scalar_241.1
  %polly.access.mul.Packed_MemRef_call2246.1 = mul nuw nsw i64 %polly.indvar236.1, 20
  %polly.access.add.Packed_MemRef_call2247.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2246.1, %polly.indvar224.1
  %polly.access.Packed_MemRef_call2248.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2247.1
  %_p_scalar_249.1 = load double, double* %polly.access.Packed_MemRef_call2248.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_253.1, %_p_scalar_249.1
  %184 = shl nuw nsw i64 %polly.indvar236.1, 3
  %scevgep255.1 = getelementptr i8, i8* %scevgep254.1, i64 %184
  %scevgep255256.1 = bitcast i8* %scevgep255.1 to double*
  %_p_scalar_257.1 = load double, double* %scevgep255256.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_257.1
  store double %p_add42.i118.1, double* %scevgep255256.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond798.1.not = icmp eq i64 %polly.indvar_next237.1, %indvars.iv.1
  br i1 %exitcond798.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_header233.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond799.1.not = icmp eq i64 %polly.indvar_next231.1, 80
  br i1 %exitcond799.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next225.1, 20
  br i1 %exitcond800.1.not, label %polly.loop_header205.2, label %polly.loop_header221.1

polly.loop_header205.2:                           ; preds = %polly.loop_exit229.1, %polly.loop_header205.2
  %polly.indvar208.2 = phi i64 [ %polly.indvar_next209.2, %polly.loop_header205.2 ], [ 0, %polly.loop_exit229.1 ]
  %185 = mul nuw nsw i64 %polly.indvar208.2, 160
  %scevgep796.2 = getelementptr i8, i8* %malloccall, i64 %185
  %186 = mul nuw nsw i64 %polly.indvar208.2, 480
  %187 = add nuw nsw i64 %186, 320
  %scevgep797.2 = getelementptr i8, i8* %call2, i64 %187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep796.2, i8* noundef nonnull align 8 dereferenceable(160) %scevgep797.2, i64 160, i1 false)
  %polly.indvar_next209.2 = add nuw nsw i64 %polly.indvar208.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next209.2, 80
  br i1 %exitcond.2.not, label %polly.loop_header221.2, label %polly.loop_header205.2

polly.loop_header221.2:                           ; preds = %polly.loop_header205.2, %polly.loop_exit229.2
  %polly.indvar224.2 = phi i64 [ %polly.indvar_next225.2, %polly.loop_exit229.2 ], [ 0, %polly.loop_header205.2 ]
  %188 = shl i64 %polly.indvar224.2, 3
  %189 = add i64 %188, 320
  %scevgep250.2 = getelementptr i8, i8* %call1, i64 %189
  br label %polly.loop_header227.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.2, %polly.loop_header221.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit235.2 ], [ 1, %polly.loop_header221.2 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_header221.2 ]
  %190 = mul nuw nsw i64 %polly.indvar230.2, 480
  %191 = mul nuw nsw i64 %polly.indvar230.2, 640
  %scevgep254.2 = getelementptr i8, i8* %call, i64 %191
  %polly.access.mul.Packed_MemRef_call2242.2 = mul nuw nsw i64 %polly.indvar230.2, 20
  %polly.access.add.Packed_MemRef_call2243.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2242.2, %polly.indvar224.2
  %polly.access.Packed_MemRef_call2244.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2243.2
  %_p_scalar_245.2 = load double, double* %polly.access.Packed_MemRef_call2244.2, align 8
  %scevgep251.2 = getelementptr i8, i8* %scevgep250.2, i64 %190
  %scevgep251252.2 = bitcast i8* %scevgep251.2 to double*
  %_p_scalar_253.2 = load double, double* %scevgep251252.2, align 8, !alias.scope !71, !noalias !77
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_header233.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_header233.2 ]
  %192 = mul nuw nsw i64 %polly.indvar236.2, 480
  %193 = add nuw nsw i64 %192, %189
  %scevgep239.2 = getelementptr i8, i8* %call1, i64 %193
  %scevgep239240.2 = bitcast i8* %scevgep239.2 to double*
  %_p_scalar_241.2 = load double, double* %scevgep239240.2, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.2 = fmul fast double %_p_scalar_245.2, %_p_scalar_241.2
  %polly.access.mul.Packed_MemRef_call2246.2 = mul nuw nsw i64 %polly.indvar236.2, 20
  %polly.access.add.Packed_MemRef_call2247.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2246.2, %polly.indvar224.2
  %polly.access.Packed_MemRef_call2248.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2247.2
  %_p_scalar_249.2 = load double, double* %polly.access.Packed_MemRef_call2248.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_253.2, %_p_scalar_249.2
  %194 = shl nuw nsw i64 %polly.indvar236.2, 3
  %scevgep255.2 = getelementptr i8, i8* %scevgep254.2, i64 %194
  %scevgep255256.2 = bitcast i8* %scevgep255.2 to double*
  %_p_scalar_257.2 = load double, double* %scevgep255256.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_257.2
  store double %p_add42.i118.2, double* %scevgep255256.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond798.2.not = icmp eq i64 %polly.indvar_next237.2, %indvars.iv.2
  br i1 %exitcond798.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_header233.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond799.2.not = icmp eq i64 %polly.indvar_next231.2, 80
  br i1 %exitcond799.2.not, label %polly.loop_exit229.2, label %polly.loop_header227.2

polly.loop_exit229.2:                             ; preds = %polly.loop_exit235.2
  %polly.indvar_next225.2 = add nuw nsw i64 %polly.indvar224.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next225.2, 20
  br i1 %exitcond800.2.not, label %polly.loop_exit223.2, label %polly.loop_header221.2

polly.loop_exit223.2:                             ; preds = %polly.loop_exit229.2
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header368.1:                           ; preds = %polly.loop_exit392, %polly.loop_header368.1
  %polly.indvar371.1 = phi i64 [ %polly.indvar_next372.1, %polly.loop_header368.1 ], [ 0, %polly.loop_exit392 ]
  %195 = mul nuw nsw i64 %polly.indvar371.1, 160
  %scevgep805.1 = getelementptr i8, i8* %malloccall262, i64 %195
  %196 = mul nuw nsw i64 %polly.indvar371.1, 480
  %197 = add nuw nsw i64 %196, 160
  %scevgep806.1 = getelementptr i8, i8* %call2, i64 %197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep805.1, i8* noundef nonnull align 8 dereferenceable(160) %scevgep806.1, i64 160, i1 false)
  %polly.indvar_next372.1 = add nuw nsw i64 %polly.indvar371.1, 1
  %exitcond807.1.not = icmp eq i64 %polly.indvar_next372.1, 80
  br i1 %exitcond807.1.not, label %polly.loop_header384.1, label %polly.loop_header368.1

polly.loop_header384.1:                           ; preds = %polly.loop_header368.1, %polly.loop_exit392.1
  %polly.indvar387.1 = phi i64 [ %polly.indvar_next388.1, %polly.loop_exit392.1 ], [ 0, %polly.loop_header368.1 ]
  %198 = shl i64 %polly.indvar387.1, 3
  %199 = add i64 %198, 160
  %scevgep413.1 = getelementptr i8, i8* %call1, i64 %199
  br label %polly.loop_header390.1

polly.loop_header390.1:                           ; preds = %polly.loop_exit398.1, %polly.loop_header384.1
  %indvars.iv808.1 = phi i64 [ %indvars.iv.next809.1, %polly.loop_exit398.1 ], [ 1, %polly.loop_header384.1 ]
  %polly.indvar393.1 = phi i64 [ %polly.indvar_next394.1, %polly.loop_exit398.1 ], [ 0, %polly.loop_header384.1 ]
  %200 = mul nuw nsw i64 %polly.indvar393.1, 480
  %201 = mul nuw nsw i64 %polly.indvar393.1, 640
  %scevgep417.1 = getelementptr i8, i8* %call, i64 %201
  %polly.access.mul.Packed_MemRef_call2263405.1 = mul nuw nsw i64 %polly.indvar393.1, 20
  %polly.access.add.Packed_MemRef_call2263406.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263405.1, %polly.indvar387.1
  %polly.access.Packed_MemRef_call2263407.1 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263406.1
  %_p_scalar_408.1 = load double, double* %polly.access.Packed_MemRef_call2263407.1, align 8
  %scevgep414.1 = getelementptr i8, i8* %scevgep413.1, i64 %200
  %scevgep414415.1 = bitcast i8* %scevgep414.1 to double*
  %_p_scalar_416.1 = load double, double* %scevgep414415.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header396.1

polly.loop_header396.1:                           ; preds = %polly.loop_header396.1, %polly.loop_header390.1
  %polly.indvar399.1 = phi i64 [ 0, %polly.loop_header390.1 ], [ %polly.indvar_next400.1, %polly.loop_header396.1 ]
  %202 = mul nuw nsw i64 %polly.indvar399.1, 480
  %203 = add nuw nsw i64 %202, %199
  %scevgep402.1 = getelementptr i8, i8* %call1, i64 %203
  %scevgep402403.1 = bitcast i8* %scevgep402.1 to double*
  %_p_scalar_404.1 = load double, double* %scevgep402403.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.1 = fmul fast double %_p_scalar_408.1, %_p_scalar_404.1
  %polly.access.mul.Packed_MemRef_call2263409.1 = mul nuw nsw i64 %polly.indvar399.1, 20
  %polly.access.add.Packed_MemRef_call2263410.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263409.1, %polly.indvar387.1
  %polly.access.Packed_MemRef_call2263411.1 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263410.1
  %_p_scalar_412.1 = load double, double* %polly.access.Packed_MemRef_call2263411.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_416.1, %_p_scalar_412.1
  %204 = shl nuw nsw i64 %polly.indvar399.1, 3
  %scevgep418.1 = getelementptr i8, i8* %scevgep417.1, i64 %204
  %scevgep418419.1 = bitcast i8* %scevgep418.1 to double*
  %_p_scalar_420.1 = load double, double* %scevgep418419.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_420.1
  store double %p_add42.i79.1, double* %scevgep418419.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond810.1.not = icmp eq i64 %polly.indvar_next400.1, %indvars.iv808.1
  br i1 %exitcond810.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_header396.1
  %polly.indvar_next394.1 = add nuw nsw i64 %polly.indvar393.1, 1
  %indvars.iv.next809.1 = add nuw nsw i64 %indvars.iv808.1, 1
  %exitcond811.1.not = icmp eq i64 %polly.indvar_next394.1, 80
  br i1 %exitcond811.1.not, label %polly.loop_exit392.1, label %polly.loop_header390.1

polly.loop_exit392.1:                             ; preds = %polly.loop_exit398.1
  %polly.indvar_next388.1 = add nuw nsw i64 %polly.indvar387.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar_next388.1, 20
  br i1 %exitcond812.1.not, label %polly.loop_header368.2, label %polly.loop_header384.1

polly.loop_header368.2:                           ; preds = %polly.loop_exit392.1, %polly.loop_header368.2
  %polly.indvar371.2 = phi i64 [ %polly.indvar_next372.2, %polly.loop_header368.2 ], [ 0, %polly.loop_exit392.1 ]
  %205 = mul nuw nsw i64 %polly.indvar371.2, 160
  %scevgep805.2 = getelementptr i8, i8* %malloccall262, i64 %205
  %206 = mul nuw nsw i64 %polly.indvar371.2, 480
  %207 = add nuw nsw i64 %206, 320
  %scevgep806.2 = getelementptr i8, i8* %call2, i64 %207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep805.2, i8* noundef nonnull align 8 dereferenceable(160) %scevgep806.2, i64 160, i1 false)
  %polly.indvar_next372.2 = add nuw nsw i64 %polly.indvar371.2, 1
  %exitcond807.2.not = icmp eq i64 %polly.indvar_next372.2, 80
  br i1 %exitcond807.2.not, label %polly.loop_header384.2, label %polly.loop_header368.2

polly.loop_header384.2:                           ; preds = %polly.loop_header368.2, %polly.loop_exit392.2
  %polly.indvar387.2 = phi i64 [ %polly.indvar_next388.2, %polly.loop_exit392.2 ], [ 0, %polly.loop_header368.2 ]
  %208 = shl i64 %polly.indvar387.2, 3
  %209 = add i64 %208, 320
  %scevgep413.2 = getelementptr i8, i8* %call1, i64 %209
  br label %polly.loop_header390.2

polly.loop_header390.2:                           ; preds = %polly.loop_exit398.2, %polly.loop_header384.2
  %indvars.iv808.2 = phi i64 [ %indvars.iv.next809.2, %polly.loop_exit398.2 ], [ 1, %polly.loop_header384.2 ]
  %polly.indvar393.2 = phi i64 [ %polly.indvar_next394.2, %polly.loop_exit398.2 ], [ 0, %polly.loop_header384.2 ]
  %210 = mul nuw nsw i64 %polly.indvar393.2, 480
  %211 = mul nuw nsw i64 %polly.indvar393.2, 640
  %scevgep417.2 = getelementptr i8, i8* %call, i64 %211
  %polly.access.mul.Packed_MemRef_call2263405.2 = mul nuw nsw i64 %polly.indvar393.2, 20
  %polly.access.add.Packed_MemRef_call2263406.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263405.2, %polly.indvar387.2
  %polly.access.Packed_MemRef_call2263407.2 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263406.2
  %_p_scalar_408.2 = load double, double* %polly.access.Packed_MemRef_call2263407.2, align 8
  %scevgep414.2 = getelementptr i8, i8* %scevgep413.2, i64 %210
  %scevgep414415.2 = bitcast i8* %scevgep414.2 to double*
  %_p_scalar_416.2 = load double, double* %scevgep414415.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header396.2

polly.loop_header396.2:                           ; preds = %polly.loop_header396.2, %polly.loop_header390.2
  %polly.indvar399.2 = phi i64 [ 0, %polly.loop_header390.2 ], [ %polly.indvar_next400.2, %polly.loop_header396.2 ]
  %212 = mul nuw nsw i64 %polly.indvar399.2, 480
  %213 = add nuw nsw i64 %212, %209
  %scevgep402.2 = getelementptr i8, i8* %call1, i64 %213
  %scevgep402403.2 = bitcast i8* %scevgep402.2 to double*
  %_p_scalar_404.2 = load double, double* %scevgep402403.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.2 = fmul fast double %_p_scalar_408.2, %_p_scalar_404.2
  %polly.access.mul.Packed_MemRef_call2263409.2 = mul nuw nsw i64 %polly.indvar399.2, 20
  %polly.access.add.Packed_MemRef_call2263410.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263409.2, %polly.indvar387.2
  %polly.access.Packed_MemRef_call2263411.2 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263410.2
  %_p_scalar_412.2 = load double, double* %polly.access.Packed_MemRef_call2263411.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_416.2, %_p_scalar_412.2
  %214 = shl nuw nsw i64 %polly.indvar399.2, 3
  %scevgep418.2 = getelementptr i8, i8* %scevgep417.2, i64 %214
  %scevgep418419.2 = bitcast i8* %scevgep418.2 to double*
  %_p_scalar_420.2 = load double, double* %scevgep418419.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_420.2
  store double %p_add42.i79.2, double* %scevgep418419.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %exitcond810.2.not = icmp eq i64 %polly.indvar_next400.2, %indvars.iv808.2
  br i1 %exitcond810.2.not, label %polly.loop_exit398.2, label %polly.loop_header396.2

polly.loop_exit398.2:                             ; preds = %polly.loop_header396.2
  %polly.indvar_next394.2 = add nuw nsw i64 %polly.indvar393.2, 1
  %indvars.iv.next809.2 = add nuw nsw i64 %indvars.iv808.2, 1
  %exitcond811.2.not = icmp eq i64 %polly.indvar_next394.2, 80
  br i1 %exitcond811.2.not, label %polly.loop_exit392.2, label %polly.loop_header390.2

polly.loop_exit392.2:                             ; preds = %polly.loop_exit398.2
  %polly.indvar_next388.2 = add nuw nsw i64 %polly.indvar387.2, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar_next388.2, 20
  br i1 %exitcond812.2.not, label %polly.loop_exit386.2, label %polly.loop_header384.2

polly.loop_exit386.2:                             ; preds = %polly.loop_exit392.2
  tail call void @free(i8* nonnull %malloccall262)
  br label %kernel_syr2k.exit90

polly.loop_header531.1:                           ; preds = %polly.loop_exit555, %polly.loop_header531.1
  %polly.indvar534.1 = phi i64 [ %polly.indvar_next535.1, %polly.loop_header531.1 ], [ 0, %polly.loop_exit555 ]
  %215 = mul nuw nsw i64 %polly.indvar534.1, 160
  %scevgep817.1 = getelementptr i8, i8* %malloccall425, i64 %215
  %216 = mul nuw nsw i64 %polly.indvar534.1, 480
  %217 = add nuw nsw i64 %216, 160
  %scevgep818.1 = getelementptr i8, i8* %call2, i64 %217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep817.1, i8* noundef nonnull align 8 dereferenceable(160) %scevgep818.1, i64 160, i1 false)
  %polly.indvar_next535.1 = add nuw nsw i64 %polly.indvar534.1, 1
  %exitcond819.1.not = icmp eq i64 %polly.indvar_next535.1, 80
  br i1 %exitcond819.1.not, label %polly.loop_header547.1, label %polly.loop_header531.1

polly.loop_header547.1:                           ; preds = %polly.loop_header531.1, %polly.loop_exit555.1
  %polly.indvar550.1 = phi i64 [ %polly.indvar_next551.1, %polly.loop_exit555.1 ], [ 0, %polly.loop_header531.1 ]
  %218 = shl i64 %polly.indvar550.1, 3
  %219 = add i64 %218, 160
  %scevgep576.1 = getelementptr i8, i8* %call1, i64 %219
  br label %polly.loop_header553.1

polly.loop_header553.1:                           ; preds = %polly.loop_exit561.1, %polly.loop_header547.1
  %indvars.iv820.1 = phi i64 [ %indvars.iv.next821.1, %polly.loop_exit561.1 ], [ 1, %polly.loop_header547.1 ]
  %polly.indvar556.1 = phi i64 [ %polly.indvar_next557.1, %polly.loop_exit561.1 ], [ 0, %polly.loop_header547.1 ]
  %220 = mul nuw nsw i64 %polly.indvar556.1, 480
  %221 = mul nuw nsw i64 %polly.indvar556.1, 640
  %scevgep580.1 = getelementptr i8, i8* %call, i64 %221
  %polly.access.mul.Packed_MemRef_call2426568.1 = mul nuw nsw i64 %polly.indvar556.1, 20
  %polly.access.add.Packed_MemRef_call2426569.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426568.1, %polly.indvar550.1
  %polly.access.Packed_MemRef_call2426570.1 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426569.1
  %_p_scalar_571.1 = load double, double* %polly.access.Packed_MemRef_call2426570.1, align 8
  %scevgep577.1 = getelementptr i8, i8* %scevgep576.1, i64 %220
  %scevgep577578.1 = bitcast i8* %scevgep577.1 to double*
  %_p_scalar_579.1 = load double, double* %scevgep577578.1, align 8, !alias.scope !90, !noalias !95
  br label %polly.loop_header559.1

polly.loop_header559.1:                           ; preds = %polly.loop_header559.1, %polly.loop_header553.1
  %polly.indvar562.1 = phi i64 [ 0, %polly.loop_header553.1 ], [ %polly.indvar_next563.1, %polly.loop_header559.1 ]
  %222 = mul nuw nsw i64 %polly.indvar562.1, 480
  %223 = add nuw nsw i64 %222, %219
  %scevgep565.1 = getelementptr i8, i8* %call1, i64 %223
  %scevgep565566.1 = bitcast i8* %scevgep565.1 to double*
  %_p_scalar_567.1 = load double, double* %scevgep565566.1, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.1 = fmul fast double %_p_scalar_571.1, %_p_scalar_567.1
  %polly.access.mul.Packed_MemRef_call2426572.1 = mul nuw nsw i64 %polly.indvar562.1, 20
  %polly.access.add.Packed_MemRef_call2426573.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426572.1, %polly.indvar550.1
  %polly.access.Packed_MemRef_call2426574.1 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426573.1
  %_p_scalar_575.1 = load double, double* %polly.access.Packed_MemRef_call2426574.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_579.1, %_p_scalar_575.1
  %224 = shl nuw nsw i64 %polly.indvar562.1, 3
  %scevgep581.1 = getelementptr i8, i8* %scevgep580.1, i64 %224
  %scevgep581582.1 = bitcast i8* %scevgep581.1 to double*
  %_p_scalar_583.1 = load double, double* %scevgep581582.1, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_583.1
  store double %p_add42.i.1, double* %scevgep581582.1, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.1 = add nuw nsw i64 %polly.indvar562.1, 1
  %exitcond822.1.not = icmp eq i64 %polly.indvar_next563.1, %indvars.iv820.1
  br i1 %exitcond822.1.not, label %polly.loop_exit561.1, label %polly.loop_header559.1

polly.loop_exit561.1:                             ; preds = %polly.loop_header559.1
  %polly.indvar_next557.1 = add nuw nsw i64 %polly.indvar556.1, 1
  %indvars.iv.next821.1 = add nuw nsw i64 %indvars.iv820.1, 1
  %exitcond823.1.not = icmp eq i64 %polly.indvar_next557.1, 80
  br i1 %exitcond823.1.not, label %polly.loop_exit555.1, label %polly.loop_header553.1

polly.loop_exit555.1:                             ; preds = %polly.loop_exit561.1
  %polly.indvar_next551.1 = add nuw nsw i64 %polly.indvar550.1, 1
  %exitcond824.1.not = icmp eq i64 %polly.indvar_next551.1, 20
  br i1 %exitcond824.1.not, label %polly.loop_header531.2, label %polly.loop_header547.1

polly.loop_header531.2:                           ; preds = %polly.loop_exit555.1, %polly.loop_header531.2
  %polly.indvar534.2 = phi i64 [ %polly.indvar_next535.2, %polly.loop_header531.2 ], [ 0, %polly.loop_exit555.1 ]
  %225 = mul nuw nsw i64 %polly.indvar534.2, 160
  %scevgep817.2 = getelementptr i8, i8* %malloccall425, i64 %225
  %226 = mul nuw nsw i64 %polly.indvar534.2, 480
  %227 = add nuw nsw i64 %226, 320
  %scevgep818.2 = getelementptr i8, i8* %call2, i64 %227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep817.2, i8* noundef nonnull align 8 dereferenceable(160) %scevgep818.2, i64 160, i1 false)
  %polly.indvar_next535.2 = add nuw nsw i64 %polly.indvar534.2, 1
  %exitcond819.2.not = icmp eq i64 %polly.indvar_next535.2, 80
  br i1 %exitcond819.2.not, label %polly.loop_header547.2, label %polly.loop_header531.2

polly.loop_header547.2:                           ; preds = %polly.loop_header531.2, %polly.loop_exit555.2
  %polly.indvar550.2 = phi i64 [ %polly.indvar_next551.2, %polly.loop_exit555.2 ], [ 0, %polly.loop_header531.2 ]
  %228 = shl i64 %polly.indvar550.2, 3
  %229 = add i64 %228, 320
  %scevgep576.2 = getelementptr i8, i8* %call1, i64 %229
  br label %polly.loop_header553.2

polly.loop_header553.2:                           ; preds = %polly.loop_exit561.2, %polly.loop_header547.2
  %indvars.iv820.2 = phi i64 [ %indvars.iv.next821.2, %polly.loop_exit561.2 ], [ 1, %polly.loop_header547.2 ]
  %polly.indvar556.2 = phi i64 [ %polly.indvar_next557.2, %polly.loop_exit561.2 ], [ 0, %polly.loop_header547.2 ]
  %230 = mul nuw nsw i64 %polly.indvar556.2, 480
  %231 = mul nuw nsw i64 %polly.indvar556.2, 640
  %scevgep580.2 = getelementptr i8, i8* %call, i64 %231
  %polly.access.mul.Packed_MemRef_call2426568.2 = mul nuw nsw i64 %polly.indvar556.2, 20
  %polly.access.add.Packed_MemRef_call2426569.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426568.2, %polly.indvar550.2
  %polly.access.Packed_MemRef_call2426570.2 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426569.2
  %_p_scalar_571.2 = load double, double* %polly.access.Packed_MemRef_call2426570.2, align 8
  %scevgep577.2 = getelementptr i8, i8* %scevgep576.2, i64 %230
  %scevgep577578.2 = bitcast i8* %scevgep577.2 to double*
  %_p_scalar_579.2 = load double, double* %scevgep577578.2, align 8, !alias.scope !90, !noalias !95
  br label %polly.loop_header559.2

polly.loop_header559.2:                           ; preds = %polly.loop_header559.2, %polly.loop_header553.2
  %polly.indvar562.2 = phi i64 [ 0, %polly.loop_header553.2 ], [ %polly.indvar_next563.2, %polly.loop_header559.2 ]
  %232 = mul nuw nsw i64 %polly.indvar562.2, 480
  %233 = add nuw nsw i64 %232, %229
  %scevgep565.2 = getelementptr i8, i8* %call1, i64 %233
  %scevgep565566.2 = bitcast i8* %scevgep565.2 to double*
  %_p_scalar_567.2 = load double, double* %scevgep565566.2, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.2 = fmul fast double %_p_scalar_571.2, %_p_scalar_567.2
  %polly.access.mul.Packed_MemRef_call2426572.2 = mul nuw nsw i64 %polly.indvar562.2, 20
  %polly.access.add.Packed_MemRef_call2426573.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426572.2, %polly.indvar550.2
  %polly.access.Packed_MemRef_call2426574.2 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426573.2
  %_p_scalar_575.2 = load double, double* %polly.access.Packed_MemRef_call2426574.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_579.2, %_p_scalar_575.2
  %234 = shl nuw nsw i64 %polly.indvar562.2, 3
  %scevgep581.2 = getelementptr i8, i8* %scevgep580.2, i64 %234
  %scevgep581582.2 = bitcast i8* %scevgep581.2 to double*
  %_p_scalar_583.2 = load double, double* %scevgep581582.2, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_583.2
  store double %p_add42.i.2, double* %scevgep581582.2, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.2 = add nuw nsw i64 %polly.indvar562.2, 1
  %exitcond822.2.not = icmp eq i64 %polly.indvar_next563.2, %indvars.iv820.2
  br i1 %exitcond822.2.not, label %polly.loop_exit561.2, label %polly.loop_header559.2

polly.loop_exit561.2:                             ; preds = %polly.loop_header559.2
  %polly.indvar_next557.2 = add nuw nsw i64 %polly.indvar556.2, 1
  %indvars.iv.next821.2 = add nuw nsw i64 %indvars.iv820.2, 1
  %exitcond823.2.not = icmp eq i64 %polly.indvar_next557.2, 80
  br i1 %exitcond823.2.not, label %polly.loop_exit555.2, label %polly.loop_header553.2

polly.loop_exit555.2:                             ; preds = %polly.loop_exit561.2
  %polly.indvar_next551.2 = add nuw nsw i64 %polly.indvar550.2, 1
  %exitcond824.2.not = icmp eq i64 %polly.indvar_next551.2, 20
  br i1 %exitcond824.2.not, label %polly.loop_exit549.2, label %polly.loop_header547.2

polly.loop_exit549.2:                             ; preds = %polly.loop_exit555.2
  tail call void @free(i8* nonnull %malloccall425)
  br label %kernel_syr2k.exit

polly.loop_header775.1:                           ; preds = %polly.loop_exit783, %polly.loop_exit783.1
  %polly.indvar778.1 = phi i64 [ %polly.indvar_next779.1, %polly.loop_exit783.1 ], [ 0, %polly.loop_exit783 ]
  %235 = mul nuw nsw i64 %polly.indvar778.1, 480
  %236 = trunc i64 %polly.indvar778.1 to i32
  %broadcast.splatinsert1140 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1141 = shufflevector <4 x i32> %broadcast.splatinsert1140, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %polly.loop_header775.1
  %index1134 = phi i64 [ 0, %polly.loop_header775.1 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1138 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1 ], [ %vec.ind.next1139, %vector.body1132 ]
  %237 = add nuw nsw <4 x i64> %vec.ind1138, <i64 32, i64 32, i64 32, i64 32>
  %238 = trunc <4 x i64> %237 to <4 x i32>
  %239 = mul <4 x i32> %broadcast.splat1141, %238
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
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1139 = add <4 x i64> %vec.ind1138, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next1135, 28
  br i1 %249, label %polly.loop_exit783.1, label %vector.body1132, !llvm.loop !106

polly.loop_exit783.1:                             ; preds = %vector.body1132
  %polly.indvar_next779.1 = add nuw nsw i64 %polly.indvar778.1, 1
  %exitcond831.1.not = icmp eq i64 %polly.indvar_next779.1, 32
  br i1 %exitcond831.1.not, label %polly.loop_header775.1851, label %polly.loop_header775.1

polly.loop_header775.1851:                        ; preds = %polly.loop_exit783.1, %polly.loop_exit783.1862
  %polly.indvar778.1850 = phi i64 [ %polly.indvar_next779.1860, %polly.loop_exit783.1862 ], [ 0, %polly.loop_exit783.1 ]
  %250 = add nuw nsw i64 %polly.indvar778.1850, 32
  %251 = mul nuw nsw i64 %250, 480
  %252 = trunc i64 %250 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %polly.loop_header775.1851
  %index1146 = phi i64 [ 0, %polly.loop_header775.1851 ], [ %index.next1147, %vector.body1144 ]
  %vec.ind1152 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.1851 ], [ %vec.ind.next1153, %vector.body1144 ]
  %253 = mul <4 x i32> %vec.ind1152, %broadcast.splat1155
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = shl i64 %index1146, 3
  %259 = add i64 %258, %251
  %260 = getelementptr i8, i8* %call1, i64 %259
  %261 = bitcast i8* %260 to <4 x double>*
  store <4 x double> %257, <4 x double>* %261, align 8, !alias.scope !99, !noalias !104
  %index.next1147 = add i64 %index1146, 4
  %vec.ind.next1153 = add <4 x i32> %vec.ind1152, <i32 4, i32 4, i32 4, i32 4>
  %262 = icmp eq i64 %index.next1147, 32
  br i1 %262, label %polly.loop_exit783.1862, label %vector.body1144, !llvm.loop !107

polly.loop_exit783.1862:                          ; preds = %vector.body1144
  %polly.indvar_next779.1860 = add nuw nsw i64 %polly.indvar778.1850, 1
  %exitcond831.1861.not = icmp eq i64 %polly.indvar_next779.1860, 32
  br i1 %exitcond831.1861.not, label %polly.loop_header775.1.1, label %polly.loop_header775.1851

polly.loop_header775.1.1:                         ; preds = %polly.loop_exit783.1862, %polly.loop_exit783.1.1
  %polly.indvar778.1.1 = phi i64 [ %polly.indvar_next779.1.1, %polly.loop_exit783.1.1 ], [ 0, %polly.loop_exit783.1862 ]
  %263 = add nuw nsw i64 %polly.indvar778.1.1, 32
  %264 = mul nuw nsw i64 %263, 480
  %265 = trunc i64 %263 to i32
  %broadcast.splatinsert1166 = insertelement <4 x i32> poison, i32 %265, i32 0
  %broadcast.splat1167 = shufflevector <4 x i32> %broadcast.splatinsert1166, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header775.1.1
  %index1160 = phi i64 [ 0, %polly.loop_header775.1.1 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.1 ], [ %vec.ind.next1165, %vector.body1158 ]
  %266 = add nuw nsw <4 x i64> %vec.ind1164, <i64 32, i64 32, i64 32, i64 32>
  %267 = trunc <4 x i64> %266 to <4 x i32>
  %268 = mul <4 x i32> %broadcast.splat1167, %267
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
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %278 = icmp eq i64 %index.next1161, 28
  br i1 %278, label %polly.loop_exit783.1.1, label %vector.body1158, !llvm.loop !108

polly.loop_exit783.1.1:                           ; preds = %vector.body1158
  %polly.indvar_next779.1.1 = add nuw nsw i64 %polly.indvar778.1.1, 1
  %exitcond831.1.1.not = icmp eq i64 %polly.indvar_next779.1.1, 32
  br i1 %exitcond831.1.1.not, label %polly.loop_header775.2, label %polly.loop_header775.1.1

polly.loop_header775.2:                           ; preds = %polly.loop_exit783.1.1, %polly.loop_exit783.2
  %polly.indvar778.2 = phi i64 [ %polly.indvar_next779.2, %polly.loop_exit783.2 ], [ 0, %polly.loop_exit783.1.1 ]
  %279 = add nuw nsw i64 %polly.indvar778.2, 64
  %280 = mul nuw nsw i64 %279, 480
  %281 = trunc i64 %279 to i32
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %polly.loop_header775.2
  %index1172 = phi i64 [ 0, %polly.loop_header775.2 ], [ %index.next1173, %vector.body1170 ]
  %vec.ind1178 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.2 ], [ %vec.ind.next1179, %vector.body1170 ]
  %282 = mul <4 x i32> %vec.ind1178, %broadcast.splat1181
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = shl i64 %index1172, 3
  %288 = add i64 %287, %280
  %289 = getelementptr i8, i8* %call1, i64 %288
  %290 = bitcast i8* %289 to <4 x double>*
  store <4 x double> %286, <4 x double>* %290, align 8, !alias.scope !99, !noalias !104
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1179 = add <4 x i32> %vec.ind1178, <i32 4, i32 4, i32 4, i32 4>
  %291 = icmp eq i64 %index.next1173, 32
  br i1 %291, label %polly.loop_exit783.2, label %vector.body1170, !llvm.loop !109

polly.loop_exit783.2:                             ; preds = %vector.body1170
  %polly.indvar_next779.2 = add nuw nsw i64 %polly.indvar778.2, 1
  %exitcond831.2.not = icmp eq i64 %polly.indvar_next779.2, 16
  br i1 %exitcond831.2.not, label %polly.loop_header775.1.2, label %polly.loop_header775.2

polly.loop_header775.1.2:                         ; preds = %polly.loop_exit783.2, %polly.loop_exit783.1.2
  %polly.indvar778.1.2 = phi i64 [ %polly.indvar_next779.1.2, %polly.loop_exit783.1.2 ], [ 0, %polly.loop_exit783.2 ]
  %292 = add nuw nsw i64 %polly.indvar778.1.2, 64
  %293 = mul nuw nsw i64 %292, 480
  %294 = trunc i64 %292 to i32
  %broadcast.splatinsert1192 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1193 = shufflevector <4 x i32> %broadcast.splatinsert1192, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %polly.loop_header775.1.2
  %index1186 = phi i64 [ 0, %polly.loop_header775.1.2 ], [ %index.next1187, %vector.body1184 ]
  %vec.ind1190 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.2 ], [ %vec.ind.next1191, %vector.body1184 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1190, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1193, %296
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
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1191 = add <4 x i64> %vec.ind1190, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1187, 28
  br i1 %307, label %polly.loop_exit783.1.2, label %vector.body1184, !llvm.loop !110

polly.loop_exit783.1.2:                           ; preds = %vector.body1184
  %polly.indvar_next779.1.2 = add nuw nsw i64 %polly.indvar778.1.2, 1
  %exitcond831.1.2.not = icmp eq i64 %polly.indvar_next779.1.2, 16
  br i1 %exitcond831.1.2.not, label %init_array.exit, label %polly.loop_header775.1.2

polly.loop_header749.1:                           ; preds = %polly.loop_exit757, %polly.loop_exit757.1
  %polly.indvar752.1 = phi i64 [ %polly.indvar_next753.1, %polly.loop_exit757.1 ], [ 0, %polly.loop_exit757 ]
  %308 = mul nuw nsw i64 %polly.indvar752.1, 480
  %309 = trunc i64 %polly.indvar752.1 to i32
  %broadcast.splatinsert1062 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1063 = shufflevector <4 x i32> %broadcast.splatinsert1062, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1054

vector.body1054:                                  ; preds = %vector.body1054, %polly.loop_header749.1
  %index1056 = phi i64 [ 0, %polly.loop_header749.1 ], [ %index.next1057, %vector.body1054 ]
  %vec.ind1060 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1 ], [ %vec.ind.next1061, %vector.body1054 ]
  %310 = add nuw nsw <4 x i64> %vec.ind1060, <i64 32, i64 32, i64 32, i64 32>
  %311 = trunc <4 x i64> %310 to <4 x i32>
  %312 = mul <4 x i32> %broadcast.splat1063, %311
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
  %index.next1057 = add i64 %index1056, 4
  %vec.ind.next1061 = add <4 x i64> %vec.ind1060, <i64 4, i64 4, i64 4, i64 4>
  %322 = icmp eq i64 %index.next1057, 28
  br i1 %322, label %polly.loop_exit757.1, label %vector.body1054, !llvm.loop !111

polly.loop_exit757.1:                             ; preds = %vector.body1054
  %polly.indvar_next753.1 = add nuw nsw i64 %polly.indvar752.1, 1
  %exitcond837.1.not = icmp eq i64 %polly.indvar_next753.1, 32
  br i1 %exitcond837.1.not, label %polly.loop_header749.1865, label %polly.loop_header749.1

polly.loop_header749.1865:                        ; preds = %polly.loop_exit757.1, %polly.loop_exit757.1876
  %polly.indvar752.1864 = phi i64 [ %polly.indvar_next753.1874, %polly.loop_exit757.1876 ], [ 0, %polly.loop_exit757.1 ]
  %323 = add nuw nsw i64 %polly.indvar752.1864, 32
  %324 = mul nuw nsw i64 %323, 480
  %325 = trunc i64 %323 to i32
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %325, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %polly.loop_header749.1865
  %index1068 = phi i64 [ 0, %polly.loop_header749.1865 ], [ %index.next1069, %vector.body1066 ]
  %vec.ind1074 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.1865 ], [ %vec.ind.next1075, %vector.body1066 ]
  %326 = mul <4 x i32> %vec.ind1074, %broadcast.splat1077
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = shl i64 %index1068, 3
  %332 = add i64 %331, %324
  %333 = getelementptr i8, i8* %call2, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %330, <4 x double>* %334, align 8, !alias.scope !100, !noalias !102
  %index.next1069 = add i64 %index1068, 4
  %vec.ind.next1075 = add <4 x i32> %vec.ind1074, <i32 4, i32 4, i32 4, i32 4>
  %335 = icmp eq i64 %index.next1069, 32
  br i1 %335, label %polly.loop_exit757.1876, label %vector.body1066, !llvm.loop !112

polly.loop_exit757.1876:                          ; preds = %vector.body1066
  %polly.indvar_next753.1874 = add nuw nsw i64 %polly.indvar752.1864, 1
  %exitcond837.1875.not = icmp eq i64 %polly.indvar_next753.1874, 32
  br i1 %exitcond837.1875.not, label %polly.loop_header749.1.1, label %polly.loop_header749.1865

polly.loop_header749.1.1:                         ; preds = %polly.loop_exit757.1876, %polly.loop_exit757.1.1
  %polly.indvar752.1.1 = phi i64 [ %polly.indvar_next753.1.1, %polly.loop_exit757.1.1 ], [ 0, %polly.loop_exit757.1876 ]
  %336 = add nuw nsw i64 %polly.indvar752.1.1, 32
  %337 = mul nuw nsw i64 %336, 480
  %338 = trunc i64 %336 to i32
  %broadcast.splatinsert1088 = insertelement <4 x i32> poison, i32 %338, i32 0
  %broadcast.splat1089 = shufflevector <4 x i32> %broadcast.splatinsert1088, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %polly.loop_header749.1.1
  %index1082 = phi i64 [ 0, %polly.loop_header749.1.1 ], [ %index.next1083, %vector.body1080 ]
  %vec.ind1086 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.1 ], [ %vec.ind.next1087, %vector.body1080 ]
  %339 = add nuw nsw <4 x i64> %vec.ind1086, <i64 32, i64 32, i64 32, i64 32>
  %340 = trunc <4 x i64> %339 to <4 x i32>
  %341 = mul <4 x i32> %broadcast.splat1089, %340
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
  %index.next1083 = add i64 %index1082, 4
  %vec.ind.next1087 = add <4 x i64> %vec.ind1086, <i64 4, i64 4, i64 4, i64 4>
  %351 = icmp eq i64 %index.next1083, 28
  br i1 %351, label %polly.loop_exit757.1.1, label %vector.body1080, !llvm.loop !113

polly.loop_exit757.1.1:                           ; preds = %vector.body1080
  %polly.indvar_next753.1.1 = add nuw nsw i64 %polly.indvar752.1.1, 1
  %exitcond837.1.1.not = icmp eq i64 %polly.indvar_next753.1.1, 32
  br i1 %exitcond837.1.1.not, label %polly.loop_header749.2, label %polly.loop_header749.1.1

polly.loop_header749.2:                           ; preds = %polly.loop_exit757.1.1, %polly.loop_exit757.2
  %polly.indvar752.2 = phi i64 [ %polly.indvar_next753.2, %polly.loop_exit757.2 ], [ 0, %polly.loop_exit757.1.1 ]
  %352 = add nuw nsw i64 %polly.indvar752.2, 64
  %353 = mul nuw nsw i64 %352, 480
  %354 = trunc i64 %352 to i32
  %broadcast.splatinsert1102 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1103 = shufflevector <4 x i32> %broadcast.splatinsert1102, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1092

vector.body1092:                                  ; preds = %vector.body1092, %polly.loop_header749.2
  %index1094 = phi i64 [ 0, %polly.loop_header749.2 ], [ %index.next1095, %vector.body1092 ]
  %vec.ind1100 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.2 ], [ %vec.ind.next1101, %vector.body1092 ]
  %355 = mul <4 x i32> %vec.ind1100, %broadcast.splat1103
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = shl i64 %index1094, 3
  %361 = add i64 %360, %353
  %362 = getelementptr i8, i8* %call2, i64 %361
  %363 = bitcast i8* %362 to <4 x double>*
  store <4 x double> %359, <4 x double>* %363, align 8, !alias.scope !100, !noalias !102
  %index.next1095 = add i64 %index1094, 4
  %vec.ind.next1101 = add <4 x i32> %vec.ind1100, <i32 4, i32 4, i32 4, i32 4>
  %364 = icmp eq i64 %index.next1095, 32
  br i1 %364, label %polly.loop_exit757.2, label %vector.body1092, !llvm.loop !114

polly.loop_exit757.2:                             ; preds = %vector.body1092
  %polly.indvar_next753.2 = add nuw nsw i64 %polly.indvar752.2, 1
  %exitcond837.2.not = icmp eq i64 %polly.indvar_next753.2, 16
  br i1 %exitcond837.2.not, label %polly.loop_header749.1.2, label %polly.loop_header749.2

polly.loop_header749.1.2:                         ; preds = %polly.loop_exit757.2, %polly.loop_exit757.1.2
  %polly.indvar752.1.2 = phi i64 [ %polly.indvar_next753.1.2, %polly.loop_exit757.1.2 ], [ 0, %polly.loop_exit757.2 ]
  %365 = add nuw nsw i64 %polly.indvar752.1.2, 64
  %366 = mul nuw nsw i64 %365, 480
  %367 = trunc i64 %365 to i32
  %broadcast.splatinsert1114 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1115 = shufflevector <4 x i32> %broadcast.splatinsert1114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %polly.loop_header749.1.2
  %index1108 = phi i64 [ 0, %polly.loop_header749.1.2 ], [ %index.next1109, %vector.body1106 ]
  %vec.ind1112 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.2 ], [ %vec.ind.next1113, %vector.body1106 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1112, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1115, %369
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
  %index.next1109 = add i64 %index1108, 4
  %vec.ind.next1113 = add <4 x i64> %vec.ind1112, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1109, 28
  br i1 %380, label %polly.loop_exit757.1.2, label %vector.body1106, !llvm.loop !115

polly.loop_exit757.1.2:                           ; preds = %vector.body1106
  %polly.indvar_next753.1.2 = add nuw nsw i64 %polly.indvar752.1.2, 1
  %exitcond837.1.2.not = icmp eq i64 %polly.indvar_next753.1.2, 16
  br i1 %exitcond837.1.2.not, label %polly.loop_header775, label %polly.loop_header749.1.2

polly.loop_header722.1:                           ; preds = %polly.loop_exit730, %polly.loop_exit730.1
  %polly.indvar725.1 = phi i64 [ %polly.indvar_next726.1, %polly.loop_exit730.1 ], [ 0, %polly.loop_exit730 ]
  %381 = mul nuw nsw i64 %polly.indvar725.1, 640
  %382 = trunc i64 %polly.indvar725.1 to i32
  %broadcast.splatinsert948 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat949 = shufflevector <4 x i32> %broadcast.splatinsert948, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body940

vector.body940:                                   ; preds = %vector.body940, %polly.loop_header722.1
  %index942 = phi i64 [ 0, %polly.loop_header722.1 ], [ %index.next943, %vector.body940 ]
  %vec.ind946 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1 ], [ %vec.ind.next947, %vector.body940 ]
  %383 = add nuw nsw <4 x i64> %vec.ind946, <i64 32, i64 32, i64 32, i64 32>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat949, %384
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
  %index.next943 = add i64 %index942, 4
  %vec.ind.next947 = add <4 x i64> %vec.ind946, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next943, 32
  br i1 %395, label %polly.loop_exit730.1, label %vector.body940, !llvm.loop !116

polly.loop_exit730.1:                             ; preds = %vector.body940
  %polly.indvar_next726.1 = add nuw nsw i64 %polly.indvar725.1, 1
  %exitcond846.1.not = icmp eq i64 %polly.indvar_next726.1, 32
  br i1 %exitcond846.1.not, label %polly.loop_header722.2, label %polly.loop_header722.1

polly.loop_header722.2:                           ; preds = %polly.loop_exit730.1, %polly.loop_exit730.2
  %polly.indvar725.2 = phi i64 [ %polly.indvar_next726.2, %polly.loop_exit730.2 ], [ 0, %polly.loop_exit730.1 ]
  %396 = mul nuw nsw i64 %polly.indvar725.2, 640
  %397 = trunc i64 %polly.indvar725.2 to i32
  %broadcast.splatinsert960 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat961 = shufflevector <4 x i32> %broadcast.splatinsert960, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body952

vector.body952:                                   ; preds = %vector.body952, %polly.loop_header722.2
  %index954 = phi i64 [ 0, %polly.loop_header722.2 ], [ %index.next955, %vector.body952 ]
  %vec.ind958 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2 ], [ %vec.ind.next959, %vector.body952 ]
  %398 = add nuw nsw <4 x i64> %vec.ind958, <i64 64, i64 64, i64 64, i64 64>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat961, %399
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
  %index.next955 = add i64 %index954, 4
  %vec.ind.next959 = add <4 x i64> %vec.ind958, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next955, 16
  br i1 %410, label %polly.loop_exit730.2, label %vector.body952, !llvm.loop !117

polly.loop_exit730.2:                             ; preds = %vector.body952
  %polly.indvar_next726.2 = add nuw nsw i64 %polly.indvar725.2, 1
  %exitcond846.2.not = icmp eq i64 %polly.indvar_next726.2, 32
  br i1 %exitcond846.2.not, label %polly.loop_header722.1879, label %polly.loop_header722.2

polly.loop_header722.1879:                        ; preds = %polly.loop_exit730.2, %polly.loop_exit730.1890
  %polly.indvar725.1878 = phi i64 [ %polly.indvar_next726.1888, %polly.loop_exit730.1890 ], [ 0, %polly.loop_exit730.2 ]
  %411 = add nuw nsw i64 %polly.indvar725.1878, 32
  %412 = mul nuw nsw i64 %411, 640
  %413 = trunc i64 %411 to i32
  %broadcast.splatinsert974 = insertelement <4 x i32> poison, i32 %413, i32 0
  %broadcast.splat975 = shufflevector <4 x i32> %broadcast.splatinsert974, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %polly.loop_header722.1879
  %index966 = phi i64 [ 0, %polly.loop_header722.1879 ], [ %index.next967, %vector.body964 ]
  %vec.ind972 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.1879 ], [ %vec.ind.next973, %vector.body964 ]
  %414 = mul <4 x i32> %vec.ind972, %broadcast.splat975
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = shl i64 %index966, 3
  %420 = add nuw nsw i64 %419, %412
  %421 = getelementptr i8, i8* %call, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %418, <4 x double>* %422, align 8, !alias.scope !96, !noalias !98
  %index.next967 = add i64 %index966, 4
  %vec.ind.next973 = add <4 x i32> %vec.ind972, <i32 4, i32 4, i32 4, i32 4>
  %423 = icmp eq i64 %index.next967, 32
  br i1 %423, label %polly.loop_exit730.1890, label %vector.body964, !llvm.loop !118

polly.loop_exit730.1890:                          ; preds = %vector.body964
  %polly.indvar_next726.1888 = add nuw nsw i64 %polly.indvar725.1878, 1
  %exitcond846.1889.not = icmp eq i64 %polly.indvar_next726.1888, 32
  br i1 %exitcond846.1889.not, label %polly.loop_header722.1.1, label %polly.loop_header722.1879

polly.loop_header722.1.1:                         ; preds = %polly.loop_exit730.1890, %polly.loop_exit730.1.1
  %polly.indvar725.1.1 = phi i64 [ %polly.indvar_next726.1.1, %polly.loop_exit730.1.1 ], [ 0, %polly.loop_exit730.1890 ]
  %424 = add nuw nsw i64 %polly.indvar725.1.1, 32
  %425 = mul nuw nsw i64 %424, 640
  %426 = trunc i64 %424 to i32
  %broadcast.splatinsert986 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat987 = shufflevector <4 x i32> %broadcast.splatinsert986, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body978

vector.body978:                                   ; preds = %vector.body978, %polly.loop_header722.1.1
  %index980 = phi i64 [ 0, %polly.loop_header722.1.1 ], [ %index.next981, %vector.body978 ]
  %vec.ind984 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.1 ], [ %vec.ind.next985, %vector.body978 ]
  %427 = add nuw nsw <4 x i64> %vec.ind984, <i64 32, i64 32, i64 32, i64 32>
  %428 = trunc <4 x i64> %427 to <4 x i32>
  %429 = mul <4 x i32> %broadcast.splat987, %428
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
  %index.next981 = add i64 %index980, 4
  %vec.ind.next985 = add <4 x i64> %vec.ind984, <i64 4, i64 4, i64 4, i64 4>
  %439 = icmp eq i64 %index.next981, 32
  br i1 %439, label %polly.loop_exit730.1.1, label %vector.body978, !llvm.loop !119

polly.loop_exit730.1.1:                           ; preds = %vector.body978
  %polly.indvar_next726.1.1 = add nuw nsw i64 %polly.indvar725.1.1, 1
  %exitcond846.1.1.not = icmp eq i64 %polly.indvar_next726.1.1, 32
  br i1 %exitcond846.1.1.not, label %polly.loop_header722.2.1, label %polly.loop_header722.1.1

polly.loop_header722.2.1:                         ; preds = %polly.loop_exit730.1.1, %polly.loop_exit730.2.1
  %polly.indvar725.2.1 = phi i64 [ %polly.indvar_next726.2.1, %polly.loop_exit730.2.1 ], [ 0, %polly.loop_exit730.1.1 ]
  %440 = add nuw nsw i64 %polly.indvar725.2.1, 32
  %441 = mul nuw nsw i64 %440, 640
  %442 = trunc i64 %440 to i32
  %broadcast.splatinsert998 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat999 = shufflevector <4 x i32> %broadcast.splatinsert998, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body990

vector.body990:                                   ; preds = %vector.body990, %polly.loop_header722.2.1
  %index992 = phi i64 [ 0, %polly.loop_header722.2.1 ], [ %index.next993, %vector.body990 ]
  %vec.ind996 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.1 ], [ %vec.ind.next997, %vector.body990 ]
  %443 = add nuw nsw <4 x i64> %vec.ind996, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat999, %444
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
  %index.next993 = add i64 %index992, 4
  %vec.ind.next997 = add <4 x i64> %vec.ind996, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next993, 16
  br i1 %455, label %polly.loop_exit730.2.1, label %vector.body990, !llvm.loop !120

polly.loop_exit730.2.1:                           ; preds = %vector.body990
  %polly.indvar_next726.2.1 = add nuw nsw i64 %polly.indvar725.2.1, 1
  %exitcond846.2.1.not = icmp eq i64 %polly.indvar_next726.2.1, 32
  br i1 %exitcond846.2.1.not, label %polly.loop_header722.2893, label %polly.loop_header722.2.1

polly.loop_header722.2893:                        ; preds = %polly.loop_exit730.2.1, %polly.loop_exit730.2904
  %polly.indvar725.2892 = phi i64 [ %polly.indvar_next726.2902, %polly.loop_exit730.2904 ], [ 0, %polly.loop_exit730.2.1 ]
  %456 = add nuw nsw i64 %polly.indvar725.2892, 64
  %457 = mul nuw nsw i64 %456, 640
  %458 = trunc i64 %456 to i32
  %broadcast.splatinsert1012 = insertelement <4 x i32> poison, i32 %458, i32 0
  %broadcast.splat1013 = shufflevector <4 x i32> %broadcast.splatinsert1012, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %polly.loop_header722.2893
  %index1004 = phi i64 [ 0, %polly.loop_header722.2893 ], [ %index.next1005, %vector.body1002 ]
  %vec.ind1010 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.2893 ], [ %vec.ind.next1011, %vector.body1002 ]
  %459 = mul <4 x i32> %vec.ind1010, %broadcast.splat1013
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = shl i64 %index1004, 3
  %465 = add nuw nsw i64 %464, %457
  %466 = getelementptr i8, i8* %call, i64 %465
  %467 = bitcast i8* %466 to <4 x double>*
  store <4 x double> %463, <4 x double>* %467, align 8, !alias.scope !96, !noalias !98
  %index.next1005 = add i64 %index1004, 4
  %vec.ind.next1011 = add <4 x i32> %vec.ind1010, <i32 4, i32 4, i32 4, i32 4>
  %468 = icmp eq i64 %index.next1005, 32
  br i1 %468, label %polly.loop_exit730.2904, label %vector.body1002, !llvm.loop !121

polly.loop_exit730.2904:                          ; preds = %vector.body1002
  %polly.indvar_next726.2902 = add nuw nsw i64 %polly.indvar725.2892, 1
  %exitcond846.2903.not = icmp eq i64 %polly.indvar_next726.2902, 16
  br i1 %exitcond846.2903.not, label %polly.loop_header722.1.2, label %polly.loop_header722.2893

polly.loop_header722.1.2:                         ; preds = %polly.loop_exit730.2904, %polly.loop_exit730.1.2
  %polly.indvar725.1.2 = phi i64 [ %polly.indvar_next726.1.2, %polly.loop_exit730.1.2 ], [ 0, %polly.loop_exit730.2904 ]
  %469 = add nuw nsw i64 %polly.indvar725.1.2, 64
  %470 = mul nuw nsw i64 %469, 640
  %471 = trunc i64 %469 to i32
  %broadcast.splatinsert1024 = insertelement <4 x i32> poison, i32 %471, i32 0
  %broadcast.splat1025 = shufflevector <4 x i32> %broadcast.splatinsert1024, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %polly.loop_header722.1.2
  %index1018 = phi i64 [ 0, %polly.loop_header722.1.2 ], [ %index.next1019, %vector.body1016 ]
  %vec.ind1022 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.2 ], [ %vec.ind.next1023, %vector.body1016 ]
  %472 = add nuw nsw <4 x i64> %vec.ind1022, <i64 32, i64 32, i64 32, i64 32>
  %473 = trunc <4 x i64> %472 to <4 x i32>
  %474 = mul <4 x i32> %broadcast.splat1025, %473
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
  %index.next1019 = add i64 %index1018, 4
  %vec.ind.next1023 = add <4 x i64> %vec.ind1022, <i64 4, i64 4, i64 4, i64 4>
  %484 = icmp eq i64 %index.next1019, 32
  br i1 %484, label %polly.loop_exit730.1.2, label %vector.body1016, !llvm.loop !122

polly.loop_exit730.1.2:                           ; preds = %vector.body1016
  %polly.indvar_next726.1.2 = add nuw nsw i64 %polly.indvar725.1.2, 1
  %exitcond846.1.2.not = icmp eq i64 %polly.indvar_next726.1.2, 16
  br i1 %exitcond846.1.2.not, label %polly.loop_header722.2.2, label %polly.loop_header722.1.2

polly.loop_header722.2.2:                         ; preds = %polly.loop_exit730.1.2, %polly.loop_exit730.2.2
  %polly.indvar725.2.2 = phi i64 [ %polly.indvar_next726.2.2, %polly.loop_exit730.2.2 ], [ 0, %polly.loop_exit730.1.2 ]
  %485 = add nuw nsw i64 %polly.indvar725.2.2, 64
  %486 = mul nuw nsw i64 %485, 640
  %487 = trunc i64 %485 to i32
  %broadcast.splatinsert1036 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1037 = shufflevector <4 x i32> %broadcast.splatinsert1036, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1028

vector.body1028:                                  ; preds = %vector.body1028, %polly.loop_header722.2.2
  %index1030 = phi i64 [ 0, %polly.loop_header722.2.2 ], [ %index.next1031, %vector.body1028 ]
  %vec.ind1034 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.2 ], [ %vec.ind.next1035, %vector.body1028 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1034, <i64 64, i64 64, i64 64, i64 64>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1037, %489
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
  %index.next1031 = add i64 %index1030, 4
  %vec.ind.next1035 = add <4 x i64> %vec.ind1034, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1031, 16
  br i1 %500, label %polly.loop_exit730.2.2, label %vector.body1028, !llvm.loop !123

polly.loop_exit730.2.2:                           ; preds = %vector.body1028
  %polly.indvar_next726.2.2 = add nuw nsw i64 %polly.indvar725.2.2, 1
  %exitcond846.2.2.not = icmp eq i64 %polly.indvar_next726.2.2, 16
  br i1 %exitcond846.2.2.not, label %polly.loop_header749, label %polly.loop_header722.2.2
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
