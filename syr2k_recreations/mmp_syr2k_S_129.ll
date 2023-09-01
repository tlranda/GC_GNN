; ModuleID = 'syr2k_recreations//mmp_syr2k_S_129.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_129.c"
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
  %scevgep883 = getelementptr i8, i8* %call2, i64 %12
  %scevgep882 = getelementptr i8, i8* %call2, i64 %11
  %scevgep881 = getelementptr i8, i8* %call1, i64 %12
  %scevgep880 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep880, %scevgep883
  %bound1 = icmp ult i8* %scevgep882, %scevgep881
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
  br i1 %exitcond18.not.i, label %vector.ph887, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph887:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert894 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat895 = shufflevector <4 x i64> %broadcast.splatinsert894, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %vector.ph887
  %index888 = phi i64 [ 0, %vector.ph887 ], [ %index.next889, %vector.body886 ]
  %vec.ind892 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph887 ], [ %vec.ind.next893, %vector.body886 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind892, %broadcast.splat895
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv7.i, i64 %index888
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next889 = add i64 %index888, 4
  %vec.ind.next893 = add <4 x i64> %vec.ind892, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next889, 80
  br i1 %40, label %for.inc41.i, label %vector.body886, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body886
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph887, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1243, label %vector.ph1169

vector.ph1169:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1169
  %index1170 = phi i64 [ 0, %vector.ph1169 ], [ %index.next1171, %vector.body1168 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i, i64 %index1170
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1171 = add i64 %index1170, 4
  %46 = icmp eq i64 %index.next1171, %n.vec
  br i1 %46, label %middle.block1166, label %vector.body1168, !llvm.loop !18

middle.block1166:                                 ; preds = %vector.body1168
  %cmp.n1173 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1173, label %for.inc6.i, label %for.body3.i46.preheader1243

for.body3.i46.preheader1243:                      ; preds = %for.body3.i46.preheader, %middle.block1166
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1166 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1243, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1243 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1166, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit507.3
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header330, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1189 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1189, label %for.body3.i60.preheader1241, label %vector.ph1190

vector.ph1190:                                    ; preds = %for.body3.i60.preheader
  %n.vec1192 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1190
  %index1193 = phi i64 [ 0, %vector.ph1190 ], [ %index.next1194, %vector.body1188 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i52, i64 %index1193
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1197 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1197, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1194 = add i64 %index1193, 4
  %57 = icmp eq i64 %index.next1194, %n.vec1192
  br i1 %57, label %middle.block1186, label %vector.body1188, !llvm.loop !50

middle.block1186:                                 ; preds = %vector.body1188
  %cmp.n1196 = icmp eq i64 %indvars.iv21.i52, %n.vec1192
  br i1 %cmp.n1196, label %for.inc6.i63, label %for.body3.i60.preheader1241

for.body3.i60.preheader1241:                      ; preds = %for.body3.i60.preheader, %middle.block1186
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1192, %middle.block1186 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1241, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1241 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !51

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1186, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit360.3
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1215 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1215, label %for.body3.i99.preheader1239, label %vector.ph1216

vector.ph1216:                                    ; preds = %for.body3.i99.preheader
  %n.vec1218 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1220, %vector.body1214 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i91, i64 %index1219
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1223 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1223, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1220 = add i64 %index1219, 4
  %68 = icmp eq i64 %index.next1220, %n.vec1218
  br i1 %68, label %middle.block1212, label %vector.body1214, !llvm.loop !52

middle.block1212:                                 ; preds = %vector.body1214
  %cmp.n1222 = icmp eq i64 %indvars.iv21.i91, %n.vec1218
  br i1 %cmp.n1222, label %for.inc6.i102, label %for.body3.i99.preheader1239

for.body3.i99.preheader1239:                      ; preds = %for.body3.i99.preheader, %middle.block1212
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1218, %middle.block1212 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1239, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1239 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !53

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1212, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.3
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1227 = phi i64 [ %indvar.next1228, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1227, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1229 = icmp ult i64 %88, 4
  br i1 %min.iters.check1229, label %polly.loop_header191.preheader, label %vector.ph1230

vector.ph1230:                                    ; preds = %polly.loop_header
  %n.vec1232 = and i64 %88, -4
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1234, %vector.body1226 ]
  %90 = shl nuw nsw i64 %index1233, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1237 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !58, !noalias !60
  %93 = fmul fast <4 x double> %wide.load1237, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !58, !noalias !60
  %index.next1234 = add i64 %index1233, 4
  %95 = icmp eq i64 %index.next1234, %n.vec1232
  br i1 %95, label %middle.block1224, label %vector.body1226, !llvm.loop !63

middle.block1224:                                 ; preds = %vector.body1226
  %cmp.n1236 = icmp eq i64 %88, %n.vec1232
  br i1 %cmp.n1236, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1224
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1232, %middle.block1224 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1224
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond761.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1228 = add i64 %indvar1227, 1
  br i1 %exitcond761.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond760.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond760.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.3
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213.3 ], [ 1, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit213.3 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nsw i64 %polly.indvar202, 4
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %98 = add nuw nsw i64 %polly.indvar214, %97
  %99 = mul nuw nsw i64 %98, 480
  %100 = mul nuw nsw i64 %98, 640
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, 1
  %exitcond757.not = icmp eq i64 %polly.indvar_next215, 16
  br i1 %exitcond757.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %101 = shl i64 %polly.indvar220, 3
  %102 = add nuw nsw i64 %101, %99
  %scevgep232 = getelementptr i8, i8* %call2, i64 %102
  %scevgep232233 = bitcast i8* %scevgep232 to double*
  %_p_scalar_234 = load double, double* %scevgep232233, align 8, !alias.scope !62, !noalias !66
  %scevgep238 = getelementptr i8, i8* %call1, i64 %102
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond756.not = icmp eq i64 %polly.indvar_next221, 16
  br i1 %exitcond756.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %103 = mul nuw nsw i64 %polly.indvar226, 480
  %104 = add nuw nsw i64 %103, %101
  %scevgep229 = getelementptr i8, i8* %call1, i64 %104
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112 = fmul fast double %_p_scalar_234, %_p_scalar_231
  %scevgep235 = getelementptr i8, i8* %call2, i64 %104
  %scevgep235236 = bitcast i8* %scevgep235 to double*
  %_p_scalar_237 = load double, double* %scevgep235236, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114 = fmul fast double %_p_scalar_240, %_p_scalar_237
  %105 = shl nuw nsw i64 %polly.indvar226, 3
  %106 = add nuw nsw i64 %105, %100
  %scevgep241 = getelementptr i8, i8* %call, i64 %106
  %scevgep241242 = bitcast i8* %scevgep241 to double*
  %_p_scalar_243 = load double, double* %scevgep241242, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_243
  store double %p_add42.i118, double* %scevgep241242, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, %indvars.iv752
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header330:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit338
  %indvar1201 = phi i64 [ %indvar.next1202, %polly.loop_exit338 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar333 = phi i64 [ %polly.indvar_next334, %polly.loop_exit338 ], [ 1, %kernel_syr2k.exit ]
  %107 = add i64 %indvar1201, 1
  %108 = mul nuw nsw i64 %polly.indvar333, 640
  %scevgep342 = getelementptr i8, i8* %call, i64 %108
  %min.iters.check1203 = icmp ult i64 %107, 4
  br i1 %min.iters.check1203, label %polly.loop_header336.preheader, label %vector.ph1204

vector.ph1204:                                    ; preds = %polly.loop_header330
  %n.vec1206 = and i64 %107, -4
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1200 ]
  %109 = shl nuw nsw i64 %index1207, 3
  %110 = getelementptr i8, i8* %scevgep342, i64 %109
  %111 = bitcast i8* %110 to <4 x double>*
  %wide.load1211 = load <4 x double>, <4 x double>* %111, align 8, !alias.scope !68, !noalias !70
  %112 = fmul fast <4 x double> %wide.load1211, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %113 = bitcast i8* %110 to <4 x double>*
  store <4 x double> %112, <4 x double>* %113, align 8, !alias.scope !68, !noalias !70
  %index.next1208 = add i64 %index1207, 4
  %114 = icmp eq i64 %index.next1208, %n.vec1206
  br i1 %114, label %middle.block1198, label %vector.body1200, !llvm.loop !73

middle.block1198:                                 ; preds = %vector.body1200
  %cmp.n1210 = icmp eq i64 %107, %n.vec1206
  br i1 %cmp.n1210, label %polly.loop_exit338, label %polly.loop_header336.preheader

polly.loop_header336.preheader:                   ; preds = %polly.loop_header330, %middle.block1198
  %polly.indvar339.ph = phi i64 [ 0, %polly.loop_header330 ], [ %n.vec1206, %middle.block1198 ]
  br label %polly.loop_header336

polly.loop_exit338:                               ; preds = %polly.loop_header336, %middle.block1198
  %polly.indvar_next334 = add nuw nsw i64 %polly.indvar333, 1
  %exitcond775.not = icmp eq i64 %polly.indvar_next334, 80
  %indvar.next1202 = add i64 %indvar1201, 1
  br i1 %exitcond775.not, label %polly.loop_header346, label %polly.loop_header330

polly.loop_header336:                             ; preds = %polly.loop_header336.preheader, %polly.loop_header336
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_header336 ], [ %polly.indvar339.ph, %polly.loop_header336.preheader ]
  %115 = shl nuw nsw i64 %polly.indvar339, 3
  %scevgep343 = getelementptr i8, i8* %scevgep342, i64 %115
  %scevgep343344 = bitcast i8* %scevgep343 to double*
  %_p_scalar_345 = load double, double* %scevgep343344, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_345, 1.200000e+00
  store double %p_mul.i57, double* %scevgep343344, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond774.not = icmp eq i64 %polly.indvar_next340, %polly.indvar333
  br i1 %exitcond774.not, label %polly.loop_exit338, label %polly.loop_header336, !llvm.loop !74

polly.loop_header346:                             ; preds = %polly.loop_exit338, %polly.loop_exit360.3
  %indvars.iv762 = phi i64 [ %indvars.iv.next763, %polly.loop_exit360.3 ], [ 1, %polly.loop_exit338 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit360.3 ], [ 0, %polly.loop_exit338 ]
  %116 = shl nsw i64 %polly.indvar349, 4
  br label %polly.loop_header358

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.loop_header346
  %indvars.iv764 = phi i64 [ %indvars.iv.next765, %polly.loop_exit366 ], [ %indvars.iv762, %polly.loop_header346 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 0, %polly.loop_header346 ]
  %117 = add nuw nsw i64 %polly.indvar361, %116
  %118 = mul nuw nsw i64 %117, 480
  %119 = mul nuw nsw i64 %117, 640
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_exit372
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1
  %exitcond771.not = icmp eq i64 %polly.indvar_next362, 16
  br i1 %exitcond771.not, label %polly.loop_header358.1, label %polly.loop_header358

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header358
  %polly.indvar367 = phi i64 [ 0, %polly.loop_header358 ], [ %polly.indvar_next368, %polly.loop_exit372 ]
  %120 = shl i64 %polly.indvar367, 3
  %121 = add nuw nsw i64 %120, %118
  %scevgep379 = getelementptr i8, i8* %call2, i64 %121
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !72, !noalias !75
  %scevgep385 = getelementptr i8, i8* %call1, i64 %121
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_header370
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond770.not = icmp eq i64 %polly.indvar_next368, 16
  br i1 %exitcond770.not, label %polly.loop_exit366, label %polly.loop_header364

polly.loop_header370:                             ; preds = %polly.loop_header370, %polly.loop_header364
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header364 ], [ %polly.indvar_next374, %polly.loop_header370 ]
  %122 = mul nuw nsw i64 %polly.indvar373, 480
  %123 = add nuw nsw i64 %122, %120
  %scevgep376 = getelementptr i8, i8* %call1, i64 %123
  %scevgep376377 = bitcast i8* %scevgep376 to double*
  %_p_scalar_378 = load double, double* %scevgep376377, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73 = fmul fast double %_p_scalar_381, %_p_scalar_378
  %scevgep382 = getelementptr i8, i8* %call2, i64 %123
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75 = fmul fast double %_p_scalar_387, %_p_scalar_384
  %124 = shl nuw nsw i64 %polly.indvar373, 3
  %125 = add nuw nsw i64 %124, %119
  %scevgep388 = getelementptr i8, i8* %call, i64 %125
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_390
  store double %p_add42.i79, double* %scevgep388389, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond766.not = icmp eq i64 %polly.indvar_next374, %indvars.iv764
  br i1 %exitcond766.not, label %polly.loop_exit372, label %polly.loop_header370

polly.loop_header477:                             ; preds = %init_array.exit, %polly.loop_exit485
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit485 ], [ 0, %init_array.exit ]
  %polly.indvar480 = phi i64 [ %polly.indvar_next481, %polly.loop_exit485 ], [ 1, %init_array.exit ]
  %126 = add i64 %indvar, 1
  %127 = mul nuw nsw i64 %polly.indvar480, 640
  %scevgep489 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1177 = icmp ult i64 %126, 4
  br i1 %min.iters.check1177, label %polly.loop_header483.preheader, label %vector.ph1178

