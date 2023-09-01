; ModuleID = 'syr2k_recreations//mmp_syr2k_S_44.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_44.c"
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
  br i1 %57, label %middle.block1198, label %vector.body1200, !llvm.loop !51

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

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
  br i1 %68, label %middle.block1224, label %vector.body1226, !llvm.loop !53

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

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
  %wide.load1249 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1249, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1246 = add i64 %index1245, 4
  %95 = icmp eq i64 %index.next1246, %n.vec1244
  br i1 %95, label %middle.block1236, label %vector.body1238, !llvm.loop !64

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
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond770.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond770.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.4
  %indvars.iv761 = phi i64 [ %indvars.iv.next762, %polly.loop_exit213.4 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit213.4 ], [ 0, %polly.loop_exit193 ]
  %smin763 = call i64 @llvm.smin.i64(i64 %indvars.iv761, i64 -52)
  %97 = add nsw i64 %smin763, 60
  %98 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 15)
  %99 = mul nuw nsw i64 %polly.indvar214, 480
  %scevgep232 = getelementptr i8, i8* %call2, i64 %99
  %scevgep239 = getelementptr i8, i8* %call1, i64 %99
  %100 = mul nuw nsw i64 %polly.indvar214, 640
  %scevgep243 = getelementptr i8, i8* %call, i64 %100
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond767.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond767.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %101 = add nuw nsw i64 %polly.indvar220, %98
  %102 = shl i64 %101, 3
  %scevgep233 = getelementptr i8, i8* %scevgep232, i64 %102
  %scevgep233234 = bitcast i8* %scevgep233 to double*
  %_p_scalar_235 = load double, double* %scevgep233234, align 8, !alias.scope !63, !noalias !67
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %102
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond764.not = icmp eq i64 %polly.indvar_next221, %97
  br i1 %exitcond764.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %103 = mul nuw nsw i64 %polly.indvar226, 480
  %104 = add nuw nsw i64 %103, %102
  %scevgep229 = getelementptr i8, i8* %call1, i64 %104
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112 = fmul fast double %_p_scalar_235, %_p_scalar_231
  %scevgep236 = getelementptr i8, i8* %call2, i64 %104
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114 = fmul fast double %_p_scalar_242, %_p_scalar_238
  %105 = shl i64 %polly.indvar226, 3
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %105
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
  %indvar1213 = phi i64 [ %indvar.next1214, %polly.loop_exit341 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar336 = phi i64 [ %polly.indvar_next337, %polly.loop_exit341 ], [ 1, %kernel_syr2k.exit ]
  %106 = add i64 %indvar1213, 1
  %107 = mul nuw nsw i64 %polly.indvar336, 640
  %scevgep345 = getelementptr i8, i8* %call, i64 %107
  %min.iters.check1215 = icmp ult i64 %106, 4
  br i1 %min.iters.check1215, label %polly.loop_header339.preheader, label %vector.ph1216

vector.ph1216:                                    ; preds = %polly.loop_header333
  %n.vec1218 = and i64 %106, -4
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1220, %vector.body1212 ]
  %108 = shl nuw nsw i64 %index1219, 3
  %109 = getelementptr i8, i8* %scevgep345, i64 %108
  %110 = bitcast i8* %109 to <4 x double>*
  %wide.load1223 = load <4 x double>, <4 x double>* %110, align 8, !alias.scope !69, !noalias !71
  %111 = fmul fast <4 x double> %wide.load1223, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %112 = bitcast i8* %109 to <4 x double>*
  store <4 x double> %111, <4 x double>* %112, align 8, !alias.scope !69, !noalias !71
  %index.next1220 = add i64 %index1219, 4
  %113 = icmp eq i64 %index.next1220, %n.vec1218
  br i1 %113, label %middle.block1210, label %vector.body1212, !llvm.loop !74

middle.block1210:                                 ; preds = %vector.body1212
  %cmp.n1222 = icmp eq i64 %106, %n.vec1218
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
  %114 = shl nuw nsw i64 %polly.indvar342, 3
  %scevgep346 = getelementptr i8, i8* %scevgep345, i64 %114
  %scevgep346347 = bitcast i8* %scevgep346 to double*
  %_p_scalar_348 = load double, double* %scevgep346347, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_348, 1.200000e+00
  store double %p_mul.i57, double* %scevgep346347, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next343 = add nuw nsw i64 %polly.indvar342, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next343, %polly.indvar336
  br i1 %exitcond785.not, label %polly.loop_exit341, label %polly.loop_header339, !llvm.loop !75

polly.loop_header349:                             ; preds = %polly.loop_exit341, %polly.loop_exit363.4
  %indvars.iv776 = phi i64 [ %indvars.iv.next777, %polly.loop_exit363.4 ], [ 0, %polly.loop_exit341 ]
  %polly.indvar352 = phi i64 [ %polly.indvar_next353, %polly.loop_exit363.4 ], [ 0, %polly.loop_exit341 ]
  %smin778 = call i64 @llvm.smin.i64(i64 %indvars.iv776, i64 -52)
  %115 = add nsw i64 %smin778, 60
  %116 = shl nsw i64 %polly.indvar352, 3
  br label %polly.loop_header361

polly.loop_header361:                             ; preds = %polly.loop_exit369, %polly.loop_header349
  %indvars.iv772 = phi i64 [ %indvars.iv.next773, %polly.loop_exit369 ], [ 0, %polly.loop_header349 ]
  %polly.indvar364 = phi i64 [ %polly.indvar_next365, %polly.loop_exit369 ], [ 0, %polly.loop_header349 ]
  %smin774 = call i64 @llvm.smin.i64(i64 %indvars.iv772, i64 15)
  %117 = mul nuw nsw i64 %polly.indvar364, 480
  %scevgep382 = getelementptr i8, i8* %call2, i64 %117
  %scevgep389 = getelementptr i8, i8* %call1, i64 %117
  %118 = mul nuw nsw i64 %polly.indvar364, 640
  %scevgep393 = getelementptr i8, i8* %call, i64 %118
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit375
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 1
  %exitcond782.not = icmp eq i64 %indvars.iv.next773, 80
  br i1 %exitcond782.not, label %polly.loop_header361.1, label %polly.loop_header361

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.loop_header361
  %polly.indvar370 = phi i64 [ 0, %polly.loop_header361 ], [ %polly.indvar_next371, %polly.loop_exit375 ]
  %119 = add nuw nsw i64 %polly.indvar370, %116
  %120 = shl i64 %119, 3
  %scevgep383 = getelementptr i8, i8* %scevgep382, i64 %120
  %scevgep383384 = bitcast i8* %scevgep383 to double*
  %_p_scalar_385 = load double, double* %scevgep383384, align 8, !alias.scope !73, !noalias !76
  %scevgep390 = getelementptr i8, i8* %scevgep389, i64 %120
  %scevgep390391 = bitcast i8* %scevgep390 to double*
  %_p_scalar_392 = load double, double* %scevgep390391, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next371, %115
  br i1 %exitcond779.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header373:                             ; preds = %polly.loop_header373, %polly.loop_header367
  %polly.indvar376 = phi i64 [ 0, %polly.loop_header367 ], [ %polly.indvar_next377, %polly.loop_header373 ]
  %121 = mul nuw nsw i64 %polly.indvar376, 480
  %122 = add nuw nsw i64 %121, %120
  %scevgep379 = getelementptr i8, i8* %call1, i64 %122
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73 = fmul fast double %_p_scalar_385, %_p_scalar_381
  %scevgep386 = getelementptr i8, i8* %call2, i64 %122
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75 = fmul fast double %_p_scalar_392, %_p_scalar_388
  %123 = shl i64 %polly.indvar376, 3
  %scevgep394 = getelementptr i8, i8* %scevgep393, i64 %123
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_396
  store double %p_add42.i79, double* %scevgep394395, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond775.not = icmp eq i64 %polly.indvar376, %smin774
  br i1 %exitcond775.not, label %polly.loop_exit375, label %polly.loop_header373

polly.loop_header483:                             ; preds = %init_array.exit, %polly.loop_exit491
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit491 ], [ 0, %init_array.exit ]
  %polly.indvar486 = phi i64 [ %polly.indvar_next487, %polly.loop_exit491 ], [ 1, %init_array.exit ]
  %124 = add i64 %indvar, 1
  %125 = mul nuw nsw i64 %polly.indvar486, 640
  %scevgep495 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1189 = icmp ult i64 %124, 4
  br i1 %min.iters.check1189, label %polly.loop_header489.preheader, label %vector.ph1190

vector.ph1190:                                    ; preds = %polly.loop_header483
  %n.vec1192 = and i64 %124, -4
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1190
  %index1193 = phi i64 [ 0, %vector.ph1190 ], [ %index.next1194, %vector.body1188 ]
  %126 = shl nuw nsw i64 %index1193, 3
  %127 = getelementptr i8, i8* %scevgep495, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1197 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !78, !noalias !80
  %129 = fmul fast <4 x double> %wide.load1197, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !78, !noalias !80
  %index.next1194 = add i64 %index1193, 4
  %131 = icmp eq i64 %index.next1194, %n.vec1192
  br i1 %131, label %middle.block1186, label %vector.body1188, !llvm.loop !83

middle.block1186:                                 ; preds = %vector.body1188
  %cmp.n1196 = icmp eq i64 %124, %n.vec1192
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
  %132 = shl nuw nsw i64 %polly.indvar492, 3
  %scevgep496 = getelementptr i8, i8* %scevgep495, i64 %132
  %scevgep496497 = bitcast i8* %scevgep496 to double*
  %_p_scalar_498 = load double, double* %scevgep496497, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_498, 1.200000e+00
  store double %p_mul.i, double* %scevgep496497, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next493, %polly.indvar486
  br i1 %exitcond800.not, label %polly.loop_exit491, label %polly.loop_header489, !llvm.loop !84

polly.loop_header499:                             ; preds = %polly.loop_exit491, %polly.loop_exit513.4
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %polly.loop_exit513.4 ], [ 0, %polly.loop_exit491 ]
  %polly.indvar502 = phi i64 [ %polly.indvar_next503, %polly.loop_exit513.4 ], [ 0, %polly.loop_exit491 ]
  %smin793 = call i64 @llvm.smin.i64(i64 %indvars.iv791, i64 -52)
  %133 = add nsw i64 %smin793, 60
  %134 = shl nsw i64 %polly.indvar502, 3
  br label %polly.loop_header511

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.loop_header499
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit519 ], [ 0, %polly.loop_header499 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 0, %polly.loop_header499 ]
  %smin789 = call i64 @llvm.smin.i64(i64 %indvars.iv787, i64 15)
  %135 = mul nuw nsw i64 %polly.indvar514, 480
  %scevgep532 = getelementptr i8, i8* %call2, i64 %135
  %scevgep539 = getelementptr i8, i8* %call1, i64 %135
  %136 = mul nuw nsw i64 %polly.indvar514, 640
  %scevgep543 = getelementptr i8, i8* %call, i64 %136
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1
  %exitcond797.not = icmp eq i64 %indvars.iv.next788, 80
  br i1 %exitcond797.not, label %polly.loop_header511.1, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %polly.indvar520 = phi i64 [ 0, %polly.loop_header511 ], [ %polly.indvar_next521, %polly.loop_exit525 ]
  %137 = add nuw nsw i64 %polly.indvar520, %134
  %138 = shl i64 %137, 3
  %scevgep533 = getelementptr i8, i8* %scevgep532, i64 %138
  %scevgep533534 = bitcast i8* %scevgep533 to double*
  %_p_scalar_535 = load double, double* %scevgep533534, align 8, !alias.scope !82, !noalias !85
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %138
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next521, %133
  br i1 %exitcond794.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_header523, %polly.loop_header517
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header517 ], [ %polly.indvar_next527, %polly.loop_header523 ]
  %139 = mul nuw nsw i64 %polly.indvar526, 480
  %140 = add nuw nsw i64 %139, %138
  %scevgep529 = getelementptr i8, i8* %call1, i64 %140
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i = fmul fast double %_p_scalar_535, %_p_scalar_531
  %scevgep536 = getelementptr i8, i8* %call2, i64 %140
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i = fmul fast double %_p_scalar_542, %_p_scalar_538
  %141 = shl i64 %polly.indvar526, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %141
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_546
  store double %p_add42.i, double* %scevgep544545, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond790.not = icmp eq i64 %polly.indvar526, %smin789
  br i1 %exitcond790.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header685:                             ; preds = %entry, %polly.loop_exit693
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_exit693 ], [ 0, %entry ]
  %142 = mul nuw nsw i64 %polly.indvar688, 640
  %143 = trunc i64 %polly.indvar688 to i32
  %broadcast.splatinsert920 = insertelement <4 x i32> poison, i32 %143, i32 0
  %broadcast.splat921 = shufflevector <4 x i32> %broadcast.splatinsert920, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body910

