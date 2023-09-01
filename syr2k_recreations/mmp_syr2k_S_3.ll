; ModuleID = 'syr2k_recreations//mmp_syr2k_S_3.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_3.c"
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
  br i1 %57, label %middle.block1217, label %vector.body1219, !llvm.loop !60

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  br i1 %68, label %middle.block1243, label %vector.body1245, !llvm.loop !62

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.4
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
  %wide.load1268 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1268, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1265 = add i64 %index1264, 4
  %95 = icmp eq i64 %index.next1265, %n.vec1263
  br i1 %95, label %middle.block1255, label %vector.body1257, !llvm.loop !74

middle.block1255:                                 ; preds = %vector.body1257
  %cmp.n1267 = icmp eq i64 %88, %n.vec1263
  br i1 %cmp.n1267, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1255
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1263, %middle.block1255 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1255
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1259 = add i64 %indvar1258, 1
  br i1 %exitcond802.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep798.1 = getelementptr i8, i8* %malloccall, i64 480
  %scevgep799.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.1, i64 480, i1 false)
  %scevgep798.2 = getelementptr i8, i8* %malloccall, i64 960
  %scevgep799.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.2, i64 480, i1 false)
  %scevgep798.3 = getelementptr i8, i8* %malloccall, i64 1440
  %scevgep799.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.3, i64 480, i1 false)
  %scevgep798.4 = getelementptr i8, i8* %malloccall, i64 1920
  %scevgep799.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.4, i64 480, i1 false)
  %scevgep798.5 = getelementptr i8, i8* %malloccall, i64 2400
  %scevgep799.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.5, i64 480, i1 false)
  %scevgep798.6 = getelementptr i8, i8* %malloccall, i64 2880
  %scevgep799.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.6, i64 480, i1 false)
  %scevgep798.7 = getelementptr i8, i8* %malloccall, i64 3360
  %scevgep799.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.7, i64 480, i1 false)
  %scevgep798.8 = getelementptr i8, i8* %malloccall, i64 3840
  %scevgep799.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.8, i64 480, i1 false)
  %scevgep798.9 = getelementptr i8, i8* %malloccall, i64 4320
  %scevgep799.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.9, i64 480, i1 false)
  %scevgep798.10 = getelementptr i8, i8* %malloccall, i64 4800
  %scevgep799.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.10, i64 480, i1 false)
  %scevgep798.11 = getelementptr i8, i8* %malloccall, i64 5280
  %scevgep799.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.11, i64 480, i1 false)
  %scevgep798.12 = getelementptr i8, i8* %malloccall, i64 5760
  %scevgep799.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.12, i64 480, i1 false)
  %scevgep798.13 = getelementptr i8, i8* %malloccall, i64 6240
  %scevgep799.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.13, i64 480, i1 false)
  %scevgep798.14 = getelementptr i8, i8* %malloccall, i64 6720
  %scevgep799.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.14, i64 480, i1 false)
  %scevgep798.15 = getelementptr i8, i8* %malloccall, i64 7200
  %scevgep799.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.15, i64 480, i1 false)
  %scevgep798.16 = getelementptr i8, i8* %malloccall, i64 7680
  %scevgep799.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.16, i64 480, i1 false)
  %scevgep798.17 = getelementptr i8, i8* %malloccall, i64 8160
  %scevgep799.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.17, i64 480, i1 false)
  %scevgep798.18 = getelementptr i8, i8* %malloccall, i64 8640
  %scevgep799.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.18, i64 480, i1 false)
  %scevgep798.19 = getelementptr i8, i8* %malloccall, i64 9120
  %scevgep799.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.19, i64 480, i1 false)
  %scevgep798.20 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep799.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.20, i64 480, i1 false)
  %scevgep798.21 = getelementptr i8, i8* %malloccall, i64 10080
  %scevgep799.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.21, i64 480, i1 false)
  %scevgep798.22 = getelementptr i8, i8* %malloccall, i64 10560
  %scevgep799.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.22, i64 480, i1 false)
  %scevgep798.23 = getelementptr i8, i8* %malloccall, i64 11040
  %scevgep799.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.23, i64 480, i1 false)
  %scevgep798.24 = getelementptr i8, i8* %malloccall, i64 11520
  %scevgep799.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.24, i64 480, i1 false)
  %scevgep798.25 = getelementptr i8, i8* %malloccall, i64 12000
  %scevgep799.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.25, i64 480, i1 false)
  %scevgep798.26 = getelementptr i8, i8* %malloccall, i64 12480
  %scevgep799.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.26, i64 480, i1 false)
  %scevgep798.27 = getelementptr i8, i8* %malloccall, i64 12960
  %scevgep799.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.27, i64 480, i1 false)
  %scevgep798.28 = getelementptr i8, i8* %malloccall, i64 13440
  %scevgep799.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.28, i64 480, i1 false)
  %scevgep798.29 = getelementptr i8, i8* %malloccall, i64 13920
  %scevgep799.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.29, i64 480, i1 false)
  %scevgep798.30 = getelementptr i8, i8* %malloccall, i64 14400
  %scevgep799.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.30, i64 480, i1 false)
  %scevgep798.31 = getelementptr i8, i8* %malloccall, i64 14880
  %scevgep799.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.31, i64 480, i1 false)
  %scevgep798.32 = getelementptr i8, i8* %malloccall, i64 15360
  %scevgep799.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.32, i64 480, i1 false)
  %scevgep798.33 = getelementptr i8, i8* %malloccall, i64 15840
  %scevgep799.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.33, i64 480, i1 false)
  %scevgep798.34 = getelementptr i8, i8* %malloccall, i64 16320
  %scevgep799.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.34, i64 480, i1 false)
  %scevgep798.35 = getelementptr i8, i8* %malloccall, i64 16800
  %scevgep799.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.35, i64 480, i1 false)
  %scevgep798.36 = getelementptr i8, i8* %malloccall, i64 17280
  %scevgep799.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.36, i64 480, i1 false)
  %scevgep798.37 = getelementptr i8, i8* %malloccall, i64 17760
  %scevgep799.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.37, i64 480, i1 false)
  %scevgep798.38 = getelementptr i8, i8* %malloccall, i64 18240
  %scevgep799.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.38, i64 480, i1 false)
  %scevgep798.39 = getelementptr i8, i8* %malloccall, i64 18720
  %scevgep799.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.39, i64 480, i1 false)
  %scevgep798.40 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep799.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.40, i64 480, i1 false)
  %scevgep798.41 = getelementptr i8, i8* %malloccall, i64 19680
  %scevgep799.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.41, i64 480, i1 false)
  %scevgep798.42 = getelementptr i8, i8* %malloccall, i64 20160
  %scevgep799.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.42, i64 480, i1 false)
  %scevgep798.43 = getelementptr i8, i8* %malloccall, i64 20640
  %scevgep799.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.43, i64 480, i1 false)
  %scevgep798.44 = getelementptr i8, i8* %malloccall, i64 21120
  %scevgep799.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.44, i64 480, i1 false)
  %scevgep798.45 = getelementptr i8, i8* %malloccall, i64 21600
  %scevgep799.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.45, i64 480, i1 false)
  %scevgep798.46 = getelementptr i8, i8* %malloccall, i64 22080
  %scevgep799.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.46, i64 480, i1 false)
  %scevgep798.47 = getelementptr i8, i8* %malloccall, i64 22560
  %scevgep799.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.47, i64 480, i1 false)
  %scevgep798.48 = getelementptr i8, i8* %malloccall, i64 23040
  %scevgep799.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.48, i64 480, i1 false)
  %scevgep798.49 = getelementptr i8, i8* %malloccall, i64 23520
  %scevgep799.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.49, i64 480, i1 false)
  %scevgep798.50 = getelementptr i8, i8* %malloccall, i64 24000
  %scevgep799.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.50, i64 480, i1 false)
  %scevgep798.51 = getelementptr i8, i8* %malloccall, i64 24480
  %scevgep799.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.51, i64 480, i1 false)
  %scevgep798.52 = getelementptr i8, i8* %malloccall, i64 24960
  %scevgep799.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.52, i64 480, i1 false)
  %scevgep798.53 = getelementptr i8, i8* %malloccall, i64 25440
  %scevgep799.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.53, i64 480, i1 false)
  %scevgep798.54 = getelementptr i8, i8* %malloccall, i64 25920
  %scevgep799.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.54, i64 480, i1 false)
  %scevgep798.55 = getelementptr i8, i8* %malloccall, i64 26400
  %scevgep799.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.55, i64 480, i1 false)
  %scevgep798.56 = getelementptr i8, i8* %malloccall, i64 26880
  %scevgep799.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.56, i64 480, i1 false)
  %scevgep798.57 = getelementptr i8, i8* %malloccall, i64 27360
  %scevgep799.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.57, i64 480, i1 false)
  %scevgep798.58 = getelementptr i8, i8* %malloccall, i64 27840
  %scevgep799.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.58, i64 480, i1 false)
  %scevgep798.59 = getelementptr i8, i8* %malloccall, i64 28320
  %scevgep799.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.59, i64 480, i1 false)
  %scevgep798.60 = getelementptr i8, i8* %malloccall, i64 28800
  %scevgep799.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.60, i64 480, i1 false)
  %scevgep798.61 = getelementptr i8, i8* %malloccall, i64 29280
  %scevgep799.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.61, i64 480, i1 false)
  %scevgep798.62 = getelementptr i8, i8* %malloccall, i64 29760
  %scevgep799.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.62, i64 480, i1 false)
  %scevgep798.63 = getelementptr i8, i8* %malloccall, i64 30240
  %scevgep799.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.63, i64 480, i1 false)
  %scevgep798.64 = getelementptr i8, i8* %malloccall, i64 30720
  %scevgep799.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.64, i64 480, i1 false)
  %scevgep798.65 = getelementptr i8, i8* %malloccall, i64 31200
  %scevgep799.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.65, i64 480, i1 false)
  %scevgep798.66 = getelementptr i8, i8* %malloccall, i64 31680
  %scevgep799.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.66, i64 480, i1 false)
  %scevgep798.67 = getelementptr i8, i8* %malloccall, i64 32160
  %scevgep799.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.67, i64 480, i1 false)
  %scevgep798.68 = getelementptr i8, i8* %malloccall, i64 32640
  %scevgep799.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.68, i64 480, i1 false)
  %scevgep798.69 = getelementptr i8, i8* %malloccall, i64 33120
  %scevgep799.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.69, i64 480, i1 false)
  %scevgep798.70 = getelementptr i8, i8* %malloccall, i64 33600
  %scevgep799.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.70, i64 480, i1 false)
  %scevgep798.71 = getelementptr i8, i8* %malloccall, i64 34080
  %scevgep799.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.71, i64 480, i1 false)
  %scevgep798.72 = getelementptr i8, i8* %malloccall, i64 34560
  %scevgep799.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.72, i64 480, i1 false)
  %scevgep798.73 = getelementptr i8, i8* %malloccall, i64 35040
  %scevgep799.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.73, i64 480, i1 false)
  %scevgep798.74 = getelementptr i8, i8* %malloccall, i64 35520
  %scevgep799.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.74, i64 480, i1 false)
  %scevgep798.75 = getelementptr i8, i8* %malloccall, i64 36000
  %scevgep799.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.75, i64 480, i1 false)
  %scevgep798.76 = getelementptr i8, i8* %malloccall, i64 36480
  %scevgep799.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.76, i64 480, i1 false)
  %scevgep798.77 = getelementptr i8, i8* %malloccall, i64 36960
  %scevgep799.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.77, i64 480, i1 false)
  %scevgep798.78 = getelementptr i8, i8* %malloccall, i64 37440
  %scevgep799.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.78, i64 480, i1 false)
  %scevgep798.79 = getelementptr i8, i8* %malloccall, i64 37920
  %scevgep799.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep798.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep799.79, i64 480, i1 false)
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
  %exitcond801.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond801.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header199.preheader
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %97 = shl nuw nsw i64 %polly.indvar224, 3
  %scevgep239 = getelementptr i8, i8* %call1, i64 %97
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next225, 60
  br i1 %exitcond795.not, label %polly.loop_header221.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit235 ], [ 1, %polly.loop_header221 ]
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
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next231, 16
  br i1 %exitcond794.not, label %polly.loop_exit229, label %polly.loop_header227

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
  %exitcond.not = icmp eq i64 %polly.indvar_next237, %indvars.iv792
  br i1 %exitcond.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start260:                                   ; preds = %kernel_syr2k.exit
  %malloccall262 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header346

polly.loop_header346:                             ; preds = %polly.loop_exit354, %polly.start260
  %indvar1232 = phi i64 [ %indvar.next1233, %polly.loop_exit354 ], [ 0, %polly.start260 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 1, %polly.start260 ]
  %103 = add i64 %indvar1232, 1
  %104 = mul nuw nsw i64 %polly.indvar349, 640
  %scevgep358 = getelementptr i8, i8* %call, i64 %104
  %min.iters.check1234 = icmp ult i64 %103, 4
  br i1 %min.iters.check1234, label %polly.loop_header352.preheader, label %vector.ph1235

vector.ph1235:                                    ; preds = %polly.loop_header346
  %n.vec1237 = and i64 %103, -4
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1235
  %index1238 = phi i64 [ 0, %vector.ph1235 ], [ %index.next1239, %vector.body1231 ]
  %105 = shl nuw nsw i64 %index1238, 3
  %106 = getelementptr i8, i8* %scevgep358, i64 %105
  %107 = bitcast i8* %106 to <4 x double>*
  %wide.load1242 = load <4 x double>, <4 x double>* %107, align 8, !alias.scope !78, !noalias !80
  %108 = fmul fast <4 x double> %wide.load1242, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %109 = bitcast i8* %106 to <4 x double>*
  store <4 x double> %108, <4 x double>* %109, align 8, !alias.scope !78, !noalias !80
  %index.next1239 = add i64 %index1238, 4
  %110 = icmp eq i64 %index.next1239, %n.vec1237
  br i1 %110, label %middle.block1229, label %vector.body1231, !llvm.loop !84

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1241 = icmp eq i64 %103, %n.vec1237
  br i1 %cmp.n1241, label %polly.loop_exit354, label %polly.loop_header352.preheader

polly.loop_header352.preheader:                   ; preds = %polly.loop_header346, %middle.block1229
  %polly.indvar355.ph = phi i64 [ 0, %polly.loop_header346 ], [ %n.vec1237, %middle.block1229 ]
  br label %polly.loop_header352

polly.loop_exit354:                               ; preds = %polly.loop_header352, %middle.block1229
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next350, 80
  %indvar.next1233 = add i64 %indvar1232, 1
  br i1 %exitcond816.not, label %polly.loop_header362.preheader, label %polly.loop_header346

