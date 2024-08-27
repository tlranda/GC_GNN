; ModuleID = 'syr2k_recreations//mmp_syr2k_S_51.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_51.c"
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
  %call699 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1560 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1560, %call2
  %polly.access.call2580 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2580, %call1
  %2 = or i1 %0, %1
  %polly.access.call600 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call600, %call2
  %4 = icmp ule i8* %polly.access.call2580, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call600, %call1
  %8 = icmp ule i8* %polly.access.call1560, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header685, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv7.i, i64 %index888
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit746.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header483, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i, i64 %index1170
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
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit513.4
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header333, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i52, i64 %index1193
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
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit363.4
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
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i91, i64 %index1219
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
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %exitcond767.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1228 = add i64 %indvar1227, 1
  br i1 %exitcond767.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond766.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond766.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.4
  %polly.loop_cond204 = phi i1 [ false, %polly.loop_exit213.4 ], [ true, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ 1, %polly.loop_exit213.4 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar202, -50
  %98 = icmp slt i64 %97, -10
  %99 = select i1 %98, i64 %97, i64 -10
  %100 = mul nuw nsw i64 %polly.indvar202, 50
  %101 = add nsw i64 %99, 60
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 15)
  %102 = mul nuw nsw i64 %polly.indvar214, 480
  %scevgep232 = getelementptr i8, i8* %call2, i64 %102
  %scevgep239 = getelementptr i8, i8* %call1, i64 %102
  %103 = mul nuw nsw i64 %polly.indvar214, 640
  %scevgep243 = getelementptr i8, i8* %call, i64 %103
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond764.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond764.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %104 = add nuw nsw i64 %polly.indvar220, %100
  %105 = shl i64 %104, 3
  %scevgep233 = getelementptr i8, i8* %scevgep232, i64 %105
  %scevgep233234 = bitcast i8* %scevgep233 to double*
  %_p_scalar_235 = load double, double* %scevgep233234, align 8, !alias.scope !63, !noalias !67
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %105
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond761.not = icmp eq i64 %polly.indvar_next221, %101
  br i1 %exitcond761.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %106 = mul nuw nsw i64 %polly.indvar226, 480
  %107 = add nuw nsw i64 %106, %105
  %scevgep229 = getelementptr i8, i8* %call1, i64 %107
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112 = fmul fast double %_p_scalar_235, %_p_scalar_231
  %scevgep236 = getelementptr i8, i8* %call2, i64 %107
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114 = fmul fast double %_p_scalar_242, %_p_scalar_238
  %108 = shl i64 %polly.indvar226, 3
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %108
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_246
  store double %p_add42.i118, double* %scevgep244245, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar226, %smin
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header333:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit341
  %indvar1201 = phi i64 [ %indvar.next1202, %polly.loop_exit341 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar336 = phi i64 [ %polly.indvar_next337, %polly.loop_exit341 ], [ 1, %kernel_syr2k.exit ]
  %109 = add i64 %indvar1201, 1
  %110 = mul nuw nsw i64 %polly.indvar336, 640
  %scevgep345 = getelementptr i8, i8* %call, i64 %110
  %min.iters.check1203 = icmp ult i64 %109, 4
  br i1 %min.iters.check1203, label %polly.loop_header339.preheader, label %vector.ph1204

vector.ph1204:                                    ; preds = %polly.loop_header333
  %n.vec1206 = and i64 %109, -4
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1200 ]
  %111 = shl nuw nsw i64 %index1207, 3
  %112 = getelementptr i8, i8* %scevgep345, i64 %111
  %113 = bitcast i8* %112 to <4 x double>*
  %wide.load1211 = load <4 x double>, <4 x double>* %113, align 8, !alias.scope !69, !noalias !71
  %114 = fmul fast <4 x double> %wide.load1211, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %115 = bitcast i8* %112 to <4 x double>*
  store <4 x double> %114, <4 x double>* %115, align 8, !alias.scope !69, !noalias !71
  %index.next1208 = add i64 %index1207, 4
  %116 = icmp eq i64 %index.next1208, %n.vec1206
  br i1 %116, label %middle.block1198, label %vector.body1200, !llvm.loop !74

middle.block1198:                                 ; preds = %vector.body1200
  %cmp.n1210 = icmp eq i64 %109, %n.vec1206
  br i1 %cmp.n1210, label %polly.loop_exit341, label %polly.loop_header339.preheader

polly.loop_header339.preheader:                   ; preds = %polly.loop_header333, %middle.block1198
  %polly.indvar342.ph = phi i64 [ 0, %polly.loop_header333 ], [ %n.vec1206, %middle.block1198 ]
  br label %polly.loop_header339

polly.loop_exit341:                               ; preds = %polly.loop_header339, %middle.block1198
  %polly.indvar_next337 = add nuw nsw i64 %polly.indvar336, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next337, 80
  %indvar.next1202 = add i64 %indvar1201, 1
  br i1 %exitcond778.not, label %polly.loop_header349, label %polly.loop_header333

polly.loop_header339:                             ; preds = %polly.loop_header339.preheader, %polly.loop_header339
  %polly.indvar342 = phi i64 [ %polly.indvar_next343, %polly.loop_header339 ], [ %polly.indvar342.ph, %polly.loop_header339.preheader ]
  %117 = shl nuw nsw i64 %polly.indvar342, 3
  %scevgep346 = getelementptr i8, i8* %scevgep345, i64 %117
  %scevgep346347 = bitcast i8* %scevgep346 to double*
  %_p_scalar_348 = load double, double* %scevgep346347, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_348, 1.200000e+00
  store double %p_mul.i57, double* %scevgep346347, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next343 = add nuw nsw i64 %polly.indvar342, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next343, %polly.indvar336
  br i1 %exitcond777.not, label %polly.loop_exit341, label %polly.loop_header339, !llvm.loop !75

polly.loop_header349:                             ; preds = %polly.loop_exit341, %polly.loop_exit363.4
  %polly.loop_cond354 = phi i1 [ false, %polly.loop_exit363.4 ], [ true, %polly.loop_exit341 ]
  %polly.indvar352 = phi i64 [ 1, %polly.loop_exit363.4 ], [ 0, %polly.loop_exit341 ]
  %118 = mul nuw nsw i64 %polly.indvar352, -50
  %119 = icmp slt i64 %118, -10
  %120 = select i1 %119, i64 %118, i64 -10
  %121 = mul nuw nsw i64 %polly.indvar352, 50
  %122 = add nsw i64 %120, 60
  br label %polly.loop_header361

polly.loop_header361:                             ; preds = %polly.loop_exit369, %polly.loop_header349
  %indvars.iv768 = phi i64 [ %indvars.iv.next769, %polly.loop_exit369 ], [ 0, %polly.loop_header349 ]
  %polly.indvar364 = phi i64 [ %polly.indvar_next365, %polly.loop_exit369 ], [ 0, %polly.loop_header349 ]
  %smin770 = call i64 @llvm.smin.i64(i64 %indvars.iv768, i64 15)
  %123 = mul nuw nsw i64 %polly.indvar364, 480
  %scevgep382 = getelementptr i8, i8* %call2, i64 %123
  %scevgep389 = getelementptr i8, i8* %call1, i64 %123
  %124 = mul nuw nsw i64 %polly.indvar364, 640
  %scevgep393 = getelementptr i8, i8* %call, i64 %124
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit375
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 1
  %exitcond775.not = icmp eq i64 %indvars.iv.next769, 80
  br i1 %exitcond775.not, label %polly.loop_header361.1, label %polly.loop_header361

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.loop_header361
  %polly.indvar370 = phi i64 [ 0, %polly.loop_header361 ], [ %polly.indvar_next371, %polly.loop_exit375 ]
  %125 = add nuw nsw i64 %polly.indvar370, %121
  %126 = shl i64 %125, 3
  %scevgep383 = getelementptr i8, i8* %scevgep382, i64 %126
  %scevgep383384 = bitcast i8* %scevgep383 to double*
  %_p_scalar_385 = load double, double* %scevgep383384, align 8, !alias.scope !73, !noalias !76
  %scevgep390 = getelementptr i8, i8* %scevgep389, i64 %126
  %scevgep390391 = bitcast i8* %scevgep390 to double*
  %_p_scalar_392 = load double, double* %scevgep390391, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond772.not = icmp eq i64 %polly.indvar_next371, %122
  br i1 %exitcond772.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header373:                             ; preds = %polly.loop_header373, %polly.loop_header367
  %polly.indvar376 = phi i64 [ 0, %polly.loop_header367 ], [ %polly.indvar_next377, %polly.loop_header373 ]
  %127 = mul nuw nsw i64 %polly.indvar376, 480
  %128 = add nuw nsw i64 %127, %126
  %scevgep379 = getelementptr i8, i8* %call1, i64 %128
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73 = fmul fast double %_p_scalar_385, %_p_scalar_381
  %scevgep386 = getelementptr i8, i8* %call2, i64 %128
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75 = fmul fast double %_p_scalar_392, %_p_scalar_388
  %129 = shl i64 %polly.indvar376, 3
  %scevgep394 = getelementptr i8, i8* %scevgep393, i64 %129
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_396
  store double %p_add42.i79, double* %scevgep394395, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond771.not = icmp eq i64 %polly.indvar376, %smin770
  br i1 %exitcond771.not, label %polly.loop_exit375, label %polly.loop_header373

polly.loop_header483:                             ; preds = %init_array.exit, %polly.loop_exit491
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit491 ], [ 0, %init_array.exit ]
  %polly.indvar486 = phi i64 [ %polly.indvar_next487, %polly.loop_exit491 ], [ 1, %init_array.exit ]
  %130 = add i64 %indvar, 1
  %131 = mul nuw nsw i64 %polly.indvar486, 640
  %scevgep495 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1177 = icmp ult i64 %130, 4
  br i1 %min.iters.check1177, label %polly.loop_header489.preheader, label %vector.ph1178

vector.ph1178:                                    ; preds = %polly.loop_header483
  %n.vec1180 = and i64 %130, -4
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1178
  %index1181 = phi i64 [ 0, %vector.ph1178 ], [ %index.next1182, %vector.body1176 ]
  %132 = shl nuw nsw i64 %index1181, 3
  %133 = getelementptr i8, i8* %scevgep495, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1185 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !78, !noalias !80
  %135 = fmul fast <4 x double> %wide.load1185, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !78, !noalias !80
  %index.next1182 = add i64 %index1181, 4
  %137 = icmp eq i64 %index.next1182, %n.vec1180
  br i1 %137, label %middle.block1174, label %vector.body1176, !llvm.loop !83

middle.block1174:                                 ; preds = %vector.body1176
  %cmp.n1184 = icmp eq i64 %130, %n.vec1180
  br i1 %cmp.n1184, label %polly.loop_exit491, label %polly.loop_header489.preheader

polly.loop_header489.preheader:                   ; preds = %polly.loop_header483, %middle.block1174
  %polly.indvar492.ph = phi i64 [ 0, %polly.loop_header483 ], [ %n.vec1180, %middle.block1174 ]
  br label %polly.loop_header489

polly.loop_exit491:                               ; preds = %polly.loop_header489, %middle.block1174
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond789.not = icmp eq i64 %polly.indvar_next487, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond789.not, label %polly.loop_header499, label %polly.loop_header483

