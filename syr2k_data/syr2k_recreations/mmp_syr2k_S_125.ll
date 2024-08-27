; ModuleID = 'syr2k_recreations//mmp_syr2k_S_125.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_125.c"
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit501.7
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit357.7
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.7
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
  %exitcond745.not = icmp eq i64 %polly.indvar_next215, 8
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
  %exitcond756.not = icmp eq i64 %polly.indvar_next359, 8
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
  %exitcond767.not = icmp eq i64 %polly.indvar_next503, 8
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
  %172 = add i64 %171, 64
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
  %exitcond745.1.not = icmp eq i64 %polly.indvar_next215.1, 8
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
  %179 = add i64 %178, 128
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
  %exitcond745.2.not = icmp eq i64 %polly.indvar_next215.2, 8
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
  %186 = add i64 %185, 192
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
  %exitcond745.3.not = icmp eq i64 %polly.indvar_next215.3, 8
  br i1 %exitcond745.3.not, label %polly.loop_exit213.3, label %polly.loop_header211.3

polly.loop_exit213.3:                             ; preds = %polly.loop_exit219.3
  %polly.indvar_next209.3 = add nuw nsw i64 %polly.indvar208.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond746.3.not = icmp eq i64 %polly.indvar_next209.3, 80
  br i1 %exitcond746.3.not, label %polly.loop_header205.4, label %polly.loop_header205.3

polly.loop_header205.4:                           ; preds = %polly.loop_exit213.3, %polly.loop_exit213.4
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4, %polly.loop_exit213.4 ], [ 1, %polly.loop_exit213.3 ]
  %polly.indvar208.4 = phi i64 [ %polly.indvar_next209.4, %polly.loop_exit213.4 ], [ 0, %polly.loop_exit213.3 ]
  %190 = mul nuw nsw i64 %polly.indvar208.4, 480
  %scevgep226.4 = getelementptr i8, i8* %call2, i64 %190
  %scevgep233.4 = getelementptr i8, i8* %call1, i64 %190
  %191 = mul nuw nsw i64 %polly.indvar208.4, 640
  %scevgep237.4 = getelementptr i8, i8* %call, i64 %191
  br label %polly.loop_header211.4

polly.loop_header211.4:                           ; preds = %polly.loop_exit219.4, %polly.loop_header205.4
  %polly.indvar214.4 = phi i64 [ 0, %polly.loop_header205.4 ], [ %polly.indvar_next215.4, %polly.loop_exit219.4 ]
  %192 = shl i64 %polly.indvar214.4, 3
  %193 = add i64 %192, 256
  %scevgep227.4 = getelementptr i8, i8* %scevgep226.4, i64 %193
  %scevgep227228.4 = bitcast i8* %scevgep227.4 to double*
  %_p_scalar_229.4 = load double, double* %scevgep227228.4, align 8, !alias.scope !63, !noalias !67
  %scevgep234.4 = getelementptr i8, i8* %scevgep233.4, i64 %193
  %scevgep234235.4 = bitcast i8* %scevgep234.4 to double*
  %_p_scalar_236.4 = load double, double* %scevgep234235.4, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217.4

polly.loop_header217.4:                           ; preds = %polly.loop_header217.4, %polly.loop_header211.4
  %polly.indvar220.4 = phi i64 [ 0, %polly.loop_header211.4 ], [ %polly.indvar_next221.4, %polly.loop_header217.4 ]
  %194 = mul nuw nsw i64 %polly.indvar220.4, 480
  %195 = add nuw nsw i64 %194, %193
  %scevgep223.4 = getelementptr i8, i8* %call1, i64 %195
  %scevgep223224.4 = bitcast i8* %scevgep223.4 to double*
  %_p_scalar_225.4 = load double, double* %scevgep223224.4, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.4 = fmul fast double %_p_scalar_229.4, %_p_scalar_225.4
  %scevgep230.4 = getelementptr i8, i8* %call2, i64 %195
  %scevgep230231.4 = bitcast i8* %scevgep230.4 to double*
  %_p_scalar_232.4 = load double, double* %scevgep230231.4, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.4 = fmul fast double %_p_scalar_236.4, %_p_scalar_232.4
  %196 = shl nuw nsw i64 %polly.indvar220.4, 3
  %scevgep238.4 = getelementptr i8, i8* %scevgep237.4, i64 %196
  %scevgep238239.4 = bitcast i8* %scevgep238.4 to double*
  %_p_scalar_240.4 = load double, double* %scevgep238239.4, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_240.4
  store double %p_add42.i118.4, double* %scevgep238239.4, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221.4 = add nuw nsw i64 %polly.indvar220.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar_next221.4, %indvars.iv.4
  br i1 %exitcond.4.not, label %polly.loop_exit219.4, label %polly.loop_header217.4

polly.loop_exit219.4:                             ; preds = %polly.loop_header217.4
  %polly.indvar_next215.4 = add nuw nsw i64 %polly.indvar214.4, 1
  %exitcond745.4.not = icmp eq i64 %polly.indvar_next215.4, 8
  br i1 %exitcond745.4.not, label %polly.loop_exit213.4, label %polly.loop_header211.4

polly.loop_exit213.4:                             ; preds = %polly.loop_exit219.4
  %polly.indvar_next209.4 = add nuw nsw i64 %polly.indvar208.4, 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond746.4.not = icmp eq i64 %polly.indvar_next209.4, 80
  br i1 %exitcond746.4.not, label %polly.loop_header205.5, label %polly.loop_header205.4

polly.loop_header205.5:                           ; preds = %polly.loop_exit213.4, %polly.loop_exit213.5
  %indvars.iv.5 = phi i64 [ %indvars.iv.next.5, %polly.loop_exit213.5 ], [ 1, %polly.loop_exit213.4 ]
  %polly.indvar208.5 = phi i64 [ %polly.indvar_next209.5, %polly.loop_exit213.5 ], [ 0, %polly.loop_exit213.4 ]
  %197 = mul nuw nsw i64 %polly.indvar208.5, 480
  %scevgep226.5 = getelementptr i8, i8* %call2, i64 %197
  %scevgep233.5 = getelementptr i8, i8* %call1, i64 %197
  %198 = mul nuw nsw i64 %polly.indvar208.5, 640
  %scevgep237.5 = getelementptr i8, i8* %call, i64 %198
  br label %polly.loop_header211.5

polly.loop_header211.5:                           ; preds = %polly.loop_exit219.5, %polly.loop_header205.5
  %polly.indvar214.5 = phi i64 [ 0, %polly.loop_header205.5 ], [ %polly.indvar_next215.5, %polly.loop_exit219.5 ]
  %199 = shl i64 %polly.indvar214.5, 3
  %200 = add i64 %199, 320
  %scevgep227.5 = getelementptr i8, i8* %scevgep226.5, i64 %200
  %scevgep227228.5 = bitcast i8* %scevgep227.5 to double*
  %_p_scalar_229.5 = load double, double* %scevgep227228.5, align 8, !alias.scope !63, !noalias !67
  %scevgep234.5 = getelementptr i8, i8* %scevgep233.5, i64 %200
  %scevgep234235.5 = bitcast i8* %scevgep234.5 to double*
  %_p_scalar_236.5 = load double, double* %scevgep234235.5, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217.5

polly.loop_header217.5:                           ; preds = %polly.loop_header217.5, %polly.loop_header211.5
  %polly.indvar220.5 = phi i64 [ 0, %polly.loop_header211.5 ], [ %polly.indvar_next221.5, %polly.loop_header217.5 ]
  %201 = mul nuw nsw i64 %polly.indvar220.5, 480
  %202 = add nuw nsw i64 %201, %200
  %scevgep223.5 = getelementptr i8, i8* %call1, i64 %202
  %scevgep223224.5 = bitcast i8* %scevgep223.5 to double*
  %_p_scalar_225.5 = load double, double* %scevgep223224.5, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.5 = fmul fast double %_p_scalar_229.5, %_p_scalar_225.5
  %scevgep230.5 = getelementptr i8, i8* %call2, i64 %202
  %scevgep230231.5 = bitcast i8* %scevgep230.5 to double*
  %_p_scalar_232.5 = load double, double* %scevgep230231.5, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.5 = fmul fast double %_p_scalar_236.5, %_p_scalar_232.5
  %203 = shl nuw nsw i64 %polly.indvar220.5, 3
  %scevgep238.5 = getelementptr i8, i8* %scevgep237.5, i64 %203
  %scevgep238239.5 = bitcast i8* %scevgep238.5 to double*
  %_p_scalar_240.5 = load double, double* %scevgep238239.5, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_240.5
  store double %p_add42.i118.5, double* %scevgep238239.5, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221.5 = add nuw nsw i64 %polly.indvar220.5, 1
  %exitcond.5.not = icmp eq i64 %polly.indvar_next221.5, %indvars.iv.5
  br i1 %exitcond.5.not, label %polly.loop_exit219.5, label %polly.loop_header217.5

polly.loop_exit219.5:                             ; preds = %polly.loop_header217.5
  %polly.indvar_next215.5 = add nuw nsw i64 %polly.indvar214.5, 1
  %exitcond745.5.not = icmp eq i64 %polly.indvar_next215.5, 8
  br i1 %exitcond745.5.not, label %polly.loop_exit213.5, label %polly.loop_header211.5

polly.loop_exit213.5:                             ; preds = %polly.loop_exit219.5
  %polly.indvar_next209.5 = add nuw nsw i64 %polly.indvar208.5, 1
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %exitcond746.5.not = icmp eq i64 %polly.indvar_next209.5, 80
  br i1 %exitcond746.5.not, label %polly.loop_header205.6, label %polly.loop_header205.5

polly.loop_header205.6:                           ; preds = %polly.loop_exit213.5, %polly.loop_exit213.6
  %indvars.iv.6 = phi i64 [ %indvars.iv.next.6, %polly.loop_exit213.6 ], [ 1, %polly.loop_exit213.5 ]
  %polly.indvar208.6 = phi i64 [ %polly.indvar_next209.6, %polly.loop_exit213.6 ], [ 0, %polly.loop_exit213.5 ]
  %204 = mul nuw nsw i64 %polly.indvar208.6, 480
  %scevgep226.6 = getelementptr i8, i8* %call2, i64 %204
  %scevgep233.6 = getelementptr i8, i8* %call1, i64 %204
  %205 = mul nuw nsw i64 %polly.indvar208.6, 640
  %scevgep237.6 = getelementptr i8, i8* %call, i64 %205
  br label %polly.loop_header211.6

polly.loop_header211.6:                           ; preds = %polly.loop_exit219.6, %polly.loop_header205.6
  %polly.indvar214.6 = phi i64 [ 0, %polly.loop_header205.6 ], [ %polly.indvar_next215.6, %polly.loop_exit219.6 ]
  %206 = shl i64 %polly.indvar214.6, 3
  %207 = add i64 %206, 384
  %scevgep227.6 = getelementptr i8, i8* %scevgep226.6, i64 %207
  %scevgep227228.6 = bitcast i8* %scevgep227.6 to double*
  %_p_scalar_229.6 = load double, double* %scevgep227228.6, align 8, !alias.scope !63, !noalias !67
  %scevgep234.6 = getelementptr i8, i8* %scevgep233.6, i64 %207
  %scevgep234235.6 = bitcast i8* %scevgep234.6 to double*
  %_p_scalar_236.6 = load double, double* %scevgep234235.6, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217.6

polly.loop_header217.6:                           ; preds = %polly.loop_header217.6, %polly.loop_header211.6
  %polly.indvar220.6 = phi i64 [ 0, %polly.loop_header211.6 ], [ %polly.indvar_next221.6, %polly.loop_header217.6 ]
  %208 = mul nuw nsw i64 %polly.indvar220.6, 480
  %209 = add nuw nsw i64 %208, %207
  %scevgep223.6 = getelementptr i8, i8* %call1, i64 %209
  %scevgep223224.6 = bitcast i8* %scevgep223.6 to double*
  %_p_scalar_225.6 = load double, double* %scevgep223224.6, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.6 = fmul fast double %_p_scalar_229.6, %_p_scalar_225.6
  %scevgep230.6 = getelementptr i8, i8* %call2, i64 %209
  %scevgep230231.6 = bitcast i8* %scevgep230.6 to double*
  %_p_scalar_232.6 = load double, double* %scevgep230231.6, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.6 = fmul fast double %_p_scalar_236.6, %_p_scalar_232.6
  %210 = shl nuw nsw i64 %polly.indvar220.6, 3
  %scevgep238.6 = getelementptr i8, i8* %scevgep237.6, i64 %210
  %scevgep238239.6 = bitcast i8* %scevgep238.6 to double*
  %_p_scalar_240.6 = load double, double* %scevgep238239.6, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_240.6
  store double %p_add42.i118.6, double* %scevgep238239.6, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221.6 = add nuw nsw i64 %polly.indvar220.6, 1
  %exitcond.6.not = icmp eq i64 %polly.indvar_next221.6, %indvars.iv.6
  br i1 %exitcond.6.not, label %polly.loop_exit219.6, label %polly.loop_header217.6

polly.loop_exit219.6:                             ; preds = %polly.loop_header217.6
  %polly.indvar_next215.6 = add nuw nsw i64 %polly.indvar214.6, 1
  %exitcond745.6.not = icmp eq i64 %polly.indvar_next215.6, 8
  br i1 %exitcond745.6.not, label %polly.loop_exit213.6, label %polly.loop_header211.6

polly.loop_exit213.6:                             ; preds = %polly.loop_exit219.6
  %polly.indvar_next209.6 = add nuw nsw i64 %polly.indvar208.6, 1
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %exitcond746.6.not = icmp eq i64 %polly.indvar_next209.6, 80
  br i1 %exitcond746.6.not, label %polly.loop_header205.7, label %polly.loop_header205.6

polly.loop_header205.7:                           ; preds = %polly.loop_exit213.6, %polly.loop_exit213.7
  %indvars.iv.7 = phi i64 [ %indvars.iv.next.7, %polly.loop_exit213.7 ], [ 1, %polly.loop_exit213.6 ]
  %polly.indvar208.7 = phi i64 [ %polly.indvar_next209.7, %polly.loop_exit213.7 ], [ 0, %polly.loop_exit213.6 ]
  %211 = mul nuw nsw i64 %polly.indvar208.7, 480
  %scevgep226.7 = getelementptr i8, i8* %call2, i64 %211
  %scevgep233.7 = getelementptr i8, i8* %call1, i64 %211
  %212 = mul nuw nsw i64 %polly.indvar208.7, 640
  %scevgep237.7 = getelementptr i8, i8* %call, i64 %212
  br label %polly.loop_header211.7

