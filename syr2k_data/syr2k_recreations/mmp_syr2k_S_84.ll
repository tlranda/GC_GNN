; ModuleID = 'syr2k_recreations//mmp_syr2k_S_84.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_84.c"
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
  %malloccall = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit229.3
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

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

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit229.3
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit229.3 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nuw nsw i64 %polly.indvar202, 5
  br label %polly.loop_header205

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %98 = shl nuw nsw i64 %polly.indvar208, 5
  %scevgep796 = getelementptr i8, i8* %malloccall, i64 %98
  %99 = mul nuw nsw i64 %polly.indvar208, 480
  %100 = add nuw nsw i64 %97, %99
  %scevgep797 = getelementptr i8, i8* %call1, i64 %100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep796, i8* noundef nonnull align 8 dereferenceable(32) %scevgep797, i64 32, i1 false)
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond.not, label %polly.loop_header221.preheader, label %polly.loop_header205

polly.loop_header221.preheader:                   ; preds = %polly.loop_header205
  %101 = shl i64 %polly.indvar202, 5
  %102 = shl i64 %polly.indvar202, 5
  %scevgep243 = getelementptr i8, i8* %call2, i64 %102
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %103 = shl i64 %polly.indvar202, 5
  %104 = or i64 %103, 8
  %scevgep243.1 = getelementptr i8, i8* %call2, i64 %104
  br label %polly.loop_header227.1

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit235 ], [ 1, %polly.loop_header221.preheader ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221.preheader ]
  %105 = mul nuw nsw i64 %polly.indvar230, 480
  %106 = mul nuw nsw i64 %polly.indvar230, 640
  %scevgep254 = getelementptr i8, i8* %call, i64 %106
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %105
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !72, !noalias !77
  %polly.access.mul.Packed_MemRef_call1250 = shl nsw i64 %polly.indvar230, 2
  %polly.access.Packed_MemRef_call1252 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1250
  %_p_scalar_253 = load double, double* %polly.access.Packed_MemRef_call1252, align 8
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next231, 80
  br i1 %exitcond799.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_header233 ]
  %polly.access.mul.Packed_MemRef_call1239 = shl nsw i64 %polly.indvar236, 2
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1239
  %_p_scalar_242 = load double, double* %polly.access.Packed_MemRef_call1241, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %107 = mul nuw nsw i64 %polly.indvar236, 480
  %108 = add nuw nsw i64 %107, %102
  %scevgep247 = getelementptr i8, i8* %call2, i64 %108
  %scevgep247248 = bitcast i8* %scevgep247 to double*
  %_p_scalar_249 = load double, double* %scevgep247248, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_253, %_p_scalar_249
  %109 = shl nuw nsw i64 %polly.indvar236, 3
  %scevgep255 = getelementptr i8, i8* %scevgep254, i64 %109
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
  %malloccall262 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header346

polly.exiting261:                                 ; preds = %polly.loop_exit392.3
  tail call void @free(i8* nonnull %malloccall262)
  br label %kernel_syr2k.exit90

polly.loop_header346:                             ; preds = %polly.loop_exit354, %polly.start260
  %indvar1229 = phi i64 [ %indvar.next1230, %polly.loop_exit354 ], [ 0, %polly.start260 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 1, %polly.start260 ]
  %110 = add i64 %indvar1229, 1
  %111 = mul nuw nsw i64 %polly.indvar349, 640
  %scevgep358 = getelementptr i8, i8* %call, i64 %111
  %min.iters.check1231 = icmp ult i64 %110, 4
  br i1 %min.iters.check1231, label %polly.loop_header352.preheader, label %vector.ph1232

vector.ph1232:                                    ; preds = %polly.loop_header346
  %n.vec1234 = and i64 %110, -4
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %vector.ph1232
  %index1235 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1236, %vector.body1228 ]
  %112 = shl nuw nsw i64 %index1235, 3
  %113 = getelementptr i8, i8* %scevgep358, i64 %112
  %114 = bitcast i8* %113 to <4 x double>*
  %wide.load1239 = load <4 x double>, <4 x double>* %114, align 8, !alias.scope !78, !noalias !80
  %115 = fmul fast <4 x double> %wide.load1239, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %116 = bitcast i8* %113 to <4 x double>*
  store <4 x double> %115, <4 x double>* %116, align 8, !alias.scope !78, !noalias !80
  %index.next1236 = add i64 %index1235, 4
  %117 = icmp eq i64 %index.next1236, %n.vec1234
  br i1 %117, label %middle.block1226, label %vector.body1228, !llvm.loop !84

middle.block1226:                                 ; preds = %vector.body1228
  %cmp.n1238 = icmp eq i64 %110, %n.vec1234
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
  %Packed_MemRef_call1263 = bitcast i8* %malloccall262 to double*
  br label %polly.loop_header362

polly.loop_header352:                             ; preds = %polly.loop_header352.preheader, %polly.loop_header352
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_header352 ], [ %polly.indvar355.ph, %polly.loop_header352.preheader ]
  %118 = shl nuw nsw i64 %polly.indvar355, 3
  %scevgep359 = getelementptr i8, i8* %scevgep358, i64 %118
  %scevgep359360 = bitcast i8* %scevgep359 to double*
  %_p_scalar_361 = load double, double* %scevgep359360, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_361, 1.200000e+00
  store double %p_mul.i57, double* %scevgep359360, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next356, %polly.indvar349
  br i1 %exitcond814.not, label %polly.loop_exit354, label %polly.loop_header352, !llvm.loop !85

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_exit392.3
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_exit392.3 ], [ 0, %polly.loop_header362.preheader ]
  %119 = shl nuw nsw i64 %polly.indvar365, 5
  br label %polly.loop_header368

polly.loop_header368:                             ; preds = %polly.loop_header368, %polly.loop_header362
  %polly.indvar371 = phi i64 [ 0, %polly.loop_header362 ], [ %polly.indvar_next372, %polly.loop_header368 ]
  %120 = shl nuw nsw i64 %polly.indvar371, 5
  %scevgep805 = getelementptr i8, i8* %malloccall262, i64 %120
  %121 = mul nuw nsw i64 %polly.indvar371, 480
  %122 = add nuw nsw i64 %119, %121
  %scevgep806 = getelementptr i8, i8* %call1, i64 %122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep805, i8* noundef nonnull align 8 dereferenceable(32) %scevgep806, i64 32, i1 false)
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond807.not = icmp eq i64 %polly.indvar_next372, 80
  br i1 %exitcond807.not, label %polly.loop_header384.preheader, label %polly.loop_header368

polly.loop_header384.preheader:                   ; preds = %polly.loop_header368
  %123 = shl i64 %polly.indvar365, 5
  %124 = shl i64 %polly.indvar365, 5
  %scevgep406 = getelementptr i8, i8* %call2, i64 %124
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %125 = shl i64 %polly.indvar365, 5
  %126 = or i64 %125, 8
  %scevgep406.1 = getelementptr i8, i8* %call2, i64 %126
  br label %polly.loop_header390.1

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_header384.preheader
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %polly.loop_exit398 ], [ 1, %polly.loop_header384.preheader ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_header384.preheader ]
  %127 = mul nuw nsw i64 %polly.indvar393, 480
  %128 = mul nuw nsw i64 %polly.indvar393, 640
  %scevgep417 = getelementptr i8, i8* %call, i64 %128
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %127
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !82, !noalias !86
  %polly.access.mul.Packed_MemRef_call1263413 = shl nsw i64 %polly.indvar393, 2
  %polly.access.Packed_MemRef_call1263415 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.mul.Packed_MemRef_call1263413
  %_p_scalar_416 = load double, double* %polly.access.Packed_MemRef_call1263415, align 8
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next394, 80
  br i1 %exitcond811.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_header396, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_header396 ]
  %polly.access.mul.Packed_MemRef_call1263402 = shl nsw i64 %polly.indvar399, 2
  %polly.access.Packed_MemRef_call1263404 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.mul.Packed_MemRef_call1263402
  %_p_scalar_405 = load double, double* %polly.access.Packed_MemRef_call1263404, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_409, %_p_scalar_405
  %129 = mul nuw nsw i64 %polly.indvar399, 480
  %130 = add nuw nsw i64 %129, %124
  %scevgep410 = getelementptr i8, i8* %call2, i64 %130
  %scevgep410411 = bitcast i8* %scevgep410 to double*
  %_p_scalar_412 = load double, double* %scevgep410411, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75 = fmul fast double %_p_scalar_416, %_p_scalar_412
  %131 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep418 = getelementptr i8, i8* %scevgep417, i64 %131
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
  %malloccall425 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header509

polly.exiting424:                                 ; preds = %polly.loop_exit555.3
  tail call void @free(i8* nonnull %malloccall425)
  br label %kernel_syr2k.exit

polly.loop_header509:                             ; preds = %polly.loop_exit517, %polly.start423
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit517 ], [ 0, %polly.start423 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 1, %polly.start423 ]
  %132 = add i64 %indvar, 1
  %133 = mul nuw nsw i64 %polly.indvar512, 640
  %scevgep521 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check1205 = icmp ult i64 %132, 4
  br i1 %min.iters.check1205, label %polly.loop_header515.preheader, label %vector.ph1206

vector.ph1206:                                    ; preds = %polly.loop_header509
  %n.vec1208 = and i64 %132, -4
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %vector.ph1206
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1210, %vector.body1204 ]
  %134 = shl nuw nsw i64 %index1209, 3
  %135 = getelementptr i8, i8* %scevgep521, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1213 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !87, !noalias !89
  %137 = fmul fast <4 x double> %wide.load1213, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !87, !noalias !89
  %index.next1210 = add i64 %index1209, 4
  %139 = icmp eq i64 %index.next1210, %n.vec1208
  br i1 %139, label %middle.block1202, label %vector.body1204, !llvm.loop !93

middle.block1202:                                 ; preds = %vector.body1204
  %cmp.n1212 = icmp eq i64 %132, %n.vec1208
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
  %Packed_MemRef_call1426 = bitcast i8* %malloccall425 to double*
  br label %polly.loop_header525

polly.loop_header515:                             ; preds = %polly.loop_header515.preheader, %polly.loop_header515
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_header515 ], [ %polly.indvar518.ph, %polly.loop_header515.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar518, 3
  %scevgep522 = getelementptr i8, i8* %scevgep521, i64 %140
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !87, !noalias !89
  %p_mul.i = fmul fast double %_p_scalar_524, 1.200000e+00
  store double %p_mul.i, double* %scevgep522523, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next519, %polly.indvar512
  br i1 %exitcond826.not, label %polly.loop_exit517, label %polly.loop_header515, !llvm.loop !94

polly.loop_header525:                             ; preds = %polly.loop_header525.preheader, %polly.loop_exit555.3
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit555.3 ], [ 0, %polly.loop_header525.preheader ]
  %141 = shl nuw nsw i64 %polly.indvar528, 5
  br label %polly.loop_header531

