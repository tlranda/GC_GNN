; ModuleID = 'syr2k_recreations//mmp_syr2k_S_16.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_16.c"
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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv7.i, i64 %index919
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
  br i1 %min.iters.check, label %for.body3.i46.preheader1271, label %vector.ph1200

vector.ph1200:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1200
  %index1201 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1202, %vector.body1199 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i, i64 %index1201
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
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit551.3
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start261, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i52, i64 %index1224
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1228 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1228, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1225 = add i64 %index1224, 4
  %57 = icmp eq i64 %index.next1225, %n.vec1223
  br i1 %57, label %middle.block1217, label %vector.body1219, !llvm.loop !54

middle.block1217:                                 ; preds = %vector.body1219
  %cmp.n1227 = icmp eq i64 %indvars.iv21.i52, %n.vec1223
  br i1 %cmp.n1227, label %for.inc6.i63, label %for.body3.i60.preheader1270

for.body3.i60.preheader1270:                      ; preds = %for.body3.i60.preheader, %middle.block1217
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1223, %middle.block1217 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1270, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1270 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit387.3
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
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i91, i64 %index1250
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1254 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1254, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1251 = add i64 %index1250, 4
  %68 = icmp eq i64 %index.next1251, %n.vec1249
  br i1 %68, label %middle.block1243, label %vector.body1245, !llvm.loop !56

middle.block1243:                                 ; preds = %vector.body1245
  %cmp.n1253 = icmp eq i64 %indvars.iv21.i91, %n.vec1249
  br i1 %cmp.n1253, label %for.inc6.i102, label %for.body3.i99.preheader1269

for.body3.i99.preheader1269:                      ; preds = %for.body3.i99.preheader, %middle.block1243
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1249, %middle.block1243 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1269, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1269 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.3
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
  %wide.load1268 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1268, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1265 = add i64 %index1264, 4
  %95 = icmp eq i64 %index.next1265, %n.vec1263
  br i1 %95, label %middle.block1255, label %vector.body1257, !llvm.loop !68

middle.block1255:                                 ; preds = %vector.body1257
  %cmp.n1267 = icmp eq i64 %88, %n.vec1263
  br i1 %cmp.n1267, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1255
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1263, %middle.block1255 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1255
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1259 = add i64 %indvar1258, 1
  br i1 %exitcond803.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond802.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond802.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond801.not, label %polly.loop_header221, label %polly.loop_header199

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
  %exitcond800.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond800.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header221:                             ; preds = %polly.loop_exit207, %polly.loop_exit229
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 19)
  %97 = mul nuw nsw i64 %polly.indvar224, 480
  %scevgep251 = getelementptr i8, i8* %call1, i64 %97
  %98 = mul nuw nsw i64 %polly.indvar224, 640
  %scevgep255 = getelementptr i8, i8* %call, i64 %98
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond798.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond798.not, label %polly.loop_header221.1, label %polly.loop_header221

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
  %indvar1232 = phi i64 [ %indvar.next1233, %polly.loop_exit355 ], [ 0, %polly.start261 ]
  %polly.indvar350 = phi i64 [ %polly.indvar_next351, %polly.loop_exit355 ], [ 1, %polly.start261 ]
  %102 = add i64 %indvar1232, 1
  %103 = mul nuw nsw i64 %polly.indvar350, 640
  %scevgep359 = getelementptr i8, i8* %call, i64 %103
  %min.iters.check1234 = icmp ult i64 %102, 4
  br i1 %min.iters.check1234, label %polly.loop_header353.preheader, label %vector.ph1235

vector.ph1235:                                    ; preds = %polly.loop_header347
  %n.vec1237 = and i64 %102, -4
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1235
  %index1238 = phi i64 [ 0, %vector.ph1235 ], [ %index.next1239, %vector.body1231 ]
  %104 = shl nuw nsw i64 %index1238, 3
  %105 = getelementptr i8, i8* %scevgep359, i64 %104
  %106 = bitcast i8* %105 to <4 x double>*
  %wide.load1242 = load <4 x double>, <4 x double>* %106, align 8, !alias.scope !73, !noalias !75
  %107 = fmul fast <4 x double> %wide.load1242, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %108 = bitcast i8* %105 to <4 x double>*
  store <4 x double> %107, <4 x double>* %108, align 8, !alias.scope !73, !noalias !75
  %index.next1239 = add i64 %index1238, 4
  %109 = icmp eq i64 %index.next1239, %n.vec1237
  br i1 %109, label %middle.block1229, label %vector.body1231, !llvm.loop !79

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1241 = icmp eq i64 %102, %n.vec1237
  br i1 %cmp.n1241, label %polly.loop_exit355, label %polly.loop_header353.preheader

polly.loop_header353.preheader:                   ; preds = %polly.loop_header347, %middle.block1229
  %polly.indvar356.ph = phi i64 [ 0, %polly.loop_header347 ], [ %n.vec1237, %middle.block1229 ]
  br label %polly.loop_header353

polly.loop_exit355:                               ; preds = %polly.loop_header353, %middle.block1229
  %polly.indvar_next351 = add nuw nsw i64 %polly.indvar350, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next351, 80
  %indvar.next1233 = add i64 %indvar1232, 1
  br i1 %exitcond816.not, label %polly.loop_header363.preheader, label %polly.loop_header347

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
  %exitcond815.not = icmp eq i64 %polly.indvar_next357, %polly.indvar350
  br i1 %exitcond815.not, label %polly.loop_exit355, label %polly.loop_header353, !llvm.loop !80

polly.loop_header363:                             ; preds = %polly.loop_header363.preheader, %polly.loop_exit371
  %polly.indvar366 = phi i64 [ %polly.indvar_next367, %polly.loop_exit371 ], [ 0, %polly.loop_header363.preheader ]
  %polly.access.mul.Packed_MemRef_call2264 = mul nuw nsw i64 %polly.indvar366, 80
  br label %polly.loop_header369

polly.loop_exit371:                               ; preds = %polly.loop_header369
  %polly.indvar_next367 = add nuw nsw i64 %polly.indvar366, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next367, 60
  br i1 %exitcond814.not, label %polly.loop_header385, label %polly.loop_header363

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
  %exitcond813.not = icmp eq i64 %polly.indvar_next373, 80
  br i1 %exitcond813.not, label %polly.loop_exit371, label %polly.loop_header369

polly.loop_header385:                             ; preds = %polly.loop_exit371, %polly.loop_exit393
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit393 ], [ 0, %polly.loop_exit371 ]
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_exit393 ], [ 0, %polly.loop_exit371 ]
  %smin806 = call i64 @llvm.smin.i64(i64 %indvars.iv804, i64 19)
  %111 = mul nuw nsw i64 %polly.indvar388, 480
  %scevgep415 = getelementptr i8, i8* %call1, i64 %111
  %112 = mul nuw nsw i64 %polly.indvar388, 640
  %scevgep419 = getelementptr i8, i8* %call, i64 %112
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit399
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next805 = add nuw nsw i64 %indvars.iv804, 1
  %exitcond811.not = icmp eq i64 %indvars.iv.next805, 80
  br i1 %exitcond811.not, label %polly.loop_header385.1, label %polly.loop_header385

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
  %exitcond808.not = icmp eq i64 %polly.indvar_next395, 60
  br i1 %exitcond808.not, label %polly.loop_exit393, label %polly.loop_header391

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
  %exitcond807.not = icmp eq i64 %polly.indvar400, %smin806
  br i1 %exitcond807.not, label %polly.loop_exit399, label %polly.loop_header397

polly.start425:                                   ; preds = %init_array.exit
  %malloccall427 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header511

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.start425
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit519 ], [ 0, %polly.start425 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 1, %polly.start425 ]
  %116 = add i64 %indvar, 1
  %117 = mul nuw nsw i64 %polly.indvar514, 640
  %scevgep523 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1208 = icmp ult i64 %116, 4
  br i1 %min.iters.check1208, label %polly.loop_header517.preheader, label %vector.ph1209

vector.ph1209:                                    ; preds = %polly.loop_header511
  %n.vec1211 = and i64 %116, -4
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %vector.ph1209
  %index1212 = phi i64 [ 0, %vector.ph1209 ], [ %index.next1213, %vector.body1207 ]
  %118 = shl nuw nsw i64 %index1212, 3
  %119 = getelementptr i8, i8* %scevgep523, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1216 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !83, !noalias !85
  %121 = fmul fast <4 x double> %wide.load1216, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !83, !noalias !85
  %index.next1213 = add i64 %index1212, 4
  %123 = icmp eq i64 %index.next1213, %n.vec1211
  br i1 %123, label %middle.block1205, label %vector.body1207, !llvm.loop !89

middle.block1205:                                 ; preds = %vector.body1207
  %cmp.n1215 = icmp eq i64 %116, %n.vec1211
  br i1 %cmp.n1215, label %polly.loop_exit519, label %polly.loop_header517.preheader

polly.loop_header517.preheader:                   ; preds = %polly.loop_header511, %middle.block1205
  %polly.indvar520.ph = phi i64 [ 0, %polly.loop_header511 ], [ %n.vec1211, %middle.block1205 ]
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_header517, %middle.block1205
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next515, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond829.not, label %polly.loop_header527.preheader, label %polly.loop_header511

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
  %exitcond828.not = icmp eq i64 %polly.indvar_next521, %polly.indvar514
  br i1 %exitcond828.not, label %polly.loop_exit519, label %polly.loop_header517, !llvm.loop !90

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_exit535
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit535 ], [ 0, %polly.loop_header527.preheader ]
  %polly.access.mul.Packed_MemRef_call2428 = mul nuw nsw i64 %polly.indvar530, 80
  br label %polly.loop_header533

polly.loop_exit535:                               ; preds = %polly.loop_header533
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next531, 60
  br i1 %exitcond827.not, label %polly.loop_header549, label %polly.loop_header527

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
  %exitcond826.not = icmp eq i64 %polly.indvar_next537, 80
  br i1 %exitcond826.not, label %polly.loop_exit535, label %polly.loop_header533

