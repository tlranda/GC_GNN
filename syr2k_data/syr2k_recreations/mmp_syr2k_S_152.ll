; ModuleID = 'syr2k_recreations//mmp_syr2k_S_152.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_152.c"
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
  %scevgep853 = getelementptr i8, i8* %call2, i64 %12
  %scevgep852 = getelementptr i8, i8* %call2, i64 %11
  %scevgep851 = getelementptr i8, i8* %call1, i64 %12
  %scevgep850 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep850, %scevgep853
  %bound1 = icmp ult i8* %scevgep852, %scevgep851
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
  br i1 %exitcond18.not.i, label %vector.ph857, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph857:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert864 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat865 = shufflevector <4 x i64> %broadcast.splatinsert864, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body856

vector.body856:                                   ; preds = %vector.body856, %vector.ph857
  %index858 = phi i64 [ 0, %vector.ph857 ], [ %index.next859, %vector.body856 ]
  %vec.ind862 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph857 ], [ %vec.ind.next863, %vector.body856 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind862, %broadcast.splat865
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv7.i, i64 %index858
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next859 = add i64 %index858, 4
  %vec.ind.next863 = add <4 x i64> %vec.ind862, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next859, 80
  br i1 %40, label %for.inc41.i, label %vector.body856, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body856
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph857, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1213, label %vector.ph1139

vector.ph1139:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %vector.ph1139
  %index1140 = phi i64 [ 0, %vector.ph1139 ], [ %index.next1141, %vector.body1138 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i, i64 %index1140
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1141 = add i64 %index1140, 4
  %46 = icmp eq i64 %index.next1141, %n.vec
  br i1 %46, label %middle.block1136, label %vector.body1138, !llvm.loop !18

middle.block1136:                                 ; preds = %vector.body1138
  %cmp.n1143 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1143, label %for.inc6.i, label %for.body3.i46.preheader1213

for.body3.i46.preheader1213:                      ; preds = %for.body3.i46.preheader, %middle.block1136
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1136 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1213, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1213 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1136, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit501.1
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header327, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1159 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1159, label %for.body3.i60.preheader1211, label %vector.ph1160

vector.ph1160:                                    ; preds = %for.body3.i60.preheader
  %n.vec1162 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %vector.ph1160
  %index1163 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1164, %vector.body1158 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i52, i64 %index1163
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1167 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1167, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1164 = add i64 %index1163, 4
  %57 = icmp eq i64 %index.next1164, %n.vec1162
  br i1 %57, label %middle.block1156, label %vector.body1158, !llvm.loop !50

middle.block1156:                                 ; preds = %vector.body1158
  %cmp.n1166 = icmp eq i64 %indvars.iv21.i52, %n.vec1162
  br i1 %cmp.n1166, label %for.inc6.i63, label %for.body3.i60.preheader1211

for.body3.i60.preheader1211:                      ; preds = %for.body3.i60.preheader, %middle.block1156
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1162, %middle.block1156 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1211, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1211 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !51

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1156, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit357.1
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1185 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1185, label %for.body3.i99.preheader1209, label %vector.ph1186

vector.ph1186:                                    ; preds = %for.body3.i99.preheader
  %n.vec1188 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1190, %vector.body1184 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i91, i64 %index1189
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1193 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1193, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1190 = add i64 %index1189, 4
  %68 = icmp eq i64 %index.next1190, %n.vec1188
  br i1 %68, label %middle.block1182, label %vector.body1184, !llvm.loop !52

middle.block1182:                                 ; preds = %vector.body1184
  %cmp.n1192 = icmp eq i64 %indvars.iv21.i91, %n.vec1188
  br i1 %cmp.n1192, label %for.inc6.i102, label %for.body3.i99.preheader1209

for.body3.i99.preheader1209:                      ; preds = %for.body3.i99.preheader, %middle.block1182
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1188, %middle.block1182 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1209, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1209 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !53

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1182, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.1
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !54
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #6
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call681, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #6
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !56

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !57

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #6
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #5
  tail call void @free(i8* %call1) #5
  tail call void @free(i8* %call2) #5
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1197 = phi i64 [ %indvar.next1198, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1197, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1199 = icmp ult i64 %88, 4
  br i1 %min.iters.check1199, label %polly.loop_header191.preheader, label %vector.ph1200

vector.ph1200:                                    ; preds = %polly.loop_header
  %n.vec1202 = and i64 %88, -4
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1204, %vector.body1196 ]
  %90 = shl nuw nsw i64 %index1203, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1207 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !58, !noalias !60
  %93 = fmul fast <4 x double> %wide.load1207, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !58, !noalias !60
  %index.next1204 = add i64 %index1203, 4
  %95 = icmp eq i64 %index.next1204, %n.vec1202
  br i1 %95, label %middle.block1194, label %vector.body1196, !llvm.loop !63

middle.block1194:                                 ; preds = %vector.body1196
  %cmp.n1206 = icmp eq i64 %88, %n.vec1202
  br i1 %cmp.n1206, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1194
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1202, %middle.block1194 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1194
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond746.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1198 = add i64 %indvar1197, 1
  br i1 %exitcond746.not, label %polly.loop_header205, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond745.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond745.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

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
  %exitcond744.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond744.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %99 = shl i64 %polly.indvar214, 3
  %scevgep227 = getelementptr i8, i8* %scevgep226, i64 %99
  %scevgep227228 = bitcast i8* %scevgep227 to double*
  %_p_scalar_229 = load double, double* %scevgep227228, align 8, !alias.scope !62, !noalias !66
  %scevgep234 = getelementptr i8, i8* %scevgep233, i64 %99
  %scevgep234235 = bitcast i8* %scevgep234 to double*
  %_p_scalar_236 = load double, double* %scevgep234235, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond743.not = icmp eq i64 %polly.indvar_next215, 32
  br i1 %exitcond743.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %100 = mul nuw nsw i64 %polly.indvar220, 480
  %101 = add nuw nsw i64 %100, %99
  %scevgep223 = getelementptr i8, i8* %call1, i64 %101
  %scevgep223224 = bitcast i8* %scevgep223 to double*
  %_p_scalar_225 = load double, double* %scevgep223224, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112 = fmul fast double %_p_scalar_229, %_p_scalar_225
  %scevgep230 = getelementptr i8, i8* %call2, i64 %101
  %scevgep230231 = bitcast i8* %scevgep230 to double*
  %_p_scalar_232 = load double, double* %scevgep230231, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114 = fmul fast double %_p_scalar_236, %_p_scalar_232
  %102 = shl nuw nsw i64 %polly.indvar220, 3
  %scevgep238 = getelementptr i8, i8* %scevgep237, i64 %102
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_240
  store double %p_add42.i118, double* %scevgep238239, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header327:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit335
  %indvar1171 = phi i64 [ %indvar.next1172, %polly.loop_exit335 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar330 = phi i64 [ %polly.indvar_next331, %polly.loop_exit335 ], [ 1, %kernel_syr2k.exit ]
  %103 = add i64 %indvar1171, 1
  %104 = mul nuw nsw i64 %polly.indvar330, 640
  %scevgep339 = getelementptr i8, i8* %call, i64 %104
  %min.iters.check1173 = icmp ult i64 %103, 4
  br i1 %min.iters.check1173, label %polly.loop_header333.preheader, label %vector.ph1174

vector.ph1174:                                    ; preds = %polly.loop_header327
  %n.vec1176 = and i64 %103, -4
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %vector.ph1174
  %index1177 = phi i64 [ 0, %vector.ph1174 ], [ %index.next1178, %vector.body1170 ]
  %105 = shl nuw nsw i64 %index1177, 3
  %106 = getelementptr i8, i8* %scevgep339, i64 %105
  %107 = bitcast i8* %106 to <4 x double>*
  %wide.load1181 = load <4 x double>, <4 x double>* %107, align 8, !alias.scope !68, !noalias !70
  %108 = fmul fast <4 x double> %wide.load1181, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %109 = bitcast i8* %106 to <4 x double>*
  store <4 x double> %108, <4 x double>* %109, align 8, !alias.scope !68, !noalias !70
  %index.next1178 = add i64 %index1177, 4
  %110 = icmp eq i64 %index.next1178, %n.vec1176
  br i1 %110, label %middle.block1168, label %vector.body1170, !llvm.loop !73

middle.block1168:                                 ; preds = %vector.body1170
  %cmp.n1180 = icmp eq i64 %103, %n.vec1176
  br i1 %cmp.n1180, label %polly.loop_exit335, label %polly.loop_header333.preheader

polly.loop_header333.preheader:                   ; preds = %polly.loop_header327, %middle.block1168
  %polly.indvar336.ph = phi i64 [ 0, %polly.loop_header327 ], [ %n.vec1176, %middle.block1168 ]
  br label %polly.loop_header333

polly.loop_exit335:                               ; preds = %polly.loop_header333, %middle.block1168
  %polly.indvar_next331 = add nuw nsw i64 %polly.indvar330, 1
  %exitcond753.not = icmp eq i64 %polly.indvar_next331, 80
  %indvar.next1172 = add i64 %indvar1171, 1
  br i1 %exitcond753.not, label %polly.loop_header349, label %polly.loop_header327

polly.loop_header333:                             ; preds = %polly.loop_header333.preheader, %polly.loop_header333
  %polly.indvar336 = phi i64 [ %polly.indvar_next337, %polly.loop_header333 ], [ %polly.indvar336.ph, %polly.loop_header333.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar336, 3
  %scevgep340 = getelementptr i8, i8* %scevgep339, i64 %111
  %scevgep340341 = bitcast i8* %scevgep340 to double*
  %_p_scalar_342 = load double, double* %scevgep340341, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_342, 1.200000e+00
  store double %p_mul.i57, double* %scevgep340341, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next337 = add nuw nsw i64 %polly.indvar336, 1
  %exitcond752.not = icmp eq i64 %polly.indvar_next337, %polly.indvar330
  br i1 %exitcond752.not, label %polly.loop_exit335, label %polly.loop_header333, !llvm.loop !74

polly.loop_header349:                             ; preds = %polly.loop_exit335, %polly.loop_exit357
  %indvars.iv747 = phi i64 [ %indvars.iv.next748, %polly.loop_exit357 ], [ 1, %polly.loop_exit335 ]
  %polly.indvar352 = phi i64 [ %polly.indvar_next353, %polly.loop_exit357 ], [ 0, %polly.loop_exit335 ]
  %112 = mul nuw nsw i64 %polly.indvar352, 480
  %scevgep370 = getelementptr i8, i8* %call2, i64 %112
  %scevgep377 = getelementptr i8, i8* %call1, i64 %112
  %113 = mul nuw nsw i64 %polly.indvar352, 640
  %scevgep381 = getelementptr i8, i8* %call, i64 %113
  br label %polly.loop_header355

polly.loop_exit357:                               ; preds = %polly.loop_exit363
  %polly.indvar_next353 = add nuw nsw i64 %polly.indvar352, 1
  %indvars.iv.next748 = add nuw nsw i64 %indvars.iv747, 1
  %exitcond751.not = icmp eq i64 %polly.indvar_next353, 80
  br i1 %exitcond751.not, label %polly.loop_header349.1, label %polly.loop_header349

polly.loop_header355:                             ; preds = %polly.loop_exit363, %polly.loop_header349
  %polly.indvar358 = phi i64 [ 0, %polly.loop_header349 ], [ %polly.indvar_next359, %polly.loop_exit363 ]
  %114 = shl i64 %polly.indvar358, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %114
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !72, !noalias !75
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %114
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header361

polly.loop_exit363:                               ; preds = %polly.loop_header361
  %polly.indvar_next359 = add nuw nsw i64 %polly.indvar358, 1
  %exitcond750.not = icmp eq i64 %polly.indvar_next359, 32
  br i1 %exitcond750.not, label %polly.loop_exit357, label %polly.loop_header355

polly.loop_header361:                             ; preds = %polly.loop_header361, %polly.loop_header355
  %polly.indvar364 = phi i64 [ 0, %polly.loop_header355 ], [ %polly.indvar_next365, %polly.loop_header361 ]
  %115 = mul nuw nsw i64 %polly.indvar364, 480
  %116 = add nuw nsw i64 %115, %114
  %scevgep367 = getelementptr i8, i8* %call1, i64 %116
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73 = fmul fast double %_p_scalar_373, %_p_scalar_369
  %scevgep374 = getelementptr i8, i8* %call2, i64 %116
  %scevgep374375 = bitcast i8* %scevgep374 to double*
  %_p_scalar_376 = load double, double* %scevgep374375, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75 = fmul fast double %_p_scalar_380, %_p_scalar_376
  %117 = shl nuw nsw i64 %polly.indvar364, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %117
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_384
  store double %p_add42.i79, double* %scevgep382383, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %exitcond749.not = icmp eq i64 %polly.indvar_next365, %indvars.iv747
  br i1 %exitcond749.not, label %polly.loop_exit363, label %polly.loop_header361

polly.loop_header471:                             ; preds = %init_array.exit, %polly.loop_exit479
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit479 ], [ 0, %init_array.exit ]
  %polly.indvar474 = phi i64 [ %polly.indvar_next475, %polly.loop_exit479 ], [ 1, %init_array.exit ]
  %118 = add i64 %indvar, 1
  %119 = mul nuw nsw i64 %polly.indvar474, 640
  %scevgep483 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1147 = icmp ult i64 %118, 4
  br i1 %min.iters.check1147, label %polly.loop_header477.preheader, label %vector.ph1148

vector.ph1148:                                    ; preds = %polly.loop_header471
  %n.vec1150 = and i64 %118, -4
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %vector.ph1148
  %index1151 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1152, %vector.body1146 ]
  %120 = shl nuw nsw i64 %index1151, 3
  %121 = getelementptr i8, i8* %scevgep483, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1155 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !77, !noalias !79
  %123 = fmul fast <4 x double> %wide.load1155, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !77, !noalias !79
  %index.next1152 = add i64 %index1151, 4
  %125 = icmp eq i64 %index.next1152, %n.vec1150
  br i1 %125, label %middle.block1144, label %vector.body1146, !llvm.loop !82

middle.block1144:                                 ; preds = %vector.body1146
  %cmp.n1154 = icmp eq i64 %118, %n.vec1150
  br i1 %cmp.n1154, label %polly.loop_exit479, label %polly.loop_header477.preheader

polly.loop_header477.preheader:                   ; preds = %polly.loop_header471, %middle.block1144
  %polly.indvar480.ph = phi i64 [ 0, %polly.loop_header471 ], [ %n.vec1150, %middle.block1144 ]
  br label %polly.loop_header477

polly.loop_exit479:                               ; preds = %polly.loop_header477, %middle.block1144
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %exitcond760.not = icmp eq i64 %polly.indvar_next475, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond760.not, label %polly.loop_header493, label %polly.loop_header471

polly.loop_header477:                             ; preds = %polly.loop_header477.preheader, %polly.loop_header477
  %polly.indvar480 = phi i64 [ %polly.indvar_next481, %polly.loop_header477 ], [ %polly.indvar480.ph, %polly.loop_header477.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar480, 3
  %scevgep484 = getelementptr i8, i8* %scevgep483, i64 %126
  %scevgep484485 = bitcast i8* %scevgep484 to double*
  %_p_scalar_486 = load double, double* %scevgep484485, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_486, 1.200000e+00
  store double %p_mul.i, double* %scevgep484485, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next481 = add nuw nsw i64 %polly.indvar480, 1
  %exitcond759.not = icmp eq i64 %polly.indvar_next481, %polly.indvar474
  br i1 %exitcond759.not, label %polly.loop_exit479, label %polly.loop_header477, !llvm.loop !83

polly.loop_header493:                             ; preds = %polly.loop_exit479, %polly.loop_exit501
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %polly.loop_exit501 ], [ 1, %polly.loop_exit479 ]
  %polly.indvar496 = phi i64 [ %polly.indvar_next497, %polly.loop_exit501 ], [ 0, %polly.loop_exit479 ]
  %127 = mul nuw nsw i64 %polly.indvar496, 480
  %scevgep514 = getelementptr i8, i8* %call2, i64 %127
  %scevgep521 = getelementptr i8, i8* %call1, i64 %127
  %128 = mul nuw nsw i64 %polly.indvar496, 640
  %scevgep525 = getelementptr i8, i8* %call, i64 %128
  br label %polly.loop_header499

polly.loop_exit501:                               ; preds = %polly.loop_exit507
  %polly.indvar_next497 = add nuw nsw i64 %polly.indvar496, 1
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1
  %exitcond758.not = icmp eq i64 %polly.indvar_next497, 80
  br i1 %exitcond758.not, label %polly.loop_header493.1, label %polly.loop_header493

polly.loop_header499:                             ; preds = %polly.loop_exit507, %polly.loop_header493
  %polly.indvar502 = phi i64 [ 0, %polly.loop_header493 ], [ %polly.indvar_next503, %polly.loop_exit507 ]
  %129 = shl i64 %polly.indvar502, 3
  %scevgep515 = getelementptr i8, i8* %scevgep514, i64 %129
  %scevgep515516 = bitcast i8* %scevgep515 to double*
  %_p_scalar_517 = load double, double* %scevgep515516, align 8, !alias.scope !81, !noalias !84
  %scevgep522 = getelementptr i8, i8* %scevgep521, i64 %129
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header505

polly.loop_exit507:                               ; preds = %polly.loop_header505
  %polly.indvar_next503 = add nuw nsw i64 %polly.indvar502, 1
  %exitcond757.not = icmp eq i64 %polly.indvar_next503, 32
  br i1 %exitcond757.not, label %polly.loop_exit501, label %polly.loop_header499

polly.loop_header505:                             ; preds = %polly.loop_header505, %polly.loop_header499
  %polly.indvar508 = phi i64 [ 0, %polly.loop_header499 ], [ %polly.indvar_next509, %polly.loop_header505 ]
  %130 = mul nuw nsw i64 %polly.indvar508, 480
  %131 = add nuw nsw i64 %130, %129
  %scevgep511 = getelementptr i8, i8* %call1, i64 %131
  %scevgep511512 = bitcast i8* %scevgep511 to double*
  %_p_scalar_513 = load double, double* %scevgep511512, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i = fmul fast double %_p_scalar_517, %_p_scalar_513
  %scevgep518 = getelementptr i8, i8* %call2, i64 %131
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i = fmul fast double %_p_scalar_524, %_p_scalar_520
  %132 = shl nuw nsw i64 %polly.indvar508, 3
  %scevgep526 = getelementptr i8, i8* %scevgep525, i64 %132
  %scevgep526527 = bitcast i8* %scevgep526 to double*
  %_p_scalar_528 = load double, double* %scevgep526527, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_528
  store double %p_add42.i, double* %scevgep526527, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %exitcond756.not = icmp eq i64 %polly.indvar_next509, %indvars.iv754
  br i1 %exitcond756.not, label %polly.loop_exit507, label %polly.loop_header505

polly.loop_header667:                             ; preds = %entry, %polly.loop_exit675
  %polly.indvar670 = phi i64 [ %polly.indvar_next671, %polly.loop_exit675 ], [ 0, %entry ]
  %133 = mul nuw nsw i64 %polly.indvar670, 640
  %134 = trunc i64 %polly.indvar670 to i32
  %broadcast.splatinsert878 = insertelement <4 x i32> poison, i32 %134, i32 0
  %broadcast.splat879 = shufflevector <4 x i32> %broadcast.splatinsert878, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body868

vector.body868:                                   ; preds = %vector.body868, %polly.loop_header667
  %index870 = phi i64 [ 0, %polly.loop_header667 ], [ %index.next871, %vector.body868 ]
  %vec.ind876 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header667 ], [ %vec.ind.next877, %vector.body868 ]
  %135 = mul <4 x i32> %vec.ind876, %broadcast.splat879
  %136 = add <4 x i32> %135, <i32 3, i32 3, i32 3, i32 3>
  %137 = urem <4 x i32> %136, <i32 80, i32 80, i32 80, i32 80>
  %138 = sitofp <4 x i32> %137 to <4 x double>
  %139 = fmul fast <4 x double> %138, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %140 = shl i64 %index870, 3
  %141 = add nuw nsw i64 %140, %133
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %139, <4 x double>* %143, align 8, !alias.scope !86, !noalias !88
  %index.next871 = add i64 %index870, 4
  %vec.ind.next877 = add <4 x i32> %vec.ind876, <i32 4, i32 4, i32 4, i32 4>
  %144 = icmp eq i64 %index.next871, 32
  br i1 %144, label %polly.loop_exit675, label %vector.body868, !llvm.loop !91

polly.loop_exit675:                               ; preds = %vector.body868
  %polly.indvar_next671 = add nuw nsw i64 %polly.indvar670, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next671, 32
  br i1 %exitcond779.not, label %polly.loop_header667.1, label %polly.loop_header667

polly.loop_header694:                             ; preds = %polly.loop_exit675.2.2, %polly.loop_exit702
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %polly.loop_exit675.2.2 ]
  %145 = mul nuw nsw i64 %polly.indvar697, 480
  %146 = trunc i64 %polly.indvar697 to i32
  %broadcast.splatinsert992 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat993 = shufflevector <4 x i32> %broadcast.splatinsert992, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %polly.loop_header694
  %index984 = phi i64 [ 0, %polly.loop_header694 ], [ %index.next985, %vector.body982 ]
  %vec.ind990 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header694 ], [ %vec.ind.next991, %vector.body982 ]
  %147 = mul <4 x i32> %vec.ind990, %broadcast.splat993
  %148 = add <4 x i32> %147, <i32 2, i32 2, i32 2, i32 2>
  %149 = urem <4 x i32> %148, <i32 60, i32 60, i32 60, i32 60>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index984, 3
  %153 = add i64 %152, %145
  %154 = getelementptr i8, i8* %call2, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !90, !noalias !92
  %index.next985 = add i64 %index984, 4
  %vec.ind.next991 = add <4 x i32> %vec.ind990, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next985, 32
  br i1 %156, label %polly.loop_exit702, label %vector.body982, !llvm.loop !93

