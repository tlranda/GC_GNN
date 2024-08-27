; ModuleID = 'syr2k_recreations//mmp_syr2k_S_97.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_97.c"
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
  %scevgep914 = getelementptr i8, i8* %call2, i64 %12
  %scevgep913 = getelementptr i8, i8* %call2, i64 %11
  %scevgep912 = getelementptr i8, i8* %call1, i64 %12
  %scevgep911 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep911, %scevgep914
  %bound1 = icmp ult i8* %scevgep913, %scevgep912
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
  br i1 %exitcond18.not.i, label %vector.ph918, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph918:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert925 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat926 = shufflevector <4 x i64> %broadcast.splatinsert925, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body917

vector.body917:                                   ; preds = %vector.body917, %vector.ph918
  %index919 = phi i64 [ 0, %vector.ph918 ], [ %index.next920, %vector.body917 ]
  %vec.ind923 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph918 ], [ %vec.ind.next924, %vector.body917 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind923, %broadcast.splat926
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv7.i, i64 %index919
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next920 = add i64 %index919, 4
  %vec.ind.next924 = add <4 x i64> %vec.ind923, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next920, 80
  br i1 %40, label %for.inc41.i, label %vector.body917, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body917
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph918, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1271, label %vector.ph1200

vector.ph1200:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1200
  %index1201 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1202, %vector.body1199 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %index1201
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1202 = add i64 %index1201, 4
  %46 = icmp eq i64 %index.next1202, %n.vec
  br i1 %46, label %middle.block1197, label %vector.body1199, !llvm.loop !18

middle.block1197:                                 ; preds = %vector.body1199
  %cmp.n1204 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1204, label %for.inc6.i, label %for.body3.i46.preheader1271

for.body3.i46.preheader1271:                      ; preds = %for.body3.i46.preheader, %middle.block1197
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1197 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1271, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1271 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1197, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit533.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start260, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1220 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1220, label %for.body3.i60.preheader1270, label %vector.ph1221

vector.ph1221:                                    ; preds = %for.body3.i60.preheader
  %n.vec1223 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %vector.ph1221
  %index1224 = phi i64 [ 0, %vector.ph1221 ], [ %index.next1225, %vector.body1219 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %index1224
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1228 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1228, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1225 = add i64 %index1224, 4
  %57 = icmp eq i64 %index.next1225, %n.vec1223
  br i1 %57, label %middle.block1217, label %vector.body1219, !llvm.loop !55

middle.block1217:                                 ; preds = %vector.body1219
  %cmp.n1227 = icmp eq i64 %indvars.iv21.i52, %n.vec1223
  br i1 %cmp.n1227, label %for.inc6.i63, label %for.body3.i60.preheader1270

for.body3.i60.preheader1270:                      ; preds = %for.body3.i60.preheader, %middle.block1217
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1223, %middle.block1217 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1270, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1270 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1217, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit370.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1246 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1246, label %for.body3.i99.preheader1269, label %vector.ph1247

vector.ph1247:                                    ; preds = %for.body3.i99.preheader
  %n.vec1249 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1247
  %index1250 = phi i64 [ 0, %vector.ph1247 ], [ %index.next1251, %vector.body1245 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %index1250
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1254 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1254, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1251 = add i64 %index1250, 4
  %68 = icmp eq i64 %index.next1251, %n.vec1249
  br i1 %68, label %middle.block1243, label %vector.body1245, !llvm.loop !57

middle.block1243:                                 ; preds = %vector.body1245
  %cmp.n1253 = icmp eq i64 %indvars.iv21.i91, %n.vec1249
  br i1 %cmp.n1253, label %for.inc6.i102, label %for.body3.i99.preheader1269

for.body3.i99.preheader1269:                      ; preds = %for.body3.i99.preheader, %middle.block1243
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1249, %middle.block1243 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1269, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1269 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1243, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207.1
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1258 = phi i64 [ %indvar.next1259, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1258, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1260 = icmp ult i64 %88, 4
  br i1 %min.iters.check1260, label %polly.loop_header191.preheader, label %vector.ph1261

vector.ph1261:                                    ; preds = %polly.loop_header
  %n.vec1263 = and i64 %88, -4
  br label %vector.body1257

vector.body1257:                                  ; preds = %vector.body1257, %vector.ph1261
  %index1264 = phi i64 [ 0, %vector.ph1261 ], [ %index.next1265, %vector.body1257 ]
  %90 = shl nuw nsw i64 %index1264, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1268 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1268, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1265 = add i64 %index1264, 4
  %95 = icmp eq i64 %index.next1265, %n.vec1263
  br i1 %95, label %middle.block1255, label %vector.body1257, !llvm.loop !69

middle.block1255:                                 ; preds = %vector.body1257
  %cmp.n1267 = icmp eq i64 %88, %n.vec1263
  br i1 %cmp.n1267, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1255
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1263, %middle.block1255 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1255
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond808.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1259 = add i64 %indvar1258, 1
  br i1 %exitcond808.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond807.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond807.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 1, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %97 = mul nuw nsw i64 %polly.indvar208, 480
  %scevgep243 = getelementptr i8, i8* %call2, i64 %97
  %98 = mul nuw nsw i64 %polly.indvar208, 640
  %scevgep254 = getelementptr i8, i8* %call, i64 %98
  %polly.access.mul.Packed_MemRef_call1250 = shl nsw i64 %polly.indvar208, 5
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond806.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond806.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %99 = shl nuw nsw i64 %polly.indvar214, 8
  %scevgep802 = getelementptr i8, i8* %malloccall, i64 %99
  %100 = mul nuw nsw i64 %polly.indvar214, 480
  %scevgep803 = getelementptr i8, i8* %call1, i64 %100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %scevgep802, i8* noundef nonnull align 8 dereferenceable(256) %scevgep803, i64 256, i1 false)
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit213
  %polly.indvar230 = phi i64 [ 0, %polly.loop_exit213 ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %101 = shl i64 %polly.indvar230, 3
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %101
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1251 = add nuw nsw i64 %polly.indvar230, %polly.access.mul.Packed_MemRef_call1250
  %polly.access.Packed_MemRef_call1252 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1251
  %_p_scalar_253 = load double, double* %polly.access.Packed_MemRef_call1252, align 8
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next231, 32
  br i1 %exitcond805.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_header233 ]
  %polly.access.mul.Packed_MemRef_call1239 = shl nsw i64 %polly.indvar236, 5
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239, %polly.indvar230
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  %_p_scalar_242 = load double, double* %polly.access.Packed_MemRef_call1241, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %102 = mul nuw nsw i64 %polly.indvar236, 480
  %103 = add nuw nsw i64 %102, %101
  %scevgep247 = getelementptr i8, i8* %call2, i64 %103
  %scevgep247248 = bitcast i8* %scevgep247 to double*
  %_p_scalar_249 = load double, double* %scevgep247248, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114 = fmul fast double %_p_scalar_253, %_p_scalar_249
  %104 = shl nuw nsw i64 %polly.indvar236, 3
  %scevgep255 = getelementptr i8, i8* %scevgep254, i64 %104
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_257
  store double %p_add42.i118, double* %scevgep255256, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next237, %indvars.iv
  br i1 %exitcond804.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start260:                                   ; preds = %kernel_syr2k.exit
  %malloccall262 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header346

polly.loop_header346:                             ; preds = %polly.loop_exit354, %polly.start260
  %indvar1232 = phi i64 [ %indvar.next1233, %polly.loop_exit354 ], [ 0, %polly.start260 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 1, %polly.start260 ]
  %105 = add i64 %indvar1232, 1
  %106 = mul nuw nsw i64 %polly.indvar349, 640
  %scevgep358 = getelementptr i8, i8* %call, i64 %106
  %min.iters.check1234 = icmp ult i64 %105, 4
  br i1 %min.iters.check1234, label %polly.loop_header352.preheader, label %vector.ph1235

vector.ph1235:                                    ; preds = %polly.loop_header346
  %n.vec1237 = and i64 %105, -4
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1235
  %index1238 = phi i64 [ 0, %vector.ph1235 ], [ %index.next1239, %vector.body1231 ]
  %107 = shl nuw nsw i64 %index1238, 3
  %108 = getelementptr i8, i8* %scevgep358, i64 %107
  %109 = bitcast i8* %108 to <4 x double>*
  %wide.load1242 = load <4 x double>, <4 x double>* %109, align 8, !alias.scope !73, !noalias !75
  %110 = fmul fast <4 x double> %wide.load1242, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %111 = bitcast i8* %108 to <4 x double>*
  store <4 x double> %110, <4 x double>* %111, align 8, !alias.scope !73, !noalias !75
  %index.next1239 = add i64 %index1238, 4
  %112 = icmp eq i64 %index.next1239, %n.vec1237
  br i1 %112, label %middle.block1229, label %vector.body1231, !llvm.loop !79

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1241 = icmp eq i64 %105, %n.vec1237
  br i1 %cmp.n1241, label %polly.loop_exit354, label %polly.loop_header352.preheader

polly.loop_header352.preheader:                   ; preds = %polly.loop_header346, %middle.block1229
  %polly.indvar355.ph = phi i64 [ 0, %polly.loop_header346 ], [ %n.vec1237, %middle.block1229 ]
  br label %polly.loop_header352

polly.loop_exit354:                               ; preds = %polly.loop_header352, %middle.block1229
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next350, 80
  %indvar.next1233 = add i64 %indvar1232, 1
  br i1 %exitcond819.not, label %polly.loop_header362.preheader, label %polly.loop_header346

polly.loop_header362.preheader:                   ; preds = %polly.loop_exit354
  %Packed_MemRef_call1263 = bitcast i8* %malloccall262 to double*
  br label %polly.loop_header368

polly.loop_header352:                             ; preds = %polly.loop_header352.preheader, %polly.loop_header352
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_header352 ], [ %polly.indvar355.ph, %polly.loop_header352.preheader ]
  %113 = shl nuw nsw i64 %polly.indvar355, 3
  %scevgep359 = getelementptr i8, i8* %scevgep358, i64 %113
  %scevgep359360 = bitcast i8* %scevgep359 to double*
  %_p_scalar_361 = load double, double* %scevgep359360, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_361, 1.200000e+00
  store double %p_mul.i57, double* %scevgep359360, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next356, %polly.indvar349
  br i1 %exitcond818.not, label %polly.loop_exit354, label %polly.loop_header352, !llvm.loop !80

polly.loop_header368:                             ; preds = %polly.loop_exit392, %polly.loop_header362.preheader
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %polly.loop_exit392 ], [ 1, %polly.loop_header362.preheader ]
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit392 ], [ 0, %polly.loop_header362.preheader ]
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %114 = mul nuw nsw i64 %polly.indvar371, 480
  %scevgep406 = getelementptr i8, i8* %call2, i64 %114
  %115 = mul nuw nsw i64 %polly.indvar371, 640
  %scevgep417 = getelementptr i8, i8* %call, i64 %115
  %polly.access.mul.Packed_MemRef_call1263413 = shl nsw i64 %polly.indvar371, 5
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next372, 80
  br i1 %exitcond817.not, label %polly.loop_header368.1, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %116 = shl nuw nsw i64 %polly.indvar377, 8
  %scevgep810 = getelementptr i8, i8* %malloccall262, i64 %116
  %117 = mul nuw nsw i64 %polly.indvar377, 480
  %scevgep811 = getelementptr i8, i8* %call1, i64 %117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %scevgep810, i8* noundef nonnull align 8 dereferenceable(256) %scevgep811, i64 256, i1 false)
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next378, %indvars.iv812
  br i1 %exitcond814.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_exit376
  %polly.indvar393 = phi i64 [ 0, %polly.loop_exit376 ], [ %polly.indvar_next394, %polly.loop_exit398 ]
  %118 = shl i64 %polly.indvar393, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %118
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1263414 = add nuw nsw i64 %polly.indvar393, %polly.access.mul.Packed_MemRef_call1263413
  %polly.access.Packed_MemRef_call1263415 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263414
  %_p_scalar_416 = load double, double* %polly.access.Packed_MemRef_call1263415, align 8
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next394, 32
  br i1 %exitcond816.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_header396, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_header396 ]
  %polly.access.mul.Packed_MemRef_call1263402 = shl nsw i64 %polly.indvar399, 5
  %polly.access.add.Packed_MemRef_call1263403 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402, %polly.indvar393
  %polly.access.Packed_MemRef_call1263404 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403
  %_p_scalar_405 = load double, double* %polly.access.Packed_MemRef_call1263404, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_409, %_p_scalar_405
  %119 = mul nuw nsw i64 %polly.indvar399, 480
  %120 = add nuw nsw i64 %119, %118
  %scevgep410 = getelementptr i8, i8* %call2, i64 %120
  %scevgep410411 = bitcast i8* %scevgep410 to double*
  %_p_scalar_412 = load double, double* %scevgep410411, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75 = fmul fast double %_p_scalar_416, %_p_scalar_412
  %121 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep418 = getelementptr i8, i8* %scevgep417, i64 %121
  %scevgep418419 = bitcast i8* %scevgep418 to double*
  %_p_scalar_420 = load double, double* %scevgep418419, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_420
  store double %p_add42.i79, double* %scevgep418419, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next400, %indvars.iv812
  br i1 %exitcond815.not, label %polly.loop_exit398, label %polly.loop_header396