vector.body910:                                   ; preds = %vector.body910, %polly.loop_header685
  %index912 = phi i64 [ 0, %polly.loop_header685 ], [ %index.next913, %vector.body910 ]
  %vec.ind918 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685 ], [ %vec.ind.next919, %vector.body910 ]
  %144 = mul <4 x i32> %vec.ind918, %broadcast.splat921
  %145 = add <4 x i32> %144, <i32 3, i32 3, i32 3, i32 3>
  %146 = urem <4 x i32> %145, <i32 80, i32 80, i32 80, i32 80>
  %147 = sitofp <4 x i32> %146 to <4 x double>
  %148 = fmul fast <4 x double> %147, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %149 = shl i64 %index912, 3
  %150 = add nuw nsw i64 %149, %142
  %151 = getelementptr i8, i8* %call, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %148, <4 x double>* %152, align 8, !alias.scope !87, !noalias !89
  %index.next913 = add i64 %index912, 4
  %vec.ind.next919 = add <4 x i32> %vec.ind918, <i32 4, i32 4, i32 4, i32 4>
  %153 = icmp eq i64 %index.next913, 32
  br i1 %153, label %polly.loop_exit693, label %vector.body910, !llvm.loop !92

polly.loop_exit693:                               ; preds = %vector.body910
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next689, 32
  br i1 %exitcond821.not, label %polly.loop_header685.1, label %polly.loop_header685

polly.loop_header712:                             ; preds = %polly.loop_exit693.2.2, %polly.loop_exit720
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_exit720 ], [ 0, %polly.loop_exit693.2.2 ]
  %154 = mul nuw nsw i64 %polly.indvar715, 480
  %155 = trunc i64 %polly.indvar715 to i32
  %broadcast.splatinsert1034 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat1035 = shufflevector <4 x i32> %broadcast.splatinsert1034, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %polly.loop_header712
  %index1026 = phi i64 [ 0, %polly.loop_header712 ], [ %index.next1027, %vector.body1024 ]
  %vec.ind1032 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712 ], [ %vec.ind.next1033, %vector.body1024 ]
  %156 = mul <4 x i32> %vec.ind1032, %broadcast.splat1035
  %157 = add <4 x i32> %156, <i32 2, i32 2, i32 2, i32 2>
  %158 = urem <4 x i32> %157, <i32 60, i32 60, i32 60, i32 60>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %161 = shl i64 %index1026, 3
  %162 = add i64 %161, %154
  %163 = getelementptr i8, i8* %call2, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !91, !noalias !93
  %index.next1027 = add i64 %index1026, 4
  %vec.ind.next1033 = add <4 x i32> %vec.ind1032, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next1027, 32
  br i1 %165, label %polly.loop_exit720, label %vector.body1024, !llvm.loop !94

polly.loop_exit720:                               ; preds = %vector.body1024
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next716, 32
  br i1 %exitcond812.not, label %polly.loop_header712.1, label %polly.loop_header712

polly.loop_header738:                             ; preds = %polly.loop_exit720.1.2, %polly.loop_exit746
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %polly.loop_exit720.1.2 ]
  %166 = mul nuw nsw i64 %polly.indvar741, 480
  %167 = trunc i64 %polly.indvar741 to i32
  %broadcast.splatinsert1112 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1113 = shufflevector <4 x i32> %broadcast.splatinsert1112, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %polly.loop_header738
  %index1104 = phi i64 [ 0, %polly.loop_header738 ], [ %index.next1105, %vector.body1102 ]
  %vec.ind1110 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738 ], [ %vec.ind.next1111, %vector.body1102 ]
  %168 = mul <4 x i32> %vec.ind1110, %broadcast.splat1113
  %169 = add <4 x i32> %168, <i32 1, i32 1, i32 1, i32 1>
  %170 = urem <4 x i32> %169, <i32 80, i32 80, i32 80, i32 80>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %173 = shl i64 %index1104, 3
  %174 = add i64 %173, %166
  %175 = getelementptr i8, i8* %call1, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !90, !noalias !95
  %index.next1105 = add i64 %index1104, 4
  %vec.ind.next1111 = add <4 x i32> %vec.ind1110, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next1105, 32
  br i1 %177, label %polly.loop_exit746, label %vector.body1102, !llvm.loop !96

polly.loop_exit746:                               ; preds = %vector.body1102
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %exitcond806.not = icmp eq i64 %polly.indvar_next742, 32
  br i1 %exitcond806.not, label %polly.loop_header738.1, label %polly.loop_header738

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 16, %polly.loop_exit219 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 15)
  %178 = mul nuw nsw i64 %polly.indvar214.1, 480
  %scevgep232.1 = getelementptr i8, i8* %call2, i64 %178
  %scevgep239.1 = getelementptr i8, i8* %call1, i64 %178
  %179 = mul nuw nsw i64 %polly.indvar214.1, 640
  %scevgep243.1 = getelementptr i8, i8* %call, i64 %179
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_exit225.1 ]
  %180 = add nuw nsw i64 %polly.indvar220.1, %98
  %181 = shl i64 %180, 3
  %scevgep233.1 = getelementptr i8, i8* %scevgep232.1, i64 %181
  %scevgep233234.1 = bitcast i8* %scevgep233.1 to double*
  %_p_scalar_235.1 = load double, double* %scevgep233234.1, align 8, !alias.scope !63, !noalias !67
  %scevgep240.1 = getelementptr i8, i8* %scevgep239.1, i64 %181
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %182 = add nuw nsw i64 %polly.indvar226.1, 16
  %183 = mul nuw nsw i64 %182, 480
  %184 = add nuw nsw i64 %183, %181
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %184
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1 = fmul fast double %_p_scalar_235.1, %_p_scalar_231.1
  %scevgep236.1 = getelementptr i8, i8* %call2, i64 %184
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %_p_scalar_238.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1 = fmul fast double %_p_scalar_242.1, %_p_scalar_238.1
  %185 = shl i64 %182, 3
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %185
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
  %exitcond764.1.not = icmp eq i64 %polly.indvar_next221.1, %97
  br i1 %exitcond764.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond767.1.not = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond767.1.not, label %polly.loop_header211.2, label %polly.loop_header211.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit219.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit219.1 ]
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 32, %polly.loop_exit219.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.2, i64 15)
  %186 = mul nuw nsw i64 %polly.indvar214.2, 480
  %scevgep232.2 = getelementptr i8, i8* %call2, i64 %186
  %scevgep239.2 = getelementptr i8, i8* %call1, i64 %186
  %187 = mul nuw nsw i64 %polly.indvar214.2, 640
  %scevgep243.2 = getelementptr i8, i8* %call, i64 %187
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_exit225.2 ]
  %188 = add nuw nsw i64 %polly.indvar220.2, %98
  %189 = shl i64 %188, 3
  %scevgep233.2 = getelementptr i8, i8* %scevgep232.2, i64 %189
  %scevgep233234.2 = bitcast i8* %scevgep233.2 to double*
  %_p_scalar_235.2 = load double, double* %scevgep233234.2, align 8, !alias.scope !63, !noalias !67
  %scevgep240.2 = getelementptr i8, i8* %scevgep239.2, i64 %189
  %scevgep240241.2 = bitcast i8* %scevgep240.2 to double*
  %_p_scalar_242.2 = load double, double* %scevgep240241.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_header217.2
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_header217.2 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %190 = add nuw nsw i64 %polly.indvar226.2, 32
  %191 = mul nuw nsw i64 %190, 480
  %192 = add nuw nsw i64 %191, %189
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %192
  %scevgep229230.2 = bitcast i8* %scevgep229.2 to double*
  %_p_scalar_231.2 = load double, double* %scevgep229230.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.2 = fmul fast double %_p_scalar_235.2, %_p_scalar_231.2
  %scevgep236.2 = getelementptr i8, i8* %call2, i64 %192
  %scevgep236237.2 = bitcast i8* %scevgep236.2 to double*
  %_p_scalar_238.2 = load double, double* %scevgep236237.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.2 = fmul fast double %_p_scalar_242.2, %_p_scalar_238.2
  %193 = shl i64 %190, 3
  %scevgep244.2 = getelementptr i8, i8* %scevgep243.2, i64 %193
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
  %exitcond764.2.not = icmp eq i64 %polly.indvar_next221.2, %97
  br i1 %exitcond764.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond767.2.not = icmp eq i64 %indvars.iv.next.2, 48
  br i1 %exitcond767.2.not, label %polly.loop_header211.3, label %polly.loop_header211.2

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.2, %polly.loop_exit219.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit219.3 ], [ 0, %polly.loop_exit219.2 ]
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit219.3 ], [ 48, %polly.loop_exit219.2 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.3, i64 15)
  %194 = mul nuw nsw i64 %polly.indvar214.3, 480
  %scevgep232.3 = getelementptr i8, i8* %call2, i64 %194
  %scevgep239.3 = getelementptr i8, i8* %call1, i64 %194
  %195 = mul nuw nsw i64 %polly.indvar214.3, 640
  %scevgep243.3 = getelementptr i8, i8* %call, i64 %195
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_exit225.3, %polly.loop_header211.3
  %polly.indvar220.3 = phi i64 [ 0, %polly.loop_header211.3 ], [ %polly.indvar_next221.3, %polly.loop_exit225.3 ]
  %196 = add nuw nsw i64 %polly.indvar220.3, %98
  %197 = shl i64 %196, 3
  %scevgep233.3 = getelementptr i8, i8* %scevgep232.3, i64 %197
  %scevgep233234.3 = bitcast i8* %scevgep233.3 to double*
  %_p_scalar_235.3 = load double, double* %scevgep233234.3, align 8, !alias.scope !63, !noalias !67
  %scevgep240.3 = getelementptr i8, i8* %scevgep239.3, i64 %197
  %scevgep240241.3 = bitcast i8* %scevgep240.3 to double*
  %_p_scalar_242.3 = load double, double* %scevgep240241.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_header217.3
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_header217.3 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %198 = add nuw nsw i64 %polly.indvar226.3, 48
  %199 = mul nuw nsw i64 %198, 480
  %200 = add nuw nsw i64 %199, %197
  %scevgep229.3 = getelementptr i8, i8* %call1, i64 %200
  %scevgep229230.3 = bitcast i8* %scevgep229.3 to double*
  %_p_scalar_231.3 = load double, double* %scevgep229230.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.3 = fmul fast double %_p_scalar_235.3, %_p_scalar_231.3
  %scevgep236.3 = getelementptr i8, i8* %call2, i64 %200
  %scevgep236237.3 = bitcast i8* %scevgep236.3 to double*
  %_p_scalar_238.3 = load double, double* %scevgep236237.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.3 = fmul fast double %_p_scalar_242.3, %_p_scalar_238.3
  %201 = shl i64 %198, 3
  %scevgep244.3 = getelementptr i8, i8* %scevgep243.3, i64 %201
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
  %exitcond764.3.not = icmp eq i64 %polly.indvar_next221.3, %97
  br i1 %exitcond764.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond767.3.not = icmp eq i64 %indvars.iv.next.3, 32
  br i1 %exitcond767.3.not, label %polly.loop_header211.4, label %polly.loop_header211.3

polly.loop_header211.4:                           ; preds = %polly.loop_exit219.3, %polly.loop_exit219.4
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4, %polly.loop_exit219.4 ], [ 0, %polly.loop_exit219.3 ]
  %polly.indvar214.4 = phi i64 [ %polly.indvar_next215.4, %polly.loop_exit219.4 ], [ 64, %polly.loop_exit219.3 ]
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.4, i64 15)
  %202 = mul nuw nsw i64 %polly.indvar214.4, 480
  %scevgep232.4 = getelementptr i8, i8* %call2, i64 %202
  %scevgep239.4 = getelementptr i8, i8* %call1, i64 %202
  %203 = mul nuw nsw i64 %polly.indvar214.4, 640
  %scevgep243.4 = getelementptr i8, i8* %call, i64 %203
  br label %polly.loop_header217.4

polly.loop_header217.4:                           ; preds = %polly.loop_exit225.4, %polly.loop_header211.4
  %polly.indvar220.4 = phi i64 [ 0, %polly.loop_header211.4 ], [ %polly.indvar_next221.4, %polly.loop_exit225.4 ]
  %204 = add nuw nsw i64 %polly.indvar220.4, %98
  %205 = shl i64 %204, 3
  %scevgep233.4 = getelementptr i8, i8* %scevgep232.4, i64 %205
  %scevgep233234.4 = bitcast i8* %scevgep233.4 to double*
  %_p_scalar_235.4 = load double, double* %scevgep233234.4, align 8, !alias.scope !63, !noalias !67
  %scevgep240.4 = getelementptr i8, i8* %scevgep239.4, i64 %205
  %scevgep240241.4 = bitcast i8* %scevgep240.4 to double*
  %_p_scalar_242.4 = load double, double* %scevgep240241.4, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.4

polly.loop_header223.4:                           ; preds = %polly.loop_header223.4, %polly.loop_header217.4
  %polly.indvar226.4 = phi i64 [ 0, %polly.loop_header217.4 ], [ %polly.indvar_next227.4, %polly.loop_header223.4 ]
  %206 = add nuw nsw i64 %polly.indvar226.4, 64
  %207 = mul nuw nsw i64 %206, 480
  %208 = add nuw nsw i64 %207, %205
  %scevgep229.4 = getelementptr i8, i8* %call1, i64 %208
  %scevgep229230.4 = bitcast i8* %scevgep229.4 to double*
  %_p_scalar_231.4 = load double, double* %scevgep229230.4, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.4 = fmul fast double %_p_scalar_235.4, %_p_scalar_231.4
  %scevgep236.4 = getelementptr i8, i8* %call2, i64 %208
  %scevgep236237.4 = bitcast i8* %scevgep236.4 to double*
  %_p_scalar_238.4 = load double, double* %scevgep236237.4, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.4 = fmul fast double %_p_scalar_242.4, %_p_scalar_238.4
  %209 = shl i64 %206, 3
  %scevgep244.4 = getelementptr i8, i8* %scevgep243.4, i64 %209
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
  %exitcond764.4.not = icmp eq i64 %polly.indvar_next221.4, %97
  br i1 %exitcond764.4.not, label %polly.loop_exit219.4, label %polly.loop_header217.4

