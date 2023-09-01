; ModuleID = 'syr2k_recreations//mmp_syr2k_S_89.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_89.c"
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting426
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
  br i1 %57, label %middle.block1217, label %vector.body1219, !llvm.loop !55

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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting262
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
  br i1 %68, label %middle.block1243, label %vector.body1245, !llvm.loop !57

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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

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
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond802.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond801.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 60
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2601, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond800.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit223 ], [ 80, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = shl nuw nsw i64 %polly.indvar218, 2
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, -4
  %exitcond799.not = icmp eq i64 %polly.indvar_next219, 20
  br i1 %exitcond799.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ %97, %polly.loop_header215 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 3)
  %98 = mul nuw nsw i64 %polly.indvar224, 480
  %scevgep251 = getelementptr i8, i8* %call1, i64 %98
  %99 = mul nuw nsw i64 %polly.indvar224, 640
  %scevgep255 = getelementptr i8, i8* %call, i64 %99
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond798.not = icmp eq i64 %indvars.iv.next, %indvars.iv796
  br i1 %exitcond798.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar230 = phi i64 [ 0, %polly.loop_header221 ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %100 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep239 = getelementptr i8, i8* %call1, i64 %100
  %scevgep252 = getelementptr i8, i8* %scevgep251, i64 %100
  %scevgep252253 = bitcast i8* %scevgep252 to double*
  %_p_scalar_254.pre = load double, double* %scevgep252253, align 8, !alias.scope !66, !noalias !73
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
  %101 = add nuw nsw i64 %polly.indvar236, %97
  %102 = mul nuw nsw i64 %101, 480
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %102
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %polly.access.add.Packed_MemRef_call2248 = add nuw nsw i64 %101, %polly.access.mul.Packed_MemRef_call2243
  %polly.access.Packed_MemRef_call2249 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2248
  %_p_scalar_250 = load double, double* %polly.access.Packed_MemRef_call2249, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_254.pre, %_p_scalar_250
  %103 = shl i64 %101, 3
  %scevgep256 = getelementptr i8, i8* %scevgep255, i64 %103
  %scevgep256257 = bitcast i8* %scevgep256 to double*
  %_p_scalar_258 = load double, double* %scevgep256257, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_258
  store double %p_add42.i118, double* %scevgep256257, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond.not = icmp eq i64 %polly.indvar236, %smin
  br i1 %exitcond.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start261:                                   ; preds = %kernel_syr2k.exit
  %malloccall263 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header347

polly.exiting262:                                 ; preds = %polly.loop_exit387
  tail call void @free(i8* nonnull %malloccall263)
  br label %kernel_syr2k.exit90

polly.loop_header347:                             ; preds = %polly.loop_exit355, %polly.start261
  %indvar1232 = phi i64 [ %indvar.next1233, %polly.loop_exit355 ], [ 0, %polly.start261 ]
  %polly.indvar350 = phi i64 [ %polly.indvar_next351, %polly.loop_exit355 ], [ 1, %polly.start261 ]
  %104 = add i64 %indvar1232, 1
  %105 = mul nuw nsw i64 %polly.indvar350, 640
  %scevgep359 = getelementptr i8, i8* %call, i64 %105
  %min.iters.check1234 = icmp ult i64 %104, 4
  br i1 %min.iters.check1234, label %polly.loop_header353.preheader, label %vector.ph1235

vector.ph1235:                                    ; preds = %polly.loop_header347
  %n.vec1237 = and i64 %104, -4
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1235
  %index1238 = phi i64 [ 0, %vector.ph1235 ], [ %index.next1239, %vector.body1231 ]
  %106 = shl nuw nsw i64 %index1238, 3
  %107 = getelementptr i8, i8* %scevgep359, i64 %106
  %108 = bitcast i8* %107 to <4 x double>*
  %wide.load1242 = load <4 x double>, <4 x double>* %108, align 8, !alias.scope !74, !noalias !76
  %109 = fmul fast <4 x double> %wide.load1242, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %110 = bitcast i8* %107 to <4 x double>*
  store <4 x double> %109, <4 x double>* %110, align 8, !alias.scope !74, !noalias !76
  %index.next1239 = add i64 %index1238, 4
  %111 = icmp eq i64 %index.next1239, %n.vec1237
  br i1 %111, label %middle.block1229, label %vector.body1231, !llvm.loop !80

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1241 = icmp eq i64 %104, %n.vec1237
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
  %112 = shl nuw nsw i64 %polly.indvar356, 3
  %scevgep360 = getelementptr i8, i8* %scevgep359, i64 %112
  %scevgep360361 = bitcast i8* %scevgep360 to double*
  %_p_scalar_362 = load double, double* %scevgep360361, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_362, 1.200000e+00
  store double %p_mul.i57, double* %scevgep360361, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next357 = add nuw nsw i64 %polly.indvar356, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next357, %polly.indvar350
  br i1 %exitcond815.not, label %polly.loop_exit355, label %polly.loop_header353, !llvm.loop !81

polly.loop_header363:                             ; preds = %polly.loop_header363.preheader, %polly.loop_exit371
  %polly.indvar366 = phi i64 [ %polly.indvar_next367, %polly.loop_exit371 ], [ 0, %polly.loop_header363.preheader ]
  %polly.access.mul.Packed_MemRef_call2264 = mul nuw nsw i64 %polly.indvar366, 80
  br label %polly.loop_header369

polly.loop_exit371:                               ; preds = %polly.loop_header369
  %polly.indvar_next367 = add nuw nsw i64 %polly.indvar366, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next367, 60
  br i1 %exitcond814.not, label %polly.loop_header379, label %polly.loop_header363

polly.loop_header369:                             ; preds = %polly.loop_header369, %polly.loop_header363
  %polly.indvar372 = phi i64 [ 0, %polly.loop_header363 ], [ %polly.indvar_next373, %polly.loop_header369 ]
  %polly.access.mul.call2376 = mul nuw nsw i64 %polly.indvar372, 60
  %polly.access.add.call2377 = add nuw nsw i64 %polly.access.mul.call2376, %polly.indvar366
  %polly.access.call2378 = getelementptr double, double* %polly.access.cast.call2601, i64 %polly.access.add.call2377
  %polly.access.call2378.load = load double, double* %polly.access.call2378, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2264 = add nuw nsw i64 %polly.indvar372, %polly.access.mul.Packed_MemRef_call2264
  %polly.access.Packed_MemRef_call2264 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264
  store double %polly.access.call2378.load, double* %polly.access.Packed_MemRef_call2264, align 8
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next373, 80
  br i1 %exitcond813.not, label %polly.loop_exit371, label %polly.loop_header369

polly.loop_header379:                             ; preds = %polly.loop_exit371, %polly.loop_exit387
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit387 ], [ 80, %polly.loop_exit371 ]
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_exit387 ], [ 0, %polly.loop_exit371 ]
  %113 = shl nuw nsw i64 %polly.indvar382, 2
  br label %polly.loop_header385

polly.loop_exit387:                               ; preds = %polly.loop_exit393
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, -4
  %exitcond812.not = icmp eq i64 %polly.indvar_next383, 20
  br i1 %exitcond812.not, label %polly.exiting262, label %polly.loop_header379