polly.loop_header362.preheader:                   ; preds = %polly.loop_exit354
  %Packed_MemRef_call2263 = bitcast i8* %malloccall262 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall262, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep812.1 = getelementptr i8, i8* %malloccall262, i64 480
  %scevgep813.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.1, i64 480, i1 false)
  %scevgep812.2 = getelementptr i8, i8* %malloccall262, i64 960
  %scevgep813.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.2, i64 480, i1 false)
  %scevgep812.3 = getelementptr i8, i8* %malloccall262, i64 1440
  %scevgep813.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.3, i64 480, i1 false)
  %scevgep812.4 = getelementptr i8, i8* %malloccall262, i64 1920
  %scevgep813.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.4, i64 480, i1 false)
  %scevgep812.5 = getelementptr i8, i8* %malloccall262, i64 2400
  %scevgep813.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.5, i64 480, i1 false)
  %scevgep812.6 = getelementptr i8, i8* %malloccall262, i64 2880
  %scevgep813.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.6, i64 480, i1 false)
  %scevgep812.7 = getelementptr i8, i8* %malloccall262, i64 3360
  %scevgep813.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.7, i64 480, i1 false)
  %scevgep812.8 = getelementptr i8, i8* %malloccall262, i64 3840
  %scevgep813.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.8, i64 480, i1 false)
  %scevgep812.9 = getelementptr i8, i8* %malloccall262, i64 4320
  %scevgep813.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.9, i64 480, i1 false)
  %scevgep812.10 = getelementptr i8, i8* %malloccall262, i64 4800
  %scevgep813.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.10, i64 480, i1 false)
  %scevgep812.11 = getelementptr i8, i8* %malloccall262, i64 5280
  %scevgep813.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.11, i64 480, i1 false)
  %scevgep812.12 = getelementptr i8, i8* %malloccall262, i64 5760
  %scevgep813.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.12, i64 480, i1 false)
  %scevgep812.13 = getelementptr i8, i8* %malloccall262, i64 6240
  %scevgep813.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.13, i64 480, i1 false)
  %scevgep812.14 = getelementptr i8, i8* %malloccall262, i64 6720
  %scevgep813.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.14, i64 480, i1 false)
  %scevgep812.15 = getelementptr i8, i8* %malloccall262, i64 7200
  %scevgep813.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.15, i64 480, i1 false)
  %scevgep812.16 = getelementptr i8, i8* %malloccall262, i64 7680
  %scevgep813.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.16, i64 480, i1 false)
  %scevgep812.17 = getelementptr i8, i8* %malloccall262, i64 8160
  %scevgep813.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.17, i64 480, i1 false)
  %scevgep812.18 = getelementptr i8, i8* %malloccall262, i64 8640
  %scevgep813.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.18, i64 480, i1 false)
  %scevgep812.19 = getelementptr i8, i8* %malloccall262, i64 9120
  %scevgep813.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.19, i64 480, i1 false)
  %scevgep812.20 = getelementptr i8, i8* %malloccall262, i64 9600
  %scevgep813.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.20, i64 480, i1 false)
  %scevgep812.21 = getelementptr i8, i8* %malloccall262, i64 10080
  %scevgep813.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.21, i64 480, i1 false)
  %scevgep812.22 = getelementptr i8, i8* %malloccall262, i64 10560
  %scevgep813.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.22, i64 480, i1 false)
  %scevgep812.23 = getelementptr i8, i8* %malloccall262, i64 11040
  %scevgep813.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.23, i64 480, i1 false)
  %scevgep812.24 = getelementptr i8, i8* %malloccall262, i64 11520
  %scevgep813.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.24, i64 480, i1 false)
  %scevgep812.25 = getelementptr i8, i8* %malloccall262, i64 12000
  %scevgep813.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.25, i64 480, i1 false)
  %scevgep812.26 = getelementptr i8, i8* %malloccall262, i64 12480
  %scevgep813.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.26, i64 480, i1 false)
  %scevgep812.27 = getelementptr i8, i8* %malloccall262, i64 12960
  %scevgep813.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.27, i64 480, i1 false)
  %scevgep812.28 = getelementptr i8, i8* %malloccall262, i64 13440
  %scevgep813.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.28, i64 480, i1 false)
  %scevgep812.29 = getelementptr i8, i8* %malloccall262, i64 13920
  %scevgep813.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.29, i64 480, i1 false)
  %scevgep812.30 = getelementptr i8, i8* %malloccall262, i64 14400
  %scevgep813.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.30, i64 480, i1 false)
  %scevgep812.31 = getelementptr i8, i8* %malloccall262, i64 14880
  %scevgep813.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.31, i64 480, i1 false)
  %scevgep812.32 = getelementptr i8, i8* %malloccall262, i64 15360
  %scevgep813.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.32, i64 480, i1 false)
  %scevgep812.33 = getelementptr i8, i8* %malloccall262, i64 15840
  %scevgep813.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.33, i64 480, i1 false)
  %scevgep812.34 = getelementptr i8, i8* %malloccall262, i64 16320
  %scevgep813.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.34, i64 480, i1 false)
  %scevgep812.35 = getelementptr i8, i8* %malloccall262, i64 16800
  %scevgep813.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.35, i64 480, i1 false)
  %scevgep812.36 = getelementptr i8, i8* %malloccall262, i64 17280
  %scevgep813.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.36, i64 480, i1 false)
  %scevgep812.37 = getelementptr i8, i8* %malloccall262, i64 17760
  %scevgep813.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.37, i64 480, i1 false)
  %scevgep812.38 = getelementptr i8, i8* %malloccall262, i64 18240
  %scevgep813.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.38, i64 480, i1 false)
  %scevgep812.39 = getelementptr i8, i8* %malloccall262, i64 18720
  %scevgep813.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.39, i64 480, i1 false)
  %scevgep812.40 = getelementptr i8, i8* %malloccall262, i64 19200
  %scevgep813.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.40, i64 480, i1 false)
  %scevgep812.41 = getelementptr i8, i8* %malloccall262, i64 19680
  %scevgep813.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.41, i64 480, i1 false)
  %scevgep812.42 = getelementptr i8, i8* %malloccall262, i64 20160
  %scevgep813.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.42, i64 480, i1 false)
  %scevgep812.43 = getelementptr i8, i8* %malloccall262, i64 20640
  %scevgep813.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.43, i64 480, i1 false)
  %scevgep812.44 = getelementptr i8, i8* %malloccall262, i64 21120
  %scevgep813.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.44, i64 480, i1 false)
  %scevgep812.45 = getelementptr i8, i8* %malloccall262, i64 21600
  %scevgep813.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.45, i64 480, i1 false)
  %scevgep812.46 = getelementptr i8, i8* %malloccall262, i64 22080
  %scevgep813.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.46, i64 480, i1 false)
  %scevgep812.47 = getelementptr i8, i8* %malloccall262, i64 22560
  %scevgep813.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.47, i64 480, i1 false)
  %scevgep812.48 = getelementptr i8, i8* %malloccall262, i64 23040
  %scevgep813.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.48, i64 480, i1 false)
  %scevgep812.49 = getelementptr i8, i8* %malloccall262, i64 23520
  %scevgep813.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.49, i64 480, i1 false)
  %scevgep812.50 = getelementptr i8, i8* %malloccall262, i64 24000
  %scevgep813.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.50, i64 480, i1 false)
  %scevgep812.51 = getelementptr i8, i8* %malloccall262, i64 24480
  %scevgep813.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.51, i64 480, i1 false)
  %scevgep812.52 = getelementptr i8, i8* %malloccall262, i64 24960
  %scevgep813.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.52, i64 480, i1 false)
  %scevgep812.53 = getelementptr i8, i8* %malloccall262, i64 25440
  %scevgep813.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.53, i64 480, i1 false)
  %scevgep812.54 = getelementptr i8, i8* %malloccall262, i64 25920
  %scevgep813.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.54, i64 480, i1 false)
  %scevgep812.55 = getelementptr i8, i8* %malloccall262, i64 26400
  %scevgep813.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.55, i64 480, i1 false)
  %scevgep812.56 = getelementptr i8, i8* %malloccall262, i64 26880
  %scevgep813.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.56, i64 480, i1 false)
  %scevgep812.57 = getelementptr i8, i8* %malloccall262, i64 27360
  %scevgep813.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.57, i64 480, i1 false)
  %scevgep812.58 = getelementptr i8, i8* %malloccall262, i64 27840
  %scevgep813.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.58, i64 480, i1 false)
  %scevgep812.59 = getelementptr i8, i8* %malloccall262, i64 28320
  %scevgep813.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.59, i64 480, i1 false)
  %scevgep812.60 = getelementptr i8, i8* %malloccall262, i64 28800
  %scevgep813.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.60, i64 480, i1 false)
  %scevgep812.61 = getelementptr i8, i8* %malloccall262, i64 29280
  %scevgep813.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.61, i64 480, i1 false)
  %scevgep812.62 = getelementptr i8, i8* %malloccall262, i64 29760
  %scevgep813.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.62, i64 480, i1 false)
  %scevgep812.63 = getelementptr i8, i8* %malloccall262, i64 30240
  %scevgep813.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.63, i64 480, i1 false)
  %scevgep812.64 = getelementptr i8, i8* %malloccall262, i64 30720
  %scevgep813.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.64, i64 480, i1 false)
  %scevgep812.65 = getelementptr i8, i8* %malloccall262, i64 31200
  %scevgep813.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.65, i64 480, i1 false)
  %scevgep812.66 = getelementptr i8, i8* %malloccall262, i64 31680
  %scevgep813.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.66, i64 480, i1 false)
  %scevgep812.67 = getelementptr i8, i8* %malloccall262, i64 32160
  %scevgep813.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.67, i64 480, i1 false)
  %scevgep812.68 = getelementptr i8, i8* %malloccall262, i64 32640
  %scevgep813.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.68, i64 480, i1 false)
  %scevgep812.69 = getelementptr i8, i8* %malloccall262, i64 33120
  %scevgep813.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.69, i64 480, i1 false)
  %scevgep812.70 = getelementptr i8, i8* %malloccall262, i64 33600
  %scevgep813.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.70, i64 480, i1 false)
  %scevgep812.71 = getelementptr i8, i8* %malloccall262, i64 34080
  %scevgep813.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.71, i64 480, i1 false)
  %scevgep812.72 = getelementptr i8, i8* %malloccall262, i64 34560
  %scevgep813.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.72, i64 480, i1 false)
  %scevgep812.73 = getelementptr i8, i8* %malloccall262, i64 35040
  %scevgep813.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.73, i64 480, i1 false)
  %scevgep812.74 = getelementptr i8, i8* %malloccall262, i64 35520
  %scevgep813.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.74, i64 480, i1 false)
  %scevgep812.75 = getelementptr i8, i8* %malloccall262, i64 36000
  %scevgep813.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.75, i64 480, i1 false)
  %scevgep812.76 = getelementptr i8, i8* %malloccall262, i64 36480
  %scevgep813.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.76, i64 480, i1 false)
  %scevgep812.77 = getelementptr i8, i8* %malloccall262, i64 36960
  %scevgep813.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.77, i64 480, i1 false)
  %scevgep812.78 = getelementptr i8, i8* %malloccall262, i64 37440
  %scevgep813.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.78, i64 480, i1 false)
  %scevgep812.79 = getelementptr i8, i8* %malloccall262, i64 37920
  %scevgep813.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep812.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.79, i64 480, i1 false)
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
  %exitcond815.not = icmp eq i64 %polly.indvar_next356, %polly.indvar349
  br i1 %exitcond815.not, label %polly.loop_exit354, label %polly.loop_header352, !llvm.loop !85

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.loop_header362.preheader
  %polly.indvar387 = phi i64 [ 0, %polly.loop_header362.preheader ], [ %polly.indvar_next388, %polly.loop_exit392 ]
  %112 = shl nuw nsw i64 %polly.indvar387, 3
  %scevgep402 = getelementptr i8, i8* %call1, i64 %112
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next388, 60
  br i1 %exitcond809.not, label %polly.loop_header384.1, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_header384
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit398 ], [ 1, %polly.loop_header384 ]
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
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 1
  %exitcond808.not = icmp eq i64 %polly.indvar_next394, 16
  br i1 %exitcond808.not, label %polly.loop_exit392, label %polly.loop_header390

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
  %exitcond807.not = icmp eq i64 %polly.indvar_next400, %indvars.iv805
  br i1 %exitcond807.not, label %polly.loop_exit398, label %polly.loop_header396

polly.start423:                                   ; preds = %init_array.exit
  %malloccall425 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header509

polly.loop_header509:                             ; preds = %polly.loop_exit517, %polly.start423
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit517 ], [ 0, %polly.start423 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 1, %polly.start423 ]
  %118 = add i64 %indvar, 1
  %119 = mul nuw nsw i64 %polly.indvar512, 640
  %scevgep521 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1208 = icmp ult i64 %118, 4
  br i1 %min.iters.check1208, label %polly.loop_header515.preheader, label %vector.ph1209

vector.ph1209:                                    ; preds = %polly.loop_header509
  %n.vec1211 = and i64 %118, -4
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %vector.ph1209
  %index1212 = phi i64 [ 0, %vector.ph1209 ], [ %index.next1213, %vector.body1207 ]
  %120 = shl nuw nsw i64 %index1212, 3
  %121 = getelementptr i8, i8* %scevgep521, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1216 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !87, !noalias !89
  %123 = fmul fast <4 x double> %wide.load1216, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !87, !noalias !89
  %index.next1213 = add i64 %index1212, 4
  %125 = icmp eq i64 %index.next1213, %n.vec1211
  br i1 %125, label %middle.block1205, label %vector.body1207, !llvm.loop !93

