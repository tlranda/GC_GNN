; ModuleID = 'syr2k_recreations//mmp_syr2k_S_92.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_92.c"
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
  %scevgep916 = getelementptr i8, i8* %call2, i64 %12
  %scevgep915 = getelementptr i8, i8* %call2, i64 %11
  %scevgep914 = getelementptr i8, i8* %call1, i64 %12
  %scevgep913 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep913, %scevgep916
  %bound1 = icmp ult i8* %scevgep915, %scevgep914
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
  br i1 %exitcond18.not.i, label %vector.ph920, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph920:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert927 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat928 = shufflevector <4 x i64> %broadcast.splatinsert927, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %vector.ph920
  %index921 = phi i64 [ 0, %vector.ph920 ], [ %index.next922, %vector.body919 ]
  %vec.ind925 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph920 ], [ %vec.ind.next926, %vector.body919 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind925, %broadcast.splat928
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv7.i, i64 %index921
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next922 = add i64 %index921, 4
  %vec.ind.next926 = add <4 x i64> %vec.ind925, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next922, 80
  br i1 %40, label %for.inc41.i, label %vector.body919, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body919
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph920, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1276, label %vector.ph1202

vector.ph1202:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1202
  %index1203 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1204, %vector.body1201 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %index1203
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1204 = add i64 %index1203, 4
  %46 = icmp eq i64 %index.next1204, %n.vec
  br i1 %46, label %middle.block1199, label %vector.body1201, !llvm.loop !18

middle.block1199:                                 ; preds = %vector.body1201
  %cmp.n1206 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1206, label %for.inc6.i, label %for.body3.i46.preheader1276

for.body3.i46.preheader1276:                      ; preds = %for.body3.i46.preheader, %middle.block1199
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1199 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1276, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1276 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1199, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit523.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1222 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1222, label %for.body3.i60.preheader1274, label %vector.ph1223

vector.ph1223:                                    ; preds = %for.body3.i60.preheader
  %n.vec1225 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1223
  %index1226 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1227, %vector.body1221 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %index1226
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1230 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1230, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1227 = add i64 %index1226, 4
  %57 = icmp eq i64 %index.next1227, %n.vec1225
  br i1 %57, label %middle.block1219, label %vector.body1221, !llvm.loop !51

middle.block1219:                                 ; preds = %vector.body1221
  %cmp.n1229 = icmp eq i64 %indvars.iv21.i52, %n.vec1225
  br i1 %cmp.n1229, label %for.inc6.i63, label %for.body3.i60.preheader1274

for.body3.i60.preheader1274:                      ; preds = %for.body3.i60.preheader, %middle.block1219
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1225, %middle.block1219 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1274, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1274 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1219, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit367.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1248 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1248, label %for.body3.i99.preheader1272, label %vector.ph1249

vector.ph1249:                                    ; preds = %for.body3.i99.preheader
  %n.vec1251 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %vector.ph1249
  %index1252 = phi i64 [ 0, %vector.ph1249 ], [ %index.next1253, %vector.body1247 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %index1252
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1256 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1256, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1253 = add i64 %index1252, 4
  %68 = icmp eq i64 %index.next1253, %n.vec1251
  br i1 %68, label %middle.block1245, label %vector.body1247, !llvm.loop !53

middle.block1245:                                 ; preds = %vector.body1247
  %cmp.n1255 = icmp eq i64 %indvars.iv21.i91, %n.vec1251
  br i1 %cmp.n1255, label %for.inc6.i102, label %for.body3.i99.preheader1272

for.body3.i99.preheader1272:                      ; preds = %for.body3.i99.preheader, %middle.block1245
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1251, %middle.block1245 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1272, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1272 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1245, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.1
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
  %indvar1260 = phi i64 [ %indvar.next1261, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1260, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1262 = icmp ult i64 %88, 4
  br i1 %min.iters.check1262, label %polly.loop_header191.preheader, label %vector.ph1263

vector.ph1263:                                    ; preds = %polly.loop_header
  %n.vec1265 = and i64 %88, -4
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1259 ]
  %90 = shl nuw nsw i64 %index1266, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1270, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1267 = add i64 %index1266, 4
  %95 = icmp eq i64 %index.next1267, %n.vec1265
  br i1 %95, label %middle.block1257, label %vector.body1259, !llvm.loop !64

middle.block1257:                                 ; preds = %vector.body1259
  %cmp.n1269 = icmp eq i64 %88, %n.vec1265
  br i1 %cmp.n1269, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1257
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1265, %middle.block1257 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1257
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1261 = add i64 %indvar1260, 1
  br i1 %exitcond788.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond787.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond787.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.1
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %polly.indvar202, 1
  %98 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %99 = shl nsw i64 %polly.indvar214, 4
  %100 = sub nsw i64 %98, %99
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next780 = add nsw i64 %indvars.iv779, -16
  %exitcond785.not = icmp eq i64 %polly.indvar214, %97
  br i1 %exitcond785.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit225 ], [ %indvars.iv779, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ 0, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 15)
  %101 = add nsw i64 %polly.indvar220, %100
  %polly.loop_guard899 = icmp sgt i64 %101, -1
  %102 = add nuw nsw i64 %polly.indvar220, %98
  %103 = mul nuw nsw i64 %102, 480
  %104 = mul nuw nsw i64 %102, 640
  br i1 %polly.loop_guard899, label %polly.loop_header223.us, label %polly.loop_exit225

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.loop_exit231.loopexit.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit231.loopexit.us ], [ 0, %polly.loop_header217 ]
  %105 = shl i64 %polly.indvar226.us, 3
  %106 = add i64 %105, %103
  %scevgep238.us = getelementptr i8, i8* %call2, i64 %106
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us = getelementptr i8, i8* %call1, i64 %106
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %107 = add nuw nsw i64 %polly.indvar232.us, %99
  %108 = mul nuw nsw i64 %107, 480
  %109 = add nuw nsw i64 %108, %105
  %scevgep235.us = getelementptr i8, i8* %call1, i64 %109
  %scevgep235236.us = bitcast i8* %scevgep235.us to double*
  %_p_scalar_237.us = load double, double* %scevgep235236.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_237.us
  %scevgep241.us = getelementptr i8, i8* %call2, i64 %109
  %scevgep241242.us = bitcast i8* %scevgep241.us to double*
  %_p_scalar_243.us = load double, double* %scevgep241242.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_243.us
  %110 = shl i64 %107, 3
  %111 = add nuw nsw i64 %110, %104
  %scevgep247.us = getelementptr i8, i8* %call, i64 %111
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
  %exitcond783.not = icmp eq i64 %polly.indvar_next227.us, 50
  br i1 %exitcond783.not, label %polly.loop_exit225, label %polly.loop_header223.us

polly.loop_exit225:                               ; preds = %polly.loop_exit231.loopexit.us, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, 1
  %exitcond784.not = icmp eq i64 %polly.indvar_next221, 8
  br i1 %exitcond784.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1234 = phi i64 [ %indvar.next1235, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %112 = add i64 %indvar1234, 1
  %113 = mul nuw nsw i64 %polly.indvar339, 640
  %scevgep348 = getelementptr i8, i8* %call, i64 %113
  %min.iters.check1236 = icmp ult i64 %112, 4
  br i1 %min.iters.check1236, label %polly.loop_header342.preheader, label %vector.ph1237

vector.ph1237:                                    ; preds = %polly.loop_header336
  %n.vec1239 = and i64 %112, -4
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1241, %vector.body1233 ]
  %114 = shl nuw nsw i64 %index1240, 3
  %115 = getelementptr i8, i8* %scevgep348, i64 %114
  %116 = bitcast i8* %115 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %116, align 8, !alias.scope !69, !noalias !71
  %117 = fmul fast <4 x double> %wide.load1244, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %118 = bitcast i8* %115 to <4 x double>*
  store <4 x double> %117, <4 x double>* %118, align 8, !alias.scope !69, !noalias !71
  %index.next1241 = add i64 %index1240, 4
  %119 = icmp eq i64 %index.next1241, %n.vec1239
  br i1 %119, label %middle.block1231, label %vector.body1233, !llvm.loop !74

middle.block1231:                                 ; preds = %vector.body1233
  %cmp.n1243 = icmp eq i64 %112, %n.vec1239
  br i1 %cmp.n1243, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block1231
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1239, %middle.block1231 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block1231
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next340, 80
  %indvar.next1235 = add i64 %indvar1234, 1
  br i1 %exitcond802.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %120 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %120
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond801.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !75

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit367.1
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit367.1 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit367.1 ], [ 0, %polly.loop_exit344 ]
  %121 = lshr i64 %polly.indvar355, 1
  %122 = shl nsw i64 %polly.indvar355, 3
  br label %polly.loop_header365

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.loop_header352
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %polly.loop_exit373 ], [ %indvars.iv789, %polly.loop_header352 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 0, %polly.loop_header352 ]
  %123 = shl nsw i64 %polly.indvar368, 4
  %124 = sub nsw i64 %122, %123
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_exit379
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %indvars.iv.next792 = add nsw i64 %indvars.iv791, -16
  %exitcond799.not = icmp eq i64 %polly.indvar368, %121
  br i1 %exitcond799.not, label %polly.loop_header365.1, label %polly.loop_header365

polly.loop_header371:                             ; preds = %polly.loop_exit379, %polly.loop_header365
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit379 ], [ %indvars.iv791, %polly.loop_header365 ]
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_exit379 ], [ 0, %polly.loop_header365 ]
  %smin795 = call i64 @llvm.smin.i64(i64 %indvars.iv793, i64 15)
  %125 = add nsw i64 %polly.indvar374, %124
  %polly.loop_guard387901 = icmp sgt i64 %125, -1
  %126 = add nuw nsw i64 %polly.indvar374, %122
  %127 = mul nuw nsw i64 %126, 480
  %128 = mul nuw nsw i64 %126, 640
  br i1 %polly.loop_guard387901, label %polly.loop_header377.us, label %polly.loop_exit379

