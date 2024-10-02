; ModuleID = 'syr2k_recreations//mmp_syr2k_S_115.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_115.c"
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit501
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit354
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207
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

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nsw i64 %polly.indvar202, 2
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond757.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond757.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 1, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = shl nsw i64 %polly.indvar208, 3
  %99 = mul nsw i64 %polly.indvar208, 3840
  %100 = mul nsw i64 %polly.indvar208, 5120
  %101 = or i64 %98, 1
  %102 = mul nuw nsw i64 %101, 480
  %103 = mul nuw nsw i64 %101, 640
  %104 = or i64 %98, 2
  %105 = mul nuw nsw i64 %104, 480
  %106 = mul nuw nsw i64 %104, 640
  %107 = or i64 %98, 3
  %108 = mul nuw nsw i64 %107, 480
  %109 = mul nuw nsw i64 %107, 640
  %110 = or i64 %98, 4
  %111 = mul nuw nsw i64 %110, 480
  %112 = mul nuw nsw i64 %110, 640
  %113 = or i64 %98, 5
  %114 = mul nuw nsw i64 %113, 480
  %115 = mul nuw nsw i64 %113, 640
  %116 = or i64 %98, 6
  %117 = mul nuw nsw i64 %116, 480
  %118 = mul nuw nsw i64 %116, 640
  %119 = or i64 %98, 7
  %120 = mul nuw nsw i64 %119, 480
  %121 = mul nuw nsw i64 %119, 640
  %122 = add nuw nsw i64 %indvars.iv, 6
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit225.7
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond756.not = icmp eq i64 %polly.indvar_next209, 10
  br i1 %exitcond756.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit225.7, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit225.7 ]
  %123 = add nuw nsw i64 %polly.indvar214, %97
  %124 = shl i64 %123, 3
  %125 = add nuw nsw i64 %99, %124
  %scevgep232 = getelementptr i8, i8* %call2, i64 %125
  %scevgep232233 = bitcast i8* %scevgep232 to double*
  %_p_scalar_234 = load double, double* %scevgep232233, align 8, !alias.scope !66, !noalias !70
  %scevgep238 = getelementptr i8, i8* %call1, i64 %125
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %126 = add nuw nsw i64 %102, %124
  %scevgep232.1 = getelementptr i8, i8* %call2, i64 %126
  %scevgep232233.1 = bitcast i8* %scevgep232.1 to double*
  %_p_scalar_234.1 = load double, double* %scevgep232233.1, align 8, !alias.scope !66, !noalias !70
  %scevgep238.1 = getelementptr i8, i8* %call1, i64 %126
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.1

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header211
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %127 = mul nuw nsw i64 %polly.indvar226, 480
  %128 = add nuw nsw i64 %127, %124
  %scevgep229 = getelementptr i8, i8* %call1, i64 %128
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_234, %_p_scalar_231
  %scevgep235 = getelementptr i8, i8* %call2, i64 %128
  %scevgep235236 = bitcast i8* %scevgep235 to double*
  %_p_scalar_237 = load double, double* %scevgep235236, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_240, %_p_scalar_237
  %129 = shl nuw nsw i64 %polly.indvar226, 3
  %130 = add nuw nsw i64 %129, %100
  %scevgep241 = getelementptr i8, i8* %call, i64 %130
  %scevgep241242 = bitcast i8* %scevgep241 to double*
  %_p_scalar_243 = load double, double* %scevgep241242, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_243
  store double %p_add42.i118, double* %scevgep241242, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header330:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit338
  %indvar1192 = phi i64 [ %indvar.next1193, %polly.loop_exit338 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar333 = phi i64 [ %polly.indvar_next334, %polly.loop_exit338 ], [ 1, %kernel_syr2k.exit ]
  %131 = add i64 %indvar1192, 1
  %132 = mul nuw nsw i64 %polly.indvar333, 640
  %scevgep342 = getelementptr i8, i8* %call, i64 %132
  %min.iters.check1194 = icmp ult i64 %131, 4
  br i1 %min.iters.check1194, label %polly.loop_header336.preheader, label %vector.ph1195

vector.ph1195:                                    ; preds = %polly.loop_header330
  %n.vec1197 = and i64 %131, -4
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1195
  %index1198 = phi i64 [ 0, %vector.ph1195 ], [ %index.next1199, %vector.body1191 ]
  %133 = shl nuw nsw i64 %index1198, 3
  %134 = getelementptr i8, i8* %scevgep342, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1202 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !72, !noalias !74
  %136 = fmul fast <4 x double> %wide.load1202, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %137 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %136, <4 x double>* %137, align 8, !alias.scope !72, !noalias !74
  %index.next1199 = add i64 %index1198, 4
  %138 = icmp eq i64 %index.next1199, %n.vec1197
  br i1 %138, label %middle.block1189, label %vector.body1191, !llvm.loop !77

middle.block1189:                                 ; preds = %vector.body1191
  %cmp.n1201 = icmp eq i64 %131, %n.vec1197
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
  %139 = shl nuw nsw i64 %polly.indvar339, 3
  %scevgep343 = getelementptr i8, i8* %scevgep342, i64 %139
  %scevgep343344 = bitcast i8* %scevgep343 to double*
  %_p_scalar_345 = load double, double* %scevgep343344, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_345, 1.200000e+00
  store double %p_mul.i57, double* %scevgep343344, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond769.not = icmp eq i64 %polly.indvar_next340, %polly.indvar333
  br i1 %exitcond769.not, label %polly.loop_exit338, label %polly.loop_header336, !llvm.loop !78

polly.loop_header346:                             ; preds = %polly.loop_exit338, %polly.loop_exit354
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 0, %polly.loop_exit338 ]
  %140 = shl nsw i64 %polly.indvar349, 2
  br label %polly.loop_header352

polly.loop_exit354:                               ; preds = %polly.loop_exit360
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond768.not = icmp eq i64 %polly.indvar_next350, 15
  br i1 %exitcond768.not, label %kernel_syr2k.exit90, label %polly.loop_header346

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.loop_header346
  %indvars.iv760 = phi i64 [ %indvars.iv.next761, %polly.loop_exit360 ], [ 1, %polly.loop_header346 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 0, %polly.loop_header346 ]
  %141 = shl nsw i64 %polly.indvar355, 3
  %142 = mul nsw i64 %polly.indvar355, 3840
  %143 = mul nsw i64 %polly.indvar355, 5120
  %144 = or i64 %141, 1
  %145 = mul nuw nsw i64 %144, 480
  %146 = mul nuw nsw i64 %144, 640
  %147 = or i64 %141, 2
  %148 = mul nuw nsw i64 %147, 480
  %149 = mul nuw nsw i64 %147, 640
  %150 = or i64 %141, 3
  %151 = mul nuw nsw i64 %150, 480
  %152 = mul nuw nsw i64 %150, 640
  %153 = or i64 %141, 4
  %154 = mul nuw nsw i64 %153, 480
  %155 = mul nuw nsw i64 %153, 640
  %156 = or i64 %141, 5
  %157 = mul nuw nsw i64 %156, 480
  %158 = mul nuw nsw i64 %156, 640
  %159 = or i64 %141, 6
  %160 = mul nuw nsw i64 %159, 480
  %161 = mul nuw nsw i64 %159, 640
  %162 = or i64 %141, 7
  %163 = mul nuw nsw i64 %162, 480
  %164 = mul nuw nsw i64 %162, 640
  %165 = add nuw nsw i64 %indvars.iv760, 6
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_exit372.7
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next761 = add nuw nsw i64 %indvars.iv760, 8
  %exitcond767.not = icmp eq i64 %polly.indvar_next356, 10
  br i1 %exitcond767.not, label %polly.loop_exit354, label %polly.loop_header352

polly.loop_header358:                             ; preds = %polly.loop_exit372.7, %polly.loop_header352
  %polly.indvar361 = phi i64 [ 0, %polly.loop_header352 ], [ %polly.indvar_next362, %polly.loop_exit372.7 ]
  %166 = add nuw nsw i64 %polly.indvar361, %140
  %167 = shl i64 %166, 3
  %168 = add nuw nsw i64 %142, %167
  %scevgep379 = getelementptr i8, i8* %call2, i64 %168
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !76, !noalias !79
  %scevgep385 = getelementptr i8, i8* %call1, i64 %168
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_header370
  %169 = add nuw nsw i64 %145, %167
  %scevgep379.1 = getelementptr i8, i8* %call2, i64 %169
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !76, !noalias !79
  %scevgep385.1 = getelementptr i8, i8* %call1, i64 %169
  %scevgep385386.1 = bitcast i8* %scevgep385.1 to double*
  %_p_scalar_387.1 = load double, double* %scevgep385386.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header370.1

polly.loop_header370:                             ; preds = %polly.loop_header370, %polly.loop_header358
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header358 ], [ %polly.indvar_next374, %polly.loop_header370 ]
  %170 = mul nuw nsw i64 %polly.indvar373, 480
  %171 = add nuw nsw i64 %170, %167
  %scevgep376 = getelementptr i8, i8* %call1, i64 %171
  %scevgep376377 = bitcast i8* %scevgep376 to double*
  %_p_scalar_378 = load double, double* %scevgep376377, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_381, %_p_scalar_378
  %scevgep382 = getelementptr i8, i8* %call2, i64 %171
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_387, %_p_scalar_384
  %172 = shl nuw nsw i64 %polly.indvar373, 3
  %173 = add nuw nsw i64 %172, %143
  %scevgep388 = getelementptr i8, i8* %call, i64 %173
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_390
  store double %p_add42.i79, double* %scevgep388389, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond764.not = icmp eq i64 %polly.indvar_next374, %indvars.iv760
  br i1 %exitcond764.not, label %polly.loop_exit372, label %polly.loop_header370

polly.loop_header477:                             ; preds = %init_array.exit, %polly.loop_exit485
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit485 ], [ 0, %init_array.exit ]
  %polly.indvar480 = phi i64 [ %polly.indvar_next481, %polly.loop_exit485 ], [ 1, %init_array.exit ]
  %174 = add i64 %indvar, 1
  %175 = mul nuw nsw i64 %polly.indvar480, 640
  %scevgep489 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check1168 = icmp ult i64 %174, 4
  br i1 %min.iters.check1168, label %polly.loop_header483.preheader, label %vector.ph1169

vector.ph1169:                                    ; preds = %polly.loop_header477
  %n.vec1171 = and i64 %174, -4
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1169
  %index1172 = phi i64 [ 0, %vector.ph1169 ], [ %index.next1173, %vector.body1167 ]
  %176 = shl nuw nsw i64 %index1172, 3
  %177 = getelementptr i8, i8* %scevgep489, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load1176 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !81, !noalias !83
  %179 = fmul fast <4 x double> %wide.load1176, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !81, !noalias !83
  %index.next1173 = add i64 %index1172, 4
  %181 = icmp eq i64 %index.next1173, %n.vec1171
  br i1 %181, label %middle.block1165, label %vector.body1167, !llvm.loop !86

middle.block1165:                                 ; preds = %vector.body1167
  %cmp.n1175 = icmp eq i64 %174, %n.vec1171
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
  %182 = shl nuw nsw i64 %polly.indvar486, 3
  %scevgep490 = getelementptr i8, i8* %scevgep489, i64 %182
  %scevgep490491 = bitcast i8* %scevgep490 to double*
  %_p_scalar_492 = load double, double* %scevgep490491, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_492, 1.200000e+00
  store double %p_mul.i, double* %scevgep490491, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next487, %polly.indvar480
  br i1 %exitcond780.not, label %polly.loop_exit485, label %polly.loop_header483, !llvm.loop !87

polly.loop_header493:                             ; preds = %polly.loop_exit485, %polly.loop_exit501
  %polly.indvar496 = phi i64 [ %polly.indvar_next497, %polly.loop_exit501 ], [ 0, %polly.loop_exit485 ]
  %183 = shl nsw i64 %polly.indvar496, 2
  br label %polly.loop_header499

polly.loop_exit501:                               ; preds = %polly.loop_exit507
  %polly.indvar_next497 = add nuw nsw i64 %polly.indvar496, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next497, 15
  br i1 %exitcond779.not, label %kernel_syr2k.exit, label %polly.loop_header493

polly.loop_header499:                             ; preds = %polly.loop_exit507, %polly.loop_header493
  %indvars.iv771 = phi i64 [ %indvars.iv.next772, %polly.loop_exit507 ], [ 1, %polly.loop_header493 ]
  %polly.indvar502 = phi i64 [ %polly.indvar_next503, %polly.loop_exit507 ], [ 0, %polly.loop_header493 ]
  %184 = shl nsw i64 %polly.indvar502, 3
  %185 = mul nsw i64 %polly.indvar502, 3840
  %186 = mul nsw i64 %polly.indvar502, 5120
  %187 = or i64 %184, 1
  %188 = mul nuw nsw i64 %187, 480
  %189 = mul nuw nsw i64 %187, 640
  %190 = or i64 %184, 2
  %191 = mul nuw nsw i64 %190, 480
  %192 = mul nuw nsw i64 %190, 640
  %193 = or i64 %184, 3
  %194 = mul nuw nsw i64 %193, 480
  %195 = mul nuw nsw i64 %193, 640
  %196 = or i64 %184, 4
  %197 = mul nuw nsw i64 %196, 480
  %198 = mul nuw nsw i64 %196, 640
  %199 = or i64 %184, 5
  %200 = mul nuw nsw i64 %199, 480
  %201 = mul nuw nsw i64 %199, 640
  %202 = or i64 %184, 6
  %203 = mul nuw nsw i64 %202, 480
  %204 = mul nuw nsw i64 %202, 640
  %205 = or i64 %184, 7
  %206 = mul nuw nsw i64 %205, 480
  %207 = mul nuw nsw i64 %205, 640
  %208 = add nuw nsw i64 %indvars.iv771, 6
  br label %polly.loop_header505

