; ModuleID = 'syr2k_recreations//mmp_syr2k_S_35.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_35.c"
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
  %scevgep895 = getelementptr i8, i8* %call2, i64 %12
  %scevgep894 = getelementptr i8, i8* %call2, i64 %11
  %scevgep893 = getelementptr i8, i8* %call1, i64 %12
  %scevgep892 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep892, %scevgep895
  %bound1 = icmp ult i8* %scevgep894, %scevgep893
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
  br i1 %exitcond18.not.i, label %vector.ph899, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph899:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert906 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat907 = shufflevector <4 x i64> %broadcast.splatinsert906, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body898

vector.body898:                                   ; preds = %vector.body898, %vector.ph899
  %index900 = phi i64 [ 0, %vector.ph899 ], [ %index.next901, %vector.body898 ]
  %vec.ind904 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph899 ], [ %vec.ind.next905, %vector.body898 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind904, %broadcast.splat907
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv7.i, i64 %index900
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next901 = add i64 %index900, 4
  %vec.ind.next905 = add <4 x i64> %vec.ind904, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next901, 80
  br i1 %40, label %for.inc41.i, label %vector.body898, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body898
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph899, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1255, label %vector.ph1181

vector.ph1181:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %vector.ph1181
  %index1182 = phi i64 [ 0, %vector.ph1181 ], [ %index.next1183, %vector.body1180 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i, i64 %index1182
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1183 = add i64 %index1182, 4
  %46 = icmp eq i64 %index.next1183, %n.vec
  br i1 %46, label %middle.block1178, label %vector.body1180, !llvm.loop !18

middle.block1178:                                 ; preds = %vector.body1180
  %cmp.n1185 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1185, label %for.inc6.i, label %for.body3.i46.preheader1255

for.body3.i46.preheader1255:                      ; preds = %for.body3.i46.preheader, %middle.block1178
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1178 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1255, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1255 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1178, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !39

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit507
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header333, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1201 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1201, label %for.body3.i60.preheader1253, label %vector.ph1202

vector.ph1202:                                    ; preds = %for.body3.i60.preheader
  %n.vec1204 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1200 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i52, i64 %index1205
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1209 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1209, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1206 = add i64 %index1205, 4
  %57 = icmp eq i64 %index.next1206, %n.vec1204
  br i1 %57, label %middle.block1198, label %vector.body1200, !llvm.loop !50

middle.block1198:                                 ; preds = %vector.body1200
  %cmp.n1208 = icmp eq i64 %indvars.iv21.i52, %n.vec1204
  br i1 %cmp.n1208, label %for.inc6.i63, label %for.body3.i60.preheader1253

for.body3.i60.preheader1253:                      ; preds = %for.body3.i60.preheader, %middle.block1198
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1204, %middle.block1198 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1253, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1253 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !51

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1198, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !39

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit357
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1227 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1227, label %for.body3.i99.preheader1251, label %vector.ph1228

vector.ph1228:                                    ; preds = %for.body3.i99.preheader
  %n.vec1230 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1232, %vector.body1226 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i91, i64 %index1231
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1235 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1235, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1232 = add i64 %index1231, 4
  %68 = icmp eq i64 %index.next1232, %n.vec1230
  br i1 %68, label %middle.block1224, label %vector.body1226, !llvm.loop !52

middle.block1224:                                 ; preds = %vector.body1226
  %cmp.n1234 = icmp eq i64 %indvars.iv21.i91, %n.vec1230
  br i1 %cmp.n1234, label %for.inc6.i102, label %for.body3.i99.preheader1251

for.body3.i99.preheader1251:                      ; preds = %for.body3.i99.preheader, %middle.block1224
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1230, %middle.block1224 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1251, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1251 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !53

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1224, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !39

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !54
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !56

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !57

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1239 = phi i64 [ %indvar.next1240, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1239, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1241 = icmp ult i64 %88, 4
  br i1 %min.iters.check1241, label %polly.loop_header191.preheader, label %vector.ph1242

vector.ph1242:                                    ; preds = %polly.loop_header
  %n.vec1244 = and i64 %88, -4
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %vector.ph1242
  %index1245 = phi i64 [ 0, %vector.ph1242 ], [ %index.next1246, %vector.body1238 ]
  %90 = shl nuw nsw i64 %index1245, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1249 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !58, !noalias !60
  %93 = fmul fast <4 x double> %wide.load1249, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !58, !noalias !60
  %index.next1246 = add i64 %index1245, 4
  %95 = icmp eq i64 %index.next1246, %n.vec1244
  br i1 %95, label %middle.block1236, label %vector.body1238, !llvm.loop !63

middle.block1236:                                 ; preds = %vector.body1238
  %cmp.n1248 = icmp eq i64 %88, %n.vec1244
  br i1 %cmp.n1248, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1236
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1244, %middle.block1236 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1236
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond771.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1240 = add i64 %indvar1239, 1
  br i1 %exitcond771.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond770.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond770.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv761 = phi i64 [ %indvars.iv.next762, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %smin763 = call i64 @llvm.smin.i64(i64 %indvars.iv761, i64 -52)
  %97 = shl nsw i64 %polly.indvar202, 3
  %98 = add nsw i64 %smin763, 59
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next762 = add nsw i64 %indvars.iv761, -8
  %exitcond769.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond769.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv765 = phi i64 [ %indvars.iv.next766, %polly.loop_exit213 ], [ 80, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = shl nuw nsw i64 %polly.indvar208, 3
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next766 = add nsw i64 %indvars.iv765, -8
  %exitcond768.not = icmp eq i64 %polly.indvar_next209, 10
  br i1 %exitcond768.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ %99, %polly.loop_header205 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 7)
  %100 = mul nuw nsw i64 %polly.indvar214, 480
  %scevgep232 = getelementptr i8, i8* %call2, i64 %100
  %scevgep239 = getelementptr i8, i8* %call1, i64 %100
  %101 = mul nuw nsw i64 %polly.indvar214, 640
  %scevgep243 = getelementptr i8, i8* %call, i64 %101
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond767.not = icmp eq i64 %indvars.iv.next, %indvars.iv765
  br i1 %exitcond767.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %102 = add nuw nsw i64 %polly.indvar220, %97
  %103 = shl i64 %102, 3
  %scevgep233 = getelementptr i8, i8* %scevgep232, i64 %103
  %scevgep233234 = bitcast i8* %scevgep233 to double*
  %_p_scalar_235 = load double, double* %scevgep233234, align 8, !alias.scope !62, !noalias !66
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %103
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond764.not = icmp eq i64 %polly.indvar220, %98
  br i1 %exitcond764.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %104 = add nuw nsw i64 %polly.indvar226, %99
  %105 = mul nuw nsw i64 %104, 480
  %106 = add nuw nsw i64 %105, %103
  %scevgep229 = getelementptr i8, i8* %call1, i64 %106
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112 = fmul fast double %_p_scalar_235, %_p_scalar_231
  %scevgep236 = getelementptr i8, i8* %call2, i64 %106
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114 = fmul fast double %_p_scalar_242, %_p_scalar_238
  %107 = shl i64 %104, 3
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %107
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_246
  store double %p_add42.i118, double* %scevgep244245, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar226, %smin
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header333:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit341
  %indvar1213 = phi i64 [ %indvar.next1214, %polly.loop_exit341 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar336 = phi i64 [ %polly.indvar_next337, %polly.loop_exit341 ], [ 1, %kernel_syr2k.exit ]
  %108 = add i64 %indvar1213, 1
  %109 = mul nuw nsw i64 %polly.indvar336, 640
  %scevgep345 = getelementptr i8, i8* %call, i64 %109
  %min.iters.check1215 = icmp ult i64 %108, 4
  br i1 %min.iters.check1215, label %polly.loop_header339.preheader, label %vector.ph1216

vector.ph1216:                                    ; preds = %polly.loop_header333
  %n.vec1218 = and i64 %108, -4
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1220, %vector.body1212 ]
  %110 = shl nuw nsw i64 %index1219, 3
  %111 = getelementptr i8, i8* %scevgep345, i64 %110
  %112 = bitcast i8* %111 to <4 x double>*
  %wide.load1223 = load <4 x double>, <4 x double>* %112, align 8, !alias.scope !68, !noalias !70
  %113 = fmul fast <4 x double> %wide.load1223, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %114 = bitcast i8* %111 to <4 x double>*
  store <4 x double> %113, <4 x double>* %114, align 8, !alias.scope !68, !noalias !70
  %index.next1220 = add i64 %index1219, 4
  %115 = icmp eq i64 %index.next1220, %n.vec1218
  br i1 %115, label %middle.block1210, label %vector.body1212, !llvm.loop !73

middle.block1210:                                 ; preds = %vector.body1212
  %cmp.n1222 = icmp eq i64 %108, %n.vec1218
  br i1 %cmp.n1222, label %polly.loop_exit341, label %polly.loop_header339.preheader

polly.loop_header339.preheader:                   ; preds = %polly.loop_header333, %middle.block1210
  %polly.indvar342.ph = phi i64 [ 0, %polly.loop_header333 ], [ %n.vec1218, %middle.block1210 ]
  br label %polly.loop_header339

polly.loop_exit341:                               ; preds = %polly.loop_header339, %middle.block1210
  %polly.indvar_next337 = add nuw nsw i64 %polly.indvar336, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next337, 80
  %indvar.next1214 = add i64 %indvar1213, 1
  br i1 %exitcond786.not, label %polly.loop_header349, label %polly.loop_header333

polly.loop_header339:                             ; preds = %polly.loop_header339.preheader, %polly.loop_header339
  %polly.indvar342 = phi i64 [ %polly.indvar_next343, %polly.loop_header339 ], [ %polly.indvar342.ph, %polly.loop_header339.preheader ]
  %116 = shl nuw nsw i64 %polly.indvar342, 3
  %scevgep346 = getelementptr i8, i8* %scevgep345, i64 %116
  %scevgep346347 = bitcast i8* %scevgep346 to double*
  %_p_scalar_348 = load double, double* %scevgep346347, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_348, 1.200000e+00
  store double %p_mul.i57, double* %scevgep346347, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next343 = add nuw nsw i64 %polly.indvar342, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next343, %polly.indvar336
  br i1 %exitcond785.not, label %polly.loop_exit341, label %polly.loop_header339, !llvm.loop !74

polly.loop_header349:                             ; preds = %polly.loop_exit341, %polly.loop_exit357
  %indvars.iv776 = phi i64 [ %indvars.iv.next777, %polly.loop_exit357 ], [ 0, %polly.loop_exit341 ]
  %polly.indvar352 = phi i64 [ %polly.indvar_next353, %polly.loop_exit357 ], [ 0, %polly.loop_exit341 ]
  %smin778 = call i64 @llvm.smin.i64(i64 %indvars.iv776, i64 -52)
  %117 = shl nsw i64 %polly.indvar352, 3
  %118 = add nsw i64 %smin778, 59
  br label %polly.loop_header355

polly.loop_exit357:                               ; preds = %polly.loop_exit363
  %polly.indvar_next353 = add nuw nsw i64 %polly.indvar352, 1
  %indvars.iv.next777 = add nsw i64 %indvars.iv776, -8
  %exitcond784.not = icmp eq i64 %polly.indvar_next353, 8
  br i1 %exitcond784.not, label %kernel_syr2k.exit90, label %polly.loop_header349

polly.loop_header355:                             ; preds = %polly.loop_exit363, %polly.loop_header349
  %indvars.iv780 = phi i64 [ %indvars.iv.next781, %polly.loop_exit363 ], [ 80, %polly.loop_header349 ]
  %polly.indvar358 = phi i64 [ %polly.indvar_next359, %polly.loop_exit363 ], [ 0, %polly.loop_header349 ]
  %119 = shl nuw nsw i64 %polly.indvar358, 3
  br label %polly.loop_header361

polly.loop_exit363:                               ; preds = %polly.loop_exit369
  %polly.indvar_next359 = add nuw nsw i64 %polly.indvar358, 1
  %indvars.iv.next781 = add nsw i64 %indvars.iv780, -8
  %exitcond783.not = icmp eq i64 %polly.indvar_next359, 10
  br i1 %exitcond783.not, label %polly.loop_exit357, label %polly.loop_header355

polly.loop_header361:                             ; preds = %polly.loop_exit369, %polly.loop_header355
  %indvars.iv772 = phi i64 [ %indvars.iv.next773, %polly.loop_exit369 ], [ 0, %polly.loop_header355 ]
  %polly.indvar364 = phi i64 [ %polly.indvar_next365, %polly.loop_exit369 ], [ %119, %polly.loop_header355 ]
  %smin774 = call i64 @llvm.smin.i64(i64 %indvars.iv772, i64 7)
  %120 = mul nuw nsw i64 %polly.indvar364, 480
  %scevgep382 = getelementptr i8, i8* %call2, i64 %120
  %scevgep389 = getelementptr i8, i8* %call1, i64 %120
  %121 = mul nuw nsw i64 %polly.indvar364, 640
  %scevgep393 = getelementptr i8, i8* %call, i64 %121
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit375
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 1
  %exitcond782.not = icmp eq i64 %indvars.iv.next773, %indvars.iv780
  br i1 %exitcond782.not, label %polly.loop_exit363, label %polly.loop_header361

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.loop_header361
  %polly.indvar370 = phi i64 [ 0, %polly.loop_header361 ], [ %polly.indvar_next371, %polly.loop_exit375 ]
  %122 = add nuw nsw i64 %polly.indvar370, %117
  %123 = shl i64 %122, 3
  %scevgep383 = getelementptr i8, i8* %scevgep382, i64 %123
  %scevgep383384 = bitcast i8* %scevgep383 to double*
  %_p_scalar_385 = load double, double* %scevgep383384, align 8, !alias.scope !72, !noalias !75
  %scevgep390 = getelementptr i8, i8* %scevgep389, i64 %123
  %scevgep390391 = bitcast i8* %scevgep390 to double*
  %_p_scalar_392 = load double, double* %scevgep390391, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond779.not = icmp eq i64 %polly.indvar370, %118
  br i1 %exitcond779.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header373:                             ; preds = %polly.loop_header373, %polly.loop_header367
  %polly.indvar376 = phi i64 [ 0, %polly.loop_header367 ], [ %polly.indvar_next377, %polly.loop_header373 ]
  %124 = add nuw nsw i64 %polly.indvar376, %119
  %125 = mul nuw nsw i64 %124, 480
  %126 = add nuw nsw i64 %125, %123
  %scevgep379 = getelementptr i8, i8* %call1, i64 %126
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73 = fmul fast double %_p_scalar_385, %_p_scalar_381
  %scevgep386 = getelementptr i8, i8* %call2, i64 %126
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75 = fmul fast double %_p_scalar_392, %_p_scalar_388
  %127 = shl i64 %124, 3
  %scevgep394 = getelementptr i8, i8* %scevgep393, i64 %127
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_396
  store double %p_add42.i79, double* %scevgep394395, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond775.not = icmp eq i64 %polly.indvar376, %smin774
  br i1 %exitcond775.not, label %polly.loop_exit375, label %polly.loop_header373

polly.loop_header483:                             ; preds = %init_array.exit, %polly.loop_exit491
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit491 ], [ 0, %init_array.exit ]
  %polly.indvar486 = phi i64 [ %polly.indvar_next487, %polly.loop_exit491 ], [ 1, %init_array.exit ]
  %128 = add i64 %indvar, 1
  %129 = mul nuw nsw i64 %polly.indvar486, 640
  %scevgep495 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check1189 = icmp ult i64 %128, 4
  br i1 %min.iters.check1189, label %polly.loop_header489.preheader, label %vector.ph1190

vector.ph1190:                                    ; preds = %polly.loop_header483
  %n.vec1192 = and i64 %128, -4
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1190
  %index1193 = phi i64 [ 0, %vector.ph1190 ], [ %index.next1194, %vector.body1188 ]
  %130 = shl nuw nsw i64 %index1193, 3
  %131 = getelementptr i8, i8* %scevgep495, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load1197 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !77, !noalias !79
  %133 = fmul fast <4 x double> %wide.load1197, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !77, !noalias !79
  %index.next1194 = add i64 %index1193, 4
  %135 = icmp eq i64 %index.next1194, %n.vec1192
  br i1 %135, label %middle.block1186, label %vector.body1188, !llvm.loop !82

middle.block1186:                                 ; preds = %vector.body1188
  %cmp.n1196 = icmp eq i64 %128, %n.vec1192
  br i1 %cmp.n1196, label %polly.loop_exit491, label %polly.loop_header489.preheader

polly.loop_header489.preheader:                   ; preds = %polly.loop_header483, %middle.block1186
  %polly.indvar492.ph = phi i64 [ 0, %polly.loop_header483 ], [ %n.vec1192, %middle.block1186 ]
  br label %polly.loop_header489

polly.loop_exit491:                               ; preds = %polly.loop_header489, %middle.block1186
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next487, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond801.not, label %polly.loop_header499, label %polly.loop_header483

polly.loop_header489:                             ; preds = %polly.loop_header489.preheader, %polly.loop_header489
  %polly.indvar492 = phi i64 [ %polly.indvar_next493, %polly.loop_header489 ], [ %polly.indvar492.ph, %polly.loop_header489.preheader ]
  %136 = shl nuw nsw i64 %polly.indvar492, 3
  %scevgep496 = getelementptr i8, i8* %scevgep495, i64 %136
  %scevgep496497 = bitcast i8* %scevgep496 to double*
  %_p_scalar_498 = load double, double* %scevgep496497, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_498, 1.200000e+00
  store double %p_mul.i, double* %scevgep496497, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next493, %polly.indvar486
  br i1 %exitcond800.not, label %polly.loop_exit491, label %polly.loop_header489, !llvm.loop !83

polly.loop_header499:                             ; preds = %polly.loop_exit491, %polly.loop_exit507
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %polly.loop_exit507 ], [ 0, %polly.loop_exit491 ]
  %polly.indvar502 = phi i64 [ %polly.indvar_next503, %polly.loop_exit507 ], [ 0, %polly.loop_exit491 ]
  %smin793 = call i64 @llvm.smin.i64(i64 %indvars.iv791, i64 -52)
  %137 = shl nsw i64 %polly.indvar502, 3
  %138 = add nsw i64 %smin793, 59
  br label %polly.loop_header505

polly.loop_exit507:                               ; preds = %polly.loop_exit513
  %polly.indvar_next503 = add nuw nsw i64 %polly.indvar502, 1
  %indvars.iv.next792 = add nsw i64 %indvars.iv791, -8
  %exitcond799.not = icmp eq i64 %polly.indvar_next503, 8
  br i1 %exitcond799.not, label %kernel_syr2k.exit, label %polly.loop_header499

polly.loop_header505:                             ; preds = %polly.loop_exit513, %polly.loop_header499
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %polly.loop_exit513 ], [ 80, %polly.loop_header499 ]
  %polly.indvar508 = phi i64 [ %polly.indvar_next509, %polly.loop_exit513 ], [ 0, %polly.loop_header499 ]
  %139 = shl nuw nsw i64 %polly.indvar508, 3
  br label %polly.loop_header511

polly.loop_exit513:                               ; preds = %polly.loop_exit519
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %indvars.iv.next796 = add nsw i64 %indvars.iv795, -8
  %exitcond798.not = icmp eq i64 %polly.indvar_next509, 10
  br i1 %exitcond798.not, label %polly.loop_exit507, label %polly.loop_header505

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.loop_header505
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit519 ], [ 0, %polly.loop_header505 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ %139, %polly.loop_header505 ]
  %smin789 = call i64 @llvm.smin.i64(i64 %indvars.iv787, i64 7)
  %140 = mul nuw nsw i64 %polly.indvar514, 480
  %scevgep532 = getelementptr i8, i8* %call2, i64 %140
  %scevgep539 = getelementptr i8, i8* %call1, i64 %140
  %141 = mul nuw nsw i64 %polly.indvar514, 640
  %scevgep543 = getelementptr i8, i8* %call, i64 %141
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1
  %exitcond797.not = icmp eq i64 %indvars.iv.next788, %indvars.iv795
  br i1 %exitcond797.not, label %polly.loop_exit513, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %polly.indvar520 = phi i64 [ 0, %polly.loop_header511 ], [ %polly.indvar_next521, %polly.loop_exit525 ]
  %142 = add nuw nsw i64 %polly.indvar520, %137
  %143 = shl i64 %142, 3
  %scevgep533 = getelementptr i8, i8* %scevgep532, i64 %143
  %scevgep533534 = bitcast i8* %scevgep533 to double*
  %_p_scalar_535 = load double, double* %scevgep533534, align 8, !alias.scope !81, !noalias !84
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %143
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond794.not = icmp eq i64 %polly.indvar520, %138
  br i1 %exitcond794.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_header523, %polly.loop_header517
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header517 ], [ %polly.indvar_next527, %polly.loop_header523 ]
  %144 = add nuw nsw i64 %polly.indvar526, %139
  %145 = mul nuw nsw i64 %144, 480
  %146 = add nuw nsw i64 %145, %143
  %scevgep529 = getelementptr i8, i8* %call1, i64 %146
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i = fmul fast double %_p_scalar_535, %_p_scalar_531
  %scevgep536 = getelementptr i8, i8* %call2, i64 %146
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i = fmul fast double %_p_scalar_542, %_p_scalar_538
  %147 = shl i64 %144, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %147
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_546
  store double %p_add42.i, double* %scevgep544545, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond790.not = icmp eq i64 %polly.indvar526, %smin789
  br i1 %exitcond790.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header685:                             ; preds = %entry, %polly.loop_exit693
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_exit693 ], [ 0, %entry ]
  %148 = mul nuw nsw i64 %polly.indvar688, 640
  %149 = trunc i64 %polly.indvar688 to i32
  %broadcast.splatinsert920 = insertelement <4 x i32> poison, i32 %149, i32 0
  %broadcast.splat921 = shufflevector <4 x i32> %broadcast.splatinsert920, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body910