polly.loop_header531:                             ; preds = %polly.loop_header531, %polly.loop_header525
  %polly.indvar534 = phi i64 [ 0, %polly.loop_header525 ], [ %polly.indvar_next535, %polly.loop_header531 ]
  %142 = shl nuw nsw i64 %polly.indvar534, 5
  %scevgep817 = getelementptr i8, i8* %malloccall425, i64 %142
  %143 = mul nuw nsw i64 %polly.indvar534, 480
  %144 = add nuw nsw i64 %141, %143
  %scevgep818 = getelementptr i8, i8* %call1, i64 %144
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep817, i8* noundef nonnull align 8 dereferenceable(32) %scevgep818, i64 32, i1 false)
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next535, 80
  br i1 %exitcond819.not, label %polly.loop_header547.preheader, label %polly.loop_header531

polly.loop_header547.preheader:                   ; preds = %polly.loop_header531
  %145 = shl i64 %polly.indvar528, 5
  %146 = shl i64 %polly.indvar528, 5
  %scevgep569 = getelementptr i8, i8* %call2, i64 %146
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_exit561
  %147 = shl i64 %polly.indvar528, 5
  %148 = or i64 %147, 8
  %scevgep569.1 = getelementptr i8, i8* %call2, i64 %148
  br label %polly.loop_header553.1

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.loop_header547.preheader
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit561 ], [ 1, %polly.loop_header547.preheader ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 0, %polly.loop_header547.preheader ]
  %149 = mul nuw nsw i64 %polly.indvar556, 480
  %150 = mul nuw nsw i64 %polly.indvar556, 640
  %scevgep580 = getelementptr i8, i8* %call, i64 %150
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %149
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !91, !noalias !95
  %polly.access.mul.Packed_MemRef_call1426576 = shl nsw i64 %polly.indvar556, 2
  %polly.access.Packed_MemRef_call1426578 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.mul.Packed_MemRef_call1426576
  %_p_scalar_579 = load double, double* %polly.access.Packed_MemRef_call1426578, align 8
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next557, 80
  br i1 %exitcond823.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header559:                             ; preds = %polly.loop_header559, %polly.loop_header553
  %polly.indvar562 = phi i64 [ 0, %polly.loop_header553 ], [ %polly.indvar_next563, %polly.loop_header559 ]
  %polly.access.mul.Packed_MemRef_call1426565 = shl nsw i64 %polly.indvar562, 2
  %polly.access.Packed_MemRef_call1426567 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.mul.Packed_MemRef_call1426565
  %_p_scalar_568 = load double, double* %polly.access.Packed_MemRef_call1426567, align 8
  %p_mul27.i = fmul fast double %_p_scalar_572, %_p_scalar_568
  %151 = mul nuw nsw i64 %polly.indvar562, 480
  %152 = add nuw nsw i64 %151, %146
  %scevgep573 = getelementptr i8, i8* %call2, i64 %152
  %scevgep573574 = bitcast i8* %scevgep573 to double*
  %_p_scalar_575 = load double, double* %scevgep573574, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i = fmul fast double %_p_scalar_579, %_p_scalar_575
  %153 = shl nuw nsw i64 %polly.indvar562, 3
  %scevgep581 = getelementptr i8, i8* %scevgep580, i64 %153
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
  %154 = mul nuw nsw i64 %polly.indvar725, 640
  %155 = trunc i64 %polly.indvar725 to i32
  %broadcast.splatinsert936 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat937 = shufflevector <4 x i32> %broadcast.splatinsert936, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body926

vector.body926:                                   ; preds = %vector.body926, %polly.loop_header722
  %index928 = phi i64 [ 0, %polly.loop_header722 ], [ %index.next929, %vector.body926 ]
  %vec.ind934 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722 ], [ %vec.ind.next935, %vector.body926 ]
  %156 = mul <4 x i32> %vec.ind934, %broadcast.splat937
  %157 = add <4 x i32> %156, <i32 3, i32 3, i32 3, i32 3>
  %158 = urem <4 x i32> %157, <i32 80, i32 80, i32 80, i32 80>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %161 = shl i64 %index928, 3
  %162 = add nuw nsw i64 %161, %154
  %163 = getelementptr i8, i8* %call, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !96, !noalias !98
  %index.next929 = add i64 %index928, 4
  %vec.ind.next935 = add <4 x i32> %vec.ind934, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next929, 32
  br i1 %165, label %polly.loop_exit730, label %vector.body926, !llvm.loop !101

polly.loop_exit730:                               ; preds = %vector.body926
  %polly.indvar_next726 = add nuw nsw i64 %polly.indvar725, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next726, 32
  br i1 %exitcond846.not, label %polly.loop_header722.1, label %polly.loop_header722

polly.loop_header749:                             ; preds = %polly.loop_exit730.2.2, %polly.loop_exit757
  %polly.indvar752 = phi i64 [ %polly.indvar_next753, %polly.loop_exit757 ], [ 0, %polly.loop_exit730.2.2 ]
  %166 = mul nuw nsw i64 %polly.indvar752, 480
  %167 = trunc i64 %polly.indvar752 to i32
  %broadcast.splatinsert1050 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1051 = shufflevector <4 x i32> %broadcast.splatinsert1050, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %polly.loop_header749
  %index1042 = phi i64 [ 0, %polly.loop_header749 ], [ %index.next1043, %vector.body1040 ]
  %vec.ind1048 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749 ], [ %vec.ind.next1049, %vector.body1040 ]
  %168 = mul <4 x i32> %vec.ind1048, %broadcast.splat1051
  %169 = add <4 x i32> %168, <i32 2, i32 2, i32 2, i32 2>
  %170 = urem <4 x i32> %169, <i32 60, i32 60, i32 60, i32 60>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %173 = shl i64 %index1042, 3
  %174 = add i64 %173, %166
  %175 = getelementptr i8, i8* %call2, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !100, !noalias !102
  %index.next1043 = add i64 %index1042, 4
  %vec.ind.next1049 = add <4 x i32> %vec.ind1048, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next1043, 32
  br i1 %177, label %polly.loop_exit757, label %vector.body1040, !llvm.loop !103

polly.loop_exit757:                               ; preds = %vector.body1040
  %polly.indvar_next753 = add nuw nsw i64 %polly.indvar752, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next753, 32
  br i1 %exitcond837.not, label %polly.loop_header749.1, label %polly.loop_header749

polly.loop_header775:                             ; preds = %polly.loop_exit757.1.2, %polly.loop_exit783
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %polly.loop_exit757.1.2 ]
  %178 = mul nuw nsw i64 %polly.indvar778, 480
  %179 = trunc i64 %polly.indvar778 to i32
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %polly.loop_header775
  %index1120 = phi i64 [ 0, %polly.loop_header775 ], [ %index.next1121, %vector.body1118 ]
  %vec.ind1126 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775 ], [ %vec.ind.next1127, %vector.body1118 ]
  %180 = mul <4 x i32> %vec.ind1126, %broadcast.splat1129
  %181 = add <4 x i32> %180, <i32 1, i32 1, i32 1, i32 1>
  %182 = urem <4 x i32> %181, <i32 80, i32 80, i32 80, i32 80>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %185 = shl i64 %index1120, 3
  %186 = add i64 %185, %178
  %187 = getelementptr i8, i8* %call1, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %184, <4 x double>* %188, align 8, !alias.scope !99, !noalias !104
  %index.next1121 = add i64 %index1120, 4
  %vec.ind.next1127 = add <4 x i32> %vec.ind1126, <i32 4, i32 4, i32 4, i32 4>
  %189 = icmp eq i64 %index.next1121, 32
  br i1 %189, label %polly.loop_exit783, label %vector.body1118, !llvm.loop !105

polly.loop_exit783:                               ; preds = %vector.body1118
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next779, 32
  br i1 %exitcond831.not, label %polly.loop_header775.1, label %polly.loop_header775

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit229
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit235.1 ], [ 1, %polly.loop_exit229 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit229 ]
  %190 = mul nuw nsw i64 %polly.indvar230.1, 480
  %191 = mul nuw nsw i64 %polly.indvar230.1, 640
  %scevgep254.1 = getelementptr i8, i8* %call, i64 %191
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %190
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.mul.Packed_MemRef_call1250.1 = shl nsw i64 %polly.indvar230.1, 2
  %polly.access.add.Packed_MemRef_call1251.1 = or i64 %polly.access.mul.Packed_MemRef_call1250.1, 1
  %polly.access.Packed_MemRef_call1252.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1251.1
  %_p_scalar_253.1 = load double, double* %polly.access.Packed_MemRef_call1252.1, align 8
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_header233.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_header233.1 ]
  %polly.access.mul.Packed_MemRef_call1239.1 = shl nsw i64 %polly.indvar236.1, 2
  %polly.access.add.Packed_MemRef_call1240.1 = or i64 %polly.access.mul.Packed_MemRef_call1239.1, 1
  %polly.access.Packed_MemRef_call1241.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.1
  %_p_scalar_242.1 = load double, double* %polly.access.Packed_MemRef_call1241.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_242.1
  %192 = mul nuw nsw i64 %polly.indvar236.1, 480
  %193 = add nuw nsw i64 %192, %104
  %scevgep247.1 = getelementptr i8, i8* %call2, i64 %193
  %scevgep247248.1 = bitcast i8* %scevgep247.1 to double*
  %_p_scalar_249.1 = load double, double* %scevgep247248.1, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114.1 = fmul fast double %_p_scalar_253.1, %_p_scalar_249.1
  %194 = shl nuw nsw i64 %polly.indvar236.1, 3
  %scevgep255.1 = getelementptr i8, i8* %scevgep254.1, i64 %194
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
  %195 = shl i64 %polly.indvar202, 5
  %196 = or i64 %195, 16
  %scevgep243.2 = getelementptr i8, i8* %call2, i64 %196
  br label %polly.loop_header227.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.2, %polly.loop_exit229.1
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit235.2 ], [ 1, %polly.loop_exit229.1 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_exit229.1 ]
  %197 = mul nuw nsw i64 %polly.indvar230.2, 480
  %198 = mul nuw nsw i64 %polly.indvar230.2, 640
  %scevgep254.2 = getelementptr i8, i8* %call, i64 %198
  %scevgep244.2 = getelementptr i8, i8* %scevgep243.2, i64 %197
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !72, !noalias !77
  %polly.access.mul.Packed_MemRef_call1250.2 = shl nsw i64 %polly.indvar230.2, 2
  %polly.access.add.Packed_MemRef_call1251.2 = or i64 %polly.access.mul.Packed_MemRef_call1250.2, 2
  %polly.access.Packed_MemRef_call1252.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1251.2
  %_p_scalar_253.2 = load double, double* %polly.access.Packed_MemRef_call1252.2, align 8
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_header233.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_header233.2 ]
  %polly.access.mul.Packed_MemRef_call1239.2 = shl nsw i64 %polly.indvar236.2, 2
  %polly.access.add.Packed_MemRef_call1240.2 = or i64 %polly.access.mul.Packed_MemRef_call1239.2, 2
  %polly.access.Packed_MemRef_call1241.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.2
  %_p_scalar_242.2 = load double, double* %polly.access.Packed_MemRef_call1241.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_242.2
  %199 = mul nuw nsw i64 %polly.indvar236.2, 480
  %200 = add nuw nsw i64 %199, %196
  %scevgep247.2 = getelementptr i8, i8* %call2, i64 %200
  %scevgep247248.2 = bitcast i8* %scevgep247.2 to double*
  %_p_scalar_249.2 = load double, double* %scevgep247248.2, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114.2 = fmul fast double %_p_scalar_253.2, %_p_scalar_249.2
  %201 = shl nuw nsw i64 %polly.indvar236.2, 3
  %scevgep255.2 = getelementptr i8, i8* %scevgep254.2, i64 %201
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
  %202 = or i64 %101, 24
  %scevgep243.3 = getelementptr i8, i8* %call2, i64 %202
  br label %polly.loop_header227.3