polly.loop_header377.us:                          ; preds = %polly.loop_header371, %polly.loop_exit386.loopexit.us
  %polly.indvar380.us = phi i64 [ %polly.indvar_next381.us, %polly.loop_exit386.loopexit.us ], [ 0, %polly.loop_header371 ]
  %129 = shl i64 %polly.indvar380.us, 3
  %130 = add i64 %129, %127
  %scevgep394.us = getelementptr i8, i8* %call2, i64 %130
  %scevgep394395.us = bitcast i8* %scevgep394.us to double*
  %_p_scalar_396.us = load double, double* %scevgep394395.us, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us = getelementptr i8, i8* %call1, i64 %130
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us

polly.loop_header384.us:                          ; preds = %polly.loop_header377.us, %polly.loop_header384.us
  %polly.indvar388.us = phi i64 [ %polly.indvar_next389.us, %polly.loop_header384.us ], [ 0, %polly.loop_header377.us ]
  %131 = add nuw nsw i64 %polly.indvar388.us, %123
  %132 = mul nuw nsw i64 %131, 480
  %133 = add nuw nsw i64 %132, %129
  %scevgep391.us = getelementptr i8, i8* %call1, i64 %133
  %scevgep391392.us = bitcast i8* %scevgep391.us to double*
  %_p_scalar_393.us = load double, double* %scevgep391392.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_396.us, %_p_scalar_393.us
  %scevgep397.us = getelementptr i8, i8* %call2, i64 %133
  %scevgep397398.us = bitcast i8* %scevgep397.us to double*
  %_p_scalar_399.us = load double, double* %scevgep397398.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_402.us, %_p_scalar_399.us
  %134 = shl i64 %131, 3
  %135 = add nuw nsw i64 %134, %128
  %scevgep403.us = getelementptr i8, i8* %call, i64 %135
  %scevgep403404.us = bitcast i8* %scevgep403.us to double*
  %_p_scalar_405.us = load double, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_405.us
  store double %p_add42.i79.us, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us = add nuw nsw i64 %polly.indvar388.us, 1
  %exitcond796.not = icmp eq i64 %polly.indvar388.us, %smin795
  br i1 %exitcond796.not, label %polly.loop_exit386.loopexit.us, label %polly.loop_header384.us

polly.loop_exit386.loopexit.us:                   ; preds = %polly.loop_header384.us
  %polly.indvar_next381.us = add nuw nsw i64 %polly.indvar380.us, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next381.us, 50
  br i1 %exitcond797.not, label %polly.loop_exit379, label %polly.loop_header377.us

polly.loop_exit379:                               ; preds = %polly.loop_exit386.loopexit.us, %polly.loop_header371
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %indvars.iv.next794 = add nsw i64 %indvars.iv793, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next375, 8
  br i1 %exitcond798.not, label %polly.loop_exit373, label %polly.loop_header371

polly.loop_header492:                             ; preds = %init_array.exit, %polly.loop_exit500
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit500 ], [ 0, %init_array.exit ]
  %polly.indvar495 = phi i64 [ %polly.indvar_next496, %polly.loop_exit500 ], [ 1, %init_array.exit ]
  %136 = add i64 %indvar, 1
  %137 = mul nuw nsw i64 %polly.indvar495, 640
  %scevgep504 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1210 = icmp ult i64 %136, 4
  br i1 %min.iters.check1210, label %polly.loop_header498.preheader, label %vector.ph1211

vector.ph1211:                                    ; preds = %polly.loop_header492
  %n.vec1213 = and i64 %136, -4
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1211
  %index1214 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1215, %vector.body1209 ]
  %138 = shl nuw nsw i64 %index1214, 3
  %139 = getelementptr i8, i8* %scevgep504, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1218 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !78, !noalias !80
  %141 = fmul fast <4 x double> %wide.load1218, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !78, !noalias !80
  %index.next1215 = add i64 %index1214, 4
  %143 = icmp eq i64 %index.next1215, %n.vec1213
  br i1 %143, label %middle.block1207, label %vector.body1209, !llvm.loop !83

middle.block1207:                                 ; preds = %vector.body1209
  %cmp.n1217 = icmp eq i64 %136, %n.vec1213
  br i1 %cmp.n1217, label %polly.loop_exit500, label %polly.loop_header498.preheader

polly.loop_header498.preheader:                   ; preds = %polly.loop_header492, %middle.block1207
  %polly.indvar501.ph = phi i64 [ 0, %polly.loop_header492 ], [ %n.vec1213, %middle.block1207 ]
  br label %polly.loop_header498

polly.loop_exit500:                               ; preds = %polly.loop_header498, %middle.block1207
  %polly.indvar_next496 = add nuw nsw i64 %polly.indvar495, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next496, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond816.not, label %polly.loop_header508, label %polly.loop_header492

polly.loop_header498:                             ; preds = %polly.loop_header498.preheader, %polly.loop_header498
  %polly.indvar501 = phi i64 [ %polly.indvar_next502, %polly.loop_header498 ], [ %polly.indvar501.ph, %polly.loop_header498.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar501, 3
  %scevgep505 = getelementptr i8, i8* %scevgep504, i64 %144
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_507, 1.200000e+00
  store double %p_mul.i, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next502 = add nuw nsw i64 %polly.indvar501, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next502, %polly.indvar495
  br i1 %exitcond815.not, label %polly.loop_exit500, label %polly.loop_header498, !llvm.loop !84

polly.loop_header508:                             ; preds = %polly.loop_exit500, %polly.loop_exit523.1
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %polly.loop_exit523.1 ], [ 0, %polly.loop_exit500 ]
  %polly.indvar511 = phi i64 [ %polly.indvar_next512, %polly.loop_exit523.1 ], [ 0, %polly.loop_exit500 ]
  %145 = lshr i64 %polly.indvar511, 1
  %146 = shl nsw i64 %polly.indvar511, 3
  br label %polly.loop_header521

polly.loop_header521:                             ; preds = %polly.loop_exit529, %polly.loop_header508
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit529 ], [ %indvars.iv803, %polly.loop_header508 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 0, %polly.loop_header508 ]
  %147 = shl nsw i64 %polly.indvar524, 4
  %148 = sub nsw i64 %146, %147
  br label %polly.loop_header527

polly.loop_exit529:                               ; preds = %polly.loop_exit535
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %indvars.iv.next806 = add nsw i64 %indvars.iv805, -16
  %exitcond813.not = icmp eq i64 %polly.indvar524, %145
  br i1 %exitcond813.not, label %polly.loop_header521.1, label %polly.loop_header521

polly.loop_header527:                             ; preds = %polly.loop_exit535, %polly.loop_header521
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit535 ], [ %indvars.iv805, %polly.loop_header521 ]
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit535 ], [ 0, %polly.loop_header521 ]
  %smin809 = call i64 @llvm.smin.i64(i64 %indvars.iv807, i64 15)
  %149 = add nsw i64 %polly.indvar530, %148
  %polly.loop_guard543903 = icmp sgt i64 %149, -1
  %150 = add nuw nsw i64 %polly.indvar530, %146
  %151 = mul nuw nsw i64 %150, 480
  %152 = mul nuw nsw i64 %150, 640
  br i1 %polly.loop_guard543903, label %polly.loop_header533.us, label %polly.loop_exit535

polly.loop_header533.us:                          ; preds = %polly.loop_header527, %polly.loop_exit542.loopexit.us
  %polly.indvar536.us = phi i64 [ %polly.indvar_next537.us, %polly.loop_exit542.loopexit.us ], [ 0, %polly.loop_header527 ]
  %153 = shl i64 %polly.indvar536.us, 3
  %154 = add i64 %153, %151
  %scevgep550.us = getelementptr i8, i8* %call2, i64 %154
  %scevgep550551.us = bitcast i8* %scevgep550.us to double*
  %_p_scalar_552.us = load double, double* %scevgep550551.us, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us = getelementptr i8, i8* %call1, i64 %154
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us

polly.loop_header540.us:                          ; preds = %polly.loop_header533.us, %polly.loop_header540.us
  %polly.indvar544.us = phi i64 [ %polly.indvar_next545.us, %polly.loop_header540.us ], [ 0, %polly.loop_header533.us ]
  %155 = add nuw nsw i64 %polly.indvar544.us, %147
  %156 = mul nuw nsw i64 %155, 480
  %157 = add nuw nsw i64 %156, %153
  %scevgep547.us = getelementptr i8, i8* %call1, i64 %157
  %scevgep547548.us = bitcast i8* %scevgep547.us to double*
  %_p_scalar_549.us = load double, double* %scevgep547548.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_552.us, %_p_scalar_549.us
  %scevgep553.us = getelementptr i8, i8* %call2, i64 %157
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %158 = shl i64 %155, 3
  %159 = add nuw nsw i64 %158, %152
  %scevgep559.us = getelementptr i8, i8* %call, i64 %159
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_561.us
  store double %p_add42.i.us, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us = add nuw nsw i64 %polly.indvar544.us, 1
  %exitcond810.not = icmp eq i64 %polly.indvar544.us, %smin809
  br i1 %exitcond810.not, label %polly.loop_exit542.loopexit.us, label %polly.loop_header540.us

polly.loop_exit542.loopexit.us:                   ; preds = %polly.loop_header540.us
  %polly.indvar_next537.us = add nuw nsw i64 %polly.indvar536.us, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next537.us, 50
  br i1 %exitcond811.not, label %polly.loop_exit535, label %polly.loop_header533.us

polly.loop_exit535:                               ; preds = %polly.loop_exit542.loopexit.us, %polly.loop_header527
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %indvars.iv.next808 = add nsw i64 %indvars.iv807, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next531, 8
  br i1 %exitcond812.not, label %polly.loop_exit529, label %polly.loop_header527

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %160 = mul nuw nsw i64 %polly.indvar703, 640
  %161 = trunc i64 %polly.indvar703 to i32
  %broadcast.splatinsert941 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat942 = shufflevector <4 x i32> %broadcast.splatinsert941, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body931