polly.loop_header549:                             ; preds = %polly.loop_exit535, %polly.loop_exit557
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %polly.loop_exit557 ], [ 0, %polly.loop_exit535 ]
  %polly.indvar552 = phi i64 [ %polly.indvar_next553, %polly.loop_exit557 ], [ 0, %polly.loop_exit535 ]
  %smin819 = call i64 @llvm.smin.i64(i64 %indvars.iv817, i64 19)
  %125 = mul nuw nsw i64 %polly.indvar552, 480
  %scevgep579 = getelementptr i8, i8* %call1, i64 %125
  %126 = mul nuw nsw i64 %polly.indvar552, 640
  %scevgep583 = getelementptr i8, i8* %call, i64 %126
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_exit563
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %indvars.iv.next818 = add nuw nsw i64 %indvars.iv817, 1
  %exitcond824.not = icmp eq i64 %indvars.iv.next818, 80
  br i1 %exitcond824.not, label %polly.loop_header549.1, label %polly.loop_header549

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
  %exitcond821.not = icmp eq i64 %polly.indvar_next559, 60
  br i1 %exitcond821.not, label %polly.loop_exit557, label %polly.loop_header555

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
  %exitcond820.not = icmp eq i64 %polly.indvar564, %smin819
  br i1 %exitcond820.not, label %polly.loop_exit563, label %polly.loop_header561

polly.loop_header725:                             ; preds = %entry, %polly.loop_exit733
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_exit733 ], [ 0, %entry ]
  %130 = mul nuw nsw i64 %polly.indvar728, 640
  %131 = trunc i64 %polly.indvar728 to i32
  %broadcast.splatinsert939 = insertelement <4 x i32> poison, i32 %131, i32 0
  %broadcast.splat940 = shufflevector <4 x i32> %broadcast.splatinsert939, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body929

vector.body929:                                   ; preds = %vector.body929, %polly.loop_header725
  %index931 = phi i64 [ 0, %polly.loop_header725 ], [ %index.next932, %vector.body929 ]
  %vec.ind937 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725 ], [ %vec.ind.next938, %vector.body929 ]
  %132 = mul <4 x i32> %vec.ind937, %broadcast.splat940
  %133 = add <4 x i32> %132, <i32 3, i32 3, i32 3, i32 3>
  %134 = urem <4 x i32> %133, <i32 80, i32 80, i32 80, i32 80>
  %135 = sitofp <4 x i32> %134 to <4 x double>
  %136 = fmul fast <4 x double> %135, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %137 = shl i64 %index931, 3
  %138 = add nuw nsw i64 %137, %130
  %139 = getelementptr i8, i8* %call, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %136, <4 x double>* %140, align 8, !alias.scope !93, !noalias !95
  %index.next932 = add i64 %index931, 4
  %vec.ind.next938 = add <4 x i32> %vec.ind937, <i32 4, i32 4, i32 4, i32 4>
  %141 = icmp eq i64 %index.next932, 32
  br i1 %141, label %polly.loop_exit733, label %vector.body929, !llvm.loop !98

polly.loop_exit733:                               ; preds = %vector.body929
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next729, 32
  br i1 %exitcond849.not, label %polly.loop_header725.1, label %polly.loop_header725

polly.loop_header752:                             ; preds = %polly.loop_exit733.2.2, %polly.loop_exit760
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %polly.loop_exit733.2.2 ]
  %142 = mul nuw nsw i64 %polly.indvar755, 480
  %143 = trunc i64 %polly.indvar755 to i32
  %broadcast.splatinsert1053 = insertelement <4 x i32> poison, i32 %143, i32 0
  %broadcast.splat1054 = shufflevector <4 x i32> %broadcast.splatinsert1053, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %polly.loop_header752
  %index1045 = phi i64 [ 0, %polly.loop_header752 ], [ %index.next1046, %vector.body1043 ]
  %vec.ind1051 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752 ], [ %vec.ind.next1052, %vector.body1043 ]
  %144 = mul <4 x i32> %vec.ind1051, %broadcast.splat1054
  %145 = add <4 x i32> %144, <i32 2, i32 2, i32 2, i32 2>
  %146 = urem <4 x i32> %145, <i32 60, i32 60, i32 60, i32 60>
  %147 = sitofp <4 x i32> %146 to <4 x double>
  %148 = fmul fast <4 x double> %147, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %149 = shl i64 %index1045, 3
  %150 = add i64 %149, %142
  %151 = getelementptr i8, i8* %call2, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %148, <4 x double>* %152, align 8, !alias.scope !97, !noalias !99
  %index.next1046 = add i64 %index1045, 4
  %vec.ind.next1052 = add <4 x i32> %vec.ind1051, <i32 4, i32 4, i32 4, i32 4>
  %153 = icmp eq i64 %index.next1046, 32
  br i1 %153, label %polly.loop_exit760, label %vector.body1043, !llvm.loop !100

polly.loop_exit760:                               ; preds = %vector.body1043
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next756, 32
  br i1 %exitcond840.not, label %polly.loop_header752.1, label %polly.loop_header752

polly.loop_header778:                             ; preds = %polly.loop_exit760.1.2, %polly.loop_exit786
  %polly.indvar781 = phi i64 [ %polly.indvar_next782, %polly.loop_exit786 ], [ 0, %polly.loop_exit760.1.2 ]
  %154 = mul nuw nsw i64 %polly.indvar781, 480
  %155 = trunc i64 %polly.indvar781 to i32
  %broadcast.splatinsert1131 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat1132 = shufflevector <4 x i32> %broadcast.splatinsert1131, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_header778
  %index1123 = phi i64 [ 0, %polly.loop_header778 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1129 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778 ], [ %vec.ind.next1130, %vector.body1121 ]
  %156 = mul <4 x i32> %vec.ind1129, %broadcast.splat1132
  %157 = add <4 x i32> %156, <i32 1, i32 1, i32 1, i32 1>
  %158 = urem <4 x i32> %157, <i32 80, i32 80, i32 80, i32 80>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %161 = shl i64 %index1123, 3
  %162 = add i64 %161, %154
  %163 = getelementptr i8, i8* %call1, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !96, !noalias !101
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1130 = add <4 x i32> %vec.ind1129, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next1124, 32
  br i1 %165, label %polly.loop_exit786, label %vector.body1121, !llvm.loop !102

polly.loop_exit786:                               ; preds = %vector.body1121
  %polly.indvar_next782 = add nuw nsw i64 %polly.indvar781, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next782, 32
  br i1 %exitcond834.not, label %polly.loop_header778.1, label %polly.loop_header778

polly.loop_header221.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 20, %polly.loop_exit229 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 19)
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
  %169 = add nuw nsw i64 %polly.indvar236.1, 20
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
  %exitcond798.1.not = icmp eq i64 %indvars.iv.next.1, 60
  br i1 %exitcond798.1.not, label %polly.loop_header221.2, label %polly.loop_header221.1

polly.loop_header221.2:                           ; preds = %polly.loop_exit229.1, %polly.loop_exit229.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit229.2 ], [ 0, %polly.loop_exit229.1 ]
  %polly.indvar224.2 = phi i64 [ %polly.indvar_next225.2, %polly.loop_exit229.2 ], [ 40, %polly.loop_exit229.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.2, i64 19)
  %172 = mul nuw nsw i64 %polly.indvar224.2, 480
  %scevgep251.2 = getelementptr i8, i8* %call1, i64 %172
  %173 = mul nuw nsw i64 %polly.indvar224.2, 640
  %scevgep255.2 = getelementptr i8, i8* %call, i64 %173
  br label %polly.loop_header227.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.2, %polly.loop_header221.2
  %polly.indvar230.2 = phi i64 [ 0, %polly.loop_header221.2 ], [ %polly.indvar_next231.2, %polly.loop_exit235.2 ]
  %174 = shl nuw nsw i64 %polly.indvar230.2, 3
  %scevgep239.2 = getelementptr i8, i8* %call1, i64 %174
  %scevgep252.2 = getelementptr i8, i8* %scevgep251.2, i64 %174
  %scevgep252253.2 = bitcast i8* %scevgep252.2 to double*
  %_p_scalar_254.pre.2 = load double, double* %scevgep252253.2, align 8, !alias.scope !65, !noalias !72
  %polly.access.mul.Packed_MemRef_call2243.2 = mul nuw nsw i64 %polly.indvar230.2, 80
  %polly.access.add.Packed_MemRef_call2244.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2243.2, %polly.indvar224.2
  %polly.access.Packed_MemRef_call2245.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2244.2
  %_p_scalar_246.2 = load double, double* %polly.access.Packed_MemRef_call2245.2, align 8
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_header233.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_header233.2 ]
  %175 = add nuw nsw i64 %polly.indvar236.2, 40
  %176 = mul nuw nsw i64 %175, 480
  %scevgep240.2 = getelementptr i8, i8* %scevgep239.2, i64 %176
  %scevgep240241.2 = bitcast i8* %scevgep240.2 to double*
  %_p_scalar_242.2 = load double, double* %scevgep240241.2, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_242.2
  %polly.access.add.Packed_MemRef_call2248.2 = add nuw nsw i64 %175, %polly.access.mul.Packed_MemRef_call2243.2
  %polly.access.Packed_MemRef_call2249.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2248.2
  %_p_scalar_250.2 = load double, double* %polly.access.Packed_MemRef_call2249.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_254.pre.2, %_p_scalar_250.2
  %177 = shl i64 %175, 3
  %scevgep256.2 = getelementptr i8, i8* %scevgep255.2, i64 %177
  %scevgep256257.2 = bitcast i8* %scevgep256.2 to double*
  %_p_scalar_258.2 = load double, double* %scevgep256257.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_258.2
  store double %p_add42.i118.2, double* %scevgep256257.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar236.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_header233.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %exitcond795.2.not = icmp eq i64 %polly.indvar_next231.2, 60
  br i1 %exitcond795.2.not, label %polly.loop_exit229.2, label %polly.loop_header227.2

polly.loop_exit229.2:                             ; preds = %polly.loop_exit235.2
  %polly.indvar_next225.2 = add nuw nsw i64 %polly.indvar224.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond798.2.not = icmp eq i64 %indvars.iv.next.2, 40
  br i1 %exitcond798.2.not, label %polly.loop_header221.3, label %polly.loop_header221.2

polly.loop_header221.3:                           ; preds = %polly.loop_exit229.2, %polly.loop_exit229.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit229.3 ], [ 0, %polly.loop_exit229.2 ]
  %polly.indvar224.3 = phi i64 [ %polly.indvar_next225.3, %polly.loop_exit229.3 ], [ 60, %polly.loop_exit229.2 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.3, i64 19)
  %178 = mul nuw nsw i64 %polly.indvar224.3, 480
  %scevgep251.3 = getelementptr i8, i8* %call1, i64 %178
  %179 = mul nuw nsw i64 %polly.indvar224.3, 640
  %scevgep255.3 = getelementptr i8, i8* %call, i64 %179
  br label %polly.loop_header227.3