polly.loop_exit507:                               ; preds = %polly.loop_exit519.7
  %polly.indvar_next503 = add nuw nsw i64 %polly.indvar502, 1
  %indvars.iv.next772 = add nuw nsw i64 %indvars.iv771, 8
  %exitcond778.not = icmp eq i64 %polly.indvar_next503, 10
  br i1 %exitcond778.not, label %polly.loop_exit501, label %polly.loop_header499

polly.loop_header505:                             ; preds = %polly.loop_exit519.7, %polly.loop_header499
  %polly.indvar508 = phi i64 [ 0, %polly.loop_header499 ], [ %polly.indvar_next509, %polly.loop_exit519.7 ]
  %209 = add nuw nsw i64 %polly.indvar508, %183
  %210 = shl i64 %209, 3
  %211 = add nuw nsw i64 %185, %210
  %scevgep526 = getelementptr i8, i8* %call2, i64 %211
  %scevgep526527 = bitcast i8* %scevgep526 to double*
  %_p_scalar_528 = load double, double* %scevgep526527, align 8, !alias.scope !85, !noalias !88
  %scevgep532 = getelementptr i8, i8* %call1, i64 %211
  %scevgep532533 = bitcast i8* %scevgep532 to double*
  %_p_scalar_534 = load double, double* %scevgep532533, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_header517
  %212 = add nuw nsw i64 %188, %210
  %scevgep526.1 = getelementptr i8, i8* %call2, i64 %212
  %scevgep526527.1 = bitcast i8* %scevgep526.1 to double*
  %_p_scalar_528.1 = load double, double* %scevgep526527.1, align 8, !alias.scope !85, !noalias !88
  %scevgep532.1 = getelementptr i8, i8* %call1, i64 %212
  %scevgep532533.1 = bitcast i8* %scevgep532.1 to double*
  %_p_scalar_534.1 = load double, double* %scevgep532533.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header517.1

polly.loop_header517:                             ; preds = %polly.loop_header517, %polly.loop_header505
  %polly.indvar520 = phi i64 [ 0, %polly.loop_header505 ], [ %polly.indvar_next521, %polly.loop_header517 ]
  %213 = mul nuw nsw i64 %polly.indvar520, 480
  %214 = add nuw nsw i64 %213, %210
  %scevgep523 = getelementptr i8, i8* %call1, i64 %214
  %scevgep523524 = bitcast i8* %scevgep523 to double*
  %_p_scalar_525 = load double, double* %scevgep523524, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_528, %_p_scalar_525
  %scevgep529 = getelementptr i8, i8* %call2, i64 %214
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_534, %_p_scalar_531
  %215 = shl nuw nsw i64 %polly.indvar520, 3
  %216 = add nuw nsw i64 %215, %186
  %scevgep535 = getelementptr i8, i8* %call, i64 %216
  %scevgep535536 = bitcast i8* %scevgep535 to double*
  %_p_scalar_537 = load double, double* %scevgep535536, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_537
  store double %p_add42.i, double* %scevgep535536, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond775.not = icmp eq i64 %polly.indvar_next521, %indvars.iv771
  br i1 %exitcond775.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header676:                             ; preds = %entry, %polly.loop_exit684
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_exit684 ], [ 0, %entry ]
  %217 = mul nuw nsw i64 %polly.indvar679, 640
  %218 = trunc i64 %polly.indvar679 to i32
  %broadcast.splatinsert899 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat900 = shufflevector <4 x i32> %broadcast.splatinsert899, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body889

vector.body889:                                   ; preds = %vector.body889, %polly.loop_header676
  %index891 = phi i64 [ 0, %polly.loop_header676 ], [ %index.next892, %vector.body889 ]
  %vec.ind897 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676 ], [ %vec.ind.next898, %vector.body889 ]
  %219 = mul <4 x i32> %vec.ind897, %broadcast.splat900
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 80, i32 80, i32 80, i32 80>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %224 = shl i64 %index891, 3
  %225 = add nuw nsw i64 %224, %217
  %226 = getelementptr i8, i8* %call, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %223, <4 x double>* %227, align 8, !alias.scope !90, !noalias !92
  %index.next892 = add i64 %index891, 4
  %vec.ind.next898 = add <4 x i32> %vec.ind897, <i32 4, i32 4, i32 4, i32 4>
  %228 = icmp eq i64 %index.next892, 32
  br i1 %228, label %polly.loop_exit684, label %vector.body889, !llvm.loop !95

polly.loop_exit684:                               ; preds = %vector.body889
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next680, 32
  br i1 %exitcond800.not, label %polly.loop_header676.1, label %polly.loop_header676

polly.loop_header703:                             ; preds = %polly.loop_exit684.2.2, %polly.loop_exit711
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit711 ], [ 0, %polly.loop_exit684.2.2 ]
  %229 = mul nuw nsw i64 %polly.indvar706, 480
  %230 = trunc i64 %polly.indvar706 to i32
  %broadcast.splatinsert1013 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1014 = shufflevector <4 x i32> %broadcast.splatinsert1013, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %polly.loop_header703
  %index1005 = phi i64 [ 0, %polly.loop_header703 ], [ %index.next1006, %vector.body1003 ]
  %vec.ind1011 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703 ], [ %vec.ind.next1012, %vector.body1003 ]
  %231 = mul <4 x i32> %vec.ind1011, %broadcast.splat1014
  %232 = add <4 x i32> %231, <i32 2, i32 2, i32 2, i32 2>
  %233 = urem <4 x i32> %232, <i32 60, i32 60, i32 60, i32 60>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %236 = shl i64 %index1005, 3
  %237 = add i64 %236, %229
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %235, <4 x double>* %239, align 8, !alias.scope !94, !noalias !96
  %index.next1006 = add i64 %index1005, 4
  %vec.ind.next1012 = add <4 x i32> %vec.ind1011, <i32 4, i32 4, i32 4, i32 4>
  %240 = icmp eq i64 %index.next1006, 32
  br i1 %240, label %polly.loop_exit711, label %vector.body1003, !llvm.loop !97

polly.loop_exit711:                               ; preds = %vector.body1003
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next707, 32
  br i1 %exitcond791.not, label %polly.loop_header703.1, label %polly.loop_header703

polly.loop_header729:                             ; preds = %polly.loop_exit711.1.2, %polly.loop_exit737
  %polly.indvar732 = phi i64 [ %polly.indvar_next733, %polly.loop_exit737 ], [ 0, %polly.loop_exit711.1.2 ]
  %241 = mul nuw nsw i64 %polly.indvar732, 480
  %242 = trunc i64 %polly.indvar732 to i32
  %broadcast.splatinsert1091 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1092 = shufflevector <4 x i32> %broadcast.splatinsert1091, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %polly.loop_header729
  %index1083 = phi i64 [ 0, %polly.loop_header729 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1089 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729 ], [ %vec.ind.next1090, %vector.body1081 ]
  %243 = mul <4 x i32> %vec.ind1089, %broadcast.splat1092
  %244 = add <4 x i32> %243, <i32 1, i32 1, i32 1, i32 1>
  %245 = urem <4 x i32> %244, <i32 80, i32 80, i32 80, i32 80>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %248 = shl i64 %index1083, 3
  %249 = add i64 %248, %241
  %250 = getelementptr i8, i8* %call1, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %247, <4 x double>* %251, align 8, !alias.scope !93, !noalias !98
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1090 = add <4 x i32> %vec.ind1089, <i32 4, i32 4, i32 4, i32 4>
  %252 = icmp eq i64 %index.next1084, 32
  br i1 %252, label %polly.loop_exit737, label %vector.body1081, !llvm.loop !99

polly.loop_exit737:                               ; preds = %vector.body1081
  %polly.indvar_next733 = add nuw nsw i64 %polly.indvar732, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next733, 32
  br i1 %exitcond785.not, label %polly.loop_header729.1, label %polly.loop_header729

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_exit225
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_exit225 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %253 = mul nuw nsw i64 %polly.indvar226.1, 480
  %254 = add nuw nsw i64 %253, %124
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %254
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_234.1, %_p_scalar_231.1
  %scevgep235.1 = getelementptr i8, i8* %call2, i64 %254
  %scevgep235236.1 = bitcast i8* %scevgep235.1 to double*
  %_p_scalar_237.1 = load double, double* %scevgep235236.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_240.1, %_p_scalar_237.1
  %255 = shl nuw nsw i64 %polly.indvar226.1, 3
  %256 = add nuw nsw i64 %255, %103
  %scevgep241.1 = getelementptr i8, i8* %call, i64 %256
  %scevgep241242.1 = bitcast i8* %scevgep241.1 to double*
  %_p_scalar_243.1 = load double, double* %scevgep241242.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_243.1
  store double %p_add42.i118.1, double* %scevgep241242.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %257 = add nuw nsw i64 %105, %124
  %scevgep232.2 = getelementptr i8, i8* %call2, i64 %257
  %scevgep232233.2 = bitcast i8* %scevgep232.2 to double*
  %_p_scalar_234.2 = load double, double* %scevgep232233.2, align 8, !alias.scope !66, !noalias !70
  %scevgep238.2 = getelementptr i8, i8* %call1, i64 %257
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_exit225.1
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_exit225.1 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %258 = mul nuw nsw i64 %polly.indvar226.2, 480
  %259 = add nuw nsw i64 %258, %124
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %259
  %scevgep229230.2 = bitcast i8* %scevgep229.2 to double*
  %_p_scalar_231.2 = load double, double* %scevgep229230.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_234.2, %_p_scalar_231.2
  %scevgep235.2 = getelementptr i8, i8* %call2, i64 %259
  %scevgep235236.2 = bitcast i8* %scevgep235.2 to double*
  %_p_scalar_237.2 = load double, double* %scevgep235236.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_240.2, %_p_scalar_237.2
  %260 = shl nuw nsw i64 %polly.indvar226.2, 3
  %261 = add nuw nsw i64 %260, %106
  %scevgep241.2 = getelementptr i8, i8* %call, i64 %261
  %scevgep241242.2 = bitcast i8* %scevgep241.2 to double*
  %_p_scalar_243.2 = load double, double* %scevgep241242.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_243.2
  store double %p_add42.i118.2, double* %scevgep241242.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %262 = add nuw nsw i64 %indvars.iv, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.2, %262
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2
  %263 = add nuw nsw i64 %108, %124
  %scevgep232.3 = getelementptr i8, i8* %call2, i64 %263
  %scevgep232233.3 = bitcast i8* %scevgep232.3 to double*
  %_p_scalar_234.3 = load double, double* %scevgep232233.3, align 8, !alias.scope !66, !noalias !70
  %scevgep238.3 = getelementptr i8, i8* %call1, i64 %263
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_exit225.2
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_exit225.2 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %264 = mul nuw nsw i64 %polly.indvar226.3, 480
  %265 = add nuw nsw i64 %264, %124
  %scevgep229.3 = getelementptr i8, i8* %call1, i64 %265
  %scevgep229230.3 = bitcast i8* %scevgep229.3 to double*
  %_p_scalar_231.3 = load double, double* %scevgep229230.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_234.3, %_p_scalar_231.3
  %scevgep235.3 = getelementptr i8, i8* %call2, i64 %265
  %scevgep235236.3 = bitcast i8* %scevgep235.3 to double*
  %_p_scalar_237.3 = load double, double* %scevgep235236.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_240.3, %_p_scalar_237.3
  %266 = shl nuw nsw i64 %polly.indvar226.3, 3
  %267 = add nuw nsw i64 %266, %109
  %scevgep241.3 = getelementptr i8, i8* %call, i64 %267
  %scevgep241242.3 = bitcast i8* %scevgep241.3 to double*
  %_p_scalar_243.3 = load double, double* %scevgep241242.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_243.3
  store double %p_add42.i118.3, double* %scevgep241242.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %268 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.3.not = icmp eq i64 %polly.indvar226.3, %268
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3
  %269 = add nuw nsw i64 %111, %124
  %scevgep232.4 = getelementptr i8, i8* %call2, i64 %269
  %scevgep232233.4 = bitcast i8* %scevgep232.4 to double*
  %_p_scalar_234.4 = load double, double* %scevgep232233.4, align 8, !alias.scope !66, !noalias !70
  %scevgep238.4 = getelementptr i8, i8* %call1, i64 %269
  %scevgep238239.4 = bitcast i8* %scevgep238.4 to double*
  %_p_scalar_240.4 = load double, double* %scevgep238239.4, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.4