polly.start423:                                   ; preds = %init_array.exit
  %malloccall425 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header509

polly.loop_header509:                             ; preds = %polly.loop_exit517, %polly.start423
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit517 ], [ 0, %polly.start423 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 1, %polly.start423 ]
  %122 = add i64 %indvar, 1
  %123 = mul nuw nsw i64 %polly.indvar512, 640
  %scevgep521 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1208 = icmp ult i64 %122, 4
  br i1 %min.iters.check1208, label %polly.loop_header515.preheader, label %vector.ph1209

vector.ph1209:                                    ; preds = %polly.loop_header509
  %n.vec1211 = and i64 %122, -4
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %vector.ph1209
  %index1212 = phi i64 [ 0, %vector.ph1209 ], [ %index.next1213, %vector.body1207 ]
  %124 = shl nuw nsw i64 %index1212, 3
  %125 = getelementptr i8, i8* %scevgep521, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1216 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !82, !noalias !84
  %127 = fmul fast <4 x double> %wide.load1216, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !82, !noalias !84
  %index.next1213 = add i64 %index1212, 4
  %129 = icmp eq i64 %index.next1213, %n.vec1211
  br i1 %129, label %middle.block1205, label %vector.body1207, !llvm.loop !88

middle.block1205:                                 ; preds = %vector.body1207
  %cmp.n1215 = icmp eq i64 %122, %n.vec1211
  br i1 %cmp.n1215, label %polly.loop_exit517, label %polly.loop_header515.preheader

polly.loop_header515.preheader:                   ; preds = %polly.loop_header509, %middle.block1205
  %polly.indvar518.ph = phi i64 [ 0, %polly.loop_header509 ], [ %n.vec1211, %middle.block1205 ]
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_header515, %middle.block1205
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next513, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond830.not, label %polly.loop_header525.preheader, label %polly.loop_header509

polly.loop_header525.preheader:                   ; preds = %polly.loop_exit517
  %Packed_MemRef_call1426 = bitcast i8* %malloccall425 to double*
  br label %polly.loop_header531

polly.loop_header515:                             ; preds = %polly.loop_header515.preheader, %polly.loop_header515
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_header515 ], [ %polly.indvar518.ph, %polly.loop_header515.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar518, 3
  %scevgep522 = getelementptr i8, i8* %scevgep521, i64 %130
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !82, !noalias !84
  %p_mul.i = fmul fast double %_p_scalar_524, 1.200000e+00
  store double %p_mul.i, double* %scevgep522523, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next519, %polly.indvar512
  br i1 %exitcond829.not, label %polly.loop_exit517, label %polly.loop_header515, !llvm.loop !89

polly.loop_header531:                             ; preds = %polly.loop_exit555, %polly.loop_header525.preheader
  %indvars.iv823 = phi i64 [ %indvars.iv.next824, %polly.loop_exit555 ], [ 1, %polly.loop_header525.preheader ]
  %polly.indvar534 = phi i64 [ %polly.indvar_next535, %polly.loop_exit555 ], [ 0, %polly.loop_header525.preheader ]
  br label %polly.loop_header537

polly.loop_exit539:                               ; preds = %polly.loop_header537
  %131 = mul nuw nsw i64 %polly.indvar534, 480
  %scevgep569 = getelementptr i8, i8* %call2, i64 %131
  %132 = mul nuw nsw i64 %polly.indvar534, 640
  %scevgep580 = getelementptr i8, i8* %call, i64 %132
  %polly.access.mul.Packed_MemRef_call1426576 = shl nsw i64 %polly.indvar534, 5
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_exit561
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %indvars.iv.next824 = add nuw nsw i64 %indvars.iv823, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next535, 80
  br i1 %exitcond828.not, label %polly.loop_header531.1, label %polly.loop_header531

polly.loop_header537:                             ; preds = %polly.loop_header537, %polly.loop_header531
  %polly.indvar540 = phi i64 [ 0, %polly.loop_header531 ], [ %polly.indvar_next541, %polly.loop_header537 ]
  %133 = shl nuw nsw i64 %polly.indvar540, 8
  %scevgep821 = getelementptr i8, i8* %malloccall425, i64 %133
  %134 = mul nuw nsw i64 %polly.indvar540, 480
  %scevgep822 = getelementptr i8, i8* %call1, i64 %134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %scevgep821, i8* noundef nonnull align 8 dereferenceable(256) %scevgep822, i64 256, i1 false)
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next541, %indvars.iv823
  br i1 %exitcond825.not, label %polly.loop_exit539, label %polly.loop_header537

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.loop_exit539
  %polly.indvar556 = phi i64 [ 0, %polly.loop_exit539 ], [ %polly.indvar_next557, %polly.loop_exit561 ]
  %135 = shl i64 %polly.indvar556, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %135
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1426577 = add nuw nsw i64 %polly.indvar556, %polly.access.mul.Packed_MemRef_call1426576
  %polly.access.Packed_MemRef_call1426578 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426577
  %_p_scalar_579 = load double, double* %polly.access.Packed_MemRef_call1426578, align 8
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next557, 32
  br i1 %exitcond827.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header559:                             ; preds = %polly.loop_header559, %polly.loop_header553
  %polly.indvar562 = phi i64 [ 0, %polly.loop_header553 ], [ %polly.indvar_next563, %polly.loop_header559 ]
  %polly.access.mul.Packed_MemRef_call1426565 = shl nsw i64 %polly.indvar562, 5
  %polly.access.add.Packed_MemRef_call1426566 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565, %polly.indvar556
  %polly.access.Packed_MemRef_call1426567 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566
  %_p_scalar_568 = load double, double* %polly.access.Packed_MemRef_call1426567, align 8
  %p_mul27.i = fmul fast double %_p_scalar_572, %_p_scalar_568
  %136 = mul nuw nsw i64 %polly.indvar562, 480
  %137 = add nuw nsw i64 %136, %135
  %scevgep573 = getelementptr i8, i8* %call2, i64 %137
  %scevgep573574 = bitcast i8* %scevgep573 to double*
  %_p_scalar_575 = load double, double* %scevgep573574, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i = fmul fast double %_p_scalar_579, %_p_scalar_575
  %138 = shl nuw nsw i64 %polly.indvar562, 3
  %scevgep581 = getelementptr i8, i8* %scevgep580, i64 %138
  %scevgep581582 = bitcast i8* %scevgep581 to double*
  %_p_scalar_583 = load double, double* %scevgep581582, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_583
  store double %p_add42.i, double* %scevgep581582, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next563, %indvars.iv823
  br i1 %exitcond826.not, label %polly.loop_exit561, label %polly.loop_header559

