; ModuleID = 'syr2k_recreations//mmp_syr2k_S_175.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_175.c"
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
  %call690 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
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
  tail call void (...) @polybench_timer_start() #6
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit501
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
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
  br i1 %57, label %middle.block1186, label %vector.body1188, !llvm.loop !51

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit354
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
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
  br i1 %68, label %middle.block1212, label %vector.body1214, !llvm.loop !53

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load1237 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1237, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1234 = add i64 %index1233, 4
  %95 = icmp eq i64 %index.next1234, %n.vec1232
  br i1 %95, label %middle.block1224, label %vector.body1226, !llvm.loop !64

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
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond760.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond760.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 1, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nsw i64 %polly.indvar202, 3
  %98 = mul nsw i64 %polly.indvar202, 3840
  %99 = mul nsw i64 %polly.indvar202, 5120
  %100 = or i64 %97, 1
  %101 = mul nuw nsw i64 %100, 480
  %102 = mul nuw nsw i64 %100, 640
  %103 = or i64 %97, 2
  %104 = mul nuw nsw i64 %103, 480
  %105 = mul nuw nsw i64 %103, 640
  %106 = or i64 %97, 3
  %107 = mul nuw nsw i64 %106, 480
  %108 = mul nuw nsw i64 %106, 640
  %109 = or i64 %97, 4
  %110 = mul nuw nsw i64 %109, 480
  %111 = mul nuw nsw i64 %109, 640
  %112 = or i64 %97, 5
  %113 = mul nuw nsw i64 %112, 480
  %114 = mul nuw nsw i64 %112, 640
  %115 = or i64 %97, 6
  %116 = mul nuw nsw i64 %115, 480
  %117 = mul nuw nsw i64 %115, 640
  %118 = or i64 %97, 7
  %119 = mul nuw nsw i64 %118, 480
  %120 = mul nuw nsw i64 %118, 640
  %121 = add nuw nsw i64 %indvars.iv, 6
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit219.7
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond759.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond759.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit219.7, %polly.loop_header199
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %polly.loop_exit219.7 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit219.7 ], [ 0, %polly.loop_header199 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv754, i64 -44)
  %122 = add nsw i64 %smin, 60
  %123 = shl nsw i64 %polly.indvar208, 4
  br label %polly.loop_header217

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header205
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %124 = add nuw nsw i64 %polly.indvar220, %123
  %125 = shl i64 %124, 3
  %126 = add nuw nsw i64 %125, %98
  %scevgep232 = getelementptr i8, i8* %call2, i64 %126
  %scevgep232233 = bitcast i8* %scevgep232 to double*
  %_p_scalar_234 = load double, double* %scevgep232233, align 8, !alias.scope !63, !noalias !67
  %scevgep238 = getelementptr i8, i8* %call1, i64 %126
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond756.not = icmp eq i64 %polly.indvar_next221, %122
  br i1 %exitcond756.not, label %polly.loop_header217.1, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %127 = mul nuw nsw i64 %polly.indvar226, 480
  %128 = add nuw nsw i64 %127, %125
  %scevgep229 = getelementptr i8, i8* %call1, i64 %128
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112 = fmul fast double %_p_scalar_234, %_p_scalar_231
  %scevgep235 = getelementptr i8, i8* %call2, i64 %128
  %scevgep235236 = bitcast i8* %scevgep235 to double*
  %_p_scalar_237 = load double, double* %scevgep235236, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114 = fmul fast double %_p_scalar_240, %_p_scalar_237
  %129 = shl nuw nsw i64 %polly.indvar226, 3
  %130 = add nuw nsw i64 %129, %99
  %scevgep241 = getelementptr i8, i8* %call, i64 %130
  %scevgep241242 = bitcast i8* %scevgep241 to double*
  %_p_scalar_243 = load double, double* %scevgep241242, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_243
  store double %p_add42.i118, double* %scevgep241242, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header330:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit338
  %indvar1201 = phi i64 [ %indvar.next1202, %polly.loop_exit338 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar333 = phi i64 [ %polly.indvar_next334, %polly.loop_exit338 ], [ 1, %kernel_syr2k.exit ]
  %131 = add i64 %indvar1201, 1
  %132 = mul nuw nsw i64 %polly.indvar333, 640
  %scevgep342 = getelementptr i8, i8* %call, i64 %132
  %min.iters.check1203 = icmp ult i64 %131, 4
  br i1 %min.iters.check1203, label %polly.loop_header336.preheader, label %vector.ph1204

vector.ph1204:                                    ; preds = %polly.loop_header330
  %n.vec1206 = and i64 %131, -4
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1200 ]
  %133 = shl nuw nsw i64 %index1207, 3
  %134 = getelementptr i8, i8* %scevgep342, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1211 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !69, !noalias !71
  %136 = fmul fast <4 x double> %wide.load1211, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %137 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %136, <4 x double>* %137, align 8, !alias.scope !69, !noalias !71
  %index.next1208 = add i64 %index1207, 4
  %138 = icmp eq i64 %index.next1208, %n.vec1206
  br i1 %138, label %middle.block1198, label %vector.body1200, !llvm.loop !74

middle.block1198:                                 ; preds = %vector.body1200
  %cmp.n1210 = icmp eq i64 %131, %n.vec1206
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
  %139 = shl nuw nsw i64 %polly.indvar339, 3
  %scevgep343 = getelementptr i8, i8* %scevgep342, i64 %139
  %scevgep343344 = bitcast i8* %scevgep343 to double*
  %_p_scalar_345 = load double, double* %scevgep343344, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_345, 1.200000e+00
  store double %p_mul.i57, double* %scevgep343344, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond774.not = icmp eq i64 %polly.indvar_next340, %polly.indvar333
  br i1 %exitcond774.not, label %polly.loop_exit338, label %polly.loop_header336, !llvm.loop !75

polly.loop_header346:                             ; preds = %polly.loop_exit338, %polly.loop_exit354
  %indvars.iv762 = phi i64 [ %indvars.iv.next763, %polly.loop_exit354 ], [ 1, %polly.loop_exit338 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 0, %polly.loop_exit338 ]
  %140 = shl nsw i64 %polly.indvar349, 3
  %141 = mul nsw i64 %polly.indvar349, 3840
  %142 = mul nsw i64 %polly.indvar349, 5120
  %143 = or i64 %140, 1
  %144 = mul nuw nsw i64 %143, 480
  %145 = mul nuw nsw i64 %143, 640
  %146 = or i64 %140, 2
  %147 = mul nuw nsw i64 %146, 480
  %148 = mul nuw nsw i64 %146, 640
  %149 = or i64 %140, 3
  %150 = mul nuw nsw i64 %149, 480
  %151 = mul nuw nsw i64 %149, 640
  %152 = or i64 %140, 4
  %153 = mul nuw nsw i64 %152, 480
  %154 = mul nuw nsw i64 %152, 640
  %155 = or i64 %140, 5
  %156 = mul nuw nsw i64 %155, 480
  %157 = mul nuw nsw i64 %155, 640
  %158 = or i64 %140, 6
  %159 = mul nuw nsw i64 %158, 480
  %160 = mul nuw nsw i64 %158, 640
  %161 = or i64 %140, 7
  %162 = mul nuw nsw i64 %161, 480
  %163 = mul nuw nsw i64 %161, 640
  %164 = add nuw nsw i64 %indvars.iv762, 6
  br label %polly.loop_header352

polly.loop_exit354:                               ; preds = %polly.loop_exit366.7
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 8
  %exitcond773.not = icmp eq i64 %polly.indvar_next350, 10
  br i1 %exitcond773.not, label %kernel_syr2k.exit90, label %polly.loop_header346

polly.loop_header352:                             ; preds = %polly.loop_exit366.7, %polly.loop_header346
  %indvars.iv767 = phi i64 [ %indvars.iv.next768, %polly.loop_exit366.7 ], [ 0, %polly.loop_header346 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit366.7 ], [ 0, %polly.loop_header346 ]
  %smin769 = call i64 @llvm.smin.i64(i64 %indvars.iv767, i64 -44)
  %165 = add nsw i64 %smin769, 60
  %166 = shl nsw i64 %polly.indvar355, 4
  br label %polly.loop_header364

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header352
  %polly.indvar367 = phi i64 [ 0, %polly.loop_header352 ], [ %polly.indvar_next368, %polly.loop_exit372 ]
  %167 = add nuw nsw i64 %polly.indvar367, %166
  %168 = shl i64 %167, 3
  %169 = add nuw nsw i64 %168, %141
  %scevgep379 = getelementptr i8, i8* %call2, i64 %169
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !73, !noalias !76
  %scevgep385 = getelementptr i8, i8* %call1, i64 %169
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_header370
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond770.not = icmp eq i64 %polly.indvar_next368, %165
  br i1 %exitcond770.not, label %polly.loop_header364.1, label %polly.loop_header364

polly.loop_header370:                             ; preds = %polly.loop_header370, %polly.loop_header364
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header364 ], [ %polly.indvar_next374, %polly.loop_header370 ]
  %170 = mul nuw nsw i64 %polly.indvar373, 480
  %171 = add nuw nsw i64 %170, %168
  %scevgep376 = getelementptr i8, i8* %call1, i64 %171
  %scevgep376377 = bitcast i8* %scevgep376 to double*
  %_p_scalar_378 = load double, double* %scevgep376377, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73 = fmul fast double %_p_scalar_381, %_p_scalar_378
  %scevgep382 = getelementptr i8, i8* %call2, i64 %171
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75 = fmul fast double %_p_scalar_387, %_p_scalar_384
  %172 = shl nuw nsw i64 %polly.indvar373, 3
  %173 = add nuw nsw i64 %172, %142
  %scevgep388 = getelementptr i8, i8* %call, i64 %173
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_390
  store double %p_add42.i79, double* %scevgep388389, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond766.not = icmp eq i64 %polly.indvar_next374, %indvars.iv762
  br i1 %exitcond766.not, label %polly.loop_exit372, label %polly.loop_header370

polly.loop_header477:                             ; preds = %init_array.exit, %polly.loop_exit485
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit485 ], [ 0, %init_array.exit ]
  %polly.indvar480 = phi i64 [ %polly.indvar_next481, %polly.loop_exit485 ], [ 1, %init_array.exit ]
  %174 = add i64 %indvar, 1
  %175 = mul nuw nsw i64 %polly.indvar480, 640
  %scevgep489 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check1177 = icmp ult i64 %174, 4
  br i1 %min.iters.check1177, label %polly.loop_header483.preheader, label %vector.ph1178

vector.ph1178:                                    ; preds = %polly.loop_header477
  %n.vec1180 = and i64 %174, -4
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1178
  %index1181 = phi i64 [ 0, %vector.ph1178 ], [ %index.next1182, %vector.body1176 ]
  %176 = shl nuw nsw i64 %index1181, 3
  %177 = getelementptr i8, i8* %scevgep489, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load1185 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !78, !noalias !80
  %179 = fmul fast <4 x double> %wide.load1185, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !78, !noalias !80
  %index.next1182 = add i64 %index1181, 4
  %181 = icmp eq i64 %index.next1182, %n.vec1180
  br i1 %181, label %middle.block1174, label %vector.body1176, !llvm.loop !83

middle.block1174:                                 ; preds = %vector.body1176
  %cmp.n1184 = icmp eq i64 %174, %n.vec1180
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
  %182 = shl nuw nsw i64 %polly.indvar486, 3
  %scevgep490 = getelementptr i8, i8* %scevgep489, i64 %182
  %scevgep490491 = bitcast i8* %scevgep490 to double*
  %_p_scalar_492 = load double, double* %scevgep490491, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_492, 1.200000e+00
  store double %p_mul.i, double* %scevgep490491, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next487, %polly.indvar480
  br i1 %exitcond788.not, label %polly.loop_exit485, label %polly.loop_header483, !llvm.loop !84

polly.loop_header493:                             ; preds = %polly.loop_exit485, %polly.loop_exit501
  %indvars.iv776 = phi i64 [ %indvars.iv.next777, %polly.loop_exit501 ], [ 1, %polly.loop_exit485 ]
  %polly.indvar496 = phi i64 [ %polly.indvar_next497, %polly.loop_exit501 ], [ 0, %polly.loop_exit485 ]
  %183 = shl nsw i64 %polly.indvar496, 3
  %184 = mul nsw i64 %polly.indvar496, 3840
  %185 = mul nsw i64 %polly.indvar496, 5120
  %186 = or i64 %183, 1
  %187 = mul nuw nsw i64 %186, 480
  %188 = mul nuw nsw i64 %186, 640
  %189 = or i64 %183, 2
  %190 = mul nuw nsw i64 %189, 480
  %191 = mul nuw nsw i64 %189, 640
  %192 = or i64 %183, 3
  %193 = mul nuw nsw i64 %192, 480
  %194 = mul nuw nsw i64 %192, 640
  %195 = or i64 %183, 4
  %196 = mul nuw nsw i64 %195, 480
  %197 = mul nuw nsw i64 %195, 640
  %198 = or i64 %183, 5
  %199 = mul nuw nsw i64 %198, 480
  %200 = mul nuw nsw i64 %198, 640
  %201 = or i64 %183, 6
  %202 = mul nuw nsw i64 %201, 480
  %203 = mul nuw nsw i64 %201, 640
  %204 = or i64 %183, 7
  %205 = mul nuw nsw i64 %204, 480
  %206 = mul nuw nsw i64 %204, 640
  %207 = add nuw nsw i64 %indvars.iv776, 6
  br label %polly.loop_header499

polly.loop_exit501:                               ; preds = %polly.loop_exit513.7
  %polly.indvar_next497 = add nuw nsw i64 %polly.indvar496, 1
  %indvars.iv.next777 = add nuw nsw i64 %indvars.iv776, 8
  %exitcond787.not = icmp eq i64 %polly.indvar_next497, 10
  br i1 %exitcond787.not, label %kernel_syr2k.exit, label %polly.loop_header493

polly.loop_header499:                             ; preds = %polly.loop_exit513.7, %polly.loop_header493
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit513.7 ], [ 0, %polly.loop_header493 ]
  %polly.indvar502 = phi i64 [ %polly.indvar_next503, %polly.loop_exit513.7 ], [ 0, %polly.loop_header493 ]
  %smin783 = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 -44)
  %208 = add nsw i64 %smin783, 60
  %209 = shl nsw i64 %polly.indvar502, 4
  br label %polly.loop_header511

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.loop_header499
  %polly.indvar514 = phi i64 [ 0, %polly.loop_header499 ], [ %polly.indvar_next515, %polly.loop_exit519 ]
  %210 = add nuw nsw i64 %polly.indvar514, %209
  %211 = shl i64 %210, 3
  %212 = add nuw nsw i64 %211, %184
  %scevgep526 = getelementptr i8, i8* %call2, i64 %212
  %scevgep526527 = bitcast i8* %scevgep526 to double*
  %_p_scalar_528 = load double, double* %scevgep526527, align 8, !alias.scope !82, !noalias !85
  %scevgep532 = getelementptr i8, i8* %call1, i64 %212
  %scevgep532533 = bitcast i8* %scevgep532 to double*
  %_p_scalar_534 = load double, double* %scevgep532533, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_header517
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %exitcond784.not = icmp eq i64 %polly.indvar_next515, %208
  br i1 %exitcond784.not, label %polly.loop_header511.1, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_header517, %polly.loop_header511
  %polly.indvar520 = phi i64 [ 0, %polly.loop_header511 ], [ %polly.indvar_next521, %polly.loop_header517 ]
  %213 = mul nuw nsw i64 %polly.indvar520, 480
  %214 = add nuw nsw i64 %213, %211
  %scevgep523 = getelementptr i8, i8* %call1, i64 %214
  %scevgep523524 = bitcast i8* %scevgep523 to double*
  %_p_scalar_525 = load double, double* %scevgep523524, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i = fmul fast double %_p_scalar_528, %_p_scalar_525
  %scevgep529 = getelementptr i8, i8* %call2, i64 %214
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i = fmul fast double %_p_scalar_534, %_p_scalar_531
  %215 = shl nuw nsw i64 %polly.indvar520, 3
  %216 = add nuw nsw i64 %215, %185
  %scevgep535 = getelementptr i8, i8* %call, i64 %216
  %scevgep535536 = bitcast i8* %scevgep535 to double*
  %_p_scalar_537 = load double, double* %scevgep535536, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_537
  store double %p_add42.i, double* %scevgep535536, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next521, %indvars.iv776
  br i1 %exitcond780.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header676:                             ; preds = %entry, %polly.loop_exit684
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_exit684 ], [ 0, %entry ]
  %217 = mul nuw nsw i64 %polly.indvar679, 640
  %218 = trunc i64 %polly.indvar679 to i32
  %broadcast.splatinsert908 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat909 = shufflevector <4 x i32> %broadcast.splatinsert908, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body898