polly.loop_header223.4:                           ; preds = %polly.loop_header223.4, %polly.loop_exit225.3
  %polly.indvar226.4 = phi i64 [ 0, %polly.loop_exit225.3 ], [ %polly.indvar_next227.4, %polly.loop_header223.4 ]
  %270 = mul nuw nsw i64 %polly.indvar226.4, 480
  %271 = add nuw nsw i64 %270, %124
  %scevgep229.4 = getelementptr i8, i8* %call1, i64 %271
  %scevgep229230.4 = bitcast i8* %scevgep229.4 to double*
  %_p_scalar_231.4 = load double, double* %scevgep229230.4, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.4 = fmul fast double %_p_scalar_234.4, %_p_scalar_231.4
  %scevgep235.4 = getelementptr i8, i8* %call2, i64 %271
  %scevgep235236.4 = bitcast i8* %scevgep235.4 to double*
  %_p_scalar_237.4 = load double, double* %scevgep235236.4, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.4 = fmul fast double %_p_scalar_240.4, %_p_scalar_237.4
  %272 = shl nuw nsw i64 %polly.indvar226.4, 3
  %273 = add nuw nsw i64 %272, %112
  %scevgep241.4 = getelementptr i8, i8* %call, i64 %273
  %scevgep241242.4 = bitcast i8* %scevgep241.4 to double*
  %_p_scalar_243.4 = load double, double* %scevgep241242.4, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_243.4
  store double %p_add42.i118.4, double* %scevgep241242.4, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.4 = add nuw nsw i64 %polly.indvar226.4, 1
  %274 = add nuw nsw i64 %indvars.iv, 3
  %exitcond.4.not = icmp eq i64 %polly.indvar226.4, %274
  br i1 %exitcond.4.not, label %polly.loop_exit225.4, label %polly.loop_header223.4

polly.loop_exit225.4:                             ; preds = %polly.loop_header223.4
  %275 = add nuw nsw i64 %114, %124
  %scevgep232.5 = getelementptr i8, i8* %call2, i64 %275
  %scevgep232233.5 = bitcast i8* %scevgep232.5 to double*
  %_p_scalar_234.5 = load double, double* %scevgep232233.5, align 8, !alias.scope !66, !noalias !70
  %scevgep238.5 = getelementptr i8, i8* %call1, i64 %275
  %scevgep238239.5 = bitcast i8* %scevgep238.5 to double*
  %_p_scalar_240.5 = load double, double* %scevgep238239.5, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.5

polly.loop_header223.5:                           ; preds = %polly.loop_header223.5, %polly.loop_exit225.4
  %polly.indvar226.5 = phi i64 [ 0, %polly.loop_exit225.4 ], [ %polly.indvar_next227.5, %polly.loop_header223.5 ]
  %276 = mul nuw nsw i64 %polly.indvar226.5, 480
  %277 = add nuw nsw i64 %276, %124
  %scevgep229.5 = getelementptr i8, i8* %call1, i64 %277
  %scevgep229230.5 = bitcast i8* %scevgep229.5 to double*
  %_p_scalar_231.5 = load double, double* %scevgep229230.5, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.5 = fmul fast double %_p_scalar_234.5, %_p_scalar_231.5
  %scevgep235.5 = getelementptr i8, i8* %call2, i64 %277
  %scevgep235236.5 = bitcast i8* %scevgep235.5 to double*
  %_p_scalar_237.5 = load double, double* %scevgep235236.5, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.5 = fmul fast double %_p_scalar_240.5, %_p_scalar_237.5
  %278 = shl nuw nsw i64 %polly.indvar226.5, 3
  %279 = add nuw nsw i64 %278, %115
  %scevgep241.5 = getelementptr i8, i8* %call, i64 %279
  %scevgep241242.5 = bitcast i8* %scevgep241.5 to double*
  %_p_scalar_243.5 = load double, double* %scevgep241242.5, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_243.5
  store double %p_add42.i118.5, double* %scevgep241242.5, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.5 = add nuw nsw i64 %polly.indvar226.5, 1
  %280 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.5.not = icmp eq i64 %polly.indvar226.5, %280
  br i1 %exitcond.5.not, label %polly.loop_exit225.5, label %polly.loop_header223.5

polly.loop_exit225.5:                             ; preds = %polly.loop_header223.5
  %281 = add nuw nsw i64 %117, %124
  %scevgep232.6 = getelementptr i8, i8* %call2, i64 %281
  %scevgep232233.6 = bitcast i8* %scevgep232.6 to double*
  %_p_scalar_234.6 = load double, double* %scevgep232233.6, align 8, !alias.scope !66, !noalias !70
  %scevgep238.6 = getelementptr i8, i8* %call1, i64 %281
  %scevgep238239.6 = bitcast i8* %scevgep238.6 to double*
  %_p_scalar_240.6 = load double, double* %scevgep238239.6, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.6

polly.loop_header223.6:                           ; preds = %polly.loop_header223.6, %polly.loop_exit225.5
  %polly.indvar226.6 = phi i64 [ 0, %polly.loop_exit225.5 ], [ %polly.indvar_next227.6, %polly.loop_header223.6 ]
  %282 = mul nuw nsw i64 %polly.indvar226.6, 480
  %283 = add nuw nsw i64 %282, %124
  %scevgep229.6 = getelementptr i8, i8* %call1, i64 %283
  %scevgep229230.6 = bitcast i8* %scevgep229.6 to double*
  %_p_scalar_231.6 = load double, double* %scevgep229230.6, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.6 = fmul fast double %_p_scalar_234.6, %_p_scalar_231.6
  %scevgep235.6 = getelementptr i8, i8* %call2, i64 %283
  %scevgep235236.6 = bitcast i8* %scevgep235.6 to double*
  %_p_scalar_237.6 = load double, double* %scevgep235236.6, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.6 = fmul fast double %_p_scalar_240.6, %_p_scalar_237.6
  %284 = shl nuw nsw i64 %polly.indvar226.6, 3
  %285 = add nuw nsw i64 %284, %118
  %scevgep241.6 = getelementptr i8, i8* %call, i64 %285
  %scevgep241242.6 = bitcast i8* %scevgep241.6 to double*
  %_p_scalar_243.6 = load double, double* %scevgep241242.6, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_243.6
  store double %p_add42.i118.6, double* %scevgep241242.6, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.6 = add nuw nsw i64 %polly.indvar226.6, 1
  %286 = add nuw nsw i64 %indvars.iv, 5
  %exitcond.6.not = icmp eq i64 %polly.indvar226.6, %286
  br i1 %exitcond.6.not, label %polly.loop_exit225.6, label %polly.loop_header223.6

polly.loop_exit225.6:                             ; preds = %polly.loop_header223.6
  %287 = add nuw nsw i64 %120, %124
  %scevgep232.7 = getelementptr i8, i8* %call2, i64 %287
  %scevgep232233.7 = bitcast i8* %scevgep232.7 to double*
  %_p_scalar_234.7 = load double, double* %scevgep232233.7, align 8, !alias.scope !66, !noalias !70
  %scevgep238.7 = getelementptr i8, i8* %call1, i64 %287
  %scevgep238239.7 = bitcast i8* %scevgep238.7 to double*
  %_p_scalar_240.7 = load double, double* %scevgep238239.7, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.7

polly.loop_header223.7:                           ; preds = %polly.loop_header223.7, %polly.loop_exit225.6
  %polly.indvar226.7 = phi i64 [ 0, %polly.loop_exit225.6 ], [ %polly.indvar_next227.7, %polly.loop_header223.7 ]
  %288 = mul nuw nsw i64 %polly.indvar226.7, 480
  %289 = add nuw nsw i64 %288, %124
  %scevgep229.7 = getelementptr i8, i8* %call1, i64 %289
  %scevgep229230.7 = bitcast i8* %scevgep229.7 to double*
  %_p_scalar_231.7 = load double, double* %scevgep229230.7, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.7 = fmul fast double %_p_scalar_234.7, %_p_scalar_231.7
  %scevgep235.7 = getelementptr i8, i8* %call2, i64 %289
  %scevgep235236.7 = bitcast i8* %scevgep235.7 to double*
  %_p_scalar_237.7 = load double, double* %scevgep235236.7, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.7 = fmul fast double %_p_scalar_240.7, %_p_scalar_237.7
  %290 = shl nuw nsw i64 %polly.indvar226.7, 3
  %291 = add nuw nsw i64 %290, %121
  %scevgep241.7 = getelementptr i8, i8* %call, i64 %291
  %scevgep241242.7 = bitcast i8* %scevgep241.7 to double*
  %_p_scalar_243.7 = load double, double* %scevgep241242.7, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_243.7
  store double %p_add42.i118.7, double* %scevgep241242.7, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.7 = add nuw nsw i64 %polly.indvar226.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar226.7, %122
  br i1 %exitcond.7.not, label %polly.loop_exit225.7, label %polly.loop_header223.7

polly.loop_exit225.7:                             ; preds = %polly.loop_header223.7
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond755.not = icmp eq i64 %polly.indvar_next215, 4
  br i1 %exitcond755.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header370.1:                           ; preds = %polly.loop_header370.1, %polly.loop_exit372
  %polly.indvar373.1 = phi i64 [ 0, %polly.loop_exit372 ], [ %polly.indvar_next374.1, %polly.loop_header370.1 ]
  %292 = mul nuw nsw i64 %polly.indvar373.1, 480
  %293 = add nuw nsw i64 %292, %167
  %scevgep376.1 = getelementptr i8, i8* %call1, i64 %293
  %scevgep376377.1 = bitcast i8* %scevgep376.1 to double*
  %_p_scalar_378.1 = load double, double* %scevgep376377.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_381.1, %_p_scalar_378.1
  %scevgep382.1 = getelementptr i8, i8* %call2, i64 %293
  %scevgep382383.1 = bitcast i8* %scevgep382.1 to double*
  %_p_scalar_384.1 = load double, double* %scevgep382383.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_387.1, %_p_scalar_384.1
  %294 = shl nuw nsw i64 %polly.indvar373.1, 3
  %295 = add nuw nsw i64 %294, %146
  %scevgep388.1 = getelementptr i8, i8* %call, i64 %295
  %scevgep388389.1 = bitcast i8* %scevgep388.1 to double*
  %_p_scalar_390.1 = load double, double* %scevgep388389.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_390.1
  store double %p_add42.i79.1, double* %scevgep388389.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374.1 = add nuw nsw i64 %polly.indvar373.1, 1
  %exitcond764.1.not = icmp eq i64 %polly.indvar373.1, %indvars.iv760
  br i1 %exitcond764.1.not, label %polly.loop_exit372.1, label %polly.loop_header370.1

polly.loop_exit372.1:                             ; preds = %polly.loop_header370.1
  %296 = add nuw nsw i64 %148, %167
  %scevgep379.2 = getelementptr i8, i8* %call2, i64 %296
  %scevgep379380.2 = bitcast i8* %scevgep379.2 to double*
  %_p_scalar_381.2 = load double, double* %scevgep379380.2, align 8, !alias.scope !76, !noalias !79
  %scevgep385.2 = getelementptr i8, i8* %call1, i64 %296
  %scevgep385386.2 = bitcast i8* %scevgep385.2 to double*
  %_p_scalar_387.2 = load double, double* %scevgep385386.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header370.2

polly.loop_header370.2:                           ; preds = %polly.loop_header370.2, %polly.loop_exit372.1
  %polly.indvar373.2 = phi i64 [ 0, %polly.loop_exit372.1 ], [ %polly.indvar_next374.2, %polly.loop_header370.2 ]
  %297 = mul nuw nsw i64 %polly.indvar373.2, 480
  %298 = add nuw nsw i64 %297, %167
  %scevgep376.2 = getelementptr i8, i8* %call1, i64 %298
  %scevgep376377.2 = bitcast i8* %scevgep376.2 to double*
  %_p_scalar_378.2 = load double, double* %scevgep376377.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_381.2, %_p_scalar_378.2
  %scevgep382.2 = getelementptr i8, i8* %call2, i64 %298
  %scevgep382383.2 = bitcast i8* %scevgep382.2 to double*
  %_p_scalar_384.2 = load double, double* %scevgep382383.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_387.2, %_p_scalar_384.2
  %299 = shl nuw nsw i64 %polly.indvar373.2, 3
  %300 = add nuw nsw i64 %299, %149
  %scevgep388.2 = getelementptr i8, i8* %call, i64 %300
  %scevgep388389.2 = bitcast i8* %scevgep388.2 to double*
  %_p_scalar_390.2 = load double, double* %scevgep388389.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_390.2
  store double %p_add42.i79.2, double* %scevgep388389.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374.2 = add nuw nsw i64 %polly.indvar373.2, 1
  %301 = add nuw nsw i64 %indvars.iv760, 1
  %exitcond764.2.not = icmp eq i64 %polly.indvar373.2, %301
  br i1 %exitcond764.2.not, label %polly.loop_exit372.2, label %polly.loop_header370.2

polly.loop_exit372.2:                             ; preds = %polly.loop_header370.2
  %302 = add nuw nsw i64 %151, %167
  %scevgep379.3 = getelementptr i8, i8* %call2, i64 %302
  %scevgep379380.3 = bitcast i8* %scevgep379.3 to double*
  %_p_scalar_381.3 = load double, double* %scevgep379380.3, align 8, !alias.scope !76, !noalias !79
  %scevgep385.3 = getelementptr i8, i8* %call1, i64 %302
  %scevgep385386.3 = bitcast i8* %scevgep385.3 to double*
  %_p_scalar_387.3 = load double, double* %scevgep385386.3, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header370.3