polly.loop_exit702:                               ; preds = %vector.body982
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %exitcond770.not = icmp eq i64 %polly.indvar_next698, 32
  br i1 %exitcond770.not, label %polly.loop_header694.1, label %polly.loop_header694

polly.loop_header720:                             ; preds = %polly.loop_exit702.1.2, %polly.loop_exit728
  %polly.indvar723 = phi i64 [ %polly.indvar_next724, %polly.loop_exit728 ], [ 0, %polly.loop_exit702.1.2 ]
  %157 = mul nuw nsw i64 %polly.indvar723, 480
  %158 = trunc i64 %polly.indvar723 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %polly.loop_header720
  %index1062 = phi i64 [ 0, %polly.loop_header720 ], [ %index.next1063, %vector.body1060 ]
  %vec.ind1068 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header720 ], [ %vec.ind.next1069, %vector.body1060 ]
  %159 = mul <4 x i32> %vec.ind1068, %broadcast.splat1071
  %160 = add <4 x i32> %159, <i32 1, i32 1, i32 1, i32 1>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %164 = shl i64 %index1062, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call1, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !89, !noalias !94
  %index.next1063 = add i64 %index1062, 4
  %vec.ind.next1069 = add <4 x i32> %vec.ind1068, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1063, 32
  br i1 %168, label %polly.loop_exit728, label %vector.body1060, !llvm.loop !95