polly.loop_header385:                             ; preds = %polly.loop_exit393, %polly.loop_header379
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit393 ], [ 0, %polly.loop_header379 ]
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_exit393 ], [ %113, %polly.loop_header379 ]
  %smin806 = call i64 @llvm.smin.i64(i64 %indvars.iv804, i64 3)
  %114 = mul nuw nsw i64 %polly.indvar388, 480
  %scevgep415 = getelementptr i8, i8* %call1, i64 %114
  %115 = mul nuw nsw i64 %polly.indvar388, 640
  %scevgep419 = getelementptr i8, i8* %call, i64 %115
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit399
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next805 = add nuw nsw i64 %indvars.iv804, 1
  %exitcond811.not = icmp eq i64 %indvars.iv.next805, %indvars.iv809
  br i1 %exitcond811.not, label %polly.loop_exit387, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit399, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit399 ]
  %116 = shl nuw nsw i64 %polly.indvar394, 3
  %scevgep403 = getelementptr i8, i8* %call1, i64 %116
  %scevgep416 = getelementptr i8, i8* %scevgep415, i64 %116
  %scevgep416417 = bitcast i8* %scevgep416 to double*
  %_p_scalar_418.pre = load double, double* %scevgep416417, align 8, !alias.scope !77, !noalias !83
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
  %117 = add nuw nsw i64 %polly.indvar400, %113
  %118 = mul nuw nsw i64 %117, 480
  %scevgep404 = getelementptr i8, i8* %scevgep403, i64 %118
  %scevgep404405 = bitcast i8* %scevgep404 to double*
  %_p_scalar_406 = load double, double* %scevgep404405, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73 = fmul fast double %_p_scalar_410, %_p_scalar_406
  %polly.access.add.Packed_MemRef_call2264412 = add nuw nsw i64 %117, %polly.access.mul.Packed_MemRef_call2264407
  %polly.access.Packed_MemRef_call2264413 = getelementptr double, double* %Packed_MemRef_call2264, i64 %polly.access.add.Packed_MemRef_call2264412
  %_p_scalar_414 = load double, double* %polly.access.Packed_MemRef_call2264413, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_418.pre, %_p_scalar_414
  %119 = shl i64 %117, 3
  %scevgep420 = getelementptr i8, i8* %scevgep419, i64 %119
  %scevgep420421 = bitcast i8* %scevgep420 to double*
  %_p_scalar_422 = load double, double* %scevgep420421, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_422
  store double %p_add42.i79, double* %scevgep420421, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %exitcond807.not = icmp eq i64 %polly.indvar400, %smin806
  br i1 %exitcond807.not, label %polly.loop_exit399, label %polly.loop_header397

polly.start425:                                   ; preds = %init_array.exit
  %malloccall427 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header511

polly.exiting426:                                 ; preds = %polly.loop_exit551
  tail call void @free(i8* nonnull %malloccall427)
  br label %kernel_syr2k.exit

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.start425
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit519 ], [ 0, %polly.start425 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 1, %polly.start425 ]
  %120 = add i64 %indvar, 1
  %121 = mul nuw nsw i64 %polly.indvar514, 640
  %scevgep523 = getelementptr i8, i8* %call, i64 %121
  %min.iters.check1208 = icmp ult i64 %120, 4
  br i1 %min.iters.check1208, label %polly.loop_header517.preheader, label %vector.ph1209

vector.ph1209:                                    ; preds = %polly.loop_header511
  %n.vec1211 = and i64 %120, -4
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %vector.ph1209
  %index1212 = phi i64 [ 0, %vector.ph1209 ], [ %index.next1213, %vector.body1207 ]
  %122 = shl nuw nsw i64 %index1212, 3
  %123 = getelementptr i8, i8* %scevgep523, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1216 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !84, !noalias !86
  %125 = fmul fast <4 x double> %wide.load1216, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %126 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !84, !noalias !86
  %index.next1213 = add i64 %index1212, 4
  %127 = icmp eq i64 %index.next1213, %n.vec1211
  br i1 %127, label %middle.block1205, label %vector.body1207, !llvm.loop !90

middle.block1205:                                 ; preds = %vector.body1207
  %cmp.n1215 = icmp eq i64 %120, %n.vec1211
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
  %128 = shl nuw nsw i64 %polly.indvar520, 3
  %scevgep524 = getelementptr i8, i8* %scevgep523, i64 %128
  %scevgep524525 = bitcast i8* %scevgep524 to double*
  %_p_scalar_526 = load double, double* %scevgep524525, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_526, 1.200000e+00
  store double %p_mul.i, double* %scevgep524525, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next521, %polly.indvar514
  br i1 %exitcond828.not, label %polly.loop_exit519, label %polly.loop_header517, !llvm.loop !91

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_exit535
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit535 ], [ 0, %polly.loop_header527.preheader ]
  %polly.access.mul.Packed_MemRef_call2428 = mul nuw nsw i64 %polly.indvar530, 80
  br label %polly.loop_header533

polly.loop_exit535:                               ; preds = %polly.loop_header533
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next531, 60
  br i1 %exitcond827.not, label %polly.loop_header543, label %polly.loop_header527

polly.loop_header533:                             ; preds = %polly.loop_header533, %polly.loop_header527
  %polly.indvar536 = phi i64 [ 0, %polly.loop_header527 ], [ %polly.indvar_next537, %polly.loop_header533 ]
  %polly.access.mul.call2540 = mul nuw nsw i64 %polly.indvar536, 60
  %polly.access.add.call2541 = add nuw nsw i64 %polly.access.mul.call2540, %polly.indvar530
  %polly.access.call2542 = getelementptr double, double* %polly.access.cast.call2601, i64 %polly.access.add.call2541
  %polly.access.call2542.load = load double, double* %polly.access.call2542, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2428 = add nuw nsw i64 %polly.indvar536, %polly.access.mul.Packed_MemRef_call2428
  %polly.access.Packed_MemRef_call2428 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428
  store double %polly.access.call2542.load, double* %polly.access.Packed_MemRef_call2428, align 8
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next537, 80
  br i1 %exitcond826.not, label %polly.loop_exit535, label %polly.loop_header533

polly.loop_header543:                             ; preds = %polly.loop_exit535, %polly.loop_exit551
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit551 ], [ 80, %polly.loop_exit535 ]
  %polly.indvar546 = phi i64 [ %polly.indvar_next547, %polly.loop_exit551 ], [ 0, %polly.loop_exit535 ]
  %129 = shl nuw nsw i64 %polly.indvar546, 2
  br label %polly.loop_header549

polly.loop_exit551:                               ; preds = %polly.loop_exit557
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %indvars.iv.next823 = add nsw i64 %indvars.iv822, -4
  %exitcond825.not = icmp eq i64 %polly.indvar_next547, 20
  br i1 %exitcond825.not, label %polly.exiting426, label %polly.loop_header543

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.loop_header543
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %polly.loop_exit557 ], [ 0, %polly.loop_header543 ]
  %polly.indvar552 = phi i64 [ %polly.indvar_next553, %polly.loop_exit557 ], [ %129, %polly.loop_header543 ]
  %smin819 = call i64 @llvm.smin.i64(i64 %indvars.iv817, i64 3)
  %130 = mul nuw nsw i64 %polly.indvar552, 480
  %scevgep579 = getelementptr i8, i8* %call1, i64 %130
  %131 = mul nuw nsw i64 %polly.indvar552, 640
  %scevgep583 = getelementptr i8, i8* %call, i64 %131
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_exit563
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %indvars.iv.next818 = add nuw nsw i64 %indvars.iv817, 1
  %exitcond824.not = icmp eq i64 %indvars.iv.next818, %indvars.iv822
  br i1 %exitcond824.not, label %polly.loop_exit551, label %polly.loop_header549