polly.loop_header211.7:                           ; preds = %polly.loop_exit219.7, %polly.loop_header205.7
  %polly.indvar214.7 = phi i64 [ 0, %polly.loop_header205.7 ], [ %polly.indvar_next215.7, %polly.loop_exit219.7 ]
  %213 = shl i64 %polly.indvar214.7, 3
  %214 = add i64 %213, 448
  %scevgep227.7 = getelementptr i8, i8* %scevgep226.7, i64 %214
  %scevgep227228.7 = bitcast i8* %scevgep227.7 to double*
  %_p_scalar_229.7 = load double, double* %scevgep227228.7, align 8, !alias.scope !63, !noalias !67
  %scevgep234.7 = getelementptr i8, i8* %scevgep233.7, i64 %214
  %scevgep234235.7 = bitcast i8* %scevgep234.7 to double*
  %_p_scalar_236.7 = load double, double* %scevgep234235.7, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217.7

polly.loop_header217.7:                           ; preds = %polly.loop_header217.7, %polly.loop_header211.7
  %polly.indvar220.7 = phi i64 [ 0, %polly.loop_header211.7 ], [ %polly.indvar_next221.7, %polly.loop_header217.7 ]
  %215 = mul nuw nsw i64 %polly.indvar220.7, 480
  %216 = add nuw nsw i64 %215, %214
  %scevgep223.7 = getelementptr i8, i8* %call1, i64 %216
  %scevgep223224.7 = bitcast i8* %scevgep223.7 to double*
  %_p_scalar_225.7 = load double, double* %scevgep223224.7, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.7 = fmul fast double %_p_scalar_229.7, %_p_scalar_225.7
  %scevgep230.7 = getelementptr i8, i8* %call2, i64 %216
  %scevgep230231.7 = bitcast i8* %scevgep230.7 to double*
  %_p_scalar_232.7 = load double, double* %scevgep230231.7, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.7 = fmul fast double %_p_scalar_236.7, %_p_scalar_232.7
  %217 = shl nuw nsw i64 %polly.indvar220.7, 3
  %scevgep238.7 = getelementptr i8, i8* %scevgep237.7, i64 %217
  %scevgep238239.7 = bitcast i8* %scevgep238.7 to double*
  %_p_scalar_240.7 = load double, double* %scevgep238239.7, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_240.7
  store double %p_add42.i118.7, double* %scevgep238239.7, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221.7 = add nuw nsw i64 %polly.indvar220.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar_next221.7, %indvars.iv.7
  br i1 %exitcond.7.not, label %polly.loop_exit219.7, label %polly.loop_header217.7

polly.loop_exit219.7:                             ; preds = %polly.loop_header217.7
  %polly.indvar_next215.7 = add nuw nsw i64 %polly.indvar214.7, 1
  %exitcond745.7.not = icmp eq i64 %polly.indvar_next215.7, 4
  br i1 %exitcond745.7.not, label %polly.loop_exit213.7, label %polly.loop_header211.7

polly.loop_exit213.7:                             ; preds = %polly.loop_exit219.7
  %polly.indvar_next209.7 = add nuw nsw i64 %polly.indvar208.7, 1
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %exitcond746.7.not = icmp eq i64 %polly.indvar_next209.7, 80
  br i1 %exitcond746.7.not, label %kernel_syr2k.exit129, label %polly.loop_header205.7

polly.loop_header349.1:                           ; preds = %polly.loop_exit357, %polly.loop_exit357.1
  %indvars.iv750.1 = phi i64 [ %indvars.iv.next751.1, %polly.loop_exit357.1 ], [ 1, %polly.loop_exit357 ]
  %polly.indvar352.1 = phi i64 [ %polly.indvar_next353.1, %polly.loop_exit357.1 ], [ 0, %polly.loop_exit357 ]
  %218 = mul nuw nsw i64 %polly.indvar352.1, 480
  %scevgep370.1 = getelementptr i8, i8* %call2, i64 %218
  %scevgep377.1 = getelementptr i8, i8* %call1, i64 %218
  %219 = mul nuw nsw i64 %polly.indvar352.1, 640
  %scevgep381.1 = getelementptr i8, i8* %call, i64 %219
  br label %polly.loop_header355.1

polly.loop_header355.1:                           ; preds = %polly.loop_exit363.1, %polly.loop_header349.1
  %polly.indvar358.1 = phi i64 [ 0, %polly.loop_header349.1 ], [ %polly.indvar_next359.1, %polly.loop_exit363.1 ]
  %220 = shl i64 %polly.indvar358.1, 3
  %221 = add i64 %220, 64
  %scevgep371.1 = getelementptr i8, i8* %scevgep370.1, i64 %221
  %scevgep371372.1 = bitcast i8* %scevgep371.1 to double*
  %_p_scalar_373.1 = load double, double* %scevgep371372.1, align 8, !alias.scope !73, !noalias !76
  %scevgep378.1 = getelementptr i8, i8* %scevgep377.1, i64 %221
  %scevgep378379.1 = bitcast i8* %scevgep378.1 to double*
  %_p_scalar_380.1 = load double, double* %scevgep378379.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header361.1

polly.loop_header361.1:                           ; preds = %polly.loop_header361.1, %polly.loop_header355.1
  %polly.indvar364.1 = phi i64 [ 0, %polly.loop_header355.1 ], [ %polly.indvar_next365.1, %polly.loop_header361.1 ]
  %222 = mul nuw nsw i64 %polly.indvar364.1, 480
  %223 = add nuw nsw i64 %222, %221
  %scevgep367.1 = getelementptr i8, i8* %call1, i64 %223
  %scevgep367368.1 = bitcast i8* %scevgep367.1 to double*
  %_p_scalar_369.1 = load double, double* %scevgep367368.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1 = fmul fast double %_p_scalar_373.1, %_p_scalar_369.1
  %scevgep374.1 = getelementptr i8, i8* %call2, i64 %223
  %scevgep374375.1 = bitcast i8* %scevgep374.1 to double*
  %_p_scalar_376.1 = load double, double* %scevgep374375.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1 = fmul fast double %_p_scalar_380.1, %_p_scalar_376.1
  %224 = shl nuw nsw i64 %polly.indvar364.1, 3
  %scevgep382.1 = getelementptr i8, i8* %scevgep381.1, i64 %224
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
  %exitcond756.1.not = icmp eq i64 %polly.indvar_next359.1, 8
  br i1 %exitcond756.1.not, label %polly.loop_exit357.1, label %polly.loop_header355.1

polly.loop_exit357.1:                             ; preds = %polly.loop_exit363.1
  %polly.indvar_next353.1 = add nuw nsw i64 %polly.indvar352.1, 1
  %indvars.iv.next751.1 = add nuw nsw i64 %indvars.iv750.1, 1
  %exitcond757.1.not = icmp eq i64 %polly.indvar_next353.1, 80
  br i1 %exitcond757.1.not, label %polly.loop_header349.2, label %polly.loop_header349.1

polly.loop_header349.2:                           ; preds = %polly.loop_exit357.1, %polly.loop_exit357.2
  %indvars.iv750.2 = phi i64 [ %indvars.iv.next751.2, %polly.loop_exit357.2 ], [ 1, %polly.loop_exit357.1 ]
  %polly.indvar352.2 = phi i64 [ %polly.indvar_next353.2, %polly.loop_exit357.2 ], [ 0, %polly.loop_exit357.1 ]
  %225 = mul nuw nsw i64 %polly.indvar352.2, 480
  %scevgep370.2 = getelementptr i8, i8* %call2, i64 %225
  %scevgep377.2 = getelementptr i8, i8* %call1, i64 %225
  %226 = mul nuw nsw i64 %polly.indvar352.2, 640
  %scevgep381.2 = getelementptr i8, i8* %call, i64 %226
  br label %polly.loop_header355.2

polly.loop_header355.2:                           ; preds = %polly.loop_exit363.2, %polly.loop_header349.2
  %polly.indvar358.2 = phi i64 [ 0, %polly.loop_header349.2 ], [ %polly.indvar_next359.2, %polly.loop_exit363.2 ]
  %227 = shl i64 %polly.indvar358.2, 3
  %228 = add i64 %227, 128
  %scevgep371.2 = getelementptr i8, i8* %scevgep370.2, i64 %228
  %scevgep371372.2 = bitcast i8* %scevgep371.2 to double*
  %_p_scalar_373.2 = load double, double* %scevgep371372.2, align 8, !alias.scope !73, !noalias !76
  %scevgep378.2 = getelementptr i8, i8* %scevgep377.2, i64 %228
  %scevgep378379.2 = bitcast i8* %scevgep378.2 to double*
  %_p_scalar_380.2 = load double, double* %scevgep378379.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header361.2

polly.loop_header361.2:                           ; preds = %polly.loop_header361.2, %polly.loop_header355.2
  %polly.indvar364.2 = phi i64 [ 0, %polly.loop_header355.2 ], [ %polly.indvar_next365.2, %polly.loop_header361.2 ]
  %229 = mul nuw nsw i64 %polly.indvar364.2, 480
  %230 = add nuw nsw i64 %229, %228
  %scevgep367.2 = getelementptr i8, i8* %call1, i64 %230
  %scevgep367368.2 = bitcast i8* %scevgep367.2 to double*
  %_p_scalar_369.2 = load double, double* %scevgep367368.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.2 = fmul fast double %_p_scalar_373.2, %_p_scalar_369.2
  %scevgep374.2 = getelementptr i8, i8* %call2, i64 %230
  %scevgep374375.2 = bitcast i8* %scevgep374.2 to double*
  %_p_scalar_376.2 = load double, double* %scevgep374375.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.2 = fmul fast double %_p_scalar_380.2, %_p_scalar_376.2
  %231 = shl nuw nsw i64 %polly.indvar364.2, 3
  %scevgep382.2 = getelementptr i8, i8* %scevgep381.2, i64 %231
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
  %exitcond756.2.not = icmp eq i64 %polly.indvar_next359.2, 8
  br i1 %exitcond756.2.not, label %polly.loop_exit357.2, label %polly.loop_header355.2

polly.loop_exit357.2:                             ; preds = %polly.loop_exit363.2
  %polly.indvar_next353.2 = add nuw nsw i64 %polly.indvar352.2, 1
  %indvars.iv.next751.2 = add nuw nsw i64 %indvars.iv750.2, 1
  %exitcond757.2.not = icmp eq i64 %polly.indvar_next353.2, 80
  br i1 %exitcond757.2.not, label %polly.loop_header349.3, label %polly.loop_header349.2

polly.loop_header349.3:                           ; preds = %polly.loop_exit357.2, %polly.loop_exit357.3
  %indvars.iv750.3 = phi i64 [ %indvars.iv.next751.3, %polly.loop_exit357.3 ], [ 1, %polly.loop_exit357.2 ]
  %polly.indvar352.3 = phi i64 [ %polly.indvar_next353.3, %polly.loop_exit357.3 ], [ 0, %polly.loop_exit357.2 ]
  %232 = mul nuw nsw i64 %polly.indvar352.3, 480
  %scevgep370.3 = getelementptr i8, i8* %call2, i64 %232
  %scevgep377.3 = getelementptr i8, i8* %call1, i64 %232
  %233 = mul nuw nsw i64 %polly.indvar352.3, 640
  %scevgep381.3 = getelementptr i8, i8* %call, i64 %233
  br label %polly.loop_header355.3

polly.loop_header355.3:                           ; preds = %polly.loop_exit363.3, %polly.loop_header349.3
  %polly.indvar358.3 = phi i64 [ 0, %polly.loop_header349.3 ], [ %polly.indvar_next359.3, %polly.loop_exit363.3 ]
  %234 = shl i64 %polly.indvar358.3, 3
  %235 = add i64 %234, 192
  %scevgep371.3 = getelementptr i8, i8* %scevgep370.3, i64 %235
  %scevgep371372.3 = bitcast i8* %scevgep371.3 to double*
  %_p_scalar_373.3 = load double, double* %scevgep371372.3, align 8, !alias.scope !73, !noalias !76
  %scevgep378.3 = getelementptr i8, i8* %scevgep377.3, i64 %235
  %scevgep378379.3 = bitcast i8* %scevgep378.3 to double*
  %_p_scalar_380.3 = load double, double* %scevgep378379.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header361.3

polly.loop_header361.3:                           ; preds = %polly.loop_header361.3, %polly.loop_header355.3
  %polly.indvar364.3 = phi i64 [ 0, %polly.loop_header355.3 ], [ %polly.indvar_next365.3, %polly.loop_header361.3 ]
  %236 = mul nuw nsw i64 %polly.indvar364.3, 480
  %237 = add nuw nsw i64 %236, %235
  %scevgep367.3 = getelementptr i8, i8* %call1, i64 %237
  %scevgep367368.3 = bitcast i8* %scevgep367.3 to double*
  %_p_scalar_369.3 = load double, double* %scevgep367368.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.3 = fmul fast double %_p_scalar_373.3, %_p_scalar_369.3
  %scevgep374.3 = getelementptr i8, i8* %call2, i64 %237
  %scevgep374375.3 = bitcast i8* %scevgep374.3 to double*
  %_p_scalar_376.3 = load double, double* %scevgep374375.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.3 = fmul fast double %_p_scalar_380.3, %_p_scalar_376.3
  %238 = shl nuw nsw i64 %polly.indvar364.3, 3
  %scevgep382.3 = getelementptr i8, i8* %scevgep381.3, i64 %238
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
  %exitcond756.3.not = icmp eq i64 %polly.indvar_next359.3, 8
  br i1 %exitcond756.3.not, label %polly.loop_exit357.3, label %polly.loop_header355.3