polly.loop_exit728:                               ; preds = %vector.body1060
  %polly.indvar_next724 = add nuw nsw i64 %polly.indvar723, 1
  %exitcond764.not = icmp eq i64 %polly.indvar_next724, 32
  br i1 %exitcond764.not, label %polly.loop_header720.1, label %polly.loop_header720

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
  %172 = add i64 %171, 256
  %scevgep227.1 = getelementptr i8, i8* %scevgep226.1, i64 %172
  %scevgep227228.1 = bitcast i8* %scevgep227.1 to double*
  %_p_scalar_229.1 = load double, double* %scevgep227228.1, align 8, !alias.scope !62, !noalias !66
  %scevgep234.1 = getelementptr i8, i8* %scevgep233.1, i64 %172
  %scevgep234235.1 = bitcast i8* %scevgep234.1 to double*
  %_p_scalar_236.1 = load double, double* %scevgep234235.1, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %173 = mul nuw nsw i64 %polly.indvar220.1, 480
  %174 = add nuw nsw i64 %173, %172
  %scevgep223.1 = getelementptr i8, i8* %call1, i64 %174
  %scevgep223224.1 = bitcast i8* %scevgep223.1 to double*
  %_p_scalar_225.1 = load double, double* %scevgep223224.1, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.1 = fmul fast double %_p_scalar_229.1, %_p_scalar_225.1
  %scevgep230.1 = getelementptr i8, i8* %call2, i64 %174
  %scevgep230231.1 = bitcast i8* %scevgep230.1 to double*
  %_p_scalar_232.1 = load double, double* %scevgep230231.1, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.1 = fmul fast double %_p_scalar_236.1, %_p_scalar_232.1
  %175 = shl nuw nsw i64 %polly.indvar220.1, 3
  %scevgep238.1 = getelementptr i8, i8* %scevgep237.1, i64 %175
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_240.1
  store double %p_add42.i118.1, double* %scevgep238239.1, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond743.1.not = icmp eq i64 %polly.indvar_next215.1, 28
  br i1 %exitcond743.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond744.1.not = icmp eq i64 %polly.indvar_next209.1, 80
  br i1 %exitcond744.1.not, label %kernel_syr2k.exit129, label %polly.loop_header205.1

polly.loop_header349.1:                           ; preds = %polly.loop_exit357, %polly.loop_exit357.1
  %indvars.iv747.1 = phi i64 [ %indvars.iv.next748.1, %polly.loop_exit357.1 ], [ 1, %polly.loop_exit357 ]
  %polly.indvar352.1 = phi i64 [ %polly.indvar_next353.1, %polly.loop_exit357.1 ], [ 0, %polly.loop_exit357 ]
  %176 = mul nuw nsw i64 %polly.indvar352.1, 480
  %scevgep370.1 = getelementptr i8, i8* %call2, i64 %176
  %scevgep377.1 = getelementptr i8, i8* %call1, i64 %176
  %177 = mul nuw nsw i64 %polly.indvar352.1, 640
  %scevgep381.1 = getelementptr i8, i8* %call, i64 %177
  br label %polly.loop_header355.1

polly.loop_header355.1:                           ; preds = %polly.loop_exit363.1, %polly.loop_header349.1
  %polly.indvar358.1 = phi i64 [ 0, %polly.loop_header349.1 ], [ %polly.indvar_next359.1, %polly.loop_exit363.1 ]
  %178 = shl i64 %polly.indvar358.1, 3
  %179 = add i64 %178, 256
  %scevgep371.1 = getelementptr i8, i8* %scevgep370.1, i64 %179
  %scevgep371372.1 = bitcast i8* %scevgep371.1 to double*
  %_p_scalar_373.1 = load double, double* %scevgep371372.1, align 8, !alias.scope !72, !noalias !75
  %scevgep378.1 = getelementptr i8, i8* %scevgep377.1, i64 %179
  %scevgep378379.1 = bitcast i8* %scevgep378.1 to double*
  %_p_scalar_380.1 = load double, double* %scevgep378379.1, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header361.1