polly.loop_header227.3:                           ; preds = %polly.loop_exit235.3, %polly.loop_exit229.2
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit235.3 ], [ 1, %polly.loop_exit229.2 ]
  %polly.indvar230.3 = phi i64 [ %polly.indvar_next231.3, %polly.loop_exit235.3 ], [ 0, %polly.loop_exit229.2 ]
  %203 = mul nuw nsw i64 %polly.indvar230.3, 480
  %204 = mul nuw nsw i64 %polly.indvar230.3, 640
  %scevgep254.3 = getelementptr i8, i8* %call, i64 %204
  %scevgep244.3 = getelementptr i8, i8* %scevgep243.3, i64 %203
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !72, !noalias !77
  %polly.access.mul.Packed_MemRef_call1250.3 = shl nsw i64 %polly.indvar230.3, 2
  %polly.access.add.Packed_MemRef_call1251.3 = or i64 %polly.access.mul.Packed_MemRef_call1250.3, 3
  %polly.access.Packed_MemRef_call1252.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1251.3
  %_p_scalar_253.3 = load double, double* %polly.access.Packed_MemRef_call1252.3, align 8
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_header233.3, %polly.loop_header227.3
  %polly.indvar236.3 = phi i64 [ 0, %polly.loop_header227.3 ], [ %polly.indvar_next237.3, %polly.loop_header233.3 ]
  %polly.access.mul.Packed_MemRef_call1239.3 = shl nsw i64 %polly.indvar236.3, 2
  %polly.access.add.Packed_MemRef_call1240.3 = or i64 %polly.access.mul.Packed_MemRef_call1239.3, 3
  %polly.access.Packed_MemRef_call1241.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.3
  %_p_scalar_242.3 = load double, double* %polly.access.Packed_MemRef_call1241.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_246.3, %_p_scalar_242.3
  %205 = mul nuw nsw i64 %polly.indvar236.3, 480
  %206 = add nuw nsw i64 %205, %202
  %scevgep247.3 = getelementptr i8, i8* %call2, i64 %206
  %scevgep247248.3 = bitcast i8* %scevgep247.3 to double*
  %_p_scalar_249.3 = load double, double* %scevgep247248.3, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114.3 = fmul fast double %_p_scalar_253.3, %_p_scalar_249.3
  %207 = shl nuw nsw i64 %polly.indvar236.3, 3
  %scevgep255.3 = getelementptr i8, i8* %scevgep254.3, i64 %207
  %scevgep255256.3 = bitcast i8* %scevgep255.3 to double*
  %_p_scalar_257.3 = load double, double* %scevgep255256.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_257.3
  store double %p_add42.i118.3, double* %scevgep255256.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %exitcond798.3.not = icmp eq i64 %polly.indvar_next237.3, %indvars.iv.3
  br i1 %exitcond798.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_header233.3
  %polly.indvar_next231.3 = add nuw nsw i64 %polly.indvar230.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond799.3.not = icmp eq i64 %polly.indvar_next231.3, 80
  br i1 %exitcond799.3.not, label %polly.loop_exit229.3, label %polly.loop_header227.3

polly.loop_exit229.3:                             ; preds = %polly.loop_exit235.3
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond801.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header390.1:                           ; preds = %polly.loop_exit398.1, %polly.loop_exit392
  %indvars.iv808.1 = phi i64 [ %indvars.iv.next809.1, %polly.loop_exit398.1 ], [ 1, %polly.loop_exit392 ]
  %polly.indvar393.1 = phi i64 [ %polly.indvar_next394.1, %polly.loop_exit398.1 ], [ 0, %polly.loop_exit392 ]
  %208 = mul nuw nsw i64 %polly.indvar393.1, 480
  %209 = mul nuw nsw i64 %polly.indvar393.1, 640
  %scevgep417.1 = getelementptr i8, i8* %call, i64 %209
  %scevgep407.1 = getelementptr i8, i8* %scevgep406.1, i64 %208
  %scevgep407408.1 = bitcast i8* %scevgep407.1 to double*
  %_p_scalar_409.1 = load double, double* %scevgep407408.1, align 8, !alias.scope !82, !noalias !86
  %polly.access.mul.Packed_MemRef_call1263413.1 = shl nsw i64 %polly.indvar393.1, 2
  %polly.access.add.Packed_MemRef_call1263414.1 = or i64 %polly.access.mul.Packed_MemRef_call1263413.1, 1
  %polly.access.Packed_MemRef_call1263415.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263414.1
  %_p_scalar_416.1 = load double, double* %polly.access.Packed_MemRef_call1263415.1, align 8
  br label %polly.loop_header396.1

polly.loop_header396.1:                           ; preds = %polly.loop_header396.1, %polly.loop_header390.1
  %polly.indvar399.1 = phi i64 [ 0, %polly.loop_header390.1 ], [ %polly.indvar_next400.1, %polly.loop_header396.1 ]
  %polly.access.mul.Packed_MemRef_call1263402.1 = shl nsw i64 %polly.indvar399.1, 2
  %polly.access.add.Packed_MemRef_call1263403.1 = or i64 %polly.access.mul.Packed_MemRef_call1263402.1, 1
  %polly.access.Packed_MemRef_call1263404.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.1
  %_p_scalar_405.1 = load double, double* %polly.access.Packed_MemRef_call1263404.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_409.1, %_p_scalar_405.1
  %210 = mul nuw nsw i64 %polly.indvar399.1, 480
  %211 = add nuw nsw i64 %210, %126
  %scevgep410.1 = getelementptr i8, i8* %call2, i64 %211
  %scevgep410411.1 = bitcast i8* %scevgep410.1 to double*
  %_p_scalar_412.1 = load double, double* %scevgep410411.1, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75.1 = fmul fast double %_p_scalar_416.1, %_p_scalar_412.1
  %212 = shl nuw nsw i64 %polly.indvar399.1, 3
  %scevgep418.1 = getelementptr i8, i8* %scevgep417.1, i64 %212
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
  %213 = shl i64 %polly.indvar365, 5
  %214 = or i64 %213, 16
  %scevgep406.2 = getelementptr i8, i8* %call2, i64 %214
  br label %polly.loop_header390.2

polly.loop_header390.2:                           ; preds = %polly.loop_exit398.2, %polly.loop_exit392.1
  %indvars.iv808.2 = phi i64 [ %indvars.iv.next809.2, %polly.loop_exit398.2 ], [ 1, %polly.loop_exit392.1 ]
  %polly.indvar393.2 = phi i64 [ %polly.indvar_next394.2, %polly.loop_exit398.2 ], [ 0, %polly.loop_exit392.1 ]
  %215 = mul nuw nsw i64 %polly.indvar393.2, 480
  %216 = mul nuw nsw i64 %polly.indvar393.2, 640
  %scevgep417.2 = getelementptr i8, i8* %call, i64 %216
  %scevgep407.2 = getelementptr i8, i8* %scevgep406.2, i64 %215
  %scevgep407408.2 = bitcast i8* %scevgep407.2 to double*
  %_p_scalar_409.2 = load double, double* %scevgep407408.2, align 8, !alias.scope !82, !noalias !86
  %polly.access.mul.Packed_MemRef_call1263413.2 = shl nsw i64 %polly.indvar393.2, 2
  %polly.access.add.Packed_MemRef_call1263414.2 = or i64 %polly.access.mul.Packed_MemRef_call1263413.2, 2
  %polly.access.Packed_MemRef_call1263415.2 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263414.2
  %_p_scalar_416.2 = load double, double* %polly.access.Packed_MemRef_call1263415.2, align 8
  br label %polly.loop_header396.2

polly.loop_header396.2:                           ; preds = %polly.loop_header396.2, %polly.loop_header390.2
  %polly.indvar399.2 = phi i64 [ 0, %polly.loop_header390.2 ], [ %polly.indvar_next400.2, %polly.loop_header396.2 ]
  %polly.access.mul.Packed_MemRef_call1263402.2 = shl nsw i64 %polly.indvar399.2, 2
  %polly.access.add.Packed_MemRef_call1263403.2 = or i64 %polly.access.mul.Packed_MemRef_call1263402.2, 2
  %polly.access.Packed_MemRef_call1263404.2 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.2
  %_p_scalar_405.2 = load double, double* %polly.access.Packed_MemRef_call1263404.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_409.2, %_p_scalar_405.2
  %217 = mul nuw nsw i64 %polly.indvar399.2, 480
  %218 = add nuw nsw i64 %217, %214
  %scevgep410.2 = getelementptr i8, i8* %call2, i64 %218
  %scevgep410411.2 = bitcast i8* %scevgep410.2 to double*
  %_p_scalar_412.2 = load double, double* %scevgep410411.2, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75.2 = fmul fast double %_p_scalar_416.2, %_p_scalar_412.2
  %219 = shl nuw nsw i64 %polly.indvar399.2, 3
  %scevgep418.2 = getelementptr i8, i8* %scevgep417.2, i64 %219
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
  %220 = or i64 %123, 24
  %scevgep406.3 = getelementptr i8, i8* %call2, i64 %220
  br label %polly.loop_header390.3

polly.loop_header390.3:                           ; preds = %polly.loop_exit398.3, %polly.loop_exit392.2
  %indvars.iv808.3 = phi i64 [ %indvars.iv.next809.3, %polly.loop_exit398.3 ], [ 1, %polly.loop_exit392.2 ]
  %polly.indvar393.3 = phi i64 [ %polly.indvar_next394.3, %polly.loop_exit398.3 ], [ 0, %polly.loop_exit392.2 ]
  %221 = mul nuw nsw i64 %polly.indvar393.3, 480
  %222 = mul nuw nsw i64 %polly.indvar393.3, 640
  %scevgep417.3 = getelementptr i8, i8* %call, i64 %222
  %scevgep407.3 = getelementptr i8, i8* %scevgep406.3, i64 %221
  %scevgep407408.3 = bitcast i8* %scevgep407.3 to double*
  %_p_scalar_409.3 = load double, double* %scevgep407408.3, align 8, !alias.scope !82, !noalias !86
  %polly.access.mul.Packed_MemRef_call1263413.3 = shl nsw i64 %polly.indvar393.3, 2
  %polly.access.add.Packed_MemRef_call1263414.3 = or i64 %polly.access.mul.Packed_MemRef_call1263413.3, 3
  %polly.access.Packed_MemRef_call1263415.3 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263414.3
  %_p_scalar_416.3 = load double, double* %polly.access.Packed_MemRef_call1263415.3, align 8
  br label %polly.loop_header396.3