polly.loop_header489:                             ; preds = %polly.loop_header489.preheader, %polly.loop_header489
  %polly.indvar492 = phi i64 [ %polly.indvar_next493, %polly.loop_header489 ], [ %polly.indvar492.ph, %polly.loop_header489.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar492, 3
  %scevgep496 = getelementptr i8, i8* %scevgep495, i64 %138
  %scevgep496497 = bitcast i8* %scevgep496 to double*
  %_p_scalar_498 = load double, double* %scevgep496497, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_498, 1.200000e+00
  store double %p_mul.i, double* %scevgep496497, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next493, %polly.indvar486
  br i1 %exitcond788.not, label %polly.loop_exit491, label %polly.loop_header489, !llvm.loop !84

polly.loop_header499:                             ; preds = %polly.loop_exit491, %polly.loop_exit513.4
  %polly.loop_cond504 = phi i1 [ false, %polly.loop_exit513.4 ], [ true, %polly.loop_exit491 ]
  %polly.indvar502 = phi i64 [ 1, %polly.loop_exit513.4 ], [ 0, %polly.loop_exit491 ]
  %139 = mul nuw nsw i64 %polly.indvar502, -50
  %140 = icmp slt i64 %139, -10
  %141 = select i1 %140, i64 %139, i64 -10
  %142 = mul nuw nsw i64 %polly.indvar502, 50
  %143 = add nsw i64 %141, 60
  br label %polly.loop_header511

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.loop_header499
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit519 ], [ 0, %polly.loop_header499 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 0, %polly.loop_header499 ]
  %smin781 = call i64 @llvm.smin.i64(i64 %indvars.iv779, i64 15)
  %144 = mul nuw nsw i64 %polly.indvar514, 480
  %scevgep532 = getelementptr i8, i8* %call2, i64 %144
  %scevgep539 = getelementptr i8, i8* %call1, i64 %144
  %145 = mul nuw nsw i64 %polly.indvar514, 640
  %scevgep543 = getelementptr i8, i8* %call, i64 %145
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %indvars.iv.next780 = add nuw nsw i64 %indvars.iv779, 1
  %exitcond786.not = icmp eq i64 %indvars.iv.next780, 80
  br i1 %exitcond786.not, label %polly.loop_header511.1, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %polly.indvar520 = phi i64 [ 0, %polly.loop_header511 ], [ %polly.indvar_next521, %polly.loop_exit525 ]
  %146 = add nuw nsw i64 %polly.indvar520, %142
  %147 = shl i64 %146, 3
  %scevgep533 = getelementptr i8, i8* %scevgep532, i64 %147
  %scevgep533534 = bitcast i8* %scevgep533 to double*
  %_p_scalar_535 = load double, double* %scevgep533534, align 8, !alias.scope !82, !noalias !85
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %147
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond783.not = icmp eq i64 %polly.indvar_next521, %143
  br i1 %exitcond783.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_header523, %polly.loop_header517
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header517 ], [ %polly.indvar_next527, %polly.loop_header523 ]
  %148 = mul nuw nsw i64 %polly.indvar526, 480
  %149 = add nuw nsw i64 %148, %147
  %scevgep529 = getelementptr i8, i8* %call1, i64 %149
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i = fmul fast double %_p_scalar_535, %_p_scalar_531
  %scevgep536 = getelementptr i8, i8* %call2, i64 %149
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i = fmul fast double %_p_scalar_542, %_p_scalar_538
  %150 = shl i64 %polly.indvar526, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %150
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_546
  store double %p_add42.i, double* %scevgep544545, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond782.not = icmp eq i64 %polly.indvar526, %smin781
  br i1 %exitcond782.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header685:                             ; preds = %entry, %polly.loop_exit693
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_exit693 ], [ 0, %entry ]
  %151 = mul nuw nsw i64 %polly.indvar688, 640
  %152 = trunc i64 %polly.indvar688 to i32
  %broadcast.splatinsert908 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat909 = shufflevector <4 x i32> %broadcast.splatinsert908, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body898

vector.body898:                                   ; preds = %vector.body898, %polly.loop_header685
  %index900 = phi i64 [ 0, %polly.loop_header685 ], [ %index.next901, %vector.body898 ]
  %vec.ind906 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685 ], [ %vec.ind.next907, %vector.body898 ]
  %153 = mul <4 x i32> %vec.ind906, %broadcast.splat909
  %154 = add <4 x i32> %153, <i32 3, i32 3, i32 3, i32 3>
  %155 = urem <4 x i32> %154, <i32 80, i32 80, i32 80, i32 80>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index900, 3
  %159 = add nuw nsw i64 %158, %151
  %160 = getelementptr i8, i8* %call, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !87, !noalias !89
  %index.next901 = add i64 %index900, 4
  %vec.ind.next907 = add <4 x i32> %vec.ind906, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next901, 32
  br i1 %162, label %polly.loop_exit693, label %vector.body898, !llvm.loop !92

polly.loop_exit693:                               ; preds = %vector.body898
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next689, 32
  br i1 %exitcond809.not, label %polly.loop_header685.1, label %polly.loop_header685

polly.loop_header712:                             ; preds = %polly.loop_exit693.2.2, %polly.loop_exit720
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_exit720 ], [ 0, %polly.loop_exit693.2.2 ]
  %163 = mul nuw nsw i64 %polly.indvar715, 480
  %164 = trunc i64 %polly.indvar715 to i32
  %broadcast.splatinsert1022 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1023 = shufflevector <4 x i32> %broadcast.splatinsert1022, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %polly.loop_header712
  %index1014 = phi i64 [ 0, %polly.loop_header712 ], [ %index.next1015, %vector.body1012 ]
  %vec.ind1020 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712 ], [ %vec.ind.next1021, %vector.body1012 ]
  %165 = mul <4 x i32> %vec.ind1020, %broadcast.splat1023
  %166 = add <4 x i32> %165, <i32 2, i32 2, i32 2, i32 2>
  %167 = urem <4 x i32> %166, <i32 60, i32 60, i32 60, i32 60>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %170 = shl i64 %index1014, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call2, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !91, !noalias !93
  %index.next1015 = add i64 %index1014, 4
  %vec.ind.next1021 = add <4 x i32> %vec.ind1020, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1015, 32
  br i1 %174, label %polly.loop_exit720, label %vector.body1012, !llvm.loop !94

polly.loop_exit720:                               ; preds = %vector.body1012
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next716, 32
  br i1 %exitcond800.not, label %polly.loop_header712.1, label %polly.loop_header712

polly.loop_header738:                             ; preds = %polly.loop_exit720.1.2, %polly.loop_exit746
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %polly.loop_exit720.1.2 ]
  %175 = mul nuw nsw i64 %polly.indvar741, 480
  %176 = trunc i64 %polly.indvar741 to i32
  %broadcast.splatinsert1100 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat1101 = shufflevector <4 x i32> %broadcast.splatinsert1100, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1090

vector.body1090:                                  ; preds = %vector.body1090, %polly.loop_header738
  %index1092 = phi i64 [ 0, %polly.loop_header738 ], [ %index.next1093, %vector.body1090 ]
  %vec.ind1098 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738 ], [ %vec.ind.next1099, %vector.body1090 ]
  %177 = mul <4 x i32> %vec.ind1098, %broadcast.splat1101
  %178 = add <4 x i32> %177, <i32 1, i32 1, i32 1, i32 1>
  %179 = urem <4 x i32> %178, <i32 80, i32 80, i32 80, i32 80>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %182 = shl i64 %index1092, 3
  %183 = add i64 %182, %175
  %184 = getelementptr i8, i8* %call1, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !90, !noalias !95
  %index.next1093 = add i64 %index1092, 4
  %vec.ind.next1099 = add <4 x i32> %vec.ind1098, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next1093, 32
  br i1 %186, label %polly.loop_exit746, label %vector.body1090, !llvm.loop !96

polly.loop_exit746:                               ; preds = %vector.body1090
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next742, 32
  br i1 %exitcond794.not, label %polly.loop_header738.1, label %polly.loop_header738

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 16, %polly.loop_exit219 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 15)
  %187 = mul nuw nsw i64 %polly.indvar214.1, 480
  %scevgep232.1 = getelementptr i8, i8* %call2, i64 %187
  %scevgep239.1 = getelementptr i8, i8* %call1, i64 %187
  %188 = mul nuw nsw i64 %polly.indvar214.1, 640
  %scevgep243.1 = getelementptr i8, i8* %call, i64 %188
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_exit225.1 ]
  %189 = add nuw nsw i64 %polly.indvar220.1, %100
  %190 = shl i64 %189, 3
  %scevgep233.1 = getelementptr i8, i8* %scevgep232.1, i64 %190
  %scevgep233234.1 = bitcast i8* %scevgep233.1 to double*
  %_p_scalar_235.1 = load double, double* %scevgep233234.1, align 8, !alias.scope !63, !noalias !67
  %scevgep240.1 = getelementptr i8, i8* %scevgep239.1, i64 %190
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %191 = add nuw nsw i64 %polly.indvar226.1, 16
  %192 = mul nuw nsw i64 %191, 480
  %193 = add nuw nsw i64 %192, %190
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %193
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1 = fmul fast double %_p_scalar_235.1, %_p_scalar_231.1
  %scevgep236.1 = getelementptr i8, i8* %call2, i64 %193
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %_p_scalar_238.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1 = fmul fast double %_p_scalar_242.1, %_p_scalar_238.1
  %194 = shl i64 %191, 3
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %194
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_246.1
  store double %p_add42.i118.1, double* %scevgep244245.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond761.1.not = icmp eq i64 %polly.indvar_next221.1, %101
  br i1 %exitcond761.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond764.1.not = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond764.1.not, label %polly.loop_header211.2, label %polly.loop_header211.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit219.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit219.1 ]
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 32, %polly.loop_exit219.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.2, i64 15)
  %195 = mul nuw nsw i64 %polly.indvar214.2, 480
  %scevgep232.2 = getelementptr i8, i8* %call2, i64 %195
  %scevgep239.2 = getelementptr i8, i8* %call1, i64 %195
  %196 = mul nuw nsw i64 %polly.indvar214.2, 640
  %scevgep243.2 = getelementptr i8, i8* %call, i64 %196
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_exit225.2 ]
  %197 = add nuw nsw i64 %polly.indvar220.2, %100
  %198 = shl i64 %197, 3
  %scevgep233.2 = getelementptr i8, i8* %scevgep232.2, i64 %198
  %scevgep233234.2 = bitcast i8* %scevgep233.2 to double*
  %_p_scalar_235.2 = load double, double* %scevgep233234.2, align 8, !alias.scope !63, !noalias !67
  %scevgep240.2 = getelementptr i8, i8* %scevgep239.2, i64 %198
  %scevgep240241.2 = bitcast i8* %scevgep240.2 to double*
  %_p_scalar_242.2 = load double, double* %scevgep240241.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_header217.2
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_header217.2 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %199 = add nuw nsw i64 %polly.indvar226.2, 32
  %200 = mul nuw nsw i64 %199, 480
  %201 = add nuw nsw i64 %200, %198
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %201
  %scevgep229230.2 = bitcast i8* %scevgep229.2 to double*
  %_p_scalar_231.2 = load double, double* %scevgep229230.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.2 = fmul fast double %_p_scalar_235.2, %_p_scalar_231.2
  %scevgep236.2 = getelementptr i8, i8* %call2, i64 %201
  %scevgep236237.2 = bitcast i8* %scevgep236.2 to double*
  %_p_scalar_238.2 = load double, double* %scevgep236237.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.2 = fmul fast double %_p_scalar_242.2, %_p_scalar_238.2
  %202 = shl i64 %199, 3
  %scevgep244.2 = getelementptr i8, i8* %scevgep243.2, i64 %202
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_246.2
  store double %p_add42.i118.2, double* %scevgep244245.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond761.2.not = icmp eq i64 %polly.indvar_next221.2, %101
  br i1 %exitcond761.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond764.2.not = icmp eq i64 %indvars.iv.next.2, 48
  br i1 %exitcond764.2.not, label %polly.loop_header211.3, label %polly.loop_header211.2

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.2, %polly.loop_exit219.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit219.3 ], [ 0, %polly.loop_exit219.2 ]
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit219.3 ], [ 48, %polly.loop_exit219.2 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.3, i64 15)
  %203 = mul nuw nsw i64 %polly.indvar214.3, 480
  %scevgep232.3 = getelementptr i8, i8* %call2, i64 %203
  %scevgep239.3 = getelementptr i8, i8* %call1, i64 %203
  %204 = mul nuw nsw i64 %polly.indvar214.3, 640
  %scevgep243.3 = getelementptr i8, i8* %call, i64 %204
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_exit225.3, %polly.loop_header211.3
  %polly.indvar220.3 = phi i64 [ 0, %polly.loop_header211.3 ], [ %polly.indvar_next221.3, %polly.loop_exit225.3 ]
  %205 = add nuw nsw i64 %polly.indvar220.3, %100
  %206 = shl i64 %205, 3
  %scevgep233.3 = getelementptr i8, i8* %scevgep232.3, i64 %206
  %scevgep233234.3 = bitcast i8* %scevgep233.3 to double*
  %_p_scalar_235.3 = load double, double* %scevgep233234.3, align 8, !alias.scope !63, !noalias !67
  %scevgep240.3 = getelementptr i8, i8* %scevgep239.3, i64 %206
  %scevgep240241.3 = bitcast i8* %scevgep240.3 to double*
  %_p_scalar_242.3 = load double, double* %scevgep240241.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_header217.3
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_header217.3 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %207 = add nuw nsw i64 %polly.indvar226.3, 48
  %208 = mul nuw nsw i64 %207, 480
  %209 = add nuw nsw i64 %208, %206
  %scevgep229.3 = getelementptr i8, i8* %call1, i64 %209
  %scevgep229230.3 = bitcast i8* %scevgep229.3 to double*
  %_p_scalar_231.3 = load double, double* %scevgep229230.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.3 = fmul fast double %_p_scalar_235.3, %_p_scalar_231.3
  %scevgep236.3 = getelementptr i8, i8* %call2, i64 %209
  %scevgep236237.3 = bitcast i8* %scevgep236.3 to double*
  %_p_scalar_238.3 = load double, double* %scevgep236237.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.3 = fmul fast double %_p_scalar_242.3, %_p_scalar_238.3
  %210 = shl i64 %207, 3
  %scevgep244.3 = getelementptr i8, i8* %scevgep243.3, i64 %210
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_246.3
  store double %p_add42.i118.3, double* %scevgep244245.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar226.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond761.3.not = icmp eq i64 %polly.indvar_next221.3, %101
  br i1 %exitcond761.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond764.3.not = icmp eq i64 %indvars.iv.next.3, 32
  br i1 %exitcond764.3.not, label %polly.loop_header211.4, label %polly.loop_header211.3