vector.ph1178:                                    ; preds = %polly.loop_header477
  %n.vec1180 = and i64 %126, -4
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1178
  %index1181 = phi i64 [ 0, %vector.ph1178 ], [ %index.next1182, %vector.body1176 ]
  %128 = shl nuw nsw i64 %index1181, 3
  %129 = getelementptr i8, i8* %scevgep489, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1185 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !77, !noalias !79
  %131 = fmul fast <4 x double> %wide.load1185, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !77, !noalias !79
  %index.next1182 = add i64 %index1181, 4
  %133 = icmp eq i64 %index.next1182, %n.vec1180
  br i1 %133, label %middle.block1174, label %vector.body1176, !llvm.loop !82

middle.block1174:                                 ; preds = %vector.body1176
  %cmp.n1184 = icmp eq i64 %126, %n.vec1180
  br i1 %cmp.n1184, label %polly.loop_exit485, label %polly.loop_header483.preheader

polly.loop_header483.preheader:                   ; preds = %polly.loop_header477, %middle.block1174
  %polly.indvar486.ph = phi i64 [ 0, %polly.loop_header477 ], [ %n.vec1180, %middle.block1174 ]
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483, %middle.block1174
  %polly.indvar_next481 = add nuw nsw i64 %polly.indvar480, 1
  %exitcond789.not = icmp eq i64 %polly.indvar_next481, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond789.not, label %polly.loop_header493, label %polly.loop_header477

polly.loop_header483:                             ; preds = %polly.loop_header483.preheader, %polly.loop_header483
  %polly.indvar486 = phi i64 [ %polly.indvar_next487, %polly.loop_header483 ], [ %polly.indvar486.ph, %polly.loop_header483.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar486, 3
  %scevgep490 = getelementptr i8, i8* %scevgep489, i64 %134
  %scevgep490491 = bitcast i8* %scevgep490 to double*
  %_p_scalar_492 = load double, double* %scevgep490491, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_492, 1.200000e+00
  store double %p_mul.i, double* %scevgep490491, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next487, %polly.indvar480
  br i1 %exitcond788.not, label %polly.loop_exit485, label %polly.loop_header483, !llvm.loop !83

polly.loop_header493:                             ; preds = %polly.loop_exit485, %polly.loop_exit507.3
  %indvars.iv776 = phi i64 [ %indvars.iv.next777, %polly.loop_exit507.3 ], [ 1, %polly.loop_exit485 ]
  %polly.indvar496 = phi i64 [ %polly.indvar_next497, %polly.loop_exit507.3 ], [ 0, %polly.loop_exit485 ]
  %135 = shl nsw i64 %polly.indvar496, 4
  br label %polly.loop_header505

polly.loop_header505:                             ; preds = %polly.loop_exit513, %polly.loop_header493
  %indvars.iv778 = phi i64 [ %indvars.iv.next779, %polly.loop_exit513 ], [ %indvars.iv776, %polly.loop_header493 ]
  %polly.indvar508 = phi i64 [ %polly.indvar_next509, %polly.loop_exit513 ], [ 0, %polly.loop_header493 ]
  %136 = add nuw nsw i64 %polly.indvar508, %135
  %137 = mul nuw nsw i64 %136, 480
  %138 = mul nuw nsw i64 %136, 640
  br label %polly.loop_header511

polly.loop_exit513:                               ; preds = %polly.loop_exit519
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next509, 16
  br i1 %exitcond785.not, label %polly.loop_header505.1, label %polly.loop_header505

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.loop_header505
  %polly.indvar514 = phi i64 [ 0, %polly.loop_header505 ], [ %polly.indvar_next515, %polly.loop_exit519 ]
  %139 = shl i64 %polly.indvar514, 3
  %140 = add nuw nsw i64 %139, %137
  %scevgep526 = getelementptr i8, i8* %call2, i64 %140
  %scevgep526527 = bitcast i8* %scevgep526 to double*
  %_p_scalar_528 = load double, double* %scevgep526527, align 8, !alias.scope !81, !noalias !84
  %scevgep532 = getelementptr i8, i8* %call1, i64 %140
  %scevgep532533 = bitcast i8* %scevgep532 to double*
  %_p_scalar_534 = load double, double* %scevgep532533, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_header517
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %exitcond784.not = icmp eq i64 %polly.indvar_next515, 16
  br i1 %exitcond784.not, label %polly.loop_exit513, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_header517, %polly.loop_header511
  %polly.indvar520 = phi i64 [ 0, %polly.loop_header511 ], [ %polly.indvar_next521, %polly.loop_header517 ]
  %141 = mul nuw nsw i64 %polly.indvar520, 480
  %142 = add nuw nsw i64 %141, %139
  %scevgep523 = getelementptr i8, i8* %call1, i64 %142
  %scevgep523524 = bitcast i8* %scevgep523 to double*
  %_p_scalar_525 = load double, double* %scevgep523524, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i = fmul fast double %_p_scalar_528, %_p_scalar_525
  %scevgep529 = getelementptr i8, i8* %call2, i64 %142
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i = fmul fast double %_p_scalar_534, %_p_scalar_531
  %143 = shl nuw nsw i64 %polly.indvar520, 3
  %144 = add nuw nsw i64 %143, %138
  %scevgep535 = getelementptr i8, i8* %call, i64 %144
  %scevgep535536 = bitcast i8* %scevgep535 to double*
  %_p_scalar_537 = load double, double* %scevgep535536, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_537
  store double %p_add42.i, double* %scevgep535536, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next521, %indvars.iv778
  br i1 %exitcond780.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header676:                             ; preds = %entry, %polly.loop_exit684
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_exit684 ], [ 0, %entry ]
  %145 = mul nuw nsw i64 %polly.indvar679, 640
  %146 = trunc i64 %polly.indvar679 to i32
  %broadcast.splatinsert908 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat909 = shufflevector <4 x i32> %broadcast.splatinsert908, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body898

vector.body898:                                   ; preds = %vector.body898, %polly.loop_header676
  %index900 = phi i64 [ 0, %polly.loop_header676 ], [ %index.next901, %vector.body898 ]
  %vec.ind906 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676 ], [ %vec.ind.next907, %vector.body898 ]
  %147 = mul <4 x i32> %vec.ind906, %broadcast.splat909
  %148 = add <4 x i32> %147, <i32 3, i32 3, i32 3, i32 3>
  %149 = urem <4 x i32> %148, <i32 80, i32 80, i32 80, i32 80>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index900, 3
  %153 = add nuw nsw i64 %152, %145
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !86, !noalias !88
  %index.next901 = add i64 %index900, 4
  %vec.ind.next907 = add <4 x i32> %vec.ind906, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next901, 32
  br i1 %156, label %polly.loop_exit684, label %vector.body898, !llvm.loop !91

polly.loop_exit684:                               ; preds = %vector.body898
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next680, 32
  br i1 %exitcond809.not, label %polly.loop_header676.1, label %polly.loop_header676

polly.loop_header703:                             ; preds = %polly.loop_exit684.2.2, %polly.loop_exit711
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit711 ], [ 0, %polly.loop_exit684.2.2 ]
  %157 = mul nuw nsw i64 %polly.indvar706, 480
  %158 = trunc i64 %polly.indvar706 to i32
  %broadcast.splatinsert1022 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1023 = shufflevector <4 x i32> %broadcast.splatinsert1022, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %polly.loop_header703
  %index1014 = phi i64 [ 0, %polly.loop_header703 ], [ %index.next1015, %vector.body1012 ]
  %vec.ind1020 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703 ], [ %vec.ind.next1021, %vector.body1012 ]
  %159 = mul <4 x i32> %vec.ind1020, %broadcast.splat1023
  %160 = add <4 x i32> %159, <i32 2, i32 2, i32 2, i32 2>
  %161 = urem <4 x i32> %160, <i32 60, i32 60, i32 60, i32 60>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %164 = shl i64 %index1014, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call2, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !90, !noalias !92
  %index.next1015 = add i64 %index1014, 4
  %vec.ind.next1021 = add <4 x i32> %vec.ind1020, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1015, 32
  br i1 %168, label %polly.loop_exit711, label %vector.body1012, !llvm.loop !93

polly.loop_exit711:                               ; preds = %vector.body1012
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next707, 32
  br i1 %exitcond800.not, label %polly.loop_header703.1, label %polly.loop_header703

polly.loop_header729:                             ; preds = %polly.loop_exit711.1.2, %polly.loop_exit737
  %polly.indvar732 = phi i64 [ %polly.indvar_next733, %polly.loop_exit737 ], [ 0, %polly.loop_exit711.1.2 ]
  %169 = mul nuw nsw i64 %polly.indvar732, 480
  %170 = trunc i64 %polly.indvar732 to i32
  %broadcast.splatinsert1100 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1101 = shufflevector <4 x i32> %broadcast.splatinsert1100, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1090

vector.body1090:                                  ; preds = %vector.body1090, %polly.loop_header729
  %index1092 = phi i64 [ 0, %polly.loop_header729 ], [ %index.next1093, %vector.body1090 ]
  %vec.ind1098 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729 ], [ %vec.ind.next1099, %vector.body1090 ]
  %171 = mul <4 x i32> %vec.ind1098, %broadcast.splat1101
  %172 = add <4 x i32> %171, <i32 1, i32 1, i32 1, i32 1>
  %173 = urem <4 x i32> %172, <i32 80, i32 80, i32 80, i32 80>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %176 = shl i64 %index1092, 3
  %177 = add i64 %176, %169
  %178 = getelementptr i8, i8* %call1, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !89, !noalias !94
  %index.next1093 = add i64 %index1092, 4
  %vec.ind.next1099 = add <4 x i32> %vec.ind1098, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1093, 32
  br i1 %180, label %polly.loop_exit737, label %vector.body1090, !llvm.loop !95