middle.block1205:                                 ; preds = %vector.body1207
  %cmp.n1215 = icmp eq i64 %118, %n.vec1211
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
  %Packed_MemRef_call2426 = bitcast i8* %malloccall425 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall425, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep826.1 = getelementptr i8, i8* %malloccall425, i64 480
  %scevgep827.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.1, i64 480, i1 false)
  %scevgep826.2 = getelementptr i8, i8* %malloccall425, i64 960
  %scevgep827.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.2, i64 480, i1 false)
  %scevgep826.3 = getelementptr i8, i8* %malloccall425, i64 1440
  %scevgep827.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.3, i64 480, i1 false)
  %scevgep826.4 = getelementptr i8, i8* %malloccall425, i64 1920
  %scevgep827.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.4, i64 480, i1 false)
  %scevgep826.5 = getelementptr i8, i8* %malloccall425, i64 2400
  %scevgep827.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.5, i64 480, i1 false)
  %scevgep826.6 = getelementptr i8, i8* %malloccall425, i64 2880
  %scevgep827.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.6, i64 480, i1 false)
  %scevgep826.7 = getelementptr i8, i8* %malloccall425, i64 3360
  %scevgep827.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.7, i64 480, i1 false)
  %scevgep826.8 = getelementptr i8, i8* %malloccall425, i64 3840
  %scevgep827.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.8, i64 480, i1 false)
  %scevgep826.9 = getelementptr i8, i8* %malloccall425, i64 4320
  %scevgep827.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.9, i64 480, i1 false)
  %scevgep826.10 = getelementptr i8, i8* %malloccall425, i64 4800
  %scevgep827.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.10, i64 480, i1 false)
  %scevgep826.11 = getelementptr i8, i8* %malloccall425, i64 5280
  %scevgep827.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.11, i64 480, i1 false)
  %scevgep826.12 = getelementptr i8, i8* %malloccall425, i64 5760
  %scevgep827.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.12, i64 480, i1 false)
  %scevgep826.13 = getelementptr i8, i8* %malloccall425, i64 6240
  %scevgep827.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.13, i64 480, i1 false)
  %scevgep826.14 = getelementptr i8, i8* %malloccall425, i64 6720
  %scevgep827.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.14, i64 480, i1 false)
  %scevgep826.15 = getelementptr i8, i8* %malloccall425, i64 7200
  %scevgep827.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.15, i64 480, i1 false)
  %scevgep826.16 = getelementptr i8, i8* %malloccall425, i64 7680
  %scevgep827.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.16, i64 480, i1 false)
  %scevgep826.17 = getelementptr i8, i8* %malloccall425, i64 8160
  %scevgep827.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.17, i64 480, i1 false)
  %scevgep826.18 = getelementptr i8, i8* %malloccall425, i64 8640
  %scevgep827.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.18, i64 480, i1 false)
  %scevgep826.19 = getelementptr i8, i8* %malloccall425, i64 9120
  %scevgep827.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.19, i64 480, i1 false)
  %scevgep826.20 = getelementptr i8, i8* %malloccall425, i64 9600
  %scevgep827.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.20, i64 480, i1 false)
  %scevgep826.21 = getelementptr i8, i8* %malloccall425, i64 10080
  %scevgep827.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.21, i64 480, i1 false)
  %scevgep826.22 = getelementptr i8, i8* %malloccall425, i64 10560
  %scevgep827.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.22, i64 480, i1 false)
  %scevgep826.23 = getelementptr i8, i8* %malloccall425, i64 11040
  %scevgep827.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.23, i64 480, i1 false)
  %scevgep826.24 = getelementptr i8, i8* %malloccall425, i64 11520
  %scevgep827.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.24, i64 480, i1 false)
  %scevgep826.25 = getelementptr i8, i8* %malloccall425, i64 12000
  %scevgep827.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.25, i64 480, i1 false)
  %scevgep826.26 = getelementptr i8, i8* %malloccall425, i64 12480
  %scevgep827.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.26, i64 480, i1 false)
  %scevgep826.27 = getelementptr i8, i8* %malloccall425, i64 12960
  %scevgep827.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.27, i64 480, i1 false)
  %scevgep826.28 = getelementptr i8, i8* %malloccall425, i64 13440
  %scevgep827.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.28, i64 480, i1 false)
  %scevgep826.29 = getelementptr i8, i8* %malloccall425, i64 13920
  %scevgep827.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.29, i64 480, i1 false)
  %scevgep826.30 = getelementptr i8, i8* %malloccall425, i64 14400
  %scevgep827.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.30, i64 480, i1 false)
  %scevgep826.31 = getelementptr i8, i8* %malloccall425, i64 14880
  %scevgep827.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.31, i64 480, i1 false)
  %scevgep826.32 = getelementptr i8, i8* %malloccall425, i64 15360
  %scevgep827.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.32, i64 480, i1 false)
  %scevgep826.33 = getelementptr i8, i8* %malloccall425, i64 15840
  %scevgep827.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.33, i64 480, i1 false)
  %scevgep826.34 = getelementptr i8, i8* %malloccall425, i64 16320
  %scevgep827.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.34, i64 480, i1 false)
  %scevgep826.35 = getelementptr i8, i8* %malloccall425, i64 16800
  %scevgep827.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.35, i64 480, i1 false)
  %scevgep826.36 = getelementptr i8, i8* %malloccall425, i64 17280
  %scevgep827.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.36, i64 480, i1 false)
  %scevgep826.37 = getelementptr i8, i8* %malloccall425, i64 17760
  %scevgep827.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.37, i64 480, i1 false)
  %scevgep826.38 = getelementptr i8, i8* %malloccall425, i64 18240
  %scevgep827.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.38, i64 480, i1 false)
  %scevgep826.39 = getelementptr i8, i8* %malloccall425, i64 18720
  %scevgep827.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.39, i64 480, i1 false)
  %scevgep826.40 = getelementptr i8, i8* %malloccall425, i64 19200
  %scevgep827.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.40, i64 480, i1 false)
  %scevgep826.41 = getelementptr i8, i8* %malloccall425, i64 19680
  %scevgep827.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.41, i64 480, i1 false)
  %scevgep826.42 = getelementptr i8, i8* %malloccall425, i64 20160
  %scevgep827.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.42, i64 480, i1 false)
  %scevgep826.43 = getelementptr i8, i8* %malloccall425, i64 20640
  %scevgep827.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.43, i64 480, i1 false)
  %scevgep826.44 = getelementptr i8, i8* %malloccall425, i64 21120
  %scevgep827.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.44, i64 480, i1 false)
  %scevgep826.45 = getelementptr i8, i8* %malloccall425, i64 21600
  %scevgep827.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.45, i64 480, i1 false)
  %scevgep826.46 = getelementptr i8, i8* %malloccall425, i64 22080
  %scevgep827.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.46, i64 480, i1 false)
  %scevgep826.47 = getelementptr i8, i8* %malloccall425, i64 22560
  %scevgep827.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.47, i64 480, i1 false)
  %scevgep826.48 = getelementptr i8, i8* %malloccall425, i64 23040
  %scevgep827.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.48, i64 480, i1 false)
  %scevgep826.49 = getelementptr i8, i8* %malloccall425, i64 23520
  %scevgep827.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.49, i64 480, i1 false)
  %scevgep826.50 = getelementptr i8, i8* %malloccall425, i64 24000
  %scevgep827.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.50, i64 480, i1 false)
  %scevgep826.51 = getelementptr i8, i8* %malloccall425, i64 24480
  %scevgep827.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.51, i64 480, i1 false)
  %scevgep826.52 = getelementptr i8, i8* %malloccall425, i64 24960
  %scevgep827.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.52, i64 480, i1 false)
  %scevgep826.53 = getelementptr i8, i8* %malloccall425, i64 25440
  %scevgep827.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.53, i64 480, i1 false)
  %scevgep826.54 = getelementptr i8, i8* %malloccall425, i64 25920
  %scevgep827.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.54, i64 480, i1 false)
  %scevgep826.55 = getelementptr i8, i8* %malloccall425, i64 26400
  %scevgep827.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.55, i64 480, i1 false)
  %scevgep826.56 = getelementptr i8, i8* %malloccall425, i64 26880
  %scevgep827.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.56, i64 480, i1 false)
  %scevgep826.57 = getelementptr i8, i8* %malloccall425, i64 27360
  %scevgep827.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.57, i64 480, i1 false)
  %scevgep826.58 = getelementptr i8, i8* %malloccall425, i64 27840
  %scevgep827.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.58, i64 480, i1 false)
  %scevgep826.59 = getelementptr i8, i8* %malloccall425, i64 28320
  %scevgep827.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.59, i64 480, i1 false)
  %scevgep826.60 = getelementptr i8, i8* %malloccall425, i64 28800
  %scevgep827.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.60, i64 480, i1 false)
  %scevgep826.61 = getelementptr i8, i8* %malloccall425, i64 29280
  %scevgep827.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.61, i64 480, i1 false)
  %scevgep826.62 = getelementptr i8, i8* %malloccall425, i64 29760
  %scevgep827.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.62, i64 480, i1 false)
  %scevgep826.63 = getelementptr i8, i8* %malloccall425, i64 30240
  %scevgep827.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.63, i64 480, i1 false)
  %scevgep826.64 = getelementptr i8, i8* %malloccall425, i64 30720
  %scevgep827.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.64, i64 480, i1 false)
  %scevgep826.65 = getelementptr i8, i8* %malloccall425, i64 31200
  %scevgep827.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.65, i64 480, i1 false)
  %scevgep826.66 = getelementptr i8, i8* %malloccall425, i64 31680
  %scevgep827.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.66, i64 480, i1 false)
  %scevgep826.67 = getelementptr i8, i8* %malloccall425, i64 32160
  %scevgep827.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.67, i64 480, i1 false)
  %scevgep826.68 = getelementptr i8, i8* %malloccall425, i64 32640
  %scevgep827.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.68, i64 480, i1 false)
  %scevgep826.69 = getelementptr i8, i8* %malloccall425, i64 33120
  %scevgep827.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.69, i64 480, i1 false)
  %scevgep826.70 = getelementptr i8, i8* %malloccall425, i64 33600
  %scevgep827.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.70, i64 480, i1 false)
  %scevgep826.71 = getelementptr i8, i8* %malloccall425, i64 34080
  %scevgep827.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.71, i64 480, i1 false)
  %scevgep826.72 = getelementptr i8, i8* %malloccall425, i64 34560
  %scevgep827.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.72, i64 480, i1 false)
  %scevgep826.73 = getelementptr i8, i8* %malloccall425, i64 35040
  %scevgep827.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.73, i64 480, i1 false)
  %scevgep826.74 = getelementptr i8, i8* %malloccall425, i64 35520
  %scevgep827.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.74, i64 480, i1 false)
  %scevgep826.75 = getelementptr i8, i8* %malloccall425, i64 36000
  %scevgep827.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.75, i64 480, i1 false)
  %scevgep826.76 = getelementptr i8, i8* %malloccall425, i64 36480
  %scevgep827.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.76, i64 480, i1 false)
  %scevgep826.77 = getelementptr i8, i8* %malloccall425, i64 36960
  %scevgep827.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.77, i64 480, i1 false)
  %scevgep826.78 = getelementptr i8, i8* %malloccall425, i64 37440
  %scevgep827.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.78, i64 480, i1 false)
  %scevgep826.79 = getelementptr i8, i8* %malloccall425, i64 37920
  %scevgep827.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep826.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.79, i64 480, i1 false)
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
  %exitcond829.not = icmp eq i64 %polly.indvar_next519, %polly.indvar512
  br i1 %exitcond829.not, label %polly.loop_exit517, label %polly.loop_header515, !llvm.loop !94

polly.loop_header547:                             ; preds = %polly.loop_exit555, %polly.loop_header525.preheader
  %polly.indvar550 = phi i64 [ 0, %polly.loop_header525.preheader ], [ %polly.indvar_next551, %polly.loop_exit555 ]
  %127 = shl nuw nsw i64 %polly.indvar550, 3
  %scevgep565 = getelementptr i8, i8* %call1, i64 %127
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_exit561
  %polly.indvar_next551 = add nuw nsw i64 %polly.indvar550, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next551, 60
  br i1 %exitcond823.not, label %polly.loop_header547.1, label %polly.loop_header547

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.loop_header547
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit561 ], [ 1, %polly.loop_header547 ]
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
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next557, 16
  br i1 %exitcond822.not, label %polly.loop_exit555, label %polly.loop_header553

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
  %exitcond821.not = icmp eq i64 %polly.indvar_next563, %indvars.iv819
  br i1 %exitcond821.not, label %polly.loop_exit561, label %polly.loop_header559

polly.loop_header722:                             ; preds = %entry, %polly.loop_exit730
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_exit730 ], [ 0, %entry ]
  %133 = mul nuw nsw i64 %polly.indvar725, 640
  %134 = trunc i64 %polly.indvar725 to i32
  %broadcast.splatinsert939 = insertelement <4 x i32> poison, i32 %134, i32 0
  %broadcast.splat940 = shufflevector <4 x i32> %broadcast.splatinsert939, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body929

vector.body929:                                   ; preds = %vector.body929, %polly.loop_header722
  %index931 = phi i64 [ 0, %polly.loop_header722 ], [ %index.next932, %vector.body929 ]
  %vec.ind937 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722 ], [ %vec.ind.next938, %vector.body929 ]
  %135 = mul <4 x i32> %vec.ind937, %broadcast.splat940
  %136 = add <4 x i32> %135, <i32 3, i32 3, i32 3, i32 3>
  %137 = urem <4 x i32> %136, <i32 80, i32 80, i32 80, i32 80>
  %138 = sitofp <4 x i32> %137 to <4 x double>
  %139 = fmul fast <4 x double> %138, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %140 = shl i64 %index931, 3
  %141 = add nuw nsw i64 %140, %133
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %139, <4 x double>* %143, align 8, !alias.scope !96, !noalias !98
  %index.next932 = add i64 %index931, 4
  %vec.ind.next938 = add <4 x i32> %vec.ind937, <i32 4, i32 4, i32 4, i32 4>
  %144 = icmp eq i64 %index.next932, 32
  br i1 %144, label %polly.loop_exit730, label %vector.body929, !llvm.loop !101

polly.loop_exit730:                               ; preds = %vector.body929
  %polly.indvar_next726 = add nuw nsw i64 %polly.indvar725, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next726, 32
  br i1 %exitcond849.not, label %polly.loop_header722.1, label %polly.loop_header722

polly.loop_header749:                             ; preds = %polly.loop_exit730.2.2, %polly.loop_exit757
  %polly.indvar752 = phi i64 [ %polly.indvar_next753, %polly.loop_exit757 ], [ 0, %polly.loop_exit730.2.2 ]
  %145 = mul nuw nsw i64 %polly.indvar752, 480
  %146 = trunc i64 %polly.indvar752 to i32
  %broadcast.splatinsert1053 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat1054 = shufflevector <4 x i32> %broadcast.splatinsert1053, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %polly.loop_header749
  %index1045 = phi i64 [ 0, %polly.loop_header749 ], [ %index.next1046, %vector.body1043 ]
  %vec.ind1051 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749 ], [ %vec.ind.next1052, %vector.body1043 ]
  %147 = mul <4 x i32> %vec.ind1051, %broadcast.splat1054
  %148 = add <4 x i32> %147, <i32 2, i32 2, i32 2, i32 2>
  %149 = urem <4 x i32> %148, <i32 60, i32 60, i32 60, i32 60>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index1045, 3
  %153 = add i64 %152, %145
  %154 = getelementptr i8, i8* %call2, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !100, !noalias !102
  %index.next1046 = add i64 %index1045, 4
  %vec.ind.next1052 = add <4 x i32> %vec.ind1051, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next1046, 32
  br i1 %156, label %polly.loop_exit757, label %vector.body1043, !llvm.loop !103

polly.loop_exit757:                               ; preds = %vector.body1043
  %polly.indvar_next753 = add nuw nsw i64 %polly.indvar752, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next753, 32
  br i1 %exitcond840.not, label %polly.loop_header749.1, label %polly.loop_header749

polly.loop_header775:                             ; preds = %polly.loop_exit757.1.2, %polly.loop_exit783
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %polly.loop_exit757.1.2 ]
  %157 = mul nuw nsw i64 %polly.indvar778, 480
  %158 = trunc i64 %polly.indvar778 to i32
  %broadcast.splatinsert1131 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1132 = shufflevector <4 x i32> %broadcast.splatinsert1131, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_header775
  %index1123 = phi i64 [ 0, %polly.loop_header775 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1129 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775 ], [ %vec.ind.next1130, %vector.body1121 ]
  %159 = mul <4 x i32> %vec.ind1129, %broadcast.splat1132
  %160 = add <4 x i32> %159, <i32 1, i32 1, i32 1, i32 1>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %164 = shl i64 %index1123, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call1, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !99, !noalias !104
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1130 = add <4 x i32> %vec.ind1129, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1124, 32
  br i1 %168, label %polly.loop_exit783, label %vector.body1121, !llvm.loop !105

polly.loop_exit783:                               ; preds = %vector.body1121
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next779, 32
  br i1 %exitcond834.not, label %polly.loop_header775.1, label %polly.loop_header775

polly.loop_header221.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %169 = shl nuw nsw i64 %polly.indvar224.1, 3
  %scevgep239.1 = getelementptr i8, i8* %call1, i64 %169
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %indvars.iv792.1 = phi i64 [ %indvars.iv.next793.1, %polly.loop_exit235.1 ], [ 17, %polly.loop_header221.1 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header221.1 ]
  %170 = add nuw nsw i64 %polly.indvar230.1, 16
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
  %exitcond.1.not = icmp eq i64 %polly.indvar_next237.1, %indvars.iv792.1
  br i1 %exitcond.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_header233.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next793.1 = add nuw nsw i64 %indvars.iv792.1, 1
  %exitcond794.1.not = icmp eq i64 %polly.indvar_next231.1, 16
  br i1 %exitcond794.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %exitcond795.1.not = icmp eq i64 %polly.indvar_next225.1, 60
  br i1 %exitcond795.1.not, label %polly.loop_header221.2, label %polly.loop_header221.1

polly.loop_header221.2:                           ; preds = %polly.loop_exit229.1, %polly.loop_exit229.2
  %polly.indvar224.2 = phi i64 [ %polly.indvar_next225.2, %polly.loop_exit229.2 ], [ 0, %polly.loop_exit229.1 ]
  %176 = shl nuw nsw i64 %polly.indvar224.2, 3
  %scevgep239.2 = getelementptr i8, i8* %call1, i64 %176
  br label %polly.loop_header227.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.2, %polly.loop_header221.2
  %indvars.iv792.2 = phi i64 [ %indvars.iv.next793.2, %polly.loop_exit235.2 ], [ 33, %polly.loop_header221.2 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_header221.2 ]
  %177 = add nuw nsw i64 %polly.indvar230.2, 32
  %polly.access.mul.Packed_MemRef_call2243.2 = mul nuw nsw i64 %177, 60
  %polly.access.add.Packed_MemRef_call2244.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2243.2, %polly.indvar224.2
  %polly.access.Packed_MemRef_call2245.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2244.2
  %_p_scalar_246.2 = load double, double* %polly.access.Packed_MemRef_call2245.2, align 8
  %178 = mul nuw nsw i64 %177, 480
  %scevgep252.2 = getelementptr i8, i8* %scevgep239.2, i64 %178
  %scevgep252253.2 = bitcast i8* %scevgep252.2 to double*
  %_p_scalar_254.2 = load double, double* %scevgep252253.2, align 8, !alias.scope !71, !noalias !77
  %179 = mul nuw nsw i64 %177, 640
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_header233.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_header233.2 ]
  %180 = mul nuw nsw i64 %polly.indvar236.2, 480
  %scevgep240.2 = getelementptr i8, i8* %scevgep239.2, i64 %180
  %scevgep240241.2 = bitcast i8* %scevgep240.2 to double*
  %_p_scalar_242.2 = load double, double* %scevgep240241.2, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_242.2
  %polly.access.mul.Packed_MemRef_call2247.2 = mul nuw nsw i64 %polly.indvar236.2, 60
  %polly.access.add.Packed_MemRef_call2248.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2247.2, %polly.indvar224.2
  %polly.access.Packed_MemRef_call2249.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2248.2
  %_p_scalar_250.2 = load double, double* %polly.access.Packed_MemRef_call2249.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_254.2, %_p_scalar_250.2
  %181 = shl nuw nsw i64 %polly.indvar236.2, 3
  %182 = add nuw nsw i64 %181, %179
  %scevgep255.2 = getelementptr i8, i8* %call, i64 %182
  %scevgep255256.2 = bitcast i8* %scevgep255.2 to double*
  %_p_scalar_257.2 = load double, double* %scevgep255256.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_257.2
  store double %p_add42.i118.2, double* %scevgep255256.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next237.2, %indvars.iv792.2
  br i1 %exitcond.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_header233.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %indvars.iv.next793.2 = add nuw nsw i64 %indvars.iv792.2, 1
  %exitcond794.2.not = icmp eq i64 %polly.indvar_next231.2, 16
  br i1 %exitcond794.2.not, label %polly.loop_exit229.2, label %polly.loop_header227.2

polly.loop_exit229.2:                             ; preds = %polly.loop_exit235.2
  %polly.indvar_next225.2 = add nuw nsw i64 %polly.indvar224.2, 1
  %exitcond795.2.not = icmp eq i64 %polly.indvar_next225.2, 60
  br i1 %exitcond795.2.not, label %polly.loop_header221.3, label %polly.loop_header221.2

polly.loop_header221.3:                           ; preds = %polly.loop_exit229.2, %polly.loop_exit229.3
  %polly.indvar224.3 = phi i64 [ %polly.indvar_next225.3, %polly.loop_exit229.3 ], [ 0, %polly.loop_exit229.2 ]
  %183 = shl nuw nsw i64 %polly.indvar224.3, 3
  %scevgep239.3 = getelementptr i8, i8* %call1, i64 %183
  br label %polly.loop_header227.3