polly.loop_header211.4:                           ; preds = %polly.loop_exit219.3, %polly.loop_exit219.4
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4, %polly.loop_exit219.4 ], [ 0, %polly.loop_exit219.3 ]
  %polly.indvar214.4 = phi i64 [ %polly.indvar_next215.4, %polly.loop_exit219.4 ], [ 64, %polly.loop_exit219.3 ]
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.4, i64 15)
  %211 = mul nuw nsw i64 %polly.indvar214.4, 480
  %scevgep232.4 = getelementptr i8, i8* %call2, i64 %211
  %scevgep239.4 = getelementptr i8, i8* %call1, i64 %211
  %212 = mul nuw nsw i64 %polly.indvar214.4, 640
  %scevgep243.4 = getelementptr i8, i8* %call, i64 %212
  br label %polly.loop_header217.4

polly.loop_header217.4:                           ; preds = %polly.loop_exit225.4, %polly.loop_header211.4
  %polly.indvar220.4 = phi i64 [ 0, %polly.loop_header211.4 ], [ %polly.indvar_next221.4, %polly.loop_exit225.4 ]
  %213 = add nuw nsw i64 %polly.indvar220.4, %100
  %214 = shl i64 %213, 3
  %scevgep233.4 = getelementptr i8, i8* %scevgep232.4, i64 %214
  %scevgep233234.4 = bitcast i8* %scevgep233.4 to double*
  %_p_scalar_235.4 = load double, double* %scevgep233234.4, align 8, !alias.scope !63, !noalias !67
  %scevgep240.4 = getelementptr i8, i8* %scevgep239.4, i64 %214
  %scevgep240241.4 = bitcast i8* %scevgep240.4 to double*
  %_p_scalar_242.4 = load double, double* %scevgep240241.4, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.4

polly.loop_header223.4:                           ; preds = %polly.loop_header223.4, %polly.loop_header217.4
  %polly.indvar226.4 = phi i64 [ 0, %polly.loop_header217.4 ], [ %polly.indvar_next227.4, %polly.loop_header223.4 ]
  %215 = add nuw nsw i64 %polly.indvar226.4, 64
  %216 = mul nuw nsw i64 %215, 480
  %217 = add nuw nsw i64 %216, %214
  %scevgep229.4 = getelementptr i8, i8* %call1, i64 %217
  %scevgep229230.4 = bitcast i8* %scevgep229.4 to double*
  %_p_scalar_231.4 = load double, double* %scevgep229230.4, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.4 = fmul fast double %_p_scalar_235.4, %_p_scalar_231.4
  %scevgep236.4 = getelementptr i8, i8* %call2, i64 %217
  %scevgep236237.4 = bitcast i8* %scevgep236.4 to double*
  %_p_scalar_238.4 = load double, double* %scevgep236237.4, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.4 = fmul fast double %_p_scalar_242.4, %_p_scalar_238.4
  %218 = shl i64 %215, 3
  %scevgep244.4 = getelementptr i8, i8* %scevgep243.4, i64 %218
  %scevgep244245.4 = bitcast i8* %scevgep244.4 to double*
  %_p_scalar_246.4 = load double, double* %scevgep244245.4, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_246.4
  store double %p_add42.i118.4, double* %scevgep244245.4, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.4 = add nuw nsw i64 %polly.indvar226.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar226.4, %smin.4
  br i1 %exitcond.4.not, label %polly.loop_exit225.4, label %polly.loop_header223.4

polly.loop_exit225.4:                             ; preds = %polly.loop_header223.4
  %polly.indvar_next221.4 = add nuw nsw i64 %polly.indvar220.4, 1
  %exitcond761.4.not = icmp eq i64 %polly.indvar_next221.4, %101
  br i1 %exitcond761.4.not, label %polly.loop_exit219.4, label %polly.loop_header217.4

polly.loop_exit219.4:                             ; preds = %polly.loop_exit225.4
  %polly.indvar_next215.4 = add nuw nsw i64 %polly.indvar214.4, 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond764.4.not = icmp eq i64 %indvars.iv.next.4, 16
  br i1 %exitcond764.4.not, label %polly.loop_exit213.4, label %polly.loop_header211.4

polly.loop_exit213.4:                             ; preds = %polly.loop_exit219.4
  br i1 %polly.loop_cond204, label %polly.loop_header199, label %kernel_syr2k.exit129

polly.loop_header361.1:                           ; preds = %polly.loop_exit369, %polly.loop_exit369.1
  %indvars.iv768.1 = phi i64 [ %indvars.iv.next769.1, %polly.loop_exit369.1 ], [ 0, %polly.loop_exit369 ]
  %polly.indvar364.1 = phi i64 [ %polly.indvar_next365.1, %polly.loop_exit369.1 ], [ 16, %polly.loop_exit369 ]
  %smin770.1 = call i64 @llvm.smin.i64(i64 %indvars.iv768.1, i64 15)
  %219 = mul nuw nsw i64 %polly.indvar364.1, 480
  %scevgep382.1 = getelementptr i8, i8* %call2, i64 %219
  %scevgep389.1 = getelementptr i8, i8* %call1, i64 %219
  %220 = mul nuw nsw i64 %polly.indvar364.1, 640
  %scevgep393.1 = getelementptr i8, i8* %call, i64 %220
  br label %polly.loop_header367.1

polly.loop_header367.1:                           ; preds = %polly.loop_exit375.1, %polly.loop_header361.1
  %polly.indvar370.1 = phi i64 [ 0, %polly.loop_header361.1 ], [ %polly.indvar_next371.1, %polly.loop_exit375.1 ]
  %221 = add nuw nsw i64 %polly.indvar370.1, %121
  %222 = shl i64 %221, 3
  %scevgep383.1 = getelementptr i8, i8* %scevgep382.1, i64 %222
  %scevgep383384.1 = bitcast i8* %scevgep383.1 to double*
  %_p_scalar_385.1 = load double, double* %scevgep383384.1, align 8, !alias.scope !73, !noalias !76
  %scevgep390.1 = getelementptr i8, i8* %scevgep389.1, i64 %222
  %scevgep390391.1 = bitcast i8* %scevgep390.1 to double*
  %_p_scalar_392.1 = load double, double* %scevgep390391.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373.1

polly.loop_header373.1:                           ; preds = %polly.loop_header373.1, %polly.loop_header367.1
  %polly.indvar376.1 = phi i64 [ 0, %polly.loop_header367.1 ], [ %polly.indvar_next377.1, %polly.loop_header373.1 ]
  %223 = add nuw nsw i64 %polly.indvar376.1, 16
  %224 = mul nuw nsw i64 %223, 480
  %225 = add nuw nsw i64 %224, %222
  %scevgep379.1 = getelementptr i8, i8* %call1, i64 %225
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1 = fmul fast double %_p_scalar_385.1, %_p_scalar_381.1
  %scevgep386.1 = getelementptr i8, i8* %call2, i64 %225
  %scevgep386387.1 = bitcast i8* %scevgep386.1 to double*
  %_p_scalar_388.1 = load double, double* %scevgep386387.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1 = fmul fast double %_p_scalar_392.1, %_p_scalar_388.1
  %226 = shl i64 %223, 3
  %scevgep394.1 = getelementptr i8, i8* %scevgep393.1, i64 %226
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_396.1
  store double %p_add42.i79.1, double* %scevgep394395.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377.1 = add nuw nsw i64 %polly.indvar376.1, 1
  %exitcond771.1.not = icmp eq i64 %polly.indvar376.1, %smin770.1
  br i1 %exitcond771.1.not, label %polly.loop_exit375.1, label %polly.loop_header373.1

polly.loop_exit375.1:                             ; preds = %polly.loop_header373.1
  %polly.indvar_next371.1 = add nuw nsw i64 %polly.indvar370.1, 1
  %exitcond772.1.not = icmp eq i64 %polly.indvar_next371.1, %122
  br i1 %exitcond772.1.not, label %polly.loop_exit369.1, label %polly.loop_header367.1

polly.loop_exit369.1:                             ; preds = %polly.loop_exit375.1
  %polly.indvar_next365.1 = add nuw nsw i64 %polly.indvar364.1, 1
  %indvars.iv.next769.1 = add nuw nsw i64 %indvars.iv768.1, 1
  %exitcond775.1.not = icmp eq i64 %indvars.iv.next769.1, 64
  br i1 %exitcond775.1.not, label %polly.loop_header361.2, label %polly.loop_header361.1

polly.loop_header361.2:                           ; preds = %polly.loop_exit369.1, %polly.loop_exit369.2
  %indvars.iv768.2 = phi i64 [ %indvars.iv.next769.2, %polly.loop_exit369.2 ], [ 0, %polly.loop_exit369.1 ]
  %polly.indvar364.2 = phi i64 [ %polly.indvar_next365.2, %polly.loop_exit369.2 ], [ 32, %polly.loop_exit369.1 ]
  %smin770.2 = call i64 @llvm.smin.i64(i64 %indvars.iv768.2, i64 15)
  %227 = mul nuw nsw i64 %polly.indvar364.2, 480
  %scevgep382.2 = getelementptr i8, i8* %call2, i64 %227
  %scevgep389.2 = getelementptr i8, i8* %call1, i64 %227
  %228 = mul nuw nsw i64 %polly.indvar364.2, 640
  %scevgep393.2 = getelementptr i8, i8* %call, i64 %228
  br label %polly.loop_header367.2

polly.loop_header367.2:                           ; preds = %polly.loop_exit375.2, %polly.loop_header361.2
  %polly.indvar370.2 = phi i64 [ 0, %polly.loop_header361.2 ], [ %polly.indvar_next371.2, %polly.loop_exit375.2 ]
  %229 = add nuw nsw i64 %polly.indvar370.2, %121
  %230 = shl i64 %229, 3
  %scevgep383.2 = getelementptr i8, i8* %scevgep382.2, i64 %230
  %scevgep383384.2 = bitcast i8* %scevgep383.2 to double*
  %_p_scalar_385.2 = load double, double* %scevgep383384.2, align 8, !alias.scope !73, !noalias !76
  %scevgep390.2 = getelementptr i8, i8* %scevgep389.2, i64 %230
  %scevgep390391.2 = bitcast i8* %scevgep390.2 to double*
  %_p_scalar_392.2 = load double, double* %scevgep390391.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373.2

polly.loop_header373.2:                           ; preds = %polly.loop_header373.2, %polly.loop_header367.2
  %polly.indvar376.2 = phi i64 [ 0, %polly.loop_header367.2 ], [ %polly.indvar_next377.2, %polly.loop_header373.2 ]
  %231 = add nuw nsw i64 %polly.indvar376.2, 32
  %232 = mul nuw nsw i64 %231, 480
  %233 = add nuw nsw i64 %232, %230
  %scevgep379.2 = getelementptr i8, i8* %call1, i64 %233
  %scevgep379380.2 = bitcast i8* %scevgep379.2 to double*
  %_p_scalar_381.2 = load double, double* %scevgep379380.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.2 = fmul fast double %_p_scalar_385.2, %_p_scalar_381.2
  %scevgep386.2 = getelementptr i8, i8* %call2, i64 %233
  %scevgep386387.2 = bitcast i8* %scevgep386.2 to double*
  %_p_scalar_388.2 = load double, double* %scevgep386387.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.2 = fmul fast double %_p_scalar_392.2, %_p_scalar_388.2
  %234 = shl i64 %231, 3
  %scevgep394.2 = getelementptr i8, i8* %scevgep393.2, i64 %234
  %scevgep394395.2 = bitcast i8* %scevgep394.2 to double*
  %_p_scalar_396.2 = load double, double* %scevgep394395.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_396.2
  store double %p_add42.i79.2, double* %scevgep394395.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377.2 = add nuw nsw i64 %polly.indvar376.2, 1
  %exitcond771.2.not = icmp eq i64 %polly.indvar376.2, %smin770.2
  br i1 %exitcond771.2.not, label %polly.loop_exit375.2, label %polly.loop_header373.2

polly.loop_exit375.2:                             ; preds = %polly.loop_header373.2
  %polly.indvar_next371.2 = add nuw nsw i64 %polly.indvar370.2, 1
  %exitcond772.2.not = icmp eq i64 %polly.indvar_next371.2, %122
  br i1 %exitcond772.2.not, label %polly.loop_exit369.2, label %polly.loop_header367.2

polly.loop_exit369.2:                             ; preds = %polly.loop_exit375.2
  %polly.indvar_next365.2 = add nuw nsw i64 %polly.indvar364.2, 1
  %indvars.iv.next769.2 = add nuw nsw i64 %indvars.iv768.2, 1
  %exitcond775.2.not = icmp eq i64 %indvars.iv.next769.2, 48
  br i1 %exitcond775.2.not, label %polly.loop_header361.3, label %polly.loop_header361.2