polly.loop_exit737:                               ; preds = %vector.body1090
  %polly.indvar_next733 = add nuw nsw i64 %polly.indvar732, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next733, 32
  br i1 %exitcond794.not, label %polly.loop_header729.1, label %polly.loop_header729

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv752.1 = phi i64 [ %indvars.iv.next753.1, %polly.loop_exit219.1 ], [ %indvars.iv, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %181 = add nuw nsw i64 %polly.indvar214.1, %97
  %182 = mul nuw nsw i64 %181, 480
  %183 = mul nuw nsw i64 %181, 640
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_exit225.1 ]
  %184 = shl i64 %polly.indvar220.1, 3
  %185 = add i64 %184, 128
  %186 = add nuw nsw i64 %185, %182
  %scevgep232.1 = getelementptr i8, i8* %call2, i64 %186
  %scevgep232233.1 = bitcast i8* %scevgep232.1 to double*
  %_p_scalar_234.1 = load double, double* %scevgep232233.1, align 8, !alias.scope !62, !noalias !66
  %scevgep238.1 = getelementptr i8, i8* %call1, i64 %186
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %187 = mul nuw nsw i64 %polly.indvar226.1, 480
  %188 = add nuw nsw i64 %187, %185
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %188
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.1 = fmul fast double %_p_scalar_234.1, %_p_scalar_231.1
  %scevgep235.1 = getelementptr i8, i8* %call2, i64 %188
  %scevgep235236.1 = bitcast i8* %scevgep235.1 to double*
  %_p_scalar_237.1 = load double, double* %scevgep235236.1, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.1 = fmul fast double %_p_scalar_240.1, %_p_scalar_237.1
  %189 = shl nuw nsw i64 %polly.indvar226.1, 3
  %190 = add nuw nsw i64 %189, %183
  %scevgep241.1 = getelementptr i8, i8* %call, i64 %190
  %scevgep241242.1 = bitcast i8* %scevgep241.1 to double*
  %_p_scalar_243.1 = load double, double* %scevgep241242.1, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_243.1
  store double %p_add42.i118.1, double* %scevgep241242.1, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next227.1, %indvars.iv752.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond756.1.not = icmp eq i64 %polly.indvar_next221.1, 16
  br i1 %exitcond756.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next753.1 = add nuw nsw i64 %indvars.iv752.1, 1
  %exitcond757.1.not = icmp eq i64 %polly.indvar_next215.1, 16
  br i1 %exitcond757.1.not, label %polly.loop_header211.2, label %polly.loop_header211.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit219.2
  %indvars.iv752.2 = phi i64 [ %indvars.iv.next753.2, %polly.loop_exit219.2 ], [ %indvars.iv, %polly.loop_exit219.1 ]
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit219.1 ]
  %191 = add nuw nsw i64 %polly.indvar214.2, %97
  %192 = mul nuw nsw i64 %191, 480
  %193 = mul nuw nsw i64 %191, 640
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_exit225.2 ]
  %194 = shl i64 %polly.indvar220.2, 3
  %195 = add i64 %194, 256
  %196 = add nuw nsw i64 %195, %192
  %scevgep232.2 = getelementptr i8, i8* %call2, i64 %196
  %scevgep232233.2 = bitcast i8* %scevgep232.2 to double*
  %_p_scalar_234.2 = load double, double* %scevgep232233.2, align 8, !alias.scope !62, !noalias !66
  %scevgep238.2 = getelementptr i8, i8* %call1, i64 %196
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_header217.2
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_header217.2 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %197 = mul nuw nsw i64 %polly.indvar226.2, 480
  %198 = add nuw nsw i64 %197, %195
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %198
  %scevgep229230.2 = bitcast i8* %scevgep229.2 to double*
  %_p_scalar_231.2 = load double, double* %scevgep229230.2, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.2 = fmul fast double %_p_scalar_234.2, %_p_scalar_231.2
  %scevgep235.2 = getelementptr i8, i8* %call2, i64 %198
  %scevgep235236.2 = bitcast i8* %scevgep235.2 to double*
  %_p_scalar_237.2 = load double, double* %scevgep235236.2, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.2 = fmul fast double %_p_scalar_240.2, %_p_scalar_237.2
  %199 = shl nuw nsw i64 %polly.indvar226.2, 3
  %200 = add nuw nsw i64 %199, %193
  %scevgep241.2 = getelementptr i8, i8* %call, i64 %200
  %scevgep241242.2 = bitcast i8* %scevgep241.2 to double*
  %_p_scalar_243.2 = load double, double* %scevgep241242.2, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_243.2
  store double %p_add42.i118.2, double* %scevgep241242.2, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next227.2, %indvars.iv752.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond756.2.not = icmp eq i64 %polly.indvar_next221.2, 16
  br i1 %exitcond756.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %indvars.iv.next753.2 = add nuw nsw i64 %indvars.iv752.2, 1
  %exitcond757.2.not = icmp eq i64 %polly.indvar_next215.2, 16
  br i1 %exitcond757.2.not, label %polly.loop_header211.3, label %polly.loop_header211.2

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.2, %polly.loop_exit219.3
  %indvars.iv752.3 = phi i64 [ %indvars.iv.next753.3, %polly.loop_exit219.3 ], [ %indvars.iv, %polly.loop_exit219.2 ]
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit219.3 ], [ 0, %polly.loop_exit219.2 ]
  %201 = add nuw nsw i64 %polly.indvar214.3, %97
  %202 = mul nuw nsw i64 %201, 480
  %203 = mul nuw nsw i64 %201, 640
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_exit225.3, %polly.loop_header211.3
  %polly.indvar220.3 = phi i64 [ 0, %polly.loop_header211.3 ], [ %polly.indvar_next221.3, %polly.loop_exit225.3 ]
  %204 = shl i64 %polly.indvar220.3, 3
  %205 = add i64 %204, 384
  %206 = add nuw nsw i64 %205, %202
  %scevgep232.3 = getelementptr i8, i8* %call2, i64 %206
  %scevgep232233.3 = bitcast i8* %scevgep232.3 to double*
  %_p_scalar_234.3 = load double, double* %scevgep232233.3, align 8, !alias.scope !62, !noalias !66
  %scevgep238.3 = getelementptr i8, i8* %call1, i64 %206
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_header217.3
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_header217.3 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %207 = mul nuw nsw i64 %polly.indvar226.3, 480
  %208 = add nuw nsw i64 %207, %205
  %scevgep229.3 = getelementptr i8, i8* %call1, i64 %208
  %scevgep229230.3 = bitcast i8* %scevgep229.3 to double*
  %_p_scalar_231.3 = load double, double* %scevgep229230.3, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.3 = fmul fast double %_p_scalar_234.3, %_p_scalar_231.3
  %scevgep235.3 = getelementptr i8, i8* %call2, i64 %208
  %scevgep235236.3 = bitcast i8* %scevgep235.3 to double*
  %_p_scalar_237.3 = load double, double* %scevgep235236.3, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.3 = fmul fast double %_p_scalar_240.3, %_p_scalar_237.3
  %209 = shl nuw nsw i64 %polly.indvar226.3, 3
  %210 = add nuw nsw i64 %209, %203
  %scevgep241.3 = getelementptr i8, i8* %call, i64 %210
  %scevgep241242.3 = bitcast i8* %scevgep241.3 to double*
  %_p_scalar_243.3 = load double, double* %scevgep241242.3, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_243.3
  store double %p_add42.i118.3, double* %scevgep241242.3, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next227.3, %indvars.iv752.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond756.3.not = icmp eq i64 %polly.indvar_next221.3, 12
  br i1 %exitcond756.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %indvars.iv.next753.3 = add nuw nsw i64 %indvars.iv752.3, 1
  %exitcond757.3.not = icmp eq i64 %polly.indvar_next215.3, 16
  br i1 %exitcond757.3.not, label %polly.loop_exit213.3, label %polly.loop_header211.3

polly.loop_exit213.3:                             ; preds = %polly.loop_exit219.3
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %exitcond759.not = icmp eq i64 %polly.indvar_next203, 5
  br i1 %exitcond759.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header358.1:                           ; preds = %polly.loop_exit366, %polly.loop_exit366.1
  %indvars.iv764.1 = phi i64 [ %indvars.iv.next765.1, %polly.loop_exit366.1 ], [ %indvars.iv762, %polly.loop_exit366 ]
  %polly.indvar361.1 = phi i64 [ %polly.indvar_next362.1, %polly.loop_exit366.1 ], [ 0, %polly.loop_exit366 ]
  %211 = add nuw nsw i64 %polly.indvar361.1, %116
  %212 = mul nuw nsw i64 %211, 480
  %213 = mul nuw nsw i64 %211, 640
  br label %polly.loop_header364.1

polly.loop_header364.1:                           ; preds = %polly.loop_exit372.1, %polly.loop_header358.1
  %polly.indvar367.1 = phi i64 [ 0, %polly.loop_header358.1 ], [ %polly.indvar_next368.1, %polly.loop_exit372.1 ]
  %214 = shl i64 %polly.indvar367.1, 3
  %215 = add i64 %214, 128
  %216 = add nuw nsw i64 %215, %212
  %scevgep379.1 = getelementptr i8, i8* %call2, i64 %216
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !72, !noalias !75
  %scevgep385.1 = getelementptr i8, i8* %call1, i64 %216
  %scevgep385386.1 = bitcast i8* %scevgep385.1 to double*
  %_p_scalar_387.1 = load double, double* %scevgep385386.1, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header370.1

polly.loop_header370.1:                           ; preds = %polly.loop_header370.1, %polly.loop_header364.1
  %polly.indvar373.1 = phi i64 [ 0, %polly.loop_header364.1 ], [ %polly.indvar_next374.1, %polly.loop_header370.1 ]
  %217 = mul nuw nsw i64 %polly.indvar373.1, 480
  %218 = add nuw nsw i64 %217, %215
  %scevgep376.1 = getelementptr i8, i8* %call1, i64 %218
  %scevgep376377.1 = bitcast i8* %scevgep376.1 to double*
  %_p_scalar_378.1 = load double, double* %scevgep376377.1, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.1 = fmul fast double %_p_scalar_381.1, %_p_scalar_378.1
  %scevgep382.1 = getelementptr i8, i8* %call2, i64 %218
  %scevgep382383.1 = bitcast i8* %scevgep382.1 to double*
  %_p_scalar_384.1 = load double, double* %scevgep382383.1, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.1 = fmul fast double %_p_scalar_387.1, %_p_scalar_384.1
  %219 = shl nuw nsw i64 %polly.indvar373.1, 3
  %220 = add nuw nsw i64 %219, %213
  %scevgep388.1 = getelementptr i8, i8* %call, i64 %220
  %scevgep388389.1 = bitcast i8* %scevgep388.1 to double*
  %_p_scalar_390.1 = load double, double* %scevgep388389.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_390.1
  store double %p_add42.i79.1, double* %scevgep388389.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next374.1 = add nuw nsw i64 %polly.indvar373.1, 1
  %exitcond766.1.not = icmp eq i64 %polly.indvar_next374.1, %indvars.iv764.1
  br i1 %exitcond766.1.not, label %polly.loop_exit372.1, label %polly.loop_header370.1

polly.loop_exit372.1:                             ; preds = %polly.loop_header370.1
  %polly.indvar_next368.1 = add nuw nsw i64 %polly.indvar367.1, 1
  %exitcond770.1.not = icmp eq i64 %polly.indvar_next368.1, 16
  br i1 %exitcond770.1.not, label %polly.loop_exit366.1, label %polly.loop_header364.1

polly.loop_exit366.1:                             ; preds = %polly.loop_exit372.1
  %polly.indvar_next362.1 = add nuw nsw i64 %polly.indvar361.1, 1
  %indvars.iv.next765.1 = add nuw nsw i64 %indvars.iv764.1, 1
  %exitcond771.1.not = icmp eq i64 %polly.indvar_next362.1, 16
  br i1 %exitcond771.1.not, label %polly.loop_header358.2, label %polly.loop_header358.1

polly.loop_header358.2:                           ; preds = %polly.loop_exit366.1, %polly.loop_exit366.2
  %indvars.iv764.2 = phi i64 [ %indvars.iv.next765.2, %polly.loop_exit366.2 ], [ %indvars.iv762, %polly.loop_exit366.1 ]
  %polly.indvar361.2 = phi i64 [ %polly.indvar_next362.2, %polly.loop_exit366.2 ], [ 0, %polly.loop_exit366.1 ]
  %221 = add nuw nsw i64 %polly.indvar361.2, %116
  %222 = mul nuw nsw i64 %221, 480
  %223 = mul nuw nsw i64 %221, 640
  br label %polly.loop_header364.2

polly.loop_header364.2:                           ; preds = %polly.loop_exit372.2, %polly.loop_header358.2
  %polly.indvar367.2 = phi i64 [ 0, %polly.loop_header358.2 ], [ %polly.indvar_next368.2, %polly.loop_exit372.2 ]
  %224 = shl i64 %polly.indvar367.2, 3
  %225 = add i64 %224, 256
  %226 = add nuw nsw i64 %225, %222
  %scevgep379.2 = getelementptr i8, i8* %call2, i64 %226
  %scevgep379380.2 = bitcast i8* %scevgep379.2 to double*
  %_p_scalar_381.2 = load double, double* %scevgep379380.2, align 8, !alias.scope !72, !noalias !75
  %scevgep385.2 = getelementptr i8, i8* %call1, i64 %226
  %scevgep385386.2 = bitcast i8* %scevgep385.2 to double*
  %_p_scalar_387.2 = load double, double* %scevgep385386.2, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header370.2