polly.loop_exit219.4:                             ; preds = %polly.loop_exit225.4
  %polly.indvar_next215.4 = add nuw nsw i64 %polly.indvar214.4, 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond767.4.not = icmp eq i64 %indvars.iv.next.4, 16
  br i1 %exitcond767.4.not, label %polly.loop_exit213.4, label %polly.loop_header211.4

polly.loop_exit213.4:                             ; preds = %polly.loop_exit219.4
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next762 = add nsw i64 %indvars.iv761, -8
  %exitcond769.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond769.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header361.1:                           ; preds = %polly.loop_exit369, %polly.loop_exit369.1
  %indvars.iv772.1 = phi i64 [ %indvars.iv.next773.1, %polly.loop_exit369.1 ], [ 0, %polly.loop_exit369 ]
  %polly.indvar364.1 = phi i64 [ %polly.indvar_next365.1, %polly.loop_exit369.1 ], [ 16, %polly.loop_exit369 ]
  %smin774.1 = call i64 @llvm.smin.i64(i64 %indvars.iv772.1, i64 15)
  %210 = mul nuw nsw i64 %polly.indvar364.1, 480
  %scevgep382.1 = getelementptr i8, i8* %call2, i64 %210
  %scevgep389.1 = getelementptr i8, i8* %call1, i64 %210
  %211 = mul nuw nsw i64 %polly.indvar364.1, 640
  %scevgep393.1 = getelementptr i8, i8* %call, i64 %211
  br label %polly.loop_header367.1

polly.loop_header367.1:                           ; preds = %polly.loop_exit375.1, %polly.loop_header361.1
  %polly.indvar370.1 = phi i64 [ 0, %polly.loop_header361.1 ], [ %polly.indvar_next371.1, %polly.loop_exit375.1 ]
  %212 = add nuw nsw i64 %polly.indvar370.1, %116
  %213 = shl i64 %212, 3
  %scevgep383.1 = getelementptr i8, i8* %scevgep382.1, i64 %213
  %scevgep383384.1 = bitcast i8* %scevgep383.1 to double*
  %_p_scalar_385.1 = load double, double* %scevgep383384.1, align 8, !alias.scope !73, !noalias !76
  %scevgep390.1 = getelementptr i8, i8* %scevgep389.1, i64 %213
  %scevgep390391.1 = bitcast i8* %scevgep390.1 to double*
  %_p_scalar_392.1 = load double, double* %scevgep390391.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373.1

polly.loop_header373.1:                           ; preds = %polly.loop_header373.1, %polly.loop_header367.1
  %polly.indvar376.1 = phi i64 [ 0, %polly.loop_header367.1 ], [ %polly.indvar_next377.1, %polly.loop_header373.1 ]
  %214 = add nuw nsw i64 %polly.indvar376.1, 16
  %215 = mul nuw nsw i64 %214, 480
  %216 = add nuw nsw i64 %215, %213
  %scevgep379.1 = getelementptr i8, i8* %call1, i64 %216
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1 = fmul fast double %_p_scalar_385.1, %_p_scalar_381.1
  %scevgep386.1 = getelementptr i8, i8* %call2, i64 %216
  %scevgep386387.1 = bitcast i8* %scevgep386.1 to double*
  %_p_scalar_388.1 = load double, double* %scevgep386387.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1 = fmul fast double %_p_scalar_392.1, %_p_scalar_388.1
  %217 = shl i64 %214, 3
  %scevgep394.1 = getelementptr i8, i8* %scevgep393.1, i64 %217
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_396.1
  store double %p_add42.i79.1, double* %scevgep394395.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377.1 = add nuw nsw i64 %polly.indvar376.1, 1
  %exitcond775.1.not = icmp eq i64 %polly.indvar376.1, %smin774.1
  br i1 %exitcond775.1.not, label %polly.loop_exit375.1, label %polly.loop_header373.1

polly.loop_exit375.1:                             ; preds = %polly.loop_header373.1
  %polly.indvar_next371.1 = add nuw nsw i64 %polly.indvar370.1, 1
  %exitcond779.1.not = icmp eq i64 %polly.indvar_next371.1, %115
  br i1 %exitcond779.1.not, label %polly.loop_exit369.1, label %polly.loop_header367.1

polly.loop_exit369.1:                             ; preds = %polly.loop_exit375.1
  %polly.indvar_next365.1 = add nuw nsw i64 %polly.indvar364.1, 1
  %indvars.iv.next773.1 = add nuw nsw i64 %indvars.iv772.1, 1
  %exitcond782.1.not = icmp eq i64 %indvars.iv.next773.1, 64
  br i1 %exitcond782.1.not, label %polly.loop_header361.2, label %polly.loop_header361.1

polly.loop_header361.2:                           ; preds = %polly.loop_exit369.1, %polly.loop_exit369.2
  %indvars.iv772.2 = phi i64 [ %indvars.iv.next773.2, %polly.loop_exit369.2 ], [ 0, %polly.loop_exit369.1 ]
  %polly.indvar364.2 = phi i64 [ %polly.indvar_next365.2, %polly.loop_exit369.2 ], [ 32, %polly.loop_exit369.1 ]
  %smin774.2 = call i64 @llvm.smin.i64(i64 %indvars.iv772.2, i64 15)
  %218 = mul nuw nsw i64 %polly.indvar364.2, 480
  %scevgep382.2 = getelementptr i8, i8* %call2, i64 %218
  %scevgep389.2 = getelementptr i8, i8* %call1, i64 %218
  %219 = mul nuw nsw i64 %polly.indvar364.2, 640
  %scevgep393.2 = getelementptr i8, i8* %call, i64 %219
  br label %polly.loop_header367.2

polly.loop_header367.2:                           ; preds = %polly.loop_exit375.2, %polly.loop_header361.2
  %polly.indvar370.2 = phi i64 [ 0, %polly.loop_header361.2 ], [ %polly.indvar_next371.2, %polly.loop_exit375.2 ]
  %220 = add nuw nsw i64 %polly.indvar370.2, %116
  %221 = shl i64 %220, 3
  %scevgep383.2 = getelementptr i8, i8* %scevgep382.2, i64 %221
  %scevgep383384.2 = bitcast i8* %scevgep383.2 to double*
  %_p_scalar_385.2 = load double, double* %scevgep383384.2, align 8, !alias.scope !73, !noalias !76
  %scevgep390.2 = getelementptr i8, i8* %scevgep389.2, i64 %221
  %scevgep390391.2 = bitcast i8* %scevgep390.2 to double*
  %_p_scalar_392.2 = load double, double* %scevgep390391.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373.2

polly.loop_header373.2:                           ; preds = %polly.loop_header373.2, %polly.loop_header367.2
  %polly.indvar376.2 = phi i64 [ 0, %polly.loop_header367.2 ], [ %polly.indvar_next377.2, %polly.loop_header373.2 ]
  %222 = add nuw nsw i64 %polly.indvar376.2, 32
  %223 = mul nuw nsw i64 %222, 480
  %224 = add nuw nsw i64 %223, %221
  %scevgep379.2 = getelementptr i8, i8* %call1, i64 %224
  %scevgep379380.2 = bitcast i8* %scevgep379.2 to double*
  %_p_scalar_381.2 = load double, double* %scevgep379380.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.2 = fmul fast double %_p_scalar_385.2, %_p_scalar_381.2
  %scevgep386.2 = getelementptr i8, i8* %call2, i64 %224
  %scevgep386387.2 = bitcast i8* %scevgep386.2 to double*
  %_p_scalar_388.2 = load double, double* %scevgep386387.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.2 = fmul fast double %_p_scalar_392.2, %_p_scalar_388.2
  %225 = shl i64 %222, 3
  %scevgep394.2 = getelementptr i8, i8* %scevgep393.2, i64 %225
  %scevgep394395.2 = bitcast i8* %scevgep394.2 to double*
  %_p_scalar_396.2 = load double, double* %scevgep394395.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_396.2
  store double %p_add42.i79.2, double* %scevgep394395.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377.2 = add nuw nsw i64 %polly.indvar376.2, 1
  %exitcond775.2.not = icmp eq i64 %polly.indvar376.2, %smin774.2
  br i1 %exitcond775.2.not, label %polly.loop_exit375.2, label %polly.loop_header373.2

polly.loop_exit375.2:                             ; preds = %polly.loop_header373.2
  %polly.indvar_next371.2 = add nuw nsw i64 %polly.indvar370.2, 1
  %exitcond779.2.not = icmp eq i64 %polly.indvar_next371.2, %115
  br i1 %exitcond779.2.not, label %polly.loop_exit369.2, label %polly.loop_header367.2

polly.loop_exit369.2:                             ; preds = %polly.loop_exit375.2
  %polly.indvar_next365.2 = add nuw nsw i64 %polly.indvar364.2, 1
  %indvars.iv.next773.2 = add nuw nsw i64 %indvars.iv772.2, 1
  %exitcond782.2.not = icmp eq i64 %indvars.iv.next773.2, 48
  br i1 %exitcond782.2.not, label %polly.loop_header361.3, label %polly.loop_header361.2

polly.loop_header361.3:                           ; preds = %polly.loop_exit369.2, %polly.loop_exit369.3
  %indvars.iv772.3 = phi i64 [ %indvars.iv.next773.3, %polly.loop_exit369.3 ], [ 0, %polly.loop_exit369.2 ]
  %polly.indvar364.3 = phi i64 [ %polly.indvar_next365.3, %polly.loop_exit369.3 ], [ 48, %polly.loop_exit369.2 ]
  %smin774.3 = call i64 @llvm.smin.i64(i64 %indvars.iv772.3, i64 15)
  %226 = mul nuw nsw i64 %polly.indvar364.3, 480
  %scevgep382.3 = getelementptr i8, i8* %call2, i64 %226
  %scevgep389.3 = getelementptr i8, i8* %call1, i64 %226
  %227 = mul nuw nsw i64 %polly.indvar364.3, 640
  %scevgep393.3 = getelementptr i8, i8* %call, i64 %227
  br label %polly.loop_header367.3

polly.loop_header367.3:                           ; preds = %polly.loop_exit375.3, %polly.loop_header361.3
  %polly.indvar370.3 = phi i64 [ 0, %polly.loop_header361.3 ], [ %polly.indvar_next371.3, %polly.loop_exit375.3 ]
  %228 = add nuw nsw i64 %polly.indvar370.3, %116
  %229 = shl i64 %228, 3
  %scevgep383.3 = getelementptr i8, i8* %scevgep382.3, i64 %229
  %scevgep383384.3 = bitcast i8* %scevgep383.3 to double*
  %_p_scalar_385.3 = load double, double* %scevgep383384.3, align 8, !alias.scope !73, !noalias !76
  %scevgep390.3 = getelementptr i8, i8* %scevgep389.3, i64 %229
  %scevgep390391.3 = bitcast i8* %scevgep390.3 to double*
  %_p_scalar_392.3 = load double, double* %scevgep390391.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373.3

polly.loop_header373.3:                           ; preds = %polly.loop_header373.3, %polly.loop_header367.3
  %polly.indvar376.3 = phi i64 [ 0, %polly.loop_header367.3 ], [ %polly.indvar_next377.3, %polly.loop_header373.3 ]
  %230 = add nuw nsw i64 %polly.indvar376.3, 48
  %231 = mul nuw nsw i64 %230, 480
  %232 = add nuw nsw i64 %231, %229
  %scevgep379.3 = getelementptr i8, i8* %call1, i64 %232
  %scevgep379380.3 = bitcast i8* %scevgep379.3 to double*
  %_p_scalar_381.3 = load double, double* %scevgep379380.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.3 = fmul fast double %_p_scalar_385.3, %_p_scalar_381.3
  %scevgep386.3 = getelementptr i8, i8* %call2, i64 %232
  %scevgep386387.3 = bitcast i8* %scevgep386.3 to double*
  %_p_scalar_388.3 = load double, double* %scevgep386387.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.3 = fmul fast double %_p_scalar_392.3, %_p_scalar_388.3
  %233 = shl i64 %230, 3
  %scevgep394.3 = getelementptr i8, i8* %scevgep393.3, i64 %233
  %scevgep394395.3 = bitcast i8* %scevgep394.3 to double*
  %_p_scalar_396.3 = load double, double* %scevgep394395.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_396.3
  store double %p_add42.i79.3, double* %scevgep394395.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377.3 = add nuw nsw i64 %polly.indvar376.3, 1
  %exitcond775.3.not = icmp eq i64 %polly.indvar376.3, %smin774.3
  br i1 %exitcond775.3.not, label %polly.loop_exit375.3, label %polly.loop_header373.3