polly.loop_header361.3:                           ; preds = %polly.loop_exit369.2, %polly.loop_exit369.3
  %indvars.iv768.3 = phi i64 [ %indvars.iv.next769.3, %polly.loop_exit369.3 ], [ 0, %polly.loop_exit369.2 ]
  %polly.indvar364.3 = phi i64 [ %polly.indvar_next365.3, %polly.loop_exit369.3 ], [ 48, %polly.loop_exit369.2 ]
  %smin770.3 = call i64 @llvm.smin.i64(i64 %indvars.iv768.3, i64 15)
  %235 = mul nuw nsw i64 %polly.indvar364.3, 480
  %scevgep382.3 = getelementptr i8, i8* %call2, i64 %235
  %scevgep389.3 = getelementptr i8, i8* %call1, i64 %235
  %236 = mul nuw nsw i64 %polly.indvar364.3, 640
  %scevgep393.3 = getelementptr i8, i8* %call, i64 %236
  br label %polly.loop_header367.3

polly.loop_header367.3:                           ; preds = %polly.loop_exit375.3, %polly.loop_header361.3
  %polly.indvar370.3 = phi i64 [ 0, %polly.loop_header361.3 ], [ %polly.indvar_next371.3, %polly.loop_exit375.3 ]
  %237 = add nuw nsw i64 %polly.indvar370.3, %121
  %238 = shl i64 %237, 3
  %scevgep383.3 = getelementptr i8, i8* %scevgep382.3, i64 %238
  %scevgep383384.3 = bitcast i8* %scevgep383.3 to double*
  %_p_scalar_385.3 = load double, double* %scevgep383384.3, align 8, !alias.scope !73, !noalias !76
  %scevgep390.3 = getelementptr i8, i8* %scevgep389.3, i64 %238
  %scevgep390391.3 = bitcast i8* %scevgep390.3 to double*
  %_p_scalar_392.3 = load double, double* %scevgep390391.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373.3

polly.loop_header373.3:                           ; preds = %polly.loop_header373.3, %polly.loop_header367.3
  %polly.indvar376.3 = phi i64 [ 0, %polly.loop_header367.3 ], [ %polly.indvar_next377.3, %polly.loop_header373.3 ]
  %239 = add nuw nsw i64 %polly.indvar376.3, 48
  %240 = mul nuw nsw i64 %239, 480
  %241 = add nuw nsw i64 %240, %238
  %scevgep379.3 = getelementptr i8, i8* %call1, i64 %241
  %scevgep379380.3 = bitcast i8* %scevgep379.3 to double*
  %_p_scalar_381.3 = load double, double* %scevgep379380.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.3 = fmul fast double %_p_scalar_385.3, %_p_scalar_381.3
  %scevgep386.3 = getelementptr i8, i8* %call2, i64 %241
  %scevgep386387.3 = bitcast i8* %scevgep386.3 to double*
  %_p_scalar_388.3 = load double, double* %scevgep386387.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.3 = fmul fast double %_p_scalar_392.3, %_p_scalar_388.3
  %242 = shl i64 %239, 3
  %scevgep394.3 = getelementptr i8, i8* %scevgep393.3, i64 %242
  %scevgep394395.3 = bitcast i8* %scevgep394.3 to double*
  %_p_scalar_396.3 = load double, double* %scevgep394395.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_396.3
  store double %p_add42.i79.3, double* %scevgep394395.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377.3 = add nuw nsw i64 %polly.indvar376.3, 1
  %exitcond771.3.not = icmp eq i64 %polly.indvar376.3, %smin770.3
  br i1 %exitcond771.3.not, label %polly.loop_exit375.3, label %polly.loop_header373.3

polly.loop_exit375.3:                             ; preds = %polly.loop_header373.3
  %polly.indvar_next371.3 = add nuw nsw i64 %polly.indvar370.3, 1
  %exitcond772.3.not = icmp eq i64 %polly.indvar_next371.3, %122
  br i1 %exitcond772.3.not, label %polly.loop_exit369.3, label %polly.loop_header367.3

polly.loop_exit369.3:                             ; preds = %polly.loop_exit375.3
  %polly.indvar_next365.3 = add nuw nsw i64 %polly.indvar364.3, 1
  %indvars.iv.next769.3 = add nuw nsw i64 %indvars.iv768.3, 1
  %exitcond775.3.not = icmp eq i64 %indvars.iv.next769.3, 32
  br i1 %exitcond775.3.not, label %polly.loop_header361.4, label %polly.loop_header361.3

polly.loop_header361.4:                           ; preds = %polly.loop_exit369.3, %polly.loop_exit369.4
  %indvars.iv768.4 = phi i64 [ %indvars.iv.next769.4, %polly.loop_exit369.4 ], [ 0, %polly.loop_exit369.3 ]
  %polly.indvar364.4 = phi i64 [ %polly.indvar_next365.4, %polly.loop_exit369.4 ], [ 64, %polly.loop_exit369.3 ]
  %smin770.4 = call i64 @llvm.smin.i64(i64 %indvars.iv768.4, i64 15)
  %243 = mul nuw nsw i64 %polly.indvar364.4, 480
  %scevgep382.4 = getelementptr i8, i8* %call2, i64 %243
  %scevgep389.4 = getelementptr i8, i8* %call1, i64 %243
  %244 = mul nuw nsw i64 %polly.indvar364.4, 640
  %scevgep393.4 = getelementptr i8, i8* %call, i64 %244
  br label %polly.loop_header367.4

polly.loop_header367.4:                           ; preds = %polly.loop_exit375.4, %polly.loop_header361.4
  %polly.indvar370.4 = phi i64 [ 0, %polly.loop_header361.4 ], [ %polly.indvar_next371.4, %polly.loop_exit375.4 ]
  %245 = add nuw nsw i64 %polly.indvar370.4, %121
  %246 = shl i64 %245, 3
  %scevgep383.4 = getelementptr i8, i8* %scevgep382.4, i64 %246
  %scevgep383384.4 = bitcast i8* %scevgep383.4 to double*
  %_p_scalar_385.4 = load double, double* %scevgep383384.4, align 8, !alias.scope !73, !noalias !76
  %scevgep390.4 = getelementptr i8, i8* %scevgep389.4, i64 %246
  %scevgep390391.4 = bitcast i8* %scevgep390.4 to double*
  %_p_scalar_392.4 = load double, double* %scevgep390391.4, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373.4

polly.loop_header373.4:                           ; preds = %polly.loop_header373.4, %polly.loop_header367.4
  %polly.indvar376.4 = phi i64 [ 0, %polly.loop_header367.4 ], [ %polly.indvar_next377.4, %polly.loop_header373.4 ]
  %247 = add nuw nsw i64 %polly.indvar376.4, 64
  %248 = mul nuw nsw i64 %247, 480
  %249 = add nuw nsw i64 %248, %246
  %scevgep379.4 = getelementptr i8, i8* %call1, i64 %249
  %scevgep379380.4 = bitcast i8* %scevgep379.4 to double*
  %_p_scalar_381.4 = load double, double* %scevgep379380.4, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.4 = fmul fast double %_p_scalar_385.4, %_p_scalar_381.4
  %scevgep386.4 = getelementptr i8, i8* %call2, i64 %249
  %scevgep386387.4 = bitcast i8* %scevgep386.4 to double*
  %_p_scalar_388.4 = load double, double* %scevgep386387.4, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.4 = fmul fast double %_p_scalar_392.4, %_p_scalar_388.4
  %250 = shl i64 %247, 3
  %scevgep394.4 = getelementptr i8, i8* %scevgep393.4, i64 %250
  %scevgep394395.4 = bitcast i8* %scevgep394.4 to double*
  %_p_scalar_396.4 = load double, double* %scevgep394395.4, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_396.4
  store double %p_add42.i79.4, double* %scevgep394395.4, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377.4 = add nuw nsw i64 %polly.indvar376.4, 1
  %exitcond771.4.not = icmp eq i64 %polly.indvar376.4, %smin770.4
  br i1 %exitcond771.4.not, label %polly.loop_exit375.4, label %polly.loop_header373.4

polly.loop_exit375.4:                             ; preds = %polly.loop_header373.4
  %polly.indvar_next371.4 = add nuw nsw i64 %polly.indvar370.4, 1
  %exitcond772.4.not = icmp eq i64 %polly.indvar_next371.4, %122
  br i1 %exitcond772.4.not, label %polly.loop_exit369.4, label %polly.loop_header367.4

polly.loop_exit369.4:                             ; preds = %polly.loop_exit375.4
  %polly.indvar_next365.4 = add nuw nsw i64 %polly.indvar364.4, 1
  %indvars.iv.next769.4 = add nuw nsw i64 %indvars.iv768.4, 1
  %exitcond775.4.not = icmp eq i64 %indvars.iv.next769.4, 16
  br i1 %exitcond775.4.not, label %polly.loop_exit363.4, label %polly.loop_header361.4

polly.loop_exit363.4:                             ; preds = %polly.loop_exit369.4
  br i1 %polly.loop_cond354, label %polly.loop_header349, label %kernel_syr2k.exit90

polly.loop_header511.1:                           ; preds = %polly.loop_exit519, %polly.loop_exit519.1
  %indvars.iv779.1 = phi i64 [ %indvars.iv.next780.1, %polly.loop_exit519.1 ], [ 0, %polly.loop_exit519 ]
  %polly.indvar514.1 = phi i64 [ %polly.indvar_next515.1, %polly.loop_exit519.1 ], [ 16, %polly.loop_exit519 ]
  %smin781.1 = call i64 @llvm.smin.i64(i64 %indvars.iv779.1, i64 15)
  %251 = mul nuw nsw i64 %polly.indvar514.1, 480
  %scevgep532.1 = getelementptr i8, i8* %call2, i64 %251
  %scevgep539.1 = getelementptr i8, i8* %call1, i64 %251
  %252 = mul nuw nsw i64 %polly.indvar514.1, 640
  %scevgep543.1 = getelementptr i8, i8* %call, i64 %252
  br label %polly.loop_header517.1

polly.loop_header517.1:                           ; preds = %polly.loop_exit525.1, %polly.loop_header511.1
  %polly.indvar520.1 = phi i64 [ 0, %polly.loop_header511.1 ], [ %polly.indvar_next521.1, %polly.loop_exit525.1 ]
  %253 = add nuw nsw i64 %polly.indvar520.1, %142
  %254 = shl i64 %253, 3
  %scevgep533.1 = getelementptr i8, i8* %scevgep532.1, i64 %254
  %scevgep533534.1 = bitcast i8* %scevgep533.1 to double*
  %_p_scalar_535.1 = load double, double* %scevgep533534.1, align 8, !alias.scope !82, !noalias !85
  %scevgep540.1 = getelementptr i8, i8* %scevgep539.1, i64 %254
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523.1

polly.loop_header523.1:                           ; preds = %polly.loop_header523.1, %polly.loop_header517.1
  %polly.indvar526.1 = phi i64 [ 0, %polly.loop_header517.1 ], [ %polly.indvar_next527.1, %polly.loop_header523.1 ]
  %255 = add nuw nsw i64 %polly.indvar526.1, 16
  %256 = mul nuw nsw i64 %255, 480
  %257 = add nuw nsw i64 %256, %254
  %scevgep529.1 = getelementptr i8, i8* %call1, i64 %257
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1 = fmul fast double %_p_scalar_535.1, %_p_scalar_531.1
  %scevgep536.1 = getelementptr i8, i8* %call2, i64 %257
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1 = fmul fast double %_p_scalar_542.1, %_p_scalar_538.1
  %258 = shl i64 %255, 3
  %scevgep544.1 = getelementptr i8, i8* %scevgep543.1, i64 %258
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_546.1
  store double %p_add42.i.1, double* %scevgep544545.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527.1 = add nuw nsw i64 %polly.indvar526.1, 1
  %exitcond782.1.not = icmp eq i64 %polly.indvar526.1, %smin781.1
  br i1 %exitcond782.1.not, label %polly.loop_exit525.1, label %polly.loop_header523.1

polly.loop_exit525.1:                             ; preds = %polly.loop_header523.1
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %exitcond783.1.not = icmp eq i64 %polly.indvar_next521.1, %143
  br i1 %exitcond783.1.not, label %polly.loop_exit519.1, label %polly.loop_header517.1

polly.loop_exit519.1:                             ; preds = %polly.loop_exit525.1
  %polly.indvar_next515.1 = add nuw nsw i64 %polly.indvar514.1, 1
  %indvars.iv.next780.1 = add nuw nsw i64 %indvars.iv779.1, 1
  %exitcond786.1.not = icmp eq i64 %indvars.iv.next780.1, 64
  br i1 %exitcond786.1.not, label %polly.loop_header511.2, label %polly.loop_header511.1

polly.loop_header511.2:                           ; preds = %polly.loop_exit519.1, %polly.loop_exit519.2
  %indvars.iv779.2 = phi i64 [ %indvars.iv.next780.2, %polly.loop_exit519.2 ], [ 0, %polly.loop_exit519.1 ]
  %polly.indvar514.2 = phi i64 [ %polly.indvar_next515.2, %polly.loop_exit519.2 ], [ 32, %polly.loop_exit519.1 ]
  %smin781.2 = call i64 @llvm.smin.i64(i64 %indvars.iv779.2, i64 15)
  %259 = mul nuw nsw i64 %polly.indvar514.2, 480
  %scevgep532.2 = getelementptr i8, i8* %call2, i64 %259
  %scevgep539.2 = getelementptr i8, i8* %call1, i64 %259
  %260 = mul nuw nsw i64 %polly.indvar514.2, 640
  %scevgep543.2 = getelementptr i8, i8* %call, i64 %260
  br label %polly.loop_header517.2