vector.body931:                                   ; preds = %vector.body931, %polly.loop_header700
  %index933 = phi i64 [ 0, %polly.loop_header700 ], [ %index.next934, %vector.body931 ]
  %vec.ind939 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700 ], [ %vec.ind.next940, %vector.body931 ]
  %162 = mul <4 x i32> %vec.ind939, %broadcast.splat942
  %163 = add <4 x i32> %162, <i32 3, i32 3, i32 3, i32 3>
  %164 = urem <4 x i32> %163, <i32 80, i32 80, i32 80, i32 80>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %167 = shl i64 %index933, 3
  %168 = add nuw nsw i64 %167, %160
  %169 = getelementptr i8, i8* %call, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !87, !noalias !89
  %index.next934 = add i64 %index933, 4
  %vec.ind.next940 = add <4 x i32> %vec.ind939, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next934, 32
  br i1 %171, label %polly.loop_exit708, label %vector.body931, !llvm.loop !92

polly.loop_exit708:                               ; preds = %vector.body931
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next704, 32
  br i1 %exitcond836.not, label %polly.loop_header700.1, label %polly.loop_header700

polly.loop_header727:                             ; preds = %polly.loop_exit708.2.2, %polly.loop_exit735
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708.2.2 ]
  %172 = mul nuw nsw i64 %polly.indvar730, 480
  %173 = trunc i64 %polly.indvar730 to i32
  %broadcast.splatinsert1055 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat1056 = shufflevector <4 x i32> %broadcast.splatinsert1055, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %polly.loop_header727
  %index1047 = phi i64 [ 0, %polly.loop_header727 ], [ %index.next1048, %vector.body1045 ]
  %vec.ind1053 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727 ], [ %vec.ind.next1054, %vector.body1045 ]
  %174 = mul <4 x i32> %vec.ind1053, %broadcast.splat1056
  %175 = add <4 x i32> %174, <i32 2, i32 2, i32 2, i32 2>
  %176 = urem <4 x i32> %175, <i32 60, i32 60, i32 60, i32 60>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %179 = shl i64 %index1047, 3
  %180 = add i64 %179, %172
  %181 = getelementptr i8, i8* %call2, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !91, !noalias !93
  %index.next1048 = add i64 %index1047, 4
  %vec.ind.next1054 = add <4 x i32> %vec.ind1053, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next1048, 32
  br i1 %183, label %polly.loop_exit735, label %vector.body1045, !llvm.loop !94

polly.loop_exit735:                               ; preds = %vector.body1045
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond827.not, label %polly.loop_header727.1, label %polly.loop_header727

polly.loop_header753:                             ; preds = %polly.loop_exit735.1.2, %polly.loop_exit761
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735.1.2 ]
  %184 = mul nuw nsw i64 %polly.indvar756, 480
  %185 = trunc i64 %polly.indvar756 to i32
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1123

vector.body1123:                                  ; preds = %vector.body1123, %polly.loop_header753
  %index1125 = phi i64 [ 0, %polly.loop_header753 ], [ %index.next1126, %vector.body1123 ]
  %vec.ind1131 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753 ], [ %vec.ind.next1132, %vector.body1123 ]
  %186 = mul <4 x i32> %vec.ind1131, %broadcast.splat1134
  %187 = add <4 x i32> %186, <i32 1, i32 1, i32 1, i32 1>
  %188 = urem <4 x i32> %187, <i32 80, i32 80, i32 80, i32 80>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %191 = shl i64 %index1125, 3
  %192 = add i64 %191, %184
  %193 = getelementptr i8, i8* %call1, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !90, !noalias !95
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1132 = add <4 x i32> %vec.ind1131, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1126, 32
  br i1 %195, label %polly.loop_exit761, label %vector.body1123, !llvm.loop !96

polly.loop_exit761:                               ; preds = %vector.body1123
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond821.not, label %polly.loop_header753.1, label %polly.loop_header753

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv779.1 = phi i64 [ %indvars.iv.next780.1, %polly.loop_exit219.1 ], [ %indvars.iv, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %196 = shl nsw i64 %polly.indvar214.1, 4
  %197 = sub nsw i64 %98, %196
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %indvars.iv781.1 = phi i64 [ %indvars.iv.next782.1, %polly.loop_exit225.1 ], [ %indvars.iv779.1, %polly.loop_header211.1 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit225.1 ], [ 0, %polly.loop_header211.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv781.1, i64 15)
  %198 = add nsw i64 %polly.indvar220.1, %197
  %polly.loop_guard.1900 = icmp sgt i64 %198, -1
  %199 = add nuw nsw i64 %polly.indvar220.1, %98
  %200 = mul nuw nsw i64 %199, 480
  %201 = mul nuw nsw i64 %199, 640
  br i1 %polly.loop_guard.1900, label %polly.loop_header223.us.1, label %polly.loop_exit225.1

polly.loop_header223.us.1:                        ; preds = %polly.loop_header217.1, %polly.loop_exit231.loopexit.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.loop_exit231.loopexit.us.1 ], [ 0, %polly.loop_header217.1 ]
  %202 = shl i64 %polly.indvar226.us.1, 3
  %203 = add i64 %202, 400
  %204 = add i64 %203, %200
  %scevgep238.us.1 = getelementptr i8, i8* %call2, i64 %204
  %scevgep238239.us.1 = bitcast i8* %scevgep238.us.1 to double*
  %_p_scalar_240.us.1 = load double, double* %scevgep238239.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us.1 = getelementptr i8, i8* %call1, i64 %204
  %scevgep244245.us.1 = bitcast i8* %scevgep244.us.1 to double*
  %_p_scalar_246.us.1 = load double, double* %scevgep244245.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us.1

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1, %polly.loop_header223.us.1
  %polly.indvar232.us.1 = phi i64 [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ], [ 0, %polly.loop_header223.us.1 ]
  %205 = add nuw nsw i64 %polly.indvar232.us.1, %196
  %206 = mul nuw nsw i64 %205, 480
  %207 = add nuw nsw i64 %206, %203
  %scevgep235.us.1 = getelementptr i8, i8* %call1, i64 %207
  %scevgep235236.us.1 = bitcast i8* %scevgep235.us.1 to double*
  %_p_scalar_237.us.1 = load double, double* %scevgep235236.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_240.us.1, %_p_scalar_237.us.1
  %scevgep241.us.1 = getelementptr i8, i8* %call2, i64 %207
  %scevgep241242.us.1 = bitcast i8* %scevgep241.us.1 to double*
  %_p_scalar_243.us.1 = load double, double* %scevgep241242.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_246.us.1, %_p_scalar_243.us.1
  %208 = shl i64 %205, 3
  %209 = add nuw nsw i64 %208, %201
  %scevgep247.us.1 = getelementptr i8, i8* %call, i64 %209
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
  %exitcond783.1.not = icmp eq i64 %polly.indvar_next227.us.1, 10
  br i1 %exitcond783.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.us.1

polly.loop_exit225.1:                             ; preds = %polly.loop_exit231.loopexit.us.1, %polly.loop_header217.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %indvars.iv.next782.1 = add nsw i64 %indvars.iv781.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar_next221.1, 8
  br i1 %exitcond784.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next780.1 = add nsw i64 %indvars.iv779.1, -16
  %exitcond785.1.not = icmp eq i64 %polly.indvar214.1, %97
  br i1 %exitcond785.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond786.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond786.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header365.1:                           ; preds = %polly.loop_exit373, %polly.loop_exit373.1
  %indvars.iv791.1 = phi i64 [ %indvars.iv.next792.1, %polly.loop_exit373.1 ], [ %indvars.iv789, %polly.loop_exit373 ]
  %polly.indvar368.1 = phi i64 [ %polly.indvar_next369.1, %polly.loop_exit373.1 ], [ 0, %polly.loop_exit373 ]
  %210 = shl nsw i64 %polly.indvar368.1, 4
  %211 = sub nsw i64 %122, %210
  br label %polly.loop_header371.1

polly.loop_header371.1:                           ; preds = %polly.loop_exit379.1, %polly.loop_header365.1
  %indvars.iv793.1 = phi i64 [ %indvars.iv.next794.1, %polly.loop_exit379.1 ], [ %indvars.iv791.1, %polly.loop_header365.1 ]
  %polly.indvar374.1 = phi i64 [ %polly.indvar_next375.1, %polly.loop_exit379.1 ], [ 0, %polly.loop_header365.1 ]
  %smin795.1 = call i64 @llvm.smin.i64(i64 %indvars.iv793.1, i64 15)
  %212 = add nsw i64 %polly.indvar374.1, %211
  %polly.loop_guard387.1902 = icmp sgt i64 %212, -1
  %213 = add nuw nsw i64 %polly.indvar374.1, %122
  %214 = mul nuw nsw i64 %213, 480
  %215 = mul nuw nsw i64 %213, 640
  br i1 %polly.loop_guard387.1902, label %polly.loop_header377.us.1, label %polly.loop_exit379.1

polly.loop_header377.us.1:                        ; preds = %polly.loop_header371.1, %polly.loop_exit386.loopexit.us.1
  %polly.indvar380.us.1 = phi i64 [ %polly.indvar_next381.us.1, %polly.loop_exit386.loopexit.us.1 ], [ 0, %polly.loop_header371.1 ]
  %216 = shl i64 %polly.indvar380.us.1, 3
  %217 = add i64 %216, 400
  %218 = add i64 %217, %214
  %scevgep394.us.1 = getelementptr i8, i8* %call2, i64 %218
  %scevgep394395.us.1 = bitcast i8* %scevgep394.us.1 to double*
  %_p_scalar_396.us.1 = load double, double* %scevgep394395.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us.1 = getelementptr i8, i8* %call1, i64 %218
  %scevgep400401.us.1 = bitcast i8* %scevgep400.us.1 to double*
  %_p_scalar_402.us.1 = load double, double* %scevgep400401.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us.1