vector.body898:                                   ; preds = %vector.body898, %polly.loop_header676
  %index900 = phi i64 [ 0, %polly.loop_header676 ], [ %index.next901, %vector.body898 ]
  %vec.ind906 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676 ], [ %vec.ind.next907, %vector.body898 ]
  %219 = mul <4 x i32> %vec.ind906, %broadcast.splat909
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 80, i32 80, i32 80, i32 80>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %224 = shl i64 %index900, 3
  %225 = add nuw nsw i64 %224, %217
  %226 = getelementptr i8, i8* %call, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %223, <4 x double>* %227, align 8, !alias.scope !87, !noalias !89
  %index.next901 = add i64 %index900, 4
  %vec.ind.next907 = add <4 x i32> %vec.ind906, <i32 4, i32 4, i32 4, i32 4>
  %228 = icmp eq i64 %index.next901, 32
  br i1 %228, label %polly.loop_exit684, label %vector.body898, !llvm.loop !92

polly.loop_exit684:                               ; preds = %vector.body898
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next680, 32
  br i1 %exitcond809.not, label %polly.loop_header676.1, label %polly.loop_header676

polly.loop_header703:                             ; preds = %polly.loop_exit684.2.2, %polly.loop_exit711
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit711 ], [ 0, %polly.loop_exit684.2.2 ]
  %229 = mul nuw nsw i64 %polly.indvar706, 480
  %230 = trunc i64 %polly.indvar706 to i32
  %broadcast.splatinsert1022 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1023 = shufflevector <4 x i32> %broadcast.splatinsert1022, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %polly.loop_header703
  %index1014 = phi i64 [ 0, %polly.loop_header703 ], [ %index.next1015, %vector.body1012 ]
  %vec.ind1020 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703 ], [ %vec.ind.next1021, %vector.body1012 ]
  %231 = mul <4 x i32> %vec.ind1020, %broadcast.splat1023
  %232 = add <4 x i32> %231, <i32 2, i32 2, i32 2, i32 2>
  %233 = urem <4 x i32> %232, <i32 60, i32 60, i32 60, i32 60>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %236 = shl i64 %index1014, 3
  %237 = add i64 %236, %229
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %235, <4 x double>* %239, align 8, !alias.scope !91, !noalias !93
  %index.next1015 = add i64 %index1014, 4
  %vec.ind.next1021 = add <4 x i32> %vec.ind1020, <i32 4, i32 4, i32 4, i32 4>
  %240 = icmp eq i64 %index.next1015, 32
  br i1 %240, label %polly.loop_exit711, label %vector.body1012, !llvm.loop !94

polly.loop_exit711:                               ; preds = %vector.body1012
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next707, 32
  br i1 %exitcond800.not, label %polly.loop_header703.1, label %polly.loop_header703

polly.loop_header729:                             ; preds = %polly.loop_exit711.1.2, %polly.loop_exit737
  %polly.indvar732 = phi i64 [ %polly.indvar_next733, %polly.loop_exit737 ], [ 0, %polly.loop_exit711.1.2 ]
  %241 = mul nuw nsw i64 %polly.indvar732, 480
  %242 = trunc i64 %polly.indvar732 to i32
  %broadcast.splatinsert1100 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1101 = shufflevector <4 x i32> %broadcast.splatinsert1100, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1090

vector.body1090:                                  ; preds = %vector.body1090, %polly.loop_header729
  %index1092 = phi i64 [ 0, %polly.loop_header729 ], [ %index.next1093, %vector.body1090 ]
  %vec.ind1098 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729 ], [ %vec.ind.next1099, %vector.body1090 ]
  %243 = mul <4 x i32> %vec.ind1098, %broadcast.splat1101
  %244 = add <4 x i32> %243, <i32 1, i32 1, i32 1, i32 1>
  %245 = urem <4 x i32> %244, <i32 80, i32 80, i32 80, i32 80>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %248 = shl i64 %index1092, 3
  %249 = add i64 %248, %241
  %250 = getelementptr i8, i8* %call1, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %247, <4 x double>* %251, align 8, !alias.scope !90, !noalias !95
  %index.next1093 = add i64 %index1092, 4
  %vec.ind.next1099 = add <4 x i32> %vec.ind1098, <i32 4, i32 4, i32 4, i32 4>
  %252 = icmp eq i64 %index.next1093, 32
  br i1 %252, label %polly.loop_exit737, label %vector.body1090, !llvm.loop !96

polly.loop_exit737:                               ; preds = %vector.body1090
  %polly.indvar_next733 = add nuw nsw i64 %polly.indvar732, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next733, 32
  br i1 %exitcond794.not, label %polly.loop_header729.1, label %polly.loop_header729

polly.loop_header217.1:                           ; preds = %polly.loop_exit225, %polly.loop_exit225.1
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit225.1 ], [ 0, %polly.loop_exit225 ]
  %253 = add nuw nsw i64 %polly.indvar220.1, %123
  %254 = shl i64 %253, 3
  %255 = add nuw nsw i64 %254, %101
  %scevgep232.1 = getelementptr i8, i8* %call2, i64 %255
  %scevgep232233.1 = bitcast i8* %scevgep232.1 to double*
  %_p_scalar_234.1 = load double, double* %scevgep232233.1, align 8, !alias.scope !63, !noalias !67
  %scevgep238.1 = getelementptr i8, i8* %call1, i64 %255
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %256 = mul nuw nsw i64 %polly.indvar226.1, 480
  %257 = add nuw nsw i64 %256, %254
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %257
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1 = fmul fast double %_p_scalar_234.1, %_p_scalar_231.1
  %scevgep235.1 = getelementptr i8, i8* %call2, i64 %257
  %scevgep235236.1 = bitcast i8* %scevgep235.1 to double*
  %_p_scalar_237.1 = load double, double* %scevgep235236.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1 = fmul fast double %_p_scalar_240.1, %_p_scalar_237.1
  %258 = shl nuw nsw i64 %polly.indvar226.1, 3
  %259 = add nuw nsw i64 %258, %102
  %scevgep241.1 = getelementptr i8, i8* %call, i64 %259
  %scevgep241242.1 = bitcast i8* %scevgep241.1 to double*
  %_p_scalar_243.1 = load double, double* %scevgep241242.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_243.1
  store double %p_add42.i118.1, double* %scevgep241242.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond756.1.not = icmp eq i64 %polly.indvar_next221.1, %122
  br i1 %exitcond756.1.not, label %polly.loop_header217.2, label %polly.loop_header217.1

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.1, %polly.loop_exit225.2
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_exit225.2 ], [ 0, %polly.loop_exit225.1 ]
  %260 = add nuw nsw i64 %polly.indvar220.2, %123
  %261 = shl i64 %260, 3
  %262 = add nuw nsw i64 %261, %104
  %scevgep232.2 = getelementptr i8, i8* %call2, i64 %262
  %scevgep232233.2 = bitcast i8* %scevgep232.2 to double*
  %_p_scalar_234.2 = load double, double* %scevgep232233.2, align 8, !alias.scope !63, !noalias !67
  %scevgep238.2 = getelementptr i8, i8* %call1, i64 %262
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_header217.2
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_header217.2 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %263 = mul nuw nsw i64 %polly.indvar226.2, 480
  %264 = add nuw nsw i64 %263, %261
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %264
  %scevgep229230.2 = bitcast i8* %scevgep229.2 to double*
  %_p_scalar_231.2 = load double, double* %scevgep229230.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.2 = fmul fast double %_p_scalar_234.2, %_p_scalar_231.2
  %scevgep235.2 = getelementptr i8, i8* %call2, i64 %264
  %scevgep235236.2 = bitcast i8* %scevgep235.2 to double*
  %_p_scalar_237.2 = load double, double* %scevgep235236.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.2 = fmul fast double %_p_scalar_240.2, %_p_scalar_237.2
  %265 = shl nuw nsw i64 %polly.indvar226.2, 3
  %266 = add nuw nsw i64 %265, %105
  %scevgep241.2 = getelementptr i8, i8* %call, i64 %266
  %scevgep241242.2 = bitcast i8* %scevgep241.2 to double*
  %_p_scalar_243.2 = load double, double* %scevgep241242.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_243.2
  store double %p_add42.i118.2, double* %scevgep241242.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %267 = add nuw nsw i64 %indvars.iv, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.2, %267
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond756.2.not = icmp eq i64 %polly.indvar_next221.2, %122
  br i1 %exitcond756.2.not, label %polly.loop_header217.3, label %polly.loop_header217.2

polly.loop_header217.3:                           ; preds = %polly.loop_exit225.2, %polly.loop_exit225.3
  %polly.indvar220.3 = phi i64 [ %polly.indvar_next221.3, %polly.loop_exit225.3 ], [ 0, %polly.loop_exit225.2 ]
  %268 = add nuw nsw i64 %polly.indvar220.3, %123
  %269 = shl i64 %268, 3
  %270 = add nuw nsw i64 %269, %107
  %scevgep232.3 = getelementptr i8, i8* %call2, i64 %270
  %scevgep232233.3 = bitcast i8* %scevgep232.3 to double*
  %_p_scalar_234.3 = load double, double* %scevgep232233.3, align 8, !alias.scope !63, !noalias !67
  %scevgep238.3 = getelementptr i8, i8* %call1, i64 %270
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_header217.3
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_header217.3 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %271 = mul nuw nsw i64 %polly.indvar226.3, 480
  %272 = add nuw nsw i64 %271, %269
  %scevgep229.3 = getelementptr i8, i8* %call1, i64 %272
  %scevgep229230.3 = bitcast i8* %scevgep229.3 to double*
  %_p_scalar_231.3 = load double, double* %scevgep229230.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.3 = fmul fast double %_p_scalar_234.3, %_p_scalar_231.3
  %scevgep235.3 = getelementptr i8, i8* %call2, i64 %272
  %scevgep235236.3 = bitcast i8* %scevgep235.3 to double*
  %_p_scalar_237.3 = load double, double* %scevgep235236.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.3 = fmul fast double %_p_scalar_240.3, %_p_scalar_237.3
  %273 = shl nuw nsw i64 %polly.indvar226.3, 3
  %274 = add nuw nsw i64 %273, %108
  %scevgep241.3 = getelementptr i8, i8* %call, i64 %274
  %scevgep241242.3 = bitcast i8* %scevgep241.3 to double*
  %_p_scalar_243.3 = load double, double* %scevgep241242.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_243.3
  store double %p_add42.i118.3, double* %scevgep241242.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %275 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.3.not = icmp eq i64 %polly.indvar226.3, %275
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond756.3.not = icmp eq i64 %polly.indvar_next221.3, %122
  br i1 %exitcond756.3.not, label %polly.loop_header217.4, label %polly.loop_header217.3

polly.loop_header217.4:                           ; preds = %polly.loop_exit225.3, %polly.loop_exit225.4
  %polly.indvar220.4 = phi i64 [ %polly.indvar_next221.4, %polly.loop_exit225.4 ], [ 0, %polly.loop_exit225.3 ]
  %276 = add nuw nsw i64 %polly.indvar220.4, %123
  %277 = shl i64 %276, 3
  %278 = add nuw nsw i64 %277, %110
  %scevgep232.4 = getelementptr i8, i8* %call2, i64 %278
  %scevgep232233.4 = bitcast i8* %scevgep232.4 to double*
  %_p_scalar_234.4 = load double, double* %scevgep232233.4, align 8, !alias.scope !63, !noalias !67
  %scevgep238.4 = getelementptr i8, i8* %call1, i64 %278
  %scevgep238239.4 = bitcast i8* %scevgep238.4 to double*
  %_p_scalar_240.4 = load double, double* %scevgep238239.4, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.4

polly.loop_header223.4:                           ; preds = %polly.loop_header223.4, %polly.loop_header217.4
  %polly.indvar226.4 = phi i64 [ 0, %polly.loop_header217.4 ], [ %polly.indvar_next227.4, %polly.loop_header223.4 ]
  %279 = mul nuw nsw i64 %polly.indvar226.4, 480
  %280 = add nuw nsw i64 %279, %277
  %scevgep229.4 = getelementptr i8, i8* %call1, i64 %280
  %scevgep229230.4 = bitcast i8* %scevgep229.4 to double*
  %_p_scalar_231.4 = load double, double* %scevgep229230.4, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.4 = fmul fast double %_p_scalar_234.4, %_p_scalar_231.4
  %scevgep235.4 = getelementptr i8, i8* %call2, i64 %280
  %scevgep235236.4 = bitcast i8* %scevgep235.4 to double*
  %_p_scalar_237.4 = load double, double* %scevgep235236.4, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.4 = fmul fast double %_p_scalar_240.4, %_p_scalar_237.4
  %281 = shl nuw nsw i64 %polly.indvar226.4, 3
  %282 = add nuw nsw i64 %281, %111
  %scevgep241.4 = getelementptr i8, i8* %call, i64 %282
  %scevgep241242.4 = bitcast i8* %scevgep241.4 to double*
  %_p_scalar_243.4 = load double, double* %scevgep241242.4, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_243.4
  store double %p_add42.i118.4, double* %scevgep241242.4, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.4 = add nuw nsw i64 %polly.indvar226.4, 1
  %283 = add nuw nsw i64 %indvars.iv, 3
  %exitcond.4.not = icmp eq i64 %polly.indvar226.4, %283
  br i1 %exitcond.4.not, label %polly.loop_exit225.4, label %polly.loop_header223.4

polly.loop_exit225.4:                             ; preds = %polly.loop_header223.4
  %polly.indvar_next221.4 = add nuw nsw i64 %polly.indvar220.4, 1
  %exitcond756.4.not = icmp eq i64 %polly.indvar_next221.4, %122
  br i1 %exitcond756.4.not, label %polly.loop_header217.5, label %polly.loop_header217.4

polly.loop_header217.5:                           ; preds = %polly.loop_exit225.4, %polly.loop_exit225.5
  %polly.indvar220.5 = phi i64 [ %polly.indvar_next221.5, %polly.loop_exit225.5 ], [ 0, %polly.loop_exit225.4 ]
  %284 = add nuw nsw i64 %polly.indvar220.5, %123
  %285 = shl i64 %284, 3
  %286 = add nuw nsw i64 %285, %113
  %scevgep232.5 = getelementptr i8, i8* %call2, i64 %286
  %scevgep232233.5 = bitcast i8* %scevgep232.5 to double*
  %_p_scalar_234.5 = load double, double* %scevgep232233.5, align 8, !alias.scope !63, !noalias !67
  %scevgep238.5 = getelementptr i8, i8* %call1, i64 %286
  %scevgep238239.5 = bitcast i8* %scevgep238.5 to double*
  %_p_scalar_240.5 = load double, double* %scevgep238239.5, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.5

