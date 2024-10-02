; ModuleID = 'syr2k_recreations//mmp_syr2k_S_142.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_142.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #5
  %call681 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #5
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #5
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1542 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1542, %call2
  %polly.access.call2562 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2562, %call1
  %2 = or i1 %0, %1
  %polly.access.call582 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call582, %call2
  %4 = icmp ule i8* %polly.access.call2562, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call582, %call1
  %8 = icmp ule i8* %polly.access.call1542, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header667, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep865 = getelementptr i8, i8* %call2, i64 %12
  %scevgep864 = getelementptr i8, i8* %call2, i64 %11
  %scevgep863 = getelementptr i8, i8* %call1, i64 %12
  %scevgep862 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep862, %scevgep865
  %bound1 = icmp ult i8* %scevgep864, %scevgep863
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
  br i1 %exitcond18.not.i, label %vector.ph869, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph869:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert876 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat877 = shufflevector <4 x i64> %broadcast.splatinsert876, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body868

vector.body868:                                   ; preds = %vector.body868, %vector.ph869
  %index870 = phi i64 [ 0, %vector.ph869 ], [ %index.next871, %vector.body868 ]
  %vec.ind874 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph869 ], [ %vec.ind.next875, %vector.body868 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind874, %broadcast.splat877
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv7.i, i64 %index870
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next871 = add i64 %index870, 4
  %vec.ind.next875 = add <4 x i64> %vec.ind874, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next871, 80
  br i1 %40, label %for.inc41.i, label %vector.body868, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body868
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph869, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit728.1.2
  tail call void (...) @polybench_timer_start() #5
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header471, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1225, label %vector.ph1151

vector.ph1151:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1151
  %index1152 = phi i64 [ 0, %vector.ph1151 ], [ %index.next1153, %vector.body1150 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i, i64 %index1152
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1153 = add i64 %index1152, 4
  %46 = icmp eq i64 %index.next1153, %n.vec
  br i1 %46, label %middle.block1148, label %vector.body1150, !llvm.loop !18

middle.block1148:                                 ; preds = %vector.body1150
  %cmp.n1155 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1155, label %for.inc6.i, label %for.body3.i46.preheader1225

for.body3.i46.preheader1225:                      ; preds = %for.body3.i46.preheader, %middle.block1148
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1148 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1225, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1225 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1148, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit501.3
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header327, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1171 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1171, label %for.body3.i60.preheader1223, label %vector.ph1172

vector.ph1172:                                    ; preds = %for.body3.i60.preheader
  %n.vec1174 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %vector.ph1172
  %index1175 = phi i64 [ 0, %vector.ph1172 ], [ %index.next1176, %vector.body1170 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i52, i64 %index1175
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1179 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1179, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1176 = add i64 %index1175, 4
  %57 = icmp eq i64 %index.next1176, %n.vec1174
  br i1 %57, label %middle.block1168, label %vector.body1170, !llvm.loop !51

middle.block1168:                                 ; preds = %vector.body1170
  %cmp.n1178 = icmp eq i64 %indvars.iv21.i52, %n.vec1174
  br i1 %cmp.n1178, label %for.inc6.i63, label %for.body3.i60.preheader1223

for.body3.i60.preheader1223:                      ; preds = %for.body3.i60.preheader, %middle.block1168
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1174, %middle.block1168 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1223, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1223 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1168, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit357.3
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1197 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1197, label %for.body3.i99.preheader1221, label %vector.ph1198

vector.ph1198:                                    ; preds = %for.body3.i99.preheader
  %n.vec1200 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %vector.ph1198
  %index1201 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1202, %vector.body1196 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i91, i64 %index1201
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1205 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1205, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1202 = add i64 %index1201, 4
  %68 = icmp eq i64 %index.next1202, %n.vec1200
  br i1 %68, label %middle.block1194, label %vector.body1196, !llvm.loop !53

middle.block1194:                                 ; preds = %vector.body1196
  %cmp.n1204 = icmp eq i64 %indvars.iv21.i91, %n.vec1200
  br i1 %cmp.n1204, label %for.inc6.i102, label %for.body3.i99.preheader1221

for.body3.i99.preheader1221:                      ; preds = %for.body3.i99.preheader, %middle.block1194
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1200, %middle.block1194 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1221, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1221 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1194, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.3
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !55
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #6
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
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
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #6
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !57

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !58

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #6
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #5
  tail call void @free(i8* %call1) #5
  tail call void @free(i8* %call2) #5
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1209 = phi i64 [ %indvar.next1210, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1209, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1211 = icmp ult i64 %88, 4
  br i1 %min.iters.check1211, label %polly.loop_header191.preheader, label %vector.ph1212

vector.ph1212:                                    ; preds = %polly.loop_header
  %n.vec1214 = and i64 %88, -4
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1212
  %index1215 = phi i64 [ 0, %vector.ph1212 ], [ %index.next1216, %vector.body1208 ]
  %90 = shl nuw nsw i64 %index1215, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1219 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1219, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1216 = add i64 %index1215, 4
  %95 = icmp eq i64 %index.next1216, %n.vec1214
  br i1 %95, label %middle.block1206, label %vector.body1208, !llvm.loop !64

middle.block1206:                                 ; preds = %vector.body1208
  %cmp.n1218 = icmp eq i64 %88, %n.vec1214
  br i1 %cmp.n1218, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1206
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1214, %middle.block1206 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1206
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond749.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1210 = add i64 %indvar1209, 1
  br i1 %exitcond749.not, label %polly.loop_header205, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond748.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond748.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header205:                             ; preds = %polly.loop_exit193, %polly.loop_exit213
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 1, %polly.loop_exit193 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar208, 480
  %scevgep226 = getelementptr i8, i8* %call2, i64 %97
  %scevgep233 = getelementptr i8, i8* %call1, i64 %97
  %98 = mul nuw nsw i64 %polly.indvar208, 640
  %scevgep237 = getelementptr i8, i8* %call, i64 %98
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond746.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond746.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %99 = shl i64 %polly.indvar214, 3
  %scevgep227 = getelementptr i8, i8* %scevgep226, i64 %99
  %scevgep227228 = bitcast i8* %scevgep227 to double*
  %_p_scalar_229 = load double, double* %scevgep227228, align 8, !alias.scope !63, !noalias !67
  %scevgep234 = getelementptr i8, i8* %scevgep233, i64 %99
  %scevgep234235 = bitcast i8* %scevgep234 to double*
  %_p_scalar_236 = load double, double* %scevgep234235, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond745.not = icmp eq i64 %polly.indvar_next215, 16
  br i1 %exitcond745.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %100 = mul nuw nsw i64 %polly.indvar220, 480
  %101 = add nuw nsw i64 %100, %99
  %scevgep223 = getelementptr i8, i8* %call1, i64 %101
  %scevgep223224 = bitcast i8* %scevgep223 to double*
  %_p_scalar_225 = load double, double* %scevgep223224, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112 = fmul fast double %_p_scalar_229, %_p_scalar_225
  %scevgep230 = getelementptr i8, i8* %call2, i64 %101
  %scevgep230231 = bitcast i8* %scevgep230 to double*
  %_p_scalar_232 = load double, double* %scevgep230231, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114 = fmul fast double %_p_scalar_236, %_p_scalar_232
  %102 = shl nuw nsw i64 %polly.indvar220, 3
  %scevgep238 = getelementptr i8, i8* %scevgep237, i64 %102
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_240
  store double %p_add42.i118, double* %scevgep238239, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header327:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit335
  %indvar1183 = phi i64 [ %indvar.next1184, %polly.loop_exit335 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar330 = phi i64 [ %polly.indvar_next331, %polly.loop_exit335 ], [ 1, %kernel_syr2k.exit ]
  %103 = add i64 %indvar1183, 1
  %104 = mul nuw nsw i64 %polly.indvar330, 640
  %scevgep339 = getelementptr i8, i8* %call, i64 %104
  %min.iters.check1185 = icmp ult i64 %103, 4
  br i1 %min.iters.check1185, label %polly.loop_header333.preheader, label %vector.ph1186

vector.ph1186:                                    ; preds = %polly.loop_header327
  %n.vec1188 = and i64 %103, -4
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1190, %vector.body1182 ]
  %105 = shl nuw nsw i64 %index1189, 3
  %106 = getelementptr i8, i8* %scevgep339, i64 %105
  %107 = bitcast i8* %106 to <4 x double>*
  %wide.load1193 = load <4 x double>, <4 x double>* %107, align 8, !alias.scope !69, !noalias !71
  %108 = fmul fast <4 x double> %wide.load1193, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %109 = bitcast i8* %106 to <4 x double>*
  store <4 x double> %108, <4 x double>* %109, align 8, !alias.scope !69, !noalias !71
  %index.next1190 = add i64 %index1189, 4
  %110 = icmp eq i64 %index.next1190, %n.vec1188
  br i1 %110, label %middle.block1180, label %vector.body1182, !llvm.loop !74

middle.block1180:                                 ; preds = %vector.body1182
  %cmp.n1192 = icmp eq i64 %103, %n.vec1188
  br i1 %cmp.n1192, label %polly.loop_exit335, label %polly.loop_header333.preheader

polly.loop_header333.preheader:                   ; preds = %polly.loop_header327, %middle.block1180
  %polly.indvar336.ph = phi i64 [ 0, %polly.loop_header327 ], [ %n.vec1188, %middle.block1180 ]
  br label %polly.loop_header333

polly.loop_exit335:                               ; preds = %polly.loop_header333, %middle.block1180
  %polly.indvar_next331 = add nuw nsw i64 %polly.indvar330, 1
  %exitcond760.not = icmp eq i64 %polly.indvar_next331, 80
  %indvar.next1184 = add i64 %indvar1183, 1
  br i1 %exitcond760.not, label %polly.loop_header349, label %polly.loop_header327

polly.loop_header333:                             ; preds = %polly.loop_header333.preheader, %polly.loop_header333
  %polly.indvar336 = phi i64 [ %polly.indvar_next337, %polly.loop_header333 ], [ %polly.indvar336.ph, %polly.loop_header333.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar336, 3
  %scevgep340 = getelementptr i8, i8* %scevgep339, i64 %111
  %scevgep340341 = bitcast i8* %scevgep340 to double*
  %_p_scalar_342 = load double, double* %scevgep340341, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_342, 1.200000e+00
  store double %p_mul.i57, double* %scevgep340341, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next337 = add nuw nsw i64 %polly.indvar336, 1
  %exitcond759.not = icmp eq i64 %polly.indvar_next337, %polly.indvar330
  br i1 %exitcond759.not, label %polly.loop_exit335, label %polly.loop_header333, !llvm.loop !75

polly.loop_header349:                             ; preds = %polly.loop_exit335, %polly.loop_exit357
  %indvars.iv750 = phi i64 [ %indvars.iv.next751, %polly.loop_exit357 ], [ 1, %polly.loop_exit335 ]
  %polly.indvar352 = phi i64 [ %polly.indvar_next353, %polly.loop_exit357 ], [ 0, %polly.loop_exit335 ]
  %112 = mul nuw nsw i64 %polly.indvar352, 480
  %scevgep370 = getelementptr i8, i8* %call2, i64 %112
  %scevgep377 = getelementptr i8, i8* %call1, i64 %112
  %113 = mul nuw nsw i64 %polly.indvar352, 640
  %scevgep381 = getelementptr i8, i8* %call, i64 %113
  br label %polly.loop_header355

polly.loop_exit357:                               ; preds = %polly.loop_exit363
  %polly.indvar_next353 = add nuw nsw i64 %polly.indvar352, 1
  %indvars.iv.next751 = add nuw nsw i64 %indvars.iv750, 1
  %exitcond757.not = icmp eq i64 %polly.indvar_next353, 80
  br i1 %exitcond757.not, label %polly.loop_header349.1, label %polly.loop_header349

polly.loop_header355:                             ; preds = %polly.loop_exit363, %polly.loop_header349
  %polly.indvar358 = phi i64 [ 0, %polly.loop_header349 ], [ %polly.indvar_next359, %polly.loop_exit363 ]
  %114 = shl i64 %polly.indvar358, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %114
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !73, !noalias !76
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %114
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header361

polly.loop_exit363:                               ; preds = %polly.loop_header361
  %polly.indvar_next359 = add nuw nsw i64 %polly.indvar358, 1
  %exitcond756.not = icmp eq i64 %polly.indvar_next359, 16
  br i1 %exitcond756.not, label %polly.loop_exit357, label %polly.loop_header355

polly.loop_header361:                             ; preds = %polly.loop_header361, %polly.loop_header355
  %polly.indvar364 = phi i64 [ 0, %polly.loop_header355 ], [ %polly.indvar_next365, %polly.loop_header361 ]
  %115 = mul nuw nsw i64 %polly.indvar364, 480
  %116 = add nuw nsw i64 %115, %114
  %scevgep367 = getelementptr i8, i8* %call1, i64 %116
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73 = fmul fast double %_p_scalar_373, %_p_scalar_369
  %scevgep374 = getelementptr i8, i8* %call2, i64 %116
  %scevgep374375 = bitcast i8* %scevgep374 to double*
  %_p_scalar_376 = load double, double* %scevgep374375, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75 = fmul fast double %_p_scalar_380, %_p_scalar_376
  %117 = shl nuw nsw i64 %polly.indvar364, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %117
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_384
  store double %p_add42.i79, double* %scevgep382383, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %exitcond752.not = icmp eq i64 %polly.indvar_next365, %indvars.iv750
  br i1 %exitcond752.not, label %polly.loop_exit363, label %polly.loop_header361

polly.loop_header471:                             ; preds = %init_array.exit, %polly.loop_exit479
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit479 ], [ 0, %init_array.exit ]
  %polly.indvar474 = phi i64 [ %polly.indvar_next475, %polly.loop_exit479 ], [ 1, %init_array.exit ]
  %118 = add i64 %indvar, 1
  %119 = mul nuw nsw i64 %polly.indvar474, 640
  %scevgep483 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1159 = icmp ult i64 %118, 4
  br i1 %min.iters.check1159, label %polly.loop_header477.preheader, label %vector.ph1160

vector.ph1160:                                    ; preds = %polly.loop_header471
  %n.vec1162 = and i64 %118, -4
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %vector.ph1160
  %index1163 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1164, %vector.body1158 ]
  %120 = shl nuw nsw i64 %index1163, 3
  %121 = getelementptr i8, i8* %scevgep483, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1167 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !78, !noalias !80
  %123 = fmul fast <4 x double> %wide.load1167, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !78, !noalias !80
  %index.next1164 = add i64 %index1163, 4
  %125 = icmp eq i64 %index.next1164, %n.vec1162
  br i1 %125, label %middle.block1156, label %vector.body1158, !llvm.loop !83

middle.block1156:                                 ; preds = %vector.body1158
  %cmp.n1166 = icmp eq i64 %118, %n.vec1162
  br i1 %cmp.n1166, label %polly.loop_exit479, label %polly.loop_header477.preheader

polly.loop_header477.preheader:                   ; preds = %polly.loop_header471, %middle.block1156
  %polly.indvar480.ph = phi i64 [ 0, %polly.loop_header471 ], [ %n.vec1162, %middle.block1156 ]
  br label %polly.loop_header477

polly.loop_exit479:                               ; preds = %polly.loop_header477, %middle.block1156
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %exitcond771.not = icmp eq i64 %polly.indvar_next475, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond771.not, label %polly.loop_header493, label %polly.loop_header471

polly.loop_header477:                             ; preds = %polly.loop_header477.preheader, %polly.loop_header477
  %polly.indvar480 = phi i64 [ %polly.indvar_next481, %polly.loop_header477 ], [ %polly.indvar480.ph, %polly.loop_header477.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar480, 3
  %scevgep484 = getelementptr i8, i8* %scevgep483, i64 %126
  %scevgep484485 = bitcast i8* %scevgep484 to double*
  %_p_scalar_486 = load double, double* %scevgep484485, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_486, 1.200000e+00
  store double %p_mul.i, double* %scevgep484485, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next481 = add nuw nsw i64 %polly.indvar480, 1
  %exitcond770.not = icmp eq i64 %polly.indvar_next481, %polly.indvar474
  br i1 %exitcond770.not, label %polly.loop_exit479, label %polly.loop_header477, !llvm.loop !84

polly.loop_header493:                             ; preds = %polly.loop_exit479, %polly.loop_exit501
  %indvars.iv761 = phi i64 [ %indvars.iv.next762, %polly.loop_exit501 ], [ 1, %polly.loop_exit479 ]
  %polly.indvar496 = phi i64 [ %polly.indvar_next497, %polly.loop_exit501 ], [ 0, %polly.loop_exit479 ]
  %127 = mul nuw nsw i64 %polly.indvar496, 480
  %scevgep514 = getelementptr i8, i8* %call2, i64 %127
  %scevgep521 = getelementptr i8, i8* %call1, i64 %127
  %128 = mul nuw nsw i64 %polly.indvar496, 640
  %scevgep525 = getelementptr i8, i8* %call, i64 %128
  br label %polly.loop_header499

polly.loop_exit501:                               ; preds = %polly.loop_exit507
  %polly.indvar_next497 = add nuw nsw i64 %polly.indvar496, 1
  %indvars.iv.next762 = add nuw nsw i64 %indvars.iv761, 1
  %exitcond768.not = icmp eq i64 %polly.indvar_next497, 80
  br i1 %exitcond768.not, label %polly.loop_header493.1, label %polly.loop_header493

polly.loop_header499:                             ; preds = %polly.loop_exit507, %polly.loop_header493
  %polly.indvar502 = phi i64 [ 0, %polly.loop_header493 ], [ %polly.indvar_next503, %polly.loop_exit507 ]
  %129 = shl i64 %polly.indvar502, 3
  %scevgep515 = getelementptr i8, i8* %scevgep514, i64 %129
  %scevgep515516 = bitcast i8* %scevgep515 to double*
  %_p_scalar_517 = load double, double* %scevgep515516, align 8, !alias.scope !82, !noalias !85
  %scevgep522 = getelementptr i8, i8* %scevgep521, i64 %129
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header505

polly.loop_exit507:                               ; preds = %polly.loop_header505
  %polly.indvar_next503 = add nuw nsw i64 %polly.indvar502, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next503, 16
  br i1 %exitcond767.not, label %polly.loop_exit501, label %polly.loop_header499

polly.loop_header505:                             ; preds = %polly.loop_header505, %polly.loop_header499
  %polly.indvar508 = phi i64 [ 0, %polly.loop_header499 ], [ %polly.indvar_next509, %polly.loop_header505 ]
  %130 = mul nuw nsw i64 %polly.indvar508, 480
  %131 = add nuw nsw i64 %130, %129
  %scevgep511 = getelementptr i8, i8* %call1, i64 %131
  %scevgep511512 = bitcast i8* %scevgep511 to double*
  %_p_scalar_513 = load double, double* %scevgep511512, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i = fmul fast double %_p_scalar_517, %_p_scalar_513
  %scevgep518 = getelementptr i8, i8* %call2, i64 %131
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i = fmul fast double %_p_scalar_524, %_p_scalar_520
  %132 = shl nuw nsw i64 %polly.indvar508, 3
  %scevgep526 = getelementptr i8, i8* %scevgep525, i64 %132
  %scevgep526527 = bitcast i8* %scevgep526 to double*
  %_p_scalar_528 = load double, double* %scevgep526527, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_528
  store double %p_add42.i, double* %scevgep526527, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %exitcond763.not = icmp eq i64 %polly.indvar_next509, %indvars.iv761
  br i1 %exitcond763.not, label %polly.loop_exit507, label %polly.loop_header505

polly.loop_header667:                             ; preds = %entry, %polly.loop_exit675
  %polly.indvar670 = phi i64 [ %polly.indvar_next671, %polly.loop_exit675 ], [ 0, %entry ]
  %133 = mul nuw nsw i64 %polly.indvar670, 640
  %134 = trunc i64 %polly.indvar670 to i32
  %broadcast.splatinsert890 = insertelement <4 x i32> poison, i32 %134, i32 0
  %broadcast.splat891 = shufflevector <4 x i32> %broadcast.splatinsert890, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body880

vector.body880:                                   ; preds = %vector.body880, %polly.loop_header667
  %index882 = phi i64 [ 0, %polly.loop_header667 ], [ %index.next883, %vector.body880 ]
  %vec.ind888 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header667 ], [ %vec.ind.next889, %vector.body880 ]
  %135 = mul <4 x i32> %vec.ind888, %broadcast.splat891
  %136 = add <4 x i32> %135, <i32 3, i32 3, i32 3, i32 3>
  %137 = urem <4 x i32> %136, <i32 80, i32 80, i32 80, i32 80>
  %138 = sitofp <4 x i32> %137 to <4 x double>
  %139 = fmul fast <4 x double> %138, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %140 = shl i64 %index882, 3
  %141 = add nuw nsw i64 %140, %133
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %139, <4 x double>* %143, align 8, !alias.scope !87, !noalias !89
  %index.next883 = add i64 %index882, 4
  %vec.ind.next889 = add <4 x i32> %vec.ind888, <i32 4, i32 4, i32 4, i32 4>
  %144 = icmp eq i64 %index.next883, 32
  br i1 %144, label %polly.loop_exit675, label %vector.body880, !llvm.loop !92

polly.loop_exit675:                               ; preds = %vector.body880
  %polly.indvar_next671 = add nuw nsw i64 %polly.indvar670, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next671, 32
  br i1 %exitcond791.not, label %polly.loop_header667.1, label %polly.loop_header667

polly.loop_header694:                             ; preds = %polly.loop_exit675.2.2, %polly.loop_exit702
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %polly.loop_exit675.2.2 ]
  %145 = mul nuw nsw i64 %polly.indvar697, 480
  %146 = trunc i64 %polly.indvar697 to i32
  %broadcast.splatinsert1004 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat1005 = shufflevector <4 x i32> %broadcast.splatinsert1004, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %polly.loop_header694
  %index996 = phi i64 [ 0, %polly.loop_header694 ], [ %index.next997, %vector.body994 ]
  %vec.ind1002 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header694 ], [ %vec.ind.next1003, %vector.body994 ]
  %147 = mul <4 x i32> %vec.ind1002, %broadcast.splat1005
  %148 = add <4 x i32> %147, <i32 2, i32 2, i32 2, i32 2>
  %149 = urem <4 x i32> %148, <i32 60, i32 60, i32 60, i32 60>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index996, 3
  %153 = add i64 %152, %145
  %154 = getelementptr i8, i8* %call2, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !91, !noalias !93
  %index.next997 = add i64 %index996, 4
  %vec.ind.next1003 = add <4 x i32> %vec.ind1002, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next997, 32
  br i1 %156, label %polly.loop_exit702, label %vector.body994, !llvm.loop !94

polly.loop_exit702:                               ; preds = %vector.body994
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next698, 32
  br i1 %exitcond782.not, label %polly.loop_header694.1, label %polly.loop_header694

polly.loop_header720:                             ; preds = %polly.loop_exit702.1.2, %polly.loop_exit728
  %polly.indvar723 = phi i64 [ %polly.indvar_next724, %polly.loop_exit728 ], [ 0, %polly.loop_exit702.1.2 ]
  %157 = mul nuw nsw i64 %polly.indvar723, 480
  %158 = trunc i64 %polly.indvar723 to i32
  %broadcast.splatinsert1082 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1083 = shufflevector <4 x i32> %broadcast.splatinsert1082, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1072

vector.body1072:                                  ; preds = %vector.body1072, %polly.loop_header720
  %index1074 = phi i64 [ 0, %polly.loop_header720 ], [ %index.next1075, %vector.body1072 ]
  %vec.ind1080 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header720 ], [ %vec.ind.next1081, %vector.body1072 ]
  %159 = mul <4 x i32> %vec.ind1080, %broadcast.splat1083
  %160 = add <4 x i32> %159, <i32 1, i32 1, i32 1, i32 1>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %164 = shl i64 %index1074, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call1, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !90, !noalias !95
  %index.next1075 = add i64 %index1074, 4
  %vec.ind.next1081 = add <4 x i32> %vec.ind1080, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1075, 32
  br i1 %168, label %polly.loop_exit728, label %vector.body1072, !llvm.loop !96