polly.loop_exit357.3:                             ; preds = %polly.loop_exit363.3
  %polly.indvar_next353.3 = add nuw nsw i64 %polly.indvar352.3, 1
  %indvars.iv.next751.3 = add nuw nsw i64 %indvars.iv750.3, 1
  %exitcond757.3.not = icmp eq i64 %polly.indvar_next353.3, 80
  br i1 %exitcond757.3.not, label %polly.loop_header349.4, label %polly.loop_header349.3

polly.loop_header349.4:                           ; preds = %polly.loop_exit357.3, %polly.loop_exit357.4
  %indvars.iv750.4 = phi i64 [ %indvars.iv.next751.4, %polly.loop_exit357.4 ], [ 1, %polly.loop_exit357.3 ]
  %polly.indvar352.4 = phi i64 [ %polly.indvar_next353.4, %polly.loop_exit357.4 ], [ 0, %polly.loop_exit357.3 ]
  %239 = mul nuw nsw i64 %polly.indvar352.4, 480
  %scevgep370.4 = getelementptr i8, i8* %call2, i64 %239
  %scevgep377.4 = getelementptr i8, i8* %call1, i64 %239
  %240 = mul nuw nsw i64 %polly.indvar352.4, 640
  %scevgep381.4 = getelementptr i8, i8* %call, i64 %240
  br label %polly.loop_header355.4

polly.loop_header355.4:                           ; preds = %polly.loop_exit363.4, %polly.loop_header349.4
  %polly.indvar358.4 = phi i64 [ 0, %polly.loop_header349.4 ], [ %polly.indvar_next359.4, %polly.loop_exit363.4 ]
  %241 = shl i64 %polly.indvar358.4, 3
  %242 = add i64 %241, 256
  %scevgep371.4 = getelementptr i8, i8* %scevgep370.4, i64 %242
  %scevgep371372.4 = bitcast i8* %scevgep371.4 to double*
  %_p_scalar_373.4 = load double, double* %scevgep371372.4, align 8, !alias.scope !73, !noalias !76
  %scevgep378.4 = getelementptr i8, i8* %scevgep377.4, i64 %242
  %scevgep378379.4 = bitcast i8* %scevgep378.4 to double*
  %_p_scalar_380.4 = load double, double* %scevgep378379.4, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header361.4

polly.loop_header361.4:                           ; preds = %polly.loop_header361.4, %polly.loop_header355.4
  %polly.indvar364.4 = phi i64 [ 0, %polly.loop_header355.4 ], [ %polly.indvar_next365.4, %polly.loop_header361.4 ]
  %243 = mul nuw nsw i64 %polly.indvar364.4, 480
  %244 = add nuw nsw i64 %243, %242
  %scevgep367.4 = getelementptr i8, i8* %call1, i64 %244
  %scevgep367368.4 = bitcast i8* %scevgep367.4 to double*
  %_p_scalar_369.4 = load double, double* %scevgep367368.4, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.4 = fmul fast double %_p_scalar_373.4, %_p_scalar_369.4
  %scevgep374.4 = getelementptr i8, i8* %call2, i64 %244
  %scevgep374375.4 = bitcast i8* %scevgep374.4 to double*
  %_p_scalar_376.4 = load double, double* %scevgep374375.4, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.4 = fmul fast double %_p_scalar_380.4, %_p_scalar_376.4
  %245 = shl nuw nsw i64 %polly.indvar364.4, 3
  %scevgep382.4 = getelementptr i8, i8* %scevgep381.4, i64 %245
  %scevgep382383.4 = bitcast i8* %scevgep382.4 to double*
  %_p_scalar_384.4 = load double, double* %scevgep382383.4, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_384.4
  store double %p_add42.i79.4, double* %scevgep382383.4, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next365.4 = add nuw nsw i64 %polly.indvar364.4, 1
  %exitcond752.4.not = icmp eq i64 %polly.indvar_next365.4, %indvars.iv750.4
  br i1 %exitcond752.4.not, label %polly.loop_exit363.4, label %polly.loop_header361.4

polly.loop_exit363.4:                             ; preds = %polly.loop_header361.4
  %polly.indvar_next359.4 = add nuw nsw i64 %polly.indvar358.4, 1
  %exitcond756.4.not = icmp eq i64 %polly.indvar_next359.4, 8
  br i1 %exitcond756.4.not, label %polly.loop_exit357.4, label %polly.loop_header355.4

polly.loop_exit357.4:                             ; preds = %polly.loop_exit363.4
  %polly.indvar_next353.4 = add nuw nsw i64 %polly.indvar352.4, 1
  %indvars.iv.next751.4 = add nuw nsw i64 %indvars.iv750.4, 1
  %exitcond757.4.not = icmp eq i64 %polly.indvar_next353.4, 80
  br i1 %exitcond757.4.not, label %polly.loop_header349.5, label %polly.loop_header349.4

polly.loop_header349.5:                           ; preds = %polly.loop_exit357.4, %polly.loop_exit357.5
  %indvars.iv750.5 = phi i64 [ %indvars.iv.next751.5, %polly.loop_exit357.5 ], [ 1, %polly.loop_exit357.4 ]
  %polly.indvar352.5 = phi i64 [ %polly.indvar_next353.5, %polly.loop_exit357.5 ], [ 0, %polly.loop_exit357.4 ]
  %246 = mul nuw nsw i64 %polly.indvar352.5, 480
  %scevgep370.5 = getelementptr i8, i8* %call2, i64 %246
  %scevgep377.5 = getelementptr i8, i8* %call1, i64 %246
  %247 = mul nuw nsw i64 %polly.indvar352.5, 640
  %scevgep381.5 = getelementptr i8, i8* %call, i64 %247
  br label %polly.loop_header355.5

polly.loop_header355.5:                           ; preds = %polly.loop_exit363.5, %polly.loop_header349.5
  %polly.indvar358.5 = phi i64 [ 0, %polly.loop_header349.5 ], [ %polly.indvar_next359.5, %polly.loop_exit363.5 ]
  %248 = shl i64 %polly.indvar358.5, 3
  %249 = add i64 %248, 320
  %scevgep371.5 = getelementptr i8, i8* %scevgep370.5, i64 %249
  %scevgep371372.5 = bitcast i8* %scevgep371.5 to double*
  %_p_scalar_373.5 = load double, double* %scevgep371372.5, align 8, !alias.scope !73, !noalias !76
  %scevgep378.5 = getelementptr i8, i8* %scevgep377.5, i64 %249
  %scevgep378379.5 = bitcast i8* %scevgep378.5 to double*
  %_p_scalar_380.5 = load double, double* %scevgep378379.5, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header361.5

polly.loop_header361.5:                           ; preds = %polly.loop_header361.5, %polly.loop_header355.5
  %polly.indvar364.5 = phi i64 [ 0, %polly.loop_header355.5 ], [ %polly.indvar_next365.5, %polly.loop_header361.5 ]
  %250 = mul nuw nsw i64 %polly.indvar364.5, 480
  %251 = add nuw nsw i64 %250, %249
  %scevgep367.5 = getelementptr i8, i8* %call1, i64 %251
  %scevgep367368.5 = bitcast i8* %scevgep367.5 to double*
  %_p_scalar_369.5 = load double, double* %scevgep367368.5, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.5 = fmul fast double %_p_scalar_373.5, %_p_scalar_369.5
  %scevgep374.5 = getelementptr i8, i8* %call2, i64 %251
  %scevgep374375.5 = bitcast i8* %scevgep374.5 to double*
  %_p_scalar_376.5 = load double, double* %scevgep374375.5, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.5 = fmul fast double %_p_scalar_380.5, %_p_scalar_376.5
  %252 = shl nuw nsw i64 %polly.indvar364.5, 3
  %scevgep382.5 = getelementptr i8, i8* %scevgep381.5, i64 %252
  %scevgep382383.5 = bitcast i8* %scevgep382.5 to double*
  %_p_scalar_384.5 = load double, double* %scevgep382383.5, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_384.5
  store double %p_add42.i79.5, double* %scevgep382383.5, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next365.5 = add nuw nsw i64 %polly.indvar364.5, 1
  %exitcond752.5.not = icmp eq i64 %polly.indvar_next365.5, %indvars.iv750.5
  br i1 %exitcond752.5.not, label %polly.loop_exit363.5, label %polly.loop_header361.5

polly.loop_exit363.5:                             ; preds = %polly.loop_header361.5
  %polly.indvar_next359.5 = add nuw nsw i64 %polly.indvar358.5, 1
  %exitcond756.5.not = icmp eq i64 %polly.indvar_next359.5, 8
  br i1 %exitcond756.5.not, label %polly.loop_exit357.5, label %polly.loop_header355.5

polly.loop_exit357.5:                             ; preds = %polly.loop_exit363.5
  %polly.indvar_next353.5 = add nuw nsw i64 %polly.indvar352.5, 1
  %indvars.iv.next751.5 = add nuw nsw i64 %indvars.iv750.5, 1
  %exitcond757.5.not = icmp eq i64 %polly.indvar_next353.5, 80
  br i1 %exitcond757.5.not, label %polly.loop_header349.6, label %polly.loop_header349.5

polly.loop_header349.6:                           ; preds = %polly.loop_exit357.5, %polly.loop_exit357.6
  %indvars.iv750.6 = phi i64 [ %indvars.iv.next751.6, %polly.loop_exit357.6 ], [ 1, %polly.loop_exit357.5 ]
  %polly.indvar352.6 = phi i64 [ %polly.indvar_next353.6, %polly.loop_exit357.6 ], [ 0, %polly.loop_exit357.5 ]
  %253 = mul nuw nsw i64 %polly.indvar352.6, 480
  %scevgep370.6 = getelementptr i8, i8* %call2, i64 %253
  %scevgep377.6 = getelementptr i8, i8* %call1, i64 %253
  %254 = mul nuw nsw i64 %polly.indvar352.6, 640
  %scevgep381.6 = getelementptr i8, i8* %call, i64 %254
  br label %polly.loop_header355.6

polly.loop_header355.6:                           ; preds = %polly.loop_exit363.6, %polly.loop_header349.6
  %polly.indvar358.6 = phi i64 [ 0, %polly.loop_header349.6 ], [ %polly.indvar_next359.6, %polly.loop_exit363.6 ]
  %255 = shl i64 %polly.indvar358.6, 3
  %256 = add i64 %255, 384
  %scevgep371.6 = getelementptr i8, i8* %scevgep370.6, i64 %256
  %scevgep371372.6 = bitcast i8* %scevgep371.6 to double*
  %_p_scalar_373.6 = load double, double* %scevgep371372.6, align 8, !alias.scope !73, !noalias !76
  %scevgep378.6 = getelementptr i8, i8* %scevgep377.6, i64 %256
  %scevgep378379.6 = bitcast i8* %scevgep378.6 to double*
  %_p_scalar_380.6 = load double, double* %scevgep378379.6, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header361.6

polly.loop_header361.6:                           ; preds = %polly.loop_header361.6, %polly.loop_header355.6
  %polly.indvar364.6 = phi i64 [ 0, %polly.loop_header355.6 ], [ %polly.indvar_next365.6, %polly.loop_header361.6 ]
  %257 = mul nuw nsw i64 %polly.indvar364.6, 480
  %258 = add nuw nsw i64 %257, %256
  %scevgep367.6 = getelementptr i8, i8* %call1, i64 %258
  %scevgep367368.6 = bitcast i8* %scevgep367.6 to double*
  %_p_scalar_369.6 = load double, double* %scevgep367368.6, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.6 = fmul fast double %_p_scalar_373.6, %_p_scalar_369.6
  %scevgep374.6 = getelementptr i8, i8* %call2, i64 %258
  %scevgep374375.6 = bitcast i8* %scevgep374.6 to double*
  %_p_scalar_376.6 = load double, double* %scevgep374375.6, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.6 = fmul fast double %_p_scalar_380.6, %_p_scalar_376.6
  %259 = shl nuw nsw i64 %polly.indvar364.6, 3
  %scevgep382.6 = getelementptr i8, i8* %scevgep381.6, i64 %259
  %scevgep382383.6 = bitcast i8* %scevgep382.6 to double*
  %_p_scalar_384.6 = load double, double* %scevgep382383.6, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_384.6
  store double %p_add42.i79.6, double* %scevgep382383.6, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next365.6 = add nuw nsw i64 %polly.indvar364.6, 1
  %exitcond752.6.not = icmp eq i64 %polly.indvar_next365.6, %indvars.iv750.6
  br i1 %exitcond752.6.not, label %polly.loop_exit363.6, label %polly.loop_header361.6

polly.loop_exit363.6:                             ; preds = %polly.loop_header361.6
  %polly.indvar_next359.6 = add nuw nsw i64 %polly.indvar358.6, 1
  %exitcond756.6.not = icmp eq i64 %polly.indvar_next359.6, 8
  br i1 %exitcond756.6.not, label %polly.loop_exit357.6, label %polly.loop_header355.6

polly.loop_exit357.6:                             ; preds = %polly.loop_exit363.6
  %polly.indvar_next353.6 = add nuw nsw i64 %polly.indvar352.6, 1
  %indvars.iv.next751.6 = add nuw nsw i64 %indvars.iv750.6, 1
  %exitcond757.6.not = icmp eq i64 %polly.indvar_next353.6, 80
  br i1 %exitcond757.6.not, label %polly.loop_header349.7, label %polly.loop_header349.6

polly.loop_header349.7:                           ; preds = %polly.loop_exit357.6, %polly.loop_exit357.7
  %indvars.iv750.7 = phi i64 [ %indvars.iv.next751.7, %polly.loop_exit357.7 ], [ 1, %polly.loop_exit357.6 ]
  %polly.indvar352.7 = phi i64 [ %polly.indvar_next353.7, %polly.loop_exit357.7 ], [ 0, %polly.loop_exit357.6 ]
  %260 = mul nuw nsw i64 %polly.indvar352.7, 480
  %scevgep370.7 = getelementptr i8, i8* %call2, i64 %260
  %scevgep377.7 = getelementptr i8, i8* %call1, i64 %260
  %261 = mul nuw nsw i64 %polly.indvar352.7, 640
  %scevgep381.7 = getelementptr i8, i8* %call, i64 %261
  br label %polly.loop_header355.7