polly.loop_header223.5:                           ; preds = %polly.loop_header223.5, %polly.loop_header217.5
  %polly.indvar226.5 = phi i64 [ 0, %polly.loop_header217.5 ], [ %polly.indvar_next227.5, %polly.loop_header223.5 ]
  %287 = mul nuw nsw i64 %polly.indvar226.5, 480
  %288 = add nuw nsw i64 %287, %285
  %scevgep229.5 = getelementptr i8, i8* %call1, i64 %288
  %scevgep229230.5 = bitcast i8* %scevgep229.5 to double*
  %_p_scalar_231.5 = load double, double* %scevgep229230.5, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.5 = fmul fast double %_p_scalar_234.5, %_p_scalar_231.5
  %scevgep235.5 = getelementptr i8, i8* %call2, i64 %288
  %scevgep235236.5 = bitcast i8* %scevgep235.5 to double*
  %_p_scalar_237.5 = load double, double* %scevgep235236.5, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.5 = fmul fast double %_p_scalar_240.5, %_p_scalar_237.5
  %289 = shl nuw nsw i64 %polly.indvar226.5, 3
  %290 = add nuw nsw i64 %289, %114
  %scevgep241.5 = getelementptr i8, i8* %call, i64 %290
  %scevgep241242.5 = bitcast i8* %scevgep241.5 to double*
  %_p_scalar_243.5 = load double, double* %scevgep241242.5, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_243.5
  store double %p_add42.i118.5, double* %scevgep241242.5, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.5 = add nuw nsw i64 %polly.indvar226.5, 1
  %291 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.5.not = icmp eq i64 %polly.indvar226.5, %291
  br i1 %exitcond.5.not, label %polly.loop_exit225.5, label %polly.loop_header223.5

polly.loop_exit225.5:                             ; preds = %polly.loop_header223.5
  %polly.indvar_next221.5 = add nuw nsw i64 %polly.indvar220.5, 1
  %exitcond756.5.not = icmp eq i64 %polly.indvar_next221.5, %122
  br i1 %exitcond756.5.not, label %polly.loop_header217.6, label %polly.loop_header217.5

polly.loop_header217.6:                           ; preds = %polly.loop_exit225.5, %polly.loop_exit225.6
  %polly.indvar220.6 = phi i64 [ %polly.indvar_next221.6, %polly.loop_exit225.6 ], [ 0, %polly.loop_exit225.5 ]
  %292 = add nuw nsw i64 %polly.indvar220.6, %123
  %293 = shl i64 %292, 3
  %294 = add nuw nsw i64 %293, %116
  %scevgep232.6 = getelementptr i8, i8* %call2, i64 %294
  %scevgep232233.6 = bitcast i8* %scevgep232.6 to double*
  %_p_scalar_234.6 = load double, double* %scevgep232233.6, align 8, !alias.scope !63, !noalias !67
  %scevgep238.6 = getelementptr i8, i8* %call1, i64 %294
  %scevgep238239.6 = bitcast i8* %scevgep238.6 to double*
  %_p_scalar_240.6 = load double, double* %scevgep238239.6, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.6

polly.loop_header223.6:                           ; preds = %polly.loop_header223.6, %polly.loop_header217.6
  %polly.indvar226.6 = phi i64 [ 0, %polly.loop_header217.6 ], [ %polly.indvar_next227.6, %polly.loop_header223.6 ]
  %295 = mul nuw nsw i64 %polly.indvar226.6, 480
  %296 = add nuw nsw i64 %295, %293
  %scevgep229.6 = getelementptr i8, i8* %call1, i64 %296
  %scevgep229230.6 = bitcast i8* %scevgep229.6 to double*
  %_p_scalar_231.6 = load double, double* %scevgep229230.6, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.6 = fmul fast double %_p_scalar_234.6, %_p_scalar_231.6
  %scevgep235.6 = getelementptr i8, i8* %call2, i64 %296
  %scevgep235236.6 = bitcast i8* %scevgep235.6 to double*
  %_p_scalar_237.6 = load double, double* %scevgep235236.6, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.6 = fmul fast double %_p_scalar_240.6, %_p_scalar_237.6
  %297 = shl nuw nsw i64 %polly.indvar226.6, 3
  %298 = add nuw nsw i64 %297, %117
  %scevgep241.6 = getelementptr i8, i8* %call, i64 %298
  %scevgep241242.6 = bitcast i8* %scevgep241.6 to double*
  %_p_scalar_243.6 = load double, double* %scevgep241242.6, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_243.6
  store double %p_add42.i118.6, double* %scevgep241242.6, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.6 = add nuw nsw i64 %polly.indvar226.6, 1
  %299 = add nuw nsw i64 %indvars.iv, 5
  %exitcond.6.not = icmp eq i64 %polly.indvar226.6, %299
  br i1 %exitcond.6.not, label %polly.loop_exit225.6, label %polly.loop_header223.6

polly.loop_exit225.6:                             ; preds = %polly.loop_header223.6
  %polly.indvar_next221.6 = add nuw nsw i64 %polly.indvar220.6, 1
  %exitcond756.6.not = icmp eq i64 %polly.indvar_next221.6, %122
  br i1 %exitcond756.6.not, label %polly.loop_header217.7, label %polly.loop_header217.6

polly.loop_header217.7:                           ; preds = %polly.loop_exit225.6, %polly.loop_exit225.7
  %polly.indvar220.7 = phi i64 [ %polly.indvar_next221.7, %polly.loop_exit225.7 ], [ 0, %polly.loop_exit225.6 ]
  %300 = add nuw nsw i64 %polly.indvar220.7, %123
  %301 = shl i64 %300, 3
  %302 = add nuw nsw i64 %301, %119
  %scevgep232.7 = getelementptr i8, i8* %call2, i64 %302
  %scevgep232233.7 = bitcast i8* %scevgep232.7 to double*
  %_p_scalar_234.7 = load double, double* %scevgep232233.7, align 8, !alias.scope !63, !noalias !67
  %scevgep238.7 = getelementptr i8, i8* %call1, i64 %302
  %scevgep238239.7 = bitcast i8* %scevgep238.7 to double*
  %_p_scalar_240.7 = load double, double* %scevgep238239.7, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.7

polly.loop_header223.7:                           ; preds = %polly.loop_header223.7, %polly.loop_header217.7
  %polly.indvar226.7 = phi i64 [ 0, %polly.loop_header217.7 ], [ %polly.indvar_next227.7, %polly.loop_header223.7 ]
  %303 = mul nuw nsw i64 %polly.indvar226.7, 480
  %304 = add nuw nsw i64 %303, %301
  %scevgep229.7 = getelementptr i8, i8* %call1, i64 %304
  %scevgep229230.7 = bitcast i8* %scevgep229.7 to double*
  %_p_scalar_231.7 = load double, double* %scevgep229230.7, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.7 = fmul fast double %_p_scalar_234.7, %_p_scalar_231.7
  %scevgep235.7 = getelementptr i8, i8* %call2, i64 %304
  %scevgep235236.7 = bitcast i8* %scevgep235.7 to double*
  %_p_scalar_237.7 = load double, double* %scevgep235236.7, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.7 = fmul fast double %_p_scalar_240.7, %_p_scalar_237.7
  %305 = shl nuw nsw i64 %polly.indvar226.7, 3
  %306 = add nuw nsw i64 %305, %120
  %scevgep241.7 = getelementptr i8, i8* %call, i64 %306
  %scevgep241242.7 = bitcast i8* %scevgep241.7 to double*
  %_p_scalar_243.7 = load double, double* %scevgep241242.7, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_243.7
  store double %p_add42.i118.7, double* %scevgep241242.7, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.7 = add nuw nsw i64 %polly.indvar226.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar226.7, %121
  br i1 %exitcond.7.not, label %polly.loop_exit225.7, label %polly.loop_header223.7

polly.loop_exit225.7:                             ; preds = %polly.loop_header223.7
  %polly.indvar_next221.7 = add nuw nsw i64 %polly.indvar220.7, 1
  %exitcond756.7.not = icmp eq i64 %polly.indvar_next221.7, %122
  br i1 %exitcond756.7.not, label %polly.loop_exit219.7, label %polly.loop_header217.7

polly.loop_exit219.7:                             ; preds = %polly.loop_exit225.7
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next755 = add nsw i64 %indvars.iv754, -16
  %exitcond758.not = icmp eq i64 %polly.indvar_next209, 4
  br i1 %exitcond758.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header364.1:                           ; preds = %polly.loop_exit372, %polly.loop_exit372.1
  %polly.indvar367.1 = phi i64 [ %polly.indvar_next368.1, %polly.loop_exit372.1 ], [ 0, %polly.loop_exit372 ]
  %307 = add nuw nsw i64 %polly.indvar367.1, %166
  %308 = shl i64 %307, 3
  %309 = add nuw nsw i64 %308, %144
  %scevgep379.1 = getelementptr i8, i8* %call2, i64 %309
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !73, !noalias !76
  %scevgep385.1 = getelementptr i8, i8* %call1, i64 %309
  %scevgep385386.1 = bitcast i8* %scevgep385.1 to double*
  %_p_scalar_387.1 = load double, double* %scevgep385386.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.1

polly.loop_header370.1:                           ; preds = %polly.loop_header370.1, %polly.loop_header364.1
  %polly.indvar373.1 = phi i64 [ 0, %polly.loop_header364.1 ], [ %polly.indvar_next374.1, %polly.loop_header370.1 ]
  %310 = mul nuw nsw i64 %polly.indvar373.1, 480
  %311 = add nuw nsw i64 %310, %308
  %scevgep376.1 = getelementptr i8, i8* %call1, i64 %311
  %scevgep376377.1 = bitcast i8* %scevgep376.1 to double*
  %_p_scalar_378.1 = load double, double* %scevgep376377.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1 = fmul fast double %_p_scalar_381.1, %_p_scalar_378.1
  %scevgep382.1 = getelementptr i8, i8* %call2, i64 %311
  %scevgep382383.1 = bitcast i8* %scevgep382.1 to double*
  %_p_scalar_384.1 = load double, double* %scevgep382383.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1 = fmul fast double %_p_scalar_387.1, %_p_scalar_384.1
  %312 = shl nuw nsw i64 %polly.indvar373.1, 3
  %313 = add nuw nsw i64 %312, %145
  %scevgep388.1 = getelementptr i8, i8* %call, i64 %313
  %scevgep388389.1 = bitcast i8* %scevgep388.1 to double*
  %_p_scalar_390.1 = load double, double* %scevgep388389.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_390.1
  store double %p_add42.i79.1, double* %scevgep388389.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.1 = add nuw nsw i64 %polly.indvar373.1, 1
  %exitcond766.1.not = icmp eq i64 %polly.indvar373.1, %indvars.iv762
  br i1 %exitcond766.1.not, label %polly.loop_exit372.1, label %polly.loop_header370.1

polly.loop_exit372.1:                             ; preds = %polly.loop_header370.1
  %polly.indvar_next368.1 = add nuw nsw i64 %polly.indvar367.1, 1
  %exitcond770.1.not = icmp eq i64 %polly.indvar_next368.1, %165
  br i1 %exitcond770.1.not, label %polly.loop_header364.2, label %polly.loop_header364.1

polly.loop_header364.2:                           ; preds = %polly.loop_exit372.1, %polly.loop_exit372.2
  %polly.indvar367.2 = phi i64 [ %polly.indvar_next368.2, %polly.loop_exit372.2 ], [ 0, %polly.loop_exit372.1 ]
  %314 = add nuw nsw i64 %polly.indvar367.2, %166
  %315 = shl i64 %314, 3
  %316 = add nuw nsw i64 %315, %147
  %scevgep379.2 = getelementptr i8, i8* %call2, i64 %316
  %scevgep379380.2 = bitcast i8* %scevgep379.2 to double*
  %_p_scalar_381.2 = load double, double* %scevgep379380.2, align 8, !alias.scope !73, !noalias !76
  %scevgep385.2 = getelementptr i8, i8* %call1, i64 %316
  %scevgep385386.2 = bitcast i8* %scevgep385.2 to double*
  %_p_scalar_387.2 = load double, double* %scevgep385386.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.2

polly.loop_header370.2:                           ; preds = %polly.loop_header370.2, %polly.loop_header364.2
  %polly.indvar373.2 = phi i64 [ 0, %polly.loop_header364.2 ], [ %polly.indvar_next374.2, %polly.loop_header370.2 ]
  %317 = mul nuw nsw i64 %polly.indvar373.2, 480
  %318 = add nuw nsw i64 %317, %315
  %scevgep376.2 = getelementptr i8, i8* %call1, i64 %318
  %scevgep376377.2 = bitcast i8* %scevgep376.2 to double*
  %_p_scalar_378.2 = load double, double* %scevgep376377.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.2 = fmul fast double %_p_scalar_381.2, %_p_scalar_378.2
  %scevgep382.2 = getelementptr i8, i8* %call2, i64 %318
  %scevgep382383.2 = bitcast i8* %scevgep382.2 to double*
  %_p_scalar_384.2 = load double, double* %scevgep382383.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.2 = fmul fast double %_p_scalar_387.2, %_p_scalar_384.2
  %319 = shl nuw nsw i64 %polly.indvar373.2, 3
  %320 = add nuw nsw i64 %319, %148
  %scevgep388.2 = getelementptr i8, i8* %call, i64 %320
  %scevgep388389.2 = bitcast i8* %scevgep388.2 to double*
  %_p_scalar_390.2 = load double, double* %scevgep388389.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_390.2
  store double %p_add42.i79.2, double* %scevgep388389.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.2 = add nuw nsw i64 %polly.indvar373.2, 1
  %321 = add nuw nsw i64 %indvars.iv762, 1
  %exitcond766.2.not = icmp eq i64 %polly.indvar373.2, %321
  br i1 %exitcond766.2.not, label %polly.loop_exit372.2, label %polly.loop_header370.2

polly.loop_exit372.2:                             ; preds = %polly.loop_header370.2
  %polly.indvar_next368.2 = add nuw nsw i64 %polly.indvar367.2, 1
  %exitcond770.2.not = icmp eq i64 %polly.indvar_next368.2, %165
  br i1 %exitcond770.2.not, label %polly.loop_header364.3, label %polly.loop_header364.2

polly.loop_header364.3:                           ; preds = %polly.loop_exit372.2, %polly.loop_exit372.3
  %polly.indvar367.3 = phi i64 [ %polly.indvar_next368.3, %polly.loop_exit372.3 ], [ 0, %polly.loop_exit372.2 ]
  %322 = add nuw nsw i64 %polly.indvar367.3, %166
  %323 = shl i64 %322, 3
  %324 = add nuw nsw i64 %323, %150
  %scevgep379.3 = getelementptr i8, i8* %call2, i64 %324
  %scevgep379380.3 = bitcast i8* %scevgep379.3 to double*
  %_p_scalar_381.3 = load double, double* %scevgep379380.3, align 8, !alias.scope !73, !noalias !76
  %scevgep385.3 = getelementptr i8, i8* %call1, i64 %324
  %scevgep385386.3 = bitcast i8* %scevgep385.3 to double*
  %_p_scalar_387.3 = load double, double* %scevgep385386.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.3