polly.loop_exit728:                               ; preds = %vector.body1072
  %polly.indvar_next724 = add nuw nsw i64 %polly.indvar723, 1
  %exitcond776.not = icmp eq i64 %polly.indvar_next724, 32
  br i1 %exitcond776.not, label %polly.loop_header720.1, label %polly.loop_header720

polly.loop_header205.1:                           ; preds = %polly.loop_exit213, %polly.loop_exit213.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit213.1 ], [ 1, %polly.loop_exit213 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit213 ]
  %169 = mul nuw nsw i64 %polly.indvar208.1, 480
  %scevgep226.1 = getelementptr i8, i8* %call2, i64 %169
  %scevgep233.1 = getelementptr i8, i8* %call1, i64 %169
  %170 = mul nuw nsw i64 %polly.indvar208.1, 640
  %scevgep237.1 = getelementptr i8, i8* %call, i64 %170
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_exit219.1 ]
  %171 = shl i64 %polly.indvar214.1, 3
  %172 = add i64 %171, 128
  %scevgep227.1 = getelementptr i8, i8* %scevgep226.1, i64 %172
  %scevgep227228.1 = bitcast i8* %scevgep227.1 to double*
  %_p_scalar_229.1 = load double, double* %scevgep227228.1, align 8, !alias.scope !63, !noalias !67
  %scevgep234.1 = getelementptr i8, i8* %scevgep233.1, i64 %172
  %scevgep234235.1 = bitcast i8* %scevgep234.1 to double*
  %_p_scalar_236.1 = load double, double* %scevgep234235.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %173 = mul nuw nsw i64 %polly.indvar220.1, 480
  %174 = add nuw nsw i64 %173, %172
  %scevgep223.1 = getelementptr i8, i8* %call1, i64 %174
  %scevgep223224.1 = bitcast i8* %scevgep223.1 to double*
  %_p_scalar_225.1 = load double, double* %scevgep223224.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1 = fmul fast double %_p_scalar_229.1, %_p_scalar_225.1
  %scevgep230.1 = getelementptr i8, i8* %call2, i64 %174
  %scevgep230231.1 = bitcast i8* %scevgep230.1 to double*
  %_p_scalar_232.1 = load double, double* %scevgep230231.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1 = fmul fast double %_p_scalar_236.1, %_p_scalar_232.1
  %175 = shl nuw nsw i64 %polly.indvar220.1, 3
  %scevgep238.1 = getelementptr i8, i8* %scevgep237.1, i64 %175
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_240.1
  store double %p_add42.i118.1, double* %scevgep238239.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond745.1.not = icmp eq i64 %polly.indvar_next215.1, 16
  br i1 %exitcond745.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond746.1.not = icmp eq i64 %polly.indvar_next209.1, 80
  br i1 %exitcond746.1.not, label %polly.loop_header205.2, label %polly.loop_header205.1