polly.loop_header555:                             ; preds = %polly.loop_exit563, %polly.loop_header549
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header549 ], [ %polly.indvar_next559, %polly.loop_exit563 ]
  %132 = shl nuw nsw i64 %polly.indvar558, 3
  %scevgep567 = getelementptr i8, i8* %call1, i64 %132
  %scevgep580 = getelementptr i8, i8* %scevgep579, i64 %132
  %scevgep580581 = bitcast i8* %scevgep580 to double*
  %_p_scalar_582.pre = load double, double* %scevgep580581, align 8, !alias.scope !87, !noalias !93
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
  %133 = add nuw nsw i64 %polly.indvar564, %129
  %134 = mul nuw nsw i64 %133, 480
  %scevgep568 = getelementptr i8, i8* %scevgep567, i64 %134
  %scevgep568569 = bitcast i8* %scevgep568 to double*
  %_p_scalar_570 = load double, double* %scevgep568569, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i = fmul fast double %_p_scalar_574, %_p_scalar_570
  %polly.access.add.Packed_MemRef_call2428576 = add nuw nsw i64 %133, %polly.access.mul.Packed_MemRef_call2428571
  %polly.access.Packed_MemRef_call2428577 = getelementptr double, double* %Packed_MemRef_call2428, i64 %polly.access.add.Packed_MemRef_call2428576
  %_p_scalar_578 = load double, double* %polly.access.Packed_MemRef_call2428577, align 8
  %p_mul37.i = fmul fast double %_p_scalar_582.pre, %_p_scalar_578
  %135 = shl i64 %133, 3
  %scevgep584 = getelementptr i8, i8* %scevgep583, i64 %135
  %scevgep584585 = bitcast i8* %scevgep584 to double*
  %_p_scalar_586 = load double, double* %scevgep584585, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_586
  store double %p_add42.i, double* %scevgep584585, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %exitcond820.not = icmp eq i64 %polly.indvar564, %smin819
  br i1 %exitcond820.not, label %polly.loop_exit563, label %polly.loop_header561

polly.loop_header725:                             ; preds = %entry, %polly.loop_exit733
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_exit733 ], [ 0, %entry ]
  %136 = mul nuw nsw i64 %polly.indvar728, 640
  %137 = trunc i64 %polly.indvar728 to i32
  %broadcast.splatinsert939 = insertelement <4 x i32> poison, i32 %137, i32 0
  %broadcast.splat940 = shufflevector <4 x i32> %broadcast.splatinsert939, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body929

vector.body929:                                   ; preds = %vector.body929, %polly.loop_header725
  %index931 = phi i64 [ 0, %polly.loop_header725 ], [ %index.next932, %vector.body929 ]
  %vec.ind937 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725 ], [ %vec.ind.next938, %vector.body929 ]
  %138 = mul <4 x i32> %vec.ind937, %broadcast.splat940
  %139 = add <4 x i32> %138, <i32 3, i32 3, i32 3, i32 3>
  %140 = urem <4 x i32> %139, <i32 80, i32 80, i32 80, i32 80>
  %141 = sitofp <4 x i32> %140 to <4 x double>
  %142 = fmul fast <4 x double> %141, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %143 = shl i64 %index931, 3
  %144 = add nuw nsw i64 %143, %136
  %145 = getelementptr i8, i8* %call, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %142, <4 x double>* %146, align 8, !alias.scope !94, !noalias !96
  %index.next932 = add i64 %index931, 4
  %vec.ind.next938 = add <4 x i32> %vec.ind937, <i32 4, i32 4, i32 4, i32 4>
  %147 = icmp eq i64 %index.next932, 32
  br i1 %147, label %polly.loop_exit733, label %vector.body929, !llvm.loop !99

polly.loop_exit733:                               ; preds = %vector.body929
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next729, 32
  br i1 %exitcond849.not, label %polly.loop_header725.1, label %polly.loop_header725

polly.loop_header752:                             ; preds = %polly.loop_exit733.2.2, %polly.loop_exit760
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %polly.loop_exit733.2.2 ]
  %148 = mul nuw nsw i64 %polly.indvar755, 480
  %149 = trunc i64 %polly.indvar755 to i32
  %broadcast.splatinsert1053 = insertelement <4 x i32> poison, i32 %149, i32 0
  %broadcast.splat1054 = shufflevector <4 x i32> %broadcast.splatinsert1053, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %polly.loop_header752
  %index1045 = phi i64 [ 0, %polly.loop_header752 ], [ %index.next1046, %vector.body1043 ]
  %vec.ind1051 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752 ], [ %vec.ind.next1052, %vector.body1043 ]
  %150 = mul <4 x i32> %vec.ind1051, %broadcast.splat1054
  %151 = add <4 x i32> %150, <i32 2, i32 2, i32 2, i32 2>
  %152 = urem <4 x i32> %151, <i32 60, i32 60, i32 60, i32 60>
  %153 = sitofp <4 x i32> %152 to <4 x double>
  %154 = fmul fast <4 x double> %153, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %155 = shl i64 %index1045, 3
  %156 = add i64 %155, %148
  %157 = getelementptr i8, i8* %call2, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %154, <4 x double>* %158, align 8, !alias.scope !98, !noalias !100
  %index.next1046 = add i64 %index1045, 4
  %vec.ind.next1052 = add <4 x i32> %vec.ind1051, <i32 4, i32 4, i32 4, i32 4>
  %159 = icmp eq i64 %index.next1046, 32
  br i1 %159, label %polly.loop_exit760, label %vector.body1043, !llvm.loop !101

polly.loop_exit760:                               ; preds = %vector.body1043
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next756, 32
  br i1 %exitcond840.not, label %polly.loop_header752.1, label %polly.loop_header752

polly.loop_header778:                             ; preds = %polly.loop_exit760.1.2, %polly.loop_exit786
  %polly.indvar781 = phi i64 [ %polly.indvar_next782, %polly.loop_exit786 ], [ 0, %polly.loop_exit760.1.2 ]
  %160 = mul nuw nsw i64 %polly.indvar781, 480
  %161 = trunc i64 %polly.indvar781 to i32
  %broadcast.splatinsert1131 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat1132 = shufflevector <4 x i32> %broadcast.splatinsert1131, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_header778
  %index1123 = phi i64 [ 0, %polly.loop_header778 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1129 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778 ], [ %vec.ind.next1130, %vector.body1121 ]
  %162 = mul <4 x i32> %vec.ind1129, %broadcast.splat1132
  %163 = add <4 x i32> %162, <i32 1, i32 1, i32 1, i32 1>
  %164 = urem <4 x i32> %163, <i32 80, i32 80, i32 80, i32 80>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %167 = shl i64 %index1123, 3
  %168 = add i64 %167, %160
  %169 = getelementptr i8, i8* %call1, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !97, !noalias !102
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1130 = add <4 x i32> %vec.ind1129, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next1124, 32
  br i1 %171, label %polly.loop_exit786, label %vector.body1121, !llvm.loop !103

polly.loop_exit786:                               ; preds = %vector.body1121
  %polly.indvar_next782 = add nuw nsw i64 %polly.indvar781, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next782, 32
  br i1 %exitcond834.not, label %polly.loop_header778.1, label %polly.loop_header778

polly.loop_header778.1:                           ; preds = %polly.loop_exit786, %polly.loop_exit786.1
  %polly.indvar781.1 = phi i64 [ %polly.indvar_next782.1, %polly.loop_exit786.1 ], [ 0, %polly.loop_exit786 ]
  %172 = mul nuw nsw i64 %polly.indvar781.1, 480
  %173 = trunc i64 %polly.indvar781.1 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %polly.loop_header778.1
  %index1137 = phi i64 [ 0, %polly.loop_header778.1 ], [ %index.next1138, %vector.body1135 ]
  %vec.ind1141 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1 ], [ %vec.ind.next1142, %vector.body1135 ]
  %174 = add nuw nsw <4 x i64> %vec.ind1141, <i64 32, i64 32, i64 32, i64 32>
  %175 = trunc <4 x i64> %174 to <4 x i32>
  %176 = mul <4 x i32> %broadcast.splat1144, %175
  %177 = add <4 x i32> %176, <i32 1, i32 1, i32 1, i32 1>
  %178 = urem <4 x i32> %177, <i32 80, i32 80, i32 80, i32 80>
  %179 = sitofp <4 x i32> %178 to <4 x double>
  %180 = fmul fast <4 x double> %179, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %181 = extractelement <4 x i64> %174, i32 0
  %182 = shl i64 %181, 3
  %183 = add i64 %182, %172
  %184 = getelementptr i8, i8* %call1, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %180, <4 x double>* %185, align 8, !alias.scope !97, !noalias !102
  %index.next1138 = add i64 %index1137, 4
  %vec.ind.next1142 = add <4 x i64> %vec.ind1141, <i64 4, i64 4, i64 4, i64 4>
  %186 = icmp eq i64 %index.next1138, 28
  br i1 %186, label %polly.loop_exit786.1, label %vector.body1135, !llvm.loop !104