polly.loop_header722:                             ; preds = %entry, %polly.loop_exit730
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_exit730 ], [ 0, %entry ]
  %139 = mul nuw nsw i64 %polly.indvar725, 640
  %140 = trunc i64 %polly.indvar725 to i32
  %broadcast.splatinsert939 = insertelement <4 x i32> poison, i32 %140, i32 0
  %broadcast.splat940 = shufflevector <4 x i32> %broadcast.splatinsert939, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body929

vector.body929:                                   ; preds = %vector.body929, %polly.loop_header722
  %index931 = phi i64 [ 0, %polly.loop_header722 ], [ %index.next932, %vector.body929 ]
  %vec.ind937 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722 ], [ %vec.ind.next938, %vector.body929 ]
  %141 = mul <4 x i32> %vec.ind937, %broadcast.splat940
  %142 = add <4 x i32> %141, <i32 3, i32 3, i32 3, i32 3>
  %143 = urem <4 x i32> %142, <i32 80, i32 80, i32 80, i32 80>
  %144 = sitofp <4 x i32> %143 to <4 x double>
  %145 = fmul fast <4 x double> %144, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %146 = shl i64 %index931, 3
  %147 = add nuw nsw i64 %146, %139
  %148 = getelementptr i8, i8* %call, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %145, <4 x double>* %149, align 8, !alias.scope !91, !noalias !93
  %index.next932 = add i64 %index931, 4
  %vec.ind.next938 = add <4 x i32> %vec.ind937, <i32 4, i32 4, i32 4, i32 4>
  %150 = icmp eq i64 %index.next932, 32
  br i1 %150, label %polly.loop_exit730, label %vector.body929, !llvm.loop !96

polly.loop_exit730:                               ; preds = %vector.body929
  %polly.indvar_next726 = add nuw nsw i64 %polly.indvar725, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next726, 32
  br i1 %exitcond849.not, label %polly.loop_header722.1, label %polly.loop_header722

polly.loop_header749:                             ; preds = %polly.loop_exit730.2.2, %polly.loop_exit757
  %polly.indvar752 = phi i64 [ %polly.indvar_next753, %polly.loop_exit757 ], [ 0, %polly.loop_exit730.2.2 ]
  %151 = mul nuw nsw i64 %polly.indvar752, 480
  %152 = trunc i64 %polly.indvar752 to i32
  %broadcast.splatinsert1053 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat1054 = shufflevector <4 x i32> %broadcast.splatinsert1053, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %polly.loop_header749
  %index1045 = phi i64 [ 0, %polly.loop_header749 ], [ %index.next1046, %vector.body1043 ]
  %vec.ind1051 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749 ], [ %vec.ind.next1052, %vector.body1043 ]
  %153 = mul <4 x i32> %vec.ind1051, %broadcast.splat1054
  %154 = add <4 x i32> %153, <i32 2, i32 2, i32 2, i32 2>
  %155 = urem <4 x i32> %154, <i32 60, i32 60, i32 60, i32 60>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index1045, 3
  %159 = add i64 %158, %151
  %160 = getelementptr i8, i8* %call2, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !95, !noalias !97
  %index.next1046 = add i64 %index1045, 4
  %vec.ind.next1052 = add <4 x i32> %vec.ind1051, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next1046, 32
  br i1 %162, label %polly.loop_exit757, label %vector.body1043, !llvm.loop !98

polly.loop_exit757:                               ; preds = %vector.body1043
  %polly.indvar_next753 = add nuw nsw i64 %polly.indvar752, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next753, 32
  br i1 %exitcond840.not, label %polly.loop_header749.1, label %polly.loop_header749

polly.loop_header775:                             ; preds = %polly.loop_exit757.1.2, %polly.loop_exit783
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %polly.loop_exit757.1.2 ]
  %163 = mul nuw nsw i64 %polly.indvar778, 480
  %164 = trunc i64 %polly.indvar778 to i32
  %broadcast.splatinsert1131 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1132 = shufflevector <4 x i32> %broadcast.splatinsert1131, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_header775
  %index1123 = phi i64 [ 0, %polly.loop_header775 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1129 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775 ], [ %vec.ind.next1130, %vector.body1121 ]
  %165 = mul <4 x i32> %vec.ind1129, %broadcast.splat1132
  %166 = add <4 x i32> %165, <i32 1, i32 1, i32 1, i32 1>
  %167 = urem <4 x i32> %166, <i32 80, i32 80, i32 80, i32 80>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %170 = shl i64 %index1123, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call1, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !94, !noalias !99
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1130 = add <4 x i32> %vec.ind1129, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1124, 32
  br i1 %174, label %polly.loop_exit783, label %vector.body1121, !llvm.loop !100

polly.loop_exit783:                               ; preds = %vector.body1121
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next779, 32
  br i1 %exitcond834.not, label %polly.loop_header775.1, label %polly.loop_header775

polly.loop_header205.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit229.1 ], [ 1, %polly.loop_exit229 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_header211.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_header211.1 ]
  %175 = shl nuw nsw i64 %polly.indvar214.1, 8
  %scevgep802.1 = getelementptr i8, i8* %malloccall, i64 %175
  %176 = mul nuw nsw i64 %polly.indvar214.1, 480
  %177 = add nuw nsw i64 %176, 256
  %scevgep803.1 = getelementptr i8, i8* %call1, i64 %177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(224) %scevgep802.1, i8* noundef nonnull align 8 dereferenceable(224) %scevgep803.1, i64 224, i1 false)
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next215.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_header211.1
  %178 = mul nuw nsw i64 %polly.indvar208.1, 480
  %scevgep243.1 = getelementptr i8, i8* %call2, i64 %178
  %179 = mul nuw nsw i64 %polly.indvar208.1, 640
  %scevgep254.1 = getelementptr i8, i8* %call, i64 %179
  %polly.access.mul.Packed_MemRef_call1250.1 = shl nsw i64 %polly.indvar208.1, 5
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit213.1
  %polly.indvar230.1 = phi i64 [ 0, %polly.loop_exit213.1 ], [ %polly.indvar_next231.1, %polly.loop_exit235.1 ]
  %180 = shl i64 %polly.indvar230.1, 3
  %181 = add i64 %180, 256
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %181
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1251.1 = add nuw nsw i64 %polly.indvar230.1, %polly.access.mul.Packed_MemRef_call1250.1
  %polly.access.Packed_MemRef_call1252.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1251.1
  %_p_scalar_253.1 = load double, double* %polly.access.Packed_MemRef_call1252.1, align 8
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_header233.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_header233.1 ]
  %polly.access.mul.Packed_MemRef_call1239.1 = shl nsw i64 %polly.indvar236.1, 5
  %polly.access.add.Packed_MemRef_call1240.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.1, %polly.indvar230.1
  %polly.access.Packed_MemRef_call1241.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.1
  %_p_scalar_242.1 = load double, double* %polly.access.Packed_MemRef_call1241.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_242.1
  %182 = mul nuw nsw i64 %polly.indvar236.1, 480
  %183 = add nuw nsw i64 %182, %181
  %scevgep247.1 = getelementptr i8, i8* %call2, i64 %183
  %scevgep247248.1 = bitcast i8* %scevgep247.1 to double*
  %_p_scalar_249.1 = load double, double* %scevgep247248.1, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114.1 = fmul fast double %_p_scalar_253.1, %_p_scalar_249.1
  %184 = shl nuw nsw i64 %polly.indvar236.1, 3
  %scevgep255.1 = getelementptr i8, i8* %scevgep254.1, i64 %184
  %scevgep255256.1 = bitcast i8* %scevgep255.1 to double*
  %_p_scalar_257.1 = load double, double* %scevgep255256.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_257.1
  store double %p_add42.i118.1, double* %scevgep255256.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond804.1.not = icmp eq i64 %polly.indvar_next237.1, %indvars.iv.1
  br i1 %exitcond804.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_header233.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %exitcond805.1.not = icmp eq i64 %polly.indvar_next231.1, 28
  br i1 %exitcond805.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond806.1.not = icmp eq i64 %polly.indvar_next209.1, 80
  br i1 %exitcond806.1.not, label %polly.loop_exit207.1, label %polly.loop_header205.1

polly.loop_exit207.1:                             ; preds = %polly.loop_exit229.1
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header368.1:                           ; preds = %polly.loop_exit392, %polly.loop_exit392.1
  %indvars.iv812.1 = phi i64 [ %indvars.iv.next813.1, %polly.loop_exit392.1 ], [ 1, %polly.loop_exit392 ]
  %polly.indvar371.1 = phi i64 [ %polly.indvar_next372.1, %polly.loop_exit392.1 ], [ 0, %polly.loop_exit392 ]
  br label %polly.loop_header374.1

polly.loop_header374.1:                           ; preds = %polly.loop_header374.1, %polly.loop_header368.1
  %polly.indvar377.1 = phi i64 [ 0, %polly.loop_header368.1 ], [ %polly.indvar_next378.1, %polly.loop_header374.1 ]
  %185 = shl nuw nsw i64 %polly.indvar377.1, 8
  %scevgep810.1 = getelementptr i8, i8* %malloccall262, i64 %185
  %186 = mul nuw nsw i64 %polly.indvar377.1, 480
  %187 = add nuw nsw i64 %186, 256
  %scevgep811.1 = getelementptr i8, i8* %call1, i64 %187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(224) %scevgep810.1, i8* noundef nonnull align 8 dereferenceable(224) %scevgep811.1, i64 224, i1 false)
  %polly.indvar_next378.1 = add nuw nsw i64 %polly.indvar377.1, 1
  %exitcond814.1.not = icmp eq i64 %polly.indvar_next378.1, %indvars.iv812.1
  br i1 %exitcond814.1.not, label %polly.loop_exit376.1, label %polly.loop_header374.1

