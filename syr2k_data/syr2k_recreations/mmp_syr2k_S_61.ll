; ModuleID = 'syr2k_recreations//mmp_syr2k_S_61.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_61.c"
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
  %call690 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #5
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #5
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1551 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1551, %call2
  %polly.access.call2571 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2571, %call1
  %2 = or i1 %0, %1
  %polly.access.call591 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call591, %call2
  %4 = icmp ule i8* %polly.access.call2571, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call591, %call1
  %8 = icmp ule i8* %polly.access.call1551, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header676, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep874 = getelementptr i8, i8* %call2, i64 %12
  %scevgep873 = getelementptr i8, i8* %call2, i64 %11
  %scevgep872 = getelementptr i8, i8* %call1, i64 %12
  %scevgep871 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep871, %scevgep874
  %bound1 = icmp ult i8* %scevgep873, %scevgep872
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
  br i1 %exitcond18.not.i, label %vector.ph878, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph878:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert885 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat886 = shufflevector <4 x i64> %broadcast.splatinsert885, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body877

vector.body877:                                   ; preds = %vector.body877, %vector.ph878
  %index879 = phi i64 [ 0, %vector.ph878 ], [ %index.next880, %vector.body877 ]
  %vec.ind883 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph878 ], [ %vec.ind.next884, %vector.body877 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind883, %broadcast.splat886
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv7.i, i64 %index879
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next880 = add i64 %index879, 4
  %vec.ind.next884 = add <4 x i64> %vec.ind883, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next880, 80
  br i1 %40, label %for.inc41.i, label %vector.body877, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body877
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph878, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit737.1.2
  tail call void (...) @polybench_timer_start() #5
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header477, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1234, label %vector.ph1160

vector.ph1160:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %vector.ph1160
  %index1161 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1162, %vector.body1159 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i, i64 %index1161
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1162 = add i64 %index1161, 4
  %46 = icmp eq i64 %index.next1162, %n.vec
  br i1 %46, label %middle.block1157, label %vector.body1159, !llvm.loop !18

middle.block1157:                                 ; preds = %vector.body1159
  %cmp.n1164 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1164, label %for.inc6.i, label %for.body3.i46.preheader1234

for.body3.i46.preheader1234:                      ; preds = %for.body3.i46.preheader, %middle.block1157
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1157 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1234, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1234 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1157, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit507.4
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header330, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1180 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1180, label %for.body3.i60.preheader1232, label %vector.ph1181

vector.ph1181:                                    ; preds = %for.body3.i60.preheader
  %n.vec1183 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %vector.ph1181
  %index1184 = phi i64 [ 0, %vector.ph1181 ], [ %index.next1185, %vector.body1179 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i52, i64 %index1184
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1188 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1188, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1185 = add i64 %index1184, 4
  %57 = icmp eq i64 %index.next1185, %n.vec1183
  br i1 %57, label %middle.block1177, label %vector.body1179, !llvm.loop !54

middle.block1177:                                 ; preds = %vector.body1179
  %cmp.n1187 = icmp eq i64 %indvars.iv21.i52, %n.vec1183
  br i1 %cmp.n1187, label %for.inc6.i63, label %for.body3.i60.preheader1232

for.body3.i60.preheader1232:                      ; preds = %for.body3.i60.preheader, %middle.block1177
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1183, %middle.block1177 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1232, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1232 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1177, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit360.4
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1206 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1206, label %for.body3.i99.preheader1230, label %vector.ph1207

vector.ph1207:                                    ; preds = %for.body3.i99.preheader
  %n.vec1209 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1211, %vector.body1205 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i91, i64 %index1210
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1214 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1214, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1211 = add i64 %index1210, 4
  %68 = icmp eq i64 %index.next1211, %n.vec1209
  br i1 %68, label %middle.block1203, label %vector.body1205, !llvm.loop !56

middle.block1203:                                 ; preds = %vector.body1205
  %cmp.n1213 = icmp eq i64 %indvars.iv21.i91, %n.vec1209
  br i1 %cmp.n1213, label %for.inc6.i102, label %for.body3.i99.preheader1230

for.body3.i99.preheader1230:                      ; preds = %for.body3.i99.preheader, %middle.block1203
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1209, %middle.block1203 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1230, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1230 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1203, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.4
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #6
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #6
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #6
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #5
  tail call void @free(i8* %call1) #5
  tail call void @free(i8* %call2) #5
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1218 = phi i64 [ %indvar.next1219, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1218, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1220 = icmp ult i64 %88, 4
  br i1 %min.iters.check1220, label %polly.loop_header191.preheader, label %vector.ph1221

vector.ph1221:                                    ; preds = %polly.loop_header
  %n.vec1223 = and i64 %88, -4
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1221
  %index1224 = phi i64 [ 0, %vector.ph1221 ], [ %index.next1225, %vector.body1217 ]
  %90 = shl nuw nsw i64 %index1224, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1228 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1228, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1225 = add i64 %index1224, 4
  %95 = icmp eq i64 %index.next1225, %n.vec1223
  br i1 %95, label %middle.block1215, label %vector.body1217, !llvm.loop !67

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1227 = icmp eq i64 %88, %n.vec1223
  br i1 %cmp.n1227, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1215
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1223, %middle.block1215 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1215
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond759.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1219 = add i64 %indvar1218, 1
  br i1 %exitcond759.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond758.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond758.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.4
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit213.4 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %98 = add nuw nsw i64 %polly.indvar214, %97
  %99 = shl i64 %98, 3
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond755.not = icmp eq i64 %polly.indvar_next215, 20
  br i1 %exitcond755.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %polly.loop_exit225 ], [ 1, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ 0, %polly.loop_header211 ]
  %100 = mul nuw nsw i64 %polly.indvar220, 480
  %101 = add nuw nsw i64 %100, %99
  %scevgep232 = getelementptr i8, i8* %call2, i64 %101
  %scevgep232233 = bitcast i8* %scevgep232 to double*
  %_p_scalar_234 = load double, double* %scevgep232233, align 8, !alias.scope !66, !noalias !70
  %scevgep238 = getelementptr i8, i8* %call1, i64 %101
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !65, !noalias !71
  %102 = mul nuw nsw i64 %polly.indvar220, 640
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, 1
  %exitcond754.not = icmp eq i64 %polly.indvar_next221, 16
  br i1 %exitcond754.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %103 = mul nuw nsw i64 %polly.indvar226, 480
  %104 = add nuw nsw i64 %103, %99
  %scevgep229 = getelementptr i8, i8* %call1, i64 %104
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_234, %_p_scalar_231
  %scevgep235 = getelementptr i8, i8* %call2, i64 %104
  %scevgep235236 = bitcast i8* %scevgep235 to double*
  %_p_scalar_237 = load double, double* %scevgep235236, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_240, %_p_scalar_237
  %105 = shl nuw nsw i64 %polly.indvar226, 3
  %106 = add nuw nsw i64 %105, %102
  %scevgep241 = getelementptr i8, i8* %call, i64 %106
  %scevgep241242 = bitcast i8* %scevgep241 to double*
  %_p_scalar_243 = load double, double* %scevgep241242, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_243
  store double %p_add42.i118, double* %scevgep241242, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, %indvars.iv752
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header330:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit338
  %indvar1192 = phi i64 [ %indvar.next1193, %polly.loop_exit338 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar333 = phi i64 [ %polly.indvar_next334, %polly.loop_exit338 ], [ 1, %kernel_syr2k.exit ]
  %107 = add i64 %indvar1192, 1
  %108 = mul nuw nsw i64 %polly.indvar333, 640
  %scevgep342 = getelementptr i8, i8* %call, i64 %108
  %min.iters.check1194 = icmp ult i64 %107, 4
  br i1 %min.iters.check1194, label %polly.loop_header336.preheader, label %vector.ph1195

vector.ph1195:                                    ; preds = %polly.loop_header330
  %n.vec1197 = and i64 %107, -4
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1195
  %index1198 = phi i64 [ 0, %vector.ph1195 ], [ %index.next1199, %vector.body1191 ]
  %109 = shl nuw nsw i64 %index1198, 3
  %110 = getelementptr i8, i8* %scevgep342, i64 %109
  %111 = bitcast i8* %110 to <4 x double>*
  %wide.load1202 = load <4 x double>, <4 x double>* %111, align 8, !alias.scope !72, !noalias !74
  %112 = fmul fast <4 x double> %wide.load1202, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %113 = bitcast i8* %110 to <4 x double>*
  store <4 x double> %112, <4 x double>* %113, align 8, !alias.scope !72, !noalias !74
  %index.next1199 = add i64 %index1198, 4
  %114 = icmp eq i64 %index.next1199, %n.vec1197
  br i1 %114, label %middle.block1189, label %vector.body1191, !llvm.loop !77

middle.block1189:                                 ; preds = %vector.body1191
  %cmp.n1201 = icmp eq i64 %107, %n.vec1197
  br i1 %cmp.n1201, label %polly.loop_exit338, label %polly.loop_header336.preheader

polly.loop_header336.preheader:                   ; preds = %polly.loop_header330, %middle.block1189
  %polly.indvar339.ph = phi i64 [ 0, %polly.loop_header330 ], [ %n.vec1197, %middle.block1189 ]
  br label %polly.loop_header336

polly.loop_exit338:                               ; preds = %polly.loop_header336, %middle.block1189
  %polly.indvar_next334 = add nuw nsw i64 %polly.indvar333, 1
  %exitcond770.not = icmp eq i64 %polly.indvar_next334, 80
  %indvar.next1193 = add i64 %indvar1192, 1
  br i1 %exitcond770.not, label %polly.loop_header346, label %polly.loop_header330

polly.loop_header336:                             ; preds = %polly.loop_header336.preheader, %polly.loop_header336
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_header336 ], [ %polly.indvar339.ph, %polly.loop_header336.preheader ]
  %115 = shl nuw nsw i64 %polly.indvar339, 3
  %scevgep343 = getelementptr i8, i8* %scevgep342, i64 %115
  %scevgep343344 = bitcast i8* %scevgep343 to double*
  %_p_scalar_345 = load double, double* %scevgep343344, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_345, 1.200000e+00
  store double %p_mul.i57, double* %scevgep343344, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond769.not = icmp eq i64 %polly.indvar_next340, %polly.indvar333
  br i1 %exitcond769.not, label %polly.loop_exit338, label %polly.loop_header336, !llvm.loop !78

polly.loop_header346:                             ; preds = %polly.loop_exit338, %polly.loop_exit360.4
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit360.4 ], [ 0, %polly.loop_exit338 ]
  %116 = mul nuw nsw i64 %polly.indvar349, 20
  br label %polly.loop_header358

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.loop_header346
  %polly.indvar361 = phi i64 [ 0, %polly.loop_header346 ], [ %polly.indvar_next362, %polly.loop_exit366 ]
  %117 = add nuw nsw i64 %polly.indvar361, %116
  %118 = shl i64 %117, 3
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_exit372
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond766.not = icmp eq i64 %polly.indvar_next362, 20
  br i1 %exitcond766.not, label %polly.loop_header358.1, label %polly.loop_header358

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header358
  %indvars.iv762 = phi i64 [ %indvars.iv.next763, %polly.loop_exit372 ], [ 1, %polly.loop_header358 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit372 ], [ 0, %polly.loop_header358 ]
  %119 = mul nuw nsw i64 %polly.indvar367, 480
  %120 = add nuw nsw i64 %119, %118
  %scevgep379 = getelementptr i8, i8* %call2, i64 %120
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !76, !noalias !79
  %scevgep385 = getelementptr i8, i8* %call1, i64 %120
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !75, !noalias !80
  %121 = mul nuw nsw i64 %polly.indvar367, 640
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_header370
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1
  %exitcond765.not = icmp eq i64 %polly.indvar_next368, 16
  br i1 %exitcond765.not, label %polly.loop_exit366, label %polly.loop_header364

polly.loop_header370:                             ; preds = %polly.loop_header370, %polly.loop_header364
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header364 ], [ %polly.indvar_next374, %polly.loop_header370 ]
  %122 = mul nuw nsw i64 %polly.indvar373, 480
  %123 = add nuw nsw i64 %122, %118
  %scevgep376 = getelementptr i8, i8* %call1, i64 %123
  %scevgep376377 = bitcast i8* %scevgep376 to double*
  %_p_scalar_378 = load double, double* %scevgep376377, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_381, %_p_scalar_378
  %scevgep382 = getelementptr i8, i8* %call2, i64 %123
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_387, %_p_scalar_384
  %124 = shl nuw nsw i64 %polly.indvar373, 3
  %125 = add nuw nsw i64 %124, %121
  %scevgep388 = getelementptr i8, i8* %call, i64 %125
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_390
  store double %p_add42.i79, double* %scevgep388389, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond764.not = icmp eq i64 %polly.indvar_next374, %indvars.iv762
  br i1 %exitcond764.not, label %polly.loop_exit372, label %polly.loop_header370

polly.loop_header477:                             ; preds = %init_array.exit, %polly.loop_exit485
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit485 ], [ 0, %init_array.exit ]
  %polly.indvar480 = phi i64 [ %polly.indvar_next481, %polly.loop_exit485 ], [ 1, %init_array.exit ]
  %126 = add i64 %indvar, 1
  %127 = mul nuw nsw i64 %polly.indvar480, 640
  %scevgep489 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1168 = icmp ult i64 %126, 4
  br i1 %min.iters.check1168, label %polly.loop_header483.preheader, label %vector.ph1169