polly.loop_header517.2:                           ; preds = %polly.loop_exit525.2, %polly.loop_header511.2
  %polly.indvar520.2 = phi i64 [ 0, %polly.loop_header511.2 ], [ %polly.indvar_next521.2, %polly.loop_exit525.2 ]
  %261 = add nuw nsw i64 %polly.indvar520.2, %142
  %262 = shl i64 %261, 3
  %scevgep533.2 = getelementptr i8, i8* %scevgep532.2, i64 %262
  %scevgep533534.2 = bitcast i8* %scevgep533.2 to double*
  %_p_scalar_535.2 = load double, double* %scevgep533534.2, align 8, !alias.scope !82, !noalias !85
  %scevgep540.2 = getelementptr i8, i8* %scevgep539.2, i64 %262
  %scevgep540541.2 = bitcast i8* %scevgep540.2 to double*
  %_p_scalar_542.2 = load double, double* %scevgep540541.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523.2

polly.loop_header523.2:                           ; preds = %polly.loop_header523.2, %polly.loop_header517.2
  %polly.indvar526.2 = phi i64 [ 0, %polly.loop_header517.2 ], [ %polly.indvar_next527.2, %polly.loop_header523.2 ]
  %263 = add nuw nsw i64 %polly.indvar526.2, 32
  %264 = mul nuw nsw i64 %263, 480
  %265 = add nuw nsw i64 %264, %262
  %scevgep529.2 = getelementptr i8, i8* %call1, i64 %265
  %scevgep529530.2 = bitcast i8* %scevgep529.2 to double*
  %_p_scalar_531.2 = load double, double* %scevgep529530.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.2 = fmul fast double %_p_scalar_535.2, %_p_scalar_531.2
  %scevgep536.2 = getelementptr i8, i8* %call2, i64 %265
  %scevgep536537.2 = bitcast i8* %scevgep536.2 to double*
  %_p_scalar_538.2 = load double, double* %scevgep536537.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.2 = fmul fast double %_p_scalar_542.2, %_p_scalar_538.2
  %266 = shl i64 %263, 3
  %scevgep544.2 = getelementptr i8, i8* %scevgep543.2, i64 %266
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_546.2
  store double %p_add42.i.2, double* %scevgep544545.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527.2 = add nuw nsw i64 %polly.indvar526.2, 1
  %exitcond782.2.not = icmp eq i64 %polly.indvar526.2, %smin781.2
  br i1 %exitcond782.2.not, label %polly.loop_exit525.2, label %polly.loop_header523.2

polly.loop_exit525.2:                             ; preds = %polly.loop_header523.2
  %polly.indvar_next521.2 = add nuw nsw i64 %polly.indvar520.2, 1
  %exitcond783.2.not = icmp eq i64 %polly.indvar_next521.2, %143
  br i1 %exitcond783.2.not, label %polly.loop_exit519.2, label %polly.loop_header517.2

polly.loop_exit519.2:                             ; preds = %polly.loop_exit525.2
  %polly.indvar_next515.2 = add nuw nsw i64 %polly.indvar514.2, 1
  %indvars.iv.next780.2 = add nuw nsw i64 %indvars.iv779.2, 1
  %exitcond786.2.not = icmp eq i64 %indvars.iv.next780.2, 48
  br i1 %exitcond786.2.not, label %polly.loop_header511.3, label %polly.loop_header511.2

polly.loop_header511.3:                           ; preds = %polly.loop_exit519.2, %polly.loop_exit519.3
  %indvars.iv779.3 = phi i64 [ %indvars.iv.next780.3, %polly.loop_exit519.3 ], [ 0, %polly.loop_exit519.2 ]
  %polly.indvar514.3 = phi i64 [ %polly.indvar_next515.3, %polly.loop_exit519.3 ], [ 48, %polly.loop_exit519.2 ]
  %smin781.3 = call i64 @llvm.smin.i64(i64 %indvars.iv779.3, i64 15)
  %267 = mul nuw nsw i64 %polly.indvar514.3, 480
  %scevgep532.3 = getelementptr i8, i8* %call2, i64 %267
  %scevgep539.3 = getelementptr i8, i8* %call1, i64 %267
  %268 = mul nuw nsw i64 %polly.indvar514.3, 640
  %scevgep543.3 = getelementptr i8, i8* %call, i64 %268
  br label %polly.loop_header517.3

polly.loop_header517.3:                           ; preds = %polly.loop_exit525.3, %polly.loop_header511.3
  %polly.indvar520.3 = phi i64 [ 0, %polly.loop_header511.3 ], [ %polly.indvar_next521.3, %polly.loop_exit525.3 ]
  %269 = add nuw nsw i64 %polly.indvar520.3, %142
  %270 = shl i64 %269, 3
  %scevgep533.3 = getelementptr i8, i8* %scevgep532.3, i64 %270
  %scevgep533534.3 = bitcast i8* %scevgep533.3 to double*
  %_p_scalar_535.3 = load double, double* %scevgep533534.3, align 8, !alias.scope !82, !noalias !85
  %scevgep540.3 = getelementptr i8, i8* %scevgep539.3, i64 %270
  %scevgep540541.3 = bitcast i8* %scevgep540.3 to double*
  %_p_scalar_542.3 = load double, double* %scevgep540541.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523.3

polly.loop_header523.3:                           ; preds = %polly.loop_header523.3, %polly.loop_header517.3
  %polly.indvar526.3 = phi i64 [ 0, %polly.loop_header517.3 ], [ %polly.indvar_next527.3, %polly.loop_header523.3 ]
  %271 = add nuw nsw i64 %polly.indvar526.3, 48
  %272 = mul nuw nsw i64 %271, 480
  %273 = add nuw nsw i64 %272, %270
  %scevgep529.3 = getelementptr i8, i8* %call1, i64 %273
  %scevgep529530.3 = bitcast i8* %scevgep529.3 to double*
  %_p_scalar_531.3 = load double, double* %scevgep529530.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.3 = fmul fast double %_p_scalar_535.3, %_p_scalar_531.3
  %scevgep536.3 = getelementptr i8, i8* %call2, i64 %273
  %scevgep536537.3 = bitcast i8* %scevgep536.3 to double*
  %_p_scalar_538.3 = load double, double* %scevgep536537.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.3 = fmul fast double %_p_scalar_542.3, %_p_scalar_538.3
  %274 = shl i64 %271, 3
  %scevgep544.3 = getelementptr i8, i8* %scevgep543.3, i64 %274
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_546.3
  store double %p_add42.i.3, double* %scevgep544545.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527.3 = add nuw nsw i64 %polly.indvar526.3, 1
  %exitcond782.3.not = icmp eq i64 %polly.indvar526.3, %smin781.3
  br i1 %exitcond782.3.not, label %polly.loop_exit525.3, label %polly.loop_header523.3

polly.loop_exit525.3:                             ; preds = %polly.loop_header523.3
  %polly.indvar_next521.3 = add nuw nsw i64 %polly.indvar520.3, 1
  %exitcond783.3.not = icmp eq i64 %polly.indvar_next521.3, %143
  br i1 %exitcond783.3.not, label %polly.loop_exit519.3, label %polly.loop_header517.3

polly.loop_exit519.3:                             ; preds = %polly.loop_exit525.3
  %polly.indvar_next515.3 = add nuw nsw i64 %polly.indvar514.3, 1
  %indvars.iv.next780.3 = add nuw nsw i64 %indvars.iv779.3, 1
  %exitcond786.3.not = icmp eq i64 %indvars.iv.next780.3, 32
  br i1 %exitcond786.3.not, label %polly.loop_header511.4, label %polly.loop_header511.3

polly.loop_header511.4:                           ; preds = %polly.loop_exit519.3, %polly.loop_exit519.4
  %indvars.iv779.4 = phi i64 [ %indvars.iv.next780.4, %polly.loop_exit519.4 ], [ 0, %polly.loop_exit519.3 ]
  %polly.indvar514.4 = phi i64 [ %polly.indvar_next515.4, %polly.loop_exit519.4 ], [ 64, %polly.loop_exit519.3 ]
  %smin781.4 = call i64 @llvm.smin.i64(i64 %indvars.iv779.4, i64 15)
  %275 = mul nuw nsw i64 %polly.indvar514.4, 480
  %scevgep532.4 = getelementptr i8, i8* %call2, i64 %275
  %scevgep539.4 = getelementptr i8, i8* %call1, i64 %275
  %276 = mul nuw nsw i64 %polly.indvar514.4, 640
  %scevgep543.4 = getelementptr i8, i8* %call, i64 %276
  br label %polly.loop_header517.4

polly.loop_header517.4:                           ; preds = %polly.loop_exit525.4, %polly.loop_header511.4
  %polly.indvar520.4 = phi i64 [ 0, %polly.loop_header511.4 ], [ %polly.indvar_next521.4, %polly.loop_exit525.4 ]
  %277 = add nuw nsw i64 %polly.indvar520.4, %142
  %278 = shl i64 %277, 3
  %scevgep533.4 = getelementptr i8, i8* %scevgep532.4, i64 %278
  %scevgep533534.4 = bitcast i8* %scevgep533.4 to double*
  %_p_scalar_535.4 = load double, double* %scevgep533534.4, align 8, !alias.scope !82, !noalias !85
  %scevgep540.4 = getelementptr i8, i8* %scevgep539.4, i64 %278
  %scevgep540541.4 = bitcast i8* %scevgep540.4 to double*
  %_p_scalar_542.4 = load double, double* %scevgep540541.4, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523.4

polly.loop_header523.4:                           ; preds = %polly.loop_header523.4, %polly.loop_header517.4
  %polly.indvar526.4 = phi i64 [ 0, %polly.loop_header517.4 ], [ %polly.indvar_next527.4, %polly.loop_header523.4 ]
  %279 = add nuw nsw i64 %polly.indvar526.4, 64
  %280 = mul nuw nsw i64 %279, 480
  %281 = add nuw nsw i64 %280, %278
  %scevgep529.4 = getelementptr i8, i8* %call1, i64 %281
  %scevgep529530.4 = bitcast i8* %scevgep529.4 to double*
  %_p_scalar_531.4 = load double, double* %scevgep529530.4, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.4 = fmul fast double %_p_scalar_535.4, %_p_scalar_531.4
  %scevgep536.4 = getelementptr i8, i8* %call2, i64 %281
  %scevgep536537.4 = bitcast i8* %scevgep536.4 to double*
  %_p_scalar_538.4 = load double, double* %scevgep536537.4, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.4 = fmul fast double %_p_scalar_542.4, %_p_scalar_538.4
  %282 = shl i64 %279, 3
  %scevgep544.4 = getelementptr i8, i8* %scevgep543.4, i64 %282
  %scevgep544545.4 = bitcast i8* %scevgep544.4 to double*
  %_p_scalar_546.4 = load double, double* %scevgep544545.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_546.4
  store double %p_add42.i.4, double* %scevgep544545.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527.4 = add nuw nsw i64 %polly.indvar526.4, 1
  %exitcond782.4.not = icmp eq i64 %polly.indvar526.4, %smin781.4
  br i1 %exitcond782.4.not, label %polly.loop_exit525.4, label %polly.loop_header523.4

polly.loop_exit525.4:                             ; preds = %polly.loop_header523.4
  %polly.indvar_next521.4 = add nuw nsw i64 %polly.indvar520.4, 1
  %exitcond783.4.not = icmp eq i64 %polly.indvar_next521.4, %143
  br i1 %exitcond783.4.not, label %polly.loop_exit519.4, label %polly.loop_header517.4

polly.loop_exit519.4:                             ; preds = %polly.loop_exit525.4
  %polly.indvar_next515.4 = add nuw nsw i64 %polly.indvar514.4, 1
  %indvars.iv.next780.4 = add nuw nsw i64 %indvars.iv779.4, 1
  %exitcond786.4.not = icmp eq i64 %indvars.iv.next780.4, 16
  br i1 %exitcond786.4.not, label %polly.loop_exit513.4, label %polly.loop_header511.4

polly.loop_exit513.4:                             ; preds = %polly.loop_exit519.4
  br i1 %polly.loop_cond504, label %polly.loop_header499, label %kernel_syr2k.exit