polly.loop_exit376.1:                             ; preds = %polly.loop_header374.1
  %188 = mul nuw nsw i64 %polly.indvar371.1, 480
  %scevgep406.1 = getelementptr i8, i8* %call2, i64 %188
  %189 = mul nuw nsw i64 %polly.indvar371.1, 640
  %scevgep417.1 = getelementptr i8, i8* %call, i64 %189
  %polly.access.mul.Packed_MemRef_call1263413.1 = shl nsw i64 %polly.indvar371.1, 5
  br label %polly.loop_header390.1

polly.loop_header390.1:                           ; preds = %polly.loop_exit398.1, %polly.loop_exit376.1
  %polly.indvar393.1 = phi i64 [ 0, %polly.loop_exit376.1 ], [ %polly.indvar_next394.1, %polly.loop_exit398.1 ]
  %190 = shl i64 %polly.indvar393.1, 3
  %191 = add i64 %190, 256
  %scevgep407.1 = getelementptr i8, i8* %scevgep406.1, i64 %191
  %scevgep407408.1 = bitcast i8* %scevgep407.1 to double*
  %_p_scalar_409.1 = load double, double* %scevgep407408.1, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1263414.1 = add nuw nsw i64 %polly.indvar393.1, %polly.access.mul.Packed_MemRef_call1263413.1
  %polly.access.Packed_MemRef_call1263415.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263414.1
  %_p_scalar_416.1 = load double, double* %polly.access.Packed_MemRef_call1263415.1, align 8
  br label %polly.loop_header396.1

polly.loop_header396.1:                           ; preds = %polly.loop_header396.1, %polly.loop_header390.1
  %polly.indvar399.1 = phi i64 [ 0, %polly.loop_header390.1 ], [ %polly.indvar_next400.1, %polly.loop_header396.1 ]
  %polly.access.mul.Packed_MemRef_call1263402.1 = shl nsw i64 %polly.indvar399.1, 5
  %polly.access.add.Packed_MemRef_call1263403.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.1, %polly.indvar393.1
  %polly.access.Packed_MemRef_call1263404.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.1
  %_p_scalar_405.1 = load double, double* %polly.access.Packed_MemRef_call1263404.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_409.1, %_p_scalar_405.1
  %192 = mul nuw nsw i64 %polly.indvar399.1, 480
  %193 = add nuw nsw i64 %192, %191
  %scevgep410.1 = getelementptr i8, i8* %call2, i64 %193
  %scevgep410411.1 = bitcast i8* %scevgep410.1 to double*
  %_p_scalar_412.1 = load double, double* %scevgep410411.1, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75.1 = fmul fast double %_p_scalar_416.1, %_p_scalar_412.1
  %194 = shl nuw nsw i64 %polly.indvar399.1, 3
  %scevgep418.1 = getelementptr i8, i8* %scevgep417.1, i64 %194
  %scevgep418419.1 = bitcast i8* %scevgep418.1 to double*
  %_p_scalar_420.1 = load double, double* %scevgep418419.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_420.1
  store double %p_add42.i79.1, double* %scevgep418419.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar_next400.1, %indvars.iv812.1
  br i1 %exitcond815.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_header396.1
  %polly.indvar_next394.1 = add nuw nsw i64 %polly.indvar393.1, 1
  %exitcond816.1.not = icmp eq i64 %polly.indvar_next394.1, 28
  br i1 %exitcond816.1.not, label %polly.loop_exit392.1, label %polly.loop_header390.1

polly.loop_exit392.1:                             ; preds = %polly.loop_exit398.1
  %polly.indvar_next372.1 = add nuw nsw i64 %polly.indvar371.1, 1
  %indvars.iv.next813.1 = add nuw nsw i64 %indvars.iv812.1, 1
  %exitcond817.1.not = icmp eq i64 %polly.indvar_next372.1, 80
  br i1 %exitcond817.1.not, label %polly.loop_exit370.1, label %polly.loop_header368.1

polly.loop_exit370.1:                             ; preds = %polly.loop_exit392.1
  tail call void @free(i8* nonnull %malloccall262)
  br label %kernel_syr2k.exit90

polly.loop_header531.1:                           ; preds = %polly.loop_exit555, %polly.loop_exit555.1
  %indvars.iv823.1 = phi i64 [ %indvars.iv.next824.1, %polly.loop_exit555.1 ], [ 1, %polly.loop_exit555 ]
  %polly.indvar534.1 = phi i64 [ %polly.indvar_next535.1, %polly.loop_exit555.1 ], [ 0, %polly.loop_exit555 ]
  br label %polly.loop_header537.1

polly.loop_header537.1:                           ; preds = %polly.loop_header537.1, %polly.loop_header531.1
  %polly.indvar540.1 = phi i64 [ 0, %polly.loop_header531.1 ], [ %polly.indvar_next541.1, %polly.loop_header537.1 ]
  %195 = shl nuw nsw i64 %polly.indvar540.1, 8
  %scevgep821.1 = getelementptr i8, i8* %malloccall425, i64 %195
  %196 = mul nuw nsw i64 %polly.indvar540.1, 480
  %197 = add nuw nsw i64 %196, 256
  %scevgep822.1 = getelementptr i8, i8* %call1, i64 %197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(224) %scevgep821.1, i8* noundef nonnull align 8 dereferenceable(224) %scevgep822.1, i64 224, i1 false)
  %polly.indvar_next541.1 = add nuw nsw i64 %polly.indvar540.1, 1
  %exitcond825.1.not = icmp eq i64 %polly.indvar_next541.1, %indvars.iv823.1
  br i1 %exitcond825.1.not, label %polly.loop_exit539.1, label %polly.loop_header537.1

polly.loop_exit539.1:                             ; preds = %polly.loop_header537.1
  %198 = mul nuw nsw i64 %polly.indvar534.1, 480
  %scevgep569.1 = getelementptr i8, i8* %call2, i64 %198
  %199 = mul nuw nsw i64 %polly.indvar534.1, 640
  %scevgep580.1 = getelementptr i8, i8* %call, i64 %199
  %polly.access.mul.Packed_MemRef_call1426576.1 = shl nsw i64 %polly.indvar534.1, 5
  br label %polly.loop_header553.1

polly.loop_header553.1:                           ; preds = %polly.loop_exit561.1, %polly.loop_exit539.1
  %polly.indvar556.1 = phi i64 [ 0, %polly.loop_exit539.1 ], [ %polly.indvar_next557.1, %polly.loop_exit561.1 ]
  %200 = shl i64 %polly.indvar556.1, 3
  %201 = add i64 %200, 256
  %scevgep570.1 = getelementptr i8, i8* %scevgep569.1, i64 %201
  %scevgep570571.1 = bitcast i8* %scevgep570.1 to double*
  %_p_scalar_572.1 = load double, double* %scevgep570571.1, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1426577.1 = add nuw nsw i64 %polly.indvar556.1, %polly.access.mul.Packed_MemRef_call1426576.1
  %polly.access.Packed_MemRef_call1426578.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426577.1
  %_p_scalar_579.1 = load double, double* %polly.access.Packed_MemRef_call1426578.1, align 8
  br label %polly.loop_header559.1

polly.loop_header559.1:                           ; preds = %polly.loop_header559.1, %polly.loop_header553.1
  %polly.indvar562.1 = phi i64 [ 0, %polly.loop_header553.1 ], [ %polly.indvar_next563.1, %polly.loop_header559.1 ]
  %polly.access.mul.Packed_MemRef_call1426565.1 = shl nsw i64 %polly.indvar562.1, 5
  %polly.access.add.Packed_MemRef_call1426566.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.1, %polly.indvar556.1
  %polly.access.Packed_MemRef_call1426567.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.1
  %_p_scalar_568.1 = load double, double* %polly.access.Packed_MemRef_call1426567.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_572.1, %_p_scalar_568.1
  %202 = mul nuw nsw i64 %polly.indvar562.1, 480
  %203 = add nuw nsw i64 %202, %201
  %scevgep573.1 = getelementptr i8, i8* %call2, i64 %203
  %scevgep573574.1 = bitcast i8* %scevgep573.1 to double*
  %_p_scalar_575.1 = load double, double* %scevgep573574.1, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i.1 = fmul fast double %_p_scalar_579.1, %_p_scalar_575.1
  %204 = shl nuw nsw i64 %polly.indvar562.1, 3
  %scevgep581.1 = getelementptr i8, i8* %scevgep580.1, i64 %204
  %scevgep581582.1 = bitcast i8* %scevgep581.1 to double*
  %_p_scalar_583.1 = load double, double* %scevgep581582.1, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_583.1
  store double %p_add42.i.1, double* %scevgep581582.1, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next563.1 = add nuw nsw i64 %polly.indvar562.1, 1
  %exitcond826.1.not = icmp eq i64 %polly.indvar_next563.1, %indvars.iv823.1
  br i1 %exitcond826.1.not, label %polly.loop_exit561.1, label %polly.loop_header559.1

polly.loop_exit561.1:                             ; preds = %polly.loop_header559.1
  %polly.indvar_next557.1 = add nuw nsw i64 %polly.indvar556.1, 1
  %exitcond827.1.not = icmp eq i64 %polly.indvar_next557.1, 28
  br i1 %exitcond827.1.not, label %polly.loop_exit555.1, label %polly.loop_header553.1

polly.loop_exit555.1:                             ; preds = %polly.loop_exit561.1
  %polly.indvar_next535.1 = add nuw nsw i64 %polly.indvar534.1, 1
  %indvars.iv.next824.1 = add nuw nsw i64 %indvars.iv823.1, 1
  %exitcond828.1.not = icmp eq i64 %polly.indvar_next535.1, 80
  br i1 %exitcond828.1.not, label %polly.loop_exit533.1, label %polly.loop_header531.1

polly.loop_exit533.1:                             ; preds = %polly.loop_exit555.1
  tail call void @free(i8* nonnull %malloccall425)
  br label %kernel_syr2k.exit