vector.ph1169:                                    ; preds = %polly.loop_header477
  %n.vec1171 = and i64 %126, -4
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1169
  %index1172 = phi i64 [ 0, %vector.ph1169 ], [ %index.next1173, %vector.body1167 ]
  %128 = shl nuw nsw i64 %index1172, 3
  %129 = getelementptr i8, i8* %scevgep489, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1176 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !81, !noalias !83
  %131 = fmul fast <4 x double> %wide.load1176, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !81, !noalias !83
  %index.next1173 = add i64 %index1172, 4
  %133 = icmp eq i64 %index.next1173, %n.vec1171
  br i1 %133, label %middle.block1165, label %vector.body1167, !llvm.loop !86

middle.block1165:                                 ; preds = %vector.body1167
  %cmp.n1175 = icmp eq i64 %126, %n.vec1171
  br i1 %cmp.n1175, label %polly.loop_exit485, label %polly.loop_header483.preheader

polly.loop_header483.preheader:                   ; preds = %polly.loop_header477, %middle.block1165
  %polly.indvar486.ph = phi i64 [ 0, %polly.loop_header477 ], [ %n.vec1171, %middle.block1165 ]
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483, %middle.block1165
  %polly.indvar_next481 = add nuw nsw i64 %polly.indvar480, 1
  %exitcond781.not = icmp eq i64 %polly.indvar_next481, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond781.not, label %polly.loop_header493, label %polly.loop_header477

polly.loop_header483:                             ; preds = %polly.loop_header483.preheader, %polly.loop_header483
  %polly.indvar486 = phi i64 [ %polly.indvar_next487, %polly.loop_header483 ], [ %polly.indvar486.ph, %polly.loop_header483.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar486, 3
  %scevgep490 = getelementptr i8, i8* %scevgep489, i64 %134
  %scevgep490491 = bitcast i8* %scevgep490 to double*
  %_p_scalar_492 = load double, double* %scevgep490491, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_492, 1.200000e+00
  store double %p_mul.i, double* %scevgep490491, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next487, %polly.indvar480
  br i1 %exitcond780.not, label %polly.loop_exit485, label %polly.loop_header483, !llvm.loop !87

polly.loop_header493:                             ; preds = %polly.loop_exit485, %polly.loop_exit507.4
  %polly.indvar496 = phi i64 [ %polly.indvar_next497, %polly.loop_exit507.4 ], [ 0, %polly.loop_exit485 ]
  %135 = mul nuw nsw i64 %polly.indvar496, 20
  br label %polly.loop_header505

polly.loop_header505:                             ; preds = %polly.loop_exit513, %polly.loop_header493
  %polly.indvar508 = phi i64 [ 0, %polly.loop_header493 ], [ %polly.indvar_next509, %polly.loop_exit513 ]
  %136 = add nuw nsw i64 %polly.indvar508, %135
  %137 = shl i64 %136, 3
  br label %polly.loop_header511

polly.loop_exit513:                               ; preds = %polly.loop_exit519
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next509, 20
  br i1 %exitcond777.not, label %polly.loop_header505.1, label %polly.loop_header505

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.loop_header505
  %indvars.iv773 = phi i64 [ %indvars.iv.next774, %polly.loop_exit519 ], [ 1, %polly.loop_header505 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 0, %polly.loop_header505 ]
  %138 = mul nuw nsw i64 %polly.indvar514, 480
  %139 = add nuw nsw i64 %138, %137
  %scevgep526 = getelementptr i8, i8* %call2, i64 %139
  %scevgep526527 = bitcast i8* %scevgep526 to double*
  %_p_scalar_528 = load double, double* %scevgep526527, align 8, !alias.scope !85, !noalias !88
  %scevgep532 = getelementptr i8, i8* %call1, i64 %139
  %scevgep532533 = bitcast i8* %scevgep532 to double*
  %_p_scalar_534 = load double, double* %scevgep532533, align 8, !alias.scope !84, !noalias !89
  %140 = mul nuw nsw i64 %polly.indvar514, 640
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_header517
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %indvars.iv.next774 = add nuw nsw i64 %indvars.iv773, 1
  %exitcond776.not = icmp eq i64 %polly.indvar_next515, 16
  br i1 %exitcond776.not, label %polly.loop_exit513, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_header517, %polly.loop_header511
  %polly.indvar520 = phi i64 [ 0, %polly.loop_header511 ], [ %polly.indvar_next521, %polly.loop_header517 ]
  %141 = mul nuw nsw i64 %polly.indvar520, 480
  %142 = add nuw nsw i64 %141, %137
  %scevgep523 = getelementptr i8, i8* %call1, i64 %142
  %scevgep523524 = bitcast i8* %scevgep523 to double*
  %_p_scalar_525 = load double, double* %scevgep523524, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_528, %_p_scalar_525
  %scevgep529 = getelementptr i8, i8* %call2, i64 %142
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_534, %_p_scalar_531
  %143 = shl nuw nsw i64 %polly.indvar520, 3
  %144 = add nuw nsw i64 %143, %140
  %scevgep535 = getelementptr i8, i8* %call, i64 %144
  %scevgep535536 = bitcast i8* %scevgep535 to double*
  %_p_scalar_537 = load double, double* %scevgep535536, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_537
  store double %p_add42.i, double* %scevgep535536, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond775.not = icmp eq i64 %polly.indvar_next521, %indvars.iv773
  br i1 %exitcond775.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header676:                             ; preds = %entry, %polly.loop_exit684
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_exit684 ], [ 0, %entry ]
  %145 = mul nuw nsw i64 %polly.indvar679, 640
  %146 = trunc i64 %polly.indvar679 to i32
  %broadcast.splatinsert899 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat900 = shufflevector <4 x i32> %broadcast.splatinsert899, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body889

vector.body889:                                   ; preds = %vector.body889, %polly.loop_header676
  %index891 = phi i64 [ 0, %polly.loop_header676 ], [ %index.next892, %vector.body889 ]
  %vec.ind897 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676 ], [ %vec.ind.next898, %vector.body889 ]
  %147 = mul <4 x i32> %vec.ind897, %broadcast.splat900
  %148 = add <4 x i32> %147, <i32 3, i32 3, i32 3, i32 3>
  %149 = urem <4 x i32> %148, <i32 80, i32 80, i32 80, i32 80>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index891, 3
  %153 = add nuw nsw i64 %152, %145
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !90, !noalias !92
  %index.next892 = add i64 %index891, 4
  %vec.ind.next898 = add <4 x i32> %vec.ind897, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next892, 32
  br i1 %156, label %polly.loop_exit684, label %vector.body889, !llvm.loop !95

polly.loop_exit684:                               ; preds = %vector.body889
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next680, 32
  br i1 %exitcond800.not, label %polly.loop_header676.1, label %polly.loop_header676

polly.loop_header703:                             ; preds = %polly.loop_exit684.2.2, %polly.loop_exit711
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit711 ], [ 0, %polly.loop_exit684.2.2 ]
  %157 = mul nuw nsw i64 %polly.indvar706, 480
  %158 = trunc i64 %polly.indvar706 to i32
  %broadcast.splatinsert1013 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1014 = shufflevector <4 x i32> %broadcast.splatinsert1013, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %polly.loop_header703
  %index1005 = phi i64 [ 0, %polly.loop_header703 ], [ %index.next1006, %vector.body1003 ]
  %vec.ind1011 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703 ], [ %vec.ind.next1012, %vector.body1003 ]
  %159 = mul <4 x i32> %vec.ind1011, %broadcast.splat1014
  %160 = add <4 x i32> %159, <i32 2, i32 2, i32 2, i32 2>
  %161 = urem <4 x i32> %160, <i32 60, i32 60, i32 60, i32 60>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %164 = shl i64 %index1005, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call2, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !94, !noalias !96
  %index.next1006 = add i64 %index1005, 4
  %vec.ind.next1012 = add <4 x i32> %vec.ind1011, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1006, 32
  br i1 %168, label %polly.loop_exit711, label %vector.body1003, !llvm.loop !97

polly.loop_exit711:                               ; preds = %vector.body1003
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next707, 32
  br i1 %exitcond791.not, label %polly.loop_header703.1, label %polly.loop_header703

polly.loop_header729:                             ; preds = %polly.loop_exit711.1.2, %polly.loop_exit737
  %polly.indvar732 = phi i64 [ %polly.indvar_next733, %polly.loop_exit737 ], [ 0, %polly.loop_exit711.1.2 ]
  %169 = mul nuw nsw i64 %polly.indvar732, 480
  %170 = trunc i64 %polly.indvar732 to i32
  %broadcast.splatinsert1091 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1092 = shufflevector <4 x i32> %broadcast.splatinsert1091, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %polly.loop_header729
  %index1083 = phi i64 [ 0, %polly.loop_header729 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1089 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729 ], [ %vec.ind.next1090, %vector.body1081 ]
  %171 = mul <4 x i32> %vec.ind1089, %broadcast.splat1092
  %172 = add <4 x i32> %171, <i32 1, i32 1, i32 1, i32 1>
  %173 = urem <4 x i32> %172, <i32 80, i32 80, i32 80, i32 80>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %176 = shl i64 %index1083, 3
  %177 = add i64 %176, %169
  %178 = getelementptr i8, i8* %call1, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !93, !noalias !98
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1090 = add <4 x i32> %vec.ind1089, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1084, 32
  br i1 %180, label %polly.loop_exit737, label %vector.body1081, !llvm.loop !99

polly.loop_exit737:                               ; preds = %vector.body1081
  %polly.indvar_next733 = add nuw nsw i64 %polly.indvar732, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next733, 32
  br i1 %exitcond785.not, label %polly.loop_header729.1, label %polly.loop_header729

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %181 = add nuw nsw i64 %polly.indvar214.1, %97
  %182 = shl i64 %181, 3
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %indvars.iv752.1 = phi i64 [ %indvars.iv.next753.1, %polly.loop_exit225.1 ], [ 17, %polly.loop_header211.1 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit225.1 ], [ 0, %polly.loop_header211.1 ]
  %183 = add nuw nsw i64 %polly.indvar220.1, 16
  %184 = mul nuw nsw i64 %183, 480
  %185 = add nuw nsw i64 %184, %182
  %scevgep232.1 = getelementptr i8, i8* %call2, i64 %185
  %scevgep232233.1 = bitcast i8* %scevgep232.1 to double*
  %_p_scalar_234.1 = load double, double* %scevgep232233.1, align 8, !alias.scope !66, !noalias !70
  %scevgep238.1 = getelementptr i8, i8* %call1, i64 %185
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !65, !noalias !71
  %186 = mul nuw nsw i64 %183, 640
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %187 = mul nuw nsw i64 %polly.indvar226.1, 480
  %188 = add nuw nsw i64 %187, %182
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %188
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_234.1, %_p_scalar_231.1
  %scevgep235.1 = getelementptr i8, i8* %call2, i64 %188
  %scevgep235236.1 = bitcast i8* %scevgep235.1 to double*
  %_p_scalar_237.1 = load double, double* %scevgep235236.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_240.1, %_p_scalar_237.1
  %189 = shl nuw nsw i64 %polly.indvar226.1, 3
  %190 = add nuw nsw i64 %189, %186
  %scevgep241.1 = getelementptr i8, i8* %call, i64 %190
  %scevgep241242.1 = bitcast i8* %scevgep241.1 to double*
  %_p_scalar_243.1 = load double, double* %scevgep241242.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_243.1
  store double %p_add42.i118.1, double* %scevgep241242.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next227.1, %indvars.iv752.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %indvars.iv.next753.1 = add nuw nsw i64 %indvars.iv752.1, 1
  %exitcond754.1.not = icmp eq i64 %polly.indvar_next221.1, 16
  br i1 %exitcond754.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond755.1.not = icmp eq i64 %polly.indvar_next215.1, 20
  br i1 %exitcond755.1.not, label %polly.loop_header211.2, label %polly.loop_header211.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit219.2
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit219.1 ]
  %191 = add nuw nsw i64 %polly.indvar214.2, %97
  %192 = shl i64 %191, 3
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.2, %polly.loop_header211.2
  %indvars.iv752.2 = phi i64 [ %indvars.iv.next753.2, %polly.loop_exit225.2 ], [ 33, %polly.loop_header211.2 ]
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_exit225.2 ], [ 0, %polly.loop_header211.2 ]
  %193 = add nuw nsw i64 %polly.indvar220.2, 32
  %194 = mul nuw nsw i64 %193, 480
  %195 = add nuw nsw i64 %194, %192
  %scevgep232.2 = getelementptr i8, i8* %call2, i64 %195
  %scevgep232233.2 = bitcast i8* %scevgep232.2 to double*
  %_p_scalar_234.2 = load double, double* %scevgep232233.2, align 8, !alias.scope !66, !noalias !70
  %scevgep238.2 = getelementptr i8, i8* %call1, i64 %195
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !65, !noalias !71
  %196 = mul nuw nsw i64 %193, 640
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_header217.2
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_header217.2 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %197 = mul nuw nsw i64 %polly.indvar226.2, 480
  %198 = add nuw nsw i64 %197, %192
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %198
  %scevgep229230.2 = bitcast i8* %scevgep229.2 to double*
  %_p_scalar_231.2 = load double, double* %scevgep229230.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_234.2, %_p_scalar_231.2
  %scevgep235.2 = getelementptr i8, i8* %call2, i64 %198
  %scevgep235236.2 = bitcast i8* %scevgep235.2 to double*
  %_p_scalar_237.2 = load double, double* %scevgep235236.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_240.2, %_p_scalar_237.2
  %199 = shl nuw nsw i64 %polly.indvar226.2, 3
  %200 = add nuw nsw i64 %199, %196
  %scevgep241.2 = getelementptr i8, i8* %call, i64 %200
  %scevgep241242.2 = bitcast i8* %scevgep241.2 to double*
  %_p_scalar_243.2 = load double, double* %scevgep241242.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_243.2
  store double %p_add42.i118.2, double* %scevgep241242.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next227.2, %indvars.iv752.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %indvars.iv.next753.2 = add nuw nsw i64 %indvars.iv752.2, 1
  %exitcond754.2.not = icmp eq i64 %polly.indvar_next221.2, 16
  br i1 %exitcond754.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond755.2.not = icmp eq i64 %polly.indvar_next215.2, 20
  br i1 %exitcond755.2.not, label %polly.loop_header211.3, label %polly.loop_header211.2

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.2, %polly.loop_exit219.3
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit219.3 ], [ 0, %polly.loop_exit219.2 ]
  %201 = add nuw nsw i64 %polly.indvar214.3, %97
  %202 = shl i64 %201, 3
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_exit225.3, %polly.loop_header211.3
  %indvars.iv752.3 = phi i64 [ %indvars.iv.next753.3, %polly.loop_exit225.3 ], [ 49, %polly.loop_header211.3 ]
  %polly.indvar220.3 = phi i64 [ %polly.indvar_next221.3, %polly.loop_exit225.3 ], [ 0, %polly.loop_header211.3 ]
  %203 = add nuw nsw i64 %polly.indvar220.3, 48
  %204 = mul nuw nsw i64 %203, 480
  %205 = add nuw nsw i64 %204, %202
  %scevgep232.3 = getelementptr i8, i8* %call2, i64 %205
  %scevgep232233.3 = bitcast i8* %scevgep232.3 to double*
  %_p_scalar_234.3 = load double, double* %scevgep232233.3, align 8, !alias.scope !66, !noalias !70
  %scevgep238.3 = getelementptr i8, i8* %call1, i64 %205
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !65, !noalias !71
  %206 = mul nuw nsw i64 %203, 640
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_header217.3
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_header217.3 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %207 = mul nuw nsw i64 %polly.indvar226.3, 480
  %208 = add nuw nsw i64 %207, %202
  %scevgep229.3 = getelementptr i8, i8* %call1, i64 %208
  %scevgep229230.3 = bitcast i8* %scevgep229.3 to double*
  %_p_scalar_231.3 = load double, double* %scevgep229230.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_234.3, %_p_scalar_231.3
  %scevgep235.3 = getelementptr i8, i8* %call2, i64 %208
  %scevgep235236.3 = bitcast i8* %scevgep235.3 to double*
  %_p_scalar_237.3 = load double, double* %scevgep235236.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_240.3, %_p_scalar_237.3
  %209 = shl nuw nsw i64 %polly.indvar226.3, 3
  %210 = add nuw nsw i64 %209, %206
  %scevgep241.3 = getelementptr i8, i8* %call, i64 %210
  %scevgep241242.3 = bitcast i8* %scevgep241.3 to double*
  %_p_scalar_243.3 = load double, double* %scevgep241242.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_243.3
  store double %p_add42.i118.3, double* %scevgep241242.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next227.3, %indvars.iv752.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %indvars.iv.next753.3 = add nuw nsw i64 %indvars.iv752.3, 1
  %exitcond754.3.not = icmp eq i64 %polly.indvar_next221.3, 16
  br i1 %exitcond754.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %exitcond755.3.not = icmp eq i64 %polly.indvar_next215.3, 20
  br i1 %exitcond755.3.not, label %polly.loop_header211.4, label %polly.loop_header211.3

