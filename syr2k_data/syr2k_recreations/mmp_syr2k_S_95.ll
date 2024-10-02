; ModuleID = 'syr2k_recreations//mmp_syr2k_S_95.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_95.c"
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
  %call684 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #5
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #5
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1545 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1545, %call2
  %polly.access.call2565 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2565, %call1
  %2 = or i1 %0, %1
  %polly.access.call585 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call585, %call2
  %4 = icmp ule i8* %polly.access.call2565, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call585, %call1
  %8 = icmp ule i8* %polly.access.call1545, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header670, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv7.i, i64 %index870
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit731.1.2
  tail call void (...) @polybench_timer_start() #5
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header473, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i, i64 %index1152
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
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit503.3
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header328, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i52, i64 %index1175
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
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit358.3
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
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i91, i64 %index1201
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
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %exitcond752.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1210 = add i64 %indvar1209, 1
  br i1 %exitcond752.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond751.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond751.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.3
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213.3 ], [ 1, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit213.3 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nsw i64 %polly.indvar202, 2
  %98 = mul nsw i64 %polly.indvar202, 1920
  %99 = mul nsw i64 %polly.indvar202, 2560
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %100 = or i64 %97, 1
  %101 = mul nuw nsw i64 %100, 480
  %102 = mul nuw nsw i64 %100, 640
  br label %polly.loop_header211.1

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %103 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep223 = getelementptr i8, i8* %call1, i64 %103
  %scevgep227 = getelementptr i8, i8* %call2, i64 %103
  %scevgep228 = getelementptr i8, i8* %scevgep227, i64 %98
  %scevgep228229 = bitcast i8* %scevgep228 to double*
  %_p_scalar_230 = load double, double* %scevgep228229, align 8, !alias.scope !63, !noalias !67
  %scevgep236 = getelementptr i8, i8* %scevgep223, i64 %98
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond748.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond748.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %104 = mul nuw nsw i64 %polly.indvar220, 480
  %scevgep224 = getelementptr i8, i8* %scevgep223, i64 %104
  %scevgep224225 = bitcast i8* %scevgep224 to double*
  %_p_scalar_226 = load double, double* %scevgep224225, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112 = fmul fast double %_p_scalar_230, %_p_scalar_226
  %scevgep232 = getelementptr i8, i8* %scevgep227, i64 %104
  %scevgep232233 = bitcast i8* %scevgep232 to double*
  %_p_scalar_234 = load double, double* %scevgep232233, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114 = fmul fast double %_p_scalar_238, %_p_scalar_234
  %105 = shl nuw nsw i64 %polly.indvar220, 3
  %106 = add nuw nsw i64 %105, %99
  %scevgep239 = getelementptr i8, i8* %call, i64 %106
  %scevgep239240 = bitcast i8* %scevgep239 to double*
  %_p_scalar_241 = load double, double* %scevgep239240, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_241
  store double %p_add42.i118, double* %scevgep239240, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header328:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit336
  %indvar1183 = phi i64 [ %indvar.next1184, %polly.loop_exit336 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar331 = phi i64 [ %polly.indvar_next332, %polly.loop_exit336 ], [ 1, %kernel_syr2k.exit ]
  %107 = add i64 %indvar1183, 1
  %108 = mul nuw nsw i64 %polly.indvar331, 640
  %scevgep340 = getelementptr i8, i8* %call, i64 %108
  %min.iters.check1185 = icmp ult i64 %107, 4
  br i1 %min.iters.check1185, label %polly.loop_header334.preheader, label %vector.ph1186

vector.ph1186:                                    ; preds = %polly.loop_header328
  %n.vec1188 = and i64 %107, -4
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1190, %vector.body1182 ]
  %109 = shl nuw nsw i64 %index1189, 3
  %110 = getelementptr i8, i8* %scevgep340, i64 %109
  %111 = bitcast i8* %110 to <4 x double>*
  %wide.load1193 = load <4 x double>, <4 x double>* %111, align 8, !alias.scope !69, !noalias !71
  %112 = fmul fast <4 x double> %wide.load1193, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %113 = bitcast i8* %110 to <4 x double>*
  store <4 x double> %112, <4 x double>* %113, align 8, !alias.scope !69, !noalias !71
  %index.next1190 = add i64 %index1189, 4
  %114 = icmp eq i64 %index.next1190, %n.vec1188
  br i1 %114, label %middle.block1180, label %vector.body1182, !llvm.loop !74

middle.block1180:                                 ; preds = %vector.body1182
  %cmp.n1192 = icmp eq i64 %107, %n.vec1188
  br i1 %cmp.n1192, label %polly.loop_exit336, label %polly.loop_header334.preheader

polly.loop_header334.preheader:                   ; preds = %polly.loop_header328, %middle.block1180
  %polly.indvar337.ph = phi i64 [ 0, %polly.loop_header328 ], [ %n.vec1188, %middle.block1180 ]
  br label %polly.loop_header334

polly.loop_exit336:                               ; preds = %polly.loop_header334, %middle.block1180
  %polly.indvar_next332 = add nuw nsw i64 %polly.indvar331, 1
  %exitcond762.not = icmp eq i64 %polly.indvar_next332, 80
  %indvar.next1184 = add i64 %indvar1183, 1
  br i1 %exitcond762.not, label %polly.loop_header344, label %polly.loop_header328

polly.loop_header334:                             ; preds = %polly.loop_header334.preheader, %polly.loop_header334
  %polly.indvar337 = phi i64 [ %polly.indvar_next338, %polly.loop_header334 ], [ %polly.indvar337.ph, %polly.loop_header334.preheader ]
  %115 = shl nuw nsw i64 %polly.indvar337, 3
  %scevgep341 = getelementptr i8, i8* %scevgep340, i64 %115
  %scevgep341342 = bitcast i8* %scevgep341 to double*
  %_p_scalar_343 = load double, double* %scevgep341342, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_343, 1.200000e+00
  store double %p_mul.i57, double* %scevgep341342, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next338 = add nuw nsw i64 %polly.indvar337, 1
  %exitcond761.not = icmp eq i64 %polly.indvar_next338, %polly.indvar331
  br i1 %exitcond761.not, label %polly.loop_exit336, label %polly.loop_header334, !llvm.loop !75

polly.loop_header344:                             ; preds = %polly.loop_exit336, %polly.loop_exit358.3
  %indvars.iv753 = phi i64 [ %indvars.iv.next754, %polly.loop_exit358.3 ], [ 1, %polly.loop_exit336 ]
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_exit358.3 ], [ 0, %polly.loop_exit336 ]
  %116 = shl nsw i64 %polly.indvar347, 2
  %117 = mul nsw i64 %polly.indvar347, 1920
  %118 = mul nsw i64 %polly.indvar347, 2560
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_exit364
  %119 = or i64 %116, 1
  %120 = mul nuw nsw i64 %119, 480
  %121 = mul nuw nsw i64 %119, 640
  br label %polly.loop_header356.1

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.loop_header344
  %polly.indvar359 = phi i64 [ 0, %polly.loop_header344 ], [ %polly.indvar_next360, %polly.loop_exit364 ]
  %122 = shl nuw nsw i64 %polly.indvar359, 3
  %scevgep368 = getelementptr i8, i8* %call1, i64 %122
  %scevgep372 = getelementptr i8, i8* %call2, i64 %122
  %scevgep373 = getelementptr i8, i8* %scevgep372, i64 %117
  %scevgep373374 = bitcast i8* %scevgep373 to double*
  %_p_scalar_375 = load double, double* %scevgep373374, align 8, !alias.scope !73, !noalias !76
  %scevgep381 = getelementptr i8, i8* %scevgep368, i64 %117
  %scevgep381382 = bitcast i8* %scevgep381 to double*
  %_p_scalar_383 = load double, double* %scevgep381382, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond758.not = icmp eq i64 %polly.indvar_next360, 60
  br i1 %exitcond758.not, label %polly.loop_exit358, label %polly.loop_header356

polly.loop_header362:                             ; preds = %polly.loop_header362, %polly.loop_header356
  %polly.indvar365 = phi i64 [ 0, %polly.loop_header356 ], [ %polly.indvar_next366, %polly.loop_header362 ]
  %123 = mul nuw nsw i64 %polly.indvar365, 480
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %123
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73 = fmul fast double %_p_scalar_375, %_p_scalar_371
  %scevgep377 = getelementptr i8, i8* %scevgep372, i64 %123
  %scevgep377378 = bitcast i8* %scevgep377 to double*
  %_p_scalar_379 = load double, double* %scevgep377378, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75 = fmul fast double %_p_scalar_383, %_p_scalar_379
  %124 = shl nuw nsw i64 %polly.indvar365, 3
  %125 = add nuw nsw i64 %124, %118
  %scevgep384 = getelementptr i8, i8* %call, i64 %125
  %scevgep384385 = bitcast i8* %scevgep384 to double*
  %_p_scalar_386 = load double, double* %scevgep384385, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_386
  store double %p_add42.i79, double* %scevgep384385, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond757.not = icmp eq i64 %polly.indvar_next366, %indvars.iv753
  br i1 %exitcond757.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header473:                             ; preds = %init_array.exit, %polly.loop_exit481
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit481 ], [ 0, %init_array.exit ]
  %polly.indvar476 = phi i64 [ %polly.indvar_next477, %polly.loop_exit481 ], [ 1, %init_array.exit ]
  %126 = add i64 %indvar, 1
  %127 = mul nuw nsw i64 %polly.indvar476, 640
  %scevgep485 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1159 = icmp ult i64 %126, 4
  br i1 %min.iters.check1159, label %polly.loop_header479.preheader, label %vector.ph1160

vector.ph1160:                                    ; preds = %polly.loop_header473
  %n.vec1162 = and i64 %126, -4
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %vector.ph1160
  %index1163 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1164, %vector.body1158 ]
  %128 = shl nuw nsw i64 %index1163, 3
  %129 = getelementptr i8, i8* %scevgep485, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1167 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !78, !noalias !80
  %131 = fmul fast <4 x double> %wide.load1167, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !78, !noalias !80
  %index.next1164 = add i64 %index1163, 4
  %133 = icmp eq i64 %index.next1164, %n.vec1162
  br i1 %133, label %middle.block1156, label %vector.body1158, !llvm.loop !83

middle.block1156:                                 ; preds = %vector.body1158
  %cmp.n1166 = icmp eq i64 %126, %n.vec1162
  br i1 %cmp.n1166, label %polly.loop_exit481, label %polly.loop_header479.preheader

polly.loop_header479.preheader:                   ; preds = %polly.loop_header473, %middle.block1156
  %polly.indvar482.ph = phi i64 [ 0, %polly.loop_header473 ], [ %n.vec1162, %middle.block1156 ]
  br label %polly.loop_header479

polly.loop_exit481:                               ; preds = %polly.loop_header479, %middle.block1156
  %polly.indvar_next477 = add nuw nsw i64 %polly.indvar476, 1
  %exitcond772.not = icmp eq i64 %polly.indvar_next477, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond772.not, label %polly.loop_header489, label %polly.loop_header473