polly.loop_header738.1:                           ; preds = %polly.loop_exit746, %polly.loop_exit746.1
  %polly.indvar741.1 = phi i64 [ %polly.indvar_next742.1, %polly.loop_exit746.1 ], [ 0, %polly.loop_exit746 ]
  %283 = mul nuw nsw i64 %polly.indvar741.1, 480
  %284 = trunc i64 %polly.indvar741.1 to i32
  %broadcast.splatinsert1112 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1113 = shufflevector <4 x i32> %broadcast.splatinsert1112, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %polly.loop_header738.1
  %index1106 = phi i64 [ 0, %polly.loop_header738.1 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1 ], [ %vec.ind.next1111, %vector.body1104 ]
  %285 = add nuw nsw <4 x i64> %vec.ind1110, <i64 32, i64 32, i64 32, i64 32>
  %286 = trunc <4 x i64> %285 to <4 x i32>
  %287 = mul <4 x i32> %broadcast.splat1113, %286
  %288 = add <4 x i32> %287, <i32 1, i32 1, i32 1, i32 1>
  %289 = urem <4 x i32> %288, <i32 80, i32 80, i32 80, i32 80>
  %290 = sitofp <4 x i32> %289 to <4 x double>
  %291 = fmul fast <4 x double> %290, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %292 = extractelement <4 x i64> %285, i32 0
  %293 = shl i64 %292, 3
  %294 = add i64 %293, %283
  %295 = getelementptr i8, i8* %call1, i64 %294
  %296 = bitcast i8* %295 to <4 x double>*
  store <4 x double> %291, <4 x double>* %296, align 8, !alias.scope !90, !noalias !95
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1111 = add <4 x i64> %vec.ind1110, <i64 4, i64 4, i64 4, i64 4>
  %297 = icmp eq i64 %index.next1107, 28
  br i1 %297, label %polly.loop_exit746.1, label %vector.body1104, !llvm.loop !97

polly.loop_exit746.1:                             ; preds = %vector.body1104
  %polly.indvar_next742.1 = add nuw nsw i64 %polly.indvar741.1, 1
  %exitcond794.1.not = icmp eq i64 %polly.indvar_next742.1, 32
  br i1 %exitcond794.1.not, label %polly.loop_header738.1817, label %polly.loop_header738.1

polly.loop_header738.1817:                        ; preds = %polly.loop_exit746.1, %polly.loop_exit746.1828
  %polly.indvar741.1816 = phi i64 [ %polly.indvar_next742.1826, %polly.loop_exit746.1828 ], [ 0, %polly.loop_exit746.1 ]
  %298 = add nuw nsw i64 %polly.indvar741.1816, 32
  %299 = mul nuw nsw i64 %298, 480
  %300 = trunc i64 %298 to i32
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %polly.loop_header738.1817
  %index1118 = phi i64 [ 0, %polly.loop_header738.1817 ], [ %index.next1119, %vector.body1116 ]
  %vec.ind1124 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.1817 ], [ %vec.ind.next1125, %vector.body1116 ]
  %301 = mul <4 x i32> %vec.ind1124, %broadcast.splat1127
  %302 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  %303 = urem <4 x i32> %302, <i32 80, i32 80, i32 80, i32 80>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %306 = shl i64 %index1118, 3
  %307 = add i64 %306, %299
  %308 = getelementptr i8, i8* %call1, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %305, <4 x double>* %309, align 8, !alias.scope !90, !noalias !95
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1125 = add <4 x i32> %vec.ind1124, <i32 4, i32 4, i32 4, i32 4>
  %310 = icmp eq i64 %index.next1119, 32
  br i1 %310, label %polly.loop_exit746.1828, label %vector.body1116, !llvm.loop !98

polly.loop_exit746.1828:                          ; preds = %vector.body1116
  %polly.indvar_next742.1826 = add nuw nsw i64 %polly.indvar741.1816, 1
  %exitcond794.1827.not = icmp eq i64 %polly.indvar_next742.1826, 32
  br i1 %exitcond794.1827.not, label %polly.loop_header738.1.1, label %polly.loop_header738.1817

polly.loop_header738.1.1:                         ; preds = %polly.loop_exit746.1828, %polly.loop_exit746.1.1
  %polly.indvar741.1.1 = phi i64 [ %polly.indvar_next742.1.1, %polly.loop_exit746.1.1 ], [ 0, %polly.loop_exit746.1828 ]
  %311 = add nuw nsw i64 %polly.indvar741.1.1, 32
  %312 = mul nuw nsw i64 %311, 480
  %313 = trunc i64 %311 to i32
  %broadcast.splatinsert1138 = insertelement <4 x i32> poison, i32 %313, i32 0
  %broadcast.splat1139 = shufflevector <4 x i32> %broadcast.splatinsert1138, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %polly.loop_header738.1.1
  %index1132 = phi i64 [ 0, %polly.loop_header738.1.1 ], [ %index.next1133, %vector.body1130 ]
  %vec.ind1136 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.1 ], [ %vec.ind.next1137, %vector.body1130 ]
  %314 = add nuw nsw <4 x i64> %vec.ind1136, <i64 32, i64 32, i64 32, i64 32>
  %315 = trunc <4 x i64> %314 to <4 x i32>
  %316 = mul <4 x i32> %broadcast.splat1139, %315
  %317 = add <4 x i32> %316, <i32 1, i32 1, i32 1, i32 1>
  %318 = urem <4 x i32> %317, <i32 80, i32 80, i32 80, i32 80>
  %319 = sitofp <4 x i32> %318 to <4 x double>
  %320 = fmul fast <4 x double> %319, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %321 = extractelement <4 x i64> %314, i32 0
  %322 = shl i64 %321, 3
  %323 = add i64 %322, %312
  %324 = getelementptr i8, i8* %call1, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %320, <4 x double>* %325, align 8, !alias.scope !90, !noalias !95
  %index.next1133 = add i64 %index1132, 4
  %vec.ind.next1137 = add <4 x i64> %vec.ind1136, <i64 4, i64 4, i64 4, i64 4>
  %326 = icmp eq i64 %index.next1133, 28
  br i1 %326, label %polly.loop_exit746.1.1, label %vector.body1130, !llvm.loop !99

polly.loop_exit746.1.1:                           ; preds = %vector.body1130
  %polly.indvar_next742.1.1 = add nuw nsw i64 %polly.indvar741.1.1, 1
  %exitcond794.1.1.not = icmp eq i64 %polly.indvar_next742.1.1, 32
  br i1 %exitcond794.1.1.not, label %polly.loop_header738.2, label %polly.loop_header738.1.1

polly.loop_header738.2:                           ; preds = %polly.loop_exit746.1.1, %polly.loop_exit746.2
  %polly.indvar741.2 = phi i64 [ %polly.indvar_next742.2, %polly.loop_exit746.2 ], [ 0, %polly.loop_exit746.1.1 ]
  %327 = add nuw nsw i64 %polly.indvar741.2, 64
  %328 = mul nuw nsw i64 %327, 480
  %329 = trunc i64 %327 to i32
  %broadcast.splatinsert1152 = insertelement <4 x i32> poison, i32 %329, i32 0
  %broadcast.splat1153 = shufflevector <4 x i32> %broadcast.splatinsert1152, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %polly.loop_header738.2
  %index1144 = phi i64 [ 0, %polly.loop_header738.2 ], [ %index.next1145, %vector.body1142 ]
  %vec.ind1150 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.2 ], [ %vec.ind.next1151, %vector.body1142 ]
  %330 = mul <4 x i32> %vec.ind1150, %broadcast.splat1153
  %331 = add <4 x i32> %330, <i32 1, i32 1, i32 1, i32 1>
  %332 = urem <4 x i32> %331, <i32 80, i32 80, i32 80, i32 80>
  %333 = sitofp <4 x i32> %332 to <4 x double>
  %334 = fmul fast <4 x double> %333, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %335 = shl i64 %index1144, 3
  %336 = add i64 %335, %328
  %337 = getelementptr i8, i8* %call1, i64 %336
  %338 = bitcast i8* %337 to <4 x double>*
  store <4 x double> %334, <4 x double>* %338, align 8, !alias.scope !90, !noalias !95
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1151 = add <4 x i32> %vec.ind1150, <i32 4, i32 4, i32 4, i32 4>
  %339 = icmp eq i64 %index.next1145, 32
  br i1 %339, label %polly.loop_exit746.2, label %vector.body1142, !llvm.loop !100

polly.loop_exit746.2:                             ; preds = %vector.body1142
  %polly.indvar_next742.2 = add nuw nsw i64 %polly.indvar741.2, 1
  %exitcond794.2.not = icmp eq i64 %polly.indvar_next742.2, 16
  br i1 %exitcond794.2.not, label %polly.loop_header738.1.2, label %polly.loop_header738.2

polly.loop_header738.1.2:                         ; preds = %polly.loop_exit746.2, %polly.loop_exit746.1.2
  %polly.indvar741.1.2 = phi i64 [ %polly.indvar_next742.1.2, %polly.loop_exit746.1.2 ], [ 0, %polly.loop_exit746.2 ]
  %340 = add nuw nsw i64 %polly.indvar741.1.2, 64
  %341 = mul nuw nsw i64 %340, 480
  %342 = trunc i64 %340 to i32
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %polly.loop_header738.1.2
  %index1158 = phi i64 [ 0, %polly.loop_header738.1.2 ], [ %index.next1159, %vector.body1156 ]
  %vec.ind1162 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.2 ], [ %vec.ind.next1163, %vector.body1156 ]
  %343 = add nuw nsw <4 x i64> %vec.ind1162, <i64 32, i64 32, i64 32, i64 32>
  %344 = trunc <4 x i64> %343 to <4 x i32>
  %345 = mul <4 x i32> %broadcast.splat1165, %344
  %346 = add <4 x i32> %345, <i32 1, i32 1, i32 1, i32 1>
  %347 = urem <4 x i32> %346, <i32 80, i32 80, i32 80, i32 80>
  %348 = sitofp <4 x i32> %347 to <4 x double>
  %349 = fmul fast <4 x double> %348, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %350 = extractelement <4 x i64> %343, i32 0
  %351 = shl i64 %350, 3
  %352 = add i64 %351, %341
  %353 = getelementptr i8, i8* %call1, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %349, <4 x double>* %354, align 8, !alias.scope !90, !noalias !95
  %index.next1159 = add i64 %index1158, 4
  %vec.ind.next1163 = add <4 x i64> %vec.ind1162, <i64 4, i64 4, i64 4, i64 4>
  %355 = icmp eq i64 %index.next1159, 28
  br i1 %355, label %polly.loop_exit746.1.2, label %vector.body1156, !llvm.loop !101

polly.loop_exit746.1.2:                           ; preds = %vector.body1156
  %polly.indvar_next742.1.2 = add nuw nsw i64 %polly.indvar741.1.2, 1
  %exitcond794.1.2.not = icmp eq i64 %polly.indvar_next742.1.2, 16
  br i1 %exitcond794.1.2.not, label %init_array.exit, label %polly.loop_header738.1.2

polly.loop_header712.1:                           ; preds = %polly.loop_exit720, %polly.loop_exit720.1
  %polly.indvar715.1 = phi i64 [ %polly.indvar_next716.1, %polly.loop_exit720.1 ], [ 0, %polly.loop_exit720 ]
  %356 = mul nuw nsw i64 %polly.indvar715.1, 480
  %357 = trunc i64 %polly.indvar715.1 to i32
  %broadcast.splatinsert1034 = insertelement <4 x i32> poison, i32 %357, i32 0
  %broadcast.splat1035 = shufflevector <4 x i32> %broadcast.splatinsert1034, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %polly.loop_header712.1
  %index1028 = phi i64 [ 0, %polly.loop_header712.1 ], [ %index.next1029, %vector.body1026 ]
  %vec.ind1032 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1 ], [ %vec.ind.next1033, %vector.body1026 ]
  %358 = add nuw nsw <4 x i64> %vec.ind1032, <i64 32, i64 32, i64 32, i64 32>
  %359 = trunc <4 x i64> %358 to <4 x i32>
  %360 = mul <4 x i32> %broadcast.splat1035, %359
  %361 = add <4 x i32> %360, <i32 2, i32 2, i32 2, i32 2>
  %362 = urem <4 x i32> %361, <i32 60, i32 60, i32 60, i32 60>
  %363 = sitofp <4 x i32> %362 to <4 x double>
  %364 = fmul fast <4 x double> %363, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %365 = extractelement <4 x i64> %358, i32 0
  %366 = shl i64 %365, 3
  %367 = add i64 %366, %356
  %368 = getelementptr i8, i8* %call2, i64 %367
  %369 = bitcast i8* %368 to <4 x double>*
  store <4 x double> %364, <4 x double>* %369, align 8, !alias.scope !91, !noalias !93
  %index.next1029 = add i64 %index1028, 4
  %vec.ind.next1033 = add <4 x i64> %vec.ind1032, <i64 4, i64 4, i64 4, i64 4>
  %370 = icmp eq i64 %index.next1029, 28
  br i1 %370, label %polly.loop_exit720.1, label %vector.body1026, !llvm.loop !102

polly.loop_exit720.1:                             ; preds = %vector.body1026
  %polly.indvar_next716.1 = add nuw nsw i64 %polly.indvar715.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next716.1, 32
  br i1 %exitcond800.1.not, label %polly.loop_header712.1831, label %polly.loop_header712.1