polly.loop_header211.4:                           ; preds = %polly.loop_exit219.3, %polly.loop_exit219.4
  %polly.indvar214.4 = phi i64 [ %polly.indvar_next215.4, %polly.loop_exit219.4 ], [ 0, %polly.loop_exit219.3 ]
  %211 = add nuw nsw i64 %polly.indvar214.4, %97
  %212 = shl i64 %211, 3
  br label %polly.loop_header217.4

polly.loop_header217.4:                           ; preds = %polly.loop_exit225.4, %polly.loop_header211.4
  %indvars.iv752.4 = phi i64 [ %indvars.iv.next753.4, %polly.loop_exit225.4 ], [ 65, %polly.loop_header211.4 ]
  %polly.indvar220.4 = phi i64 [ %polly.indvar_next221.4, %polly.loop_exit225.4 ], [ 0, %polly.loop_header211.4 ]
  %213 = add nuw nsw i64 %polly.indvar220.4, 64
  %214 = mul nuw nsw i64 %213, 480
  %215 = add nuw nsw i64 %214, %212
  %scevgep232.4 = getelementptr i8, i8* %call2, i64 %215
  %scevgep232233.4 = bitcast i8* %scevgep232.4 to double*
  %_p_scalar_234.4 = load double, double* %scevgep232233.4, align 8, !alias.scope !66, !noalias !70
  %scevgep238.4 = getelementptr i8, i8* %call1, i64 %215
  %scevgep238239.4 = bitcast i8* %scevgep238.4 to double*
  %_p_scalar_240.4 = load double, double* %scevgep238239.4, align 8, !alias.scope !65, !noalias !71
  %216 = mul nuw nsw i64 %213, 640
  br label %polly.loop_header223.4

polly.loop_header223.4:                           ; preds = %polly.loop_header223.4, %polly.loop_header217.4
  %polly.indvar226.4 = phi i64 [ 0, %polly.loop_header217.4 ], [ %polly.indvar_next227.4, %polly.loop_header223.4 ]
  %217 = mul nuw nsw i64 %polly.indvar226.4, 480
  %218 = add nuw nsw i64 %217, %212
  %scevgep229.4 = getelementptr i8, i8* %call1, i64 %218
  %scevgep229230.4 = bitcast i8* %scevgep229.4 to double*
  %_p_scalar_231.4 = load double, double* %scevgep229230.4, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.4 = fmul fast double %_p_scalar_234.4, %_p_scalar_231.4
  %scevgep235.4 = getelementptr i8, i8* %call2, i64 %218
  %scevgep235236.4 = bitcast i8* %scevgep235.4 to double*
  %_p_scalar_237.4 = load double, double* %scevgep235236.4, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.4 = fmul fast double %_p_scalar_240.4, %_p_scalar_237.4
  %219 = shl nuw nsw i64 %polly.indvar226.4, 3
  %220 = add nuw nsw i64 %219, %216
  %scevgep241.4 = getelementptr i8, i8* %call, i64 %220
  %scevgep241242.4 = bitcast i8* %scevgep241.4 to double*
  %_p_scalar_243.4 = load double, double* %scevgep241242.4, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_243.4
  store double %p_add42.i118.4, double* %scevgep241242.4, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.4 = add nuw nsw i64 %polly.indvar226.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar_next227.4, %indvars.iv752.4
  br i1 %exitcond.4.not, label %polly.loop_exit225.4, label %polly.loop_header223.4

polly.loop_exit225.4:                             ; preds = %polly.loop_header223.4
  %polly.indvar_next221.4 = add nuw nsw i64 %polly.indvar220.4, 1
  %indvars.iv.next753.4 = add nuw nsw i64 %indvars.iv752.4, 1
  %exitcond754.4.not = icmp eq i64 %polly.indvar_next221.4, 16
  br i1 %exitcond754.4.not, label %polly.loop_exit219.4, label %polly.loop_header217.4

polly.loop_exit219.4:                             ; preds = %polly.loop_exit225.4
  %polly.indvar_next215.4 = add nuw nsw i64 %polly.indvar214.4, 1
  %exitcond755.4.not = icmp eq i64 %polly.indvar_next215.4, 20
  br i1 %exitcond755.4.not, label %polly.loop_exit213.4, label %polly.loop_header211.4

polly.loop_exit213.4:                             ; preds = %polly.loop_exit219.4
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond757.not = icmp eq i64 %polly.indvar_next203, 3
  br i1 %exitcond757.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header358.1:                           ; preds = %polly.loop_exit366, %polly.loop_exit366.1
  %polly.indvar361.1 = phi i64 [ %polly.indvar_next362.1, %polly.loop_exit366.1 ], [ 0, %polly.loop_exit366 ]
  %221 = add nuw nsw i64 %polly.indvar361.1, %116
  %222 = shl i64 %221, 3
  br label %polly.loop_header364.1

polly.loop_header364.1:                           ; preds = %polly.loop_exit372.1, %polly.loop_header358.1
  %indvars.iv762.1 = phi i64 [ %indvars.iv.next763.1, %polly.loop_exit372.1 ], [ 17, %polly.loop_header358.1 ]
  %polly.indvar367.1 = phi i64 [ %polly.indvar_next368.1, %polly.loop_exit372.1 ], [ 0, %polly.loop_header358.1 ]
  %223 = add nuw nsw i64 %polly.indvar367.1, 16
  %224 = mul nuw nsw i64 %223, 480
  %225 = add nuw nsw i64 %224, %222
  %scevgep379.1 = getelementptr i8, i8* %call2, i64 %225
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !76, !noalias !79
  %scevgep385.1 = getelementptr i8, i8* %call1, i64 %225
  %scevgep385386.1 = bitcast i8* %scevgep385.1 to double*
  %_p_scalar_387.1 = load double, double* %scevgep385386.1, align 8, !alias.scope !75, !noalias !80
  %226 = mul nuw nsw i64 %223, 640
  br label %polly.loop_header370.1

polly.loop_header370.1:                           ; preds = %polly.loop_header370.1, %polly.loop_header364.1
  %polly.indvar373.1 = phi i64 [ 0, %polly.loop_header364.1 ], [ %polly.indvar_next374.1, %polly.loop_header370.1 ]
  %227 = mul nuw nsw i64 %polly.indvar373.1, 480
  %228 = add nuw nsw i64 %227, %222
  %scevgep376.1 = getelementptr i8, i8* %call1, i64 %228
  %scevgep376377.1 = bitcast i8* %scevgep376.1 to double*
  %_p_scalar_378.1 = load double, double* %scevgep376377.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_381.1, %_p_scalar_378.1
  %scevgep382.1 = getelementptr i8, i8* %call2, i64 %228
  %scevgep382383.1 = bitcast i8* %scevgep382.1 to double*
  %_p_scalar_384.1 = load double, double* %scevgep382383.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_387.1, %_p_scalar_384.1
  %229 = shl nuw nsw i64 %polly.indvar373.1, 3
  %230 = add nuw nsw i64 %229, %226
  %scevgep388.1 = getelementptr i8, i8* %call, i64 %230
  %scevgep388389.1 = bitcast i8* %scevgep388.1 to double*
  %_p_scalar_390.1 = load double, double* %scevgep388389.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_390.1
  store double %p_add42.i79.1, double* %scevgep388389.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374.1 = add nuw nsw i64 %polly.indvar373.1, 1
  %exitcond764.1.not = icmp eq i64 %polly.indvar_next374.1, %indvars.iv762.1
  br i1 %exitcond764.1.not, label %polly.loop_exit372.1, label %polly.loop_header370.1

polly.loop_exit372.1:                             ; preds = %polly.loop_header370.1
  %polly.indvar_next368.1 = add nuw nsw i64 %polly.indvar367.1, 1
  %indvars.iv.next763.1 = add nuw nsw i64 %indvars.iv762.1, 1
  %exitcond765.1.not = icmp eq i64 %polly.indvar_next368.1, 16
  br i1 %exitcond765.1.not, label %polly.loop_exit366.1, label %polly.loop_header364.1

polly.loop_exit366.1:                             ; preds = %polly.loop_exit372.1
  %polly.indvar_next362.1 = add nuw nsw i64 %polly.indvar361.1, 1
  %exitcond766.1.not = icmp eq i64 %polly.indvar_next362.1, 20
  br i1 %exitcond766.1.not, label %polly.loop_header358.2, label %polly.loop_header358.1

polly.loop_header358.2:                           ; preds = %polly.loop_exit366.1, %polly.loop_exit366.2
  %polly.indvar361.2 = phi i64 [ %polly.indvar_next362.2, %polly.loop_exit366.2 ], [ 0, %polly.loop_exit366.1 ]
  %231 = add nuw nsw i64 %polly.indvar361.2, %116
  %232 = shl i64 %231, 3
  br label %polly.loop_header364.2

polly.loop_header364.2:                           ; preds = %polly.loop_exit372.2, %polly.loop_header358.2
  %indvars.iv762.2 = phi i64 [ %indvars.iv.next763.2, %polly.loop_exit372.2 ], [ 33, %polly.loop_header358.2 ]
  %polly.indvar367.2 = phi i64 [ %polly.indvar_next368.2, %polly.loop_exit372.2 ], [ 0, %polly.loop_header358.2 ]
  %233 = add nuw nsw i64 %polly.indvar367.2, 32
  %234 = mul nuw nsw i64 %233, 480
  %235 = add nuw nsw i64 %234, %232
  %scevgep379.2 = getelementptr i8, i8* %call2, i64 %235
  %scevgep379380.2 = bitcast i8* %scevgep379.2 to double*
  %_p_scalar_381.2 = load double, double* %scevgep379380.2, align 8, !alias.scope !76, !noalias !79
  %scevgep385.2 = getelementptr i8, i8* %call1, i64 %235
  %scevgep385386.2 = bitcast i8* %scevgep385.2 to double*
  %_p_scalar_387.2 = load double, double* %scevgep385386.2, align 8, !alias.scope !75, !noalias !80
  %236 = mul nuw nsw i64 %233, 640
  br label %polly.loop_header370.2