polly.loop_header227.3:                           ; preds = %polly.loop_exit235.3, %polly.loop_header221.3
  %polly.indvar230.3 = phi i64 [ 0, %polly.loop_header221.3 ], [ %polly.indvar_next231.3, %polly.loop_exit235.3 ]
  %180 = shl nuw nsw i64 %polly.indvar230.3, 3
  %scevgep239.3 = getelementptr i8, i8* %call1, i64 %180
  %scevgep252.3 = getelementptr i8, i8* %scevgep251.3, i64 %180
  %scevgep252253.3 = bitcast i8* %scevgep252.3 to double*
  %_p_scalar_254.pre.3 = load double, double* %scevgep252253.3, align 8, !alias.scope !65, !noalias !72
  %polly.access.mul.Packed_MemRef_call2243.3 = mul nuw nsw i64 %polly.indvar230.3, 80
  %polly.access.add.Packed_MemRef_call2244.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2243.3, %polly.indvar224.3
  %polly.access.Packed_MemRef_call2245.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2244.3
  %_p_scalar_246.3 = load double, double* %polly.access.Packed_MemRef_call2245.3, align 8
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_header233.3, %polly.loop_header227.3
  %polly.indvar236.3 = phi i64 [ 0, %polly.loop_header227.3 ], [ %polly.indvar_next237.3, %polly.loop_header233.3 ]
  %181 = add nuw nsw i64 %polly.indvar236.3, 60
  %182 = mul nuw nsw i64 %181, 480
  %scevgep240.3 = getelementptr i8, i8* %scevgep239.3, i64 %182
  %scevgep240241.3 = bitcast i8* %scevgep240.3 to double*
  %_p_scalar_242.3 = load double, double* %scevgep240241.3, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.3 = fmul fast double %_p_scalar_246.3, %_p_scalar_242.3
  %polly.access.add.Packed_MemRef_call2248.3 = add nuw nsw i64 %181, %polly.access.mul.Packed_MemRef_call2243.3
  %polly.access.Packed_MemRef_call2249.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2248.3
  %_p_scalar_250.3 = load double, double* %polly.access.Packed_MemRef_call2249.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_254.pre.3, %_p_scalar_250.3
  %183 = shl i64 %181, 3
  %scevgep256.3 = getelementptr i8, i8* %scevgep255.3, i64 %183
  %scevgep256257.3 = bitcast i8* %scevgep256.3 to double*
  %_p_scalar_258.3 = load double, double* %scevgep256257.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_258.3
  store double %p_add42.i118.3, double* %scevgep256257.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar236.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_header233.3
  %polly.indvar_next231.3 = add nuw nsw i64 %polly.indvar230.3, 1
  %exitcond795.3.not = icmp eq i64 %polly.indvar_next231.3, 60
  br i1 %exitcond795.3.not, label %polly.loop_exit229.3, label %polly.loop_header227.3

polly.loop_exit229.3:                             ; preds = %polly.loop_exit235.3
  %polly.indvar_next225.3 = add nuw nsw i64 %polly.indvar224.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond798.3.not = icmp eq i64 %indvars.iv.next.3, 20
  br i1 %exitcond798.3.not, label %polly.loop_exit223.3, label %polly.loop_header221.3

polly.loop_exit223.3:                             ; preds = %polly.loop_exit229.3
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header385.1:                           ; preds = %polly.loop_exit393, %polly.loop_exit393.1
  %indvars.iv804.1 = phi i64 [ %indvars.iv.next805.1, %polly.loop_exit393.1 ], [ 0, %polly.loop_exit393 ]
  %polly.indvar388.1 = phi i64 [ %polly.indvar_next389.1, %polly.loop_exit393.1 ], [ 20, %polly.loop_exit393 ]
  %smin806.1 = call i64 @llvm.smin.i64(i64 %indvars.iv804.1, i64 19)
  %184 = mul nuw nsw i64 %polly.indvar388.1, 480
  %scevgep415.1 = getelementptr i8, i8* %call1, i64 %184
  %185 = mul nuw nsw i64 %polly.indvar388.1, 640
  %scevgep419.1 = getelementptr i8, i8* %call, i64 %185
  br label %polly.loop_header391.1

polly.loop_header391.1:                           ; preds = %polly.loop_exit399.1, %polly.loop_header385.1
  %polly.indvar394.1 = phi i64 [ 0, %polly.loop_header385.1 ], [ %polly.indvar_next395.1, %polly.loop_exit399.1 ]
  %186 = shl nuw nsw i64 %polly.indvar394.1, 3
  %scevgep403.1 = getelementptr i8, i8* %call1, i64 %186
  %scevgep416.1 = getelementptr i8, i8* %scevgep415.1, i64 %186
  %scevgep416417.1 = bitcast i8* %scevgep416.1 to double*
  %_p_scalar_418.pre.1 = load double, double* %scevgep416417.1, align 8, !alias.scope !76, !noalias !82
  %polly.access.mul.Packed_MemRef_call2264407.1 = mul nuw nsw i64 %polly.indvar394.1, 80
  %polly.access.add.Packed_MemRef_call2264408.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2264407.1, %polly.indvar388.1
  %polly.access.Packed_MemRef_call2264409.1 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264408.1
  %_p_scalar_410.1 = load double, double* %polly.access.Packed_MemRef_call2264409.1, align 8
  br label %polly.loop_header397.1

polly.loop_header397.1:                           ; preds = %polly.loop_header397.1, %polly.loop_header391.1
  %polly.indvar400.1 = phi i64 [ 0, %polly.loop_header391.1 ], [ %polly.indvar_next401.1, %polly.loop_header397.1 ]
  %187 = add nuw nsw i64 %polly.indvar400.1, 20
  %188 = mul nuw nsw i64 %187, 480
  %scevgep404.1 = getelementptr i8, i8* %scevgep403.1, i64 %188
  %scevgep404405.1 = bitcast i8* %scevgep404.1 to double*
  %_p_scalar_406.1 = load double, double* %scevgep404405.1, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.1 = fmul fast double %_p_scalar_410.1, %_p_scalar_406.1
  %polly.access.add.Packed_MemRef_call2264412.1 = add nuw nsw i64 %187, %polly.access.mul.Packed_MemRef_call2264407.1
  %polly.access.Packed_MemRef_call2264413.1 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264412.1
  %_p_scalar_414.1 = load double, double* %polly.access.Packed_MemRef_call2264413.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_418.pre.1, %_p_scalar_414.1
  %189 = shl i64 %187, 3
  %scevgep420.1 = getelementptr i8, i8* %scevgep419.1, i64 %189
  %scevgep420421.1 = bitcast i8* %scevgep420.1 to double*
  %_p_scalar_422.1 = load double, double* %scevgep420421.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_422.1
  store double %p_add42.i79.1, double* %scevgep420421.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next401.1 = add nuw nsw i64 %polly.indvar400.1, 1
  %exitcond807.1.not = icmp eq i64 %polly.indvar400.1, %smin806.1
  br i1 %exitcond807.1.not, label %polly.loop_exit399.1, label %polly.loop_header397.1

polly.loop_exit399.1:                             ; preds = %polly.loop_header397.1
  %polly.indvar_next395.1 = add nuw nsw i64 %polly.indvar394.1, 1
  %exitcond808.1.not = icmp eq i64 %polly.indvar_next395.1, 60
  br i1 %exitcond808.1.not, label %polly.loop_exit393.1, label %polly.loop_header391.1

polly.loop_exit393.1:                             ; preds = %polly.loop_exit399.1
  %polly.indvar_next389.1 = add nuw nsw i64 %polly.indvar388.1, 1
  %indvars.iv.next805.1 = add nuw nsw i64 %indvars.iv804.1, 1
  %exitcond811.1.not = icmp eq i64 %indvars.iv.next805.1, 60
  br i1 %exitcond811.1.not, label %polly.loop_header385.2, label %polly.loop_header385.1

polly.loop_header385.2:                           ; preds = %polly.loop_exit393.1, %polly.loop_exit393.2
  %indvars.iv804.2 = phi i64 [ %indvars.iv.next805.2, %polly.loop_exit393.2 ], [ 0, %polly.loop_exit393.1 ]
  %polly.indvar388.2 = phi i64 [ %polly.indvar_next389.2, %polly.loop_exit393.2 ], [ 40, %polly.loop_exit393.1 ]
  %smin806.2 = call i64 @llvm.smin.i64(i64 %indvars.iv804.2, i64 19)
  %190 = mul nuw nsw i64 %polly.indvar388.2, 480
  %scevgep415.2 = getelementptr i8, i8* %call1, i64 %190
  %191 = mul nuw nsw i64 %polly.indvar388.2, 640
  %scevgep419.2 = getelementptr i8, i8* %call, i64 %191
  br label %polly.loop_header391.2

polly.loop_header391.2:                           ; preds = %polly.loop_exit399.2, %polly.loop_header385.2
  %polly.indvar394.2 = phi i64 [ 0, %polly.loop_header385.2 ], [ %polly.indvar_next395.2, %polly.loop_exit399.2 ]
  %192 = shl nuw nsw i64 %polly.indvar394.2, 3
  %scevgep403.2 = getelementptr i8, i8* %call1, i64 %192
  %scevgep416.2 = getelementptr i8, i8* %scevgep415.2, i64 %192
  %scevgep416417.2 = bitcast i8* %scevgep416.2 to double*
  %_p_scalar_418.pre.2 = load double, double* %scevgep416417.2, align 8, !alias.scope !76, !noalias !82
  %polly.access.mul.Packed_MemRef_call2264407.2 = mul nuw nsw i64 %polly.indvar394.2, 80
  %polly.access.add.Packed_MemRef_call2264408.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2264407.2, %polly.indvar388.2
  %polly.access.Packed_MemRef_call2264409.2 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264408.2
  %_p_scalar_410.2 = load double, double* %polly.access.Packed_MemRef_call2264409.2, align 8
  br label %polly.loop_header397.2