polly.loop_header384.us.1:                        ; preds = %polly.loop_header384.us.1, %polly.loop_header377.us.1
  %polly.indvar388.us.1 = phi i64 [ %polly.indvar_next389.us.1, %polly.loop_header384.us.1 ], [ 0, %polly.loop_header377.us.1 ]
  %219 = add nuw nsw i64 %polly.indvar388.us.1, %210
  %220 = mul nuw nsw i64 %219, 480
  %221 = add nuw nsw i64 %220, %217
  %scevgep391.us.1 = getelementptr i8, i8* %call1, i64 %221
  %scevgep391392.us.1 = bitcast i8* %scevgep391.us.1 to double*
  %_p_scalar_393.us.1 = load double, double* %scevgep391392.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_396.us.1, %_p_scalar_393.us.1
  %scevgep397.us.1 = getelementptr i8, i8* %call2, i64 %221
  %scevgep397398.us.1 = bitcast i8* %scevgep397.us.1 to double*
  %_p_scalar_399.us.1 = load double, double* %scevgep397398.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_402.us.1, %_p_scalar_399.us.1
  %222 = shl i64 %219, 3
  %223 = add nuw nsw i64 %222, %215
  %scevgep403.us.1 = getelementptr i8, i8* %call, i64 %223
  %scevgep403404.us.1 = bitcast i8* %scevgep403.us.1 to double*
  %_p_scalar_405.us.1 = load double, double* %scevgep403404.us.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_405.us.1
  store double %p_add42.i79.us.1, double* %scevgep403404.us.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us.1 = add nuw nsw i64 %polly.indvar388.us.1, 1
  %exitcond796.1.not = icmp eq i64 %polly.indvar388.us.1, %smin795.1
  br i1 %exitcond796.1.not, label %polly.loop_exit386.loopexit.us.1, label %polly.loop_header384.us.1

polly.loop_exit386.loopexit.us.1:                 ; preds = %polly.loop_header384.us.1
  %polly.indvar_next381.us.1 = add nuw nsw i64 %polly.indvar380.us.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar_next381.us.1, 10
  br i1 %exitcond797.1.not, label %polly.loop_exit379.1, label %polly.loop_header377.us.1

polly.loop_exit379.1:                             ; preds = %polly.loop_exit386.loopexit.us.1, %polly.loop_header371.1
  %polly.indvar_next375.1 = add nuw nsw i64 %polly.indvar374.1, 1
  %indvars.iv.next794.1 = add nsw i64 %indvars.iv793.1, 1
  %exitcond798.1.not = icmp eq i64 %polly.indvar_next375.1, 8
  br i1 %exitcond798.1.not, label %polly.loop_exit373.1, label %polly.loop_header371.1

polly.loop_exit373.1:                             ; preds = %polly.loop_exit379.1
  %polly.indvar_next369.1 = add nuw nsw i64 %polly.indvar368.1, 1
  %indvars.iv.next792.1 = add nsw i64 %indvars.iv791.1, -16
  %exitcond799.1.not = icmp eq i64 %polly.indvar368.1, %121
  br i1 %exitcond799.1.not, label %polly.loop_exit367.1, label %polly.loop_header365.1

polly.loop_exit367.1:                             ; preds = %polly.loop_exit373.1
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next790 = add nuw nsw i64 %indvars.iv789, 8
  %exitcond800.not = icmp eq i64 %polly.indvar_next356, 10
  br i1 %exitcond800.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header521.1:                           ; preds = %polly.loop_exit529, %polly.loop_exit529.1
  %indvars.iv805.1 = phi i64 [ %indvars.iv.next806.1, %polly.loop_exit529.1 ], [ %indvars.iv803, %polly.loop_exit529 ]
  %polly.indvar524.1 = phi i64 [ %polly.indvar_next525.1, %polly.loop_exit529.1 ], [ 0, %polly.loop_exit529 ]
  %224 = shl nsw i64 %polly.indvar524.1, 4
  %225 = sub nsw i64 %146, %224
  br label %polly.loop_header527.1

polly.loop_header527.1:                           ; preds = %polly.loop_exit535.1, %polly.loop_header521.1
  %indvars.iv807.1 = phi i64 [ %indvars.iv.next808.1, %polly.loop_exit535.1 ], [ %indvars.iv805.1, %polly.loop_header521.1 ]
  %polly.indvar530.1 = phi i64 [ %polly.indvar_next531.1, %polly.loop_exit535.1 ], [ 0, %polly.loop_header521.1 ]
  %smin809.1 = call i64 @llvm.smin.i64(i64 %indvars.iv807.1, i64 15)
  %226 = add nsw i64 %polly.indvar530.1, %225
  %polly.loop_guard543.1904 = icmp sgt i64 %226, -1
  %227 = add nuw nsw i64 %polly.indvar530.1, %146
  %228 = mul nuw nsw i64 %227, 480
  %229 = mul nuw nsw i64 %227, 640
  br i1 %polly.loop_guard543.1904, label %polly.loop_header533.us.1, label %polly.loop_exit535.1

polly.loop_header533.us.1:                        ; preds = %polly.loop_header527.1, %polly.loop_exit542.loopexit.us.1
  %polly.indvar536.us.1 = phi i64 [ %polly.indvar_next537.us.1, %polly.loop_exit542.loopexit.us.1 ], [ 0, %polly.loop_header527.1 ]
  %230 = shl i64 %polly.indvar536.us.1, 3
  %231 = add i64 %230, 400
  %232 = add i64 %231, %228
  %scevgep550.us.1 = getelementptr i8, i8* %call2, i64 %232
  %scevgep550551.us.1 = bitcast i8* %scevgep550.us.1 to double*
  %_p_scalar_552.us.1 = load double, double* %scevgep550551.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us.1 = getelementptr i8, i8* %call1, i64 %232
  %scevgep556557.us.1 = bitcast i8* %scevgep556.us.1 to double*
  %_p_scalar_558.us.1 = load double, double* %scevgep556557.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us.1

polly.loop_header540.us.1:                        ; preds = %polly.loop_header540.us.1, %polly.loop_header533.us.1
  %polly.indvar544.us.1 = phi i64 [ %polly.indvar_next545.us.1, %polly.loop_header540.us.1 ], [ 0, %polly.loop_header533.us.1 ]
  %233 = add nuw nsw i64 %polly.indvar544.us.1, %224
  %234 = mul nuw nsw i64 %233, 480
  %235 = add nuw nsw i64 %234, %231
  %scevgep547.us.1 = getelementptr i8, i8* %call1, i64 %235
  %scevgep547548.us.1 = bitcast i8* %scevgep547.us.1 to double*
  %_p_scalar_549.us.1 = load double, double* %scevgep547548.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_552.us.1, %_p_scalar_549.us.1
  %scevgep553.us.1 = getelementptr i8, i8* %call2, i64 %235
  %scevgep553554.us.1 = bitcast i8* %scevgep553.us.1 to double*
  %_p_scalar_555.us.1 = load double, double* %scevgep553554.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_558.us.1, %_p_scalar_555.us.1
  %236 = shl i64 %233, 3
  %237 = add nuw nsw i64 %236, %229
  %scevgep559.us.1 = getelementptr i8, i8* %call, i64 %237
  %scevgep559560.us.1 = bitcast i8* %scevgep559.us.1 to double*
  %_p_scalar_561.us.1 = load double, double* %scevgep559560.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_561.us.1
  store double %p_add42.i.us.1, double* %scevgep559560.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us.1 = add nuw nsw i64 %polly.indvar544.us.1, 1
  %exitcond810.1.not = icmp eq i64 %polly.indvar544.us.1, %smin809.1
  br i1 %exitcond810.1.not, label %polly.loop_exit542.loopexit.us.1, label %polly.loop_header540.us.1

polly.loop_exit542.loopexit.us.1:                 ; preds = %polly.loop_header540.us.1
  %polly.indvar_next537.us.1 = add nuw nsw i64 %polly.indvar536.us.1, 1
  %exitcond811.1.not = icmp eq i64 %polly.indvar_next537.us.1, 10
  br i1 %exitcond811.1.not, label %polly.loop_exit535.1, label %polly.loop_header533.us.1

polly.loop_exit535.1:                             ; preds = %polly.loop_exit542.loopexit.us.1, %polly.loop_header527.1
  %polly.indvar_next531.1 = add nuw nsw i64 %polly.indvar530.1, 1
  %indvars.iv.next808.1 = add nsw i64 %indvars.iv807.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar_next531.1, 8
  br i1 %exitcond812.1.not, label %polly.loop_exit529.1, label %polly.loop_header527.1

polly.loop_exit529.1:                             ; preds = %polly.loop_exit535.1
  %polly.indvar_next525.1 = add nuw nsw i64 %polly.indvar524.1, 1
  %indvars.iv.next806.1 = add nsw i64 %indvars.iv805.1, -16
  %exitcond813.1.not = icmp eq i64 %polly.indvar524.1, %145
  br i1 %exitcond813.1.not, label %polly.loop_exit523.1, label %polly.loop_header521.1

polly.loop_exit523.1:                             ; preds = %polly.loop_exit529.1
  %polly.indvar_next512 = add nuw nsw i64 %polly.indvar511, 1
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 8
  %exitcond814.not = icmp eq i64 %polly.indvar_next512, 10
  br i1 %exitcond814.not, label %kernel_syr2k.exit, label %polly.loop_header508