polly.loop_header396.3:                           ; preds = %polly.loop_header396.3, %polly.loop_header390.3
  %polly.indvar399.3 = phi i64 [ 0, %polly.loop_header390.3 ], [ %polly.indvar_next400.3, %polly.loop_header396.3 ]
  %polly.access.mul.Packed_MemRef_call1263402.3 = shl nsw i64 %polly.indvar399.3, 2
  %polly.access.add.Packed_MemRef_call1263403.3 = or i64 %polly.access.mul.Packed_MemRef_call1263402.3, 3
  %polly.access.Packed_MemRef_call1263404.3 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.3
  %_p_scalar_405.3 = load double, double* %polly.access.Packed_MemRef_call1263404.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_409.3, %_p_scalar_405.3
  %223 = mul nuw nsw i64 %polly.indvar399.3, 480
  %224 = add nuw nsw i64 %223, %220
  %scevgep410.3 = getelementptr i8, i8* %call2, i64 %224
  %scevgep410411.3 = bitcast i8* %scevgep410.3 to double*
  %_p_scalar_412.3 = load double, double* %scevgep410411.3, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75.3 = fmul fast double %_p_scalar_416.3, %_p_scalar_412.3
  %225 = shl nuw nsw i64 %polly.indvar399.3, 3
  %scevgep418.3 = getelementptr i8, i8* %scevgep417.3, i64 %225
  %scevgep418419.3 = bitcast i8* %scevgep418.3 to double*
  %_p_scalar_420.3 = load double, double* %scevgep418419.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_420.3
  store double %p_add42.i79.3, double* %scevgep418419.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.3 = add nuw nsw i64 %polly.indvar399.3, 1
  %exitcond810.3.not = icmp eq i64 %polly.indvar_next400.3, %indvars.iv808.3
  br i1 %exitcond810.3.not, label %polly.loop_exit398.3, label %polly.loop_header396.3

polly.loop_exit398.3:                             ; preds = %polly.loop_header396.3
  %polly.indvar_next394.3 = add nuw nsw i64 %polly.indvar393.3, 1
  %indvars.iv.next809.3 = add nuw nsw i64 %indvars.iv808.3, 1
  %exitcond811.3.not = icmp eq i64 %polly.indvar_next394.3, 80
  br i1 %exitcond811.3.not, label %polly.loop_exit392.3, label %polly.loop_header390.3

polly.loop_exit392.3:                             ; preds = %polly.loop_exit398.3
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next366, 15
  br i1 %exitcond813.not, label %polly.exiting261, label %polly.loop_header362

polly.loop_header553.1:                           ; preds = %polly.loop_exit561.1, %polly.loop_exit555
  %indvars.iv820.1 = phi i64 [ %indvars.iv.next821.1, %polly.loop_exit561.1 ], [ 1, %polly.loop_exit555 ]
  %polly.indvar556.1 = phi i64 [ %polly.indvar_next557.1, %polly.loop_exit561.1 ], [ 0, %polly.loop_exit555 ]
  %226 = mul nuw nsw i64 %polly.indvar556.1, 480
  %227 = mul nuw nsw i64 %polly.indvar556.1, 640
  %scevgep580.1 = getelementptr i8, i8* %call, i64 %227
  %scevgep570.1 = getelementptr i8, i8* %scevgep569.1, i64 %226
  %scevgep570571.1 = bitcast i8* %scevgep570.1 to double*
  %_p_scalar_572.1 = load double, double* %scevgep570571.1, align 8, !alias.scope !91, !noalias !95
  %polly.access.mul.Packed_MemRef_call1426576.1 = shl nsw i64 %polly.indvar556.1, 2
  %polly.access.add.Packed_MemRef_call1426577.1 = or i64 %polly.access.mul.Packed_MemRef_call1426576.1, 1
  %polly.access.Packed_MemRef_call1426578.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426577.1
  %_p_scalar_579.1 = load double, double* %polly.access.Packed_MemRef_call1426578.1, align 8
  br label %polly.loop_header559.1

polly.loop_header559.1:                           ; preds = %polly.loop_header559.1, %polly.loop_header553.1
  %polly.indvar562.1 = phi i64 [ 0, %polly.loop_header553.1 ], [ %polly.indvar_next563.1, %polly.loop_header559.1 ]
  %polly.access.mul.Packed_MemRef_call1426565.1 = shl nsw i64 %polly.indvar562.1, 2
  %polly.access.add.Packed_MemRef_call1426566.1 = or i64 %polly.access.mul.Packed_MemRef_call1426565.1, 1
  %polly.access.Packed_MemRef_call1426567.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.1
  %_p_scalar_568.1 = load double, double* %polly.access.Packed_MemRef_call1426567.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_572.1, %_p_scalar_568.1
  %228 = mul nuw nsw i64 %polly.indvar562.1, 480
  %229 = add nuw nsw i64 %228, %148
  %scevgep573.1 = getelementptr i8, i8* %call2, i64 %229
  %scevgep573574.1 = bitcast i8* %scevgep573.1 to double*
  %_p_scalar_575.1 = load double, double* %scevgep573574.1, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i.1 = fmul fast double %_p_scalar_579.1, %_p_scalar_575.1
  %230 = shl nuw nsw i64 %polly.indvar562.1, 3
  %scevgep581.1 = getelementptr i8, i8* %scevgep580.1, i64 %230
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
  %231 = shl i64 %polly.indvar528, 5
  %232 = or i64 %231, 16
  %scevgep569.2 = getelementptr i8, i8* %call2, i64 %232
  br label %polly.loop_header553.2

polly.loop_header553.2:                           ; preds = %polly.loop_exit561.2, %polly.loop_exit555.1
  %indvars.iv820.2 = phi i64 [ %indvars.iv.next821.2, %polly.loop_exit561.2 ], [ 1, %polly.loop_exit555.1 ]
  %polly.indvar556.2 = phi i64 [ %polly.indvar_next557.2, %polly.loop_exit561.2 ], [ 0, %polly.loop_exit555.1 ]
  %233 = mul nuw nsw i64 %polly.indvar556.2, 480
  %234 = mul nuw nsw i64 %polly.indvar556.2, 640
  %scevgep580.2 = getelementptr i8, i8* %call, i64 %234
  %scevgep570.2 = getelementptr i8, i8* %scevgep569.2, i64 %233
  %scevgep570571.2 = bitcast i8* %scevgep570.2 to double*
  %_p_scalar_572.2 = load double, double* %scevgep570571.2, align 8, !alias.scope !91, !noalias !95
  %polly.access.mul.Packed_MemRef_call1426576.2 = shl nsw i64 %polly.indvar556.2, 2
  %polly.access.add.Packed_MemRef_call1426577.2 = or i64 %polly.access.mul.Packed_MemRef_call1426576.2, 2
  %polly.access.Packed_MemRef_call1426578.2 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426577.2
  %_p_scalar_579.2 = load double, double* %polly.access.Packed_MemRef_call1426578.2, align 8
  br label %polly.loop_header559.2

polly.loop_header559.2:                           ; preds = %polly.loop_header559.2, %polly.loop_header553.2
  %polly.indvar562.2 = phi i64 [ 0, %polly.loop_header553.2 ], [ %polly.indvar_next563.2, %polly.loop_header559.2 ]
  %polly.access.mul.Packed_MemRef_call1426565.2 = shl nsw i64 %polly.indvar562.2, 2
  %polly.access.add.Packed_MemRef_call1426566.2 = or i64 %polly.access.mul.Packed_MemRef_call1426565.2, 2
  %polly.access.Packed_MemRef_call1426567.2 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.2
  %_p_scalar_568.2 = load double, double* %polly.access.Packed_MemRef_call1426567.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_572.2, %_p_scalar_568.2
  %235 = mul nuw nsw i64 %polly.indvar562.2, 480
  %236 = add nuw nsw i64 %235, %232
  %scevgep573.2 = getelementptr i8, i8* %call2, i64 %236
  %scevgep573574.2 = bitcast i8* %scevgep573.2 to double*
  %_p_scalar_575.2 = load double, double* %scevgep573574.2, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i.2 = fmul fast double %_p_scalar_579.2, %_p_scalar_575.2
  %237 = shl nuw nsw i64 %polly.indvar562.2, 3
  %scevgep581.2 = getelementptr i8, i8* %scevgep580.2, i64 %237
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
  %238 = or i64 %145, 24
  %scevgep569.3 = getelementptr i8, i8* %call2, i64 %238
  br label %polly.loop_header553.3

polly.loop_header553.3:                           ; preds = %polly.loop_exit561.3, %polly.loop_exit555.2
  %indvars.iv820.3 = phi i64 [ %indvars.iv.next821.3, %polly.loop_exit561.3 ], [ 1, %polly.loop_exit555.2 ]
  %polly.indvar556.3 = phi i64 [ %polly.indvar_next557.3, %polly.loop_exit561.3 ], [ 0, %polly.loop_exit555.2 ]
  %239 = mul nuw nsw i64 %polly.indvar556.3, 480
  %240 = mul nuw nsw i64 %polly.indvar556.3, 640
  %scevgep580.3 = getelementptr i8, i8* %call, i64 %240
  %scevgep570.3 = getelementptr i8, i8* %scevgep569.3, i64 %239
  %scevgep570571.3 = bitcast i8* %scevgep570.3 to double*
  %_p_scalar_572.3 = load double, double* %scevgep570571.3, align 8, !alias.scope !91, !noalias !95
  %polly.access.mul.Packed_MemRef_call1426576.3 = shl nsw i64 %polly.indvar556.3, 2
  %polly.access.add.Packed_MemRef_call1426577.3 = or i64 %polly.access.mul.Packed_MemRef_call1426576.3, 3
  %polly.access.Packed_MemRef_call1426578.3 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426577.3
  %_p_scalar_579.3 = load double, double* %polly.access.Packed_MemRef_call1426578.3, align 8
  br label %polly.loop_header559.3

polly.loop_header559.3:                           ; preds = %polly.loop_header559.3, %polly.loop_header553.3
  %polly.indvar562.3 = phi i64 [ 0, %polly.loop_header553.3 ], [ %polly.indvar_next563.3, %polly.loop_header559.3 ]
  %polly.access.mul.Packed_MemRef_call1426565.3 = shl nsw i64 %polly.indvar562.3, 2
  %polly.access.add.Packed_MemRef_call1426566.3 = or i64 %polly.access.mul.Packed_MemRef_call1426565.3, 3
  %polly.access.Packed_MemRef_call1426567.3 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.3
  %_p_scalar_568.3 = load double, double* %polly.access.Packed_MemRef_call1426567.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_572.3, %_p_scalar_568.3
  %241 = mul nuw nsw i64 %polly.indvar562.3, 480
  %242 = add nuw nsw i64 %241, %238
  %scevgep573.3 = getelementptr i8, i8* %call2, i64 %242
  %scevgep573574.3 = bitcast i8* %scevgep573.3 to double*
  %_p_scalar_575.3 = load double, double* %scevgep573574.3, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i.3 = fmul fast double %_p_scalar_579.3, %_p_scalar_575.3
  %243 = shl nuw nsw i64 %polly.indvar562.3, 3
  %scevgep581.3 = getelementptr i8, i8* %scevgep580.3, i64 %243
  %scevgep581582.3 = bitcast i8* %scevgep581.3 to double*
  %_p_scalar_583.3 = load double, double* %scevgep581582.3, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_583.3
  store double %p_add42.i.3, double* %scevgep581582.3, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.3 = add nuw nsw i64 %polly.indvar562.3, 1
  %exitcond822.3.not = icmp eq i64 %polly.indvar_next563.3, %indvars.iv820.3
  br i1 %exitcond822.3.not, label %polly.loop_exit561.3, label %polly.loop_header559.3