polly.loop_header361.1:                           ; preds = %polly.loop_header361.1, %polly.loop_header355.1
  %polly.indvar364.1 = phi i64 [ 0, %polly.loop_header355.1 ], [ %polly.indvar_next365.1, %polly.loop_header361.1 ]
  %180 = mul nuw nsw i64 %polly.indvar364.1, 480
  %181 = add nuw nsw i64 %180, %179
  %scevgep367.1 = getelementptr i8, i8* %call1, i64 %181
  %scevgep367368.1 = bitcast i8* %scevgep367.1 to double*
  %_p_scalar_369.1 = load double, double* %scevgep367368.1, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.1 = fmul fast double %_p_scalar_373.1, %_p_scalar_369.1
  %scevgep374.1 = getelementptr i8, i8* %call2, i64 %181
  %scevgep374375.1 = bitcast i8* %scevgep374.1 to double*
  %_p_scalar_376.1 = load double, double* %scevgep374375.1, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.1 = fmul fast double %_p_scalar_380.1, %_p_scalar_376.1
  %182 = shl nuw nsw i64 %polly.indvar364.1, 3
  %scevgep382.1 = getelementptr i8, i8* %scevgep381.1, i64 %182
  %scevgep382383.1 = bitcast i8* %scevgep382.1 to double*
  %_p_scalar_384.1 = load double, double* %scevgep382383.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_384.1
  store double %p_add42.i79.1, double* %scevgep382383.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next365.1 = add nuw nsw i64 %polly.indvar364.1, 1
  %exitcond749.1.not = icmp eq i64 %polly.indvar_next365.1, %indvars.iv747.1
  br i1 %exitcond749.1.not, label %polly.loop_exit363.1, label %polly.loop_header361.1

polly.loop_exit363.1:                             ; preds = %polly.loop_header361.1
  %polly.indvar_next359.1 = add nuw nsw i64 %polly.indvar358.1, 1
  %exitcond750.1.not = icmp eq i64 %polly.indvar_next359.1, 28
  br i1 %exitcond750.1.not, label %polly.loop_exit357.1, label %polly.loop_header355.1

polly.loop_exit357.1:                             ; preds = %polly.loop_exit363.1
  %polly.indvar_next353.1 = add nuw nsw i64 %polly.indvar352.1, 1
  %indvars.iv.next748.1 = add nuw nsw i64 %indvars.iv747.1, 1
  %exitcond751.1.not = icmp eq i64 %polly.indvar_next353.1, 80
  br i1 %exitcond751.1.not, label %kernel_syr2k.exit90, label %polly.loop_header349.1

polly.loop_header493.1:                           ; preds = %polly.loop_exit501, %polly.loop_exit501.1
  %indvars.iv754.1 = phi i64 [ %indvars.iv.next755.1, %polly.loop_exit501.1 ], [ 1, %polly.loop_exit501 ]
  %polly.indvar496.1 = phi i64 [ %polly.indvar_next497.1, %polly.loop_exit501.1 ], [ 0, %polly.loop_exit501 ]
  %183 = mul nuw nsw i64 %polly.indvar496.1, 480
  %scevgep514.1 = getelementptr i8, i8* %call2, i64 %183
  %scevgep521.1 = getelementptr i8, i8* %call1, i64 %183
  %184 = mul nuw nsw i64 %polly.indvar496.1, 640
  %scevgep525.1 = getelementptr i8, i8* %call, i64 %184
  br label %polly.loop_header499.1

polly.loop_header499.1:                           ; preds = %polly.loop_exit507.1, %polly.loop_header493.1
  %polly.indvar502.1 = phi i64 [ 0, %polly.loop_header493.1 ], [ %polly.indvar_next503.1, %polly.loop_exit507.1 ]
  %185 = shl i64 %polly.indvar502.1, 3
  %186 = add i64 %185, 256
  %scevgep515.1 = getelementptr i8, i8* %scevgep514.1, i64 %186
  %scevgep515516.1 = bitcast i8* %scevgep515.1 to double*
  %_p_scalar_517.1 = load double, double* %scevgep515516.1, align 8, !alias.scope !81, !noalias !84
  %scevgep522.1 = getelementptr i8, i8* %scevgep521.1, i64 %186
  %scevgep522523.1 = bitcast i8* %scevgep522.1 to double*
  %_p_scalar_524.1 = load double, double* %scevgep522523.1, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header505.1

polly.loop_header505.1:                           ; preds = %polly.loop_header505.1, %polly.loop_header499.1
  %polly.indvar508.1 = phi i64 [ 0, %polly.loop_header499.1 ], [ %polly.indvar_next509.1, %polly.loop_header505.1 ]
  %187 = mul nuw nsw i64 %polly.indvar508.1, 480
  %188 = add nuw nsw i64 %187, %186
  %scevgep511.1 = getelementptr i8, i8* %call1, i64 %188
  %scevgep511512.1 = bitcast i8* %scevgep511.1 to double*
  %_p_scalar_513.1 = load double, double* %scevgep511512.1, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.1 = fmul fast double %_p_scalar_517.1, %_p_scalar_513.1
  %scevgep518.1 = getelementptr i8, i8* %call2, i64 %188
  %scevgep518519.1 = bitcast i8* %scevgep518.1 to double*
  %_p_scalar_520.1 = load double, double* %scevgep518519.1, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.1 = fmul fast double %_p_scalar_524.1, %_p_scalar_520.1
  %189 = shl nuw nsw i64 %polly.indvar508.1, 3
  %scevgep526.1 = getelementptr i8, i8* %scevgep525.1, i64 %189
  %scevgep526527.1 = bitcast i8* %scevgep526.1 to double*
  %_p_scalar_528.1 = load double, double* %scevgep526527.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_528.1
  store double %p_add42.i.1, double* %scevgep526527.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next509.1 = add nuw nsw i64 %polly.indvar508.1, 1
  %exitcond756.1.not = icmp eq i64 %polly.indvar_next509.1, %indvars.iv754.1
  br i1 %exitcond756.1.not, label %polly.loop_exit507.1, label %polly.loop_header505.1

polly.loop_exit507.1:                             ; preds = %polly.loop_header505.1
  %polly.indvar_next503.1 = add nuw nsw i64 %polly.indvar502.1, 1
  %exitcond757.1.not = icmp eq i64 %polly.indvar_next503.1, 28
  br i1 %exitcond757.1.not, label %polly.loop_exit501.1, label %polly.loop_header499.1

polly.loop_exit501.1:                             ; preds = %polly.loop_exit507.1
  %polly.indvar_next497.1 = add nuw nsw i64 %polly.indvar496.1, 1
  %indvars.iv.next755.1 = add nuw nsw i64 %indvars.iv754.1, 1
  %exitcond758.1.not = icmp eq i64 %polly.indvar_next497.1, 80
  br i1 %exitcond758.1.not, label %kernel_syr2k.exit, label %polly.loop_header493.1

polly.loop_header720.1:                           ; preds = %polly.loop_exit728, %polly.loop_exit728.1
  %polly.indvar723.1 = phi i64 [ %polly.indvar_next724.1, %polly.loop_exit728.1 ], [ 0, %polly.loop_exit728 ]
  %190 = mul nuw nsw i64 %polly.indvar723.1, 480
  %191 = trunc i64 %polly.indvar723.1 to i32
  %broadcast.splatinsert1082 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1083 = shufflevector <4 x i32> %broadcast.splatinsert1082, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header720.1
  %index1076 = phi i64 [ 0, %polly.loop_header720.1 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1080 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header720.1 ], [ %vec.ind.next1081, %vector.body1074 ]
  %192 = add nuw nsw <4 x i64> %vec.ind1080, <i64 32, i64 32, i64 32, i64 32>
  %193 = trunc <4 x i64> %192 to <4 x i32>
  %194 = mul <4 x i32> %broadcast.splat1083, %193
  %195 = add <4 x i32> %194, <i32 1, i32 1, i32 1, i32 1>
  %196 = urem <4 x i32> %195, <i32 80, i32 80, i32 80, i32 80>
  %197 = sitofp <4 x i32> %196 to <4 x double>
  %198 = fmul fast <4 x double> %197, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %199 = extractelement <4 x i64> %192, i32 0
  %200 = shl i64 %199, 3
  %201 = add i64 %200, %190
  %202 = getelementptr i8, i8* %call1, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %198, <4 x double>* %203, align 8, !alias.scope !89, !noalias !94
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1081 = add <4 x i64> %vec.ind1080, <i64 4, i64 4, i64 4, i64 4>
  %204 = icmp eq i64 %index.next1077, 28
  br i1 %204, label %polly.loop_exit728.1, label %vector.body1074, !llvm.loop !96

polly.loop_exit728.1:                             ; preds = %vector.body1074
  %polly.indvar_next724.1 = add nuw nsw i64 %polly.indvar723.1, 1
  %exitcond764.1.not = icmp eq i64 %polly.indvar_next724.1, 32
  br i1 %exitcond764.1.not, label %polly.loop_header720.1787, label %polly.loop_header720.1