polly.loop_header479:                             ; preds = %polly.loop_header479.preheader, %polly.loop_header479
  %polly.indvar482 = phi i64 [ %polly.indvar_next483, %polly.loop_header479 ], [ %polly.indvar482.ph, %polly.loop_header479.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar482, 3
  %scevgep486 = getelementptr i8, i8* %scevgep485, i64 %134
  %scevgep486487 = bitcast i8* %scevgep486 to double*
  %_p_scalar_488 = load double, double* %scevgep486487, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_488, 1.200000e+00
  store double %p_mul.i, double* %scevgep486487, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next483 = add nuw nsw i64 %polly.indvar482, 1
  %exitcond771.not = icmp eq i64 %polly.indvar_next483, %polly.indvar476
  br i1 %exitcond771.not, label %polly.loop_exit481, label %polly.loop_header479, !llvm.loop !84

polly.loop_header489:                             ; preds = %polly.loop_exit481, %polly.loop_exit503.3
  %indvars.iv763 = phi i64 [ %indvars.iv.next764, %polly.loop_exit503.3 ], [ 1, %polly.loop_exit481 ]
  %polly.indvar492 = phi i64 [ %polly.indvar_next493, %polly.loop_exit503.3 ], [ 0, %polly.loop_exit481 ]
  %135 = shl nsw i64 %polly.indvar492, 2
  %136 = mul nsw i64 %polly.indvar492, 1920
  %137 = mul nsw i64 %polly.indvar492, 2560
  br label %polly.loop_header501

polly.loop_exit503:                               ; preds = %polly.loop_exit509
  %138 = or i64 %135, 1
  %139 = mul nuw nsw i64 %138, 480
  %140 = mul nuw nsw i64 %138, 640
  br label %polly.loop_header501.1

polly.loop_header501:                             ; preds = %polly.loop_exit509, %polly.loop_header489
  %polly.indvar504 = phi i64 [ 0, %polly.loop_header489 ], [ %polly.indvar_next505, %polly.loop_exit509 ]
  %141 = shl nuw nsw i64 %polly.indvar504, 3
  %scevgep513 = getelementptr i8, i8* %call1, i64 %141
  %scevgep517 = getelementptr i8, i8* %call2, i64 %141
  %scevgep518 = getelementptr i8, i8* %scevgep517, i64 %136
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !82, !noalias !85
  %scevgep526 = getelementptr i8, i8* %scevgep513, i64 %136
  %scevgep526527 = bitcast i8* %scevgep526 to double*
  %_p_scalar_528 = load double, double* %scevgep526527, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header507

polly.loop_exit509:                               ; preds = %polly.loop_header507
  %polly.indvar_next505 = add nuw nsw i64 %polly.indvar504, 1
  %exitcond768.not = icmp eq i64 %polly.indvar_next505, 60
  br i1 %exitcond768.not, label %polly.loop_exit503, label %polly.loop_header501

polly.loop_header507:                             ; preds = %polly.loop_header507, %polly.loop_header501
  %polly.indvar510 = phi i64 [ 0, %polly.loop_header501 ], [ %polly.indvar_next511, %polly.loop_header507 ]
  %142 = mul nuw nsw i64 %polly.indvar510, 480
  %scevgep514 = getelementptr i8, i8* %scevgep513, i64 %142
  %scevgep514515 = bitcast i8* %scevgep514 to double*
  %_p_scalar_516 = load double, double* %scevgep514515, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i = fmul fast double %_p_scalar_520, %_p_scalar_516
  %scevgep522 = getelementptr i8, i8* %scevgep517, i64 %142
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i = fmul fast double %_p_scalar_528, %_p_scalar_524
  %143 = shl nuw nsw i64 %polly.indvar510, 3
  %144 = add nuw nsw i64 %143, %137
  %scevgep529 = getelementptr i8, i8* %call, i64 %144
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_531
  store double %p_add42.i, double* %scevgep529530, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next511, %indvars.iv763
  br i1 %exitcond767.not, label %polly.loop_exit509, label %polly.loop_header507

polly.loop_header670:                             ; preds = %entry, %polly.loop_exit678
  %polly.indvar673 = phi i64 [ %polly.indvar_next674, %polly.loop_exit678 ], [ 0, %entry ]
  %145 = mul nuw nsw i64 %polly.indvar673, 640
  %146 = trunc i64 %polly.indvar673 to i32
  %broadcast.splatinsert890 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat891 = shufflevector <4 x i32> %broadcast.splatinsert890, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body880

vector.body880:                                   ; preds = %vector.body880, %polly.loop_header670
  %index882 = phi i64 [ 0, %polly.loop_header670 ], [ %index.next883, %vector.body880 ]
  %vec.ind888 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header670 ], [ %vec.ind.next889, %vector.body880 ]
  %147 = mul <4 x i32> %vec.ind888, %broadcast.splat891
  %148 = add <4 x i32> %147, <i32 3, i32 3, i32 3, i32 3>
  %149 = urem <4 x i32> %148, <i32 80, i32 80, i32 80, i32 80>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index882, 3
  %153 = add nuw nsw i64 %152, %145
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !87, !noalias !89
  %index.next883 = add i64 %index882, 4
  %vec.ind.next889 = add <4 x i32> %vec.ind888, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next883, 32
  br i1 %156, label %polly.loop_exit678, label %vector.body880, !llvm.loop !92

polly.loop_exit678:                               ; preds = %vector.body880
  %polly.indvar_next674 = add nuw nsw i64 %polly.indvar673, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next674, 32
  br i1 %exitcond791.not, label %polly.loop_header670.1, label %polly.loop_header670

polly.loop_header697:                             ; preds = %polly.loop_exit678.2.2, %polly.loop_exit705
  %polly.indvar700 = phi i64 [ %polly.indvar_next701, %polly.loop_exit705 ], [ 0, %polly.loop_exit678.2.2 ]
  %157 = mul nuw nsw i64 %polly.indvar700, 480
  %158 = trunc i64 %polly.indvar700 to i32
  %broadcast.splatinsert1004 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1005 = shufflevector <4 x i32> %broadcast.splatinsert1004, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %polly.loop_header697
  %index996 = phi i64 [ 0, %polly.loop_header697 ], [ %index.next997, %vector.body994 ]
  %vec.ind1002 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header697 ], [ %vec.ind.next1003, %vector.body994 ]
  %159 = mul <4 x i32> %vec.ind1002, %broadcast.splat1005
  %160 = add <4 x i32> %159, <i32 2, i32 2, i32 2, i32 2>
  %161 = urem <4 x i32> %160, <i32 60, i32 60, i32 60, i32 60>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %164 = shl i64 %index996, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call2, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !91, !noalias !93
  %index.next997 = add i64 %index996, 4
  %vec.ind.next1003 = add <4 x i32> %vec.ind1002, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next997, 32
  br i1 %168, label %polly.loop_exit705, label %vector.body994, !llvm.loop !94

polly.loop_exit705:                               ; preds = %vector.body994
  %polly.indvar_next701 = add nuw nsw i64 %polly.indvar700, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next701, 32
  br i1 %exitcond782.not, label %polly.loop_header697.1, label %polly.loop_header697

polly.loop_header723:                             ; preds = %polly.loop_exit705.1.2, %polly.loop_exit731
  %polly.indvar726 = phi i64 [ %polly.indvar_next727, %polly.loop_exit731 ], [ 0, %polly.loop_exit705.1.2 ]
  %169 = mul nuw nsw i64 %polly.indvar726, 480
  %170 = trunc i64 %polly.indvar726 to i32
  %broadcast.splatinsert1082 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1083 = shufflevector <4 x i32> %broadcast.splatinsert1082, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1072

vector.body1072:                                  ; preds = %vector.body1072, %polly.loop_header723
  %index1074 = phi i64 [ 0, %polly.loop_header723 ], [ %index.next1075, %vector.body1072 ]
  %vec.ind1080 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header723 ], [ %vec.ind.next1081, %vector.body1072 ]
  %171 = mul <4 x i32> %vec.ind1080, %broadcast.splat1083
  %172 = add <4 x i32> %171, <i32 1, i32 1, i32 1, i32 1>
  %173 = urem <4 x i32> %172, <i32 80, i32 80, i32 80, i32 80>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %176 = shl i64 %index1074, 3
  %177 = add i64 %176, %169
  %178 = getelementptr i8, i8* %call1, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !90, !noalias !95
  %index.next1075 = add i64 %index1074, 4
  %vec.ind.next1081 = add <4 x i32> %vec.ind1080, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1075, 32
  br i1 %180, label %polly.loop_exit731, label %vector.body1072, !llvm.loop !96