polly.loop_exit375.3:                             ; preds = %polly.loop_header373.3
  %polly.indvar_next371.3 = add nuw nsw i64 %polly.indvar370.3, 1
  %exitcond779.3.not = icmp eq i64 %polly.indvar_next371.3, %115
  br i1 %exitcond779.3.not, label %polly.loop_exit369.3, label %polly.loop_header367.3

polly.loop_exit369.3:                             ; preds = %polly.loop_exit375.3
  %polly.indvar_next365.3 = add nuw nsw i64 %polly.indvar364.3, 1
  %indvars.iv.next773.3 = add nuw nsw i64 %indvars.iv772.3, 1
  %exitcond782.3.not = icmp eq i64 %indvars.iv.next773.3, 32
  br i1 %exitcond782.3.not, label %polly.loop_header361.4, label %polly.loop_header361.3

polly.loop_header361.4:                           ; preds = %polly.loop_exit369.3, %polly.loop_exit369.4
  %indvars.iv772.4 = phi i64 [ %indvars.iv.next773.4, %polly.loop_exit369.4 ], [ 0, %polly.loop_exit369.3 ]
  %polly.indvar364.4 = phi i64 [ %polly.indvar_next365.4, %polly.loop_exit369.4 ], [ 64, %polly.loop_exit369.3 ]
  %smin774.4 = call i64 @llvm.smin.i64(i64 %indvars.iv772.4, i64 15)
  %234 = mul nuw nsw i64 %polly.indvar364.4, 480
  %scevgep382.4 = getelementptr i8, i8* %call2, i64 %234
  %scevgep389.4 = getelementptr i8, i8* %call1, i64 %234
  %235 = mul nuw nsw i64 %polly.indvar364.4, 640
  %scevgep393.4 = getelementptr i8, i8* %call, i64 %235
  br label %polly.loop_header367.4

polly.loop_header367.4:                           ; preds = %polly.loop_exit375.4, %polly.loop_header361.4
  %polly.indvar370.4 = phi i64 [ 0, %polly.loop_header361.4 ], [ %polly.indvar_next371.4, %polly.loop_exit375.4 ]
  %236 = add nuw nsw i64 %polly.indvar370.4, %116
  %237 = shl i64 %236, 3
  %scevgep383.4 = getelementptr i8, i8* %scevgep382.4, i64 %237
  %scevgep383384.4 = bitcast i8* %scevgep383.4 to double*
  %_p_scalar_385.4 = load double, double* %scevgep383384.4, align 8, !alias.scope !73, !noalias !76
  %scevgep390.4 = getelementptr i8, i8* %scevgep389.4, i64 %237
  %scevgep390391.4 = bitcast i8* %scevgep390.4 to double*
  %_p_scalar_392.4 = load double, double* %scevgep390391.4, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373.4

polly.loop_header373.4:                           ; preds = %polly.loop_header373.4, %polly.loop_header367.4
  %polly.indvar376.4 = phi i64 [ 0, %polly.loop_header367.4 ], [ %polly.indvar_next377.4, %polly.loop_header373.4 ]
  %238 = add nuw nsw i64 %polly.indvar376.4, 64
  %239 = mul nuw nsw i64 %238, 480
  %240 = add nuw nsw i64 %239, %237
  %scevgep379.4 = getelementptr i8, i8* %call1, i64 %240
  %scevgep379380.4 = bitcast i8* %scevgep379.4 to double*
  %_p_scalar_381.4 = load double, double* %scevgep379380.4, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.4 = fmul fast double %_p_scalar_385.4, %_p_scalar_381.4
  %scevgep386.4 = getelementptr i8, i8* %call2, i64 %240
  %scevgep386387.4 = bitcast i8* %scevgep386.4 to double*
  %_p_scalar_388.4 = load double, double* %scevgep386387.4, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.4 = fmul fast double %_p_scalar_392.4, %_p_scalar_388.4
  %241 = shl i64 %238, 3
  %scevgep394.4 = getelementptr i8, i8* %scevgep393.4, i64 %241
  %scevgep394395.4 = bitcast i8* %scevgep394.4 to double*
  %_p_scalar_396.4 = load double, double* %scevgep394395.4, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_396.4
  store double %p_add42.i79.4, double* %scevgep394395.4, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377.4 = add nuw nsw i64 %polly.indvar376.4, 1
  %exitcond775.4.not = icmp eq i64 %polly.indvar376.4, %smin774.4
  br i1 %exitcond775.4.not, label %polly.loop_exit375.4, label %polly.loop_header373.4

polly.loop_exit375.4:                             ; preds = %polly.loop_header373.4
  %polly.indvar_next371.4 = add nuw nsw i64 %polly.indvar370.4, 1
  %exitcond779.4.not = icmp eq i64 %polly.indvar_next371.4, %115
  br i1 %exitcond779.4.not, label %polly.loop_exit369.4, label %polly.loop_header367.4

polly.loop_exit369.4:                             ; preds = %polly.loop_exit375.4
  %polly.indvar_next365.4 = add nuw nsw i64 %polly.indvar364.4, 1
  %indvars.iv.next773.4 = add nuw nsw i64 %indvars.iv772.4, 1
  %exitcond782.4.not = icmp eq i64 %indvars.iv.next773.4, 16
  br i1 %exitcond782.4.not, label %polly.loop_exit363.4, label %polly.loop_header361.4

polly.loop_exit363.4:                             ; preds = %polly.loop_exit369.4
  %polly.indvar_next353 = add nuw nsw i64 %polly.indvar352, 1
  %indvars.iv.next777 = add nsw i64 %indvars.iv776, -8
  %exitcond784.not = icmp eq i64 %polly.indvar_next353, 8
  br i1 %exitcond784.not, label %kernel_syr2k.exit90, label %polly.loop_header349

polly.loop_header511.1:                           ; preds = %polly.loop_exit519, %polly.loop_exit519.1
  %indvars.iv787.1 = phi i64 [ %indvars.iv.next788.1, %polly.loop_exit519.1 ], [ 0, %polly.loop_exit519 ]
  %polly.indvar514.1 = phi i64 [ %polly.indvar_next515.1, %polly.loop_exit519.1 ], [ 16, %polly.loop_exit519 ]
  %smin789.1 = call i64 @llvm.smin.i64(i64 %indvars.iv787.1, i64 15)
  %242 = mul nuw nsw i64 %polly.indvar514.1, 480
  %scevgep532.1 = getelementptr i8, i8* %call2, i64 %242
  %scevgep539.1 = getelementptr i8, i8* %call1, i64 %242
  %243 = mul nuw nsw i64 %polly.indvar514.1, 640
  %scevgep543.1 = getelementptr i8, i8* %call, i64 %243
  br label %polly.loop_header517.1

polly.loop_header517.1:                           ; preds = %polly.loop_exit525.1, %polly.loop_header511.1
  %polly.indvar520.1 = phi i64 [ 0, %polly.loop_header511.1 ], [ %polly.indvar_next521.1, %polly.loop_exit525.1 ]
  %244 = add nuw nsw i64 %polly.indvar520.1, %134
  %245 = shl i64 %244, 3
  %scevgep533.1 = getelementptr i8, i8* %scevgep532.1, i64 %245
  %scevgep533534.1 = bitcast i8* %scevgep533.1 to double*
  %_p_scalar_535.1 = load double, double* %scevgep533534.1, align 8, !alias.scope !82, !noalias !85
  %scevgep540.1 = getelementptr i8, i8* %scevgep539.1, i64 %245
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523.1

polly.loop_header523.1:                           ; preds = %polly.loop_header523.1, %polly.loop_header517.1
  %polly.indvar526.1 = phi i64 [ 0, %polly.loop_header517.1 ], [ %polly.indvar_next527.1, %polly.loop_header523.1 ]
  %246 = add nuw nsw i64 %polly.indvar526.1, 16
  %247 = mul nuw nsw i64 %246, 480
  %248 = add nuw nsw i64 %247, %245
  %scevgep529.1 = getelementptr i8, i8* %call1, i64 %248
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1 = fmul fast double %_p_scalar_535.1, %_p_scalar_531.1
  %scevgep536.1 = getelementptr i8, i8* %call2, i64 %248
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1 = fmul fast double %_p_scalar_542.1, %_p_scalar_538.1
  %249 = shl i64 %246, 3
  %scevgep544.1 = getelementptr i8, i8* %scevgep543.1, i64 %249
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_546.1
  store double %p_add42.i.1, double* %scevgep544545.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527.1 = add nuw nsw i64 %polly.indvar526.1, 1
  %exitcond790.1.not = icmp eq i64 %polly.indvar526.1, %smin789.1
  br i1 %exitcond790.1.not, label %polly.loop_exit525.1, label %polly.loop_header523.1

polly.loop_exit525.1:                             ; preds = %polly.loop_header523.1
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %exitcond794.1.not = icmp eq i64 %polly.indvar_next521.1, %133
  br i1 %exitcond794.1.not, label %polly.loop_exit519.1, label %polly.loop_header517.1

polly.loop_exit519.1:                             ; preds = %polly.loop_exit525.1
  %polly.indvar_next515.1 = add nuw nsw i64 %polly.indvar514.1, 1
  %indvars.iv.next788.1 = add nuw nsw i64 %indvars.iv787.1, 1
  %exitcond797.1.not = icmp eq i64 %indvars.iv.next788.1, 64
  br i1 %exitcond797.1.not, label %polly.loop_header511.2, label %polly.loop_header511.1

polly.loop_header511.2:                           ; preds = %polly.loop_exit519.1, %polly.loop_exit519.2
  %indvars.iv787.2 = phi i64 [ %indvars.iv.next788.2, %polly.loop_exit519.2 ], [ 0, %polly.loop_exit519.1 ]
  %polly.indvar514.2 = phi i64 [ %polly.indvar_next515.2, %polly.loop_exit519.2 ], [ 32, %polly.loop_exit519.1 ]
  %smin789.2 = call i64 @llvm.smin.i64(i64 %indvars.iv787.2, i64 15)
  %250 = mul nuw nsw i64 %polly.indvar514.2, 480
  %scevgep532.2 = getelementptr i8, i8* %call2, i64 %250
  %scevgep539.2 = getelementptr i8, i8* %call1, i64 %250
  %251 = mul nuw nsw i64 %polly.indvar514.2, 640
  %scevgep543.2 = getelementptr i8, i8* %call, i64 %251
  br label %polly.loop_header517.2

polly.loop_header517.2:                           ; preds = %polly.loop_exit525.2, %polly.loop_header511.2
  %polly.indvar520.2 = phi i64 [ 0, %polly.loop_header511.2 ], [ %polly.indvar_next521.2, %polly.loop_exit525.2 ]
  %252 = add nuw nsw i64 %polly.indvar520.2, %134
  %253 = shl i64 %252, 3
  %scevgep533.2 = getelementptr i8, i8* %scevgep532.2, i64 %253
  %scevgep533534.2 = bitcast i8* %scevgep533.2 to double*
  %_p_scalar_535.2 = load double, double* %scevgep533534.2, align 8, !alias.scope !82, !noalias !85
  %scevgep540.2 = getelementptr i8, i8* %scevgep539.2, i64 %253
  %scevgep540541.2 = bitcast i8* %scevgep540.2 to double*
  %_p_scalar_542.2 = load double, double* %scevgep540541.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523.2

polly.loop_header523.2:                           ; preds = %polly.loop_header523.2, %polly.loop_header517.2
  %polly.indvar526.2 = phi i64 [ 0, %polly.loop_header517.2 ], [ %polly.indvar_next527.2, %polly.loop_header523.2 ]
  %254 = add nuw nsw i64 %polly.indvar526.2, 32
  %255 = mul nuw nsw i64 %254, 480
  %256 = add nuw nsw i64 %255, %253
  %scevgep529.2 = getelementptr i8, i8* %call1, i64 %256
  %scevgep529530.2 = bitcast i8* %scevgep529.2 to double*
  %_p_scalar_531.2 = load double, double* %scevgep529530.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.2 = fmul fast double %_p_scalar_535.2, %_p_scalar_531.2
  %scevgep536.2 = getelementptr i8, i8* %call2, i64 %256
  %scevgep536537.2 = bitcast i8* %scevgep536.2 to double*
  %_p_scalar_538.2 = load double, double* %scevgep536537.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.2 = fmul fast double %_p_scalar_542.2, %_p_scalar_538.2
  %257 = shl i64 %254, 3
  %scevgep544.2 = getelementptr i8, i8* %scevgep543.2, i64 %257
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_546.2
  store double %p_add42.i.2, double* %scevgep544545.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527.2 = add nuw nsw i64 %polly.indvar526.2, 1
  %exitcond790.2.not = icmp eq i64 %polly.indvar526.2, %smin789.2
  br i1 %exitcond790.2.not, label %polly.loop_exit525.2, label %polly.loop_header523.2

polly.loop_exit525.2:                             ; preds = %polly.loop_header523.2
  %polly.indvar_next521.2 = add nuw nsw i64 %polly.indvar520.2, 1
  %exitcond794.2.not = icmp eq i64 %polly.indvar_next521.2, %133
  br i1 %exitcond794.2.not, label %polly.loop_exit519.2, label %polly.loop_header517.2