polly.loop_header370.3:                           ; preds = %polly.loop_header370.3, %polly.loop_header364.3
  %polly.indvar373.3 = phi i64 [ 0, %polly.loop_header364.3 ], [ %polly.indvar_next374.3, %polly.loop_header370.3 ]
  %325 = mul nuw nsw i64 %polly.indvar373.3, 480
  %326 = add nuw nsw i64 %325, %323
  %scevgep376.3 = getelementptr i8, i8* %call1, i64 %326
  %scevgep376377.3 = bitcast i8* %scevgep376.3 to double*
  %_p_scalar_378.3 = load double, double* %scevgep376377.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.3 = fmul fast double %_p_scalar_381.3, %_p_scalar_378.3
  %scevgep382.3 = getelementptr i8, i8* %call2, i64 %326
  %scevgep382383.3 = bitcast i8* %scevgep382.3 to double*
  %_p_scalar_384.3 = load double, double* %scevgep382383.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.3 = fmul fast double %_p_scalar_387.3, %_p_scalar_384.3
  %327 = shl nuw nsw i64 %polly.indvar373.3, 3
  %328 = add nuw nsw i64 %327, %151
  %scevgep388.3 = getelementptr i8, i8* %call, i64 %328
  %scevgep388389.3 = bitcast i8* %scevgep388.3 to double*
  %_p_scalar_390.3 = load double, double* %scevgep388389.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_390.3
  store double %p_add42.i79.3, double* %scevgep388389.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.3 = add nuw nsw i64 %polly.indvar373.3, 1
  %329 = add nuw nsw i64 %indvars.iv762, 2
  %exitcond766.3.not = icmp eq i64 %polly.indvar373.3, %329
  br i1 %exitcond766.3.not, label %polly.loop_exit372.3, label %polly.loop_header370.3

polly.loop_exit372.3:                             ; preds = %polly.loop_header370.3
  %polly.indvar_next368.3 = add nuw nsw i64 %polly.indvar367.3, 1
  %exitcond770.3.not = icmp eq i64 %polly.indvar_next368.3, %165
  br i1 %exitcond770.3.not, label %polly.loop_header364.4, label %polly.loop_header364.3

polly.loop_header364.4:                           ; preds = %polly.loop_exit372.3, %polly.loop_exit372.4
  %polly.indvar367.4 = phi i64 [ %polly.indvar_next368.4, %polly.loop_exit372.4 ], [ 0, %polly.loop_exit372.3 ]
  %330 = add nuw nsw i64 %polly.indvar367.4, %166
  %331 = shl i64 %330, 3
  %332 = add nuw nsw i64 %331, %153
  %scevgep379.4 = getelementptr i8, i8* %call2, i64 %332
  %scevgep379380.4 = bitcast i8* %scevgep379.4 to double*
  %_p_scalar_381.4 = load double, double* %scevgep379380.4, align 8, !alias.scope !73, !noalias !76
  %scevgep385.4 = getelementptr i8, i8* %call1, i64 %332
  %scevgep385386.4 = bitcast i8* %scevgep385.4 to double*
  %_p_scalar_387.4 = load double, double* %scevgep385386.4, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.4

polly.loop_header370.4:                           ; preds = %polly.loop_header370.4, %polly.loop_header364.4
  %polly.indvar373.4 = phi i64 [ 0, %polly.loop_header364.4 ], [ %polly.indvar_next374.4, %polly.loop_header370.4 ]
  %333 = mul nuw nsw i64 %polly.indvar373.4, 480
  %334 = add nuw nsw i64 %333, %331
  %scevgep376.4 = getelementptr i8, i8* %call1, i64 %334
  %scevgep376377.4 = bitcast i8* %scevgep376.4 to double*
  %_p_scalar_378.4 = load double, double* %scevgep376377.4, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.4 = fmul fast double %_p_scalar_381.4, %_p_scalar_378.4
  %scevgep382.4 = getelementptr i8, i8* %call2, i64 %334
  %scevgep382383.4 = bitcast i8* %scevgep382.4 to double*
  %_p_scalar_384.4 = load double, double* %scevgep382383.4, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.4 = fmul fast double %_p_scalar_387.4, %_p_scalar_384.4
  %335 = shl nuw nsw i64 %polly.indvar373.4, 3
  %336 = add nuw nsw i64 %335, %154
  %scevgep388.4 = getelementptr i8, i8* %call, i64 %336
  %scevgep388389.4 = bitcast i8* %scevgep388.4 to double*
  %_p_scalar_390.4 = load double, double* %scevgep388389.4, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_390.4
  store double %p_add42.i79.4, double* %scevgep388389.4, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.4 = add nuw nsw i64 %polly.indvar373.4, 1
  %337 = add nuw nsw i64 %indvars.iv762, 3
  %exitcond766.4.not = icmp eq i64 %polly.indvar373.4, %337
  br i1 %exitcond766.4.not, label %polly.loop_exit372.4, label %polly.loop_header370.4

polly.loop_exit372.4:                             ; preds = %polly.loop_header370.4
  %polly.indvar_next368.4 = add nuw nsw i64 %polly.indvar367.4, 1
  %exitcond770.4.not = icmp eq i64 %polly.indvar_next368.4, %165
  br i1 %exitcond770.4.not, label %polly.loop_header364.5, label %polly.loop_header364.4

polly.loop_header364.5:                           ; preds = %polly.loop_exit372.4, %polly.loop_exit372.5
  %polly.indvar367.5 = phi i64 [ %polly.indvar_next368.5, %polly.loop_exit372.5 ], [ 0, %polly.loop_exit372.4 ]
  %338 = add nuw nsw i64 %polly.indvar367.5, %166
  %339 = shl i64 %338, 3
  %340 = add nuw nsw i64 %339, %156
  %scevgep379.5 = getelementptr i8, i8* %call2, i64 %340
  %scevgep379380.5 = bitcast i8* %scevgep379.5 to double*
  %_p_scalar_381.5 = load double, double* %scevgep379380.5, align 8, !alias.scope !73, !noalias !76
  %scevgep385.5 = getelementptr i8, i8* %call1, i64 %340
  %scevgep385386.5 = bitcast i8* %scevgep385.5 to double*
  %_p_scalar_387.5 = load double, double* %scevgep385386.5, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.5

polly.loop_header370.5:                           ; preds = %polly.loop_header370.5, %polly.loop_header364.5
  %polly.indvar373.5 = phi i64 [ 0, %polly.loop_header364.5 ], [ %polly.indvar_next374.5, %polly.loop_header370.5 ]
  %341 = mul nuw nsw i64 %polly.indvar373.5, 480
  %342 = add nuw nsw i64 %341, %339
  %scevgep376.5 = getelementptr i8, i8* %call1, i64 %342
  %scevgep376377.5 = bitcast i8* %scevgep376.5 to double*
  %_p_scalar_378.5 = load double, double* %scevgep376377.5, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.5 = fmul fast double %_p_scalar_381.5, %_p_scalar_378.5
  %scevgep382.5 = getelementptr i8, i8* %call2, i64 %342
  %scevgep382383.5 = bitcast i8* %scevgep382.5 to double*
  %_p_scalar_384.5 = load double, double* %scevgep382383.5, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.5 = fmul fast double %_p_scalar_387.5, %_p_scalar_384.5
  %343 = shl nuw nsw i64 %polly.indvar373.5, 3
  %344 = add nuw nsw i64 %343, %157
  %scevgep388.5 = getelementptr i8, i8* %call, i64 %344
  %scevgep388389.5 = bitcast i8* %scevgep388.5 to double*
  %_p_scalar_390.5 = load double, double* %scevgep388389.5, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_390.5
  store double %p_add42.i79.5, double* %scevgep388389.5, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.5 = add nuw nsw i64 %polly.indvar373.5, 1
  %345 = add nuw nsw i64 %indvars.iv762, 4
  %exitcond766.5.not = icmp eq i64 %polly.indvar373.5, %345
  br i1 %exitcond766.5.not, label %polly.loop_exit372.5, label %polly.loop_header370.5

polly.loop_exit372.5:                             ; preds = %polly.loop_header370.5
  %polly.indvar_next368.5 = add nuw nsw i64 %polly.indvar367.5, 1
  %exitcond770.5.not = icmp eq i64 %polly.indvar_next368.5, %165
  br i1 %exitcond770.5.not, label %polly.loop_header364.6, label %polly.loop_header364.5

polly.loop_header364.6:                           ; preds = %polly.loop_exit372.5, %polly.loop_exit372.6
  %polly.indvar367.6 = phi i64 [ %polly.indvar_next368.6, %polly.loop_exit372.6 ], [ 0, %polly.loop_exit372.5 ]
  %346 = add nuw nsw i64 %polly.indvar367.6, %166
  %347 = shl i64 %346, 3
  %348 = add nuw nsw i64 %347, %159
  %scevgep379.6 = getelementptr i8, i8* %call2, i64 %348
  %scevgep379380.6 = bitcast i8* %scevgep379.6 to double*
  %_p_scalar_381.6 = load double, double* %scevgep379380.6, align 8, !alias.scope !73, !noalias !76
  %scevgep385.6 = getelementptr i8, i8* %call1, i64 %348
  %scevgep385386.6 = bitcast i8* %scevgep385.6 to double*
  %_p_scalar_387.6 = load double, double* %scevgep385386.6, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.6

polly.loop_header370.6:                           ; preds = %polly.loop_header370.6, %polly.loop_header364.6
  %polly.indvar373.6 = phi i64 [ 0, %polly.loop_header364.6 ], [ %polly.indvar_next374.6, %polly.loop_header370.6 ]
  %349 = mul nuw nsw i64 %polly.indvar373.6, 480
  %350 = add nuw nsw i64 %349, %347
  %scevgep376.6 = getelementptr i8, i8* %call1, i64 %350
  %scevgep376377.6 = bitcast i8* %scevgep376.6 to double*
  %_p_scalar_378.6 = load double, double* %scevgep376377.6, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.6 = fmul fast double %_p_scalar_381.6, %_p_scalar_378.6
  %scevgep382.6 = getelementptr i8, i8* %call2, i64 %350
  %scevgep382383.6 = bitcast i8* %scevgep382.6 to double*
  %_p_scalar_384.6 = load double, double* %scevgep382383.6, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.6 = fmul fast double %_p_scalar_387.6, %_p_scalar_384.6
  %351 = shl nuw nsw i64 %polly.indvar373.6, 3
  %352 = add nuw nsw i64 %351, %160
  %scevgep388.6 = getelementptr i8, i8* %call, i64 %352
  %scevgep388389.6 = bitcast i8* %scevgep388.6 to double*
  %_p_scalar_390.6 = load double, double* %scevgep388389.6, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_390.6
  store double %p_add42.i79.6, double* %scevgep388389.6, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.6 = add nuw nsw i64 %polly.indvar373.6, 1
  %353 = add nuw nsw i64 %indvars.iv762, 5
  %exitcond766.6.not = icmp eq i64 %polly.indvar373.6, %353
  br i1 %exitcond766.6.not, label %polly.loop_exit372.6, label %polly.loop_header370.6

polly.loop_exit372.6:                             ; preds = %polly.loop_header370.6
  %polly.indvar_next368.6 = add nuw nsw i64 %polly.indvar367.6, 1
  %exitcond770.6.not = icmp eq i64 %polly.indvar_next368.6, %165
  br i1 %exitcond770.6.not, label %polly.loop_header364.7, label %polly.loop_header364.6

polly.loop_header364.7:                           ; preds = %polly.loop_exit372.6, %polly.loop_exit372.7
  %polly.indvar367.7 = phi i64 [ %polly.indvar_next368.7, %polly.loop_exit372.7 ], [ 0, %polly.loop_exit372.6 ]
  %354 = add nuw nsw i64 %polly.indvar367.7, %166
  %355 = shl i64 %354, 3
  %356 = add nuw nsw i64 %355, %162
  %scevgep379.7 = getelementptr i8, i8* %call2, i64 %356
  %scevgep379380.7 = bitcast i8* %scevgep379.7 to double*
  %_p_scalar_381.7 = load double, double* %scevgep379380.7, align 8, !alias.scope !73, !noalias !76
  %scevgep385.7 = getelementptr i8, i8* %call1, i64 %356
  %scevgep385386.7 = bitcast i8* %scevgep385.7 to double*
  %_p_scalar_387.7 = load double, double* %scevgep385386.7, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.7

polly.loop_header370.7:                           ; preds = %polly.loop_header370.7, %polly.loop_header364.7
  %polly.indvar373.7 = phi i64 [ 0, %polly.loop_header364.7 ], [ %polly.indvar_next374.7, %polly.loop_header370.7 ]
  %357 = mul nuw nsw i64 %polly.indvar373.7, 480
  %358 = add nuw nsw i64 %357, %355
  %scevgep376.7 = getelementptr i8, i8* %call1, i64 %358
  %scevgep376377.7 = bitcast i8* %scevgep376.7 to double*
  %_p_scalar_378.7 = load double, double* %scevgep376377.7, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.7 = fmul fast double %_p_scalar_381.7, %_p_scalar_378.7
  %scevgep382.7 = getelementptr i8, i8* %call2, i64 %358
  %scevgep382383.7 = bitcast i8* %scevgep382.7 to double*
  %_p_scalar_384.7 = load double, double* %scevgep382383.7, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.7 = fmul fast double %_p_scalar_387.7, %_p_scalar_384.7
  %359 = shl nuw nsw i64 %polly.indvar373.7, 3
  %360 = add nuw nsw i64 %359, %163
  %scevgep388.7 = getelementptr i8, i8* %call, i64 %360
  %scevgep388389.7 = bitcast i8* %scevgep388.7 to double*
  %_p_scalar_390.7 = load double, double* %scevgep388389.7, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_390.7
  store double %p_add42.i79.7, double* %scevgep388389.7, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.7 = add nuw nsw i64 %polly.indvar373.7, 1
  %exitcond766.7.not = icmp eq i64 %polly.indvar373.7, %164
  br i1 %exitcond766.7.not, label %polly.loop_exit372.7, label %polly.loop_header370.7

polly.loop_exit372.7:                             ; preds = %polly.loop_header370.7
  %polly.indvar_next368.7 = add nuw nsw i64 %polly.indvar367.7, 1
  %exitcond770.7.not = icmp eq i64 %polly.indvar_next368.7, %165
  br i1 %exitcond770.7.not, label %polly.loop_exit366.7, label %polly.loop_header364.7

polly.loop_exit366.7:                             ; preds = %polly.loop_exit372.7
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next768 = add nsw i64 %indvars.iv767, -16
  %exitcond772.not = icmp eq i64 %polly.indvar_next356, 4
  br i1 %exitcond772.not, label %polly.loop_exit354, label %polly.loop_header352

polly.loop_header511.1:                           ; preds = %polly.loop_exit519, %polly.loop_exit519.1
  %polly.indvar514.1 = phi i64 [ %polly.indvar_next515.1, %polly.loop_exit519.1 ], [ 0, %polly.loop_exit519 ]
  %361 = add nuw nsw i64 %polly.indvar514.1, %209
  %362 = shl i64 %361, 3
  %363 = add nuw nsw i64 %362, %187
  %scevgep526.1 = getelementptr i8, i8* %call2, i64 %363
  %scevgep526527.1 = bitcast i8* %scevgep526.1 to double*
  %_p_scalar_528.1 = load double, double* %scevgep526527.1, align 8, !alias.scope !82, !noalias !85
  %scevgep532.1 = getelementptr i8, i8* %call1, i64 %363
  %scevgep532533.1 = bitcast i8* %scevgep532.1 to double*
  %_p_scalar_534.1 = load double, double* %scevgep532533.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.1