vector.body910:                                   ; preds = %vector.body910, %polly.loop_header685
  %index912 = phi i64 [ 0, %polly.loop_header685 ], [ %index.next913, %vector.body910 ]
  %vec.ind918 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685 ], [ %vec.ind.next919, %vector.body910 ]
  %150 = mul <4 x i32> %vec.ind918, %broadcast.splat921
  %151 = add <4 x i32> %150, <i32 3, i32 3, i32 3, i32 3>
  %152 = urem <4 x i32> %151, <i32 80, i32 80, i32 80, i32 80>
  %153 = sitofp <4 x i32> %152 to <4 x double>
  %154 = fmul fast <4 x double> %153, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %155 = shl i64 %index912, 3
  %156 = add nuw nsw i64 %155, %148
  %157 = getelementptr i8, i8* %call, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %154, <4 x double>* %158, align 8, !alias.scope !86, !noalias !88
  %index.next913 = add i64 %index912, 4
  %vec.ind.next919 = add <4 x i32> %vec.ind918, <i32 4, i32 4, i32 4, i32 4>
  %159 = icmp eq i64 %index.next913, 32
  br i1 %159, label %polly.loop_exit693, label %vector.body910, !llvm.loop !91

polly.loop_exit693:                               ; preds = %vector.body910
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next689, 32
  br i1 %exitcond821.not, label %polly.loop_header685.1, label %polly.loop_header685