polly.loop_header205.2:                           ; preds = %polly.loop_exit213.1, %polly.loop_exit213.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit213.2 ], [ 1, %polly.loop_exit213.1 ]
  %polly.indvar208.2 = phi i64 [ %polly.indvar_next209.2, %polly.loop_exit213.2 ], [ 0, %polly.loop_exit213.1 ]
  %176 = mul nuw nsw i64 %polly.indvar208.2, 480
  %scevgep226.2 = getelementptr i8, i8* %call2, i64 %176
  %scevgep233.2 = getelementptr i8, i8* %call1, i64 %176
  %177 = mul nuw nsw i64 %polly.indvar208.2, 640
  %scevgep237.2 = getelementptr i8, i8* %call, i64 %177
  br label %polly.loop_header211.2

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.2, %polly.loop_header205.2
  %polly.indvar214.2 = phi i64 [ 0, %polly.loop_header205.2 ], [ %polly.indvar_next215.2, %polly.loop_exit219.2 ]
  %178 = shl i64 %polly.indvar214.2, 3
  %179 = add i64 %178, 256
  %scevgep227.2 = getelementptr i8, i8* %scevgep226.2, i64 %179
  %scevgep227228.2 = bitcast i8* %scevgep227.2 to double*
  %_p_scalar_229.2 = load double, double* %scevgep227228.2, align 8, !alias.scope !63, !noalias !67
  %scevgep234.2 = getelementptr i8, i8* %scevgep233.2, i64 %179
  %scevgep234235.2 = bitcast i8* %scevgep234.2 to double*
  %_p_scalar_236.2 = load double, double* %scevgep234235.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_header217.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_header217.2 ]
  %180 = mul nuw nsw i64 %polly.indvar220.2, 480
  %181 = add nuw nsw i64 %180, %179
  %scevgep223.2 = getelementptr i8, i8* %call1, i64 %181
  %scevgep223224.2 = bitcast i8* %scevgep223.2 to double*
  %_p_scalar_225.2 = load double, double* %scevgep223224.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.2 = fmul fast double %_p_scalar_229.2, %_p_scalar_225.2
  %scevgep230.2 = getelementptr i8, i8* %call2, i64 %181
  %scevgep230231.2 = bitcast i8* %scevgep230.2 to double*
  %_p_scalar_232.2 = load double, double* %scevgep230231.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.2 = fmul fast double %_p_scalar_236.2, %_p_scalar_232.2
  %182 = shl nuw nsw i64 %polly.indvar220.2, 3
  %scevgep238.2 = getelementptr i8, i8* %scevgep237.2, i64 %182
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_240.2
  store double %p_add42.i118.2, double* %scevgep238239.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next221.2, %indvars.iv.2
  br i1 %exitcond.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_header217.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond745.2.not = icmp eq i64 %polly.indvar_next215.2, 16
  br i1 %exitcond745.2.not, label %polly.loop_exit213.2, label %polly.loop_header211.2

polly.loop_exit213.2:                             ; preds = %polly.loop_exit219.2
  %polly.indvar_next209.2 = add nuw nsw i64 %polly.indvar208.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond746.2.not = icmp eq i64 %polly.indvar_next209.2, 80
  br i1 %exitcond746.2.not, label %polly.loop_header205.3, label %polly.loop_header205.2

polly.loop_header205.3:                           ; preds = %polly.loop_exit213.2, %polly.loop_exit213.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit213.3 ], [ 1, %polly.loop_exit213.2 ]
  %polly.indvar208.3 = phi i64 [ %polly.indvar_next209.3, %polly.loop_exit213.3 ], [ 0, %polly.loop_exit213.2 ]
  %183 = mul nuw nsw i64 %polly.indvar208.3, 480
  %scevgep226.3 = getelementptr i8, i8* %call2, i64 %183
  %scevgep233.3 = getelementptr i8, i8* %call1, i64 %183
  %184 = mul nuw nsw i64 %polly.indvar208.3, 640
  %scevgep237.3 = getelementptr i8, i8* %call, i64 %184
  br label %polly.loop_header211.3

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.3, %polly.loop_header205.3
  %polly.indvar214.3 = phi i64 [ 0, %polly.loop_header205.3 ], [ %polly.indvar_next215.3, %polly.loop_exit219.3 ]
  %185 = shl i64 %polly.indvar214.3, 3
  %186 = add i64 %185, 384
  %scevgep227.3 = getelementptr i8, i8* %scevgep226.3, i64 %186
  %scevgep227228.3 = bitcast i8* %scevgep227.3 to double*
  %_p_scalar_229.3 = load double, double* %scevgep227228.3, align 8, !alias.scope !63, !noalias !67
  %scevgep234.3 = getelementptr i8, i8* %scevgep233.3, i64 %186
  %scevgep234235.3 = bitcast i8* %scevgep234.3 to double*
  %_p_scalar_236.3 = load double, double* %scevgep234235.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_header217.3, %polly.loop_header211.3
  %polly.indvar220.3 = phi i64 [ 0, %polly.loop_header211.3 ], [ %polly.indvar_next221.3, %polly.loop_header217.3 ]
  %187 = mul nuw nsw i64 %polly.indvar220.3, 480
  %188 = add nuw nsw i64 %187, %186
  %scevgep223.3 = getelementptr i8, i8* %call1, i64 %188
  %scevgep223224.3 = bitcast i8* %scevgep223.3 to double*
  %_p_scalar_225.3 = load double, double* %scevgep223224.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.3 = fmul fast double %_p_scalar_229.3, %_p_scalar_225.3
  %scevgep230.3 = getelementptr i8, i8* %call2, i64 %188
  %scevgep230231.3 = bitcast i8* %scevgep230.3 to double*
  %_p_scalar_232.3 = load double, double* %scevgep230231.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.3 = fmul fast double %_p_scalar_236.3, %_p_scalar_232.3
  %189 = shl nuw nsw i64 %polly.indvar220.3, 3
  %scevgep238.3 = getelementptr i8, i8* %scevgep237.3, i64 %189
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_240.3
  store double %p_add42.i118.3, double* %scevgep238239.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next221.3, %indvars.iv.3
  br i1 %exitcond.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_header217.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %exitcond745.3.not = icmp eq i64 %polly.indvar_next215.3, 12
  br i1 %exitcond745.3.not, label %polly.loop_exit213.3, label %polly.loop_header211.3

polly.loop_exit213.3:                             ; preds = %polly.loop_exit219.3
  %polly.indvar_next209.3 = add nuw nsw i64 %polly.indvar208.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond746.3.not = icmp eq i64 %polly.indvar_next209.3, 80
  br i1 %exitcond746.3.not, label %kernel_syr2k.exit129, label %polly.loop_header205.3

polly.loop_header349.1:                           ; preds = %polly.loop_exit357, %polly.loop_exit357.1
  %indvars.iv750.1 = phi i64 [ %indvars.iv.next751.1, %polly.loop_exit357.1 ], [ 1, %polly.loop_exit357 ]
  %polly.indvar352.1 = phi i64 [ %polly.indvar_next353.1, %polly.loop_exit357.1 ], [ 0, %polly.loop_exit357 ]
  %190 = mul nuw nsw i64 %polly.indvar352.1, 480
  %scevgep370.1 = getelementptr i8, i8* %call2, i64 %190
  %scevgep377.1 = getelementptr i8, i8* %call1, i64 %190
  %191 = mul nuw nsw i64 %polly.indvar352.1, 640
  %scevgep381.1 = getelementptr i8, i8* %call, i64 %191
  br label %polly.loop_header355.1

polly.loop_header355.1:                           ; preds = %polly.loop_exit363.1, %polly.loop_header349.1
  %polly.indvar358.1 = phi i64 [ 0, %polly.loop_header349.1 ], [ %polly.indvar_next359.1, %polly.loop_exit363.1 ]
  %192 = shl i64 %polly.indvar358.1, 3
  %193 = add i64 %192, 128
  %scevgep371.1 = getelementptr i8, i8* %scevgep370.1, i64 %193
  %scevgep371372.1 = bitcast i8* %scevgep371.1 to double*
  %_p_scalar_373.1 = load double, double* %scevgep371372.1, align 8, !alias.scope !73, !noalias !76
  %scevgep378.1 = getelementptr i8, i8* %scevgep377.1, i64 %193
  %scevgep378379.1 = bitcast i8* %scevgep378.1 to double*
  %_p_scalar_380.1 = load double, double* %scevgep378379.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header361.1

polly.loop_header361.1:                           ; preds = %polly.loop_header361.1, %polly.loop_header355.1
  %polly.indvar364.1 = phi i64 [ 0, %polly.loop_header355.1 ], [ %polly.indvar_next365.1, %polly.loop_header361.1 ]
  %194 = mul nuw nsw i64 %polly.indvar364.1, 480
  %195 = add nuw nsw i64 %194, %193
  %scevgep367.1 = getelementptr i8, i8* %call1, i64 %195
  %scevgep367368.1 = bitcast i8* %scevgep367.1 to double*
  %_p_scalar_369.1 = load double, double* %scevgep367368.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1 = fmul fast double %_p_scalar_373.1, %_p_scalar_369.1
  %scevgep374.1 = getelementptr i8, i8* %call2, i64 %195
  %scevgep374375.1 = bitcast i8* %scevgep374.1 to double*
  %_p_scalar_376.1 = load double, double* %scevgep374375.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1 = fmul fast double %_p_scalar_380.1, %_p_scalar_376.1
  %196 = shl nuw nsw i64 %polly.indvar364.1, 3
  %scevgep382.1 = getelementptr i8, i8* %scevgep381.1, i64 %196
  %scevgep382383.1 = bitcast i8* %scevgep382.1 to double*
  %_p_scalar_384.1 = load double, double* %scevgep382383.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_384.1
  store double %p_add42.i79.1, double* %scevgep382383.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next365.1 = add nuw nsw i64 %polly.indvar364.1, 1
  %exitcond752.1.not = icmp eq i64 %polly.indvar_next365.1, %indvars.iv750.1
  br i1 %exitcond752.1.not, label %polly.loop_exit363.1, label %polly.loop_header361.1