polly.loop_exit731:                               ; preds = %vector.body1072
  %polly.indvar_next727 = add nuw nsw i64 %polly.indvar726, 1
  %exitcond776.not = icmp eq i64 %polly.indvar_next727, 32
  br i1 %exitcond776.not, label %polly.loop_header723.1, label %polly.loop_header723

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit213
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_exit213 ], [ %polly.indvar_next215.1, %polly.loop_exit219.1 ]
  %181 = shl nuw nsw i64 %polly.indvar214.1, 3
  %scevgep223.1 = getelementptr i8, i8* %call1, i64 %181
  %scevgep227.1 = getelementptr i8, i8* %call2, i64 %181
  %scevgep228.1 = getelementptr i8, i8* %scevgep227.1, i64 %101
  %scevgep228229.1 = bitcast i8* %scevgep228.1 to double*
  %_p_scalar_230.1 = load double, double* %scevgep228229.1, align 8, !alias.scope !63, !noalias !67
  %scevgep236.1 = getelementptr i8, i8* %scevgep223.1, i64 %101
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %_p_scalar_238.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %182 = mul nuw nsw i64 %polly.indvar220.1, 480
  %scevgep224.1 = getelementptr i8, i8* %scevgep223.1, i64 %182
  %scevgep224225.1 = bitcast i8* %scevgep224.1 to double*
  %_p_scalar_226.1 = load double, double* %scevgep224225.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1 = fmul fast double %_p_scalar_230.1, %_p_scalar_226.1
  %scevgep232.1 = getelementptr i8, i8* %scevgep227.1, i64 %182
  %scevgep232233.1 = bitcast i8* %scevgep232.1 to double*
  %_p_scalar_234.1 = load double, double* %scevgep232233.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1 = fmul fast double %_p_scalar_238.1, %_p_scalar_234.1
  %183 = shl nuw nsw i64 %polly.indvar220.1, 3
  %184 = add nuw nsw i64 %183, %102
  %scevgep239.1 = getelementptr i8, i8* %call, i64 %184
  %scevgep239240.1 = bitcast i8* %scevgep239.1 to double*
  %_p_scalar_241.1 = load double, double* %scevgep239240.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_241.1
  store double %p_add42.i118.1, double* %scevgep239240.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar220.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond748.1.not = icmp eq i64 %polly.indvar_next215.1, 60
  br i1 %exitcond748.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %185 = or i64 %97, 2
  %186 = mul nuw nsw i64 %185, 480
  %187 = mul nuw nsw i64 %185, 640
  br label %polly.loop_header211.2

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.2, %polly.loop_exit213.1
  %polly.indvar214.2 = phi i64 [ 0, %polly.loop_exit213.1 ], [ %polly.indvar_next215.2, %polly.loop_exit219.2 ]
  %188 = shl nuw nsw i64 %polly.indvar214.2, 3
  %scevgep223.2 = getelementptr i8, i8* %call1, i64 %188
  %scevgep227.2 = getelementptr i8, i8* %call2, i64 %188
  %scevgep228.2 = getelementptr i8, i8* %scevgep227.2, i64 %186
  %scevgep228229.2 = bitcast i8* %scevgep228.2 to double*
  %_p_scalar_230.2 = load double, double* %scevgep228229.2, align 8, !alias.scope !63, !noalias !67
  %scevgep236.2 = getelementptr i8, i8* %scevgep223.2, i64 %186
  %scevgep236237.2 = bitcast i8* %scevgep236.2 to double*
  %_p_scalar_238.2 = load double, double* %scevgep236237.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_header217.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_header217.2 ]
  %189 = mul nuw nsw i64 %polly.indvar220.2, 480
  %scevgep224.2 = getelementptr i8, i8* %scevgep223.2, i64 %189
  %scevgep224225.2 = bitcast i8* %scevgep224.2 to double*
  %_p_scalar_226.2 = load double, double* %scevgep224225.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.2 = fmul fast double %_p_scalar_230.2, %_p_scalar_226.2
  %scevgep232.2 = getelementptr i8, i8* %scevgep227.2, i64 %189
  %scevgep232233.2 = bitcast i8* %scevgep232.2 to double*
  %_p_scalar_234.2 = load double, double* %scevgep232233.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.2 = fmul fast double %_p_scalar_238.2, %_p_scalar_234.2
  %190 = shl nuw nsw i64 %polly.indvar220.2, 3
  %191 = add nuw nsw i64 %190, %187
  %scevgep239.2 = getelementptr i8, i8* %call, i64 %191
  %scevgep239240.2 = bitcast i8* %scevgep239.2 to double*
  %_p_scalar_241.2 = load double, double* %scevgep239240.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_241.2
  store double %p_add42.i118.2, double* %scevgep239240.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %192 = add nuw nsw i64 %indvars.iv, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar220.2, %192
  br i1 %exitcond.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_header217.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond748.2.not = icmp eq i64 %polly.indvar_next215.2, 60
  br i1 %exitcond748.2.not, label %polly.loop_exit213.2, label %polly.loop_header211.2

polly.loop_exit213.2:                             ; preds = %polly.loop_exit219.2
  %193 = or i64 %97, 3
  %194 = mul nuw nsw i64 %193, 480
  %195 = mul nuw nsw i64 %193, 640
  %196 = add nuw nsw i64 %indvars.iv, 2
  br label %polly.loop_header211.3

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.3, %polly.loop_exit213.2
  %polly.indvar214.3 = phi i64 [ 0, %polly.loop_exit213.2 ], [ %polly.indvar_next215.3, %polly.loop_exit219.3 ]
  %197 = shl nuw nsw i64 %polly.indvar214.3, 3
  %scevgep223.3 = getelementptr i8, i8* %call1, i64 %197
  %scevgep227.3 = getelementptr i8, i8* %call2, i64 %197
  %scevgep228.3 = getelementptr i8, i8* %scevgep227.3, i64 %194
  %scevgep228229.3 = bitcast i8* %scevgep228.3 to double*
  %_p_scalar_230.3 = load double, double* %scevgep228229.3, align 8, !alias.scope !63, !noalias !67
  %scevgep236.3 = getelementptr i8, i8* %scevgep223.3, i64 %194
  %scevgep236237.3 = bitcast i8* %scevgep236.3 to double*
  %_p_scalar_238.3 = load double, double* %scevgep236237.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_header217.3, %polly.loop_header211.3
  %polly.indvar220.3 = phi i64 [ 0, %polly.loop_header211.3 ], [ %polly.indvar_next221.3, %polly.loop_header217.3 ]
  %198 = mul nuw nsw i64 %polly.indvar220.3, 480
  %scevgep224.3 = getelementptr i8, i8* %scevgep223.3, i64 %198
  %scevgep224225.3 = bitcast i8* %scevgep224.3 to double*
  %_p_scalar_226.3 = load double, double* %scevgep224225.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.3 = fmul fast double %_p_scalar_230.3, %_p_scalar_226.3
  %scevgep232.3 = getelementptr i8, i8* %scevgep227.3, i64 %198
  %scevgep232233.3 = bitcast i8* %scevgep232.3 to double*
  %_p_scalar_234.3 = load double, double* %scevgep232233.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.3 = fmul fast double %_p_scalar_238.3, %_p_scalar_234.3
  %199 = shl nuw nsw i64 %polly.indvar220.3, 3
  %200 = add nuw nsw i64 %199, %195
  %scevgep239.3 = getelementptr i8, i8* %call, i64 %200
  %scevgep239240.3 = bitcast i8* %scevgep239.3 to double*
  %_p_scalar_241.3 = load double, double* %scevgep239240.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_241.3
  store double %p_add42.i118.3, double* %scevgep239240.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar220.3, %196
  br i1 %exitcond.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_header217.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %exitcond748.3.not = icmp eq i64 %polly.indvar_next215.3, 60
  br i1 %exitcond748.3.not, label %polly.loop_exit213.3, label %polly.loop_header211.3

polly.loop_exit213.3:                             ; preds = %polly.loop_exit219.3
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond750.not = icmp eq i64 %polly.indvar_next203, 20
  br i1 %exitcond750.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header356.1:                           ; preds = %polly.loop_exit364.1, %polly.loop_exit358
  %polly.indvar359.1 = phi i64 [ 0, %polly.loop_exit358 ], [ %polly.indvar_next360.1, %polly.loop_exit364.1 ]
  %201 = shl nuw nsw i64 %polly.indvar359.1, 3
  %scevgep368.1 = getelementptr i8, i8* %call1, i64 %201
  %scevgep372.1 = getelementptr i8, i8* %call2, i64 %201
  %scevgep373.1 = getelementptr i8, i8* %scevgep372.1, i64 %120
  %scevgep373374.1 = bitcast i8* %scevgep373.1 to double*
  %_p_scalar_375.1 = load double, double* %scevgep373374.1, align 8, !alias.scope !73, !noalias !76
  %scevgep381.1 = getelementptr i8, i8* %scevgep368.1, i64 %120
  %scevgep381382.1 = bitcast i8* %scevgep381.1 to double*
  %_p_scalar_383.1 = load double, double* %scevgep381382.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header362.1

polly.loop_header362.1:                           ; preds = %polly.loop_header362.1, %polly.loop_header356.1
  %polly.indvar365.1 = phi i64 [ 0, %polly.loop_header356.1 ], [ %polly.indvar_next366.1, %polly.loop_header362.1 ]
  %202 = mul nuw nsw i64 %polly.indvar365.1, 480
  %scevgep369.1 = getelementptr i8, i8* %scevgep368.1, i64 %202
  %scevgep369370.1 = bitcast i8* %scevgep369.1 to double*
  %_p_scalar_371.1 = load double, double* %scevgep369370.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1 = fmul fast double %_p_scalar_375.1, %_p_scalar_371.1
  %scevgep377.1 = getelementptr i8, i8* %scevgep372.1, i64 %202
  %scevgep377378.1 = bitcast i8* %scevgep377.1 to double*
  %_p_scalar_379.1 = load double, double* %scevgep377378.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1 = fmul fast double %_p_scalar_383.1, %_p_scalar_379.1
  %203 = shl nuw nsw i64 %polly.indvar365.1, 3
  %204 = add nuw nsw i64 %203, %121
  %scevgep384.1 = getelementptr i8, i8* %call, i64 %204
  %scevgep384385.1 = bitcast i8* %scevgep384.1 to double*
  %_p_scalar_386.1 = load double, double* %scevgep384385.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_386.1
  store double %p_add42.i79.1, double* %scevgep384385.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next366.1 = add nuw nsw i64 %polly.indvar365.1, 1
  %exitcond757.1.not = icmp eq i64 %polly.indvar365.1, %indvars.iv753
  br i1 %exitcond757.1.not, label %polly.loop_exit364.1, label %polly.loop_header362.1

polly.loop_exit364.1:                             ; preds = %polly.loop_header362.1
  %polly.indvar_next360.1 = add nuw nsw i64 %polly.indvar359.1, 1
  %exitcond758.1.not = icmp eq i64 %polly.indvar_next360.1, 60
  br i1 %exitcond758.1.not, label %polly.loop_exit358.1, label %polly.loop_header356.1

polly.loop_exit358.1:                             ; preds = %polly.loop_exit364.1
  %205 = or i64 %116, 2
  %206 = mul nuw nsw i64 %205, 480
  %207 = mul nuw nsw i64 %205, 640
  br label %polly.loop_header356.2

polly.loop_header356.2:                           ; preds = %polly.loop_exit364.2, %polly.loop_exit358.1
  %polly.indvar359.2 = phi i64 [ 0, %polly.loop_exit358.1 ], [ %polly.indvar_next360.2, %polly.loop_exit364.2 ]
  %208 = shl nuw nsw i64 %polly.indvar359.2, 3
  %scevgep368.2 = getelementptr i8, i8* %call1, i64 %208
  %scevgep372.2 = getelementptr i8, i8* %call2, i64 %208
  %scevgep373.2 = getelementptr i8, i8* %scevgep372.2, i64 %206
  %scevgep373374.2 = bitcast i8* %scevgep373.2 to double*
  %_p_scalar_375.2 = load double, double* %scevgep373374.2, align 8, !alias.scope !73, !noalias !76
  %scevgep381.2 = getelementptr i8, i8* %scevgep368.2, i64 %206
  %scevgep381382.2 = bitcast i8* %scevgep381.2 to double*
  %_p_scalar_383.2 = load double, double* %scevgep381382.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header362.2

polly.loop_header362.2:                           ; preds = %polly.loop_header362.2, %polly.loop_header356.2
  %polly.indvar365.2 = phi i64 [ 0, %polly.loop_header356.2 ], [ %polly.indvar_next366.2, %polly.loop_header362.2 ]
  %209 = mul nuw nsw i64 %polly.indvar365.2, 480
  %scevgep369.2 = getelementptr i8, i8* %scevgep368.2, i64 %209
  %scevgep369370.2 = bitcast i8* %scevgep369.2 to double*
  %_p_scalar_371.2 = load double, double* %scevgep369370.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.2 = fmul fast double %_p_scalar_375.2, %_p_scalar_371.2
  %scevgep377.2 = getelementptr i8, i8* %scevgep372.2, i64 %209
  %scevgep377378.2 = bitcast i8* %scevgep377.2 to double*
  %_p_scalar_379.2 = load double, double* %scevgep377378.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.2 = fmul fast double %_p_scalar_383.2, %_p_scalar_379.2
  %210 = shl nuw nsw i64 %polly.indvar365.2, 3
  %211 = add nuw nsw i64 %210, %207
  %scevgep384.2 = getelementptr i8, i8* %call, i64 %211
  %scevgep384385.2 = bitcast i8* %scevgep384.2 to double*
  %_p_scalar_386.2 = load double, double* %scevgep384385.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_386.2
  store double %p_add42.i79.2, double* %scevgep384385.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next366.2 = add nuw nsw i64 %polly.indvar365.2, 1
  %212 = add nuw nsw i64 %indvars.iv753, 1
  %exitcond757.2.not = icmp eq i64 %polly.indvar365.2, %212
  br i1 %exitcond757.2.not, label %polly.loop_exit364.2, label %polly.loop_header362.2