polly.loop_header370.2:                           ; preds = %polly.loop_header370.2, %polly.loop_header364.2
  %polly.indvar373.2 = phi i64 [ 0, %polly.loop_header364.2 ], [ %polly.indvar_next374.2, %polly.loop_header370.2 ]
  %237 = mul nuw nsw i64 %polly.indvar373.2, 480
  %238 = add nuw nsw i64 %237, %232
  %scevgep376.2 = getelementptr i8, i8* %call1, i64 %238
  %scevgep376377.2 = bitcast i8* %scevgep376.2 to double*
  %_p_scalar_378.2 = load double, double* %scevgep376377.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_381.2, %_p_scalar_378.2
  %scevgep382.2 = getelementptr i8, i8* %call2, i64 %238
  %scevgep382383.2 = bitcast i8* %scevgep382.2 to double*
  %_p_scalar_384.2 = load double, double* %scevgep382383.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_387.2, %_p_scalar_384.2
  %239 = shl nuw nsw i64 %polly.indvar373.2, 3
  %240 = add nuw nsw i64 %239, %236
  %scevgep388.2 = getelementptr i8, i8* %call, i64 %240
  %scevgep388389.2 = bitcast i8* %scevgep388.2 to double*
  %_p_scalar_390.2 = load double, double* %scevgep388389.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_390.2
  store double %p_add42.i79.2, double* %scevgep388389.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374.2 = add nuw nsw i64 %polly.indvar373.2, 1
  %exitcond764.2.not = icmp eq i64 %polly.indvar_next374.2, %indvars.iv762.2
  br i1 %exitcond764.2.not, label %polly.loop_exit372.2, label %polly.loop_header370.2

polly.loop_exit372.2:                             ; preds = %polly.loop_header370.2
  %polly.indvar_next368.2 = add nuw nsw i64 %polly.indvar367.2, 1
  %indvars.iv.next763.2 = add nuw nsw i64 %indvars.iv762.2, 1
  %exitcond765.2.not = icmp eq i64 %polly.indvar_next368.2, 16
  br i1 %exitcond765.2.not, label %polly.loop_exit366.2, label %polly.loop_header364.2

polly.loop_exit366.2:                             ; preds = %polly.loop_exit372.2
  %polly.indvar_next362.2 = add nuw nsw i64 %polly.indvar361.2, 1
  %exitcond766.2.not = icmp eq i64 %polly.indvar_next362.2, 20
  br i1 %exitcond766.2.not, label %polly.loop_header358.3, label %polly.loop_header358.2

polly.loop_header358.3:                           ; preds = %polly.loop_exit366.2, %polly.loop_exit366.3
  %polly.indvar361.3 = phi i64 [ %polly.indvar_next362.3, %polly.loop_exit366.3 ], [ 0, %polly.loop_exit366.2 ]
  %241 = add nuw nsw i64 %polly.indvar361.3, %116
  %242 = shl i64 %241, 3
  br label %polly.loop_header364.3

polly.loop_header364.3:                           ; preds = %polly.loop_exit372.3, %polly.loop_header358.3
  %indvars.iv762.3 = phi i64 [ %indvars.iv.next763.3, %polly.loop_exit372.3 ], [ 49, %polly.loop_header358.3 ]
  %polly.indvar367.3 = phi i64 [ %polly.indvar_next368.3, %polly.loop_exit372.3 ], [ 0, %polly.loop_header358.3 ]
  %243 = add nuw nsw i64 %polly.indvar367.3, 48
  %244 = mul nuw nsw i64 %243, 480
  %245 = add nuw nsw i64 %244, %242
  %scevgep379.3 = getelementptr i8, i8* %call2, i64 %245
  %scevgep379380.3 = bitcast i8* %scevgep379.3 to double*
  %_p_scalar_381.3 = load double, double* %scevgep379380.3, align 8, !alias.scope !76, !noalias !79
  %scevgep385.3 = getelementptr i8, i8* %call1, i64 %245
  %scevgep385386.3 = bitcast i8* %scevgep385.3 to double*
  %_p_scalar_387.3 = load double, double* %scevgep385386.3, align 8, !alias.scope !75, !noalias !80
  %246 = mul nuw nsw i64 %243, 640
  br label %polly.loop_header370.3

polly.loop_header370.3:                           ; preds = %polly.loop_header370.3, %polly.loop_header364.3
  %polly.indvar373.3 = phi i64 [ 0, %polly.loop_header364.3 ], [ %polly.indvar_next374.3, %polly.loop_header370.3 ]
  %247 = mul nuw nsw i64 %polly.indvar373.3, 480
  %248 = add nuw nsw i64 %247, %242
  %scevgep376.3 = getelementptr i8, i8* %call1, i64 %248
  %scevgep376377.3 = bitcast i8* %scevgep376.3 to double*
  %_p_scalar_378.3 = load double, double* %scevgep376377.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_381.3, %_p_scalar_378.3
  %scevgep382.3 = getelementptr i8, i8* %call2, i64 %248
  %scevgep382383.3 = bitcast i8* %scevgep382.3 to double*
  %_p_scalar_384.3 = load double, double* %scevgep382383.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_387.3, %_p_scalar_384.3
  %249 = shl nuw nsw i64 %polly.indvar373.3, 3
  %250 = add nuw nsw i64 %249, %246
  %scevgep388.3 = getelementptr i8, i8* %call, i64 %250
  %scevgep388389.3 = bitcast i8* %scevgep388.3 to double*
  %_p_scalar_390.3 = load double, double* %scevgep388389.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_390.3
  store double %p_add42.i79.3, double* %scevgep388389.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374.3 = add nuw nsw i64 %polly.indvar373.3, 1
  %exitcond764.3.not = icmp eq i64 %polly.indvar_next374.3, %indvars.iv762.3
  br i1 %exitcond764.3.not, label %polly.loop_exit372.3, label %polly.loop_header370.3

polly.loop_exit372.3:                             ; preds = %polly.loop_header370.3
  %polly.indvar_next368.3 = add nuw nsw i64 %polly.indvar367.3, 1
  %indvars.iv.next763.3 = add nuw nsw i64 %indvars.iv762.3, 1
  %exitcond765.3.not = icmp eq i64 %polly.indvar_next368.3, 16
  br i1 %exitcond765.3.not, label %polly.loop_exit366.3, label %polly.loop_header364.3

polly.loop_exit366.3:                             ; preds = %polly.loop_exit372.3
  %polly.indvar_next362.3 = add nuw nsw i64 %polly.indvar361.3, 1
  %exitcond766.3.not = icmp eq i64 %polly.indvar_next362.3, 20
  br i1 %exitcond766.3.not, label %polly.loop_header358.4, label %polly.loop_header358.3

polly.loop_header358.4:                           ; preds = %polly.loop_exit366.3, %polly.loop_exit366.4
  %polly.indvar361.4 = phi i64 [ %polly.indvar_next362.4, %polly.loop_exit366.4 ], [ 0, %polly.loop_exit366.3 ]
  %251 = add nuw nsw i64 %polly.indvar361.4, %116
  %252 = shl i64 %251, 3
  br label %polly.loop_header364.4

polly.loop_header364.4:                           ; preds = %polly.loop_exit372.4, %polly.loop_header358.4
  %indvars.iv762.4 = phi i64 [ %indvars.iv.next763.4, %polly.loop_exit372.4 ], [ 65, %polly.loop_header358.4 ]
  %polly.indvar367.4 = phi i64 [ %polly.indvar_next368.4, %polly.loop_exit372.4 ], [ 0, %polly.loop_header358.4 ]
  %253 = add nuw nsw i64 %polly.indvar367.4, 64
  %254 = mul nuw nsw i64 %253, 480
  %255 = add nuw nsw i64 %254, %252
  %scevgep379.4 = getelementptr i8, i8* %call2, i64 %255
  %scevgep379380.4 = bitcast i8* %scevgep379.4 to double*
  %_p_scalar_381.4 = load double, double* %scevgep379380.4, align 8, !alias.scope !76, !noalias !79
  %scevgep385.4 = getelementptr i8, i8* %call1, i64 %255
  %scevgep385386.4 = bitcast i8* %scevgep385.4 to double*
  %_p_scalar_387.4 = load double, double* %scevgep385386.4, align 8, !alias.scope !75, !noalias !80
  %256 = mul nuw nsw i64 %253, 640
  br label %polly.loop_header370.4

polly.loop_header370.4:                           ; preds = %polly.loop_header370.4, %polly.loop_header364.4
  %polly.indvar373.4 = phi i64 [ 0, %polly.loop_header364.4 ], [ %polly.indvar_next374.4, %polly.loop_header370.4 ]
  %257 = mul nuw nsw i64 %polly.indvar373.4, 480
  %258 = add nuw nsw i64 %257, %252
  %scevgep376.4 = getelementptr i8, i8* %call1, i64 %258
  %scevgep376377.4 = bitcast i8* %scevgep376.4 to double*
  %_p_scalar_378.4 = load double, double* %scevgep376377.4, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.4 = fmul fast double %_p_scalar_381.4, %_p_scalar_378.4
  %scevgep382.4 = getelementptr i8, i8* %call2, i64 %258
  %scevgep382383.4 = bitcast i8* %scevgep382.4 to double*
  %_p_scalar_384.4 = load double, double* %scevgep382383.4, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.4 = fmul fast double %_p_scalar_387.4, %_p_scalar_384.4
  %259 = shl nuw nsw i64 %polly.indvar373.4, 3
  %260 = add nuw nsw i64 %259, %256
  %scevgep388.4 = getelementptr i8, i8* %call, i64 %260
  %scevgep388389.4 = bitcast i8* %scevgep388.4 to double*
  %_p_scalar_390.4 = load double, double* %scevgep388389.4, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_390.4
  store double %p_add42.i79.4, double* %scevgep388389.4, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374.4 = add nuw nsw i64 %polly.indvar373.4, 1
  %exitcond764.4.not = icmp eq i64 %polly.indvar_next374.4, %indvars.iv762.4
  br i1 %exitcond764.4.not, label %polly.loop_exit372.4, label %polly.loop_header370.4

polly.loop_exit372.4:                             ; preds = %polly.loop_header370.4
  %polly.indvar_next368.4 = add nuw nsw i64 %polly.indvar367.4, 1
  %indvars.iv.next763.4 = add nuw nsw i64 %indvars.iv762.4, 1
  %exitcond765.4.not = icmp eq i64 %polly.indvar_next368.4, 16
  br i1 %exitcond765.4.not, label %polly.loop_exit366.4, label %polly.loop_header364.4

polly.loop_exit366.4:                             ; preds = %polly.loop_exit372.4
  %polly.indvar_next362.4 = add nuw nsw i64 %polly.indvar361.4, 1
  %exitcond766.4.not = icmp eq i64 %polly.indvar_next362.4, 20
  br i1 %exitcond766.4.not, label %polly.loop_exit360.4, label %polly.loop_header358.4

polly.loop_exit360.4:                             ; preds = %polly.loop_exit366.4
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond768.not = icmp eq i64 %polly.indvar_next350, 3
  br i1 %exitcond768.not, label %kernel_syr2k.exit90, label %polly.loop_header346

polly.loop_header505.1:                           ; preds = %polly.loop_exit513, %polly.loop_exit513.1
  %polly.indvar508.1 = phi i64 [ %polly.indvar_next509.1, %polly.loop_exit513.1 ], [ 0, %polly.loop_exit513 ]
  %261 = add nuw nsw i64 %polly.indvar508.1, %135
  %262 = shl i64 %261, 3
  br label %polly.loop_header511.1

polly.loop_header511.1:                           ; preds = %polly.loop_exit519.1, %polly.loop_header505.1
  %indvars.iv773.1 = phi i64 [ %indvars.iv.next774.1, %polly.loop_exit519.1 ], [ 17, %polly.loop_header505.1 ]
  %polly.indvar514.1 = phi i64 [ %polly.indvar_next515.1, %polly.loop_exit519.1 ], [ 0, %polly.loop_header505.1 ]
  %263 = add nuw nsw i64 %polly.indvar514.1, 16
  %264 = mul nuw nsw i64 %263, 480
  %265 = add nuw nsw i64 %264, %262
  %scevgep526.1 = getelementptr i8, i8* %call2, i64 %265
  %scevgep526527.1 = bitcast i8* %scevgep526.1 to double*
  %_p_scalar_528.1 = load double, double* %scevgep526527.1, align 8, !alias.scope !85, !noalias !88
  %scevgep532.1 = getelementptr i8, i8* %call1, i64 %265
  %scevgep532533.1 = bitcast i8* %scevgep532.1 to double*
  %_p_scalar_534.1 = load double, double* %scevgep532533.1, align 8, !alias.scope !84, !noalias !89
  %266 = mul nuw nsw i64 %263, 640
  br label %polly.loop_header517.1