polly.loop_header720.1787:                        ; preds = %polly.loop_exit728.1, %polly.loop_exit728.1798
  %polly.indvar723.1786 = phi i64 [ %polly.indvar_next724.1796, %polly.loop_exit728.1798 ], [ 0, %polly.loop_exit728.1 ]
  %205 = add nuw nsw i64 %polly.indvar723.1786, 32
  %206 = mul nuw nsw i64 %205, 480
  %207 = trunc i64 %205 to i32
  %broadcast.splatinsert1096 = insertelement <4 x i32> poison, i32 %207, i32 0
  %broadcast.splat1097 = shufflevector <4 x i32> %broadcast.splatinsert1096, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %polly.loop_header720.1787
  %index1088 = phi i64 [ 0, %polly.loop_header720.1787 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1094 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header720.1787 ], [ %vec.ind.next1095, %vector.body1086 ]
  %208 = mul <4 x i32> %vec.ind1094, %broadcast.splat1097
  %209 = add <4 x i32> %208, <i32 1, i32 1, i32 1, i32 1>
  %210 = urem <4 x i32> %209, <i32 80, i32 80, i32 80, i32 80>
  %211 = sitofp <4 x i32> %210 to <4 x double>
  %212 = fmul fast <4 x double> %211, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %213 = shl i64 %index1088, 3
  %214 = add i64 %213, %206
  %215 = getelementptr i8, i8* %call1, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %212, <4 x double>* %216, align 8, !alias.scope !89, !noalias !94
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1095 = add <4 x i32> %vec.ind1094, <i32 4, i32 4, i32 4, i32 4>
  %217 = icmp eq i64 %index.next1089, 32
  br i1 %217, label %polly.loop_exit728.1798, label %vector.body1086, !llvm.loop !97

polly.loop_exit728.1798:                          ; preds = %vector.body1086
  %polly.indvar_next724.1796 = add nuw nsw i64 %polly.indvar723.1786, 1
  %exitcond764.1797.not = icmp eq i64 %polly.indvar_next724.1796, 32
  br i1 %exitcond764.1797.not, label %polly.loop_header720.1.1, label %polly.loop_header720.1787

polly.loop_header720.1.1:                         ; preds = %polly.loop_exit728.1798, %polly.loop_exit728.1.1
  %polly.indvar723.1.1 = phi i64 [ %polly.indvar_next724.1.1, %polly.loop_exit728.1.1 ], [ 0, %polly.loop_exit728.1798 ]
  %218 = add nuw nsw i64 %polly.indvar723.1.1, 32
  %219 = mul nuw nsw i64 %218, 480
  %220 = trunc i64 %218 to i32
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %220, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header720.1.1
  %index1102 = phi i64 [ 0, %polly.loop_header720.1.1 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1106 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header720.1.1 ], [ %vec.ind.next1107, %vector.body1100 ]
  %221 = add nuw nsw <4 x i64> %vec.ind1106, <i64 32, i64 32, i64 32, i64 32>
  %222 = trunc <4 x i64> %221 to <4 x i32>
  %223 = mul <4 x i32> %broadcast.splat1109, %222
  %224 = add <4 x i32> %223, <i32 1, i32 1, i32 1, i32 1>
  %225 = urem <4 x i32> %224, <i32 80, i32 80, i32 80, i32 80>
  %226 = sitofp <4 x i32> %225 to <4 x double>
  %227 = fmul fast <4 x double> %226, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %228 = extractelement <4 x i64> %221, i32 0
  %229 = shl i64 %228, 3
  %230 = add i64 %229, %219
  %231 = getelementptr i8, i8* %call1, i64 %230
  %232 = bitcast i8* %231 to <4 x double>*
  store <4 x double> %227, <4 x double>* %232, align 8, !alias.scope !89, !noalias !94
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1107 = add <4 x i64> %vec.ind1106, <i64 4, i64 4, i64 4, i64 4>
  %233 = icmp eq i64 %index.next1103, 28
  br i1 %233, label %polly.loop_exit728.1.1, label %vector.body1100, !llvm.loop !98

polly.loop_exit728.1.1:                           ; preds = %vector.body1100
  %polly.indvar_next724.1.1 = add nuw nsw i64 %polly.indvar723.1.1, 1
  %exitcond764.1.1.not = icmp eq i64 %polly.indvar_next724.1.1, 32
  br i1 %exitcond764.1.1.not, label %polly.loop_header720.2, label %polly.loop_header720.1.1

polly.loop_header720.2:                           ; preds = %polly.loop_exit728.1.1, %polly.loop_exit728.2
  %polly.indvar723.2 = phi i64 [ %polly.indvar_next724.2, %polly.loop_exit728.2 ], [ 0, %polly.loop_exit728.1.1 ]
  %234 = add nuw nsw i64 %polly.indvar723.2, 64
  %235 = mul nuw nsw i64 %234, 480
  %236 = trunc i64 %234 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %polly.loop_header720.2
  %index1114 = phi i64 [ 0, %polly.loop_header720.2 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1120 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header720.2 ], [ %vec.ind.next1121, %vector.body1112 ]
  %237 = mul <4 x i32> %vec.ind1120, %broadcast.splat1123
  %238 = add <4 x i32> %237, <i32 1, i32 1, i32 1, i32 1>
  %239 = urem <4 x i32> %238, <i32 80, i32 80, i32 80, i32 80>
  %240 = sitofp <4 x i32> %239 to <4 x double>
  %241 = fmul fast <4 x double> %240, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %242 = shl i64 %index1114, 3
  %243 = add i64 %242, %235
  %244 = getelementptr i8, i8* %call1, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %241, <4 x double>* %245, align 8, !alias.scope !89, !noalias !94
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1121 = add <4 x i32> %vec.ind1120, <i32 4, i32 4, i32 4, i32 4>
  %246 = icmp eq i64 %index.next1115, 32
  br i1 %246, label %polly.loop_exit728.2, label %vector.body1112, !llvm.loop !99

polly.loop_exit728.2:                             ; preds = %vector.body1112
  %polly.indvar_next724.2 = add nuw nsw i64 %polly.indvar723.2, 1
  %exitcond764.2.not = icmp eq i64 %polly.indvar_next724.2, 16
  br i1 %exitcond764.2.not, label %polly.loop_header720.1.2, label %polly.loop_header720.2

polly.loop_header720.1.2:                         ; preds = %polly.loop_exit728.2, %polly.loop_exit728.1.2
  %polly.indvar723.1.2 = phi i64 [ %polly.indvar_next724.1.2, %polly.loop_exit728.1.2 ], [ 0, %polly.loop_exit728.2 ]
  %247 = add nuw nsw i64 %polly.indvar723.1.2, 64
  %248 = mul nuw nsw i64 %247, 480
  %249 = trunc i64 %247 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %249, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header720.1.2
  %index1128 = phi i64 [ 0, %polly.loop_header720.1.2 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1132 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header720.1.2 ], [ %vec.ind.next1133, %vector.body1126 ]
  %250 = add nuw nsw <4 x i64> %vec.ind1132, <i64 32, i64 32, i64 32, i64 32>
  %251 = trunc <4 x i64> %250 to <4 x i32>
  %252 = mul <4 x i32> %broadcast.splat1135, %251
  %253 = add <4 x i32> %252, <i32 1, i32 1, i32 1, i32 1>
  %254 = urem <4 x i32> %253, <i32 80, i32 80, i32 80, i32 80>
  %255 = sitofp <4 x i32> %254 to <4 x double>
  %256 = fmul fast <4 x double> %255, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %257 = extractelement <4 x i64> %250, i32 0
  %258 = shl i64 %257, 3
  %259 = add i64 %258, %248
  %260 = getelementptr i8, i8* %call1, i64 %259
  %261 = bitcast i8* %260 to <4 x double>*
  store <4 x double> %256, <4 x double>* %261, align 8, !alias.scope !89, !noalias !94
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1133 = add <4 x i64> %vec.ind1132, <i64 4, i64 4, i64 4, i64 4>
  %262 = icmp eq i64 %index.next1129, 28
  br i1 %262, label %polly.loop_exit728.1.2, label %vector.body1126, !llvm.loop !100

polly.loop_exit728.1.2:                           ; preds = %vector.body1126
  %polly.indvar_next724.1.2 = add nuw nsw i64 %polly.indvar723.1.2, 1
  %exitcond764.1.2.not = icmp eq i64 %polly.indvar_next724.1.2, 16
  br i1 %exitcond764.1.2.not, label %init_array.exit, label %polly.loop_header720.1.2

polly.loop_header694.1:                           ; preds = %polly.loop_exit702, %polly.loop_exit702.1
  %polly.indvar697.1 = phi i64 [ %polly.indvar_next698.1, %polly.loop_exit702.1 ], [ 0, %polly.loop_exit702 ]
  %263 = mul nuw nsw i64 %polly.indvar697.1, 480
  %264 = trunc i64 %polly.indvar697.1 to i32
  %broadcast.splatinsert1004 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat1005 = shufflevector <4 x i32> %broadcast.splatinsert1004, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %polly.loop_header694.1
  %index998 = phi i64 [ 0, %polly.loop_header694.1 ], [ %index.next999, %vector.body996 ]
  %vec.ind1002 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1 ], [ %vec.ind.next1003, %vector.body996 ]
  %265 = add nuw nsw <4 x i64> %vec.ind1002, <i64 32, i64 32, i64 32, i64 32>
  %266 = trunc <4 x i64> %265 to <4 x i32>
  %267 = mul <4 x i32> %broadcast.splat1005, %266
  %268 = add <4 x i32> %267, <i32 2, i32 2, i32 2, i32 2>
  %269 = urem <4 x i32> %268, <i32 60, i32 60, i32 60, i32 60>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %272 = extractelement <4 x i64> %265, i32 0
  %273 = shl i64 %272, 3
  %274 = add i64 %273, %263
  %275 = getelementptr i8, i8* %call2, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %271, <4 x double>* %276, align 8, !alias.scope !90, !noalias !92
  %index.next999 = add i64 %index998, 4
  %vec.ind.next1003 = add <4 x i64> %vec.ind1002, <i64 4, i64 4, i64 4, i64 4>
  %277 = icmp eq i64 %index.next999, 28
  br i1 %277, label %polly.loop_exit702.1, label %vector.body996, !llvm.loop !101