polly.loop_header355.7:                           ; preds = %polly.loop_exit363.7, %polly.loop_header349.7
  %polly.indvar358.7 = phi i64 [ 0, %polly.loop_header349.7 ], [ %polly.indvar_next359.7, %polly.loop_exit363.7 ]
  %262 = shl i64 %polly.indvar358.7, 3
  %263 = add i64 %262, 448
  %scevgep371.7 = getelementptr i8, i8* %scevgep370.7, i64 %263
  %scevgep371372.7 = bitcast i8* %scevgep371.7 to double*
  %_p_scalar_373.7 = load double, double* %scevgep371372.7, align 8, !alias.scope !73, !noalias !76
  %scevgep378.7 = getelementptr i8, i8* %scevgep377.7, i64 %263
  %scevgep378379.7 = bitcast i8* %scevgep378.7 to double*
  %_p_scalar_380.7 = load double, double* %scevgep378379.7, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header361.7

polly.loop_header361.7:                           ; preds = %polly.loop_header361.7, %polly.loop_header355.7
  %polly.indvar364.7 = phi i64 [ 0, %polly.loop_header355.7 ], [ %polly.indvar_next365.7, %polly.loop_header361.7 ]
  %264 = mul nuw nsw i64 %polly.indvar364.7, 480
  %265 = add nuw nsw i64 %264, %263
  %scevgep367.7 = getelementptr i8, i8* %call1, i64 %265
  %scevgep367368.7 = bitcast i8* %scevgep367.7 to double*
  %_p_scalar_369.7 = load double, double* %scevgep367368.7, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.7 = fmul fast double %_p_scalar_373.7, %_p_scalar_369.7
  %scevgep374.7 = getelementptr i8, i8* %call2, i64 %265
  %scevgep374375.7 = bitcast i8* %scevgep374.7 to double*
  %_p_scalar_376.7 = load double, double* %scevgep374375.7, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.7 = fmul fast double %_p_scalar_380.7, %_p_scalar_376.7
  %266 = shl nuw nsw i64 %polly.indvar364.7, 3
  %scevgep382.7 = getelementptr i8, i8* %scevgep381.7, i64 %266
  %scevgep382383.7 = bitcast i8* %scevgep382.7 to double*
  %_p_scalar_384.7 = load double, double* %scevgep382383.7, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_384.7
  store double %p_add42.i79.7, double* %scevgep382383.7, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next365.7 = add nuw nsw i64 %polly.indvar364.7, 1
  %exitcond752.7.not = icmp eq i64 %polly.indvar_next365.7, %indvars.iv750.7
  br i1 %exitcond752.7.not, label %polly.loop_exit363.7, label %polly.loop_header361.7

polly.loop_exit363.7:                             ; preds = %polly.loop_header361.7
  %polly.indvar_next359.7 = add nuw nsw i64 %polly.indvar358.7, 1
  %exitcond756.7.not = icmp eq i64 %polly.indvar_next359.7, 4
  br i1 %exitcond756.7.not, label %polly.loop_exit357.7, label %polly.loop_header355.7

polly.loop_exit357.7:                             ; preds = %polly.loop_exit363.7
  %polly.indvar_next353.7 = add nuw nsw i64 %polly.indvar352.7, 1
  %indvars.iv.next751.7 = add nuw nsw i64 %indvars.iv750.7, 1
  %exitcond757.7.not = icmp eq i64 %polly.indvar_next353.7, 80
  br i1 %exitcond757.7.not, label %kernel_syr2k.exit90, label %polly.loop_header349.7

polly.loop_header493.1:                           ; preds = %polly.loop_exit501, %polly.loop_exit501.1
  %indvars.iv761.1 = phi i64 [ %indvars.iv.next762.1, %polly.loop_exit501.1 ], [ 1, %polly.loop_exit501 ]
  %polly.indvar496.1 = phi i64 [ %polly.indvar_next497.1, %polly.loop_exit501.1 ], [ 0, %polly.loop_exit501 ]
  %267 = mul nuw nsw i64 %polly.indvar496.1, 480
  %scevgep514.1 = getelementptr i8, i8* %call2, i64 %267
  %scevgep521.1 = getelementptr i8, i8* %call1, i64 %267
  %268 = mul nuw nsw i64 %polly.indvar496.1, 640
  %scevgep525.1 = getelementptr i8, i8* %call, i64 %268
  br label %polly.loop_header499.1

polly.loop_header499.1:                           ; preds = %polly.loop_exit507.1, %polly.loop_header493.1
  %polly.indvar502.1 = phi i64 [ 0, %polly.loop_header493.1 ], [ %polly.indvar_next503.1, %polly.loop_exit507.1 ]
  %269 = shl i64 %polly.indvar502.1, 3
  %270 = add i64 %269, 64
  %scevgep515.1 = getelementptr i8, i8* %scevgep514.1, i64 %270
  %scevgep515516.1 = bitcast i8* %scevgep515.1 to double*
  %_p_scalar_517.1 = load double, double* %scevgep515516.1, align 8, !alias.scope !82, !noalias !85
  %scevgep522.1 = getelementptr i8, i8* %scevgep521.1, i64 %270
  %scevgep522523.1 = bitcast i8* %scevgep522.1 to double*
  %_p_scalar_524.1 = load double, double* %scevgep522523.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header505.1

polly.loop_header505.1:                           ; preds = %polly.loop_header505.1, %polly.loop_header499.1
  %polly.indvar508.1 = phi i64 [ 0, %polly.loop_header499.1 ], [ %polly.indvar_next509.1, %polly.loop_header505.1 ]
  %271 = mul nuw nsw i64 %polly.indvar508.1, 480
  %272 = add nuw nsw i64 %271, %270
  %scevgep511.1 = getelementptr i8, i8* %call1, i64 %272
  %scevgep511512.1 = bitcast i8* %scevgep511.1 to double*
  %_p_scalar_513.1 = load double, double* %scevgep511512.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1 = fmul fast double %_p_scalar_517.1, %_p_scalar_513.1
  %scevgep518.1 = getelementptr i8, i8* %call2, i64 %272
  %scevgep518519.1 = bitcast i8* %scevgep518.1 to double*
  %_p_scalar_520.1 = load double, double* %scevgep518519.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1 = fmul fast double %_p_scalar_524.1, %_p_scalar_520.1
  %273 = shl nuw nsw i64 %polly.indvar508.1, 3
  %scevgep526.1 = getelementptr i8, i8* %scevgep525.1, i64 %273
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
  %exitcond767.1.not = icmp eq i64 %polly.indvar_next503.1, 8
  br i1 %exitcond767.1.not, label %polly.loop_exit501.1, label %polly.loop_header499.1

polly.loop_exit501.1:                             ; preds = %polly.loop_exit507.1
  %polly.indvar_next497.1 = add nuw nsw i64 %polly.indvar496.1, 1
  %indvars.iv.next762.1 = add nuw nsw i64 %indvars.iv761.1, 1
  %exitcond768.1.not = icmp eq i64 %polly.indvar_next497.1, 80
  br i1 %exitcond768.1.not, label %polly.loop_header493.2, label %polly.loop_header493.1

polly.loop_header493.2:                           ; preds = %polly.loop_exit501.1, %polly.loop_exit501.2
  %indvars.iv761.2 = phi i64 [ %indvars.iv.next762.2, %polly.loop_exit501.2 ], [ 1, %polly.loop_exit501.1 ]
  %polly.indvar496.2 = phi i64 [ %polly.indvar_next497.2, %polly.loop_exit501.2 ], [ 0, %polly.loop_exit501.1 ]
  %274 = mul nuw nsw i64 %polly.indvar496.2, 480
  %scevgep514.2 = getelementptr i8, i8* %call2, i64 %274
  %scevgep521.2 = getelementptr i8, i8* %call1, i64 %274
  %275 = mul nuw nsw i64 %polly.indvar496.2, 640
  %scevgep525.2 = getelementptr i8, i8* %call, i64 %275
  br label %polly.loop_header499.2

polly.loop_header499.2:                           ; preds = %polly.loop_exit507.2, %polly.loop_header493.2
  %polly.indvar502.2 = phi i64 [ 0, %polly.loop_header493.2 ], [ %polly.indvar_next503.2, %polly.loop_exit507.2 ]
  %276 = shl i64 %polly.indvar502.2, 3
  %277 = add i64 %276, 128
  %scevgep515.2 = getelementptr i8, i8* %scevgep514.2, i64 %277
  %scevgep515516.2 = bitcast i8* %scevgep515.2 to double*
  %_p_scalar_517.2 = load double, double* %scevgep515516.2, align 8, !alias.scope !82, !noalias !85
  %scevgep522.2 = getelementptr i8, i8* %scevgep521.2, i64 %277
  %scevgep522523.2 = bitcast i8* %scevgep522.2 to double*
  %_p_scalar_524.2 = load double, double* %scevgep522523.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header505.2

polly.loop_header505.2:                           ; preds = %polly.loop_header505.2, %polly.loop_header499.2
  %polly.indvar508.2 = phi i64 [ 0, %polly.loop_header499.2 ], [ %polly.indvar_next509.2, %polly.loop_header505.2 ]
  %278 = mul nuw nsw i64 %polly.indvar508.2, 480
  %279 = add nuw nsw i64 %278, %277
  %scevgep511.2 = getelementptr i8, i8* %call1, i64 %279
  %scevgep511512.2 = bitcast i8* %scevgep511.2 to double*
  %_p_scalar_513.2 = load double, double* %scevgep511512.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.2 = fmul fast double %_p_scalar_517.2, %_p_scalar_513.2
  %scevgep518.2 = getelementptr i8, i8* %call2, i64 %279
  %scevgep518519.2 = bitcast i8* %scevgep518.2 to double*
  %_p_scalar_520.2 = load double, double* %scevgep518519.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.2 = fmul fast double %_p_scalar_524.2, %_p_scalar_520.2
  %280 = shl nuw nsw i64 %polly.indvar508.2, 3
  %scevgep526.2 = getelementptr i8, i8* %scevgep525.2, i64 %280
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
  %exitcond767.2.not = icmp eq i64 %polly.indvar_next503.2, 8
  br i1 %exitcond767.2.not, label %polly.loop_exit501.2, label %polly.loop_header499.2

polly.loop_exit501.2:                             ; preds = %polly.loop_exit507.2
  %polly.indvar_next497.2 = add nuw nsw i64 %polly.indvar496.2, 1
  %indvars.iv.next762.2 = add nuw nsw i64 %indvars.iv761.2, 1
  %exitcond768.2.not = icmp eq i64 %polly.indvar_next497.2, 80
  br i1 %exitcond768.2.not, label %polly.loop_header493.3, label %polly.loop_header493.2

polly.loop_header493.3:                           ; preds = %polly.loop_exit501.2, %polly.loop_exit501.3
  %indvars.iv761.3 = phi i64 [ %indvars.iv.next762.3, %polly.loop_exit501.3 ], [ 1, %polly.loop_exit501.2 ]
  %polly.indvar496.3 = phi i64 [ %polly.indvar_next497.3, %polly.loop_exit501.3 ], [ 0, %polly.loop_exit501.2 ]
  %281 = mul nuw nsw i64 %polly.indvar496.3, 480
  %scevgep514.3 = getelementptr i8, i8* %call2, i64 %281
  %scevgep521.3 = getelementptr i8, i8* %call1, i64 %281
  %282 = mul nuw nsw i64 %polly.indvar496.3, 640
  %scevgep525.3 = getelementptr i8, i8* %call, i64 %282
  br label %polly.loop_header499.3

polly.loop_header499.3:                           ; preds = %polly.loop_exit507.3, %polly.loop_header493.3
  %polly.indvar502.3 = phi i64 [ 0, %polly.loop_header493.3 ], [ %polly.indvar_next503.3, %polly.loop_exit507.3 ]
  %283 = shl i64 %polly.indvar502.3, 3
  %284 = add i64 %283, 192
  %scevgep515.3 = getelementptr i8, i8* %scevgep514.3, i64 %284
  %scevgep515516.3 = bitcast i8* %scevgep515.3 to double*
  %_p_scalar_517.3 = load double, double* %scevgep515516.3, align 8, !alias.scope !82, !noalias !85
  %scevgep522.3 = getelementptr i8, i8* %scevgep521.3, i64 %284
  %scevgep522523.3 = bitcast i8* %scevgep522.3 to double*
  %_p_scalar_524.3 = load double, double* %scevgep522523.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header505.3

polly.loop_header505.3:                           ; preds = %polly.loop_header505.3, %polly.loop_header499.3
  %polly.indvar508.3 = phi i64 [ 0, %polly.loop_header499.3 ], [ %polly.indvar_next509.3, %polly.loop_header505.3 ]
  %285 = mul nuw nsw i64 %polly.indvar508.3, 480
  %286 = add nuw nsw i64 %285, %284
  %scevgep511.3 = getelementptr i8, i8* %call1, i64 %286
  %scevgep511512.3 = bitcast i8* %scevgep511.3 to double*
  %_p_scalar_513.3 = load double, double* %scevgep511512.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.3 = fmul fast double %_p_scalar_517.3, %_p_scalar_513.3
  %scevgep518.3 = getelementptr i8, i8* %call2, i64 %286
  %scevgep518519.3 = bitcast i8* %scevgep518.3 to double*
  %_p_scalar_520.3 = load double, double* %scevgep518519.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.3 = fmul fast double %_p_scalar_524.3, %_p_scalar_520.3
  %287 = shl nuw nsw i64 %polly.indvar508.3, 3
  %scevgep526.3 = getelementptr i8, i8* %scevgep525.3, i64 %287
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
  %exitcond767.3.not = icmp eq i64 %polly.indvar_next503.3, 8
  br i1 %exitcond767.3.not, label %polly.loop_exit501.3, label %polly.loop_header499.3

polly.loop_exit501.3:                             ; preds = %polly.loop_exit507.3
  %polly.indvar_next497.3 = add nuw nsw i64 %polly.indvar496.3, 1
  %indvars.iv.next762.3 = add nuw nsw i64 %indvars.iv761.3, 1
  %exitcond768.3.not = icmp eq i64 %polly.indvar_next497.3, 80
  br i1 %exitcond768.3.not, label %polly.loop_header493.4, label %polly.loop_header493.3