polly.loop_header397.2:                           ; preds = %polly.loop_header397.2, %polly.loop_header391.2
  %polly.indvar400.2 = phi i64 [ 0, %polly.loop_header391.2 ], [ %polly.indvar_next401.2, %polly.loop_header397.2 ]
  %193 = add nuw nsw i64 %polly.indvar400.2, 40
  %194 = mul nuw nsw i64 %193, 480
  %scevgep404.2 = getelementptr i8, i8* %scevgep403.2, i64 %194
  %scevgep404405.2 = bitcast i8* %scevgep404.2 to double*
  %_p_scalar_406.2 = load double, double* %scevgep404405.2, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.2 = fmul fast double %_p_scalar_410.2, %_p_scalar_406.2
  %polly.access.add.Packed_MemRef_call2264412.2 = add nuw nsw i64 %193, %polly.access.mul.Packed_MemRef_call2264407.2
  %polly.access.Packed_MemRef_call2264413.2 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264412.2
  %_p_scalar_414.2 = load double, double* %polly.access.Packed_MemRef_call2264413.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_418.pre.2, %_p_scalar_414.2
  %195 = shl i64 %193, 3
  %scevgep420.2 = getelementptr i8, i8* %scevgep419.2, i64 %195
  %scevgep420421.2 = bitcast i8* %scevgep420.2 to double*
  %_p_scalar_422.2 = load double, double* %scevgep420421.2, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_422.2
  store double %p_add42.i79.2, double* %scevgep420421.2, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next401.2 = add nuw nsw i64 %polly.indvar400.2, 1
  %exitcond807.2.not = icmp eq i64 %polly.indvar400.2, %smin806.2
  br i1 %exitcond807.2.not, label %polly.loop_exit399.2, label %polly.loop_header397.2

polly.loop_exit399.2:                             ; preds = %polly.loop_header397.2
  %polly.indvar_next395.2 = add nuw nsw i64 %polly.indvar394.2, 1
  %exitcond808.2.not = icmp eq i64 %polly.indvar_next395.2, 60
  br i1 %exitcond808.2.not, label %polly.loop_exit393.2, label %polly.loop_header391.2

polly.loop_exit393.2:                             ; preds = %polly.loop_exit399.2
  %polly.indvar_next389.2 = add nuw nsw i64 %polly.indvar388.2, 1
  %indvars.iv.next805.2 = add nuw nsw i64 %indvars.iv804.2, 1
  %exitcond811.2.not = icmp eq i64 %indvars.iv.next805.2, 40
  br i1 %exitcond811.2.not, label %polly.loop_header385.3, label %polly.loop_header385.2

polly.loop_header385.3:                           ; preds = %polly.loop_exit393.2, %polly.loop_exit393.3
  %indvars.iv804.3 = phi i64 [ %indvars.iv.next805.3, %polly.loop_exit393.3 ], [ 0, %polly.loop_exit393.2 ]
  %polly.indvar388.3 = phi i64 [ %polly.indvar_next389.3, %polly.loop_exit393.3 ], [ 60, %polly.loop_exit393.2 ]
  %smin806.3 = call i64 @llvm.smin.i64(i64 %indvars.iv804.3, i64 19)
  %196 = mul nuw nsw i64 %polly.indvar388.3, 480
  %scevgep415.3 = getelementptr i8, i8* %call1, i64 %196
  %197 = mul nuw nsw i64 %polly.indvar388.3, 640
  %scevgep419.3 = getelementptr i8, i8* %call, i64 %197
  br label %polly.loop_header391.3

polly.loop_header391.3:                           ; preds = %polly.loop_exit399.3, %polly.loop_header385.3
  %polly.indvar394.3 = phi i64 [ 0, %polly.loop_header385.3 ], [ %polly.indvar_next395.3, %polly.loop_exit399.3 ]
  %198 = shl nuw nsw i64 %polly.indvar394.3, 3
  %scevgep403.3 = getelementptr i8, i8* %call1, i64 %198
  %scevgep416.3 = getelementptr i8, i8* %scevgep415.3, i64 %198
  %scevgep416417.3 = bitcast i8* %scevgep416.3 to double*
  %_p_scalar_418.pre.3 = load double, double* %scevgep416417.3, align 8, !alias.scope !76, !noalias !82
  %polly.access.mul.Packed_MemRef_call2264407.3 = mul nuw nsw i64 %polly.indvar394.3, 80
  %polly.access.add.Packed_MemRef_call2264408.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2264407.3, %polly.indvar388.3
  %polly.access.Packed_MemRef_call2264409.3 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264408.3
  %_p_scalar_410.3 = load double, double* %polly.access.Packed_MemRef_call2264409.3, align 8
  br label %polly.loop_header397.3

polly.loop_header397.3:                           ; preds = %polly.loop_header397.3, %polly.loop_header391.3
  %polly.indvar400.3 = phi i64 [ 0, %polly.loop_header391.3 ], [ %polly.indvar_next401.3, %polly.loop_header397.3 ]
  %199 = add nuw nsw i64 %polly.indvar400.3, 60
  %200 = mul nuw nsw i64 %199, 480
  %scevgep404.3 = getelementptr i8, i8* %scevgep403.3, i64 %200
  %scevgep404405.3 = bitcast i8* %scevgep404.3 to double*
  %_p_scalar_406.3 = load double, double* %scevgep404405.3, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.3 = fmul fast double %_p_scalar_410.3, %_p_scalar_406.3
  %polly.access.add.Packed_MemRef_call2264412.3 = add nuw nsw i64 %199, %polly.access.mul.Packed_MemRef_call2264407.3
  %polly.access.Packed_MemRef_call2264413.3 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264412.3
  %_p_scalar_414.3 = load double, double* %polly.access.Packed_MemRef_call2264413.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_418.pre.3, %_p_scalar_414.3
  %201 = shl i64 %199, 3
  %scevgep420.3 = getelementptr i8, i8* %scevgep419.3, i64 %201
  %scevgep420421.3 = bitcast i8* %scevgep420.3 to double*
  %_p_scalar_422.3 = load double, double* %scevgep420421.3, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_422.3
  store double %p_add42.i79.3, double* %scevgep420421.3, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next401.3 = add nuw nsw i64 %polly.indvar400.3, 1
  %exitcond807.3.not = icmp eq i64 %polly.indvar400.3, %smin806.3
  br i1 %exitcond807.3.not, label %polly.loop_exit399.3, label %polly.loop_header397.3

polly.loop_exit399.3:                             ; preds = %polly.loop_header397.3
  %polly.indvar_next395.3 = add nuw nsw i64 %polly.indvar394.3, 1
  %exitcond808.3.not = icmp eq i64 %polly.indvar_next395.3, 60
  br i1 %exitcond808.3.not, label %polly.loop_exit393.3, label %polly.loop_header391.3

polly.loop_exit393.3:                             ; preds = %polly.loop_exit399.3
  %polly.indvar_next389.3 = add nuw nsw i64 %polly.indvar388.3, 1
  %indvars.iv.next805.3 = add nuw nsw i64 %indvars.iv804.3, 1
  %exitcond811.3.not = icmp eq i64 %indvars.iv.next805.3, 20
  br i1 %exitcond811.3.not, label %polly.loop_exit387.3, label %polly.loop_header385.3

polly.loop_exit387.3:                             ; preds = %polly.loop_exit393.3
  tail call void @free(i8* nonnull %malloccall263)
  br label %kernel_syr2k.exit90

polly.loop_header549.1:                           ; preds = %polly.loop_exit557, %polly.loop_exit557.1
  %indvars.iv817.1 = phi i64 [ %indvars.iv.next818.1, %polly.loop_exit557.1 ], [ 0, %polly.loop_exit557 ]
  %polly.indvar552.1 = phi i64 [ %polly.indvar_next553.1, %polly.loop_exit557.1 ], [ 20, %polly.loop_exit557 ]
  %smin819.1 = call i64 @llvm.smin.i64(i64 %indvars.iv817.1, i64 19)
  %202 = mul nuw nsw i64 %polly.indvar552.1, 480
  %scevgep579.1 = getelementptr i8, i8* %call1, i64 %202
  %203 = mul nuw nsw i64 %polly.indvar552.1, 640
  %scevgep583.1 = getelementptr i8, i8* %call, i64 %203
  br label %polly.loop_header555.1

polly.loop_header555.1:                           ; preds = %polly.loop_exit563.1, %polly.loop_header549.1
  %polly.indvar558.1 = phi i64 [ 0, %polly.loop_header549.1 ], [ %polly.indvar_next559.1, %polly.loop_exit563.1 ]
  %204 = shl nuw nsw i64 %polly.indvar558.1, 3
  %scevgep567.1 = getelementptr i8, i8* %call1, i64 %204
  %scevgep580.1 = getelementptr i8, i8* %scevgep579.1, i64 %204
  %scevgep580581.1 = bitcast i8* %scevgep580.1 to double*
  %_p_scalar_582.pre.1 = load double, double* %scevgep580581.1, align 8, !alias.scope !86, !noalias !92
  %polly.access.mul.Packed_MemRef_call2428571.1 = mul nuw nsw i64 %polly.indvar558.1, 80
  %polly.access.add.Packed_MemRef_call2428572.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2428571.1, %polly.indvar552.1
  %polly.access.Packed_MemRef_call2428573.1 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428572.1
  %_p_scalar_574.1 = load double, double* %polly.access.Packed_MemRef_call2428573.1, align 8
  br label %polly.loop_header561.1

polly.loop_header561.1:                           ; preds = %polly.loop_header561.1, %polly.loop_header555.1
  %polly.indvar564.1 = phi i64 [ 0, %polly.loop_header555.1 ], [ %polly.indvar_next565.1, %polly.loop_header561.1 ]
  %205 = add nuw nsw i64 %polly.indvar564.1, 20
  %206 = mul nuw nsw i64 %205, 480
  %scevgep568.1 = getelementptr i8, i8* %scevgep567.1, i64 %206
  %scevgep568569.1 = bitcast i8* %scevgep568.1 to double*
  %_p_scalar_570.1 = load double, double* %scevgep568569.1, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.1 = fmul fast double %_p_scalar_574.1, %_p_scalar_570.1
  %polly.access.add.Packed_MemRef_call2428576.1 = add nuw nsw i64 %205, %polly.access.mul.Packed_MemRef_call2428571.1
  %polly.access.Packed_MemRef_call2428577.1 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428576.1
  %_p_scalar_578.1 = load double, double* %polly.access.Packed_MemRef_call2428577.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_582.pre.1, %_p_scalar_578.1
  %207 = shl i64 %205, 3
  %scevgep584.1 = getelementptr i8, i8* %scevgep583.1, i64 %207
  %scevgep584585.1 = bitcast i8* %scevgep584.1 to double*
  %_p_scalar_586.1 = load double, double* %scevgep584585.1, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_586.1
  store double %p_add42.i.1, double* %scevgep584585.1, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next565.1 = add nuw nsw i64 %polly.indvar564.1, 1
  %exitcond820.1.not = icmp eq i64 %polly.indvar564.1, %smin819.1
  br i1 %exitcond820.1.not, label %polly.loop_exit563.1, label %polly.loop_header561.1

polly.loop_exit563.1:                             ; preds = %polly.loop_header561.1
  %polly.indvar_next559.1 = add nuw nsw i64 %polly.indvar558.1, 1
  %exitcond821.1.not = icmp eq i64 %polly.indvar_next559.1, 60
  br i1 %exitcond821.1.not, label %polly.loop_exit557.1, label %polly.loop_header555.1