polly.loop_exit363.1:                             ; preds = %polly.loop_header361.1
  %polly.indvar_next359.1 = add nuw nsw i64 %polly.indvar358.1, 1
  %exitcond756.1.not = icmp eq i64 %polly.indvar_next359.1, 16
  br i1 %exitcond756.1.not, label %polly.loop_exit357.1, label %polly.loop_header355.1

polly.loop_exit357.1:                             ; preds = %polly.loop_exit363.1
  %polly.indvar_next353.1 = add nuw nsw i64 %polly.indvar352.1, 1
  %indvars.iv.next751.1 = add nuw nsw i64 %indvars.iv750.1, 1
  %exitcond757.1.not = icmp eq i64 %polly.indvar_next353.1, 80
  br i1 %exitcond757.1.not, label %polly.loop_header349.2, label %polly.loop_header349.1

polly.loop_header349.2:                           ; preds = %polly.loop_exit357.1, %polly.loop_exit357.2
  %indvars.iv750.2 = phi i64 [ %indvars.iv.next751.2, %polly.loop_exit357.2 ], [ 1, %polly.loop_exit357.1 ]
  %polly.indvar352.2 = phi i64 [ %polly.indvar_next353.2, %polly.loop_exit357.2 ], [ 0, %polly.loop_exit357.1 ]
  %197 = mul nuw nsw i64 %polly.indvar352.2, 480
  %scevgep370.2 = getelementptr i8, i8* %call2, i64 %197
  %scevgep377.2 = getelementptr i8, i8* %call1, i64 %197
  %198 = mul nuw nsw i64 %polly.indvar352.2, 640
  %scevgep381.2 = getelementptr i8, i8* %call, i64 %198
  br label %polly.loop_header355.2

polly.loop_header355.2:                           ; preds = %polly.loop_exit363.2, %polly.loop_header349.2
  %polly.indvar358.2 = phi i64 [ 0, %polly.loop_header349.2 ], [ %polly.indvar_next359.2, %polly.loop_exit363.2 ]
  %199 = shl i64 %polly.indvar358.2, 3
  %200 = add i64 %199, 256
  %scevgep371.2 = getelementptr i8, i8* %scevgep370.2, i64 %200
  %scevgep371372.2 = bitcast i8* %scevgep371.2 to double*
  %_p_scalar_373.2 = load double, double* %scevgep371372.2, align 8, !alias.scope !73, !noalias !76
  %scevgep378.2 = getelementptr i8, i8* %scevgep377.2, i64 %200
  %scevgep378379.2 = bitcast i8* %scevgep378.2 to double*
  %_p_scalar_380.2 = load double, double* %scevgep378379.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header361.2

polly.loop_header361.2:                           ; preds = %polly.loop_header361.2, %polly.loop_header355.2
  %polly.indvar364.2 = phi i64 [ 0, %polly.loop_header355.2 ], [ %polly.indvar_next365.2, %polly.loop_header361.2 ]
  %201 = mul nuw nsw i64 %polly.indvar364.2, 480
  %202 = add nuw nsw i64 %201, %200
  %scevgep367.2 = getelementptr i8, i8* %call1, i64 %202
  %scevgep367368.2 = bitcast i8* %scevgep367.2 to double*
  %_p_scalar_369.2 = load double, double* %scevgep367368.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.2 = fmul fast double %_p_scalar_373.2, %_p_scalar_369.2
  %scevgep374.2 = getelementptr i8, i8* %call2, i64 %202
  %scevgep374375.2 = bitcast i8* %scevgep374.2 to double*
  %_p_scalar_376.2 = load double, double* %scevgep374375.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.2 = fmul fast double %_p_scalar_380.2, %_p_scalar_376.2
  %203 = shl nuw nsw i64 %polly.indvar364.2, 3
  %scevgep382.2 = getelementptr i8, i8* %scevgep381.2, i64 %203
  %scevgep382383.2 = bitcast i8* %scevgep382.2 to double*
  %_p_scalar_384.2 = load double, double* %scevgep382383.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_384.2
  store double %p_add42.i79.2, double* %scevgep382383.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next365.2 = add nuw nsw i64 %polly.indvar364.2, 1
  %exitcond752.2.not = icmp eq i64 %polly.indvar_next365.2, %indvars.iv750.2
  br i1 %exitcond752.2.not, label %polly.loop_exit363.2, label %polly.loop_header361.2

polly.loop_exit363.2:                             ; preds = %polly.loop_header361.2
  %polly.indvar_next359.2 = add nuw nsw i64 %polly.indvar358.2, 1
  %exitcond756.2.not = icmp eq i64 %polly.indvar_next359.2, 16
  br i1 %exitcond756.2.not, label %polly.loop_exit357.2, label %polly.loop_header355.2

polly.loop_exit357.2:                             ; preds = %polly.loop_exit363.2
  %polly.indvar_next353.2 = add nuw nsw i64 %polly.indvar352.2, 1
  %indvars.iv.next751.2 = add nuw nsw i64 %indvars.iv750.2, 1
  %exitcond757.2.not = icmp eq i64 %polly.indvar_next353.2, 80
  br i1 %exitcond757.2.not, label %polly.loop_header349.3, label %polly.loop_header349.2

polly.loop_header349.3:                           ; preds = %polly.loop_exit357.2, %polly.loop_exit357.3
  %indvars.iv750.3 = phi i64 [ %indvars.iv.next751.3, %polly.loop_exit357.3 ], [ 1, %polly.loop_exit357.2 ]
  %polly.indvar352.3 = phi i64 [ %polly.indvar_next353.3, %polly.loop_exit357.3 ], [ 0, %polly.loop_exit357.2 ]
  %204 = mul nuw nsw i64 %polly.indvar352.3, 480
  %scevgep370.3 = getelementptr i8, i8* %call2, i64 %204
  %scevgep377.3 = getelementptr i8, i8* %call1, i64 %204
  %205 = mul nuw nsw i64 %polly.indvar352.3, 640
  %scevgep381.3 = getelementptr i8, i8* %call, i64 %205
  br label %polly.loop_header355.3

polly.loop_header355.3:                           ; preds = %polly.loop_exit363.3, %polly.loop_header349.3
  %polly.indvar358.3 = phi i64 [ 0, %polly.loop_header349.3 ], [ %polly.indvar_next359.3, %polly.loop_exit363.3 ]
  %206 = shl i64 %polly.indvar358.3, 3
  %207 = add i64 %206, 384
  %scevgep371.3 = getelementptr i8, i8* %scevgep370.3, i64 %207
  %scevgep371372.3 = bitcast i8* %scevgep371.3 to double*
  %_p_scalar_373.3 = load double, double* %scevgep371372.3, align 8, !alias.scope !73, !noalias !76
  %scevgep378.3 = getelementptr i8, i8* %scevgep377.3, i64 %207
  %scevgep378379.3 = bitcast i8* %scevgep378.3 to double*
  %_p_scalar_380.3 = load double, double* %scevgep378379.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header361.3

polly.loop_header361.3:                           ; preds = %polly.loop_header361.3, %polly.loop_header355.3
  %polly.indvar364.3 = phi i64 [ 0, %polly.loop_header355.3 ], [ %polly.indvar_next365.3, %polly.loop_header361.3 ]
  %208 = mul nuw nsw i64 %polly.indvar364.3, 480
  %209 = add nuw nsw i64 %208, %207
  %scevgep367.3 = getelementptr i8, i8* %call1, i64 %209
  %scevgep367368.3 = bitcast i8* %scevgep367.3 to double*
  %_p_scalar_369.3 = load double, double* %scevgep367368.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.3 = fmul fast double %_p_scalar_373.3, %_p_scalar_369.3
  %scevgep374.3 = getelementptr i8, i8* %call2, i64 %209
  %scevgep374375.3 = bitcast i8* %scevgep374.3 to double*
  %_p_scalar_376.3 = load double, double* %scevgep374375.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.3 = fmul fast double %_p_scalar_380.3, %_p_scalar_376.3
  %210 = shl nuw nsw i64 %polly.indvar364.3, 3
  %scevgep382.3 = getelementptr i8, i8* %scevgep381.3, i64 %210
  %scevgep382383.3 = bitcast i8* %scevgep382.3 to double*
  %_p_scalar_384.3 = load double, double* %scevgep382383.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_384.3
  store double %p_add42.i79.3, double* %scevgep382383.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next365.3 = add nuw nsw i64 %polly.indvar364.3, 1
  %exitcond752.3.not = icmp eq i64 %polly.indvar_next365.3, %indvars.iv750.3
  br i1 %exitcond752.3.not, label %polly.loop_exit363.3, label %polly.loop_header361.3

polly.loop_exit363.3:                             ; preds = %polly.loop_header361.3
  %polly.indvar_next359.3 = add nuw nsw i64 %polly.indvar358.3, 1
  %exitcond756.3.not = icmp eq i64 %polly.indvar_next359.3, 12
  br i1 %exitcond756.3.not, label %polly.loop_exit357.3, label %polly.loop_header355.3

polly.loop_exit357.3:                             ; preds = %polly.loop_exit363.3
  %polly.indvar_next353.3 = add nuw nsw i64 %polly.indvar352.3, 1
  %indvars.iv.next751.3 = add nuw nsw i64 %indvars.iv750.3, 1
  %exitcond757.3.not = icmp eq i64 %polly.indvar_next353.3, 80
  br i1 %exitcond757.3.not, label %kernel_syr2k.exit90, label %polly.loop_header349.3

polly.loop_header493.1:                           ; preds = %polly.loop_exit501, %polly.loop_exit501.1
  %indvars.iv761.1 = phi i64 [ %indvars.iv.next762.1, %polly.loop_exit501.1 ], [ 1, %polly.loop_exit501 ]
  %polly.indvar496.1 = phi i64 [ %polly.indvar_next497.1, %polly.loop_exit501.1 ], [ 0, %polly.loop_exit501 ]
  %211 = mul nuw nsw i64 %polly.indvar496.1, 480
  %scevgep514.1 = getelementptr i8, i8* %call2, i64 %211
  %scevgep521.1 = getelementptr i8, i8* %call1, i64 %211
  %212 = mul nuw nsw i64 %polly.indvar496.1, 640
  %scevgep525.1 = getelementptr i8, i8* %call, i64 %212
  br label %polly.loop_header499.1

polly.loop_header499.1:                           ; preds = %polly.loop_exit507.1, %polly.loop_header493.1
  %polly.indvar502.1 = phi i64 [ 0, %polly.loop_header493.1 ], [ %polly.indvar_next503.1, %polly.loop_exit507.1 ]
  %213 = shl i64 %polly.indvar502.1, 3
  %214 = add i64 %213, 128
  %scevgep515.1 = getelementptr i8, i8* %scevgep514.1, i64 %214
  %scevgep515516.1 = bitcast i8* %scevgep515.1 to double*
  %_p_scalar_517.1 = load double, double* %scevgep515516.1, align 8, !alias.scope !82, !noalias !85
  %scevgep522.1 = getelementptr i8, i8* %scevgep521.1, i64 %214
  %scevgep522523.1 = bitcast i8* %scevgep522.1 to double*
  %_p_scalar_524.1 = load double, double* %scevgep522523.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header505.1

polly.loop_header505.1:                           ; preds = %polly.loop_header505.1, %polly.loop_header499.1
  %polly.indvar508.1 = phi i64 [ 0, %polly.loop_header499.1 ], [ %polly.indvar_next509.1, %polly.loop_header505.1 ]
  %215 = mul nuw nsw i64 %polly.indvar508.1, 480
  %216 = add nuw nsw i64 %215, %214
  %scevgep511.1 = getelementptr i8, i8* %call1, i64 %216
  %scevgep511512.1 = bitcast i8* %scevgep511.1 to double*
  %_p_scalar_513.1 = load double, double* %scevgep511512.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1 = fmul fast double %_p_scalar_517.1, %_p_scalar_513.1
  %scevgep518.1 = getelementptr i8, i8* %call2, i64 %216
  %scevgep518519.1 = bitcast i8* %scevgep518.1 to double*
  %_p_scalar_520.1 = load double, double* %scevgep518519.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1 = fmul fast double %_p_scalar_524.1, %_p_scalar_520.1
  %217 = shl nuw nsw i64 %polly.indvar508.1, 3
  %scevgep526.1 = getelementptr i8, i8* %scevgep525.1, i64 %217
  %scevgep526527.1 = bitcast i8* %scevgep526.1 to double*
  %_p_scalar_528.1 = load double, double* %scevgep526527.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_528.1
  store double %p_add42.i.1, double* %scevgep526527.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next509.1 = add nuw nsw i64 %polly.indvar508.1, 1
  %exitcond763.1.not = icmp eq i64 %polly.indvar_next509.1, %indvars.iv761.1
  br i1 %exitcond763.1.not, label %polly.loop_exit507.1, label %polly.loop_header505.1