polly.loop_exit702.1:                             ; preds = %vector.body996
  %polly.indvar_next698.1 = add nuw nsw i64 %polly.indvar697.1, 1
  %exitcond770.1.not = icmp eq i64 %polly.indvar_next698.1, 32
  br i1 %exitcond770.1.not, label %polly.loop_header694.1801, label %polly.loop_header694.1

polly.loop_header694.1801:                        ; preds = %polly.loop_exit702.1, %polly.loop_exit702.1812
  %polly.indvar697.1800 = phi i64 [ %polly.indvar_next698.1810, %polly.loop_exit702.1812 ], [ 0, %polly.loop_exit702.1 ]
  %278 = add nuw nsw i64 %polly.indvar697.1800, 32
  %279 = mul nuw nsw i64 %278, 480
  %280 = trunc i64 %278 to i32
  %broadcast.splatinsert1018 = insertelement <4 x i32> poison, i32 %280, i32 0
  %broadcast.splat1019 = shufflevector <4 x i32> %broadcast.splatinsert1018, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %polly.loop_header694.1801
  %index1010 = phi i64 [ 0, %polly.loop_header694.1801 ], [ %index.next1011, %vector.body1008 ]
  %vec.ind1016 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header694.1801 ], [ %vec.ind.next1017, %vector.body1008 ]
  %281 = mul <4 x i32> %vec.ind1016, %broadcast.splat1019
  %282 = add <4 x i32> %281, <i32 2, i32 2, i32 2, i32 2>
  %283 = urem <4 x i32> %282, <i32 60, i32 60, i32 60, i32 60>
  %284 = sitofp <4 x i32> %283 to <4 x double>
  %285 = fmul fast <4 x double> %284, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %286 = shl i64 %index1010, 3
  %287 = add i64 %286, %279
  %288 = getelementptr i8, i8* %call2, i64 %287
  %289 = bitcast i8* %288 to <4 x double>*
  store <4 x double> %285, <4 x double>* %289, align 8, !alias.scope !90, !noalias !92
  %index.next1011 = add i64 %index1010, 4
  %vec.ind.next1017 = add <4 x i32> %vec.ind1016, <i32 4, i32 4, i32 4, i32 4>
  %290 = icmp eq i64 %index.next1011, 32
  br i1 %290, label %polly.loop_exit702.1812, label %vector.body1008, !llvm.loop !102

polly.loop_exit702.1812:                          ; preds = %vector.body1008
  %polly.indvar_next698.1810 = add nuw nsw i64 %polly.indvar697.1800, 1
  %exitcond770.1811.not = icmp eq i64 %polly.indvar_next698.1810, 32
  br i1 %exitcond770.1811.not, label %polly.loop_header694.1.1, label %polly.loop_header694.1801

polly.loop_header694.1.1:                         ; preds = %polly.loop_exit702.1812, %polly.loop_exit702.1.1
  %polly.indvar697.1.1 = phi i64 [ %polly.indvar_next698.1.1, %polly.loop_exit702.1.1 ], [ 0, %polly.loop_exit702.1812 ]
  %291 = add nuw nsw i64 %polly.indvar697.1.1, 32
  %292 = mul nuw nsw i64 %291, 480
  %293 = trunc i64 %291 to i32
  %broadcast.splatinsert1030 = insertelement <4 x i32> poison, i32 %293, i32 0
  %broadcast.splat1031 = shufflevector <4 x i32> %broadcast.splatinsert1030, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %polly.loop_header694.1.1
  %index1024 = phi i64 [ 0, %polly.loop_header694.1.1 ], [ %index.next1025, %vector.body1022 ]
  %vec.ind1028 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1.1 ], [ %vec.ind.next1029, %vector.body1022 ]
  %294 = add nuw nsw <4 x i64> %vec.ind1028, <i64 32, i64 32, i64 32, i64 32>
  %295 = trunc <4 x i64> %294 to <4 x i32>
  %296 = mul <4 x i32> %broadcast.splat1031, %295
  %297 = add <4 x i32> %296, <i32 2, i32 2, i32 2, i32 2>
  %298 = urem <4 x i32> %297, <i32 60, i32 60, i32 60, i32 60>
  %299 = sitofp <4 x i32> %298 to <4 x double>
  %300 = fmul fast <4 x double> %299, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %301 = extractelement <4 x i64> %294, i32 0
  %302 = shl i64 %301, 3
  %303 = add i64 %302, %292
  %304 = getelementptr i8, i8* %call2, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %300, <4 x double>* %305, align 8, !alias.scope !90, !noalias !92
  %index.next1025 = add i64 %index1024, 4
  %vec.ind.next1029 = add <4 x i64> %vec.ind1028, <i64 4, i64 4, i64 4, i64 4>
  %306 = icmp eq i64 %index.next1025, 28
  br i1 %306, label %polly.loop_exit702.1.1, label %vector.body1022, !llvm.loop !103

polly.loop_exit702.1.1:                           ; preds = %vector.body1022
  %polly.indvar_next698.1.1 = add nuw nsw i64 %polly.indvar697.1.1, 1
  %exitcond770.1.1.not = icmp eq i64 %polly.indvar_next698.1.1, 32
  br i1 %exitcond770.1.1.not, label %polly.loop_header694.2, label %polly.loop_header694.1.1

polly.loop_header694.2:                           ; preds = %polly.loop_exit702.1.1, %polly.loop_exit702.2
  %polly.indvar697.2 = phi i64 [ %polly.indvar_next698.2, %polly.loop_exit702.2 ], [ 0, %polly.loop_exit702.1.1 ]
  %307 = add nuw nsw i64 %polly.indvar697.2, 64
  %308 = mul nuw nsw i64 %307, 480
  %309 = trunc i64 %307 to i32
  %broadcast.splatinsert1044 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1045 = shufflevector <4 x i32> %broadcast.splatinsert1044, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %polly.loop_header694.2
  %index1036 = phi i64 [ 0, %polly.loop_header694.2 ], [ %index.next1037, %vector.body1034 ]
  %vec.ind1042 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header694.2 ], [ %vec.ind.next1043, %vector.body1034 ]
  %310 = mul <4 x i32> %vec.ind1042, %broadcast.splat1045
  %311 = add <4 x i32> %310, <i32 2, i32 2, i32 2, i32 2>
  %312 = urem <4 x i32> %311, <i32 60, i32 60, i32 60, i32 60>
  %313 = sitofp <4 x i32> %312 to <4 x double>
  %314 = fmul fast <4 x double> %313, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %315 = shl i64 %index1036, 3
  %316 = add i64 %315, %308
  %317 = getelementptr i8, i8* %call2, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %314, <4 x double>* %318, align 8, !alias.scope !90, !noalias !92
  %index.next1037 = add i64 %index1036, 4
  %vec.ind.next1043 = add <4 x i32> %vec.ind1042, <i32 4, i32 4, i32 4, i32 4>
  %319 = icmp eq i64 %index.next1037, 32
  br i1 %319, label %polly.loop_exit702.2, label %vector.body1034, !llvm.loop !104

polly.loop_exit702.2:                             ; preds = %vector.body1034
  %polly.indvar_next698.2 = add nuw nsw i64 %polly.indvar697.2, 1
  %exitcond770.2.not = icmp eq i64 %polly.indvar_next698.2, 16
  br i1 %exitcond770.2.not, label %polly.loop_header694.1.2, label %polly.loop_header694.2

polly.loop_header694.1.2:                         ; preds = %polly.loop_exit702.2, %polly.loop_exit702.1.2
  %polly.indvar697.1.2 = phi i64 [ %polly.indvar_next698.1.2, %polly.loop_exit702.1.2 ], [ 0, %polly.loop_exit702.2 ]
  %320 = add nuw nsw i64 %polly.indvar697.1.2, 64
  %321 = mul nuw nsw i64 %320, 480
  %322 = trunc i64 %320 to i32
  %broadcast.splatinsert1056 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1057 = shufflevector <4 x i32> %broadcast.splatinsert1056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %polly.loop_header694.1.2
  %index1050 = phi i64 [ 0, %polly.loop_header694.1.2 ], [ %index.next1051, %vector.body1048 ]
  %vec.ind1054 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1.2 ], [ %vec.ind.next1055, %vector.body1048 ]
  %323 = add nuw nsw <4 x i64> %vec.ind1054, <i64 32, i64 32, i64 32, i64 32>
  %324 = trunc <4 x i64> %323 to <4 x i32>
  %325 = mul <4 x i32> %broadcast.splat1057, %324
  %326 = add <4 x i32> %325, <i32 2, i32 2, i32 2, i32 2>
  %327 = urem <4 x i32> %326, <i32 60, i32 60, i32 60, i32 60>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %330 = extractelement <4 x i64> %323, i32 0
  %331 = shl i64 %330, 3
  %332 = add i64 %331, %321
  %333 = getelementptr i8, i8* %call2, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %329, <4 x double>* %334, align 8, !alias.scope !90, !noalias !92
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1055 = add <4 x i64> %vec.ind1054, <i64 4, i64 4, i64 4, i64 4>
  %335 = icmp eq i64 %index.next1051, 28
  br i1 %335, label %polly.loop_exit702.1.2, label %vector.body1048, !llvm.loop !105