polly.loop_exit364.2:                             ; preds = %polly.loop_header362.2
  %polly.indvar_next360.2 = add nuw nsw i64 %polly.indvar359.2, 1
  %exitcond758.2.not = icmp eq i64 %polly.indvar_next360.2, 60
  br i1 %exitcond758.2.not, label %polly.loop_exit358.2, label %polly.loop_header356.2

polly.loop_exit358.2:                             ; preds = %polly.loop_exit364.2
  %213 = or i64 %116, 3
  %214 = mul nuw nsw i64 %213, 480
  %215 = mul nuw nsw i64 %213, 640
  %216 = add nuw nsw i64 %indvars.iv753, 2
  br label %polly.loop_header356.3

polly.loop_header356.3:                           ; preds = %polly.loop_exit364.3, %polly.loop_exit358.2
  %polly.indvar359.3 = phi i64 [ 0, %polly.loop_exit358.2 ], [ %polly.indvar_next360.3, %polly.loop_exit364.3 ]
  %217 = shl nuw nsw i64 %polly.indvar359.3, 3
  %scevgep368.3 = getelementptr i8, i8* %call1, i64 %217
  %scevgep372.3 = getelementptr i8, i8* %call2, i64 %217
  %scevgep373.3 = getelementptr i8, i8* %scevgep372.3, i64 %214
  %scevgep373374.3 = bitcast i8* %scevgep373.3 to double*
  %_p_scalar_375.3 = load double, double* %scevgep373374.3, align 8, !alias.scope !73, !noalias !76
  %scevgep381.3 = getelementptr i8, i8* %scevgep368.3, i64 %214
  %scevgep381382.3 = bitcast i8* %scevgep381.3 to double*
  %_p_scalar_383.3 = load double, double* %scevgep381382.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header362.3

polly.loop_header362.3:                           ; preds = %polly.loop_header362.3, %polly.loop_header356.3
  %polly.indvar365.3 = phi i64 [ 0, %polly.loop_header356.3 ], [ %polly.indvar_next366.3, %polly.loop_header362.3 ]
  %218 = mul nuw nsw i64 %polly.indvar365.3, 480
  %scevgep369.3 = getelementptr i8, i8* %scevgep368.3, i64 %218
  %scevgep369370.3 = bitcast i8* %scevgep369.3 to double*
  %_p_scalar_371.3 = load double, double* %scevgep369370.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.3 = fmul fast double %_p_scalar_375.3, %_p_scalar_371.3
  %scevgep377.3 = getelementptr i8, i8* %scevgep372.3, i64 %218
  %scevgep377378.3 = bitcast i8* %scevgep377.3 to double*
  %_p_scalar_379.3 = load double, double* %scevgep377378.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.3 = fmul fast double %_p_scalar_383.3, %_p_scalar_379.3
  %219 = shl nuw nsw i64 %polly.indvar365.3, 3
  %220 = add nuw nsw i64 %219, %215
  %scevgep384.3 = getelementptr i8, i8* %call, i64 %220
  %scevgep384385.3 = bitcast i8* %scevgep384.3 to double*
  %_p_scalar_386.3 = load double, double* %scevgep384385.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_386.3
  store double %p_add42.i79.3, double* %scevgep384385.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next366.3 = add nuw nsw i64 %polly.indvar365.3, 1
  %exitcond757.3.not = icmp eq i64 %polly.indvar365.3, %216
  br i1 %exitcond757.3.not, label %polly.loop_exit364.3, label %polly.loop_header362.3

polly.loop_exit364.3:                             ; preds = %polly.loop_header362.3
  %polly.indvar_next360.3 = add nuw nsw i64 %polly.indvar359.3, 1
  %exitcond758.3.not = icmp eq i64 %polly.indvar_next360.3, 60
  br i1 %exitcond758.3.not, label %polly.loop_exit358.3, label %polly.loop_header356.3

polly.loop_exit358.3:                             ; preds = %polly.loop_exit364.3
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 4
  %exitcond760.not = icmp eq i64 %polly.indvar_next348, 20
  br i1 %exitcond760.not, label %kernel_syr2k.exit90, label %polly.loop_header344

polly.loop_header501.1:                           ; preds = %polly.loop_exit509.1, %polly.loop_exit503
  %polly.indvar504.1 = phi i64 [ 0, %polly.loop_exit503 ], [ %polly.indvar_next505.1, %polly.loop_exit509.1 ]
  %221 = shl nuw nsw i64 %polly.indvar504.1, 3
  %scevgep513.1 = getelementptr i8, i8* %call1, i64 %221
  %scevgep517.1 = getelementptr i8, i8* %call2, i64 %221
  %scevgep518.1 = getelementptr i8, i8* %scevgep517.1, i64 %139
  %scevgep518519.1 = bitcast i8* %scevgep518.1 to double*
  %_p_scalar_520.1 = load double, double* %scevgep518519.1, align 8, !alias.scope !82, !noalias !85
  %scevgep526.1 = getelementptr i8, i8* %scevgep513.1, i64 %139
  %scevgep526527.1 = bitcast i8* %scevgep526.1 to double*
  %_p_scalar_528.1 = load double, double* %scevgep526527.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header507.1

polly.loop_header507.1:                           ; preds = %polly.loop_header507.1, %polly.loop_header501.1
  %polly.indvar510.1 = phi i64 [ 0, %polly.loop_header501.1 ], [ %polly.indvar_next511.1, %polly.loop_header507.1 ]
  %222 = mul nuw nsw i64 %polly.indvar510.1, 480
  %scevgep514.1 = getelementptr i8, i8* %scevgep513.1, i64 %222
  %scevgep514515.1 = bitcast i8* %scevgep514.1 to double*
  %_p_scalar_516.1 = load double, double* %scevgep514515.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1 = fmul fast double %_p_scalar_520.1, %_p_scalar_516.1
  %scevgep522.1 = getelementptr i8, i8* %scevgep517.1, i64 %222
  %scevgep522523.1 = bitcast i8* %scevgep522.1 to double*
  %_p_scalar_524.1 = load double, double* %scevgep522523.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1 = fmul fast double %_p_scalar_528.1, %_p_scalar_524.1
  %223 = shl nuw nsw i64 %polly.indvar510.1, 3
  %224 = add nuw nsw i64 %223, %140
  %scevgep529.1 = getelementptr i8, i8* %call, i64 %224
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_531.1
  store double %p_add42.i.1, double* %scevgep529530.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next511.1 = add nuw nsw i64 %polly.indvar510.1, 1
  %exitcond767.1.not = icmp eq i64 %polly.indvar510.1, %indvars.iv763
  br i1 %exitcond767.1.not, label %polly.loop_exit509.1, label %polly.loop_header507.1

polly.loop_exit509.1:                             ; preds = %polly.loop_header507.1
  %polly.indvar_next505.1 = add nuw nsw i64 %polly.indvar504.1, 1
  %exitcond768.1.not = icmp eq i64 %polly.indvar_next505.1, 60
  br i1 %exitcond768.1.not, label %polly.loop_exit503.1, label %polly.loop_header501.1

polly.loop_exit503.1:                             ; preds = %polly.loop_exit509.1
  %225 = or i64 %135, 2
  %226 = mul nuw nsw i64 %225, 480
  %227 = mul nuw nsw i64 %225, 640
  br label %polly.loop_header501.2

polly.loop_header501.2:                           ; preds = %polly.loop_exit509.2, %polly.loop_exit503.1
  %polly.indvar504.2 = phi i64 [ 0, %polly.loop_exit503.1 ], [ %polly.indvar_next505.2, %polly.loop_exit509.2 ]
  %228 = shl nuw nsw i64 %polly.indvar504.2, 3
  %scevgep513.2 = getelementptr i8, i8* %call1, i64 %228
  %scevgep517.2 = getelementptr i8, i8* %call2, i64 %228
  %scevgep518.2 = getelementptr i8, i8* %scevgep517.2, i64 %226
  %scevgep518519.2 = bitcast i8* %scevgep518.2 to double*
  %_p_scalar_520.2 = load double, double* %scevgep518519.2, align 8, !alias.scope !82, !noalias !85
  %scevgep526.2 = getelementptr i8, i8* %scevgep513.2, i64 %226
  %scevgep526527.2 = bitcast i8* %scevgep526.2 to double*
  %_p_scalar_528.2 = load double, double* %scevgep526527.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header507.2

polly.loop_header507.2:                           ; preds = %polly.loop_header507.2, %polly.loop_header501.2
  %polly.indvar510.2 = phi i64 [ 0, %polly.loop_header501.2 ], [ %polly.indvar_next511.2, %polly.loop_header507.2 ]
  %229 = mul nuw nsw i64 %polly.indvar510.2, 480
  %scevgep514.2 = getelementptr i8, i8* %scevgep513.2, i64 %229
  %scevgep514515.2 = bitcast i8* %scevgep514.2 to double*
  %_p_scalar_516.2 = load double, double* %scevgep514515.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.2 = fmul fast double %_p_scalar_520.2, %_p_scalar_516.2
  %scevgep522.2 = getelementptr i8, i8* %scevgep517.2, i64 %229
  %scevgep522523.2 = bitcast i8* %scevgep522.2 to double*
  %_p_scalar_524.2 = load double, double* %scevgep522523.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.2 = fmul fast double %_p_scalar_528.2, %_p_scalar_524.2
  %230 = shl nuw nsw i64 %polly.indvar510.2, 3
  %231 = add nuw nsw i64 %230, %227
  %scevgep529.2 = getelementptr i8, i8* %call, i64 %231
  %scevgep529530.2 = bitcast i8* %scevgep529.2 to double*
  %_p_scalar_531.2 = load double, double* %scevgep529530.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_531.2
  store double %p_add42.i.2, double* %scevgep529530.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next511.2 = add nuw nsw i64 %polly.indvar510.2, 1
  %232 = add nuw nsw i64 %indvars.iv763, 1
  %exitcond767.2.not = icmp eq i64 %polly.indvar510.2, %232
  br i1 %exitcond767.2.not, label %polly.loop_exit509.2, label %polly.loop_header507.2