polly.loop_header370.2:                           ; preds = %polly.loop_header370.2, %polly.loop_header364.2
  %polly.indvar373.2 = phi i64 [ 0, %polly.loop_header364.2 ], [ %polly.indvar_next374.2, %polly.loop_header370.2 ]
  %227 = mul nuw nsw i64 %polly.indvar373.2, 480
  %228 = add nuw nsw i64 %227, %225
  %scevgep376.2 = getelementptr i8, i8* %call1, i64 %228
  %scevgep376377.2 = bitcast i8* %scevgep376.2 to double*
  %_p_scalar_378.2 = load double, double* %scevgep376377.2, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.2 = fmul fast double %_p_scalar_381.2, %_p_scalar_378.2
  %scevgep382.2 = getelementptr i8, i8* %call2, i64 %228
  %scevgep382383.2 = bitcast i8* %scevgep382.2 to double*
  %_p_scalar_384.2 = load double, double* %scevgep382383.2, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.2 = fmul fast double %_p_scalar_387.2, %_p_scalar_384.2
  %229 = shl nuw nsw i64 %polly.indvar373.2, 3
  %230 = add nuw nsw i64 %229, %223
  %scevgep388.2 = getelementptr i8, i8* %call, i64 %230
  %scevgep388389.2 = bitcast i8* %scevgep388.2 to double*
  %_p_scalar_390.2 = load double, double* %scevgep388389.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_390.2
  store double %p_add42.i79.2, double* %scevgep388389.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next374.2 = add nuw nsw i64 %polly.indvar373.2, 1
  %exitcond766.2.not = icmp eq i64 %polly.indvar_next374.2, %indvars.iv764.2
  br i1 %exitcond766.2.not, label %polly.loop_exit372.2, label %polly.loop_header370.2

polly.loop_exit372.2:                             ; preds = %polly.loop_header370.2
  %polly.indvar_next368.2 = add nuw nsw i64 %polly.indvar367.2, 1
  %exitcond770.2.not = icmp eq i64 %polly.indvar_next368.2, 16
  br i1 %exitcond770.2.not, label %polly.loop_exit366.2, label %polly.loop_header364.2

polly.loop_exit366.2:                             ; preds = %polly.loop_exit372.2
  %polly.indvar_next362.2 = add nuw nsw i64 %polly.indvar361.2, 1
  %indvars.iv.next765.2 = add nuw nsw i64 %indvars.iv764.2, 1
  %exitcond771.2.not = icmp eq i64 %polly.indvar_next362.2, 16
  br i1 %exitcond771.2.not, label %polly.loop_header358.3, label %polly.loop_header358.2

polly.loop_header358.3:                           ; preds = %polly.loop_exit366.2, %polly.loop_exit366.3
  %indvars.iv764.3 = phi i64 [ %indvars.iv.next765.3, %polly.loop_exit366.3 ], [ %indvars.iv762, %polly.loop_exit366.2 ]
  %polly.indvar361.3 = phi i64 [ %polly.indvar_next362.3, %polly.loop_exit366.3 ], [ 0, %polly.loop_exit366.2 ]
  %231 = add nuw nsw i64 %polly.indvar361.3, %116
  %232 = mul nuw nsw i64 %231, 480
  %233 = mul nuw nsw i64 %231, 640
  br label %polly.loop_header364.3

polly.loop_header364.3:                           ; preds = %polly.loop_exit372.3, %polly.loop_header358.3
  %polly.indvar367.3 = phi i64 [ 0, %polly.loop_header358.3 ], [ %polly.indvar_next368.3, %polly.loop_exit372.3 ]
  %234 = shl i64 %polly.indvar367.3, 3
  %235 = add i64 %234, 384
  %236 = add nuw nsw i64 %235, %232
  %scevgep379.3 = getelementptr i8, i8* %call2, i64 %236
  %scevgep379380.3 = bitcast i8* %scevgep379.3 to double*
  %_p_scalar_381.3 = load double, double* %scevgep379380.3, align 8, !alias.scope !72, !noalias !75
  %scevgep385.3 = getelementptr i8, i8* %call1, i64 %236
  %scevgep385386.3 = bitcast i8* %scevgep385.3 to double*
  %_p_scalar_387.3 = load double, double* %scevgep385386.3, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header370.3

polly.loop_header370.3:                           ; preds = %polly.loop_header370.3, %polly.loop_header364.3
  %polly.indvar373.3 = phi i64 [ 0, %polly.loop_header364.3 ], [ %polly.indvar_next374.3, %polly.loop_header370.3 ]
  %237 = mul nuw nsw i64 %polly.indvar373.3, 480
  %238 = add nuw nsw i64 %237, %235
  %scevgep376.3 = getelementptr i8, i8* %call1, i64 %238
  %scevgep376377.3 = bitcast i8* %scevgep376.3 to double*
  %_p_scalar_378.3 = load double, double* %scevgep376377.3, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.3 = fmul fast double %_p_scalar_381.3, %_p_scalar_378.3
  %scevgep382.3 = getelementptr i8, i8* %call2, i64 %238
  %scevgep382383.3 = bitcast i8* %scevgep382.3 to double*
  %_p_scalar_384.3 = load double, double* %scevgep382383.3, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.3 = fmul fast double %_p_scalar_387.3, %_p_scalar_384.3
  %239 = shl nuw nsw i64 %polly.indvar373.3, 3
  %240 = add nuw nsw i64 %239, %233
  %scevgep388.3 = getelementptr i8, i8* %call, i64 %240
  %scevgep388389.3 = bitcast i8* %scevgep388.3 to double*
  %_p_scalar_390.3 = load double, double* %scevgep388389.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_390.3
  store double %p_add42.i79.3, double* %scevgep388389.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next374.3 = add nuw nsw i64 %polly.indvar373.3, 1
  %exitcond766.3.not = icmp eq i64 %polly.indvar_next374.3, %indvars.iv764.3
  br i1 %exitcond766.3.not, label %polly.loop_exit372.3, label %polly.loop_header370.3

polly.loop_exit372.3:                             ; preds = %polly.loop_header370.3
  %polly.indvar_next368.3 = add nuw nsw i64 %polly.indvar367.3, 1
  %exitcond770.3.not = icmp eq i64 %polly.indvar_next368.3, 12
  br i1 %exitcond770.3.not, label %polly.loop_exit366.3, label %polly.loop_header364.3

polly.loop_exit366.3:                             ; preds = %polly.loop_exit372.3
  %polly.indvar_next362.3 = add nuw nsw i64 %polly.indvar361.3, 1
  %indvars.iv.next765.3 = add nuw nsw i64 %indvars.iv764.3, 1
  %exitcond771.3.not = icmp eq i64 %polly.indvar_next362.3, 16
  br i1 %exitcond771.3.not, label %polly.loop_exit360.3, label %polly.loop_header358.3

polly.loop_exit360.3:                             ; preds = %polly.loop_exit366.3
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 16
  %exitcond773.not = icmp eq i64 %polly.indvar_next350, 5
  br i1 %exitcond773.not, label %kernel_syr2k.exit90, label %polly.loop_header346

polly.loop_header505.1:                           ; preds = %polly.loop_exit513, %polly.loop_exit513.1
  %indvars.iv778.1 = phi i64 [ %indvars.iv.next779.1, %polly.loop_exit513.1 ], [ %indvars.iv776, %polly.loop_exit513 ]
  %polly.indvar508.1 = phi i64 [ %polly.indvar_next509.1, %polly.loop_exit513.1 ], [ 0, %polly.loop_exit513 ]
  %241 = add nuw nsw i64 %polly.indvar508.1, %135
  %242 = mul nuw nsw i64 %241, 480
  %243 = mul nuw nsw i64 %241, 640
  br label %polly.loop_header511.1

polly.loop_header511.1:                           ; preds = %polly.loop_exit519.1, %polly.loop_header505.1
  %polly.indvar514.1 = phi i64 [ 0, %polly.loop_header505.1 ], [ %polly.indvar_next515.1, %polly.loop_exit519.1 ]
  %244 = shl i64 %polly.indvar514.1, 3
  %245 = add i64 %244, 128
  %246 = add nuw nsw i64 %245, %242
  %scevgep526.1 = getelementptr i8, i8* %call2, i64 %246
  %scevgep526527.1 = bitcast i8* %scevgep526.1 to double*
  %_p_scalar_528.1 = load double, double* %scevgep526527.1, align 8, !alias.scope !81, !noalias !84
  %scevgep532.1 = getelementptr i8, i8* %call1, i64 %246
  %scevgep532533.1 = bitcast i8* %scevgep532.1 to double*
  %_p_scalar_534.1 = load double, double* %scevgep532533.1, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header517.1

polly.loop_header517.1:                           ; preds = %polly.loop_header517.1, %polly.loop_header511.1
  %polly.indvar520.1 = phi i64 [ 0, %polly.loop_header511.1 ], [ %polly.indvar_next521.1, %polly.loop_header517.1 ]
  %247 = mul nuw nsw i64 %polly.indvar520.1, 480
  %248 = add nuw nsw i64 %247, %245
  %scevgep523.1 = getelementptr i8, i8* %call1, i64 %248
  %scevgep523524.1 = bitcast i8* %scevgep523.1 to double*
  %_p_scalar_525.1 = load double, double* %scevgep523524.1, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.1 = fmul fast double %_p_scalar_528.1, %_p_scalar_525.1
  %scevgep529.1 = getelementptr i8, i8* %call2, i64 %248
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.1 = fmul fast double %_p_scalar_534.1, %_p_scalar_531.1
  %249 = shl nuw nsw i64 %polly.indvar520.1, 3
  %250 = add nuw nsw i64 %249, %243
  %scevgep535.1 = getelementptr i8, i8* %call, i64 %250
  %scevgep535536.1 = bitcast i8* %scevgep535.1 to double*
  %_p_scalar_537.1 = load double, double* %scevgep535536.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_537.1
  store double %p_add42.i.1, double* %scevgep535536.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %exitcond780.1.not = icmp eq i64 %polly.indvar_next521.1, %indvars.iv778.1
  br i1 %exitcond780.1.not, label %polly.loop_exit519.1, label %polly.loop_header517.1

polly.loop_exit519.1:                             ; preds = %polly.loop_header517.1
  %polly.indvar_next515.1 = add nuw nsw i64 %polly.indvar514.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar_next515.1, 16
  br i1 %exitcond784.1.not, label %polly.loop_exit513.1, label %polly.loop_header511.1

polly.loop_exit513.1:                             ; preds = %polly.loop_exit519.1
  %polly.indvar_next509.1 = add nuw nsw i64 %polly.indvar508.1, 1
  %indvars.iv.next779.1 = add nuw nsw i64 %indvars.iv778.1, 1
  %exitcond785.1.not = icmp eq i64 %polly.indvar_next509.1, 16
  br i1 %exitcond785.1.not, label %polly.loop_header505.2, label %polly.loop_header505.1

polly.loop_header505.2:                           ; preds = %polly.loop_exit513.1, %polly.loop_exit513.2
  %indvars.iv778.2 = phi i64 [ %indvars.iv.next779.2, %polly.loop_exit513.2 ], [ %indvars.iv776, %polly.loop_exit513.1 ]
  %polly.indvar508.2 = phi i64 [ %polly.indvar_next509.2, %polly.loop_exit513.2 ], [ 0, %polly.loop_exit513.1 ]
  %251 = add nuw nsw i64 %polly.indvar508.2, %135
  %252 = mul nuw nsw i64 %251, 480
  %253 = mul nuw nsw i64 %251, 640
  br label %polly.loop_header511.2