polly.loop_header753.1:                           ; preds = %polly.loop_exit761, %polly.loop_exit761.1
  %polly.indvar756.1 = phi i64 [ %polly.indvar_next757.1, %polly.loop_exit761.1 ], [ 0, %polly.loop_exit761 ]
  %238 = mul nuw nsw i64 %polly.indvar756.1, 480
  %239 = trunc i64 %polly.indvar756.1 to i32
  %broadcast.splatinsert1145 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1146 = shufflevector <4 x i32> %broadcast.splatinsert1145, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %polly.loop_header753.1
  %index1139 = phi i64 [ 0, %polly.loop_header753.1 ], [ %index.next1140, %vector.body1137 ]
  %vec.ind1143 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1 ], [ %vec.ind.next1144, %vector.body1137 ]
  %240 = add nuw nsw <4 x i64> %vec.ind1143, <i64 32, i64 32, i64 32, i64 32>
  %241 = trunc <4 x i64> %240 to <4 x i32>
  %242 = mul <4 x i32> %broadcast.splat1146, %241
  %243 = add <4 x i32> %242, <i32 1, i32 1, i32 1, i32 1>
  %244 = urem <4 x i32> %243, <i32 80, i32 80, i32 80, i32 80>
  %245 = sitofp <4 x i32> %244 to <4 x double>
  %246 = fmul fast <4 x double> %245, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %247 = extractelement <4 x i64> %240, i32 0
  %248 = shl i64 %247, 3
  %249 = add i64 %248, %238
  %250 = getelementptr i8, i8* %call1, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %246, <4 x double>* %251, align 8, !alias.scope !90, !noalias !95
  %index.next1140 = add i64 %index1139, 4
  %vec.ind.next1144 = add <4 x i64> %vec.ind1143, <i64 4, i64 4, i64 4, i64 4>
  %252 = icmp eq i64 %index.next1140, 28
  br i1 %252, label %polly.loop_exit761.1, label %vector.body1137, !llvm.loop !97

polly.loop_exit761.1:                             ; preds = %vector.body1137
  %polly.indvar_next757.1 = add nuw nsw i64 %polly.indvar756.1, 1
  %exitcond821.1.not = icmp eq i64 %polly.indvar_next757.1, 32
  br i1 %exitcond821.1.not, label %polly.loop_header753.1844, label %polly.loop_header753.1

polly.loop_header753.1844:                        ; preds = %polly.loop_exit761.1, %polly.loop_exit761.1855
  %polly.indvar756.1843 = phi i64 [ %polly.indvar_next757.1853, %polly.loop_exit761.1855 ], [ 0, %polly.loop_exit761.1 ]
  %253 = add nuw nsw i64 %polly.indvar756.1843, 32
  %254 = mul nuw nsw i64 %253, 480
  %255 = trunc i64 %253 to i32
  %broadcast.splatinsert1159 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat1160 = shufflevector <4 x i32> %broadcast.splatinsert1159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1149

vector.body1149:                                  ; preds = %vector.body1149, %polly.loop_header753.1844
  %index1151 = phi i64 [ 0, %polly.loop_header753.1844 ], [ %index.next1152, %vector.body1149 ]
  %vec.ind1157 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.1844 ], [ %vec.ind.next1158, %vector.body1149 ]
  %256 = mul <4 x i32> %vec.ind1157, %broadcast.splat1160
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 80, i32 80, i32 80, i32 80>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %261 = shl i64 %index1151, 3
  %262 = add i64 %261, %254
  %263 = getelementptr i8, i8* %call1, i64 %262
  %264 = bitcast i8* %263 to <4 x double>*
  store <4 x double> %260, <4 x double>* %264, align 8, !alias.scope !90, !noalias !95
  %index.next1152 = add i64 %index1151, 4
  %vec.ind.next1158 = add <4 x i32> %vec.ind1157, <i32 4, i32 4, i32 4, i32 4>
  %265 = icmp eq i64 %index.next1152, 32
  br i1 %265, label %polly.loop_exit761.1855, label %vector.body1149, !llvm.loop !98

polly.loop_exit761.1855:                          ; preds = %vector.body1149
  %polly.indvar_next757.1853 = add nuw nsw i64 %polly.indvar756.1843, 1
  %exitcond821.1854.not = icmp eq i64 %polly.indvar_next757.1853, 32
  br i1 %exitcond821.1854.not, label %polly.loop_header753.1.1, label %polly.loop_header753.1844

polly.loop_header753.1.1:                         ; preds = %polly.loop_exit761.1855, %polly.loop_exit761.1.1
  %polly.indvar756.1.1 = phi i64 [ %polly.indvar_next757.1.1, %polly.loop_exit761.1.1 ], [ 0, %polly.loop_exit761.1855 ]
  %266 = add nuw nsw i64 %polly.indvar756.1.1, 32
  %267 = mul nuw nsw i64 %266, 480
  %268 = trunc i64 %266 to i32
  %broadcast.splatinsert1171 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1172 = shufflevector <4 x i32> %broadcast.splatinsert1171, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %polly.loop_header753.1.1
  %index1165 = phi i64 [ 0, %polly.loop_header753.1.1 ], [ %index.next1166, %vector.body1163 ]
  %vec.ind1169 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.1 ], [ %vec.ind.next1170, %vector.body1163 ]
  %269 = add nuw nsw <4 x i64> %vec.ind1169, <i64 32, i64 32, i64 32, i64 32>
  %270 = trunc <4 x i64> %269 to <4 x i32>
  %271 = mul <4 x i32> %broadcast.splat1172, %270
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 80, i32 80, i32 80, i32 80>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %276 = extractelement <4 x i64> %269, i32 0
  %277 = shl i64 %276, 3
  %278 = add i64 %277, %267
  %279 = getelementptr i8, i8* %call1, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %275, <4 x double>* %280, align 8, !alias.scope !90, !noalias !95
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1170 = add <4 x i64> %vec.ind1169, <i64 4, i64 4, i64 4, i64 4>
  %281 = icmp eq i64 %index.next1166, 28
  br i1 %281, label %polly.loop_exit761.1.1, label %vector.body1163, !llvm.loop !99

polly.loop_exit761.1.1:                           ; preds = %vector.body1163
  %polly.indvar_next757.1.1 = add nuw nsw i64 %polly.indvar756.1.1, 1
  %exitcond821.1.1.not = icmp eq i64 %polly.indvar_next757.1.1, 32
  br i1 %exitcond821.1.1.not, label %polly.loop_header753.2, label %polly.loop_header753.1.1

polly.loop_header753.2:                           ; preds = %polly.loop_exit761.1.1, %polly.loop_exit761.2
  %polly.indvar756.2 = phi i64 [ %polly.indvar_next757.2, %polly.loop_exit761.2 ], [ 0, %polly.loop_exit761.1.1 ]
  %282 = add nuw nsw i64 %polly.indvar756.2, 64
  %283 = mul nuw nsw i64 %282, 480
  %284 = trunc i64 %282 to i32
  %broadcast.splatinsert1185 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1186 = shufflevector <4 x i32> %broadcast.splatinsert1185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %polly.loop_header753.2
  %index1177 = phi i64 [ 0, %polly.loop_header753.2 ], [ %index.next1178, %vector.body1175 ]
  %vec.ind1183 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.2 ], [ %vec.ind.next1184, %vector.body1175 ]
  %285 = mul <4 x i32> %vec.ind1183, %broadcast.splat1186
  %286 = add <4 x i32> %285, <i32 1, i32 1, i32 1, i32 1>
  %287 = urem <4 x i32> %286, <i32 80, i32 80, i32 80, i32 80>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %290 = shl i64 %index1177, 3
  %291 = add i64 %290, %283
  %292 = getelementptr i8, i8* %call1, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %289, <4 x double>* %293, align 8, !alias.scope !90, !noalias !95
  %index.next1178 = add i64 %index1177, 4
  %vec.ind.next1184 = add <4 x i32> %vec.ind1183, <i32 4, i32 4, i32 4, i32 4>
  %294 = icmp eq i64 %index.next1178, 32
  br i1 %294, label %polly.loop_exit761.2, label %vector.body1175, !llvm.loop !100

polly.loop_exit761.2:                             ; preds = %vector.body1175
  %polly.indvar_next757.2 = add nuw nsw i64 %polly.indvar756.2, 1
  %exitcond821.2.not = icmp eq i64 %polly.indvar_next757.2, 16
  br i1 %exitcond821.2.not, label %polly.loop_header753.1.2, label %polly.loop_header753.2

polly.loop_header753.1.2:                         ; preds = %polly.loop_exit761.2, %polly.loop_exit761.1.2
  %polly.indvar756.1.2 = phi i64 [ %polly.indvar_next757.1.2, %polly.loop_exit761.1.2 ], [ 0, %polly.loop_exit761.2 ]
  %295 = add nuw nsw i64 %polly.indvar756.1.2, 64
  %296 = mul nuw nsw i64 %295, 480
  %297 = trunc i64 %295 to i32
  %broadcast.splatinsert1197 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1198 = shufflevector <4 x i32> %broadcast.splatinsert1197, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %polly.loop_header753.1.2
  %index1191 = phi i64 [ 0, %polly.loop_header753.1.2 ], [ %index.next1192, %vector.body1189 ]
  %vec.ind1195 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.2 ], [ %vec.ind.next1196, %vector.body1189 ]
  %298 = add nuw nsw <4 x i64> %vec.ind1195, <i64 32, i64 32, i64 32, i64 32>
  %299 = trunc <4 x i64> %298 to <4 x i32>
  %300 = mul <4 x i32> %broadcast.splat1198, %299
  %301 = add <4 x i32> %300, <i32 1, i32 1, i32 1, i32 1>
  %302 = urem <4 x i32> %301, <i32 80, i32 80, i32 80, i32 80>
  %303 = sitofp <4 x i32> %302 to <4 x double>
  %304 = fmul fast <4 x double> %303, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %305 = extractelement <4 x i64> %298, i32 0
  %306 = shl i64 %305, 3
  %307 = add i64 %306, %296
  %308 = getelementptr i8, i8* %call1, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %304, <4 x double>* %309, align 8, !alias.scope !90, !noalias !95
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1196 = add <4 x i64> %vec.ind1195, <i64 4, i64 4, i64 4, i64 4>
  %310 = icmp eq i64 %index.next1192, 28
  br i1 %310, label %polly.loop_exit761.1.2, label %vector.body1189, !llvm.loop !101

polly.loop_exit761.1.2:                           ; preds = %vector.body1189
  %polly.indvar_next757.1.2 = add nuw nsw i64 %polly.indvar756.1.2, 1
  %exitcond821.1.2.not = icmp eq i64 %polly.indvar_next757.1.2, 16
  br i1 %exitcond821.1.2.not, label %init_array.exit, label %polly.loop_header753.1.2