polly.loop_header517.1:                           ; preds = %polly.loop_header517.1, %polly.loop_header511.1
  %polly.indvar520.1 = phi i64 [ 0, %polly.loop_header511.1 ], [ %polly.indvar_next521.1, %polly.loop_header517.1 ]
  %267 = mul nuw nsw i64 %polly.indvar520.1, 480
  %268 = add nuw nsw i64 %267, %262
  %scevgep523.1 = getelementptr i8, i8* %call1, i64 %268
  %scevgep523524.1 = bitcast i8* %scevgep523.1 to double*
  %_p_scalar_525.1 = load double, double* %scevgep523524.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_528.1, %_p_scalar_525.1
  %scevgep529.1 = getelementptr i8, i8* %call2, i64 %268
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_534.1, %_p_scalar_531.1
  %269 = shl nuw nsw i64 %polly.indvar520.1, 3
  %270 = add nuw nsw i64 %269, %266
  %scevgep535.1 = getelementptr i8, i8* %call, i64 %270
  %scevgep535536.1 = bitcast i8* %scevgep535.1 to double*
  %_p_scalar_537.1 = load double, double* %scevgep535536.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_537.1
  store double %p_add42.i.1, double* %scevgep535536.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %exitcond775.1.not = icmp eq i64 %polly.indvar_next521.1, %indvars.iv773.1
  br i1 %exitcond775.1.not, label %polly.loop_exit519.1, label %polly.loop_header517.1

polly.loop_exit519.1:                             ; preds = %polly.loop_header517.1
  %polly.indvar_next515.1 = add nuw nsw i64 %polly.indvar514.1, 1
  %indvars.iv.next774.1 = add nuw nsw i64 %indvars.iv773.1, 1
  %exitcond776.1.not = icmp eq i64 %polly.indvar_next515.1, 16
  br i1 %exitcond776.1.not, label %polly.loop_exit513.1, label %polly.loop_header511.1

polly.loop_exit513.1:                             ; preds = %polly.loop_exit519.1
  %polly.indvar_next509.1 = add nuw nsw i64 %polly.indvar508.1, 1
  %exitcond777.1.not = icmp eq i64 %polly.indvar_next509.1, 20
  br i1 %exitcond777.1.not, label %polly.loop_header505.2, label %polly.loop_header505.1

polly.loop_header505.2:                           ; preds = %polly.loop_exit513.1, %polly.loop_exit513.2
  %polly.indvar508.2 = phi i64 [ %polly.indvar_next509.2, %polly.loop_exit513.2 ], [ 0, %polly.loop_exit513.1 ]
  %271 = add nuw nsw i64 %polly.indvar508.2, %135
  %272 = shl i64 %271, 3
  br label %polly.loop_header511.2

polly.loop_header511.2:                           ; preds = %polly.loop_exit519.2, %polly.loop_header505.2
  %indvars.iv773.2 = phi i64 [ %indvars.iv.next774.2, %polly.loop_exit519.2 ], [ 33, %polly.loop_header505.2 ]
  %polly.indvar514.2 = phi i64 [ %polly.indvar_next515.2, %polly.loop_exit519.2 ], [ 0, %polly.loop_header505.2 ]
  %273 = add nuw nsw i64 %polly.indvar514.2, 32
  %274 = mul nuw nsw i64 %273, 480
  %275 = add nuw nsw i64 %274, %272
  %scevgep526.2 = getelementptr i8, i8* %call2, i64 %275
  %scevgep526527.2 = bitcast i8* %scevgep526.2 to double*
  %_p_scalar_528.2 = load double, double* %scevgep526527.2, align 8, !alias.scope !85, !noalias !88
  %scevgep532.2 = getelementptr i8, i8* %call1, i64 %275
  %scevgep532533.2 = bitcast i8* %scevgep532.2 to double*
  %_p_scalar_534.2 = load double, double* %scevgep532533.2, align 8, !alias.scope !84, !noalias !89
  %276 = mul nuw nsw i64 %273, 640
  br label %polly.loop_header517.2

polly.loop_header517.2:                           ; preds = %polly.loop_header517.2, %polly.loop_header511.2
  %polly.indvar520.2 = phi i64 [ 0, %polly.loop_header511.2 ], [ %polly.indvar_next521.2, %polly.loop_header517.2 ]
  %277 = mul nuw nsw i64 %polly.indvar520.2, 480
  %278 = add nuw nsw i64 %277, %272
  %scevgep523.2 = getelementptr i8, i8* %call1, i64 %278
  %scevgep523524.2 = bitcast i8* %scevgep523.2 to double*
  %_p_scalar_525.2 = load double, double* %scevgep523524.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_528.2, %_p_scalar_525.2
  %scevgep529.2 = getelementptr i8, i8* %call2, i64 %278
  %scevgep529530.2 = bitcast i8* %scevgep529.2 to double*
  %_p_scalar_531.2 = load double, double* %scevgep529530.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_534.2, %_p_scalar_531.2
  %279 = shl nuw nsw i64 %polly.indvar520.2, 3
  %280 = add nuw nsw i64 %279, %276
  %scevgep535.2 = getelementptr i8, i8* %call, i64 %280
  %scevgep535536.2 = bitcast i8* %scevgep535.2 to double*
  %_p_scalar_537.2 = load double, double* %scevgep535536.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_537.2
  store double %p_add42.i.2, double* %scevgep535536.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521.2 = add nuw nsw i64 %polly.indvar520.2, 1
  %exitcond775.2.not = icmp eq i64 %polly.indvar_next521.2, %indvars.iv773.2
  br i1 %exitcond775.2.not, label %polly.loop_exit519.2, label %polly.loop_header517.2

polly.loop_exit519.2:                             ; preds = %polly.loop_header517.2
  %polly.indvar_next515.2 = add nuw nsw i64 %polly.indvar514.2, 1
  %indvars.iv.next774.2 = add nuw nsw i64 %indvars.iv773.2, 1
  %exitcond776.2.not = icmp eq i64 %polly.indvar_next515.2, 16
  br i1 %exitcond776.2.not, label %polly.loop_exit513.2, label %polly.loop_header511.2

polly.loop_exit513.2:                             ; preds = %polly.loop_exit519.2
  %polly.indvar_next509.2 = add nuw nsw i64 %polly.indvar508.2, 1
  %exitcond777.2.not = icmp eq i64 %polly.indvar_next509.2, 20
  br i1 %exitcond777.2.not, label %polly.loop_header505.3, label %polly.loop_header505.2

polly.loop_header505.3:                           ; preds = %polly.loop_exit513.2, %polly.loop_exit513.3
  %polly.indvar508.3 = phi i64 [ %polly.indvar_next509.3, %polly.loop_exit513.3 ], [ 0, %polly.loop_exit513.2 ]
  %281 = add nuw nsw i64 %polly.indvar508.3, %135
  %282 = shl i64 %281, 3
  br label %polly.loop_header511.3

polly.loop_header511.3:                           ; preds = %polly.loop_exit519.3, %polly.loop_header505.3
  %indvars.iv773.3 = phi i64 [ %indvars.iv.next774.3, %polly.loop_exit519.3 ], [ 49, %polly.loop_header505.3 ]
  %polly.indvar514.3 = phi i64 [ %polly.indvar_next515.3, %polly.loop_exit519.3 ], [ 0, %polly.loop_header505.3 ]
  %283 = add nuw nsw i64 %polly.indvar514.3, 48
  %284 = mul nuw nsw i64 %283, 480
  %285 = add nuw nsw i64 %284, %282
  %scevgep526.3 = getelementptr i8, i8* %call2, i64 %285
  %scevgep526527.3 = bitcast i8* %scevgep526.3 to double*
  %_p_scalar_528.3 = load double, double* %scevgep526527.3, align 8, !alias.scope !85, !noalias !88
  %scevgep532.3 = getelementptr i8, i8* %call1, i64 %285
  %scevgep532533.3 = bitcast i8* %scevgep532.3 to double*
  %_p_scalar_534.3 = load double, double* %scevgep532533.3, align 8, !alias.scope !84, !noalias !89
  %286 = mul nuw nsw i64 %283, 640
  br label %polly.loop_header517.3

polly.loop_header517.3:                           ; preds = %polly.loop_header517.3, %polly.loop_header511.3
  %polly.indvar520.3 = phi i64 [ 0, %polly.loop_header511.3 ], [ %polly.indvar_next521.3, %polly.loop_header517.3 ]
  %287 = mul nuw nsw i64 %polly.indvar520.3, 480
  %288 = add nuw nsw i64 %287, %282
  %scevgep523.3 = getelementptr i8, i8* %call1, i64 %288
  %scevgep523524.3 = bitcast i8* %scevgep523.3 to double*
  %_p_scalar_525.3 = load double, double* %scevgep523524.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_528.3, %_p_scalar_525.3
  %scevgep529.3 = getelementptr i8, i8* %call2, i64 %288
  %scevgep529530.3 = bitcast i8* %scevgep529.3 to double*
  %_p_scalar_531.3 = load double, double* %scevgep529530.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_534.3, %_p_scalar_531.3
  %289 = shl nuw nsw i64 %polly.indvar520.3, 3
  %290 = add nuw nsw i64 %289, %286
  %scevgep535.3 = getelementptr i8, i8* %call, i64 %290
  %scevgep535536.3 = bitcast i8* %scevgep535.3 to double*
  %_p_scalar_537.3 = load double, double* %scevgep535536.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_537.3
  store double %p_add42.i.3, double* %scevgep535536.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521.3 = add nuw nsw i64 %polly.indvar520.3, 1
  %exitcond775.3.not = icmp eq i64 %polly.indvar_next521.3, %indvars.iv773.3
  br i1 %exitcond775.3.not, label %polly.loop_exit519.3, label %polly.loop_header517.3

polly.loop_exit519.3:                             ; preds = %polly.loop_header517.3
  %polly.indvar_next515.3 = add nuw nsw i64 %polly.indvar514.3, 1
  %indvars.iv.next774.3 = add nuw nsw i64 %indvars.iv773.3, 1
  %exitcond776.3.not = icmp eq i64 %polly.indvar_next515.3, 16
  br i1 %exitcond776.3.not, label %polly.loop_exit513.3, label %polly.loop_header511.3

polly.loop_exit513.3:                             ; preds = %polly.loop_exit519.3
  %polly.indvar_next509.3 = add nuw nsw i64 %polly.indvar508.3, 1
  %exitcond777.3.not = icmp eq i64 %polly.indvar_next509.3, 20
  br i1 %exitcond777.3.not, label %polly.loop_header505.4, label %polly.loop_header505.3

polly.loop_header505.4:                           ; preds = %polly.loop_exit513.3, %polly.loop_exit513.4
  %polly.indvar508.4 = phi i64 [ %polly.indvar_next509.4, %polly.loop_exit513.4 ], [ 0, %polly.loop_exit513.3 ]
  %291 = add nuw nsw i64 %polly.indvar508.4, %135
  %292 = shl i64 %291, 3
  br label %polly.loop_header511.4

polly.loop_header511.4:                           ; preds = %polly.loop_exit519.4, %polly.loop_header505.4
  %indvars.iv773.4 = phi i64 [ %indvars.iv.next774.4, %polly.loop_exit519.4 ], [ 65, %polly.loop_header505.4 ]
  %polly.indvar514.4 = phi i64 [ %polly.indvar_next515.4, %polly.loop_exit519.4 ], [ 0, %polly.loop_header505.4 ]
  %293 = add nuw nsw i64 %polly.indvar514.4, 64
  %294 = mul nuw nsw i64 %293, 480
  %295 = add nuw nsw i64 %294, %292
  %scevgep526.4 = getelementptr i8, i8* %call2, i64 %295
  %scevgep526527.4 = bitcast i8* %scevgep526.4 to double*
  %_p_scalar_528.4 = load double, double* %scevgep526527.4, align 8, !alias.scope !85, !noalias !88
  %scevgep532.4 = getelementptr i8, i8* %call1, i64 %295
  %scevgep532533.4 = bitcast i8* %scevgep532.4 to double*
  %_p_scalar_534.4 = load double, double* %scevgep532533.4, align 8, !alias.scope !84, !noalias !89
  %296 = mul nuw nsw i64 %293, 640
  br label %polly.loop_header517.4

polly.loop_header517.4:                           ; preds = %polly.loop_header517.4, %polly.loop_header511.4
  %polly.indvar520.4 = phi i64 [ 0, %polly.loop_header511.4 ], [ %polly.indvar_next521.4, %polly.loop_header517.4 ]
  %297 = mul nuw nsw i64 %polly.indvar520.4, 480
  %298 = add nuw nsw i64 %297, %292
  %scevgep523.4 = getelementptr i8, i8* %call1, i64 %298
  %scevgep523524.4 = bitcast i8* %scevgep523.4 to double*
  %_p_scalar_525.4 = load double, double* %scevgep523524.4, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.4 = fmul fast double %_p_scalar_528.4, %_p_scalar_525.4
  %scevgep529.4 = getelementptr i8, i8* %call2, i64 %298
  %scevgep529530.4 = bitcast i8* %scevgep529.4 to double*
  %_p_scalar_531.4 = load double, double* %scevgep529530.4, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.4 = fmul fast double %_p_scalar_534.4, %_p_scalar_531.4
  %299 = shl nuw nsw i64 %polly.indvar520.4, 3
  %300 = add nuw nsw i64 %299, %296
  %scevgep535.4 = getelementptr i8, i8* %call, i64 %300
  %scevgep535536.4 = bitcast i8* %scevgep535.4 to double*
  %_p_scalar_537.4 = load double, double* %scevgep535536.4, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_537.4
  store double %p_add42.i.4, double* %scevgep535536.4, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521.4 = add nuw nsw i64 %polly.indvar520.4, 1
  %exitcond775.4.not = icmp eq i64 %polly.indvar_next521.4, %indvars.iv773.4
  br i1 %exitcond775.4.not, label %polly.loop_exit519.4, label %polly.loop_header517.4