polly.loop_exit507.1:                             ; preds = %polly.loop_header505.1
  %polly.indvar_next503.1 = add nuw nsw i64 %polly.indvar502.1, 1
  %exitcond767.1.not = icmp eq i64 %polly.indvar_next503.1, 16
  br i1 %exitcond767.1.not, label %polly.loop_exit501.1, label %polly.loop_header499.1

polly.loop_exit501.1:                             ; preds = %polly.loop_exit507.1
  %polly.indvar_next497.1 = add nuw nsw i64 %polly.indvar496.1, 1
  %indvars.iv.next762.1 = add nuw nsw i64 %indvars.iv761.1, 1
  %exitcond768.1.not = icmp eq i64 %polly.indvar_next497.1, 80
  br i1 %exitcond768.1.not, label %polly.loop_header493.2, label %polly.loop_header493.1

polly.loop_header493.2:                           ; preds = %polly.loop_exit501.1, %polly.loop_exit501.2
  %indvars.iv761.2 = phi i64 [ %indvars.iv.next762.2, %polly.loop_exit501.2 ], [ 1, %polly.loop_exit501.1 ]
  %polly.indvar496.2 = phi i64 [ %polly.indvar_next497.2, %polly.loop_exit501.2 ], [ 0, %polly.loop_exit501.1 ]
  %218 = mul nuw nsw i64 %polly.indvar496.2, 480
  %scevgep514.2 = getelementptr i8, i8* %call2, i64 %218
  %scevgep521.2 = getelementptr i8, i8* %call1, i64 %218
  %219 = mul nuw nsw i64 %polly.indvar496.2, 640
  %scevgep525.2 = getelementptr i8, i8* %call, i64 %219
  br label %polly.loop_header499.2

polly.loop_header499.2:                           ; preds = %polly.loop_exit507.2, %polly.loop_header493.2
  %polly.indvar502.2 = phi i64 [ 0, %polly.loop_header493.2 ], [ %polly.indvar_next503.2, %polly.loop_exit507.2 ]
  %220 = shl i64 %polly.indvar502.2, 3
  %221 = add i64 %220, 256
  %scevgep515.2 = getelementptr i8, i8* %scevgep514.2, i64 %221
  %scevgep515516.2 = bitcast i8* %scevgep515.2 to double*
  %_p_scalar_517.2 = load double, double* %scevgep515516.2, align 8, !alias.scope !82, !noalias !85
  %scevgep522.2 = getelementptr i8, i8* %scevgep521.2, i64 %221
  %scevgep522523.2 = bitcast i8* %scevgep522.2 to double*
  %_p_scalar_524.2 = load double, double* %scevgep522523.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header505.2

polly.loop_header505.2:                           ; preds = %polly.loop_header505.2, %polly.loop_header499.2
  %polly.indvar508.2 = phi i64 [ 0, %polly.loop_header499.2 ], [ %polly.indvar_next509.2, %polly.loop_header505.2 ]
  %222 = mul nuw nsw i64 %polly.indvar508.2, 480
  %223 = add nuw nsw i64 %222, %221
  %scevgep511.2 = getelementptr i8, i8* %call1, i64 %223
  %scevgep511512.2 = bitcast i8* %scevgep511.2 to double*
  %_p_scalar_513.2 = load double, double* %scevgep511512.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.2 = fmul fast double %_p_scalar_517.2, %_p_scalar_513.2
  %scevgep518.2 = getelementptr i8, i8* %call2, i64 %223
  %scevgep518519.2 = bitcast i8* %scevgep518.2 to double*
  %_p_scalar_520.2 = load double, double* %scevgep518519.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.2 = fmul fast double %_p_scalar_524.2, %_p_scalar_520.2
  %224 = shl nuw nsw i64 %polly.indvar508.2, 3
  %scevgep526.2 = getelementptr i8, i8* %scevgep525.2, i64 %224
  %scevgep526527.2 = bitcast i8* %scevgep526.2 to double*
  %_p_scalar_528.2 = load double, double* %scevgep526527.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_528.2
  store double %p_add42.i.2, double* %scevgep526527.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next509.2 = add nuw nsw i64 %polly.indvar508.2, 1
  %exitcond763.2.not = icmp eq i64 %polly.indvar_next509.2, %indvars.iv761.2
  br i1 %exitcond763.2.not, label %polly.loop_exit507.2, label %polly.loop_header505.2

polly.loop_exit507.2:                             ; preds = %polly.loop_header505.2
  %polly.indvar_next503.2 = add nuw nsw i64 %polly.indvar502.2, 1
  %exitcond767.2.not = icmp eq i64 %polly.indvar_next503.2, 16
  br i1 %exitcond767.2.not, label %polly.loop_exit501.2, label %polly.loop_header499.2

polly.loop_exit501.2:                             ; preds = %polly.loop_exit507.2
  %polly.indvar_next497.2 = add nuw nsw i64 %polly.indvar496.2, 1
  %indvars.iv.next762.2 = add nuw nsw i64 %indvars.iv761.2, 1
  %exitcond768.2.not = icmp eq i64 %polly.indvar_next497.2, 80
  br i1 %exitcond768.2.not, label %polly.loop_header493.3, label %polly.loop_header493.2

polly.loop_header493.3:                           ; preds = %polly.loop_exit501.2, %polly.loop_exit501.3
  %indvars.iv761.3 = phi i64 [ %indvars.iv.next762.3, %polly.loop_exit501.3 ], [ 1, %polly.loop_exit501.2 ]
  %polly.indvar496.3 = phi i64 [ %polly.indvar_next497.3, %polly.loop_exit501.3 ], [ 0, %polly.loop_exit501.2 ]
  %225 = mul nuw nsw i64 %polly.indvar496.3, 480
  %scevgep514.3 = getelementptr i8, i8* %call2, i64 %225
  %scevgep521.3 = getelementptr i8, i8* %call1, i64 %225
  %226 = mul nuw nsw i64 %polly.indvar496.3, 640
  %scevgep525.3 = getelementptr i8, i8* %call, i64 %226
  br label %polly.loop_header499.3

polly.loop_header499.3:                           ; preds = %polly.loop_exit507.3, %polly.loop_header493.3
  %polly.indvar502.3 = phi i64 [ 0, %polly.loop_header493.3 ], [ %polly.indvar_next503.3, %polly.loop_exit507.3 ]
  %227 = shl i64 %polly.indvar502.3, 3
  %228 = add i64 %227, 384
  %scevgep515.3 = getelementptr i8, i8* %scevgep514.3, i64 %228
  %scevgep515516.3 = bitcast i8* %scevgep515.3 to double*
  %_p_scalar_517.3 = load double, double* %scevgep515516.3, align 8, !alias.scope !82, !noalias !85
  %scevgep522.3 = getelementptr i8, i8* %scevgep521.3, i64 %228
  %scevgep522523.3 = bitcast i8* %scevgep522.3 to double*
  %_p_scalar_524.3 = load double, double* %scevgep522523.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header505.3

polly.loop_header505.3:                           ; preds = %polly.loop_header505.3, %polly.loop_header499.3
  %polly.indvar508.3 = phi i64 [ 0, %polly.loop_header499.3 ], [ %polly.indvar_next509.3, %polly.loop_header505.3 ]
  %229 = mul nuw nsw i64 %polly.indvar508.3, 480
  %230 = add nuw nsw i64 %229, %228
  %scevgep511.3 = getelementptr i8, i8* %call1, i64 %230
  %scevgep511512.3 = bitcast i8* %scevgep511.3 to double*
  %_p_scalar_513.3 = load double, double* %scevgep511512.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.3 = fmul fast double %_p_scalar_517.3, %_p_scalar_513.3
  %scevgep518.3 = getelementptr i8, i8* %call2, i64 %230
  %scevgep518519.3 = bitcast i8* %scevgep518.3 to double*
  %_p_scalar_520.3 = load double, double* %scevgep518519.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.3 = fmul fast double %_p_scalar_524.3, %_p_scalar_520.3
  %231 = shl nuw nsw i64 %polly.indvar508.3, 3
  %scevgep526.3 = getelementptr i8, i8* %scevgep525.3, i64 %231
  %scevgep526527.3 = bitcast i8* %scevgep526.3 to double*
  %_p_scalar_528.3 = load double, double* %scevgep526527.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_528.3
  store double %p_add42.i.3, double* %scevgep526527.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next509.3 = add nuw nsw i64 %polly.indvar508.3, 1
  %exitcond763.3.not = icmp eq i64 %polly.indvar_next509.3, %indvars.iv761.3
  br i1 %exitcond763.3.not, label %polly.loop_exit507.3, label %polly.loop_header505.3

polly.loop_exit507.3:                             ; preds = %polly.loop_header505.3
  %polly.indvar_next503.3 = add nuw nsw i64 %polly.indvar502.3, 1
  %exitcond767.3.not = icmp eq i64 %polly.indvar_next503.3, 12
  br i1 %exitcond767.3.not, label %polly.loop_exit501.3, label %polly.loop_header499.3

polly.loop_exit501.3:                             ; preds = %polly.loop_exit507.3
  %polly.indvar_next497.3 = add nuw nsw i64 %polly.indvar496.3, 1
  %indvars.iv.next762.3 = add nuw nsw i64 %indvars.iv761.3, 1
  %exitcond768.3.not = icmp eq i64 %polly.indvar_next497.3, 80
  br i1 %exitcond768.3.not, label %kernel_syr2k.exit, label %polly.loop_header493.3

polly.loop_header720.1:                           ; preds = %polly.loop_exit728, %polly.loop_exit728.1
  %polly.indvar723.1 = phi i64 [ %polly.indvar_next724.1, %polly.loop_exit728.1 ], [ 0, %polly.loop_exit728 ]
  %232 = mul nuw nsw i64 %polly.indvar723.1, 480
  %233 = trunc i64 %polly.indvar723.1 to i32
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %233, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %polly.loop_header720.1
  %index1088 = phi i64 [ 0, %polly.loop_header720.1 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1092 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header720.1 ], [ %vec.ind.next1093, %vector.body1086 ]
  %234 = add nuw nsw <4 x i64> %vec.ind1092, <i64 32, i64 32, i64 32, i64 32>
  %235 = trunc <4 x i64> %234 to <4 x i32>
  %236 = mul <4 x i32> %broadcast.splat1095, %235
  %237 = add <4 x i32> %236, <i32 1, i32 1, i32 1, i32 1>
  %238 = urem <4 x i32> %237, <i32 80, i32 80, i32 80, i32 80>
  %239 = sitofp <4 x i32> %238 to <4 x double>
  %240 = fmul fast <4 x double> %239, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %241 = extractelement <4 x i64> %234, i32 0
  %242 = shl i64 %241, 3
  %243 = add i64 %242, %232
  %244 = getelementptr i8, i8* %call1, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %240, <4 x double>* %245, align 8, !alias.scope !90, !noalias !95
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1093 = add <4 x i64> %vec.ind1092, <i64 4, i64 4, i64 4, i64 4>
  %246 = icmp eq i64 %index.next1089, 28
  br i1 %246, label %polly.loop_exit728.1, label %vector.body1086, !llvm.loop !97

polly.loop_exit728.1:                             ; preds = %vector.body1086
  %polly.indvar_next724.1 = add nuw nsw i64 %polly.indvar723.1, 1
  %exitcond776.1.not = icmp eq i64 %polly.indvar_next724.1, 32
  br i1 %exitcond776.1.not, label %polly.loop_header720.1799, label %polly.loop_header720.1