polly.loop_header517.1:                           ; preds = %polly.loop_header517.1, %polly.loop_header511.1
  %polly.indvar520.1 = phi i64 [ 0, %polly.loop_header511.1 ], [ %polly.indvar_next521.1, %polly.loop_header517.1 ]
  %364 = mul nuw nsw i64 %polly.indvar520.1, 480
  %365 = add nuw nsw i64 %364, %362
  %scevgep523.1 = getelementptr i8, i8* %call1, i64 %365
  %scevgep523524.1 = bitcast i8* %scevgep523.1 to double*
  %_p_scalar_525.1 = load double, double* %scevgep523524.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1 = fmul fast double %_p_scalar_528.1, %_p_scalar_525.1
  %scevgep529.1 = getelementptr i8, i8* %call2, i64 %365
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1 = fmul fast double %_p_scalar_534.1, %_p_scalar_531.1
  %366 = shl nuw nsw i64 %polly.indvar520.1, 3
  %367 = add nuw nsw i64 %366, %188
  %scevgep535.1 = getelementptr i8, i8* %call, i64 %367
  %scevgep535536.1 = bitcast i8* %scevgep535.1 to double*
  %_p_scalar_537.1 = load double, double* %scevgep535536.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_537.1
  store double %p_add42.i.1, double* %scevgep535536.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %exitcond780.1.not = icmp eq i64 %polly.indvar520.1, %indvars.iv776
  br i1 %exitcond780.1.not, label %polly.loop_exit519.1, label %polly.loop_header517.1

polly.loop_exit519.1:                             ; preds = %polly.loop_header517.1
  %polly.indvar_next515.1 = add nuw nsw i64 %polly.indvar514.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar_next515.1, %208
  br i1 %exitcond784.1.not, label %polly.loop_header511.2, label %polly.loop_header511.1

polly.loop_header511.2:                           ; preds = %polly.loop_exit519.1, %polly.loop_exit519.2
  %polly.indvar514.2 = phi i64 [ %polly.indvar_next515.2, %polly.loop_exit519.2 ], [ 0, %polly.loop_exit519.1 ]
  %368 = add nuw nsw i64 %polly.indvar514.2, %209
  %369 = shl i64 %368, 3
  %370 = add nuw nsw i64 %369, %190
  %scevgep526.2 = getelementptr i8, i8* %call2, i64 %370
  %scevgep526527.2 = bitcast i8* %scevgep526.2 to double*
  %_p_scalar_528.2 = load double, double* %scevgep526527.2, align 8, !alias.scope !82, !noalias !85
  %scevgep532.2 = getelementptr i8, i8* %call1, i64 %370
  %scevgep532533.2 = bitcast i8* %scevgep532.2 to double*
  %_p_scalar_534.2 = load double, double* %scevgep532533.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.2

polly.loop_header517.2:                           ; preds = %polly.loop_header517.2, %polly.loop_header511.2
  %polly.indvar520.2 = phi i64 [ 0, %polly.loop_header511.2 ], [ %polly.indvar_next521.2, %polly.loop_header517.2 ]
  %371 = mul nuw nsw i64 %polly.indvar520.2, 480
  %372 = add nuw nsw i64 %371, %369
  %scevgep523.2 = getelementptr i8, i8* %call1, i64 %372
  %scevgep523524.2 = bitcast i8* %scevgep523.2 to double*
  %_p_scalar_525.2 = load double, double* %scevgep523524.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.2 = fmul fast double %_p_scalar_528.2, %_p_scalar_525.2
  %scevgep529.2 = getelementptr i8, i8* %call2, i64 %372
  %scevgep529530.2 = bitcast i8* %scevgep529.2 to double*
  %_p_scalar_531.2 = load double, double* %scevgep529530.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.2 = fmul fast double %_p_scalar_534.2, %_p_scalar_531.2
  %373 = shl nuw nsw i64 %polly.indvar520.2, 3
  %374 = add nuw nsw i64 %373, %191
  %scevgep535.2 = getelementptr i8, i8* %call, i64 %374
  %scevgep535536.2 = bitcast i8* %scevgep535.2 to double*
  %_p_scalar_537.2 = load double, double* %scevgep535536.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_537.2
  store double %p_add42.i.2, double* %scevgep535536.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.2 = add nuw nsw i64 %polly.indvar520.2, 1
  %375 = add nuw nsw i64 %indvars.iv776, 1
  %exitcond780.2.not = icmp eq i64 %polly.indvar520.2, %375
  br i1 %exitcond780.2.not, label %polly.loop_exit519.2, label %polly.loop_header517.2

polly.loop_exit519.2:                             ; preds = %polly.loop_header517.2
  %polly.indvar_next515.2 = add nuw nsw i64 %polly.indvar514.2, 1
  %exitcond784.2.not = icmp eq i64 %polly.indvar_next515.2, %208
  br i1 %exitcond784.2.not, label %polly.loop_header511.3, label %polly.loop_header511.2

polly.loop_header511.3:                           ; preds = %polly.loop_exit519.2, %polly.loop_exit519.3
  %polly.indvar514.3 = phi i64 [ %polly.indvar_next515.3, %polly.loop_exit519.3 ], [ 0, %polly.loop_exit519.2 ]
  %376 = add nuw nsw i64 %polly.indvar514.3, %209
  %377 = shl i64 %376, 3
  %378 = add nuw nsw i64 %377, %193
  %scevgep526.3 = getelementptr i8, i8* %call2, i64 %378
  %scevgep526527.3 = bitcast i8* %scevgep526.3 to double*
  %_p_scalar_528.3 = load double, double* %scevgep526527.3, align 8, !alias.scope !82, !noalias !85
  %scevgep532.3 = getelementptr i8, i8* %call1, i64 %378
  %scevgep532533.3 = bitcast i8* %scevgep532.3 to double*
  %_p_scalar_534.3 = load double, double* %scevgep532533.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.3

polly.loop_header517.3:                           ; preds = %polly.loop_header517.3, %polly.loop_header511.3
  %polly.indvar520.3 = phi i64 [ 0, %polly.loop_header511.3 ], [ %polly.indvar_next521.3, %polly.loop_header517.3 ]
  %379 = mul nuw nsw i64 %polly.indvar520.3, 480
  %380 = add nuw nsw i64 %379, %377
  %scevgep523.3 = getelementptr i8, i8* %call1, i64 %380
  %scevgep523524.3 = bitcast i8* %scevgep523.3 to double*
  %_p_scalar_525.3 = load double, double* %scevgep523524.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.3 = fmul fast double %_p_scalar_528.3, %_p_scalar_525.3
  %scevgep529.3 = getelementptr i8, i8* %call2, i64 %380
  %scevgep529530.3 = bitcast i8* %scevgep529.3 to double*
  %_p_scalar_531.3 = load double, double* %scevgep529530.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.3 = fmul fast double %_p_scalar_534.3, %_p_scalar_531.3
  %381 = shl nuw nsw i64 %polly.indvar520.3, 3
  %382 = add nuw nsw i64 %381, %194
  %scevgep535.3 = getelementptr i8, i8* %call, i64 %382
  %scevgep535536.3 = bitcast i8* %scevgep535.3 to double*
  %_p_scalar_537.3 = load double, double* %scevgep535536.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_537.3
  store double %p_add42.i.3, double* %scevgep535536.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.3 = add nuw nsw i64 %polly.indvar520.3, 1
  %383 = add nuw nsw i64 %indvars.iv776, 2
  %exitcond780.3.not = icmp eq i64 %polly.indvar520.3, %383
  br i1 %exitcond780.3.not, label %polly.loop_exit519.3, label %polly.loop_header517.3

polly.loop_exit519.3:                             ; preds = %polly.loop_header517.3
  %polly.indvar_next515.3 = add nuw nsw i64 %polly.indvar514.3, 1
  %exitcond784.3.not = icmp eq i64 %polly.indvar_next515.3, %208
  br i1 %exitcond784.3.not, label %polly.loop_header511.4, label %polly.loop_header511.3

polly.loop_header511.4:                           ; preds = %polly.loop_exit519.3, %polly.loop_exit519.4
  %polly.indvar514.4 = phi i64 [ %polly.indvar_next515.4, %polly.loop_exit519.4 ], [ 0, %polly.loop_exit519.3 ]
  %384 = add nuw nsw i64 %polly.indvar514.4, %209
  %385 = shl i64 %384, 3
  %386 = add nuw nsw i64 %385, %196
  %scevgep526.4 = getelementptr i8, i8* %call2, i64 %386
  %scevgep526527.4 = bitcast i8* %scevgep526.4 to double*
  %_p_scalar_528.4 = load double, double* %scevgep526527.4, align 8, !alias.scope !82, !noalias !85
  %scevgep532.4 = getelementptr i8, i8* %call1, i64 %386
  %scevgep532533.4 = bitcast i8* %scevgep532.4 to double*
  %_p_scalar_534.4 = load double, double* %scevgep532533.4, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.4

polly.loop_header517.4:                           ; preds = %polly.loop_header517.4, %polly.loop_header511.4
  %polly.indvar520.4 = phi i64 [ 0, %polly.loop_header511.4 ], [ %polly.indvar_next521.4, %polly.loop_header517.4 ]
  %387 = mul nuw nsw i64 %polly.indvar520.4, 480
  %388 = add nuw nsw i64 %387, %385
  %scevgep523.4 = getelementptr i8, i8* %call1, i64 %388
  %scevgep523524.4 = bitcast i8* %scevgep523.4 to double*
  %_p_scalar_525.4 = load double, double* %scevgep523524.4, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.4 = fmul fast double %_p_scalar_528.4, %_p_scalar_525.4
  %scevgep529.4 = getelementptr i8, i8* %call2, i64 %388
  %scevgep529530.4 = bitcast i8* %scevgep529.4 to double*
  %_p_scalar_531.4 = load double, double* %scevgep529530.4, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.4 = fmul fast double %_p_scalar_534.4, %_p_scalar_531.4
  %389 = shl nuw nsw i64 %polly.indvar520.4, 3
  %390 = add nuw nsw i64 %389, %197
  %scevgep535.4 = getelementptr i8, i8* %call, i64 %390
  %scevgep535536.4 = bitcast i8* %scevgep535.4 to double*
  %_p_scalar_537.4 = load double, double* %scevgep535536.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_537.4
  store double %p_add42.i.4, double* %scevgep535536.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.4 = add nuw nsw i64 %polly.indvar520.4, 1
  %391 = add nuw nsw i64 %indvars.iv776, 3
  %exitcond780.4.not = icmp eq i64 %polly.indvar520.4, %391
  br i1 %exitcond780.4.not, label %polly.loop_exit519.4, label %polly.loop_header517.4

polly.loop_exit519.4:                             ; preds = %polly.loop_header517.4
  %polly.indvar_next515.4 = add nuw nsw i64 %polly.indvar514.4, 1
  %exitcond784.4.not = icmp eq i64 %polly.indvar_next515.4, %208
  br i1 %exitcond784.4.not, label %polly.loop_header511.5, label %polly.loop_header511.4

polly.loop_header511.5:                           ; preds = %polly.loop_exit519.4, %polly.loop_exit519.5
  %polly.indvar514.5 = phi i64 [ %polly.indvar_next515.5, %polly.loop_exit519.5 ], [ 0, %polly.loop_exit519.4 ]
  %392 = add nuw nsw i64 %polly.indvar514.5, %209
  %393 = shl i64 %392, 3
  %394 = add nuw nsw i64 %393, %199
  %scevgep526.5 = getelementptr i8, i8* %call2, i64 %394
  %scevgep526527.5 = bitcast i8* %scevgep526.5 to double*
  %_p_scalar_528.5 = load double, double* %scevgep526527.5, align 8, !alias.scope !82, !noalias !85
  %scevgep532.5 = getelementptr i8, i8* %call1, i64 %394
  %scevgep532533.5 = bitcast i8* %scevgep532.5 to double*
  %_p_scalar_534.5 = load double, double* %scevgep532533.5, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.5

polly.loop_header517.5:                           ; preds = %polly.loop_header517.5, %polly.loop_header511.5
  %polly.indvar520.5 = phi i64 [ 0, %polly.loop_header511.5 ], [ %polly.indvar_next521.5, %polly.loop_header517.5 ]
  %395 = mul nuw nsw i64 %polly.indvar520.5, 480
  %396 = add nuw nsw i64 %395, %393
  %scevgep523.5 = getelementptr i8, i8* %call1, i64 %396
  %scevgep523524.5 = bitcast i8* %scevgep523.5 to double*
  %_p_scalar_525.5 = load double, double* %scevgep523524.5, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.5 = fmul fast double %_p_scalar_528.5, %_p_scalar_525.5
  %scevgep529.5 = getelementptr i8, i8* %call2, i64 %396
  %scevgep529530.5 = bitcast i8* %scevgep529.5 to double*
  %_p_scalar_531.5 = load double, double* %scevgep529530.5, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.5 = fmul fast double %_p_scalar_534.5, %_p_scalar_531.5
  %397 = shl nuw nsw i64 %polly.indvar520.5, 3
  %398 = add nuw nsw i64 %397, %200
  %scevgep535.5 = getelementptr i8, i8* %call, i64 %398
  %scevgep535536.5 = bitcast i8* %scevgep535.5 to double*
  %_p_scalar_537.5 = load double, double* %scevgep535536.5, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_537.5
  store double %p_add42.i.5, double* %scevgep535536.5, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.5 = add nuw nsw i64 %polly.indvar520.5, 1
  %399 = add nuw nsw i64 %indvars.iv776, 4
  %exitcond780.5.not = icmp eq i64 %polly.indvar520.5, %399
  br i1 %exitcond780.5.not, label %polly.loop_exit519.5, label %polly.loop_header517.5

polly.loop_exit519.5:                             ; preds = %polly.loop_header517.5
  %polly.indvar_next515.5 = add nuw nsw i64 %polly.indvar514.5, 1
  %exitcond784.5.not = icmp eq i64 %polly.indvar_next515.5, %208
  br i1 %exitcond784.5.not, label %polly.loop_header511.6, label %polly.loop_header511.5

polly.loop_header511.6:                           ; preds = %polly.loop_exit519.5, %polly.loop_exit519.6
  %polly.indvar514.6 = phi i64 [ %polly.indvar_next515.6, %polly.loop_exit519.6 ], [ 0, %polly.loop_exit519.5 ]
  %400 = add nuw nsw i64 %polly.indvar514.6, %209
  %401 = shl i64 %400, 3
  %402 = add nuw nsw i64 %401, %202
  %scevgep526.6 = getelementptr i8, i8* %call2, i64 %402
  %scevgep526527.6 = bitcast i8* %scevgep526.6 to double*
  %_p_scalar_528.6 = load double, double* %scevgep526527.6, align 8, !alias.scope !82, !noalias !85
  %scevgep532.6 = getelementptr i8, i8* %call1, i64 %402
  %scevgep532533.6 = bitcast i8* %scevgep532.6 to double*
  %_p_scalar_534.6 = load double, double* %scevgep532533.6, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.6

polly.loop_header517.6:                           ; preds = %polly.loop_header517.6, %polly.loop_header511.6
  %polly.indvar520.6 = phi i64 [ 0, %polly.loop_header511.6 ], [ %polly.indvar_next521.6, %polly.loop_header517.6 ]
  %403 = mul nuw nsw i64 %polly.indvar520.6, 480
  %404 = add nuw nsw i64 %403, %401
  %scevgep523.6 = getelementptr i8, i8* %call1, i64 %404
  %scevgep523524.6 = bitcast i8* %scevgep523.6 to double*
  %_p_scalar_525.6 = load double, double* %scevgep523524.6, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.6 = fmul fast double %_p_scalar_528.6, %_p_scalar_525.6
  %scevgep529.6 = getelementptr i8, i8* %call2, i64 %404
  %scevgep529530.6 = bitcast i8* %scevgep529.6 to double*
  %_p_scalar_531.6 = load double, double* %scevgep529530.6, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.6 = fmul fast double %_p_scalar_534.6, %_p_scalar_531.6
  %405 = shl nuw nsw i64 %polly.indvar520.6, 3
  %406 = add nuw nsw i64 %405, %203
  %scevgep535.6 = getelementptr i8, i8* %call, i64 %406
  %scevgep535536.6 = bitcast i8* %scevgep535.6 to double*
  %_p_scalar_537.6 = load double, double* %scevgep535536.6, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_537.6
  store double %p_add42.i.6, double* %scevgep535536.6, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.6 = add nuw nsw i64 %polly.indvar520.6, 1
  %407 = add nuw nsw i64 %indvars.iv776, 5
  %exitcond780.6.not = icmp eq i64 %polly.indvar520.6, %407
  br i1 %exitcond780.6.not, label %polly.loop_exit519.6, label %polly.loop_header517.6