polly.loop_header775.1:                           ; preds = %polly.loop_exit783, %polly.loop_exit783.1
  %polly.indvar778.1 = phi i64 [ %polly.indvar_next779.1, %polly.loop_exit783.1 ], [ 0, %polly.loop_exit783 ]
  %205 = mul nuw nsw i64 %polly.indvar778.1, 480
  %206 = trunc i64 %polly.indvar778.1 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %polly.loop_header775.1
  %index1137 = phi i64 [ 0, %polly.loop_header775.1 ], [ %index.next1138, %vector.body1135 ]
  %vec.ind1141 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1 ], [ %vec.ind.next1142, %vector.body1135 ]
  %207 = add nuw nsw <4 x i64> %vec.ind1141, <i64 32, i64 32, i64 32, i64 32>
  %208 = trunc <4 x i64> %207 to <4 x i32>
  %209 = mul <4 x i32> %broadcast.splat1144, %208
  %210 = add <4 x i32> %209, <i32 1, i32 1, i32 1, i32 1>
  %211 = urem <4 x i32> %210, <i32 80, i32 80, i32 80, i32 80>
  %212 = sitofp <4 x i32> %211 to <4 x double>
  %213 = fmul fast <4 x double> %212, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %214 = extractelement <4 x i64> %207, i32 0
  %215 = shl i64 %214, 3
  %216 = add i64 %215, %205
  %217 = getelementptr i8, i8* %call1, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %213, <4 x double>* %218, align 8, !alias.scope !94, !noalias !99
  %index.next1138 = add i64 %index1137, 4
  %vec.ind.next1142 = add <4 x i64> %vec.ind1141, <i64 4, i64 4, i64 4, i64 4>
  %219 = icmp eq i64 %index.next1138, 28
  br i1 %219, label %polly.loop_exit783.1, label %vector.body1135, !llvm.loop !101

polly.loop_exit783.1:                             ; preds = %vector.body1135
  %polly.indvar_next779.1 = add nuw nsw i64 %polly.indvar778.1, 1
  %exitcond834.1.not = icmp eq i64 %polly.indvar_next779.1, 32
  br i1 %exitcond834.1.not, label %polly.loop_header775.1854, label %polly.loop_header775.1

polly.loop_header775.1854:                        ; preds = %polly.loop_exit783.1, %polly.loop_exit783.1865
  %polly.indvar778.1853 = phi i64 [ %polly.indvar_next779.1863, %polly.loop_exit783.1865 ], [ 0, %polly.loop_exit783.1 ]
  %220 = add nuw nsw i64 %polly.indvar778.1853, 32
  %221 = mul nuw nsw i64 %220, 480
  %222 = trunc i64 %220 to i32
  %broadcast.splatinsert1157 = insertelement <4 x i32> poison, i32 %222, i32 0
  %broadcast.splat1158 = shufflevector <4 x i32> %broadcast.splatinsert1157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header775.1854
  %index1149 = phi i64 [ 0, %polly.loop_header775.1854 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1155 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.1854 ], [ %vec.ind.next1156, %vector.body1147 ]
  %223 = mul <4 x i32> %vec.ind1155, %broadcast.splat1158
  %224 = add <4 x i32> %223, <i32 1, i32 1, i32 1, i32 1>
  %225 = urem <4 x i32> %224, <i32 80, i32 80, i32 80, i32 80>
  %226 = sitofp <4 x i32> %225 to <4 x double>
  %227 = fmul fast <4 x double> %226, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %228 = shl i64 %index1149, 3
  %229 = add i64 %228, %221
  %230 = getelementptr i8, i8* %call1, i64 %229
  %231 = bitcast i8* %230 to <4 x double>*
  store <4 x double> %227, <4 x double>* %231, align 8, !alias.scope !94, !noalias !99
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1156 = add <4 x i32> %vec.ind1155, <i32 4, i32 4, i32 4, i32 4>
  %232 = icmp eq i64 %index.next1150, 32
  br i1 %232, label %polly.loop_exit783.1865, label %vector.body1147, !llvm.loop !102

polly.loop_exit783.1865:                          ; preds = %vector.body1147
  %polly.indvar_next779.1863 = add nuw nsw i64 %polly.indvar778.1853, 1
  %exitcond834.1864.not = icmp eq i64 %polly.indvar_next779.1863, 32
  br i1 %exitcond834.1864.not, label %polly.loop_header775.1.1, label %polly.loop_header775.1854

polly.loop_header775.1.1:                         ; preds = %polly.loop_exit783.1865, %polly.loop_exit783.1.1
  %polly.indvar778.1.1 = phi i64 [ %polly.indvar_next779.1.1, %polly.loop_exit783.1.1 ], [ 0, %polly.loop_exit783.1865 ]
  %233 = add nuw nsw i64 %polly.indvar778.1.1, 32
  %234 = mul nuw nsw i64 %233, 480
  %235 = trunc i64 %233 to i32
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %235, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %polly.loop_header775.1.1
  %index1163 = phi i64 [ 0, %polly.loop_header775.1.1 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1167 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.1 ], [ %vec.ind.next1168, %vector.body1161 ]
  %236 = add nuw nsw <4 x i64> %vec.ind1167, <i64 32, i64 32, i64 32, i64 32>
  %237 = trunc <4 x i64> %236 to <4 x i32>
  %238 = mul <4 x i32> %broadcast.splat1170, %237
  %239 = add <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %240 = urem <4 x i32> %239, <i32 80, i32 80, i32 80, i32 80>
  %241 = sitofp <4 x i32> %240 to <4 x double>
  %242 = fmul fast <4 x double> %241, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %243 = extractelement <4 x i64> %236, i32 0
  %244 = shl i64 %243, 3
  %245 = add i64 %244, %234
  %246 = getelementptr i8, i8* %call1, i64 %245
  %247 = bitcast i8* %246 to <4 x double>*
  store <4 x double> %242, <4 x double>* %247, align 8, !alias.scope !94, !noalias !99
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1168 = add <4 x i64> %vec.ind1167, <i64 4, i64 4, i64 4, i64 4>
  %248 = icmp eq i64 %index.next1164, 28
  br i1 %248, label %polly.loop_exit783.1.1, label %vector.body1161, !llvm.loop !103

polly.loop_exit783.1.1:                           ; preds = %vector.body1161
  %polly.indvar_next779.1.1 = add nuw nsw i64 %polly.indvar778.1.1, 1
  %exitcond834.1.1.not = icmp eq i64 %polly.indvar_next779.1.1, 32
  br i1 %exitcond834.1.1.not, label %polly.loop_header775.2, label %polly.loop_header775.1.1

polly.loop_header775.2:                           ; preds = %polly.loop_exit783.1.1, %polly.loop_exit783.2
  %polly.indvar778.2 = phi i64 [ %polly.indvar_next779.2, %polly.loop_exit783.2 ], [ 0, %polly.loop_exit783.1.1 ]
  %249 = add nuw nsw i64 %polly.indvar778.2, 64
  %250 = mul nuw nsw i64 %249, 480
  %251 = trunc i64 %249 to i32
  %broadcast.splatinsert1183 = insertelement <4 x i32> poison, i32 %251, i32 0
  %broadcast.splat1184 = shufflevector <4 x i32> %broadcast.splatinsert1183, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %polly.loop_header775.2
  %index1175 = phi i64 [ 0, %polly.loop_header775.2 ], [ %index.next1176, %vector.body1173 ]
  %vec.ind1181 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.2 ], [ %vec.ind.next1182, %vector.body1173 ]
  %252 = mul <4 x i32> %vec.ind1181, %broadcast.splat1184
  %253 = add <4 x i32> %252, <i32 1, i32 1, i32 1, i32 1>
  %254 = urem <4 x i32> %253, <i32 80, i32 80, i32 80, i32 80>
  %255 = sitofp <4 x i32> %254 to <4 x double>
  %256 = fmul fast <4 x double> %255, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %257 = shl i64 %index1175, 3
  %258 = add i64 %257, %250
  %259 = getelementptr i8, i8* %call1, i64 %258
  %260 = bitcast i8* %259 to <4 x double>*
  store <4 x double> %256, <4 x double>* %260, align 8, !alias.scope !94, !noalias !99
  %index.next1176 = add i64 %index1175, 4
  %vec.ind.next1182 = add <4 x i32> %vec.ind1181, <i32 4, i32 4, i32 4, i32 4>
  %261 = icmp eq i64 %index.next1176, 32
  br i1 %261, label %polly.loop_exit783.2, label %vector.body1173, !llvm.loop !104

polly.loop_exit783.2:                             ; preds = %vector.body1173
  %polly.indvar_next779.2 = add nuw nsw i64 %polly.indvar778.2, 1
  %exitcond834.2.not = icmp eq i64 %polly.indvar_next779.2, 16
  br i1 %exitcond834.2.not, label %polly.loop_header775.1.2, label %polly.loop_header775.2

polly.loop_header775.1.2:                         ; preds = %polly.loop_exit783.2, %polly.loop_exit783.1.2
  %polly.indvar778.1.2 = phi i64 [ %polly.indvar_next779.1.2, %polly.loop_exit783.1.2 ], [ 0, %polly.loop_exit783.2 ]
  %262 = add nuw nsw i64 %polly.indvar778.1.2, 64
  %263 = mul nuw nsw i64 %262, 480
  %264 = trunc i64 %262 to i32
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %polly.loop_header775.1.2
  %index1189 = phi i64 [ 0, %polly.loop_header775.1.2 ], [ %index.next1190, %vector.body1187 ]
  %vec.ind1193 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.2 ], [ %vec.ind.next1194, %vector.body1187 ]
  %265 = add nuw nsw <4 x i64> %vec.ind1193, <i64 32, i64 32, i64 32, i64 32>
  %266 = trunc <4 x i64> %265 to <4 x i32>
  %267 = mul <4 x i32> %broadcast.splat1196, %266
  %268 = add <4 x i32> %267, <i32 1, i32 1, i32 1, i32 1>
  %269 = urem <4 x i32> %268, <i32 80, i32 80, i32 80, i32 80>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %272 = extractelement <4 x i64> %265, i32 0
  %273 = shl i64 %272, 3
  %274 = add i64 %273, %263
  %275 = getelementptr i8, i8* %call1, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %271, <4 x double>* %276, align 8, !alias.scope !94, !noalias !99
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %277 = icmp eq i64 %index.next1190, 28
  br i1 %277, label %polly.loop_exit783.1.2, label %vector.body1187, !llvm.loop !105