polly.loop_exit557.1:                             ; preds = %polly.loop_exit563.1
  %polly.indvar_next553.1 = add nuw nsw i64 %polly.indvar552.1, 1
  %indvars.iv.next818.1 = add nuw nsw i64 %indvars.iv817.1, 1
  %exitcond824.1.not = icmp eq i64 %indvars.iv.next818.1, 60
  br i1 %exitcond824.1.not, label %polly.loop_header549.2, label %polly.loop_header549.1

polly.loop_header549.2:                           ; preds = %polly.loop_exit557.1, %polly.loop_exit557.2
  %indvars.iv817.2 = phi i64 [ %indvars.iv.next818.2, %polly.loop_exit557.2 ], [ 0, %polly.loop_exit557.1 ]
  %polly.indvar552.2 = phi i64 [ %polly.indvar_next553.2, %polly.loop_exit557.2 ], [ 40, %polly.loop_exit557.1 ]
  %smin819.2 = call i64 @llvm.smin.i64(i64 %indvars.iv817.2, i64 19)
  %208 = mul nuw nsw i64 %polly.indvar552.2, 480
  %scevgep579.2 = getelementptr i8, i8* %call1, i64 %208
  %209 = mul nuw nsw i64 %polly.indvar552.2, 640
  %scevgep583.2 = getelementptr i8, i8* %call, i64 %209
  br label %polly.loop_header555.2

polly.loop_header555.2:                           ; preds = %polly.loop_exit563.2, %polly.loop_header549.2
  %polly.indvar558.2 = phi i64 [ 0, %polly.loop_header549.2 ], [ %polly.indvar_next559.2, %polly.loop_exit563.2 ]
  %210 = shl nuw nsw i64 %polly.indvar558.2, 3
  %scevgep567.2 = getelementptr i8, i8* %call1, i64 %210
  %scevgep580.2 = getelementptr i8, i8* %scevgep579.2, i64 %210
  %scevgep580581.2 = bitcast i8* %scevgep580.2 to double*
  %_p_scalar_582.pre.2 = load double, double* %scevgep580581.2, align 8, !alias.scope !86, !noalias !92
  %polly.access.mul.Packed_MemRef_call2428571.2 = mul nuw nsw i64 %polly.indvar558.2, 80
  %polly.access.add.Packed_MemRef_call2428572.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2428571.2, %polly.indvar552.2
  %polly.access.Packed_MemRef_call2428573.2 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428572.2
  %_p_scalar_574.2 = load double, double* %polly.access.Packed_MemRef_call2428573.2, align 8
  br label %polly.loop_header561.2

polly.loop_header561.2:                           ; preds = %polly.loop_header561.2, %polly.loop_header555.2
  %polly.indvar564.2 = phi i64 [ 0, %polly.loop_header555.2 ], [ %polly.indvar_next565.2, %polly.loop_header561.2 ]
  %211 = add nuw nsw i64 %polly.indvar564.2, 40
  %212 = mul nuw nsw i64 %211, 480
  %scevgep568.2 = getelementptr i8, i8* %scevgep567.2, i64 %212
  %scevgep568569.2 = bitcast i8* %scevgep568.2 to double*
  %_p_scalar_570.2 = load double, double* %scevgep568569.2, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.2 = fmul fast double %_p_scalar_574.2, %_p_scalar_570.2
  %polly.access.add.Packed_MemRef_call2428576.2 = add nuw nsw i64 %211, %polly.access.mul.Packed_MemRef_call2428571.2
  %polly.access.Packed_MemRef_call2428577.2 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428576.2
  %_p_scalar_578.2 = load double, double* %polly.access.Packed_MemRef_call2428577.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_582.pre.2, %_p_scalar_578.2
  %213 = shl i64 %211, 3
  %scevgep584.2 = getelementptr i8, i8* %scevgep583.2, i64 %213
  %scevgep584585.2 = bitcast i8* %scevgep584.2 to double*
  %_p_scalar_586.2 = load double, double* %scevgep584585.2, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_586.2
  store double %p_add42.i.2, double* %scevgep584585.2, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next565.2 = add nuw nsw i64 %polly.indvar564.2, 1
  %exitcond820.2.not = icmp eq i64 %polly.indvar564.2, %smin819.2
  br i1 %exitcond820.2.not, label %polly.loop_exit563.2, label %polly.loop_header561.2

polly.loop_exit563.2:                             ; preds = %polly.loop_header561.2
  %polly.indvar_next559.2 = add nuw nsw i64 %polly.indvar558.2, 1
  %exitcond821.2.not = icmp eq i64 %polly.indvar_next559.2, 60
  br i1 %exitcond821.2.not, label %polly.loop_exit557.2, label %polly.loop_header555.2

polly.loop_exit557.2:                             ; preds = %polly.loop_exit563.2
  %polly.indvar_next553.2 = add nuw nsw i64 %polly.indvar552.2, 1
  %indvars.iv.next818.2 = add nuw nsw i64 %indvars.iv817.2, 1
  %exitcond824.2.not = icmp eq i64 %indvars.iv.next818.2, 40
  br i1 %exitcond824.2.not, label %polly.loop_header549.3, label %polly.loop_header549.2

polly.loop_header549.3:                           ; preds = %polly.loop_exit557.2, %polly.loop_exit557.3
  %indvars.iv817.3 = phi i64 [ %indvars.iv.next818.3, %polly.loop_exit557.3 ], [ 0, %polly.loop_exit557.2 ]
  %polly.indvar552.3 = phi i64 [ %polly.indvar_next553.3, %polly.loop_exit557.3 ], [ 60, %polly.loop_exit557.2 ]
  %smin819.3 = call i64 @llvm.smin.i64(i64 %indvars.iv817.3, i64 19)
  %214 = mul nuw nsw i64 %polly.indvar552.3, 480
  %scevgep579.3 = getelementptr i8, i8* %call1, i64 %214
  %215 = mul nuw nsw i64 %polly.indvar552.3, 640
  %scevgep583.3 = getelementptr i8, i8* %call, i64 %215
  br label %polly.loop_header555.3

polly.loop_header555.3:                           ; preds = %polly.loop_exit563.3, %polly.loop_header549.3
  %polly.indvar558.3 = phi i64 [ 0, %polly.loop_header549.3 ], [ %polly.indvar_next559.3, %polly.loop_exit563.3 ]
  %216 = shl nuw nsw i64 %polly.indvar558.3, 3
  %scevgep567.3 = getelementptr i8, i8* %call1, i64 %216
  %scevgep580.3 = getelementptr i8, i8* %scevgep579.3, i64 %216
  %scevgep580581.3 = bitcast i8* %scevgep580.3 to double*
  %_p_scalar_582.pre.3 = load double, double* %scevgep580581.3, align 8, !alias.scope !86, !noalias !92
  %polly.access.mul.Packed_MemRef_call2428571.3 = mul nuw nsw i64 %polly.indvar558.3, 80
  %polly.access.add.Packed_MemRef_call2428572.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2428571.3, %polly.indvar552.3
  %polly.access.Packed_MemRef_call2428573.3 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428572.3
  %_p_scalar_574.3 = load double, double* %polly.access.Packed_MemRef_call2428573.3, align 8
  br label %polly.loop_header561.3

polly.loop_header561.3:                           ; preds = %polly.loop_header561.3, %polly.loop_header555.3
  %polly.indvar564.3 = phi i64 [ 0, %polly.loop_header555.3 ], [ %polly.indvar_next565.3, %polly.loop_header561.3 ]
  %217 = add nuw nsw i64 %polly.indvar564.3, 60
  %218 = mul nuw nsw i64 %217, 480
  %scevgep568.3 = getelementptr i8, i8* %scevgep567.3, i64 %218
  %scevgep568569.3 = bitcast i8* %scevgep568.3 to double*
  %_p_scalar_570.3 = load double, double* %scevgep568569.3, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.3 = fmul fast double %_p_scalar_574.3, %_p_scalar_570.3
  %polly.access.add.Packed_MemRef_call2428576.3 = add nuw nsw i64 %217, %polly.access.mul.Packed_MemRef_call2428571.3
  %polly.access.Packed_MemRef_call2428577.3 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428576.3
  %_p_scalar_578.3 = load double, double* %polly.access.Packed_MemRef_call2428577.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_582.pre.3, %_p_scalar_578.3
  %219 = shl i64 %217, 3
  %scevgep584.3 = getelementptr i8, i8* %scevgep583.3, i64 %219
  %scevgep584585.3 = bitcast i8* %scevgep584.3 to double*
  %_p_scalar_586.3 = load double, double* %scevgep584585.3, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_586.3
  store double %p_add42.i.3, double* %scevgep584585.3, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next565.3 = add nuw nsw i64 %polly.indvar564.3, 1
  %exitcond820.3.not = icmp eq i64 %polly.indvar564.3, %smin819.3
  br i1 %exitcond820.3.not, label %polly.loop_exit563.3, label %polly.loop_header561.3

polly.loop_exit563.3:                             ; preds = %polly.loop_header561.3
  %polly.indvar_next559.3 = add nuw nsw i64 %polly.indvar558.3, 1
  %exitcond821.3.not = icmp eq i64 %polly.indvar_next559.3, 60
  br i1 %exitcond821.3.not, label %polly.loop_exit557.3, label %polly.loop_header555.3

polly.loop_exit557.3:                             ; preds = %polly.loop_exit563.3
  %polly.indvar_next553.3 = add nuw nsw i64 %polly.indvar552.3, 1
  %indvars.iv.next818.3 = add nuw nsw i64 %indvars.iv817.3, 1
  %exitcond824.3.not = icmp eq i64 %indvars.iv.next818.3, 20
  br i1 %exitcond824.3.not, label %polly.loop_exit551.3, label %polly.loop_header549.3

polly.loop_exit551.3:                             ; preds = %polly.loop_exit557.3
  tail call void @free(i8* nonnull %malloccall427)
  br label %kernel_syr2k.exit