polly.loop_exit519.6:                             ; preds = %polly.loop_header517.6
  %polly.indvar_next515.6 = add nuw nsw i64 %polly.indvar514.6, 1
  %exitcond784.6.not = icmp eq i64 %polly.indvar_next515.6, %208
  br i1 %exitcond784.6.not, label %polly.loop_header511.7, label %polly.loop_header511.6

polly.loop_header511.7:                           ; preds = %polly.loop_exit519.6, %polly.loop_exit519.7
  %polly.indvar514.7 = phi i64 [ %polly.indvar_next515.7, %polly.loop_exit519.7 ], [ 0, %polly.loop_exit519.6 ]
  %408 = add nuw nsw i64 %polly.indvar514.7, %209
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %205
  %scevgep526.7 = getelementptr i8, i8* %call2, i64 %410
  %scevgep526527.7 = bitcast i8* %scevgep526.7 to double*
  %_p_scalar_528.7 = load double, double* %scevgep526527.7, align 8, !alias.scope !82, !noalias !85
  %scevgep532.7 = getelementptr i8, i8* %call1, i64 %410
  %scevgep532533.7 = bitcast i8* %scevgep532.7 to double*
  %_p_scalar_534.7 = load double, double* %scevgep532533.7, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.7

polly.loop_header517.7:                           ; preds = %polly.loop_header517.7, %polly.loop_header511.7
  %polly.indvar520.7 = phi i64 [ 0, %polly.loop_header511.7 ], [ %polly.indvar_next521.7, %polly.loop_header517.7 ]
  %411 = mul nuw nsw i64 %polly.indvar520.7, 480
  %412 = add nuw nsw i64 %411, %409
  %scevgep523.7 = getelementptr i8, i8* %call1, i64 %412
  %scevgep523524.7 = bitcast i8* %scevgep523.7 to double*
  %_p_scalar_525.7 = load double, double* %scevgep523524.7, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.7 = fmul fast double %_p_scalar_528.7, %_p_scalar_525.7
  %scevgep529.7 = getelementptr i8, i8* %call2, i64 %412
  %scevgep529530.7 = bitcast i8* %scevgep529.7 to double*
  %_p_scalar_531.7 = load double, double* %scevgep529530.7, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.7 = fmul fast double %_p_scalar_534.7, %_p_scalar_531.7
  %413 = shl nuw nsw i64 %polly.indvar520.7, 3
  %414 = add nuw nsw i64 %413, %206
  %scevgep535.7 = getelementptr i8, i8* %call, i64 %414
  %scevgep535536.7 = bitcast i8* %scevgep535.7 to double*
  %_p_scalar_537.7 = load double, double* %scevgep535536.7, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_537.7
  store double %p_add42.i.7, double* %scevgep535536.7, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.7 = add nuw nsw i64 %polly.indvar520.7, 1
  %exitcond780.7.not = icmp eq i64 %polly.indvar520.7, %207
  br i1 %exitcond780.7.not, label %polly.loop_exit519.7, label %polly.loop_header517.7

polly.loop_exit519.7:                             ; preds = %polly.loop_header517.7
  %polly.indvar_next515.7 = add nuw nsw i64 %polly.indvar514.7, 1
  %exitcond784.7.not = icmp eq i64 %polly.indvar_next515.7, %208
  br i1 %exitcond784.7.not, label %polly.loop_exit513.7, label %polly.loop_header511.7

polly.loop_exit513.7:                             ; preds = %polly.loop_exit519.7
  %polly.indvar_next503 = add nuw nsw i64 %polly.indvar502, 1
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, -16
  %exitcond786.not = icmp eq i64 %polly.indvar_next503, 4
  br i1 %exitcond786.not, label %polly.loop_exit501, label %polly.loop_header499

polly.loop_header729.1:                           ; preds = %polly.loop_exit737, %polly.loop_exit737.1
  %polly.indvar732.1 = phi i64 [ %polly.indvar_next733.1, %polly.loop_exit737.1 ], [ 0, %polly.loop_exit737 ]
  %415 = mul nuw nsw i64 %polly.indvar732.1, 480
  %416 = trunc i64 %polly.indvar732.1 to i32
  %broadcast.splatinsert1112 = insertelement <4 x i32> poison, i32 %416, i32 0
  %broadcast.splat1113 = shufflevector <4 x i32> %broadcast.splatinsert1112, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %polly.loop_header729.1
  %index1106 = phi i64 [ 0, %polly.loop_header729.1 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1 ], [ %vec.ind.next1111, %vector.body1104 ]
  %417 = add nuw nsw <4 x i64> %vec.ind1110, <i64 32, i64 32, i64 32, i64 32>
  %418 = trunc <4 x i64> %417 to <4 x i32>
  %419 = mul <4 x i32> %broadcast.splat1113, %418
  %420 = add <4 x i32> %419, <i32 1, i32 1, i32 1, i32 1>
  %421 = urem <4 x i32> %420, <i32 80, i32 80, i32 80, i32 80>
  %422 = sitofp <4 x i32> %421 to <4 x double>
  %423 = fmul fast <4 x double> %422, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %424 = extractelement <4 x i64> %417, i32 0
  %425 = shl i64 %424, 3
  %426 = add i64 %425, %415
  %427 = getelementptr i8, i8* %call1, i64 %426
  %428 = bitcast i8* %427 to <4 x double>*
  store <4 x double> %423, <4 x double>* %428, align 8, !alias.scope !90, !noalias !95
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1111 = add <4 x i64> %vec.ind1110, <i64 4, i64 4, i64 4, i64 4>
  %429 = icmp eq i64 %index.next1107, 28
  br i1 %429, label %polly.loop_exit737.1, label %vector.body1104, !llvm.loop !97

polly.loop_exit737.1:                             ; preds = %vector.body1104
  %polly.indvar_next733.1 = add nuw nsw i64 %polly.indvar732.1, 1
  %exitcond794.1.not = icmp eq i64 %polly.indvar_next733.1, 32
  br i1 %exitcond794.1.not, label %polly.loop_header729.1817, label %polly.loop_header729.1

polly.loop_header729.1817:                        ; preds = %polly.loop_exit737.1, %polly.loop_exit737.1828
  %polly.indvar732.1816 = phi i64 [ %polly.indvar_next733.1826, %polly.loop_exit737.1828 ], [ 0, %polly.loop_exit737.1 ]
  %430 = add nuw nsw i64 %polly.indvar732.1816, 32
  %431 = mul nuw nsw i64 %430, 480
  %432 = trunc i64 %430 to i32
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %432, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %polly.loop_header729.1817
  %index1118 = phi i64 [ 0, %polly.loop_header729.1817 ], [ %index.next1119, %vector.body1116 ]
  %vec.ind1124 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729.1817 ], [ %vec.ind.next1125, %vector.body1116 ]
  %433 = mul <4 x i32> %vec.ind1124, %broadcast.splat1127
  %434 = add <4 x i32> %433, <i32 1, i32 1, i32 1, i32 1>
  %435 = urem <4 x i32> %434, <i32 80, i32 80, i32 80, i32 80>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %438 = shl i64 %index1118, 3
  %439 = add i64 %438, %431
  %440 = getelementptr i8, i8* %call1, i64 %439
  %441 = bitcast i8* %440 to <4 x double>*
  store <4 x double> %437, <4 x double>* %441, align 8, !alias.scope !90, !noalias !95
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1125 = add <4 x i32> %vec.ind1124, <i32 4, i32 4, i32 4, i32 4>
  %442 = icmp eq i64 %index.next1119, 32
  br i1 %442, label %polly.loop_exit737.1828, label %vector.body1116, !llvm.loop !98

polly.loop_exit737.1828:                          ; preds = %vector.body1116
  %polly.indvar_next733.1826 = add nuw nsw i64 %polly.indvar732.1816, 1
  %exitcond794.1827.not = icmp eq i64 %polly.indvar_next733.1826, 32
  br i1 %exitcond794.1827.not, label %polly.loop_header729.1.1, label %polly.loop_header729.1817

polly.loop_header729.1.1:                         ; preds = %polly.loop_exit737.1828, %polly.loop_exit737.1.1
  %polly.indvar732.1.1 = phi i64 [ %polly.indvar_next733.1.1, %polly.loop_exit737.1.1 ], [ 0, %polly.loop_exit737.1828 ]
  %443 = add nuw nsw i64 %polly.indvar732.1.1, 32
  %444 = mul nuw nsw i64 %443, 480
  %445 = trunc i64 %443 to i32
  %broadcast.splatinsert1138 = insertelement <4 x i32> poison, i32 %445, i32 0
  %broadcast.splat1139 = shufflevector <4 x i32> %broadcast.splatinsert1138, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %polly.loop_header729.1.1
  %index1132 = phi i64 [ 0, %polly.loop_header729.1.1 ], [ %index.next1133, %vector.body1130 ]
  %vec.ind1136 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1.1 ], [ %vec.ind.next1137, %vector.body1130 ]
  %446 = add nuw nsw <4 x i64> %vec.ind1136, <i64 32, i64 32, i64 32, i64 32>
  %447 = trunc <4 x i64> %446 to <4 x i32>
  %448 = mul <4 x i32> %broadcast.splat1139, %447
  %449 = add <4 x i32> %448, <i32 1, i32 1, i32 1, i32 1>
  %450 = urem <4 x i32> %449, <i32 80, i32 80, i32 80, i32 80>
  %451 = sitofp <4 x i32> %450 to <4 x double>
  %452 = fmul fast <4 x double> %451, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %453 = extractelement <4 x i64> %446, i32 0
  %454 = shl i64 %453, 3
  %455 = add i64 %454, %444
  %456 = getelementptr i8, i8* %call1, i64 %455
  %457 = bitcast i8* %456 to <4 x double>*
  store <4 x double> %452, <4 x double>* %457, align 8, !alias.scope !90, !noalias !95
  %index.next1133 = add i64 %index1132, 4
  %vec.ind.next1137 = add <4 x i64> %vec.ind1136, <i64 4, i64 4, i64 4, i64 4>
  %458 = icmp eq i64 %index.next1133, 28
  br i1 %458, label %polly.loop_exit737.1.1, label %vector.body1130, !llvm.loop !99

polly.loop_exit737.1.1:                           ; preds = %vector.body1130
  %polly.indvar_next733.1.1 = add nuw nsw i64 %polly.indvar732.1.1, 1
  %exitcond794.1.1.not = icmp eq i64 %polly.indvar_next733.1.1, 32
  br i1 %exitcond794.1.1.not, label %polly.loop_header729.2, label %polly.loop_header729.1.1

polly.loop_header729.2:                           ; preds = %polly.loop_exit737.1.1, %polly.loop_exit737.2
  %polly.indvar732.2 = phi i64 [ %polly.indvar_next733.2, %polly.loop_exit737.2 ], [ 0, %polly.loop_exit737.1.1 ]
  %459 = add nuw nsw i64 %polly.indvar732.2, 64
  %460 = mul nuw nsw i64 %459, 480
  %461 = trunc i64 %459 to i32
  %broadcast.splatinsert1152 = insertelement <4 x i32> poison, i32 %461, i32 0
  %broadcast.splat1153 = shufflevector <4 x i32> %broadcast.splatinsert1152, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %polly.loop_header729.2
  %index1144 = phi i64 [ 0, %polly.loop_header729.2 ], [ %index.next1145, %vector.body1142 ]
  %vec.ind1150 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729.2 ], [ %vec.ind.next1151, %vector.body1142 ]
  %462 = mul <4 x i32> %vec.ind1150, %broadcast.splat1153
  %463 = add <4 x i32> %462, <i32 1, i32 1, i32 1, i32 1>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %467 = shl i64 %index1144, 3
  %468 = add i64 %467, %460
  %469 = getelementptr i8, i8* %call1, i64 %468
  %470 = bitcast i8* %469 to <4 x double>*
  store <4 x double> %466, <4 x double>* %470, align 8, !alias.scope !90, !noalias !95
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1151 = add <4 x i32> %vec.ind1150, <i32 4, i32 4, i32 4, i32 4>
  %471 = icmp eq i64 %index.next1145, 32
  br i1 %471, label %polly.loop_exit737.2, label %vector.body1142, !llvm.loop !100

polly.loop_exit737.2:                             ; preds = %vector.body1142
  %polly.indvar_next733.2 = add nuw nsw i64 %polly.indvar732.2, 1
  %exitcond794.2.not = icmp eq i64 %polly.indvar_next733.2, 16
  br i1 %exitcond794.2.not, label %polly.loop_header729.1.2, label %polly.loop_header729.2

polly.loop_header729.1.2:                         ; preds = %polly.loop_exit737.2, %polly.loop_exit737.1.2
  %polly.indvar732.1.2 = phi i64 [ %polly.indvar_next733.1.2, %polly.loop_exit737.1.2 ], [ 0, %polly.loop_exit737.2 ]
  %472 = add nuw nsw i64 %polly.indvar732.1.2, 64
  %473 = mul nuw nsw i64 %472, 480
  %474 = trunc i64 %472 to i32
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %474, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %polly.loop_header729.1.2
  %index1158 = phi i64 [ 0, %polly.loop_header729.1.2 ], [ %index.next1159, %vector.body1156 ]
  %vec.ind1162 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1.2 ], [ %vec.ind.next1163, %vector.body1156 ]
  %475 = add nuw nsw <4 x i64> %vec.ind1162, <i64 32, i64 32, i64 32, i64 32>
  %476 = trunc <4 x i64> %475 to <4 x i32>
  %477 = mul <4 x i32> %broadcast.splat1165, %476
  %478 = add <4 x i32> %477, <i32 1, i32 1, i32 1, i32 1>
  %479 = urem <4 x i32> %478, <i32 80, i32 80, i32 80, i32 80>
  %480 = sitofp <4 x i32> %479 to <4 x double>
  %481 = fmul fast <4 x double> %480, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %482 = extractelement <4 x i64> %475, i32 0
  %483 = shl i64 %482, 3
  %484 = add i64 %483, %473
  %485 = getelementptr i8, i8* %call1, i64 %484
  %486 = bitcast i8* %485 to <4 x double>*
  store <4 x double> %481, <4 x double>* %486, align 8, !alias.scope !90, !noalias !95
  %index.next1159 = add i64 %index1158, 4
  %vec.ind.next1163 = add <4 x i64> %vec.ind1162, <i64 4, i64 4, i64 4, i64 4>
  %487 = icmp eq i64 %index.next1159, 28
  br i1 %487, label %polly.loop_exit737.1.2, label %vector.body1156, !llvm.loop !101

polly.loop_exit737.1.2:                           ; preds = %vector.body1156
  %polly.indvar_next733.1.2 = add nuw nsw i64 %polly.indvar732.1.2, 1
  %exitcond794.1.2.not = icmp eq i64 %polly.indvar_next733.1.2, 16
  br i1 %exitcond794.1.2.not, label %init_array.exit, label %polly.loop_header729.1.2