polly.loop_exit561.3:                             ; preds = %polly.loop_header559.3
  %polly.indvar_next557.3 = add nuw nsw i64 %polly.indvar556.3, 1
  %indvars.iv.next821.3 = add nuw nsw i64 %indvars.iv820.3, 1
  %exitcond823.3.not = icmp eq i64 %polly.indvar_next557.3, 80
  br i1 %exitcond823.3.not, label %polly.loop_exit555.3, label %polly.loop_header553.3

polly.loop_exit555.3:                             ; preds = %polly.loop_exit561.3
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next529, 15
  br i1 %exitcond825.not, label %polly.exiting424, label %polly.loop_header525

polly.loop_header775.1:                           ; preds = %polly.loop_exit783, %polly.loop_exit783.1
  %polly.indvar778.1 = phi i64 [ %polly.indvar_next779.1, %polly.loop_exit783.1 ], [ 0, %polly.loop_exit783 ]
  %244 = mul nuw nsw i64 %polly.indvar778.1, 480
  %245 = trunc i64 %polly.indvar778.1 to i32
  %broadcast.splatinsert1140 = insertelement <4 x i32> poison, i32 %245, i32 0
  %broadcast.splat1141 = shufflevector <4 x i32> %broadcast.splatinsert1140, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %polly.loop_header775.1
  %index1134 = phi i64 [ 0, %polly.loop_header775.1 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1138 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1 ], [ %vec.ind.next1139, %vector.body1132 ]
  %246 = add nuw nsw <4 x i64> %vec.ind1138, <i64 32, i64 32, i64 32, i64 32>
  %247 = trunc <4 x i64> %246 to <4 x i32>
  %248 = mul <4 x i32> %broadcast.splat1141, %247
  %249 = add <4 x i32> %248, <i32 1, i32 1, i32 1, i32 1>
  %250 = urem <4 x i32> %249, <i32 80, i32 80, i32 80, i32 80>
  %251 = sitofp <4 x i32> %250 to <4 x double>
  %252 = fmul fast <4 x double> %251, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %253 = extractelement <4 x i64> %246, i32 0
  %254 = shl i64 %253, 3
  %255 = add i64 %254, %244
  %256 = getelementptr i8, i8* %call1, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %252, <4 x double>* %257, align 8, !alias.scope !99, !noalias !104
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1139 = add <4 x i64> %vec.ind1138, <i64 4, i64 4, i64 4, i64 4>
  %258 = icmp eq i64 %index.next1135, 28
  br i1 %258, label %polly.loop_exit783.1, label %vector.body1132, !llvm.loop !106

polly.loop_exit783.1:                             ; preds = %vector.body1132
  %polly.indvar_next779.1 = add nuw nsw i64 %polly.indvar778.1, 1
  %exitcond831.1.not = icmp eq i64 %polly.indvar_next779.1, 32
  br i1 %exitcond831.1.not, label %polly.loop_header775.1851, label %polly.loop_header775.1

polly.loop_header775.1851:                        ; preds = %polly.loop_exit783.1, %polly.loop_exit783.1862
  %polly.indvar778.1850 = phi i64 [ %polly.indvar_next779.1860, %polly.loop_exit783.1862 ], [ 0, %polly.loop_exit783.1 ]
  %259 = add nuw nsw i64 %polly.indvar778.1850, 32
  %260 = mul nuw nsw i64 %259, 480
  %261 = trunc i64 %259 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %261, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %polly.loop_header775.1851
  %index1146 = phi i64 [ 0, %polly.loop_header775.1851 ], [ %index.next1147, %vector.body1144 ]
  %vec.ind1152 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.1851 ], [ %vec.ind.next1153, %vector.body1144 ]
  %262 = mul <4 x i32> %vec.ind1152, %broadcast.splat1155
  %263 = add <4 x i32> %262, <i32 1, i32 1, i32 1, i32 1>
  %264 = urem <4 x i32> %263, <i32 80, i32 80, i32 80, i32 80>
  %265 = sitofp <4 x i32> %264 to <4 x double>
  %266 = fmul fast <4 x double> %265, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %267 = shl i64 %index1146, 3
  %268 = add i64 %267, %260
  %269 = getelementptr i8, i8* %call1, i64 %268
  %270 = bitcast i8* %269 to <4 x double>*
  store <4 x double> %266, <4 x double>* %270, align 8, !alias.scope !99, !noalias !104
  %index.next1147 = add i64 %index1146, 4
  %vec.ind.next1153 = add <4 x i32> %vec.ind1152, <i32 4, i32 4, i32 4, i32 4>
  %271 = icmp eq i64 %index.next1147, 32
  br i1 %271, label %polly.loop_exit783.1862, label %vector.body1144, !llvm.loop !107

polly.loop_exit783.1862:                          ; preds = %vector.body1144
  %polly.indvar_next779.1860 = add nuw nsw i64 %polly.indvar778.1850, 1
  %exitcond831.1861.not = icmp eq i64 %polly.indvar_next779.1860, 32
  br i1 %exitcond831.1861.not, label %polly.loop_header775.1.1, label %polly.loop_header775.1851

polly.loop_header775.1.1:                         ; preds = %polly.loop_exit783.1862, %polly.loop_exit783.1.1
  %polly.indvar778.1.1 = phi i64 [ %polly.indvar_next779.1.1, %polly.loop_exit783.1.1 ], [ 0, %polly.loop_exit783.1862 ]
  %272 = add nuw nsw i64 %polly.indvar778.1.1, 32
  %273 = mul nuw nsw i64 %272, 480
  %274 = trunc i64 %272 to i32
  %broadcast.splatinsert1166 = insertelement <4 x i32> poison, i32 %274, i32 0
  %broadcast.splat1167 = shufflevector <4 x i32> %broadcast.splatinsert1166, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header775.1.1
  %index1160 = phi i64 [ 0, %polly.loop_header775.1.1 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.1 ], [ %vec.ind.next1165, %vector.body1158 ]
  %275 = add nuw nsw <4 x i64> %vec.ind1164, <i64 32, i64 32, i64 32, i64 32>
  %276 = trunc <4 x i64> %275 to <4 x i32>
  %277 = mul <4 x i32> %broadcast.splat1167, %276
  %278 = add <4 x i32> %277, <i32 1, i32 1, i32 1, i32 1>
  %279 = urem <4 x i32> %278, <i32 80, i32 80, i32 80, i32 80>
  %280 = sitofp <4 x i32> %279 to <4 x double>
  %281 = fmul fast <4 x double> %280, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %282 = extractelement <4 x i64> %275, i32 0
  %283 = shl i64 %282, 3
  %284 = add i64 %283, %273
  %285 = getelementptr i8, i8* %call1, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %281, <4 x double>* %286, align 8, !alias.scope !99, !noalias !104
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %287 = icmp eq i64 %index.next1161, 28
  br i1 %287, label %polly.loop_exit783.1.1, label %vector.body1158, !llvm.loop !108

polly.loop_exit783.1.1:                           ; preds = %vector.body1158
  %polly.indvar_next779.1.1 = add nuw nsw i64 %polly.indvar778.1.1, 1
  %exitcond831.1.1.not = icmp eq i64 %polly.indvar_next779.1.1, 32
  br i1 %exitcond831.1.1.not, label %polly.loop_header775.2, label %polly.loop_header775.1.1

polly.loop_header775.2:                           ; preds = %polly.loop_exit783.1.1, %polly.loop_exit783.2
  %polly.indvar778.2 = phi i64 [ %polly.indvar_next779.2, %polly.loop_exit783.2 ], [ 0, %polly.loop_exit783.1.1 ]
  %288 = add nuw nsw i64 %polly.indvar778.2, 64
  %289 = mul nuw nsw i64 %288, 480
  %290 = trunc i64 %288 to i32
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %290, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %polly.loop_header775.2
  %index1172 = phi i64 [ 0, %polly.loop_header775.2 ], [ %index.next1173, %vector.body1170 ]
  %vec.ind1178 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.2 ], [ %vec.ind.next1179, %vector.body1170 ]
  %291 = mul <4 x i32> %vec.ind1178, %broadcast.splat1181
  %292 = add <4 x i32> %291, <i32 1, i32 1, i32 1, i32 1>
  %293 = urem <4 x i32> %292, <i32 80, i32 80, i32 80, i32 80>
  %294 = sitofp <4 x i32> %293 to <4 x double>
  %295 = fmul fast <4 x double> %294, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %296 = shl i64 %index1172, 3
  %297 = add i64 %296, %289
  %298 = getelementptr i8, i8* %call1, i64 %297
  %299 = bitcast i8* %298 to <4 x double>*
  store <4 x double> %295, <4 x double>* %299, align 8, !alias.scope !99, !noalias !104
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1179 = add <4 x i32> %vec.ind1178, <i32 4, i32 4, i32 4, i32 4>
  %300 = icmp eq i64 %index.next1173, 32
  br i1 %300, label %polly.loop_exit783.2, label %vector.body1170, !llvm.loop !109

polly.loop_exit783.2:                             ; preds = %vector.body1170
  %polly.indvar_next779.2 = add nuw nsw i64 %polly.indvar778.2, 1
  %exitcond831.2.not = icmp eq i64 %polly.indvar_next779.2, 16
  br i1 %exitcond831.2.not, label %polly.loop_header775.1.2, label %polly.loop_header775.2