polly.loop_header727.1:                           ; preds = %polly.loop_exit735, %polly.loop_exit735.1
  %polly.indvar730.1 = phi i64 [ %polly.indvar_next731.1, %polly.loop_exit735.1 ], [ 0, %polly.loop_exit735 ]
  %311 = mul nuw nsw i64 %polly.indvar730.1, 480
  %312 = trunc i64 %polly.indvar730.1 to i32
  %broadcast.splatinsert1067 = insertelement <4 x i32> poison, i32 %312, i32 0
  %broadcast.splat1068 = shufflevector <4 x i32> %broadcast.splatinsert1067, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1059

vector.body1059:                                  ; preds = %vector.body1059, %polly.loop_header727.1
  %index1061 = phi i64 [ 0, %polly.loop_header727.1 ], [ %index.next1062, %vector.body1059 ]
  %vec.ind1065 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1 ], [ %vec.ind.next1066, %vector.body1059 ]
  %313 = add nuw nsw <4 x i64> %vec.ind1065, <i64 32, i64 32, i64 32, i64 32>
  %314 = trunc <4 x i64> %313 to <4 x i32>
  %315 = mul <4 x i32> %broadcast.splat1068, %314
  %316 = add <4 x i32> %315, <i32 2, i32 2, i32 2, i32 2>
  %317 = urem <4 x i32> %316, <i32 60, i32 60, i32 60, i32 60>
  %318 = sitofp <4 x i32> %317 to <4 x double>
  %319 = fmul fast <4 x double> %318, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %320 = extractelement <4 x i64> %313, i32 0
  %321 = shl i64 %320, 3
  %322 = add i64 %321, %311
  %323 = getelementptr i8, i8* %call2, i64 %322
  %324 = bitcast i8* %323 to <4 x double>*
  store <4 x double> %319, <4 x double>* %324, align 8, !alias.scope !91, !noalias !93
  %index.next1062 = add i64 %index1061, 4
  %vec.ind.next1066 = add <4 x i64> %vec.ind1065, <i64 4, i64 4, i64 4, i64 4>
  %325 = icmp eq i64 %index.next1062, 28
  br i1 %325, label %polly.loop_exit735.1, label %vector.body1059, !llvm.loop !102

polly.loop_exit735.1:                             ; preds = %vector.body1059
  %polly.indvar_next731.1 = add nuw nsw i64 %polly.indvar730.1, 1
  %exitcond827.1.not = icmp eq i64 %polly.indvar_next731.1, 32
  br i1 %exitcond827.1.not, label %polly.loop_header727.1858, label %polly.loop_header727.1

polly.loop_header727.1858:                        ; preds = %polly.loop_exit735.1, %polly.loop_exit735.1869
  %polly.indvar730.1857 = phi i64 [ %polly.indvar_next731.1867, %polly.loop_exit735.1869 ], [ 0, %polly.loop_exit735.1 ]
  %326 = add nuw nsw i64 %polly.indvar730.1857, 32
  %327 = mul nuw nsw i64 %326, 480
  %328 = trunc i64 %326 to i32
  %broadcast.splatinsert1081 = insertelement <4 x i32> poison, i32 %328, i32 0
  %broadcast.splat1082 = shufflevector <4 x i32> %broadcast.splatinsert1081, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %polly.loop_header727.1858
  %index1073 = phi i64 [ 0, %polly.loop_header727.1858 ], [ %index.next1074, %vector.body1071 ]
  %vec.ind1079 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.1858 ], [ %vec.ind.next1080, %vector.body1071 ]
  %329 = mul <4 x i32> %vec.ind1079, %broadcast.splat1082
  %330 = add <4 x i32> %329, <i32 2, i32 2, i32 2, i32 2>
  %331 = urem <4 x i32> %330, <i32 60, i32 60, i32 60, i32 60>
  %332 = sitofp <4 x i32> %331 to <4 x double>
  %333 = fmul fast <4 x double> %332, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %334 = shl i64 %index1073, 3
  %335 = add i64 %334, %327
  %336 = getelementptr i8, i8* %call2, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %333, <4 x double>* %337, align 8, !alias.scope !91, !noalias !93
  %index.next1074 = add i64 %index1073, 4
  %vec.ind.next1080 = add <4 x i32> %vec.ind1079, <i32 4, i32 4, i32 4, i32 4>
  %338 = icmp eq i64 %index.next1074, 32
  br i1 %338, label %polly.loop_exit735.1869, label %vector.body1071, !llvm.loop !103

polly.loop_exit735.1869:                          ; preds = %vector.body1071
  %polly.indvar_next731.1867 = add nuw nsw i64 %polly.indvar730.1857, 1
  %exitcond827.1868.not = icmp eq i64 %polly.indvar_next731.1867, 32
  br i1 %exitcond827.1868.not, label %polly.loop_header727.1.1, label %polly.loop_header727.1858

polly.loop_header727.1.1:                         ; preds = %polly.loop_exit735.1869, %polly.loop_exit735.1.1
  %polly.indvar730.1.1 = phi i64 [ %polly.indvar_next731.1.1, %polly.loop_exit735.1.1 ], [ 0, %polly.loop_exit735.1869 ]
  %339 = add nuw nsw i64 %polly.indvar730.1.1, 32
  %340 = mul nuw nsw i64 %339, 480
  %341 = trunc i64 %339 to i32
  %broadcast.splatinsert1093 = insertelement <4 x i32> poison, i32 %341, i32 0
  %broadcast.splat1094 = shufflevector <4 x i32> %broadcast.splatinsert1093, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %polly.loop_header727.1.1
  %index1087 = phi i64 [ 0, %polly.loop_header727.1.1 ], [ %index.next1088, %vector.body1085 ]
  %vec.ind1091 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.1 ], [ %vec.ind.next1092, %vector.body1085 ]
  %342 = add nuw nsw <4 x i64> %vec.ind1091, <i64 32, i64 32, i64 32, i64 32>
  %343 = trunc <4 x i64> %342 to <4 x i32>
  %344 = mul <4 x i32> %broadcast.splat1094, %343
  %345 = add <4 x i32> %344, <i32 2, i32 2, i32 2, i32 2>
  %346 = urem <4 x i32> %345, <i32 60, i32 60, i32 60, i32 60>
  %347 = sitofp <4 x i32> %346 to <4 x double>
  %348 = fmul fast <4 x double> %347, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %349 = extractelement <4 x i64> %342, i32 0
  %350 = shl i64 %349, 3
  %351 = add i64 %350, %340
  %352 = getelementptr i8, i8* %call2, i64 %351
  %353 = bitcast i8* %352 to <4 x double>*
  store <4 x double> %348, <4 x double>* %353, align 8, !alias.scope !91, !noalias !93
  %index.next1088 = add i64 %index1087, 4
  %vec.ind.next1092 = add <4 x i64> %vec.ind1091, <i64 4, i64 4, i64 4, i64 4>
  %354 = icmp eq i64 %index.next1088, 28
  br i1 %354, label %polly.loop_exit735.1.1, label %vector.body1085, !llvm.loop !104

polly.loop_exit735.1.1:                           ; preds = %vector.body1085
  %polly.indvar_next731.1.1 = add nuw nsw i64 %polly.indvar730.1.1, 1
  %exitcond827.1.1.not = icmp eq i64 %polly.indvar_next731.1.1, 32
  br i1 %exitcond827.1.1.not, label %polly.loop_header727.2, label %polly.loop_header727.1.1

polly.loop_header727.2:                           ; preds = %polly.loop_exit735.1.1, %polly.loop_exit735.2
  %polly.indvar730.2 = phi i64 [ %polly.indvar_next731.2, %polly.loop_exit735.2 ], [ 0, %polly.loop_exit735.1.1 ]
  %355 = add nuw nsw i64 %polly.indvar730.2, 64
  %356 = mul nuw nsw i64 %355, 480
  %357 = trunc i64 %355 to i32
  %broadcast.splatinsert1107 = insertelement <4 x i32> poison, i32 %357, i32 0
  %broadcast.splat1108 = shufflevector <4 x i32> %broadcast.splatinsert1107, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %polly.loop_header727.2
  %index1099 = phi i64 [ 0, %polly.loop_header727.2 ], [ %index.next1100, %vector.body1097 ]
  %vec.ind1105 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.2 ], [ %vec.ind.next1106, %vector.body1097 ]
  %358 = mul <4 x i32> %vec.ind1105, %broadcast.splat1108
  %359 = add <4 x i32> %358, <i32 2, i32 2, i32 2, i32 2>
  %360 = urem <4 x i32> %359, <i32 60, i32 60, i32 60, i32 60>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %363 = shl i64 %index1099, 3
  %364 = add i64 %363, %356
  %365 = getelementptr i8, i8* %call2, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %362, <4 x double>* %366, align 8, !alias.scope !91, !noalias !93
  %index.next1100 = add i64 %index1099, 4
  %vec.ind.next1106 = add <4 x i32> %vec.ind1105, <i32 4, i32 4, i32 4, i32 4>
  %367 = icmp eq i64 %index.next1100, 32
  br i1 %367, label %polly.loop_exit735.2, label %vector.body1097, !llvm.loop !105

polly.loop_exit735.2:                             ; preds = %vector.body1097
  %polly.indvar_next731.2 = add nuw nsw i64 %polly.indvar730.2, 1
  %exitcond827.2.not = icmp eq i64 %polly.indvar_next731.2, 16
  br i1 %exitcond827.2.not, label %polly.loop_header727.1.2, label %polly.loop_header727.2