polly.loop_header720.1799:                        ; preds = %polly.loop_exit728.1, %polly.loop_exit728.1810
  %polly.indvar723.1798 = phi i64 [ %polly.indvar_next724.1808, %polly.loop_exit728.1810 ], [ 0, %polly.loop_exit728.1 ]
  %247 = add nuw nsw i64 %polly.indvar723.1798, 32
  %248 = mul nuw nsw i64 %247, 480
  %249 = trunc i64 %247 to i32
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %249, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %polly.loop_header720.1799
  %index1100 = phi i64 [ 0, %polly.loop_header720.1799 ], [ %index.next1101, %vector.body1098 ]
  %vec.ind1106 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header720.1799 ], [ %vec.ind.next1107, %vector.body1098 ]
  %250 = mul <4 x i32> %vec.ind1106, %broadcast.splat1109
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 80, i32 80, i32 80, i32 80>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %255 = shl i64 %index1100, 3
  %256 = add i64 %255, %248
  %257 = getelementptr i8, i8* %call1, i64 %256
  %258 = bitcast i8* %257 to <4 x double>*
  store <4 x double> %254, <4 x double>* %258, align 8, !alias.scope !90, !noalias !95
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1107 = add <4 x i32> %vec.ind1106, <i32 4, i32 4, i32 4, i32 4>
  %259 = icmp eq i64 %index.next1101, 32
  br i1 %259, label %polly.loop_exit728.1810, label %vector.body1098, !llvm.loop !98

polly.loop_exit728.1810:                          ; preds = %vector.body1098
  %polly.indvar_next724.1808 = add nuw nsw i64 %polly.indvar723.1798, 1
  %exitcond776.1809.not = icmp eq i64 %polly.indvar_next724.1808, 32
  br i1 %exitcond776.1809.not, label %polly.loop_header720.1.1, label %polly.loop_header720.1799

polly.loop_header720.1.1:                         ; preds = %polly.loop_exit728.1810, %polly.loop_exit728.1.1
  %polly.indvar723.1.1 = phi i64 [ %polly.indvar_next724.1.1, %polly.loop_exit728.1.1 ], [ 0, %polly.loop_exit728.1810 ]
  %260 = add nuw nsw i64 %polly.indvar723.1.1, 32
  %261 = mul nuw nsw i64 %260, 480
  %262 = trunc i64 %260 to i32
  %broadcast.splatinsert1120 = insertelement <4 x i32> poison, i32 %262, i32 0
  %broadcast.splat1121 = shufflevector <4 x i32> %broadcast.splatinsert1120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %polly.loop_header720.1.1
  %index1114 = phi i64 [ 0, %polly.loop_header720.1.1 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1118 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header720.1.1 ], [ %vec.ind.next1119, %vector.body1112 ]
  %263 = add nuw nsw <4 x i64> %vec.ind1118, <i64 32, i64 32, i64 32, i64 32>
  %264 = trunc <4 x i64> %263 to <4 x i32>
  %265 = mul <4 x i32> %broadcast.splat1121, %264
  %266 = add <4 x i32> %265, <i32 1, i32 1, i32 1, i32 1>
  %267 = urem <4 x i32> %266, <i32 80, i32 80, i32 80, i32 80>
  %268 = sitofp <4 x i32> %267 to <4 x double>
  %269 = fmul fast <4 x double> %268, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %270 = extractelement <4 x i64> %263, i32 0
  %271 = shl i64 %270, 3
  %272 = add i64 %271, %261
  %273 = getelementptr i8, i8* %call1, i64 %272
  %274 = bitcast i8* %273 to <4 x double>*
  store <4 x double> %269, <4 x double>* %274, align 8, !alias.scope !90, !noalias !95
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1119 = add <4 x i64> %vec.ind1118, <i64 4, i64 4, i64 4, i64 4>
  %275 = icmp eq i64 %index.next1115, 28
  br i1 %275, label %polly.loop_exit728.1.1, label %vector.body1112, !llvm.loop !99

polly.loop_exit728.1.1:                           ; preds = %vector.body1112
  %polly.indvar_next724.1.1 = add nuw nsw i64 %polly.indvar723.1.1, 1
  %exitcond776.1.1.not = icmp eq i64 %polly.indvar_next724.1.1, 32
  br i1 %exitcond776.1.1.not, label %polly.loop_header720.2, label %polly.loop_header720.1.1

polly.loop_header720.2:                           ; preds = %polly.loop_exit728.1.1, %polly.loop_exit728.2
  %polly.indvar723.2 = phi i64 [ %polly.indvar_next724.2, %polly.loop_exit728.2 ], [ 0, %polly.loop_exit728.1.1 ]
  %276 = add nuw nsw i64 %polly.indvar723.2, 64
  %277 = mul nuw nsw i64 %276, 480
  %278 = trunc i64 %276 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %278, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %polly.loop_header720.2
  %index1126 = phi i64 [ 0, %polly.loop_header720.2 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1132 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header720.2 ], [ %vec.ind.next1133, %vector.body1124 ]
  %279 = mul <4 x i32> %vec.ind1132, %broadcast.splat1135
  %280 = add <4 x i32> %279, <i32 1, i32 1, i32 1, i32 1>
  %281 = urem <4 x i32> %280, <i32 80, i32 80, i32 80, i32 80>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %284 = shl i64 %index1126, 3
  %285 = add i64 %284, %277
  %286 = getelementptr i8, i8* %call1, i64 %285
  %287 = bitcast i8* %286 to <4 x double>*
  store <4 x double> %283, <4 x double>* %287, align 8, !alias.scope !90, !noalias !95
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1133 = add <4 x i32> %vec.ind1132, <i32 4, i32 4, i32 4, i32 4>
  %288 = icmp eq i64 %index.next1127, 32
  br i1 %288, label %polly.loop_exit728.2, label %vector.body1124, !llvm.loop !100

polly.loop_exit728.2:                             ; preds = %vector.body1124
  %polly.indvar_next724.2 = add nuw nsw i64 %polly.indvar723.2, 1
  %exitcond776.2.not = icmp eq i64 %polly.indvar_next724.2, 16
  br i1 %exitcond776.2.not, label %polly.loop_header720.1.2, label %polly.loop_header720.2

polly.loop_header720.1.2:                         ; preds = %polly.loop_exit728.2, %polly.loop_exit728.1.2
  %polly.indvar723.1.2 = phi i64 [ %polly.indvar_next724.1.2, %polly.loop_exit728.1.2 ], [ 0, %polly.loop_exit728.2 ]
  %289 = add nuw nsw i64 %polly.indvar723.1.2, 64
  %290 = mul nuw nsw i64 %289, 480
  %291 = trunc i64 %289 to i32
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header720.1.2
  %index1140 = phi i64 [ 0, %polly.loop_header720.1.2 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1144 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header720.1.2 ], [ %vec.ind.next1145, %vector.body1138 ]
  %292 = add nuw nsw <4 x i64> %vec.ind1144, <i64 32, i64 32, i64 32, i64 32>
  %293 = trunc <4 x i64> %292 to <4 x i32>
  %294 = mul <4 x i32> %broadcast.splat1147, %293
  %295 = add <4 x i32> %294, <i32 1, i32 1, i32 1, i32 1>
  %296 = urem <4 x i32> %295, <i32 80, i32 80, i32 80, i32 80>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %299 = extractelement <4 x i64> %292, i32 0
  %300 = shl i64 %299, 3
  %301 = add i64 %300, %290
  %302 = getelementptr i8, i8* %call1, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %298, <4 x double>* %303, align 8, !alias.scope !90, !noalias !95
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1145 = add <4 x i64> %vec.ind1144, <i64 4, i64 4, i64 4, i64 4>
  %304 = icmp eq i64 %index.next1141, 28
  br i1 %304, label %polly.loop_exit728.1.2, label %vector.body1138, !llvm.loop !101

polly.loop_exit728.1.2:                           ; preds = %vector.body1138
  %polly.indvar_next724.1.2 = add nuw nsw i64 %polly.indvar723.1.2, 1
  %exitcond776.1.2.not = icmp eq i64 %polly.indvar_next724.1.2, 16
  br i1 %exitcond776.1.2.not, label %init_array.exit, label %polly.loop_header720.1.2

polly.loop_header694.1:                           ; preds = %polly.loop_exit702, %polly.loop_exit702.1
  %polly.indvar697.1 = phi i64 [ %polly.indvar_next698.1, %polly.loop_exit702.1 ], [ 0, %polly.loop_exit702 ]
  %305 = mul nuw nsw i64 %polly.indvar697.1, 480
  %306 = trunc i64 %polly.indvar697.1 to i32
  %broadcast.splatinsert1016 = insertelement <4 x i32> poison, i32 %306, i32 0
  %broadcast.splat1017 = shufflevector <4 x i32> %broadcast.splatinsert1016, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %polly.loop_header694.1
  %index1010 = phi i64 [ 0, %polly.loop_header694.1 ], [ %index.next1011, %vector.body1008 ]
  %vec.ind1014 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1 ], [ %vec.ind.next1015, %vector.body1008 ]
  %307 = add nuw nsw <4 x i64> %vec.ind1014, <i64 32, i64 32, i64 32, i64 32>
  %308 = trunc <4 x i64> %307 to <4 x i32>
  %309 = mul <4 x i32> %broadcast.splat1017, %308
  %310 = add <4 x i32> %309, <i32 2, i32 2, i32 2, i32 2>
  %311 = urem <4 x i32> %310, <i32 60, i32 60, i32 60, i32 60>
  %312 = sitofp <4 x i32> %311 to <4 x double>
  %313 = fmul fast <4 x double> %312, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %314 = extractelement <4 x i64> %307, i32 0
  %315 = shl i64 %314, 3
  %316 = add i64 %315, %305
  %317 = getelementptr i8, i8* %call2, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %313, <4 x double>* %318, align 8, !alias.scope !91, !noalias !93
  %index.next1011 = add i64 %index1010, 4
  %vec.ind.next1015 = add <4 x i64> %vec.ind1014, <i64 4, i64 4, i64 4, i64 4>
  %319 = icmp eq i64 %index.next1011, 28
  br i1 %319, label %polly.loop_exit702.1, label %vector.body1008, !llvm.loop !102

polly.loop_exit702.1:                             ; preds = %vector.body1008
  %polly.indvar_next698.1 = add nuw nsw i64 %polly.indvar697.1, 1
  %exitcond782.1.not = icmp eq i64 %polly.indvar_next698.1, 32
  br i1 %exitcond782.1.not, label %polly.loop_header694.1813, label %polly.loop_header694.1

polly.loop_header694.1813:                        ; preds = %polly.loop_exit702.1, %polly.loop_exit702.1824
  %polly.indvar697.1812 = phi i64 [ %polly.indvar_next698.1822, %polly.loop_exit702.1824 ], [ 0, %polly.loop_exit702.1 ]
  %320 = add nuw nsw i64 %polly.indvar697.1812, 32
  %321 = mul nuw nsw i64 %320, 480
  %322 = trunc i64 %320 to i32
  %broadcast.splatinsert1030 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1031 = shufflevector <4 x i32> %broadcast.splatinsert1030, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %polly.loop_header694.1813
  %index1022 = phi i64 [ 0, %polly.loop_header694.1813 ], [ %index.next1023, %vector.body1020 ]
  %vec.ind1028 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header694.1813 ], [ %vec.ind.next1029, %vector.body1020 ]
  %323 = mul <4 x i32> %vec.ind1028, %broadcast.splat1031
  %324 = add <4 x i32> %323, <i32 2, i32 2, i32 2, i32 2>
  %325 = urem <4 x i32> %324, <i32 60, i32 60, i32 60, i32 60>
  %326 = sitofp <4 x i32> %325 to <4 x double>
  %327 = fmul fast <4 x double> %326, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %328 = shl i64 %index1022, 3
  %329 = add i64 %328, %321
  %330 = getelementptr i8, i8* %call2, i64 %329
  %331 = bitcast i8* %330 to <4 x double>*
  store <4 x double> %327, <4 x double>* %331, align 8, !alias.scope !91, !noalias !93
  %index.next1023 = add i64 %index1022, 4
  %vec.ind.next1029 = add <4 x i32> %vec.ind1028, <i32 4, i32 4, i32 4, i32 4>
  %332 = icmp eq i64 %index.next1023, 32
  br i1 %332, label %polly.loop_exit702.1824, label %vector.body1020, !llvm.loop !103

polly.loop_exit702.1824:                          ; preds = %vector.body1020
  %polly.indvar_next698.1822 = add nuw nsw i64 %polly.indvar697.1812, 1
  %exitcond782.1823.not = icmp eq i64 %polly.indvar_next698.1822, 32
  br i1 %exitcond782.1823.not, label %polly.loop_header694.1.1, label %polly.loop_header694.1813