polly.loop_header775.1.2:                         ; preds = %polly.loop_exit783.2, %polly.loop_exit783.1.2
  %polly.indvar778.1.2 = phi i64 [ %polly.indvar_next779.1.2, %polly.loop_exit783.1.2 ], [ 0, %polly.loop_exit783.2 ]
  %301 = add nuw nsw i64 %polly.indvar778.1.2, 64
  %302 = mul nuw nsw i64 %301, 480
  %303 = trunc i64 %301 to i32
  %broadcast.splatinsert1192 = insertelement <4 x i32> poison, i32 %303, i32 0
  %broadcast.splat1193 = shufflevector <4 x i32> %broadcast.splatinsert1192, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %polly.loop_header775.1.2
  %index1186 = phi i64 [ 0, %polly.loop_header775.1.2 ], [ %index.next1187, %vector.body1184 ]
  %vec.ind1190 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.2 ], [ %vec.ind.next1191, %vector.body1184 ]
  %304 = add nuw nsw <4 x i64> %vec.ind1190, <i64 32, i64 32, i64 32, i64 32>
  %305 = trunc <4 x i64> %304 to <4 x i32>
  %306 = mul <4 x i32> %broadcast.splat1193, %305
  %307 = add <4 x i32> %306, <i32 1, i32 1, i32 1, i32 1>
  %308 = urem <4 x i32> %307, <i32 80, i32 80, i32 80, i32 80>
  %309 = sitofp <4 x i32> %308 to <4 x double>
  %310 = fmul fast <4 x double> %309, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %311 = extractelement <4 x i64> %304, i32 0
  %312 = shl i64 %311, 3
  %313 = add i64 %312, %302
  %314 = getelementptr i8, i8* %call1, i64 %313
  %315 = bitcast i8* %314 to <4 x double>*
  store <4 x double> %310, <4 x double>* %315, align 8, !alias.scope !99, !noalias !104
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1191 = add <4 x i64> %vec.ind1190, <i64 4, i64 4, i64 4, i64 4>
  %316 = icmp eq i64 %index.next1187, 28
  br i1 %316, label %polly.loop_exit783.1.2, label %vector.body1184, !llvm.loop !110

polly.loop_exit783.1.2:                           ; preds = %vector.body1184
  %polly.indvar_next779.1.2 = add nuw nsw i64 %polly.indvar778.1.2, 1
  %exitcond831.1.2.not = icmp eq i64 %polly.indvar_next779.1.2, 16
  br i1 %exitcond831.1.2.not, label %init_array.exit, label %polly.loop_header775.1.2

polly.loop_header749.1:                           ; preds = %polly.loop_exit757, %polly.loop_exit757.1
  %polly.indvar752.1 = phi i64 [ %polly.indvar_next753.1, %polly.loop_exit757.1 ], [ 0, %polly.loop_exit757 ]
  %317 = mul nuw nsw i64 %polly.indvar752.1, 480
  %318 = trunc i64 %polly.indvar752.1 to i32
  %broadcast.splatinsert1062 = insertelement <4 x i32> poison, i32 %318, i32 0
  %broadcast.splat1063 = shufflevector <4 x i32> %broadcast.splatinsert1062, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1054

vector.body1054:                                  ; preds = %vector.body1054, %polly.loop_header749.1
  %index1056 = phi i64 [ 0, %polly.loop_header749.1 ], [ %index.next1057, %vector.body1054 ]
  %vec.ind1060 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1 ], [ %vec.ind.next1061, %vector.body1054 ]
  %319 = add nuw nsw <4 x i64> %vec.ind1060, <i64 32, i64 32, i64 32, i64 32>
  %320 = trunc <4 x i64> %319 to <4 x i32>
  %321 = mul <4 x i32> %broadcast.splat1063, %320
  %322 = add <4 x i32> %321, <i32 2, i32 2, i32 2, i32 2>
  %323 = urem <4 x i32> %322, <i32 60, i32 60, i32 60, i32 60>
  %324 = sitofp <4 x i32> %323 to <4 x double>
  %325 = fmul fast <4 x double> %324, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %326 = extractelement <4 x i64> %319, i32 0
  %327 = shl i64 %326, 3
  %328 = add i64 %327, %317
  %329 = getelementptr i8, i8* %call2, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %325, <4 x double>* %330, align 8, !alias.scope !100, !noalias !102
  %index.next1057 = add i64 %index1056, 4
  %vec.ind.next1061 = add <4 x i64> %vec.ind1060, <i64 4, i64 4, i64 4, i64 4>
  %331 = icmp eq i64 %index.next1057, 28
  br i1 %331, label %polly.loop_exit757.1, label %vector.body1054, !llvm.loop !111

polly.loop_exit757.1:                             ; preds = %vector.body1054
  %polly.indvar_next753.1 = add nuw nsw i64 %polly.indvar752.1, 1
  %exitcond837.1.not = icmp eq i64 %polly.indvar_next753.1, 32
  br i1 %exitcond837.1.not, label %polly.loop_header749.1865, label %polly.loop_header749.1

polly.loop_header749.1865:                        ; preds = %polly.loop_exit757.1, %polly.loop_exit757.1876
  %polly.indvar752.1864 = phi i64 [ %polly.indvar_next753.1874, %polly.loop_exit757.1876 ], [ 0, %polly.loop_exit757.1 ]
  %332 = add nuw nsw i64 %polly.indvar752.1864, 32
  %333 = mul nuw nsw i64 %332, 480
  %334 = trunc i64 %332 to i32
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %334, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %polly.loop_header749.1865
  %index1068 = phi i64 [ 0, %polly.loop_header749.1865 ], [ %index.next1069, %vector.body1066 ]
  %vec.ind1074 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.1865 ], [ %vec.ind.next1075, %vector.body1066 ]
  %335 = mul <4 x i32> %vec.ind1074, %broadcast.splat1077
  %336 = add <4 x i32> %335, <i32 2, i32 2, i32 2, i32 2>
  %337 = urem <4 x i32> %336, <i32 60, i32 60, i32 60, i32 60>
  %338 = sitofp <4 x i32> %337 to <4 x double>
  %339 = fmul fast <4 x double> %338, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %340 = shl i64 %index1068, 3
  %341 = add i64 %340, %333
  %342 = getelementptr i8, i8* %call2, i64 %341
  %343 = bitcast i8* %342 to <4 x double>*
  store <4 x double> %339, <4 x double>* %343, align 8, !alias.scope !100, !noalias !102
  %index.next1069 = add i64 %index1068, 4
  %vec.ind.next1075 = add <4 x i32> %vec.ind1074, <i32 4, i32 4, i32 4, i32 4>
  %344 = icmp eq i64 %index.next1069, 32
  br i1 %344, label %polly.loop_exit757.1876, label %vector.body1066, !llvm.loop !112

polly.loop_exit757.1876:                          ; preds = %vector.body1066
  %polly.indvar_next753.1874 = add nuw nsw i64 %polly.indvar752.1864, 1
  %exitcond837.1875.not = icmp eq i64 %polly.indvar_next753.1874, 32
  br i1 %exitcond837.1875.not, label %polly.loop_header749.1.1, label %polly.loop_header749.1865

polly.loop_header749.1.1:                         ; preds = %polly.loop_exit757.1876, %polly.loop_exit757.1.1
  %polly.indvar752.1.1 = phi i64 [ %polly.indvar_next753.1.1, %polly.loop_exit757.1.1 ], [ 0, %polly.loop_exit757.1876 ]
  %345 = add nuw nsw i64 %polly.indvar752.1.1, 32
  %346 = mul nuw nsw i64 %345, 480
  %347 = trunc i64 %345 to i32
  %broadcast.splatinsert1088 = insertelement <4 x i32> poison, i32 %347, i32 0
  %broadcast.splat1089 = shufflevector <4 x i32> %broadcast.splatinsert1088, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %polly.loop_header749.1.1
  %index1082 = phi i64 [ 0, %polly.loop_header749.1.1 ], [ %index.next1083, %vector.body1080 ]
  %vec.ind1086 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.1 ], [ %vec.ind.next1087, %vector.body1080 ]
  %348 = add nuw nsw <4 x i64> %vec.ind1086, <i64 32, i64 32, i64 32, i64 32>
  %349 = trunc <4 x i64> %348 to <4 x i32>
  %350 = mul <4 x i32> %broadcast.splat1089, %349
  %351 = add <4 x i32> %350, <i32 2, i32 2, i32 2, i32 2>
  %352 = urem <4 x i32> %351, <i32 60, i32 60, i32 60, i32 60>
  %353 = sitofp <4 x i32> %352 to <4 x double>
  %354 = fmul fast <4 x double> %353, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %355 = extractelement <4 x i64> %348, i32 0
  %356 = shl i64 %355, 3
  %357 = add i64 %356, %346
  %358 = getelementptr i8, i8* %call2, i64 %357
  %359 = bitcast i8* %358 to <4 x double>*
  store <4 x double> %354, <4 x double>* %359, align 8, !alias.scope !100, !noalias !102
  %index.next1083 = add i64 %index1082, 4
  %vec.ind.next1087 = add <4 x i64> %vec.ind1086, <i64 4, i64 4, i64 4, i64 4>
  %360 = icmp eq i64 %index.next1083, 28
  br i1 %360, label %polly.loop_exit757.1.1, label %vector.body1080, !llvm.loop !113

polly.loop_exit757.1.1:                           ; preds = %vector.body1080
  %polly.indvar_next753.1.1 = add nuw nsw i64 %polly.indvar752.1.1, 1
  %exitcond837.1.1.not = icmp eq i64 %polly.indvar_next753.1.1, 32
  br i1 %exitcond837.1.1.not, label %polly.loop_header749.2, label %polly.loop_header749.1.1

polly.loop_header749.2:                           ; preds = %polly.loop_exit757.1.1, %polly.loop_exit757.2
  %polly.indvar752.2 = phi i64 [ %polly.indvar_next753.2, %polly.loop_exit757.2 ], [ 0, %polly.loop_exit757.1.1 ]
  %361 = add nuw nsw i64 %polly.indvar752.2, 64
  %362 = mul nuw nsw i64 %361, 480
  %363 = trunc i64 %361 to i32
  %broadcast.splatinsert1102 = insertelement <4 x i32> poison, i32 %363, i32 0
  %broadcast.splat1103 = shufflevector <4 x i32> %broadcast.splatinsert1102, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1092

vector.body1092:                                  ; preds = %vector.body1092, %polly.loop_header749.2
  %index1094 = phi i64 [ 0, %polly.loop_header749.2 ], [ %index.next1095, %vector.body1092 ]
  %vec.ind1100 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.2 ], [ %vec.ind.next1101, %vector.body1092 ]
  %364 = mul <4 x i32> %vec.ind1100, %broadcast.splat1103
  %365 = add <4 x i32> %364, <i32 2, i32 2, i32 2, i32 2>
  %366 = urem <4 x i32> %365, <i32 60, i32 60, i32 60, i32 60>
  %367 = sitofp <4 x i32> %366 to <4 x double>
  %368 = fmul fast <4 x double> %367, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %369 = shl i64 %index1094, 3
  %370 = add i64 %369, %362
  %371 = getelementptr i8, i8* %call2, i64 %370
  %372 = bitcast i8* %371 to <4 x double>*
  store <4 x double> %368, <4 x double>* %372, align 8, !alias.scope !100, !noalias !102
  %index.next1095 = add i64 %index1094, 4
  %vec.ind.next1101 = add <4 x i32> %vec.ind1100, <i32 4, i32 4, i32 4, i32 4>
  %373 = icmp eq i64 %index.next1095, 32
  br i1 %373, label %polly.loop_exit757.2, label %vector.body1092, !llvm.loop !114

polly.loop_exit757.2:                             ; preds = %vector.body1092
  %polly.indvar_next753.2 = add nuw nsw i64 %polly.indvar752.2, 1
  %exitcond837.2.not = icmp eq i64 %polly.indvar_next753.2, 16
  br i1 %exitcond837.2.not, label %polly.loop_header749.1.2, label %polly.loop_header749.2