polly.loop_header778.1:                           ; preds = %polly.loop_exit786, %polly.loop_exit786.1
  %polly.indvar781.1 = phi i64 [ %polly.indvar_next782.1, %polly.loop_exit786.1 ], [ 0, %polly.loop_exit786 ]
  %220 = mul nuw nsw i64 %polly.indvar781.1, 480
  %221 = trunc i64 %polly.indvar781.1 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %polly.loop_header778.1
  %index1137 = phi i64 [ 0, %polly.loop_header778.1 ], [ %index.next1138, %vector.body1135 ]
  %vec.ind1141 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1 ], [ %vec.ind.next1142, %vector.body1135 ]
  %222 = add nuw nsw <4 x i64> %vec.ind1141, <i64 32, i64 32, i64 32, i64 32>
  %223 = trunc <4 x i64> %222 to <4 x i32>
  %224 = mul <4 x i32> %broadcast.splat1144, %223
  %225 = add <4 x i32> %224, <i32 1, i32 1, i32 1, i32 1>
  %226 = urem <4 x i32> %225, <i32 80, i32 80, i32 80, i32 80>
  %227 = sitofp <4 x i32> %226 to <4 x double>
  %228 = fmul fast <4 x double> %227, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %229 = extractelement <4 x i64> %222, i32 0
  %230 = shl i64 %229, 3
  %231 = add i64 %230, %220
  %232 = getelementptr i8, i8* %call1, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %228, <4 x double>* %233, align 8, !alias.scope !96, !noalias !101
  %index.next1138 = add i64 %index1137, 4
  %vec.ind.next1142 = add <4 x i64> %vec.ind1141, <i64 4, i64 4, i64 4, i64 4>
  %234 = icmp eq i64 %index.next1138, 28
  br i1 %234, label %polly.loop_exit786.1, label %vector.body1135, !llvm.loop !103

polly.loop_exit786.1:                             ; preds = %vector.body1135
  %polly.indvar_next782.1 = add nuw nsw i64 %polly.indvar781.1, 1
  %exitcond834.1.not = icmp eq i64 %polly.indvar_next782.1, 32
  br i1 %exitcond834.1.not, label %polly.loop_header778.1854, label %polly.loop_header778.1

polly.loop_header778.1854:                        ; preds = %polly.loop_exit786.1, %polly.loop_exit786.1865
  %polly.indvar781.1853 = phi i64 [ %polly.indvar_next782.1863, %polly.loop_exit786.1865 ], [ 0, %polly.loop_exit786.1 ]
  %235 = add nuw nsw i64 %polly.indvar781.1853, 32
  %236 = mul nuw nsw i64 %235, 480
  %237 = trunc i64 %235 to i32
  %broadcast.splatinsert1157 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat1158 = shufflevector <4 x i32> %broadcast.splatinsert1157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header778.1854
  %index1149 = phi i64 [ 0, %polly.loop_header778.1854 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1155 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.1854 ], [ %vec.ind.next1156, %vector.body1147 ]
  %238 = mul <4 x i32> %vec.ind1155, %broadcast.splat1158
  %239 = add <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %240 = urem <4 x i32> %239, <i32 80, i32 80, i32 80, i32 80>
  %241 = sitofp <4 x i32> %240 to <4 x double>
  %242 = fmul fast <4 x double> %241, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %243 = shl i64 %index1149, 3
  %244 = add i64 %243, %236
  %245 = getelementptr i8, i8* %call1, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %242, <4 x double>* %246, align 8, !alias.scope !96, !noalias !101
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1156 = add <4 x i32> %vec.ind1155, <i32 4, i32 4, i32 4, i32 4>
  %247 = icmp eq i64 %index.next1150, 32
  br i1 %247, label %polly.loop_exit786.1865, label %vector.body1147, !llvm.loop !104

polly.loop_exit786.1865:                          ; preds = %vector.body1147
  %polly.indvar_next782.1863 = add nuw nsw i64 %polly.indvar781.1853, 1
  %exitcond834.1864.not = icmp eq i64 %polly.indvar_next782.1863, 32
  br i1 %exitcond834.1864.not, label %polly.loop_header778.1.1, label %polly.loop_header778.1854

polly.loop_header778.1.1:                         ; preds = %polly.loop_exit786.1865, %polly.loop_exit786.1.1
  %polly.indvar781.1.1 = phi i64 [ %polly.indvar_next782.1.1, %polly.loop_exit786.1.1 ], [ 0, %polly.loop_exit786.1865 ]
  %248 = add nuw nsw i64 %polly.indvar781.1.1, 32
  %249 = mul nuw nsw i64 %248, 480
  %250 = trunc i64 %248 to i32
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %polly.loop_header778.1.1
  %index1163 = phi i64 [ 0, %polly.loop_header778.1.1 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1167 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.1 ], [ %vec.ind.next1168, %vector.body1161 ]
  %251 = add nuw nsw <4 x i64> %vec.ind1167, <i64 32, i64 32, i64 32, i64 32>
  %252 = trunc <4 x i64> %251 to <4 x i32>
  %253 = mul <4 x i32> %broadcast.splat1170, %252
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = extractelement <4 x i64> %251, i32 0
  %259 = shl i64 %258, 3
  %260 = add i64 %259, %249
  %261 = getelementptr i8, i8* %call1, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %257, <4 x double>* %262, align 8, !alias.scope !96, !noalias !101
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1168 = add <4 x i64> %vec.ind1167, <i64 4, i64 4, i64 4, i64 4>
  %263 = icmp eq i64 %index.next1164, 28
  br i1 %263, label %polly.loop_exit786.1.1, label %vector.body1161, !llvm.loop !105

polly.loop_exit786.1.1:                           ; preds = %vector.body1161
  %polly.indvar_next782.1.1 = add nuw nsw i64 %polly.indvar781.1.1, 1
  %exitcond834.1.1.not = icmp eq i64 %polly.indvar_next782.1.1, 32
  br i1 %exitcond834.1.1.not, label %polly.loop_header778.2, label %polly.loop_header778.1.1

polly.loop_header778.2:                           ; preds = %polly.loop_exit786.1.1, %polly.loop_exit786.2
  %polly.indvar781.2 = phi i64 [ %polly.indvar_next782.2, %polly.loop_exit786.2 ], [ 0, %polly.loop_exit786.1.1 ]
  %264 = add nuw nsw i64 %polly.indvar781.2, 64
  %265 = mul nuw nsw i64 %264, 480
  %266 = trunc i64 %264 to i32
  %broadcast.splatinsert1183 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1184 = shufflevector <4 x i32> %broadcast.splatinsert1183, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %polly.loop_header778.2
  %index1175 = phi i64 [ 0, %polly.loop_header778.2 ], [ %index.next1176, %vector.body1173 ]
  %vec.ind1181 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.2 ], [ %vec.ind.next1182, %vector.body1173 ]
  %267 = mul <4 x i32> %vec.ind1181, %broadcast.splat1184
  %268 = add <4 x i32> %267, <i32 1, i32 1, i32 1, i32 1>
  %269 = urem <4 x i32> %268, <i32 80, i32 80, i32 80, i32 80>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %272 = shl i64 %index1175, 3
  %273 = add i64 %272, %265
  %274 = getelementptr i8, i8* %call1, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %271, <4 x double>* %275, align 8, !alias.scope !96, !noalias !101
  %index.next1176 = add i64 %index1175, 4
  %vec.ind.next1182 = add <4 x i32> %vec.ind1181, <i32 4, i32 4, i32 4, i32 4>
  %276 = icmp eq i64 %index.next1176, 32
  br i1 %276, label %polly.loop_exit786.2, label %vector.body1173, !llvm.loop !106

polly.loop_exit786.2:                             ; preds = %vector.body1173
  %polly.indvar_next782.2 = add nuw nsw i64 %polly.indvar781.2, 1
  %exitcond834.2.not = icmp eq i64 %polly.indvar_next782.2, 16
  br i1 %exitcond834.2.not, label %polly.loop_header778.1.2, label %polly.loop_header778.2

polly.loop_header778.1.2:                         ; preds = %polly.loop_exit786.2, %polly.loop_exit786.1.2
  %polly.indvar781.1.2 = phi i64 [ %polly.indvar_next782.1.2, %polly.loop_exit786.1.2 ], [ 0, %polly.loop_exit786.2 ]
  %277 = add nuw nsw i64 %polly.indvar781.1.2, 64
  %278 = mul nuw nsw i64 %277, 480
  %279 = trunc i64 %277 to i32
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %polly.loop_header778.1.2
  %index1189 = phi i64 [ 0, %polly.loop_header778.1.2 ], [ %index.next1190, %vector.body1187 ]
  %vec.ind1193 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.2 ], [ %vec.ind.next1194, %vector.body1187 ]
  %280 = add nuw nsw <4 x i64> %vec.ind1193, <i64 32, i64 32, i64 32, i64 32>
  %281 = trunc <4 x i64> %280 to <4 x i32>
  %282 = mul <4 x i32> %broadcast.splat1196, %281
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = extractelement <4 x i64> %280, i32 0
  %288 = shl i64 %287, 3
  %289 = add i64 %288, %278
  %290 = getelementptr i8, i8* %call1, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %286, <4 x double>* %291, align 8, !alias.scope !96, !noalias !101
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %292 = icmp eq i64 %index.next1190, 28
  br i1 %292, label %polly.loop_exit786.1.2, label %vector.body1187, !llvm.loop !107

polly.loop_exit786.1.2:                           ; preds = %vector.body1187
  %polly.indvar_next782.1.2 = add nuw nsw i64 %polly.indvar781.1.2, 1
  %exitcond834.1.2.not = icmp eq i64 %polly.indvar_next782.1.2, 16
  br i1 %exitcond834.1.2.not, label %init_array.exit, label %polly.loop_header778.1.2