polly.loop_header227.3:                           ; preds = %polly.loop_exit235.3, %polly.loop_header221.3
  %indvars.iv792.3 = phi i64 [ %indvars.iv.next793.3, %polly.loop_exit235.3 ], [ 49, %polly.loop_header221.3 ]
  %polly.indvar230.3 = phi i64 [ %polly.indvar_next231.3, %polly.loop_exit235.3 ], [ 0, %polly.loop_header221.3 ]
  %184 = add nuw nsw i64 %polly.indvar230.3, 48
  %polly.access.mul.Packed_MemRef_call2243.3 = mul nuw nsw i64 %184, 60
  %polly.access.add.Packed_MemRef_call2244.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2243.3, %polly.indvar224.3
  %polly.access.Packed_MemRef_call2245.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2244.3
  %_p_scalar_246.3 = load double, double* %polly.access.Packed_MemRef_call2245.3, align 8
  %185 = mul nuw nsw i64 %184, 480
  %scevgep252.3 = getelementptr i8, i8* %scevgep239.3, i64 %185
  %scevgep252253.3 = bitcast i8* %scevgep252.3 to double*
  %_p_scalar_254.3 = load double, double* %scevgep252253.3, align 8, !alias.scope !71, !noalias !77
  %186 = mul nuw nsw i64 %184, 640
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_header233.3, %polly.loop_header227.3
  %polly.indvar236.3 = phi i64 [ 0, %polly.loop_header227.3 ], [ %polly.indvar_next237.3, %polly.loop_header233.3 ]
  %187 = mul nuw nsw i64 %polly.indvar236.3, 480
  %scevgep240.3 = getelementptr i8, i8* %scevgep239.3, i64 %187
  %scevgep240241.3 = bitcast i8* %scevgep240.3 to double*
  %_p_scalar_242.3 = load double, double* %scevgep240241.3, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.3 = fmul fast double %_p_scalar_246.3, %_p_scalar_242.3
  %polly.access.mul.Packed_MemRef_call2247.3 = mul nuw nsw i64 %polly.indvar236.3, 60
  %polly.access.add.Packed_MemRef_call2248.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2247.3, %polly.indvar224.3
  %polly.access.Packed_MemRef_call2249.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2248.3
  %_p_scalar_250.3 = load double, double* %polly.access.Packed_MemRef_call2249.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_254.3, %_p_scalar_250.3
  %188 = shl nuw nsw i64 %polly.indvar236.3, 3
  %189 = add nuw nsw i64 %188, %186
  %scevgep255.3 = getelementptr i8, i8* %call, i64 %189
  %scevgep255256.3 = bitcast i8* %scevgep255.3 to double*
  %_p_scalar_257.3 = load double, double* %scevgep255256.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_257.3
  store double %p_add42.i118.3, double* %scevgep255256.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next237.3, %indvars.iv792.3
  br i1 %exitcond.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_header233.3
  %polly.indvar_next231.3 = add nuw nsw i64 %polly.indvar230.3, 1
  %indvars.iv.next793.3 = add nuw nsw i64 %indvars.iv792.3, 1
  %exitcond794.3.not = icmp eq i64 %polly.indvar_next231.3, 16
  br i1 %exitcond794.3.not, label %polly.loop_exit229.3, label %polly.loop_header227.3

polly.loop_exit229.3:                             ; preds = %polly.loop_exit235.3
  %polly.indvar_next225.3 = add nuw nsw i64 %polly.indvar224.3, 1
  %exitcond795.3.not = icmp eq i64 %polly.indvar_next225.3, 60
  br i1 %exitcond795.3.not, label %polly.loop_header221.4, label %polly.loop_header221.3

polly.loop_header221.4:                           ; preds = %polly.loop_exit229.3, %polly.loop_exit229.4
  %polly.indvar224.4 = phi i64 [ %polly.indvar_next225.4, %polly.loop_exit229.4 ], [ 0, %polly.loop_exit229.3 ]
  %190 = shl nuw nsw i64 %polly.indvar224.4, 3
  %scevgep239.4 = getelementptr i8, i8* %call1, i64 %190
  br label %polly.loop_header227.4

polly.loop_header227.4:                           ; preds = %polly.loop_exit235.4, %polly.loop_header221.4
  %indvars.iv792.4 = phi i64 [ %indvars.iv.next793.4, %polly.loop_exit235.4 ], [ 65, %polly.loop_header221.4 ]
  %polly.indvar230.4 = phi i64 [ %polly.indvar_next231.4, %polly.loop_exit235.4 ], [ 0, %polly.loop_header221.4 ]
  %191 = add nuw nsw i64 %polly.indvar230.4, 64
  %polly.access.mul.Packed_MemRef_call2243.4 = mul nuw nsw i64 %191, 60
  %polly.access.add.Packed_MemRef_call2244.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2243.4, %polly.indvar224.4
  %polly.access.Packed_MemRef_call2245.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2244.4
  %_p_scalar_246.4 = load double, double* %polly.access.Packed_MemRef_call2245.4, align 8
  %192 = mul nuw nsw i64 %191, 480
  %scevgep252.4 = getelementptr i8, i8* %scevgep239.4, i64 %192
  %scevgep252253.4 = bitcast i8* %scevgep252.4 to double*
  %_p_scalar_254.4 = load double, double* %scevgep252253.4, align 8, !alias.scope !71, !noalias !77
  %193 = mul nuw nsw i64 %191, 640
  br label %polly.loop_header233.4

polly.loop_header233.4:                           ; preds = %polly.loop_header233.4, %polly.loop_header227.4
  %polly.indvar236.4 = phi i64 [ 0, %polly.loop_header227.4 ], [ %polly.indvar_next237.4, %polly.loop_header233.4 ]
  %194 = mul nuw nsw i64 %polly.indvar236.4, 480
  %scevgep240.4 = getelementptr i8, i8* %scevgep239.4, i64 %194
  %scevgep240241.4 = bitcast i8* %scevgep240.4 to double*
  %_p_scalar_242.4 = load double, double* %scevgep240241.4, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.4 = fmul fast double %_p_scalar_246.4, %_p_scalar_242.4
  %polly.access.mul.Packed_MemRef_call2247.4 = mul nuw nsw i64 %polly.indvar236.4, 60
  %polly.access.add.Packed_MemRef_call2248.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2247.4, %polly.indvar224.4
  %polly.access.Packed_MemRef_call2249.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2248.4
  %_p_scalar_250.4 = load double, double* %polly.access.Packed_MemRef_call2249.4, align 8
  %p_mul37.i114.4 = fmul fast double %_p_scalar_254.4, %_p_scalar_250.4
  %195 = shl nuw nsw i64 %polly.indvar236.4, 3
  %196 = add nuw nsw i64 %195, %193
  %scevgep255.4 = getelementptr i8, i8* %call, i64 %196
  %scevgep255256.4 = bitcast i8* %scevgep255.4 to double*
  %_p_scalar_257.4 = load double, double* %scevgep255256.4, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_257.4
  store double %p_add42.i118.4, double* %scevgep255256.4, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.4 = add nuw nsw i64 %polly.indvar236.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar_next237.4, %indvars.iv792.4
  br i1 %exitcond.4.not, label %polly.loop_exit235.4, label %polly.loop_header233.4

polly.loop_exit235.4:                             ; preds = %polly.loop_header233.4
  %polly.indvar_next231.4 = add nuw nsw i64 %polly.indvar230.4, 1
  %indvars.iv.next793.4 = add nuw nsw i64 %indvars.iv792.4, 1
  %exitcond794.4.not = icmp eq i64 %polly.indvar_next231.4, 16
  br i1 %exitcond794.4.not, label %polly.loop_exit229.4, label %polly.loop_header227.4

polly.loop_exit229.4:                             ; preds = %polly.loop_exit235.4
  %polly.indvar_next225.4 = add nuw nsw i64 %polly.indvar224.4, 1
  %exitcond795.4.not = icmp eq i64 %polly.indvar_next225.4, 60
  br i1 %exitcond795.4.not, label %polly.loop_exit223.4, label %polly.loop_header221.4

polly.loop_exit223.4:                             ; preds = %polly.loop_exit229.4
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header384.1:                           ; preds = %polly.loop_exit392, %polly.loop_exit392.1
  %polly.indvar387.1 = phi i64 [ %polly.indvar_next388.1, %polly.loop_exit392.1 ], [ 0, %polly.loop_exit392 ]
  %197 = shl nuw nsw i64 %polly.indvar387.1, 3
  %scevgep402.1 = getelementptr i8, i8* %call1, i64 %197
  br label %polly.loop_header390.1

polly.loop_header390.1:                           ; preds = %polly.loop_exit398.1, %polly.loop_header384.1
  %indvars.iv805.1 = phi i64 [ %indvars.iv.next806.1, %polly.loop_exit398.1 ], [ 17, %polly.loop_header384.1 ]
  %polly.indvar393.1 = phi i64 [ %polly.indvar_next394.1, %polly.loop_exit398.1 ], [ 0, %polly.loop_header384.1 ]
  %198 = add nuw nsw i64 %polly.indvar393.1, 16
  %polly.access.mul.Packed_MemRef_call2263406.1 = mul nuw nsw i64 %198, 60
  %polly.access.add.Packed_MemRef_call2263407.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263406.1, %polly.indvar387.1
  %polly.access.Packed_MemRef_call2263408.1 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263407.1
  %_p_scalar_409.1 = load double, double* %polly.access.Packed_MemRef_call2263408.1, align 8
  %199 = mul nuw nsw i64 %198, 480
  %scevgep415.1 = getelementptr i8, i8* %scevgep402.1, i64 %199
  %scevgep415416.1 = bitcast i8* %scevgep415.1 to double*
  %_p_scalar_417.1 = load double, double* %scevgep415416.1, align 8, !alias.scope !81, !noalias !86
  %200 = mul nuw nsw i64 %198, 640
  br label %polly.loop_header396.1

polly.loop_header396.1:                           ; preds = %polly.loop_header396.1, %polly.loop_header390.1
  %polly.indvar399.1 = phi i64 [ 0, %polly.loop_header390.1 ], [ %polly.indvar_next400.1, %polly.loop_header396.1 ]
  %201 = mul nuw nsw i64 %polly.indvar399.1, 480
  %scevgep403.1 = getelementptr i8, i8* %scevgep402.1, i64 %201
  %scevgep403404.1 = bitcast i8* %scevgep403.1 to double*
  %_p_scalar_405.1 = load double, double* %scevgep403404.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.1 = fmul fast double %_p_scalar_409.1, %_p_scalar_405.1
  %polly.access.mul.Packed_MemRef_call2263410.1 = mul nuw nsw i64 %polly.indvar399.1, 60
  %polly.access.add.Packed_MemRef_call2263411.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263410.1, %polly.indvar387.1
  %polly.access.Packed_MemRef_call2263412.1 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263411.1
  %_p_scalar_413.1 = load double, double* %polly.access.Packed_MemRef_call2263412.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_417.1, %_p_scalar_413.1
  %202 = shl nuw nsw i64 %polly.indvar399.1, 3
  %203 = add nuw nsw i64 %202, %200
  %scevgep418.1 = getelementptr i8, i8* %call, i64 %203
  %scevgep418419.1 = bitcast i8* %scevgep418.1 to double*
  %_p_scalar_420.1 = load double, double* %scevgep418419.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_420.1
  store double %p_add42.i79.1, double* %scevgep418419.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond807.1.not = icmp eq i64 %polly.indvar_next400.1, %indvars.iv805.1
  br i1 %exitcond807.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_header396.1
  %polly.indvar_next394.1 = add nuw nsw i64 %polly.indvar393.1, 1
  %indvars.iv.next806.1 = add nuw nsw i64 %indvars.iv805.1, 1
  %exitcond808.1.not = icmp eq i64 %polly.indvar_next394.1, 16
  br i1 %exitcond808.1.not, label %polly.loop_exit392.1, label %polly.loop_header390.1

polly.loop_exit392.1:                             ; preds = %polly.loop_exit398.1
  %polly.indvar_next388.1 = add nuw nsw i64 %polly.indvar387.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next388.1, 60
  br i1 %exitcond809.1.not, label %polly.loop_header384.2, label %polly.loop_header384.1

polly.loop_header384.2:                           ; preds = %polly.loop_exit392.1, %polly.loop_exit392.2
  %polly.indvar387.2 = phi i64 [ %polly.indvar_next388.2, %polly.loop_exit392.2 ], [ 0, %polly.loop_exit392.1 ]
  %204 = shl nuw nsw i64 %polly.indvar387.2, 3
  %scevgep402.2 = getelementptr i8, i8* %call1, i64 %204
  br label %polly.loop_header390.2

polly.loop_header390.2:                           ; preds = %polly.loop_exit398.2, %polly.loop_header384.2
  %indvars.iv805.2 = phi i64 [ %indvars.iv.next806.2, %polly.loop_exit398.2 ], [ 33, %polly.loop_header384.2 ]
  %polly.indvar393.2 = phi i64 [ %polly.indvar_next394.2, %polly.loop_exit398.2 ], [ 0, %polly.loop_header384.2 ]
  %205 = add nuw nsw i64 %polly.indvar393.2, 32
  %polly.access.mul.Packed_MemRef_call2263406.2 = mul nuw nsw i64 %205, 60
  %polly.access.add.Packed_MemRef_call2263407.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263406.2, %polly.indvar387.2
  %polly.access.Packed_MemRef_call2263408.2 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263407.2
  %_p_scalar_409.2 = load double, double* %polly.access.Packed_MemRef_call2263408.2, align 8
  %206 = mul nuw nsw i64 %205, 480
  %scevgep415.2 = getelementptr i8, i8* %scevgep402.2, i64 %206
  %scevgep415416.2 = bitcast i8* %scevgep415.2 to double*
  %_p_scalar_417.2 = load double, double* %scevgep415416.2, align 8, !alias.scope !81, !noalias !86
  %207 = mul nuw nsw i64 %205, 640
  br label %polly.loop_header396.2

polly.loop_header396.2:                           ; preds = %polly.loop_header396.2, %polly.loop_header390.2
  %polly.indvar399.2 = phi i64 [ 0, %polly.loop_header390.2 ], [ %polly.indvar_next400.2, %polly.loop_header396.2 ]
  %208 = mul nuw nsw i64 %polly.indvar399.2, 480
  %scevgep403.2 = getelementptr i8, i8* %scevgep402.2, i64 %208
  %scevgep403404.2 = bitcast i8* %scevgep403.2 to double*
  %_p_scalar_405.2 = load double, double* %scevgep403404.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.2 = fmul fast double %_p_scalar_409.2, %_p_scalar_405.2
  %polly.access.mul.Packed_MemRef_call2263410.2 = mul nuw nsw i64 %polly.indvar399.2, 60
  %polly.access.add.Packed_MemRef_call2263411.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263410.2, %polly.indvar387.2
  %polly.access.Packed_MemRef_call2263412.2 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263411.2
  %_p_scalar_413.2 = load double, double* %polly.access.Packed_MemRef_call2263412.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_417.2, %_p_scalar_413.2
  %209 = shl nuw nsw i64 %polly.indvar399.2, 3
  %210 = add nuw nsw i64 %209, %207
  %scevgep418.2 = getelementptr i8, i8* %call, i64 %210
  %scevgep418419.2 = bitcast i8* %scevgep418.2 to double*
  %_p_scalar_420.2 = load double, double* %scevgep418419.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_420.2
  store double %p_add42.i79.2, double* %scevgep418419.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %exitcond807.2.not = icmp eq i64 %polly.indvar_next400.2, %indvars.iv805.2
  br i1 %exitcond807.2.not, label %polly.loop_exit398.2, label %polly.loop_header396.2

polly.loop_exit398.2:                             ; preds = %polly.loop_header396.2
  %polly.indvar_next394.2 = add nuw nsw i64 %polly.indvar393.2, 1
  %indvars.iv.next806.2 = add nuw nsw i64 %indvars.iv805.2, 1
  %exitcond808.2.not = icmp eq i64 %polly.indvar_next394.2, 16
  br i1 %exitcond808.2.not, label %polly.loop_exit392.2, label %polly.loop_header390.2

polly.loop_exit392.2:                             ; preds = %polly.loop_exit398.2
  %polly.indvar_next388.2 = add nuw nsw i64 %polly.indvar387.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next388.2, 60
  br i1 %exitcond809.2.not, label %polly.loop_header384.3, label %polly.loop_header384.2

polly.loop_header384.3:                           ; preds = %polly.loop_exit392.2, %polly.loop_exit392.3
  %polly.indvar387.3 = phi i64 [ %polly.indvar_next388.3, %polly.loop_exit392.3 ], [ 0, %polly.loop_exit392.2 ]
  %211 = shl nuw nsw i64 %polly.indvar387.3, 3
  %scevgep402.3 = getelementptr i8, i8* %call1, i64 %211
  br label %polly.loop_header390.3