polly.loop_exit786.1:                             ; preds = %vector.body1135
  %polly.indvar_next782.1 = add nuw nsw i64 %polly.indvar781.1, 1
  %exitcond834.1.not = icmp eq i64 %polly.indvar_next782.1, 32
  br i1 %exitcond834.1.not, label %polly.loop_header778.1854, label %polly.loop_header778.1

polly.loop_header778.1854:                        ; preds = %polly.loop_exit786.1, %polly.loop_exit786.1865
  %polly.indvar781.1853 = phi i64 [ %polly.indvar_next782.1863, %polly.loop_exit786.1865 ], [ 0, %polly.loop_exit786.1 ]
  %187 = add nuw nsw i64 %polly.indvar781.1853, 32
  %188 = mul nuw nsw i64 %187, 480
  %189 = trunc i64 %187 to i32
  %broadcast.splatinsert1157 = insertelement <4 x i32> poison, i32 %189, i32 0
  %broadcast.splat1158 = shufflevector <4 x i32> %broadcast.splatinsert1157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header778.1854
  %index1149 = phi i64 [ 0, %polly.loop_header778.1854 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1155 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.1854 ], [ %vec.ind.next1156, %vector.body1147 ]
  %190 = mul <4 x i32> %vec.ind1155, %broadcast.splat1158
  %191 = add <4 x i32> %190, <i32 1, i32 1, i32 1, i32 1>
  %192 = urem <4 x i32> %191, <i32 80, i32 80, i32 80, i32 80>
  %193 = sitofp <4 x i32> %192 to <4 x double>
  %194 = fmul fast <4 x double> %193, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %195 = shl i64 %index1149, 3
  %196 = add i64 %195, %188
  %197 = getelementptr i8, i8* %call1, i64 %196
  %198 = bitcast i8* %197 to <4 x double>*
  store <4 x double> %194, <4 x double>* %198, align 8, !alias.scope !97, !noalias !102
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1156 = add <4 x i32> %vec.ind1155, <i32 4, i32 4, i32 4, i32 4>
  %199 = icmp eq i64 %index.next1150, 32
  br i1 %199, label %polly.loop_exit786.1865, label %vector.body1147, !llvm.loop !105

polly.loop_exit786.1865:                          ; preds = %vector.body1147
  %polly.indvar_next782.1863 = add nuw nsw i64 %polly.indvar781.1853, 1
  %exitcond834.1864.not = icmp eq i64 %polly.indvar_next782.1863, 32
  br i1 %exitcond834.1864.not, label %polly.loop_header778.1.1, label %polly.loop_header778.1854

polly.loop_header778.1.1:                         ; preds = %polly.loop_exit786.1865, %polly.loop_exit786.1.1
  %polly.indvar781.1.1 = phi i64 [ %polly.indvar_next782.1.1, %polly.loop_exit786.1.1 ], [ 0, %polly.loop_exit786.1865 ]
  %200 = add nuw nsw i64 %polly.indvar781.1.1, 32
  %201 = mul nuw nsw i64 %200, 480
  %202 = trunc i64 %200 to i32
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %202, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %polly.loop_header778.1.1
  %index1163 = phi i64 [ 0, %polly.loop_header778.1.1 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1167 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.1 ], [ %vec.ind.next1168, %vector.body1161 ]
  %203 = add nuw nsw <4 x i64> %vec.ind1167, <i64 32, i64 32, i64 32, i64 32>
  %204 = trunc <4 x i64> %203 to <4 x i32>
  %205 = mul <4 x i32> %broadcast.splat1170, %204
  %206 = add <4 x i32> %205, <i32 1, i32 1, i32 1, i32 1>
  %207 = urem <4 x i32> %206, <i32 80, i32 80, i32 80, i32 80>
  %208 = sitofp <4 x i32> %207 to <4 x double>
  %209 = fmul fast <4 x double> %208, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %210 = extractelement <4 x i64> %203, i32 0
  %211 = shl i64 %210, 3
  %212 = add i64 %211, %201
  %213 = getelementptr i8, i8* %call1, i64 %212
  %214 = bitcast i8* %213 to <4 x double>*
  store <4 x double> %209, <4 x double>* %214, align 8, !alias.scope !97, !noalias !102
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1168 = add <4 x i64> %vec.ind1167, <i64 4, i64 4, i64 4, i64 4>
  %215 = icmp eq i64 %index.next1164, 28
  br i1 %215, label %polly.loop_exit786.1.1, label %vector.body1161, !llvm.loop !106

polly.loop_exit786.1.1:                           ; preds = %vector.body1161
  %polly.indvar_next782.1.1 = add nuw nsw i64 %polly.indvar781.1.1, 1
  %exitcond834.1.1.not = icmp eq i64 %polly.indvar_next782.1.1, 32
  br i1 %exitcond834.1.1.not, label %polly.loop_header778.2, label %polly.loop_header778.1.1

polly.loop_header778.2:                           ; preds = %polly.loop_exit786.1.1, %polly.loop_exit786.2
  %polly.indvar781.2 = phi i64 [ %polly.indvar_next782.2, %polly.loop_exit786.2 ], [ 0, %polly.loop_exit786.1.1 ]
  %216 = add nuw nsw i64 %polly.indvar781.2, 64
  %217 = mul nuw nsw i64 %216, 480
  %218 = trunc i64 %216 to i32
  %broadcast.splatinsert1183 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1184 = shufflevector <4 x i32> %broadcast.splatinsert1183, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %polly.loop_header778.2
  %index1175 = phi i64 [ 0, %polly.loop_header778.2 ], [ %index.next1176, %vector.body1173 ]
  %vec.ind1181 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.2 ], [ %vec.ind.next1182, %vector.body1173 ]
  %219 = mul <4 x i32> %vec.ind1181, %broadcast.splat1184
  %220 = add <4 x i32> %219, <i32 1, i32 1, i32 1, i32 1>
  %221 = urem <4 x i32> %220, <i32 80, i32 80, i32 80, i32 80>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %224 = shl i64 %index1175, 3
  %225 = add i64 %224, %217
  %226 = getelementptr i8, i8* %call1, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %223, <4 x double>* %227, align 8, !alias.scope !97, !noalias !102
  %index.next1176 = add i64 %index1175, 4
  %vec.ind.next1182 = add <4 x i32> %vec.ind1181, <i32 4, i32 4, i32 4, i32 4>
  %228 = icmp eq i64 %index.next1176, 32
  br i1 %228, label %polly.loop_exit786.2, label %vector.body1173, !llvm.loop !107

polly.loop_exit786.2:                             ; preds = %vector.body1173
  %polly.indvar_next782.2 = add nuw nsw i64 %polly.indvar781.2, 1
  %exitcond834.2.not = icmp eq i64 %polly.indvar_next782.2, 16
  br i1 %exitcond834.2.not, label %polly.loop_header778.1.2, label %polly.loop_header778.2

polly.loop_header778.1.2:                         ; preds = %polly.loop_exit786.2, %polly.loop_exit786.1.2
  %polly.indvar781.1.2 = phi i64 [ %polly.indvar_next782.1.2, %polly.loop_exit786.1.2 ], [ 0, %polly.loop_exit786.2 ]
  %229 = add nuw nsw i64 %polly.indvar781.1.2, 64
  %230 = mul nuw nsw i64 %229, 480
  %231 = trunc i64 %229 to i32
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %231, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %polly.loop_header778.1.2
  %index1189 = phi i64 [ 0, %polly.loop_header778.1.2 ], [ %index.next1190, %vector.body1187 ]
  %vec.ind1193 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.2 ], [ %vec.ind.next1194, %vector.body1187 ]
  %232 = add nuw nsw <4 x i64> %vec.ind1193, <i64 32, i64 32, i64 32, i64 32>
  %233 = trunc <4 x i64> %232 to <4 x i32>
  %234 = mul <4 x i32> %broadcast.splat1196, %233
  %235 = add <4 x i32> %234, <i32 1, i32 1, i32 1, i32 1>
  %236 = urem <4 x i32> %235, <i32 80, i32 80, i32 80, i32 80>
  %237 = sitofp <4 x i32> %236 to <4 x double>
  %238 = fmul fast <4 x double> %237, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %239 = extractelement <4 x i64> %232, i32 0
  %240 = shl i64 %239, 3
  %241 = add i64 %240, %230
  %242 = getelementptr i8, i8* %call1, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %238, <4 x double>* %243, align 8, !alias.scope !97, !noalias !102
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %244 = icmp eq i64 %index.next1190, 28
  br i1 %244, label %polly.loop_exit786.1.2, label %vector.body1187, !llvm.loop !108