polly.loop_header493.4:                           ; preds = %polly.loop_exit501.3, %polly.loop_exit501.4
  %indvars.iv761.4 = phi i64 [ %indvars.iv.next762.4, %polly.loop_exit501.4 ], [ 1, %polly.loop_exit501.3 ]
  %polly.indvar496.4 = phi i64 [ %polly.indvar_next497.4, %polly.loop_exit501.4 ], [ 0, %polly.loop_exit501.3 ]
  %288 = mul nuw nsw i64 %polly.indvar496.4, 480
  %scevgep514.4 = getelementptr i8, i8* %call2, i64 %288
  %scevgep521.4 = getelementptr i8, i8* %call1, i64 %288
  %289 = mul nuw nsw i64 %polly.indvar496.4, 640
  %scevgep525.4 = getelementptr i8, i8* %call, i64 %289
  br label %polly.loop_header499.4

polly.loop_header499.4:                           ; preds = %polly.loop_exit507.4, %polly.loop_header493.4
  %polly.indvar502.4 = phi i64 [ 0, %polly.loop_header493.4 ], [ %polly.indvar_next503.4, %polly.loop_exit507.4 ]
  %290 = shl i64 %polly.indvar502.4, 3
  %291 = add i64 %290, 256
  %scevgep515.4 = getelementptr i8, i8* %scevgep514.4, i64 %291
  %scevgep515516.4 = bitcast i8* %scevgep515.4 to double*
  %_p_scalar_517.4 = load double, double* %scevgep515516.4, align 8, !alias.scope !82, !noalias !85
  %scevgep522.4 = getelementptr i8, i8* %scevgep521.4, i64 %291
  %scevgep522523.4 = bitcast i8* %scevgep522.4 to double*
  %_p_scalar_524.4 = load double, double* %scevgep522523.4, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header505.4

polly.loop_header505.4:                           ; preds = %polly.loop_header505.4, %polly.loop_header499.4
  %polly.indvar508.4 = phi i64 [ 0, %polly.loop_header499.4 ], [ %polly.indvar_next509.4, %polly.loop_header505.4 ]
  %292 = mul nuw nsw i64 %polly.indvar508.4, 480
  %293 = add nuw nsw i64 %292, %291
  %scevgep511.4 = getelementptr i8, i8* %call1, i64 %293
  %scevgep511512.4 = bitcast i8* %scevgep511.4 to double*
  %_p_scalar_513.4 = load double, double* %scevgep511512.4, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.4 = fmul fast double %_p_scalar_517.4, %_p_scalar_513.4
  %scevgep518.4 = getelementptr i8, i8* %call2, i64 %293
  %scevgep518519.4 = bitcast i8* %scevgep518.4 to double*
  %_p_scalar_520.4 = load double, double* %scevgep518519.4, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.4 = fmul fast double %_p_scalar_524.4, %_p_scalar_520.4
  %294 = shl nuw nsw i64 %polly.indvar508.4, 3
  %scevgep526.4 = getelementptr i8, i8* %scevgep525.4, i64 %294
  %scevgep526527.4 = bitcast i8* %scevgep526.4 to double*
  %_p_scalar_528.4 = load double, double* %scevgep526527.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_528.4
  store double %p_add42.i.4, double* %scevgep526527.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next509.4 = add nuw nsw i64 %polly.indvar508.4, 1
  %exitcond763.4.not = icmp eq i64 %polly.indvar_next509.4, %indvars.iv761.4
  br i1 %exitcond763.4.not, label %polly.loop_exit507.4, label %polly.loop_header505.4

polly.loop_exit507.4:                             ; preds = %polly.loop_header505.4
  %polly.indvar_next503.4 = add nuw nsw i64 %polly.indvar502.4, 1
  %exitcond767.4.not = icmp eq i64 %polly.indvar_next503.4, 8
  br i1 %exitcond767.4.not, label %polly.loop_exit501.4, label %polly.loop_header499.4

polly.loop_exit501.4:                             ; preds = %polly.loop_exit507.4
  %polly.indvar_next497.4 = add nuw nsw i64 %polly.indvar496.4, 1
  %indvars.iv.next762.4 = add nuw nsw i64 %indvars.iv761.4, 1
  %exitcond768.4.not = icmp eq i64 %polly.indvar_next497.4, 80
  br i1 %exitcond768.4.not, label %polly.loop_header493.5, label %polly.loop_header493.4

polly.loop_header493.5:                           ; preds = %polly.loop_exit501.4, %polly.loop_exit501.5
  %indvars.iv761.5 = phi i64 [ %indvars.iv.next762.5, %polly.loop_exit501.5 ], [ 1, %polly.loop_exit501.4 ]
  %polly.indvar496.5 = phi i64 [ %polly.indvar_next497.5, %polly.loop_exit501.5 ], [ 0, %polly.loop_exit501.4 ]
  %295 = mul nuw nsw i64 %polly.indvar496.5, 480
  %scevgep514.5 = getelementptr i8, i8* %call2, i64 %295
  %scevgep521.5 = getelementptr i8, i8* %call1, i64 %295
  %296 = mul nuw nsw i64 %polly.indvar496.5, 640
  %scevgep525.5 = getelementptr i8, i8* %call, i64 %296
  br label %polly.loop_header499.5

polly.loop_header499.5:                           ; preds = %polly.loop_exit507.5, %polly.loop_header493.5
  %polly.indvar502.5 = phi i64 [ 0, %polly.loop_header493.5 ], [ %polly.indvar_next503.5, %polly.loop_exit507.5 ]
  %297 = shl i64 %polly.indvar502.5, 3
  %298 = add i64 %297, 320
  %scevgep515.5 = getelementptr i8, i8* %scevgep514.5, i64 %298
  %scevgep515516.5 = bitcast i8* %scevgep515.5 to double*
  %_p_scalar_517.5 = load double, double* %scevgep515516.5, align 8, !alias.scope !82, !noalias !85
  %scevgep522.5 = getelementptr i8, i8* %scevgep521.5, i64 %298
  %scevgep522523.5 = bitcast i8* %scevgep522.5 to double*
  %_p_scalar_524.5 = load double, double* %scevgep522523.5, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header505.5

polly.loop_header505.5:                           ; preds = %polly.loop_header505.5, %polly.loop_header499.5
  %polly.indvar508.5 = phi i64 [ 0, %polly.loop_header499.5 ], [ %polly.indvar_next509.5, %polly.loop_header505.5 ]
  %299 = mul nuw nsw i64 %polly.indvar508.5, 480
  %300 = add nuw nsw i64 %299, %298
  %scevgep511.5 = getelementptr i8, i8* %call1, i64 %300
  %scevgep511512.5 = bitcast i8* %scevgep511.5 to double*
  %_p_scalar_513.5 = load double, double* %scevgep511512.5, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.5 = fmul fast double %_p_scalar_517.5, %_p_scalar_513.5
  %scevgep518.5 = getelementptr i8, i8* %call2, i64 %300
  %scevgep518519.5 = bitcast i8* %scevgep518.5 to double*
  %_p_scalar_520.5 = load double, double* %scevgep518519.5, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.5 = fmul fast double %_p_scalar_524.5, %_p_scalar_520.5
  %301 = shl nuw nsw i64 %polly.indvar508.5, 3
  %scevgep526.5 = getelementptr i8, i8* %scevgep525.5, i64 %301
  %scevgep526527.5 = bitcast i8* %scevgep526.5 to double*
  %_p_scalar_528.5 = load double, double* %scevgep526527.5, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_528.5
  store double %p_add42.i.5, double* %scevgep526527.5, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next509.5 = add nuw nsw i64 %polly.indvar508.5, 1
  %exitcond763.5.not = icmp eq i64 %polly.indvar_next509.5, %indvars.iv761.5
  br i1 %exitcond763.5.not, label %polly.loop_exit507.5, label %polly.loop_header505.5

polly.loop_exit507.5:                             ; preds = %polly.loop_header505.5
  %polly.indvar_next503.5 = add nuw nsw i64 %polly.indvar502.5, 1
  %exitcond767.5.not = icmp eq i64 %polly.indvar_next503.5, 8
  br i1 %exitcond767.5.not, label %polly.loop_exit501.5, label %polly.loop_header499.5

polly.loop_exit501.5:                             ; preds = %polly.loop_exit507.5
  %polly.indvar_next497.5 = add nuw nsw i64 %polly.indvar496.5, 1
  %indvars.iv.next762.5 = add nuw nsw i64 %indvars.iv761.5, 1
  %exitcond768.5.not = icmp eq i64 %polly.indvar_next497.5, 80
  br i1 %exitcond768.5.not, label %polly.loop_header493.6, label %polly.loop_header493.5

polly.loop_header493.6:                           ; preds = %polly.loop_exit501.5, %polly.loop_exit501.6
  %indvars.iv761.6 = phi i64 [ %indvars.iv.next762.6, %polly.loop_exit501.6 ], [ 1, %polly.loop_exit501.5 ]
  %polly.indvar496.6 = phi i64 [ %polly.indvar_next497.6, %polly.loop_exit501.6 ], [ 0, %polly.loop_exit501.5 ]
  %302 = mul nuw nsw i64 %polly.indvar496.6, 480
  %scevgep514.6 = getelementptr i8, i8* %call2, i64 %302
  %scevgep521.6 = getelementptr i8, i8* %call1, i64 %302
  %303 = mul nuw nsw i64 %polly.indvar496.6, 640
  %scevgep525.6 = getelementptr i8, i8* %call, i64 %303
  br label %polly.loop_header499.6

polly.loop_header499.6:                           ; preds = %polly.loop_exit507.6, %polly.loop_header493.6
  %polly.indvar502.6 = phi i64 [ 0, %polly.loop_header493.6 ], [ %polly.indvar_next503.6, %polly.loop_exit507.6 ]
  %304 = shl i64 %polly.indvar502.6, 3
  %305 = add i64 %304, 384
  %scevgep515.6 = getelementptr i8, i8* %scevgep514.6, i64 %305
  %scevgep515516.6 = bitcast i8* %scevgep515.6 to double*
  %_p_scalar_517.6 = load double, double* %scevgep515516.6, align 8, !alias.scope !82, !noalias !85
  %scevgep522.6 = getelementptr i8, i8* %scevgep521.6, i64 %305
  %scevgep522523.6 = bitcast i8* %scevgep522.6 to double*
  %_p_scalar_524.6 = load double, double* %scevgep522523.6, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header505.6

polly.loop_header505.6:                           ; preds = %polly.loop_header505.6, %polly.loop_header499.6
  %polly.indvar508.6 = phi i64 [ 0, %polly.loop_header499.6 ], [ %polly.indvar_next509.6, %polly.loop_header505.6 ]
  %306 = mul nuw nsw i64 %polly.indvar508.6, 480
  %307 = add nuw nsw i64 %306, %305
  %scevgep511.6 = getelementptr i8, i8* %call1, i64 %307
  %scevgep511512.6 = bitcast i8* %scevgep511.6 to double*
  %_p_scalar_513.6 = load double, double* %scevgep511512.6, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.6 = fmul fast double %_p_scalar_517.6, %_p_scalar_513.6
  %scevgep518.6 = getelementptr i8, i8* %call2, i64 %307
  %scevgep518519.6 = bitcast i8* %scevgep518.6 to double*
  %_p_scalar_520.6 = load double, double* %scevgep518519.6, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.6 = fmul fast double %_p_scalar_524.6, %_p_scalar_520.6
  %308 = shl nuw nsw i64 %polly.indvar508.6, 3
  %scevgep526.6 = getelementptr i8, i8* %scevgep525.6, i64 %308
  %scevgep526527.6 = bitcast i8* %scevgep526.6 to double*
  %_p_scalar_528.6 = load double, double* %scevgep526527.6, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_528.6
  store double %p_add42.i.6, double* %scevgep526527.6, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next509.6 = add nuw nsw i64 %polly.indvar508.6, 1
  %exitcond763.6.not = icmp eq i64 %polly.indvar_next509.6, %indvars.iv761.6
  br i1 %exitcond763.6.not, label %polly.loop_exit507.6, label %polly.loop_header505.6

polly.loop_exit507.6:                             ; preds = %polly.loop_header505.6
  %polly.indvar_next503.6 = add nuw nsw i64 %polly.indvar502.6, 1
  %exitcond767.6.not = icmp eq i64 %polly.indvar_next503.6, 8
  br i1 %exitcond767.6.not, label %polly.loop_exit501.6, label %polly.loop_header499.6

polly.loop_exit501.6:                             ; preds = %polly.loop_exit507.6
  %polly.indvar_next497.6 = add nuw nsw i64 %polly.indvar496.6, 1
  %indvars.iv.next762.6 = add nuw nsw i64 %indvars.iv761.6, 1
  %exitcond768.6.not = icmp eq i64 %polly.indvar_next497.6, 80
  br i1 %exitcond768.6.not, label %polly.loop_header493.7, label %polly.loop_header493.6

polly.loop_header493.7:                           ; preds = %polly.loop_exit501.6, %polly.loop_exit501.7
  %indvars.iv761.7 = phi i64 [ %indvars.iv.next762.7, %polly.loop_exit501.7 ], [ 1, %polly.loop_exit501.6 ]
  %polly.indvar496.7 = phi i64 [ %polly.indvar_next497.7, %polly.loop_exit501.7 ], [ 0, %polly.loop_exit501.6 ]
  %309 = mul nuw nsw i64 %polly.indvar496.7, 480
  %scevgep514.7 = getelementptr i8, i8* %call2, i64 %309
  %scevgep521.7 = getelementptr i8, i8* %call1, i64 %309
  %310 = mul nuw nsw i64 %polly.indvar496.7, 640
  %scevgep525.7 = getelementptr i8, i8* %call, i64 %310
  br label %polly.loop_header499.7

polly.loop_header499.7:                           ; preds = %polly.loop_exit507.7, %polly.loop_header493.7
  %polly.indvar502.7 = phi i64 [ 0, %polly.loop_header493.7 ], [ %polly.indvar_next503.7, %polly.loop_exit507.7 ]
  %311 = shl i64 %polly.indvar502.7, 3
  %312 = add i64 %311, 448
  %scevgep515.7 = getelementptr i8, i8* %scevgep514.7, i64 %312
  %scevgep515516.7 = bitcast i8* %scevgep515.7 to double*
  %_p_scalar_517.7 = load double, double* %scevgep515516.7, align 8, !alias.scope !82, !noalias !85
  %scevgep522.7 = getelementptr i8, i8* %scevgep521.7, i64 %312
  %scevgep522523.7 = bitcast i8* %scevgep522.7 to double*
  %_p_scalar_524.7 = load double, double* %scevgep522523.7, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header505.7