polly.loop_header390.3:                           ; preds = %polly.loop_exit398.3, %polly.loop_header384.3
  %indvars.iv805.3 = phi i64 [ %indvars.iv.next806.3, %polly.loop_exit398.3 ], [ 49, %polly.loop_header384.3 ]
  %polly.indvar393.3 = phi i64 [ %polly.indvar_next394.3, %polly.loop_exit398.3 ], [ 0, %polly.loop_header384.3 ]
  %212 = add nuw nsw i64 %polly.indvar393.3, 48
  %polly.access.mul.Packed_MemRef_call2263406.3 = mul nuw nsw i64 %212, 60
  %polly.access.add.Packed_MemRef_call2263407.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263406.3, %polly.indvar387.3
  %polly.access.Packed_MemRef_call2263408.3 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263407.3
  %_p_scalar_409.3 = load double, double* %polly.access.Packed_MemRef_call2263408.3, align 8
  %213 = mul nuw nsw i64 %212, 480
  %scevgep415.3 = getelementptr i8, i8* %scevgep402.3, i64 %213
  %scevgep415416.3 = bitcast i8* %scevgep415.3 to double*
  %_p_scalar_417.3 = load double, double* %scevgep415416.3, align 8, !alias.scope !81, !noalias !86
  %214 = mul nuw nsw i64 %212, 640
  br label %polly.loop_header396.3

polly.loop_header396.3:                           ; preds = %polly.loop_header396.3, %polly.loop_header390.3
  %polly.indvar399.3 = phi i64 [ 0, %polly.loop_header390.3 ], [ %polly.indvar_next400.3, %polly.loop_header396.3 ]
  %215 = mul nuw nsw i64 %polly.indvar399.3, 480
  %scevgep403.3 = getelementptr i8, i8* %scevgep402.3, i64 %215
  %scevgep403404.3 = bitcast i8* %scevgep403.3 to double*
  %_p_scalar_405.3 = load double, double* %scevgep403404.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.3 = fmul fast double %_p_scalar_409.3, %_p_scalar_405.3
  %polly.access.mul.Packed_MemRef_call2263410.3 = mul nuw nsw i64 %polly.indvar399.3, 60
  %polly.access.add.Packed_MemRef_call2263411.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263410.3, %polly.indvar387.3
  %polly.access.Packed_MemRef_call2263412.3 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263411.3
  %_p_scalar_413.3 = load double, double* %polly.access.Packed_MemRef_call2263412.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_417.3, %_p_scalar_413.3
  %216 = shl nuw nsw i64 %polly.indvar399.3, 3
  %217 = add nuw nsw i64 %216, %214
  %scevgep418.3 = getelementptr i8, i8* %call, i64 %217
  %scevgep418419.3 = bitcast i8* %scevgep418.3 to double*
  %_p_scalar_420.3 = load double, double* %scevgep418419.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_420.3
  store double %p_add42.i79.3, double* %scevgep418419.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.3 = add nuw nsw i64 %polly.indvar399.3, 1
  %exitcond807.3.not = icmp eq i64 %polly.indvar_next400.3, %indvars.iv805.3
  br i1 %exitcond807.3.not, label %polly.loop_exit398.3, label %polly.loop_header396.3

polly.loop_exit398.3:                             ; preds = %polly.loop_header396.3
  %polly.indvar_next394.3 = add nuw nsw i64 %polly.indvar393.3, 1
  %indvars.iv.next806.3 = add nuw nsw i64 %indvars.iv805.3, 1
  %exitcond808.3.not = icmp eq i64 %polly.indvar_next394.3, 16
  br i1 %exitcond808.3.not, label %polly.loop_exit392.3, label %polly.loop_header390.3

polly.loop_exit392.3:                             ; preds = %polly.loop_exit398.3
  %polly.indvar_next388.3 = add nuw nsw i64 %polly.indvar387.3, 1
  %exitcond809.3.not = icmp eq i64 %polly.indvar_next388.3, 60
  br i1 %exitcond809.3.not, label %polly.loop_header384.4, label %polly.loop_header384.3

polly.loop_header384.4:                           ; preds = %polly.loop_exit392.3, %polly.loop_exit392.4
  %polly.indvar387.4 = phi i64 [ %polly.indvar_next388.4, %polly.loop_exit392.4 ], [ 0, %polly.loop_exit392.3 ]
  %218 = shl nuw nsw i64 %polly.indvar387.4, 3
  %scevgep402.4 = getelementptr i8, i8* %call1, i64 %218
  br label %polly.loop_header390.4

polly.loop_header390.4:                           ; preds = %polly.loop_exit398.4, %polly.loop_header384.4
  %indvars.iv805.4 = phi i64 [ %indvars.iv.next806.4, %polly.loop_exit398.4 ], [ 65, %polly.loop_header384.4 ]
  %polly.indvar393.4 = phi i64 [ %polly.indvar_next394.4, %polly.loop_exit398.4 ], [ 0, %polly.loop_header384.4 ]
  %219 = add nuw nsw i64 %polly.indvar393.4, 64
  %polly.access.mul.Packed_MemRef_call2263406.4 = mul nuw nsw i64 %219, 60
  %polly.access.add.Packed_MemRef_call2263407.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263406.4, %polly.indvar387.4
  %polly.access.Packed_MemRef_call2263408.4 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263407.4
  %_p_scalar_409.4 = load double, double* %polly.access.Packed_MemRef_call2263408.4, align 8
  %220 = mul nuw nsw i64 %219, 480
  %scevgep415.4 = getelementptr i8, i8* %scevgep402.4, i64 %220
  %scevgep415416.4 = bitcast i8* %scevgep415.4 to double*
  %_p_scalar_417.4 = load double, double* %scevgep415416.4, align 8, !alias.scope !81, !noalias !86
  %221 = mul nuw nsw i64 %219, 640
  br label %polly.loop_header396.4

polly.loop_header396.4:                           ; preds = %polly.loop_header396.4, %polly.loop_header390.4
  %polly.indvar399.4 = phi i64 [ 0, %polly.loop_header390.4 ], [ %polly.indvar_next400.4, %polly.loop_header396.4 ]
  %222 = mul nuw nsw i64 %polly.indvar399.4, 480
  %scevgep403.4 = getelementptr i8, i8* %scevgep402.4, i64 %222
  %scevgep403404.4 = bitcast i8* %scevgep403.4 to double*
  %_p_scalar_405.4 = load double, double* %scevgep403404.4, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.4 = fmul fast double %_p_scalar_409.4, %_p_scalar_405.4
  %polly.access.mul.Packed_MemRef_call2263410.4 = mul nuw nsw i64 %polly.indvar399.4, 60
  %polly.access.add.Packed_MemRef_call2263411.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2263410.4, %polly.indvar387.4
  %polly.access.Packed_MemRef_call2263412.4 = getelementptr double, double* %Packed_MemRef_call2263, i64 %polly.access.add.Packed_MemRef_call2263411.4
  %_p_scalar_413.4 = load double, double* %polly.access.Packed_MemRef_call2263412.4, align 8
  %p_mul37.i75.4 = fmul fast double %_p_scalar_417.4, %_p_scalar_413.4
  %223 = shl nuw nsw i64 %polly.indvar399.4, 3
  %224 = add nuw nsw i64 %223, %221
  %scevgep418.4 = getelementptr i8, i8* %call, i64 %224
  %scevgep418419.4 = bitcast i8* %scevgep418.4 to double*
  %_p_scalar_420.4 = load double, double* %scevgep418419.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_420.4
  store double %p_add42.i79.4, double* %scevgep418419.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.4 = add nuw nsw i64 %polly.indvar399.4, 1
  %exitcond807.4.not = icmp eq i64 %polly.indvar_next400.4, %indvars.iv805.4
  br i1 %exitcond807.4.not, label %polly.loop_exit398.4, label %polly.loop_header396.4

polly.loop_exit398.4:                             ; preds = %polly.loop_header396.4
  %polly.indvar_next394.4 = add nuw nsw i64 %polly.indvar393.4, 1
  %indvars.iv.next806.4 = add nuw nsw i64 %indvars.iv805.4, 1
  %exitcond808.4.not = icmp eq i64 %polly.indvar_next394.4, 16
  br i1 %exitcond808.4.not, label %polly.loop_exit392.4, label %polly.loop_header390.4

polly.loop_exit392.4:                             ; preds = %polly.loop_exit398.4
  %polly.indvar_next388.4 = add nuw nsw i64 %polly.indvar387.4, 1
  %exitcond809.4.not = icmp eq i64 %polly.indvar_next388.4, 60
  br i1 %exitcond809.4.not, label %polly.loop_exit386.4, label %polly.loop_header384.4

polly.loop_exit386.4:                             ; preds = %polly.loop_exit392.4
  tail call void @free(i8* nonnull %malloccall262)
  br label %kernel_syr2k.exit90

polly.loop_header547.1:                           ; preds = %polly.loop_exit555, %polly.loop_exit555.1
  %polly.indvar550.1 = phi i64 [ %polly.indvar_next551.1, %polly.loop_exit555.1 ], [ 0, %polly.loop_exit555 ]
  %225 = shl nuw nsw i64 %polly.indvar550.1, 3
  %scevgep565.1 = getelementptr i8, i8* %call1, i64 %225
  br label %polly.loop_header553.1

polly.loop_header553.1:                           ; preds = %polly.loop_exit561.1, %polly.loop_header547.1
  %indvars.iv819.1 = phi i64 [ %indvars.iv.next820.1, %polly.loop_exit561.1 ], [ 17, %polly.loop_header547.1 ]
  %polly.indvar556.1 = phi i64 [ %polly.indvar_next557.1, %polly.loop_exit561.1 ], [ 0, %polly.loop_header547.1 ]
  %226 = add nuw nsw i64 %polly.indvar556.1, 16
  %polly.access.mul.Packed_MemRef_call2426569.1 = mul nuw nsw i64 %226, 60
  %polly.access.add.Packed_MemRef_call2426570.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426569.1, %polly.indvar550.1
  %polly.access.Packed_MemRef_call2426571.1 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426570.1
  %_p_scalar_572.1 = load double, double* %polly.access.Packed_MemRef_call2426571.1, align 8
  %227 = mul nuw nsw i64 %226, 480
  %scevgep578.1 = getelementptr i8, i8* %scevgep565.1, i64 %227
  %scevgep578579.1 = bitcast i8* %scevgep578.1 to double*
  %_p_scalar_580.1 = load double, double* %scevgep578579.1, align 8, !alias.scope !90, !noalias !95
  %228 = mul nuw nsw i64 %226, 640
  br label %polly.loop_header559.1

polly.loop_header559.1:                           ; preds = %polly.loop_header559.1, %polly.loop_header553.1
  %polly.indvar562.1 = phi i64 [ 0, %polly.loop_header553.1 ], [ %polly.indvar_next563.1, %polly.loop_header559.1 ]
  %229 = mul nuw nsw i64 %polly.indvar562.1, 480
  %scevgep566.1 = getelementptr i8, i8* %scevgep565.1, i64 %229
  %scevgep566567.1 = bitcast i8* %scevgep566.1 to double*
  %_p_scalar_568.1 = load double, double* %scevgep566567.1, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.1 = fmul fast double %_p_scalar_572.1, %_p_scalar_568.1
  %polly.access.mul.Packed_MemRef_call2426573.1 = mul nuw nsw i64 %polly.indvar562.1, 60
  %polly.access.add.Packed_MemRef_call2426574.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426573.1, %polly.indvar550.1
  %polly.access.Packed_MemRef_call2426575.1 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426574.1
  %_p_scalar_576.1 = load double, double* %polly.access.Packed_MemRef_call2426575.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_580.1, %_p_scalar_576.1
  %230 = shl nuw nsw i64 %polly.indvar562.1, 3
  %231 = add nuw nsw i64 %230, %228
  %scevgep581.1 = getelementptr i8, i8* %call, i64 %231
  %scevgep581582.1 = bitcast i8* %scevgep581.1 to double*
  %_p_scalar_583.1 = load double, double* %scevgep581582.1, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_583.1
  store double %p_add42.i.1, double* %scevgep581582.1, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.1 = add nuw nsw i64 %polly.indvar562.1, 1
  %exitcond821.1.not = icmp eq i64 %polly.indvar_next563.1, %indvars.iv819.1
  br i1 %exitcond821.1.not, label %polly.loop_exit561.1, label %polly.loop_header559.1

polly.loop_exit561.1:                             ; preds = %polly.loop_header559.1
  %polly.indvar_next557.1 = add nuw nsw i64 %polly.indvar556.1, 1
  %indvars.iv.next820.1 = add nuw nsw i64 %indvars.iv819.1, 1
  %exitcond822.1.not = icmp eq i64 %polly.indvar_next557.1, 16
  br i1 %exitcond822.1.not, label %polly.loop_exit555.1, label %polly.loop_header553.1

polly.loop_exit555.1:                             ; preds = %polly.loop_exit561.1
  %polly.indvar_next551.1 = add nuw nsw i64 %polly.indvar550.1, 1
  %exitcond823.1.not = icmp eq i64 %polly.indvar_next551.1, 60
  br i1 %exitcond823.1.not, label %polly.loop_header547.2, label %polly.loop_header547.1

polly.loop_header547.2:                           ; preds = %polly.loop_exit555.1, %polly.loop_exit555.2
  %polly.indvar550.2 = phi i64 [ %polly.indvar_next551.2, %polly.loop_exit555.2 ], [ 0, %polly.loop_exit555.1 ]
  %232 = shl nuw nsw i64 %polly.indvar550.2, 3
  %scevgep565.2 = getelementptr i8, i8* %call1, i64 %232
  br label %polly.loop_header553.2

polly.loop_header553.2:                           ; preds = %polly.loop_exit561.2, %polly.loop_header547.2
  %indvars.iv819.2 = phi i64 [ %indvars.iv.next820.2, %polly.loop_exit561.2 ], [ 33, %polly.loop_header547.2 ]
  %polly.indvar556.2 = phi i64 [ %polly.indvar_next557.2, %polly.loop_exit561.2 ], [ 0, %polly.loop_header547.2 ]
  %233 = add nuw nsw i64 %polly.indvar556.2, 32
  %polly.access.mul.Packed_MemRef_call2426569.2 = mul nuw nsw i64 %233, 60
  %polly.access.add.Packed_MemRef_call2426570.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426569.2, %polly.indvar550.2
  %polly.access.Packed_MemRef_call2426571.2 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426570.2
  %_p_scalar_572.2 = load double, double* %polly.access.Packed_MemRef_call2426571.2, align 8
  %234 = mul nuw nsw i64 %233, 480
  %scevgep578.2 = getelementptr i8, i8* %scevgep565.2, i64 %234
  %scevgep578579.2 = bitcast i8* %scevgep578.2 to double*
  %_p_scalar_580.2 = load double, double* %scevgep578579.2, align 8, !alias.scope !90, !noalias !95
  %235 = mul nuw nsw i64 %233, 640
  br label %polly.loop_header559.2

polly.loop_header559.2:                           ; preds = %polly.loop_header559.2, %polly.loop_header553.2
  %polly.indvar562.2 = phi i64 [ 0, %polly.loop_header553.2 ], [ %polly.indvar_next563.2, %polly.loop_header559.2 ]
  %236 = mul nuw nsw i64 %polly.indvar562.2, 480
  %scevgep566.2 = getelementptr i8, i8* %scevgep565.2, i64 %236
  %scevgep566567.2 = bitcast i8* %scevgep566.2 to double*
  %_p_scalar_568.2 = load double, double* %scevgep566567.2, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.2 = fmul fast double %_p_scalar_572.2, %_p_scalar_568.2
  %polly.access.mul.Packed_MemRef_call2426573.2 = mul nuw nsw i64 %polly.indvar562.2, 60
  %polly.access.add.Packed_MemRef_call2426574.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426573.2, %polly.indvar550.2
  %polly.access.Packed_MemRef_call2426575.2 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426574.2
  %_p_scalar_576.2 = load double, double* %polly.access.Packed_MemRef_call2426575.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_580.2, %_p_scalar_576.2
  %237 = shl nuw nsw i64 %polly.indvar562.2, 3
  %238 = add nuw nsw i64 %237, %235
  %scevgep581.2 = getelementptr i8, i8* %call, i64 %238
  %scevgep581582.2 = bitcast i8* %scevgep581.2 to double*
  %_p_scalar_583.2 = load double, double* %scevgep581582.2, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_583.2
  store double %p_add42.i.2, double* %scevgep581582.2, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.2 = add nuw nsw i64 %polly.indvar562.2, 1
  %exitcond821.2.not = icmp eq i64 %polly.indvar_next563.2, %indvars.iv819.2
  br i1 %exitcond821.2.not, label %polly.loop_exit561.2, label %polly.loop_header559.2