polly.loop_header712.1831:                        ; preds = %polly.loop_exit720.1, %polly.loop_exit720.1842
  %polly.indvar715.1830 = phi i64 [ %polly.indvar_next716.1840, %polly.loop_exit720.1842 ], [ 0, %polly.loop_exit720.1 ]
  %371 = add nuw nsw i64 %polly.indvar715.1830, 32
  %372 = mul nuw nsw i64 %371, 480
  %373 = trunc i64 %371 to i32
  %broadcast.splatinsert1048 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat1049 = shufflevector <4 x i32> %broadcast.splatinsert1048, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %polly.loop_header712.1831
  %index1040 = phi i64 [ 0, %polly.loop_header712.1831 ], [ %index.next1041, %vector.body1038 ]
  %vec.ind1046 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.1831 ], [ %vec.ind.next1047, %vector.body1038 ]
  %374 = mul <4 x i32> %vec.ind1046, %broadcast.splat1049
  %375 = add <4 x i32> %374, <i32 2, i32 2, i32 2, i32 2>
  %376 = urem <4 x i32> %375, <i32 60, i32 60, i32 60, i32 60>
  %377 = sitofp <4 x i32> %376 to <4 x double>
  %378 = fmul fast <4 x double> %377, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %379 = shl i64 %index1040, 3
  %380 = add i64 %379, %372
  %381 = getelementptr i8, i8* %call2, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %378, <4 x double>* %382, align 8, !alias.scope !91, !noalias !93
  %index.next1041 = add i64 %index1040, 4
  %vec.ind.next1047 = add <4 x i32> %vec.ind1046, <i32 4, i32 4, i32 4, i32 4>
  %383 = icmp eq i64 %index.next1041, 32
  br i1 %383, label %polly.loop_exit720.1842, label %vector.body1038, !llvm.loop !103

polly.loop_exit720.1842:                          ; preds = %vector.body1038
  %polly.indvar_next716.1840 = add nuw nsw i64 %polly.indvar715.1830, 1
  %exitcond800.1841.not = icmp eq i64 %polly.indvar_next716.1840, 32
  br i1 %exitcond800.1841.not, label %polly.loop_header712.1.1, label %polly.loop_header712.1831

polly.loop_header712.1.1:                         ; preds = %polly.loop_exit720.1842, %polly.loop_exit720.1.1
  %polly.indvar715.1.1 = phi i64 [ %polly.indvar_next716.1.1, %polly.loop_exit720.1.1 ], [ 0, %polly.loop_exit720.1842 ]
  %384 = add nuw nsw i64 %polly.indvar715.1.1, 32
  %385 = mul nuw nsw i64 %384, 480
  %386 = trunc i64 %384 to i32
  %broadcast.splatinsert1060 = insertelement <4 x i32> poison, i32 %386, i32 0
  %broadcast.splat1061 = shufflevector <4 x i32> %broadcast.splatinsert1060, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %polly.loop_header712.1.1
  %index1054 = phi i64 [ 0, %polly.loop_header712.1.1 ], [ %index.next1055, %vector.body1052 ]
  %vec.ind1058 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.1 ], [ %vec.ind.next1059, %vector.body1052 ]
  %387 = add nuw nsw <4 x i64> %vec.ind1058, <i64 32, i64 32, i64 32, i64 32>
  %388 = trunc <4 x i64> %387 to <4 x i32>
  %389 = mul <4 x i32> %broadcast.splat1061, %388
  %390 = add <4 x i32> %389, <i32 2, i32 2, i32 2, i32 2>
  %391 = urem <4 x i32> %390, <i32 60, i32 60, i32 60, i32 60>
  %392 = sitofp <4 x i32> %391 to <4 x double>
  %393 = fmul fast <4 x double> %392, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %394 = extractelement <4 x i64> %387, i32 0
  %395 = shl i64 %394, 3
  %396 = add i64 %395, %385
  %397 = getelementptr i8, i8* %call2, i64 %396
  %398 = bitcast i8* %397 to <4 x double>*
  store <4 x double> %393, <4 x double>* %398, align 8, !alias.scope !91, !noalias !93
  %index.next1055 = add i64 %index1054, 4
  %vec.ind.next1059 = add <4 x i64> %vec.ind1058, <i64 4, i64 4, i64 4, i64 4>
  %399 = icmp eq i64 %index.next1055, 28
  br i1 %399, label %polly.loop_exit720.1.1, label %vector.body1052, !llvm.loop !104

polly.loop_exit720.1.1:                           ; preds = %vector.body1052
  %polly.indvar_next716.1.1 = add nuw nsw i64 %polly.indvar715.1.1, 1
  %exitcond800.1.1.not = icmp eq i64 %polly.indvar_next716.1.1, 32
  br i1 %exitcond800.1.1.not, label %polly.loop_header712.2, label %polly.loop_header712.1.1

polly.loop_header712.2:                           ; preds = %polly.loop_exit720.1.1, %polly.loop_exit720.2
  %polly.indvar715.2 = phi i64 [ %polly.indvar_next716.2, %polly.loop_exit720.2 ], [ 0, %polly.loop_exit720.1.1 ]
  %400 = add nuw nsw i64 %polly.indvar715.2, 64
  %401 = mul nuw nsw i64 %400, 480
  %402 = trunc i64 %400 to i32
  %broadcast.splatinsert1074 = insertelement <4 x i32> poison, i32 %402, i32 0
  %broadcast.splat1075 = shufflevector <4 x i32> %broadcast.splatinsert1074, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %polly.loop_header712.2
  %index1066 = phi i64 [ 0, %polly.loop_header712.2 ], [ %index.next1067, %vector.body1064 ]
  %vec.ind1072 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.2 ], [ %vec.ind.next1073, %vector.body1064 ]
  %403 = mul <4 x i32> %vec.ind1072, %broadcast.splat1075
  %404 = add <4 x i32> %403, <i32 2, i32 2, i32 2, i32 2>
  %405 = urem <4 x i32> %404, <i32 60, i32 60, i32 60, i32 60>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %408 = shl i64 %index1066, 3
  %409 = add i64 %408, %401
  %410 = getelementptr i8, i8* %call2, i64 %409
  %411 = bitcast i8* %410 to <4 x double>*
  store <4 x double> %407, <4 x double>* %411, align 8, !alias.scope !91, !noalias !93
  %index.next1067 = add i64 %index1066, 4
  %vec.ind.next1073 = add <4 x i32> %vec.ind1072, <i32 4, i32 4, i32 4, i32 4>
  %412 = icmp eq i64 %index.next1067, 32
  br i1 %412, label %polly.loop_exit720.2, label %vector.body1064, !llvm.loop !105

polly.loop_exit720.2:                             ; preds = %vector.body1064
  %polly.indvar_next716.2 = add nuw nsw i64 %polly.indvar715.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next716.2, 16
  br i1 %exitcond800.2.not, label %polly.loop_header712.1.2, label %polly.loop_header712.2

polly.loop_header712.1.2:                         ; preds = %polly.loop_exit720.2, %polly.loop_exit720.1.2
  %polly.indvar715.1.2 = phi i64 [ %polly.indvar_next716.1.2, %polly.loop_exit720.1.2 ], [ 0, %polly.loop_exit720.2 ]
  %413 = add nuw nsw i64 %polly.indvar715.1.2, 64
  %414 = mul nuw nsw i64 %413, 480
  %415 = trunc i64 %413 to i32
  %broadcast.splatinsert1086 = insertelement <4 x i32> poison, i32 %415, i32 0
  %broadcast.splat1087 = shufflevector <4 x i32> %broadcast.splatinsert1086, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.body1078, %polly.loop_header712.1.2
  %index1080 = phi i64 [ 0, %polly.loop_header712.1.2 ], [ %index.next1081, %vector.body1078 ]
  %vec.ind1084 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.2 ], [ %vec.ind.next1085, %vector.body1078 ]
  %416 = add nuw nsw <4 x i64> %vec.ind1084, <i64 32, i64 32, i64 32, i64 32>
  %417 = trunc <4 x i64> %416 to <4 x i32>
  %418 = mul <4 x i32> %broadcast.splat1087, %417
  %419 = add <4 x i32> %418, <i32 2, i32 2, i32 2, i32 2>
  %420 = urem <4 x i32> %419, <i32 60, i32 60, i32 60, i32 60>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %423 = extractelement <4 x i64> %416, i32 0
  %424 = shl i64 %423, 3
  %425 = add i64 %424, %414
  %426 = getelementptr i8, i8* %call2, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %422, <4 x double>* %427, align 8, !alias.scope !91, !noalias !93
  %index.next1081 = add i64 %index1080, 4
  %vec.ind.next1085 = add <4 x i64> %vec.ind1084, <i64 4, i64 4, i64 4, i64 4>
  %428 = icmp eq i64 %index.next1081, 28
  br i1 %428, label %polly.loop_exit720.1.2, label %vector.body1078, !llvm.loop !106

polly.loop_exit720.1.2:                           ; preds = %vector.body1078
  %polly.indvar_next716.1.2 = add nuw nsw i64 %polly.indvar715.1.2, 1
  %exitcond800.1.2.not = icmp eq i64 %polly.indvar_next716.1.2, 16
  br i1 %exitcond800.1.2.not, label %polly.loop_header738, label %polly.loop_header712.1.2

polly.loop_header685.1:                           ; preds = %polly.loop_exit693, %polly.loop_exit693.1
  %polly.indvar688.1 = phi i64 [ %polly.indvar_next689.1, %polly.loop_exit693.1 ], [ 0, %polly.loop_exit693 ]
  %429 = mul nuw nsw i64 %polly.indvar688.1, 640
  %430 = trunc i64 %polly.indvar688.1 to i32
  %broadcast.splatinsert920 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat921 = shufflevector <4 x i32> %broadcast.splatinsert920, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body912

vector.body912:                                   ; preds = %vector.body912, %polly.loop_header685.1
  %index914 = phi i64 [ 0, %polly.loop_header685.1 ], [ %index.next915, %vector.body912 ]
  %vec.ind918 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1 ], [ %vec.ind.next919, %vector.body912 ]
  %431 = add nuw nsw <4 x i64> %vec.ind918, <i64 32, i64 32, i64 32, i64 32>
  %432 = trunc <4 x i64> %431 to <4 x i32>
  %433 = mul <4 x i32> %broadcast.splat921, %432
  %434 = add <4 x i32> %433, <i32 3, i32 3, i32 3, i32 3>
  %435 = urem <4 x i32> %434, <i32 80, i32 80, i32 80, i32 80>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = extractelement <4 x i64> %431, i32 0
  %439 = shl i64 %438, 3
  %440 = add nuw nsw i64 %439, %429
  %441 = getelementptr i8, i8* %call, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %437, <4 x double>* %442, align 8, !alias.scope !87, !noalias !89
  %index.next915 = add i64 %index914, 4
  %vec.ind.next919 = add <4 x i64> %vec.ind918, <i64 4, i64 4, i64 4, i64 4>
  %443 = icmp eq i64 %index.next915, 32
  br i1 %443, label %polly.loop_exit693.1, label %vector.body912, !llvm.loop !107

polly.loop_exit693.1:                             ; preds = %vector.body912
  %polly.indvar_next689.1 = add nuw nsw i64 %polly.indvar688.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next689.1, 32
  br i1 %exitcond809.1.not, label %polly.loop_header685.2, label %polly.loop_header685.1

polly.loop_header685.2:                           ; preds = %polly.loop_exit693.1, %polly.loop_exit693.2
  %polly.indvar688.2 = phi i64 [ %polly.indvar_next689.2, %polly.loop_exit693.2 ], [ 0, %polly.loop_exit693.1 ]
  %444 = mul nuw nsw i64 %polly.indvar688.2, 640
  %445 = trunc i64 %polly.indvar688.2 to i32
  %broadcast.splatinsert932 = insertelement <4 x i32> poison, i32 %445, i32 0
  %broadcast.splat933 = shufflevector <4 x i32> %broadcast.splatinsert932, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body924

vector.body924:                                   ; preds = %vector.body924, %polly.loop_header685.2
  %index926 = phi i64 [ 0, %polly.loop_header685.2 ], [ %index.next927, %vector.body924 ]
  %vec.ind930 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2 ], [ %vec.ind.next931, %vector.body924 ]
  %446 = add nuw nsw <4 x i64> %vec.ind930, <i64 64, i64 64, i64 64, i64 64>
  %447 = trunc <4 x i64> %446 to <4 x i32>
  %448 = mul <4 x i32> %broadcast.splat933, %447
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
  %index.next927 = add i64 %index926, 4
  %vec.ind.next931 = add <4 x i64> %vec.ind930, <i64 4, i64 4, i64 4, i64 4>
  %458 = icmp eq i64 %index.next927, 16
  br i1 %458, label %polly.loop_exit693.2, label %vector.body924, !llvm.loop !108

polly.loop_exit693.2:                             ; preds = %vector.body924
  %polly.indvar_next689.2 = add nuw nsw i64 %polly.indvar688.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next689.2, 32
  br i1 %exitcond809.2.not, label %polly.loop_header685.1845, label %polly.loop_header685.2