polly.loop_header370.3:                           ; preds = %polly.loop_header370.3, %polly.loop_exit372.2
  %polly.indvar373.3 = phi i64 [ 0, %polly.loop_exit372.2 ], [ %polly.indvar_next374.3, %polly.loop_header370.3 ]
  %303 = mul nuw nsw i64 %polly.indvar373.3, 480
  %304 = add nuw nsw i64 %303, %167
  %scevgep376.3 = getelementptr i8, i8* %call1, i64 %304
  %scevgep376377.3 = bitcast i8* %scevgep376.3 to double*
  %_p_scalar_378.3 = load double, double* %scevgep376377.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_381.3, %_p_scalar_378.3
  %scevgep382.3 = getelementptr i8, i8* %call2, i64 %304
  %scevgep382383.3 = bitcast i8* %scevgep382.3 to double*
  %_p_scalar_384.3 = load double, double* %scevgep382383.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_387.3, %_p_scalar_384.3
  %305 = shl nuw nsw i64 %polly.indvar373.3, 3
  %306 = add nuw nsw i64 %305, %152
  %scevgep388.3 = getelementptr i8, i8* %call, i64 %306
  %scevgep388389.3 = bitcast i8* %scevgep388.3 to double*
  %_p_scalar_390.3 = load double, double* %scevgep388389.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_390.3
  store double %p_add42.i79.3, double* %scevgep388389.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374.3 = add nuw nsw i64 %polly.indvar373.3, 1
  %307 = add nuw nsw i64 %indvars.iv760, 2
  %exitcond764.3.not = icmp eq i64 %polly.indvar373.3, %307
  br i1 %exitcond764.3.not, label %polly.loop_exit372.3, label %polly.loop_header370.3

polly.loop_exit372.3:                             ; preds = %polly.loop_header370.3
  %308 = add nuw nsw i64 %154, %167
  %scevgep379.4 = getelementptr i8, i8* %call2, i64 %308
  %scevgep379380.4 = bitcast i8* %scevgep379.4 to double*
  %_p_scalar_381.4 = load double, double* %scevgep379380.4, align 8, !alias.scope !76, !noalias !79
  %scevgep385.4 = getelementptr i8, i8* %call1, i64 %308
  %scevgep385386.4 = bitcast i8* %scevgep385.4 to double*
  %_p_scalar_387.4 = load double, double* %scevgep385386.4, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header370.4

polly.loop_header370.4:                           ; preds = %polly.loop_header370.4, %polly.loop_exit372.3
  %polly.indvar373.4 = phi i64 [ 0, %polly.loop_exit372.3 ], [ %polly.indvar_next374.4, %polly.loop_header370.4 ]
  %309 = mul nuw nsw i64 %polly.indvar373.4, 480
  %310 = add nuw nsw i64 %309, %167
  %scevgep376.4 = getelementptr i8, i8* %call1, i64 %310
  %scevgep376377.4 = bitcast i8* %scevgep376.4 to double*
  %_p_scalar_378.4 = load double, double* %scevgep376377.4, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.4 = fmul fast double %_p_scalar_381.4, %_p_scalar_378.4
  %scevgep382.4 = getelementptr i8, i8* %call2, i64 %310
  %scevgep382383.4 = bitcast i8* %scevgep382.4 to double*
  %_p_scalar_384.4 = load double, double* %scevgep382383.4, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.4 = fmul fast double %_p_scalar_387.4, %_p_scalar_384.4
  %311 = shl nuw nsw i64 %polly.indvar373.4, 3
  %312 = add nuw nsw i64 %311, %155
  %scevgep388.4 = getelementptr i8, i8* %call, i64 %312
  %scevgep388389.4 = bitcast i8* %scevgep388.4 to double*
  %_p_scalar_390.4 = load double, double* %scevgep388389.4, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_390.4
  store double %p_add42.i79.4, double* %scevgep388389.4, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374.4 = add nuw nsw i64 %polly.indvar373.4, 1
  %313 = add nuw nsw i64 %indvars.iv760, 3
  %exitcond764.4.not = icmp eq i64 %polly.indvar373.4, %313
  br i1 %exitcond764.4.not, label %polly.loop_exit372.4, label %polly.loop_header370.4

polly.loop_exit372.4:                             ; preds = %polly.loop_header370.4
  %314 = add nuw nsw i64 %157, %167
  %scevgep379.5 = getelementptr i8, i8* %call2, i64 %314
  %scevgep379380.5 = bitcast i8* %scevgep379.5 to double*
  %_p_scalar_381.5 = load double, double* %scevgep379380.5, align 8, !alias.scope !76, !noalias !79
  %scevgep385.5 = getelementptr i8, i8* %call1, i64 %314
  %scevgep385386.5 = bitcast i8* %scevgep385.5 to double*
  %_p_scalar_387.5 = load double, double* %scevgep385386.5, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header370.5

polly.loop_header370.5:                           ; preds = %polly.loop_header370.5, %polly.loop_exit372.4
  %polly.indvar373.5 = phi i64 [ 0, %polly.loop_exit372.4 ], [ %polly.indvar_next374.5, %polly.loop_header370.5 ]
  %315 = mul nuw nsw i64 %polly.indvar373.5, 480
  %316 = add nuw nsw i64 %315, %167
  %scevgep376.5 = getelementptr i8, i8* %call1, i64 %316
  %scevgep376377.5 = bitcast i8* %scevgep376.5 to double*
  %_p_scalar_378.5 = load double, double* %scevgep376377.5, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.5 = fmul fast double %_p_scalar_381.5, %_p_scalar_378.5
  %scevgep382.5 = getelementptr i8, i8* %call2, i64 %316
  %scevgep382383.5 = bitcast i8* %scevgep382.5 to double*
  %_p_scalar_384.5 = load double, double* %scevgep382383.5, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.5 = fmul fast double %_p_scalar_387.5, %_p_scalar_384.5
  %317 = shl nuw nsw i64 %polly.indvar373.5, 3
  %318 = add nuw nsw i64 %317, %158
  %scevgep388.5 = getelementptr i8, i8* %call, i64 %318
  %scevgep388389.5 = bitcast i8* %scevgep388.5 to double*
  %_p_scalar_390.5 = load double, double* %scevgep388389.5, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_390.5
  store double %p_add42.i79.5, double* %scevgep388389.5, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374.5 = add nuw nsw i64 %polly.indvar373.5, 1
  %319 = add nuw nsw i64 %indvars.iv760, 4
  %exitcond764.5.not = icmp eq i64 %polly.indvar373.5, %319
  br i1 %exitcond764.5.not, label %polly.loop_exit372.5, label %polly.loop_header370.5

polly.loop_exit372.5:                             ; preds = %polly.loop_header370.5
  %320 = add nuw nsw i64 %160, %167
  %scevgep379.6 = getelementptr i8, i8* %call2, i64 %320
  %scevgep379380.6 = bitcast i8* %scevgep379.6 to double*
  %_p_scalar_381.6 = load double, double* %scevgep379380.6, align 8, !alias.scope !76, !noalias !79
  %scevgep385.6 = getelementptr i8, i8* %call1, i64 %320
  %scevgep385386.6 = bitcast i8* %scevgep385.6 to double*
  %_p_scalar_387.6 = load double, double* %scevgep385386.6, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header370.6

polly.loop_header370.6:                           ; preds = %polly.loop_header370.6, %polly.loop_exit372.5
  %polly.indvar373.6 = phi i64 [ 0, %polly.loop_exit372.5 ], [ %polly.indvar_next374.6, %polly.loop_header370.6 ]
  %321 = mul nuw nsw i64 %polly.indvar373.6, 480
  %322 = add nuw nsw i64 %321, %167
  %scevgep376.6 = getelementptr i8, i8* %call1, i64 %322
  %scevgep376377.6 = bitcast i8* %scevgep376.6 to double*
  %_p_scalar_378.6 = load double, double* %scevgep376377.6, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.6 = fmul fast double %_p_scalar_381.6, %_p_scalar_378.6
  %scevgep382.6 = getelementptr i8, i8* %call2, i64 %322
  %scevgep382383.6 = bitcast i8* %scevgep382.6 to double*
  %_p_scalar_384.6 = load double, double* %scevgep382383.6, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.6 = fmul fast double %_p_scalar_387.6, %_p_scalar_384.6
  %323 = shl nuw nsw i64 %polly.indvar373.6, 3
  %324 = add nuw nsw i64 %323, %161
  %scevgep388.6 = getelementptr i8, i8* %call, i64 %324
  %scevgep388389.6 = bitcast i8* %scevgep388.6 to double*
  %_p_scalar_390.6 = load double, double* %scevgep388389.6, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_390.6
  store double %p_add42.i79.6, double* %scevgep388389.6, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374.6 = add nuw nsw i64 %polly.indvar373.6, 1
  %325 = add nuw nsw i64 %indvars.iv760, 5
  %exitcond764.6.not = icmp eq i64 %polly.indvar373.6, %325
  br i1 %exitcond764.6.not, label %polly.loop_exit372.6, label %polly.loop_header370.6

polly.loop_exit372.6:                             ; preds = %polly.loop_header370.6
  %326 = add nuw nsw i64 %163, %167
  %scevgep379.7 = getelementptr i8, i8* %call2, i64 %326
  %scevgep379380.7 = bitcast i8* %scevgep379.7 to double*
  %_p_scalar_381.7 = load double, double* %scevgep379380.7, align 8, !alias.scope !76, !noalias !79
  %scevgep385.7 = getelementptr i8, i8* %call1, i64 %326
  %scevgep385386.7 = bitcast i8* %scevgep385.7 to double*
  %_p_scalar_387.7 = load double, double* %scevgep385386.7, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header370.7

polly.loop_header370.7:                           ; preds = %polly.loop_header370.7, %polly.loop_exit372.6
  %polly.indvar373.7 = phi i64 [ 0, %polly.loop_exit372.6 ], [ %polly.indvar_next374.7, %polly.loop_header370.7 ]
  %327 = mul nuw nsw i64 %polly.indvar373.7, 480
  %328 = add nuw nsw i64 %327, %167
  %scevgep376.7 = getelementptr i8, i8* %call1, i64 %328
  %scevgep376377.7 = bitcast i8* %scevgep376.7 to double*
  %_p_scalar_378.7 = load double, double* %scevgep376377.7, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.7 = fmul fast double %_p_scalar_381.7, %_p_scalar_378.7
  %scevgep382.7 = getelementptr i8, i8* %call2, i64 %328
  %scevgep382383.7 = bitcast i8* %scevgep382.7 to double*
  %_p_scalar_384.7 = load double, double* %scevgep382383.7, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.7 = fmul fast double %_p_scalar_387.7, %_p_scalar_384.7
  %329 = shl nuw nsw i64 %polly.indvar373.7, 3
  %330 = add nuw nsw i64 %329, %164
  %scevgep388.7 = getelementptr i8, i8* %call, i64 %330
  %scevgep388389.7 = bitcast i8* %scevgep388.7 to double*
  %_p_scalar_390.7 = load double, double* %scevgep388389.7, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_390.7
  store double %p_add42.i79.7, double* %scevgep388389.7, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next374.7 = add nuw nsw i64 %polly.indvar373.7, 1
  %exitcond764.7.not = icmp eq i64 %polly.indvar373.7, %165
  br i1 %exitcond764.7.not, label %polly.loop_exit372.7, label %polly.loop_header370.7

polly.loop_exit372.7:                             ; preds = %polly.loop_header370.7
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond766.not = icmp eq i64 %polly.indvar_next362, 4
  br i1 %exitcond766.not, label %polly.loop_exit360, label %polly.loop_header358

polly.loop_header517.1:                           ; preds = %polly.loop_header517.1, %polly.loop_exit519
  %polly.indvar520.1 = phi i64 [ 0, %polly.loop_exit519 ], [ %polly.indvar_next521.1, %polly.loop_header517.1 ]
  %331 = mul nuw nsw i64 %polly.indvar520.1, 480
  %332 = add nuw nsw i64 %331, %210
  %scevgep523.1 = getelementptr i8, i8* %call1, i64 %332
  %scevgep523524.1 = bitcast i8* %scevgep523.1 to double*
  %_p_scalar_525.1 = load double, double* %scevgep523524.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_528.1, %_p_scalar_525.1
  %scevgep529.1 = getelementptr i8, i8* %call2, i64 %332
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_534.1, %_p_scalar_531.1
  %333 = shl nuw nsw i64 %polly.indvar520.1, 3
  %334 = add nuw nsw i64 %333, %189
  %scevgep535.1 = getelementptr i8, i8* %call, i64 %334
  %scevgep535536.1 = bitcast i8* %scevgep535.1 to double*
  %_p_scalar_537.1 = load double, double* %scevgep535536.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_537.1
  store double %p_add42.i.1, double* %scevgep535536.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %exitcond775.1.not = icmp eq i64 %polly.indvar520.1, %indvars.iv771
  br i1 %exitcond775.1.not, label %polly.loop_exit519.1, label %polly.loop_header517.1

polly.loop_exit519.1:                             ; preds = %polly.loop_header517.1
  %335 = add nuw nsw i64 %191, %210
  %scevgep526.2 = getelementptr i8, i8* %call2, i64 %335
  %scevgep526527.2 = bitcast i8* %scevgep526.2 to double*
  %_p_scalar_528.2 = load double, double* %scevgep526527.2, align 8, !alias.scope !85, !noalias !88
  %scevgep532.2 = getelementptr i8, i8* %call1, i64 %335
  %scevgep532533.2 = bitcast i8* %scevgep532.2 to double*
  %_p_scalar_534.2 = load double, double* %scevgep532533.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header517.2