polly.loop_header712:                             ; preds = %polly.loop_exit693.2.2, %polly.loop_exit720
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_exit720 ], [ 0, %polly.loop_exit693.2.2 ]
  %160 = mul nuw nsw i64 %polly.indvar715, 480
  %161 = trunc i64 %polly.indvar715 to i32
  %broadcast.splatinsert1034 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat1035 = shufflevector <4 x i32> %broadcast.splatinsert1034, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %polly.loop_header712
  %index1026 = phi i64 [ 0, %polly.loop_header712 ], [ %index.next1027, %vector.body1024 ]
  %vec.ind1032 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712 ], [ %vec.ind.next1033, %vector.body1024 ]
  %162 = mul <4 x i32> %vec.ind1032, %broadcast.splat1035
  %163 = add <4 x i32> %162, <i32 2, i32 2, i32 2, i32 2>
  %164 = urem <4 x i32> %163, <i32 60, i32 60, i32 60, i32 60>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %167 = shl i64 %index1026, 3
  %168 = add i64 %167, %160
  %169 = getelementptr i8, i8* %call2, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !90, !noalias !92
  %index.next1027 = add i64 %index1026, 4
  %vec.ind.next1033 = add <4 x i32> %vec.ind1032, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next1027, 32
  br i1 %171, label %polly.loop_exit720, label %vector.body1024, !llvm.loop !93

polly.loop_exit720:                               ; preds = %vector.body1024
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next716, 32
  br i1 %exitcond812.not, label %polly.loop_header712.1, label %polly.loop_header712

polly.loop_header738:                             ; preds = %polly.loop_exit720.1.2, %polly.loop_exit746
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %polly.loop_exit720.1.2 ]
  %172 = mul nuw nsw i64 %polly.indvar741, 480
  %173 = trunc i64 %polly.indvar741 to i32
  %broadcast.splatinsert1112 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat1113 = shufflevector <4 x i32> %broadcast.splatinsert1112, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %polly.loop_header738
  %index1104 = phi i64 [ 0, %polly.loop_header738 ], [ %index.next1105, %vector.body1102 ]
  %vec.ind1110 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738 ], [ %vec.ind.next1111, %vector.body1102 ]
  %174 = mul <4 x i32> %vec.ind1110, %broadcast.splat1113
  %175 = add <4 x i32> %174, <i32 1, i32 1, i32 1, i32 1>
  %176 = urem <4 x i32> %175, <i32 80, i32 80, i32 80, i32 80>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %179 = shl i64 %index1104, 3
  %180 = add i64 %179, %172
  %181 = getelementptr i8, i8* %call1, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !89, !noalias !94
  %index.next1105 = add i64 %index1104, 4
  %vec.ind.next1111 = add <4 x i32> %vec.ind1110, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next1105, 32
  br i1 %183, label %polly.loop_exit746, label %vector.body1102, !llvm.loop !95