polly.loop_header694.1.1:                         ; preds = %polly.loop_exit702.1824, %polly.loop_exit702.1.1
  %polly.indvar697.1.1 = phi i64 [ %polly.indvar_next698.1.1, %polly.loop_exit702.1.1 ], [ 0, %polly.loop_exit702.1824 ]
  %333 = add nuw nsw i64 %polly.indvar697.1.1, 32
  %334 = mul nuw nsw i64 %333, 480
  %335 = trunc i64 %333 to i32
  %broadcast.splatinsert1042 = insertelement <4 x i32> poison, i32 %335, i32 0
  %broadcast.splat1043 = shufflevector <4 x i32> %broadcast.splatinsert1042, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %polly.loop_header694.1.1
  %index1036 = phi i64 [ 0, %polly.loop_header694.1.1 ], [ %index.next1037, %vector.body1034 ]
  %vec.ind1040 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1.1 ], [ %vec.ind.next1041, %vector.body1034 ]
  %336 = add nuw nsw <4 x i64> %vec.ind1040, <i64 32, i64 32, i64 32, i64 32>
  %337 = trunc <4 x i64> %336 to <4 x i32>
  %338 = mul <4 x i32> %broadcast.splat1043, %337
  %339 = add <4 x i32> %338, <i32 2, i32 2, i32 2, i32 2>
  %340 = urem <4 x i32> %339, <i32 60, i32 60, i32 60, i32 60>
  %341 = sitofp <4 x i32> %340 to <4 x double>
  %342 = fmul fast <4 x double> %341, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %343 = extractelement <4 x i64> %336, i32 0
  %344 = shl i64 %343, 3
  %345 = add i64 %344, %334
  %346 = getelementptr i8, i8* %call2, i64 %345
  %347 = bitcast i8* %346 to <4 x double>*
  store <4 x double> %342, <4 x double>* %347, align 8, !alias.scope !91, !noalias !93
  %index.next1037 = add i64 %index1036, 4
  %vec.ind.next1041 = add <4 x i64> %vec.ind1040, <i64 4, i64 4, i64 4, i64 4>
  %348 = icmp eq i64 %index.next1037, 28
  br i1 %348, label %polly.loop_exit702.1.1, label %vector.body1034, !llvm.loop !104

polly.loop_exit702.1.1:                           ; preds = %vector.body1034
  %polly.indvar_next698.1.1 = add nuw nsw i64 %polly.indvar697.1.1, 1
  %exitcond782.1.1.not = icmp eq i64 %polly.indvar_next698.1.1, 32
  br i1 %exitcond782.1.1.not, label %polly.loop_header694.2, label %polly.loop_header694.1.1

polly.loop_header694.2:                           ; preds = %polly.loop_exit702.1.1, %polly.loop_exit702.2
  %polly.indvar697.2 = phi i64 [ %polly.indvar_next698.2, %polly.loop_exit702.2 ], [ 0, %polly.loop_exit702.1.1 ]
  %349 = add nuw nsw i64 %polly.indvar697.2, 64
  %350 = mul nuw nsw i64 %349, 480
  %351 = trunc i64 %349 to i32
  %broadcast.splatinsert1056 = insertelement <4 x i32> poison, i32 %351, i32 0
  %broadcast.splat1057 = shufflevector <4 x i32> %broadcast.splatinsert1056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %polly.loop_header694.2
  %index1048 = phi i64 [ 0, %polly.loop_header694.2 ], [ %index.next1049, %vector.body1046 ]
  %vec.ind1054 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header694.2 ], [ %vec.ind.next1055, %vector.body1046 ]
  %352 = mul <4 x i32> %vec.ind1054, %broadcast.splat1057
  %353 = add <4 x i32> %352, <i32 2, i32 2, i32 2, i32 2>
  %354 = urem <4 x i32> %353, <i32 60, i32 60, i32 60, i32 60>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = shl i64 %index1048, 3
  %358 = add i64 %357, %350
  %359 = getelementptr i8, i8* %call2, i64 %358
  %360 = bitcast i8* %359 to <4 x double>*
  store <4 x double> %356, <4 x double>* %360, align 8, !alias.scope !91, !noalias !93
  %index.next1049 = add i64 %index1048, 4
  %vec.ind.next1055 = add <4 x i32> %vec.ind1054, <i32 4, i32 4, i32 4, i32 4>
  %361 = icmp eq i64 %index.next1049, 32
  br i1 %361, label %polly.loop_exit702.2, label %vector.body1046, !llvm.loop !105

polly.loop_exit702.2:                             ; preds = %vector.body1046
  %polly.indvar_next698.2 = add nuw nsw i64 %polly.indvar697.2, 1
  %exitcond782.2.not = icmp eq i64 %polly.indvar_next698.2, 16
  br i1 %exitcond782.2.not, label %polly.loop_header694.1.2, label %polly.loop_header694.2

polly.loop_header694.1.2:                         ; preds = %polly.loop_exit702.2, %polly.loop_exit702.1.2
  %polly.indvar697.1.2 = phi i64 [ %polly.indvar_next698.1.2, %polly.loop_exit702.1.2 ], [ 0, %polly.loop_exit702.2 ]
  %362 = add nuw nsw i64 %polly.indvar697.1.2, 64
  %363 = mul nuw nsw i64 %362, 480
  %364 = trunc i64 %362 to i32
  %broadcast.splatinsert1068 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1069 = shufflevector <4 x i32> %broadcast.splatinsert1068, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %polly.loop_header694.1.2
  %index1062 = phi i64 [ 0, %polly.loop_header694.1.2 ], [ %index.next1063, %vector.body1060 ]
  %vec.ind1066 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1.2 ], [ %vec.ind.next1067, %vector.body1060 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1066, <i64 32, i64 32, i64 32, i64 32>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1069, %366
  %368 = add <4 x i32> %367, <i32 2, i32 2, i32 2, i32 2>
  %369 = urem <4 x i32> %368, <i32 60, i32 60, i32 60, i32 60>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add i64 %373, %363
  %375 = getelementptr i8, i8* %call2, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !91, !noalias !93
  %index.next1063 = add i64 %index1062, 4
  %vec.ind.next1067 = add <4 x i64> %vec.ind1066, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1063, 28
  br i1 %377, label %polly.loop_exit702.1.2, label %vector.body1060, !llvm.loop !106

polly.loop_exit702.1.2:                           ; preds = %vector.body1060
  %polly.indvar_next698.1.2 = add nuw nsw i64 %polly.indvar697.1.2, 1
  %exitcond782.1.2.not = icmp eq i64 %polly.indvar_next698.1.2, 16
  br i1 %exitcond782.1.2.not, label %polly.loop_header720, label %polly.loop_header694.1.2

polly.loop_header667.1:                           ; preds = %polly.loop_exit675, %polly.loop_exit675.1
  %polly.indvar670.1 = phi i64 [ %polly.indvar_next671.1, %polly.loop_exit675.1 ], [ 0, %polly.loop_exit675 ]
  %378 = mul nuw nsw i64 %polly.indvar670.1, 640
  %379 = trunc i64 %polly.indvar670.1 to i32
  %broadcast.splatinsert902 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat903 = shufflevector <4 x i32> %broadcast.splatinsert902, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body894

vector.body894:                                   ; preds = %vector.body894, %polly.loop_header667.1
  %index896 = phi i64 [ 0, %polly.loop_header667.1 ], [ %index.next897, %vector.body894 ]
  %vec.ind900 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.1 ], [ %vec.ind.next901, %vector.body894 ]
  %380 = add nuw nsw <4 x i64> %vec.ind900, <i64 32, i64 32, i64 32, i64 32>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat903, %381
  %383 = add <4 x i32> %382, <i32 3, i32 3, i32 3, i32 3>
  %384 = urem <4 x i32> %383, <i32 80, i32 80, i32 80, i32 80>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %378
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !87, !noalias !89
  %index.next897 = add i64 %index896, 4
  %vec.ind.next901 = add <4 x i64> %vec.ind900, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next897, 32
  br i1 %392, label %polly.loop_exit675.1, label %vector.body894, !llvm.loop !107

polly.loop_exit675.1:                             ; preds = %vector.body894
  %polly.indvar_next671.1 = add nuw nsw i64 %polly.indvar670.1, 1
  %exitcond791.1.not = icmp eq i64 %polly.indvar_next671.1, 32
  br i1 %exitcond791.1.not, label %polly.loop_header667.2, label %polly.loop_header667.1

polly.loop_header667.2:                           ; preds = %polly.loop_exit675.1, %polly.loop_exit675.2
  %polly.indvar670.2 = phi i64 [ %polly.indvar_next671.2, %polly.loop_exit675.2 ], [ 0, %polly.loop_exit675.1 ]
  %393 = mul nuw nsw i64 %polly.indvar670.2, 640
  %394 = trunc i64 %polly.indvar670.2 to i32
  %broadcast.splatinsert914 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat915 = shufflevector <4 x i32> %broadcast.splatinsert914, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body906

vector.body906:                                   ; preds = %vector.body906, %polly.loop_header667.2
  %index908 = phi i64 [ 0, %polly.loop_header667.2 ], [ %index.next909, %vector.body906 ]
  %vec.ind912 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.2 ], [ %vec.ind.next913, %vector.body906 ]
  %395 = add nuw nsw <4 x i64> %vec.ind912, <i64 64, i64 64, i64 64, i64 64>
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat915, %396
  %398 = add <4 x i32> %397, <i32 3, i32 3, i32 3, i32 3>
  %399 = urem <4 x i32> %398, <i32 80, i32 80, i32 80, i32 80>
  %400 = sitofp <4 x i32> %399 to <4 x double>
  %401 = fmul fast <4 x double> %400, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %402 = extractelement <4 x i64> %395, i32 0
  %403 = shl i64 %402, 3
  %404 = add nuw nsw i64 %403, %393
  %405 = getelementptr i8, i8* %call, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %401, <4 x double>* %406, align 8, !alias.scope !87, !noalias !89
  %index.next909 = add i64 %index908, 4
  %vec.ind.next913 = add <4 x i64> %vec.ind912, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next909, 16
  br i1 %407, label %polly.loop_exit675.2, label %vector.body906, !llvm.loop !108

polly.loop_exit675.2:                             ; preds = %vector.body906
  %polly.indvar_next671.2 = add nuw nsw i64 %polly.indvar670.2, 1
  %exitcond791.2.not = icmp eq i64 %polly.indvar_next671.2, 32
  br i1 %exitcond791.2.not, label %polly.loop_header667.1827, label %polly.loop_header667.2

polly.loop_header667.1827:                        ; preds = %polly.loop_exit675.2, %polly.loop_exit675.1838
  %polly.indvar670.1826 = phi i64 [ %polly.indvar_next671.1836, %polly.loop_exit675.1838 ], [ 0, %polly.loop_exit675.2 ]
  %408 = add nuw nsw i64 %polly.indvar670.1826, 32
  %409 = mul nuw nsw i64 %408, 640
  %410 = trunc i64 %408 to i32
  %broadcast.splatinsert928 = insertelement <4 x i32> poison, i32 %410, i32 0
  %broadcast.splat929 = shufflevector <4 x i32> %broadcast.splatinsert928, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %polly.loop_header667.1827
  %index920 = phi i64 [ 0, %polly.loop_header667.1827 ], [ %index.next921, %vector.body918 ]
  %vec.ind926 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header667.1827 ], [ %vec.ind.next927, %vector.body918 ]
  %411 = mul <4 x i32> %vec.ind926, %broadcast.splat929
  %412 = add <4 x i32> %411, <i32 3, i32 3, i32 3, i32 3>
  %413 = urem <4 x i32> %412, <i32 80, i32 80, i32 80, i32 80>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = shl i64 %index920, 3
  %417 = add nuw nsw i64 %416, %409
  %418 = getelementptr i8, i8* %call, i64 %417
  %419 = bitcast i8* %418 to <4 x double>*
  store <4 x double> %415, <4 x double>* %419, align 8, !alias.scope !87, !noalias !89
  %index.next921 = add i64 %index920, 4
  %vec.ind.next927 = add <4 x i32> %vec.ind926, <i32 4, i32 4, i32 4, i32 4>
  %420 = icmp eq i64 %index.next921, 32
  br i1 %420, label %polly.loop_exit675.1838, label %vector.body918, !llvm.loop !109

polly.loop_exit675.1838:                          ; preds = %vector.body918
  %polly.indvar_next671.1836 = add nuw nsw i64 %polly.indvar670.1826, 1
  %exitcond791.1837.not = icmp eq i64 %polly.indvar_next671.1836, 32
  br i1 %exitcond791.1837.not, label %polly.loop_header667.1.1, label %polly.loop_header667.1827