polly.loop_exit519.2:                             ; preds = %polly.loop_exit525.2
  %polly.indvar_next515.2 = add nuw nsw i64 %polly.indvar514.2, 1
  %indvars.iv.next788.2 = add nuw nsw i64 %indvars.iv787.2, 1
  %exitcond797.2.not = icmp eq i64 %indvars.iv.next788.2, 48
  br i1 %exitcond797.2.not, label %polly.loop_header511.3, label %polly.loop_header511.2

polly.loop_header511.3:                           ; preds = %polly.loop_exit519.2, %polly.loop_exit519.3
  %indvars.iv787.3 = phi i64 [ %indvars.iv.next788.3, %polly.loop_exit519.3 ], [ 0, %polly.loop_exit519.2 ]
  %polly.indvar514.3 = phi i64 [ %polly.indvar_next515.3, %polly.loop_exit519.3 ], [ 48, %polly.loop_exit519.2 ]
  %smin789.3 = call i64 @llvm.smin.i64(i64 %indvars.iv787.3, i64 15)
  %258 = mul nuw nsw i64 %polly.indvar514.3, 480
  %scevgep532.3 = getelementptr i8, i8* %call2, i64 %258
  %scevgep539.3 = getelementptr i8, i8* %call1, i64 %258
  %259 = mul nuw nsw i64 %polly.indvar514.3, 640
  %scevgep543.3 = getelementptr i8, i8* %call, i64 %259
  br label %polly.loop_header517.3

polly.loop_header517.3:                           ; preds = %polly.loop_exit525.3, %polly.loop_header511.3
  %polly.indvar520.3 = phi i64 [ 0, %polly.loop_header511.3 ], [ %polly.indvar_next521.3, %polly.loop_exit525.3 ]
  %260 = add nuw nsw i64 %polly.indvar520.3, %134
  %261 = shl i64 %260, 3
  %scevgep533.3 = getelementptr i8, i8* %scevgep532.3, i64 %261
  %scevgep533534.3 = bitcast i8* %scevgep533.3 to double*
  %_p_scalar_535.3 = load double, double* %scevgep533534.3, align 8, !alias.scope !82, !noalias !85
  %scevgep540.3 = getelementptr i8, i8* %scevgep539.3, i64 %261
  %scevgep540541.3 = bitcast i8* %scevgep540.3 to double*
  %_p_scalar_542.3 = load double, double* %scevgep540541.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523.3

polly.loop_header523.3:                           ; preds = %polly.loop_header523.3, %polly.loop_header517.3
  %polly.indvar526.3 = phi i64 [ 0, %polly.loop_header517.3 ], [ %polly.indvar_next527.3, %polly.loop_header523.3 ]
  %262 = add nuw nsw i64 %polly.indvar526.3, 48
  %263 = mul nuw nsw i64 %262, 480
  %264 = add nuw nsw i64 %263, %261
  %scevgep529.3 = getelementptr i8, i8* %call1, i64 %264
  %scevgep529530.3 = bitcast i8* %scevgep529.3 to double*
  %_p_scalar_531.3 = load double, double* %scevgep529530.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.3 = fmul fast double %_p_scalar_535.3, %_p_scalar_531.3
  %scevgep536.3 = getelementptr i8, i8* %call2, i64 %264
  %scevgep536537.3 = bitcast i8* %scevgep536.3 to double*
  %_p_scalar_538.3 = load double, double* %scevgep536537.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.3 = fmul fast double %_p_scalar_542.3, %_p_scalar_538.3
  %265 = shl i64 %262, 3
  %scevgep544.3 = getelementptr i8, i8* %scevgep543.3, i64 %265
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_546.3
  store double %p_add42.i.3, double* %scevgep544545.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527.3 = add nuw nsw i64 %polly.indvar526.3, 1
  %exitcond790.3.not = icmp eq i64 %polly.indvar526.3, %smin789.3
  br i1 %exitcond790.3.not, label %polly.loop_exit525.3, label %polly.loop_header523.3

polly.loop_exit525.3:                             ; preds = %polly.loop_header523.3
  %polly.indvar_next521.3 = add nuw nsw i64 %polly.indvar520.3, 1
  %exitcond794.3.not = icmp eq i64 %polly.indvar_next521.3, %133
  br i1 %exitcond794.3.not, label %polly.loop_exit519.3, label %polly.loop_header517.3

polly.loop_exit519.3:                             ; preds = %polly.loop_exit525.3
  %polly.indvar_next515.3 = add nuw nsw i64 %polly.indvar514.3, 1
  %indvars.iv.next788.3 = add nuw nsw i64 %indvars.iv787.3, 1
  %exitcond797.3.not = icmp eq i64 %indvars.iv.next788.3, 32
  br i1 %exitcond797.3.not, label %polly.loop_header511.4, label %polly.loop_header511.3

polly.loop_header511.4:                           ; preds = %polly.loop_exit519.3, %polly.loop_exit519.4
  %indvars.iv787.4 = phi i64 [ %indvars.iv.next788.4, %polly.loop_exit519.4 ], [ 0, %polly.loop_exit519.3 ]
  %polly.indvar514.4 = phi i64 [ %polly.indvar_next515.4, %polly.loop_exit519.4 ], [ 64, %polly.loop_exit519.3 ]
  %smin789.4 = call i64 @llvm.smin.i64(i64 %indvars.iv787.4, i64 15)
  %266 = mul nuw nsw i64 %polly.indvar514.4, 480
  %scevgep532.4 = getelementptr i8, i8* %call2, i64 %266
  %scevgep539.4 = getelementptr i8, i8* %call1, i64 %266
  %267 = mul nuw nsw i64 %polly.indvar514.4, 640
  %scevgep543.4 = getelementptr i8, i8* %call, i64 %267
  br label %polly.loop_header517.4

polly.loop_header517.4:                           ; preds = %polly.loop_exit525.4, %polly.loop_header511.4
  %polly.indvar520.4 = phi i64 [ 0, %polly.loop_header511.4 ], [ %polly.indvar_next521.4, %polly.loop_exit525.4 ]
  %268 = add nuw nsw i64 %polly.indvar520.4, %134
  %269 = shl i64 %268, 3
  %scevgep533.4 = getelementptr i8, i8* %scevgep532.4, i64 %269
  %scevgep533534.4 = bitcast i8* %scevgep533.4 to double*
  %_p_scalar_535.4 = load double, double* %scevgep533534.4, align 8, !alias.scope !82, !noalias !85
  %scevgep540.4 = getelementptr i8, i8* %scevgep539.4, i64 %269
  %scevgep540541.4 = bitcast i8* %scevgep540.4 to double*
  %_p_scalar_542.4 = load double, double* %scevgep540541.4, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523.4

polly.loop_header523.4:                           ; preds = %polly.loop_header523.4, %polly.loop_header517.4
  %polly.indvar526.4 = phi i64 [ 0, %polly.loop_header517.4 ], [ %polly.indvar_next527.4, %polly.loop_header523.4 ]
  %270 = add nuw nsw i64 %polly.indvar526.4, 64
  %271 = mul nuw nsw i64 %270, 480
  %272 = add nuw nsw i64 %271, %269
  %scevgep529.4 = getelementptr i8, i8* %call1, i64 %272
  %scevgep529530.4 = bitcast i8* %scevgep529.4 to double*
  %_p_scalar_531.4 = load double, double* %scevgep529530.4, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.4 = fmul fast double %_p_scalar_535.4, %_p_scalar_531.4
  %scevgep536.4 = getelementptr i8, i8* %call2, i64 %272
  %scevgep536537.4 = bitcast i8* %scevgep536.4 to double*
  %_p_scalar_538.4 = load double, double* %scevgep536537.4, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.4 = fmul fast double %_p_scalar_542.4, %_p_scalar_538.4
  %273 = shl i64 %270, 3
  %scevgep544.4 = getelementptr i8, i8* %scevgep543.4, i64 %273
  %scevgep544545.4 = bitcast i8* %scevgep544.4 to double*
  %_p_scalar_546.4 = load double, double* %scevgep544545.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_546.4
  store double %p_add42.i.4, double* %scevgep544545.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527.4 = add nuw nsw i64 %polly.indvar526.4, 1
  %exitcond790.4.not = icmp eq i64 %polly.indvar526.4, %smin789.4
  br i1 %exitcond790.4.not, label %polly.loop_exit525.4, label %polly.loop_header523.4

polly.loop_exit525.4:                             ; preds = %polly.loop_header523.4
  %polly.indvar_next521.4 = add nuw nsw i64 %polly.indvar520.4, 1
  %exitcond794.4.not = icmp eq i64 %polly.indvar_next521.4, %133
  br i1 %exitcond794.4.not, label %polly.loop_exit519.4, label %polly.loop_header517.4

polly.loop_exit519.4:                             ; preds = %polly.loop_exit525.4
  %polly.indvar_next515.4 = add nuw nsw i64 %polly.indvar514.4, 1
  %indvars.iv.next788.4 = add nuw nsw i64 %indvars.iv787.4, 1
  %exitcond797.4.not = icmp eq i64 %indvars.iv.next788.4, 16
  br i1 %exitcond797.4.not, label %polly.loop_exit513.4, label %polly.loop_header511.4

polly.loop_exit513.4:                             ; preds = %polly.loop_exit519.4
  %polly.indvar_next503 = add nuw nsw i64 %polly.indvar502, 1
  %indvars.iv.next792 = add nsw i64 %indvars.iv791, -8
  %exitcond799.not = icmp eq i64 %polly.indvar_next503, 8
  br i1 %exitcond799.not, label %kernel_syr2k.exit, label %polly.loop_header499

polly.loop_header738.1:                           ; preds = %polly.loop_exit746, %polly.loop_exit746.1
  %polly.indvar741.1 = phi i64 [ %polly.indvar_next742.1, %polly.loop_exit746.1 ], [ 0, %polly.loop_exit746 ]
  %274 = mul nuw nsw i64 %polly.indvar741.1, 480
  %275 = trunc i64 %polly.indvar741.1 to i32
  %broadcast.splatinsert1124 = insertelement <4 x i32> poison, i32 %275, i32 0
  %broadcast.splat1125 = shufflevector <4 x i32> %broadcast.splatinsert1124, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %polly.loop_header738.1
  %index1118 = phi i64 [ 0, %polly.loop_header738.1 ], [ %index.next1119, %vector.body1116 ]
  %vec.ind1122 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1 ], [ %vec.ind.next1123, %vector.body1116 ]
  %276 = add nuw nsw <4 x i64> %vec.ind1122, <i64 32, i64 32, i64 32, i64 32>
  %277 = trunc <4 x i64> %276 to <4 x i32>
  %278 = mul <4 x i32> %broadcast.splat1125, %277
  %279 = add <4 x i32> %278, <i32 1, i32 1, i32 1, i32 1>
  %280 = urem <4 x i32> %279, <i32 80, i32 80, i32 80, i32 80>
  %281 = sitofp <4 x i32> %280 to <4 x double>
  %282 = fmul fast <4 x double> %281, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %283 = extractelement <4 x i64> %276, i32 0
  %284 = shl i64 %283, 3
  %285 = add i64 %284, %274
  %286 = getelementptr i8, i8* %call1, i64 %285
  %287 = bitcast i8* %286 to <4 x double>*
  store <4 x double> %282, <4 x double>* %287, align 8, !alias.scope !90, !noalias !95
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1123 = add <4 x i64> %vec.ind1122, <i64 4, i64 4, i64 4, i64 4>
  %288 = icmp eq i64 %index.next1119, 28
  br i1 %288, label %polly.loop_exit746.1, label %vector.body1116, !llvm.loop !97

polly.loop_exit746.1:                             ; preds = %vector.body1116
  %polly.indvar_next742.1 = add nuw nsw i64 %polly.indvar741.1, 1
  %exitcond806.1.not = icmp eq i64 %polly.indvar_next742.1, 32
  br i1 %exitcond806.1.not, label %polly.loop_header738.1829, label %polly.loop_header738.1

polly.loop_header738.1829:                        ; preds = %polly.loop_exit746.1, %polly.loop_exit746.1840
  %polly.indvar741.1828 = phi i64 [ %polly.indvar_next742.1838, %polly.loop_exit746.1840 ], [ 0, %polly.loop_exit746.1 ]
  %289 = add nuw nsw i64 %polly.indvar741.1828, 32
  %290 = mul nuw nsw i64 %289, 480
  %291 = trunc i64 %289 to i32
  %broadcast.splatinsert1138 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1139 = shufflevector <4 x i32> %broadcast.splatinsert1138, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1128