polly.loop_exit561.2:                             ; preds = %polly.loop_header559.2
  %polly.indvar_next557.2 = add nuw nsw i64 %polly.indvar556.2, 1
  %indvars.iv.next820.2 = add nuw nsw i64 %indvars.iv819.2, 1
  %exitcond822.2.not = icmp eq i64 %polly.indvar_next557.2, 16
  br i1 %exitcond822.2.not, label %polly.loop_exit555.2, label %polly.loop_header553.2

polly.loop_exit555.2:                             ; preds = %polly.loop_exit561.2
  %polly.indvar_next551.2 = add nuw nsw i64 %polly.indvar550.2, 1
  %exitcond823.2.not = icmp eq i64 %polly.indvar_next551.2, 60
  br i1 %exitcond823.2.not, label %polly.loop_header547.3, label %polly.loop_header547.2

polly.loop_header547.3:                           ; preds = %polly.loop_exit555.2, %polly.loop_exit555.3
  %polly.indvar550.3 = phi i64 [ %polly.indvar_next551.3, %polly.loop_exit555.3 ], [ 0, %polly.loop_exit555.2 ]
  %239 = shl nuw nsw i64 %polly.indvar550.3, 3
  %scevgep565.3 = getelementptr i8, i8* %call1, i64 %239
  br label %polly.loop_header553.3

polly.loop_header553.3:                           ; preds = %polly.loop_exit561.3, %polly.loop_header547.3
  %indvars.iv819.3 = phi i64 [ %indvars.iv.next820.3, %polly.loop_exit561.3 ], [ 49, %polly.loop_header547.3 ]
  %polly.indvar556.3 = phi i64 [ %polly.indvar_next557.3, %polly.loop_exit561.3 ], [ 0, %polly.loop_header547.3 ]
  %240 = add nuw nsw i64 %polly.indvar556.3, 48
  %polly.access.mul.Packed_MemRef_call2426569.3 = mul nuw nsw i64 %240, 60
  %polly.access.add.Packed_MemRef_call2426570.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426569.3, %polly.indvar550.3
  %polly.access.Packed_MemRef_call2426571.3 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426570.3
  %_p_scalar_572.3 = load double, double* %polly.access.Packed_MemRef_call2426571.3, align 8
  %241 = mul nuw nsw i64 %240, 480
  %scevgep578.3 = getelementptr i8, i8* %scevgep565.3, i64 %241
  %scevgep578579.3 = bitcast i8* %scevgep578.3 to double*
  %_p_scalar_580.3 = load double, double* %scevgep578579.3, align 8, !alias.scope !90, !noalias !95
  %242 = mul nuw nsw i64 %240, 640
  br label %polly.loop_header559.3

polly.loop_header559.3:                           ; preds = %polly.loop_header559.3, %polly.loop_header553.3
  %polly.indvar562.3 = phi i64 [ 0, %polly.loop_header553.3 ], [ %polly.indvar_next563.3, %polly.loop_header559.3 ]
  %243 = mul nuw nsw i64 %polly.indvar562.3, 480
  %scevgep566.3 = getelementptr i8, i8* %scevgep565.3, i64 %243
  %scevgep566567.3 = bitcast i8* %scevgep566.3 to double*
  %_p_scalar_568.3 = load double, double* %scevgep566567.3, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.3 = fmul fast double %_p_scalar_572.3, %_p_scalar_568.3
  %polly.access.mul.Packed_MemRef_call2426573.3 = mul nuw nsw i64 %polly.indvar562.3, 60
  %polly.access.add.Packed_MemRef_call2426574.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426573.3, %polly.indvar550.3
  %polly.access.Packed_MemRef_call2426575.3 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426574.3
  %_p_scalar_576.3 = load double, double* %polly.access.Packed_MemRef_call2426575.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_580.3, %_p_scalar_576.3
  %244 = shl nuw nsw i64 %polly.indvar562.3, 3
  %245 = add nuw nsw i64 %244, %242
  %scevgep581.3 = getelementptr i8, i8* %call, i64 %245
  %scevgep581582.3 = bitcast i8* %scevgep581.3 to double*
  %_p_scalar_583.3 = load double, double* %scevgep581582.3, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_583.3
  store double %p_add42.i.3, double* %scevgep581582.3, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.3 = add nuw nsw i64 %polly.indvar562.3, 1
  %exitcond821.3.not = icmp eq i64 %polly.indvar_next563.3, %indvars.iv819.3
  br i1 %exitcond821.3.not, label %polly.loop_exit561.3, label %polly.loop_header559.3

polly.loop_exit561.3:                             ; preds = %polly.loop_header559.3
  %polly.indvar_next557.3 = add nuw nsw i64 %polly.indvar556.3, 1
  %indvars.iv.next820.3 = add nuw nsw i64 %indvars.iv819.3, 1
  %exitcond822.3.not = icmp eq i64 %polly.indvar_next557.3, 16
  br i1 %exitcond822.3.not, label %polly.loop_exit555.3, label %polly.loop_header553.3

polly.loop_exit555.3:                             ; preds = %polly.loop_exit561.3
  %polly.indvar_next551.3 = add nuw nsw i64 %polly.indvar550.3, 1
  %exitcond823.3.not = icmp eq i64 %polly.indvar_next551.3, 60
  br i1 %exitcond823.3.not, label %polly.loop_header547.4, label %polly.loop_header547.3

polly.loop_header547.4:                           ; preds = %polly.loop_exit555.3, %polly.loop_exit555.4
  %polly.indvar550.4 = phi i64 [ %polly.indvar_next551.4, %polly.loop_exit555.4 ], [ 0, %polly.loop_exit555.3 ]
  %246 = shl nuw nsw i64 %polly.indvar550.4, 3
  %scevgep565.4 = getelementptr i8, i8* %call1, i64 %246
  br label %polly.loop_header553.4

polly.loop_header553.4:                           ; preds = %polly.loop_exit561.4, %polly.loop_header547.4
  %indvars.iv819.4 = phi i64 [ %indvars.iv.next820.4, %polly.loop_exit561.4 ], [ 65, %polly.loop_header547.4 ]
  %polly.indvar556.4 = phi i64 [ %polly.indvar_next557.4, %polly.loop_exit561.4 ], [ 0, %polly.loop_header547.4 ]
  %247 = add nuw nsw i64 %polly.indvar556.4, 64
  %polly.access.mul.Packed_MemRef_call2426569.4 = mul nuw nsw i64 %247, 60
  %polly.access.add.Packed_MemRef_call2426570.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426569.4, %polly.indvar550.4
  %polly.access.Packed_MemRef_call2426571.4 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426570.4
  %_p_scalar_572.4 = load double, double* %polly.access.Packed_MemRef_call2426571.4, align 8
  %248 = mul nuw nsw i64 %247, 480
  %scevgep578.4 = getelementptr i8, i8* %scevgep565.4, i64 %248
  %scevgep578579.4 = bitcast i8* %scevgep578.4 to double*
  %_p_scalar_580.4 = load double, double* %scevgep578579.4, align 8, !alias.scope !90, !noalias !95
  %249 = mul nuw nsw i64 %247, 640
  br label %polly.loop_header559.4

polly.loop_header559.4:                           ; preds = %polly.loop_header559.4, %polly.loop_header553.4
  %polly.indvar562.4 = phi i64 [ 0, %polly.loop_header553.4 ], [ %polly.indvar_next563.4, %polly.loop_header559.4 ]
  %250 = mul nuw nsw i64 %polly.indvar562.4, 480
  %scevgep566.4 = getelementptr i8, i8* %scevgep565.4, i64 %250
  %scevgep566567.4 = bitcast i8* %scevgep566.4 to double*
  %_p_scalar_568.4 = load double, double* %scevgep566567.4, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.4 = fmul fast double %_p_scalar_572.4, %_p_scalar_568.4
  %polly.access.mul.Packed_MemRef_call2426573.4 = mul nuw nsw i64 %polly.indvar562.4, 60
  %polly.access.add.Packed_MemRef_call2426574.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2426573.4, %polly.indvar550.4
  %polly.access.Packed_MemRef_call2426575.4 = getelementptr double, double* %Packed_MemRef_call2426, i64 %polly.access.add.Packed_MemRef_call2426574.4
  %_p_scalar_576.4 = load double, double* %polly.access.Packed_MemRef_call2426575.4, align 8
  %p_mul37.i.4 = fmul fast double %_p_scalar_580.4, %_p_scalar_576.4
  %251 = shl nuw nsw i64 %polly.indvar562.4, 3
  %252 = add nuw nsw i64 %251, %249
  %scevgep581.4 = getelementptr i8, i8* %call, i64 %252
  %scevgep581582.4 = bitcast i8* %scevgep581.4 to double*
  %_p_scalar_583.4 = load double, double* %scevgep581582.4, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_583.4
  store double %p_add42.i.4, double* %scevgep581582.4, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.4 = add nuw nsw i64 %polly.indvar562.4, 1
  %exitcond821.4.not = icmp eq i64 %polly.indvar_next563.4, %indvars.iv819.4
  br i1 %exitcond821.4.not, label %polly.loop_exit561.4, label %polly.loop_header559.4

polly.loop_exit561.4:                             ; preds = %polly.loop_header559.4
  %polly.indvar_next557.4 = add nuw nsw i64 %polly.indvar556.4, 1
  %indvars.iv.next820.4 = add nuw nsw i64 %indvars.iv819.4, 1
  %exitcond822.4.not = icmp eq i64 %polly.indvar_next557.4, 16
  br i1 %exitcond822.4.not, label %polly.loop_exit555.4, label %polly.loop_header553.4

polly.loop_exit555.4:                             ; preds = %polly.loop_exit561.4
  %polly.indvar_next551.4 = add nuw nsw i64 %polly.indvar550.4, 1
  %exitcond823.4.not = icmp eq i64 %polly.indvar_next551.4, 60
  br i1 %exitcond823.4.not, label %polly.loop_exit549.4, label %polly.loop_header547.4

polly.loop_exit549.4:                             ; preds = %polly.loop_exit555.4
  tail call void @free(i8* nonnull %malloccall425)
  br label %kernel_syr2k.exit

polly.loop_header775.1:                           ; preds = %polly.loop_exit783, %polly.loop_exit783.1
  %polly.indvar778.1 = phi i64 [ %polly.indvar_next779.1, %polly.loop_exit783.1 ], [ 0, %polly.loop_exit783 ]
  %253 = mul nuw nsw i64 %polly.indvar778.1, 480
  %254 = trunc i64 %polly.indvar778.1 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %254, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %polly.loop_header775.1
  %index1137 = phi i64 [ 0, %polly.loop_header775.1 ], [ %index.next1138, %vector.body1135 ]
  %vec.ind1141 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1 ], [ %vec.ind.next1142, %vector.body1135 ]
  %255 = add nuw nsw <4 x i64> %vec.ind1141, <i64 32, i64 32, i64 32, i64 32>
  %256 = trunc <4 x i64> %255 to <4 x i32>
  %257 = mul <4 x i32> %broadcast.splat1144, %256
  %258 = add <4 x i32> %257, <i32 1, i32 1, i32 1, i32 1>
  %259 = urem <4 x i32> %258, <i32 80, i32 80, i32 80, i32 80>
  %260 = sitofp <4 x i32> %259 to <4 x double>
  %261 = fmul fast <4 x double> %260, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %262 = extractelement <4 x i64> %255, i32 0
  %263 = shl i64 %262, 3
  %264 = add i64 %263, %253
  %265 = getelementptr i8, i8* %call1, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %261, <4 x double>* %266, align 8, !alias.scope !99, !noalias !104
  %index.next1138 = add i64 %index1137, 4
  %vec.ind.next1142 = add <4 x i64> %vec.ind1141, <i64 4, i64 4, i64 4, i64 4>
  %267 = icmp eq i64 %index.next1138, 28
  br i1 %267, label %polly.loop_exit783.1, label %vector.body1135, !llvm.loop !106

polly.loop_exit783.1:                             ; preds = %vector.body1135
  %polly.indvar_next779.1 = add nuw nsw i64 %polly.indvar778.1, 1
  %exitcond834.1.not = icmp eq i64 %polly.indvar_next779.1, 32
  br i1 %exitcond834.1.not, label %polly.loop_header775.1854, label %polly.loop_header775.1

polly.loop_header775.1854:                        ; preds = %polly.loop_exit783.1, %polly.loop_exit783.1865
  %polly.indvar778.1853 = phi i64 [ %polly.indvar_next779.1863, %polly.loop_exit783.1865 ], [ 0, %polly.loop_exit783.1 ]
  %268 = add nuw nsw i64 %polly.indvar778.1853, 32
  %269 = mul nuw nsw i64 %268, 480
  %270 = trunc i64 %268 to i32
  %broadcast.splatinsert1157 = insertelement <4 x i32> poison, i32 %270, i32 0
  %broadcast.splat1158 = shufflevector <4 x i32> %broadcast.splatinsert1157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header775.1854
  %index1149 = phi i64 [ 0, %polly.loop_header775.1854 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1155 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.1854 ], [ %vec.ind.next1156, %vector.body1147 ]
  %271 = mul <4 x i32> %vec.ind1155, %broadcast.splat1158
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 80, i32 80, i32 80, i32 80>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %276 = shl i64 %index1149, 3
  %277 = add i64 %276, %269
  %278 = getelementptr i8, i8* %call1, i64 %277
  %279 = bitcast i8* %278 to <4 x double>*
  store <4 x double> %275, <4 x double>* %279, align 8, !alias.scope !99, !noalias !104
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1156 = add <4 x i32> %vec.ind1155, <i32 4, i32 4, i32 4, i32 4>
  %280 = icmp eq i64 %index.next1150, 32
  br i1 %280, label %polly.loop_exit783.1865, label %vector.body1147, !llvm.loop !107

polly.loop_exit783.1865:                          ; preds = %vector.body1147
  %polly.indvar_next779.1863 = add nuw nsw i64 %polly.indvar778.1853, 1
  %exitcond834.1864.not = icmp eq i64 %polly.indvar_next779.1863, 32
  br i1 %exitcond834.1864.not, label %polly.loop_header775.1.1, label %polly.loop_header775.1854

polly.loop_header775.1.1:                         ; preds = %polly.loop_exit783.1865, %polly.loop_exit783.1.1
  %polly.indvar778.1.1 = phi i64 [ %polly.indvar_next779.1.1, %polly.loop_exit783.1.1 ], [ 0, %polly.loop_exit783.1865 ]
  %281 = add nuw nsw i64 %polly.indvar778.1.1, 32
  %282 = mul nuw nsw i64 %281, 480
  %283 = trunc i64 %281 to i32
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %283, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %polly.loop_header775.1.1
  %index1163 = phi i64 [ 0, %polly.loop_header775.1.1 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1167 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.1 ], [ %vec.ind.next1168, %vector.body1161 ]
  %284 = add nuw nsw <4 x i64> %vec.ind1167, <i64 32, i64 32, i64 32, i64 32>
  %285 = trunc <4 x i64> %284 to <4 x i32>
  %286 = mul <4 x i32> %broadcast.splat1170, %285
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 80, i32 80, i32 80, i32 80>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %291 = extractelement <4 x i64> %284, i32 0
  %292 = shl i64 %291, 3
  %293 = add i64 %292, %282
  %294 = getelementptr i8, i8* %call1, i64 %293
  %295 = bitcast i8* %294 to <4 x double>*
  store <4 x double> %290, <4 x double>* %295, align 8, !alias.scope !99, !noalias !104
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1168 = add <4 x i64> %vec.ind1167, <i64 4, i64 4, i64 4, i64 4>
  %296 = icmp eq i64 %index.next1164, 28
  br i1 %296, label %polly.loop_exit783.1.1, label %vector.body1161, !llvm.loop !108

polly.loop_exit783.1.1:                           ; preds = %vector.body1161
  %polly.indvar_next779.1.1 = add nuw nsw i64 %polly.indvar778.1.1, 1
  %exitcond834.1.1.not = icmp eq i64 %polly.indvar_next779.1.1, 32
  br i1 %exitcond834.1.1.not, label %polly.loop_header775.2, label %polly.loop_header775.1.1