polly.loop_header505.7:                           ; preds = %polly.loop_header505.7, %polly.loop_header499.7
  %polly.indvar508.7 = phi i64 [ 0, %polly.loop_header499.7 ], [ %polly.indvar_next509.7, %polly.loop_header505.7 ]
  %313 = mul nuw nsw i64 %polly.indvar508.7, 480
  %314 = add nuw nsw i64 %313, %312
  %scevgep511.7 = getelementptr i8, i8* %call1, i64 %314
  %scevgep511512.7 = bitcast i8* %scevgep511.7 to double*
  %_p_scalar_513.7 = load double, double* %scevgep511512.7, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.7 = fmul fast double %_p_scalar_517.7, %_p_scalar_513.7
  %scevgep518.7 = getelementptr i8, i8* %call2, i64 %314
  %scevgep518519.7 = bitcast i8* %scevgep518.7 to double*
  %_p_scalar_520.7 = load double, double* %scevgep518519.7, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.7 = fmul fast double %_p_scalar_524.7, %_p_scalar_520.7
  %315 = shl nuw nsw i64 %polly.indvar508.7, 3
  %scevgep526.7 = getelementptr i8, i8* %scevgep525.7, i64 %315
  %scevgep526527.7 = bitcast i8* %scevgep526.7 to double*
  %_p_scalar_528.7 = load double, double* %scevgep526527.7, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_528.7
  store double %p_add42.i.7, double* %scevgep526527.7, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next509.7 = add nuw nsw i64 %polly.indvar508.7, 1
  %exitcond763.7.not = icmp eq i64 %polly.indvar_next509.7, %indvars.iv761.7
  br i1 %exitcond763.7.not, label %polly.loop_exit507.7, label %polly.loop_header505.7

polly.loop_exit507.7:                             ; preds = %polly.loop_header505.7
  %polly.indvar_next503.7 = add nuw nsw i64 %polly.indvar502.7, 1
  %exitcond767.7.not = icmp eq i64 %polly.indvar_next503.7, 4
  br i1 %exitcond767.7.not, label %polly.loop_exit501.7, label %polly.loop_header499.7

polly.loop_exit501.7:                             ; preds = %polly.loop_exit507.7
  %polly.indvar_next497.7 = add nuw nsw i64 %polly.indvar496.7, 1
  %indvars.iv.next762.7 = add nuw nsw i64 %indvars.iv761.7, 1
  %exitcond768.7.not = icmp eq i64 %polly.indvar_next497.7, 80
  br i1 %exitcond768.7.not, label %kernel_syr2k.exit, label %polly.loop_header493.7

polly.loop_header720.1:                           ; preds = %polly.loop_exit728, %polly.loop_exit728.1
  %polly.indvar723.1 = phi i64 [ %polly.indvar_next724.1, %polly.loop_exit728.1 ], [ 0, %polly.loop_exit728 ]
  %316 = mul nuw nsw i64 %polly.indvar723.1, 480
  %317 = trunc i64 %polly.indvar723.1 to i32
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %polly.loop_header720.1
  %index1088 = phi i64 [ 0, %polly.loop_header720.1 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1092 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header720.1 ], [ %vec.ind.next1093, %vector.body1086 ]
  %318 = add nuw nsw <4 x i64> %vec.ind1092, <i64 32, i64 32, i64 32, i64 32>
  %319 = trunc <4 x i64> %318 to <4 x i32>
  %320 = mul <4 x i32> %broadcast.splat1095, %319
  %321 = add <4 x i32> %320, <i32 1, i32 1, i32 1, i32 1>
  %322 = urem <4 x i32> %321, <i32 80, i32 80, i32 80, i32 80>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %325 = extractelement <4 x i64> %318, i32 0
  %326 = shl i64 %325, 3
  %327 = add i64 %326, %316
  %328 = getelementptr i8, i8* %call1, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %324, <4 x double>* %329, align 8, !alias.scope !90, !noalias !95
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1093 = add <4 x i64> %vec.ind1092, <i64 4, i64 4, i64 4, i64 4>
  %330 = icmp eq i64 %index.next1089, 28
  br i1 %330, label %polly.loop_exit728.1, label %vector.body1086, !llvm.loop !97

polly.loop_exit728.1:                             ; preds = %vector.body1086
  %polly.indvar_next724.1 = add nuw nsw i64 %polly.indvar723.1, 1
  %exitcond776.1.not = icmp eq i64 %polly.indvar_next724.1, 32
  br i1 %exitcond776.1.not, label %polly.loop_header720.1799, label %polly.loop_header720.1

polly.loop_header720.1799:                        ; preds = %polly.loop_exit728.1, %polly.loop_exit728.1810
  %polly.indvar723.1798 = phi i64 [ %polly.indvar_next724.1808, %polly.loop_exit728.1810 ], [ 0, %polly.loop_exit728.1 ]
  %331 = add nuw nsw i64 %polly.indvar723.1798, 32
  %332 = mul nuw nsw i64 %331, 480
  %333 = trunc i64 %331 to i32
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %333, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %polly.loop_header720.1799
  %index1100 = phi i64 [ 0, %polly.loop_header720.1799 ], [ %index.next1101, %vector.body1098 ]
  %vec.ind1106 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header720.1799 ], [ %vec.ind.next1107, %vector.body1098 ]
  %334 = mul <4 x i32> %vec.ind1106, %broadcast.splat1109
  %335 = add <4 x i32> %334, <i32 1, i32 1, i32 1, i32 1>
  %336 = urem <4 x i32> %335, <i32 80, i32 80, i32 80, i32 80>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %339 = shl i64 %index1100, 3
  %340 = add i64 %339, %332
  %341 = getelementptr i8, i8* %call1, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %338, <4 x double>* %342, align 8, !alias.scope !90, !noalias !95
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1107 = add <4 x i32> %vec.ind1106, <i32 4, i32 4, i32 4, i32 4>
  %343 = icmp eq i64 %index.next1101, 32
  br i1 %343, label %polly.loop_exit728.1810, label %vector.body1098, !llvm.loop !98

polly.loop_exit728.1810:                          ; preds = %vector.body1098
  %polly.indvar_next724.1808 = add nuw nsw i64 %polly.indvar723.1798, 1
  %exitcond776.1809.not = icmp eq i64 %polly.indvar_next724.1808, 32
  br i1 %exitcond776.1809.not, label %polly.loop_header720.1.1, label %polly.loop_header720.1799

polly.loop_header720.1.1:                         ; preds = %polly.loop_exit728.1810, %polly.loop_exit728.1.1
  %polly.indvar723.1.1 = phi i64 [ %polly.indvar_next724.1.1, %polly.loop_exit728.1.1 ], [ 0, %polly.loop_exit728.1810 ]
  %344 = add nuw nsw i64 %polly.indvar723.1.1, 32
  %345 = mul nuw nsw i64 %344, 480
  %346 = trunc i64 %344 to i32
  %broadcast.splatinsert1120 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1121 = shufflevector <4 x i32> %broadcast.splatinsert1120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %polly.loop_header720.1.1
  %index1114 = phi i64 [ 0, %polly.loop_header720.1.1 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1118 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header720.1.1 ], [ %vec.ind.next1119, %vector.body1112 ]
  %347 = add nuw nsw <4 x i64> %vec.ind1118, <i64 32, i64 32, i64 32, i64 32>
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat1121, %348
  %350 = add <4 x i32> %349, <i32 1, i32 1, i32 1, i32 1>
  %351 = urem <4 x i32> %350, <i32 80, i32 80, i32 80, i32 80>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add i64 %355, %345
  %357 = getelementptr i8, i8* %call1, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !90, !noalias !95
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1119 = add <4 x i64> %vec.ind1118, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next1115, 28
  br i1 %359, label %polly.loop_exit728.1.1, label %vector.body1112, !llvm.loop !99

polly.loop_exit728.1.1:                           ; preds = %vector.body1112
  %polly.indvar_next724.1.1 = add nuw nsw i64 %polly.indvar723.1.1, 1
  %exitcond776.1.1.not = icmp eq i64 %polly.indvar_next724.1.1, 32
  br i1 %exitcond776.1.1.not, label %polly.loop_header720.2, label %polly.loop_header720.1.1

polly.loop_header720.2:                           ; preds = %polly.loop_exit728.1.1, %polly.loop_exit728.2
  %polly.indvar723.2 = phi i64 [ %polly.indvar_next724.2, %polly.loop_exit728.2 ], [ 0, %polly.loop_exit728.1.1 ]
  %360 = add nuw nsw i64 %polly.indvar723.2, 64
  %361 = mul nuw nsw i64 %360, 480
  %362 = trunc i64 %360 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %362, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %polly.loop_header720.2
  %index1126 = phi i64 [ 0, %polly.loop_header720.2 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1132 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header720.2 ], [ %vec.ind.next1133, %vector.body1124 ]
  %363 = mul <4 x i32> %vec.ind1132, %broadcast.splat1135
  %364 = add <4 x i32> %363, <i32 1, i32 1, i32 1, i32 1>
  %365 = urem <4 x i32> %364, <i32 80, i32 80, i32 80, i32 80>
  %366 = sitofp <4 x i32> %365 to <4 x double>
  %367 = fmul fast <4 x double> %366, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %368 = shl i64 %index1126, 3
  %369 = add i64 %368, %361
  %370 = getelementptr i8, i8* %call1, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %367, <4 x double>* %371, align 8, !alias.scope !90, !noalias !95
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1133 = add <4 x i32> %vec.ind1132, <i32 4, i32 4, i32 4, i32 4>
  %372 = icmp eq i64 %index.next1127, 32
  br i1 %372, label %polly.loop_exit728.2, label %vector.body1124, !llvm.loop !100

polly.loop_exit728.2:                             ; preds = %vector.body1124
  %polly.indvar_next724.2 = add nuw nsw i64 %polly.indvar723.2, 1
  %exitcond776.2.not = icmp eq i64 %polly.indvar_next724.2, 16
  br i1 %exitcond776.2.not, label %polly.loop_header720.1.2, label %polly.loop_header720.2

polly.loop_header720.1.2:                         ; preds = %polly.loop_exit728.2, %polly.loop_exit728.1.2
  %polly.indvar723.1.2 = phi i64 [ %polly.indvar_next724.1.2, %polly.loop_exit728.1.2 ], [ 0, %polly.loop_exit728.2 ]
  %373 = add nuw nsw i64 %polly.indvar723.1.2, 64
  %374 = mul nuw nsw i64 %373, 480
  %375 = trunc i64 %373 to i32
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header720.1.2
  %index1140 = phi i64 [ 0, %polly.loop_header720.1.2 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1144 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header720.1.2 ], [ %vec.ind.next1145, %vector.body1138 ]
  %376 = add nuw nsw <4 x i64> %vec.ind1144, <i64 32, i64 32, i64 32, i64 32>
  %377 = trunc <4 x i64> %376 to <4 x i32>
  %378 = mul <4 x i32> %broadcast.splat1147, %377
  %379 = add <4 x i32> %378, <i32 1, i32 1, i32 1, i32 1>
  %380 = urem <4 x i32> %379, <i32 80, i32 80, i32 80, i32 80>
  %381 = sitofp <4 x i32> %380 to <4 x double>
  %382 = fmul fast <4 x double> %381, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %383 = extractelement <4 x i64> %376, i32 0
  %384 = shl i64 %383, 3
  %385 = add i64 %384, %374
  %386 = getelementptr i8, i8* %call1, i64 %385
  %387 = bitcast i8* %386 to <4 x double>*
  store <4 x double> %382, <4 x double>* %387, align 8, !alias.scope !90, !noalias !95
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1145 = add <4 x i64> %vec.ind1144, <i64 4, i64 4, i64 4, i64 4>
  %388 = icmp eq i64 %index.next1141, 28
  br i1 %388, label %polly.loop_exit728.1.2, label %vector.body1138, !llvm.loop !101

polly.loop_exit728.1.2:                           ; preds = %vector.body1138
  %polly.indvar_next724.1.2 = add nuw nsw i64 %polly.indvar723.1.2, 1
  %exitcond776.1.2.not = icmp eq i64 %polly.indvar_next724.1.2, 16
  br i1 %exitcond776.1.2.not, label %init_array.exit, label %polly.loop_header720.1.2

polly.loop_header694.1:                           ; preds = %polly.loop_exit702, %polly.loop_exit702.1
  %polly.indvar697.1 = phi i64 [ %polly.indvar_next698.1, %polly.loop_exit702.1 ], [ 0, %polly.loop_exit702 ]
  %389 = mul nuw nsw i64 %polly.indvar697.1, 480
  %390 = trunc i64 %polly.indvar697.1 to i32
  %broadcast.splatinsert1016 = insertelement <4 x i32> poison, i32 %390, i32 0
  %broadcast.splat1017 = shufflevector <4 x i32> %broadcast.splatinsert1016, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %polly.loop_header694.1
  %index1010 = phi i64 [ 0, %polly.loop_header694.1 ], [ %index.next1011, %vector.body1008 ]
  %vec.ind1014 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1 ], [ %vec.ind.next1015, %vector.body1008 ]
  %391 = add nuw nsw <4 x i64> %vec.ind1014, <i64 32, i64 32, i64 32, i64 32>
  %392 = trunc <4 x i64> %391 to <4 x i32>
  %393 = mul <4 x i32> %broadcast.splat1017, %392
  %394 = add <4 x i32> %393, <i32 2, i32 2, i32 2, i32 2>
  %395 = urem <4 x i32> %394, <i32 60, i32 60, i32 60, i32 60>
  %396 = sitofp <4 x i32> %395 to <4 x double>
  %397 = fmul fast <4 x double> %396, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %398 = extractelement <4 x i64> %391, i32 0
  %399 = shl i64 %398, 3
  %400 = add i64 %399, %389
  %401 = getelementptr i8, i8* %call2, i64 %400
  %402 = bitcast i8* %401 to <4 x double>*
  store <4 x double> %397, <4 x double>* %402, align 8, !alias.scope !91, !noalias !93
  %index.next1011 = add i64 %index1010, 4
  %vec.ind.next1015 = add <4 x i64> %vec.ind1014, <i64 4, i64 4, i64 4, i64 4>
  %403 = icmp eq i64 %index.next1011, 28
  br i1 %403, label %polly.loop_exit702.1, label %vector.body1008, !llvm.loop !102