polly.loop_header749.1.2:                         ; preds = %polly.loop_exit757.2, %polly.loop_exit757.1.2
  %polly.indvar752.1.2 = phi i64 [ %polly.indvar_next753.1.2, %polly.loop_exit757.1.2 ], [ 0, %polly.loop_exit757.2 ]
  %374 = add nuw nsw i64 %polly.indvar752.1.2, 64
  %375 = mul nuw nsw i64 %374, 480
  %376 = trunc i64 %374 to i32
  %broadcast.splatinsert1114 = insertelement <4 x i32> poison, i32 %376, i32 0
  %broadcast.splat1115 = shufflevector <4 x i32> %broadcast.splatinsert1114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %polly.loop_header749.1.2
  %index1108 = phi i64 [ 0, %polly.loop_header749.1.2 ], [ %index.next1109, %vector.body1106 ]
  %vec.ind1112 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.2 ], [ %vec.ind.next1113, %vector.body1106 ]
  %377 = add nuw nsw <4 x i64> %vec.ind1112, <i64 32, i64 32, i64 32, i64 32>
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat1115, %378
  %380 = add <4 x i32> %379, <i32 2, i32 2, i32 2, i32 2>
  %381 = urem <4 x i32> %380, <i32 60, i32 60, i32 60, i32 60>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add i64 %385, %375
  %387 = getelementptr i8, i8* %call2, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !100, !noalias !102
  %index.next1109 = add i64 %index1108, 4
  %vec.ind.next1113 = add <4 x i64> %vec.ind1112, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next1109, 28
  br i1 %389, label %polly.loop_exit757.1.2, label %vector.body1106, !llvm.loop !115

polly.loop_exit757.1.2:                           ; preds = %vector.body1106
  %polly.indvar_next753.1.2 = add nuw nsw i64 %polly.indvar752.1.2, 1
  %exitcond837.1.2.not = icmp eq i64 %polly.indvar_next753.1.2, 16
  br i1 %exitcond837.1.2.not, label %polly.loop_header775, label %polly.loop_header749.1.2

polly.loop_header722.1:                           ; preds = %polly.loop_exit730, %polly.loop_exit730.1
  %polly.indvar725.1 = phi i64 [ %polly.indvar_next726.1, %polly.loop_exit730.1 ], [ 0, %polly.loop_exit730 ]
  %390 = mul nuw nsw i64 %polly.indvar725.1, 640
  %391 = trunc i64 %polly.indvar725.1 to i32
  %broadcast.splatinsert948 = insertelement <4 x i32> poison, i32 %391, i32 0
  %broadcast.splat949 = shufflevector <4 x i32> %broadcast.splatinsert948, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body940

vector.body940:                                   ; preds = %vector.body940, %polly.loop_header722.1
  %index942 = phi i64 [ 0, %polly.loop_header722.1 ], [ %index.next943, %vector.body940 ]
  %vec.ind946 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1 ], [ %vec.ind.next947, %vector.body940 ]
  %392 = add nuw nsw <4 x i64> %vec.ind946, <i64 32, i64 32, i64 32, i64 32>
  %393 = trunc <4 x i64> %392 to <4 x i32>
  %394 = mul <4 x i32> %broadcast.splat949, %393
  %395 = add <4 x i32> %394, <i32 3, i32 3, i32 3, i32 3>
  %396 = urem <4 x i32> %395, <i32 80, i32 80, i32 80, i32 80>
  %397 = sitofp <4 x i32> %396 to <4 x double>
  %398 = fmul fast <4 x double> %397, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %399 = extractelement <4 x i64> %392, i32 0
  %400 = shl i64 %399, 3
  %401 = add nuw nsw i64 %400, %390
  %402 = getelementptr i8, i8* %call, i64 %401
  %403 = bitcast i8* %402 to <4 x double>*
  store <4 x double> %398, <4 x double>* %403, align 8, !alias.scope !96, !noalias !98
  %index.next943 = add i64 %index942, 4
  %vec.ind.next947 = add <4 x i64> %vec.ind946, <i64 4, i64 4, i64 4, i64 4>
  %404 = icmp eq i64 %index.next943, 32
  br i1 %404, label %polly.loop_exit730.1, label %vector.body940, !llvm.loop !116

polly.loop_exit730.1:                             ; preds = %vector.body940
  %polly.indvar_next726.1 = add nuw nsw i64 %polly.indvar725.1, 1
  %exitcond846.1.not = icmp eq i64 %polly.indvar_next726.1, 32
  br i1 %exitcond846.1.not, label %polly.loop_header722.2, label %polly.loop_header722.1

polly.loop_header722.2:                           ; preds = %polly.loop_exit730.1, %polly.loop_exit730.2
  %polly.indvar725.2 = phi i64 [ %polly.indvar_next726.2, %polly.loop_exit730.2 ], [ 0, %polly.loop_exit730.1 ]
  %405 = mul nuw nsw i64 %polly.indvar725.2, 640
  %406 = trunc i64 %polly.indvar725.2 to i32
  %broadcast.splatinsert960 = insertelement <4 x i32> poison, i32 %406, i32 0
  %broadcast.splat961 = shufflevector <4 x i32> %broadcast.splatinsert960, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body952

vector.body952:                                   ; preds = %vector.body952, %polly.loop_header722.2
  %index954 = phi i64 [ 0, %polly.loop_header722.2 ], [ %index.next955, %vector.body952 ]
  %vec.ind958 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2 ], [ %vec.ind.next959, %vector.body952 ]
  %407 = add nuw nsw <4 x i64> %vec.ind958, <i64 64, i64 64, i64 64, i64 64>
  %408 = trunc <4 x i64> %407 to <4 x i32>
  %409 = mul <4 x i32> %broadcast.splat961, %408
  %410 = add <4 x i32> %409, <i32 3, i32 3, i32 3, i32 3>
  %411 = urem <4 x i32> %410, <i32 80, i32 80, i32 80, i32 80>
  %412 = sitofp <4 x i32> %411 to <4 x double>
  %413 = fmul fast <4 x double> %412, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %414 = extractelement <4 x i64> %407, i32 0
  %415 = shl i64 %414, 3
  %416 = add nuw nsw i64 %415, %405
  %417 = getelementptr i8, i8* %call, i64 %416
  %418 = bitcast i8* %417 to <4 x double>*
  store <4 x double> %413, <4 x double>* %418, align 8, !alias.scope !96, !noalias !98
  %index.next955 = add i64 %index954, 4
  %vec.ind.next959 = add <4 x i64> %vec.ind958, <i64 4, i64 4, i64 4, i64 4>
  %419 = icmp eq i64 %index.next955, 16
  br i1 %419, label %polly.loop_exit730.2, label %vector.body952, !llvm.loop !117

polly.loop_exit730.2:                             ; preds = %vector.body952
  %polly.indvar_next726.2 = add nuw nsw i64 %polly.indvar725.2, 1
  %exitcond846.2.not = icmp eq i64 %polly.indvar_next726.2, 32
  br i1 %exitcond846.2.not, label %polly.loop_header722.1879, label %polly.loop_header722.2

polly.loop_header722.1879:                        ; preds = %polly.loop_exit730.2, %polly.loop_exit730.1890
  %polly.indvar725.1878 = phi i64 [ %polly.indvar_next726.1888, %polly.loop_exit730.1890 ], [ 0, %polly.loop_exit730.2 ]
  %420 = add nuw nsw i64 %polly.indvar725.1878, 32
  %421 = mul nuw nsw i64 %420, 640
  %422 = trunc i64 %420 to i32
  %broadcast.splatinsert974 = insertelement <4 x i32> poison, i32 %422, i32 0
  %broadcast.splat975 = shufflevector <4 x i32> %broadcast.splatinsert974, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %polly.loop_header722.1879
  %index966 = phi i64 [ 0, %polly.loop_header722.1879 ], [ %index.next967, %vector.body964 ]
  %vec.ind972 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.1879 ], [ %vec.ind.next973, %vector.body964 ]
  %423 = mul <4 x i32> %vec.ind972, %broadcast.splat975
  %424 = add <4 x i32> %423, <i32 3, i32 3, i32 3, i32 3>
  %425 = urem <4 x i32> %424, <i32 80, i32 80, i32 80, i32 80>
  %426 = sitofp <4 x i32> %425 to <4 x double>
  %427 = fmul fast <4 x double> %426, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %428 = shl i64 %index966, 3
  %429 = add nuw nsw i64 %428, %421
  %430 = getelementptr i8, i8* %call, i64 %429
  %431 = bitcast i8* %430 to <4 x double>*
  store <4 x double> %427, <4 x double>* %431, align 8, !alias.scope !96, !noalias !98
  %index.next967 = add i64 %index966, 4
  %vec.ind.next973 = add <4 x i32> %vec.ind972, <i32 4, i32 4, i32 4, i32 4>
  %432 = icmp eq i64 %index.next967, 32
  br i1 %432, label %polly.loop_exit730.1890, label %vector.body964, !llvm.loop !118

polly.loop_exit730.1890:                          ; preds = %vector.body964
  %polly.indvar_next726.1888 = add nuw nsw i64 %polly.indvar725.1878, 1
  %exitcond846.1889.not = icmp eq i64 %polly.indvar_next726.1888, 32
  br i1 %exitcond846.1889.not, label %polly.loop_header722.1.1, label %polly.loop_header722.1879

polly.loop_header722.1.1:                         ; preds = %polly.loop_exit730.1890, %polly.loop_exit730.1.1
  %polly.indvar725.1.1 = phi i64 [ %polly.indvar_next726.1.1, %polly.loop_exit730.1.1 ], [ 0, %polly.loop_exit730.1890 ]
  %433 = add nuw nsw i64 %polly.indvar725.1.1, 32
  %434 = mul nuw nsw i64 %433, 640
  %435 = trunc i64 %433 to i32
  %broadcast.splatinsert986 = insertelement <4 x i32> poison, i32 %435, i32 0
  %broadcast.splat987 = shufflevector <4 x i32> %broadcast.splatinsert986, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body978

vector.body978:                                   ; preds = %vector.body978, %polly.loop_header722.1.1
  %index980 = phi i64 [ 0, %polly.loop_header722.1.1 ], [ %index.next981, %vector.body978 ]
  %vec.ind984 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.1 ], [ %vec.ind.next985, %vector.body978 ]
  %436 = add nuw nsw <4 x i64> %vec.ind984, <i64 32, i64 32, i64 32, i64 32>
  %437 = trunc <4 x i64> %436 to <4 x i32>
  %438 = mul <4 x i32> %broadcast.splat987, %437
  %439 = add <4 x i32> %438, <i32 3, i32 3, i32 3, i32 3>
  %440 = urem <4 x i32> %439, <i32 80, i32 80, i32 80, i32 80>
  %441 = sitofp <4 x i32> %440 to <4 x double>
  %442 = fmul fast <4 x double> %441, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %443 = extractelement <4 x i64> %436, i32 0
  %444 = shl i64 %443, 3
  %445 = add nuw nsw i64 %444, %434
  %446 = getelementptr i8, i8* %call, i64 %445
  %447 = bitcast i8* %446 to <4 x double>*
  store <4 x double> %442, <4 x double>* %447, align 8, !alias.scope !96, !noalias !98
  %index.next981 = add i64 %index980, 4
  %vec.ind.next985 = add <4 x i64> %vec.ind984, <i64 4, i64 4, i64 4, i64 4>
  %448 = icmp eq i64 %index.next981, 32
  br i1 %448, label %polly.loop_exit730.1.1, label %vector.body978, !llvm.loop !119