polly.loop_header517.2:                           ; preds = %polly.loop_header517.2, %polly.loop_exit519.1
  %polly.indvar520.2 = phi i64 [ 0, %polly.loop_exit519.1 ], [ %polly.indvar_next521.2, %polly.loop_header517.2 ]
  %336 = mul nuw nsw i64 %polly.indvar520.2, 480
  %337 = add nuw nsw i64 %336, %210
  %scevgep523.2 = getelementptr i8, i8* %call1, i64 %337
  %scevgep523524.2 = bitcast i8* %scevgep523.2 to double*
  %_p_scalar_525.2 = load double, double* %scevgep523524.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_528.2, %_p_scalar_525.2
  %scevgep529.2 = getelementptr i8, i8* %call2, i64 %337
  %scevgep529530.2 = bitcast i8* %scevgep529.2 to double*
  %_p_scalar_531.2 = load double, double* %scevgep529530.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_534.2, %_p_scalar_531.2
  %338 = shl nuw nsw i64 %polly.indvar520.2, 3
  %339 = add nuw nsw i64 %338, %192
  %scevgep535.2 = getelementptr i8, i8* %call, i64 %339
  %scevgep535536.2 = bitcast i8* %scevgep535.2 to double*
  %_p_scalar_537.2 = load double, double* %scevgep535536.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_537.2
  store double %p_add42.i.2, double* %scevgep535536.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521.2 = add nuw nsw i64 %polly.indvar520.2, 1
  %340 = add nuw nsw i64 %indvars.iv771, 1
  %exitcond775.2.not = icmp eq i64 %polly.indvar520.2, %340
  br i1 %exitcond775.2.not, label %polly.loop_exit519.2, label %polly.loop_header517.2

polly.loop_exit519.2:                             ; preds = %polly.loop_header517.2
  %341 = add nuw nsw i64 %194, %210
  %scevgep526.3 = getelementptr i8, i8* %call2, i64 %341
  %scevgep526527.3 = bitcast i8* %scevgep526.3 to double*
  %_p_scalar_528.3 = load double, double* %scevgep526527.3, align 8, !alias.scope !85, !noalias !88
  %scevgep532.3 = getelementptr i8, i8* %call1, i64 %341
  %scevgep532533.3 = bitcast i8* %scevgep532.3 to double*
  %_p_scalar_534.3 = load double, double* %scevgep532533.3, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header517.3

polly.loop_header517.3:                           ; preds = %polly.loop_header517.3, %polly.loop_exit519.2
  %polly.indvar520.3 = phi i64 [ 0, %polly.loop_exit519.2 ], [ %polly.indvar_next521.3, %polly.loop_header517.3 ]
  %342 = mul nuw nsw i64 %polly.indvar520.3, 480
  %343 = add nuw nsw i64 %342, %210
  %scevgep523.3 = getelementptr i8, i8* %call1, i64 %343
  %scevgep523524.3 = bitcast i8* %scevgep523.3 to double*
  %_p_scalar_525.3 = load double, double* %scevgep523524.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_528.3, %_p_scalar_525.3
  %scevgep529.3 = getelementptr i8, i8* %call2, i64 %343
  %scevgep529530.3 = bitcast i8* %scevgep529.3 to double*
  %_p_scalar_531.3 = load double, double* %scevgep529530.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_534.3, %_p_scalar_531.3
  %344 = shl nuw nsw i64 %polly.indvar520.3, 3
  %345 = add nuw nsw i64 %344, %195
  %scevgep535.3 = getelementptr i8, i8* %call, i64 %345
  %scevgep535536.3 = bitcast i8* %scevgep535.3 to double*
  %_p_scalar_537.3 = load double, double* %scevgep535536.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_537.3
  store double %p_add42.i.3, double* %scevgep535536.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521.3 = add nuw nsw i64 %polly.indvar520.3, 1
  %346 = add nuw nsw i64 %indvars.iv771, 2
  %exitcond775.3.not = icmp eq i64 %polly.indvar520.3, %346
  br i1 %exitcond775.3.not, label %polly.loop_exit519.3, label %polly.loop_header517.3

polly.loop_exit519.3:                             ; preds = %polly.loop_header517.3
  %347 = add nuw nsw i64 %197, %210
  %scevgep526.4 = getelementptr i8, i8* %call2, i64 %347
  %scevgep526527.4 = bitcast i8* %scevgep526.4 to double*
  %_p_scalar_528.4 = load double, double* %scevgep526527.4, align 8, !alias.scope !85, !noalias !88
  %scevgep532.4 = getelementptr i8, i8* %call1, i64 %347
  %scevgep532533.4 = bitcast i8* %scevgep532.4 to double*
  %_p_scalar_534.4 = load double, double* %scevgep532533.4, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header517.4

polly.loop_header517.4:                           ; preds = %polly.loop_header517.4, %polly.loop_exit519.3
  %polly.indvar520.4 = phi i64 [ 0, %polly.loop_exit519.3 ], [ %polly.indvar_next521.4, %polly.loop_header517.4 ]
  %348 = mul nuw nsw i64 %polly.indvar520.4, 480
  %349 = add nuw nsw i64 %348, %210
  %scevgep523.4 = getelementptr i8, i8* %call1, i64 %349
  %scevgep523524.4 = bitcast i8* %scevgep523.4 to double*
  %_p_scalar_525.4 = load double, double* %scevgep523524.4, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.4 = fmul fast double %_p_scalar_528.4, %_p_scalar_525.4
  %scevgep529.4 = getelementptr i8, i8* %call2, i64 %349
  %scevgep529530.4 = bitcast i8* %scevgep529.4 to double*
  %_p_scalar_531.4 = load double, double* %scevgep529530.4, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.4 = fmul fast double %_p_scalar_534.4, %_p_scalar_531.4
  %350 = shl nuw nsw i64 %polly.indvar520.4, 3
  %351 = add nuw nsw i64 %350, %198
  %scevgep535.4 = getelementptr i8, i8* %call, i64 %351
  %scevgep535536.4 = bitcast i8* %scevgep535.4 to double*
  %_p_scalar_537.4 = load double, double* %scevgep535536.4, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_537.4
  store double %p_add42.i.4, double* %scevgep535536.4, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521.4 = add nuw nsw i64 %polly.indvar520.4, 1
  %352 = add nuw nsw i64 %indvars.iv771, 3
  %exitcond775.4.not = icmp eq i64 %polly.indvar520.4, %352
  br i1 %exitcond775.4.not, label %polly.loop_exit519.4, label %polly.loop_header517.4

polly.loop_exit519.4:                             ; preds = %polly.loop_header517.4
  %353 = add nuw nsw i64 %200, %210
  %scevgep526.5 = getelementptr i8, i8* %call2, i64 %353
  %scevgep526527.5 = bitcast i8* %scevgep526.5 to double*
  %_p_scalar_528.5 = load double, double* %scevgep526527.5, align 8, !alias.scope !85, !noalias !88
  %scevgep532.5 = getelementptr i8, i8* %call1, i64 %353
  %scevgep532533.5 = bitcast i8* %scevgep532.5 to double*
  %_p_scalar_534.5 = load double, double* %scevgep532533.5, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header517.5

polly.loop_header517.5:                           ; preds = %polly.loop_header517.5, %polly.loop_exit519.4
  %polly.indvar520.5 = phi i64 [ 0, %polly.loop_exit519.4 ], [ %polly.indvar_next521.5, %polly.loop_header517.5 ]
  %354 = mul nuw nsw i64 %polly.indvar520.5, 480
  %355 = add nuw nsw i64 %354, %210
  %scevgep523.5 = getelementptr i8, i8* %call1, i64 %355
  %scevgep523524.5 = bitcast i8* %scevgep523.5 to double*
  %_p_scalar_525.5 = load double, double* %scevgep523524.5, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.5 = fmul fast double %_p_scalar_528.5, %_p_scalar_525.5
  %scevgep529.5 = getelementptr i8, i8* %call2, i64 %355
  %scevgep529530.5 = bitcast i8* %scevgep529.5 to double*
  %_p_scalar_531.5 = load double, double* %scevgep529530.5, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.5 = fmul fast double %_p_scalar_534.5, %_p_scalar_531.5
  %356 = shl nuw nsw i64 %polly.indvar520.5, 3
  %357 = add nuw nsw i64 %356, %201
  %scevgep535.5 = getelementptr i8, i8* %call, i64 %357
  %scevgep535536.5 = bitcast i8* %scevgep535.5 to double*
  %_p_scalar_537.5 = load double, double* %scevgep535536.5, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_537.5
  store double %p_add42.i.5, double* %scevgep535536.5, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521.5 = add nuw nsw i64 %polly.indvar520.5, 1
  %358 = add nuw nsw i64 %indvars.iv771, 4
  %exitcond775.5.not = icmp eq i64 %polly.indvar520.5, %358
  br i1 %exitcond775.5.not, label %polly.loop_exit519.5, label %polly.loop_header517.5

polly.loop_exit519.5:                             ; preds = %polly.loop_header517.5
  %359 = add nuw nsw i64 %203, %210
  %scevgep526.6 = getelementptr i8, i8* %call2, i64 %359
  %scevgep526527.6 = bitcast i8* %scevgep526.6 to double*
  %_p_scalar_528.6 = load double, double* %scevgep526527.6, align 8, !alias.scope !85, !noalias !88
  %scevgep532.6 = getelementptr i8, i8* %call1, i64 %359
  %scevgep532533.6 = bitcast i8* %scevgep532.6 to double*
  %_p_scalar_534.6 = load double, double* %scevgep532533.6, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header517.6

polly.loop_header517.6:                           ; preds = %polly.loop_header517.6, %polly.loop_exit519.5
  %polly.indvar520.6 = phi i64 [ 0, %polly.loop_exit519.5 ], [ %polly.indvar_next521.6, %polly.loop_header517.6 ]
  %360 = mul nuw nsw i64 %polly.indvar520.6, 480
  %361 = add nuw nsw i64 %360, %210
  %scevgep523.6 = getelementptr i8, i8* %call1, i64 %361
  %scevgep523524.6 = bitcast i8* %scevgep523.6 to double*
  %_p_scalar_525.6 = load double, double* %scevgep523524.6, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.6 = fmul fast double %_p_scalar_528.6, %_p_scalar_525.6
  %scevgep529.6 = getelementptr i8, i8* %call2, i64 %361
  %scevgep529530.6 = bitcast i8* %scevgep529.6 to double*
  %_p_scalar_531.6 = load double, double* %scevgep529530.6, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.6 = fmul fast double %_p_scalar_534.6, %_p_scalar_531.6
  %362 = shl nuw nsw i64 %polly.indvar520.6, 3
  %363 = add nuw nsw i64 %362, %204
  %scevgep535.6 = getelementptr i8, i8* %call, i64 %363
  %scevgep535536.6 = bitcast i8* %scevgep535.6 to double*
  %_p_scalar_537.6 = load double, double* %scevgep535536.6, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_537.6
  store double %p_add42.i.6, double* %scevgep535536.6, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521.6 = add nuw nsw i64 %polly.indvar520.6, 1
  %364 = add nuw nsw i64 %indvars.iv771, 5
  %exitcond775.6.not = icmp eq i64 %polly.indvar520.6, %364
  br i1 %exitcond775.6.not, label %polly.loop_exit519.6, label %polly.loop_header517.6

polly.loop_exit519.6:                             ; preds = %polly.loop_header517.6
  %365 = add nuw nsw i64 %206, %210
  %scevgep526.7 = getelementptr i8, i8* %call2, i64 %365
  %scevgep526527.7 = bitcast i8* %scevgep526.7 to double*
  %_p_scalar_528.7 = load double, double* %scevgep526527.7, align 8, !alias.scope !85, !noalias !88
  %scevgep532.7 = getelementptr i8, i8* %call1, i64 %365
  %scevgep532533.7 = bitcast i8* %scevgep532.7 to double*
  %_p_scalar_534.7 = load double, double* %scevgep532533.7, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header517.7

polly.loop_header517.7:                           ; preds = %polly.loop_header517.7, %polly.loop_exit519.6
  %polly.indvar520.7 = phi i64 [ 0, %polly.loop_exit519.6 ], [ %polly.indvar_next521.7, %polly.loop_header517.7 ]
  %366 = mul nuw nsw i64 %polly.indvar520.7, 480
  %367 = add nuw nsw i64 %366, %210
  %scevgep523.7 = getelementptr i8, i8* %call1, i64 %367
  %scevgep523524.7 = bitcast i8* %scevgep523.7 to double*
  %_p_scalar_525.7 = load double, double* %scevgep523524.7, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.7 = fmul fast double %_p_scalar_528.7, %_p_scalar_525.7
  %scevgep529.7 = getelementptr i8, i8* %call2, i64 %367
  %scevgep529530.7 = bitcast i8* %scevgep529.7 to double*
  %_p_scalar_531.7 = load double, double* %scevgep529530.7, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.7 = fmul fast double %_p_scalar_534.7, %_p_scalar_531.7
  %368 = shl nuw nsw i64 %polly.indvar520.7, 3
  %369 = add nuw nsw i64 %368, %207
  %scevgep535.7 = getelementptr i8, i8* %call, i64 %369
  %scevgep535536.7 = bitcast i8* %scevgep535.7 to double*
  %_p_scalar_537.7 = load double, double* %scevgep535536.7, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_537.7
  store double %p_add42.i.7, double* %scevgep535536.7, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next521.7 = add nuw nsw i64 %polly.indvar520.7, 1
  %exitcond775.7.not = icmp eq i64 %polly.indvar520.7, %208
  br i1 %exitcond775.7.not, label %polly.loop_exit519.7, label %polly.loop_header517.7