polly.loop_exit746:                               ; preds = %vector.body1102
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %exitcond806.not = icmp eq i64 %polly.indvar_next742, 32
  br i1 %exitcond806.not, label %polly.loop_header738.1, label %polly.loop_header738

polly.loop_header738.1:                           ; preds = %polly.loop_exit746, %polly.loop_exit746.1
  %polly.indvar741.1 = phi i64 [ %polly.indvar_next742.1, %polly.loop_exit746.1 ], [ 0, %polly.loop_exit746 ]
  %184 = mul nuw nsw i64 %polly.indvar741.1, 480
  %185 = trunc i64 %polly.indvar741.1 to i32
  %broadcast.splatinsert1124 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1125 = shufflevector <4 x i32> %broadcast.splatinsert1124, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %polly.loop_header738.1
  %index1118 = phi i64 [ 0, %polly.loop_header738.1 ], [ %index.next1119, %vector.body1116 ]
  %vec.ind1122 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1 ], [ %vec.ind.next1123, %vector.body1116 ]
  %186 = add nuw nsw <4 x i64> %vec.ind1122, <i64 32, i64 32, i64 32, i64 32>
  %187 = trunc <4 x i64> %186 to <4 x i32>
  %188 = mul <4 x i32> %broadcast.splat1125, %187
  %189 = add <4 x i32> %188, <i32 1, i32 1, i32 1, i32 1>
  %190 = urem <4 x i32> %189, <i32 80, i32 80, i32 80, i32 80>
  %191 = sitofp <4 x i32> %190 to <4 x double>
  %192 = fmul fast <4 x double> %191, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %193 = extractelement <4 x i64> %186, i32 0
  %194 = shl i64 %193, 3
  %195 = add i64 %194, %184
  %196 = getelementptr i8, i8* %call1, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %192, <4 x double>* %197, align 8, !alias.scope !89, !noalias !94
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1123 = add <4 x i64> %vec.ind1122, <i64 4, i64 4, i64 4, i64 4>
  %198 = icmp eq i64 %index.next1119, 28
  br i1 %198, label %polly.loop_exit746.1, label %vector.body1116, !llvm.loop !96

polly.loop_exit746.1:                             ; preds = %vector.body1116
  %polly.indvar_next742.1 = add nuw nsw i64 %polly.indvar741.1, 1
  %exitcond806.1.not = icmp eq i64 %polly.indvar_next742.1, 32
  br i1 %exitcond806.1.not, label %polly.loop_header738.1829, label %polly.loop_header738.1

polly.loop_header738.1829:                        ; preds = %polly.loop_exit746.1, %polly.loop_exit746.1840
  %polly.indvar741.1828 = phi i64 [ %polly.indvar_next742.1838, %polly.loop_exit746.1840 ], [ 0, %polly.loop_exit746.1 ]
  %199 = add nuw nsw i64 %polly.indvar741.1828, 32
  %200 = mul nuw nsw i64 %199, 480
  %201 = trunc i64 %199 to i32
  %broadcast.splatinsert1138 = insertelement <4 x i32> poison, i32 %201, i32 0
  %broadcast.splat1139 = shufflevector <4 x i32> %broadcast.splatinsert1138, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1128

vector.body1128:                                  ; preds = %vector.body1128, %polly.loop_header738.1829
  %index1130 = phi i64 [ 0, %polly.loop_header738.1829 ], [ %index.next1131, %vector.body1128 ]
  %vec.ind1136 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.1829 ], [ %vec.ind.next1137, %vector.body1128 ]
  %202 = mul <4 x i32> %vec.ind1136, %broadcast.splat1139
  %203 = add <4 x i32> %202, <i32 1, i32 1, i32 1, i32 1>
  %204 = urem <4 x i32> %203, <i32 80, i32 80, i32 80, i32 80>
  %205 = sitofp <4 x i32> %204 to <4 x double>
  %206 = fmul fast <4 x double> %205, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %207 = shl i64 %index1130, 3
  %208 = add i64 %207, %200
  %209 = getelementptr i8, i8* %call1, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %206, <4 x double>* %210, align 8, !alias.scope !89, !noalias !94
  %index.next1131 = add i64 %index1130, 4
  %vec.ind.next1137 = add <4 x i32> %vec.ind1136, <i32 4, i32 4, i32 4, i32 4>
  %211 = icmp eq i64 %index.next1131, 32
  br i1 %211, label %polly.loop_exit746.1840, label %vector.body1128, !llvm.loop !97

polly.loop_exit746.1840:                          ; preds = %vector.body1128
  %polly.indvar_next742.1838 = add nuw nsw i64 %polly.indvar741.1828, 1
  %exitcond806.1839.not = icmp eq i64 %polly.indvar_next742.1838, 32
  br i1 %exitcond806.1839.not, label %polly.loop_header738.1.1, label %polly.loop_header738.1829

polly.loop_header738.1.1:                         ; preds = %polly.loop_exit746.1840, %polly.loop_exit746.1.1
  %polly.indvar741.1.1 = phi i64 [ %polly.indvar_next742.1.1, %polly.loop_exit746.1.1 ], [ 0, %polly.loop_exit746.1840 ]
  %212 = add nuw nsw i64 %polly.indvar741.1.1, 32
  %213 = mul nuw nsw i64 %212, 480
  %214 = trunc i64 %212 to i32
  %broadcast.splatinsert1150 = insertelement <4 x i32> poison, i32 %214, i32 0
  %broadcast.splat1151 = shufflevector <4 x i32> %broadcast.splatinsert1150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %polly.loop_header738.1.1
  %index1144 = phi i64 [ 0, %polly.loop_header738.1.1 ], [ %index.next1145, %vector.body1142 ]
  %vec.ind1148 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.1 ], [ %vec.ind.next1149, %vector.body1142 ]
  %215 = add nuw nsw <4 x i64> %vec.ind1148, <i64 32, i64 32, i64 32, i64 32>
  %216 = trunc <4 x i64> %215 to <4 x i32>
  %217 = mul <4 x i32> %broadcast.splat1151, %216
  %218 = add <4 x i32> %217, <i32 1, i32 1, i32 1, i32 1>
  %219 = urem <4 x i32> %218, <i32 80, i32 80, i32 80, i32 80>
  %220 = sitofp <4 x i32> %219 to <4 x double>
  %221 = fmul fast <4 x double> %220, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %222 = extractelement <4 x i64> %215, i32 0
  %223 = shl i64 %222, 3
  %224 = add i64 %223, %213
  %225 = getelementptr i8, i8* %call1, i64 %224
  %226 = bitcast i8* %225 to <4 x double>*
  store <4 x double> %221, <4 x double>* %226, align 8, !alias.scope !89, !noalias !94
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1149 = add <4 x i64> %vec.ind1148, <i64 4, i64 4, i64 4, i64 4>
  %227 = icmp eq i64 %index.next1145, 28
  br i1 %227, label %polly.loop_exit746.1.1, label %vector.body1142, !llvm.loop !98

polly.loop_exit746.1.1:                           ; preds = %vector.body1142
  %polly.indvar_next742.1.1 = add nuw nsw i64 %polly.indvar741.1.1, 1
  %exitcond806.1.1.not = icmp eq i64 %polly.indvar_next742.1.1, 32
  br i1 %exitcond806.1.1.not, label %polly.loop_header738.2, label %polly.loop_header738.1.1

polly.loop_header738.2:                           ; preds = %polly.loop_exit746.1.1, %polly.loop_exit746.2
  %polly.indvar741.2 = phi i64 [ %polly.indvar_next742.2, %polly.loop_exit746.2 ], [ 0, %polly.loop_exit746.1.1 ]
  %228 = add nuw nsw i64 %polly.indvar741.2, 64
  %229 = mul nuw nsw i64 %228, 480
  %230 = trunc i64 %228 to i32
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %polly.loop_header738.2
  %index1156 = phi i64 [ 0, %polly.loop_header738.2 ], [ %index.next1157, %vector.body1154 ]
  %vec.ind1162 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.2 ], [ %vec.ind.next1163, %vector.body1154 ]
  %231 = mul <4 x i32> %vec.ind1162, %broadcast.splat1165
  %232 = add <4 x i32> %231, <i32 1, i32 1, i32 1, i32 1>
  %233 = urem <4 x i32> %232, <i32 80, i32 80, i32 80, i32 80>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %236 = shl i64 %index1156, 3
  %237 = add i64 %236, %229
  %238 = getelementptr i8, i8* %call1, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %235, <4 x double>* %239, align 8, !alias.scope !89, !noalias !94
  %index.next1157 = add i64 %index1156, 4
  %vec.ind.next1163 = add <4 x i32> %vec.ind1162, <i32 4, i32 4, i32 4, i32 4>
  %240 = icmp eq i64 %index.next1157, 32
  br i1 %240, label %polly.loop_exit746.2, label %vector.body1154, !llvm.loop !99