polly.loop_exit786.1.2:                           ; preds = %vector.body1187
  %polly.indvar_next782.1.2 = add nuw nsw i64 %polly.indvar781.1.2, 1
  %exitcond834.1.2.not = icmp eq i64 %polly.indvar_next782.1.2, 16
  br i1 %exitcond834.1.2.not, label %init_array.exit, label %polly.loop_header778.1.2

polly.loop_header752.1:                           ; preds = %polly.loop_exit760, %polly.loop_exit760.1
  %polly.indvar755.1 = phi i64 [ %polly.indvar_next756.1, %polly.loop_exit760.1 ], [ 0, %polly.loop_exit760 ]
  %245 = mul nuw nsw i64 %polly.indvar755.1, 480
  %246 = trunc i64 %polly.indvar755.1 to i32
  %broadcast.splatinsert1065 = insertelement <4 x i32> poison, i32 %246, i32 0
  %broadcast.splat1066 = shufflevector <4 x i32> %broadcast.splatinsert1065, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %polly.loop_header752.1
  %index1059 = phi i64 [ 0, %polly.loop_header752.1 ], [ %index.next1060, %vector.body1057 ]
  %vec.ind1063 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1 ], [ %vec.ind.next1064, %vector.body1057 ]
  %247 = add nuw nsw <4 x i64> %vec.ind1063, <i64 32, i64 32, i64 32, i64 32>
  %248 = trunc <4 x i64> %247 to <4 x i32>
  %249 = mul <4 x i32> %broadcast.splat1066, %248
  %250 = add <4 x i32> %249, <i32 2, i32 2, i32 2, i32 2>
  %251 = urem <4 x i32> %250, <i32 60, i32 60, i32 60, i32 60>
  %252 = sitofp <4 x i32> %251 to <4 x double>
  %253 = fmul fast <4 x double> %252, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %254 = extractelement <4 x i64> %247, i32 0
  %255 = shl i64 %254, 3
  %256 = add i64 %255, %245
  %257 = getelementptr i8, i8* %call2, i64 %256
  %258 = bitcast i8* %257 to <4 x double>*
  store <4 x double> %253, <4 x double>* %258, align 8, !alias.scope !98, !noalias !100
  %index.next1060 = add i64 %index1059, 4
  %vec.ind.next1064 = add <4 x i64> %vec.ind1063, <i64 4, i64 4, i64 4, i64 4>
  %259 = icmp eq i64 %index.next1060, 28
  br i1 %259, label %polly.loop_exit760.1, label %vector.body1057, !llvm.loop !109

polly.loop_exit760.1:                             ; preds = %vector.body1057
  %polly.indvar_next756.1 = add nuw nsw i64 %polly.indvar755.1, 1
  %exitcond840.1.not = icmp eq i64 %polly.indvar_next756.1, 32
  br i1 %exitcond840.1.not, label %polly.loop_header752.1868, label %polly.loop_header752.1

polly.loop_header752.1868:                        ; preds = %polly.loop_exit760.1, %polly.loop_exit760.1879
  %polly.indvar755.1867 = phi i64 [ %polly.indvar_next756.1877, %polly.loop_exit760.1879 ], [ 0, %polly.loop_exit760.1 ]
  %260 = add nuw nsw i64 %polly.indvar755.1867, 32
  %261 = mul nuw nsw i64 %260, 480
  %262 = trunc i64 %260 to i32
  %broadcast.splatinsert1079 = insertelement <4 x i32> poison, i32 %262, i32 0
  %broadcast.splat1080 = shufflevector <4 x i32> %broadcast.splatinsert1079, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %polly.loop_header752.1868
  %index1071 = phi i64 [ 0, %polly.loop_header752.1868 ], [ %index.next1072, %vector.body1069 ]
  %vec.ind1077 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.1868 ], [ %vec.ind.next1078, %vector.body1069 ]
  %263 = mul <4 x i32> %vec.ind1077, %broadcast.splat1080
  %264 = add <4 x i32> %263, <i32 2, i32 2, i32 2, i32 2>
  %265 = urem <4 x i32> %264, <i32 60, i32 60, i32 60, i32 60>
  %266 = sitofp <4 x i32> %265 to <4 x double>
  %267 = fmul fast <4 x double> %266, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %268 = shl i64 %index1071, 3
  %269 = add i64 %268, %261
  %270 = getelementptr i8, i8* %call2, i64 %269
  %271 = bitcast i8* %270 to <4 x double>*
  store <4 x double> %267, <4 x double>* %271, align 8, !alias.scope !98, !noalias !100
  %index.next1072 = add i64 %index1071, 4
  %vec.ind.next1078 = add <4 x i32> %vec.ind1077, <i32 4, i32 4, i32 4, i32 4>
  %272 = icmp eq i64 %index.next1072, 32
  br i1 %272, label %polly.loop_exit760.1879, label %vector.body1069, !llvm.loop !110

polly.loop_exit760.1879:                          ; preds = %vector.body1069
  %polly.indvar_next756.1877 = add nuw nsw i64 %polly.indvar755.1867, 1
  %exitcond840.1878.not = icmp eq i64 %polly.indvar_next756.1877, 32
  br i1 %exitcond840.1878.not, label %polly.loop_header752.1.1, label %polly.loop_header752.1868

polly.loop_header752.1.1:                         ; preds = %polly.loop_exit760.1879, %polly.loop_exit760.1.1
  %polly.indvar755.1.1 = phi i64 [ %polly.indvar_next756.1.1, %polly.loop_exit760.1.1 ], [ 0, %polly.loop_exit760.1879 ]
  %273 = add nuw nsw i64 %polly.indvar755.1.1, 32
  %274 = mul nuw nsw i64 %273, 480
  %275 = trunc i64 %273 to i32
  %broadcast.splatinsert1091 = insertelement <4 x i32> poison, i32 %275, i32 0
  %broadcast.splat1092 = shufflevector <4 x i32> %broadcast.splatinsert1091, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %polly.loop_header752.1.1
  %index1085 = phi i64 [ 0, %polly.loop_header752.1.1 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1089 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.1 ], [ %vec.ind.next1090, %vector.body1083 ]
  %276 = add nuw nsw <4 x i64> %vec.ind1089, <i64 32, i64 32, i64 32, i64 32>
  %277 = trunc <4 x i64> %276 to <4 x i32>
  %278 = mul <4 x i32> %broadcast.splat1092, %277
  %279 = add <4 x i32> %278, <i32 2, i32 2, i32 2, i32 2>
  %280 = urem <4 x i32> %279, <i32 60, i32 60, i32 60, i32 60>
  %281 = sitofp <4 x i32> %280 to <4 x double>
  %282 = fmul fast <4 x double> %281, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %283 = extractelement <4 x i64> %276, i32 0
  %284 = shl i64 %283, 3
  %285 = add i64 %284, %274
  %286 = getelementptr i8, i8* %call2, i64 %285
  %287 = bitcast i8* %286 to <4 x double>*
  store <4 x double> %282, <4 x double>* %287, align 8, !alias.scope !98, !noalias !100
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1090 = add <4 x i64> %vec.ind1089, <i64 4, i64 4, i64 4, i64 4>
  %288 = icmp eq i64 %index.next1086, 28
  br i1 %288, label %polly.loop_exit760.1.1, label %vector.body1083, !llvm.loop !111