polly.loop_exit519.7:                             ; preds = %polly.loop_header517.7
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next509, 4
  br i1 %exitcond777.not, label %polly.loop_exit507, label %polly.loop_header505

polly.loop_header729.1:                           ; preds = %polly.loop_exit737, %polly.loop_exit737.1
  %polly.indvar732.1 = phi i64 [ %polly.indvar_next733.1, %polly.loop_exit737.1 ], [ 0, %polly.loop_exit737 ]
  %370 = mul nuw nsw i64 %polly.indvar732.1, 480
  %371 = trunc i64 %polly.indvar732.1 to i32
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %371, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %polly.loop_header729.1
  %index1097 = phi i64 [ 0, %polly.loop_header729.1 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1101 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1 ], [ %vec.ind.next1102, %vector.body1095 ]
  %372 = add nuw nsw <4 x i64> %vec.ind1101, <i64 32, i64 32, i64 32, i64 32>
  %373 = trunc <4 x i64> %372 to <4 x i32>
  %374 = mul <4 x i32> %broadcast.splat1104, %373
  %375 = add <4 x i32> %374, <i32 1, i32 1, i32 1, i32 1>
  %376 = urem <4 x i32> %375, <i32 80, i32 80, i32 80, i32 80>
  %377 = sitofp <4 x i32> %376 to <4 x double>
  %378 = fmul fast <4 x double> %377, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %379 = extractelement <4 x i64> %372, i32 0
  %380 = shl i64 %379, 3
  %381 = add i64 %380, %370
  %382 = getelementptr i8, i8* %call1, i64 %381
  %383 = bitcast i8* %382 to <4 x double>*
  store <4 x double> %378, <4 x double>* %383, align 8, !alias.scope !93, !noalias !98
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1102 = add <4 x i64> %vec.ind1101, <i64 4, i64 4, i64 4, i64 4>
  %384 = icmp eq i64 %index.next1098, 28
  br i1 %384, label %polly.loop_exit737.1, label %vector.body1095, !llvm.loop !100

polly.loop_exit737.1:                             ; preds = %vector.body1095
  %polly.indvar_next733.1 = add nuw nsw i64 %polly.indvar732.1, 1
  %exitcond785.1.not = icmp eq i64 %polly.indvar_next733.1, 32
  br i1 %exitcond785.1.not, label %polly.loop_header729.1808, label %polly.loop_header729.1

polly.loop_header729.1808:                        ; preds = %polly.loop_exit737.1, %polly.loop_exit737.1819
  %polly.indvar732.1807 = phi i64 [ %polly.indvar_next733.1817, %polly.loop_exit737.1819 ], [ 0, %polly.loop_exit737.1 ]
  %385 = add nuw nsw i64 %polly.indvar732.1807, 32
  %386 = mul nuw nsw i64 %385, 480
  %387 = trunc i64 %385 to i32
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %387, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %polly.loop_header729.1808
  %index1109 = phi i64 [ 0, %polly.loop_header729.1808 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1115 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729.1808 ], [ %vec.ind.next1116, %vector.body1107 ]
  %388 = mul <4 x i32> %vec.ind1115, %broadcast.splat1118
  %389 = add <4 x i32> %388, <i32 1, i32 1, i32 1, i32 1>
  %390 = urem <4 x i32> %389, <i32 80, i32 80, i32 80, i32 80>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %393 = shl i64 %index1109, 3
  %394 = add i64 %393, %386
  %395 = getelementptr i8, i8* %call1, i64 %394
  %396 = bitcast i8* %395 to <4 x double>*
  store <4 x double> %392, <4 x double>* %396, align 8, !alias.scope !93, !noalias !98
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1116 = add <4 x i32> %vec.ind1115, <i32 4, i32 4, i32 4, i32 4>
  %397 = icmp eq i64 %index.next1110, 32
  br i1 %397, label %polly.loop_exit737.1819, label %vector.body1107, !llvm.loop !101

polly.loop_exit737.1819:                          ; preds = %vector.body1107
  %polly.indvar_next733.1817 = add nuw nsw i64 %polly.indvar732.1807, 1
  %exitcond785.1818.not = icmp eq i64 %polly.indvar_next733.1817, 32
  br i1 %exitcond785.1818.not, label %polly.loop_header729.1.1, label %polly.loop_header729.1808

polly.loop_header729.1.1:                         ; preds = %polly.loop_exit737.1819, %polly.loop_exit737.1.1
  %polly.indvar732.1.1 = phi i64 [ %polly.indvar_next733.1.1, %polly.loop_exit737.1.1 ], [ 0, %polly.loop_exit737.1819 ]
  %398 = add nuw nsw i64 %polly.indvar732.1.1, 32
  %399 = mul nuw nsw i64 %398, 480
  %400 = trunc i64 %398 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %400, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_header729.1.1
  %index1123 = phi i64 [ 0, %polly.loop_header729.1.1 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1127 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1.1 ], [ %vec.ind.next1128, %vector.body1121 ]
  %401 = add nuw nsw <4 x i64> %vec.ind1127, <i64 32, i64 32, i64 32, i64 32>
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat1130, %402
  %404 = add <4 x i32> %403, <i32 1, i32 1, i32 1, i32 1>
  %405 = urem <4 x i32> %404, <i32 80, i32 80, i32 80, i32 80>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add i64 %409, %399
  %411 = getelementptr i8, i8* %call1, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !93, !noalias !98
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1128 = add <4 x i64> %vec.ind1127, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next1124, 28
  br i1 %413, label %polly.loop_exit737.1.1, label %vector.body1121, !llvm.loop !102

polly.loop_exit737.1.1:                           ; preds = %vector.body1121
  %polly.indvar_next733.1.1 = add nuw nsw i64 %polly.indvar732.1.1, 1
  %exitcond785.1.1.not = icmp eq i64 %polly.indvar_next733.1.1, 32
  br i1 %exitcond785.1.1.not, label %polly.loop_header729.2, label %polly.loop_header729.1.1

polly.loop_header729.2:                           ; preds = %polly.loop_exit737.1.1, %polly.loop_exit737.2
  %polly.indvar732.2 = phi i64 [ %polly.indvar_next733.2, %polly.loop_exit737.2 ], [ 0, %polly.loop_exit737.1.1 ]
  %414 = add nuw nsw i64 %polly.indvar732.2, 64
  %415 = mul nuw nsw i64 %414, 480
  %416 = trunc i64 %414 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %416, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header729.2
  %index1135 = phi i64 [ 0, %polly.loop_header729.2 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1141 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729.2 ], [ %vec.ind.next1142, %vector.body1133 ]
  %417 = mul <4 x i32> %vec.ind1141, %broadcast.splat1144
  %418 = add <4 x i32> %417, <i32 1, i32 1, i32 1, i32 1>
  %419 = urem <4 x i32> %418, <i32 80, i32 80, i32 80, i32 80>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %422 = shl i64 %index1135, 3
  %423 = add i64 %422, %415
  %424 = getelementptr i8, i8* %call1, i64 %423
  %425 = bitcast i8* %424 to <4 x double>*
  store <4 x double> %421, <4 x double>* %425, align 8, !alias.scope !93, !noalias !98
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1142 = add <4 x i32> %vec.ind1141, <i32 4, i32 4, i32 4, i32 4>
  %426 = icmp eq i64 %index.next1136, 32
  br i1 %426, label %polly.loop_exit737.2, label %vector.body1133, !llvm.loop !103

polly.loop_exit737.2:                             ; preds = %vector.body1133
  %polly.indvar_next733.2 = add nuw nsw i64 %polly.indvar732.2, 1
  %exitcond785.2.not = icmp eq i64 %polly.indvar_next733.2, 16
  br i1 %exitcond785.2.not, label %polly.loop_header729.1.2, label %polly.loop_header729.2

polly.loop_header729.1.2:                         ; preds = %polly.loop_exit737.2, %polly.loop_exit737.1.2
  %polly.indvar732.1.2 = phi i64 [ %polly.indvar_next733.1.2, %polly.loop_exit737.1.2 ], [ 0, %polly.loop_exit737.2 ]
  %427 = add nuw nsw i64 %polly.indvar732.1.2, 64
  %428 = mul nuw nsw i64 %427, 480
  %429 = trunc i64 %427 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %429, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header729.1.2
  %index1149 = phi i64 [ 0, %polly.loop_header729.1.2 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1153 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1.2 ], [ %vec.ind.next1154, %vector.body1147 ]
  %430 = add nuw nsw <4 x i64> %vec.ind1153, <i64 32, i64 32, i64 32, i64 32>
  %431 = trunc <4 x i64> %430 to <4 x i32>
  %432 = mul <4 x i32> %broadcast.splat1156, %431
  %433 = add <4 x i32> %432, <i32 1, i32 1, i32 1, i32 1>
  %434 = urem <4 x i32> %433, <i32 80, i32 80, i32 80, i32 80>
  %435 = sitofp <4 x i32> %434 to <4 x double>
  %436 = fmul fast <4 x double> %435, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %437 = extractelement <4 x i64> %430, i32 0
  %438 = shl i64 %437, 3
  %439 = add i64 %438, %428
  %440 = getelementptr i8, i8* %call1, i64 %439
  %441 = bitcast i8* %440 to <4 x double>*
  store <4 x double> %436, <4 x double>* %441, align 8, !alias.scope !93, !noalias !98
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1154 = add <4 x i64> %vec.ind1153, <i64 4, i64 4, i64 4, i64 4>
  %442 = icmp eq i64 %index.next1150, 28
  br i1 %442, label %polly.loop_exit737.1.2, label %vector.body1147, !llvm.loop !104

polly.loop_exit737.1.2:                           ; preds = %vector.body1147
  %polly.indvar_next733.1.2 = add nuw nsw i64 %polly.indvar732.1.2, 1
  %exitcond785.1.2.not = icmp eq i64 %polly.indvar_next733.1.2, 16
  br i1 %exitcond785.1.2.not, label %init_array.exit, label %polly.loop_header729.1.2

polly.loop_header703.1:                           ; preds = %polly.loop_exit711, %polly.loop_exit711.1
  %polly.indvar706.1 = phi i64 [ %polly.indvar_next707.1, %polly.loop_exit711.1 ], [ 0, %polly.loop_exit711 ]
  %443 = mul nuw nsw i64 %polly.indvar706.1, 480
  %444 = trunc i64 %polly.indvar706.1 to i32
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %444, i32 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %polly.loop_header703.1
  %index1019 = phi i64 [ 0, %polly.loop_header703.1 ], [ %index.next1020, %vector.body1017 ]
  %vec.ind1023 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1 ], [ %vec.ind.next1024, %vector.body1017 ]
  %445 = add nuw nsw <4 x i64> %vec.ind1023, <i64 32, i64 32, i64 32, i64 32>
  %446 = trunc <4 x i64> %445 to <4 x i32>
  %447 = mul <4 x i32> %broadcast.splat1026, %446
  %448 = add <4 x i32> %447, <i32 2, i32 2, i32 2, i32 2>
  %449 = urem <4 x i32> %448, <i32 60, i32 60, i32 60, i32 60>
  %450 = sitofp <4 x i32> %449 to <4 x double>
  %451 = fmul fast <4 x double> %450, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %452 = extractelement <4 x i64> %445, i32 0
  %453 = shl i64 %452, 3
  %454 = add i64 %453, %443
  %455 = getelementptr i8, i8* %call2, i64 %454
  %456 = bitcast i8* %455 to <4 x double>*
  store <4 x double> %451, <4 x double>* %456, align 8, !alias.scope !94, !noalias !96
  %index.next1020 = add i64 %index1019, 4
  %vec.ind.next1024 = add <4 x i64> %vec.ind1023, <i64 4, i64 4, i64 4, i64 4>
  %457 = icmp eq i64 %index.next1020, 28
  br i1 %457, label %polly.loop_exit711.1, label %vector.body1017, !llvm.loop !105

polly.loop_exit711.1:                             ; preds = %vector.body1017
  %polly.indvar_next707.1 = add nuw nsw i64 %polly.indvar706.1, 1
  %exitcond791.1.not = icmp eq i64 %polly.indvar_next707.1, 32
  br i1 %exitcond791.1.not, label %polly.loop_header703.1822, label %polly.loop_header703.1

polly.loop_header703.1822:                        ; preds = %polly.loop_exit711.1, %polly.loop_exit711.1833
  %polly.indvar706.1821 = phi i64 [ %polly.indvar_next707.1831, %polly.loop_exit711.1833 ], [ 0, %polly.loop_exit711.1 ]
  %458 = add nuw nsw i64 %polly.indvar706.1821, 32
  %459 = mul nuw nsw i64 %458, 480
  %460 = trunc i64 %458 to i32
  %broadcast.splatinsert1039 = insertelement <4 x i32> poison, i32 %460, i32 0
  %broadcast.splat1040 = shufflevector <4 x i32> %broadcast.splatinsert1039, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header703.1822
  %index1031 = phi i64 [ 0, %polly.loop_header703.1822 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1037 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703.1822 ], [ %vec.ind.next1038, %vector.body1029 ]
  %461 = mul <4 x i32> %vec.ind1037, %broadcast.splat1040
  %462 = add <4 x i32> %461, <i32 2, i32 2, i32 2, i32 2>
  %463 = urem <4 x i32> %462, <i32 60, i32 60, i32 60, i32 60>
  %464 = sitofp <4 x i32> %463 to <4 x double>
  %465 = fmul fast <4 x double> %464, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %466 = shl i64 %index1031, 3
  %467 = add i64 %466, %459
  %468 = getelementptr i8, i8* %call2, i64 %467
  %469 = bitcast i8* %468 to <4 x double>*
  store <4 x double> %465, <4 x double>* %469, align 8, !alias.scope !94, !noalias !96
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1038 = add <4 x i32> %vec.ind1037, <i32 4, i32 4, i32 4, i32 4>
  %470 = icmp eq i64 %index.next1032, 32
  br i1 %470, label %polly.loop_exit711.1833, label %vector.body1029, !llvm.loop !106