polly.loop_exit746.2:                             ; preds = %vector.body1154
  %polly.indvar_next742.2 = add nuw nsw i64 %polly.indvar741.2, 1
  %exitcond806.2.not = icmp eq i64 %polly.indvar_next742.2, 16
  br i1 %exitcond806.2.not, label %polly.loop_header738.1.2, label %polly.loop_header738.2

polly.loop_header738.1.2:                         ; preds = %polly.loop_exit746.2, %polly.loop_exit746.1.2
  %polly.indvar741.1.2 = phi i64 [ %polly.indvar_next742.1.2, %polly.loop_exit746.1.2 ], [ 0, %polly.loop_exit746.2 ]
  %241 = add nuw nsw i64 %polly.indvar741.1.2, 64
  %242 = mul nuw nsw i64 %241, 480
  %243 = trunc i64 %241 to i32
  %broadcast.splatinsert1176 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat1177 = shufflevector <4 x i32> %broadcast.splatinsert1176, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %polly.loop_header738.1.2
  %index1170 = phi i64 [ 0, %polly.loop_header738.1.2 ], [ %index.next1171, %vector.body1168 ]
  %vec.ind1174 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.2 ], [ %vec.ind.next1175, %vector.body1168 ]
  %244 = add nuw nsw <4 x i64> %vec.ind1174, <i64 32, i64 32, i64 32, i64 32>
  %245 = trunc <4 x i64> %244 to <4 x i32>
  %246 = mul <4 x i32> %broadcast.splat1177, %245
  %247 = add <4 x i32> %246, <i32 1, i32 1, i32 1, i32 1>
  %248 = urem <4 x i32> %247, <i32 80, i32 80, i32 80, i32 80>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %251 = extractelement <4 x i64> %244, i32 0
  %252 = shl i64 %251, 3
  %253 = add i64 %252, %242
  %254 = getelementptr i8, i8* %call1, i64 %253
  %255 = bitcast i8* %254 to <4 x double>*
  store <4 x double> %250, <4 x double>* %255, align 8, !alias.scope !89, !noalias !94
  %index.next1171 = add i64 %index1170, 4
  %vec.ind.next1175 = add <4 x i64> %vec.ind1174, <i64 4, i64 4, i64 4, i64 4>
  %256 = icmp eq i64 %index.next1171, 28
  br i1 %256, label %polly.loop_exit746.1.2, label %vector.body1168, !llvm.loop !100

polly.loop_exit746.1.2:                           ; preds = %vector.body1168
  %polly.indvar_next742.1.2 = add nuw nsw i64 %polly.indvar741.1.2, 1
  %exitcond806.1.2.not = icmp eq i64 %polly.indvar_next742.1.2, 16
  br i1 %exitcond806.1.2.not, label %init_array.exit, label %polly.loop_header738.1.2

polly.loop_header712.1:                           ; preds = %polly.loop_exit720, %polly.loop_exit720.1
  %polly.indvar715.1 = phi i64 [ %polly.indvar_next716.1, %polly.loop_exit720.1 ], [ 0, %polly.loop_exit720 ]
  %257 = mul nuw nsw i64 %polly.indvar715.1, 480
  %258 = trunc i64 %polly.indvar715.1 to i32
  %broadcast.splatinsert1046 = insertelement <4 x i32> poison, i32 %258, i32 0
  %broadcast.splat1047 = shufflevector <4 x i32> %broadcast.splatinsert1046, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %polly.loop_header712.1
  %index1040 = phi i64 [ 0, %polly.loop_header712.1 ], [ %index.next1041, %vector.body1038 ]
  %vec.ind1044 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1 ], [ %vec.ind.next1045, %vector.body1038 ]
  %259 = add nuw nsw <4 x i64> %vec.ind1044, <i64 32, i64 32, i64 32, i64 32>
  %260 = trunc <4 x i64> %259 to <4 x i32>
  %261 = mul <4 x i32> %broadcast.splat1047, %260
  %262 = add <4 x i32> %261, <i32 2, i32 2, i32 2, i32 2>
  %263 = urem <4 x i32> %262, <i32 60, i32 60, i32 60, i32 60>
  %264 = sitofp <4 x i32> %263 to <4 x double>
  %265 = fmul fast <4 x double> %264, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %266 = extractelement <4 x i64> %259, i32 0
  %267 = shl i64 %266, 3
  %268 = add i64 %267, %257
  %269 = getelementptr i8, i8* %call2, i64 %268
  %270 = bitcast i8* %269 to <4 x double>*
  store <4 x double> %265, <4 x double>* %270, align 8, !alias.scope !90, !noalias !92
  %index.next1041 = add i64 %index1040, 4
  %vec.ind.next1045 = add <4 x i64> %vec.ind1044, <i64 4, i64 4, i64 4, i64 4>
  %271 = icmp eq i64 %index.next1041, 28
  br i1 %271, label %polly.loop_exit720.1, label %vector.body1038, !llvm.loop !101

polly.loop_exit720.1:                             ; preds = %vector.body1038
  %polly.indvar_next716.1 = add nuw nsw i64 %polly.indvar715.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar_next716.1, 32
  br i1 %exitcond812.1.not, label %polly.loop_header712.1843, label %polly.loop_header712.1

polly.loop_header712.1843:                        ; preds = %polly.loop_exit720.1, %polly.loop_exit720.1854
  %polly.indvar715.1842 = phi i64 [ %polly.indvar_next716.1852, %polly.loop_exit720.1854 ], [ 0, %polly.loop_exit720.1 ]
  %272 = add nuw nsw i64 %polly.indvar715.1842, 32
  %273 = mul nuw nsw i64 %272, 480
  %274 = trunc i64 %272 to i32
  %broadcast.splatinsert1060 = insertelement <4 x i32> poison, i32 %274, i32 0
  %broadcast.splat1061 = shufflevector <4 x i32> %broadcast.splatinsert1060, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %polly.loop_header712.1843
  %index1052 = phi i64 [ 0, %polly.loop_header712.1843 ], [ %index.next1053, %vector.body1050 ]
  %vec.ind1058 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.1843 ], [ %vec.ind.next1059, %vector.body1050 ]
  %275 = mul <4 x i32> %vec.ind1058, %broadcast.splat1061
  %276 = add <4 x i32> %275, <i32 2, i32 2, i32 2, i32 2>
  %277 = urem <4 x i32> %276, <i32 60, i32 60, i32 60, i32 60>
  %278 = sitofp <4 x i32> %277 to <4 x double>
  %279 = fmul fast <4 x double> %278, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %280 = shl i64 %index1052, 3
  %281 = add i64 %280, %273
  %282 = getelementptr i8, i8* %call2, i64 %281
  %283 = bitcast i8* %282 to <4 x double>*
  store <4 x double> %279, <4 x double>* %283, align 8, !alias.scope !90, !noalias !92
  %index.next1053 = add i64 %index1052, 4
  %vec.ind.next1059 = add <4 x i32> %vec.ind1058, <i32 4, i32 4, i32 4, i32 4>
  %284 = icmp eq i64 %index.next1053, 32
  br i1 %284, label %polly.loop_exit720.1854, label %vector.body1050, !llvm.loop !102

polly.loop_exit720.1854:                          ; preds = %vector.body1050
  %polly.indvar_next716.1852 = add nuw nsw i64 %polly.indvar715.1842, 1
  %exitcond812.1853.not = icmp eq i64 %polly.indvar_next716.1852, 32
  br i1 %exitcond812.1853.not, label %polly.loop_header712.1.1, label %polly.loop_header712.1843