polly.loop_exit783.1.2:                           ; preds = %vector.body1187
  %polly.indvar_next779.1.2 = add nuw nsw i64 %polly.indvar778.1.2, 1
  %exitcond834.1.2.not = icmp eq i64 %polly.indvar_next779.1.2, 16
  br i1 %exitcond834.1.2.not, label %init_array.exit, label %polly.loop_header775.1.2

polly.loop_header749.1:                           ; preds = %polly.loop_exit757, %polly.loop_exit757.1
  %polly.indvar752.1 = phi i64 [ %polly.indvar_next753.1, %polly.loop_exit757.1 ], [ 0, %polly.loop_exit757 ]
  %278 = mul nuw nsw i64 %polly.indvar752.1, 480
  %279 = trunc i64 %polly.indvar752.1 to i32
  %broadcast.splatinsert1065 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1066 = shufflevector <4 x i32> %broadcast.splatinsert1065, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %polly.loop_header749.1
  %index1059 = phi i64 [ 0, %polly.loop_header749.1 ], [ %index.next1060, %vector.body1057 ]
  %vec.ind1063 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1 ], [ %vec.ind.next1064, %vector.body1057 ]
  %280 = add nuw nsw <4 x i64> %vec.ind1063, <i64 32, i64 32, i64 32, i64 32>
  %281 = trunc <4 x i64> %280 to <4 x i32>
  %282 = mul <4 x i32> %broadcast.splat1066, %281
  %283 = add <4 x i32> %282, <i32 2, i32 2, i32 2, i32 2>
  %284 = urem <4 x i32> %283, <i32 60, i32 60, i32 60, i32 60>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %287 = extractelement <4 x i64> %280, i32 0
  %288 = shl i64 %287, 3
  %289 = add i64 %288, %278
  %290 = getelementptr i8, i8* %call2, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %286, <4 x double>* %291, align 8, !alias.scope !95, !noalias !97
  %index.next1060 = add i64 %index1059, 4
  %vec.ind.next1064 = add <4 x i64> %vec.ind1063, <i64 4, i64 4, i64 4, i64 4>
  %292 = icmp eq i64 %index.next1060, 28
  br i1 %292, label %polly.loop_exit757.1, label %vector.body1057, !llvm.loop !106

polly.loop_exit757.1:                             ; preds = %vector.body1057
  %polly.indvar_next753.1 = add nuw nsw i64 %polly.indvar752.1, 1
  %exitcond840.1.not = icmp eq i64 %polly.indvar_next753.1, 32
  br i1 %exitcond840.1.not, label %polly.loop_header749.1868, label %polly.loop_header749.1

polly.loop_header749.1868:                        ; preds = %polly.loop_exit757.1, %polly.loop_exit757.1879
  %polly.indvar752.1867 = phi i64 [ %polly.indvar_next753.1877, %polly.loop_exit757.1879 ], [ 0, %polly.loop_exit757.1 ]
  %293 = add nuw nsw i64 %polly.indvar752.1867, 32
  %294 = mul nuw nsw i64 %293, 480
  %295 = trunc i64 %293 to i32
  %broadcast.splatinsert1079 = insertelement <4 x i32> poison, i32 %295, i32 0
  %broadcast.splat1080 = shufflevector <4 x i32> %broadcast.splatinsert1079, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %polly.loop_header749.1868
  %index1071 = phi i64 [ 0, %polly.loop_header749.1868 ], [ %index.next1072, %vector.body1069 ]
  %vec.ind1077 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.1868 ], [ %vec.ind.next1078, %vector.body1069 ]
  %296 = mul <4 x i32> %vec.ind1077, %broadcast.splat1080
  %297 = add <4 x i32> %296, <i32 2, i32 2, i32 2, i32 2>
  %298 = urem <4 x i32> %297, <i32 60, i32 60, i32 60, i32 60>
  %299 = sitofp <4 x i32> %298 to <4 x double>
  %300 = fmul fast <4 x double> %299, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %301 = shl i64 %index1071, 3
  %302 = add i64 %301, %294
  %303 = getelementptr i8, i8* %call2, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %300, <4 x double>* %304, align 8, !alias.scope !95, !noalias !97
  %index.next1072 = add i64 %index1071, 4
  %vec.ind.next1078 = add <4 x i32> %vec.ind1077, <i32 4, i32 4, i32 4, i32 4>
  %305 = icmp eq i64 %index.next1072, 32
  br i1 %305, label %polly.loop_exit757.1879, label %vector.body1069, !llvm.loop !107

polly.loop_exit757.1879:                          ; preds = %vector.body1069
  %polly.indvar_next753.1877 = add nuw nsw i64 %polly.indvar752.1867, 1
  %exitcond840.1878.not = icmp eq i64 %polly.indvar_next753.1877, 32
  br i1 %exitcond840.1878.not, label %polly.loop_header749.1.1, label %polly.loop_header749.1868

polly.loop_header749.1.1:                         ; preds = %polly.loop_exit757.1879, %polly.loop_exit757.1.1
  %polly.indvar752.1.1 = phi i64 [ %polly.indvar_next753.1.1, %polly.loop_exit757.1.1 ], [ 0, %polly.loop_exit757.1879 ]
  %306 = add nuw nsw i64 %polly.indvar752.1.1, 32
  %307 = mul nuw nsw i64 %306, 480
  %308 = trunc i64 %306 to i32
  %broadcast.splatinsert1091 = insertelement <4 x i32> poison, i32 %308, i32 0
  %broadcast.splat1092 = shufflevector <4 x i32> %broadcast.splatinsert1091, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %polly.loop_header749.1.1
  %index1085 = phi i64 [ 0, %polly.loop_header749.1.1 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1089 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.1 ], [ %vec.ind.next1090, %vector.body1083 ]
  %309 = add nuw nsw <4 x i64> %vec.ind1089, <i64 32, i64 32, i64 32, i64 32>
  %310 = trunc <4 x i64> %309 to <4 x i32>
  %311 = mul <4 x i32> %broadcast.splat1092, %310
  %312 = add <4 x i32> %311, <i32 2, i32 2, i32 2, i32 2>
  %313 = urem <4 x i32> %312, <i32 60, i32 60, i32 60, i32 60>
  %314 = sitofp <4 x i32> %313 to <4 x double>
  %315 = fmul fast <4 x double> %314, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %316 = extractelement <4 x i64> %309, i32 0
  %317 = shl i64 %316, 3
  %318 = add i64 %317, %307
  %319 = getelementptr i8, i8* %call2, i64 %318
  %320 = bitcast i8* %319 to <4 x double>*
  store <4 x double> %315, <4 x double>* %320, align 8, !alias.scope !95, !noalias !97
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1090 = add <4 x i64> %vec.ind1089, <i64 4, i64 4, i64 4, i64 4>
  %321 = icmp eq i64 %index.next1086, 28
  br i1 %321, label %polly.loop_exit757.1.1, label %vector.body1083, !llvm.loop !108

polly.loop_exit757.1.1:                           ; preds = %vector.body1083
  %polly.indvar_next753.1.1 = add nuw nsw i64 %polly.indvar752.1.1, 1
  %exitcond840.1.1.not = icmp eq i64 %polly.indvar_next753.1.1, 32
  br i1 %exitcond840.1.1.not, label %polly.loop_header749.2, label %polly.loop_header749.1.1

polly.loop_header749.2:                           ; preds = %polly.loop_exit757.1.1, %polly.loop_exit757.2
  %polly.indvar752.2 = phi i64 [ %polly.indvar_next753.2, %polly.loop_exit757.2 ], [ 0, %polly.loop_exit757.1.1 ]
  %322 = add nuw nsw i64 %polly.indvar752.2, 64
  %323 = mul nuw nsw i64 %322, 480
  %324 = trunc i64 %322 to i32
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %polly.loop_header749.2
  %index1097 = phi i64 [ 0, %polly.loop_header749.2 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1103 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.2 ], [ %vec.ind.next1104, %vector.body1095 ]
  %325 = mul <4 x i32> %vec.ind1103, %broadcast.splat1106
  %326 = add <4 x i32> %325, <i32 2, i32 2, i32 2, i32 2>
  %327 = urem <4 x i32> %326, <i32 60, i32 60, i32 60, i32 60>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %330 = shl i64 %index1097, 3
  %331 = add i64 %330, %323
  %332 = getelementptr i8, i8* %call2, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %329, <4 x double>* %333, align 8, !alias.scope !95, !noalias !97
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1104 = add <4 x i32> %vec.ind1103, <i32 4, i32 4, i32 4, i32 4>
  %334 = icmp eq i64 %index.next1098, 32
  br i1 %334, label %polly.loop_exit757.2, label %vector.body1095, !llvm.loop !109

polly.loop_exit757.2:                             ; preds = %vector.body1095
  %polly.indvar_next753.2 = add nuw nsw i64 %polly.indvar752.2, 1
  %exitcond840.2.not = icmp eq i64 %polly.indvar_next753.2, 16
  br i1 %exitcond840.2.not, label %polly.loop_header749.1.2, label %polly.loop_header749.2