polly.loop_exit519.4:                             ; preds = %polly.loop_header517.4
  %polly.indvar_next515.4 = add nuw nsw i64 %polly.indvar514.4, 1
  %indvars.iv.next774.4 = add nuw nsw i64 %indvars.iv773.4, 1
  %exitcond776.4.not = icmp eq i64 %polly.indvar_next515.4, 16
  br i1 %exitcond776.4.not, label %polly.loop_exit513.4, label %polly.loop_header511.4

polly.loop_exit513.4:                             ; preds = %polly.loop_exit519.4
  %polly.indvar_next509.4 = add nuw nsw i64 %polly.indvar508.4, 1
  %exitcond777.4.not = icmp eq i64 %polly.indvar_next509.4, 20
  br i1 %exitcond777.4.not, label %polly.loop_exit507.4, label %polly.loop_header505.4

polly.loop_exit507.4:                             ; preds = %polly.loop_exit513.4
  %polly.indvar_next497 = add nuw nsw i64 %polly.indvar496, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next497, 3
  br i1 %exitcond779.not, label %kernel_syr2k.exit, label %polly.loop_header493

polly.loop_header729.1:                           ; preds = %polly.loop_exit737, %polly.loop_exit737.1
  %polly.indvar732.1 = phi i64 [ %polly.indvar_next733.1, %polly.loop_exit737.1 ], [ 0, %polly.loop_exit737 ]
  %301 = mul nuw nsw i64 %polly.indvar732.1, 480
  %302 = trunc i64 %polly.indvar732.1 to i32
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %302, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %polly.loop_header729.1
  %index1097 = phi i64 [ 0, %polly.loop_header729.1 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1101 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1 ], [ %vec.ind.next1102, %vector.body1095 ]
  %303 = add nuw nsw <4 x i64> %vec.ind1101, <i64 32, i64 32, i64 32, i64 32>
  %304 = trunc <4 x i64> %303 to <4 x i32>
  %305 = mul <4 x i32> %broadcast.splat1104, %304
  %306 = add <4 x i32> %305, <i32 1, i32 1, i32 1, i32 1>
  %307 = urem <4 x i32> %306, <i32 80, i32 80, i32 80, i32 80>
  %308 = sitofp <4 x i32> %307 to <4 x double>
  %309 = fmul fast <4 x double> %308, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %310 = extractelement <4 x i64> %303, i32 0
  %311 = shl i64 %310, 3
  %312 = add i64 %311, %301
  %313 = getelementptr i8, i8* %call1, i64 %312
  %314 = bitcast i8* %313 to <4 x double>*
  store <4 x double> %309, <4 x double>* %314, align 8, !alias.scope !93, !noalias !98
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1102 = add <4 x i64> %vec.ind1101, <i64 4, i64 4, i64 4, i64 4>
  %315 = icmp eq i64 %index.next1098, 28
  br i1 %315, label %polly.loop_exit737.1, label %vector.body1095, !llvm.loop !100

polly.loop_exit737.1:                             ; preds = %vector.body1095
  %polly.indvar_next733.1 = add nuw nsw i64 %polly.indvar732.1, 1
  %exitcond785.1.not = icmp eq i64 %polly.indvar_next733.1, 32
  br i1 %exitcond785.1.not, label %polly.loop_header729.1808, label %polly.loop_header729.1

polly.loop_header729.1808:                        ; preds = %polly.loop_exit737.1, %polly.loop_exit737.1819
  %polly.indvar732.1807 = phi i64 [ %polly.indvar_next733.1817, %polly.loop_exit737.1819 ], [ 0, %polly.loop_exit737.1 ]
  %316 = add nuw nsw i64 %polly.indvar732.1807, 32
  %317 = mul nuw nsw i64 %316, 480
  %318 = trunc i64 %316 to i32
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %318, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %polly.loop_header729.1808
  %index1109 = phi i64 [ 0, %polly.loop_header729.1808 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1115 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729.1808 ], [ %vec.ind.next1116, %vector.body1107 ]
  %319 = mul <4 x i32> %vec.ind1115, %broadcast.splat1118
  %320 = add <4 x i32> %319, <i32 1, i32 1, i32 1, i32 1>
  %321 = urem <4 x i32> %320, <i32 80, i32 80, i32 80, i32 80>
  %322 = sitofp <4 x i32> %321 to <4 x double>
  %323 = fmul fast <4 x double> %322, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %324 = shl i64 %index1109, 3
  %325 = add i64 %324, %317
  %326 = getelementptr i8, i8* %call1, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %323, <4 x double>* %327, align 8, !alias.scope !93, !noalias !98
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1116 = add <4 x i32> %vec.ind1115, <i32 4, i32 4, i32 4, i32 4>
  %328 = icmp eq i64 %index.next1110, 32
  br i1 %328, label %polly.loop_exit737.1819, label %vector.body1107, !llvm.loop !101

polly.loop_exit737.1819:                          ; preds = %vector.body1107
  %polly.indvar_next733.1817 = add nuw nsw i64 %polly.indvar732.1807, 1
  %exitcond785.1818.not = icmp eq i64 %polly.indvar_next733.1817, 32
  br i1 %exitcond785.1818.not, label %polly.loop_header729.1.1, label %polly.loop_header729.1808

polly.loop_header729.1.1:                         ; preds = %polly.loop_exit737.1819, %polly.loop_exit737.1.1
  %polly.indvar732.1.1 = phi i64 [ %polly.indvar_next733.1.1, %polly.loop_exit737.1.1 ], [ 0, %polly.loop_exit737.1819 ]
  %329 = add nuw nsw i64 %polly.indvar732.1.1, 32
  %330 = mul nuw nsw i64 %329, 480
  %331 = trunc i64 %329 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %331, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_header729.1.1
  %index1123 = phi i64 [ 0, %polly.loop_header729.1.1 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1127 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1.1 ], [ %vec.ind.next1128, %vector.body1121 ]
  %332 = add nuw nsw <4 x i64> %vec.ind1127, <i64 32, i64 32, i64 32, i64 32>
  %333 = trunc <4 x i64> %332 to <4 x i32>
  %334 = mul <4 x i32> %broadcast.splat1130, %333
  %335 = add <4 x i32> %334, <i32 1, i32 1, i32 1, i32 1>
  %336 = urem <4 x i32> %335, <i32 80, i32 80, i32 80, i32 80>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %339 = extractelement <4 x i64> %332, i32 0
  %340 = shl i64 %339, 3
  %341 = add i64 %340, %330
  %342 = getelementptr i8, i8* %call1, i64 %341
  %343 = bitcast i8* %342 to <4 x double>*
  store <4 x double> %338, <4 x double>* %343, align 8, !alias.scope !93, !noalias !98
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1128 = add <4 x i64> %vec.ind1127, <i64 4, i64 4, i64 4, i64 4>
  %344 = icmp eq i64 %index.next1124, 28
  br i1 %344, label %polly.loop_exit737.1.1, label %vector.body1121, !llvm.loop !102

polly.loop_exit737.1.1:                           ; preds = %vector.body1121
  %polly.indvar_next733.1.1 = add nuw nsw i64 %polly.indvar732.1.1, 1
  %exitcond785.1.1.not = icmp eq i64 %polly.indvar_next733.1.1, 32
  br i1 %exitcond785.1.1.not, label %polly.loop_header729.2, label %polly.loop_header729.1.1

polly.loop_header729.2:                           ; preds = %polly.loop_exit737.1.1, %polly.loop_exit737.2
  %polly.indvar732.2 = phi i64 [ %polly.indvar_next733.2, %polly.loop_exit737.2 ], [ 0, %polly.loop_exit737.1.1 ]
  %345 = add nuw nsw i64 %polly.indvar732.2, 64
  %346 = mul nuw nsw i64 %345, 480
  %347 = trunc i64 %345 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %347, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header729.2
  %index1135 = phi i64 [ 0, %polly.loop_header729.2 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1141 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729.2 ], [ %vec.ind.next1142, %vector.body1133 ]
  %348 = mul <4 x i32> %vec.ind1141, %broadcast.splat1144
  %349 = add <4 x i32> %348, <i32 1, i32 1, i32 1, i32 1>
  %350 = urem <4 x i32> %349, <i32 80, i32 80, i32 80, i32 80>
  %351 = sitofp <4 x i32> %350 to <4 x double>
  %352 = fmul fast <4 x double> %351, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %353 = shl i64 %index1135, 3
  %354 = add i64 %353, %346
  %355 = getelementptr i8, i8* %call1, i64 %354
  %356 = bitcast i8* %355 to <4 x double>*
  store <4 x double> %352, <4 x double>* %356, align 8, !alias.scope !93, !noalias !98
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1142 = add <4 x i32> %vec.ind1141, <i32 4, i32 4, i32 4, i32 4>
  %357 = icmp eq i64 %index.next1136, 32
  br i1 %357, label %polly.loop_exit737.2, label %vector.body1133, !llvm.loop !103

polly.loop_exit737.2:                             ; preds = %vector.body1133
  %polly.indvar_next733.2 = add nuw nsw i64 %polly.indvar732.2, 1
  %exitcond785.2.not = icmp eq i64 %polly.indvar_next733.2, 16
  br i1 %exitcond785.2.not, label %polly.loop_header729.1.2, label %polly.loop_header729.2

polly.loop_header729.1.2:                         ; preds = %polly.loop_exit737.2, %polly.loop_exit737.1.2
  %polly.indvar732.1.2 = phi i64 [ %polly.indvar_next733.1.2, %polly.loop_exit737.1.2 ], [ 0, %polly.loop_exit737.2 ]
  %358 = add nuw nsw i64 %polly.indvar732.1.2, 64
  %359 = mul nuw nsw i64 %358, 480
  %360 = trunc i64 %358 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %360, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header729.1.2
  %index1149 = phi i64 [ 0, %polly.loop_header729.1.2 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1153 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1.2 ], [ %vec.ind.next1154, %vector.body1147 ]
  %361 = add nuw nsw <4 x i64> %vec.ind1153, <i64 32, i64 32, i64 32, i64 32>
  %362 = trunc <4 x i64> %361 to <4 x i32>
  %363 = mul <4 x i32> %broadcast.splat1156, %362
  %364 = add <4 x i32> %363, <i32 1, i32 1, i32 1, i32 1>
  %365 = urem <4 x i32> %364, <i32 80, i32 80, i32 80, i32 80>
  %366 = sitofp <4 x i32> %365 to <4 x double>
  %367 = fmul fast <4 x double> %366, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %368 = extractelement <4 x i64> %361, i32 0
  %369 = shl i64 %368, 3
  %370 = add i64 %369, %359
  %371 = getelementptr i8, i8* %call1, i64 %370
  %372 = bitcast i8* %371 to <4 x double>*
  store <4 x double> %367, <4 x double>* %372, align 8, !alias.scope !93, !noalias !98
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1154 = add <4 x i64> %vec.ind1153, <i64 4, i64 4, i64 4, i64 4>
  %373 = icmp eq i64 %index.next1150, 28
  br i1 %373, label %polly.loop_exit737.1.2, label %vector.body1147, !llvm.loop !104

polly.loop_exit737.1.2:                           ; preds = %vector.body1147
  %polly.indvar_next733.1.2 = add nuw nsw i64 %polly.indvar732.1.2, 1
  %exitcond785.1.2.not = icmp eq i64 %polly.indvar_next733.1.2, 16
  br i1 %exitcond785.1.2.not, label %init_array.exit, label %polly.loop_header729.1.2

polly.loop_header703.1:                           ; preds = %polly.loop_exit711, %polly.loop_exit711.1
  %polly.indvar706.1 = phi i64 [ %polly.indvar_next707.1, %polly.loop_exit711.1 ], [ 0, %polly.loop_exit711 ]
  %374 = mul nuw nsw i64 %polly.indvar706.1, 480
  %375 = trunc i64 %polly.indvar706.1 to i32
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %polly.loop_header703.1
  %index1019 = phi i64 [ 0, %polly.loop_header703.1 ], [ %index.next1020, %vector.body1017 ]
  %vec.ind1023 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1 ], [ %vec.ind.next1024, %vector.body1017 ]
  %376 = add nuw nsw <4 x i64> %vec.ind1023, <i64 32, i64 32, i64 32, i64 32>
  %377 = trunc <4 x i64> %376 to <4 x i32>
  %378 = mul <4 x i32> %broadcast.splat1026, %377
  %379 = add <4 x i32> %378, <i32 2, i32 2, i32 2, i32 2>
  %380 = urem <4 x i32> %379, <i32 60, i32 60, i32 60, i32 60>
  %381 = sitofp <4 x i32> %380 to <4 x double>
  %382 = fmul fast <4 x double> %381, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %383 = extractelement <4 x i64> %376, i32 0
  %384 = shl i64 %383, 3
  %385 = add i64 %384, %374
  %386 = getelementptr i8, i8* %call2, i64 %385
  %387 = bitcast i8* %386 to <4 x double>*
  store <4 x double> %382, <4 x double>* %387, align 8, !alias.scope !94, !noalias !96
  %index.next1020 = add i64 %index1019, 4
  %vec.ind.next1024 = add <4 x i64> %vec.ind1023, <i64 4, i64 4, i64 4, i64 4>
  %388 = icmp eq i64 %index.next1020, 28
  br i1 %388, label %polly.loop_exit711.1, label %vector.body1017, !llvm.loop !105