polly.loop_header712.1.1:                         ; preds = %polly.loop_exit720.1854, %polly.loop_exit720.1.1
  %polly.indvar715.1.1 = phi i64 [ %polly.indvar_next716.1.1, %polly.loop_exit720.1.1 ], [ 0, %polly.loop_exit720.1854 ]
  %285 = add nuw nsw i64 %polly.indvar715.1.1, 32
  %286 = mul nuw nsw i64 %285, 480
  %287 = trunc i64 %285 to i32
  %broadcast.splatinsert1072 = insertelement <4 x i32> poison, i32 %287, i32 0
  %broadcast.splat1073 = shufflevector <4 x i32> %broadcast.splatinsert1072, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %polly.loop_header712.1.1
  %index1066 = phi i64 [ 0, %polly.loop_header712.1.1 ], [ %index.next1067, %vector.body1064 ]
  %vec.ind1070 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.1 ], [ %vec.ind.next1071, %vector.body1064 ]
  %288 = add nuw nsw <4 x i64> %vec.ind1070, <i64 32, i64 32, i64 32, i64 32>
  %289 = trunc <4 x i64> %288 to <4 x i32>
  %290 = mul <4 x i32> %broadcast.splat1073, %289
  %291 = add <4 x i32> %290, <i32 2, i32 2, i32 2, i32 2>
  %292 = urem <4 x i32> %291, <i32 60, i32 60, i32 60, i32 60>
  %293 = sitofp <4 x i32> %292 to <4 x double>
  %294 = fmul fast <4 x double> %293, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %295 = extractelement <4 x i64> %288, i32 0
  %296 = shl i64 %295, 3
  %297 = add i64 %296, %286
  %298 = getelementptr i8, i8* %call2, i64 %297
  %299 = bitcast i8* %298 to <4 x double>*
  store <4 x double> %294, <4 x double>* %299, align 8, !alias.scope !90, !noalias !92
  %index.next1067 = add i64 %index1066, 4
  %vec.ind.next1071 = add <4 x i64> %vec.ind1070, <i64 4, i64 4, i64 4, i64 4>
  %300 = icmp eq i64 %index.next1067, 28
  br i1 %300, label %polly.loop_exit720.1.1, label %vector.body1064, !llvm.loop !103

polly.loop_exit720.1.1:                           ; preds = %vector.body1064
  %polly.indvar_next716.1.1 = add nuw nsw i64 %polly.indvar715.1.1, 1
  %exitcond812.1.1.not = icmp eq i64 %polly.indvar_next716.1.1, 32
  br i1 %exitcond812.1.1.not, label %polly.loop_header712.2, label %polly.loop_header712.1.1

polly.loop_header712.2:                           ; preds = %polly.loop_exit720.1.1, %polly.loop_exit720.2
  %polly.indvar715.2 = phi i64 [ %polly.indvar_next716.2, %polly.loop_exit720.2 ], [ 0, %polly.loop_exit720.1.1 ]
  %301 = add nuw nsw i64 %polly.indvar715.2, 64
  %302 = mul nuw nsw i64 %301, 480
  %303 = trunc i64 %301 to i32
  %broadcast.splatinsert1086 = insertelement <4 x i32> poison, i32 %303, i32 0
  %broadcast.splat1087 = shufflevector <4 x i32> %broadcast.splatinsert1086, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %polly.loop_header712.2
  %index1078 = phi i64 [ 0, %polly.loop_header712.2 ], [ %index.next1079, %vector.body1076 ]
  %vec.ind1084 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.2 ], [ %vec.ind.next1085, %vector.body1076 ]
  %304 = mul <4 x i32> %vec.ind1084, %broadcast.splat1087
  %305 = add <4 x i32> %304, <i32 2, i32 2, i32 2, i32 2>
  %306 = urem <4 x i32> %305, <i32 60, i32 60, i32 60, i32 60>
  %307 = sitofp <4 x i32> %306 to <4 x double>
  %308 = fmul fast <4 x double> %307, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %309 = shl i64 %index1078, 3
  %310 = add i64 %309, %302
  %311 = getelementptr i8, i8* %call2, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %308, <4 x double>* %312, align 8, !alias.scope !90, !noalias !92
  %index.next1079 = add i64 %index1078, 4
  %vec.ind.next1085 = add <4 x i32> %vec.ind1084, <i32 4, i32 4, i32 4, i32 4>
  %313 = icmp eq i64 %index.next1079, 32
  br i1 %313, label %polly.loop_exit720.2, label %vector.body1076, !llvm.loop !104

polly.loop_exit720.2:                             ; preds = %vector.body1076
  %polly.indvar_next716.2 = add nuw nsw i64 %polly.indvar715.2, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar_next716.2, 16
  br i1 %exitcond812.2.not, label %polly.loop_header712.1.2, label %polly.loop_header712.2

polly.loop_header712.1.2:                         ; preds = %polly.loop_exit720.2, %polly.loop_exit720.1.2
  %polly.indvar715.1.2 = phi i64 [ %polly.indvar_next716.1.2, %polly.loop_exit720.1.2 ], [ 0, %polly.loop_exit720.2 ]
  %314 = add nuw nsw i64 %polly.indvar715.1.2, 64
  %315 = mul nuw nsw i64 %314, 480
  %316 = trunc i64 %314 to i32
  %broadcast.splatinsert1098 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat1099 = shufflevector <4 x i32> %broadcast.splatinsert1098, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1090

vector.body1090:                                  ; preds = %vector.body1090, %polly.loop_header712.1.2
  %index1092 = phi i64 [ 0, %polly.loop_header712.1.2 ], [ %index.next1093, %vector.body1090 ]
  %vec.ind1096 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.2 ], [ %vec.ind.next1097, %vector.body1090 ]
  %317 = add nuw nsw <4 x i64> %vec.ind1096, <i64 32, i64 32, i64 32, i64 32>
  %318 = trunc <4 x i64> %317 to <4 x i32>
  %319 = mul <4 x i32> %broadcast.splat1099, %318
  %320 = add <4 x i32> %319, <i32 2, i32 2, i32 2, i32 2>
  %321 = urem <4 x i32> %320, <i32 60, i32 60, i32 60, i32 60>
  %322 = sitofp <4 x i32> %321 to <4 x double>
  %323 = fmul fast <4 x double> %322, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %324 = extractelement <4 x i64> %317, i32 0
  %325 = shl i64 %324, 3
  %326 = add i64 %325, %315
  %327 = getelementptr i8, i8* %call2, i64 %326
  %328 = bitcast i8* %327 to <4 x double>*
  store <4 x double> %323, <4 x double>* %328, align 8, !alias.scope !90, !noalias !92
  %index.next1093 = add i64 %index1092, 4
  %vec.ind.next1097 = add <4 x i64> %vec.ind1096, <i64 4, i64 4, i64 4, i64 4>
  %329 = icmp eq i64 %index.next1093, 28
  br i1 %329, label %polly.loop_exit720.1.2, label %vector.body1090, !llvm.loop !105

polly.loop_exit720.1.2:                           ; preds = %vector.body1090
  %polly.indvar_next716.1.2 = add nuw nsw i64 %polly.indvar715.1.2, 1
  %exitcond812.1.2.not = icmp eq i64 %polly.indvar_next716.1.2, 16
  br i1 %exitcond812.1.2.not, label %polly.loop_header738, label %polly.loop_header712.1.2

polly.loop_header685.1:                           ; preds = %polly.loop_exit693, %polly.loop_exit693.1
  %polly.indvar688.1 = phi i64 [ %polly.indvar_next689.1, %polly.loop_exit693.1 ], [ 0, %polly.loop_exit693 ]
  %330 = mul nuw nsw i64 %polly.indvar688.1, 640
  %331 = trunc i64 %polly.indvar688.1 to i32
  %broadcast.splatinsert932 = insertelement <4 x i32> poison, i32 %331, i32 0
  %broadcast.splat933 = shufflevector <4 x i32> %broadcast.splatinsert932, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body924

vector.body924:                                   ; preds = %vector.body924, %polly.loop_header685.1
  %index926 = phi i64 [ 0, %polly.loop_header685.1 ], [ %index.next927, %vector.body924 ]
  %vec.ind930 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1 ], [ %vec.ind.next931, %vector.body924 ]
  %332 = add nuw nsw <4 x i64> %vec.ind930, <i64 32, i64 32, i64 32, i64 32>
  %333 = trunc <4 x i64> %332 to <4 x i32>
  %334 = mul <4 x i32> %broadcast.splat933, %333
  %335 = add <4 x i32> %334, <i32 3, i32 3, i32 3, i32 3>
  %336 = urem <4 x i32> %335, <i32 80, i32 80, i32 80, i32 80>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %339 = extractelement <4 x i64> %332, i32 0
  %340 = shl i64 %339, 3
  %341 = add nuw nsw i64 %340, %330
  %342 = getelementptr i8, i8* %call, i64 %341
  %343 = bitcast i8* %342 to <4 x double>*
  store <4 x double> %338, <4 x double>* %343, align 8, !alias.scope !86, !noalias !88
  %index.next927 = add i64 %index926, 4
  %vec.ind.next931 = add <4 x i64> %vec.ind930, <i64 4, i64 4, i64 4, i64 4>
  %344 = icmp eq i64 %index.next927, 32
  br i1 %344, label %polly.loop_exit693.1, label %vector.body924, !llvm.loop !106