polly.loop_header775.2:                           ; preds = %polly.loop_exit783.1.1, %polly.loop_exit783.2
  %polly.indvar778.2 = phi i64 [ %polly.indvar_next779.2, %polly.loop_exit783.2 ], [ 0, %polly.loop_exit783.1.1 ]
  %297 = add nuw nsw i64 %polly.indvar778.2, 64
  %298 = mul nuw nsw i64 %297, 480
  %299 = trunc i64 %297 to i32
  %broadcast.splatinsert1183 = insertelement <4 x i32> poison, i32 %299, i32 0
  %broadcast.splat1184 = shufflevector <4 x i32> %broadcast.splatinsert1183, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %polly.loop_header775.2
  %index1175 = phi i64 [ 0, %polly.loop_header775.2 ], [ %index.next1176, %vector.body1173 ]
  %vec.ind1181 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.2 ], [ %vec.ind.next1182, %vector.body1173 ]
  %300 = mul <4 x i32> %vec.ind1181, %broadcast.splat1184
  %301 = add <4 x i32> %300, <i32 1, i32 1, i32 1, i32 1>
  %302 = urem <4 x i32> %301, <i32 80, i32 80, i32 80, i32 80>
  %303 = sitofp <4 x i32> %302 to <4 x double>
  %304 = fmul fast <4 x double> %303, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %305 = shl i64 %index1175, 3
  %306 = add i64 %305, %298
  %307 = getelementptr i8, i8* %call1, i64 %306
  %308 = bitcast i8* %307 to <4 x double>*
  store <4 x double> %304, <4 x double>* %308, align 8, !alias.scope !99, !noalias !104
  %index.next1176 = add i64 %index1175, 4
  %vec.ind.next1182 = add <4 x i32> %vec.ind1181, <i32 4, i32 4, i32 4, i32 4>
  %309 = icmp eq i64 %index.next1176, 32
  br i1 %309, label %polly.loop_exit783.2, label %vector.body1173, !llvm.loop !109

polly.loop_exit783.2:                             ; preds = %vector.body1173
  %polly.indvar_next779.2 = add nuw nsw i64 %polly.indvar778.2, 1
  %exitcond834.2.not = icmp eq i64 %polly.indvar_next779.2, 16
  br i1 %exitcond834.2.not, label %polly.loop_header775.1.2, label %polly.loop_header775.2

polly.loop_header775.1.2:                         ; preds = %polly.loop_exit783.2, %polly.loop_exit783.1.2
  %polly.indvar778.1.2 = phi i64 [ %polly.indvar_next779.1.2, %polly.loop_exit783.1.2 ], [ 0, %polly.loop_exit783.2 ]
  %310 = add nuw nsw i64 %polly.indvar778.1.2, 64
  %311 = mul nuw nsw i64 %310, 480
  %312 = trunc i64 %310 to i32
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %312, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %polly.loop_header775.1.2
  %index1189 = phi i64 [ 0, %polly.loop_header775.1.2 ], [ %index.next1190, %vector.body1187 ]
  %vec.ind1193 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.2 ], [ %vec.ind.next1194, %vector.body1187 ]
  %313 = add nuw nsw <4 x i64> %vec.ind1193, <i64 32, i64 32, i64 32, i64 32>
  %314 = trunc <4 x i64> %313 to <4 x i32>
  %315 = mul <4 x i32> %broadcast.splat1196, %314
  %316 = add <4 x i32> %315, <i32 1, i32 1, i32 1, i32 1>
  %317 = urem <4 x i32> %316, <i32 80, i32 80, i32 80, i32 80>
  %318 = sitofp <4 x i32> %317 to <4 x double>
  %319 = fmul fast <4 x double> %318, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %320 = extractelement <4 x i64> %313, i32 0
  %321 = shl i64 %320, 3
  %322 = add i64 %321, %311
  %323 = getelementptr i8, i8* %call1, i64 %322
  %324 = bitcast i8* %323 to <4 x double>*
  store <4 x double> %319, <4 x double>* %324, align 8, !alias.scope !99, !noalias !104
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %325 = icmp eq i64 %index.next1190, 28
  br i1 %325, label %polly.loop_exit783.1.2, label %vector.body1187, !llvm.loop !110

polly.loop_exit783.1.2:                           ; preds = %vector.body1187
  %polly.indvar_next779.1.2 = add nuw nsw i64 %polly.indvar778.1.2, 1
  %exitcond834.1.2.not = icmp eq i64 %polly.indvar_next779.1.2, 16
  br i1 %exitcond834.1.2.not, label %init_array.exit, label %polly.loop_header775.1.2

polly.loop_header749.1:                           ; preds = %polly.loop_exit757, %polly.loop_exit757.1
  %polly.indvar752.1 = phi i64 [ %polly.indvar_next753.1, %polly.loop_exit757.1 ], [ 0, %polly.loop_exit757 ]
  %326 = mul nuw nsw i64 %polly.indvar752.1, 480
  %327 = trunc i64 %polly.indvar752.1 to i32
  %broadcast.splatinsert1065 = insertelement <4 x i32> poison, i32 %327, i32 0
  %broadcast.splat1066 = shufflevector <4 x i32> %broadcast.splatinsert1065, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %polly.loop_header749.1
  %index1059 = phi i64 [ 0, %polly.loop_header749.1 ], [ %index.next1060, %vector.body1057 ]
  %vec.ind1063 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1 ], [ %vec.ind.next1064, %vector.body1057 ]
  %328 = add nuw nsw <4 x i64> %vec.ind1063, <i64 32, i64 32, i64 32, i64 32>
  %329 = trunc <4 x i64> %328 to <4 x i32>
  %330 = mul <4 x i32> %broadcast.splat1066, %329
  %331 = add <4 x i32> %330, <i32 2, i32 2, i32 2, i32 2>
  %332 = urem <4 x i32> %331, <i32 60, i32 60, i32 60, i32 60>
  %333 = sitofp <4 x i32> %332 to <4 x double>
  %334 = fmul fast <4 x double> %333, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %335 = extractelement <4 x i64> %328, i32 0
  %336 = shl i64 %335, 3
  %337 = add i64 %336, %326
  %338 = getelementptr i8, i8* %call2, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %334, <4 x double>* %339, align 8, !alias.scope !100, !noalias !102
  %index.next1060 = add i64 %index1059, 4
  %vec.ind.next1064 = add <4 x i64> %vec.ind1063, <i64 4, i64 4, i64 4, i64 4>
  %340 = icmp eq i64 %index.next1060, 28
  br i1 %340, label %polly.loop_exit757.1, label %vector.body1057, !llvm.loop !111

polly.loop_exit757.1:                             ; preds = %vector.body1057
  %polly.indvar_next753.1 = add nuw nsw i64 %polly.indvar752.1, 1
  %exitcond840.1.not = icmp eq i64 %polly.indvar_next753.1, 32
  br i1 %exitcond840.1.not, label %polly.loop_header749.1868, label %polly.loop_header749.1

polly.loop_header749.1868:                        ; preds = %polly.loop_exit757.1, %polly.loop_exit757.1879
  %polly.indvar752.1867 = phi i64 [ %polly.indvar_next753.1877, %polly.loop_exit757.1879 ], [ 0, %polly.loop_exit757.1 ]
  %341 = add nuw nsw i64 %polly.indvar752.1867, 32
  %342 = mul nuw nsw i64 %341, 480
  %343 = trunc i64 %341 to i32
  %broadcast.splatinsert1079 = insertelement <4 x i32> poison, i32 %343, i32 0
  %broadcast.splat1080 = shufflevector <4 x i32> %broadcast.splatinsert1079, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %polly.loop_header749.1868
  %index1071 = phi i64 [ 0, %polly.loop_header749.1868 ], [ %index.next1072, %vector.body1069 ]
  %vec.ind1077 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.1868 ], [ %vec.ind.next1078, %vector.body1069 ]
  %344 = mul <4 x i32> %vec.ind1077, %broadcast.splat1080
  %345 = add <4 x i32> %344, <i32 2, i32 2, i32 2, i32 2>
  %346 = urem <4 x i32> %345, <i32 60, i32 60, i32 60, i32 60>
  %347 = sitofp <4 x i32> %346 to <4 x double>
  %348 = fmul fast <4 x double> %347, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %349 = shl i64 %index1071, 3
  %350 = add i64 %349, %342
  %351 = getelementptr i8, i8* %call2, i64 %350
  %352 = bitcast i8* %351 to <4 x double>*
  store <4 x double> %348, <4 x double>* %352, align 8, !alias.scope !100, !noalias !102
  %index.next1072 = add i64 %index1071, 4
  %vec.ind.next1078 = add <4 x i32> %vec.ind1077, <i32 4, i32 4, i32 4, i32 4>
  %353 = icmp eq i64 %index.next1072, 32
  br i1 %353, label %polly.loop_exit757.1879, label %vector.body1069, !llvm.loop !112

polly.loop_exit757.1879:                          ; preds = %vector.body1069
  %polly.indvar_next753.1877 = add nuw nsw i64 %polly.indvar752.1867, 1
  %exitcond840.1878.not = icmp eq i64 %polly.indvar_next753.1877, 32
  br i1 %exitcond840.1878.not, label %polly.loop_header749.1.1, label %polly.loop_header749.1868

polly.loop_header749.1.1:                         ; preds = %polly.loop_exit757.1879, %polly.loop_exit757.1.1
  %polly.indvar752.1.1 = phi i64 [ %polly.indvar_next753.1.1, %polly.loop_exit757.1.1 ], [ 0, %polly.loop_exit757.1879 ]
  %354 = add nuw nsw i64 %polly.indvar752.1.1, 32
  %355 = mul nuw nsw i64 %354, 480
  %356 = trunc i64 %354 to i32
  %broadcast.splatinsert1091 = insertelement <4 x i32> poison, i32 %356, i32 0
  %broadcast.splat1092 = shufflevector <4 x i32> %broadcast.splatinsert1091, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %polly.loop_header749.1.1
  %index1085 = phi i64 [ 0, %polly.loop_header749.1.1 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1089 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.1 ], [ %vec.ind.next1090, %vector.body1083 ]
  %357 = add nuw nsw <4 x i64> %vec.ind1089, <i64 32, i64 32, i64 32, i64 32>
  %358 = trunc <4 x i64> %357 to <4 x i32>
  %359 = mul <4 x i32> %broadcast.splat1092, %358
  %360 = add <4 x i32> %359, <i32 2, i32 2, i32 2, i32 2>
  %361 = urem <4 x i32> %360, <i32 60, i32 60, i32 60, i32 60>
  %362 = sitofp <4 x i32> %361 to <4 x double>
  %363 = fmul fast <4 x double> %362, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %364 = extractelement <4 x i64> %357, i32 0
  %365 = shl i64 %364, 3
  %366 = add i64 %365, %355
  %367 = getelementptr i8, i8* %call2, i64 %366
  %368 = bitcast i8* %367 to <4 x double>*
  store <4 x double> %363, <4 x double>* %368, align 8, !alias.scope !100, !noalias !102
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1090 = add <4 x i64> %vec.ind1089, <i64 4, i64 4, i64 4, i64 4>
  %369 = icmp eq i64 %index.next1086, 28
  br i1 %369, label %polly.loop_exit757.1.1, label %vector.body1083, !llvm.loop !113

polly.loop_exit757.1.1:                           ; preds = %vector.body1083
  %polly.indvar_next753.1.1 = add nuw nsw i64 %polly.indvar752.1.1, 1
  %exitcond840.1.1.not = icmp eq i64 %polly.indvar_next753.1.1, 32
  br i1 %exitcond840.1.1.not, label %polly.loop_header749.2, label %polly.loop_header749.1.1

polly.loop_header749.2:                           ; preds = %polly.loop_exit757.1.1, %polly.loop_exit757.2
  %polly.indvar752.2 = phi i64 [ %polly.indvar_next753.2, %polly.loop_exit757.2 ], [ 0, %polly.loop_exit757.1.1 ]
  %370 = add nuw nsw i64 %polly.indvar752.2, 64
  %371 = mul nuw nsw i64 %370, 480
  %372 = trunc i64 %370 to i32
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %372, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %polly.loop_header749.2
  %index1097 = phi i64 [ 0, %polly.loop_header749.2 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1103 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.2 ], [ %vec.ind.next1104, %vector.body1095 ]
  %373 = mul <4 x i32> %vec.ind1103, %broadcast.splat1106
  %374 = add <4 x i32> %373, <i32 2, i32 2, i32 2, i32 2>
  %375 = urem <4 x i32> %374, <i32 60, i32 60, i32 60, i32 60>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %378 = shl i64 %index1097, 3
  %379 = add i64 %378, %371
  %380 = getelementptr i8, i8* %call2, i64 %379
  %381 = bitcast i8* %380 to <4 x double>*
  store <4 x double> %377, <4 x double>* %381, align 8, !alias.scope !100, !noalias !102
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1104 = add <4 x i32> %vec.ind1103, <i32 4, i32 4, i32 4, i32 4>
  %382 = icmp eq i64 %index.next1098, 32
  br i1 %382, label %polly.loop_exit757.2, label %vector.body1095, !llvm.loop !114

polly.loop_exit757.2:                             ; preds = %vector.body1095
  %polly.indvar_next753.2 = add nuw nsw i64 %polly.indvar752.2, 1
  %exitcond840.2.not = icmp eq i64 %polly.indvar_next753.2, 16
  br i1 %exitcond840.2.not, label %polly.loop_header749.1.2, label %polly.loop_header749.2

polly.loop_header749.1.2:                         ; preds = %polly.loop_exit757.2, %polly.loop_exit757.1.2
  %polly.indvar752.1.2 = phi i64 [ %polly.indvar_next753.1.2, %polly.loop_exit757.1.2 ], [ 0, %polly.loop_exit757.2 ]
  %383 = add nuw nsw i64 %polly.indvar752.1.2, 64
  %384 = mul nuw nsw i64 %383, 480
  %385 = trunc i64 %383 to i32
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %polly.loop_header749.1.2
  %index1111 = phi i64 [ 0, %polly.loop_header749.1.2 ], [ %index.next1112, %vector.body1109 ]
  %vec.ind1115 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.2 ], [ %vec.ind.next1116, %vector.body1109 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1115, <i64 32, i64 32, i64 32, i64 32>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1118, %387
  %389 = add <4 x i32> %388, <i32 2, i32 2, i32 2, i32 2>
  %390 = urem <4 x i32> %389, <i32 60, i32 60, i32 60, i32 60>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add i64 %394, %384
  %396 = getelementptr i8, i8* %call2, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !100, !noalias !102
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1116 = add <4 x i64> %vec.ind1115, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1112, 28
  br i1 %398, label %polly.loop_exit757.1.2, label %vector.body1109, !llvm.loop !115

polly.loop_exit757.1.2:                           ; preds = %vector.body1109
  %polly.indvar_next753.1.2 = add nuw nsw i64 %polly.indvar752.1.2, 1
  %exitcond840.1.2.not = icmp eq i64 %polly.indvar_next753.1.2, 16
  br i1 %exitcond840.1.2.not, label %polly.loop_header775, label %polly.loop_header749.1.2

polly.loop_header722.1:                           ; preds = %polly.loop_exit730, %polly.loop_exit730.1
  %polly.indvar725.1 = phi i64 [ %polly.indvar_next726.1, %polly.loop_exit730.1 ], [ 0, %polly.loop_exit730 ]
  %399 = mul nuw nsw i64 %polly.indvar725.1, 640
  %400 = trunc i64 %polly.indvar725.1 to i32
  %broadcast.splatinsert951 = insertelement <4 x i32> poison, i32 %400, i32 0
  %broadcast.splat952 = shufflevector <4 x i32> %broadcast.splatinsert951, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body943

vector.body943:                                   ; preds = %vector.body943, %polly.loop_header722.1
  %index945 = phi i64 [ 0, %polly.loop_header722.1 ], [ %index.next946, %vector.body943 ]
  %vec.ind949 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1 ], [ %vec.ind.next950, %vector.body943 ]
  %401 = add nuw nsw <4 x i64> %vec.ind949, <i64 32, i64 32, i64 32, i64 32>
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat952, %402
  %404 = add <4 x i32> %403, <i32 3, i32 3, i32 3, i32 3>
  %405 = urem <4 x i32> %404, <i32 80, i32 80, i32 80, i32 80>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %399
  %411 = getelementptr i8, i8* %call, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !96, !noalias !98
  %index.next946 = add i64 %index945, 4
  %vec.ind.next950 = add <4 x i64> %vec.ind949, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next946, 32
  br i1 %413, label %polly.loop_exit730.1, label %vector.body943, !llvm.loop !116

polly.loop_exit730.1:                             ; preds = %vector.body943
  %polly.indvar_next726.1 = add nuw nsw i64 %polly.indvar725.1, 1
  %exitcond849.1.not = icmp eq i64 %polly.indvar_next726.1, 32
  br i1 %exitcond849.1.not, label %polly.loop_header722.2, label %polly.loop_header722.1

polly.loop_header722.2:                           ; preds = %polly.loop_exit730.1, %polly.loop_exit730.2
  %polly.indvar725.2 = phi i64 [ %polly.indvar_next726.2, %polly.loop_exit730.2 ], [ 0, %polly.loop_exit730.1 ]
  %414 = mul nuw nsw i64 %polly.indvar725.2, 640
  %415 = trunc i64 %polly.indvar725.2 to i32
  %broadcast.splatinsert963 = insertelement <4 x i32> poison, i32 %415, i32 0
  %broadcast.splat964 = shufflevector <4 x i32> %broadcast.splatinsert963, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body955