polly.loop_header667.1.1:                         ; preds = %polly.loop_exit675.1838, %polly.loop_exit675.1.1
  %polly.indvar670.1.1 = phi i64 [ %polly.indvar_next671.1.1, %polly.loop_exit675.1.1 ], [ 0, %polly.loop_exit675.1838 ]
  %421 = add nuw nsw i64 %polly.indvar670.1.1, 32
  %422 = mul nuw nsw i64 %421, 640
  %423 = trunc i64 %421 to i32
  %broadcast.splatinsert940 = insertelement <4 x i32> poison, i32 %423, i32 0
  %broadcast.splat941 = shufflevector <4 x i32> %broadcast.splatinsert940, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body932

vector.body932:                                   ; preds = %vector.body932, %polly.loop_header667.1.1
  %index934 = phi i64 [ 0, %polly.loop_header667.1.1 ], [ %index.next935, %vector.body932 ]
  %vec.ind938 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.1.1 ], [ %vec.ind.next939, %vector.body932 ]
  %424 = add nuw nsw <4 x i64> %vec.ind938, <i64 32, i64 32, i64 32, i64 32>
  %425 = trunc <4 x i64> %424 to <4 x i32>
  %426 = mul <4 x i32> %broadcast.splat941, %425
  %427 = add <4 x i32> %426, <i32 3, i32 3, i32 3, i32 3>
  %428 = urem <4 x i32> %427, <i32 80, i32 80, i32 80, i32 80>
  %429 = sitofp <4 x i32> %428 to <4 x double>
  %430 = fmul fast <4 x double> %429, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %431 = extractelement <4 x i64> %424, i32 0
  %432 = shl i64 %431, 3
  %433 = add nuw nsw i64 %432, %422
  %434 = getelementptr i8, i8* %call, i64 %433
  %435 = bitcast i8* %434 to <4 x double>*
  store <4 x double> %430, <4 x double>* %435, align 8, !alias.scope !87, !noalias !89
  %index.next935 = add i64 %index934, 4
  %vec.ind.next939 = add <4 x i64> %vec.ind938, <i64 4, i64 4, i64 4, i64 4>
  %436 = icmp eq i64 %index.next935, 32
  br i1 %436, label %polly.loop_exit675.1.1, label %vector.body932, !llvm.loop !110

polly.loop_exit675.1.1:                           ; preds = %vector.body932
  %polly.indvar_next671.1.1 = add nuw nsw i64 %polly.indvar670.1.1, 1
  %exitcond791.1.1.not = icmp eq i64 %polly.indvar_next671.1.1, 32
  br i1 %exitcond791.1.1.not, label %polly.loop_header667.2.1, label %polly.loop_header667.1.1

polly.loop_header667.2.1:                         ; preds = %polly.loop_exit675.1.1, %polly.loop_exit675.2.1
  %polly.indvar670.2.1 = phi i64 [ %polly.indvar_next671.2.1, %polly.loop_exit675.2.1 ], [ 0, %polly.loop_exit675.1.1 ]
  %437 = add nuw nsw i64 %polly.indvar670.2.1, 32
  %438 = mul nuw nsw i64 %437, 640
  %439 = trunc i64 %437 to i32
  %broadcast.splatinsert952 = insertelement <4 x i32> poison, i32 %439, i32 0
  %broadcast.splat953 = shufflevector <4 x i32> %broadcast.splatinsert952, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %polly.loop_header667.2.1
  %index946 = phi i64 [ 0, %polly.loop_header667.2.1 ], [ %index.next947, %vector.body944 ]
  %vec.ind950 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.2.1 ], [ %vec.ind.next951, %vector.body944 ]
  %440 = add nuw nsw <4 x i64> %vec.ind950, <i64 64, i64 64, i64 64, i64 64>
  %441 = trunc <4 x i64> %440 to <4 x i32>
  %442 = mul <4 x i32> %broadcast.splat953, %441
  %443 = add <4 x i32> %442, <i32 3, i32 3, i32 3, i32 3>
  %444 = urem <4 x i32> %443, <i32 80, i32 80, i32 80, i32 80>
  %445 = sitofp <4 x i32> %444 to <4 x double>
  %446 = fmul fast <4 x double> %445, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %447 = extractelement <4 x i64> %440, i32 0
  %448 = shl i64 %447, 3
  %449 = add nuw nsw i64 %448, %438
  %450 = getelementptr i8, i8* %call, i64 %449
  %451 = bitcast i8* %450 to <4 x double>*
  store <4 x double> %446, <4 x double>* %451, align 8, !alias.scope !87, !noalias !89
  %index.next947 = add i64 %index946, 4
  %vec.ind.next951 = add <4 x i64> %vec.ind950, <i64 4, i64 4, i64 4, i64 4>
  %452 = icmp eq i64 %index.next947, 16
  br i1 %452, label %polly.loop_exit675.2.1, label %vector.body944, !llvm.loop !111

polly.loop_exit675.2.1:                           ; preds = %vector.body944
  %polly.indvar_next671.2.1 = add nuw nsw i64 %polly.indvar670.2.1, 1
  %exitcond791.2.1.not = icmp eq i64 %polly.indvar_next671.2.1, 32
  br i1 %exitcond791.2.1.not, label %polly.loop_header667.2841, label %polly.loop_header667.2.1

polly.loop_header667.2841:                        ; preds = %polly.loop_exit675.2.1, %polly.loop_exit675.2852
  %polly.indvar670.2840 = phi i64 [ %polly.indvar_next671.2850, %polly.loop_exit675.2852 ], [ 0, %polly.loop_exit675.2.1 ]
  %453 = add nuw nsw i64 %polly.indvar670.2840, 64
  %454 = mul nuw nsw i64 %453, 640
  %455 = trunc i64 %453 to i32
  %broadcast.splatinsert966 = insertelement <4 x i32> poison, i32 %455, i32 0
  %broadcast.splat967 = shufflevector <4 x i32> %broadcast.splatinsert966, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %polly.loop_header667.2841
  %index958 = phi i64 [ 0, %polly.loop_header667.2841 ], [ %index.next959, %vector.body956 ]
  %vec.ind964 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header667.2841 ], [ %vec.ind.next965, %vector.body956 ]
  %456 = mul <4 x i32> %vec.ind964, %broadcast.splat967
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = shl i64 %index958, 3
  %462 = add nuw nsw i64 %461, %454
  %463 = getelementptr i8, i8* %call, i64 %462
  %464 = bitcast i8* %463 to <4 x double>*
  store <4 x double> %460, <4 x double>* %464, align 8, !alias.scope !87, !noalias !89
  %index.next959 = add i64 %index958, 4
  %vec.ind.next965 = add <4 x i32> %vec.ind964, <i32 4, i32 4, i32 4, i32 4>
  %465 = icmp eq i64 %index.next959, 32
  br i1 %465, label %polly.loop_exit675.2852, label %vector.body956, !llvm.loop !112

polly.loop_exit675.2852:                          ; preds = %vector.body956
  %polly.indvar_next671.2850 = add nuw nsw i64 %polly.indvar670.2840, 1
  %exitcond791.2851.not = icmp eq i64 %polly.indvar_next671.2850, 16
  br i1 %exitcond791.2851.not, label %polly.loop_header667.1.2, label %polly.loop_header667.2841

polly.loop_header667.1.2:                         ; preds = %polly.loop_exit675.2852, %polly.loop_exit675.1.2
  %polly.indvar670.1.2 = phi i64 [ %polly.indvar_next671.1.2, %polly.loop_exit675.1.2 ], [ 0, %polly.loop_exit675.2852 ]
  %466 = add nuw nsw i64 %polly.indvar670.1.2, 64
  %467 = mul nuw nsw i64 %466, 640
  %468 = trunc i64 %466 to i32
  %broadcast.splatinsert978 = insertelement <4 x i32> poison, i32 %468, i32 0
  %broadcast.splat979 = shufflevector <4 x i32> %broadcast.splatinsert978, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body970

vector.body970:                                   ; preds = %vector.body970, %polly.loop_header667.1.2
  %index972 = phi i64 [ 0, %polly.loop_header667.1.2 ], [ %index.next973, %vector.body970 ]
  %vec.ind976 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.1.2 ], [ %vec.ind.next977, %vector.body970 ]
  %469 = add nuw nsw <4 x i64> %vec.ind976, <i64 32, i64 32, i64 32, i64 32>
  %470 = trunc <4 x i64> %469 to <4 x i32>
  %471 = mul <4 x i32> %broadcast.splat979, %470
  %472 = add <4 x i32> %471, <i32 3, i32 3, i32 3, i32 3>
  %473 = urem <4 x i32> %472, <i32 80, i32 80, i32 80, i32 80>
  %474 = sitofp <4 x i32> %473 to <4 x double>
  %475 = fmul fast <4 x double> %474, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %476 = extractelement <4 x i64> %469, i32 0
  %477 = shl i64 %476, 3
  %478 = add nuw nsw i64 %477, %467
  %479 = getelementptr i8, i8* %call, i64 %478
  %480 = bitcast i8* %479 to <4 x double>*
  store <4 x double> %475, <4 x double>* %480, align 8, !alias.scope !87, !noalias !89
  %index.next973 = add i64 %index972, 4
  %vec.ind.next977 = add <4 x i64> %vec.ind976, <i64 4, i64 4, i64 4, i64 4>
  %481 = icmp eq i64 %index.next973, 32
  br i1 %481, label %polly.loop_exit675.1.2, label %vector.body970, !llvm.loop !113

polly.loop_exit675.1.2:                           ; preds = %vector.body970
  %polly.indvar_next671.1.2 = add nuw nsw i64 %polly.indvar670.1.2, 1
  %exitcond791.1.2.not = icmp eq i64 %polly.indvar_next671.1.2, 16
  br i1 %exitcond791.1.2.not, label %polly.loop_header667.2.2, label %polly.loop_header667.1.2

polly.loop_header667.2.2:                         ; preds = %polly.loop_exit675.1.2, %polly.loop_exit675.2.2
  %polly.indvar670.2.2 = phi i64 [ %polly.indvar_next671.2.2, %polly.loop_exit675.2.2 ], [ 0, %polly.loop_exit675.1.2 ]
  %482 = add nuw nsw i64 %polly.indvar670.2.2, 64
  %483 = mul nuw nsw i64 %482, 640
  %484 = trunc i64 %482 to i32
  %broadcast.splatinsert990 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat991 = shufflevector <4 x i32> %broadcast.splatinsert990, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %polly.loop_header667.2.2
  %index984 = phi i64 [ 0, %polly.loop_header667.2.2 ], [ %index.next985, %vector.body982 ]
  %vec.ind988 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.2.2 ], [ %vec.ind.next989, %vector.body982 ]
  %485 = add nuw nsw <4 x i64> %vec.ind988, <i64 64, i64 64, i64 64, i64 64>
  %486 = trunc <4 x i64> %485 to <4 x i32>
  %487 = mul <4 x i32> %broadcast.splat991, %486
  %488 = add <4 x i32> %487, <i32 3, i32 3, i32 3, i32 3>
  %489 = urem <4 x i32> %488, <i32 80, i32 80, i32 80, i32 80>
  %490 = sitofp <4 x i32> %489 to <4 x double>
  %491 = fmul fast <4 x double> %490, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %492 = extractelement <4 x i64> %485, i32 0
  %493 = shl i64 %492, 3
  %494 = add nuw nsw i64 %493, %483
  %495 = getelementptr i8, i8* %call, i64 %494
  %496 = bitcast i8* %495 to <4 x double>*
  store <4 x double> %491, <4 x double>* %496, align 8, !alias.scope !87, !noalias !89
  %index.next985 = add i64 %index984, 4
  %vec.ind.next989 = add <4 x i64> %vec.ind988, <i64 4, i64 4, i64 4, i64 4>
  %497 = icmp eq i64 %index.next985, 16
  br i1 %497, label %polly.loop_exit675.2.2, label %vector.body982, !llvm.loop !114

polly.loop_exit675.2.2:                           ; preds = %vector.body982
  %polly.indvar_next671.2.2 = add nuw nsw i64 %polly.indvar670.2.2, 1
  %exitcond791.2.2.not = icmp eq i64 %polly.indvar_next671.2.2, 16
  br i1 %exitcond791.2.2.not, label %polly.loop_header694, label %polly.loop_header667.2.2
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

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!24 = !{!"llvm.loop.tile.size", i32 256}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 16}
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
!44 = !{!"llvm.loop.tile.size", i32 80}
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