polly.loop_exit711.1833:                          ; preds = %vector.body1029
  %polly.indvar_next707.1831 = add nuw nsw i64 %polly.indvar706.1821, 1
  %exitcond791.1832.not = icmp eq i64 %polly.indvar_next707.1831, 32
  br i1 %exitcond791.1832.not, label %polly.loop_header703.1.1, label %polly.loop_header703.1822

polly.loop_header703.1.1:                         ; preds = %polly.loop_exit711.1833, %polly.loop_exit711.1.1
  %polly.indvar706.1.1 = phi i64 [ %polly.indvar_next707.1.1, %polly.loop_exit711.1.1 ], [ 0, %polly.loop_exit711.1833 ]
  %471 = add nuw nsw i64 %polly.indvar706.1.1, 32
  %472 = mul nuw nsw i64 %471, 480
  %473 = trunc i64 %471 to i32
  %broadcast.splatinsert1051 = insertelement <4 x i32> poison, i32 %473, i32 0
  %broadcast.splat1052 = shufflevector <4 x i32> %broadcast.splatinsert1051, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %polly.loop_header703.1.1
  %index1045 = phi i64 [ 0, %polly.loop_header703.1.1 ], [ %index.next1046, %vector.body1043 ]
  %vec.ind1049 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1.1 ], [ %vec.ind.next1050, %vector.body1043 ]
  %474 = add nuw nsw <4 x i64> %vec.ind1049, <i64 32, i64 32, i64 32, i64 32>
  %475 = trunc <4 x i64> %474 to <4 x i32>
  %476 = mul <4 x i32> %broadcast.splat1052, %475
  %477 = add <4 x i32> %476, <i32 2, i32 2, i32 2, i32 2>
  %478 = urem <4 x i32> %477, <i32 60, i32 60, i32 60, i32 60>
  %479 = sitofp <4 x i32> %478 to <4 x double>
  %480 = fmul fast <4 x double> %479, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %481 = extractelement <4 x i64> %474, i32 0
  %482 = shl i64 %481, 3
  %483 = add i64 %482, %472
  %484 = getelementptr i8, i8* %call2, i64 %483
  %485 = bitcast i8* %484 to <4 x double>*
  store <4 x double> %480, <4 x double>* %485, align 8, !alias.scope !94, !noalias !96
  %index.next1046 = add i64 %index1045, 4
  %vec.ind.next1050 = add <4 x i64> %vec.ind1049, <i64 4, i64 4, i64 4, i64 4>
  %486 = icmp eq i64 %index.next1046, 28
  br i1 %486, label %polly.loop_exit711.1.1, label %vector.body1043, !llvm.loop !107

polly.loop_exit711.1.1:                           ; preds = %vector.body1043
  %polly.indvar_next707.1.1 = add nuw nsw i64 %polly.indvar706.1.1, 1
  %exitcond791.1.1.not = icmp eq i64 %polly.indvar_next707.1.1, 32
  br i1 %exitcond791.1.1.not, label %polly.loop_header703.2, label %polly.loop_header703.1.1

polly.loop_header703.2:                           ; preds = %polly.loop_exit711.1.1, %polly.loop_exit711.2
  %polly.indvar706.2 = phi i64 [ %polly.indvar_next707.2, %polly.loop_exit711.2 ], [ 0, %polly.loop_exit711.1.1 ]
  %487 = add nuw nsw i64 %polly.indvar706.2, 64
  %488 = mul nuw nsw i64 %487, 480
  %489 = trunc i64 %487 to i32
  %broadcast.splatinsert1065 = insertelement <4 x i32> poison, i32 %489, i32 0
  %broadcast.splat1066 = shufflevector <4 x i32> %broadcast.splatinsert1065, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %polly.loop_header703.2
  %index1057 = phi i64 [ 0, %polly.loop_header703.2 ], [ %index.next1058, %vector.body1055 ]
  %vec.ind1063 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703.2 ], [ %vec.ind.next1064, %vector.body1055 ]
  %490 = mul <4 x i32> %vec.ind1063, %broadcast.splat1066
  %491 = add <4 x i32> %490, <i32 2, i32 2, i32 2, i32 2>
  %492 = urem <4 x i32> %491, <i32 60, i32 60, i32 60, i32 60>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = shl i64 %index1057, 3
  %496 = add i64 %495, %488
  %497 = getelementptr i8, i8* %call2, i64 %496
  %498 = bitcast i8* %497 to <4 x double>*
  store <4 x double> %494, <4 x double>* %498, align 8, !alias.scope !94, !noalias !96
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1064 = add <4 x i32> %vec.ind1063, <i32 4, i32 4, i32 4, i32 4>
  %499 = icmp eq i64 %index.next1058, 32
  br i1 %499, label %polly.loop_exit711.2, label %vector.body1055, !llvm.loop !108

polly.loop_exit711.2:                             ; preds = %vector.body1055
  %polly.indvar_next707.2 = add nuw nsw i64 %polly.indvar706.2, 1
  %exitcond791.2.not = icmp eq i64 %polly.indvar_next707.2, 16
  br i1 %exitcond791.2.not, label %polly.loop_header703.1.2, label %polly.loop_header703.2

polly.loop_header703.1.2:                         ; preds = %polly.loop_exit711.2, %polly.loop_exit711.1.2
  %polly.indvar706.1.2 = phi i64 [ %polly.indvar_next707.1.2, %polly.loop_exit711.1.2 ], [ 0, %polly.loop_exit711.2 ]
  %500 = add nuw nsw i64 %polly.indvar706.1.2, 64
  %501 = mul nuw nsw i64 %500, 480
  %502 = trunc i64 %500 to i32
  %broadcast.splatinsert1077 = insertelement <4 x i32> poison, i32 %502, i32 0
  %broadcast.splat1078 = shufflevector <4 x i32> %broadcast.splatinsert1077, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %polly.loop_header703.1.2
  %index1071 = phi i64 [ 0, %polly.loop_header703.1.2 ], [ %index.next1072, %vector.body1069 ]
  %vec.ind1075 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1.2 ], [ %vec.ind.next1076, %vector.body1069 ]
  %503 = add nuw nsw <4 x i64> %vec.ind1075, <i64 32, i64 32, i64 32, i64 32>
  %504 = trunc <4 x i64> %503 to <4 x i32>
  %505 = mul <4 x i32> %broadcast.splat1078, %504
  %506 = add <4 x i32> %505, <i32 2, i32 2, i32 2, i32 2>
  %507 = urem <4 x i32> %506, <i32 60, i32 60, i32 60, i32 60>
  %508 = sitofp <4 x i32> %507 to <4 x double>
  %509 = fmul fast <4 x double> %508, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %510 = extractelement <4 x i64> %503, i32 0
  %511 = shl i64 %510, 3
  %512 = add i64 %511, %501
  %513 = getelementptr i8, i8* %call2, i64 %512
  %514 = bitcast i8* %513 to <4 x double>*
  store <4 x double> %509, <4 x double>* %514, align 8, !alias.scope !94, !noalias !96
  %index.next1072 = add i64 %index1071, 4
  %vec.ind.next1076 = add <4 x i64> %vec.ind1075, <i64 4, i64 4, i64 4, i64 4>
  %515 = icmp eq i64 %index.next1072, 28
  br i1 %515, label %polly.loop_exit711.1.2, label %vector.body1069, !llvm.loop !109

polly.loop_exit711.1.2:                           ; preds = %vector.body1069
  %polly.indvar_next707.1.2 = add nuw nsw i64 %polly.indvar706.1.2, 1
  %exitcond791.1.2.not = icmp eq i64 %polly.indvar_next707.1.2, 16
  br i1 %exitcond791.1.2.not, label %polly.loop_header729, label %polly.loop_header703.1.2

polly.loop_header676.1:                           ; preds = %polly.loop_exit684, %polly.loop_exit684.1
  %polly.indvar679.1 = phi i64 [ %polly.indvar_next680.1, %polly.loop_exit684.1 ], [ 0, %polly.loop_exit684 ]
  %516 = mul nuw nsw i64 %polly.indvar679.1, 640
  %517 = trunc i64 %polly.indvar679.1 to i32
  %broadcast.splatinsert911 = insertelement <4 x i32> poison, i32 %517, i32 0
  %broadcast.splat912 = shufflevector <4 x i32> %broadcast.splatinsert911, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body903

vector.body903:                                   ; preds = %vector.body903, %polly.loop_header676.1
  %index905 = phi i64 [ 0, %polly.loop_header676.1 ], [ %index.next906, %vector.body903 ]
  %vec.ind909 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1 ], [ %vec.ind.next910, %vector.body903 ]
  %518 = add nuw nsw <4 x i64> %vec.ind909, <i64 32, i64 32, i64 32, i64 32>
  %519 = trunc <4 x i64> %518 to <4 x i32>
  %520 = mul <4 x i32> %broadcast.splat912, %519
  %521 = add <4 x i32> %520, <i32 3, i32 3, i32 3, i32 3>
  %522 = urem <4 x i32> %521, <i32 80, i32 80, i32 80, i32 80>
  %523 = sitofp <4 x i32> %522 to <4 x double>
  %524 = fmul fast <4 x double> %523, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %525 = extractelement <4 x i64> %518, i32 0
  %526 = shl i64 %525, 3
  %527 = add nuw nsw i64 %526, %516
  %528 = getelementptr i8, i8* %call, i64 %527
  %529 = bitcast i8* %528 to <4 x double>*
  store <4 x double> %524, <4 x double>* %529, align 8, !alias.scope !90, !noalias !92
  %index.next906 = add i64 %index905, 4
  %vec.ind.next910 = add <4 x i64> %vec.ind909, <i64 4, i64 4, i64 4, i64 4>
  %530 = icmp eq i64 %index.next906, 32
  br i1 %530, label %polly.loop_exit684.1, label %vector.body903, !llvm.loop !110

polly.loop_exit684.1:                             ; preds = %vector.body903
  %polly.indvar_next680.1 = add nuw nsw i64 %polly.indvar679.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next680.1, 32
  br i1 %exitcond800.1.not, label %polly.loop_header676.2, label %polly.loop_header676.1

polly.loop_header676.2:                           ; preds = %polly.loop_exit684.1, %polly.loop_exit684.2
  %polly.indvar679.2 = phi i64 [ %polly.indvar_next680.2, %polly.loop_exit684.2 ], [ 0, %polly.loop_exit684.1 ]
  %531 = mul nuw nsw i64 %polly.indvar679.2, 640
  %532 = trunc i64 %polly.indvar679.2 to i32
  %broadcast.splatinsert923 = insertelement <4 x i32> poison, i32 %532, i32 0
  %broadcast.splat924 = shufflevector <4 x i32> %broadcast.splatinsert923, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body915

vector.body915:                                   ; preds = %vector.body915, %polly.loop_header676.2
  %index917 = phi i64 [ 0, %polly.loop_header676.2 ], [ %index.next918, %vector.body915 ]
  %vec.ind921 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2 ], [ %vec.ind.next922, %vector.body915 ]
  %533 = add nuw nsw <4 x i64> %vec.ind921, <i64 64, i64 64, i64 64, i64 64>
  %534 = trunc <4 x i64> %533 to <4 x i32>
  %535 = mul <4 x i32> %broadcast.splat924, %534
  %536 = add <4 x i32> %535, <i32 3, i32 3, i32 3, i32 3>
  %537 = urem <4 x i32> %536, <i32 80, i32 80, i32 80, i32 80>
  %538 = sitofp <4 x i32> %537 to <4 x double>
  %539 = fmul fast <4 x double> %538, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %540 = extractelement <4 x i64> %533, i32 0
  %541 = shl i64 %540, 3
  %542 = add nuw nsw i64 %541, %531
  %543 = getelementptr i8, i8* %call, i64 %542
  %544 = bitcast i8* %543 to <4 x double>*
  store <4 x double> %539, <4 x double>* %544, align 8, !alias.scope !90, !noalias !92
  %index.next918 = add i64 %index917, 4
  %vec.ind.next922 = add <4 x i64> %vec.ind921, <i64 4, i64 4, i64 4, i64 4>
  %545 = icmp eq i64 %index.next918, 16
  br i1 %545, label %polly.loop_exit684.2, label %vector.body915, !llvm.loop !111

polly.loop_exit684.2:                             ; preds = %vector.body915
  %polly.indvar_next680.2 = add nuw nsw i64 %polly.indvar679.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next680.2, 32
  br i1 %exitcond800.2.not, label %polly.loop_header676.1836, label %polly.loop_header676.2