polly.loop_exit702.1.2:                           ; preds = %vector.body1048
  %polly.indvar_next698.1.2 = add nuw nsw i64 %polly.indvar697.1.2, 1
  %exitcond770.1.2.not = icmp eq i64 %polly.indvar_next698.1.2, 16
  br i1 %exitcond770.1.2.not, label %polly.loop_header720, label %polly.loop_header694.1.2

polly.loop_header667.1:                           ; preds = %polly.loop_exit675, %polly.loop_exit675.1
  %polly.indvar670.1 = phi i64 [ %polly.indvar_next671.1, %polly.loop_exit675.1 ], [ 0, %polly.loop_exit675 ]
  %336 = mul nuw nsw i64 %polly.indvar670.1, 640
  %337 = trunc i64 %polly.indvar670.1 to i32
  %broadcast.splatinsert890 = insertelement <4 x i32> poison, i32 %337, i32 0
  %broadcast.splat891 = shufflevector <4 x i32> %broadcast.splatinsert890, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body882

vector.body882:                                   ; preds = %vector.body882, %polly.loop_header667.1
  %index884 = phi i64 [ 0, %polly.loop_header667.1 ], [ %index.next885, %vector.body882 ]
  %vec.ind888 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.1 ], [ %vec.ind.next889, %vector.body882 ]
  %338 = add nuw nsw <4 x i64> %vec.ind888, <i64 32, i64 32, i64 32, i64 32>
  %339 = trunc <4 x i64> %338 to <4 x i32>
  %340 = mul <4 x i32> %broadcast.splat891, %339
  %341 = add <4 x i32> %340, <i32 3, i32 3, i32 3, i32 3>
  %342 = urem <4 x i32> %341, <i32 80, i32 80, i32 80, i32 80>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = extractelement <4 x i64> %338, i32 0
  %346 = shl i64 %345, 3
  %347 = add nuw nsw i64 %346, %336
  %348 = getelementptr i8, i8* %call, i64 %347
  %349 = bitcast i8* %348 to <4 x double>*
  store <4 x double> %344, <4 x double>* %349, align 8, !alias.scope !86, !noalias !88
  %index.next885 = add i64 %index884, 4
  %vec.ind.next889 = add <4 x i64> %vec.ind888, <i64 4, i64 4, i64 4, i64 4>
  %350 = icmp eq i64 %index.next885, 32
  br i1 %350, label %polly.loop_exit675.1, label %vector.body882, !llvm.loop !106

polly.loop_exit675.1:                             ; preds = %vector.body882
  %polly.indvar_next671.1 = add nuw nsw i64 %polly.indvar670.1, 1
  %exitcond779.1.not = icmp eq i64 %polly.indvar_next671.1, 32
  br i1 %exitcond779.1.not, label %polly.loop_header667.2, label %polly.loop_header667.1

polly.loop_header667.2:                           ; preds = %polly.loop_exit675.1, %polly.loop_exit675.2
  %polly.indvar670.2 = phi i64 [ %polly.indvar_next671.2, %polly.loop_exit675.2 ], [ 0, %polly.loop_exit675.1 ]
  %351 = mul nuw nsw i64 %polly.indvar670.2, 640
  %352 = trunc i64 %polly.indvar670.2 to i32
  %broadcast.splatinsert902 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat903 = shufflevector <4 x i32> %broadcast.splatinsert902, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body894

vector.body894:                                   ; preds = %vector.body894, %polly.loop_header667.2
  %index896 = phi i64 [ 0, %polly.loop_header667.2 ], [ %index.next897, %vector.body894 ]
  %vec.ind900 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.2 ], [ %vec.ind.next901, %vector.body894 ]
  %353 = add nuw nsw <4 x i64> %vec.ind900, <i64 64, i64 64, i64 64, i64 64>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat903, %354
  %356 = add <4 x i32> %355, <i32 3, i32 3, i32 3, i32 3>
  %357 = urem <4 x i32> %356, <i32 80, i32 80, i32 80, i32 80>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add nuw nsw i64 %361, %351
  %363 = getelementptr i8, i8* %call, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !86, !noalias !88
  %index.next897 = add i64 %index896, 4
  %vec.ind.next901 = add <4 x i64> %vec.ind900, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next897, 16
  br i1 %365, label %polly.loop_exit675.2, label %vector.body894, !llvm.loop !107

polly.loop_exit675.2:                             ; preds = %vector.body894
  %polly.indvar_next671.2 = add nuw nsw i64 %polly.indvar670.2, 1
  %exitcond779.2.not = icmp eq i64 %polly.indvar_next671.2, 32
  br i1 %exitcond779.2.not, label %polly.loop_header667.1815, label %polly.loop_header667.2

polly.loop_header667.1815:                        ; preds = %polly.loop_exit675.2, %polly.loop_exit675.1826
  %polly.indvar670.1814 = phi i64 [ %polly.indvar_next671.1824, %polly.loop_exit675.1826 ], [ 0, %polly.loop_exit675.2 ]
  %366 = add nuw nsw i64 %polly.indvar670.1814, 32
  %367 = mul nuw nsw i64 %366, 640
  %368 = trunc i64 %366 to i32
  %broadcast.splatinsert916 = insertelement <4 x i32> poison, i32 %368, i32 0
  %broadcast.splat917 = shufflevector <4 x i32> %broadcast.splatinsert916, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body906

vector.body906:                                   ; preds = %vector.body906, %polly.loop_header667.1815
  %index908 = phi i64 [ 0, %polly.loop_header667.1815 ], [ %index.next909, %vector.body906 ]
  %vec.ind914 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header667.1815 ], [ %vec.ind.next915, %vector.body906 ]
  %369 = mul <4 x i32> %vec.ind914, %broadcast.splat917
  %370 = add <4 x i32> %369, <i32 3, i32 3, i32 3, i32 3>
  %371 = urem <4 x i32> %370, <i32 80, i32 80, i32 80, i32 80>
  %372 = sitofp <4 x i32> %371 to <4 x double>
  %373 = fmul fast <4 x double> %372, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %374 = shl i64 %index908, 3
  %375 = add nuw nsw i64 %374, %367
  %376 = getelementptr i8, i8* %call, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %373, <4 x double>* %377, align 8, !alias.scope !86, !noalias !88
  %index.next909 = add i64 %index908, 4
  %vec.ind.next915 = add <4 x i32> %vec.ind914, <i32 4, i32 4, i32 4, i32 4>
  %378 = icmp eq i64 %index.next909, 32
  br i1 %378, label %polly.loop_exit675.1826, label %vector.body906, !llvm.loop !108

polly.loop_exit675.1826:                          ; preds = %vector.body906
  %polly.indvar_next671.1824 = add nuw nsw i64 %polly.indvar670.1814, 1
  %exitcond779.1825.not = icmp eq i64 %polly.indvar_next671.1824, 32
  br i1 %exitcond779.1825.not, label %polly.loop_header667.1.1, label %polly.loop_header667.1815

polly.loop_header667.1.1:                         ; preds = %polly.loop_exit675.1826, %polly.loop_exit675.1.1
  %polly.indvar670.1.1 = phi i64 [ %polly.indvar_next671.1.1, %polly.loop_exit675.1.1 ], [ 0, %polly.loop_exit675.1826 ]
  %379 = add nuw nsw i64 %polly.indvar670.1.1, 32
  %380 = mul nuw nsw i64 %379, 640
  %381 = trunc i64 %379 to i32
  %broadcast.splatinsert928 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat929 = shufflevector <4 x i32> %broadcast.splatinsert928, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body920

vector.body920:                                   ; preds = %vector.body920, %polly.loop_header667.1.1
  %index922 = phi i64 [ 0, %polly.loop_header667.1.1 ], [ %index.next923, %vector.body920 ]
  %vec.ind926 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.1.1 ], [ %vec.ind.next927, %vector.body920 ]
  %382 = add nuw nsw <4 x i64> %vec.ind926, <i64 32, i64 32, i64 32, i64 32>
  %383 = trunc <4 x i64> %382 to <4 x i32>
  %384 = mul <4 x i32> %broadcast.splat929, %383
  %385 = add <4 x i32> %384, <i32 3, i32 3, i32 3, i32 3>
  %386 = urem <4 x i32> %385, <i32 80, i32 80, i32 80, i32 80>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %389 = extractelement <4 x i64> %382, i32 0
  %390 = shl i64 %389, 3
  %391 = add nuw nsw i64 %390, %380
  %392 = getelementptr i8, i8* %call, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %388, <4 x double>* %393, align 8, !alias.scope !86, !noalias !88
  %index.next923 = add i64 %index922, 4
  %vec.ind.next927 = add <4 x i64> %vec.ind926, <i64 4, i64 4, i64 4, i64 4>
  %394 = icmp eq i64 %index.next923, 32
  br i1 %394, label %polly.loop_exit675.1.1, label %vector.body920, !llvm.loop !109

polly.loop_exit675.1.1:                           ; preds = %vector.body920
  %polly.indvar_next671.1.1 = add nuw nsw i64 %polly.indvar670.1.1, 1
  %exitcond779.1.1.not = icmp eq i64 %polly.indvar_next671.1.1, 32
  br i1 %exitcond779.1.1.not, label %polly.loop_header667.2.1, label %polly.loop_header667.1.1