polly.loop_header752.1:                           ; preds = %polly.loop_exit760, %polly.loop_exit760.1
  %polly.indvar755.1 = phi i64 [ %polly.indvar_next756.1, %polly.loop_exit760.1 ], [ 0, %polly.loop_exit760 ]
  %293 = mul nuw nsw i64 %polly.indvar755.1, 480
  %294 = trunc i64 %polly.indvar755.1 to i32
  %broadcast.splatinsert1065 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1066 = shufflevector <4 x i32> %broadcast.splatinsert1065, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %polly.loop_header752.1
  %index1059 = phi i64 [ 0, %polly.loop_header752.1 ], [ %index.next1060, %vector.body1057 ]
  %vec.ind1063 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1 ], [ %vec.ind.next1064, %vector.body1057 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1063, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1066, %296
  %298 = add <4 x i32> %297, <i32 2, i32 2, i32 2, i32 2>
  %299 = urem <4 x i32> %298, <i32 60, i32 60, i32 60, i32 60>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add i64 %303, %293
  %305 = getelementptr i8, i8* %call2, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !97, !noalias !99
  %index.next1060 = add i64 %index1059, 4
  %vec.ind.next1064 = add <4 x i64> %vec.ind1063, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1060, 28
  br i1 %307, label %polly.loop_exit760.1, label %vector.body1057, !llvm.loop !108

polly.loop_exit760.1:                             ; preds = %vector.body1057
  %polly.indvar_next756.1 = add nuw nsw i64 %polly.indvar755.1, 1
  %exitcond840.1.not = icmp eq i64 %polly.indvar_next756.1, 32
  br i1 %exitcond840.1.not, label %polly.loop_header752.1868, label %polly.loop_header752.1

polly.loop_header752.1868:                        ; preds = %polly.loop_exit760.1, %polly.loop_exit760.1879
  %polly.indvar755.1867 = phi i64 [ %polly.indvar_next756.1877, %polly.loop_exit760.1879 ], [ 0, %polly.loop_exit760.1 ]
  %308 = add nuw nsw i64 %polly.indvar755.1867, 32
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1079 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1080 = shufflevector <4 x i32> %broadcast.splatinsert1079, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %polly.loop_header752.1868
  %index1071 = phi i64 [ 0, %polly.loop_header752.1868 ], [ %index.next1072, %vector.body1069 ]
  %vec.ind1077 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.1868 ], [ %vec.ind.next1078, %vector.body1069 ]
  %311 = mul <4 x i32> %vec.ind1077, %broadcast.splat1080
  %312 = add <4 x i32> %311, <i32 2, i32 2, i32 2, i32 2>
  %313 = urem <4 x i32> %312, <i32 60, i32 60, i32 60, i32 60>
  %314 = sitofp <4 x i32> %313 to <4 x double>
  %315 = fmul fast <4 x double> %314, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %316 = shl i64 %index1071, 3
  %317 = add i64 %316, %309
  %318 = getelementptr i8, i8* %call2, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  store <4 x double> %315, <4 x double>* %319, align 8, !alias.scope !97, !noalias !99
  %index.next1072 = add i64 %index1071, 4
  %vec.ind.next1078 = add <4 x i32> %vec.ind1077, <i32 4, i32 4, i32 4, i32 4>
  %320 = icmp eq i64 %index.next1072, 32
  br i1 %320, label %polly.loop_exit760.1879, label %vector.body1069, !llvm.loop !109

polly.loop_exit760.1879:                          ; preds = %vector.body1069
  %polly.indvar_next756.1877 = add nuw nsw i64 %polly.indvar755.1867, 1
  %exitcond840.1878.not = icmp eq i64 %polly.indvar_next756.1877, 32
  br i1 %exitcond840.1878.not, label %polly.loop_header752.1.1, label %polly.loop_header752.1868

polly.loop_header752.1.1:                         ; preds = %polly.loop_exit760.1879, %polly.loop_exit760.1.1
  %polly.indvar755.1.1 = phi i64 [ %polly.indvar_next756.1.1, %polly.loop_exit760.1.1 ], [ 0, %polly.loop_exit760.1879 ]
  %321 = add nuw nsw i64 %polly.indvar755.1.1, 32
  %322 = mul nuw nsw i64 %321, 480
  %323 = trunc i64 %321 to i32
  %broadcast.splatinsert1091 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1092 = shufflevector <4 x i32> %broadcast.splatinsert1091, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %polly.loop_header752.1.1
  %index1085 = phi i64 [ 0, %polly.loop_header752.1.1 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1089 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.1 ], [ %vec.ind.next1090, %vector.body1083 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1089, <i64 32, i64 32, i64 32, i64 32>
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1092, %325
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %322
  %334 = getelementptr i8, i8* %call2, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !97, !noalias !99
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1090 = add <4 x i64> %vec.ind1089, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1086, 28
  br i1 %336, label %polly.loop_exit760.1.1, label %vector.body1083, !llvm.loop !110

polly.loop_exit760.1.1:                           ; preds = %vector.body1083
  %polly.indvar_next756.1.1 = add nuw nsw i64 %polly.indvar755.1.1, 1
  %exitcond840.1.1.not = icmp eq i64 %polly.indvar_next756.1.1, 32
  br i1 %exitcond840.1.1.not, label %polly.loop_header752.2, label %polly.loop_header752.1.1

polly.loop_header752.2:                           ; preds = %polly.loop_exit760.1.1, %polly.loop_exit760.2
  %polly.indvar755.2 = phi i64 [ %polly.indvar_next756.2, %polly.loop_exit760.2 ], [ 0, %polly.loop_exit760.1.1 ]
  %337 = add nuw nsw i64 %polly.indvar755.2, 64
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %polly.loop_header752.2
  %index1097 = phi i64 [ 0, %polly.loop_header752.2 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1103 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.2 ], [ %vec.ind.next1104, %vector.body1095 ]
  %340 = mul <4 x i32> %vec.ind1103, %broadcast.splat1106
  %341 = add <4 x i32> %340, <i32 2, i32 2, i32 2, i32 2>
  %342 = urem <4 x i32> %341, <i32 60, i32 60, i32 60, i32 60>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = shl i64 %index1097, 3
  %346 = add i64 %345, %338
  %347 = getelementptr i8, i8* %call2, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %344, <4 x double>* %348, align 8, !alias.scope !97, !noalias !99
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1104 = add <4 x i32> %vec.ind1103, <i32 4, i32 4, i32 4, i32 4>
  %349 = icmp eq i64 %index.next1098, 32
  br i1 %349, label %polly.loop_exit760.2, label %vector.body1095, !llvm.loop !111

polly.loop_exit760.2:                             ; preds = %vector.body1095
  %polly.indvar_next756.2 = add nuw nsw i64 %polly.indvar755.2, 1
  %exitcond840.2.not = icmp eq i64 %polly.indvar_next756.2, 16
  br i1 %exitcond840.2.not, label %polly.loop_header752.1.2, label %polly.loop_header752.2

polly.loop_header752.1.2:                         ; preds = %polly.loop_exit760.2, %polly.loop_exit760.1.2
  %polly.indvar755.1.2 = phi i64 [ %polly.indvar_next756.1.2, %polly.loop_exit760.1.2 ], [ 0, %polly.loop_exit760.2 ]
  %350 = add nuw nsw i64 %polly.indvar755.1.2, 64
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %polly.loop_header752.1.2
  %index1111 = phi i64 [ 0, %polly.loop_header752.1.2 ], [ %index.next1112, %vector.body1109 ]
  %vec.ind1115 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.2 ], [ %vec.ind.next1116, %vector.body1109 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1115, <i64 32, i64 32, i64 32, i64 32>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1118, %354
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add i64 %361, %351
  %363 = getelementptr i8, i8* %call2, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !97, !noalias !99
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1116 = add <4 x i64> %vec.ind1115, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1112, 28
  br i1 %365, label %polly.loop_exit760.1.2, label %vector.body1109, !llvm.loop !112

polly.loop_exit760.1.2:                           ; preds = %vector.body1109
  %polly.indvar_next756.1.2 = add nuw nsw i64 %polly.indvar755.1.2, 1
  %exitcond840.1.2.not = icmp eq i64 %polly.indvar_next756.1.2, 16
  br i1 %exitcond840.1.2.not, label %polly.loop_header778, label %polly.loop_header752.1.2

polly.loop_header725.1:                           ; preds = %polly.loop_exit733, %polly.loop_exit733.1
  %polly.indvar728.1 = phi i64 [ %polly.indvar_next729.1, %polly.loop_exit733.1 ], [ 0, %polly.loop_exit733 ]
  %366 = mul nuw nsw i64 %polly.indvar728.1, 640
  %367 = trunc i64 %polly.indvar728.1 to i32
  %broadcast.splatinsert951 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat952 = shufflevector <4 x i32> %broadcast.splatinsert951, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body943

vector.body943:                                   ; preds = %vector.body943, %polly.loop_header725.1
  %index945 = phi i64 [ 0, %polly.loop_header725.1 ], [ %index.next946, %vector.body943 ]
  %vec.ind949 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1 ], [ %vec.ind.next950, %vector.body943 ]
  %368 = add nuw nsw <4 x i64> %vec.ind949, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat952, %369
  %371 = add <4 x i32> %370, <i32 3, i32 3, i32 3, i32 3>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add nuw nsw i64 %376, %366
  %378 = getelementptr i8, i8* %call, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !93, !noalias !95
  %index.next946 = add i64 %index945, 4
  %vec.ind.next950 = add <4 x i64> %vec.ind949, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next946, 32
  br i1 %380, label %polly.loop_exit733.1, label %vector.body943, !llvm.loop !113

polly.loop_exit733.1:                             ; preds = %vector.body943
  %polly.indvar_next729.1 = add nuw nsw i64 %polly.indvar728.1, 1
  %exitcond849.1.not = icmp eq i64 %polly.indvar_next729.1, 32
  br i1 %exitcond849.1.not, label %polly.loop_header725.2, label %polly.loop_header725.1

polly.loop_header725.2:                           ; preds = %polly.loop_exit733.1, %polly.loop_exit733.2
  %polly.indvar728.2 = phi i64 [ %polly.indvar_next729.2, %polly.loop_exit733.2 ], [ 0, %polly.loop_exit733.1 ]
  %381 = mul nuw nsw i64 %polly.indvar728.2, 640
  %382 = trunc i64 %polly.indvar728.2 to i32
  %broadcast.splatinsert963 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat964 = shufflevector <4 x i32> %broadcast.splatinsert963, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body955

vector.body955:                                   ; preds = %vector.body955, %polly.loop_header725.2
  %index957 = phi i64 [ 0, %polly.loop_header725.2 ], [ %index.next958, %vector.body955 ]
  %vec.ind961 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2 ], [ %vec.ind.next962, %vector.body955 ]
  %383 = add nuw nsw <4 x i64> %vec.ind961, <i64 64, i64 64, i64 64, i64 64>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat964, %384
  %386 = add <4 x i32> %385, <i32 3, i32 3, i32 3, i32 3>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %381
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !93, !noalias !95
  %index.next958 = add i64 %index957, 4
  %vec.ind.next962 = add <4 x i64> %vec.ind961, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next958, 16
  br i1 %395, label %polly.loop_exit733.2, label %vector.body955, !llvm.loop !114

polly.loop_exit733.2:                             ; preds = %vector.body955
  %polly.indvar_next729.2 = add nuw nsw i64 %polly.indvar728.2, 1
  %exitcond849.2.not = icmp eq i64 %polly.indvar_next729.2, 32
  br i1 %exitcond849.2.not, label %polly.loop_header725.1882, label %polly.loop_header725.2