vector.body955:                                   ; preds = %vector.body955, %polly.loop_header722.2
  %index957 = phi i64 [ 0, %polly.loop_header722.2 ], [ %index.next958, %vector.body955 ]
  %vec.ind961 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2 ], [ %vec.ind.next962, %vector.body955 ]
  %416 = add nuw nsw <4 x i64> %vec.ind961, <i64 64, i64 64, i64 64, i64 64>
  %417 = trunc <4 x i64> %416 to <4 x i32>
  %418 = mul <4 x i32> %broadcast.splat964, %417
  %419 = add <4 x i32> %418, <i32 3, i32 3, i32 3, i32 3>
  %420 = urem <4 x i32> %419, <i32 80, i32 80, i32 80, i32 80>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %423 = extractelement <4 x i64> %416, i32 0
  %424 = shl i64 %423, 3
  %425 = add nuw nsw i64 %424, %414
  %426 = getelementptr i8, i8* %call, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %422, <4 x double>* %427, align 8, !alias.scope !96, !noalias !98
  %index.next958 = add i64 %index957, 4
  %vec.ind.next962 = add <4 x i64> %vec.ind961, <i64 4, i64 4, i64 4, i64 4>
  %428 = icmp eq i64 %index.next958, 16
  br i1 %428, label %polly.loop_exit730.2, label %vector.body955, !llvm.loop !117

polly.loop_exit730.2:                             ; preds = %vector.body955
  %polly.indvar_next726.2 = add nuw nsw i64 %polly.indvar725.2, 1
  %exitcond849.2.not = icmp eq i64 %polly.indvar_next726.2, 32
  br i1 %exitcond849.2.not, label %polly.loop_header722.1882, label %polly.loop_header722.2

polly.loop_header722.1882:                        ; preds = %polly.loop_exit730.2, %polly.loop_exit730.1893
  %polly.indvar725.1881 = phi i64 [ %polly.indvar_next726.1891, %polly.loop_exit730.1893 ], [ 0, %polly.loop_exit730.2 ]
  %429 = add nuw nsw i64 %polly.indvar725.1881, 32
  %430 = mul nuw nsw i64 %429, 640
  %431 = trunc i64 %429 to i32
  %broadcast.splatinsert977 = insertelement <4 x i32> poison, i32 %431, i32 0
  %broadcast.splat978 = shufflevector <4 x i32> %broadcast.splatinsert977, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %polly.loop_header722.1882
  %index969 = phi i64 [ 0, %polly.loop_header722.1882 ], [ %index.next970, %vector.body967 ]
  %vec.ind975 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.1882 ], [ %vec.ind.next976, %vector.body967 ]
  %432 = mul <4 x i32> %vec.ind975, %broadcast.splat978
  %433 = add <4 x i32> %432, <i32 3, i32 3, i32 3, i32 3>
  %434 = urem <4 x i32> %433, <i32 80, i32 80, i32 80, i32 80>
  %435 = sitofp <4 x i32> %434 to <4 x double>
  %436 = fmul fast <4 x double> %435, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %437 = shl i64 %index969, 3
  %438 = add nuw nsw i64 %437, %430
  %439 = getelementptr i8, i8* %call, i64 %438
  %440 = bitcast i8* %439 to <4 x double>*
  store <4 x double> %436, <4 x double>* %440, align 8, !alias.scope !96, !noalias !98
  %index.next970 = add i64 %index969, 4
  %vec.ind.next976 = add <4 x i32> %vec.ind975, <i32 4, i32 4, i32 4, i32 4>
  %441 = icmp eq i64 %index.next970, 32
  br i1 %441, label %polly.loop_exit730.1893, label %vector.body967, !llvm.loop !118

polly.loop_exit730.1893:                          ; preds = %vector.body967
  %polly.indvar_next726.1891 = add nuw nsw i64 %polly.indvar725.1881, 1
  %exitcond849.1892.not = icmp eq i64 %polly.indvar_next726.1891, 32
  br i1 %exitcond849.1892.not, label %polly.loop_header722.1.1, label %polly.loop_header722.1882

polly.loop_header722.1.1:                         ; preds = %polly.loop_exit730.1893, %polly.loop_exit730.1.1
  %polly.indvar725.1.1 = phi i64 [ %polly.indvar_next726.1.1, %polly.loop_exit730.1.1 ], [ 0, %polly.loop_exit730.1893 ]
  %442 = add nuw nsw i64 %polly.indvar725.1.1, 32
  %443 = mul nuw nsw i64 %442, 640
  %444 = trunc i64 %442 to i32
  %broadcast.splatinsert989 = insertelement <4 x i32> poison, i32 %444, i32 0
  %broadcast.splat990 = shufflevector <4 x i32> %broadcast.splatinsert989, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %polly.loop_header722.1.1
  %index983 = phi i64 [ 0, %polly.loop_header722.1.1 ], [ %index.next984, %vector.body981 ]
  %vec.ind987 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.1 ], [ %vec.ind.next988, %vector.body981 ]
  %445 = add nuw nsw <4 x i64> %vec.ind987, <i64 32, i64 32, i64 32, i64 32>
  %446 = trunc <4 x i64> %445 to <4 x i32>
  %447 = mul <4 x i32> %broadcast.splat990, %446
  %448 = add <4 x i32> %447, <i32 3, i32 3, i32 3, i32 3>
  %449 = urem <4 x i32> %448, <i32 80, i32 80, i32 80, i32 80>
  %450 = sitofp <4 x i32> %449 to <4 x double>
  %451 = fmul fast <4 x double> %450, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %452 = extractelement <4 x i64> %445, i32 0
  %453 = shl i64 %452, 3
  %454 = add nuw nsw i64 %453, %443
  %455 = getelementptr i8, i8* %call, i64 %454
  %456 = bitcast i8* %455 to <4 x double>*
  store <4 x double> %451, <4 x double>* %456, align 8, !alias.scope !96, !noalias !98
  %index.next984 = add i64 %index983, 4
  %vec.ind.next988 = add <4 x i64> %vec.ind987, <i64 4, i64 4, i64 4, i64 4>
  %457 = icmp eq i64 %index.next984, 32
  br i1 %457, label %polly.loop_exit730.1.1, label %vector.body981, !llvm.loop !119

polly.loop_exit730.1.1:                           ; preds = %vector.body981
  %polly.indvar_next726.1.1 = add nuw nsw i64 %polly.indvar725.1.1, 1
  %exitcond849.1.1.not = icmp eq i64 %polly.indvar_next726.1.1, 32
  br i1 %exitcond849.1.1.not, label %polly.loop_header722.2.1, label %polly.loop_header722.1.1

polly.loop_header722.2.1:                         ; preds = %polly.loop_exit730.1.1, %polly.loop_exit730.2.1
  %polly.indvar725.2.1 = phi i64 [ %polly.indvar_next726.2.1, %polly.loop_exit730.2.1 ], [ 0, %polly.loop_exit730.1.1 ]
  %458 = add nuw nsw i64 %polly.indvar725.2.1, 32
  %459 = mul nuw nsw i64 %458, 640
  %460 = trunc i64 %458 to i32
  %broadcast.splatinsert1001 = insertelement <4 x i32> poison, i32 %460, i32 0
  %broadcast.splat1002 = shufflevector <4 x i32> %broadcast.splatinsert1001, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body993

vector.body993:                                   ; preds = %vector.body993, %polly.loop_header722.2.1
  %index995 = phi i64 [ 0, %polly.loop_header722.2.1 ], [ %index.next996, %vector.body993 ]
  %vec.ind999 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.1 ], [ %vec.ind.next1000, %vector.body993 ]
  %461 = add nuw nsw <4 x i64> %vec.ind999, <i64 64, i64 64, i64 64, i64 64>
  %462 = trunc <4 x i64> %461 to <4 x i32>
  %463 = mul <4 x i32> %broadcast.splat1002, %462
  %464 = add <4 x i32> %463, <i32 3, i32 3, i32 3, i32 3>
  %465 = urem <4 x i32> %464, <i32 80, i32 80, i32 80, i32 80>
  %466 = sitofp <4 x i32> %465 to <4 x double>
  %467 = fmul fast <4 x double> %466, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %468 = extractelement <4 x i64> %461, i32 0
  %469 = shl i64 %468, 3
  %470 = add nuw nsw i64 %469, %459
  %471 = getelementptr i8, i8* %call, i64 %470
  %472 = bitcast i8* %471 to <4 x double>*
  store <4 x double> %467, <4 x double>* %472, align 8, !alias.scope !96, !noalias !98
  %index.next996 = add i64 %index995, 4
  %vec.ind.next1000 = add <4 x i64> %vec.ind999, <i64 4, i64 4, i64 4, i64 4>
  %473 = icmp eq i64 %index.next996, 16
  br i1 %473, label %polly.loop_exit730.2.1, label %vector.body993, !llvm.loop !120

polly.loop_exit730.2.1:                           ; preds = %vector.body993
  %polly.indvar_next726.2.1 = add nuw nsw i64 %polly.indvar725.2.1, 1
  %exitcond849.2.1.not = icmp eq i64 %polly.indvar_next726.2.1, 32
  br i1 %exitcond849.2.1.not, label %polly.loop_header722.2896, label %polly.loop_header722.2.1

polly.loop_header722.2896:                        ; preds = %polly.loop_exit730.2.1, %polly.loop_exit730.2907
  %polly.indvar725.2895 = phi i64 [ %polly.indvar_next726.2905, %polly.loop_exit730.2907 ], [ 0, %polly.loop_exit730.2.1 ]
  %474 = add nuw nsw i64 %polly.indvar725.2895, 64
  %475 = mul nuw nsw i64 %474, 640
  %476 = trunc i64 %474 to i32
  %broadcast.splatinsert1015 = insertelement <4 x i32> poison, i32 %476, i32 0
  %broadcast.splat1016 = shufflevector <4 x i32> %broadcast.splatinsert1015, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1005

vector.body1005:                                  ; preds = %vector.body1005, %polly.loop_header722.2896
  %index1007 = phi i64 [ 0, %polly.loop_header722.2896 ], [ %index.next1008, %vector.body1005 ]
  %vec.ind1013 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.2896 ], [ %vec.ind.next1014, %vector.body1005 ]
  %477 = mul <4 x i32> %vec.ind1013, %broadcast.splat1016
  %478 = add <4 x i32> %477, <i32 3, i32 3, i32 3, i32 3>
  %479 = urem <4 x i32> %478, <i32 80, i32 80, i32 80, i32 80>
  %480 = sitofp <4 x i32> %479 to <4 x double>
  %481 = fmul fast <4 x double> %480, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %482 = shl i64 %index1007, 3
  %483 = add nuw nsw i64 %482, %475
  %484 = getelementptr i8, i8* %call, i64 %483
  %485 = bitcast i8* %484 to <4 x double>*
  store <4 x double> %481, <4 x double>* %485, align 8, !alias.scope !96, !noalias !98
  %index.next1008 = add i64 %index1007, 4
  %vec.ind.next1014 = add <4 x i32> %vec.ind1013, <i32 4, i32 4, i32 4, i32 4>
  %486 = icmp eq i64 %index.next1008, 32
  br i1 %486, label %polly.loop_exit730.2907, label %vector.body1005, !llvm.loop !121

polly.loop_exit730.2907:                          ; preds = %vector.body1005
  %polly.indvar_next726.2905 = add nuw nsw i64 %polly.indvar725.2895, 1
  %exitcond849.2906.not = icmp eq i64 %polly.indvar_next726.2905, 16
  br i1 %exitcond849.2906.not, label %polly.loop_header722.1.2, label %polly.loop_header722.2896

polly.loop_header722.1.2:                         ; preds = %polly.loop_exit730.2907, %polly.loop_exit730.1.2
  %polly.indvar725.1.2 = phi i64 [ %polly.indvar_next726.1.2, %polly.loop_exit730.1.2 ], [ 0, %polly.loop_exit730.2907 ]
  %487 = add nuw nsw i64 %polly.indvar725.1.2, 64
  %488 = mul nuw nsw i64 %487, 640
  %489 = trunc i64 %487 to i32
  %broadcast.splatinsert1027 = insertelement <4 x i32> poison, i32 %489, i32 0
  %broadcast.splat1028 = shufflevector <4 x i32> %broadcast.splatinsert1027, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %polly.loop_header722.1.2
  %index1021 = phi i64 [ 0, %polly.loop_header722.1.2 ], [ %index.next1022, %vector.body1019 ]
  %vec.ind1025 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.2 ], [ %vec.ind.next1026, %vector.body1019 ]
  %490 = add nuw nsw <4 x i64> %vec.ind1025, <i64 32, i64 32, i64 32, i64 32>
  %491 = trunc <4 x i64> %490 to <4 x i32>
  %492 = mul <4 x i32> %broadcast.splat1028, %491
  %493 = add <4 x i32> %492, <i32 3, i32 3, i32 3, i32 3>
  %494 = urem <4 x i32> %493, <i32 80, i32 80, i32 80, i32 80>
  %495 = sitofp <4 x i32> %494 to <4 x double>
  %496 = fmul fast <4 x double> %495, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %497 = extractelement <4 x i64> %490, i32 0
  %498 = shl i64 %497, 3
  %499 = add nuw nsw i64 %498, %488
  %500 = getelementptr i8, i8* %call, i64 %499
  %501 = bitcast i8* %500 to <4 x double>*
  store <4 x double> %496, <4 x double>* %501, align 8, !alias.scope !96, !noalias !98
  %index.next1022 = add i64 %index1021, 4
  %vec.ind.next1026 = add <4 x i64> %vec.ind1025, <i64 4, i64 4, i64 4, i64 4>
  %502 = icmp eq i64 %index.next1022, 32
  br i1 %502, label %polly.loop_exit730.1.2, label %vector.body1019, !llvm.loop !122

polly.loop_exit730.1.2:                           ; preds = %vector.body1019
  %polly.indvar_next726.1.2 = add nuw nsw i64 %polly.indvar725.1.2, 1
  %exitcond849.1.2.not = icmp eq i64 %polly.indvar_next726.1.2, 16
  br i1 %exitcond849.1.2.not, label %polly.loop_header722.2.2, label %polly.loop_header722.1.2

polly.loop_header722.2.2:                         ; preds = %polly.loop_exit730.1.2, %polly.loop_exit730.2.2
  %polly.indvar725.2.2 = phi i64 [ %polly.indvar_next726.2.2, %polly.loop_exit730.2.2 ], [ 0, %polly.loop_exit730.1.2 ]
  %503 = add nuw nsw i64 %polly.indvar725.2.2, 64
  %504 = mul nuw nsw i64 %503, 640
  %505 = trunc i64 %503 to i32
  %broadcast.splatinsert1039 = insertelement <4 x i32> poison, i32 %505, i32 0
  %broadcast.splat1040 = shufflevector <4 x i32> %broadcast.splatinsert1039, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %polly.loop_header722.2.2
  %index1033 = phi i64 [ 0, %polly.loop_header722.2.2 ], [ %index.next1034, %vector.body1031 ]
  %vec.ind1037 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.2 ], [ %vec.ind.next1038, %vector.body1031 ]
  %506 = add nuw nsw <4 x i64> %vec.ind1037, <i64 64, i64 64, i64 64, i64 64>
  %507 = trunc <4 x i64> %506 to <4 x i32>
  %508 = mul <4 x i32> %broadcast.splat1040, %507
  %509 = add <4 x i32> %508, <i32 3, i32 3, i32 3, i32 3>
  %510 = urem <4 x i32> %509, <i32 80, i32 80, i32 80, i32 80>
  %511 = sitofp <4 x i32> %510 to <4 x double>
  %512 = fmul fast <4 x double> %511, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %513 = extractelement <4 x i64> %506, i32 0
  %514 = shl i64 %513, 3
  %515 = add nuw nsw i64 %514, %504
  %516 = getelementptr i8, i8* %call, i64 %515
  %517 = bitcast i8* %516 to <4 x double>*
  store <4 x double> %512, <4 x double>* %517, align 8, !alias.scope !96, !noalias !98
  %index.next1034 = add i64 %index1033, 4
  %vec.ind.next1038 = add <4 x i64> %vec.ind1037, <i64 4, i64 4, i64 4, i64 4>
  %518 = icmp eq i64 %index.next1034, 16
  br i1 %518, label %polly.loop_exit730.2.2, label %vector.body1031, !llvm.loop !123

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
!21 = distinct !{!"B"}
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
!34 = !{!"llvm.loop.tile.size", i32 128}
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
!45 = !{!"llvm.loop.tile.size", i32 16}
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