polly.loop_exit509.2:                             ; preds = %polly.loop_header507.2
  %polly.indvar_next505.2 = add nuw nsw i64 %polly.indvar504.2, 1
  %exitcond768.2.not = icmp eq i64 %polly.indvar_next505.2, 60
  br i1 %exitcond768.2.not, label %polly.loop_exit503.2, label %polly.loop_header501.2

polly.loop_exit503.2:                             ; preds = %polly.loop_exit509.2
  %233 = or i64 %135, 3
  %234 = mul nuw nsw i64 %233, 480
  %235 = mul nuw nsw i64 %233, 640
  %236 = add nuw nsw i64 %indvars.iv763, 2
  br label %polly.loop_header501.3

polly.loop_header501.3:                           ; preds = %polly.loop_exit509.3, %polly.loop_exit503.2
  %polly.indvar504.3 = phi i64 [ 0, %polly.loop_exit503.2 ], [ %polly.indvar_next505.3, %polly.loop_exit509.3 ]
  %237 = shl nuw nsw i64 %polly.indvar504.3, 3
  %scevgep513.3 = getelementptr i8, i8* %call1, i64 %237
  %scevgep517.3 = getelementptr i8, i8* %call2, i64 %237
  %scevgep518.3 = getelementptr i8, i8* %scevgep517.3, i64 %234
  %scevgep518519.3 = bitcast i8* %scevgep518.3 to double*
  %_p_scalar_520.3 = load double, double* %scevgep518519.3, align 8, !alias.scope !82, !noalias !85
  %scevgep526.3 = getelementptr i8, i8* %scevgep513.3, i64 %234
  %scevgep526527.3 = bitcast i8* %scevgep526.3 to double*
  %_p_scalar_528.3 = load double, double* %scevgep526527.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header507.3

polly.loop_header507.3:                           ; preds = %polly.loop_header507.3, %polly.loop_header501.3
  %polly.indvar510.3 = phi i64 [ 0, %polly.loop_header501.3 ], [ %polly.indvar_next511.3, %polly.loop_header507.3 ]
  %238 = mul nuw nsw i64 %polly.indvar510.3, 480
  %scevgep514.3 = getelementptr i8, i8* %scevgep513.3, i64 %238
  %scevgep514515.3 = bitcast i8* %scevgep514.3 to double*
  %_p_scalar_516.3 = load double, double* %scevgep514515.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.3 = fmul fast double %_p_scalar_520.3, %_p_scalar_516.3
  %scevgep522.3 = getelementptr i8, i8* %scevgep517.3, i64 %238
  %scevgep522523.3 = bitcast i8* %scevgep522.3 to double*
  %_p_scalar_524.3 = load double, double* %scevgep522523.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.3 = fmul fast double %_p_scalar_528.3, %_p_scalar_524.3
  %239 = shl nuw nsw i64 %polly.indvar510.3, 3
  %240 = add nuw nsw i64 %239, %235
  %scevgep529.3 = getelementptr i8, i8* %call, i64 %240
  %scevgep529530.3 = bitcast i8* %scevgep529.3 to double*
  %_p_scalar_531.3 = load double, double* %scevgep529530.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_531.3
  store double %p_add42.i.3, double* %scevgep529530.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next511.3 = add nuw nsw i64 %polly.indvar510.3, 1
  %exitcond767.3.not = icmp eq i64 %polly.indvar510.3, %236
  br i1 %exitcond767.3.not, label %polly.loop_exit509.3, label %polly.loop_header507.3

polly.loop_exit509.3:                             ; preds = %polly.loop_header507.3
  %polly.indvar_next505.3 = add nuw nsw i64 %polly.indvar504.3, 1
  %exitcond768.3.not = icmp eq i64 %polly.indvar_next505.3, 60
  br i1 %exitcond768.3.not, label %polly.loop_exit503.3, label %polly.loop_header501.3

polly.loop_exit503.3:                             ; preds = %polly.loop_exit509.3
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %indvars.iv.next764 = add nuw nsw i64 %indvars.iv763, 4
  %exitcond770.not = icmp eq i64 %polly.indvar_next493, 20
  br i1 %exitcond770.not, label %kernel_syr2k.exit, label %polly.loop_header489

polly.loop_header723.1:                           ; preds = %polly.loop_exit731, %polly.loop_exit731.1
  %polly.indvar726.1 = phi i64 [ %polly.indvar_next727.1, %polly.loop_exit731.1 ], [ 0, %polly.loop_exit731 ]
  %241 = mul nuw nsw i64 %polly.indvar726.1, 480
  %242 = trunc i64 %polly.indvar726.1 to i32
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %polly.loop_header723.1
  %index1088 = phi i64 [ 0, %polly.loop_header723.1 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1092 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header723.1 ], [ %vec.ind.next1093, %vector.body1086 ]
  %243 = add nuw nsw <4 x i64> %vec.ind1092, <i64 32, i64 32, i64 32, i64 32>
  %244 = trunc <4 x i64> %243 to <4 x i32>
  %245 = mul <4 x i32> %broadcast.splat1095, %244
  %246 = add <4 x i32> %245, <i32 1, i32 1, i32 1, i32 1>
  %247 = urem <4 x i32> %246, <i32 80, i32 80, i32 80, i32 80>
  %248 = sitofp <4 x i32> %247 to <4 x double>
  %249 = fmul fast <4 x double> %248, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %250 = extractelement <4 x i64> %243, i32 0
  %251 = shl i64 %250, 3
  %252 = add i64 %251, %241
  %253 = getelementptr i8, i8* %call1, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %249, <4 x double>* %254, align 8, !alias.scope !90, !noalias !95
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1093 = add <4 x i64> %vec.ind1092, <i64 4, i64 4, i64 4, i64 4>
  %255 = icmp eq i64 %index.next1089, 28
  br i1 %255, label %polly.loop_exit731.1, label %vector.body1086, !llvm.loop !97

polly.loop_exit731.1:                             ; preds = %vector.body1086
  %polly.indvar_next727.1 = add nuw nsw i64 %polly.indvar726.1, 1
  %exitcond776.1.not = icmp eq i64 %polly.indvar_next727.1, 32
  br i1 %exitcond776.1.not, label %polly.loop_header723.1799, label %polly.loop_header723.1

polly.loop_header723.1799:                        ; preds = %polly.loop_exit731.1, %polly.loop_exit731.1810
  %polly.indvar726.1798 = phi i64 [ %polly.indvar_next727.1808, %polly.loop_exit731.1810 ], [ 0, %polly.loop_exit731.1 ]
  %256 = add nuw nsw i64 %polly.indvar726.1798, 32
  %257 = mul nuw nsw i64 %256, 480
  %258 = trunc i64 %256 to i32
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %258, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %polly.loop_header723.1799
  %index1100 = phi i64 [ 0, %polly.loop_header723.1799 ], [ %index.next1101, %vector.body1098 ]
  %vec.ind1106 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header723.1799 ], [ %vec.ind.next1107, %vector.body1098 ]
  %259 = mul <4 x i32> %vec.ind1106, %broadcast.splat1109
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 80, i32 80, i32 80, i32 80>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %264 = shl i64 %index1100, 3
  %265 = add i64 %264, %257
  %266 = getelementptr i8, i8* %call1, i64 %265
  %267 = bitcast i8* %266 to <4 x double>*
  store <4 x double> %263, <4 x double>* %267, align 8, !alias.scope !90, !noalias !95
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1107 = add <4 x i32> %vec.ind1106, <i32 4, i32 4, i32 4, i32 4>
  %268 = icmp eq i64 %index.next1101, 32
  br i1 %268, label %polly.loop_exit731.1810, label %vector.body1098, !llvm.loop !98

polly.loop_exit731.1810:                          ; preds = %vector.body1098
  %polly.indvar_next727.1808 = add nuw nsw i64 %polly.indvar726.1798, 1
  %exitcond776.1809.not = icmp eq i64 %polly.indvar_next727.1808, 32
  br i1 %exitcond776.1809.not, label %polly.loop_header723.1.1, label %polly.loop_header723.1799

polly.loop_header723.1.1:                         ; preds = %polly.loop_exit731.1810, %polly.loop_exit731.1.1
  %polly.indvar726.1.1 = phi i64 [ %polly.indvar_next727.1.1, %polly.loop_exit731.1.1 ], [ 0, %polly.loop_exit731.1810 ]
  %269 = add nuw nsw i64 %polly.indvar726.1.1, 32
  %270 = mul nuw nsw i64 %269, 480
  %271 = trunc i64 %269 to i32
  %broadcast.splatinsert1120 = insertelement <4 x i32> poison, i32 %271, i32 0
  %broadcast.splat1121 = shufflevector <4 x i32> %broadcast.splatinsert1120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %polly.loop_header723.1.1
  %index1114 = phi i64 [ 0, %polly.loop_header723.1.1 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1118 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header723.1.1 ], [ %vec.ind.next1119, %vector.body1112 ]
  %272 = add nuw nsw <4 x i64> %vec.ind1118, <i64 32, i64 32, i64 32, i64 32>
  %273 = trunc <4 x i64> %272 to <4 x i32>
  %274 = mul <4 x i32> %broadcast.splat1121, %273
  %275 = add <4 x i32> %274, <i32 1, i32 1, i32 1, i32 1>
  %276 = urem <4 x i32> %275, <i32 80, i32 80, i32 80, i32 80>
  %277 = sitofp <4 x i32> %276 to <4 x double>
  %278 = fmul fast <4 x double> %277, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %279 = extractelement <4 x i64> %272, i32 0
  %280 = shl i64 %279, 3
  %281 = add i64 %280, %270
  %282 = getelementptr i8, i8* %call1, i64 %281
  %283 = bitcast i8* %282 to <4 x double>*
  store <4 x double> %278, <4 x double>* %283, align 8, !alias.scope !90, !noalias !95
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1119 = add <4 x i64> %vec.ind1118, <i64 4, i64 4, i64 4, i64 4>
  %284 = icmp eq i64 %index.next1115, 28
  br i1 %284, label %polly.loop_exit731.1.1, label %vector.body1112, !llvm.loop !99

polly.loop_exit731.1.1:                           ; preds = %vector.body1112
  %polly.indvar_next727.1.1 = add nuw nsw i64 %polly.indvar726.1.1, 1
  %exitcond776.1.1.not = icmp eq i64 %polly.indvar_next727.1.1, 32
  br i1 %exitcond776.1.1.not, label %polly.loop_header723.2, label %polly.loop_header723.1.1