polly.loop_exit711.1:                             ; preds = %vector.body1017
  %polly.indvar_next707.1 = add nuw nsw i64 %polly.indvar706.1, 1
  %exitcond791.1.not = icmp eq i64 %polly.indvar_next707.1, 32
  br i1 %exitcond791.1.not, label %polly.loop_header703.1822, label %polly.loop_header703.1

polly.loop_header703.1822:                        ; preds = %polly.loop_exit711.1, %polly.loop_exit711.1833
  %polly.indvar706.1821 = phi i64 [ %polly.indvar_next707.1831, %polly.loop_exit711.1833 ], [ 0, %polly.loop_exit711.1 ]
  %389 = add nuw nsw i64 %polly.indvar706.1821, 32
  %390 = mul nuw nsw i64 %389, 480
  %391 = trunc i64 %389 to i32
  %broadcast.splatinsert1039 = insertelement <4 x i32> poison, i32 %391, i32 0
  %broadcast.splat1040 = shufflevector <4 x i32> %broadcast.splatinsert1039, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header703.1822
  %index1031 = phi i64 [ 0, %polly.loop_header703.1822 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1037 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703.1822 ], [ %vec.ind.next1038, %vector.body1029 ]
  %392 = mul <4 x i32> %vec.ind1037, %broadcast.splat1040
  %393 = add <4 x i32> %392, <i32 2, i32 2, i32 2, i32 2>
  %394 = urem <4 x i32> %393, <i32 60, i32 60, i32 60, i32 60>
  %395 = sitofp <4 x i32> %394 to <4 x double>
  %396 = fmul fast <4 x double> %395, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %397 = shl i64 %index1031, 3
  %398 = add i64 %397, %390
  %399 = getelementptr i8, i8* %call2, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %396, <4 x double>* %400, align 8, !alias.scope !94, !noalias !96
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1038 = add <4 x i32> %vec.ind1037, <i32 4, i32 4, i32 4, i32 4>
  %401 = icmp eq i64 %index.next1032, 32
  br i1 %401, label %polly.loop_exit711.1833, label %vector.body1029, !llvm.loop !106

polly.loop_exit711.1833:                          ; preds = %vector.body1029
  %polly.indvar_next707.1831 = add nuw nsw i64 %polly.indvar706.1821, 1
  %exitcond791.1832.not = icmp eq i64 %polly.indvar_next707.1831, 32
  br i1 %exitcond791.1832.not, label %polly.loop_header703.1.1, label %polly.loop_header703.1822

polly.loop_header703.1.1:                         ; preds = %polly.loop_exit711.1833, %polly.loop_exit711.1.1
  %polly.indvar706.1.1 = phi i64 [ %polly.indvar_next707.1.1, %polly.loop_exit711.1.1 ], [ 0, %polly.loop_exit711.1833 ]
  %402 = add nuw nsw i64 %polly.indvar706.1.1, 32
  %403 = mul nuw nsw i64 %402, 480
  %404 = trunc i64 %402 to i32
  %broadcast.splatinsert1051 = insertelement <4 x i32> poison, i32 %404, i32 0
  %broadcast.splat1052 = shufflevector <4 x i32> %broadcast.splatinsert1051, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %polly.loop_header703.1.1
  %index1045 = phi i64 [ 0, %polly.loop_header703.1.1 ], [ %index.next1046, %vector.body1043 ]
  %vec.ind1049 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1.1 ], [ %vec.ind.next1050, %vector.body1043 ]
  %405 = add nuw nsw <4 x i64> %vec.ind1049, <i64 32, i64 32, i64 32, i64 32>
  %406 = trunc <4 x i64> %405 to <4 x i32>
  %407 = mul <4 x i32> %broadcast.splat1052, %406
  %408 = add <4 x i32> %407, <i32 2, i32 2, i32 2, i32 2>
  %409 = urem <4 x i32> %408, <i32 60, i32 60, i32 60, i32 60>
  %410 = sitofp <4 x i32> %409 to <4 x double>
  %411 = fmul fast <4 x double> %410, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %412 = extractelement <4 x i64> %405, i32 0
  %413 = shl i64 %412, 3
  %414 = add i64 %413, %403
  %415 = getelementptr i8, i8* %call2, i64 %414
  %416 = bitcast i8* %415 to <4 x double>*
  store <4 x double> %411, <4 x double>* %416, align 8, !alias.scope !94, !noalias !96
  %index.next1046 = add i64 %index1045, 4
  %vec.ind.next1050 = add <4 x i64> %vec.ind1049, <i64 4, i64 4, i64 4, i64 4>
  %417 = icmp eq i64 %index.next1046, 28
  br i1 %417, label %polly.loop_exit711.1.1, label %vector.body1043, !llvm.loop !107

polly.loop_exit711.1.1:                           ; preds = %vector.body1043
  %polly.indvar_next707.1.1 = add nuw nsw i64 %polly.indvar706.1.1, 1
  %exitcond791.1.1.not = icmp eq i64 %polly.indvar_next707.1.1, 32
  br i1 %exitcond791.1.1.not, label %polly.loop_header703.2, label %polly.loop_header703.1.1

polly.loop_header703.2:                           ; preds = %polly.loop_exit711.1.1, %polly.loop_exit711.2
  %polly.indvar706.2 = phi i64 [ %polly.indvar_next707.2, %polly.loop_exit711.2 ], [ 0, %polly.loop_exit711.1.1 ]
  %418 = add nuw nsw i64 %polly.indvar706.2, 64
  %419 = mul nuw nsw i64 %418, 480
  %420 = trunc i64 %418 to i32
  %broadcast.splatinsert1065 = insertelement <4 x i32> poison, i32 %420, i32 0
  %broadcast.splat1066 = shufflevector <4 x i32> %broadcast.splatinsert1065, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %polly.loop_header703.2
  %index1057 = phi i64 [ 0, %polly.loop_header703.2 ], [ %index.next1058, %vector.body1055 ]
  %vec.ind1063 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703.2 ], [ %vec.ind.next1064, %vector.body1055 ]
  %421 = mul <4 x i32> %vec.ind1063, %broadcast.splat1066
  %422 = add <4 x i32> %421, <i32 2, i32 2, i32 2, i32 2>
  %423 = urem <4 x i32> %422, <i32 60, i32 60, i32 60, i32 60>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %426 = shl i64 %index1057, 3
  %427 = add i64 %426, %419
  %428 = getelementptr i8, i8* %call2, i64 %427
  %429 = bitcast i8* %428 to <4 x double>*
  store <4 x double> %425, <4 x double>* %429, align 8, !alias.scope !94, !noalias !96
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1064 = add <4 x i32> %vec.ind1063, <i32 4, i32 4, i32 4, i32 4>
  %430 = icmp eq i64 %index.next1058, 32
  br i1 %430, label %polly.loop_exit711.2, label %vector.body1055, !llvm.loop !108

polly.loop_exit711.2:                             ; preds = %vector.body1055
  %polly.indvar_next707.2 = add nuw nsw i64 %polly.indvar706.2, 1
  %exitcond791.2.not = icmp eq i64 %polly.indvar_next707.2, 16
  br i1 %exitcond791.2.not, label %polly.loop_header703.1.2, label %polly.loop_header703.2

polly.loop_header703.1.2:                         ; preds = %polly.loop_exit711.2, %polly.loop_exit711.1.2
  %polly.indvar706.1.2 = phi i64 [ %polly.indvar_next707.1.2, %polly.loop_exit711.1.2 ], [ 0, %polly.loop_exit711.2 ]
  %431 = add nuw nsw i64 %polly.indvar706.1.2, 64
  %432 = mul nuw nsw i64 %431, 480
  %433 = trunc i64 %431 to i32
  %broadcast.splatinsert1077 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat1078 = shufflevector <4 x i32> %broadcast.splatinsert1077, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %polly.loop_header703.1.2
  %index1071 = phi i64 [ 0, %polly.loop_header703.1.2 ], [ %index.next1072, %vector.body1069 ]
  %vec.ind1075 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1.2 ], [ %vec.ind.next1076, %vector.body1069 ]
  %434 = add nuw nsw <4 x i64> %vec.ind1075, <i64 32, i64 32, i64 32, i64 32>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat1078, %435
  %437 = add <4 x i32> %436, <i32 2, i32 2, i32 2, i32 2>
  %438 = urem <4 x i32> %437, <i32 60, i32 60, i32 60, i32 60>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = extractelement <4 x i64> %434, i32 0
  %442 = shl i64 %441, 3
  %443 = add i64 %442, %432
  %444 = getelementptr i8, i8* %call2, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %440, <4 x double>* %445, align 8, !alias.scope !94, !noalias !96
  %index.next1072 = add i64 %index1071, 4
  %vec.ind.next1076 = add <4 x i64> %vec.ind1075, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next1072, 28
  br i1 %446, label %polly.loop_exit711.1.2, label %vector.body1069, !llvm.loop !109

polly.loop_exit711.1.2:                           ; preds = %vector.body1069
  %polly.indvar_next707.1.2 = add nuw nsw i64 %polly.indvar706.1.2, 1
  %exitcond791.1.2.not = icmp eq i64 %polly.indvar_next707.1.2, 16
  br i1 %exitcond791.1.2.not, label %polly.loop_header729, label %polly.loop_header703.1.2

polly.loop_header676.1:                           ; preds = %polly.loop_exit684, %polly.loop_exit684.1
  %polly.indvar679.1 = phi i64 [ %polly.indvar_next680.1, %polly.loop_exit684.1 ], [ 0, %polly.loop_exit684 ]
  %447 = mul nuw nsw i64 %polly.indvar679.1, 640
  %448 = trunc i64 %polly.indvar679.1 to i32
  %broadcast.splatinsert911 = insertelement <4 x i32> poison, i32 %448, i32 0
  %broadcast.splat912 = shufflevector <4 x i32> %broadcast.splatinsert911, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body903

vector.body903:                                   ; preds = %vector.body903, %polly.loop_header676.1
  %index905 = phi i64 [ 0, %polly.loop_header676.1 ], [ %index.next906, %vector.body903 ]
  %vec.ind909 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1 ], [ %vec.ind.next910, %vector.body903 ]
  %449 = add nuw nsw <4 x i64> %vec.ind909, <i64 32, i64 32, i64 32, i64 32>
  %450 = trunc <4 x i64> %449 to <4 x i32>
  %451 = mul <4 x i32> %broadcast.splat912, %450
  %452 = add <4 x i32> %451, <i32 3, i32 3, i32 3, i32 3>
  %453 = urem <4 x i32> %452, <i32 80, i32 80, i32 80, i32 80>
  %454 = sitofp <4 x i32> %453 to <4 x double>
  %455 = fmul fast <4 x double> %454, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %456 = extractelement <4 x i64> %449, i32 0
  %457 = shl i64 %456, 3
  %458 = add nuw nsw i64 %457, %447
  %459 = getelementptr i8, i8* %call, i64 %458
  %460 = bitcast i8* %459 to <4 x double>*
  store <4 x double> %455, <4 x double>* %460, align 8, !alias.scope !90, !noalias !92
  %index.next906 = add i64 %index905, 4
  %vec.ind.next910 = add <4 x i64> %vec.ind909, <i64 4, i64 4, i64 4, i64 4>
  %461 = icmp eq i64 %index.next906, 32
  br i1 %461, label %polly.loop_exit684.1, label %vector.body903, !llvm.loop !110

polly.loop_exit684.1:                             ; preds = %vector.body903
  %polly.indvar_next680.1 = add nuw nsw i64 %polly.indvar679.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next680.1, 32
  br i1 %exitcond800.1.not, label %polly.loop_header676.2, label %polly.loop_header676.1

polly.loop_header676.2:                           ; preds = %polly.loop_exit684.1, %polly.loop_exit684.2
  %polly.indvar679.2 = phi i64 [ %polly.indvar_next680.2, %polly.loop_exit684.2 ], [ 0, %polly.loop_exit684.1 ]
  %462 = mul nuw nsw i64 %polly.indvar679.2, 640
  %463 = trunc i64 %polly.indvar679.2 to i32
  %broadcast.splatinsert923 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat924 = shufflevector <4 x i32> %broadcast.splatinsert923, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body915

vector.body915:                                   ; preds = %vector.body915, %polly.loop_header676.2
  %index917 = phi i64 [ 0, %polly.loop_header676.2 ], [ %index.next918, %vector.body915 ]
  %vec.ind921 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2 ], [ %vec.ind.next922, %vector.body915 ]
  %464 = add nuw nsw <4 x i64> %vec.ind921, <i64 64, i64 64, i64 64, i64 64>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat924, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !90, !noalias !92
  %index.next918 = add i64 %index917, 4
  %vec.ind.next922 = add <4 x i64> %vec.ind921, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next918, 16
  br i1 %476, label %polly.loop_exit684.2, label %vector.body915, !llvm.loop !111

polly.loop_exit684.2:                             ; preds = %vector.body915
  %polly.indvar_next680.2 = add nuw nsw i64 %polly.indvar679.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next680.2, 32
  br i1 %exitcond800.2.not, label %polly.loop_header676.1836, label %polly.loop_header676.2