vector.body1128:                                  ; preds = %vector.body1128, %polly.loop_header738.1829
  %index1130 = phi i64 [ 0, %polly.loop_header738.1829 ], [ %index.next1131, %vector.body1128 ]
  %vec.ind1136 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.1829 ], [ %vec.ind.next1137, %vector.body1128 ]
  %292 = mul <4 x i32> %vec.ind1136, %broadcast.splat1139
  %293 = add <4 x i32> %292, <i32 1, i32 1, i32 1, i32 1>
  %294 = urem <4 x i32> %293, <i32 80, i32 80, i32 80, i32 80>
  %295 = sitofp <4 x i32> %294 to <4 x double>
  %296 = fmul fast <4 x double> %295, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %297 = shl i64 %index1130, 3
  %298 = add i64 %297, %290
  %299 = getelementptr i8, i8* %call1, i64 %298
  %300 = bitcast i8* %299 to <4 x double>*
  store <4 x double> %296, <4 x double>* %300, align 8, !alias.scope !90, !noalias !95
  %index.next1131 = add i64 %index1130, 4
  %vec.ind.next1137 = add <4 x i32> %vec.ind1136, <i32 4, i32 4, i32 4, i32 4>
  %301 = icmp eq i64 %index.next1131, 32
  br i1 %301, label %polly.loop_exit746.1840, label %vector.body1128, !llvm.loop !98

polly.loop_exit746.1840:                          ; preds = %vector.body1128
  %polly.indvar_next742.1838 = add nuw nsw i64 %polly.indvar741.1828, 1
  %exitcond806.1839.not = icmp eq i64 %polly.indvar_next742.1838, 32
  br i1 %exitcond806.1839.not, label %polly.loop_header738.1.1, label %polly.loop_header738.1829

polly.loop_header738.1.1:                         ; preds = %polly.loop_exit746.1840, %polly.loop_exit746.1.1
  %polly.indvar741.1.1 = phi i64 [ %polly.indvar_next742.1.1, %polly.loop_exit746.1.1 ], [ 0, %polly.loop_exit746.1840 ]
  %302 = add nuw nsw i64 %polly.indvar741.1.1, 32
  %303 = mul nuw nsw i64 %302, 480
  %304 = trunc i64 %302 to i32
  %broadcast.splatinsert1150 = insertelement <4 x i32> poison, i32 %304, i32 0
  %broadcast.splat1151 = shufflevector <4 x i32> %broadcast.splatinsert1150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %polly.loop_header738.1.1
  %index1144 = phi i64 [ 0, %polly.loop_header738.1.1 ], [ %index.next1145, %vector.body1142 ]
  %vec.ind1148 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.1 ], [ %vec.ind.next1149, %vector.body1142 ]
  %305 = add nuw nsw <4 x i64> %vec.ind1148, <i64 32, i64 32, i64 32, i64 32>
  %306 = trunc <4 x i64> %305 to <4 x i32>
  %307 = mul <4 x i32> %broadcast.splat1151, %306
  %308 = add <4 x i32> %307, <i32 1, i32 1, i32 1, i32 1>
  %309 = urem <4 x i32> %308, <i32 80, i32 80, i32 80, i32 80>
  %310 = sitofp <4 x i32> %309 to <4 x double>
  %311 = fmul fast <4 x double> %310, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %312 = extractelement <4 x i64> %305, i32 0
  %313 = shl i64 %312, 3
  %314 = add i64 %313, %303
  %315 = getelementptr i8, i8* %call1, i64 %314
  %316 = bitcast i8* %315 to <4 x double>*
  store <4 x double> %311, <4 x double>* %316, align 8, !alias.scope !90, !noalias !95
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1149 = add <4 x i64> %vec.ind1148, <i64 4, i64 4, i64 4, i64 4>
  %317 = icmp eq i64 %index.next1145, 28
  br i1 %317, label %polly.loop_exit746.1.1, label %vector.body1142, !llvm.loop !99

polly.loop_exit746.1.1:                           ; preds = %vector.body1142
  %polly.indvar_next742.1.1 = add nuw nsw i64 %polly.indvar741.1.1, 1
  %exitcond806.1.1.not = icmp eq i64 %polly.indvar_next742.1.1, 32
  br i1 %exitcond806.1.1.not, label %polly.loop_header738.2, label %polly.loop_header738.1.1

polly.loop_header738.2:                           ; preds = %polly.loop_exit746.1.1, %polly.loop_exit746.2
  %polly.indvar741.2 = phi i64 [ %polly.indvar_next742.2, %polly.loop_exit746.2 ], [ 0, %polly.loop_exit746.1.1 ]
  %318 = add nuw nsw i64 %polly.indvar741.2, 64
  %319 = mul nuw nsw i64 %318, 480
  %320 = trunc i64 %318 to i32
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %polly.loop_header738.2
  %index1156 = phi i64 [ 0, %polly.loop_header738.2 ], [ %index.next1157, %vector.body1154 ]
  %vec.ind1162 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.2 ], [ %vec.ind.next1163, %vector.body1154 ]
  %321 = mul <4 x i32> %vec.ind1162, %broadcast.splat1165
  %322 = add <4 x i32> %321, <i32 1, i32 1, i32 1, i32 1>
  %323 = urem <4 x i32> %322, <i32 80, i32 80, i32 80, i32 80>
  %324 = sitofp <4 x i32> %323 to <4 x double>
  %325 = fmul fast <4 x double> %324, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %326 = shl i64 %index1156, 3
  %327 = add i64 %326, %319
  %328 = getelementptr i8, i8* %call1, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %325, <4 x double>* %329, align 8, !alias.scope !90, !noalias !95
  %index.next1157 = add i64 %index1156, 4
  %vec.ind.next1163 = add <4 x i32> %vec.ind1162, <i32 4, i32 4, i32 4, i32 4>
  %330 = icmp eq i64 %index.next1157, 32
  br i1 %330, label %polly.loop_exit746.2, label %vector.body1154, !llvm.loop !100

polly.loop_exit746.2:                             ; preds = %vector.body1154
  %polly.indvar_next742.2 = add nuw nsw i64 %polly.indvar741.2, 1
  %exitcond806.2.not = icmp eq i64 %polly.indvar_next742.2, 16
  br i1 %exitcond806.2.not, label %polly.loop_header738.1.2, label %polly.loop_header738.2

polly.loop_header738.1.2:                         ; preds = %polly.loop_exit746.2, %polly.loop_exit746.1.2
  %polly.indvar741.1.2 = phi i64 [ %polly.indvar_next742.1.2, %polly.loop_exit746.1.2 ], [ 0, %polly.loop_exit746.2 ]
  %331 = add nuw nsw i64 %polly.indvar741.1.2, 64
  %332 = mul nuw nsw i64 %331, 480
  %333 = trunc i64 %331 to i32
  %broadcast.splatinsert1176 = insertelement <4 x i32> poison, i32 %333, i32 0
  %broadcast.splat1177 = shufflevector <4 x i32> %broadcast.splatinsert1176, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %polly.loop_header738.1.2
  %index1170 = phi i64 [ 0, %polly.loop_header738.1.2 ], [ %index.next1171, %vector.body1168 ]
  %vec.ind1174 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.2 ], [ %vec.ind.next1175, %vector.body1168 ]
  %334 = add nuw nsw <4 x i64> %vec.ind1174, <i64 32, i64 32, i64 32, i64 32>
  %335 = trunc <4 x i64> %334 to <4 x i32>
  %336 = mul <4 x i32> %broadcast.splat1177, %335
  %337 = add <4 x i32> %336, <i32 1, i32 1, i32 1, i32 1>
  %338 = urem <4 x i32> %337, <i32 80, i32 80, i32 80, i32 80>
  %339 = sitofp <4 x i32> %338 to <4 x double>
  %340 = fmul fast <4 x double> %339, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %341 = extractelement <4 x i64> %334, i32 0
  %342 = shl i64 %341, 3
  %343 = add i64 %342, %332
  %344 = getelementptr i8, i8* %call1, i64 %343
  %345 = bitcast i8* %344 to <4 x double>*
  store <4 x double> %340, <4 x double>* %345, align 8, !alias.scope !90, !noalias !95
  %index.next1171 = add i64 %index1170, 4
  %vec.ind.next1175 = add <4 x i64> %vec.ind1174, <i64 4, i64 4, i64 4, i64 4>
  %346 = icmp eq i64 %index.next1171, 28
  br i1 %346, label %polly.loop_exit746.1.2, label %vector.body1168, !llvm.loop !101

polly.loop_exit746.1.2:                           ; preds = %vector.body1168
  %polly.indvar_next742.1.2 = add nuw nsw i64 %polly.indvar741.1.2, 1
  %exitcond806.1.2.not = icmp eq i64 %polly.indvar_next742.1.2, 16
  br i1 %exitcond806.1.2.not, label %init_array.exit, label %polly.loop_header738.1.2

polly.loop_header712.1:                           ; preds = %polly.loop_exit720, %polly.loop_exit720.1
  %polly.indvar715.1 = phi i64 [ %polly.indvar_next716.1, %polly.loop_exit720.1 ], [ 0, %polly.loop_exit720 ]
  %347 = mul nuw nsw i64 %polly.indvar715.1, 480
  %348 = trunc i64 %polly.indvar715.1 to i32
  %broadcast.splatinsert1046 = insertelement <4 x i32> poison, i32 %348, i32 0
  %broadcast.splat1047 = shufflevector <4 x i32> %broadcast.splatinsert1046, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %polly.loop_header712.1
  %index1040 = phi i64 [ 0, %polly.loop_header712.1 ], [ %index.next1041, %vector.body1038 ]
  %vec.ind1044 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1 ], [ %vec.ind.next1045, %vector.body1038 ]
  %349 = add nuw nsw <4 x i64> %vec.ind1044, <i64 32, i64 32, i64 32, i64 32>
  %350 = trunc <4 x i64> %349 to <4 x i32>
  %351 = mul <4 x i32> %broadcast.splat1047, %350
  %352 = add <4 x i32> %351, <i32 2, i32 2, i32 2, i32 2>
  %353 = urem <4 x i32> %352, <i32 60, i32 60, i32 60, i32 60>
  %354 = sitofp <4 x i32> %353 to <4 x double>
  %355 = fmul fast <4 x double> %354, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %356 = extractelement <4 x i64> %349, i32 0
  %357 = shl i64 %356, 3
  %358 = add i64 %357, %347
  %359 = getelementptr i8, i8* %call2, i64 %358
  %360 = bitcast i8* %359 to <4 x double>*
  store <4 x double> %355, <4 x double>* %360, align 8, !alias.scope !91, !noalias !93
  %index.next1041 = add i64 %index1040, 4
  %vec.ind.next1045 = add <4 x i64> %vec.ind1044, <i64 4, i64 4, i64 4, i64 4>
  %361 = icmp eq i64 %index.next1041, 28
  br i1 %361, label %polly.loop_exit720.1, label %vector.body1038, !llvm.loop !102

polly.loop_exit720.1:                             ; preds = %vector.body1038
  %polly.indvar_next716.1 = add nuw nsw i64 %polly.indvar715.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar_next716.1, 32
  br i1 %exitcond812.1.not, label %polly.loop_header712.1843, label %polly.loop_header712.1

polly.loop_header712.1843:                        ; preds = %polly.loop_exit720.1, %polly.loop_exit720.1854
  %polly.indvar715.1842 = phi i64 [ %polly.indvar_next716.1852, %polly.loop_exit720.1854 ], [ 0, %polly.loop_exit720.1 ]
  %362 = add nuw nsw i64 %polly.indvar715.1842, 32
  %363 = mul nuw nsw i64 %362, 480
  %364 = trunc i64 %362 to i32
  %broadcast.splatinsert1060 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1061 = shufflevector <4 x i32> %broadcast.splatinsert1060, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %polly.loop_header712.1843
  %index1052 = phi i64 [ 0, %polly.loop_header712.1843 ], [ %index.next1053, %vector.body1050 ]
  %vec.ind1058 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.1843 ], [ %vec.ind.next1059, %vector.body1050 ]
  %365 = mul <4 x i32> %vec.ind1058, %broadcast.splat1061
  %366 = add <4 x i32> %365, <i32 2, i32 2, i32 2, i32 2>
  %367 = urem <4 x i32> %366, <i32 60, i32 60, i32 60, i32 60>
  %368 = sitofp <4 x i32> %367 to <4 x double>
  %369 = fmul fast <4 x double> %368, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %370 = shl i64 %index1052, 3
  %371 = add i64 %370, %363
  %372 = getelementptr i8, i8* %call2, i64 %371
  %373 = bitcast i8* %372 to <4 x double>*
  store <4 x double> %369, <4 x double>* %373, align 8, !alias.scope !91, !noalias !93
  %index.next1053 = add i64 %index1052, 4
  %vec.ind.next1059 = add <4 x i32> %vec.ind1058, <i32 4, i32 4, i32 4, i32 4>
  %374 = icmp eq i64 %index.next1053, 32
  br i1 %374, label %polly.loop_exit720.1854, label %vector.body1050, !llvm.loop !103

polly.loop_exit720.1854:                          ; preds = %vector.body1050
  %polly.indvar_next716.1852 = add nuw nsw i64 %polly.indvar715.1842, 1
  %exitcond812.1853.not = icmp eq i64 %polly.indvar_next716.1852, 32
  br i1 %exitcond812.1853.not, label %polly.loop_header712.1.1, label %polly.loop_header712.1843