polly.loop_header723.2:                           ; preds = %polly.loop_exit731.1.1, %polly.loop_exit731.2
  %polly.indvar726.2 = phi i64 [ %polly.indvar_next727.2, %polly.loop_exit731.2 ], [ 0, %polly.loop_exit731.1.1 ]
  %285 = add nuw nsw i64 %polly.indvar726.2, 64
  %286 = mul nuw nsw i64 %285, 480
  %287 = trunc i64 %285 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %287, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %polly.loop_header723.2
  %index1126 = phi i64 [ 0, %polly.loop_header723.2 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1132 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header723.2 ], [ %vec.ind.next1133, %vector.body1124 ]
  %288 = mul <4 x i32> %vec.ind1132, %broadcast.splat1135
  %289 = add <4 x i32> %288, <i32 1, i32 1, i32 1, i32 1>
  %290 = urem <4 x i32> %289, <i32 80, i32 80, i32 80, i32 80>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %293 = shl i64 %index1126, 3
  %294 = add i64 %293, %286
  %295 = getelementptr i8, i8* %call1, i64 %294
  %296 = bitcast i8* %295 to <4 x double>*
  store <4 x double> %292, <4 x double>* %296, align 8, !alias.scope !90, !noalias !95
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1133 = add <4 x i32> %vec.ind1132, <i32 4, i32 4, i32 4, i32 4>
  %297 = icmp eq i64 %index.next1127, 32
  br i1 %297, label %polly.loop_exit731.2, label %vector.body1124, !llvm.loop !100

polly.loop_exit731.2:                             ; preds = %vector.body1124
  %polly.indvar_next727.2 = add nuw nsw i64 %polly.indvar726.2, 1
  %exitcond776.2.not = icmp eq i64 %polly.indvar_next727.2, 16
  br i1 %exitcond776.2.not, label %polly.loop_header723.1.2, label %polly.loop_header723.2

polly.loop_header723.1.2:                         ; preds = %polly.loop_exit731.2, %polly.loop_exit731.1.2
  %polly.indvar726.1.2 = phi i64 [ %polly.indvar_next727.1.2, %polly.loop_exit731.1.2 ], [ 0, %polly.loop_exit731.2 ]
  %298 = add nuw nsw i64 %polly.indvar726.1.2, 64
  %299 = mul nuw nsw i64 %298, 480
  %300 = trunc i64 %298 to i32
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header723.1.2
  %index1140 = phi i64 [ 0, %polly.loop_header723.1.2 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1144 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header723.1.2 ], [ %vec.ind.next1145, %vector.body1138 ]
  %301 = add nuw nsw <4 x i64> %vec.ind1144, <i64 32, i64 32, i64 32, i64 32>
  %302 = trunc <4 x i64> %301 to <4 x i32>
  %303 = mul <4 x i32> %broadcast.splat1147, %302
  %304 = add <4 x i32> %303, <i32 1, i32 1, i32 1, i32 1>
  %305 = urem <4 x i32> %304, <i32 80, i32 80, i32 80, i32 80>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %308 = extractelement <4 x i64> %301, i32 0
  %309 = shl i64 %308, 3
  %310 = add i64 %309, %299
  %311 = getelementptr i8, i8* %call1, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %307, <4 x double>* %312, align 8, !alias.scope !90, !noalias !95
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1145 = add <4 x i64> %vec.ind1144, <i64 4, i64 4, i64 4, i64 4>
  %313 = icmp eq i64 %index.next1141, 28
  br i1 %313, label %polly.loop_exit731.1.2, label %vector.body1138, !llvm.loop !101

polly.loop_exit731.1.2:                           ; preds = %vector.body1138
  %polly.indvar_next727.1.2 = add nuw nsw i64 %polly.indvar726.1.2, 1
  %exitcond776.1.2.not = icmp eq i64 %polly.indvar_next727.1.2, 16
  br i1 %exitcond776.1.2.not, label %init_array.exit, label %polly.loop_header723.1.2

polly.loop_header697.1:                           ; preds = %polly.loop_exit705, %polly.loop_exit705.1
  %polly.indvar700.1 = phi i64 [ %polly.indvar_next701.1, %polly.loop_exit705.1 ], [ 0, %polly.loop_exit705 ]
  %314 = mul nuw nsw i64 %polly.indvar700.1, 480
  %315 = trunc i64 %polly.indvar700.1 to i32
  %broadcast.splatinsert1016 = insertelement <4 x i32> poison, i32 %315, i32 0
  %broadcast.splat1017 = shufflevector <4 x i32> %broadcast.splatinsert1016, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %polly.loop_header697.1
  %index1010 = phi i64 [ 0, %polly.loop_header697.1 ], [ %index.next1011, %vector.body1008 ]
  %vec.ind1014 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header697.1 ], [ %vec.ind.next1015, %vector.body1008 ]
  %316 = add nuw nsw <4 x i64> %vec.ind1014, <i64 32, i64 32, i64 32, i64 32>
  %317 = trunc <4 x i64> %316 to <4 x i32>
  %318 = mul <4 x i32> %broadcast.splat1017, %317
  %319 = add <4 x i32> %318, <i32 2, i32 2, i32 2, i32 2>
  %320 = urem <4 x i32> %319, <i32 60, i32 60, i32 60, i32 60>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %323 = extractelement <4 x i64> %316, i32 0
  %324 = shl i64 %323, 3
  %325 = add i64 %324, %314
  %326 = getelementptr i8, i8* %call2, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %322, <4 x double>* %327, align 8, !alias.scope !91, !noalias !93
  %index.next1011 = add i64 %index1010, 4
  %vec.ind.next1015 = add <4 x i64> %vec.ind1014, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %index.next1011, 28
  br i1 %328, label %polly.loop_exit705.1, label %vector.body1008, !llvm.loop !102

polly.loop_exit705.1:                             ; preds = %vector.body1008
  %polly.indvar_next701.1 = add nuw nsw i64 %polly.indvar700.1, 1
  %exitcond782.1.not = icmp eq i64 %polly.indvar_next701.1, 32
  br i1 %exitcond782.1.not, label %polly.loop_header697.1813, label %polly.loop_header697.1

polly.loop_header697.1813:                        ; preds = %polly.loop_exit705.1, %polly.loop_exit705.1824
  %polly.indvar700.1812 = phi i64 [ %polly.indvar_next701.1822, %polly.loop_exit705.1824 ], [ 0, %polly.loop_exit705.1 ]
  %329 = add nuw nsw i64 %polly.indvar700.1812, 32
  %330 = mul nuw nsw i64 %329, 480
  %331 = trunc i64 %329 to i32
  %broadcast.splatinsert1030 = insertelement <4 x i32> poison, i32 %331, i32 0
  %broadcast.splat1031 = shufflevector <4 x i32> %broadcast.splatinsert1030, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %polly.loop_header697.1813
  %index1022 = phi i64 [ 0, %polly.loop_header697.1813 ], [ %index.next1023, %vector.body1020 ]
  %vec.ind1028 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header697.1813 ], [ %vec.ind.next1029, %vector.body1020 ]
  %332 = mul <4 x i32> %vec.ind1028, %broadcast.splat1031
  %333 = add <4 x i32> %332, <i32 2, i32 2, i32 2, i32 2>
  %334 = urem <4 x i32> %333, <i32 60, i32 60, i32 60, i32 60>
  %335 = sitofp <4 x i32> %334 to <4 x double>
  %336 = fmul fast <4 x double> %335, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %337 = shl i64 %index1022, 3
  %338 = add i64 %337, %330
  %339 = getelementptr i8, i8* %call2, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %336, <4 x double>* %340, align 8, !alias.scope !91, !noalias !93
  %index.next1023 = add i64 %index1022, 4
  %vec.ind.next1029 = add <4 x i32> %vec.ind1028, <i32 4, i32 4, i32 4, i32 4>
  %341 = icmp eq i64 %index.next1023, 32
  br i1 %341, label %polly.loop_exit705.1824, label %vector.body1020, !llvm.loop !103

polly.loop_exit705.1824:                          ; preds = %vector.body1020
  %polly.indvar_next701.1822 = add nuw nsw i64 %polly.indvar700.1812, 1
  %exitcond782.1823.not = icmp eq i64 %polly.indvar_next701.1822, 32
  br i1 %exitcond782.1823.not, label %polly.loop_header697.1.1, label %polly.loop_header697.1813

polly.loop_header697.1.1:                         ; preds = %polly.loop_exit705.1824, %polly.loop_exit705.1.1
  %polly.indvar700.1.1 = phi i64 [ %polly.indvar_next701.1.1, %polly.loop_exit705.1.1 ], [ 0, %polly.loop_exit705.1824 ]
  %342 = add nuw nsw i64 %polly.indvar700.1.1, 32
  %343 = mul nuw nsw i64 %342, 480
  %344 = trunc i64 %342 to i32
  %broadcast.splatinsert1042 = insertelement <4 x i32> poison, i32 %344, i32 0
  %broadcast.splat1043 = shufflevector <4 x i32> %broadcast.splatinsert1042, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %polly.loop_header697.1.1
  %index1036 = phi i64 [ 0, %polly.loop_header697.1.1 ], [ %index.next1037, %vector.body1034 ]
  %vec.ind1040 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header697.1.1 ], [ %vec.ind.next1041, %vector.body1034 ]
  %345 = add nuw nsw <4 x i64> %vec.ind1040, <i64 32, i64 32, i64 32, i64 32>
  %346 = trunc <4 x i64> %345 to <4 x i32>
  %347 = mul <4 x i32> %broadcast.splat1043, %346
  %348 = add <4 x i32> %347, <i32 2, i32 2, i32 2, i32 2>
  %349 = urem <4 x i32> %348, <i32 60, i32 60, i32 60, i32 60>
  %350 = sitofp <4 x i32> %349 to <4 x double>
  %351 = fmul fast <4 x double> %350, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %352 = extractelement <4 x i64> %345, i32 0
  %353 = shl i64 %352, 3
  %354 = add i64 %353, %343
  %355 = getelementptr i8, i8* %call2, i64 %354
  %356 = bitcast i8* %355 to <4 x double>*
  store <4 x double> %351, <4 x double>* %356, align 8, !alias.scope !91, !noalias !93
  %index.next1037 = add i64 %index1036, 4
  %vec.ind.next1041 = add <4 x i64> %vec.ind1040, <i64 4, i64 4, i64 4, i64 4>
  %357 = icmp eq i64 %index.next1037, 28
  br i1 %357, label %polly.loop_exit705.1.1, label %vector.body1034, !llvm.loop !104

polly.loop_exit705.1.1:                           ; preds = %vector.body1034
  %polly.indvar_next701.1.1 = add nuw nsw i64 %polly.indvar700.1.1, 1
  %exitcond782.1.1.not = icmp eq i64 %polly.indvar_next701.1.1, 32
  br i1 %exitcond782.1.1.not, label %polly.loop_header697.2, label %polly.loop_header697.1.1