polly.loop_header511.2:                           ; preds = %polly.loop_exit519.2, %polly.loop_header505.2
  %polly.indvar514.2 = phi i64 [ 0, %polly.loop_header505.2 ], [ %polly.indvar_next515.2, %polly.loop_exit519.2 ]
  %254 = shl i64 %polly.indvar514.2, 3
  %255 = add i64 %254, 256
  %256 = add nuw nsw i64 %255, %252
  %scevgep526.2 = getelementptr i8, i8* %call2, i64 %256
  %scevgep526527.2 = bitcast i8* %scevgep526.2 to double*
  %_p_scalar_528.2 = load double, double* %scevgep526527.2, align 8, !alias.scope !81, !noalias !84
  %scevgep532.2 = getelementptr i8, i8* %call1, i64 %256
  %scevgep532533.2 = bitcast i8* %scevgep532.2 to double*
  %_p_scalar_534.2 = load double, double* %scevgep532533.2, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header517.2

polly.loop_header517.2:                           ; preds = %polly.loop_header517.2, %polly.loop_header511.2
  %polly.indvar520.2 = phi i64 [ 0, %polly.loop_header511.2 ], [ %polly.indvar_next521.2, %polly.loop_header517.2 ]
  %257 = mul nuw nsw i64 %polly.indvar520.2, 480
  %258 = add nuw nsw i64 %257, %255
  %scevgep523.2 = getelementptr i8, i8* %call1, i64 %258
  %scevgep523524.2 = bitcast i8* %scevgep523.2 to double*
  %_p_scalar_525.2 = load double, double* %scevgep523524.2, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.2 = fmul fast double %_p_scalar_528.2, %_p_scalar_525.2
  %scevgep529.2 = getelementptr i8, i8* %call2, i64 %258
  %scevgep529530.2 = bitcast i8* %scevgep529.2 to double*
  %_p_scalar_531.2 = load double, double* %scevgep529530.2, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.2 = fmul fast double %_p_scalar_534.2, %_p_scalar_531.2
  %259 = shl nuw nsw i64 %polly.indvar520.2, 3
  %260 = add nuw nsw i64 %259, %253
  %scevgep535.2 = getelementptr i8, i8* %call, i64 %260
  %scevgep535536.2 = bitcast i8* %scevgep535.2 to double*
  %_p_scalar_537.2 = load double, double* %scevgep535536.2, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_537.2
  store double %p_add42.i.2, double* %scevgep535536.2, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next521.2 = add nuw nsw i64 %polly.indvar520.2, 1
  %exitcond780.2.not = icmp eq i64 %polly.indvar_next521.2, %indvars.iv778.2
  br i1 %exitcond780.2.not, label %polly.loop_exit519.2, label %polly.loop_header517.2

polly.loop_exit519.2:                             ; preds = %polly.loop_header517.2
  %polly.indvar_next515.2 = add nuw nsw i64 %polly.indvar514.2, 1
  %exitcond784.2.not = icmp eq i64 %polly.indvar_next515.2, 16
  br i1 %exitcond784.2.not, label %polly.loop_exit513.2, label %polly.loop_header511.2

polly.loop_exit513.2:                             ; preds = %polly.loop_exit519.2
  %polly.indvar_next509.2 = add nuw nsw i64 %polly.indvar508.2, 1
  %indvars.iv.next779.2 = add nuw nsw i64 %indvars.iv778.2, 1
  %exitcond785.2.not = icmp eq i64 %polly.indvar_next509.2, 16
  br i1 %exitcond785.2.not, label %polly.loop_header505.3, label %polly.loop_header505.2

polly.loop_header505.3:                           ; preds = %polly.loop_exit513.2, %polly.loop_exit513.3
  %indvars.iv778.3 = phi i64 [ %indvars.iv.next779.3, %polly.loop_exit513.3 ], [ %indvars.iv776, %polly.loop_exit513.2 ]
  %polly.indvar508.3 = phi i64 [ %polly.indvar_next509.3, %polly.loop_exit513.3 ], [ 0, %polly.loop_exit513.2 ]
  %261 = add nuw nsw i64 %polly.indvar508.3, %135
  %262 = mul nuw nsw i64 %261, 480
  %263 = mul nuw nsw i64 %261, 640
  br label %polly.loop_header511.3

polly.loop_header511.3:                           ; preds = %polly.loop_exit519.3, %polly.loop_header505.3
  %polly.indvar514.3 = phi i64 [ 0, %polly.loop_header505.3 ], [ %polly.indvar_next515.3, %polly.loop_exit519.3 ]
  %264 = shl i64 %polly.indvar514.3, 3
  %265 = add i64 %264, 384
  %266 = add nuw nsw i64 %265, %262
  %scevgep526.3 = getelementptr i8, i8* %call2, i64 %266
  %scevgep526527.3 = bitcast i8* %scevgep526.3 to double*
  %_p_scalar_528.3 = load double, double* %scevgep526527.3, align 8, !alias.scope !81, !noalias !84
  %scevgep532.3 = getelementptr i8, i8* %call1, i64 %266
  %scevgep532533.3 = bitcast i8* %scevgep532.3 to double*
  %_p_scalar_534.3 = load double, double* %scevgep532533.3, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header517.3

polly.loop_header517.3:                           ; preds = %polly.loop_header517.3, %polly.loop_header511.3
  %polly.indvar520.3 = phi i64 [ 0, %polly.loop_header511.3 ], [ %polly.indvar_next521.3, %polly.loop_header517.3 ]
  %267 = mul nuw nsw i64 %polly.indvar520.3, 480
  %268 = add nuw nsw i64 %267, %265
  %scevgep523.3 = getelementptr i8, i8* %call1, i64 %268
  %scevgep523524.3 = bitcast i8* %scevgep523.3 to double*
  %_p_scalar_525.3 = load double, double* %scevgep523524.3, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.3 = fmul fast double %_p_scalar_528.3, %_p_scalar_525.3
  %scevgep529.3 = getelementptr i8, i8* %call2, i64 %268
  %scevgep529530.3 = bitcast i8* %scevgep529.3 to double*
  %_p_scalar_531.3 = load double, double* %scevgep529530.3, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.3 = fmul fast double %_p_scalar_534.3, %_p_scalar_531.3
  %269 = shl nuw nsw i64 %polly.indvar520.3, 3
  %270 = add nuw nsw i64 %269, %263
  %scevgep535.3 = getelementptr i8, i8* %call, i64 %270
  %scevgep535536.3 = bitcast i8* %scevgep535.3 to double*
  %_p_scalar_537.3 = load double, double* %scevgep535536.3, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_537.3
  store double %p_add42.i.3, double* %scevgep535536.3, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next521.3 = add nuw nsw i64 %polly.indvar520.3, 1
  %exitcond780.3.not = icmp eq i64 %polly.indvar_next521.3, %indvars.iv778.3
  br i1 %exitcond780.3.not, label %polly.loop_exit519.3, label %polly.loop_header517.3

polly.loop_exit519.3:                             ; preds = %polly.loop_header517.3
  %polly.indvar_next515.3 = add nuw nsw i64 %polly.indvar514.3, 1
  %exitcond784.3.not = icmp eq i64 %polly.indvar_next515.3, 12
  br i1 %exitcond784.3.not, label %polly.loop_exit513.3, label %polly.loop_header511.3

polly.loop_exit513.3:                             ; preds = %polly.loop_exit519.3
  %polly.indvar_next509.3 = add nuw nsw i64 %polly.indvar508.3, 1
  %indvars.iv.next779.3 = add nuw nsw i64 %indvars.iv778.3, 1
  %exitcond785.3.not = icmp eq i64 %polly.indvar_next509.3, 16
  br i1 %exitcond785.3.not, label %polly.loop_exit507.3, label %polly.loop_header505.3

polly.loop_exit507.3:                             ; preds = %polly.loop_exit513.3
  %polly.indvar_next497 = add nuw nsw i64 %polly.indvar496, 1
  %indvars.iv.next777 = add nuw nsw i64 %indvars.iv776, 16
  %exitcond787.not = icmp eq i64 %polly.indvar_next497, 5
  br i1 %exitcond787.not, label %kernel_syr2k.exit, label %polly.loop_header493

polly.loop_header729.1:                           ; preds = %polly.loop_exit737, %polly.loop_exit737.1
  %polly.indvar732.1 = phi i64 [ %polly.indvar_next733.1, %polly.loop_exit737.1 ], [ 0, %polly.loop_exit737 ]
  %271 = mul nuw nsw i64 %polly.indvar732.1, 480
  %272 = trunc i64 %polly.indvar732.1 to i32
  %broadcast.splatinsert1112 = insertelement <4 x i32> poison, i32 %272, i32 0
  %broadcast.splat1113 = shufflevector <4 x i32> %broadcast.splatinsert1112, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %polly.loop_header729.1
  %index1106 = phi i64 [ 0, %polly.loop_header729.1 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1 ], [ %vec.ind.next1111, %vector.body1104 ]
  %273 = add nuw nsw <4 x i64> %vec.ind1110, <i64 32, i64 32, i64 32, i64 32>
  %274 = trunc <4 x i64> %273 to <4 x i32>
  %275 = mul <4 x i32> %broadcast.splat1113, %274
  %276 = add <4 x i32> %275, <i32 1, i32 1, i32 1, i32 1>
  %277 = urem <4 x i32> %276, <i32 80, i32 80, i32 80, i32 80>
  %278 = sitofp <4 x i32> %277 to <4 x double>
  %279 = fmul fast <4 x double> %278, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %280 = extractelement <4 x i64> %273, i32 0
  %281 = shl i64 %280, 3
  %282 = add i64 %281, %271
  %283 = getelementptr i8, i8* %call1, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %279, <4 x double>* %284, align 8, !alias.scope !89, !noalias !94
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1111 = add <4 x i64> %vec.ind1110, <i64 4, i64 4, i64 4, i64 4>
  %285 = icmp eq i64 %index.next1107, 28
  br i1 %285, label %polly.loop_exit737.1, label %vector.body1104, !llvm.loop !96

polly.loop_exit737.1:                             ; preds = %vector.body1104
  %polly.indvar_next733.1 = add nuw nsw i64 %polly.indvar732.1, 1
  %exitcond794.1.not = icmp eq i64 %polly.indvar_next733.1, 32
  br i1 %exitcond794.1.not, label %polly.loop_header729.1817, label %polly.loop_header729.1

polly.loop_header729.1817:                        ; preds = %polly.loop_exit737.1, %polly.loop_exit737.1828
  %polly.indvar732.1816 = phi i64 [ %polly.indvar_next733.1826, %polly.loop_exit737.1828 ], [ 0, %polly.loop_exit737.1 ]
  %286 = add nuw nsw i64 %polly.indvar732.1816, 32
  %287 = mul nuw nsw i64 %286, 480
  %288 = trunc i64 %286 to i32
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %288, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %polly.loop_header729.1817
  %index1118 = phi i64 [ 0, %polly.loop_header729.1817 ], [ %index.next1119, %vector.body1116 ]
  %vec.ind1124 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729.1817 ], [ %vec.ind.next1125, %vector.body1116 ]
  %289 = mul <4 x i32> %vec.ind1124, %broadcast.splat1127
  %290 = add <4 x i32> %289, <i32 1, i32 1, i32 1, i32 1>
  %291 = urem <4 x i32> %290, <i32 80, i32 80, i32 80, i32 80>
  %292 = sitofp <4 x i32> %291 to <4 x double>
  %293 = fmul fast <4 x double> %292, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %294 = shl i64 %index1118, 3
  %295 = add i64 %294, %287
  %296 = getelementptr i8, i8* %call1, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %293, <4 x double>* %297, align 8, !alias.scope !89, !noalias !94
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1125 = add <4 x i32> %vec.ind1124, <i32 4, i32 4, i32 4, i32 4>
  %298 = icmp eq i64 %index.next1119, 32
  br i1 %298, label %polly.loop_exit737.1828, label %vector.body1116, !llvm.loop !97

polly.loop_exit737.1828:                          ; preds = %vector.body1116
  %polly.indvar_next733.1826 = add nuw nsw i64 %polly.indvar732.1816, 1
  %exitcond794.1827.not = icmp eq i64 %polly.indvar_next733.1826, 32
  br i1 %exitcond794.1827.not, label %polly.loop_header729.1.1, label %polly.loop_header729.1817