polly.loop_exit693.1:                             ; preds = %vector.body924
  %polly.indvar_next689.1 = add nuw nsw i64 %polly.indvar688.1, 1
  %exitcond821.1.not = icmp eq i64 %polly.indvar_next689.1, 32
  br i1 %exitcond821.1.not, label %polly.loop_header685.2, label %polly.loop_header685.1

polly.loop_header685.2:                           ; preds = %polly.loop_exit693.1, %polly.loop_exit693.2
  %polly.indvar688.2 = phi i64 [ %polly.indvar_next689.2, %polly.loop_exit693.2 ], [ 0, %polly.loop_exit693.1 ]
  %345 = mul nuw nsw i64 %polly.indvar688.2, 640
  %346 = trunc i64 %polly.indvar688.2 to i32
  %broadcast.splatinsert944 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat945 = shufflevector <4 x i32> %broadcast.splatinsert944, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %polly.loop_header685.2
  %index938 = phi i64 [ 0, %polly.loop_header685.2 ], [ %index.next939, %vector.body936 ]
  %vec.ind942 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2 ], [ %vec.ind.next943, %vector.body936 ]
  %347 = add nuw nsw <4 x i64> %vec.ind942, <i64 64, i64 64, i64 64, i64 64>
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat945, %348
  %350 = add <4 x i32> %349, <i32 3, i32 3, i32 3, i32 3>
  %351 = urem <4 x i32> %350, <i32 80, i32 80, i32 80, i32 80>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add nuw nsw i64 %355, %345
  %357 = getelementptr i8, i8* %call, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !86, !noalias !88
  %index.next939 = add i64 %index938, 4
  %vec.ind.next943 = add <4 x i64> %vec.ind942, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next939, 16
  br i1 %359, label %polly.loop_exit693.2, label %vector.body936, !llvm.loop !107

polly.loop_exit693.2:                             ; preds = %vector.body936
  %polly.indvar_next689.2 = add nuw nsw i64 %polly.indvar688.2, 1
  %exitcond821.2.not = icmp eq i64 %polly.indvar_next689.2, 32
  br i1 %exitcond821.2.not, label %polly.loop_header685.1857, label %polly.loop_header685.2

polly.loop_header685.1857:                        ; preds = %polly.loop_exit693.2, %polly.loop_exit693.1868
  %polly.indvar688.1856 = phi i64 [ %polly.indvar_next689.1866, %polly.loop_exit693.1868 ], [ 0, %polly.loop_exit693.2 ]
  %360 = add nuw nsw i64 %polly.indvar688.1856, 32
  %361 = mul nuw nsw i64 %360, 640
  %362 = trunc i64 %360 to i32
  %broadcast.splatinsert958 = insertelement <4 x i32> poison, i32 %362, i32 0
  %broadcast.splat959 = shufflevector <4 x i32> %broadcast.splatinsert958, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %polly.loop_header685.1857
  %index950 = phi i64 [ 0, %polly.loop_header685.1857 ], [ %index.next951, %vector.body948 ]
  %vec.ind956 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.1857 ], [ %vec.ind.next957, %vector.body948 ]
  %363 = mul <4 x i32> %vec.ind956, %broadcast.splat959
  %364 = add <4 x i32> %363, <i32 3, i32 3, i32 3, i32 3>
  %365 = urem <4 x i32> %364, <i32 80, i32 80, i32 80, i32 80>
  %366 = sitofp <4 x i32> %365 to <4 x double>
  %367 = fmul fast <4 x double> %366, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %368 = shl i64 %index950, 3
  %369 = add nuw nsw i64 %368, %361
  %370 = getelementptr i8, i8* %call, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %367, <4 x double>* %371, align 8, !alias.scope !86, !noalias !88
  %index.next951 = add i64 %index950, 4
  %vec.ind.next957 = add <4 x i32> %vec.ind956, <i32 4, i32 4, i32 4, i32 4>
  %372 = icmp eq i64 %index.next951, 32
  br i1 %372, label %polly.loop_exit693.1868, label %vector.body948, !llvm.loop !108

polly.loop_exit693.1868:                          ; preds = %vector.body948
  %polly.indvar_next689.1866 = add nuw nsw i64 %polly.indvar688.1856, 1
  %exitcond821.1867.not = icmp eq i64 %polly.indvar_next689.1866, 32
  br i1 %exitcond821.1867.not, label %polly.loop_header685.1.1, label %polly.loop_header685.1857

polly.loop_header685.1.1:                         ; preds = %polly.loop_exit693.1868, %polly.loop_exit693.1.1
  %polly.indvar688.1.1 = phi i64 [ %polly.indvar_next689.1.1, %polly.loop_exit693.1.1 ], [ 0, %polly.loop_exit693.1868 ]
  %373 = add nuw nsw i64 %polly.indvar688.1.1, 32
  %374 = mul nuw nsw i64 %373, 640
  %375 = trunc i64 %373 to i32
  %broadcast.splatinsert970 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat971 = shufflevector <4 x i32> %broadcast.splatinsert970, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %polly.loop_header685.1.1
  %index964 = phi i64 [ 0, %polly.loop_header685.1.1 ], [ %index.next965, %vector.body962 ]
  %vec.ind968 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.1 ], [ %vec.ind.next969, %vector.body962 ]
  %376 = add nuw nsw <4 x i64> %vec.ind968, <i64 32, i64 32, i64 32, i64 32>
  %377 = trunc <4 x i64> %376 to <4 x i32>
  %378 = mul <4 x i32> %broadcast.splat971, %377
  %379 = add <4 x i32> %378, <i32 3, i32 3, i32 3, i32 3>
  %380 = urem <4 x i32> %379, <i32 80, i32 80, i32 80, i32 80>
  %381 = sitofp <4 x i32> %380 to <4 x double>
  %382 = fmul fast <4 x double> %381, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %383 = extractelement <4 x i64> %376, i32 0
  %384 = shl i64 %383, 3
  %385 = add nuw nsw i64 %384, %374
  %386 = getelementptr i8, i8* %call, i64 %385
  %387 = bitcast i8* %386 to <4 x double>*
  store <4 x double> %382, <4 x double>* %387, align 8, !alias.scope !86, !noalias !88
  %index.next965 = add i64 %index964, 4
  %vec.ind.next969 = add <4 x i64> %vec.ind968, <i64 4, i64 4, i64 4, i64 4>
  %388 = icmp eq i64 %index.next965, 32
  br i1 %388, label %polly.loop_exit693.1.1, label %vector.body962, !llvm.loop !109

polly.loop_exit693.1.1:                           ; preds = %vector.body962
  %polly.indvar_next689.1.1 = add nuw nsw i64 %polly.indvar688.1.1, 1
  %exitcond821.1.1.not = icmp eq i64 %polly.indvar_next689.1.1, 32
  br i1 %exitcond821.1.1.not, label %polly.loop_header685.2.1, label %polly.loop_header685.1.1

polly.loop_header685.2.1:                         ; preds = %polly.loop_exit693.1.1, %polly.loop_exit693.2.1
  %polly.indvar688.2.1 = phi i64 [ %polly.indvar_next689.2.1, %polly.loop_exit693.2.1 ], [ 0, %polly.loop_exit693.1.1 ]
  %389 = add nuw nsw i64 %polly.indvar688.2.1, 32
  %390 = mul nuw nsw i64 %389, 640
  %391 = trunc i64 %389 to i32
  %broadcast.splatinsert982 = insertelement <4 x i32> poison, i32 %391, i32 0
  %broadcast.splat983 = shufflevector <4 x i32> %broadcast.splatinsert982, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %polly.loop_header685.2.1
  %index976 = phi i64 [ 0, %polly.loop_header685.2.1 ], [ %index.next977, %vector.body974 ]
  %vec.ind980 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.1 ], [ %vec.ind.next981, %vector.body974 ]
  %392 = add nuw nsw <4 x i64> %vec.ind980, <i64 64, i64 64, i64 64, i64 64>
  %393 = trunc <4 x i64> %392 to <4 x i32>
  %394 = mul <4 x i32> %broadcast.splat983, %393
  %395 = add <4 x i32> %394, <i32 3, i32 3, i32 3, i32 3>
  %396 = urem <4 x i32> %395, <i32 80, i32 80, i32 80, i32 80>
  %397 = sitofp <4 x i32> %396 to <4 x double>
  %398 = fmul fast <4 x double> %397, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %399 = extractelement <4 x i64> %392, i32 0
  %400 = shl i64 %399, 3
  %401 = add nuw nsw i64 %400, %390
  %402 = getelementptr i8, i8* %call, i64 %401
  %403 = bitcast i8* %402 to <4 x double>*
  store <4 x double> %398, <4 x double>* %403, align 8, !alias.scope !86, !noalias !88
  %index.next977 = add i64 %index976, 4
  %vec.ind.next981 = add <4 x i64> %vec.ind980, <i64 4, i64 4, i64 4, i64 4>
  %404 = icmp eq i64 %index.next977, 16
  br i1 %404, label %polly.loop_exit693.2.1, label %vector.body974, !llvm.loop !110