polly.loop_header749.1.2:                         ; preds = %polly.loop_exit757.2, %polly.loop_exit757.1.2
  %polly.indvar752.1.2 = phi i64 [ %polly.indvar_next753.1.2, %polly.loop_exit757.1.2 ], [ 0, %polly.loop_exit757.2 ]
  %335 = add nuw nsw i64 %polly.indvar752.1.2, 64
  %336 = mul nuw nsw i64 %335, 480
  %337 = trunc i64 %335 to i32
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %337, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %polly.loop_header749.1.2
  %index1111 = phi i64 [ 0, %polly.loop_header749.1.2 ], [ %index.next1112, %vector.body1109 ]
  %vec.ind1115 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.2 ], [ %vec.ind.next1116, %vector.body1109 ]
  %338 = add nuw nsw <4 x i64> %vec.ind1115, <i64 32, i64 32, i64 32, i64 32>
  %339 = trunc <4 x i64> %338 to <4 x i32>
  %340 = mul <4 x i32> %broadcast.splat1118, %339
  %341 = add <4 x i32> %340, <i32 2, i32 2, i32 2, i32 2>
  %342 = urem <4 x i32> %341, <i32 60, i32 60, i32 60, i32 60>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = extractelement <4 x i64> %338, i32 0
  %346 = shl i64 %345, 3
  %347 = add i64 %346, %336
  %348 = getelementptr i8, i8* %call2, i64 %347
  %349 = bitcast i8* %348 to <4 x double>*
  store <4 x double> %344, <4 x double>* %349, align 8, !alias.scope !95, !noalias !97
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1116 = add <4 x i64> %vec.ind1115, <i64 4, i64 4, i64 4, i64 4>
  %350 = icmp eq i64 %index.next1112, 28
  br i1 %350, label %polly.loop_exit757.1.2, label %vector.body1109, !llvm.loop !110

polly.loop_exit757.1.2:                           ; preds = %vector.body1109
  %polly.indvar_next753.1.2 = add nuw nsw i64 %polly.indvar752.1.2, 1
  %exitcond840.1.2.not = icmp eq i64 %polly.indvar_next753.1.2, 16
  br i1 %exitcond840.1.2.not, label %polly.loop_header775, label %polly.loop_header749.1.2

polly.loop_header722.1:                           ; preds = %polly.loop_exit730, %polly.loop_exit730.1
  %polly.indvar725.1 = phi i64 [ %polly.indvar_next726.1, %polly.loop_exit730.1 ], [ 0, %polly.loop_exit730 ]
  %351 = mul nuw nsw i64 %polly.indvar725.1, 640
  %352 = trunc i64 %polly.indvar725.1 to i32
  %broadcast.splatinsert951 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat952 = shufflevector <4 x i32> %broadcast.splatinsert951, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body943

vector.body943:                                   ; preds = %vector.body943, %polly.loop_header722.1
  %index945 = phi i64 [ 0, %polly.loop_header722.1 ], [ %index.next946, %vector.body943 ]
  %vec.ind949 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1 ], [ %vec.ind.next950, %vector.body943 ]
  %353 = add nuw nsw <4 x i64> %vec.ind949, <i64 32, i64 32, i64 32, i64 32>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat952, %354
  %356 = add <4 x i32> %355, <i32 3, i32 3, i32 3, i32 3>
  %357 = urem <4 x i32> %356, <i32 80, i32 80, i32 80, i32 80>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add nuw nsw i64 %361, %351
  %363 = getelementptr i8, i8* %call, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !91, !noalias !93
  %index.next946 = add i64 %index945, 4
  %vec.ind.next950 = add <4 x i64> %vec.ind949, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next946, 32
  br i1 %365, label %polly.loop_exit730.1, label %vector.body943, !llvm.loop !111

polly.loop_exit730.1:                             ; preds = %vector.body943
  %polly.indvar_next726.1 = add nuw nsw i64 %polly.indvar725.1, 1
  %exitcond849.1.not = icmp eq i64 %polly.indvar_next726.1, 32
  br i1 %exitcond849.1.not, label %polly.loop_header722.2, label %polly.loop_header722.1

polly.loop_header722.2:                           ; preds = %polly.loop_exit730.1, %polly.loop_exit730.2
  %polly.indvar725.2 = phi i64 [ %polly.indvar_next726.2, %polly.loop_exit730.2 ], [ 0, %polly.loop_exit730.1 ]
  %366 = mul nuw nsw i64 %polly.indvar725.2, 640
  %367 = trunc i64 %polly.indvar725.2 to i32
  %broadcast.splatinsert963 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat964 = shufflevector <4 x i32> %broadcast.splatinsert963, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body955

vector.body955:                                   ; preds = %vector.body955, %polly.loop_header722.2
  %index957 = phi i64 [ 0, %polly.loop_header722.2 ], [ %index.next958, %vector.body955 ]
  %vec.ind961 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2 ], [ %vec.ind.next962, %vector.body955 ]
  %368 = add nuw nsw <4 x i64> %vec.ind961, <i64 64, i64 64, i64 64, i64 64>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat964, %369
  %371 = add <4 x i32> %370, <i32 3, i32 3, i32 3, i32 3>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add nuw nsw i64 %376, %366
  %378 = getelementptr i8, i8* %call, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !91, !noalias !93
  %index.next958 = add i64 %index957, 4
  %vec.ind.next962 = add <4 x i64> %vec.ind961, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next958, 16
  br i1 %380, label %polly.loop_exit730.2, label %vector.body955, !llvm.loop !112

polly.loop_exit730.2:                             ; preds = %vector.body955
  %polly.indvar_next726.2 = add nuw nsw i64 %polly.indvar725.2, 1
  %exitcond849.2.not = icmp eq i64 %polly.indvar_next726.2, 32
  br i1 %exitcond849.2.not, label %polly.loop_header722.1882, label %polly.loop_header722.2

polly.loop_header722.1882:                        ; preds = %polly.loop_exit730.2, %polly.loop_exit730.1893
  %polly.indvar725.1881 = phi i64 [ %polly.indvar_next726.1891, %polly.loop_exit730.1893 ], [ 0, %polly.loop_exit730.2 ]
  %381 = add nuw nsw i64 %polly.indvar725.1881, 32
  %382 = mul nuw nsw i64 %381, 640
  %383 = trunc i64 %381 to i32
  %broadcast.splatinsert977 = insertelement <4 x i32> poison, i32 %383, i32 0
  %broadcast.splat978 = shufflevector <4 x i32> %broadcast.splatinsert977, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %polly.loop_header722.1882
  %index969 = phi i64 [ 0, %polly.loop_header722.1882 ], [ %index.next970, %vector.body967 ]
  %vec.ind975 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.1882 ], [ %vec.ind.next976, %vector.body967 ]
  %384 = mul <4 x i32> %vec.ind975, %broadcast.splat978
  %385 = add <4 x i32> %384, <i32 3, i32 3, i32 3, i32 3>
  %386 = urem <4 x i32> %385, <i32 80, i32 80, i32 80, i32 80>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %389 = shl i64 %index969, 3
  %390 = add nuw nsw i64 %389, %382
  %391 = getelementptr i8, i8* %call, i64 %390
  %392 = bitcast i8* %391 to <4 x double>*
  store <4 x double> %388, <4 x double>* %392, align 8, !alias.scope !91, !noalias !93
  %index.next970 = add i64 %index969, 4
  %vec.ind.next976 = add <4 x i32> %vec.ind975, <i32 4, i32 4, i32 4, i32 4>
  %393 = icmp eq i64 %index.next970, 32
  br i1 %393, label %polly.loop_exit730.1893, label %vector.body967, !llvm.loop !113

polly.loop_exit730.1893:                          ; preds = %vector.body967
  %polly.indvar_next726.1891 = add nuw nsw i64 %polly.indvar725.1881, 1
  %exitcond849.1892.not = icmp eq i64 %polly.indvar_next726.1891, 32
  br i1 %exitcond849.1892.not, label %polly.loop_header722.1.1, label %polly.loop_header722.1882

polly.loop_header722.1.1:                         ; preds = %polly.loop_exit730.1893, %polly.loop_exit730.1.1
  %polly.indvar725.1.1 = phi i64 [ %polly.indvar_next726.1.1, %polly.loop_exit730.1.1 ], [ 0, %polly.loop_exit730.1893 ]
  %394 = add nuw nsw i64 %polly.indvar725.1.1, 32
  %395 = mul nuw nsw i64 %394, 640
  %396 = trunc i64 %394 to i32
  %broadcast.splatinsert989 = insertelement <4 x i32> poison, i32 %396, i32 0
  %broadcast.splat990 = shufflevector <4 x i32> %broadcast.splatinsert989, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %polly.loop_header722.1.1
  %index983 = phi i64 [ 0, %polly.loop_header722.1.1 ], [ %index.next984, %vector.body981 ]
  %vec.ind987 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.1 ], [ %vec.ind.next988, %vector.body981 ]
  %397 = add nuw nsw <4 x i64> %vec.ind987, <i64 32, i64 32, i64 32, i64 32>
  %398 = trunc <4 x i64> %397 to <4 x i32>
  %399 = mul <4 x i32> %broadcast.splat990, %398
  %400 = add <4 x i32> %399, <i32 3, i32 3, i32 3, i32 3>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = extractelement <4 x i64> %397, i32 0
  %405 = shl i64 %404, 3
  %406 = add nuw nsw i64 %405, %395
  %407 = getelementptr i8, i8* %call, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %403, <4 x double>* %408, align 8, !alias.scope !91, !noalias !93
  %index.next984 = add i64 %index983, 4
  %vec.ind.next988 = add <4 x i64> %vec.ind987, <i64 4, i64 4, i64 4, i64 4>
  %409 = icmp eq i64 %index.next984, 32
  br i1 %409, label %polly.loop_exit730.1.1, label %vector.body981, !llvm.loop !114

polly.loop_exit730.1.1:                           ; preds = %vector.body981
  %polly.indvar_next726.1.1 = add nuw nsw i64 %polly.indvar725.1.1, 1
  %exitcond849.1.1.not = icmp eq i64 %polly.indvar_next726.1.1, 32
  br i1 %exitcond849.1.1.not, label %polly.loop_header722.2.1, label %polly.loop_header722.1.1