polly.loop_header685.1845:                        ; preds = %polly.loop_exit693.2, %polly.loop_exit693.1856
  %polly.indvar688.1844 = phi i64 [ %polly.indvar_next689.1854, %polly.loop_exit693.1856 ], [ 0, %polly.loop_exit693.2 ]
  %459 = add nuw nsw i64 %polly.indvar688.1844, 32
  %460 = mul nuw nsw i64 %459, 640
  %461 = trunc i64 %459 to i32
  %broadcast.splatinsert946 = insertelement <4 x i32> poison, i32 %461, i32 0
  %broadcast.splat947 = shufflevector <4 x i32> %broadcast.splatinsert946, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %polly.loop_header685.1845
  %index938 = phi i64 [ 0, %polly.loop_header685.1845 ], [ %index.next939, %vector.body936 ]
  %vec.ind944 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.1845 ], [ %vec.ind.next945, %vector.body936 ]
  %462 = mul <4 x i32> %vec.ind944, %broadcast.splat947
  %463 = add <4 x i32> %462, <i32 3, i32 3, i32 3, i32 3>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %467 = shl i64 %index938, 3
  %468 = add nuw nsw i64 %467, %460
  %469 = getelementptr i8, i8* %call, i64 %468
  %470 = bitcast i8* %469 to <4 x double>*
  store <4 x double> %466, <4 x double>* %470, align 8, !alias.scope !87, !noalias !89
  %index.next939 = add i64 %index938, 4
  %vec.ind.next945 = add <4 x i32> %vec.ind944, <i32 4, i32 4, i32 4, i32 4>
  %471 = icmp eq i64 %index.next939, 32
  br i1 %471, label %polly.loop_exit693.1856, label %vector.body936, !llvm.loop !109

polly.loop_exit693.1856:                          ; preds = %vector.body936
  %polly.indvar_next689.1854 = add nuw nsw i64 %polly.indvar688.1844, 1
  %exitcond809.1855.not = icmp eq i64 %polly.indvar_next689.1854, 32
  br i1 %exitcond809.1855.not, label %polly.loop_header685.1.1, label %polly.loop_header685.1845

polly.loop_header685.1.1:                         ; preds = %polly.loop_exit693.1856, %polly.loop_exit693.1.1
  %polly.indvar688.1.1 = phi i64 [ %polly.indvar_next689.1.1, %polly.loop_exit693.1.1 ], [ 0, %polly.loop_exit693.1856 ]
  %472 = add nuw nsw i64 %polly.indvar688.1.1, 32
  %473 = mul nuw nsw i64 %472, 640
  %474 = trunc i64 %472 to i32
  %broadcast.splatinsert958 = insertelement <4 x i32> poison, i32 %474, i32 0
  %broadcast.splat959 = shufflevector <4 x i32> %broadcast.splatinsert958, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body950

vector.body950:                                   ; preds = %vector.body950, %polly.loop_header685.1.1
  %index952 = phi i64 [ 0, %polly.loop_header685.1.1 ], [ %index.next953, %vector.body950 ]
  %vec.ind956 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.1 ], [ %vec.ind.next957, %vector.body950 ]
  %475 = add nuw nsw <4 x i64> %vec.ind956, <i64 32, i64 32, i64 32, i64 32>
  %476 = trunc <4 x i64> %475 to <4 x i32>
  %477 = mul <4 x i32> %broadcast.splat959, %476
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
  %index.next953 = add i64 %index952, 4
  %vec.ind.next957 = add <4 x i64> %vec.ind956, <i64 4, i64 4, i64 4, i64 4>
  %487 = icmp eq i64 %index.next953, 32
  br i1 %487, label %polly.loop_exit693.1.1, label %vector.body950, !llvm.loop !110

polly.loop_exit693.1.1:                           ; preds = %vector.body950
  %polly.indvar_next689.1.1 = add nuw nsw i64 %polly.indvar688.1.1, 1
  %exitcond809.1.1.not = icmp eq i64 %polly.indvar_next689.1.1, 32
  br i1 %exitcond809.1.1.not, label %polly.loop_header685.2.1, label %polly.loop_header685.1.1

polly.loop_header685.2.1:                         ; preds = %polly.loop_exit693.1.1, %polly.loop_exit693.2.1
  %polly.indvar688.2.1 = phi i64 [ %polly.indvar_next689.2.1, %polly.loop_exit693.2.1 ], [ 0, %polly.loop_exit693.1.1 ]
  %488 = add nuw nsw i64 %polly.indvar688.2.1, 32
  %489 = mul nuw nsw i64 %488, 640
  %490 = trunc i64 %488 to i32
  %broadcast.splatinsert970 = insertelement <4 x i32> poison, i32 %490, i32 0
  %broadcast.splat971 = shufflevector <4 x i32> %broadcast.splatinsert970, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %polly.loop_header685.2.1
  %index964 = phi i64 [ 0, %polly.loop_header685.2.1 ], [ %index.next965, %vector.body962 ]
  %vec.ind968 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.1 ], [ %vec.ind.next969, %vector.body962 ]
  %491 = add nuw nsw <4 x i64> %vec.ind968, <i64 64, i64 64, i64 64, i64 64>
  %492 = trunc <4 x i64> %491 to <4 x i32>
  %493 = mul <4 x i32> %broadcast.splat971, %492
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
  %index.next965 = add i64 %index964, 4
  %vec.ind.next969 = add <4 x i64> %vec.ind968, <i64 4, i64 4, i64 4, i64 4>
  %503 = icmp eq i64 %index.next965, 16
  br i1 %503, label %polly.loop_exit693.2.1, label %vector.body962, !llvm.loop !111

polly.loop_exit693.2.1:                           ; preds = %vector.body962
  %polly.indvar_next689.2.1 = add nuw nsw i64 %polly.indvar688.2.1, 1
  %exitcond809.2.1.not = icmp eq i64 %polly.indvar_next689.2.1, 32
  br i1 %exitcond809.2.1.not, label %polly.loop_header685.2859, label %polly.loop_header685.2.1

polly.loop_header685.2859:                        ; preds = %polly.loop_exit693.2.1, %polly.loop_exit693.2870
  %polly.indvar688.2858 = phi i64 [ %polly.indvar_next689.2868, %polly.loop_exit693.2870 ], [ 0, %polly.loop_exit693.2.1 ]
  %504 = add nuw nsw i64 %polly.indvar688.2858, 64
  %505 = mul nuw nsw i64 %504, 640
  %506 = trunc i64 %504 to i32
  %broadcast.splatinsert984 = insertelement <4 x i32> poison, i32 %506, i32 0
  %broadcast.splat985 = shufflevector <4 x i32> %broadcast.splatinsert984, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %polly.loop_header685.2859
  %index976 = phi i64 [ 0, %polly.loop_header685.2859 ], [ %index.next977, %vector.body974 ]
  %vec.ind982 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.2859 ], [ %vec.ind.next983, %vector.body974 ]
  %507 = mul <4 x i32> %vec.ind982, %broadcast.splat985
  %508 = add <4 x i32> %507, <i32 3, i32 3, i32 3, i32 3>
  %509 = urem <4 x i32> %508, <i32 80, i32 80, i32 80, i32 80>
  %510 = sitofp <4 x i32> %509 to <4 x double>
  %511 = fmul fast <4 x double> %510, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %512 = shl i64 %index976, 3
  %513 = add nuw nsw i64 %512, %505
  %514 = getelementptr i8, i8* %call, i64 %513
  %515 = bitcast i8* %514 to <4 x double>*
  store <4 x double> %511, <4 x double>* %515, align 8, !alias.scope !87, !noalias !89
  %index.next977 = add i64 %index976, 4
  %vec.ind.next983 = add <4 x i32> %vec.ind982, <i32 4, i32 4, i32 4, i32 4>
  %516 = icmp eq i64 %index.next977, 32
  br i1 %516, label %polly.loop_exit693.2870, label %vector.body974, !llvm.loop !112

polly.loop_exit693.2870:                          ; preds = %vector.body974
  %polly.indvar_next689.2868 = add nuw nsw i64 %polly.indvar688.2858, 1
  %exitcond809.2869.not = icmp eq i64 %polly.indvar_next689.2868, 16
  br i1 %exitcond809.2869.not, label %polly.loop_header685.1.2, label %polly.loop_header685.2859

polly.loop_header685.1.2:                         ; preds = %polly.loop_exit693.2870, %polly.loop_exit693.1.2
  %polly.indvar688.1.2 = phi i64 [ %polly.indvar_next689.1.2, %polly.loop_exit693.1.2 ], [ 0, %polly.loop_exit693.2870 ]
  %517 = add nuw nsw i64 %polly.indvar688.1.2, 64
  %518 = mul nuw nsw i64 %517, 640
  %519 = trunc i64 %517 to i32
  %broadcast.splatinsert996 = insertelement <4 x i32> poison, i32 %519, i32 0
  %broadcast.splat997 = shufflevector <4 x i32> %broadcast.splatinsert996, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %polly.loop_header685.1.2
  %index990 = phi i64 [ 0, %polly.loop_header685.1.2 ], [ %index.next991, %vector.body988 ]
  %vec.ind994 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.2 ], [ %vec.ind.next995, %vector.body988 ]
  %520 = add nuw nsw <4 x i64> %vec.ind994, <i64 32, i64 32, i64 32, i64 32>
  %521 = trunc <4 x i64> %520 to <4 x i32>
  %522 = mul <4 x i32> %broadcast.splat997, %521
  %523 = add <4 x i32> %522, <i32 3, i32 3, i32 3, i32 3>
  %524 = urem <4 x i32> %523, <i32 80, i32 80, i32 80, i32 80>
  %525 = sitofp <4 x i32> %524 to <4 x double>
  %526 = fmul fast <4 x double> %525, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %527 = extractelement <4 x i64> %520, i32 0
  %528 = shl i64 %527, 3
  %529 = add nuw nsw i64 %528, %518
  %530 = getelementptr i8, i8* %call, i64 %529
  %531 = bitcast i8* %530 to <4 x double>*
  store <4 x double> %526, <4 x double>* %531, align 8, !alias.scope !87, !noalias !89
  %index.next991 = add i64 %index990, 4
  %vec.ind.next995 = add <4 x i64> %vec.ind994, <i64 4, i64 4, i64 4, i64 4>
  %532 = icmp eq i64 %index.next991, 32
  br i1 %532, label %polly.loop_exit693.1.2, label %vector.body988, !llvm.loop !113

polly.loop_exit693.1.2:                           ; preds = %vector.body988
  %polly.indvar_next689.1.2 = add nuw nsw i64 %polly.indvar688.1.2, 1
  %exitcond809.1.2.not = icmp eq i64 %polly.indvar_next689.1.2, 16
  br i1 %exitcond809.1.2.not, label %polly.loop_header685.2.2, label %polly.loop_header685.1.2

polly.loop_header685.2.2:                         ; preds = %polly.loop_exit693.1.2, %polly.loop_exit693.2.2
  %polly.indvar688.2.2 = phi i64 [ %polly.indvar_next689.2.2, %polly.loop_exit693.2.2 ], [ 0, %polly.loop_exit693.1.2 ]
  %533 = add nuw nsw i64 %polly.indvar688.2.2, 64
  %534 = mul nuw nsw i64 %533, 640
  %535 = trunc i64 %533 to i32
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %535, i32 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %polly.loop_header685.2.2
  %index1002 = phi i64 [ 0, %polly.loop_header685.2.2 ], [ %index.next1003, %vector.body1000 ]
  %vec.ind1006 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.2 ], [ %vec.ind.next1007, %vector.body1000 ]
  %536 = add nuw nsw <4 x i64> %vec.ind1006, <i64 64, i64 64, i64 64, i64 64>
  %537 = trunc <4 x i64> %536 to <4 x i32>
  %538 = mul <4 x i32> %broadcast.splat1009, %537
  %539 = add <4 x i32> %538, <i32 3, i32 3, i32 3, i32 3>
  %540 = urem <4 x i32> %539, <i32 80, i32 80, i32 80, i32 80>
  %541 = sitofp <4 x i32> %540 to <4 x double>
  %542 = fmul fast <4 x double> %541, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %543 = extractelement <4 x i64> %536, i32 0
  %544 = shl i64 %543, 3
  %545 = add nuw nsw i64 %544, %534
  %546 = getelementptr i8, i8* %call, i64 %545
  %547 = bitcast i8* %546 to <4 x double>*
  store <4 x double> %542, <4 x double>* %547, align 8, !alias.scope !87, !noalias !89
  %index.next1003 = add i64 %index1002, 4
  %vec.ind.next1007 = add <4 x i64> %vec.ind1006, <i64 4, i64 4, i64 4, i64 4>
  %548 = icmp eq i64 %index.next1003, 16
  br i1 %548, label %polly.loop_exit693.2.2, label %vector.body1000, !llvm.loop !114

polly.loop_exit693.2.2:                           ; preds = %vector.body1000
  %polly.indvar_next689.2.2 = add nuw nsw i64 %polly.indvar688.2.2, 1
  %exitcond809.2.2.not = icmp eq i64 %polly.indvar_next689.2.2, 16
  br i1 %exitcond809.2.2.not, label %polly.loop_header712, label %polly.loop_header685.2.2
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