polly.loop_exit693.2.1:                           ; preds = %vector.body974
  %polly.indvar_next689.2.1 = add nuw nsw i64 %polly.indvar688.2.1, 1
  %exitcond821.2.1.not = icmp eq i64 %polly.indvar_next689.2.1, 32
  br i1 %exitcond821.2.1.not, label %polly.loop_header685.2871, label %polly.loop_header685.2.1

polly.loop_header685.2871:                        ; preds = %polly.loop_exit693.2.1, %polly.loop_exit693.2882
  %polly.indvar688.2870 = phi i64 [ %polly.indvar_next689.2880, %polly.loop_exit693.2882 ], [ 0, %polly.loop_exit693.2.1 ]
  %405 = add nuw nsw i64 %polly.indvar688.2870, 64
  %406 = mul nuw nsw i64 %405, 640
  %407 = trunc i64 %405 to i32
  %broadcast.splatinsert996 = insertelement <4 x i32> poison, i32 %407, i32 0
  %broadcast.splat997 = shufflevector <4 x i32> %broadcast.splatinsert996, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %polly.loop_header685.2871
  %index988 = phi i64 [ 0, %polly.loop_header685.2871 ], [ %index.next989, %vector.body986 ]
  %vec.ind994 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.2871 ], [ %vec.ind.next995, %vector.body986 ]
  %408 = mul <4 x i32> %vec.ind994, %broadcast.splat997
  %409 = add <4 x i32> %408, <i32 3, i32 3, i32 3, i32 3>
  %410 = urem <4 x i32> %409, <i32 80, i32 80, i32 80, i32 80>
  %411 = sitofp <4 x i32> %410 to <4 x double>
  %412 = fmul fast <4 x double> %411, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %413 = shl i64 %index988, 3
  %414 = add nuw nsw i64 %413, %406
  %415 = getelementptr i8, i8* %call, i64 %414
  %416 = bitcast i8* %415 to <4 x double>*
  store <4 x double> %412, <4 x double>* %416, align 8, !alias.scope !86, !noalias !88
  %index.next989 = add i64 %index988, 4
  %vec.ind.next995 = add <4 x i32> %vec.ind994, <i32 4, i32 4, i32 4, i32 4>
  %417 = icmp eq i64 %index.next989, 32
  br i1 %417, label %polly.loop_exit693.2882, label %vector.body986, !llvm.loop !111

polly.loop_exit693.2882:                          ; preds = %vector.body986
  %polly.indvar_next689.2880 = add nuw nsw i64 %polly.indvar688.2870, 1
  %exitcond821.2881.not = icmp eq i64 %polly.indvar_next689.2880, 16
  br i1 %exitcond821.2881.not, label %polly.loop_header685.1.2, label %polly.loop_header685.2871

polly.loop_header685.1.2:                         ; preds = %polly.loop_exit693.2882, %polly.loop_exit693.1.2
  %polly.indvar688.1.2 = phi i64 [ %polly.indvar_next689.1.2, %polly.loop_exit693.1.2 ], [ 0, %polly.loop_exit693.2882 ]
  %418 = add nuw nsw i64 %polly.indvar688.1.2, 64
  %419 = mul nuw nsw i64 %418, 640
  %420 = trunc i64 %418 to i32
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %420, i32 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %polly.loop_header685.1.2
  %index1002 = phi i64 [ 0, %polly.loop_header685.1.2 ], [ %index.next1003, %vector.body1000 ]
  %vec.ind1006 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.2 ], [ %vec.ind.next1007, %vector.body1000 ]
  %421 = add nuw nsw <4 x i64> %vec.ind1006, <i64 32, i64 32, i64 32, i64 32>
  %422 = trunc <4 x i64> %421 to <4 x i32>
  %423 = mul <4 x i32> %broadcast.splat1009, %422
  %424 = add <4 x i32> %423, <i32 3, i32 3, i32 3, i32 3>
  %425 = urem <4 x i32> %424, <i32 80, i32 80, i32 80, i32 80>
  %426 = sitofp <4 x i32> %425 to <4 x double>
  %427 = fmul fast <4 x double> %426, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %428 = extractelement <4 x i64> %421, i32 0
  %429 = shl i64 %428, 3
  %430 = add nuw nsw i64 %429, %419
  %431 = getelementptr i8, i8* %call, i64 %430
  %432 = bitcast i8* %431 to <4 x double>*
  store <4 x double> %427, <4 x double>* %432, align 8, !alias.scope !86, !noalias !88
  %index.next1003 = add i64 %index1002, 4
  %vec.ind.next1007 = add <4 x i64> %vec.ind1006, <i64 4, i64 4, i64 4, i64 4>
  %433 = icmp eq i64 %index.next1003, 32
  br i1 %433, label %polly.loop_exit693.1.2, label %vector.body1000, !llvm.loop !112

polly.loop_exit693.1.2:                           ; preds = %vector.body1000
  %polly.indvar_next689.1.2 = add nuw nsw i64 %polly.indvar688.1.2, 1
  %exitcond821.1.2.not = icmp eq i64 %polly.indvar_next689.1.2, 16
  br i1 %exitcond821.1.2.not, label %polly.loop_header685.2.2, label %polly.loop_header685.1.2

polly.loop_header685.2.2:                         ; preds = %polly.loop_exit693.1.2, %polly.loop_exit693.2.2
  %polly.indvar688.2.2 = phi i64 [ %polly.indvar_next689.2.2, %polly.loop_exit693.2.2 ], [ 0, %polly.loop_exit693.1.2 ]
  %434 = add nuw nsw i64 %polly.indvar688.2.2, 64
  %435 = mul nuw nsw i64 %434, 640
  %436 = trunc i64 %434 to i32
  %broadcast.splatinsert1020 = insertelement <4 x i32> poison, i32 %436, i32 0
  %broadcast.splat1021 = shufflevector <4 x i32> %broadcast.splatinsert1020, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %polly.loop_header685.2.2
  %index1014 = phi i64 [ 0, %polly.loop_header685.2.2 ], [ %index.next1015, %vector.body1012 ]
  %vec.ind1018 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.2 ], [ %vec.ind.next1019, %vector.body1012 ]
  %437 = add nuw nsw <4 x i64> %vec.ind1018, <i64 64, i64 64, i64 64, i64 64>
  %438 = trunc <4 x i64> %437 to <4 x i32>
  %439 = mul <4 x i32> %broadcast.splat1021, %438
  %440 = add <4 x i32> %439, <i32 3, i32 3, i32 3, i32 3>
  %441 = urem <4 x i32> %440, <i32 80, i32 80, i32 80, i32 80>
  %442 = sitofp <4 x i32> %441 to <4 x double>
  %443 = fmul fast <4 x double> %442, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %444 = extractelement <4 x i64> %437, i32 0
  %445 = shl i64 %444, 3
  %446 = add nuw nsw i64 %445, %435
  %447 = getelementptr i8, i8* %call, i64 %446
  %448 = bitcast i8* %447 to <4 x double>*
  store <4 x double> %443, <4 x double>* %448, align 8, !alias.scope !86, !noalias !88
  %index.next1015 = add i64 %index1014, 4
  %vec.ind.next1019 = add <4 x i64> %vec.ind1018, <i64 4, i64 4, i64 4, i64 4>
  %449 = icmp eq i64 %index.next1015, 16
  br i1 %449, label %polly.loop_exit693.2.2, label %vector.body1012, !llvm.loop !113

polly.loop_exit693.2.2:                           ; preds = %vector.body1012
  %polly.indvar_next689.2.2 = add nuw nsw i64 %polly.indvar688.2.2, 1
  %exitcond821.2.2.not = icmp eq i64 %polly.indvar_next689.2.2, 16
  br i1 %exitcond821.2.2.not, label %polly.loop_header712, label %polly.loop_header685.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 8}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !24, !33, !36}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.followup_floor", !34}
!34 = distinct !{!34, !12, !35}
!35 = !{!"llvm.loop.id", !"j1"}
!36 = !{!"llvm.loop.tile.followup_tile", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j2"}
!39 = distinct !{!39, !12, !22, !40, !41, !42, !43, !44, !47}
!40 = !{!"llvm.loop.id", !"i"}
!41 = !{!"llvm.loop.tile.enable", i1 true}
!42 = !{!"llvm.loop.tile.depth", i32 3}
!43 = !{!"llvm.loop.tile.size", i32 80}
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