polly.loop_header727.1.2:                         ; preds = %polly.loop_exit735.2, %polly.loop_exit735.1.2
  %polly.indvar730.1.2 = phi i64 [ %polly.indvar_next731.1.2, %polly.loop_exit735.1.2 ], [ 0, %polly.loop_exit735.2 ]
  %368 = add nuw nsw i64 %polly.indvar730.1.2, 64
  %369 = mul nuw nsw i64 %368, 480
  %370 = trunc i64 %368 to i32
  %broadcast.splatinsert1119 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1120 = shufflevector <4 x i32> %broadcast.splatinsert1119, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %polly.loop_header727.1.2
  %index1113 = phi i64 [ 0, %polly.loop_header727.1.2 ], [ %index.next1114, %vector.body1111 ]
  %vec.ind1117 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.2 ], [ %vec.ind.next1118, %vector.body1111 ]
  %371 = add nuw nsw <4 x i64> %vec.ind1117, <i64 32, i64 32, i64 32, i64 32>
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat1120, %372
  %374 = add <4 x i32> %373, <i32 2, i32 2, i32 2, i32 2>
  %375 = urem <4 x i32> %374, <i32 60, i32 60, i32 60, i32 60>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %378 = extractelement <4 x i64> %371, i32 0
  %379 = shl i64 %378, 3
  %380 = add i64 %379, %369
  %381 = getelementptr i8, i8* %call2, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %377, <4 x double>* %382, align 8, !alias.scope !91, !noalias !93
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1118 = add <4 x i64> %vec.ind1117, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next1114, 28
  br i1 %383, label %polly.loop_exit735.1.2, label %vector.body1111, !llvm.loop !106

polly.loop_exit735.1.2:                           ; preds = %vector.body1111
  %polly.indvar_next731.1.2 = add nuw nsw i64 %polly.indvar730.1.2, 1
  %exitcond827.1.2.not = icmp eq i64 %polly.indvar_next731.1.2, 16
  br i1 %exitcond827.1.2.not, label %polly.loop_header753, label %polly.loop_header727.1.2

polly.loop_header700.1:                           ; preds = %polly.loop_exit708, %polly.loop_exit708.1
  %polly.indvar703.1 = phi i64 [ %polly.indvar_next704.1, %polly.loop_exit708.1 ], [ 0, %polly.loop_exit708 ]
  %384 = mul nuw nsw i64 %polly.indvar703.1, 640
  %385 = trunc i64 %polly.indvar703.1 to i32
  %broadcast.splatinsert953 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat954 = shufflevector <4 x i32> %broadcast.splatinsert953, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body945

vector.body945:                                   ; preds = %vector.body945, %polly.loop_header700.1
  %index947 = phi i64 [ 0, %polly.loop_header700.1 ], [ %index.next948, %vector.body945 ]
  %vec.ind951 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1 ], [ %vec.ind.next952, %vector.body945 ]
  %386 = add nuw nsw <4 x i64> %vec.ind951, <i64 32, i64 32, i64 32, i64 32>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat954, %387
  %389 = add <4 x i32> %388, <i32 3, i32 3, i32 3, i32 3>
  %390 = urem <4 x i32> %389, <i32 80, i32 80, i32 80, i32 80>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %384
  %396 = getelementptr i8, i8* %call, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !87, !noalias !89
  %index.next948 = add i64 %index947, 4
  %vec.ind.next952 = add <4 x i64> %vec.ind951, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next948, 32
  br i1 %398, label %polly.loop_exit708.1, label %vector.body945, !llvm.loop !107

polly.loop_exit708.1:                             ; preds = %vector.body945
  %polly.indvar_next704.1 = add nuw nsw i64 %polly.indvar703.1, 1
  %exitcond836.1.not = icmp eq i64 %polly.indvar_next704.1, 32
  br i1 %exitcond836.1.not, label %polly.loop_header700.2, label %polly.loop_header700.1

polly.loop_header700.2:                           ; preds = %polly.loop_exit708.1, %polly.loop_exit708.2
  %polly.indvar703.2 = phi i64 [ %polly.indvar_next704.2, %polly.loop_exit708.2 ], [ 0, %polly.loop_exit708.1 ]
  %399 = mul nuw nsw i64 %polly.indvar703.2, 640
  %400 = trunc i64 %polly.indvar703.2 to i32
  %broadcast.splatinsert965 = insertelement <4 x i32> poison, i32 %400, i32 0
  %broadcast.splat966 = shufflevector <4 x i32> %broadcast.splatinsert965, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %polly.loop_header700.2
  %index959 = phi i64 [ 0, %polly.loop_header700.2 ], [ %index.next960, %vector.body957 ]
  %vec.ind963 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2 ], [ %vec.ind.next964, %vector.body957 ]
  %401 = add nuw nsw <4 x i64> %vec.ind963, <i64 64, i64 64, i64 64, i64 64>
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat966, %402
  %404 = add <4 x i32> %403, <i32 3, i32 3, i32 3, i32 3>
  %405 = urem <4 x i32> %404, <i32 80, i32 80, i32 80, i32 80>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %399
  %411 = getelementptr i8, i8* %call, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !87, !noalias !89
  %index.next960 = add i64 %index959, 4
  %vec.ind.next964 = add <4 x i64> %vec.ind963, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next960, 16
  br i1 %413, label %polly.loop_exit708.2, label %vector.body957, !llvm.loop !108

polly.loop_exit708.2:                             ; preds = %vector.body957
  %polly.indvar_next704.2 = add nuw nsw i64 %polly.indvar703.2, 1
  %exitcond836.2.not = icmp eq i64 %polly.indvar_next704.2, 32
  br i1 %exitcond836.2.not, label %polly.loop_header700.1872, label %polly.loop_header700.2

polly.loop_header700.1872:                        ; preds = %polly.loop_exit708.2, %polly.loop_exit708.1883
  %polly.indvar703.1871 = phi i64 [ %polly.indvar_next704.1881, %polly.loop_exit708.1883 ], [ 0, %polly.loop_exit708.2 ]
  %414 = add nuw nsw i64 %polly.indvar703.1871, 32
  %415 = mul nuw nsw i64 %414, 640
  %416 = trunc i64 %414 to i32
  %broadcast.splatinsert979 = insertelement <4 x i32> poison, i32 %416, i32 0
  %broadcast.splat980 = shufflevector <4 x i32> %broadcast.splatinsert979, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %polly.loop_header700.1872
  %index971 = phi i64 [ 0, %polly.loop_header700.1872 ], [ %index.next972, %vector.body969 ]
  %vec.ind977 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.1872 ], [ %vec.ind.next978, %vector.body969 ]
  %417 = mul <4 x i32> %vec.ind977, %broadcast.splat980
  %418 = add <4 x i32> %417, <i32 3, i32 3, i32 3, i32 3>
  %419 = urem <4 x i32> %418, <i32 80, i32 80, i32 80, i32 80>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %422 = shl i64 %index971, 3
  %423 = add nuw nsw i64 %422, %415
  %424 = getelementptr i8, i8* %call, i64 %423
  %425 = bitcast i8* %424 to <4 x double>*
  store <4 x double> %421, <4 x double>* %425, align 8, !alias.scope !87, !noalias !89
  %index.next972 = add i64 %index971, 4
  %vec.ind.next978 = add <4 x i32> %vec.ind977, <i32 4, i32 4, i32 4, i32 4>
  %426 = icmp eq i64 %index.next972, 32
  br i1 %426, label %polly.loop_exit708.1883, label %vector.body969, !llvm.loop !109

polly.loop_exit708.1883:                          ; preds = %vector.body969
  %polly.indvar_next704.1881 = add nuw nsw i64 %polly.indvar703.1871, 1
  %exitcond836.1882.not = icmp eq i64 %polly.indvar_next704.1881, 32
  br i1 %exitcond836.1882.not, label %polly.loop_header700.1.1, label %polly.loop_header700.1872

polly.loop_header700.1.1:                         ; preds = %polly.loop_exit708.1883, %polly.loop_exit708.1.1
  %polly.indvar703.1.1 = phi i64 [ %polly.indvar_next704.1.1, %polly.loop_exit708.1.1 ], [ 0, %polly.loop_exit708.1883 ]
  %427 = add nuw nsw i64 %polly.indvar703.1.1, 32
  %428 = mul nuw nsw i64 %427, 640
  %429 = trunc i64 %427 to i32
  %broadcast.splatinsert991 = insertelement <4 x i32> poison, i32 %429, i32 0
  %broadcast.splat992 = shufflevector <4 x i32> %broadcast.splatinsert991, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %polly.loop_header700.1.1
  %index985 = phi i64 [ 0, %polly.loop_header700.1.1 ], [ %index.next986, %vector.body983 ]
  %vec.ind989 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.1 ], [ %vec.ind.next990, %vector.body983 ]
  %430 = add nuw nsw <4 x i64> %vec.ind989, <i64 32, i64 32, i64 32, i64 32>
  %431 = trunc <4 x i64> %430 to <4 x i32>
  %432 = mul <4 x i32> %broadcast.splat992, %431
  %433 = add <4 x i32> %432, <i32 3, i32 3, i32 3, i32 3>
  %434 = urem <4 x i32> %433, <i32 80, i32 80, i32 80, i32 80>
  %435 = sitofp <4 x i32> %434 to <4 x double>
  %436 = fmul fast <4 x double> %435, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %437 = extractelement <4 x i64> %430, i32 0
  %438 = shl i64 %437, 3
  %439 = add nuw nsw i64 %438, %428
  %440 = getelementptr i8, i8* %call, i64 %439
  %441 = bitcast i8* %440 to <4 x double>*
  store <4 x double> %436, <4 x double>* %441, align 8, !alias.scope !87, !noalias !89
  %index.next986 = add i64 %index985, 4
  %vec.ind.next990 = add <4 x i64> %vec.ind989, <i64 4, i64 4, i64 4, i64 4>
  %442 = icmp eq i64 %index.next986, 32
  br i1 %442, label %polly.loop_exit708.1.1, label %vector.body983, !llvm.loop !110

polly.loop_exit708.1.1:                           ; preds = %vector.body983
  %polly.indvar_next704.1.1 = add nuw nsw i64 %polly.indvar703.1.1, 1
  %exitcond836.1.1.not = icmp eq i64 %polly.indvar_next704.1.1, 32
  br i1 %exitcond836.1.1.not, label %polly.loop_header700.2.1, label %polly.loop_header700.1.1