polly.loop_header729.1.1:                         ; preds = %polly.loop_exit737.1828, %polly.loop_exit737.1.1
  %polly.indvar732.1.1 = phi i64 [ %polly.indvar_next733.1.1, %polly.loop_exit737.1.1 ], [ 0, %polly.loop_exit737.1828 ]
  %299 = add nuw nsw i64 %polly.indvar732.1.1, 32
  %300 = mul nuw nsw i64 %299, 480
  %301 = trunc i64 %299 to i32
  %broadcast.splatinsert1138 = insertelement <4 x i32> poison, i32 %301, i32 0
  %broadcast.splat1139 = shufflevector <4 x i32> %broadcast.splatinsert1138, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %polly.loop_header729.1.1
  %index1132 = phi i64 [ 0, %polly.loop_header729.1.1 ], [ %index.next1133, %vector.body1130 ]
  %vec.ind1136 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1.1 ], [ %vec.ind.next1137, %vector.body1130 ]
  %302 = add nuw nsw <4 x i64> %vec.ind1136, <i64 32, i64 32, i64 32, i64 32>
  %303 = trunc <4 x i64> %302 to <4 x i32>
  %304 = mul <4 x i32> %broadcast.splat1139, %303
  %305 = add <4 x i32> %304, <i32 1, i32 1, i32 1, i32 1>
  %306 = urem <4 x i32> %305, <i32 80, i32 80, i32 80, i32 80>
  %307 = sitofp <4 x i32> %306 to <4 x double>
  %308 = fmul fast <4 x double> %307, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %309 = extractelement <4 x i64> %302, i32 0
  %310 = shl i64 %309, 3
  %311 = add i64 %310, %300
  %312 = getelementptr i8, i8* %call1, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %308, <4 x double>* %313, align 8, !alias.scope !89, !noalias !94
  %index.next1133 = add i64 %index1132, 4
  %vec.ind.next1137 = add <4 x i64> %vec.ind1136, <i64 4, i64 4, i64 4, i64 4>
  %314 = icmp eq i64 %index.next1133, 28
  br i1 %314, label %polly.loop_exit737.1.1, label %vector.body1130, !llvm.loop !98

polly.loop_exit737.1.1:                           ; preds = %vector.body1130
  %polly.indvar_next733.1.1 = add nuw nsw i64 %polly.indvar732.1.1, 1
  %exitcond794.1.1.not = icmp eq i64 %polly.indvar_next733.1.1, 32
  br i1 %exitcond794.1.1.not, label %polly.loop_header729.2, label %polly.loop_header729.1.1

polly.loop_header729.2:                           ; preds = %polly.loop_exit737.1.1, %polly.loop_exit737.2
  %polly.indvar732.2 = phi i64 [ %polly.indvar_next733.2, %polly.loop_exit737.2 ], [ 0, %polly.loop_exit737.1.1 ]
  %315 = add nuw nsw i64 %polly.indvar732.2, 64
  %316 = mul nuw nsw i64 %315, 480
  %317 = trunc i64 %315 to i32
  %broadcast.splatinsert1152 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1153 = shufflevector <4 x i32> %broadcast.splatinsert1152, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %polly.loop_header729.2
  %index1144 = phi i64 [ 0, %polly.loop_header729.2 ], [ %index.next1145, %vector.body1142 ]
  %vec.ind1150 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729.2 ], [ %vec.ind.next1151, %vector.body1142 ]
  %318 = mul <4 x i32> %vec.ind1150, %broadcast.splat1153
  %319 = add <4 x i32> %318, <i32 1, i32 1, i32 1, i32 1>
  %320 = urem <4 x i32> %319, <i32 80, i32 80, i32 80, i32 80>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %323 = shl i64 %index1144, 3
  %324 = add i64 %323, %316
  %325 = getelementptr i8, i8* %call1, i64 %324
  %326 = bitcast i8* %325 to <4 x double>*
  store <4 x double> %322, <4 x double>* %326, align 8, !alias.scope !89, !noalias !94
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1151 = add <4 x i32> %vec.ind1150, <i32 4, i32 4, i32 4, i32 4>
  %327 = icmp eq i64 %index.next1145, 32
  br i1 %327, label %polly.loop_exit737.2, label %vector.body1142, !llvm.loop !99

polly.loop_exit737.2:                             ; preds = %vector.body1142
  %polly.indvar_next733.2 = add nuw nsw i64 %polly.indvar732.2, 1
  %exitcond794.2.not = icmp eq i64 %polly.indvar_next733.2, 16
  br i1 %exitcond794.2.not, label %polly.loop_header729.1.2, label %polly.loop_header729.2

polly.loop_header729.1.2:                         ; preds = %polly.loop_exit737.2, %polly.loop_exit737.1.2
  %polly.indvar732.1.2 = phi i64 [ %polly.indvar_next733.1.2, %polly.loop_exit737.1.2 ], [ 0, %polly.loop_exit737.2 ]
  %328 = add nuw nsw i64 %polly.indvar732.1.2, 64
  %329 = mul nuw nsw i64 %328, 480
  %330 = trunc i64 %328 to i32
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %330, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %polly.loop_header729.1.2
  %index1158 = phi i64 [ 0, %polly.loop_header729.1.2 ], [ %index.next1159, %vector.body1156 ]
  %vec.ind1162 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1.2 ], [ %vec.ind.next1163, %vector.body1156 ]
  %331 = add nuw nsw <4 x i64> %vec.ind1162, <i64 32, i64 32, i64 32, i64 32>
  %332 = trunc <4 x i64> %331 to <4 x i32>
  %333 = mul <4 x i32> %broadcast.splat1165, %332
  %334 = add <4 x i32> %333, <i32 1, i32 1, i32 1, i32 1>
  %335 = urem <4 x i32> %334, <i32 80, i32 80, i32 80, i32 80>
  %336 = sitofp <4 x i32> %335 to <4 x double>
  %337 = fmul fast <4 x double> %336, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %338 = extractelement <4 x i64> %331, i32 0
  %339 = shl i64 %338, 3
  %340 = add i64 %339, %329
  %341 = getelementptr i8, i8* %call1, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %337, <4 x double>* %342, align 8, !alias.scope !89, !noalias !94
  %index.next1159 = add i64 %index1158, 4
  %vec.ind.next1163 = add <4 x i64> %vec.ind1162, <i64 4, i64 4, i64 4, i64 4>
  %343 = icmp eq i64 %index.next1159, 28
  br i1 %343, label %polly.loop_exit737.1.2, label %vector.body1156, !llvm.loop !100

polly.loop_exit737.1.2:                           ; preds = %vector.body1156
  %polly.indvar_next733.1.2 = add nuw nsw i64 %polly.indvar732.1.2, 1
  %exitcond794.1.2.not = icmp eq i64 %polly.indvar_next733.1.2, 16
  br i1 %exitcond794.1.2.not, label %init_array.exit, label %polly.loop_header729.1.2

polly.loop_header703.1:                           ; preds = %polly.loop_exit711, %polly.loop_exit711.1
  %polly.indvar706.1 = phi i64 [ %polly.indvar_next707.1, %polly.loop_exit711.1 ], [ 0, %polly.loop_exit711 ]
  %344 = mul nuw nsw i64 %polly.indvar706.1, 480
  %345 = trunc i64 %polly.indvar706.1 to i32
  %broadcast.splatinsert1034 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1035 = shufflevector <4 x i32> %broadcast.splatinsert1034, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %polly.loop_header703.1
  %index1028 = phi i64 [ 0, %polly.loop_header703.1 ], [ %index.next1029, %vector.body1026 ]
  %vec.ind1032 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1 ], [ %vec.ind.next1033, %vector.body1026 ]
  %346 = add nuw nsw <4 x i64> %vec.ind1032, <i64 32, i64 32, i64 32, i64 32>
  %347 = trunc <4 x i64> %346 to <4 x i32>
  %348 = mul <4 x i32> %broadcast.splat1035, %347
  %349 = add <4 x i32> %348, <i32 2, i32 2, i32 2, i32 2>
  %350 = urem <4 x i32> %349, <i32 60, i32 60, i32 60, i32 60>
  %351 = sitofp <4 x i32> %350 to <4 x double>
  %352 = fmul fast <4 x double> %351, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %353 = extractelement <4 x i64> %346, i32 0
  %354 = shl i64 %353, 3
  %355 = add i64 %354, %344
  %356 = getelementptr i8, i8* %call2, i64 %355
  %357 = bitcast i8* %356 to <4 x double>*
  store <4 x double> %352, <4 x double>* %357, align 8, !alias.scope !90, !noalias !92
  %index.next1029 = add i64 %index1028, 4
  %vec.ind.next1033 = add <4 x i64> %vec.ind1032, <i64 4, i64 4, i64 4, i64 4>
  %358 = icmp eq i64 %index.next1029, 28
  br i1 %358, label %polly.loop_exit711.1, label %vector.body1026, !llvm.loop !101

polly.loop_exit711.1:                             ; preds = %vector.body1026
  %polly.indvar_next707.1 = add nuw nsw i64 %polly.indvar706.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next707.1, 32
  br i1 %exitcond800.1.not, label %polly.loop_header703.1831, label %polly.loop_header703.1

polly.loop_header703.1831:                        ; preds = %polly.loop_exit711.1, %polly.loop_exit711.1842
  %polly.indvar706.1830 = phi i64 [ %polly.indvar_next707.1840, %polly.loop_exit711.1842 ], [ 0, %polly.loop_exit711.1 ]
  %359 = add nuw nsw i64 %polly.indvar706.1830, 32
  %360 = mul nuw nsw i64 %359, 480
  %361 = trunc i64 %359 to i32
  %broadcast.splatinsert1048 = insertelement <4 x i32> poison, i32 %361, i32 0
  %broadcast.splat1049 = shufflevector <4 x i32> %broadcast.splatinsert1048, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %polly.loop_header703.1831
  %index1040 = phi i64 [ 0, %polly.loop_header703.1831 ], [ %index.next1041, %vector.body1038 ]
  %vec.ind1046 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703.1831 ], [ %vec.ind.next1047, %vector.body1038 ]
  %362 = mul <4 x i32> %vec.ind1046, %broadcast.splat1049
  %363 = add <4 x i32> %362, <i32 2, i32 2, i32 2, i32 2>
  %364 = urem <4 x i32> %363, <i32 60, i32 60, i32 60, i32 60>
  %365 = sitofp <4 x i32> %364 to <4 x double>
  %366 = fmul fast <4 x double> %365, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %367 = shl i64 %index1040, 3
  %368 = add i64 %367, %360
  %369 = getelementptr i8, i8* %call2, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %366, <4 x double>* %370, align 8, !alias.scope !90, !noalias !92
  %index.next1041 = add i64 %index1040, 4
  %vec.ind.next1047 = add <4 x i32> %vec.ind1046, <i32 4, i32 4, i32 4, i32 4>
  %371 = icmp eq i64 %index.next1041, 32
  br i1 %371, label %polly.loop_exit711.1842, label %vector.body1038, !llvm.loop !102

polly.loop_exit711.1842:                          ; preds = %vector.body1038
  %polly.indvar_next707.1840 = add nuw nsw i64 %polly.indvar706.1830, 1
  %exitcond800.1841.not = icmp eq i64 %polly.indvar_next707.1840, 32
  br i1 %exitcond800.1841.not, label %polly.loop_header703.1.1, label %polly.loop_header703.1831