polly.loop_header667.2.1:                         ; preds = %polly.loop_exit675.1.1, %polly.loop_exit675.2.1
  %polly.indvar670.2.1 = phi i64 [ %polly.indvar_next671.2.1, %polly.loop_exit675.2.1 ], [ 0, %polly.loop_exit675.1.1 ]
  %395 = add nuw nsw i64 %polly.indvar670.2.1, 32
  %396 = mul nuw nsw i64 %395, 640
  %397 = trunc i64 %395 to i32
  %broadcast.splatinsert940 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat941 = shufflevector <4 x i32> %broadcast.splatinsert940, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body932

vector.body932:                                   ; preds = %vector.body932, %polly.loop_header667.2.1
  %index934 = phi i64 [ 0, %polly.loop_header667.2.1 ], [ %index.next935, %vector.body932 ]
  %vec.ind938 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.2.1 ], [ %vec.ind.next939, %vector.body932 ]
  %398 = add nuw nsw <4 x i64> %vec.ind938, <i64 64, i64 64, i64 64, i64 64>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat941, %399
  %401 = add <4 x i32> %400, <i32 3, i32 3, i32 3, i32 3>
  %402 = urem <4 x i32> %401, <i32 80, i32 80, i32 80, i32 80>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add nuw nsw i64 %406, %396
  %408 = getelementptr i8, i8* %call, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !86, !noalias !88
  %index.next935 = add i64 %index934, 4
  %vec.ind.next939 = add <4 x i64> %vec.ind938, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next935, 16
  br i1 %410, label %polly.loop_exit675.2.1, label %vector.body932, !llvm.loop !110

polly.loop_exit675.2.1:                           ; preds = %vector.body932
  %polly.indvar_next671.2.1 = add nuw nsw i64 %polly.indvar670.2.1, 1
  %exitcond779.2.1.not = icmp eq i64 %polly.indvar_next671.2.1, 32
  br i1 %exitcond779.2.1.not, label %polly.loop_header667.2829, label %polly.loop_header667.2.1

polly.loop_header667.2829:                        ; preds = %polly.loop_exit675.2.1, %polly.loop_exit675.2840
  %polly.indvar670.2828 = phi i64 [ %polly.indvar_next671.2838, %polly.loop_exit675.2840 ], [ 0, %polly.loop_exit675.2.1 ]
  %411 = add nuw nsw i64 %polly.indvar670.2828, 64
  %412 = mul nuw nsw i64 %411, 640
  %413 = trunc i64 %411 to i32
  %broadcast.splatinsert954 = insertelement <4 x i32> poison, i32 %413, i32 0
  %broadcast.splat955 = shufflevector <4 x i32> %broadcast.splatinsert954, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %polly.loop_header667.2829
  %index946 = phi i64 [ 0, %polly.loop_header667.2829 ], [ %index.next947, %vector.body944 ]
  %vec.ind952 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header667.2829 ], [ %vec.ind.next953, %vector.body944 ]
  %414 = mul <4 x i32> %vec.ind952, %broadcast.splat955
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = shl i64 %index946, 3
  %420 = add nuw nsw i64 %419, %412
  %421 = getelementptr i8, i8* %call, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %418, <4 x double>* %422, align 8, !alias.scope !86, !noalias !88
  %index.next947 = add i64 %index946, 4
  %vec.ind.next953 = add <4 x i32> %vec.ind952, <i32 4, i32 4, i32 4, i32 4>
  %423 = icmp eq i64 %index.next947, 32
  br i1 %423, label %polly.loop_exit675.2840, label %vector.body944, !llvm.loop !111

polly.loop_exit675.2840:                          ; preds = %vector.body944
  %polly.indvar_next671.2838 = add nuw nsw i64 %polly.indvar670.2828, 1
  %exitcond779.2839.not = icmp eq i64 %polly.indvar_next671.2838, 16
  br i1 %exitcond779.2839.not, label %polly.loop_header667.1.2, label %polly.loop_header667.2829

polly.loop_header667.1.2:                         ; preds = %polly.loop_exit675.2840, %polly.loop_exit675.1.2
  %polly.indvar670.1.2 = phi i64 [ %polly.indvar_next671.1.2, %polly.loop_exit675.1.2 ], [ 0, %polly.loop_exit675.2840 ]
  %424 = add nuw nsw i64 %polly.indvar670.1.2, 64
  %425 = mul nuw nsw i64 %424, 640
  %426 = trunc i64 %424 to i32
  %broadcast.splatinsert966 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat967 = shufflevector <4 x i32> %broadcast.splatinsert966, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body958

vector.body958:                                   ; preds = %vector.body958, %polly.loop_header667.1.2
  %index960 = phi i64 [ 0, %polly.loop_header667.1.2 ], [ %index.next961, %vector.body958 ]
  %vec.ind964 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.1.2 ], [ %vec.ind.next965, %vector.body958 ]
  %427 = add nuw nsw <4 x i64> %vec.ind964, <i64 32, i64 32, i64 32, i64 32>
  %428 = trunc <4 x i64> %427 to <4 x i32>
  %429 = mul <4 x i32> %broadcast.splat967, %428
  %430 = add <4 x i32> %429, <i32 3, i32 3, i32 3, i32 3>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %434 = extractelement <4 x i64> %427, i32 0
  %435 = shl i64 %434, 3
  %436 = add nuw nsw i64 %435, %425
  %437 = getelementptr i8, i8* %call, i64 %436
  %438 = bitcast i8* %437 to <4 x double>*
  store <4 x double> %433, <4 x double>* %438, align 8, !alias.scope !86, !noalias !88
  %index.next961 = add i64 %index960, 4
  %vec.ind.next965 = add <4 x i64> %vec.ind964, <i64 4, i64 4, i64 4, i64 4>
  %439 = icmp eq i64 %index.next961, 32
  br i1 %439, label %polly.loop_exit675.1.2, label %vector.body958, !llvm.loop !112

polly.loop_exit675.1.2:                           ; preds = %vector.body958
  %polly.indvar_next671.1.2 = add nuw nsw i64 %polly.indvar670.1.2, 1
  %exitcond779.1.2.not = icmp eq i64 %polly.indvar_next671.1.2, 16
  br i1 %exitcond779.1.2.not, label %polly.loop_header667.2.2, label %polly.loop_header667.1.2

polly.loop_header667.2.2:                         ; preds = %polly.loop_exit675.1.2, %polly.loop_exit675.2.2
  %polly.indvar670.2.2 = phi i64 [ %polly.indvar_next671.2.2, %polly.loop_exit675.2.2 ], [ 0, %polly.loop_exit675.1.2 ]
  %440 = add nuw nsw i64 %polly.indvar670.2.2, 64
  %441 = mul nuw nsw i64 %440, 640
  %442 = trunc i64 %440 to i32
  %broadcast.splatinsert978 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat979 = shufflevector <4 x i32> %broadcast.splatinsert978, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body970

vector.body970:                                   ; preds = %vector.body970, %polly.loop_header667.2.2
  %index972 = phi i64 [ 0, %polly.loop_header667.2.2 ], [ %index.next973, %vector.body970 ]
  %vec.ind976 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header667.2.2 ], [ %vec.ind.next977, %vector.body970 ]
  %443 = add nuw nsw <4 x i64> %vec.ind976, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat979, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !86, !noalias !88
  %index.next973 = add i64 %index972, 4
  %vec.ind.next977 = add <4 x i64> %vec.ind976, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next973, 16
  br i1 %455, label %polly.loop_exit675.2.2, label %vector.body970, !llvm.loop !113

polly.loop_exit675.2.2:                           ; preds = %vector.body970
  %polly.indvar_next671.2.2 = add nuw nsw i64 %polly.indvar670.2.2, 1
  %exitcond779.2.2.not = icmp eq i64 %polly.indvar_next671.2.2, 16
  br i1 %exitcond779.2.2.not, label %polly.loop_header694, label %polly.loop_header667.2.2
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
!33 = !{!"llvm.loop.tile.size", i32 32}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !24, !44, !47}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !46}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.tile.followup_tile", !48}
!48 = distinct !{!48, !12, !49}
!49 = !{!"llvm.loop.id", !"i2"}
!50 = distinct !{!50, !12, !13}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !4, i64 0}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !59, !"polly.alias.scope.MemRef_call"}
!59 = distinct !{!59, !"polly.alias.scope.domain"}
!60 = !{!61, !62}
!61 = distinct !{!61, !59, !"polly.alias.scope.MemRef_call1"}
!62 = distinct !{!62, !59, !"polly.alias.scope.MemRef_call2"}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !65, !13}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!58, !61}
!67 = !{!58, !62}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !65, !13}
!75 = !{!68, !71}
!76 = !{!68, !72}
!77 = distinct !{!77, !78, !"polly.alias.scope.MemRef_call"}
!78 = distinct !{!78, !"polly.alias.scope.domain"}
!79 = !{!80, !81}
!80 = distinct !{!80, !78, !"polly.alias.scope.MemRef_call1"}
!81 = distinct !{!81, !78, !"polly.alias.scope.MemRef_call2"}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !65, !13}
!84 = !{!77, !80}
!85 = !{!77, !81}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = !{!89, !86}
!93 = distinct !{!93, !13}
!94 = !{!90, !86}
!95 = distinct !{!95, !13}
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