polly.loop_exit760.1.1:                           ; preds = %vector.body1083
  %polly.indvar_next756.1.1 = add nuw nsw i64 %polly.indvar755.1.1, 1
  %exitcond840.1.1.not = icmp eq i64 %polly.indvar_next756.1.1, 32
  br i1 %exitcond840.1.1.not, label %polly.loop_header752.2, label %polly.loop_header752.1.1

polly.loop_header752.2:                           ; preds = %polly.loop_exit760.1.1, %polly.loop_exit760.2
  %polly.indvar755.2 = phi i64 [ %polly.indvar_next756.2, %polly.loop_exit760.2 ], [ 0, %polly.loop_exit760.1.1 ]
  %289 = add nuw nsw i64 %polly.indvar755.2, 64
  %290 = mul nuw nsw i64 %289, 480
  %291 = trunc i64 %289 to i32
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %polly.loop_header752.2
  %index1097 = phi i64 [ 0, %polly.loop_header752.2 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1103 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.2 ], [ %vec.ind.next1104, %vector.body1095 ]
  %292 = mul <4 x i32> %vec.ind1103, %broadcast.splat1106
  %293 = add <4 x i32> %292, <i32 2, i32 2, i32 2, i32 2>
  %294 = urem <4 x i32> %293, <i32 60, i32 60, i32 60, i32 60>
  %295 = sitofp <4 x i32> %294 to <4 x double>
  %296 = fmul fast <4 x double> %295, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %297 = shl i64 %index1097, 3
  %298 = add i64 %297, %290
  %299 = getelementptr i8, i8* %call2, i64 %298
  %300 = bitcast i8* %299 to <4 x double>*
  store <4 x double> %296, <4 x double>* %300, align 8, !alias.scope !98, !noalias !100
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1104 = add <4 x i32> %vec.ind1103, <i32 4, i32 4, i32 4, i32 4>
  %301 = icmp eq i64 %index.next1098, 32
  br i1 %301, label %polly.loop_exit760.2, label %vector.body1095, !llvm.loop !112

polly.loop_exit760.2:                             ; preds = %vector.body1095
  %polly.indvar_next756.2 = add nuw nsw i64 %polly.indvar755.2, 1
  %exitcond840.2.not = icmp eq i64 %polly.indvar_next756.2, 16
  br i1 %exitcond840.2.not, label %polly.loop_header752.1.2, label %polly.loop_header752.2

polly.loop_header752.1.2:                         ; preds = %polly.loop_exit760.2, %polly.loop_exit760.1.2
  %polly.indvar755.1.2 = phi i64 [ %polly.indvar_next756.1.2, %polly.loop_exit760.1.2 ], [ 0, %polly.loop_exit760.2 ]
  %302 = add nuw nsw i64 %polly.indvar755.1.2, 64
  %303 = mul nuw nsw i64 %302, 480
  %304 = trunc i64 %302 to i32
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %304, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %polly.loop_header752.1.2
  %index1111 = phi i64 [ 0, %polly.loop_header752.1.2 ], [ %index.next1112, %vector.body1109 ]
  %vec.ind1115 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.2 ], [ %vec.ind.next1116, %vector.body1109 ]
  %305 = add nuw nsw <4 x i64> %vec.ind1115, <i64 32, i64 32, i64 32, i64 32>
  %306 = trunc <4 x i64> %305 to <4 x i32>
  %307 = mul <4 x i32> %broadcast.splat1118, %306
  %308 = add <4 x i32> %307, <i32 2, i32 2, i32 2, i32 2>
  %309 = urem <4 x i32> %308, <i32 60, i32 60, i32 60, i32 60>
  %310 = sitofp <4 x i32> %309 to <4 x double>
  %311 = fmul fast <4 x double> %310, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %312 = extractelement <4 x i64> %305, i32 0
  %313 = shl i64 %312, 3
  %314 = add i64 %313, %303
  %315 = getelementptr i8, i8* %call2, i64 %314
  %316 = bitcast i8* %315 to <4 x double>*
  store <4 x double> %311, <4 x double>* %316, align 8, !alias.scope !98, !noalias !100
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1116 = add <4 x i64> %vec.ind1115, <i64 4, i64 4, i64 4, i64 4>
  %317 = icmp eq i64 %index.next1112, 28
  br i1 %317, label %polly.loop_exit760.1.2, label %vector.body1109, !llvm.loop !113

polly.loop_exit760.1.2:                           ; preds = %vector.body1109
  %polly.indvar_next756.1.2 = add nuw nsw i64 %polly.indvar755.1.2, 1
  %exitcond840.1.2.not = icmp eq i64 %polly.indvar_next756.1.2, 16
  br i1 %exitcond840.1.2.not, label %polly.loop_header778, label %polly.loop_header752.1.2

polly.loop_header725.1:                           ; preds = %polly.loop_exit733, %polly.loop_exit733.1
  %polly.indvar728.1 = phi i64 [ %polly.indvar_next729.1, %polly.loop_exit733.1 ], [ 0, %polly.loop_exit733 ]
  %318 = mul nuw nsw i64 %polly.indvar728.1, 640
  %319 = trunc i64 %polly.indvar728.1 to i32
  %broadcast.splatinsert951 = insertelement <4 x i32> poison, i32 %319, i32 0
  %broadcast.splat952 = shufflevector <4 x i32> %broadcast.splatinsert951, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body943

vector.body943:                                   ; preds = %vector.body943, %polly.loop_header725.1
  %index945 = phi i64 [ 0, %polly.loop_header725.1 ], [ %index.next946, %vector.body943 ]
  %vec.ind949 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1 ], [ %vec.ind.next950, %vector.body943 ]
  %320 = add nuw nsw <4 x i64> %vec.ind949, <i64 32, i64 32, i64 32, i64 32>
  %321 = trunc <4 x i64> %320 to <4 x i32>
  %322 = mul <4 x i32> %broadcast.splat952, %321
  %323 = add <4 x i32> %322, <i32 3, i32 3, i32 3, i32 3>
  %324 = urem <4 x i32> %323, <i32 80, i32 80, i32 80, i32 80>
  %325 = sitofp <4 x i32> %324 to <4 x double>
  %326 = fmul fast <4 x double> %325, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %327 = extractelement <4 x i64> %320, i32 0
  %328 = shl i64 %327, 3
  %329 = add nuw nsw i64 %328, %318
  %330 = getelementptr i8, i8* %call, i64 %329
  %331 = bitcast i8* %330 to <4 x double>*
  store <4 x double> %326, <4 x double>* %331, align 8, !alias.scope !94, !noalias !96
  %index.next946 = add i64 %index945, 4
  %vec.ind.next950 = add <4 x i64> %vec.ind949, <i64 4, i64 4, i64 4, i64 4>
  %332 = icmp eq i64 %index.next946, 32
  br i1 %332, label %polly.loop_exit733.1, label %vector.body943, !llvm.loop !114

polly.loop_exit733.1:                             ; preds = %vector.body943
  %polly.indvar_next729.1 = add nuw nsw i64 %polly.indvar728.1, 1
  %exitcond849.1.not = icmp eq i64 %polly.indvar_next729.1, 32
  br i1 %exitcond849.1.not, label %polly.loop_header725.2, label %polly.loop_header725.1

polly.loop_header725.2:                           ; preds = %polly.loop_exit733.1, %polly.loop_exit733.2
  %polly.indvar728.2 = phi i64 [ %polly.indvar_next729.2, %polly.loop_exit733.2 ], [ 0, %polly.loop_exit733.1 ]
  %333 = mul nuw nsw i64 %polly.indvar728.2, 640
  %334 = trunc i64 %polly.indvar728.2 to i32
  %broadcast.splatinsert963 = insertelement <4 x i32> poison, i32 %334, i32 0
  %broadcast.splat964 = shufflevector <4 x i32> %broadcast.splatinsert963, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body955