polly.loop_header703.1:                           ; preds = %polly.loop_exit711, %polly.loop_exit711.1
  %polly.indvar706.1 = phi i64 [ %polly.indvar_next707.1, %polly.loop_exit711.1 ], [ 0, %polly.loop_exit711 ]
  %488 = mul nuw nsw i64 %polly.indvar706.1, 480
  %489 = trunc i64 %polly.indvar706.1 to i32
  %broadcast.splatinsert1034 = insertelement <4 x i32> poison, i32 %489, i32 0
  %broadcast.splat1035 = shufflevector <4 x i32> %broadcast.splatinsert1034, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %polly.loop_header703.1
  %index1028 = phi i64 [ 0, %polly.loop_header703.1 ], [ %index.next1029, %vector.body1026 ]
  %vec.ind1032 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1 ], [ %vec.ind.next1033, %vector.body1026 ]
  %490 = add nuw nsw <4 x i64> %vec.ind1032, <i64 32, i64 32, i64 32, i64 32>
  %491 = trunc <4 x i64> %490 to <4 x i32>
  %492 = mul <4 x i32> %broadcast.splat1035, %491
  %493 = add <4 x i32> %492, <i32 2, i32 2, i32 2, i32 2>
  %494 = urem <4 x i32> %493, <i32 60, i32 60, i32 60, i32 60>
  %495 = sitofp <4 x i32> %494 to <4 x double>
  %496 = fmul fast <4 x double> %495, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %497 = extractelement <4 x i64> %490, i32 0
  %498 = shl i64 %497, 3
  %499 = add i64 %498, %488
  %500 = getelementptr i8, i8* %call2, i64 %499
  %501 = bitcast i8* %500 to <4 x double>*
  store <4 x double> %496, <4 x double>* %501, align 8, !alias.scope !91, !noalias !93
  %index.next1029 = add i64 %index1028, 4
  %vec.ind.next1033 = add <4 x i64> %vec.ind1032, <i64 4, i64 4, i64 4, i64 4>
  %502 = icmp eq i64 %index.next1029, 28
  br i1 %502, label %polly.loop_exit711.1, label %vector.body1026, !llvm.loop !102

polly.loop_exit711.1:                             ; preds = %vector.body1026
  %polly.indvar_next707.1 = add nuw nsw i64 %polly.indvar706.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next707.1, 32
  br i1 %exitcond800.1.not, label %polly.loop_header703.1831, label %polly.loop_header703.1

polly.loop_header703.1831:                        ; preds = %polly.loop_exit711.1, %polly.loop_exit711.1842
  %polly.indvar706.1830 = phi i64 [ %polly.indvar_next707.1840, %polly.loop_exit711.1842 ], [ 0, %polly.loop_exit711.1 ]
  %503 = add nuw nsw i64 %polly.indvar706.1830, 32
  %504 = mul nuw nsw i64 %503, 480
  %505 = trunc i64 %503 to i32
  %broadcast.splatinsert1048 = insertelement <4 x i32> poison, i32 %505, i32 0
  %broadcast.splat1049 = shufflevector <4 x i32> %broadcast.splatinsert1048, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %polly.loop_header703.1831
  %index1040 = phi i64 [ 0, %polly.loop_header703.1831 ], [ %index.next1041, %vector.body1038 ]
  %vec.ind1046 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703.1831 ], [ %vec.ind.next1047, %vector.body1038 ]
  %506 = mul <4 x i32> %vec.ind1046, %broadcast.splat1049
  %507 = add <4 x i32> %506, <i32 2, i32 2, i32 2, i32 2>
  %508 = urem <4 x i32> %507, <i32 60, i32 60, i32 60, i32 60>
  %509 = sitofp <4 x i32> %508 to <4 x double>
  %510 = fmul fast <4 x double> %509, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %511 = shl i64 %index1040, 3
  %512 = add i64 %511, %504
  %513 = getelementptr i8, i8* %call2, i64 %512
  %514 = bitcast i8* %513 to <4 x double>*
  store <4 x double> %510, <4 x double>* %514, align 8, !alias.scope !91, !noalias !93
  %index.next1041 = add i64 %index1040, 4
  %vec.ind.next1047 = add <4 x i32> %vec.ind1046, <i32 4, i32 4, i32 4, i32 4>
  %515 = icmp eq i64 %index.next1041, 32
  br i1 %515, label %polly.loop_exit711.1842, label %vector.body1038, !llvm.loop !103

polly.loop_exit711.1842:                          ; preds = %vector.body1038
  %polly.indvar_next707.1840 = add nuw nsw i64 %polly.indvar706.1830, 1
  %exitcond800.1841.not = icmp eq i64 %polly.indvar_next707.1840, 32
  br i1 %exitcond800.1841.not, label %polly.loop_header703.1.1, label %polly.loop_header703.1831

polly.loop_header703.1.1:                         ; preds = %polly.loop_exit711.1842, %polly.loop_exit711.1.1
  %polly.indvar706.1.1 = phi i64 [ %polly.indvar_next707.1.1, %polly.loop_exit711.1.1 ], [ 0, %polly.loop_exit711.1842 ]
  %516 = add nuw nsw i64 %polly.indvar706.1.1, 32
  %517 = mul nuw nsw i64 %516, 480
  %518 = trunc i64 %516 to i32
  %broadcast.splatinsert1060 = insertelement <4 x i32> poison, i32 %518, i32 0
  %broadcast.splat1061 = shufflevector <4 x i32> %broadcast.splatinsert1060, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %polly.loop_header703.1.1
  %index1054 = phi i64 [ 0, %polly.loop_header703.1.1 ], [ %index.next1055, %vector.body1052 ]
  %vec.ind1058 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1.1 ], [ %vec.ind.next1059, %vector.body1052 ]
  %519 = add nuw nsw <4 x i64> %vec.ind1058, <i64 32, i64 32, i64 32, i64 32>
  %520 = trunc <4 x i64> %519 to <4 x i32>
  %521 = mul <4 x i32> %broadcast.splat1061, %520
  %522 = add <4 x i32> %521, <i32 2, i32 2, i32 2, i32 2>
  %523 = urem <4 x i32> %522, <i32 60, i32 60, i32 60, i32 60>
  %524 = sitofp <4 x i32> %523 to <4 x double>
  %525 = fmul fast <4 x double> %524, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %526 = extractelement <4 x i64> %519, i32 0
  %527 = shl i64 %526, 3
  %528 = add i64 %527, %517
  %529 = getelementptr i8, i8* %call2, i64 %528
  %530 = bitcast i8* %529 to <4 x double>*
  store <4 x double> %525, <4 x double>* %530, align 8, !alias.scope !91, !noalias !93
  %index.next1055 = add i64 %index1054, 4
  %vec.ind.next1059 = add <4 x i64> %vec.ind1058, <i64 4, i64 4, i64 4, i64 4>
  %531 = icmp eq i64 %index.next1055, 28
  br i1 %531, label %polly.loop_exit711.1.1, label %vector.body1052, !llvm.loop !104

polly.loop_exit711.1.1:                           ; preds = %vector.body1052
  %polly.indvar_next707.1.1 = add nuw nsw i64 %polly.indvar706.1.1, 1
  %exitcond800.1.1.not = icmp eq i64 %polly.indvar_next707.1.1, 32
  br i1 %exitcond800.1.1.not, label %polly.loop_header703.2, label %polly.loop_header703.1.1

polly.loop_header703.2:                           ; preds = %polly.loop_exit711.1.1, %polly.loop_exit711.2
  %polly.indvar706.2 = phi i64 [ %polly.indvar_next707.2, %polly.loop_exit711.2 ], [ 0, %polly.loop_exit711.1.1 ]
  %532 = add nuw nsw i64 %polly.indvar706.2, 64
  %533 = mul nuw nsw i64 %532, 480
  %534 = trunc i64 %532 to i32
  %broadcast.splatinsert1074 = insertelement <4 x i32> poison, i32 %534, i32 0
  %broadcast.splat1075 = shufflevector <4 x i32> %broadcast.splatinsert1074, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %polly.loop_header703.2
  %index1066 = phi i64 [ 0, %polly.loop_header703.2 ], [ %index.next1067, %vector.body1064 ]
  %vec.ind1072 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703.2 ], [ %vec.ind.next1073, %vector.body1064 ]
  %535 = mul <4 x i32> %vec.ind1072, %broadcast.splat1075
  %536 = add <4 x i32> %535, <i32 2, i32 2, i32 2, i32 2>
  %537 = urem <4 x i32> %536, <i32 60, i32 60, i32 60, i32 60>
  %538 = sitofp <4 x i32> %537 to <4 x double>
  %539 = fmul fast <4 x double> %538, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %540 = shl i64 %index1066, 3
  %541 = add i64 %540, %533
  %542 = getelementptr i8, i8* %call2, i64 %541
  %543 = bitcast i8* %542 to <4 x double>*
  store <4 x double> %539, <4 x double>* %543, align 8, !alias.scope !91, !noalias !93
  %index.next1067 = add i64 %index1066, 4
  %vec.ind.next1073 = add <4 x i32> %vec.ind1072, <i32 4, i32 4, i32 4, i32 4>
  %544 = icmp eq i64 %index.next1067, 32
  br i1 %544, label %polly.loop_exit711.2, label %vector.body1064, !llvm.loop !105

polly.loop_exit711.2:                             ; preds = %vector.body1064
  %polly.indvar_next707.2 = add nuw nsw i64 %polly.indvar706.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next707.2, 16
  br i1 %exitcond800.2.not, label %polly.loop_header703.1.2, label %polly.loop_header703.2

polly.loop_header703.1.2:                         ; preds = %polly.loop_exit711.2, %polly.loop_exit711.1.2
  %polly.indvar706.1.2 = phi i64 [ %polly.indvar_next707.1.2, %polly.loop_exit711.1.2 ], [ 0, %polly.loop_exit711.2 ]
  %545 = add nuw nsw i64 %polly.indvar706.1.2, 64
  %546 = mul nuw nsw i64 %545, 480
  %547 = trunc i64 %545 to i32
  %broadcast.splatinsert1086 = insertelement <4 x i32> poison, i32 %547, i32 0
  %broadcast.splat1087 = shufflevector <4 x i32> %broadcast.splatinsert1086, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.body1078, %polly.loop_header703.1.2
  %index1080 = phi i64 [ 0, %polly.loop_header703.1.2 ], [ %index.next1081, %vector.body1078 ]
  %vec.ind1084 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1.2 ], [ %vec.ind.next1085, %vector.body1078 ]
  %548 = add nuw nsw <4 x i64> %vec.ind1084, <i64 32, i64 32, i64 32, i64 32>
  %549 = trunc <4 x i64> %548 to <4 x i32>
  %550 = mul <4 x i32> %broadcast.splat1087, %549
  %551 = add <4 x i32> %550, <i32 2, i32 2, i32 2, i32 2>
  %552 = urem <4 x i32> %551, <i32 60, i32 60, i32 60, i32 60>
  %553 = sitofp <4 x i32> %552 to <4 x double>
  %554 = fmul fast <4 x double> %553, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %555 = extractelement <4 x i64> %548, i32 0
  %556 = shl i64 %555, 3
  %557 = add i64 %556, %546
  %558 = getelementptr i8, i8* %call2, i64 %557
  %559 = bitcast i8* %558 to <4 x double>*
  store <4 x double> %554, <4 x double>* %559, align 8, !alias.scope !91, !noalias !93
  %index.next1081 = add i64 %index1080, 4
  %vec.ind.next1085 = add <4 x i64> %vec.ind1084, <i64 4, i64 4, i64 4, i64 4>
  %560 = icmp eq i64 %index.next1081, 28
  br i1 %560, label %polly.loop_exit711.1.2, label %vector.body1078, !llvm.loop !106

polly.loop_exit711.1.2:                           ; preds = %vector.body1078
  %polly.indvar_next707.1.2 = add nuw nsw i64 %polly.indvar706.1.2, 1
  %exitcond800.1.2.not = icmp eq i64 %polly.indvar_next707.1.2, 16
  br i1 %exitcond800.1.2.not, label %polly.loop_header729, label %polly.loop_header703.1.2

polly.loop_header676.1:                           ; preds = %polly.loop_exit684, %polly.loop_exit684.1
  %polly.indvar679.1 = phi i64 [ %polly.indvar_next680.1, %polly.loop_exit684.1 ], [ 0, %polly.loop_exit684 ]
  %561 = mul nuw nsw i64 %polly.indvar679.1, 640
  %562 = trunc i64 %polly.indvar679.1 to i32
  %broadcast.splatinsert920 = insertelement <4 x i32> poison, i32 %562, i32 0
  %broadcast.splat921 = shufflevector <4 x i32> %broadcast.splatinsert920, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body912

vector.body912:                                   ; preds = %vector.body912, %polly.loop_header676.1
  %index914 = phi i64 [ 0, %polly.loop_header676.1 ], [ %index.next915, %vector.body912 ]
  %vec.ind918 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1 ], [ %vec.ind.next919, %vector.body912 ]
  %563 = add nuw nsw <4 x i64> %vec.ind918, <i64 32, i64 32, i64 32, i64 32>
  %564 = trunc <4 x i64> %563 to <4 x i32>
  %565 = mul <4 x i32> %broadcast.splat921, %564
  %566 = add <4 x i32> %565, <i32 3, i32 3, i32 3, i32 3>
  %567 = urem <4 x i32> %566, <i32 80, i32 80, i32 80, i32 80>
  %568 = sitofp <4 x i32> %567 to <4 x double>
  %569 = fmul fast <4 x double> %568, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %570 = extractelement <4 x i64> %563, i32 0
  %571 = shl i64 %570, 3
  %572 = add nuw nsw i64 %571, %561
  %573 = getelementptr i8, i8* %call, i64 %572
  %574 = bitcast i8* %573 to <4 x double>*
  store <4 x double> %569, <4 x double>* %574, align 8, !alias.scope !87, !noalias !89
  %index.next915 = add i64 %index914, 4
  %vec.ind.next919 = add <4 x i64> %vec.ind918, <i64 4, i64 4, i64 4, i64 4>
  %575 = icmp eq i64 %index.next915, 32
  br i1 %575, label %polly.loop_exit684.1, label %vector.body912, !llvm.loop !107

polly.loop_exit684.1:                             ; preds = %vector.body912
  %polly.indvar_next680.1 = add nuw nsw i64 %polly.indvar679.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next680.1, 32
  br i1 %exitcond809.1.not, label %polly.loop_header676.2, label %polly.loop_header676.1

polly.loop_header676.2:                           ; preds = %polly.loop_exit684.1, %polly.loop_exit684.2
  %polly.indvar679.2 = phi i64 [ %polly.indvar_next680.2, %polly.loop_exit684.2 ], [ 0, %polly.loop_exit684.1 ]
  %576 = mul nuw nsw i64 %polly.indvar679.2, 640
  %577 = trunc i64 %polly.indvar679.2 to i32
  %broadcast.splatinsert932 = insertelement <4 x i32> poison, i32 %577, i32 0
  %broadcast.splat933 = shufflevector <4 x i32> %broadcast.splatinsert932, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body924