polly.loop_exit730.1.1:                           ; preds = %vector.body978
  %polly.indvar_next726.1.1 = add nuw nsw i64 %polly.indvar725.1.1, 1
  %exitcond846.1.1.not = icmp eq i64 %polly.indvar_next726.1.1, 32
  br i1 %exitcond846.1.1.not, label %polly.loop_header722.2.1, label %polly.loop_header722.1.1

polly.loop_header722.2.1:                         ; preds = %polly.loop_exit730.1.1, %polly.loop_exit730.2.1
  %polly.indvar725.2.1 = phi i64 [ %polly.indvar_next726.2.1, %polly.loop_exit730.2.1 ], [ 0, %polly.loop_exit730.1.1 ]
  %449 = add nuw nsw i64 %polly.indvar725.2.1, 32
  %450 = mul nuw nsw i64 %449, 640
  %451 = trunc i64 %449 to i32
  %broadcast.splatinsert998 = insertelement <4 x i32> poison, i32 %451, i32 0
  %broadcast.splat999 = shufflevector <4 x i32> %broadcast.splatinsert998, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body990

vector.body990:                                   ; preds = %vector.body990, %polly.loop_header722.2.1
  %index992 = phi i64 [ 0, %polly.loop_header722.2.1 ], [ %index.next993, %vector.body990 ]
  %vec.ind996 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.1 ], [ %vec.ind.next997, %vector.body990 ]
  %452 = add nuw nsw <4 x i64> %vec.ind996, <i64 64, i64 64, i64 64, i64 64>
  %453 = trunc <4 x i64> %452 to <4 x i32>
  %454 = mul <4 x i32> %broadcast.splat999, %453
  %455 = add <4 x i32> %454, <i32 3, i32 3, i32 3, i32 3>
  %456 = urem <4 x i32> %455, <i32 80, i32 80, i32 80, i32 80>
  %457 = sitofp <4 x i32> %456 to <4 x double>
  %458 = fmul fast <4 x double> %457, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %459 = extractelement <4 x i64> %452, i32 0
  %460 = shl i64 %459, 3
  %461 = add nuw nsw i64 %460, %450
  %462 = getelementptr i8, i8* %call, i64 %461
  %463 = bitcast i8* %462 to <4 x double>*
  store <4 x double> %458, <4 x double>* %463, align 8, !alias.scope !96, !noalias !98
  %index.next993 = add i64 %index992, 4
  %vec.ind.next997 = add <4 x i64> %vec.ind996, <i64 4, i64 4, i64 4, i64 4>
  %464 = icmp eq i64 %index.next993, 16
  br i1 %464, label %polly.loop_exit730.2.1, label %vector.body990, !llvm.loop !120

polly.loop_exit730.2.1:                           ; preds = %vector.body990
  %polly.indvar_next726.2.1 = add nuw nsw i64 %polly.indvar725.2.1, 1
  %exitcond846.2.1.not = icmp eq i64 %polly.indvar_next726.2.1, 32
  br i1 %exitcond846.2.1.not, label %polly.loop_header722.2893, label %polly.loop_header722.2.1

polly.loop_header722.2893:                        ; preds = %polly.loop_exit730.2.1, %polly.loop_exit730.2904
  %polly.indvar725.2892 = phi i64 [ %polly.indvar_next726.2902, %polly.loop_exit730.2904 ], [ 0, %polly.loop_exit730.2.1 ]
  %465 = add nuw nsw i64 %polly.indvar725.2892, 64
  %466 = mul nuw nsw i64 %465, 640
  %467 = trunc i64 %465 to i32
  %broadcast.splatinsert1012 = insertelement <4 x i32> poison, i32 %467, i32 0
  %broadcast.splat1013 = shufflevector <4 x i32> %broadcast.splatinsert1012, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %polly.loop_header722.2893
  %index1004 = phi i64 [ 0, %polly.loop_header722.2893 ], [ %index.next1005, %vector.body1002 ]
  %vec.ind1010 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.2893 ], [ %vec.ind.next1011, %vector.body1002 ]
  %468 = mul <4 x i32> %vec.ind1010, %broadcast.splat1013
  %469 = add <4 x i32> %468, <i32 3, i32 3, i32 3, i32 3>
  %470 = urem <4 x i32> %469, <i32 80, i32 80, i32 80, i32 80>
  %471 = sitofp <4 x i32> %470 to <4 x double>
  %472 = fmul fast <4 x double> %471, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %473 = shl i64 %index1004, 3
  %474 = add nuw nsw i64 %473, %466
  %475 = getelementptr i8, i8* %call, i64 %474
  %476 = bitcast i8* %475 to <4 x double>*
  store <4 x double> %472, <4 x double>* %476, align 8, !alias.scope !96, !noalias !98
  %index.next1005 = add i64 %index1004, 4
  %vec.ind.next1011 = add <4 x i32> %vec.ind1010, <i32 4, i32 4, i32 4, i32 4>
  %477 = icmp eq i64 %index.next1005, 32
  br i1 %477, label %polly.loop_exit730.2904, label %vector.body1002, !llvm.loop !121

polly.loop_exit730.2904:                          ; preds = %vector.body1002
  %polly.indvar_next726.2902 = add nuw nsw i64 %polly.indvar725.2892, 1
  %exitcond846.2903.not = icmp eq i64 %polly.indvar_next726.2902, 16
  br i1 %exitcond846.2903.not, label %polly.loop_header722.1.2, label %polly.loop_header722.2893

polly.loop_header722.1.2:                         ; preds = %polly.loop_exit730.2904, %polly.loop_exit730.1.2
  %polly.indvar725.1.2 = phi i64 [ %polly.indvar_next726.1.2, %polly.loop_exit730.1.2 ], [ 0, %polly.loop_exit730.2904 ]
  %478 = add nuw nsw i64 %polly.indvar725.1.2, 64
  %479 = mul nuw nsw i64 %478, 640
  %480 = trunc i64 %478 to i32
  %broadcast.splatinsert1024 = insertelement <4 x i32> poison, i32 %480, i32 0
  %broadcast.splat1025 = shufflevector <4 x i32> %broadcast.splatinsert1024, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %polly.loop_header722.1.2
  %index1018 = phi i64 [ 0, %polly.loop_header722.1.2 ], [ %index.next1019, %vector.body1016 ]
  %vec.ind1022 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.2 ], [ %vec.ind.next1023, %vector.body1016 ]
  %481 = add nuw nsw <4 x i64> %vec.ind1022, <i64 32, i64 32, i64 32, i64 32>
  %482 = trunc <4 x i64> %481 to <4 x i32>
  %483 = mul <4 x i32> %broadcast.splat1025, %482
  %484 = add <4 x i32> %483, <i32 3, i32 3, i32 3, i32 3>
  %485 = urem <4 x i32> %484, <i32 80, i32 80, i32 80, i32 80>
  %486 = sitofp <4 x i32> %485 to <4 x double>
  %487 = fmul fast <4 x double> %486, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %488 = extractelement <4 x i64> %481, i32 0
  %489 = shl i64 %488, 3
  %490 = add nuw nsw i64 %489, %479
  %491 = getelementptr i8, i8* %call, i64 %490
  %492 = bitcast i8* %491 to <4 x double>*
  store <4 x double> %487, <4 x double>* %492, align 8, !alias.scope !96, !noalias !98
  %index.next1019 = add i64 %index1018, 4
  %vec.ind.next1023 = add <4 x i64> %vec.ind1022, <i64 4, i64 4, i64 4, i64 4>
  %493 = icmp eq i64 %index.next1019, 32
  br i1 %493, label %polly.loop_exit730.1.2, label %vector.body1016, !llvm.loop !122

polly.loop_exit730.1.2:                           ; preds = %vector.body1016
  %polly.indvar_next726.1.2 = add nuw nsw i64 %polly.indvar725.1.2, 1
  %exitcond846.1.2.not = icmp eq i64 %polly.indvar_next726.1.2, 16
  br i1 %exitcond846.1.2.not, label %polly.loop_header722.2.2, label %polly.loop_header722.1.2

polly.loop_header722.2.2:                         ; preds = %polly.loop_exit730.1.2, %polly.loop_exit730.2.2
  %polly.indvar725.2.2 = phi i64 [ %polly.indvar_next726.2.2, %polly.loop_exit730.2.2 ], [ 0, %polly.loop_exit730.1.2 ]
  %494 = add nuw nsw i64 %polly.indvar725.2.2, 64
  %495 = mul nuw nsw i64 %494, 640
  %496 = trunc i64 %494 to i32
  %broadcast.splatinsert1036 = insertelement <4 x i32> poison, i32 %496, i32 0
  %broadcast.splat1037 = shufflevector <4 x i32> %broadcast.splatinsert1036, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1028

vector.body1028:                                  ; preds = %vector.body1028, %polly.loop_header722.2.2
  %index1030 = phi i64 [ 0, %polly.loop_header722.2.2 ], [ %index.next1031, %vector.body1028 ]
  %vec.ind1034 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.2 ], [ %vec.ind.next1035, %vector.body1028 ]
  %497 = add nuw nsw <4 x i64> %vec.ind1034, <i64 64, i64 64, i64 64, i64 64>
  %498 = trunc <4 x i64> %497 to <4 x i32>
  %499 = mul <4 x i32> %broadcast.splat1037, %498
  %500 = add <4 x i32> %499, <i32 3, i32 3, i32 3, i32 3>
  %501 = urem <4 x i32> %500, <i32 80, i32 80, i32 80, i32 80>
  %502 = sitofp <4 x i32> %501 to <4 x double>
  %503 = fmul fast <4 x double> %502, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %504 = extractelement <4 x i64> %497, i32 0
  %505 = shl i64 %504, 3
  %506 = add nuw nsw i64 %505, %495
  %507 = getelementptr i8, i8* %call, i64 %506
  %508 = bitcast i8* %507 to <4 x double>*
  store <4 x double> %503, <4 x double>* %508, align 8, !alias.scope !96, !noalias !98
  %index.next1031 = add i64 %index1030, 4
  %vec.ind.next1035 = add <4 x i64> %vec.ind1034, <i64 4, i64 4, i64 4, i64 4>
  %509 = icmp eq i64 %index.next1031, 16
  br i1 %509, label %polly.loop_exit730.2.2, label %vector.body1028, !llvm.loop !123

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
!21 = distinct !{!"A"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 4}
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
!50 = !{!"llvm.loop.tile.size", i32 96}
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