vector.body955:                                   ; preds = %vector.body955, %polly.loop_header725.2
  %index957 = phi i64 [ 0, %polly.loop_header725.2 ], [ %index.next958, %vector.body955 ]
  %vec.ind961 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2 ], [ %vec.ind.next962, %vector.body955 ]
  %335 = add nuw nsw <4 x i64> %vec.ind961, <i64 64, i64 64, i64 64, i64 64>
  %336 = trunc <4 x i64> %335 to <4 x i32>
  %337 = mul <4 x i32> %broadcast.splat964, %336
  %338 = add <4 x i32> %337, <i32 3, i32 3, i32 3, i32 3>
  %339 = urem <4 x i32> %338, <i32 80, i32 80, i32 80, i32 80>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %342 = extractelement <4 x i64> %335, i32 0
  %343 = shl i64 %342, 3
  %344 = add nuw nsw i64 %343, %333
  %345 = getelementptr i8, i8* %call, i64 %344
  %346 = bitcast i8* %345 to <4 x double>*
  store <4 x double> %341, <4 x double>* %346, align 8, !alias.scope !94, !noalias !96
  %index.next958 = add i64 %index957, 4
  %vec.ind.next962 = add <4 x i64> %vec.ind961, <i64 4, i64 4, i64 4, i64 4>
  %347 = icmp eq i64 %index.next958, 16
  br i1 %347, label %polly.loop_exit733.2, label %vector.body955, !llvm.loop !115

polly.loop_exit733.2:                             ; preds = %vector.body955
  %polly.indvar_next729.2 = add nuw nsw i64 %polly.indvar728.2, 1
  %exitcond849.2.not = icmp eq i64 %polly.indvar_next729.2, 32
  br i1 %exitcond849.2.not, label %polly.loop_header725.1882, label %polly.loop_header725.2

polly.loop_header725.1882:                        ; preds = %polly.loop_exit733.2, %polly.loop_exit733.1893
  %polly.indvar728.1881 = phi i64 [ %polly.indvar_next729.1891, %polly.loop_exit733.1893 ], [ 0, %polly.loop_exit733.2 ]
  %348 = add nuw nsw i64 %polly.indvar728.1881, 32
  %349 = mul nuw nsw i64 %348, 640
  %350 = trunc i64 %348 to i32
  %broadcast.splatinsert977 = insertelement <4 x i32> poison, i32 %350, i32 0
  %broadcast.splat978 = shufflevector <4 x i32> %broadcast.splatinsert977, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %polly.loop_header725.1882
  %index969 = phi i64 [ 0, %polly.loop_header725.1882 ], [ %index.next970, %vector.body967 ]
  %vec.ind975 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.1882 ], [ %vec.ind.next976, %vector.body967 ]
  %351 = mul <4 x i32> %vec.ind975, %broadcast.splat978
  %352 = add <4 x i32> %351, <i32 3, i32 3, i32 3, i32 3>
  %353 = urem <4 x i32> %352, <i32 80, i32 80, i32 80, i32 80>
  %354 = sitofp <4 x i32> %353 to <4 x double>
  %355 = fmul fast <4 x double> %354, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %356 = shl i64 %index969, 3
  %357 = add nuw nsw i64 %356, %349
  %358 = getelementptr i8, i8* %call, i64 %357
  %359 = bitcast i8* %358 to <4 x double>*
  store <4 x double> %355, <4 x double>* %359, align 8, !alias.scope !94, !noalias !96
  %index.next970 = add i64 %index969, 4
  %vec.ind.next976 = add <4 x i32> %vec.ind975, <i32 4, i32 4, i32 4, i32 4>
  %360 = icmp eq i64 %index.next970, 32
  br i1 %360, label %polly.loop_exit733.1893, label %vector.body967, !llvm.loop !116

polly.loop_exit733.1893:                          ; preds = %vector.body967
  %polly.indvar_next729.1891 = add nuw nsw i64 %polly.indvar728.1881, 1
  %exitcond849.1892.not = icmp eq i64 %polly.indvar_next729.1891, 32
  br i1 %exitcond849.1892.not, label %polly.loop_header725.1.1, label %polly.loop_header725.1882

polly.loop_header725.1.1:                         ; preds = %polly.loop_exit733.1893, %polly.loop_exit733.1.1
  %polly.indvar728.1.1 = phi i64 [ %polly.indvar_next729.1.1, %polly.loop_exit733.1.1 ], [ 0, %polly.loop_exit733.1893 ]
  %361 = add nuw nsw i64 %polly.indvar728.1.1, 32
  %362 = mul nuw nsw i64 %361, 640
  %363 = trunc i64 %361 to i32
  %broadcast.splatinsert989 = insertelement <4 x i32> poison, i32 %363, i32 0
  %broadcast.splat990 = shufflevector <4 x i32> %broadcast.splatinsert989, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %polly.loop_header725.1.1
  %index983 = phi i64 [ 0, %polly.loop_header725.1.1 ], [ %index.next984, %vector.body981 ]
  %vec.ind987 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.1 ], [ %vec.ind.next988, %vector.body981 ]
  %364 = add nuw nsw <4 x i64> %vec.ind987, <i64 32, i64 32, i64 32, i64 32>
  %365 = trunc <4 x i64> %364 to <4 x i32>
  %366 = mul <4 x i32> %broadcast.splat990, %365
  %367 = add <4 x i32> %366, <i32 3, i32 3, i32 3, i32 3>
  %368 = urem <4 x i32> %367, <i32 80, i32 80, i32 80, i32 80>
  %369 = sitofp <4 x i32> %368 to <4 x double>
  %370 = fmul fast <4 x double> %369, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %371 = extractelement <4 x i64> %364, i32 0
  %372 = shl i64 %371, 3
  %373 = add nuw nsw i64 %372, %362
  %374 = getelementptr i8, i8* %call, i64 %373
  %375 = bitcast i8* %374 to <4 x double>*
  store <4 x double> %370, <4 x double>* %375, align 8, !alias.scope !94, !noalias !96
  %index.next984 = add i64 %index983, 4
  %vec.ind.next988 = add <4 x i64> %vec.ind987, <i64 4, i64 4, i64 4, i64 4>
  %376 = icmp eq i64 %index.next984, 32
  br i1 %376, label %polly.loop_exit733.1.1, label %vector.body981, !llvm.loop !117

polly.loop_exit733.1.1:                           ; preds = %vector.body981
  %polly.indvar_next729.1.1 = add nuw nsw i64 %polly.indvar728.1.1, 1
  %exitcond849.1.1.not = icmp eq i64 %polly.indvar_next729.1.1, 32
  br i1 %exitcond849.1.1.not, label %polly.loop_header725.2.1, label %polly.loop_header725.1.1

polly.loop_header725.2.1:                         ; preds = %polly.loop_exit733.1.1, %polly.loop_exit733.2.1
  %polly.indvar728.2.1 = phi i64 [ %polly.indvar_next729.2.1, %polly.loop_exit733.2.1 ], [ 0, %polly.loop_exit733.1.1 ]
  %377 = add nuw nsw i64 %polly.indvar728.2.1, 32
  %378 = mul nuw nsw i64 %377, 640
  %379 = trunc i64 %377 to i32
  %broadcast.splatinsert1001 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat1002 = shufflevector <4 x i32> %broadcast.splatinsert1001, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body993

vector.body993:                                   ; preds = %vector.body993, %polly.loop_header725.2.1
  %index995 = phi i64 [ 0, %polly.loop_header725.2.1 ], [ %index.next996, %vector.body993 ]
  %vec.ind999 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2.1 ], [ %vec.ind.next1000, %vector.body993 ]
  %380 = add nuw nsw <4 x i64> %vec.ind999, <i64 64, i64 64, i64 64, i64 64>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1002, %381
  %383 = add <4 x i32> %382, <i32 3, i32 3, i32 3, i32 3>
  %384 = urem <4 x i32> %383, <i32 80, i32 80, i32 80, i32 80>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %378
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !94, !noalias !96
  %index.next996 = add i64 %index995, 4
  %vec.ind.next1000 = add <4 x i64> %vec.ind999, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next996, 16
  br i1 %392, label %polly.loop_exit733.2.1, label %vector.body993, !llvm.loop !118