polly.loop_exit702.1:                             ; preds = %vector.body1008
  %polly.indvar_next698.1 = add nuw nsw i64 %polly.indvar697.1, 1
  %exitcond782.1.not = icmp eq i64 %polly.indvar_next698.1, 32
  br i1 %exitcond782.1.not, label %polly.loop_header694.1813, label %polly.loop_header694.1

polly.loop_header694.1813:                        ; preds = %polly.loop_exit702.1, %polly.loop_exit702.1824
  %polly.indvar697.1812 = phi i64 [ %polly.indvar_next698.1822, %polly.loop_exit702.1824 ], [ 0, %polly.loop_exit702.1 ]
  %404 = add nuw nsw i64 %polly.indvar697.1812, 32
  %405 = mul nuw nsw i64 %404, 480
  %406 = trunc i64 %404 to i32
  %broadcast.splatinsert1030 = insertelement <4 x i32> poison, i32 %406, i32 0
  %broadcast.splat1031 = shufflevector <4 x i32> %broadcast.splatinsert1030, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %polly.loop_header694.1813
  %index1022 = phi i64 [ 0, %polly.loop_header694.1813 ], [ %index.next1023, %vector.body1020 ]
  %vec.ind1028 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header694.1813 ], [ %vec.ind.next1029, %vector.body1020 ]
  %407 = mul <4 x i32> %vec.ind1028, %broadcast.splat1031
  %408 = add <4 x i32> %407, <i32 2, i32 2, i32 2, i32 2>
  %409 = urem <4 x i32> %408, <i32 60, i32 60, i32 60, i32 60>
  %410 = sitofp <4 x i32> %409 to <4 x double>
  %411 = fmul fast <4 x double> %410, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %412 = shl i64 %index1022, 3
  %413 = add i64 %412, %405
  %414 = getelementptr i8, i8* %call2, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %411, <4 x double>* %415, align 8, !alias.scope !91, !noalias !93
  %index.next1023 = add i64 %index1022, 4
  %vec.ind.next1029 = add <4 x i32> %vec.ind1028, <i32 4, i32 4, i32 4, i32 4>
  %416 = icmp eq i64 %index.next1023, 32
  br i1 %416, label %polly.loop_exit702.1824, label %vector.body1020, !llvm.loop !103

polly.loop_exit702.1824:                          ; preds = %vector.body1020
  %polly.indvar_next698.1822 = add nuw nsw i64 %polly.indvar697.1812, 1
  %exitcond782.1823.not = icmp eq i64 %polly.indvar_next698.1822, 32
  br i1 %exitcond782.1823.not, label %polly.loop_header694.1.1, label %polly.loop_header694.1813

polly.loop_header694.1.1:                         ; preds = %polly.loop_exit702.1824, %polly.loop_exit702.1.1
  %polly.indvar697.1.1 = phi i64 [ %polly.indvar_next698.1.1, %polly.loop_exit702.1.1 ], [ 0, %polly.loop_exit702.1824 ]
  %417 = add nuw nsw i64 %polly.indvar697.1.1, 32
  %418 = mul nuw nsw i64 %417, 480
  %419 = trunc i64 %417 to i32
  %broadcast.splatinsert1042 = insertelement <4 x i32> poison, i32 %419, i32 0
  %broadcast.splat1043 = shufflevector <4 x i32> %broadcast.splatinsert1042, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %polly.loop_header694.1.1
  %index1036 = phi i64 [ 0, %polly.loop_header694.1.1 ], [ %index.next1037, %vector.body1034 ]
  %vec.ind1040 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1.1 ], [ %vec.ind.next1041, %vector.body1034 ]
  %420 = add nuw nsw <4 x i64> %vec.ind1040, <i64 32, i64 32, i64 32, i64 32>
  %421 = trunc <4 x i64> %420 to <4 x i32>
  %422 = mul <4 x i32> %broadcast.splat1043, %421
  %423 = add <4 x i32> %422, <i32 2, i32 2, i32 2, i32 2>
  %424 = urem <4 x i32> %423, <i32 60, i32 60, i32 60, i32 60>
  %425 = sitofp <4 x i32> %424 to <4 x double>
  %426 = fmul fast <4 x double> %425, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %427 = extractelement <4 x i64> %420, i32 0
  %428 = shl i64 %427, 3
  %429 = add i64 %428, %418
  %430 = getelementptr i8, i8* %call2, i64 %429
  %431 = bitcast i8* %430 to <4 x double>*
  store <4 x double> %426, <4 x double>* %431, align 8, !alias.scope !91, !noalias !93
  %index.next1037 = add i64 %index1036, 4
  %vec.ind.next1041 = add <4 x i64> %vec.ind1040, <i64 4, i64 4, i64 4, i64 4>
  %432 = icmp eq i64 %index.next1037, 28
  br i1 %432, label %polly.loop_exit702.1.1, label %vector.body1034, !llvm.loop !104

polly.loop_exit702.1.1:                           ; preds = %vector.body1034
  %polly.indvar_next698.1.1 = add nuw nsw i64 %polly.indvar697.1.1, 1
  %exitcond782.1.1.not = icmp eq i64 %polly.indvar_next698.1.1, 32
  br i1 %exitcond782.1.1.not, label %polly.loop_header694.2, label %polly.loop_header694.1.1

polly.loop_header694.2:                           ; preds = %polly.loop_exit702.1.1, %polly.loop_exit702.2
  %polly.indvar697.2 = phi i64 [ %polly.indvar_next698.2, %polly.loop_exit702.2 ], [ 0, %polly.loop_exit702.1.1 ]
  %433 = add nuw nsw i64 %polly.indvar697.2, 64
  %434 = mul nuw nsw i64 %433, 480
  %435 = trunc i64 %433 to i32
  %broadcast.splatinsert1056 = insertelement <4 x i32> poison, i32 %435, i32 0
  %broadcast.splat1057 = shufflevector <4 x i32> %broadcast.splatinsert1056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %polly.loop_header694.2
  %index1048 = phi i64 [ 0, %polly.loop_header694.2 ], [ %index.next1049, %vector.body1046 ]
  %vec.ind1054 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header694.2 ], [ %vec.ind.next1055, %vector.body1046 ]
  %436 = mul <4 x i32> %vec.ind1054, %broadcast.splat1057
  %437 = add <4 x i32> %436, <i32 2, i32 2, i32 2, i32 2>
  %438 = urem <4 x i32> %437, <i32 60, i32 60, i32 60, i32 60>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = shl i64 %index1048, 3
  %442 = add i64 %441, %434
  %443 = getelementptr i8, i8* %call2, i64 %442
  %444 = bitcast i8* %443 to <4 x double>*
  store <4 x double> %440, <4 x double>* %444, align 8, !alias.scope !91, !noalias !93
  %index.next1049 = add i64 %index1048, 4
  %vec.ind.next1055 = add <4 x i32> %vec.ind1054, <i32 4, i32 4, i32 4, i32 4>
  %445 = icmp eq i64 %index.next1049, 32
  br i1 %445, label %polly.loop_exit702.2, label %vector.body1046, !llvm.loop !105

polly.loop_exit702.2:                             ; preds = %vector.body1046
  %polly.indvar_next698.2 = add nuw nsw i64 %polly.indvar697.2, 1
  %exitcond782.2.not = icmp eq i64 %polly.indvar_next698.2, 16
  br i1 %exitcond782.2.not, label %polly.loop_header694.1.2, label %polly.loop_header694.2

polly.loop_header694.1.2:                         ; preds = %polly.loop_exit702.2, %polly.loop_exit702.1.2
  %polly.indvar697.1.2 = phi i64 [ %polly.indvar_next698.1.2, %polly.loop_exit702.1.2 ], [ 0, %polly.loop_exit702.2 ]
  %446 = add nuw nsw i64 %polly.indvar697.1.2, 64
  %447 = mul nuw nsw i64 %446, 480
  %448 = trunc i64 %446 to i32
  %broadcast.splatinsert1068 = insertelement <4 x i32> poison, i32 %448, i32 0
  %broadcast.splat1069 = shufflevector <4 x i32> %broadcast.splatinsert1068, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %polly.loop_header694.1.2
  %index1062 = phi i64 [ 0, %polly.loop_header694.1.2 ], [ %index.next1063, %vector.body1060 ]
  %vec.ind1066 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1.2 ], [ %vec.ind.next1067, %vector.body1060 ]
  %449 = add nuw nsw <4 x i64> %vec.ind1066, <i64 32, i64 32, i64 32, i64 32>
  %450 = trunc <4 x i64> %449 to <4 x i32>
  %451 = mul <4 x i32> %broadcast.splat1069, %450
  %452 = add <4 x i32> %451, <i32 2, i32 2, i32 2, i32 2>
  %453 = urem <4 x i32> %452, <i32 60, i32 60, i32 60, i32 60>
  %454 = sitofp <4 x i32> %453 to <4 x double>
  %455 = fmul fast <4 x double> %454, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %456 = extractelement <4 x i64> %449, i32 0
  %457 = shl i64 %456, 3
  %458 = add i64 %457, %447
  %459 = getelementptr i8, i8* %call2, i64 %458
  %460 = bitcast i8* %459 to <4 x double>*
  store <4 x double> %455, <4 x double>* %460, align 8, !alias.scope !91, !noalias !93
  %index.next1063 = add i64 %index1062, 4
  %vec.ind.next1067 = add <4 x i64> %vec.ind1066, <i64 4, i64 4, i64 4, i64 4>
  %461 = icmp eq i64 %index.next1063, 28
  br i1 %461, label %polly.loop_exit702.1.2, label %vector.body1060, !llvm.loop !106

polly.loop_exit702.1.2:                           ; preds = %vector.body1060
  %polly.indvar_next698.1.2 = add nuw nsw i64 %polly.indvar697.1.2, 1
  %exitcond782.1.2.not = icmp eq i64 %polly.indvar_next698.1.2, 16
  br i1 %exitcond782.1.2.not, label %polly.loop_header720, label %polly.loop_header694.1.2

polly.loop_header667.1:                           ; preds = %polly.loop_exit675, %polly.loop_exit675.1
  %polly.indvar670.1 = phi i64 [ %polly.indvar_next671.1, %polly.loop_exit675.1 ], [ 0, %polly.loop_exit675 ]
  %462 = mul nuw nsw i64 %polly.indvar670.1, 640
  %463 = trunc i64 %polly.indvar670.1 to i32
  %broadcast.splatinsert902 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat903 = shufflevector <4 x i32> %broadcast.splatinsert902, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body894

vector.body894:                                   ; preds = %vector.body894, %polly.loop_header667.1
  %index896 = phi i64 [ 0, %polly.loop_header667.1 ], [ %index.next897, %vector.body894 ]
  %vec.ind900 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.1 ], [ %vec.ind.next901, %vector.body894 ]
  %464 = add nuw nsw <4 x i64> %vec.ind900, <i64 32, i64 32, i64 32, i64 32>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat903, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !87, !noalias !89
  %index.next897 = add i64 %index896, 4
  %vec.ind.next901 = add <4 x i64> %vec.ind900, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next897, 32
  br i1 %476, label %polly.loop_exit675.1, label %vector.body894, !llvm.loop !107

polly.loop_exit675.1:                             ; preds = %vector.body894
  %polly.indvar_next671.1 = add nuw nsw i64 %polly.indvar670.1, 1
  %exitcond791.1.not = icmp eq i64 %polly.indvar_next671.1, 32
  br i1 %exitcond791.1.not, label %polly.loop_header667.2, label %polly.loop_header667.1

polly.loop_header667.2:                           ; preds = %polly.loop_exit675.1, %polly.loop_exit675.2
  %polly.indvar670.2 = phi i64 [ %polly.indvar_next671.2, %polly.loop_exit675.2 ], [ 0, %polly.loop_exit675.1 ]
  %477 = mul nuw nsw i64 %polly.indvar670.2, 640
  %478 = trunc i64 %polly.indvar670.2 to i32
  %broadcast.splatinsert914 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat915 = shufflevector <4 x i32> %broadcast.splatinsert914, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body906

vector.body906:                                   ; preds = %vector.body906, %polly.loop_header667.2
  %index908 = phi i64 [ 0, %polly.loop_header667.2 ], [ %index.next909, %vector.body906 ]
  %vec.ind912 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.2 ], [ %vec.ind.next913, %vector.body906 ]
  %479 = add nuw nsw <4 x i64> %vec.ind912, <i64 64, i64 64, i64 64, i64 64>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat915, %480
  %482 = add <4 x i32> %481, <i32 3, i32 3, i32 3, i32 3>
  %483 = urem <4 x i32> %482, <i32 80, i32 80, i32 80, i32 80>
  %484 = sitofp <4 x i32> %483 to <4 x double>
  %485 = fmul fast <4 x double> %484, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %486 = extractelement <4 x i64> %479, i32 0
  %487 = shl i64 %486, 3
  %488 = add nuw nsw i64 %487, %477
  %489 = getelementptr i8, i8* %call, i64 %488
  %490 = bitcast i8* %489 to <4 x double>*
  store <4 x double> %485, <4 x double>* %490, align 8, !alias.scope !87, !noalias !89
  %index.next909 = add i64 %index908, 4
  %vec.ind.next913 = add <4 x i64> %vec.ind912, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next909, 16
  br i1 %491, label %polly.loop_exit675.2, label %vector.body906, !llvm.loop !108

polly.loop_exit675.2:                             ; preds = %vector.body906
  %polly.indvar_next671.2 = add nuw nsw i64 %polly.indvar670.2, 1
  %exitcond791.2.not = icmp eq i64 %polly.indvar_next671.2, 32
  br i1 %exitcond791.2.not, label %polly.loop_header667.1827, label %polly.loop_header667.2