polly.loop_header676.1836:                        ; preds = %polly.loop_exit684.2, %polly.loop_exit684.1847
  %polly.indvar679.1835 = phi i64 [ %polly.indvar_next680.1845, %polly.loop_exit684.1847 ], [ 0, %polly.loop_exit684.2 ]
  %477 = add nuw nsw i64 %polly.indvar679.1835, 32
  %478 = mul nuw nsw i64 %477, 640
  %479 = trunc i64 %477 to i32
  %broadcast.splatinsert937 = insertelement <4 x i32> poison, i32 %479, i32 0
  %broadcast.splat938 = shufflevector <4 x i32> %broadcast.splatinsert937, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %polly.loop_header676.1836
  %index929 = phi i64 [ 0, %polly.loop_header676.1836 ], [ %index.next930, %vector.body927 ]
  %vec.ind935 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676.1836 ], [ %vec.ind.next936, %vector.body927 ]
  %480 = mul <4 x i32> %vec.ind935, %broadcast.splat938
  %481 = add <4 x i32> %480, <i32 3, i32 3, i32 3, i32 3>
  %482 = urem <4 x i32> %481, <i32 80, i32 80, i32 80, i32 80>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %485 = shl i64 %index929, 3
  %486 = add nuw nsw i64 %485, %478
  %487 = getelementptr i8, i8* %call, i64 %486
  %488 = bitcast i8* %487 to <4 x double>*
  store <4 x double> %484, <4 x double>* %488, align 8, !alias.scope !90, !noalias !92
  %index.next930 = add i64 %index929, 4
  %vec.ind.next936 = add <4 x i32> %vec.ind935, <i32 4, i32 4, i32 4, i32 4>
  %489 = icmp eq i64 %index.next930, 32
  br i1 %489, label %polly.loop_exit684.1847, label %vector.body927, !llvm.loop !112

polly.loop_exit684.1847:                          ; preds = %vector.body927
  %polly.indvar_next680.1845 = add nuw nsw i64 %polly.indvar679.1835, 1
  %exitcond800.1846.not = icmp eq i64 %polly.indvar_next680.1845, 32
  br i1 %exitcond800.1846.not, label %polly.loop_header676.1.1, label %polly.loop_header676.1836

polly.loop_header676.1.1:                         ; preds = %polly.loop_exit684.1847, %polly.loop_exit684.1.1
  %polly.indvar679.1.1 = phi i64 [ %polly.indvar_next680.1.1, %polly.loop_exit684.1.1 ], [ 0, %polly.loop_exit684.1847 ]
  %490 = add nuw nsw i64 %polly.indvar679.1.1, 32
  %491 = mul nuw nsw i64 %490, 640
  %492 = trunc i64 %490 to i32
  %broadcast.splatinsert949 = insertelement <4 x i32> poison, i32 %492, i32 0
  %broadcast.splat950 = shufflevector <4 x i32> %broadcast.splatinsert949, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body941

vector.body941:                                   ; preds = %vector.body941, %polly.loop_header676.1.1
  %index943 = phi i64 [ 0, %polly.loop_header676.1.1 ], [ %index.next944, %vector.body941 ]
  %vec.ind947 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1.1 ], [ %vec.ind.next948, %vector.body941 ]
  %493 = add nuw nsw <4 x i64> %vec.ind947, <i64 32, i64 32, i64 32, i64 32>
  %494 = trunc <4 x i64> %493 to <4 x i32>
  %495 = mul <4 x i32> %broadcast.splat950, %494
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = extractelement <4 x i64> %493, i32 0
  %501 = shl i64 %500, 3
  %502 = add nuw nsw i64 %501, %491
  %503 = getelementptr i8, i8* %call, i64 %502
  %504 = bitcast i8* %503 to <4 x double>*
  store <4 x double> %499, <4 x double>* %504, align 8, !alias.scope !90, !noalias !92
  %index.next944 = add i64 %index943, 4
  %vec.ind.next948 = add <4 x i64> %vec.ind947, <i64 4, i64 4, i64 4, i64 4>
  %505 = icmp eq i64 %index.next944, 32
  br i1 %505, label %polly.loop_exit684.1.1, label %vector.body941, !llvm.loop !113

polly.loop_exit684.1.1:                           ; preds = %vector.body941
  %polly.indvar_next680.1.1 = add nuw nsw i64 %polly.indvar679.1.1, 1
  %exitcond800.1.1.not = icmp eq i64 %polly.indvar_next680.1.1, 32
  br i1 %exitcond800.1.1.not, label %polly.loop_header676.2.1, label %polly.loop_header676.1.1

polly.loop_header676.2.1:                         ; preds = %polly.loop_exit684.1.1, %polly.loop_exit684.2.1
  %polly.indvar679.2.1 = phi i64 [ %polly.indvar_next680.2.1, %polly.loop_exit684.2.1 ], [ 0, %polly.loop_exit684.1.1 ]
  %506 = add nuw nsw i64 %polly.indvar679.2.1, 32
  %507 = mul nuw nsw i64 %506, 640
  %508 = trunc i64 %506 to i32
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %508, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %polly.loop_header676.2.1
  %index955 = phi i64 [ 0, %polly.loop_header676.2.1 ], [ %index.next956, %vector.body953 ]
  %vec.ind959 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2.1 ], [ %vec.ind.next960, %vector.body953 ]
  %509 = add nuw nsw <4 x i64> %vec.ind959, <i64 64, i64 64, i64 64, i64 64>
  %510 = trunc <4 x i64> %509 to <4 x i32>
  %511 = mul <4 x i32> %broadcast.splat962, %510
  %512 = add <4 x i32> %511, <i32 3, i32 3, i32 3, i32 3>
  %513 = urem <4 x i32> %512, <i32 80, i32 80, i32 80, i32 80>
  %514 = sitofp <4 x i32> %513 to <4 x double>
  %515 = fmul fast <4 x double> %514, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %516 = extractelement <4 x i64> %509, i32 0
  %517 = shl i64 %516, 3
  %518 = add nuw nsw i64 %517, %507
  %519 = getelementptr i8, i8* %call, i64 %518
  %520 = bitcast i8* %519 to <4 x double>*
  store <4 x double> %515, <4 x double>* %520, align 8, !alias.scope !90, !noalias !92
  %index.next956 = add i64 %index955, 4
  %vec.ind.next960 = add <4 x i64> %vec.ind959, <i64 4, i64 4, i64 4, i64 4>
  %521 = icmp eq i64 %index.next956, 16
  br i1 %521, label %polly.loop_exit684.2.1, label %vector.body953, !llvm.loop !114

polly.loop_exit684.2.1:                           ; preds = %vector.body953
  %polly.indvar_next680.2.1 = add nuw nsw i64 %polly.indvar679.2.1, 1
  %exitcond800.2.1.not = icmp eq i64 %polly.indvar_next680.2.1, 32
  br i1 %exitcond800.2.1.not, label %polly.loop_header676.2850, label %polly.loop_header676.2.1

polly.loop_header676.2850:                        ; preds = %polly.loop_exit684.2.1, %polly.loop_exit684.2861
  %polly.indvar679.2849 = phi i64 [ %polly.indvar_next680.2859, %polly.loop_exit684.2861 ], [ 0, %polly.loop_exit684.2.1 ]
  %522 = add nuw nsw i64 %polly.indvar679.2849, 64
  %523 = mul nuw nsw i64 %522, 640
  %524 = trunc i64 %522 to i32
  %broadcast.splatinsert975 = insertelement <4 x i32> poison, i32 %524, i32 0
  %broadcast.splat976 = shufflevector <4 x i32> %broadcast.splatinsert975, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %polly.loop_header676.2850
  %index967 = phi i64 [ 0, %polly.loop_header676.2850 ], [ %index.next968, %vector.body965 ]
  %vec.ind973 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676.2850 ], [ %vec.ind.next974, %vector.body965 ]
  %525 = mul <4 x i32> %vec.ind973, %broadcast.splat976
  %526 = add <4 x i32> %525, <i32 3, i32 3, i32 3, i32 3>
  %527 = urem <4 x i32> %526, <i32 80, i32 80, i32 80, i32 80>
  %528 = sitofp <4 x i32> %527 to <4 x double>
  %529 = fmul fast <4 x double> %528, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %530 = shl i64 %index967, 3
  %531 = add nuw nsw i64 %530, %523
  %532 = getelementptr i8, i8* %call, i64 %531
  %533 = bitcast i8* %532 to <4 x double>*
  store <4 x double> %529, <4 x double>* %533, align 8, !alias.scope !90, !noalias !92
  %index.next968 = add i64 %index967, 4
  %vec.ind.next974 = add <4 x i32> %vec.ind973, <i32 4, i32 4, i32 4, i32 4>
  %534 = icmp eq i64 %index.next968, 32
  br i1 %534, label %polly.loop_exit684.2861, label %vector.body965, !llvm.loop !115

polly.loop_exit684.2861:                          ; preds = %vector.body965
  %polly.indvar_next680.2859 = add nuw nsw i64 %polly.indvar679.2849, 1
  %exitcond800.2860.not = icmp eq i64 %polly.indvar_next680.2859, 16
  br i1 %exitcond800.2860.not, label %polly.loop_header676.1.2, label %polly.loop_header676.2850

polly.loop_header676.1.2:                         ; preds = %polly.loop_exit684.2861, %polly.loop_exit684.1.2
  %polly.indvar679.1.2 = phi i64 [ %polly.indvar_next680.1.2, %polly.loop_exit684.1.2 ], [ 0, %polly.loop_exit684.2861 ]
  %535 = add nuw nsw i64 %polly.indvar679.1.2, 64
  %536 = mul nuw nsw i64 %535, 640
  %537 = trunc i64 %535 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %537, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %polly.loop_header676.1.2
  %index981 = phi i64 [ 0, %polly.loop_header676.1.2 ], [ %index.next982, %vector.body979 ]
  %vec.ind985 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1.2 ], [ %vec.ind.next986, %vector.body979 ]
  %538 = add nuw nsw <4 x i64> %vec.ind985, <i64 32, i64 32, i64 32, i64 32>
  %539 = trunc <4 x i64> %538 to <4 x i32>
  %540 = mul <4 x i32> %broadcast.splat988, %539
  %541 = add <4 x i32> %540, <i32 3, i32 3, i32 3, i32 3>
  %542 = urem <4 x i32> %541, <i32 80, i32 80, i32 80, i32 80>
  %543 = sitofp <4 x i32> %542 to <4 x double>
  %544 = fmul fast <4 x double> %543, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %545 = extractelement <4 x i64> %538, i32 0
  %546 = shl i64 %545, 3
  %547 = add nuw nsw i64 %546, %536
  %548 = getelementptr i8, i8* %call, i64 %547
  %549 = bitcast i8* %548 to <4 x double>*
  store <4 x double> %544, <4 x double>* %549, align 8, !alias.scope !90, !noalias !92
  %index.next982 = add i64 %index981, 4
  %vec.ind.next986 = add <4 x i64> %vec.ind985, <i64 4, i64 4, i64 4, i64 4>
  %550 = icmp eq i64 %index.next982, 32
  br i1 %550, label %polly.loop_exit684.1.2, label %vector.body979, !llvm.loop !116

polly.loop_exit684.1.2:                           ; preds = %vector.body979
  %polly.indvar_next680.1.2 = add nuw nsw i64 %polly.indvar679.1.2, 1
  %exitcond800.1.2.not = icmp eq i64 %polly.indvar_next680.1.2, 16
  br i1 %exitcond800.1.2.not, label %polly.loop_header676.2.2, label %polly.loop_header676.1.2

polly.loop_header676.2.2:                         ; preds = %polly.loop_exit684.1.2, %polly.loop_exit684.2.2
  %polly.indvar679.2.2 = phi i64 [ %polly.indvar_next680.2.2, %polly.loop_exit684.2.2 ], [ 0, %polly.loop_exit684.1.2 ]
  %551 = add nuw nsw i64 %polly.indvar679.2.2, 64
  %552 = mul nuw nsw i64 %551, 640
  %553 = trunc i64 %551 to i32
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %553, i32 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header676.2.2
  %index993 = phi i64 [ 0, %polly.loop_header676.2.2 ], [ %index.next994, %vector.body991 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2.2 ], [ %vec.ind.next998, %vector.body991 ]
  %554 = add nuw nsw <4 x i64> %vec.ind997, <i64 64, i64 64, i64 64, i64 64>
  %555 = trunc <4 x i64> %554 to <4 x i32>
  %556 = mul <4 x i32> %broadcast.splat1000, %555
  %557 = add <4 x i32> %556, <i32 3, i32 3, i32 3, i32 3>
  %558 = urem <4 x i32> %557, <i32 80, i32 80, i32 80, i32 80>
  %559 = sitofp <4 x i32> %558 to <4 x double>
  %560 = fmul fast <4 x double> %559, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %561 = extractelement <4 x i64> %554, i32 0
  %562 = shl i64 %561, 3
  %563 = add nuw nsw i64 %562, %552
  %564 = getelementptr i8, i8* %call, i64 %563
  %565 = bitcast i8* %564 to <4 x double>*
  store <4 x double> %560, <4 x double>* %565, align 8, !alias.scope !90, !noalias !92
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %566 = icmp eq i64 %index.next994, 16
  br i1 %566, label %polly.loop_exit684.2.2, label %vector.body991, !llvm.loop !117

polly.loop_exit684.2.2:                           ; preds = %vector.body991
  %polly.indvar_next680.2.2 = add nuw nsw i64 %polly.indvar679.2.2, 1
  %exitcond800.2.2.not = icmp eq i64 %polly.indvar_next680.2.2, 16
  br i1 %exitcond800.2.2.not, label %polly.loop_header703, label %polly.loop_header676.2.2
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
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 20}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 16}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !22, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !22, !53}
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
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!62, !65}
!71 = !{!62, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !75}
!80 = !{!72, !76}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !84}
!89 = !{!81, !85}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = !{!93, !90}
!97 = distinct !{!97, !13}
!98 = !{!94, !90}
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
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