polly.loop_header712.1.1:                         ; preds = %polly.loop_exit720.1854, %polly.loop_exit720.1.1
  %polly.indvar715.1.1 = phi i64 [ %polly.indvar_next716.1.1, %polly.loop_exit720.1.1 ], [ 0, %polly.loop_exit720.1854 ]
  %375 = add nuw nsw i64 %polly.indvar715.1.1, 32
  %376 = mul nuw nsw i64 %375, 480
  %377 = trunc i64 %375 to i32
  %broadcast.splatinsert1072 = insertelement <4 x i32> poison, i32 %377, i32 0
  %broadcast.splat1073 = shufflevector <4 x i32> %broadcast.splatinsert1072, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %polly.loop_header712.1.1
  %index1066 = phi i64 [ 0, %polly.loop_header712.1.1 ], [ %index.next1067, %vector.body1064 ]
  %vec.ind1070 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.1 ], [ %vec.ind.next1071, %vector.body1064 ]
  %378 = add nuw nsw <4 x i64> %vec.ind1070, <i64 32, i64 32, i64 32, i64 32>
  %379 = trunc <4 x i64> %378 to <4 x i32>
  %380 = mul <4 x i32> %broadcast.splat1073, %379
  %381 = add <4 x i32> %380, <i32 2, i32 2, i32 2, i32 2>
  %382 = urem <4 x i32> %381, <i32 60, i32 60, i32 60, i32 60>
  %383 = sitofp <4 x i32> %382 to <4 x double>
  %384 = fmul fast <4 x double> %383, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %385 = extractelement <4 x i64> %378, i32 0
  %386 = shl i64 %385, 3
  %387 = add i64 %386, %376
  %388 = getelementptr i8, i8* %call2, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %384, <4 x double>* %389, align 8, !alias.scope !91, !noalias !93
  %index.next1067 = add i64 %index1066, 4
  %vec.ind.next1071 = add <4 x i64> %vec.ind1070, <i64 4, i64 4, i64 4, i64 4>
  %390 = icmp eq i64 %index.next1067, 28
  br i1 %390, label %polly.loop_exit720.1.1, label %vector.body1064, !llvm.loop !104

polly.loop_exit720.1.1:                           ; preds = %vector.body1064
  %polly.indvar_next716.1.1 = add nuw nsw i64 %polly.indvar715.1.1, 1
  %exitcond812.1.1.not = icmp eq i64 %polly.indvar_next716.1.1, 32
  br i1 %exitcond812.1.1.not, label %polly.loop_header712.2, label %polly.loop_header712.1.1

polly.loop_header712.2:                           ; preds = %polly.loop_exit720.1.1, %polly.loop_exit720.2
  %polly.indvar715.2 = phi i64 [ %polly.indvar_next716.2, %polly.loop_exit720.2 ], [ 0, %polly.loop_exit720.1.1 ]
  %391 = add nuw nsw i64 %polly.indvar715.2, 64
  %392 = mul nuw nsw i64 %391, 480
  %393 = trunc i64 %391 to i32
  %broadcast.splatinsert1086 = insertelement <4 x i32> poison, i32 %393, i32 0
  %broadcast.splat1087 = shufflevector <4 x i32> %broadcast.splatinsert1086, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %polly.loop_header712.2
  %index1078 = phi i64 [ 0, %polly.loop_header712.2 ], [ %index.next1079, %vector.body1076 ]
  %vec.ind1084 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.2 ], [ %vec.ind.next1085, %vector.body1076 ]
  %394 = mul <4 x i32> %vec.ind1084, %broadcast.splat1087
  %395 = add <4 x i32> %394, <i32 2, i32 2, i32 2, i32 2>
  %396 = urem <4 x i32> %395, <i32 60, i32 60, i32 60, i32 60>
  %397 = sitofp <4 x i32> %396 to <4 x double>
  %398 = fmul fast <4 x double> %397, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %399 = shl i64 %index1078, 3
  %400 = add i64 %399, %392
  %401 = getelementptr i8, i8* %call2, i64 %400
  %402 = bitcast i8* %401 to <4 x double>*
  store <4 x double> %398, <4 x double>* %402, align 8, !alias.scope !91, !noalias !93
  %index.next1079 = add i64 %index1078, 4
  %vec.ind.next1085 = add <4 x i32> %vec.ind1084, <i32 4, i32 4, i32 4, i32 4>
  %403 = icmp eq i64 %index.next1079, 32
  br i1 %403, label %polly.loop_exit720.2, label %vector.body1076, !llvm.loop !105

polly.loop_exit720.2:                             ; preds = %vector.body1076
  %polly.indvar_next716.2 = add nuw nsw i64 %polly.indvar715.2, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar_next716.2, 16
  br i1 %exitcond812.2.not, label %polly.loop_header712.1.2, label %polly.loop_header712.2

polly.loop_header712.1.2:                         ; preds = %polly.loop_exit720.2, %polly.loop_exit720.1.2
  %polly.indvar715.1.2 = phi i64 [ %polly.indvar_next716.1.2, %polly.loop_exit720.1.2 ], [ 0, %polly.loop_exit720.2 ]
  %404 = add nuw nsw i64 %polly.indvar715.1.2, 64
  %405 = mul nuw nsw i64 %404, 480
  %406 = trunc i64 %404 to i32
  %broadcast.splatinsert1098 = insertelement <4 x i32> poison, i32 %406, i32 0
  %broadcast.splat1099 = shufflevector <4 x i32> %broadcast.splatinsert1098, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1090

vector.body1090:                                  ; preds = %vector.body1090, %polly.loop_header712.1.2
  %index1092 = phi i64 [ 0, %polly.loop_header712.1.2 ], [ %index.next1093, %vector.body1090 ]
  %vec.ind1096 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.2 ], [ %vec.ind.next1097, %vector.body1090 ]
  %407 = add nuw nsw <4 x i64> %vec.ind1096, <i64 32, i64 32, i64 32, i64 32>
  %408 = trunc <4 x i64> %407 to <4 x i32>
  %409 = mul <4 x i32> %broadcast.splat1099, %408
  %410 = add <4 x i32> %409, <i32 2, i32 2, i32 2, i32 2>
  %411 = urem <4 x i32> %410, <i32 60, i32 60, i32 60, i32 60>
  %412 = sitofp <4 x i32> %411 to <4 x double>
  %413 = fmul fast <4 x double> %412, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %414 = extractelement <4 x i64> %407, i32 0
  %415 = shl i64 %414, 3
  %416 = add i64 %415, %405
  %417 = getelementptr i8, i8* %call2, i64 %416
  %418 = bitcast i8* %417 to <4 x double>*
  store <4 x double> %413, <4 x double>* %418, align 8, !alias.scope !91, !noalias !93
  %index.next1093 = add i64 %index1092, 4
  %vec.ind.next1097 = add <4 x i64> %vec.ind1096, <i64 4, i64 4, i64 4, i64 4>
  %419 = icmp eq i64 %index.next1093, 28
  br i1 %419, label %polly.loop_exit720.1.2, label %vector.body1090, !llvm.loop !106

polly.loop_exit720.1.2:                           ; preds = %vector.body1090
  %polly.indvar_next716.1.2 = add nuw nsw i64 %polly.indvar715.1.2, 1
  %exitcond812.1.2.not = icmp eq i64 %polly.indvar_next716.1.2, 16
  br i1 %exitcond812.1.2.not, label %polly.loop_header738, label %polly.loop_header712.1.2

polly.loop_header685.1:                           ; preds = %polly.loop_exit693, %polly.loop_exit693.1
  %polly.indvar688.1 = phi i64 [ %polly.indvar_next689.1, %polly.loop_exit693.1 ], [ 0, %polly.loop_exit693 ]
  %420 = mul nuw nsw i64 %polly.indvar688.1, 640
  %421 = trunc i64 %polly.indvar688.1 to i32
  %broadcast.splatinsert932 = insertelement <4 x i32> poison, i32 %421, i32 0
  %broadcast.splat933 = shufflevector <4 x i32> %broadcast.splatinsert932, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body924

vector.body924:                                   ; preds = %vector.body924, %polly.loop_header685.1
  %index926 = phi i64 [ 0, %polly.loop_header685.1 ], [ %index.next927, %vector.body924 ]
  %vec.ind930 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1 ], [ %vec.ind.next931, %vector.body924 ]
  %422 = add nuw nsw <4 x i64> %vec.ind930, <i64 32, i64 32, i64 32, i64 32>
  %423 = trunc <4 x i64> %422 to <4 x i32>
  %424 = mul <4 x i32> %broadcast.splat933, %423
  %425 = add <4 x i32> %424, <i32 3, i32 3, i32 3, i32 3>
  %426 = urem <4 x i32> %425, <i32 80, i32 80, i32 80, i32 80>
  %427 = sitofp <4 x i32> %426 to <4 x double>
  %428 = fmul fast <4 x double> %427, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %429 = extractelement <4 x i64> %422, i32 0
  %430 = shl i64 %429, 3
  %431 = add nuw nsw i64 %430, %420
  %432 = getelementptr i8, i8* %call, i64 %431
  %433 = bitcast i8* %432 to <4 x double>*
  store <4 x double> %428, <4 x double>* %433, align 8, !alias.scope !87, !noalias !89
  %index.next927 = add i64 %index926, 4
  %vec.ind.next931 = add <4 x i64> %vec.ind930, <i64 4, i64 4, i64 4, i64 4>
  %434 = icmp eq i64 %index.next927, 32
  br i1 %434, label %polly.loop_exit693.1, label %vector.body924, !llvm.loop !107

polly.loop_exit693.1:                             ; preds = %vector.body924
  %polly.indvar_next689.1 = add nuw nsw i64 %polly.indvar688.1, 1
  %exitcond821.1.not = icmp eq i64 %polly.indvar_next689.1, 32
  br i1 %exitcond821.1.not, label %polly.loop_header685.2, label %polly.loop_header685.1

polly.loop_header685.2:                           ; preds = %polly.loop_exit693.1, %polly.loop_exit693.2
  %polly.indvar688.2 = phi i64 [ %polly.indvar_next689.2, %polly.loop_exit693.2 ], [ 0, %polly.loop_exit693.1 ]
  %435 = mul nuw nsw i64 %polly.indvar688.2, 640
  %436 = trunc i64 %polly.indvar688.2 to i32
  %broadcast.splatinsert944 = insertelement <4 x i32> poison, i32 %436, i32 0
  %broadcast.splat945 = shufflevector <4 x i32> %broadcast.splatinsert944, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %polly.loop_header685.2
  %index938 = phi i64 [ 0, %polly.loop_header685.2 ], [ %index.next939, %vector.body936 ]
  %vec.ind942 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2 ], [ %vec.ind.next943, %vector.body936 ]
  %437 = add nuw nsw <4 x i64> %vec.ind942, <i64 64, i64 64, i64 64, i64 64>
  %438 = trunc <4 x i64> %437 to <4 x i32>
  %439 = mul <4 x i32> %broadcast.splat945, %438
  %440 = add <4 x i32> %439, <i32 3, i32 3, i32 3, i32 3>
  %441 = urem <4 x i32> %440, <i32 80, i32 80, i32 80, i32 80>
  %442 = sitofp <4 x i32> %441 to <4 x double>
  %443 = fmul fast <4 x double> %442, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %444 = extractelement <4 x i64> %437, i32 0
  %445 = shl i64 %444, 3
  %446 = add nuw nsw i64 %445, %435
  %447 = getelementptr i8, i8* %call, i64 %446
  %448 = bitcast i8* %447 to <4 x double>*
  store <4 x double> %443, <4 x double>* %448, align 8, !alias.scope !87, !noalias !89
  %index.next939 = add i64 %index938, 4
  %vec.ind.next943 = add <4 x i64> %vec.ind942, <i64 4, i64 4, i64 4, i64 4>
  %449 = icmp eq i64 %index.next939, 16
  br i1 %449, label %polly.loop_exit693.2, label %vector.body936, !llvm.loop !108

polly.loop_exit693.2:                             ; preds = %vector.body936
  %polly.indvar_next689.2 = add nuw nsw i64 %polly.indvar688.2, 1
  %exitcond821.2.not = icmp eq i64 %polly.indvar_next689.2, 32
  br i1 %exitcond821.2.not, label %polly.loop_header685.1857, label %polly.loop_header685.2

polly.loop_header685.1857:                        ; preds = %polly.loop_exit693.2, %polly.loop_exit693.1868
  %polly.indvar688.1856 = phi i64 [ %polly.indvar_next689.1866, %polly.loop_exit693.1868 ], [ 0, %polly.loop_exit693.2 ]
  %450 = add nuw nsw i64 %polly.indvar688.1856, 32
  %451 = mul nuw nsw i64 %450, 640
  %452 = trunc i64 %450 to i32
  %broadcast.splatinsert958 = insertelement <4 x i32> poison, i32 %452, i32 0
  %broadcast.splat959 = shufflevector <4 x i32> %broadcast.splatinsert958, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %polly.loop_header685.1857
  %index950 = phi i64 [ 0, %polly.loop_header685.1857 ], [ %index.next951, %vector.body948 ]
  %vec.ind956 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.1857 ], [ %vec.ind.next957, %vector.body948 ]
  %453 = mul <4 x i32> %vec.ind956, %broadcast.splat959
  %454 = add <4 x i32> %453, <i32 3, i32 3, i32 3, i32 3>
  %455 = urem <4 x i32> %454, <i32 80, i32 80, i32 80, i32 80>
  %456 = sitofp <4 x i32> %455 to <4 x double>
  %457 = fmul fast <4 x double> %456, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %458 = shl i64 %index950, 3
  %459 = add nuw nsw i64 %458, %451
  %460 = getelementptr i8, i8* %call, i64 %459
  %461 = bitcast i8* %460 to <4 x double>*
  store <4 x double> %457, <4 x double>* %461, align 8, !alias.scope !87, !noalias !89
  %index.next951 = add i64 %index950, 4
  %vec.ind.next957 = add <4 x i32> %vec.ind956, <i32 4, i32 4, i32 4, i32 4>
  %462 = icmp eq i64 %index.next951, 32
  br i1 %462, label %polly.loop_exit693.1868, label %vector.body948, !llvm.loop !109