polly.loop_header725.1882:                        ; preds = %polly.loop_exit733.2, %polly.loop_exit733.1893
  %polly.indvar728.1881 = phi i64 [ %polly.indvar_next729.1891, %polly.loop_exit733.1893 ], [ 0, %polly.loop_exit733.2 ]
  %396 = add nuw nsw i64 %polly.indvar728.1881, 32
  %397 = mul nuw nsw i64 %396, 640
  %398 = trunc i64 %396 to i32
  %broadcast.splatinsert977 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat978 = shufflevector <4 x i32> %broadcast.splatinsert977, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %polly.loop_header725.1882
  %index969 = phi i64 [ 0, %polly.loop_header725.1882 ], [ %index.next970, %vector.body967 ]
  %vec.ind975 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.1882 ], [ %vec.ind.next976, %vector.body967 ]
  %399 = mul <4 x i32> %vec.ind975, %broadcast.splat978
  %400 = add <4 x i32> %399, <i32 3, i32 3, i32 3, i32 3>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = shl i64 %index969, 3
  %405 = add nuw nsw i64 %404, %397
  %406 = getelementptr i8, i8* %call, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %403, <4 x double>* %407, align 8, !alias.scope !93, !noalias !95
  %index.next970 = add i64 %index969, 4
  %vec.ind.next976 = add <4 x i32> %vec.ind975, <i32 4, i32 4, i32 4, i32 4>
  %408 = icmp eq i64 %index.next970, 32
  br i1 %408, label %polly.loop_exit733.1893, label %vector.body967, !llvm.loop !115

polly.loop_exit733.1893:                          ; preds = %vector.body967
  %polly.indvar_next729.1891 = add nuw nsw i64 %polly.indvar728.1881, 1
  %exitcond849.1892.not = icmp eq i64 %polly.indvar_next729.1891, 32
  br i1 %exitcond849.1892.not, label %polly.loop_header725.1.1, label %polly.loop_header725.1882

polly.loop_header725.1.1:                         ; preds = %polly.loop_exit733.1893, %polly.loop_exit733.1.1
  %polly.indvar728.1.1 = phi i64 [ %polly.indvar_next729.1.1, %polly.loop_exit733.1.1 ], [ 0, %polly.loop_exit733.1893 ]
  %409 = add nuw nsw i64 %polly.indvar728.1.1, 32
  %410 = mul nuw nsw i64 %409, 640
  %411 = trunc i64 %409 to i32
  %broadcast.splatinsert989 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat990 = shufflevector <4 x i32> %broadcast.splatinsert989, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %polly.loop_header725.1.1
  %index983 = phi i64 [ 0, %polly.loop_header725.1.1 ], [ %index.next984, %vector.body981 ]
  %vec.ind987 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.1 ], [ %vec.ind.next988, %vector.body981 ]
  %412 = add nuw nsw <4 x i64> %vec.ind987, <i64 32, i64 32, i64 32, i64 32>
  %413 = trunc <4 x i64> %412 to <4 x i32>
  %414 = mul <4 x i32> %broadcast.splat990, %413
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = extractelement <4 x i64> %412, i32 0
  %420 = shl i64 %419, 3
  %421 = add nuw nsw i64 %420, %410
  %422 = getelementptr i8, i8* %call, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %418, <4 x double>* %423, align 8, !alias.scope !93, !noalias !95
  %index.next984 = add i64 %index983, 4
  %vec.ind.next988 = add <4 x i64> %vec.ind987, <i64 4, i64 4, i64 4, i64 4>
  %424 = icmp eq i64 %index.next984, 32
  br i1 %424, label %polly.loop_exit733.1.1, label %vector.body981, !llvm.loop !116

polly.loop_exit733.1.1:                           ; preds = %vector.body981
  %polly.indvar_next729.1.1 = add nuw nsw i64 %polly.indvar728.1.1, 1
  %exitcond849.1.1.not = icmp eq i64 %polly.indvar_next729.1.1, 32
  br i1 %exitcond849.1.1.not, label %polly.loop_header725.2.1, label %polly.loop_header725.1.1

polly.loop_header725.2.1:                         ; preds = %polly.loop_exit733.1.1, %polly.loop_exit733.2.1
  %polly.indvar728.2.1 = phi i64 [ %polly.indvar_next729.2.1, %polly.loop_exit733.2.1 ], [ 0, %polly.loop_exit733.1.1 ]
  %425 = add nuw nsw i64 %polly.indvar728.2.1, 32
  %426 = mul nuw nsw i64 %425, 640
  %427 = trunc i64 %425 to i32
  %broadcast.splatinsert1001 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1002 = shufflevector <4 x i32> %broadcast.splatinsert1001, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body993

vector.body993:                                   ; preds = %vector.body993, %polly.loop_header725.2.1
  %index995 = phi i64 [ 0, %polly.loop_header725.2.1 ], [ %index.next996, %vector.body993 ]
  %vec.ind999 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2.1 ], [ %vec.ind.next1000, %vector.body993 ]
  %428 = add nuw nsw <4 x i64> %vec.ind999, <i64 64, i64 64, i64 64, i64 64>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1002, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !93, !noalias !95
  %index.next996 = add i64 %index995, 4
  %vec.ind.next1000 = add <4 x i64> %vec.ind999, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next996, 16
  br i1 %440, label %polly.loop_exit733.2.1, label %vector.body993, !llvm.loop !117

polly.loop_exit733.2.1:                           ; preds = %vector.body993
  %polly.indvar_next729.2.1 = add nuw nsw i64 %polly.indvar728.2.1, 1
  %exitcond849.2.1.not = icmp eq i64 %polly.indvar_next729.2.1, 32
  br i1 %exitcond849.2.1.not, label %polly.loop_header725.2896, label %polly.loop_header725.2.1

polly.loop_header725.2896:                        ; preds = %polly.loop_exit733.2.1, %polly.loop_exit733.2907
  %polly.indvar728.2895 = phi i64 [ %polly.indvar_next729.2905, %polly.loop_exit733.2907 ], [ 0, %polly.loop_exit733.2.1 ]
  %441 = add nuw nsw i64 %polly.indvar728.2895, 64
  %442 = mul nuw nsw i64 %441, 640
  %443 = trunc i64 %441 to i32
  %broadcast.splatinsert1015 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat1016 = shufflevector <4 x i32> %broadcast.splatinsert1015, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1005

vector.body1005:                                  ; preds = %vector.body1005, %polly.loop_header725.2896
  %index1007 = phi i64 [ 0, %polly.loop_header725.2896 ], [ %index.next1008, %vector.body1005 ]
  %vec.ind1013 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.2896 ], [ %vec.ind.next1014, %vector.body1005 ]
  %444 = mul <4 x i32> %vec.ind1013, %broadcast.splat1016
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = shl i64 %index1007, 3
  %450 = add nuw nsw i64 %449, %442
  %451 = getelementptr i8, i8* %call, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %448, <4 x double>* %452, align 8, !alias.scope !93, !noalias !95
  %index.next1008 = add i64 %index1007, 4
  %vec.ind.next1014 = add <4 x i32> %vec.ind1013, <i32 4, i32 4, i32 4, i32 4>
  %453 = icmp eq i64 %index.next1008, 32
  br i1 %453, label %polly.loop_exit733.2907, label %vector.body1005, !llvm.loop !118

polly.loop_exit733.2907:                          ; preds = %vector.body1005
  %polly.indvar_next729.2905 = add nuw nsw i64 %polly.indvar728.2895, 1
  %exitcond849.2906.not = icmp eq i64 %polly.indvar_next729.2905, 16
  br i1 %exitcond849.2906.not, label %polly.loop_header725.1.2, label %polly.loop_header725.2896

polly.loop_header725.1.2:                         ; preds = %polly.loop_exit733.2907, %polly.loop_exit733.1.2
  %polly.indvar728.1.2 = phi i64 [ %polly.indvar_next729.1.2, %polly.loop_exit733.1.2 ], [ 0, %polly.loop_exit733.2907 ]
  %454 = add nuw nsw i64 %polly.indvar728.1.2, 64
  %455 = mul nuw nsw i64 %454, 640
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1027 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1028 = shufflevector <4 x i32> %broadcast.splatinsert1027, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %polly.loop_header725.1.2
  %index1021 = phi i64 [ 0, %polly.loop_header725.1.2 ], [ %index.next1022, %vector.body1019 ]
  %vec.ind1025 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.2 ], [ %vec.ind.next1026, %vector.body1019 ]
  %457 = add nuw nsw <4 x i64> %vec.ind1025, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat1028, %458
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add nuw nsw i64 %465, %455
  %467 = getelementptr i8, i8* %call, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !93, !noalias !95
  %index.next1022 = add i64 %index1021, 4
  %vec.ind.next1026 = add <4 x i64> %vec.ind1025, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next1022, 32
  br i1 %469, label %polly.loop_exit733.1.2, label %vector.body1019, !llvm.loop !119

polly.loop_exit733.1.2:                           ; preds = %vector.body1019
  %polly.indvar_next729.1.2 = add nuw nsw i64 %polly.indvar728.1.2, 1
  %exitcond849.1.2.not = icmp eq i64 %polly.indvar_next729.1.2, 16
  br i1 %exitcond849.1.2.not, label %polly.loop_header725.2.2, label %polly.loop_header725.1.2

polly.loop_header725.2.2:                         ; preds = %polly.loop_exit733.1.2, %polly.loop_exit733.2.2
  %polly.indvar728.2.2 = phi i64 [ %polly.indvar_next729.2.2, %polly.loop_exit733.2.2 ], [ 0, %polly.loop_exit733.1.2 ]
  %470 = add nuw nsw i64 %polly.indvar728.2.2, 64
  %471 = mul nuw nsw i64 %470, 640
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1039 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1040 = shufflevector <4 x i32> %broadcast.splatinsert1039, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %polly.loop_header725.2.2
  %index1033 = phi i64 [ 0, %polly.loop_header725.2.2 ], [ %index.next1034, %vector.body1031 ]
  %vec.ind1037 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2.2 ], [ %vec.ind.next1038, %vector.body1031 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1037, <i64 64, i64 64, i64 64, i64 64>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1040, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !93, !noalias !95
  %index.next1034 = add i64 %index1033, 4
  %vec.ind.next1038 = add <4 x i64> %vec.ind1037, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1034, 16
  br i1 %485, label %polly.loop_exit733.2.2, label %vector.body1031, !llvm.loop !120

polly.loop_exit733.2.2:                           ; preds = %vector.body1031
  %polly.indvar_next729.2.2 = add nuw nsw i64 %polly.indvar728.2.2, 1
  %exitcond849.2.2.not = icmp eq i64 %polly.indvar_next729.2.2, 16
  br i1 %exitcond849.2.2.not, label %polly.loop_header752, label %polly.loop_header725.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 100}
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