polly.loop_header722.2.1:                         ; preds = %polly.loop_exit730.1.1, %polly.loop_exit730.2.1
  %polly.indvar725.2.1 = phi i64 [ %polly.indvar_next726.2.1, %polly.loop_exit730.2.1 ], [ 0, %polly.loop_exit730.1.1 ]
  %410 = add nuw nsw i64 %polly.indvar725.2.1, 32
  %411 = mul nuw nsw i64 %410, 640
  %412 = trunc i64 %410 to i32
  %broadcast.splatinsert1001 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1002 = shufflevector <4 x i32> %broadcast.splatinsert1001, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body993

vector.body993:                                   ; preds = %vector.body993, %polly.loop_header722.2.1
  %index995 = phi i64 [ 0, %polly.loop_header722.2.1 ], [ %index.next996, %vector.body993 ]
  %vec.ind999 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.1 ], [ %vec.ind.next1000, %vector.body993 ]
  %413 = add nuw nsw <4 x i64> %vec.ind999, <i64 64, i64 64, i64 64, i64 64>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1002, %414
  %416 = add <4 x i32> %415, <i32 3, i32 3, i32 3, i32 3>
  %417 = urem <4 x i32> %416, <i32 80, i32 80, i32 80, i32 80>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add nuw nsw i64 %421, %411
  %423 = getelementptr i8, i8* %call, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !91, !noalias !93
  %index.next996 = add i64 %index995, 4
  %vec.ind.next1000 = add <4 x i64> %vec.ind999, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next996, 16
  br i1 %425, label %polly.loop_exit730.2.1, label %vector.body993, !llvm.loop !115

polly.loop_exit730.2.1:                           ; preds = %vector.body993
  %polly.indvar_next726.2.1 = add nuw nsw i64 %polly.indvar725.2.1, 1
  %exitcond849.2.1.not = icmp eq i64 %polly.indvar_next726.2.1, 32
  br i1 %exitcond849.2.1.not, label %polly.loop_header722.2896, label %polly.loop_header722.2.1

polly.loop_header722.2896:                        ; preds = %polly.loop_exit730.2.1, %polly.loop_exit730.2907
  %polly.indvar725.2895 = phi i64 [ %polly.indvar_next726.2905, %polly.loop_exit730.2907 ], [ 0, %polly.loop_exit730.2.1 ]
  %426 = add nuw nsw i64 %polly.indvar725.2895, 64
  %427 = mul nuw nsw i64 %426, 640
  %428 = trunc i64 %426 to i32
  %broadcast.splatinsert1015 = insertelement <4 x i32> poison, i32 %428, i32 0
  %broadcast.splat1016 = shufflevector <4 x i32> %broadcast.splatinsert1015, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1005

vector.body1005:                                  ; preds = %vector.body1005, %polly.loop_header722.2896
  %index1007 = phi i64 [ 0, %polly.loop_header722.2896 ], [ %index.next1008, %vector.body1005 ]
  %vec.ind1013 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.2896 ], [ %vec.ind.next1014, %vector.body1005 ]
  %429 = mul <4 x i32> %vec.ind1013, %broadcast.splat1016
  %430 = add <4 x i32> %429, <i32 3, i32 3, i32 3, i32 3>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %434 = shl i64 %index1007, 3
  %435 = add nuw nsw i64 %434, %427
  %436 = getelementptr i8, i8* %call, i64 %435
  %437 = bitcast i8* %436 to <4 x double>*
  store <4 x double> %433, <4 x double>* %437, align 8, !alias.scope !91, !noalias !93
  %index.next1008 = add i64 %index1007, 4
  %vec.ind.next1014 = add <4 x i32> %vec.ind1013, <i32 4, i32 4, i32 4, i32 4>
  %438 = icmp eq i64 %index.next1008, 32
  br i1 %438, label %polly.loop_exit730.2907, label %vector.body1005, !llvm.loop !116

polly.loop_exit730.2907:                          ; preds = %vector.body1005
  %polly.indvar_next726.2905 = add nuw nsw i64 %polly.indvar725.2895, 1
  %exitcond849.2906.not = icmp eq i64 %polly.indvar_next726.2905, 16
  br i1 %exitcond849.2906.not, label %polly.loop_header722.1.2, label %polly.loop_header722.2896

polly.loop_header722.1.2:                         ; preds = %polly.loop_exit730.2907, %polly.loop_exit730.1.2
  %polly.indvar725.1.2 = phi i64 [ %polly.indvar_next726.1.2, %polly.loop_exit730.1.2 ], [ 0, %polly.loop_exit730.2907 ]
  %439 = add nuw nsw i64 %polly.indvar725.1.2, 64
  %440 = mul nuw nsw i64 %439, 640
  %441 = trunc i64 %439 to i32
  %broadcast.splatinsert1027 = insertelement <4 x i32> poison, i32 %441, i32 0
  %broadcast.splat1028 = shufflevector <4 x i32> %broadcast.splatinsert1027, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %polly.loop_header722.1.2
  %index1021 = phi i64 [ 0, %polly.loop_header722.1.2 ], [ %index.next1022, %vector.body1019 ]
  %vec.ind1025 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.2 ], [ %vec.ind.next1026, %vector.body1019 ]
  %442 = add nuw nsw <4 x i64> %vec.ind1025, <i64 32, i64 32, i64 32, i64 32>
  %443 = trunc <4 x i64> %442 to <4 x i32>
  %444 = mul <4 x i32> %broadcast.splat1028, %443
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = extractelement <4 x i64> %442, i32 0
  %450 = shl i64 %449, 3
  %451 = add nuw nsw i64 %450, %440
  %452 = getelementptr i8, i8* %call, i64 %451
  %453 = bitcast i8* %452 to <4 x double>*
  store <4 x double> %448, <4 x double>* %453, align 8, !alias.scope !91, !noalias !93
  %index.next1022 = add i64 %index1021, 4
  %vec.ind.next1026 = add <4 x i64> %vec.ind1025, <i64 4, i64 4, i64 4, i64 4>
  %454 = icmp eq i64 %index.next1022, 32
  br i1 %454, label %polly.loop_exit730.1.2, label %vector.body1019, !llvm.loop !117

polly.loop_exit730.1.2:                           ; preds = %vector.body1019
  %polly.indvar_next726.1.2 = add nuw nsw i64 %polly.indvar725.1.2, 1
  %exitcond849.1.2.not = icmp eq i64 %polly.indvar_next726.1.2, 16
  br i1 %exitcond849.1.2.not, label %polly.loop_header722.2.2, label %polly.loop_header722.1.2

polly.loop_header722.2.2:                         ; preds = %polly.loop_exit730.1.2, %polly.loop_exit730.2.2
  %polly.indvar725.2.2 = phi i64 [ %polly.indvar_next726.2.2, %polly.loop_exit730.2.2 ], [ 0, %polly.loop_exit730.1.2 ]
  %455 = add nuw nsw i64 %polly.indvar725.2.2, 64
  %456 = mul nuw nsw i64 %455, 640
  %457 = trunc i64 %455 to i32
  %broadcast.splatinsert1039 = insertelement <4 x i32> poison, i32 %457, i32 0
  %broadcast.splat1040 = shufflevector <4 x i32> %broadcast.splatinsert1039, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %polly.loop_header722.2.2
  %index1033 = phi i64 [ 0, %polly.loop_header722.2.2 ], [ %index.next1034, %vector.body1031 ]
  %vec.ind1037 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.2 ], [ %vec.ind.next1038, %vector.body1031 ]
  %458 = add nuw nsw <4 x i64> %vec.ind1037, <i64 64, i64 64, i64 64, i64 64>
  %459 = trunc <4 x i64> %458 to <4 x i32>
  %460 = mul <4 x i32> %broadcast.splat1040, %459
  %461 = add <4 x i32> %460, <i32 3, i32 3, i32 3, i32 3>
  %462 = urem <4 x i32> %461, <i32 80, i32 80, i32 80, i32 80>
  %463 = sitofp <4 x i32> %462 to <4 x double>
  %464 = fmul fast <4 x double> %463, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %465 = extractelement <4 x i64> %458, i32 0
  %466 = shl i64 %465, 3
  %467 = add nuw nsw i64 %466, %456
  %468 = getelementptr i8, i8* %call, i64 %467
  %469 = bitcast i8* %468 to <4 x double>*
  store <4 x double> %464, <4 x double>* %469, align 8, !alias.scope !91, !noalias !93
  %index.next1034 = add i64 %index1033, 4
  %vec.ind.next1038 = add <4 x i64> %vec.ind1037, <i64 4, i64 4, i64 4, i64 4>
  %470 = icmp eq i64 %index.next1034, 16
  br i1 %470, label %polly.loop_exit730.2.2, label %vector.body1031, !llvm.loop !118

polly.loop_exit730.2.2:                           ; preds = %vector.body1031
  %polly.indvar_next726.2.2 = add nuw nsw i64 %polly.indvar725.2.2, 1
  %exitcond849.2.2.not = icmp eq i64 %polly.indvar_next726.2.2, 16
  br i1 %exitcond849.2.2.not, label %polly.loop_header749, label %polly.loop_header722.2.2
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
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 32}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !48, !49, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 100}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.id", !"i1"}
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
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !71, !13}
!81 = !{!73, !76, !78}
!82 = distinct !{!82, !83, !"polly.alias.scope.MemRef_call"}
!83 = distinct !{!83, !"polly.alias.scope.domain"}
!84 = !{!85, !86, !87}
!85 = distinct !{!85, !83, !"polly.alias.scope.MemRef_call1"}
!86 = distinct !{!86, !83, !"polly.alias.scope.MemRef_call2"}
!87 = distinct !{!87, !83, !"polly.alias.scope.Packed_MemRef_call1"}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !71, !13}
!90 = !{!82, !85, !87}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !13}
!97 = !{!94, !91}
!98 = distinct !{!98, !13}
!99 = !{!95, !91}
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
!118 = distinct !{!118, !13}