polly.loop_header676.1836:                        ; preds = %polly.loop_exit684.2, %polly.loop_exit684.1847
  %polly.indvar679.1835 = phi i64 [ %polly.indvar_next680.1845, %polly.loop_exit684.1847 ], [ 0, %polly.loop_exit684.2 ]
  %546 = add nuw nsw i64 %polly.indvar679.1835, 32
  %547 = mul nuw nsw i64 %546, 640
  %548 = trunc i64 %546 to i32
  %broadcast.splatinsert937 = insertelement <4 x i32> poison, i32 %548, i32 0
  %broadcast.splat938 = shufflevector <4 x i32> %broadcast.splatinsert937, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %polly.loop_header676.1836
  %index929 = phi i64 [ 0, %polly.loop_header676.1836 ], [ %index.next930, %vector.body927 ]
  %vec.ind935 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676.1836 ], [ %vec.ind.next936, %vector.body927 ]
  %549 = mul <4 x i32> %vec.ind935, %broadcast.splat938
  %550 = add <4 x i32> %549, <i32 3, i32 3, i32 3, i32 3>
  %551 = urem <4 x i32> %550, <i32 80, i32 80, i32 80, i32 80>
  %552 = sitofp <4 x i32> %551 to <4 x double>
  %553 = fmul fast <4 x double> %552, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %554 = shl i64 %index929, 3
  %555 = add nuw nsw i64 %554, %547
  %556 = getelementptr i8, i8* %call, i64 %555
  %557 = bitcast i8* %556 to <4 x double>*
  store <4 x double> %553, <4 x double>* %557, align 8, !alias.scope !90, !noalias !92
  %index.next930 = add i64 %index929, 4
  %vec.ind.next936 = add <4 x i32> %vec.ind935, <i32 4, i32 4, i32 4, i32 4>
  %558 = icmp eq i64 %index.next930, 32
  br i1 %558, label %polly.loop_exit684.1847, label %vector.body927, !llvm.loop !112

polly.loop_exit684.1847:                          ; preds = %vector.body927
  %polly.indvar_next680.1845 = add nuw nsw i64 %polly.indvar679.1835, 1
  %exitcond800.1846.not = icmp eq i64 %polly.indvar_next680.1845, 32
  br i1 %exitcond800.1846.not, label %polly.loop_header676.1.1, label %polly.loop_header676.1836

polly.loop_header676.1.1:                         ; preds = %polly.loop_exit684.1847, %polly.loop_exit684.1.1
  %polly.indvar679.1.1 = phi i64 [ %polly.indvar_next680.1.1, %polly.loop_exit684.1.1 ], [ 0, %polly.loop_exit684.1847 ]
  %559 = add nuw nsw i64 %polly.indvar679.1.1, 32
  %560 = mul nuw nsw i64 %559, 640
  %561 = trunc i64 %559 to i32
  %broadcast.splatinsert949 = insertelement <4 x i32> poison, i32 %561, i32 0
  %broadcast.splat950 = shufflevector <4 x i32> %broadcast.splatinsert949, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body941

vector.body941:                                   ; preds = %vector.body941, %polly.loop_header676.1.1
  %index943 = phi i64 [ 0, %polly.loop_header676.1.1 ], [ %index.next944, %vector.body941 ]
  %vec.ind947 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1.1 ], [ %vec.ind.next948, %vector.body941 ]
  %562 = add nuw nsw <4 x i64> %vec.ind947, <i64 32, i64 32, i64 32, i64 32>
  %563 = trunc <4 x i64> %562 to <4 x i32>
  %564 = mul <4 x i32> %broadcast.splat950, %563
  %565 = add <4 x i32> %564, <i32 3, i32 3, i32 3, i32 3>
  %566 = urem <4 x i32> %565, <i32 80, i32 80, i32 80, i32 80>
  %567 = sitofp <4 x i32> %566 to <4 x double>
  %568 = fmul fast <4 x double> %567, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %569 = extractelement <4 x i64> %562, i32 0
  %570 = shl i64 %569, 3
  %571 = add nuw nsw i64 %570, %560
  %572 = getelementptr i8, i8* %call, i64 %571
  %573 = bitcast i8* %572 to <4 x double>*
  store <4 x double> %568, <4 x double>* %573, align 8, !alias.scope !90, !noalias !92
  %index.next944 = add i64 %index943, 4
  %vec.ind.next948 = add <4 x i64> %vec.ind947, <i64 4, i64 4, i64 4, i64 4>
  %574 = icmp eq i64 %index.next944, 32
  br i1 %574, label %polly.loop_exit684.1.1, label %vector.body941, !llvm.loop !113

polly.loop_exit684.1.1:                           ; preds = %vector.body941
  %polly.indvar_next680.1.1 = add nuw nsw i64 %polly.indvar679.1.1, 1
  %exitcond800.1.1.not = icmp eq i64 %polly.indvar_next680.1.1, 32
  br i1 %exitcond800.1.1.not, label %polly.loop_header676.2.1, label %polly.loop_header676.1.1

polly.loop_header676.2.1:                         ; preds = %polly.loop_exit684.1.1, %polly.loop_exit684.2.1
  %polly.indvar679.2.1 = phi i64 [ %polly.indvar_next680.2.1, %polly.loop_exit684.2.1 ], [ 0, %polly.loop_exit684.1.1 ]
  %575 = add nuw nsw i64 %polly.indvar679.2.1, 32
  %576 = mul nuw nsw i64 %575, 640
  %577 = trunc i64 %575 to i32
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %577, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %polly.loop_header676.2.1
  %index955 = phi i64 [ 0, %polly.loop_header676.2.1 ], [ %index.next956, %vector.body953 ]
  %vec.ind959 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2.1 ], [ %vec.ind.next960, %vector.body953 ]
  %578 = add nuw nsw <4 x i64> %vec.ind959, <i64 64, i64 64, i64 64, i64 64>
  %579 = trunc <4 x i64> %578 to <4 x i32>
  %580 = mul <4 x i32> %broadcast.splat962, %579
  %581 = add <4 x i32> %580, <i32 3, i32 3, i32 3, i32 3>
  %582 = urem <4 x i32> %581, <i32 80, i32 80, i32 80, i32 80>
  %583 = sitofp <4 x i32> %582 to <4 x double>
  %584 = fmul fast <4 x double> %583, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %585 = extractelement <4 x i64> %578, i32 0
  %586 = shl i64 %585, 3
  %587 = add nuw nsw i64 %586, %576
  %588 = getelementptr i8, i8* %call, i64 %587
  %589 = bitcast i8* %588 to <4 x double>*
  store <4 x double> %584, <4 x double>* %589, align 8, !alias.scope !90, !noalias !92
  %index.next956 = add i64 %index955, 4
  %vec.ind.next960 = add <4 x i64> %vec.ind959, <i64 4, i64 4, i64 4, i64 4>
  %590 = icmp eq i64 %index.next956, 16
  br i1 %590, label %polly.loop_exit684.2.1, label %vector.body953, !llvm.loop !114

polly.loop_exit684.2.1:                           ; preds = %vector.body953
  %polly.indvar_next680.2.1 = add nuw nsw i64 %polly.indvar679.2.1, 1
  %exitcond800.2.1.not = icmp eq i64 %polly.indvar_next680.2.1, 32
  br i1 %exitcond800.2.1.not, label %polly.loop_header676.2850, label %polly.loop_header676.2.1

polly.loop_header676.2850:                        ; preds = %polly.loop_exit684.2.1, %polly.loop_exit684.2861
  %polly.indvar679.2849 = phi i64 [ %polly.indvar_next680.2859, %polly.loop_exit684.2861 ], [ 0, %polly.loop_exit684.2.1 ]
  %591 = add nuw nsw i64 %polly.indvar679.2849, 64
  %592 = mul nuw nsw i64 %591, 640
  %593 = trunc i64 %591 to i32
  %broadcast.splatinsert975 = insertelement <4 x i32> poison, i32 %593, i32 0
  %broadcast.splat976 = shufflevector <4 x i32> %broadcast.splatinsert975, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %polly.loop_header676.2850
  %index967 = phi i64 [ 0, %polly.loop_header676.2850 ], [ %index.next968, %vector.body965 ]
  %vec.ind973 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676.2850 ], [ %vec.ind.next974, %vector.body965 ]
  %594 = mul <4 x i32> %vec.ind973, %broadcast.splat976
  %595 = add <4 x i32> %594, <i32 3, i32 3, i32 3, i32 3>
  %596 = urem <4 x i32> %595, <i32 80, i32 80, i32 80, i32 80>
  %597 = sitofp <4 x i32> %596 to <4 x double>
  %598 = fmul fast <4 x double> %597, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %599 = shl i64 %index967, 3
  %600 = add nuw nsw i64 %599, %592
  %601 = getelementptr i8, i8* %call, i64 %600
  %602 = bitcast i8* %601 to <4 x double>*
  store <4 x double> %598, <4 x double>* %602, align 8, !alias.scope !90, !noalias !92
  %index.next968 = add i64 %index967, 4
  %vec.ind.next974 = add <4 x i32> %vec.ind973, <i32 4, i32 4, i32 4, i32 4>
  %603 = icmp eq i64 %index.next968, 32
  br i1 %603, label %polly.loop_exit684.2861, label %vector.body965, !llvm.loop !115

polly.loop_exit684.2861:                          ; preds = %vector.body965
  %polly.indvar_next680.2859 = add nuw nsw i64 %polly.indvar679.2849, 1
  %exitcond800.2860.not = icmp eq i64 %polly.indvar_next680.2859, 16
  br i1 %exitcond800.2860.not, label %polly.loop_header676.1.2, label %polly.loop_header676.2850

polly.loop_header676.1.2:                         ; preds = %polly.loop_exit684.2861, %polly.loop_exit684.1.2
  %polly.indvar679.1.2 = phi i64 [ %polly.indvar_next680.1.2, %polly.loop_exit684.1.2 ], [ 0, %polly.loop_exit684.2861 ]
  %604 = add nuw nsw i64 %polly.indvar679.1.2, 64
  %605 = mul nuw nsw i64 %604, 640
  %606 = trunc i64 %604 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %606, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %polly.loop_header676.1.2
  %index981 = phi i64 [ 0, %polly.loop_header676.1.2 ], [ %index.next982, %vector.body979 ]
  %vec.ind985 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1.2 ], [ %vec.ind.next986, %vector.body979 ]
  %607 = add nuw nsw <4 x i64> %vec.ind985, <i64 32, i64 32, i64 32, i64 32>
  %608 = trunc <4 x i64> %607 to <4 x i32>
  %609 = mul <4 x i32> %broadcast.splat988, %608
  %610 = add <4 x i32> %609, <i32 3, i32 3, i32 3, i32 3>
  %611 = urem <4 x i32> %610, <i32 80, i32 80, i32 80, i32 80>
  %612 = sitofp <4 x i32> %611 to <4 x double>
  %613 = fmul fast <4 x double> %612, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %614 = extractelement <4 x i64> %607, i32 0
  %615 = shl i64 %614, 3
  %616 = add nuw nsw i64 %615, %605
  %617 = getelementptr i8, i8* %call, i64 %616
  %618 = bitcast i8* %617 to <4 x double>*
  store <4 x double> %613, <4 x double>* %618, align 8, !alias.scope !90, !noalias !92
  %index.next982 = add i64 %index981, 4
  %vec.ind.next986 = add <4 x i64> %vec.ind985, <i64 4, i64 4, i64 4, i64 4>
  %619 = icmp eq i64 %index.next982, 32
  br i1 %619, label %polly.loop_exit684.1.2, label %vector.body979, !llvm.loop !116

polly.loop_exit684.1.2:                           ; preds = %vector.body979
  %polly.indvar_next680.1.2 = add nuw nsw i64 %polly.indvar679.1.2, 1
  %exitcond800.1.2.not = icmp eq i64 %polly.indvar_next680.1.2, 16
  br i1 %exitcond800.1.2.not, label %polly.loop_header676.2.2, label %polly.loop_header676.1.2

polly.loop_header676.2.2:                         ; preds = %polly.loop_exit684.1.2, %polly.loop_exit684.2.2
  %polly.indvar679.2.2 = phi i64 [ %polly.indvar_next680.2.2, %polly.loop_exit684.2.2 ], [ 0, %polly.loop_exit684.1.2 ]
  %620 = add nuw nsw i64 %polly.indvar679.2.2, 64
  %621 = mul nuw nsw i64 %620, 640
  %622 = trunc i64 %620 to i32
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %622, i32 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header676.2.2
  %index993 = phi i64 [ 0, %polly.loop_header676.2.2 ], [ %index.next994, %vector.body991 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2.2 ], [ %vec.ind.next998, %vector.body991 ]
  %623 = add nuw nsw <4 x i64> %vec.ind997, <i64 64, i64 64, i64 64, i64 64>
  %624 = trunc <4 x i64> %623 to <4 x i32>
  %625 = mul <4 x i32> %broadcast.splat1000, %624
  %626 = add <4 x i32> %625, <i32 3, i32 3, i32 3, i32 3>
  %627 = urem <4 x i32> %626, <i32 80, i32 80, i32 80, i32 80>
  %628 = sitofp <4 x i32> %627 to <4 x double>
  %629 = fmul fast <4 x double> %628, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %630 = extractelement <4 x i64> %623, i32 0
  %631 = shl i64 %630, 3
  %632 = add nuw nsw i64 %631, %621
  %633 = getelementptr i8, i8* %call, i64 %632
  %634 = bitcast i8* %633 to <4 x double>*
  store <4 x double> %629, <4 x double>* %634, align 8, !alias.scope !90, !noalias !92
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %635 = icmp eq i64 %index.next994, 16
  br i1 %635, label %polly.loop_exit684.2.2, label %vector.body991, !llvm.loop !117

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
!24 = !{!"llvm.loop.tile.size", i32 100}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 4}
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
!44 = !{!"llvm.loop.tile.size", i32 8}
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