polly.loop_header697.2:                           ; preds = %polly.loop_exit705.1.1, %polly.loop_exit705.2
  %polly.indvar700.2 = phi i64 [ %polly.indvar_next701.2, %polly.loop_exit705.2 ], [ 0, %polly.loop_exit705.1.1 ]
  %358 = add nuw nsw i64 %polly.indvar700.2, 64
  %359 = mul nuw nsw i64 %358, 480
  %360 = trunc i64 %358 to i32
  %broadcast.splatinsert1056 = insertelement <4 x i32> poison, i32 %360, i32 0
  %broadcast.splat1057 = shufflevector <4 x i32> %broadcast.splatinsert1056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %polly.loop_header697.2
  %index1048 = phi i64 [ 0, %polly.loop_header697.2 ], [ %index.next1049, %vector.body1046 ]
  %vec.ind1054 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header697.2 ], [ %vec.ind.next1055, %vector.body1046 ]
  %361 = mul <4 x i32> %vec.ind1054, %broadcast.splat1057
  %362 = add <4 x i32> %361, <i32 2, i32 2, i32 2, i32 2>
  %363 = urem <4 x i32> %362, <i32 60, i32 60, i32 60, i32 60>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %366 = shl i64 %index1048, 3
  %367 = add i64 %366, %359
  %368 = getelementptr i8, i8* %call2, i64 %367
  %369 = bitcast i8* %368 to <4 x double>*
  store <4 x double> %365, <4 x double>* %369, align 8, !alias.scope !91, !noalias !93
  %index.next1049 = add i64 %index1048, 4
  %vec.ind.next1055 = add <4 x i32> %vec.ind1054, <i32 4, i32 4, i32 4, i32 4>
  %370 = icmp eq i64 %index.next1049, 32
  br i1 %370, label %polly.loop_exit705.2, label %vector.body1046, !llvm.loop !105

polly.loop_exit705.2:                             ; preds = %vector.body1046
  %polly.indvar_next701.2 = add nuw nsw i64 %polly.indvar700.2, 1
  %exitcond782.2.not = icmp eq i64 %polly.indvar_next701.2, 16
  br i1 %exitcond782.2.not, label %polly.loop_header697.1.2, label %polly.loop_header697.2

polly.loop_header697.1.2:                         ; preds = %polly.loop_exit705.2, %polly.loop_exit705.1.2
  %polly.indvar700.1.2 = phi i64 [ %polly.indvar_next701.1.2, %polly.loop_exit705.1.2 ], [ 0, %polly.loop_exit705.2 ]
  %371 = add nuw nsw i64 %polly.indvar700.1.2, 64
  %372 = mul nuw nsw i64 %371, 480
  %373 = trunc i64 %371 to i32
  %broadcast.splatinsert1068 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat1069 = shufflevector <4 x i32> %broadcast.splatinsert1068, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %polly.loop_header697.1.2
  %index1062 = phi i64 [ 0, %polly.loop_header697.1.2 ], [ %index.next1063, %vector.body1060 ]
  %vec.ind1066 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header697.1.2 ], [ %vec.ind.next1067, %vector.body1060 ]
  %374 = add nuw nsw <4 x i64> %vec.ind1066, <i64 32, i64 32, i64 32, i64 32>
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat1069, %375
  %377 = add <4 x i32> %376, <i32 2, i32 2, i32 2, i32 2>
  %378 = urem <4 x i32> %377, <i32 60, i32 60, i32 60, i32 60>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add i64 %382, %372
  %384 = getelementptr i8, i8* %call2, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !91, !noalias !93
  %index.next1063 = add i64 %index1062, 4
  %vec.ind.next1067 = add <4 x i64> %vec.ind1066, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next1063, 28
  br i1 %386, label %polly.loop_exit705.1.2, label %vector.body1060, !llvm.loop !106

polly.loop_exit705.1.2:                           ; preds = %vector.body1060
  %polly.indvar_next701.1.2 = add nuw nsw i64 %polly.indvar700.1.2, 1
  %exitcond782.1.2.not = icmp eq i64 %polly.indvar_next701.1.2, 16
  br i1 %exitcond782.1.2.not, label %polly.loop_header723, label %polly.loop_header697.1.2

polly.loop_header670.1:                           ; preds = %polly.loop_exit678, %polly.loop_exit678.1
  %polly.indvar673.1 = phi i64 [ %polly.indvar_next674.1, %polly.loop_exit678.1 ], [ 0, %polly.loop_exit678 ]
  %387 = mul nuw nsw i64 %polly.indvar673.1, 640
  %388 = trunc i64 %polly.indvar673.1 to i32
  %broadcast.splatinsert902 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat903 = shufflevector <4 x i32> %broadcast.splatinsert902, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body894

vector.body894:                                   ; preds = %vector.body894, %polly.loop_header670.1
  %index896 = phi i64 [ 0, %polly.loop_header670.1 ], [ %index.next897, %vector.body894 ]
  %vec.ind900 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.1 ], [ %vec.ind.next901, %vector.body894 ]
  %389 = add nuw nsw <4 x i64> %vec.ind900, <i64 32, i64 32, i64 32, i64 32>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat903, %390
  %392 = add <4 x i32> %391, <i32 3, i32 3, i32 3, i32 3>
  %393 = urem <4 x i32> %392, <i32 80, i32 80, i32 80, i32 80>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %387
  %399 = getelementptr i8, i8* %call, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !87, !noalias !89
  %index.next897 = add i64 %index896, 4
  %vec.ind.next901 = add <4 x i64> %vec.ind900, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next897, 32
  br i1 %401, label %polly.loop_exit678.1, label %vector.body894, !llvm.loop !107

polly.loop_exit678.1:                             ; preds = %vector.body894
  %polly.indvar_next674.1 = add nuw nsw i64 %polly.indvar673.1, 1
  %exitcond791.1.not = icmp eq i64 %polly.indvar_next674.1, 32
  br i1 %exitcond791.1.not, label %polly.loop_header670.2, label %polly.loop_header670.1

polly.loop_header670.2:                           ; preds = %polly.loop_exit678.1, %polly.loop_exit678.2
  %polly.indvar673.2 = phi i64 [ %polly.indvar_next674.2, %polly.loop_exit678.2 ], [ 0, %polly.loop_exit678.1 ]
  %402 = mul nuw nsw i64 %polly.indvar673.2, 640
  %403 = trunc i64 %polly.indvar673.2 to i32
  %broadcast.splatinsert914 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat915 = shufflevector <4 x i32> %broadcast.splatinsert914, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body906

vector.body906:                                   ; preds = %vector.body906, %polly.loop_header670.2
  %index908 = phi i64 [ 0, %polly.loop_header670.2 ], [ %index.next909, %vector.body906 ]
  %vec.ind912 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.2 ], [ %vec.ind.next913, %vector.body906 ]
  %404 = add nuw nsw <4 x i64> %vec.ind912, <i64 64, i64 64, i64 64, i64 64>
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat915, %405
  %407 = add <4 x i32> %406, <i32 3, i32 3, i32 3, i32 3>
  %408 = urem <4 x i32> %407, <i32 80, i32 80, i32 80, i32 80>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add nuw nsw i64 %412, %402
  %414 = getelementptr i8, i8* %call, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !87, !noalias !89
  %index.next909 = add i64 %index908, 4
  %vec.ind.next913 = add <4 x i64> %vec.ind912, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next909, 16
  br i1 %416, label %polly.loop_exit678.2, label %vector.body906, !llvm.loop !108

polly.loop_exit678.2:                             ; preds = %vector.body906
  %polly.indvar_next674.2 = add nuw nsw i64 %polly.indvar673.2, 1
  %exitcond791.2.not = icmp eq i64 %polly.indvar_next674.2, 32
  br i1 %exitcond791.2.not, label %polly.loop_header670.1827, label %polly.loop_header670.2

polly.loop_header670.1827:                        ; preds = %polly.loop_exit678.2, %polly.loop_exit678.1838
  %polly.indvar673.1826 = phi i64 [ %polly.indvar_next674.1836, %polly.loop_exit678.1838 ], [ 0, %polly.loop_exit678.2 ]
  %417 = add nuw nsw i64 %polly.indvar673.1826, 32
  %418 = mul nuw nsw i64 %417, 640
  %419 = trunc i64 %417 to i32
  %broadcast.splatinsert928 = insertelement <4 x i32> poison, i32 %419, i32 0
  %broadcast.splat929 = shufflevector <4 x i32> %broadcast.splatinsert928, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %polly.loop_header670.1827
  %index920 = phi i64 [ 0, %polly.loop_header670.1827 ], [ %index.next921, %vector.body918 ]
  %vec.ind926 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header670.1827 ], [ %vec.ind.next927, %vector.body918 ]
  %420 = mul <4 x i32> %vec.ind926, %broadcast.splat929
  %421 = add <4 x i32> %420, <i32 3, i32 3, i32 3, i32 3>
  %422 = urem <4 x i32> %421, <i32 80, i32 80, i32 80, i32 80>
  %423 = sitofp <4 x i32> %422 to <4 x double>
  %424 = fmul fast <4 x double> %423, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %425 = shl i64 %index920, 3
  %426 = add nuw nsw i64 %425, %418
  %427 = getelementptr i8, i8* %call, i64 %426
  %428 = bitcast i8* %427 to <4 x double>*
  store <4 x double> %424, <4 x double>* %428, align 8, !alias.scope !87, !noalias !89
  %index.next921 = add i64 %index920, 4
  %vec.ind.next927 = add <4 x i32> %vec.ind926, <i32 4, i32 4, i32 4, i32 4>
  %429 = icmp eq i64 %index.next921, 32
  br i1 %429, label %polly.loop_exit678.1838, label %vector.body918, !llvm.loop !109

polly.loop_exit678.1838:                          ; preds = %vector.body918
  %polly.indvar_next674.1836 = add nuw nsw i64 %polly.indvar673.1826, 1
  %exitcond791.1837.not = icmp eq i64 %polly.indvar_next674.1836, 32
  br i1 %exitcond791.1837.not, label %polly.loop_header670.1.1, label %polly.loop_header670.1827

polly.loop_header670.1.1:                         ; preds = %polly.loop_exit678.1838, %polly.loop_exit678.1.1
  %polly.indvar673.1.1 = phi i64 [ %polly.indvar_next674.1.1, %polly.loop_exit678.1.1 ], [ 0, %polly.loop_exit678.1838 ]
  %430 = add nuw nsw i64 %polly.indvar673.1.1, 32
  %431 = mul nuw nsw i64 %430, 640
  %432 = trunc i64 %430 to i32
  %broadcast.splatinsert940 = insertelement <4 x i32> poison, i32 %432, i32 0
  %broadcast.splat941 = shufflevector <4 x i32> %broadcast.splatinsert940, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body932

vector.body932:                                   ; preds = %vector.body932, %polly.loop_header670.1.1
  %index934 = phi i64 [ 0, %polly.loop_header670.1.1 ], [ %index.next935, %vector.body932 ]
  %vec.ind938 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.1.1 ], [ %vec.ind.next939, %vector.body932 ]
  %433 = add nuw nsw <4 x i64> %vec.ind938, <i64 32, i64 32, i64 32, i64 32>
  %434 = trunc <4 x i64> %433 to <4 x i32>
  %435 = mul <4 x i32> %broadcast.splat941, %434
  %436 = add <4 x i32> %435, <i32 3, i32 3, i32 3, i32 3>
  %437 = urem <4 x i32> %436, <i32 80, i32 80, i32 80, i32 80>
  %438 = sitofp <4 x i32> %437 to <4 x double>
  %439 = fmul fast <4 x double> %438, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %440 = extractelement <4 x i64> %433, i32 0
  %441 = shl i64 %440, 3
  %442 = add nuw nsw i64 %441, %431
  %443 = getelementptr i8, i8* %call, i64 %442
  %444 = bitcast i8* %443 to <4 x double>*
  store <4 x double> %439, <4 x double>* %444, align 8, !alias.scope !87, !noalias !89
  %index.next935 = add i64 %index934, 4
  %vec.ind.next939 = add <4 x i64> %vec.ind938, <i64 4, i64 4, i64 4, i64 4>
  %445 = icmp eq i64 %index.next935, 32
  br i1 %445, label %polly.loop_exit678.1.1, label %vector.body932, !llvm.loop !110