polly.loop_exit733.2.1:                           ; preds = %vector.body993
  %polly.indvar_next729.2.1 = add nuw nsw i64 %polly.indvar728.2.1, 1
  %exitcond849.2.1.not = icmp eq i64 %polly.indvar_next729.2.1, 32
  br i1 %exitcond849.2.1.not, label %polly.loop_header725.2896, label %polly.loop_header725.2.1

polly.loop_header725.2896:                        ; preds = %polly.loop_exit733.2.1, %polly.loop_exit733.2907
  %polly.indvar728.2895 = phi i64 [ %polly.indvar_next729.2905, %polly.loop_exit733.2907 ], [ 0, %polly.loop_exit733.2.1 ]
  %393 = add nuw nsw i64 %polly.indvar728.2895, 64
  %394 = mul nuw nsw i64 %393, 640
  %395 = trunc i64 %393 to i32
  %broadcast.splatinsert1015 = insertelement <4 x i32> poison, i32 %395, i32 0
  %broadcast.splat1016 = shufflevector <4 x i32> %broadcast.splatinsert1015, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1005

vector.body1005:                                  ; preds = %vector.body1005, %polly.loop_header725.2896
  %index1007 = phi i64 [ 0, %polly.loop_header725.2896 ], [ %index.next1008, %vector.body1005 ]
  %vec.ind1013 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.2896 ], [ %vec.ind.next1014, %vector.body1005 ]
  %396 = mul <4 x i32> %vec.ind1013, %broadcast.splat1016
  %397 = add <4 x i32> %396, <i32 3, i32 3, i32 3, i32 3>
  %398 = urem <4 x i32> %397, <i32 80, i32 80, i32 80, i32 80>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %401 = shl i64 %index1007, 3
  %402 = add nuw nsw i64 %401, %394
  %403 = getelementptr i8, i8* %call, i64 %402
  %404 = bitcast i8* %403 to <4 x double>*
  store <4 x double> %400, <4 x double>* %404, align 8, !alias.scope !94, !noalias !96
  %index.next1008 = add i64 %index1007, 4
  %vec.ind.next1014 = add <4 x i32> %vec.ind1013, <i32 4, i32 4, i32 4, i32 4>
  %405 = icmp eq i64 %index.next1008, 32
  br i1 %405, label %polly.loop_exit733.2907, label %vector.body1005, !llvm.loop !119

polly.loop_exit733.2907:                          ; preds = %vector.body1005
  %polly.indvar_next729.2905 = add nuw nsw i64 %polly.indvar728.2895, 1
  %exitcond849.2906.not = icmp eq i64 %polly.indvar_next729.2905, 16
  br i1 %exitcond849.2906.not, label %polly.loop_header725.1.2, label %polly.loop_header725.2896

polly.loop_header725.1.2:                         ; preds = %polly.loop_exit733.2907, %polly.loop_exit733.1.2
  %polly.indvar728.1.2 = phi i64 [ %polly.indvar_next729.1.2, %polly.loop_exit733.1.2 ], [ 0, %polly.loop_exit733.2907 ]
  %406 = add nuw nsw i64 %polly.indvar728.1.2, 64
  %407 = mul nuw nsw i64 %406, 640
  %408 = trunc i64 %406 to i32
  %broadcast.splatinsert1027 = insertelement <4 x i32> poison, i32 %408, i32 0
  %broadcast.splat1028 = shufflevector <4 x i32> %broadcast.splatinsert1027, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %polly.loop_header725.1.2
  %index1021 = phi i64 [ 0, %polly.loop_header725.1.2 ], [ %index.next1022, %vector.body1019 ]
  %vec.ind1025 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.2 ], [ %vec.ind.next1026, %vector.body1019 ]
  %409 = add nuw nsw <4 x i64> %vec.ind1025, <i64 32, i64 32, i64 32, i64 32>
  %410 = trunc <4 x i64> %409 to <4 x i32>
  %411 = mul <4 x i32> %broadcast.splat1028, %410
  %412 = add <4 x i32> %411, <i32 3, i32 3, i32 3, i32 3>
  %413 = urem <4 x i32> %412, <i32 80, i32 80, i32 80, i32 80>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = extractelement <4 x i64> %409, i32 0
  %417 = shl i64 %416, 3
  %418 = add nuw nsw i64 %417, %407
  %419 = getelementptr i8, i8* %call, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %415, <4 x double>* %420, align 8, !alias.scope !94, !noalias !96
  %index.next1022 = add i64 %index1021, 4
  %vec.ind.next1026 = add <4 x i64> %vec.ind1025, <i64 4, i64 4, i64 4, i64 4>
  %421 = icmp eq i64 %index.next1022, 32
  br i1 %421, label %polly.loop_exit733.1.2, label %vector.body1019, !llvm.loop !120

polly.loop_exit733.1.2:                           ; preds = %vector.body1019
  %polly.indvar_next729.1.2 = add nuw nsw i64 %polly.indvar728.1.2, 1
  %exitcond849.1.2.not = icmp eq i64 %polly.indvar_next729.1.2, 16
  br i1 %exitcond849.1.2.not, label %polly.loop_header725.2.2, label %polly.loop_header725.1.2

polly.loop_header725.2.2:                         ; preds = %polly.loop_exit733.1.2, %polly.loop_exit733.2.2
  %polly.indvar728.2.2 = phi i64 [ %polly.indvar_next729.2.2, %polly.loop_exit733.2.2 ], [ 0, %polly.loop_exit733.1.2 ]
  %422 = add nuw nsw i64 %polly.indvar728.2.2, 64
  %423 = mul nuw nsw i64 %422, 640
  %424 = trunc i64 %422 to i32
  %broadcast.splatinsert1039 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1040 = shufflevector <4 x i32> %broadcast.splatinsert1039, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %polly.loop_header725.2.2
  %index1033 = phi i64 [ 0, %polly.loop_header725.2.2 ], [ %index.next1034, %vector.body1031 ]
  %vec.ind1037 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2.2 ], [ %vec.ind.next1038, %vector.body1031 ]
  %425 = add nuw nsw <4 x i64> %vec.ind1037, <i64 64, i64 64, i64 64, i64 64>
  %426 = trunc <4 x i64> %425 to <4 x i32>
  %427 = mul <4 x i32> %broadcast.splat1040, %426
  %428 = add <4 x i32> %427, <i32 3, i32 3, i32 3, i32 3>
  %429 = urem <4 x i32> %428, <i32 80, i32 80, i32 80, i32 80>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = extractelement <4 x i64> %425, i32 0
  %433 = shl i64 %432, 3
  %434 = add nuw nsw i64 %433, %423
  %435 = getelementptr i8, i8* %call, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %431, <4 x double>* %436, align 8, !alias.scope !94, !noalias !96
  %index.next1034 = add i64 %index1033, 4
  %vec.ind.next1038 = add <4 x i64> %vec.ind1037, <i64 4, i64 4, i64 4, i64 4>
  %437 = icmp eq i64 %index.next1034, 16
  br i1 %437, label %polly.loop_exit733.2.2, label %vector.body1031, !llvm.loop !121

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
!25 = !{!"llvm.loop.tile.size", i32 4}
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
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !52}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 80}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.data.pack.enable", i1 true}
!50 = !{!"llvm.data.pack.array", !21}
!51 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call2"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = !{!63, !67, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call2"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !77, !79}
!83 = !{!74, !78, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !87, !89}
!93 = !{!84, !88, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = !{!97, !94}
!101 = distinct !{!101, !13}
!102 = !{!98, !94}
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
!121 = distinct !{!121, !13}