polly.loop_header703.1.1:                         ; preds = %polly.loop_exit711.1842, %polly.loop_exit711.1.1
  %polly.indvar706.1.1 = phi i64 [ %polly.indvar_next707.1.1, %polly.loop_exit711.1.1 ], [ 0, %polly.loop_exit711.1842 ]
  %372 = add nuw nsw i64 %polly.indvar706.1.1, 32
  %373 = mul nuw nsw i64 %372, 480
  %374 = trunc i64 %372 to i32
  %broadcast.splatinsert1060 = insertelement <4 x i32> poison, i32 %374, i32 0
  %broadcast.splat1061 = shufflevector <4 x i32> %broadcast.splatinsert1060, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %polly.loop_header703.1.1
  %index1054 = phi i64 [ 0, %polly.loop_header703.1.1 ], [ %index.next1055, %vector.body1052 ]
  %vec.ind1058 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1.1 ], [ %vec.ind.next1059, %vector.body1052 ]
  %375 = add nuw nsw <4 x i64> %vec.ind1058, <i64 32, i64 32, i64 32, i64 32>
  %376 = trunc <4 x i64> %375 to <4 x i32>
  %377 = mul <4 x i32> %broadcast.splat1061, %376
  %378 = add <4 x i32> %377, <i32 2, i32 2, i32 2, i32 2>
  %379 = urem <4 x i32> %378, <i32 60, i32 60, i32 60, i32 60>
  %380 = sitofp <4 x i32> %379 to <4 x double>
  %381 = fmul fast <4 x double> %380, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %382 = extractelement <4 x i64> %375, i32 0
  %383 = shl i64 %382, 3
  %384 = add i64 %383, %373
  %385 = getelementptr i8, i8* %call2, i64 %384
  %386 = bitcast i8* %385 to <4 x double>*
  store <4 x double> %381, <4 x double>* %386, align 8, !alias.scope !90, !noalias !92
  %index.next1055 = add i64 %index1054, 4
  %vec.ind.next1059 = add <4 x i64> %vec.ind1058, <i64 4, i64 4, i64 4, i64 4>
  %387 = icmp eq i64 %index.next1055, 28
  br i1 %387, label %polly.loop_exit711.1.1, label %vector.body1052, !llvm.loop !103

polly.loop_exit711.1.1:                           ; preds = %vector.body1052
  %polly.indvar_next707.1.1 = add nuw nsw i64 %polly.indvar706.1.1, 1
  %exitcond800.1.1.not = icmp eq i64 %polly.indvar_next707.1.1, 32
  br i1 %exitcond800.1.1.not, label %polly.loop_header703.2, label %polly.loop_header703.1.1

polly.loop_header703.2:                           ; preds = %polly.loop_exit711.1.1, %polly.loop_exit711.2
  %polly.indvar706.2 = phi i64 [ %polly.indvar_next707.2, %polly.loop_exit711.2 ], [ 0, %polly.loop_exit711.1.1 ]
  %388 = add nuw nsw i64 %polly.indvar706.2, 64
  %389 = mul nuw nsw i64 %388, 480
  %390 = trunc i64 %388 to i32
  %broadcast.splatinsert1074 = insertelement <4 x i32> poison, i32 %390, i32 0
  %broadcast.splat1075 = shufflevector <4 x i32> %broadcast.splatinsert1074, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %polly.loop_header703.2
  %index1066 = phi i64 [ 0, %polly.loop_header703.2 ], [ %index.next1067, %vector.body1064 ]
  %vec.ind1072 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703.2 ], [ %vec.ind.next1073, %vector.body1064 ]
  %391 = mul <4 x i32> %vec.ind1072, %broadcast.splat1075
  %392 = add <4 x i32> %391, <i32 2, i32 2, i32 2, i32 2>
  %393 = urem <4 x i32> %392, <i32 60, i32 60, i32 60, i32 60>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = shl i64 %index1066, 3
  %397 = add i64 %396, %389
  %398 = getelementptr i8, i8* %call2, i64 %397
  %399 = bitcast i8* %398 to <4 x double>*
  store <4 x double> %395, <4 x double>* %399, align 8, !alias.scope !90, !noalias !92
  %index.next1067 = add i64 %index1066, 4
  %vec.ind.next1073 = add <4 x i32> %vec.ind1072, <i32 4, i32 4, i32 4, i32 4>
  %400 = icmp eq i64 %index.next1067, 32
  br i1 %400, label %polly.loop_exit711.2, label %vector.body1064, !llvm.loop !104

polly.loop_exit711.2:                             ; preds = %vector.body1064
  %polly.indvar_next707.2 = add nuw nsw i64 %polly.indvar706.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next707.2, 16
  br i1 %exitcond800.2.not, label %polly.loop_header703.1.2, label %polly.loop_header703.2

polly.loop_header703.1.2:                         ; preds = %polly.loop_exit711.2, %polly.loop_exit711.1.2
  %polly.indvar706.1.2 = phi i64 [ %polly.indvar_next707.1.2, %polly.loop_exit711.1.2 ], [ 0, %polly.loop_exit711.2 ]
  %401 = add nuw nsw i64 %polly.indvar706.1.2, 64
  %402 = mul nuw nsw i64 %401, 480
  %403 = trunc i64 %401 to i32
  %broadcast.splatinsert1086 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat1087 = shufflevector <4 x i32> %broadcast.splatinsert1086, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.body1078, %polly.loop_header703.1.2
  %index1080 = phi i64 [ 0, %polly.loop_header703.1.2 ], [ %index.next1081, %vector.body1078 ]
  %vec.ind1084 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1.2 ], [ %vec.ind.next1085, %vector.body1078 ]
  %404 = add nuw nsw <4 x i64> %vec.ind1084, <i64 32, i64 32, i64 32, i64 32>
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat1087, %405
  %407 = add <4 x i32> %406, <i32 2, i32 2, i32 2, i32 2>
  %408 = urem <4 x i32> %407, <i32 60, i32 60, i32 60, i32 60>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add i64 %412, %402
  %414 = getelementptr i8, i8* %call2, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !90, !noalias !92
  %index.next1081 = add i64 %index1080, 4
  %vec.ind.next1085 = add <4 x i64> %vec.ind1084, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next1081, 28
  br i1 %416, label %polly.loop_exit711.1.2, label %vector.body1078, !llvm.loop !105

polly.loop_exit711.1.2:                           ; preds = %vector.body1078
  %polly.indvar_next707.1.2 = add nuw nsw i64 %polly.indvar706.1.2, 1
  %exitcond800.1.2.not = icmp eq i64 %polly.indvar_next707.1.2, 16
  br i1 %exitcond800.1.2.not, label %polly.loop_header729, label %polly.loop_header703.1.2

polly.loop_header676.1:                           ; preds = %polly.loop_exit684, %polly.loop_exit684.1
  %polly.indvar679.1 = phi i64 [ %polly.indvar_next680.1, %polly.loop_exit684.1 ], [ 0, %polly.loop_exit684 ]
  %417 = mul nuw nsw i64 %polly.indvar679.1, 640
  %418 = trunc i64 %polly.indvar679.1 to i32
  %broadcast.splatinsert920 = insertelement <4 x i32> poison, i32 %418, i32 0
  %broadcast.splat921 = shufflevector <4 x i32> %broadcast.splatinsert920, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body912

vector.body912:                                   ; preds = %vector.body912, %polly.loop_header676.1
  %index914 = phi i64 [ 0, %polly.loop_header676.1 ], [ %index.next915, %vector.body912 ]
  %vec.ind918 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1 ], [ %vec.ind.next919, %vector.body912 ]
  %419 = add nuw nsw <4 x i64> %vec.ind918, <i64 32, i64 32, i64 32, i64 32>
  %420 = trunc <4 x i64> %419 to <4 x i32>
  %421 = mul <4 x i32> %broadcast.splat921, %420
  %422 = add <4 x i32> %421, <i32 3, i32 3, i32 3, i32 3>
  %423 = urem <4 x i32> %422, <i32 80, i32 80, i32 80, i32 80>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %426 = extractelement <4 x i64> %419, i32 0
  %427 = shl i64 %426, 3
  %428 = add nuw nsw i64 %427, %417
  %429 = getelementptr i8, i8* %call, i64 %428
  %430 = bitcast i8* %429 to <4 x double>*
  store <4 x double> %425, <4 x double>* %430, align 8, !alias.scope !86, !noalias !88
  %index.next915 = add i64 %index914, 4
  %vec.ind.next919 = add <4 x i64> %vec.ind918, <i64 4, i64 4, i64 4, i64 4>
  %431 = icmp eq i64 %index.next915, 32
  br i1 %431, label %polly.loop_exit684.1, label %vector.body912, !llvm.loop !106

polly.loop_exit684.1:                             ; preds = %vector.body912
  %polly.indvar_next680.1 = add nuw nsw i64 %polly.indvar679.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next680.1, 32
  br i1 %exitcond809.1.not, label %polly.loop_header676.2, label %polly.loop_header676.1

polly.loop_header676.2:                           ; preds = %polly.loop_exit684.1, %polly.loop_exit684.2
  %polly.indvar679.2 = phi i64 [ %polly.indvar_next680.2, %polly.loop_exit684.2 ], [ 0, %polly.loop_exit684.1 ]
  %432 = mul nuw nsw i64 %polly.indvar679.2, 640
  %433 = trunc i64 %polly.indvar679.2 to i32
  %broadcast.splatinsert932 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat933 = shufflevector <4 x i32> %broadcast.splatinsert932, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body924

vector.body924:                                   ; preds = %vector.body924, %polly.loop_header676.2
  %index926 = phi i64 [ 0, %polly.loop_header676.2 ], [ %index.next927, %vector.body924 ]
  %vec.ind930 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2 ], [ %vec.ind.next931, %vector.body924 ]
  %434 = add nuw nsw <4 x i64> %vec.ind930, <i64 64, i64 64, i64 64, i64 64>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat933, %435
  %437 = add <4 x i32> %436, <i32 3, i32 3, i32 3, i32 3>
  %438 = urem <4 x i32> %437, <i32 80, i32 80, i32 80, i32 80>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = extractelement <4 x i64> %434, i32 0
  %442 = shl i64 %441, 3
  %443 = add nuw nsw i64 %442, %432
  %444 = getelementptr i8, i8* %call, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %440, <4 x double>* %445, align 8, !alias.scope !86, !noalias !88
  %index.next927 = add i64 %index926, 4
  %vec.ind.next931 = add <4 x i64> %vec.ind930, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next927, 16
  br i1 %446, label %polly.loop_exit684.2, label %vector.body924, !llvm.loop !107

polly.loop_exit684.2:                             ; preds = %vector.body924
  %polly.indvar_next680.2 = add nuw nsw i64 %polly.indvar679.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next680.2, 32
  br i1 %exitcond809.2.not, label %polly.loop_header676.1845, label %polly.loop_header676.2

polly.loop_header676.1845:                        ; preds = %polly.loop_exit684.2, %polly.loop_exit684.1856
  %polly.indvar679.1844 = phi i64 [ %polly.indvar_next680.1854, %polly.loop_exit684.1856 ], [ 0, %polly.loop_exit684.2 ]
  %447 = add nuw nsw i64 %polly.indvar679.1844, 32
  %448 = mul nuw nsw i64 %447, 640
  %449 = trunc i64 %447 to i32
  %broadcast.splatinsert946 = insertelement <4 x i32> poison, i32 %449, i32 0
  %broadcast.splat947 = shufflevector <4 x i32> %broadcast.splatinsert946, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %polly.loop_header676.1845
  %index938 = phi i64 [ 0, %polly.loop_header676.1845 ], [ %index.next939, %vector.body936 ]
  %vec.ind944 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676.1845 ], [ %vec.ind.next945, %vector.body936 ]
  %450 = mul <4 x i32> %vec.ind944, %broadcast.splat947
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = shl i64 %index938, 3
  %456 = add nuw nsw i64 %455, %448
  %457 = getelementptr i8, i8* %call, i64 %456
  %458 = bitcast i8* %457 to <4 x double>*
  store <4 x double> %454, <4 x double>* %458, align 8, !alias.scope !86, !noalias !88
  %index.next939 = add i64 %index938, 4
  %vec.ind.next945 = add <4 x i32> %vec.ind944, <i32 4, i32 4, i32 4, i32 4>
  %459 = icmp eq i64 %index.next939, 32
  br i1 %459, label %polly.loop_exit684.1856, label %vector.body936, !llvm.loop !108

polly.loop_exit684.1856:                          ; preds = %vector.body936
  %polly.indvar_next680.1854 = add nuw nsw i64 %polly.indvar679.1844, 1
  %exitcond809.1855.not = icmp eq i64 %polly.indvar_next680.1854, 32
  br i1 %exitcond809.1855.not, label %polly.loop_header676.1.1, label %polly.loop_header676.1845