polly.loop_header667.1827:                        ; preds = %polly.loop_exit675.2, %polly.loop_exit675.1838
  %polly.indvar670.1826 = phi i64 [ %polly.indvar_next671.1836, %polly.loop_exit675.1838 ], [ 0, %polly.loop_exit675.2 ]
  %492 = add nuw nsw i64 %polly.indvar670.1826, 32
  %493 = mul nuw nsw i64 %492, 640
  %494 = trunc i64 %492 to i32
  %broadcast.splatinsert928 = insertelement <4 x i32> poison, i32 %494, i32 0
  %broadcast.splat929 = shufflevector <4 x i32> %broadcast.splatinsert928, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %polly.loop_header667.1827
  %index920 = phi i64 [ 0, %polly.loop_header667.1827 ], [ %index.next921, %vector.body918 ]
  %vec.ind926 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header667.1827 ], [ %vec.ind.next927, %vector.body918 ]
  %495 = mul <4 x i32> %vec.ind926, %broadcast.splat929
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = shl i64 %index920, 3
  %501 = add nuw nsw i64 %500, %493
  %502 = getelementptr i8, i8* %call, i64 %501
  %503 = bitcast i8* %502 to <4 x double>*
  store <4 x double> %499, <4 x double>* %503, align 8, !alias.scope !87, !noalias !89
  %index.next921 = add i64 %index920, 4
  %vec.ind.next927 = add <4 x i32> %vec.ind926, <i32 4, i32 4, i32 4, i32 4>
  %504 = icmp eq i64 %index.next921, 32
  br i1 %504, label %polly.loop_exit675.1838, label %vector.body918, !llvm.loop !109

polly.loop_exit675.1838:                          ; preds = %vector.body918
  %polly.indvar_next671.1836 = add nuw nsw i64 %polly.indvar670.1826, 1
  %exitcond791.1837.not = icmp eq i64 %polly.indvar_next671.1836, 32
  br i1 %exitcond791.1837.not, label %polly.loop_header667.1.1, label %polly.loop_header667.1827

polly.loop_header667.1.1:                         ; preds = %polly.loop_exit675.1838, %polly.loop_exit675.1.1
  %polly.indvar670.1.1 = phi i64 [ %polly.indvar_next671.1.1, %polly.loop_exit675.1.1 ], [ 0, %polly.loop_exit675.1838 ]
  %505 = add nuw nsw i64 %polly.indvar670.1.1, 32
  %506 = mul nuw nsw i64 %505, 640
  %507 = trunc i64 %505 to i32
  %broadcast.splatinsert940 = insertelement <4 x i32> poison, i32 %507, i32 0
  %broadcast.splat941 = shufflevector <4 x i32> %broadcast.splatinsert940, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body932

vector.body932:                                   ; preds = %vector.body932, %polly.loop_header667.1.1
  %index934 = phi i64 [ 0, %polly.loop_header667.1.1 ], [ %index.next935, %vector.body932 ]
  %vec.ind938 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.1.1 ], [ %vec.ind.next939, %vector.body932 ]
  %508 = add nuw nsw <4 x i64> %vec.ind938, <i64 32, i64 32, i64 32, i64 32>
  %509 = trunc <4 x i64> %508 to <4 x i32>
  %510 = mul <4 x i32> %broadcast.splat941, %509
  %511 = add <4 x i32> %510, <i32 3, i32 3, i32 3, i32 3>
  %512 = urem <4 x i32> %511, <i32 80, i32 80, i32 80, i32 80>
  %513 = sitofp <4 x i32> %512 to <4 x double>
  %514 = fmul fast <4 x double> %513, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %515 = extractelement <4 x i64> %508, i32 0
  %516 = shl i64 %515, 3
  %517 = add nuw nsw i64 %516, %506
  %518 = getelementptr i8, i8* %call, i64 %517
  %519 = bitcast i8* %518 to <4 x double>*
  store <4 x double> %514, <4 x double>* %519, align 8, !alias.scope !87, !noalias !89
  %index.next935 = add i64 %index934, 4
  %vec.ind.next939 = add <4 x i64> %vec.ind938, <i64 4, i64 4, i64 4, i64 4>
  %520 = icmp eq i64 %index.next935, 32
  br i1 %520, label %polly.loop_exit675.1.1, label %vector.body932, !llvm.loop !110

polly.loop_exit675.1.1:                           ; preds = %vector.body932
  %polly.indvar_next671.1.1 = add nuw nsw i64 %polly.indvar670.1.1, 1
  %exitcond791.1.1.not = icmp eq i64 %polly.indvar_next671.1.1, 32
  br i1 %exitcond791.1.1.not, label %polly.loop_header667.2.1, label %polly.loop_header667.1.1

polly.loop_header667.2.1:                         ; preds = %polly.loop_exit675.1.1, %polly.loop_exit675.2.1
  %polly.indvar670.2.1 = phi i64 [ %polly.indvar_next671.2.1, %polly.loop_exit675.2.1 ], [ 0, %polly.loop_exit675.1.1 ]
  %521 = add nuw nsw i64 %polly.indvar670.2.1, 32
  %522 = mul nuw nsw i64 %521, 640
  %523 = trunc i64 %521 to i32
  %broadcast.splatinsert952 = insertelement <4 x i32> poison, i32 %523, i32 0
  %broadcast.splat953 = shufflevector <4 x i32> %broadcast.splatinsert952, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %polly.loop_header667.2.1
  %index946 = phi i64 [ 0, %polly.loop_header667.2.1 ], [ %index.next947, %vector.body944 ]
  %vec.ind950 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.2.1 ], [ %vec.ind.next951, %vector.body944 ]
  %524 = add nuw nsw <4 x i64> %vec.ind950, <i64 64, i64 64, i64 64, i64 64>
  %525 = trunc <4 x i64> %524 to <4 x i32>
  %526 = mul <4 x i32> %broadcast.splat953, %525
  %527 = add <4 x i32> %526, <i32 3, i32 3, i32 3, i32 3>
  %528 = urem <4 x i32> %527, <i32 80, i32 80, i32 80, i32 80>
  %529 = sitofp <4 x i32> %528 to <4 x double>
  %530 = fmul fast <4 x double> %529, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %531 = extractelement <4 x i64> %524, i32 0
  %532 = shl i64 %531, 3
  %533 = add nuw nsw i64 %532, %522
  %534 = getelementptr i8, i8* %call, i64 %533
  %535 = bitcast i8* %534 to <4 x double>*
  store <4 x double> %530, <4 x double>* %535, align 8, !alias.scope !87, !noalias !89
  %index.next947 = add i64 %index946, 4
  %vec.ind.next951 = add <4 x i64> %vec.ind950, <i64 4, i64 4, i64 4, i64 4>
  %536 = icmp eq i64 %index.next947, 16
  br i1 %536, label %polly.loop_exit675.2.1, label %vector.body944, !llvm.loop !111

polly.loop_exit675.2.1:                           ; preds = %vector.body944
  %polly.indvar_next671.2.1 = add nuw nsw i64 %polly.indvar670.2.1, 1
  %exitcond791.2.1.not = icmp eq i64 %polly.indvar_next671.2.1, 32
  br i1 %exitcond791.2.1.not, label %polly.loop_header667.2841, label %polly.loop_header667.2.1

polly.loop_header667.2841:                        ; preds = %polly.loop_exit675.2.1, %polly.loop_exit675.2852
  %polly.indvar670.2840 = phi i64 [ %polly.indvar_next671.2850, %polly.loop_exit675.2852 ], [ 0, %polly.loop_exit675.2.1 ]
  %537 = add nuw nsw i64 %polly.indvar670.2840, 64
  %538 = mul nuw nsw i64 %537, 640
  %539 = trunc i64 %537 to i32
  %broadcast.splatinsert966 = insertelement <4 x i32> poison, i32 %539, i32 0
  %broadcast.splat967 = shufflevector <4 x i32> %broadcast.splatinsert966, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %polly.loop_header667.2841
  %index958 = phi i64 [ 0, %polly.loop_header667.2841 ], [ %index.next959, %vector.body956 ]
  %vec.ind964 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header667.2841 ], [ %vec.ind.next965, %vector.body956 ]
  %540 = mul <4 x i32> %vec.ind964, %broadcast.splat967
  %541 = add <4 x i32> %540, <i32 3, i32 3, i32 3, i32 3>
  %542 = urem <4 x i32> %541, <i32 80, i32 80, i32 80, i32 80>
  %543 = sitofp <4 x i32> %542 to <4 x double>
  %544 = fmul fast <4 x double> %543, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %545 = shl i64 %index958, 3
  %546 = add nuw nsw i64 %545, %538
  %547 = getelementptr i8, i8* %call, i64 %546
  %548 = bitcast i8* %547 to <4 x double>*
  store <4 x double> %544, <4 x double>* %548, align 8, !alias.scope !87, !noalias !89
  %index.next959 = add i64 %index958, 4
  %vec.ind.next965 = add <4 x i32> %vec.ind964, <i32 4, i32 4, i32 4, i32 4>
  %549 = icmp eq i64 %index.next959, 32
  br i1 %549, label %polly.loop_exit675.2852, label %vector.body956, !llvm.loop !112

polly.loop_exit675.2852:                          ; preds = %vector.body956
  %polly.indvar_next671.2850 = add nuw nsw i64 %polly.indvar670.2840, 1
  %exitcond791.2851.not = icmp eq i64 %polly.indvar_next671.2850, 16
  br i1 %exitcond791.2851.not, label %polly.loop_header667.1.2, label %polly.loop_header667.2841

polly.loop_header667.1.2:                         ; preds = %polly.loop_exit675.2852, %polly.loop_exit675.1.2
  %polly.indvar670.1.2 = phi i64 [ %polly.indvar_next671.1.2, %polly.loop_exit675.1.2 ], [ 0, %polly.loop_exit675.2852 ]
  %550 = add nuw nsw i64 %polly.indvar670.1.2, 64
  %551 = mul nuw nsw i64 %550, 640
  %552 = trunc i64 %550 to i32
  %broadcast.splatinsert978 = insertelement <4 x i32> poison, i32 %552, i32 0
  %broadcast.splat979 = shufflevector <4 x i32> %broadcast.splatinsert978, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body970

vector.body970:                                   ; preds = %vector.body970, %polly.loop_header667.1.2
  %index972 = phi i64 [ 0, %polly.loop_header667.1.2 ], [ %index.next973, %vector.body970 ]
  %vec.ind976 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.1.2 ], [ %vec.ind.next977, %vector.body970 ]
  %553 = add nuw nsw <4 x i64> %vec.ind976, <i64 32, i64 32, i64 32, i64 32>
  %554 = trunc <4 x i64> %553 to <4 x i32>
  %555 = mul <4 x i32> %broadcast.splat979, %554
  %556 = add <4 x i32> %555, <i32 3, i32 3, i32 3, i32 3>
  %557 = urem <4 x i32> %556, <i32 80, i32 80, i32 80, i32 80>
  %558 = sitofp <4 x i32> %557 to <4 x double>
  %559 = fmul fast <4 x double> %558, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %560 = extractelement <4 x i64> %553, i32 0
  %561 = shl i64 %560, 3
  %562 = add nuw nsw i64 %561, %551
  %563 = getelementptr i8, i8* %call, i64 %562
  %564 = bitcast i8* %563 to <4 x double>*
  store <4 x double> %559, <4 x double>* %564, align 8, !alias.scope !87, !noalias !89
  %index.next973 = add i64 %index972, 4
  %vec.ind.next977 = add <4 x i64> %vec.ind976, <i64 4, i64 4, i64 4, i64 4>
  %565 = icmp eq i64 %index.next973, 32
  br i1 %565, label %polly.loop_exit675.1.2, label %vector.body970, !llvm.loop !113

polly.loop_exit675.1.2:                           ; preds = %vector.body970
  %polly.indvar_next671.1.2 = add nuw nsw i64 %polly.indvar670.1.2, 1
  %exitcond791.1.2.not = icmp eq i64 %polly.indvar_next671.1.2, 16
  br i1 %exitcond791.1.2.not, label %polly.loop_header667.2.2, label %polly.loop_header667.1.2

polly.loop_header667.2.2:                         ; preds = %polly.loop_exit675.1.2, %polly.loop_exit675.2.2
  %polly.indvar670.2.2 = phi i64 [ %polly.indvar_next671.2.2, %polly.loop_exit675.2.2 ], [ 0, %polly.loop_exit675.1.2 ]
  %566 = add nuw nsw i64 %polly.indvar670.2.2, 64
  %567 = mul nuw nsw i64 %566, 640
  %568 = trunc i64 %566 to i32
  %broadcast.splatinsert990 = insertelement <4 x i32> poison, i32 %568, i32 0
  %broadcast.splat991 = shufflevector <4 x i32> %broadcast.splatinsert990, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %polly.loop_header667.2.2
  %index984 = phi i64 [ 0, %polly.loop_header667.2.2 ], [ %index.next985, %vector.body982 ]
  %vec.ind988 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.2.2 ], [ %vec.ind.next989, %vector.body982 ]
  %569 = add nuw nsw <4 x i64> %vec.ind988, <i64 64, i64 64, i64 64, i64 64>
  %570 = trunc <4 x i64> %569 to <4 x i32>
  %571 = mul <4 x i32> %broadcast.splat991, %570
  %572 = add <4 x i32> %571, <i32 3, i32 3, i32 3, i32 3>
  %573 = urem <4 x i32> %572, <i32 80, i32 80, i32 80, i32 80>
  %574 = sitofp <4 x i32> %573 to <4 x double>
  %575 = fmul fast <4 x double> %574, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %576 = extractelement <4 x i64> %569, i32 0
  %577 = shl i64 %576, 3
  %578 = add nuw nsw i64 %577, %567
  %579 = getelementptr i8, i8* %call, i64 %578
  %580 = bitcast i8* %579 to <4 x double>*
  store <4 x double> %575, <4 x double>* %580, align 8, !alias.scope !87, !noalias !89
  %index.next985 = add i64 %index984, 4
  %vec.ind.next989 = add <4 x i64> %vec.ind988, <i64 4, i64 4, i64 4, i64 4>
  %581 = icmp eq i64 %index.next985, 16
  br i1 %581, label %polly.loop_exit675.2.2, label %vector.body982, !llvm.loop !114

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
!24 = !{!"llvm.loop.tile.size", i32 128}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 8}
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
!44 = !{!"llvm.loop.tile.size", i32 100}
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