vector.body924:                                   ; preds = %vector.body924, %polly.loop_header676.2
  %index926 = phi i64 [ 0, %polly.loop_header676.2 ], [ %index.next927, %vector.body924 ]
  %vec.ind930 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2 ], [ %vec.ind.next931, %vector.body924 ]
  %578 = add nuw nsw <4 x i64> %vec.ind930, <i64 64, i64 64, i64 64, i64 64>
  %579 = trunc <4 x i64> %578 to <4 x i32>
  %580 = mul <4 x i32> %broadcast.splat933, %579
  %581 = add <4 x i32> %580, <i32 3, i32 3, i32 3, i32 3>
  %582 = urem <4 x i32> %581, <i32 80, i32 80, i32 80, i32 80>
  %583 = sitofp <4 x i32> %582 to <4 x double>
  %584 = fmul fast <4 x double> %583, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %585 = extractelement <4 x i64> %578, i32 0
  %586 = shl i64 %585, 3
  %587 = add nuw nsw i64 %586, %576
  %588 = getelementptr i8, i8* %call, i64 %587
  %589 = bitcast i8* %588 to <4 x double>*
  store <4 x double> %584, <4 x double>* %589, align 8, !alias.scope !87, !noalias !89
  %index.next927 = add i64 %index926, 4
  %vec.ind.next931 = add <4 x i64> %vec.ind930, <i64 4, i64 4, i64 4, i64 4>
  %590 = icmp eq i64 %index.next927, 16
  br i1 %590, label %polly.loop_exit684.2, label %vector.body924, !llvm.loop !108

polly.loop_exit684.2:                             ; preds = %vector.body924
  %polly.indvar_next680.2 = add nuw nsw i64 %polly.indvar679.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next680.2, 32
  br i1 %exitcond809.2.not, label %polly.loop_header676.1845, label %polly.loop_header676.2

polly.loop_header676.1845:                        ; preds = %polly.loop_exit684.2, %polly.loop_exit684.1856
  %polly.indvar679.1844 = phi i64 [ %polly.indvar_next680.1854, %polly.loop_exit684.1856 ], [ 0, %polly.loop_exit684.2 ]
  %591 = add nuw nsw i64 %polly.indvar679.1844, 32
  %592 = mul nuw nsw i64 %591, 640
  %593 = trunc i64 %591 to i32
  %broadcast.splatinsert946 = insertelement <4 x i32> poison, i32 %593, i32 0
  %broadcast.splat947 = shufflevector <4 x i32> %broadcast.splatinsert946, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %polly.loop_header676.1845
  %index938 = phi i64 [ 0, %polly.loop_header676.1845 ], [ %index.next939, %vector.body936 ]
  %vec.ind944 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676.1845 ], [ %vec.ind.next945, %vector.body936 ]
  %594 = mul <4 x i32> %vec.ind944, %broadcast.splat947
  %595 = add <4 x i32> %594, <i32 3, i32 3, i32 3, i32 3>
  %596 = urem <4 x i32> %595, <i32 80, i32 80, i32 80, i32 80>
  %597 = sitofp <4 x i32> %596 to <4 x double>
  %598 = fmul fast <4 x double> %597, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %599 = shl i64 %index938, 3
  %600 = add nuw nsw i64 %599, %592
  %601 = getelementptr i8, i8* %call, i64 %600
  %602 = bitcast i8* %601 to <4 x double>*
  store <4 x double> %598, <4 x double>* %602, align 8, !alias.scope !87, !noalias !89
  %index.next939 = add i64 %index938, 4
  %vec.ind.next945 = add <4 x i32> %vec.ind944, <i32 4, i32 4, i32 4, i32 4>
  %603 = icmp eq i64 %index.next939, 32
  br i1 %603, label %polly.loop_exit684.1856, label %vector.body936, !llvm.loop !109

polly.loop_exit684.1856:                          ; preds = %vector.body936
  %polly.indvar_next680.1854 = add nuw nsw i64 %polly.indvar679.1844, 1
  %exitcond809.1855.not = icmp eq i64 %polly.indvar_next680.1854, 32
  br i1 %exitcond809.1855.not, label %polly.loop_header676.1.1, label %polly.loop_header676.1845

polly.loop_header676.1.1:                         ; preds = %polly.loop_exit684.1856, %polly.loop_exit684.1.1
  %polly.indvar679.1.1 = phi i64 [ %polly.indvar_next680.1.1, %polly.loop_exit684.1.1 ], [ 0, %polly.loop_exit684.1856 ]
  %604 = add nuw nsw i64 %polly.indvar679.1.1, 32
  %605 = mul nuw nsw i64 %604, 640
  %606 = trunc i64 %604 to i32
  %broadcast.splatinsert958 = insertelement <4 x i32> poison, i32 %606, i32 0
  %broadcast.splat959 = shufflevector <4 x i32> %broadcast.splatinsert958, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body950

vector.body950:                                   ; preds = %vector.body950, %polly.loop_header676.1.1
  %index952 = phi i64 [ 0, %polly.loop_header676.1.1 ], [ %index.next953, %vector.body950 ]
  %vec.ind956 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1.1 ], [ %vec.ind.next957, %vector.body950 ]
  %607 = add nuw nsw <4 x i64> %vec.ind956, <i64 32, i64 32, i64 32, i64 32>
  %608 = trunc <4 x i64> %607 to <4 x i32>
  %609 = mul <4 x i32> %broadcast.splat959, %608
  %610 = add <4 x i32> %609, <i32 3, i32 3, i32 3, i32 3>
  %611 = urem <4 x i32> %610, <i32 80, i32 80, i32 80, i32 80>
  %612 = sitofp <4 x i32> %611 to <4 x double>
  %613 = fmul fast <4 x double> %612, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %614 = extractelement <4 x i64> %607, i32 0
  %615 = shl i64 %614, 3
  %616 = add nuw nsw i64 %615, %605
  %617 = getelementptr i8, i8* %call, i64 %616
  %618 = bitcast i8* %617 to <4 x double>*
  store <4 x double> %613, <4 x double>* %618, align 8, !alias.scope !87, !noalias !89
  %index.next953 = add i64 %index952, 4
  %vec.ind.next957 = add <4 x i64> %vec.ind956, <i64 4, i64 4, i64 4, i64 4>
  %619 = icmp eq i64 %index.next953, 32
  br i1 %619, label %polly.loop_exit684.1.1, label %vector.body950, !llvm.loop !110

polly.loop_exit684.1.1:                           ; preds = %vector.body950
  %polly.indvar_next680.1.1 = add nuw nsw i64 %polly.indvar679.1.1, 1
  %exitcond809.1.1.not = icmp eq i64 %polly.indvar_next680.1.1, 32
  br i1 %exitcond809.1.1.not, label %polly.loop_header676.2.1, label %polly.loop_header676.1.1

polly.loop_header676.2.1:                         ; preds = %polly.loop_exit684.1.1, %polly.loop_exit684.2.1
  %polly.indvar679.2.1 = phi i64 [ %polly.indvar_next680.2.1, %polly.loop_exit684.2.1 ], [ 0, %polly.loop_exit684.1.1 ]
  %620 = add nuw nsw i64 %polly.indvar679.2.1, 32
  %621 = mul nuw nsw i64 %620, 640
  %622 = trunc i64 %620 to i32
  %broadcast.splatinsert970 = insertelement <4 x i32> poison, i32 %622, i32 0
  %broadcast.splat971 = shufflevector <4 x i32> %broadcast.splatinsert970, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %polly.loop_header676.2.1
  %index964 = phi i64 [ 0, %polly.loop_header676.2.1 ], [ %index.next965, %vector.body962 ]
  %vec.ind968 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2.1 ], [ %vec.ind.next969, %vector.body962 ]
  %623 = add nuw nsw <4 x i64> %vec.ind968, <i64 64, i64 64, i64 64, i64 64>
  %624 = trunc <4 x i64> %623 to <4 x i32>
  %625 = mul <4 x i32> %broadcast.splat971, %624
  %626 = add <4 x i32> %625, <i32 3, i32 3, i32 3, i32 3>
  %627 = urem <4 x i32> %626, <i32 80, i32 80, i32 80, i32 80>
  %628 = sitofp <4 x i32> %627 to <4 x double>
  %629 = fmul fast <4 x double> %628, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %630 = extractelement <4 x i64> %623, i32 0
  %631 = shl i64 %630, 3
  %632 = add nuw nsw i64 %631, %621
  %633 = getelementptr i8, i8* %call, i64 %632
  %634 = bitcast i8* %633 to <4 x double>*
  store <4 x double> %629, <4 x double>* %634, align 8, !alias.scope !87, !noalias !89
  %index.next965 = add i64 %index964, 4
  %vec.ind.next969 = add <4 x i64> %vec.ind968, <i64 4, i64 4, i64 4, i64 4>
  %635 = icmp eq i64 %index.next965, 16
  br i1 %635, label %polly.loop_exit684.2.1, label %vector.body962, !llvm.loop !111

polly.loop_exit684.2.1:                           ; preds = %vector.body962
  %polly.indvar_next680.2.1 = add nuw nsw i64 %polly.indvar679.2.1, 1
  %exitcond809.2.1.not = icmp eq i64 %polly.indvar_next680.2.1, 32
  br i1 %exitcond809.2.1.not, label %polly.loop_header676.2859, label %polly.loop_header676.2.1

polly.loop_header676.2859:                        ; preds = %polly.loop_exit684.2.1, %polly.loop_exit684.2870
  %polly.indvar679.2858 = phi i64 [ %polly.indvar_next680.2868, %polly.loop_exit684.2870 ], [ 0, %polly.loop_exit684.2.1 ]
  %636 = add nuw nsw i64 %polly.indvar679.2858, 64
  %637 = mul nuw nsw i64 %636, 640
  %638 = trunc i64 %636 to i32
  %broadcast.splatinsert984 = insertelement <4 x i32> poison, i32 %638, i32 0
  %broadcast.splat985 = shufflevector <4 x i32> %broadcast.splatinsert984, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %polly.loop_header676.2859
  %index976 = phi i64 [ 0, %polly.loop_header676.2859 ], [ %index.next977, %vector.body974 ]
  %vec.ind982 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676.2859 ], [ %vec.ind.next983, %vector.body974 ]
  %639 = mul <4 x i32> %vec.ind982, %broadcast.splat985
  %640 = add <4 x i32> %639, <i32 3, i32 3, i32 3, i32 3>
  %641 = urem <4 x i32> %640, <i32 80, i32 80, i32 80, i32 80>
  %642 = sitofp <4 x i32> %641 to <4 x double>
  %643 = fmul fast <4 x double> %642, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %644 = shl i64 %index976, 3
  %645 = add nuw nsw i64 %644, %637
  %646 = getelementptr i8, i8* %call, i64 %645
  %647 = bitcast i8* %646 to <4 x double>*
  store <4 x double> %643, <4 x double>* %647, align 8, !alias.scope !87, !noalias !89
  %index.next977 = add i64 %index976, 4
  %vec.ind.next983 = add <4 x i32> %vec.ind982, <i32 4, i32 4, i32 4, i32 4>
  %648 = icmp eq i64 %index.next977, 32
  br i1 %648, label %polly.loop_exit684.2870, label %vector.body974, !llvm.loop !112

polly.loop_exit684.2870:                          ; preds = %vector.body974
  %polly.indvar_next680.2868 = add nuw nsw i64 %polly.indvar679.2858, 1
  %exitcond809.2869.not = icmp eq i64 %polly.indvar_next680.2868, 16
  br i1 %exitcond809.2869.not, label %polly.loop_header676.1.2, label %polly.loop_header676.2859

polly.loop_header676.1.2:                         ; preds = %polly.loop_exit684.2870, %polly.loop_exit684.1.2
  %polly.indvar679.1.2 = phi i64 [ %polly.indvar_next680.1.2, %polly.loop_exit684.1.2 ], [ 0, %polly.loop_exit684.2870 ]
  %649 = add nuw nsw i64 %polly.indvar679.1.2, 64
  %650 = mul nuw nsw i64 %649, 640
  %651 = trunc i64 %649 to i32
  %broadcast.splatinsert996 = insertelement <4 x i32> poison, i32 %651, i32 0
  %broadcast.splat997 = shufflevector <4 x i32> %broadcast.splatinsert996, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %polly.loop_header676.1.2
  %index990 = phi i64 [ 0, %polly.loop_header676.1.2 ], [ %index.next991, %vector.body988 ]
  %vec.ind994 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1.2 ], [ %vec.ind.next995, %vector.body988 ]
  %652 = add nuw nsw <4 x i64> %vec.ind994, <i64 32, i64 32, i64 32, i64 32>
  %653 = trunc <4 x i64> %652 to <4 x i32>
  %654 = mul <4 x i32> %broadcast.splat997, %653
  %655 = add <4 x i32> %654, <i32 3, i32 3, i32 3, i32 3>
  %656 = urem <4 x i32> %655, <i32 80, i32 80, i32 80, i32 80>
  %657 = sitofp <4 x i32> %656 to <4 x double>
  %658 = fmul fast <4 x double> %657, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %659 = extractelement <4 x i64> %652, i32 0
  %660 = shl i64 %659, 3
  %661 = add nuw nsw i64 %660, %650
  %662 = getelementptr i8, i8* %call, i64 %661
  %663 = bitcast i8* %662 to <4 x double>*
  store <4 x double> %658, <4 x double>* %663, align 8, !alias.scope !87, !noalias !89
  %index.next991 = add i64 %index990, 4
  %vec.ind.next995 = add <4 x i64> %vec.ind994, <i64 4, i64 4, i64 4, i64 4>
  %664 = icmp eq i64 %index.next991, 32
  br i1 %664, label %polly.loop_exit684.1.2, label %vector.body988, !llvm.loop !113

polly.loop_exit684.1.2:                           ; preds = %vector.body988
  %polly.indvar_next680.1.2 = add nuw nsw i64 %polly.indvar679.1.2, 1
  %exitcond809.1.2.not = icmp eq i64 %polly.indvar_next680.1.2, 16
  br i1 %exitcond809.1.2.not, label %polly.loop_header676.2.2, label %polly.loop_header676.1.2

polly.loop_header676.2.2:                         ; preds = %polly.loop_exit684.1.2, %polly.loop_exit684.2.2
  %polly.indvar679.2.2 = phi i64 [ %polly.indvar_next680.2.2, %polly.loop_exit684.2.2 ], [ 0, %polly.loop_exit684.1.2 ]
  %665 = add nuw nsw i64 %polly.indvar679.2.2, 64
  %666 = mul nuw nsw i64 %665, 640
  %667 = trunc i64 %665 to i32
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %667, i32 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %polly.loop_header676.2.2
  %index1002 = phi i64 [ 0, %polly.loop_header676.2.2 ], [ %index.next1003, %vector.body1000 ]
  %vec.ind1006 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2.2 ], [ %vec.ind.next1007, %vector.body1000 ]
  %668 = add nuw nsw <4 x i64> %vec.ind1006, <i64 64, i64 64, i64 64, i64 64>
  %669 = trunc <4 x i64> %668 to <4 x i32>
  %670 = mul <4 x i32> %broadcast.splat1009, %669
  %671 = add <4 x i32> %670, <i32 3, i32 3, i32 3, i32 3>
  %672 = urem <4 x i32> %671, <i32 80, i32 80, i32 80, i32 80>
  %673 = sitofp <4 x i32> %672 to <4 x double>
  %674 = fmul fast <4 x double> %673, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %675 = extractelement <4 x i64> %668, i32 0
  %676 = shl i64 %675, 3
  %677 = add nuw nsw i64 %676, %666
  %678 = getelementptr i8, i8* %call, i64 %677
  %679 = bitcast i8* %678 to <4 x double>*
  store <4 x double> %674, <4 x double>* %679, align 8, !alias.scope !87, !noalias !89
  %index.next1003 = add i64 %index1002, 4
  %vec.ind.next1007 = add <4 x i64> %vec.ind1006, <i64 4, i64 4, i64 4, i64 4>
  %680 = icmp eq i64 %index.next1003, 16
  br i1 %680, label %polly.loop_exit684.2.2, label %vector.body1000, !llvm.loop !114

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
!24 = !{!"llvm.loop.tile.size", i32 100}
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