polly.loop_header676.1.1:                         ; preds = %polly.loop_exit684.1856, %polly.loop_exit684.1.1
  %polly.indvar679.1.1 = phi i64 [ %polly.indvar_next680.1.1, %polly.loop_exit684.1.1 ], [ 0, %polly.loop_exit684.1856 ]
  %460 = add nuw nsw i64 %polly.indvar679.1.1, 32
  %461 = mul nuw nsw i64 %460, 640
  %462 = trunc i64 %460 to i32
  %broadcast.splatinsert958 = insertelement <4 x i32> poison, i32 %462, i32 0
  %broadcast.splat959 = shufflevector <4 x i32> %broadcast.splatinsert958, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body950

vector.body950:                                   ; preds = %vector.body950, %polly.loop_header676.1.1
  %index952 = phi i64 [ 0, %polly.loop_header676.1.1 ], [ %index.next953, %vector.body950 ]
  %vec.ind956 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1.1 ], [ %vec.ind.next957, %vector.body950 ]
  %463 = add nuw nsw <4 x i64> %vec.ind956, <i64 32, i64 32, i64 32, i64 32>
  %464 = trunc <4 x i64> %463 to <4 x i32>
  %465 = mul <4 x i32> %broadcast.splat959, %464
  %466 = add <4 x i32> %465, <i32 3, i32 3, i32 3, i32 3>
  %467 = urem <4 x i32> %466, <i32 80, i32 80, i32 80, i32 80>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %470 = extractelement <4 x i64> %463, i32 0
  %471 = shl i64 %470, 3
  %472 = add nuw nsw i64 %471, %461
  %473 = getelementptr i8, i8* %call, i64 %472
  %474 = bitcast i8* %473 to <4 x double>*
  store <4 x double> %469, <4 x double>* %474, align 8, !alias.scope !86, !noalias !88
  %index.next953 = add i64 %index952, 4
  %vec.ind.next957 = add <4 x i64> %vec.ind956, <i64 4, i64 4, i64 4, i64 4>
  %475 = icmp eq i64 %index.next953, 32
  br i1 %475, label %polly.loop_exit684.1.1, label %vector.body950, !llvm.loop !109

polly.loop_exit684.1.1:                           ; preds = %vector.body950
  %polly.indvar_next680.1.1 = add nuw nsw i64 %polly.indvar679.1.1, 1
  %exitcond809.1.1.not = icmp eq i64 %polly.indvar_next680.1.1, 32
  br i1 %exitcond809.1.1.not, label %polly.loop_header676.2.1, label %polly.loop_header676.1.1

polly.loop_header676.2.1:                         ; preds = %polly.loop_exit684.1.1, %polly.loop_exit684.2.1
  %polly.indvar679.2.1 = phi i64 [ %polly.indvar_next680.2.1, %polly.loop_exit684.2.1 ], [ 0, %polly.loop_exit684.1.1 ]
  %476 = add nuw nsw i64 %polly.indvar679.2.1, 32
  %477 = mul nuw nsw i64 %476, 640
  %478 = trunc i64 %476 to i32
  %broadcast.splatinsert970 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat971 = shufflevector <4 x i32> %broadcast.splatinsert970, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %polly.loop_header676.2.1
  %index964 = phi i64 [ 0, %polly.loop_header676.2.1 ], [ %index.next965, %vector.body962 ]
  %vec.ind968 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2.1 ], [ %vec.ind.next969, %vector.body962 ]
  %479 = add nuw nsw <4 x i64> %vec.ind968, <i64 64, i64 64, i64 64, i64 64>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat971, %480
  %482 = add <4 x i32> %481, <i32 3, i32 3, i32 3, i32 3>
  %483 = urem <4 x i32> %482, <i32 80, i32 80, i32 80, i32 80>
  %484 = sitofp <4 x i32> %483 to <4 x double>
  %485 = fmul fast <4 x double> %484, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %486 = extractelement <4 x i64> %479, i32 0
  %487 = shl i64 %486, 3
  %488 = add nuw nsw i64 %487, %477
  %489 = getelementptr i8, i8* %call, i64 %488
  %490 = bitcast i8* %489 to <4 x double>*
  store <4 x double> %485, <4 x double>* %490, align 8, !alias.scope !86, !noalias !88
  %index.next965 = add i64 %index964, 4
  %vec.ind.next969 = add <4 x i64> %vec.ind968, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next965, 16
  br i1 %491, label %polly.loop_exit684.2.1, label %vector.body962, !llvm.loop !110

polly.loop_exit684.2.1:                           ; preds = %vector.body962
  %polly.indvar_next680.2.1 = add nuw nsw i64 %polly.indvar679.2.1, 1
  %exitcond809.2.1.not = icmp eq i64 %polly.indvar_next680.2.1, 32
  br i1 %exitcond809.2.1.not, label %polly.loop_header676.2859, label %polly.loop_header676.2.1

polly.loop_header676.2859:                        ; preds = %polly.loop_exit684.2.1, %polly.loop_exit684.2870
  %polly.indvar679.2858 = phi i64 [ %polly.indvar_next680.2868, %polly.loop_exit684.2870 ], [ 0, %polly.loop_exit684.2.1 ]
  %492 = add nuw nsw i64 %polly.indvar679.2858, 64
  %493 = mul nuw nsw i64 %492, 640
  %494 = trunc i64 %492 to i32
  %broadcast.splatinsert984 = insertelement <4 x i32> poison, i32 %494, i32 0
  %broadcast.splat985 = shufflevector <4 x i32> %broadcast.splatinsert984, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %polly.loop_header676.2859
  %index976 = phi i64 [ 0, %polly.loop_header676.2859 ], [ %index.next977, %vector.body974 ]
  %vec.ind982 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676.2859 ], [ %vec.ind.next983, %vector.body974 ]
  %495 = mul <4 x i32> %vec.ind982, %broadcast.splat985
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = shl i64 %index976, 3
  %501 = add nuw nsw i64 %500, %493
  %502 = getelementptr i8, i8* %call, i64 %501
  %503 = bitcast i8* %502 to <4 x double>*
  store <4 x double> %499, <4 x double>* %503, align 8, !alias.scope !86, !noalias !88
  %index.next977 = add i64 %index976, 4
  %vec.ind.next983 = add <4 x i32> %vec.ind982, <i32 4, i32 4, i32 4, i32 4>
  %504 = icmp eq i64 %index.next977, 32
  br i1 %504, label %polly.loop_exit684.2870, label %vector.body974, !llvm.loop !111

polly.loop_exit684.2870:                          ; preds = %vector.body974
  %polly.indvar_next680.2868 = add nuw nsw i64 %polly.indvar679.2858, 1
  %exitcond809.2869.not = icmp eq i64 %polly.indvar_next680.2868, 16
  br i1 %exitcond809.2869.not, label %polly.loop_header676.1.2, label %polly.loop_header676.2859

polly.loop_header676.1.2:                         ; preds = %polly.loop_exit684.2870, %polly.loop_exit684.1.2
  %polly.indvar679.1.2 = phi i64 [ %polly.indvar_next680.1.2, %polly.loop_exit684.1.2 ], [ 0, %polly.loop_exit684.2870 ]
  %505 = add nuw nsw i64 %polly.indvar679.1.2, 64
  %506 = mul nuw nsw i64 %505, 640
  %507 = trunc i64 %505 to i32
  %broadcast.splatinsert996 = insertelement <4 x i32> poison, i32 %507, i32 0
  %broadcast.splat997 = shufflevector <4 x i32> %broadcast.splatinsert996, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %polly.loop_header676.1.2
  %index990 = phi i64 [ 0, %polly.loop_header676.1.2 ], [ %index.next991, %vector.body988 ]
  %vec.ind994 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1.2 ], [ %vec.ind.next995, %vector.body988 ]
  %508 = add nuw nsw <4 x i64> %vec.ind994, <i64 32, i64 32, i64 32, i64 32>
  %509 = trunc <4 x i64> %508 to <4 x i32>
  %510 = mul <4 x i32> %broadcast.splat997, %509
  %511 = add <4 x i32> %510, <i32 3, i32 3, i32 3, i32 3>
  %512 = urem <4 x i32> %511, <i32 80, i32 80, i32 80, i32 80>
  %513 = sitofp <4 x i32> %512 to <4 x double>
  %514 = fmul fast <4 x double> %513, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %515 = extractelement <4 x i64> %508, i32 0
  %516 = shl i64 %515, 3
  %517 = add nuw nsw i64 %516, %506
  %518 = getelementptr i8, i8* %call, i64 %517
  %519 = bitcast i8* %518 to <4 x double>*
  store <4 x double> %514, <4 x double>* %519, align 8, !alias.scope !86, !noalias !88
  %index.next991 = add i64 %index990, 4
  %vec.ind.next995 = add <4 x i64> %vec.ind994, <i64 4, i64 4, i64 4, i64 4>
  %520 = icmp eq i64 %index.next991, 32
  br i1 %520, label %polly.loop_exit684.1.2, label %vector.body988, !llvm.loop !112

polly.loop_exit684.1.2:                           ; preds = %vector.body988
  %polly.indvar_next680.1.2 = add nuw nsw i64 %polly.indvar679.1.2, 1
  %exitcond809.1.2.not = icmp eq i64 %polly.indvar_next680.1.2, 16
  br i1 %exitcond809.1.2.not, label %polly.loop_header676.2.2, label %polly.loop_header676.1.2

polly.loop_header676.2.2:                         ; preds = %polly.loop_exit684.1.2, %polly.loop_exit684.2.2
  %polly.indvar679.2.2 = phi i64 [ %polly.indvar_next680.2.2, %polly.loop_exit684.2.2 ], [ 0, %polly.loop_exit684.1.2 ]
  %521 = add nuw nsw i64 %polly.indvar679.2.2, 64
  %522 = mul nuw nsw i64 %521, 640
  %523 = trunc i64 %521 to i32
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %523, i32 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %polly.loop_header676.2.2
  %index1002 = phi i64 [ 0, %polly.loop_header676.2.2 ], [ %index.next1003, %vector.body1000 ]
  %vec.ind1006 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2.2 ], [ %vec.ind.next1007, %vector.body1000 ]
  %524 = add nuw nsw <4 x i64> %vec.ind1006, <i64 64, i64 64, i64 64, i64 64>
  %525 = trunc <4 x i64> %524 to <4 x i32>
  %526 = mul <4 x i32> %broadcast.splat1009, %525
  %527 = add <4 x i32> %526, <i32 3, i32 3, i32 3, i32 3>
  %528 = urem <4 x i32> %527, <i32 80, i32 80, i32 80, i32 80>
  %529 = sitofp <4 x i32> %528 to <4 x double>
  %530 = fmul fast <4 x double> %529, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %531 = extractelement <4 x i64> %524, i32 0
  %532 = shl i64 %531, 3
  %533 = add nuw nsw i64 %532, %522
  %534 = getelementptr i8, i8* %call, i64 %533
  %535 = bitcast i8* %534 to <4 x double>*
  store <4 x double> %530, <4 x double>* %535, align 8, !alias.scope !86, !noalias !88
  %index.next1003 = add i64 %index1002, 4
  %vec.ind.next1007 = add <4 x i64> %vec.ind1006, <i64 4, i64 4, i64 4, i64 4>
  %536 = icmp eq i64 %index.next1003, 16
  br i1 %536, label %polly.loop_exit684.2.2, label %vector.body1000, !llvm.loop !113

polly.loop_exit684.2.2:                           ; preds = %vector.body1000
  %polly.indvar_next680.2.2 = add nuw nsw i64 %polly.indvar679.2.2, 1
  %exitcond809.2.2.not = icmp eq i64 %polly.indvar_next680.2.2, 16
  br i1 %exitcond809.2.2.not, label %polly.loop_header703, label %polly.loop_header676.2.2
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
!33 = !{!"llvm.loop.tile.size", i32 16}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !33, !44, !47}
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