polly.loop_exit678.1.1:                           ; preds = %vector.body932
  %polly.indvar_next674.1.1 = add nuw nsw i64 %polly.indvar673.1.1, 1
  %exitcond791.1.1.not = icmp eq i64 %polly.indvar_next674.1.1, 32
  br i1 %exitcond791.1.1.not, label %polly.loop_header670.2.1, label %polly.loop_header670.1.1

polly.loop_header670.2.1:                         ; preds = %polly.loop_exit678.1.1, %polly.loop_exit678.2.1
  %polly.indvar673.2.1 = phi i64 [ %polly.indvar_next674.2.1, %polly.loop_exit678.2.1 ], [ 0, %polly.loop_exit678.1.1 ]
  %446 = add nuw nsw i64 %polly.indvar673.2.1, 32
  %447 = mul nuw nsw i64 %446, 640
  %448 = trunc i64 %446 to i32
  %broadcast.splatinsert952 = insertelement <4 x i32> poison, i32 %448, i32 0
  %broadcast.splat953 = shufflevector <4 x i32> %broadcast.splatinsert952, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %polly.loop_header670.2.1
  %index946 = phi i64 [ 0, %polly.loop_header670.2.1 ], [ %index.next947, %vector.body944 ]
  %vec.ind950 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.2.1 ], [ %vec.ind.next951, %vector.body944 ]
  %449 = add nuw nsw <4 x i64> %vec.ind950, <i64 64, i64 64, i64 64, i64 64>
  %450 = trunc <4 x i64> %449 to <4 x i32>
  %451 = mul <4 x i32> %broadcast.splat953, %450
  %452 = add <4 x i32> %451, <i32 3, i32 3, i32 3, i32 3>
  %453 = urem <4 x i32> %452, <i32 80, i32 80, i32 80, i32 80>
  %454 = sitofp <4 x i32> %453 to <4 x double>
  %455 = fmul fast <4 x double> %454, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %456 = extractelement <4 x i64> %449, i32 0
  %457 = shl i64 %456, 3
  %458 = add nuw nsw i64 %457, %447
  %459 = getelementptr i8, i8* %call, i64 %458
  %460 = bitcast i8* %459 to <4 x double>*
  store <4 x double> %455, <4 x double>* %460, align 8, !alias.scope !87, !noalias !89
  %index.next947 = add i64 %index946, 4
  %vec.ind.next951 = add <4 x i64> %vec.ind950, <i64 4, i64 4, i64 4, i64 4>
  %461 = icmp eq i64 %index.next947, 16
  br i1 %461, label %polly.loop_exit678.2.1, label %vector.body944, !llvm.loop !111

polly.loop_exit678.2.1:                           ; preds = %vector.body944
  %polly.indvar_next674.2.1 = add nuw nsw i64 %polly.indvar673.2.1, 1
  %exitcond791.2.1.not = icmp eq i64 %polly.indvar_next674.2.1, 32
  br i1 %exitcond791.2.1.not, label %polly.loop_header670.2841, label %polly.loop_header670.2.1

polly.loop_header670.2841:                        ; preds = %polly.loop_exit678.2.1, %polly.loop_exit678.2852
  %polly.indvar673.2840 = phi i64 [ %polly.indvar_next674.2850, %polly.loop_exit678.2852 ], [ 0, %polly.loop_exit678.2.1 ]
  %462 = add nuw nsw i64 %polly.indvar673.2840, 64
  %463 = mul nuw nsw i64 %462, 640
  %464 = trunc i64 %462 to i32
  %broadcast.splatinsert966 = insertelement <4 x i32> poison, i32 %464, i32 0
  %broadcast.splat967 = shufflevector <4 x i32> %broadcast.splatinsert966, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %polly.loop_header670.2841
  %index958 = phi i64 [ 0, %polly.loop_header670.2841 ], [ %index.next959, %vector.body956 ]
  %vec.ind964 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header670.2841 ], [ %vec.ind.next965, %vector.body956 ]
  %465 = mul <4 x i32> %vec.ind964, %broadcast.splat967
  %466 = add <4 x i32> %465, <i32 3, i32 3, i32 3, i32 3>
  %467 = urem <4 x i32> %466, <i32 80, i32 80, i32 80, i32 80>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %470 = shl i64 %index958, 3
  %471 = add nuw nsw i64 %470, %463
  %472 = getelementptr i8, i8* %call, i64 %471
  %473 = bitcast i8* %472 to <4 x double>*
  store <4 x double> %469, <4 x double>* %473, align 8, !alias.scope !87, !noalias !89
  %index.next959 = add i64 %index958, 4
  %vec.ind.next965 = add <4 x i32> %vec.ind964, <i32 4, i32 4, i32 4, i32 4>
  %474 = icmp eq i64 %index.next959, 32
  br i1 %474, label %polly.loop_exit678.2852, label %vector.body956, !llvm.loop !112

polly.loop_exit678.2852:                          ; preds = %vector.body956
  %polly.indvar_next674.2850 = add nuw nsw i64 %polly.indvar673.2840, 1
  %exitcond791.2851.not = icmp eq i64 %polly.indvar_next674.2850, 16
  br i1 %exitcond791.2851.not, label %polly.loop_header670.1.2, label %polly.loop_header670.2841

polly.loop_header670.1.2:                         ; preds = %polly.loop_exit678.2852, %polly.loop_exit678.1.2
  %polly.indvar673.1.2 = phi i64 [ %polly.indvar_next674.1.2, %polly.loop_exit678.1.2 ], [ 0, %polly.loop_exit678.2852 ]
  %475 = add nuw nsw i64 %polly.indvar673.1.2, 64
  %476 = mul nuw nsw i64 %475, 640
  %477 = trunc i64 %475 to i32
  %broadcast.splatinsert978 = insertelement <4 x i32> poison, i32 %477, i32 0
  %broadcast.splat979 = shufflevector <4 x i32> %broadcast.splatinsert978, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body970

vector.body970:                                   ; preds = %vector.body970, %polly.loop_header670.1.2
  %index972 = phi i64 [ 0, %polly.loop_header670.1.2 ], [ %index.next973, %vector.body970 ]
  %vec.ind976 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.1.2 ], [ %vec.ind.next977, %vector.body970 ]
  %478 = add nuw nsw <4 x i64> %vec.ind976, <i64 32, i64 32, i64 32, i64 32>
  %479 = trunc <4 x i64> %478 to <4 x i32>
  %480 = mul <4 x i32> %broadcast.splat979, %479
  %481 = add <4 x i32> %480, <i32 3, i32 3, i32 3, i32 3>
  %482 = urem <4 x i32> %481, <i32 80, i32 80, i32 80, i32 80>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %485 = extractelement <4 x i64> %478, i32 0
  %486 = shl i64 %485, 3
  %487 = add nuw nsw i64 %486, %476
  %488 = getelementptr i8, i8* %call, i64 %487
  %489 = bitcast i8* %488 to <4 x double>*
  store <4 x double> %484, <4 x double>* %489, align 8, !alias.scope !87, !noalias !89
  %index.next973 = add i64 %index972, 4
  %vec.ind.next977 = add <4 x i64> %vec.ind976, <i64 4, i64 4, i64 4, i64 4>
  %490 = icmp eq i64 %index.next973, 32
  br i1 %490, label %polly.loop_exit678.1.2, label %vector.body970, !llvm.loop !113

polly.loop_exit678.1.2:                           ; preds = %vector.body970
  %polly.indvar_next674.1.2 = add nuw nsw i64 %polly.indvar673.1.2, 1
  %exitcond791.1.2.not = icmp eq i64 %polly.indvar_next674.1.2, 16
  br i1 %exitcond791.1.2.not, label %polly.loop_header670.2.2, label %polly.loop_header670.1.2

polly.loop_header670.2.2:                         ; preds = %polly.loop_exit678.1.2, %polly.loop_exit678.2.2
  %polly.indvar673.2.2 = phi i64 [ %polly.indvar_next674.2.2, %polly.loop_exit678.2.2 ], [ 0, %polly.loop_exit678.1.2 ]
  %491 = add nuw nsw i64 %polly.indvar673.2.2, 64
  %492 = mul nuw nsw i64 %491, 640
  %493 = trunc i64 %491 to i32
  %broadcast.splatinsert990 = insertelement <4 x i32> poison, i32 %493, i32 0
  %broadcast.splat991 = shufflevector <4 x i32> %broadcast.splatinsert990, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %polly.loop_header670.2.2
  %index984 = phi i64 [ 0, %polly.loop_header670.2.2 ], [ %index.next985, %vector.body982 ]
  %vec.ind988 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.2.2 ], [ %vec.ind.next989, %vector.body982 ]
  %494 = add nuw nsw <4 x i64> %vec.ind988, <i64 64, i64 64, i64 64, i64 64>
  %495 = trunc <4 x i64> %494 to <4 x i32>
  %496 = mul <4 x i32> %broadcast.splat991, %495
  %497 = add <4 x i32> %496, <i32 3, i32 3, i32 3, i32 3>
  %498 = urem <4 x i32> %497, <i32 80, i32 80, i32 80, i32 80>
  %499 = sitofp <4 x i32> %498 to <4 x double>
  %500 = fmul fast <4 x double> %499, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %501 = extractelement <4 x i64> %494, i32 0
  %502 = shl i64 %501, 3
  %503 = add nuw nsw i64 %502, %492
  %504 = getelementptr i8, i8* %call, i64 %503
  %505 = bitcast i8* %504 to <4 x double>*
  store <4 x double> %500, <4 x double>* %505, align 8, !alias.scope !87, !noalias !89
  %index.next985 = add i64 %index984, 4
  %vec.ind.next989 = add <4 x i64> %vec.ind988, <i64 4, i64 4, i64 4, i64 4>
  %506 = icmp eq i64 %index.next985, 16
  br i1 %506, label %polly.loop_exit678.2.2, label %vector.body982, !llvm.loop !114

polly.loop_exit678.2.2:                           ; preds = %vector.body982
  %polly.indvar_next674.2.2 = add nuw nsw i64 %polly.indvar673.2.2, 1
  %exitcond791.2.2.not = icmp eq i64 %polly.indvar_next674.2.2, 16
  br i1 %exitcond791.2.2.not, label %polly.loop_header697, label %polly.loop_header670.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 80}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 2048}
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
!44 = !{!"llvm.loop.tile.size", i32 4}
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