polly.loop_exit693.1868:                          ; preds = %vector.body948
  %polly.indvar_next689.1866 = add nuw nsw i64 %polly.indvar688.1856, 1
  %exitcond821.1867.not = icmp eq i64 %polly.indvar_next689.1866, 32
  br i1 %exitcond821.1867.not, label %polly.loop_header685.1.1, label %polly.loop_header685.1857

polly.loop_header685.1.1:                         ; preds = %polly.loop_exit693.1868, %polly.loop_exit693.1.1
  %polly.indvar688.1.1 = phi i64 [ %polly.indvar_next689.1.1, %polly.loop_exit693.1.1 ], [ 0, %polly.loop_exit693.1868 ]
  %463 = add nuw nsw i64 %polly.indvar688.1.1, 32
  %464 = mul nuw nsw i64 %463, 640
  %465 = trunc i64 %463 to i32
  %broadcast.splatinsert970 = insertelement <4 x i32> poison, i32 %465, i32 0
  %broadcast.splat971 = shufflevector <4 x i32> %broadcast.splatinsert970, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %polly.loop_header685.1.1
  %index964 = phi i64 [ 0, %polly.loop_header685.1.1 ], [ %index.next965, %vector.body962 ]
  %vec.ind968 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.1 ], [ %vec.ind.next969, %vector.body962 ]
  %466 = add nuw nsw <4 x i64> %vec.ind968, <i64 32, i64 32, i64 32, i64 32>
  %467 = trunc <4 x i64> %466 to <4 x i32>
  %468 = mul <4 x i32> %broadcast.splat971, %467
  %469 = add <4 x i32> %468, <i32 3, i32 3, i32 3, i32 3>
  %470 = urem <4 x i32> %469, <i32 80, i32 80, i32 80, i32 80>
  %471 = sitofp <4 x i32> %470 to <4 x double>
  %472 = fmul fast <4 x double> %471, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %473 = extractelement <4 x i64> %466, i32 0
  %474 = shl i64 %473, 3
  %475 = add nuw nsw i64 %474, %464
  %476 = getelementptr i8, i8* %call, i64 %475
  %477 = bitcast i8* %476 to <4 x double>*
  store <4 x double> %472, <4 x double>* %477, align 8, !alias.scope !87, !noalias !89
  %index.next965 = add i64 %index964, 4
  %vec.ind.next969 = add <4 x i64> %vec.ind968, <i64 4, i64 4, i64 4, i64 4>
  %478 = icmp eq i64 %index.next965, 32
  br i1 %478, label %polly.loop_exit693.1.1, label %vector.body962, !llvm.loop !110

polly.loop_exit693.1.1:                           ; preds = %vector.body962
  %polly.indvar_next689.1.1 = add nuw nsw i64 %polly.indvar688.1.1, 1
  %exitcond821.1.1.not = icmp eq i64 %polly.indvar_next689.1.1, 32
  br i1 %exitcond821.1.1.not, label %polly.loop_header685.2.1, label %polly.loop_header685.1.1

polly.loop_header685.2.1:                         ; preds = %polly.loop_exit693.1.1, %polly.loop_exit693.2.1
  %polly.indvar688.2.1 = phi i64 [ %polly.indvar_next689.2.1, %polly.loop_exit693.2.1 ], [ 0, %polly.loop_exit693.1.1 ]
  %479 = add nuw nsw i64 %polly.indvar688.2.1, 32
  %480 = mul nuw nsw i64 %479, 640
  %481 = trunc i64 %479 to i32
  %broadcast.splatinsert982 = insertelement <4 x i32> poison, i32 %481, i32 0
  %broadcast.splat983 = shufflevector <4 x i32> %broadcast.splatinsert982, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %polly.loop_header685.2.1
  %index976 = phi i64 [ 0, %polly.loop_header685.2.1 ], [ %index.next977, %vector.body974 ]
  %vec.ind980 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.1 ], [ %vec.ind.next981, %vector.body974 ]
  %482 = add nuw nsw <4 x i64> %vec.ind980, <i64 64, i64 64, i64 64, i64 64>
  %483 = trunc <4 x i64> %482 to <4 x i32>
  %484 = mul <4 x i32> %broadcast.splat983, %483
  %485 = add <4 x i32> %484, <i32 3, i32 3, i32 3, i32 3>
  %486 = urem <4 x i32> %485, <i32 80, i32 80, i32 80, i32 80>
  %487 = sitofp <4 x i32> %486 to <4 x double>
  %488 = fmul fast <4 x double> %487, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %489 = extractelement <4 x i64> %482, i32 0
  %490 = shl i64 %489, 3
  %491 = add nuw nsw i64 %490, %480
  %492 = getelementptr i8, i8* %call, i64 %491
  %493 = bitcast i8* %492 to <4 x double>*
  store <4 x double> %488, <4 x double>* %493, align 8, !alias.scope !87, !noalias !89
  %index.next977 = add i64 %index976, 4
  %vec.ind.next981 = add <4 x i64> %vec.ind980, <i64 4, i64 4, i64 4, i64 4>
  %494 = icmp eq i64 %index.next977, 16
  br i1 %494, label %polly.loop_exit693.2.1, label %vector.body974, !llvm.loop !111

polly.loop_exit693.2.1:                           ; preds = %vector.body974
  %polly.indvar_next689.2.1 = add nuw nsw i64 %polly.indvar688.2.1, 1
  %exitcond821.2.1.not = icmp eq i64 %polly.indvar_next689.2.1, 32
  br i1 %exitcond821.2.1.not, label %polly.loop_header685.2871, label %polly.loop_header685.2.1

polly.loop_header685.2871:                        ; preds = %polly.loop_exit693.2.1, %polly.loop_exit693.2882
  %polly.indvar688.2870 = phi i64 [ %polly.indvar_next689.2880, %polly.loop_exit693.2882 ], [ 0, %polly.loop_exit693.2.1 ]
  %495 = add nuw nsw i64 %polly.indvar688.2870, 64
  %496 = mul nuw nsw i64 %495, 640
  %497 = trunc i64 %495 to i32
  %broadcast.splatinsert996 = insertelement <4 x i32> poison, i32 %497, i32 0
  %broadcast.splat997 = shufflevector <4 x i32> %broadcast.splatinsert996, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %polly.loop_header685.2871
  %index988 = phi i64 [ 0, %polly.loop_header685.2871 ], [ %index.next989, %vector.body986 ]
  %vec.ind994 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.2871 ], [ %vec.ind.next995, %vector.body986 ]
  %498 = mul <4 x i32> %vec.ind994, %broadcast.splat997
  %499 = add <4 x i32> %498, <i32 3, i32 3, i32 3, i32 3>
  %500 = urem <4 x i32> %499, <i32 80, i32 80, i32 80, i32 80>
  %501 = sitofp <4 x i32> %500 to <4 x double>
  %502 = fmul fast <4 x double> %501, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %503 = shl i64 %index988, 3
  %504 = add nuw nsw i64 %503, %496
  %505 = getelementptr i8, i8* %call, i64 %504
  %506 = bitcast i8* %505 to <4 x double>*
  store <4 x double> %502, <4 x double>* %506, align 8, !alias.scope !87, !noalias !89
  %index.next989 = add i64 %index988, 4
  %vec.ind.next995 = add <4 x i32> %vec.ind994, <i32 4, i32 4, i32 4, i32 4>
  %507 = icmp eq i64 %index.next989, 32
  br i1 %507, label %polly.loop_exit693.2882, label %vector.body986, !llvm.loop !112

polly.loop_exit693.2882:                          ; preds = %vector.body986
  %polly.indvar_next689.2880 = add nuw nsw i64 %polly.indvar688.2870, 1
  %exitcond821.2881.not = icmp eq i64 %polly.indvar_next689.2880, 16
  br i1 %exitcond821.2881.not, label %polly.loop_header685.1.2, label %polly.loop_header685.2871

polly.loop_header685.1.2:                         ; preds = %polly.loop_exit693.2882, %polly.loop_exit693.1.2
  %polly.indvar688.1.2 = phi i64 [ %polly.indvar_next689.1.2, %polly.loop_exit693.1.2 ], [ 0, %polly.loop_exit693.2882 ]
  %508 = add nuw nsw i64 %polly.indvar688.1.2, 64
  %509 = mul nuw nsw i64 %508, 640
  %510 = trunc i64 %508 to i32
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %510, i32 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %polly.loop_header685.1.2
  %index1002 = phi i64 [ 0, %polly.loop_header685.1.2 ], [ %index.next1003, %vector.body1000 ]
  %vec.ind1006 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.2 ], [ %vec.ind.next1007, %vector.body1000 ]
  %511 = add nuw nsw <4 x i64> %vec.ind1006, <i64 32, i64 32, i64 32, i64 32>
  %512 = trunc <4 x i64> %511 to <4 x i32>
  %513 = mul <4 x i32> %broadcast.splat1009, %512
  %514 = add <4 x i32> %513, <i32 3, i32 3, i32 3, i32 3>
  %515 = urem <4 x i32> %514, <i32 80, i32 80, i32 80, i32 80>
  %516 = sitofp <4 x i32> %515 to <4 x double>
  %517 = fmul fast <4 x double> %516, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %518 = extractelement <4 x i64> %511, i32 0
  %519 = shl i64 %518, 3
  %520 = add nuw nsw i64 %519, %509
  %521 = getelementptr i8, i8* %call, i64 %520
  %522 = bitcast i8* %521 to <4 x double>*
  store <4 x double> %517, <4 x double>* %522, align 8, !alias.scope !87, !noalias !89
  %index.next1003 = add i64 %index1002, 4
  %vec.ind.next1007 = add <4 x i64> %vec.ind1006, <i64 4, i64 4, i64 4, i64 4>
  %523 = icmp eq i64 %index.next1003, 32
  br i1 %523, label %polly.loop_exit693.1.2, label %vector.body1000, !llvm.loop !113

polly.loop_exit693.1.2:                           ; preds = %vector.body1000
  %polly.indvar_next689.1.2 = add nuw nsw i64 %polly.indvar688.1.2, 1
  %exitcond821.1.2.not = icmp eq i64 %polly.indvar_next689.1.2, 16
  br i1 %exitcond821.1.2.not, label %polly.loop_header685.2.2, label %polly.loop_header685.1.2

polly.loop_header685.2.2:                         ; preds = %polly.loop_exit693.1.2, %polly.loop_exit693.2.2
  %polly.indvar688.2.2 = phi i64 [ %polly.indvar_next689.2.2, %polly.loop_exit693.2.2 ], [ 0, %polly.loop_exit693.1.2 ]
  %524 = add nuw nsw i64 %polly.indvar688.2.2, 64
  %525 = mul nuw nsw i64 %524, 640
  %526 = trunc i64 %524 to i32
  %broadcast.splatinsert1020 = insertelement <4 x i32> poison, i32 %526, i32 0
  %broadcast.splat1021 = shufflevector <4 x i32> %broadcast.splatinsert1020, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %polly.loop_header685.2.2
  %index1014 = phi i64 [ 0, %polly.loop_header685.2.2 ], [ %index.next1015, %vector.body1012 ]
  %vec.ind1018 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.2 ], [ %vec.ind.next1019, %vector.body1012 ]
  %527 = add nuw nsw <4 x i64> %vec.ind1018, <i64 64, i64 64, i64 64, i64 64>
  %528 = trunc <4 x i64> %527 to <4 x i32>
  %529 = mul <4 x i32> %broadcast.splat1021, %528
  %530 = add <4 x i32> %529, <i32 3, i32 3, i32 3, i32 3>
  %531 = urem <4 x i32> %530, <i32 80, i32 80, i32 80, i32 80>
  %532 = sitofp <4 x i32> %531 to <4 x double>
  %533 = fmul fast <4 x double> %532, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %534 = extractelement <4 x i64> %527, i32 0
  %535 = shl i64 %534, 3
  %536 = add nuw nsw i64 %535, %525
  %537 = getelementptr i8, i8* %call, i64 %536
  %538 = bitcast i8* %537 to <4 x double>*
  store <4 x double> %533, <4 x double>* %538, align 8, !alias.scope !87, !noalias !89
  %index.next1015 = add i64 %index1014, 4
  %vec.ind.next1019 = add <4 x i64> %vec.ind1018, <i64 4, i64 4, i64 4, i64 4>
  %539 = icmp eq i64 %index.next1015, 16
  br i1 %539, label %polly.loop_exit693.2.2, label %vector.body1012, !llvm.loop !114

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
!24 = !{!"llvm.loop.tile.size", i32 16}
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
!44 = !{!"llvm.loop.tile.size", i32 128}
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