polly.loop_header700.2.1:                         ; preds = %polly.loop_exit708.1.1, %polly.loop_exit708.2.1
  %polly.indvar703.2.1 = phi i64 [ %polly.indvar_next704.2.1, %polly.loop_exit708.2.1 ], [ 0, %polly.loop_exit708.1.1 ]
  %443 = add nuw nsw i64 %polly.indvar703.2.1, 32
  %444 = mul nuw nsw i64 %443, 640
  %445 = trunc i64 %443 to i32
  %broadcast.splatinsert1003 = insertelement <4 x i32> poison, i32 %445, i32 0
  %broadcast.splat1004 = shufflevector <4 x i32> %broadcast.splatinsert1003, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %polly.loop_header700.2.1
  %index997 = phi i64 [ 0, %polly.loop_header700.2.1 ], [ %index.next998, %vector.body995 ]
  %vec.ind1001 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.1 ], [ %vec.ind.next1002, %vector.body995 ]
  %446 = add nuw nsw <4 x i64> %vec.ind1001, <i64 64, i64 64, i64 64, i64 64>
  %447 = trunc <4 x i64> %446 to <4 x i32>
  %448 = mul <4 x i32> %broadcast.splat1004, %447
  %449 = add <4 x i32> %448, <i32 3, i32 3, i32 3, i32 3>
  %450 = urem <4 x i32> %449, <i32 80, i32 80, i32 80, i32 80>
  %451 = sitofp <4 x i32> %450 to <4 x double>
  %452 = fmul fast <4 x double> %451, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %453 = extractelement <4 x i64> %446, i32 0
  %454 = shl i64 %453, 3
  %455 = add nuw nsw i64 %454, %444
  %456 = getelementptr i8, i8* %call, i64 %455
  %457 = bitcast i8* %456 to <4 x double>*
  store <4 x double> %452, <4 x double>* %457, align 8, !alias.scope !87, !noalias !89
  %index.next998 = add i64 %index997, 4
  %vec.ind.next1002 = add <4 x i64> %vec.ind1001, <i64 4, i64 4, i64 4, i64 4>
  %458 = icmp eq i64 %index.next998, 16
  br i1 %458, label %polly.loop_exit708.2.1, label %vector.body995, !llvm.loop !111

polly.loop_exit708.2.1:                           ; preds = %vector.body995
  %polly.indvar_next704.2.1 = add nuw nsw i64 %polly.indvar703.2.1, 1
  %exitcond836.2.1.not = icmp eq i64 %polly.indvar_next704.2.1, 32
  br i1 %exitcond836.2.1.not, label %polly.loop_header700.2886, label %polly.loop_header700.2.1

polly.loop_header700.2886:                        ; preds = %polly.loop_exit708.2.1, %polly.loop_exit708.2897
  %polly.indvar703.2885 = phi i64 [ %polly.indvar_next704.2895, %polly.loop_exit708.2897 ], [ 0, %polly.loop_exit708.2.1 ]
  %459 = add nuw nsw i64 %polly.indvar703.2885, 64
  %460 = mul nuw nsw i64 %459, 640
  %461 = trunc i64 %459 to i32
  %broadcast.splatinsert1017 = insertelement <4 x i32> poison, i32 %461, i32 0
  %broadcast.splat1018 = shufflevector <4 x i32> %broadcast.splatinsert1017, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %polly.loop_header700.2886
  %index1009 = phi i64 [ 0, %polly.loop_header700.2886 ], [ %index.next1010, %vector.body1007 ]
  %vec.ind1015 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.2886 ], [ %vec.ind.next1016, %vector.body1007 ]
  %462 = mul <4 x i32> %vec.ind1015, %broadcast.splat1018
  %463 = add <4 x i32> %462, <i32 3, i32 3, i32 3, i32 3>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %467 = shl i64 %index1009, 3
  %468 = add nuw nsw i64 %467, %460
  %469 = getelementptr i8, i8* %call, i64 %468
  %470 = bitcast i8* %469 to <4 x double>*
  store <4 x double> %466, <4 x double>* %470, align 8, !alias.scope !87, !noalias !89
  %index.next1010 = add i64 %index1009, 4
  %vec.ind.next1016 = add <4 x i32> %vec.ind1015, <i32 4, i32 4, i32 4, i32 4>
  %471 = icmp eq i64 %index.next1010, 32
  br i1 %471, label %polly.loop_exit708.2897, label %vector.body1007, !llvm.loop !112

polly.loop_exit708.2897:                          ; preds = %vector.body1007
  %polly.indvar_next704.2895 = add nuw nsw i64 %polly.indvar703.2885, 1
  %exitcond836.2896.not = icmp eq i64 %polly.indvar_next704.2895, 16
  br i1 %exitcond836.2896.not, label %polly.loop_header700.1.2, label %polly.loop_header700.2886

polly.loop_header700.1.2:                         ; preds = %polly.loop_exit708.2897, %polly.loop_exit708.1.2
  %polly.indvar703.1.2 = phi i64 [ %polly.indvar_next704.1.2, %polly.loop_exit708.1.2 ], [ 0, %polly.loop_exit708.2897 ]
  %472 = add nuw nsw i64 %polly.indvar703.1.2, 64
  %473 = mul nuw nsw i64 %472, 640
  %474 = trunc i64 %472 to i32
  %broadcast.splatinsert1029 = insertelement <4 x i32> poison, i32 %474, i32 0
  %broadcast.splat1030 = shufflevector <4 x i32> %broadcast.splatinsert1029, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %polly.loop_header700.1.2
  %index1023 = phi i64 [ 0, %polly.loop_header700.1.2 ], [ %index.next1024, %vector.body1021 ]
  %vec.ind1027 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.2 ], [ %vec.ind.next1028, %vector.body1021 ]
  %475 = add nuw nsw <4 x i64> %vec.ind1027, <i64 32, i64 32, i64 32, i64 32>
  %476 = trunc <4 x i64> %475 to <4 x i32>
  %477 = mul <4 x i32> %broadcast.splat1030, %476
  %478 = add <4 x i32> %477, <i32 3, i32 3, i32 3, i32 3>
  %479 = urem <4 x i32> %478, <i32 80, i32 80, i32 80, i32 80>
  %480 = sitofp <4 x i32> %479 to <4 x double>
  %481 = fmul fast <4 x double> %480, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %482 = extractelement <4 x i64> %475, i32 0
  %483 = shl i64 %482, 3
  %484 = add nuw nsw i64 %483, %473
  %485 = getelementptr i8, i8* %call, i64 %484
  %486 = bitcast i8* %485 to <4 x double>*
  store <4 x double> %481, <4 x double>* %486, align 8, !alias.scope !87, !noalias !89
  %index.next1024 = add i64 %index1023, 4
  %vec.ind.next1028 = add <4 x i64> %vec.ind1027, <i64 4, i64 4, i64 4, i64 4>
  %487 = icmp eq i64 %index.next1024, 32
  br i1 %487, label %polly.loop_exit708.1.2, label %vector.body1021, !llvm.loop !113

polly.loop_exit708.1.2:                           ; preds = %vector.body1021
  %polly.indvar_next704.1.2 = add nuw nsw i64 %polly.indvar703.1.2, 1
  %exitcond836.1.2.not = icmp eq i64 %polly.indvar_next704.1.2, 16
  br i1 %exitcond836.1.2.not, label %polly.loop_header700.2.2, label %polly.loop_header700.1.2

polly.loop_header700.2.2:                         ; preds = %polly.loop_exit708.1.2, %polly.loop_exit708.2.2
  %polly.indvar703.2.2 = phi i64 [ %polly.indvar_next704.2.2, %polly.loop_exit708.2.2 ], [ 0, %polly.loop_exit708.1.2 ]
  %488 = add nuw nsw i64 %polly.indvar703.2.2, 64
  %489 = mul nuw nsw i64 %488, 640
  %490 = trunc i64 %488 to i32
  %broadcast.splatinsert1041 = insertelement <4 x i32> poison, i32 %490, i32 0
  %broadcast.splat1042 = shufflevector <4 x i32> %broadcast.splatinsert1041, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %polly.loop_header700.2.2
  %index1035 = phi i64 [ 0, %polly.loop_header700.2.2 ], [ %index.next1036, %vector.body1033 ]
  %vec.ind1039 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.2 ], [ %vec.ind.next1040, %vector.body1033 ]
  %491 = add nuw nsw <4 x i64> %vec.ind1039, <i64 64, i64 64, i64 64, i64 64>
  %492 = trunc <4 x i64> %491 to <4 x i32>
  %493 = mul <4 x i32> %broadcast.splat1042, %492
  %494 = add <4 x i32> %493, <i32 3, i32 3, i32 3, i32 3>
  %495 = urem <4 x i32> %494, <i32 80, i32 80, i32 80, i32 80>
  %496 = sitofp <4 x i32> %495 to <4 x double>
  %497 = fmul fast <4 x double> %496, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %498 = extractelement <4 x i64> %491, i32 0
  %499 = shl i64 %498, 3
  %500 = add nuw nsw i64 %499, %489
  %501 = getelementptr i8, i8* %call, i64 %500
  %502 = bitcast i8* %501 to <4 x double>*
  store <4 x double> %497, <4 x double>* %502, align 8, !alias.scope !87, !noalias !89
  %index.next1036 = add i64 %index1035, 4
  %vec.ind.next1040 = add <4 x i64> %vec.ind1039, <i64 4, i64 4, i64 4, i64 4>
  %503 = icmp eq i64 %index.next1036, 16
  br i1 %503, label %polly.loop_exit708.2.2, label %vector.body1033, !llvm.loop !114

polly.loop_exit708.2.2:                           ; preds = %vector.body1033
  %polly.indvar_next704.2.2 = add nuw nsw i64 %polly.indvar703.2.2, 1
  %exitcond836.2.2.not = icmp eq i64 %polly.indvar_next704.2.2, 16
  br i1 %exitcond836.2.2.not, label %polly.loop_header727, label %polly.loop_header700.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 16}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 50}
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
!44 = !{!"llvm.loop.tile.size", i32 8}
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
