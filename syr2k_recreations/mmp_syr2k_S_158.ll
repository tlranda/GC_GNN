; ModuleID = 'syr2k_recreations//mmp_syr2k_S_158.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_158.c"
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
  %call706 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1567 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1567, %call2
  %polly.access.call2587 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2587, %call1
  %2 = or i1 %0, %1
  %polly.access.call607 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call607, %call2
  %4 = icmp ule i8* %polly.access.call2587, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call607, %call1
  %8 = icmp ule i8* %polly.access.call1567, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header692, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep920 = getelementptr i8, i8* %call2, i64 %12
  %scevgep919 = getelementptr i8, i8* %call2, i64 %11
  %scevgep918 = getelementptr i8, i8* %call1, i64 %12
  %scevgep917 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep917, %scevgep920
  %bound1 = icmp ult i8* %scevgep919, %scevgep918
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
  br i1 %exitcond18.not.i, label %vector.ph924, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph924:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert931 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat932 = shufflevector <4 x i64> %broadcast.splatinsert931, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %vector.ph924
  %index925 = phi i64 [ 0, %vector.ph924 ], [ %index.next926, %vector.body923 ]
  %vec.ind929 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph924 ], [ %vec.ind.next930, %vector.body923 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind929, %broadcast.splat932
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call706, i64 %indvars.iv7.i, i64 %index925
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next926 = add i64 %index925, 4
  %vec.ind.next930 = add <4 x i64> %vec.ind929, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next926, 80
  br i1 %40, label %for.inc41.i, label %vector.body923, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body923
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph924, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit753.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header487, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1280, label %vector.ph1206

vector.ph1206:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %vector.ph1206
  %index1207 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1208, %vector.body1205 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call706, i64 %indvars.iv21.i, i64 %index1207
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1208 = add i64 %index1207, 4
  %46 = icmp eq i64 %index.next1208, %n.vec
  br i1 %46, label %middle.block1203, label %vector.body1205, !llvm.loop !18

middle.block1203:                                 ; preds = %vector.body1205
  %cmp.n1210 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1210, label %for.inc6.i, label %for.body3.i46.preheader1280

for.body3.i46.preheader1280:                      ; preds = %for.body3.i46.preheader, %middle.block1203
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1203 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1280, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1280 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call706, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1203, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call706, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit511
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header334, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1226 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1226, label %for.body3.i60.preheader1278, label %vector.ph1227

vector.ph1227:                                    ; preds = %for.body3.i60.preheader
  %n.vec1229 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %vector.ph1227
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1231, %vector.body1225 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call706, i64 %indvars.iv21.i52, i64 %index1230
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1234 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1234, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1231 = add i64 %index1230, 4
  %57 = icmp eq i64 %index.next1231, %n.vec1229
  br i1 %57, label %middle.block1223, label %vector.body1225, !llvm.loop !50

middle.block1223:                                 ; preds = %vector.body1225
  %cmp.n1233 = icmp eq i64 %indvars.iv21.i52, %n.vec1229
  br i1 %cmp.n1233, label %for.inc6.i63, label %for.body3.i60.preheader1278

for.body3.i60.preheader1278:                      ; preds = %for.body3.i60.preheader, %middle.block1223
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1229, %middle.block1223 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1278, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1278 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call706, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !51

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1223, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call706, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit358
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1252 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1252, label %for.body3.i99.preheader1276, label %vector.ph1253

vector.ph1253:                                    ; preds = %for.body3.i99.preheader
  %n.vec1255 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1257, %vector.body1251 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call706, i64 %indvars.iv21.i91, i64 %index1256
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1260 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1260, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1257 = add i64 %index1256, 4
  %68 = icmp eq i64 %index.next1257, %n.vec1255
  br i1 %68, label %middle.block1249, label %vector.body1251, !llvm.loop !52

middle.block1249:                                 ; preds = %vector.body1251
  %cmp.n1259 = icmp eq i64 %indvars.iv21.i91, %n.vec1255
  br i1 %cmp.n1259, label %for.inc6.i102, label %for.body3.i99.preheader1276

for.body3.i99.preheader1276:                      ; preds = %for.body3.i99.preheader, %middle.block1249
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1255, %middle.block1249 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1276, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1276 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call706, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !53

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1249, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call706, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call706, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1264 = phi i64 [ %indvar.next1265, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1264, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1266 = icmp ult i64 %88, 4
  br i1 %min.iters.check1266, label %polly.loop_header191.preheader, label %vector.ph1267

vector.ph1267:                                    ; preds = %polly.loop_header
  %n.vec1269 = and i64 %88, -4
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1267
  %index1270 = phi i64 [ 0, %vector.ph1267 ], [ %index.next1271, %vector.body1263 ]
  %90 = shl nuw nsw i64 %index1270, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1274 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !58, !noalias !60
  %93 = fmul fast <4 x double> %wide.load1274, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !58, !noalias !60
  %index.next1271 = add i64 %index1270, 4
  %95 = icmp eq i64 %index.next1271, %n.vec1269
  br i1 %95, label %middle.block1261, label %vector.body1263, !llvm.loop !63

middle.block1261:                                 ; preds = %vector.body1263
  %cmp.n1273 = icmp eq i64 %88, %n.vec1269
  br i1 %cmp.n1273, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1261
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1269, %middle.block1261 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1261
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1265 = add i64 %indvar1264, 1
  br i1 %exitcond782.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond781.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond781.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv777 = phi i64 [ %indvars.iv.next778, %polly.loop_exit207 ], [ 1, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nsw i64 %polly.indvar202, 2
  %98 = mul nsw i64 %polly.indvar202, 1920
  %99 = mul nsw i64 %polly.indvar202, 2560
  %100 = or i64 %97, 1
  %101 = mul nuw nsw i64 %100, 480
  %102 = mul nuw nsw i64 %100, 640
  %103 = or i64 %97, 2
  %104 = mul nuw nsw i64 %103, 480
  %105 = mul nuw nsw i64 %103, 640
  %106 = or i64 %97, 3
  %107 = mul nuw nsw i64 %106, 480
  %108 = mul nuw nsw i64 %106, 640
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit219.3
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %indvars.iv.next778 = add nuw nsw i64 %indvars.iv777, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next203, 20
  br i1 %exitcond780.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit219.3, %polly.loop_header199
  %indvars.iv771 = phi i64 [ %indvars.iv.next772, %polly.loop_exit219.3 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit219.3 ], [ 0, %polly.loop_header199 ]
  %109 = shl nsw i64 %polly.indvar208, 2
  %110 = sub nsw i64 %97, %109
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv771, i64 3)
  %polly.loop_guard897 = icmp sgt i64 %110, -1
  br i1 %polly.loop_guard897, label %polly.loop_header217.us, label %polly.loop_exit219

polly.loop_header217.us:                          ; preds = %polly.loop_header205, %polly.loop_exit225.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit225.loopexit.us ], [ 0, %polly.loop_header205 ]
  %111 = shl nuw nsw i64 %polly.indvar220.us, 3
  %scevgep229.us = getelementptr i8, i8* %call1, i64 %111
  %scevgep233.us = getelementptr i8, i8* %call2, i64 %111
  %scevgep234.us = getelementptr i8, i8* %scevgep233.us, i64 %98
  %scevgep234235.us = bitcast i8* %scevgep234.us to double*
  %_p_scalar_236.us = load double, double* %scevgep234235.us, align 8, !alias.scope !62, !noalias !66
  %scevgep242.us = getelementptr i8, i8* %scevgep229.us, i64 %98
  %scevgep242243.us = bitcast i8* %scevgep242.us to double*
  %_p_scalar_244.us = load double, double* %scevgep242243.us, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header217.us
  %polly.indvar226.us = phi i64 [ 0, %polly.loop_header217.us ], [ %polly.indvar_next227.us, %polly.loop_header223.us ]
  %112 = add nuw nsw i64 %polly.indvar226.us, %109
  %113 = mul nuw nsw i64 %112, 480
  %scevgep230.us = getelementptr i8, i8* %scevgep229.us, i64 %113
  %scevgep230231.us = bitcast i8* %scevgep230.us to double*
  %_p_scalar_232.us = load double, double* %scevgep230231.us, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us = fmul fast double %_p_scalar_236.us, %_p_scalar_232.us
  %scevgep238.us = getelementptr i8, i8* %scevgep233.us, i64 %113
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us = fmul fast double %_p_scalar_244.us, %_p_scalar_240.us
  %114 = shl i64 %112, 3
  %115 = add nuw nsw i64 %114, %99
  %scevgep245.us = getelementptr i8, i8* %call, i64 %115
  %scevgep245246.us = bitcast i8* %scevgep245.us to double*
  %_p_scalar_247.us = load double, double* %scevgep245246.us, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_247.us
  store double %p_add42.i118.us, double* %scevgep245246.us, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar226.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit225.loopexit.us, label %polly.loop_header223.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_header223.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond775.not = icmp eq i64 %polly.indvar_next221.us, 60
  br i1 %exitcond775.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header205
  %indvars.iv.next774 = or i64 %indvars.iv771, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next774, i64 3)
  %polly.loop_guard.1898 = icmp sgt i64 %110, -1
  br i1 %polly.loop_guard.1898, label %polly.loop_header217.us.1, label %polly.loop_exit219.1

polly.loop_header334:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit342
  %indvar1238 = phi i64 [ %indvar.next1239, %polly.loop_exit342 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar337 = phi i64 [ %polly.indvar_next338, %polly.loop_exit342 ], [ 1, %kernel_syr2k.exit ]
  %116 = add i64 %indvar1238, 1
  %117 = mul nuw nsw i64 %polly.indvar337, 640
  %scevgep346 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1240 = icmp ult i64 %116, 4
  br i1 %min.iters.check1240, label %polly.loop_header340.preheader, label %vector.ph1241

vector.ph1241:                                    ; preds = %polly.loop_header334
  %n.vec1243 = and i64 %116, -4
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %vector.ph1241
  %index1244 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1245, %vector.body1237 ]
  %118 = shl nuw nsw i64 %index1244, 3
  %119 = getelementptr i8, i8* %scevgep346, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1248 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !68, !noalias !70
  %121 = fmul fast <4 x double> %wide.load1248, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !68, !noalias !70
  %index.next1245 = add i64 %index1244, 4
  %123 = icmp eq i64 %index.next1245, %n.vec1243
  br i1 %123, label %middle.block1235, label %vector.body1237, !llvm.loop !73

middle.block1235:                                 ; preds = %vector.body1237
  %cmp.n1247 = icmp eq i64 %116, %n.vec1243
  br i1 %cmp.n1247, label %polly.loop_exit342, label %polly.loop_header340.preheader

polly.loop_header340.preheader:                   ; preds = %polly.loop_header334, %middle.block1235
  %polly.indvar343.ph = phi i64 [ 0, %polly.loop_header334 ], [ %n.vec1243, %middle.block1235 ]
  br label %polly.loop_header340

polly.loop_exit342:                               ; preds = %polly.loop_header340, %middle.block1235
  %polly.indvar_next338 = add nuw nsw i64 %polly.indvar337, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next338, 80
  %indvar.next1239 = add i64 %indvar1238, 1
  br i1 %exitcond798.not, label %polly.loop_header350, label %polly.loop_header334

polly.loop_header340:                             ; preds = %polly.loop_header340.preheader, %polly.loop_header340
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_header340 ], [ %polly.indvar343.ph, %polly.loop_header340.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar343, 3
  %scevgep347 = getelementptr i8, i8* %scevgep346, i64 %124
  %scevgep347348 = bitcast i8* %scevgep347 to double*
  %_p_scalar_349 = load double, double* %scevgep347348, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_349, 1.200000e+00
  store double %p_mul.i57, double* %scevgep347348, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next344, %polly.indvar337
  br i1 %exitcond797.not, label %polly.loop_exit342, label %polly.loop_header340, !llvm.loop !74

polly.loop_header350:                             ; preds = %polly.loop_exit342, %polly.loop_exit358
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit358 ], [ 1, %polly.loop_exit342 ]
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %polly.loop_exit358 ], [ 0, %polly.loop_exit342 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 0, %polly.loop_exit342 ]
  %125 = shl nsw i64 %polly.indvar353, 2
  %126 = mul nsw i64 %polly.indvar353, 1920
  %127 = mul nsw i64 %polly.indvar353, 2560
  %128 = or i64 %125, 1
  %129 = mul nuw nsw i64 %128, 480
  %130 = mul nuw nsw i64 %128, 640
  %131 = or i64 %125, 2
  %132 = mul nuw nsw i64 %131, 480
  %133 = mul nuw nsw i64 %131, 640
  %134 = or i64 %125, 3
  %135 = mul nuw nsw i64 %134, 480
  %136 = mul nuw nsw i64 %134, 640
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_exit370.3
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 4
  %indvars.iv.next794 = add nuw nsw i64 %indvars.iv793, 1
  %exitcond796.not = icmp eq i64 %polly.indvar_next354, 20
  br i1 %exitcond796.not, label %kernel_syr2k.exit90, label %polly.loop_header350

polly.loop_header356:                             ; preds = %polly.loop_exit370.3, %polly.loop_header350
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit370.3 ], [ %indvars.iv783, %polly.loop_header350 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit370.3 ], [ 0, %polly.loop_header350 ]
  %137 = shl nsw i64 %polly.indvar359, 2
  %138 = sub nsw i64 %125, %137
  %smin789 = call i64 @llvm.smin.i64(i64 %indvars.iv785, i64 3)
  %polly.loop_guard378901 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard378901, label %polly.loop_header368.us, label %polly.loop_exit370

polly.loop_header368.us:                          ; preds = %polly.loop_header356, %polly.loop_exit377.loopexit.us
  %polly.indvar371.us = phi i64 [ %polly.indvar_next372.us, %polly.loop_exit377.loopexit.us ], [ 0, %polly.loop_header356 ]
  %139 = shl nuw nsw i64 %polly.indvar371.us, 3
  %scevgep382.us = getelementptr i8, i8* %call1, i64 %139
  %scevgep386.us = getelementptr i8, i8* %call2, i64 %139
  %scevgep387.us = getelementptr i8, i8* %scevgep386.us, i64 %126
  %scevgep387388.us = bitcast i8* %scevgep387.us to double*
  %_p_scalar_389.us = load double, double* %scevgep387388.us, align 8, !alias.scope !72, !noalias !75
  %scevgep395.us = getelementptr i8, i8* %scevgep382.us, i64 %126
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header375.us

polly.loop_header375.us:                          ; preds = %polly.loop_header375.us, %polly.loop_header368.us
  %polly.indvar379.us = phi i64 [ 0, %polly.loop_header368.us ], [ %polly.indvar_next380.us, %polly.loop_header375.us ]
  %140 = add nuw nsw i64 %polly.indvar379.us, %137
  %141 = mul nuw nsw i64 %140, 480
  %scevgep383.us = getelementptr i8, i8* %scevgep382.us, i64 %141
  %scevgep383384.us = bitcast i8* %scevgep383.us to double*
  %_p_scalar_385.us = load double, double* %scevgep383384.us, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us = fmul fast double %_p_scalar_389.us, %_p_scalar_385.us
  %scevgep391.us = getelementptr i8, i8* %scevgep386.us, i64 %141
  %scevgep391392.us = bitcast i8* %scevgep391.us to double*
  %_p_scalar_393.us = load double, double* %scevgep391392.us, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us = fmul fast double %_p_scalar_397.us, %_p_scalar_393.us
  %142 = shl i64 %140, 3
  %143 = add nuw nsw i64 %142, %127
  %scevgep398.us = getelementptr i8, i8* %call, i64 %143
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_400.us
  store double %p_add42.i79.us, double* %scevgep398399.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next380.us = add nuw nsw i64 %polly.indvar379.us, 1
  %exitcond790.not = icmp eq i64 %polly.indvar379.us, %smin789
  br i1 %exitcond790.not, label %polly.loop_exit377.loopexit.us, label %polly.loop_header375.us

polly.loop_exit377.loopexit.us:                   ; preds = %polly.loop_header375.us
  %polly.indvar_next372.us = add nuw nsw i64 %polly.indvar371.us, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next372.us, 60
  br i1 %exitcond791.not, label %polly.loop_exit370, label %polly.loop_header368.us

polly.loop_exit370:                               ; preds = %polly.loop_exit377.loopexit.us, %polly.loop_header356
  %indvars.iv.next788 = or i64 %indvars.iv785, 1
  %smin789.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next788, i64 3)
  %polly.loop_guard378.1902 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard378.1902, label %polly.loop_header368.us.1, label %polly.loop_exit370.1

polly.loop_header487:                             ; preds = %init_array.exit, %polly.loop_exit495
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit495 ], [ 0, %init_array.exit ]
  %polly.indvar490 = phi i64 [ %polly.indvar_next491, %polly.loop_exit495 ], [ 1, %init_array.exit ]
  %144 = add i64 %indvar, 1
  %145 = mul nuw nsw i64 %polly.indvar490, 640
  %scevgep499 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1214 = icmp ult i64 %144, 4
  br i1 %min.iters.check1214, label %polly.loop_header493.preheader, label %vector.ph1215

vector.ph1215:                                    ; preds = %polly.loop_header487
  %n.vec1217 = and i64 %144, -4
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1215
  %index1218 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1219, %vector.body1213 ]
  %146 = shl nuw nsw i64 %index1218, 3
  %147 = getelementptr i8, i8* %scevgep499, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1222 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !77, !noalias !79
  %149 = fmul fast <4 x double> %wide.load1222, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !77, !noalias !79
  %index.next1219 = add i64 %index1218, 4
  %151 = icmp eq i64 %index.next1219, %n.vec1217
  br i1 %151, label %middle.block1211, label %vector.body1213, !llvm.loop !82

middle.block1211:                                 ; preds = %vector.body1213
  %cmp.n1221 = icmp eq i64 %144, %n.vec1217
  br i1 %cmp.n1221, label %polly.loop_exit495, label %polly.loop_header493.preheader

polly.loop_header493.preheader:                   ; preds = %polly.loop_header487, %middle.block1211
  %polly.indvar496.ph = phi i64 [ 0, %polly.loop_header487 ], [ %n.vec1217, %middle.block1211 ]
  br label %polly.loop_header493

polly.loop_exit495:                               ; preds = %polly.loop_header493, %middle.block1211
  %polly.indvar_next491 = add nuw nsw i64 %polly.indvar490, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next491, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond814.not, label %polly.loop_header503, label %polly.loop_header487

polly.loop_header493:                             ; preds = %polly.loop_header493.preheader, %polly.loop_header493
  %polly.indvar496 = phi i64 [ %polly.indvar_next497, %polly.loop_header493 ], [ %polly.indvar496.ph, %polly.loop_header493.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar496, 3
  %scevgep500 = getelementptr i8, i8* %scevgep499, i64 %152
  %scevgep500501 = bitcast i8* %scevgep500 to double*
  %_p_scalar_502 = load double, double* %scevgep500501, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_502, 1.200000e+00
  store double %p_mul.i, double* %scevgep500501, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next497 = add nuw nsw i64 %polly.indvar496, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next497, %polly.indvar490
  br i1 %exitcond813.not, label %polly.loop_exit495, label %polly.loop_header493, !llvm.loop !83

polly.loop_header503:                             ; preds = %polly.loop_exit495, %polly.loop_exit511
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit511 ], [ 1, %polly.loop_exit495 ]
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %polly.loop_exit511 ], [ 0, %polly.loop_exit495 ]
  %polly.indvar506 = phi i64 [ %polly.indvar_next507, %polly.loop_exit511 ], [ 0, %polly.loop_exit495 ]
  %153 = shl nsw i64 %polly.indvar506, 2
  %154 = mul nsw i64 %polly.indvar506, 1920
  %155 = mul nsw i64 %polly.indvar506, 2560
  %156 = or i64 %153, 1
  %157 = mul nuw nsw i64 %156, 480
  %158 = mul nuw nsw i64 %156, 640
  %159 = or i64 %153, 2
  %160 = mul nuw nsw i64 %159, 480
  %161 = mul nuw nsw i64 %159, 640
  %162 = or i64 %153, 3
  %163 = mul nuw nsw i64 %162, 480
  %164 = mul nuw nsw i64 %162, 640
  br label %polly.loop_header509

polly.loop_exit511:                               ; preds = %polly.loop_exit523.3
  %polly.indvar_next507 = add nuw nsw i64 %polly.indvar506, 1
  %indvars.iv.next800 = add nuw nsw i64 %indvars.iv799, 4
  %indvars.iv.next810 = add nuw nsw i64 %indvars.iv809, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next507, 20
  br i1 %exitcond812.not, label %kernel_syr2k.exit, label %polly.loop_header503

polly.loop_header509:                             ; preds = %polly.loop_exit523.3, %polly.loop_header503
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit523.3 ], [ %indvars.iv799, %polly.loop_header503 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit523.3 ], [ 0, %polly.loop_header503 ]
  %165 = shl nsw i64 %polly.indvar512, 2
  %166 = sub nsw i64 %153, %165
  %smin805 = call i64 @llvm.smin.i64(i64 %indvars.iv801, i64 3)
  %polly.loop_guard531905 = icmp sgt i64 %166, -1
  br i1 %polly.loop_guard531905, label %polly.loop_header521.us, label %polly.loop_exit523

polly.loop_header521.us:                          ; preds = %polly.loop_header509, %polly.loop_exit530.loopexit.us
  %polly.indvar524.us = phi i64 [ %polly.indvar_next525.us, %polly.loop_exit530.loopexit.us ], [ 0, %polly.loop_header509 ]
  %167 = shl nuw nsw i64 %polly.indvar524.us, 3
  %scevgep535.us = getelementptr i8, i8* %call1, i64 %167
  %scevgep539.us = getelementptr i8, i8* %call2, i64 %167
  %scevgep540.us = getelementptr i8, i8* %scevgep539.us, i64 %154
  %scevgep540541.us = bitcast i8* %scevgep540.us to double*
  %_p_scalar_542.us = load double, double* %scevgep540541.us, align 8, !alias.scope !81, !noalias !84
  %scevgep548.us = getelementptr i8, i8* %scevgep535.us, i64 %154
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header528.us

polly.loop_header528.us:                          ; preds = %polly.loop_header528.us, %polly.loop_header521.us
  %polly.indvar532.us = phi i64 [ 0, %polly.loop_header521.us ], [ %polly.indvar_next533.us, %polly.loop_header528.us ]
  %168 = add nuw nsw i64 %polly.indvar532.us, %165
  %169 = mul nuw nsw i64 %168, 480
  %scevgep536.us = getelementptr i8, i8* %scevgep535.us, i64 %169
  %scevgep536537.us = bitcast i8* %scevgep536.us to double*
  %_p_scalar_538.us = load double, double* %scevgep536537.us, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us = fmul fast double %_p_scalar_542.us, %_p_scalar_538.us
  %scevgep544.us = getelementptr i8, i8* %scevgep539.us, i64 %169
  %scevgep544545.us = bitcast i8* %scevgep544.us to double*
  %_p_scalar_546.us = load double, double* %scevgep544545.us, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_546.us
  %170 = shl i64 %168, 3
  %171 = add nuw nsw i64 %170, %155
  %scevgep551.us = getelementptr i8, i8* %call, i64 %171
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_553.us
  store double %p_add42.i.us, double* %scevgep551552.us, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next533.us = add nuw nsw i64 %polly.indvar532.us, 1
  %exitcond806.not = icmp eq i64 %polly.indvar532.us, %smin805
  br i1 %exitcond806.not, label %polly.loop_exit530.loopexit.us, label %polly.loop_header528.us

polly.loop_exit530.loopexit.us:                   ; preds = %polly.loop_header528.us
  %polly.indvar_next525.us = add nuw nsw i64 %polly.indvar524.us, 1
  %exitcond807.not = icmp eq i64 %polly.indvar_next525.us, 60
  br i1 %exitcond807.not, label %polly.loop_exit523, label %polly.loop_header521.us

polly.loop_exit523:                               ; preds = %polly.loop_exit530.loopexit.us, %polly.loop_header509
  %indvars.iv.next804 = or i64 %indvars.iv801, 1
  %smin805.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next804, i64 3)
  %polly.loop_guard531.1906 = icmp sgt i64 %166, -1
  br i1 %polly.loop_guard531.1906, label %polly.loop_header521.us.1, label %polly.loop_exit523.1

polly.loop_header692:                             ; preds = %entry, %polly.loop_exit700
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit700 ], [ 0, %entry ]
  %172 = mul nuw nsw i64 %polly.indvar695, 640
  %173 = trunc i64 %polly.indvar695 to i32
  %broadcast.splatinsert945 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat946 = shufflevector <4 x i32> %broadcast.splatinsert945, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body935

vector.body935:                                   ; preds = %vector.body935, %polly.loop_header692
  %index937 = phi i64 [ 0, %polly.loop_header692 ], [ %index.next938, %vector.body935 ]
  %vec.ind943 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header692 ], [ %vec.ind.next944, %vector.body935 ]
  %174 = mul <4 x i32> %vec.ind943, %broadcast.splat946
  %175 = add <4 x i32> %174, <i32 3, i32 3, i32 3, i32 3>
  %176 = urem <4 x i32> %175, <i32 80, i32 80, i32 80, i32 80>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %179 = shl i64 %index937, 3
  %180 = add nuw nsw i64 %179, %172
  %181 = getelementptr i8, i8* %call, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !86, !noalias !88
  %index.next938 = add i64 %index937, 4
  %vec.ind.next944 = add <4 x i32> %vec.ind943, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next938, 32
  br i1 %183, label %polly.loop_exit700, label %vector.body935, !llvm.loop !91

polly.loop_exit700:                               ; preds = %vector.body935
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next696, 32
  br i1 %exitcond834.not, label %polly.loop_header692.1, label %polly.loop_header692

polly.loop_header719:                             ; preds = %polly.loop_exit700.2.2, %polly.loop_exit727
  %polly.indvar722 = phi i64 [ %polly.indvar_next723, %polly.loop_exit727 ], [ 0, %polly.loop_exit700.2.2 ]
  %184 = mul nuw nsw i64 %polly.indvar722, 480
  %185 = trunc i64 %polly.indvar722 to i32
  %broadcast.splatinsert1059 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1060 = shufflevector <4 x i32> %broadcast.splatinsert1059, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %polly.loop_header719
  %index1051 = phi i64 [ 0, %polly.loop_header719 ], [ %index.next1052, %vector.body1049 ]
  %vec.ind1057 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header719 ], [ %vec.ind.next1058, %vector.body1049 ]
  %186 = mul <4 x i32> %vec.ind1057, %broadcast.splat1060
  %187 = add <4 x i32> %186, <i32 2, i32 2, i32 2, i32 2>
  %188 = urem <4 x i32> %187, <i32 60, i32 60, i32 60, i32 60>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %191 = shl i64 %index1051, 3
  %192 = add i64 %191, %184
  %193 = getelementptr i8, i8* %call2, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !90, !noalias !92
  %index.next1052 = add i64 %index1051, 4
  %vec.ind.next1058 = add <4 x i32> %vec.ind1057, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1052, 32
  br i1 %195, label %polly.loop_exit727, label %vector.body1049, !llvm.loop !93

polly.loop_exit727:                               ; preds = %vector.body1049
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next723, 32
  br i1 %exitcond825.not, label %polly.loop_header719.1, label %polly.loop_header719

polly.loop_header745:                             ; preds = %polly.loop_exit727.1.2, %polly.loop_exit753
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_exit753 ], [ 0, %polly.loop_exit727.1.2 ]
  %196 = mul nuw nsw i64 %polly.indvar748, 480
  %197 = trunc i64 %polly.indvar748 to i32
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header745
  %index1129 = phi i64 [ 0, %polly.loop_header745 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1135 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header745 ], [ %vec.ind.next1136, %vector.body1127 ]
  %198 = mul <4 x i32> %vec.ind1135, %broadcast.splat1138
  %199 = add <4 x i32> %198, <i32 1, i32 1, i32 1, i32 1>
  %200 = urem <4 x i32> %199, <i32 80, i32 80, i32 80, i32 80>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %203 = shl i64 %index1129, 3
  %204 = add i64 %203, %196
  %205 = getelementptr i8, i8* %call1, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !89, !noalias !94
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1136 = add <4 x i32> %vec.ind1135, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next1130, 32
  br i1 %207, label %polly.loop_exit753, label %vector.body1127, !llvm.loop !95

polly.loop_exit753:                               ; preds = %vector.body1127
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next749, 32
  br i1 %exitcond819.not, label %polly.loop_header745.1, label %polly.loop_header745

polly.loop_header217.us.1:                        ; preds = %polly.loop_exit219, %polly.loop_exit225.loopexit.us.1
  %polly.indvar220.us.1 = phi i64 [ %polly.indvar_next221.us.1, %polly.loop_exit225.loopexit.us.1 ], [ 0, %polly.loop_exit219 ]
  %208 = shl nuw nsw i64 %polly.indvar220.us.1, 3
  %scevgep229.us.1 = getelementptr i8, i8* %call1, i64 %208
  %scevgep233.us.1 = getelementptr i8, i8* %call2, i64 %208
  %scevgep234.us.1 = getelementptr i8, i8* %scevgep233.us.1, i64 %101
  %scevgep234235.us.1 = bitcast i8* %scevgep234.us.1 to double*
  %_p_scalar_236.us.1 = load double, double* %scevgep234235.us.1, align 8, !alias.scope !62, !noalias !66
  %scevgep242.us.1 = getelementptr i8, i8* %scevgep229.us.1, i64 %101
  %scevgep242243.us.1 = bitcast i8* %scevgep242.us.1 to double*
  %_p_scalar_244.us.1 = load double, double* %scevgep242243.us.1, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.us.1

polly.loop_header223.us.1:                        ; preds = %polly.loop_header223.us.1, %polly.loop_header217.us.1
  %polly.indvar226.us.1 = phi i64 [ 0, %polly.loop_header217.us.1 ], [ %polly.indvar_next227.us.1, %polly.loop_header223.us.1 ]
  %209 = add nuw nsw i64 %polly.indvar226.us.1, %109
  %210 = mul nuw nsw i64 %209, 480
  %scevgep230.us.1 = getelementptr i8, i8* %scevgep229.us.1, i64 %210
  %scevgep230231.us.1 = bitcast i8* %scevgep230.us.1 to double*
  %_p_scalar_232.us.1 = load double, double* %scevgep230231.us.1, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_236.us.1, %_p_scalar_232.us.1
  %scevgep238.us.1 = getelementptr i8, i8* %scevgep233.us.1, i64 %210
  %scevgep238239.us.1 = bitcast i8* %scevgep238.us.1 to double*
  %_p_scalar_240.us.1 = load double, double* %scevgep238239.us.1, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_244.us.1, %_p_scalar_240.us.1
  %211 = shl i64 %209, 3
  %212 = add nuw nsw i64 %211, %102
  %scevgep245.us.1 = getelementptr i8, i8* %call, i64 %212
  %scevgep245246.us.1 = bitcast i8* %scevgep245.us.1 to double*
  %_p_scalar_247.us.1 = load double, double* %scevgep245246.us.1, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_247.us.1
  store double %p_add42.i118.us.1, double* %scevgep245246.us.1, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.loopexit.us.1, label %polly.loop_header223.us.1

polly.loop_exit225.loopexit.us.1:                 ; preds = %polly.loop_header223.us.1
  %polly.indvar_next221.us.1 = add nuw nsw i64 %polly.indvar220.us.1, 1
  %exitcond775.1.not = icmp eq i64 %polly.indvar_next221.us.1, 60
  br i1 %exitcond775.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.us.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.loopexit.us.1, %polly.loop_exit219
  %indvars.iv.next774.1 = add nuw nsw i64 %indvars.iv.next774, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next774.1, i64 3)
  %polly.loop_guard.2899 = icmp sgt i64 %110, -1
  br i1 %polly.loop_guard.2899, label %polly.loop_header217.us.2, label %polly.loop_exit219.2

polly.loop_header217.us.2:                        ; preds = %polly.loop_exit219.1, %polly.loop_exit225.loopexit.us.2
  %polly.indvar220.us.2 = phi i64 [ %polly.indvar_next221.us.2, %polly.loop_exit225.loopexit.us.2 ], [ 0, %polly.loop_exit219.1 ]
  %213 = shl nuw nsw i64 %polly.indvar220.us.2, 3
  %scevgep229.us.2 = getelementptr i8, i8* %call1, i64 %213
  %scevgep233.us.2 = getelementptr i8, i8* %call2, i64 %213
  %scevgep234.us.2 = getelementptr i8, i8* %scevgep233.us.2, i64 %104
  %scevgep234235.us.2 = bitcast i8* %scevgep234.us.2 to double*
  %_p_scalar_236.us.2 = load double, double* %scevgep234235.us.2, align 8, !alias.scope !62, !noalias !66
  %scevgep242.us.2 = getelementptr i8, i8* %scevgep229.us.2, i64 %104
  %scevgep242243.us.2 = bitcast i8* %scevgep242.us.2 to double*
  %_p_scalar_244.us.2 = load double, double* %scevgep242243.us.2, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.us.2

polly.loop_header223.us.2:                        ; preds = %polly.loop_header223.us.2, %polly.loop_header217.us.2
  %polly.indvar226.us.2 = phi i64 [ 0, %polly.loop_header217.us.2 ], [ %polly.indvar_next227.us.2, %polly.loop_header223.us.2 ]
  %214 = add nuw nsw i64 %polly.indvar226.us.2, %109
  %215 = mul nuw nsw i64 %214, 480
  %scevgep230.us.2 = getelementptr i8, i8* %scevgep229.us.2, i64 %215
  %scevgep230231.us.2 = bitcast i8* %scevgep230.us.2 to double*
  %_p_scalar_232.us.2 = load double, double* %scevgep230231.us.2, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_236.us.2, %_p_scalar_232.us.2
  %scevgep238.us.2 = getelementptr i8, i8* %scevgep233.us.2, i64 %215
  %scevgep238239.us.2 = bitcast i8* %scevgep238.us.2 to double*
  %_p_scalar_240.us.2 = load double, double* %scevgep238239.us.2, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_244.us.2, %_p_scalar_240.us.2
  %216 = shl i64 %214, 3
  %217 = add nuw nsw i64 %216, %105
  %scevgep245.us.2 = getelementptr i8, i8* %call, i64 %217
  %scevgep245246.us.2 = bitcast i8* %scevgep245.us.2 to double*
  %_p_scalar_247.us.2 = load double, double* %scevgep245246.us.2, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_247.us.2
  store double %p_add42.i118.us.2, double* %scevgep245246.us.2, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.us.2 = add nuw nsw i64 %polly.indvar226.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.loopexit.us.2, label %polly.loop_header223.us.2

polly.loop_exit225.loopexit.us.2:                 ; preds = %polly.loop_header223.us.2
  %polly.indvar_next221.us.2 = add nuw nsw i64 %polly.indvar220.us.2, 1
  %exitcond775.2.not = icmp eq i64 %polly.indvar_next221.us.2, 60
  br i1 %exitcond775.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.us.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.loopexit.us.2, %polly.loop_exit219.1
  %indvars.iv.next774.2 = or i64 %indvars.iv771, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next774.2, i64 3)
  %polly.loop_guard.3900 = icmp sgt i64 %110, -1
  br i1 %polly.loop_guard.3900, label %polly.loop_header217.us.3, label %polly.loop_exit219.3

polly.loop_header217.us.3:                        ; preds = %polly.loop_exit219.2, %polly.loop_exit225.loopexit.us.3
  %polly.indvar220.us.3 = phi i64 [ %polly.indvar_next221.us.3, %polly.loop_exit225.loopexit.us.3 ], [ 0, %polly.loop_exit219.2 ]
  %218 = shl nuw nsw i64 %polly.indvar220.us.3, 3
  %scevgep229.us.3 = getelementptr i8, i8* %call1, i64 %218
  %scevgep233.us.3 = getelementptr i8, i8* %call2, i64 %218
  %scevgep234.us.3 = getelementptr i8, i8* %scevgep233.us.3, i64 %107
  %scevgep234235.us.3 = bitcast i8* %scevgep234.us.3 to double*
  %_p_scalar_236.us.3 = load double, double* %scevgep234235.us.3, align 8, !alias.scope !62, !noalias !66
  %scevgep242.us.3 = getelementptr i8, i8* %scevgep229.us.3, i64 %107
  %scevgep242243.us.3 = bitcast i8* %scevgep242.us.3 to double*
  %_p_scalar_244.us.3 = load double, double* %scevgep242243.us.3, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.us.3

polly.loop_header223.us.3:                        ; preds = %polly.loop_header223.us.3, %polly.loop_header217.us.3
  %polly.indvar226.us.3 = phi i64 [ 0, %polly.loop_header217.us.3 ], [ %polly.indvar_next227.us.3, %polly.loop_header223.us.3 ]
  %219 = add nuw nsw i64 %polly.indvar226.us.3, %109
  %220 = mul nuw nsw i64 %219, 480
  %scevgep230.us.3 = getelementptr i8, i8* %scevgep229.us.3, i64 %220
  %scevgep230231.us.3 = bitcast i8* %scevgep230.us.3 to double*
  %_p_scalar_232.us.3 = load double, double* %scevgep230231.us.3, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_236.us.3, %_p_scalar_232.us.3
  %scevgep238.us.3 = getelementptr i8, i8* %scevgep233.us.3, i64 %220
  %scevgep238239.us.3 = bitcast i8* %scevgep238.us.3 to double*
  %_p_scalar_240.us.3 = load double, double* %scevgep238239.us.3, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_244.us.3, %_p_scalar_240.us.3
  %221 = shl i64 %219, 3
  %222 = add nuw nsw i64 %221, %108
  %scevgep245.us.3 = getelementptr i8, i8* %call, i64 %222
  %scevgep245246.us.3 = bitcast i8* %scevgep245.us.3 to double*
  %_p_scalar_247.us.3 = load double, double* %scevgep245246.us.3, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_247.us.3
  store double %p_add42.i118.us.3, double* %scevgep245246.us.3, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.us.3 = add nuw nsw i64 %polly.indvar226.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar226.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.loopexit.us.3, label %polly.loop_header223.us.3

polly.loop_exit225.loopexit.us.3:                 ; preds = %polly.loop_header223.us.3
  %polly.indvar_next221.us.3 = add nuw nsw i64 %polly.indvar220.us.3, 1
  %exitcond775.3.not = icmp eq i64 %polly.indvar_next221.us.3, 60
  br i1 %exitcond775.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.us.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.loopexit.us.3, %polly.loop_exit219.2
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next772 = add nsw i64 %indvars.iv771, -4
  %exitcond779.not = icmp eq i64 %polly.indvar_next209, %indvars.iv777
  br i1 %exitcond779.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header368.us.1:                        ; preds = %polly.loop_exit370, %polly.loop_exit377.loopexit.us.1
  %polly.indvar371.us.1 = phi i64 [ %polly.indvar_next372.us.1, %polly.loop_exit377.loopexit.us.1 ], [ 0, %polly.loop_exit370 ]
  %223 = shl nuw nsw i64 %polly.indvar371.us.1, 3
  %scevgep382.us.1 = getelementptr i8, i8* %call1, i64 %223
  %scevgep386.us.1 = getelementptr i8, i8* %call2, i64 %223
  %scevgep387.us.1 = getelementptr i8, i8* %scevgep386.us.1, i64 %129
  %scevgep387388.us.1 = bitcast i8* %scevgep387.us.1 to double*
  %_p_scalar_389.us.1 = load double, double* %scevgep387388.us.1, align 8, !alias.scope !72, !noalias !75
  %scevgep395.us.1 = getelementptr i8, i8* %scevgep382.us.1, i64 %129
  %scevgep395396.us.1 = bitcast i8* %scevgep395.us.1 to double*
  %_p_scalar_397.us.1 = load double, double* %scevgep395396.us.1, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header375.us.1

polly.loop_header375.us.1:                        ; preds = %polly.loop_header375.us.1, %polly.loop_header368.us.1
  %polly.indvar379.us.1 = phi i64 [ 0, %polly.loop_header368.us.1 ], [ %polly.indvar_next380.us.1, %polly.loop_header375.us.1 ]
  %224 = add nuw nsw i64 %polly.indvar379.us.1, %137
  %225 = mul nuw nsw i64 %224, 480
  %scevgep383.us.1 = getelementptr i8, i8* %scevgep382.us.1, i64 %225
  %scevgep383384.us.1 = bitcast i8* %scevgep383.us.1 to double*
  %_p_scalar_385.us.1 = load double, double* %scevgep383384.us.1, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_389.us.1, %_p_scalar_385.us.1
  %scevgep391.us.1 = getelementptr i8, i8* %scevgep386.us.1, i64 %225
  %scevgep391392.us.1 = bitcast i8* %scevgep391.us.1 to double*
  %_p_scalar_393.us.1 = load double, double* %scevgep391392.us.1, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_397.us.1, %_p_scalar_393.us.1
  %226 = shl i64 %224, 3
  %227 = add nuw nsw i64 %226, %130
  %scevgep398.us.1 = getelementptr i8, i8* %call, i64 %227
  %scevgep398399.us.1 = bitcast i8* %scevgep398.us.1 to double*
  %_p_scalar_400.us.1 = load double, double* %scevgep398399.us.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_400.us.1
  store double %p_add42.i79.us.1, double* %scevgep398399.us.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next380.us.1 = add nuw nsw i64 %polly.indvar379.us.1, 1
  %exitcond790.1.not = icmp eq i64 %polly.indvar379.us.1, %smin789.1
  br i1 %exitcond790.1.not, label %polly.loop_exit377.loopexit.us.1, label %polly.loop_header375.us.1

polly.loop_exit377.loopexit.us.1:                 ; preds = %polly.loop_header375.us.1
  %polly.indvar_next372.us.1 = add nuw nsw i64 %polly.indvar371.us.1, 1
  %exitcond791.1.not = icmp eq i64 %polly.indvar_next372.us.1, 60
  br i1 %exitcond791.1.not, label %polly.loop_exit370.1, label %polly.loop_header368.us.1

polly.loop_exit370.1:                             ; preds = %polly.loop_exit377.loopexit.us.1, %polly.loop_exit370
  %indvars.iv.next788.1 = add nuw nsw i64 %indvars.iv.next788, 1
  %smin789.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next788.1, i64 3)
  %polly.loop_guard378.2903 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard378.2903, label %polly.loop_header368.us.2, label %polly.loop_exit370.2

polly.loop_header368.us.2:                        ; preds = %polly.loop_exit370.1, %polly.loop_exit377.loopexit.us.2
  %polly.indvar371.us.2 = phi i64 [ %polly.indvar_next372.us.2, %polly.loop_exit377.loopexit.us.2 ], [ 0, %polly.loop_exit370.1 ]
  %228 = shl nuw nsw i64 %polly.indvar371.us.2, 3
  %scevgep382.us.2 = getelementptr i8, i8* %call1, i64 %228
  %scevgep386.us.2 = getelementptr i8, i8* %call2, i64 %228
  %scevgep387.us.2 = getelementptr i8, i8* %scevgep386.us.2, i64 %132
  %scevgep387388.us.2 = bitcast i8* %scevgep387.us.2 to double*
  %_p_scalar_389.us.2 = load double, double* %scevgep387388.us.2, align 8, !alias.scope !72, !noalias !75
  %scevgep395.us.2 = getelementptr i8, i8* %scevgep382.us.2, i64 %132
  %scevgep395396.us.2 = bitcast i8* %scevgep395.us.2 to double*
  %_p_scalar_397.us.2 = load double, double* %scevgep395396.us.2, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header375.us.2

polly.loop_header375.us.2:                        ; preds = %polly.loop_header375.us.2, %polly.loop_header368.us.2
  %polly.indvar379.us.2 = phi i64 [ 0, %polly.loop_header368.us.2 ], [ %polly.indvar_next380.us.2, %polly.loop_header375.us.2 ]
  %229 = add nuw nsw i64 %polly.indvar379.us.2, %137
  %230 = mul nuw nsw i64 %229, 480
  %scevgep383.us.2 = getelementptr i8, i8* %scevgep382.us.2, i64 %230
  %scevgep383384.us.2 = bitcast i8* %scevgep383.us.2 to double*
  %_p_scalar_385.us.2 = load double, double* %scevgep383384.us.2, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_389.us.2, %_p_scalar_385.us.2
  %scevgep391.us.2 = getelementptr i8, i8* %scevgep386.us.2, i64 %230
  %scevgep391392.us.2 = bitcast i8* %scevgep391.us.2 to double*
  %_p_scalar_393.us.2 = load double, double* %scevgep391392.us.2, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_397.us.2, %_p_scalar_393.us.2
  %231 = shl i64 %229, 3
  %232 = add nuw nsw i64 %231, %133
  %scevgep398.us.2 = getelementptr i8, i8* %call, i64 %232
  %scevgep398399.us.2 = bitcast i8* %scevgep398.us.2 to double*
  %_p_scalar_400.us.2 = load double, double* %scevgep398399.us.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_400.us.2
  store double %p_add42.i79.us.2, double* %scevgep398399.us.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next380.us.2 = add nuw nsw i64 %polly.indvar379.us.2, 1
  %exitcond790.2.not = icmp eq i64 %polly.indvar379.us.2, %smin789.2
  br i1 %exitcond790.2.not, label %polly.loop_exit377.loopexit.us.2, label %polly.loop_header375.us.2

polly.loop_exit377.loopexit.us.2:                 ; preds = %polly.loop_header375.us.2
  %polly.indvar_next372.us.2 = add nuw nsw i64 %polly.indvar371.us.2, 1
  %exitcond791.2.not = icmp eq i64 %polly.indvar_next372.us.2, 60
  br i1 %exitcond791.2.not, label %polly.loop_exit370.2, label %polly.loop_header368.us.2

polly.loop_exit370.2:                             ; preds = %polly.loop_exit377.loopexit.us.2, %polly.loop_exit370.1
  %indvars.iv.next788.2 = or i64 %indvars.iv785, 3
  %smin789.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next788.2, i64 3)
  %polly.loop_guard378.3904 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard378.3904, label %polly.loop_header368.us.3, label %polly.loop_exit370.3

polly.loop_header368.us.3:                        ; preds = %polly.loop_exit370.2, %polly.loop_exit377.loopexit.us.3
  %polly.indvar371.us.3 = phi i64 [ %polly.indvar_next372.us.3, %polly.loop_exit377.loopexit.us.3 ], [ 0, %polly.loop_exit370.2 ]
  %233 = shl nuw nsw i64 %polly.indvar371.us.3, 3
  %scevgep382.us.3 = getelementptr i8, i8* %call1, i64 %233
  %scevgep386.us.3 = getelementptr i8, i8* %call2, i64 %233
  %scevgep387.us.3 = getelementptr i8, i8* %scevgep386.us.3, i64 %135
  %scevgep387388.us.3 = bitcast i8* %scevgep387.us.3 to double*
  %_p_scalar_389.us.3 = load double, double* %scevgep387388.us.3, align 8, !alias.scope !72, !noalias !75
  %scevgep395.us.3 = getelementptr i8, i8* %scevgep382.us.3, i64 %135
  %scevgep395396.us.3 = bitcast i8* %scevgep395.us.3 to double*
  %_p_scalar_397.us.3 = load double, double* %scevgep395396.us.3, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header375.us.3

polly.loop_header375.us.3:                        ; preds = %polly.loop_header375.us.3, %polly.loop_header368.us.3
  %polly.indvar379.us.3 = phi i64 [ 0, %polly.loop_header368.us.3 ], [ %polly.indvar_next380.us.3, %polly.loop_header375.us.3 ]
  %234 = add nuw nsw i64 %polly.indvar379.us.3, %137
  %235 = mul nuw nsw i64 %234, 480
  %scevgep383.us.3 = getelementptr i8, i8* %scevgep382.us.3, i64 %235
  %scevgep383384.us.3 = bitcast i8* %scevgep383.us.3 to double*
  %_p_scalar_385.us.3 = load double, double* %scevgep383384.us.3, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_389.us.3, %_p_scalar_385.us.3
  %scevgep391.us.3 = getelementptr i8, i8* %scevgep386.us.3, i64 %235
  %scevgep391392.us.3 = bitcast i8* %scevgep391.us.3 to double*
  %_p_scalar_393.us.3 = load double, double* %scevgep391392.us.3, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_397.us.3, %_p_scalar_393.us.3
  %236 = shl i64 %234, 3
  %237 = add nuw nsw i64 %236, %136
  %scevgep398.us.3 = getelementptr i8, i8* %call, i64 %237
  %scevgep398399.us.3 = bitcast i8* %scevgep398.us.3 to double*
  %_p_scalar_400.us.3 = load double, double* %scevgep398399.us.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_400.us.3
  store double %p_add42.i79.us.3, double* %scevgep398399.us.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next380.us.3 = add nuw nsw i64 %polly.indvar379.us.3, 1
  %exitcond790.3.not = icmp eq i64 %polly.indvar379.us.3, %smin789.3
  br i1 %exitcond790.3.not, label %polly.loop_exit377.loopexit.us.3, label %polly.loop_header375.us.3

polly.loop_exit377.loopexit.us.3:                 ; preds = %polly.loop_header375.us.3
  %polly.indvar_next372.us.3 = add nuw nsw i64 %polly.indvar371.us.3, 1
  %exitcond791.3.not = icmp eq i64 %polly.indvar_next372.us.3, 60
  br i1 %exitcond791.3.not, label %polly.loop_exit370.3, label %polly.loop_header368.us.3

polly.loop_exit370.3:                             ; preds = %polly.loop_exit377.loopexit.us.3, %polly.loop_exit370.2
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, -4
  %exitcond795.not = icmp eq i64 %polly.indvar_next360, %indvars.iv793
  br i1 %exitcond795.not, label %polly.loop_exit358, label %polly.loop_header356

polly.loop_header521.us.1:                        ; preds = %polly.loop_exit523, %polly.loop_exit530.loopexit.us.1
  %polly.indvar524.us.1 = phi i64 [ %polly.indvar_next525.us.1, %polly.loop_exit530.loopexit.us.1 ], [ 0, %polly.loop_exit523 ]
  %238 = shl nuw nsw i64 %polly.indvar524.us.1, 3
  %scevgep535.us.1 = getelementptr i8, i8* %call1, i64 %238
  %scevgep539.us.1 = getelementptr i8, i8* %call2, i64 %238
  %scevgep540.us.1 = getelementptr i8, i8* %scevgep539.us.1, i64 %157
  %scevgep540541.us.1 = bitcast i8* %scevgep540.us.1 to double*
  %_p_scalar_542.us.1 = load double, double* %scevgep540541.us.1, align 8, !alias.scope !81, !noalias !84
  %scevgep548.us.1 = getelementptr i8, i8* %scevgep535.us.1, i64 %157
  %scevgep548549.us.1 = bitcast i8* %scevgep548.us.1 to double*
  %_p_scalar_550.us.1 = load double, double* %scevgep548549.us.1, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header528.us.1

polly.loop_header528.us.1:                        ; preds = %polly.loop_header528.us.1, %polly.loop_header521.us.1
  %polly.indvar532.us.1 = phi i64 [ 0, %polly.loop_header521.us.1 ], [ %polly.indvar_next533.us.1, %polly.loop_header528.us.1 ]
  %239 = add nuw nsw i64 %polly.indvar532.us.1, %165
  %240 = mul nuw nsw i64 %239, 480
  %scevgep536.us.1 = getelementptr i8, i8* %scevgep535.us.1, i64 %240
  %scevgep536537.us.1 = bitcast i8* %scevgep536.us.1 to double*
  %_p_scalar_538.us.1 = load double, double* %scevgep536537.us.1, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_542.us.1, %_p_scalar_538.us.1
  %scevgep544.us.1 = getelementptr i8, i8* %scevgep539.us.1, i64 %240
  %scevgep544545.us.1 = bitcast i8* %scevgep544.us.1 to double*
  %_p_scalar_546.us.1 = load double, double* %scevgep544545.us.1, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_550.us.1, %_p_scalar_546.us.1
  %241 = shl i64 %239, 3
  %242 = add nuw nsw i64 %241, %158
  %scevgep551.us.1 = getelementptr i8, i8* %call, i64 %242
  %scevgep551552.us.1 = bitcast i8* %scevgep551.us.1 to double*
  %_p_scalar_553.us.1 = load double, double* %scevgep551552.us.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_553.us.1
  store double %p_add42.i.us.1, double* %scevgep551552.us.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next533.us.1 = add nuw nsw i64 %polly.indvar532.us.1, 1
  %exitcond806.1.not = icmp eq i64 %polly.indvar532.us.1, %smin805.1
  br i1 %exitcond806.1.not, label %polly.loop_exit530.loopexit.us.1, label %polly.loop_header528.us.1

polly.loop_exit530.loopexit.us.1:                 ; preds = %polly.loop_header528.us.1
  %polly.indvar_next525.us.1 = add nuw nsw i64 %polly.indvar524.us.1, 1
  %exitcond807.1.not = icmp eq i64 %polly.indvar_next525.us.1, 60
  br i1 %exitcond807.1.not, label %polly.loop_exit523.1, label %polly.loop_header521.us.1

polly.loop_exit523.1:                             ; preds = %polly.loop_exit530.loopexit.us.1, %polly.loop_exit523
  %indvars.iv.next804.1 = add nuw nsw i64 %indvars.iv.next804, 1
  %smin805.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next804.1, i64 3)
  %polly.loop_guard531.2907 = icmp sgt i64 %166, -1
  br i1 %polly.loop_guard531.2907, label %polly.loop_header521.us.2, label %polly.loop_exit523.2

polly.loop_header521.us.2:                        ; preds = %polly.loop_exit523.1, %polly.loop_exit530.loopexit.us.2
  %polly.indvar524.us.2 = phi i64 [ %polly.indvar_next525.us.2, %polly.loop_exit530.loopexit.us.2 ], [ 0, %polly.loop_exit523.1 ]
  %243 = shl nuw nsw i64 %polly.indvar524.us.2, 3
  %scevgep535.us.2 = getelementptr i8, i8* %call1, i64 %243
  %scevgep539.us.2 = getelementptr i8, i8* %call2, i64 %243
  %scevgep540.us.2 = getelementptr i8, i8* %scevgep539.us.2, i64 %160
  %scevgep540541.us.2 = bitcast i8* %scevgep540.us.2 to double*
  %_p_scalar_542.us.2 = load double, double* %scevgep540541.us.2, align 8, !alias.scope !81, !noalias !84
  %scevgep548.us.2 = getelementptr i8, i8* %scevgep535.us.2, i64 %160
  %scevgep548549.us.2 = bitcast i8* %scevgep548.us.2 to double*
  %_p_scalar_550.us.2 = load double, double* %scevgep548549.us.2, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header528.us.2

polly.loop_header528.us.2:                        ; preds = %polly.loop_header528.us.2, %polly.loop_header521.us.2
  %polly.indvar532.us.2 = phi i64 [ 0, %polly.loop_header521.us.2 ], [ %polly.indvar_next533.us.2, %polly.loop_header528.us.2 ]
  %244 = add nuw nsw i64 %polly.indvar532.us.2, %165
  %245 = mul nuw nsw i64 %244, 480
  %scevgep536.us.2 = getelementptr i8, i8* %scevgep535.us.2, i64 %245
  %scevgep536537.us.2 = bitcast i8* %scevgep536.us.2 to double*
  %_p_scalar_538.us.2 = load double, double* %scevgep536537.us.2, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_542.us.2, %_p_scalar_538.us.2
  %scevgep544.us.2 = getelementptr i8, i8* %scevgep539.us.2, i64 %245
  %scevgep544545.us.2 = bitcast i8* %scevgep544.us.2 to double*
  %_p_scalar_546.us.2 = load double, double* %scevgep544545.us.2, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_550.us.2, %_p_scalar_546.us.2
  %246 = shl i64 %244, 3
  %247 = add nuw nsw i64 %246, %161
  %scevgep551.us.2 = getelementptr i8, i8* %call, i64 %247
  %scevgep551552.us.2 = bitcast i8* %scevgep551.us.2 to double*
  %_p_scalar_553.us.2 = load double, double* %scevgep551552.us.2, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_553.us.2
  store double %p_add42.i.us.2, double* %scevgep551552.us.2, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next533.us.2 = add nuw nsw i64 %polly.indvar532.us.2, 1
  %exitcond806.2.not = icmp eq i64 %polly.indvar532.us.2, %smin805.2
  br i1 %exitcond806.2.not, label %polly.loop_exit530.loopexit.us.2, label %polly.loop_header528.us.2

polly.loop_exit530.loopexit.us.2:                 ; preds = %polly.loop_header528.us.2
  %polly.indvar_next525.us.2 = add nuw nsw i64 %polly.indvar524.us.2, 1
  %exitcond807.2.not = icmp eq i64 %polly.indvar_next525.us.2, 60
  br i1 %exitcond807.2.not, label %polly.loop_exit523.2, label %polly.loop_header521.us.2

polly.loop_exit523.2:                             ; preds = %polly.loop_exit530.loopexit.us.2, %polly.loop_exit523.1
  %indvars.iv.next804.2 = or i64 %indvars.iv801, 3
  %smin805.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next804.2, i64 3)
  %polly.loop_guard531.3908 = icmp sgt i64 %166, -1
  br i1 %polly.loop_guard531.3908, label %polly.loop_header521.us.3, label %polly.loop_exit523.3

polly.loop_header521.us.3:                        ; preds = %polly.loop_exit523.2, %polly.loop_exit530.loopexit.us.3
  %polly.indvar524.us.3 = phi i64 [ %polly.indvar_next525.us.3, %polly.loop_exit530.loopexit.us.3 ], [ 0, %polly.loop_exit523.2 ]
  %248 = shl nuw nsw i64 %polly.indvar524.us.3, 3
  %scevgep535.us.3 = getelementptr i8, i8* %call1, i64 %248
  %scevgep539.us.3 = getelementptr i8, i8* %call2, i64 %248
  %scevgep540.us.3 = getelementptr i8, i8* %scevgep539.us.3, i64 %163
  %scevgep540541.us.3 = bitcast i8* %scevgep540.us.3 to double*
  %_p_scalar_542.us.3 = load double, double* %scevgep540541.us.3, align 8, !alias.scope !81, !noalias !84
  %scevgep548.us.3 = getelementptr i8, i8* %scevgep535.us.3, i64 %163
  %scevgep548549.us.3 = bitcast i8* %scevgep548.us.3 to double*
  %_p_scalar_550.us.3 = load double, double* %scevgep548549.us.3, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header528.us.3

polly.loop_header528.us.3:                        ; preds = %polly.loop_header528.us.3, %polly.loop_header521.us.3
  %polly.indvar532.us.3 = phi i64 [ 0, %polly.loop_header521.us.3 ], [ %polly.indvar_next533.us.3, %polly.loop_header528.us.3 ]
  %249 = add nuw nsw i64 %polly.indvar532.us.3, %165
  %250 = mul nuw nsw i64 %249, 480
  %scevgep536.us.3 = getelementptr i8, i8* %scevgep535.us.3, i64 %250
  %scevgep536537.us.3 = bitcast i8* %scevgep536.us.3 to double*
  %_p_scalar_538.us.3 = load double, double* %scevgep536537.us.3, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_542.us.3, %_p_scalar_538.us.3
  %scevgep544.us.3 = getelementptr i8, i8* %scevgep539.us.3, i64 %250
  %scevgep544545.us.3 = bitcast i8* %scevgep544.us.3 to double*
  %_p_scalar_546.us.3 = load double, double* %scevgep544545.us.3, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_550.us.3, %_p_scalar_546.us.3
  %251 = shl i64 %249, 3
  %252 = add nuw nsw i64 %251, %164
  %scevgep551.us.3 = getelementptr i8, i8* %call, i64 %252
  %scevgep551552.us.3 = bitcast i8* %scevgep551.us.3 to double*
  %_p_scalar_553.us.3 = load double, double* %scevgep551552.us.3, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_553.us.3
  store double %p_add42.i.us.3, double* %scevgep551552.us.3, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next533.us.3 = add nuw nsw i64 %polly.indvar532.us.3, 1
  %exitcond806.3.not = icmp eq i64 %polly.indvar532.us.3, %smin805.3
  br i1 %exitcond806.3.not, label %polly.loop_exit530.loopexit.us.3, label %polly.loop_header528.us.3

polly.loop_exit530.loopexit.us.3:                 ; preds = %polly.loop_header528.us.3
  %polly.indvar_next525.us.3 = add nuw nsw i64 %polly.indvar524.us.3, 1
  %exitcond807.3.not = icmp eq i64 %polly.indvar_next525.us.3, 60
  br i1 %exitcond807.3.not, label %polly.loop_exit523.3, label %polly.loop_header521.us.3

polly.loop_exit523.3:                             ; preds = %polly.loop_exit530.loopexit.us.3, %polly.loop_exit523.2
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %indvars.iv.next802 = add nsw i64 %indvars.iv801, -4
  %exitcond811.not = icmp eq i64 %polly.indvar_next513, %indvars.iv809
  br i1 %exitcond811.not, label %polly.loop_exit511, label %polly.loop_header509

polly.loop_header745.1:                           ; preds = %polly.loop_exit753, %polly.loop_exit753.1
  %polly.indvar748.1 = phi i64 [ %polly.indvar_next749.1, %polly.loop_exit753.1 ], [ 0, %polly.loop_exit753 ]
  %253 = mul nuw nsw i64 %polly.indvar748.1, 480
  %254 = trunc i64 %polly.indvar748.1 to i32
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %254, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %polly.loop_header745.1
  %index1143 = phi i64 [ 0, %polly.loop_header745.1 ], [ %index.next1144, %vector.body1141 ]
  %vec.ind1147 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header745.1 ], [ %vec.ind.next1148, %vector.body1141 ]
  %255 = add nuw nsw <4 x i64> %vec.ind1147, <i64 32, i64 32, i64 32, i64 32>
  %256 = trunc <4 x i64> %255 to <4 x i32>
  %257 = mul <4 x i32> %broadcast.splat1150, %256
  %258 = add <4 x i32> %257, <i32 1, i32 1, i32 1, i32 1>
  %259 = urem <4 x i32> %258, <i32 80, i32 80, i32 80, i32 80>
  %260 = sitofp <4 x i32> %259 to <4 x double>
  %261 = fmul fast <4 x double> %260, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %262 = extractelement <4 x i64> %255, i32 0
  %263 = shl i64 %262, 3
  %264 = add i64 %263, %253
  %265 = getelementptr i8, i8* %call1, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %261, <4 x double>* %266, align 8, !alias.scope !89, !noalias !94
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1148 = add <4 x i64> %vec.ind1147, <i64 4, i64 4, i64 4, i64 4>
  %267 = icmp eq i64 %index.next1144, 28
  br i1 %267, label %polly.loop_exit753.1, label %vector.body1141, !llvm.loop !96

polly.loop_exit753.1:                             ; preds = %vector.body1141
  %polly.indvar_next749.1 = add nuw nsw i64 %polly.indvar748.1, 1
  %exitcond819.1.not = icmp eq i64 %polly.indvar_next749.1, 32
  br i1 %exitcond819.1.not, label %polly.loop_header745.1842, label %polly.loop_header745.1

polly.loop_header745.1842:                        ; preds = %polly.loop_exit753.1, %polly.loop_exit753.1853
  %polly.indvar748.1841 = phi i64 [ %polly.indvar_next749.1851, %polly.loop_exit753.1853 ], [ 0, %polly.loop_exit753.1 ]
  %268 = add nuw nsw i64 %polly.indvar748.1841, 32
  %269 = mul nuw nsw i64 %268, 480
  %270 = trunc i64 %268 to i32
  %broadcast.splatinsert1163 = insertelement <4 x i32> poison, i32 %270, i32 0
  %broadcast.splat1164 = shufflevector <4 x i32> %broadcast.splatinsert1163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_header745.1842
  %index1155 = phi i64 [ 0, %polly.loop_header745.1842 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1161 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header745.1842 ], [ %vec.ind.next1162, %vector.body1153 ]
  %271 = mul <4 x i32> %vec.ind1161, %broadcast.splat1164
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 80, i32 80, i32 80, i32 80>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %276 = shl i64 %index1155, 3
  %277 = add i64 %276, %269
  %278 = getelementptr i8, i8* %call1, i64 %277
  %279 = bitcast i8* %278 to <4 x double>*
  store <4 x double> %275, <4 x double>* %279, align 8, !alias.scope !89, !noalias !94
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1162 = add <4 x i32> %vec.ind1161, <i32 4, i32 4, i32 4, i32 4>
  %280 = icmp eq i64 %index.next1156, 32
  br i1 %280, label %polly.loop_exit753.1853, label %vector.body1153, !llvm.loop !97

polly.loop_exit753.1853:                          ; preds = %vector.body1153
  %polly.indvar_next749.1851 = add nuw nsw i64 %polly.indvar748.1841, 1
  %exitcond819.1852.not = icmp eq i64 %polly.indvar_next749.1851, 32
  br i1 %exitcond819.1852.not, label %polly.loop_header745.1.1, label %polly.loop_header745.1842

polly.loop_header745.1.1:                         ; preds = %polly.loop_exit753.1853, %polly.loop_exit753.1.1
  %polly.indvar748.1.1 = phi i64 [ %polly.indvar_next749.1.1, %polly.loop_exit753.1.1 ], [ 0, %polly.loop_exit753.1853 ]
  %281 = add nuw nsw i64 %polly.indvar748.1.1, 32
  %282 = mul nuw nsw i64 %281, 480
  %283 = trunc i64 %281 to i32
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %283, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %polly.loop_header745.1.1
  %index1169 = phi i64 [ 0, %polly.loop_header745.1.1 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1173 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header745.1.1 ], [ %vec.ind.next1174, %vector.body1167 ]
  %284 = add nuw nsw <4 x i64> %vec.ind1173, <i64 32, i64 32, i64 32, i64 32>
  %285 = trunc <4 x i64> %284 to <4 x i32>
  %286 = mul <4 x i32> %broadcast.splat1176, %285
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 80, i32 80, i32 80, i32 80>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %291 = extractelement <4 x i64> %284, i32 0
  %292 = shl i64 %291, 3
  %293 = add i64 %292, %282
  %294 = getelementptr i8, i8* %call1, i64 %293
  %295 = bitcast i8* %294 to <4 x double>*
  store <4 x double> %290, <4 x double>* %295, align 8, !alias.scope !89, !noalias !94
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1174 = add <4 x i64> %vec.ind1173, <i64 4, i64 4, i64 4, i64 4>
  %296 = icmp eq i64 %index.next1170, 28
  br i1 %296, label %polly.loop_exit753.1.1, label %vector.body1167, !llvm.loop !98

polly.loop_exit753.1.1:                           ; preds = %vector.body1167
  %polly.indvar_next749.1.1 = add nuw nsw i64 %polly.indvar748.1.1, 1
  %exitcond819.1.1.not = icmp eq i64 %polly.indvar_next749.1.1, 32
  br i1 %exitcond819.1.1.not, label %polly.loop_header745.2, label %polly.loop_header745.1.1

polly.loop_header745.2:                           ; preds = %polly.loop_exit753.1.1, %polly.loop_exit753.2
  %polly.indvar748.2 = phi i64 [ %polly.indvar_next749.2, %polly.loop_exit753.2 ], [ 0, %polly.loop_exit753.1.1 ]
  %297 = add nuw nsw i64 %polly.indvar748.2, 64
  %298 = mul nuw nsw i64 %297, 480
  %299 = trunc i64 %297 to i32
  %broadcast.splatinsert1189 = insertelement <4 x i32> poison, i32 %299, i32 0
  %broadcast.splat1190 = shufflevector <4 x i32> %broadcast.splatinsert1189, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %polly.loop_header745.2
  %index1181 = phi i64 [ 0, %polly.loop_header745.2 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1187 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header745.2 ], [ %vec.ind.next1188, %vector.body1179 ]
  %300 = mul <4 x i32> %vec.ind1187, %broadcast.splat1190
  %301 = add <4 x i32> %300, <i32 1, i32 1, i32 1, i32 1>
  %302 = urem <4 x i32> %301, <i32 80, i32 80, i32 80, i32 80>
  %303 = sitofp <4 x i32> %302 to <4 x double>
  %304 = fmul fast <4 x double> %303, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %305 = shl i64 %index1181, 3
  %306 = add i64 %305, %298
  %307 = getelementptr i8, i8* %call1, i64 %306
  %308 = bitcast i8* %307 to <4 x double>*
  store <4 x double> %304, <4 x double>* %308, align 8, !alias.scope !89, !noalias !94
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1188 = add <4 x i32> %vec.ind1187, <i32 4, i32 4, i32 4, i32 4>
  %309 = icmp eq i64 %index.next1182, 32
  br i1 %309, label %polly.loop_exit753.2, label %vector.body1179, !llvm.loop !99

polly.loop_exit753.2:                             ; preds = %vector.body1179
  %polly.indvar_next749.2 = add nuw nsw i64 %polly.indvar748.2, 1
  %exitcond819.2.not = icmp eq i64 %polly.indvar_next749.2, 16
  br i1 %exitcond819.2.not, label %polly.loop_header745.1.2, label %polly.loop_header745.2

polly.loop_header745.1.2:                         ; preds = %polly.loop_exit753.2, %polly.loop_exit753.1.2
  %polly.indvar748.1.2 = phi i64 [ %polly.indvar_next749.1.2, %polly.loop_exit753.1.2 ], [ 0, %polly.loop_exit753.2 ]
  %310 = add nuw nsw i64 %polly.indvar748.1.2, 64
  %311 = mul nuw nsw i64 %310, 480
  %312 = trunc i64 %310 to i32
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %312, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %polly.loop_header745.1.2
  %index1195 = phi i64 [ 0, %polly.loop_header745.1.2 ], [ %index.next1196, %vector.body1193 ]
  %vec.ind1199 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header745.1.2 ], [ %vec.ind.next1200, %vector.body1193 ]
  %313 = add nuw nsw <4 x i64> %vec.ind1199, <i64 32, i64 32, i64 32, i64 32>
  %314 = trunc <4 x i64> %313 to <4 x i32>
  %315 = mul <4 x i32> %broadcast.splat1202, %314
  %316 = add <4 x i32> %315, <i32 1, i32 1, i32 1, i32 1>
  %317 = urem <4 x i32> %316, <i32 80, i32 80, i32 80, i32 80>
  %318 = sitofp <4 x i32> %317 to <4 x double>
  %319 = fmul fast <4 x double> %318, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %320 = extractelement <4 x i64> %313, i32 0
  %321 = shl i64 %320, 3
  %322 = add i64 %321, %311
  %323 = getelementptr i8, i8* %call1, i64 %322
  %324 = bitcast i8* %323 to <4 x double>*
  store <4 x double> %319, <4 x double>* %324, align 8, !alias.scope !89, !noalias !94
  %index.next1196 = add i64 %index1195, 4
  %vec.ind.next1200 = add <4 x i64> %vec.ind1199, <i64 4, i64 4, i64 4, i64 4>
  %325 = icmp eq i64 %index.next1196, 28
  br i1 %325, label %polly.loop_exit753.1.2, label %vector.body1193, !llvm.loop !100

polly.loop_exit753.1.2:                           ; preds = %vector.body1193
  %polly.indvar_next749.1.2 = add nuw nsw i64 %polly.indvar748.1.2, 1
  %exitcond819.1.2.not = icmp eq i64 %polly.indvar_next749.1.2, 16
  br i1 %exitcond819.1.2.not, label %init_array.exit, label %polly.loop_header745.1.2

polly.loop_header719.1:                           ; preds = %polly.loop_exit727, %polly.loop_exit727.1
  %polly.indvar722.1 = phi i64 [ %polly.indvar_next723.1, %polly.loop_exit727.1 ], [ 0, %polly.loop_exit727 ]
  %326 = mul nuw nsw i64 %polly.indvar722.1, 480
  %327 = trunc i64 %polly.indvar722.1 to i32
  %broadcast.splatinsert1071 = insertelement <4 x i32> poison, i32 %327, i32 0
  %broadcast.splat1072 = shufflevector <4 x i32> %broadcast.splatinsert1071, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1063

vector.body1063:                                  ; preds = %vector.body1063, %polly.loop_header719.1
  %index1065 = phi i64 [ 0, %polly.loop_header719.1 ], [ %index.next1066, %vector.body1063 ]
  %vec.ind1069 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header719.1 ], [ %vec.ind.next1070, %vector.body1063 ]
  %328 = add nuw nsw <4 x i64> %vec.ind1069, <i64 32, i64 32, i64 32, i64 32>
  %329 = trunc <4 x i64> %328 to <4 x i32>
  %330 = mul <4 x i32> %broadcast.splat1072, %329
  %331 = add <4 x i32> %330, <i32 2, i32 2, i32 2, i32 2>
  %332 = urem <4 x i32> %331, <i32 60, i32 60, i32 60, i32 60>
  %333 = sitofp <4 x i32> %332 to <4 x double>
  %334 = fmul fast <4 x double> %333, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %335 = extractelement <4 x i64> %328, i32 0
  %336 = shl i64 %335, 3
  %337 = add i64 %336, %326
  %338 = getelementptr i8, i8* %call2, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %334, <4 x double>* %339, align 8, !alias.scope !90, !noalias !92
  %index.next1066 = add i64 %index1065, 4
  %vec.ind.next1070 = add <4 x i64> %vec.ind1069, <i64 4, i64 4, i64 4, i64 4>
  %340 = icmp eq i64 %index.next1066, 28
  br i1 %340, label %polly.loop_exit727.1, label %vector.body1063, !llvm.loop !101

polly.loop_exit727.1:                             ; preds = %vector.body1063
  %polly.indvar_next723.1 = add nuw nsw i64 %polly.indvar722.1, 1
  %exitcond825.1.not = icmp eq i64 %polly.indvar_next723.1, 32
  br i1 %exitcond825.1.not, label %polly.loop_header719.1856, label %polly.loop_header719.1

polly.loop_header719.1856:                        ; preds = %polly.loop_exit727.1, %polly.loop_exit727.1867
  %polly.indvar722.1855 = phi i64 [ %polly.indvar_next723.1865, %polly.loop_exit727.1867 ], [ 0, %polly.loop_exit727.1 ]
  %341 = add nuw nsw i64 %polly.indvar722.1855, 32
  %342 = mul nuw nsw i64 %341, 480
  %343 = trunc i64 %341 to i32
  %broadcast.splatinsert1085 = insertelement <4 x i32> poison, i32 %343, i32 0
  %broadcast.splat1086 = shufflevector <4 x i32> %broadcast.splatinsert1085, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %polly.loop_header719.1856
  %index1077 = phi i64 [ 0, %polly.loop_header719.1856 ], [ %index.next1078, %vector.body1075 ]
  %vec.ind1083 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header719.1856 ], [ %vec.ind.next1084, %vector.body1075 ]
  %344 = mul <4 x i32> %vec.ind1083, %broadcast.splat1086
  %345 = add <4 x i32> %344, <i32 2, i32 2, i32 2, i32 2>
  %346 = urem <4 x i32> %345, <i32 60, i32 60, i32 60, i32 60>
  %347 = sitofp <4 x i32> %346 to <4 x double>
  %348 = fmul fast <4 x double> %347, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %349 = shl i64 %index1077, 3
  %350 = add i64 %349, %342
  %351 = getelementptr i8, i8* %call2, i64 %350
  %352 = bitcast i8* %351 to <4 x double>*
  store <4 x double> %348, <4 x double>* %352, align 8, !alias.scope !90, !noalias !92
  %index.next1078 = add i64 %index1077, 4
  %vec.ind.next1084 = add <4 x i32> %vec.ind1083, <i32 4, i32 4, i32 4, i32 4>
  %353 = icmp eq i64 %index.next1078, 32
  br i1 %353, label %polly.loop_exit727.1867, label %vector.body1075, !llvm.loop !102

polly.loop_exit727.1867:                          ; preds = %vector.body1075
  %polly.indvar_next723.1865 = add nuw nsw i64 %polly.indvar722.1855, 1
  %exitcond825.1866.not = icmp eq i64 %polly.indvar_next723.1865, 32
  br i1 %exitcond825.1866.not, label %polly.loop_header719.1.1, label %polly.loop_header719.1856

polly.loop_header719.1.1:                         ; preds = %polly.loop_exit727.1867, %polly.loop_exit727.1.1
  %polly.indvar722.1.1 = phi i64 [ %polly.indvar_next723.1.1, %polly.loop_exit727.1.1 ], [ 0, %polly.loop_exit727.1867 ]
  %354 = add nuw nsw i64 %polly.indvar722.1.1, 32
  %355 = mul nuw nsw i64 %354, 480
  %356 = trunc i64 %354 to i32
  %broadcast.splatinsert1097 = insertelement <4 x i32> poison, i32 %356, i32 0
  %broadcast.splat1098 = shufflevector <4 x i32> %broadcast.splatinsert1097, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %polly.loop_header719.1.1
  %index1091 = phi i64 [ 0, %polly.loop_header719.1.1 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1095 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header719.1.1 ], [ %vec.ind.next1096, %vector.body1089 ]
  %357 = add nuw nsw <4 x i64> %vec.ind1095, <i64 32, i64 32, i64 32, i64 32>
  %358 = trunc <4 x i64> %357 to <4 x i32>
  %359 = mul <4 x i32> %broadcast.splat1098, %358
  %360 = add <4 x i32> %359, <i32 2, i32 2, i32 2, i32 2>
  %361 = urem <4 x i32> %360, <i32 60, i32 60, i32 60, i32 60>
  %362 = sitofp <4 x i32> %361 to <4 x double>
  %363 = fmul fast <4 x double> %362, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %364 = extractelement <4 x i64> %357, i32 0
  %365 = shl i64 %364, 3
  %366 = add i64 %365, %355
  %367 = getelementptr i8, i8* %call2, i64 %366
  %368 = bitcast i8* %367 to <4 x double>*
  store <4 x double> %363, <4 x double>* %368, align 8, !alias.scope !90, !noalias !92
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1096 = add <4 x i64> %vec.ind1095, <i64 4, i64 4, i64 4, i64 4>
  %369 = icmp eq i64 %index.next1092, 28
  br i1 %369, label %polly.loop_exit727.1.1, label %vector.body1089, !llvm.loop !103

polly.loop_exit727.1.1:                           ; preds = %vector.body1089
  %polly.indvar_next723.1.1 = add nuw nsw i64 %polly.indvar722.1.1, 1
  %exitcond825.1.1.not = icmp eq i64 %polly.indvar_next723.1.1, 32
  br i1 %exitcond825.1.1.not, label %polly.loop_header719.2, label %polly.loop_header719.1.1

polly.loop_header719.2:                           ; preds = %polly.loop_exit727.1.1, %polly.loop_exit727.2
  %polly.indvar722.2 = phi i64 [ %polly.indvar_next723.2, %polly.loop_exit727.2 ], [ 0, %polly.loop_exit727.1.1 ]
  %370 = add nuw nsw i64 %polly.indvar722.2, 64
  %371 = mul nuw nsw i64 %370, 480
  %372 = trunc i64 %370 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %372, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %polly.loop_header719.2
  %index1103 = phi i64 [ 0, %polly.loop_header719.2 ], [ %index.next1104, %vector.body1101 ]
  %vec.ind1109 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header719.2 ], [ %vec.ind.next1110, %vector.body1101 ]
  %373 = mul <4 x i32> %vec.ind1109, %broadcast.splat1112
  %374 = add <4 x i32> %373, <i32 2, i32 2, i32 2, i32 2>
  %375 = urem <4 x i32> %374, <i32 60, i32 60, i32 60, i32 60>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %378 = shl i64 %index1103, 3
  %379 = add i64 %378, %371
  %380 = getelementptr i8, i8* %call2, i64 %379
  %381 = bitcast i8* %380 to <4 x double>*
  store <4 x double> %377, <4 x double>* %381, align 8, !alias.scope !90, !noalias !92
  %index.next1104 = add i64 %index1103, 4
  %vec.ind.next1110 = add <4 x i32> %vec.ind1109, <i32 4, i32 4, i32 4, i32 4>
  %382 = icmp eq i64 %index.next1104, 32
  br i1 %382, label %polly.loop_exit727.2, label %vector.body1101, !llvm.loop !104

polly.loop_exit727.2:                             ; preds = %vector.body1101
  %polly.indvar_next723.2 = add nuw nsw i64 %polly.indvar722.2, 1
  %exitcond825.2.not = icmp eq i64 %polly.indvar_next723.2, 16
  br i1 %exitcond825.2.not, label %polly.loop_header719.1.2, label %polly.loop_header719.2

polly.loop_header719.1.2:                         ; preds = %polly.loop_exit727.2, %polly.loop_exit727.1.2
  %polly.indvar722.1.2 = phi i64 [ %polly.indvar_next723.1.2, %polly.loop_exit727.1.2 ], [ 0, %polly.loop_exit727.2 ]
  %383 = add nuw nsw i64 %polly.indvar722.1.2, 64
  %384 = mul nuw nsw i64 %383, 480
  %385 = trunc i64 %383 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header719.1.2
  %index1117 = phi i64 [ 0, %polly.loop_header719.1.2 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1121 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header719.1.2 ], [ %vec.ind.next1122, %vector.body1115 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1121, <i64 32, i64 32, i64 32, i64 32>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1124, %387
  %389 = add <4 x i32> %388, <i32 2, i32 2, i32 2, i32 2>
  %390 = urem <4 x i32> %389, <i32 60, i32 60, i32 60, i32 60>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add i64 %394, %384
  %396 = getelementptr i8, i8* %call2, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !90, !noalias !92
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1122 = add <4 x i64> %vec.ind1121, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1118, 28
  br i1 %398, label %polly.loop_exit727.1.2, label %vector.body1115, !llvm.loop !105

polly.loop_exit727.1.2:                           ; preds = %vector.body1115
  %polly.indvar_next723.1.2 = add nuw nsw i64 %polly.indvar722.1.2, 1
  %exitcond825.1.2.not = icmp eq i64 %polly.indvar_next723.1.2, 16
  br i1 %exitcond825.1.2.not, label %polly.loop_header745, label %polly.loop_header719.1.2

polly.loop_header692.1:                           ; preds = %polly.loop_exit700, %polly.loop_exit700.1
  %polly.indvar695.1 = phi i64 [ %polly.indvar_next696.1, %polly.loop_exit700.1 ], [ 0, %polly.loop_exit700 ]
  %399 = mul nuw nsw i64 %polly.indvar695.1, 640
  %400 = trunc i64 %polly.indvar695.1 to i32
  %broadcast.splatinsert957 = insertelement <4 x i32> poison, i32 %400, i32 0
  %broadcast.splat958 = shufflevector <4 x i32> %broadcast.splatinsert957, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body949

vector.body949:                                   ; preds = %vector.body949, %polly.loop_header692.1
  %index951 = phi i64 [ 0, %polly.loop_header692.1 ], [ %index.next952, %vector.body949 ]
  %vec.ind955 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header692.1 ], [ %vec.ind.next956, %vector.body949 ]
  %401 = add nuw nsw <4 x i64> %vec.ind955, <i64 32, i64 32, i64 32, i64 32>
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat958, %402
  %404 = add <4 x i32> %403, <i32 3, i32 3, i32 3, i32 3>
  %405 = urem <4 x i32> %404, <i32 80, i32 80, i32 80, i32 80>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %399
  %411 = getelementptr i8, i8* %call, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !86, !noalias !88
  %index.next952 = add i64 %index951, 4
  %vec.ind.next956 = add <4 x i64> %vec.ind955, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next952, 32
  br i1 %413, label %polly.loop_exit700.1, label %vector.body949, !llvm.loop !106

polly.loop_exit700.1:                             ; preds = %vector.body949
  %polly.indvar_next696.1 = add nuw nsw i64 %polly.indvar695.1, 1
  %exitcond834.1.not = icmp eq i64 %polly.indvar_next696.1, 32
  br i1 %exitcond834.1.not, label %polly.loop_header692.2, label %polly.loop_header692.1

polly.loop_header692.2:                           ; preds = %polly.loop_exit700.1, %polly.loop_exit700.2
  %polly.indvar695.2 = phi i64 [ %polly.indvar_next696.2, %polly.loop_exit700.2 ], [ 0, %polly.loop_exit700.1 ]
  %414 = mul nuw nsw i64 %polly.indvar695.2, 640
  %415 = trunc i64 %polly.indvar695.2 to i32
  %broadcast.splatinsert969 = insertelement <4 x i32> poison, i32 %415, i32 0
  %broadcast.splat970 = shufflevector <4 x i32> %broadcast.splatinsert969, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %polly.loop_header692.2
  %index963 = phi i64 [ 0, %polly.loop_header692.2 ], [ %index.next964, %vector.body961 ]
  %vec.ind967 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header692.2 ], [ %vec.ind.next968, %vector.body961 ]
  %416 = add nuw nsw <4 x i64> %vec.ind967, <i64 64, i64 64, i64 64, i64 64>
  %417 = trunc <4 x i64> %416 to <4 x i32>
  %418 = mul <4 x i32> %broadcast.splat970, %417
  %419 = add <4 x i32> %418, <i32 3, i32 3, i32 3, i32 3>
  %420 = urem <4 x i32> %419, <i32 80, i32 80, i32 80, i32 80>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %423 = extractelement <4 x i64> %416, i32 0
  %424 = shl i64 %423, 3
  %425 = add nuw nsw i64 %424, %414
  %426 = getelementptr i8, i8* %call, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %422, <4 x double>* %427, align 8, !alias.scope !86, !noalias !88
  %index.next964 = add i64 %index963, 4
  %vec.ind.next968 = add <4 x i64> %vec.ind967, <i64 4, i64 4, i64 4, i64 4>
  %428 = icmp eq i64 %index.next964, 16
  br i1 %428, label %polly.loop_exit700.2, label %vector.body961, !llvm.loop !107

polly.loop_exit700.2:                             ; preds = %vector.body961
  %polly.indvar_next696.2 = add nuw nsw i64 %polly.indvar695.2, 1
  %exitcond834.2.not = icmp eq i64 %polly.indvar_next696.2, 32
  br i1 %exitcond834.2.not, label %polly.loop_header692.1870, label %polly.loop_header692.2

polly.loop_header692.1870:                        ; preds = %polly.loop_exit700.2, %polly.loop_exit700.1881
  %polly.indvar695.1869 = phi i64 [ %polly.indvar_next696.1879, %polly.loop_exit700.1881 ], [ 0, %polly.loop_exit700.2 ]
  %429 = add nuw nsw i64 %polly.indvar695.1869, 32
  %430 = mul nuw nsw i64 %429, 640
  %431 = trunc i64 %429 to i32
  %broadcast.splatinsert983 = insertelement <4 x i32> poison, i32 %431, i32 0
  %broadcast.splat984 = shufflevector <4 x i32> %broadcast.splatinsert983, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %polly.loop_header692.1870
  %index975 = phi i64 [ 0, %polly.loop_header692.1870 ], [ %index.next976, %vector.body973 ]
  %vec.ind981 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header692.1870 ], [ %vec.ind.next982, %vector.body973 ]
  %432 = mul <4 x i32> %vec.ind981, %broadcast.splat984
  %433 = add <4 x i32> %432, <i32 3, i32 3, i32 3, i32 3>
  %434 = urem <4 x i32> %433, <i32 80, i32 80, i32 80, i32 80>
  %435 = sitofp <4 x i32> %434 to <4 x double>
  %436 = fmul fast <4 x double> %435, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %437 = shl i64 %index975, 3
  %438 = add nuw nsw i64 %437, %430
  %439 = getelementptr i8, i8* %call, i64 %438
  %440 = bitcast i8* %439 to <4 x double>*
  store <4 x double> %436, <4 x double>* %440, align 8, !alias.scope !86, !noalias !88
  %index.next976 = add i64 %index975, 4
  %vec.ind.next982 = add <4 x i32> %vec.ind981, <i32 4, i32 4, i32 4, i32 4>
  %441 = icmp eq i64 %index.next976, 32
  br i1 %441, label %polly.loop_exit700.1881, label %vector.body973, !llvm.loop !108

polly.loop_exit700.1881:                          ; preds = %vector.body973
  %polly.indvar_next696.1879 = add nuw nsw i64 %polly.indvar695.1869, 1
  %exitcond834.1880.not = icmp eq i64 %polly.indvar_next696.1879, 32
  br i1 %exitcond834.1880.not, label %polly.loop_header692.1.1, label %polly.loop_header692.1870

polly.loop_header692.1.1:                         ; preds = %polly.loop_exit700.1881, %polly.loop_exit700.1.1
  %polly.indvar695.1.1 = phi i64 [ %polly.indvar_next696.1.1, %polly.loop_exit700.1.1 ], [ 0, %polly.loop_exit700.1881 ]
  %442 = add nuw nsw i64 %polly.indvar695.1.1, 32
  %443 = mul nuw nsw i64 %442, 640
  %444 = trunc i64 %442 to i32
  %broadcast.splatinsert995 = insertelement <4 x i32> poison, i32 %444, i32 0
  %broadcast.splat996 = shufflevector <4 x i32> %broadcast.splatinsert995, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %polly.loop_header692.1.1
  %index989 = phi i64 [ 0, %polly.loop_header692.1.1 ], [ %index.next990, %vector.body987 ]
  %vec.ind993 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header692.1.1 ], [ %vec.ind.next994, %vector.body987 ]
  %445 = add nuw nsw <4 x i64> %vec.ind993, <i64 32, i64 32, i64 32, i64 32>
  %446 = trunc <4 x i64> %445 to <4 x i32>
  %447 = mul <4 x i32> %broadcast.splat996, %446
  %448 = add <4 x i32> %447, <i32 3, i32 3, i32 3, i32 3>
  %449 = urem <4 x i32> %448, <i32 80, i32 80, i32 80, i32 80>
  %450 = sitofp <4 x i32> %449 to <4 x double>
  %451 = fmul fast <4 x double> %450, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %452 = extractelement <4 x i64> %445, i32 0
  %453 = shl i64 %452, 3
  %454 = add nuw nsw i64 %453, %443
  %455 = getelementptr i8, i8* %call, i64 %454
  %456 = bitcast i8* %455 to <4 x double>*
  store <4 x double> %451, <4 x double>* %456, align 8, !alias.scope !86, !noalias !88
  %index.next990 = add i64 %index989, 4
  %vec.ind.next994 = add <4 x i64> %vec.ind993, <i64 4, i64 4, i64 4, i64 4>
  %457 = icmp eq i64 %index.next990, 32
  br i1 %457, label %polly.loop_exit700.1.1, label %vector.body987, !llvm.loop !109

polly.loop_exit700.1.1:                           ; preds = %vector.body987
  %polly.indvar_next696.1.1 = add nuw nsw i64 %polly.indvar695.1.1, 1
  %exitcond834.1.1.not = icmp eq i64 %polly.indvar_next696.1.1, 32
  br i1 %exitcond834.1.1.not, label %polly.loop_header692.2.1, label %polly.loop_header692.1.1

polly.loop_header692.2.1:                         ; preds = %polly.loop_exit700.1.1, %polly.loop_exit700.2.1
  %polly.indvar695.2.1 = phi i64 [ %polly.indvar_next696.2.1, %polly.loop_exit700.2.1 ], [ 0, %polly.loop_exit700.1.1 ]
  %458 = add nuw nsw i64 %polly.indvar695.2.1, 32
  %459 = mul nuw nsw i64 %458, 640
  %460 = trunc i64 %458 to i32
  %broadcast.splatinsert1007 = insertelement <4 x i32> poison, i32 %460, i32 0
  %broadcast.splat1008 = shufflevector <4 x i32> %broadcast.splatinsert1007, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %polly.loop_header692.2.1
  %index1001 = phi i64 [ 0, %polly.loop_header692.2.1 ], [ %index.next1002, %vector.body999 ]
  %vec.ind1005 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header692.2.1 ], [ %vec.ind.next1006, %vector.body999 ]
  %461 = add nuw nsw <4 x i64> %vec.ind1005, <i64 64, i64 64, i64 64, i64 64>
  %462 = trunc <4 x i64> %461 to <4 x i32>
  %463 = mul <4 x i32> %broadcast.splat1008, %462
  %464 = add <4 x i32> %463, <i32 3, i32 3, i32 3, i32 3>
  %465 = urem <4 x i32> %464, <i32 80, i32 80, i32 80, i32 80>
  %466 = sitofp <4 x i32> %465 to <4 x double>
  %467 = fmul fast <4 x double> %466, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %468 = extractelement <4 x i64> %461, i32 0
  %469 = shl i64 %468, 3
  %470 = add nuw nsw i64 %469, %459
  %471 = getelementptr i8, i8* %call, i64 %470
  %472 = bitcast i8* %471 to <4 x double>*
  store <4 x double> %467, <4 x double>* %472, align 8, !alias.scope !86, !noalias !88
  %index.next1002 = add i64 %index1001, 4
  %vec.ind.next1006 = add <4 x i64> %vec.ind1005, <i64 4, i64 4, i64 4, i64 4>
  %473 = icmp eq i64 %index.next1002, 16
  br i1 %473, label %polly.loop_exit700.2.1, label %vector.body999, !llvm.loop !110

polly.loop_exit700.2.1:                           ; preds = %vector.body999
  %polly.indvar_next696.2.1 = add nuw nsw i64 %polly.indvar695.2.1, 1
  %exitcond834.2.1.not = icmp eq i64 %polly.indvar_next696.2.1, 32
  br i1 %exitcond834.2.1.not, label %polly.loop_header692.2884, label %polly.loop_header692.2.1

polly.loop_header692.2884:                        ; preds = %polly.loop_exit700.2.1, %polly.loop_exit700.2895
  %polly.indvar695.2883 = phi i64 [ %polly.indvar_next696.2893, %polly.loop_exit700.2895 ], [ 0, %polly.loop_exit700.2.1 ]
  %474 = add nuw nsw i64 %polly.indvar695.2883, 64
  %475 = mul nuw nsw i64 %474, 640
  %476 = trunc i64 %474 to i32
  %broadcast.splatinsert1021 = insertelement <4 x i32> poison, i32 %476, i32 0
  %broadcast.splat1022 = shufflevector <4 x i32> %broadcast.splatinsert1021, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %polly.loop_header692.2884
  %index1013 = phi i64 [ 0, %polly.loop_header692.2884 ], [ %index.next1014, %vector.body1011 ]
  %vec.ind1019 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header692.2884 ], [ %vec.ind.next1020, %vector.body1011 ]
  %477 = mul <4 x i32> %vec.ind1019, %broadcast.splat1022
  %478 = add <4 x i32> %477, <i32 3, i32 3, i32 3, i32 3>
  %479 = urem <4 x i32> %478, <i32 80, i32 80, i32 80, i32 80>
  %480 = sitofp <4 x i32> %479 to <4 x double>
  %481 = fmul fast <4 x double> %480, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %482 = shl i64 %index1013, 3
  %483 = add nuw nsw i64 %482, %475
  %484 = getelementptr i8, i8* %call, i64 %483
  %485 = bitcast i8* %484 to <4 x double>*
  store <4 x double> %481, <4 x double>* %485, align 8, !alias.scope !86, !noalias !88
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1020 = add <4 x i32> %vec.ind1019, <i32 4, i32 4, i32 4, i32 4>
  %486 = icmp eq i64 %index.next1014, 32
  br i1 %486, label %polly.loop_exit700.2895, label %vector.body1011, !llvm.loop !111

polly.loop_exit700.2895:                          ; preds = %vector.body1011
  %polly.indvar_next696.2893 = add nuw nsw i64 %polly.indvar695.2883, 1
  %exitcond834.2894.not = icmp eq i64 %polly.indvar_next696.2893, 16
  br i1 %exitcond834.2894.not, label %polly.loop_header692.1.2, label %polly.loop_header692.2884

polly.loop_header692.1.2:                         ; preds = %polly.loop_exit700.2895, %polly.loop_exit700.1.2
  %polly.indvar695.1.2 = phi i64 [ %polly.indvar_next696.1.2, %polly.loop_exit700.1.2 ], [ 0, %polly.loop_exit700.2895 ]
  %487 = add nuw nsw i64 %polly.indvar695.1.2, 64
  %488 = mul nuw nsw i64 %487, 640
  %489 = trunc i64 %487 to i32
  %broadcast.splatinsert1033 = insertelement <4 x i32> poison, i32 %489, i32 0
  %broadcast.splat1034 = shufflevector <4 x i32> %broadcast.splatinsert1033, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %polly.loop_header692.1.2
  %index1027 = phi i64 [ 0, %polly.loop_header692.1.2 ], [ %index.next1028, %vector.body1025 ]
  %vec.ind1031 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header692.1.2 ], [ %vec.ind.next1032, %vector.body1025 ]
  %490 = add nuw nsw <4 x i64> %vec.ind1031, <i64 32, i64 32, i64 32, i64 32>
  %491 = trunc <4 x i64> %490 to <4 x i32>
  %492 = mul <4 x i32> %broadcast.splat1034, %491
  %493 = add <4 x i32> %492, <i32 3, i32 3, i32 3, i32 3>
  %494 = urem <4 x i32> %493, <i32 80, i32 80, i32 80, i32 80>
  %495 = sitofp <4 x i32> %494 to <4 x double>
  %496 = fmul fast <4 x double> %495, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %497 = extractelement <4 x i64> %490, i32 0
  %498 = shl i64 %497, 3
  %499 = add nuw nsw i64 %498, %488
  %500 = getelementptr i8, i8* %call, i64 %499
  %501 = bitcast i8* %500 to <4 x double>*
  store <4 x double> %496, <4 x double>* %501, align 8, !alias.scope !86, !noalias !88
  %index.next1028 = add i64 %index1027, 4
  %vec.ind.next1032 = add <4 x i64> %vec.ind1031, <i64 4, i64 4, i64 4, i64 4>
  %502 = icmp eq i64 %index.next1028, 32
  br i1 %502, label %polly.loop_exit700.1.2, label %vector.body1025, !llvm.loop !112

polly.loop_exit700.1.2:                           ; preds = %vector.body1025
  %polly.indvar_next696.1.2 = add nuw nsw i64 %polly.indvar695.1.2, 1
  %exitcond834.1.2.not = icmp eq i64 %polly.indvar_next696.1.2, 16
  br i1 %exitcond834.1.2.not, label %polly.loop_header692.2.2, label %polly.loop_header692.1.2

polly.loop_header692.2.2:                         ; preds = %polly.loop_exit700.1.2, %polly.loop_exit700.2.2
  %polly.indvar695.2.2 = phi i64 [ %polly.indvar_next696.2.2, %polly.loop_exit700.2.2 ], [ 0, %polly.loop_exit700.1.2 ]
  %503 = add nuw nsw i64 %polly.indvar695.2.2, 64
  %504 = mul nuw nsw i64 %503, 640
  %505 = trunc i64 %503 to i32
  %broadcast.splatinsert1045 = insertelement <4 x i32> poison, i32 %505, i32 0
  %broadcast.splat1046 = shufflevector <4 x i32> %broadcast.splatinsert1045, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %polly.loop_header692.2.2
  %index1039 = phi i64 [ 0, %polly.loop_header692.2.2 ], [ %index.next1040, %vector.body1037 ]
  %vec.ind1043 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header692.2.2 ], [ %vec.ind.next1044, %vector.body1037 ]
  %506 = add nuw nsw <4 x i64> %vec.ind1043, <i64 64, i64 64, i64 64, i64 64>
  %507 = trunc <4 x i64> %506 to <4 x i32>
  %508 = mul <4 x i32> %broadcast.splat1046, %507
  %509 = add <4 x i32> %508, <i32 3, i32 3, i32 3, i32 3>
  %510 = urem <4 x i32> %509, <i32 80, i32 80, i32 80, i32 80>
  %511 = sitofp <4 x i32> %510 to <4 x double>
  %512 = fmul fast <4 x double> %511, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %513 = extractelement <4 x i64> %506, i32 0
  %514 = shl i64 %513, 3
  %515 = add nuw nsw i64 %514, %504
  %516 = getelementptr i8, i8* %call, i64 %515
  %517 = bitcast i8* %516 to <4 x double>*
  store <4 x double> %512, <4 x double>* %517, align 8, !alias.scope !86, !noalias !88
  %index.next1040 = add i64 %index1039, 4
  %vec.ind.next1044 = add <4 x i64> %vec.ind1043, <i64 4, i64 4, i64 4, i64 4>
  %518 = icmp eq i64 %index.next1040, 16
  br i1 %518, label %polly.loop_exit700.2.2, label %vector.body1037, !llvm.loop !113

polly.loop_exit700.2.2:                           ; preds = %vector.body1037
  %polly.indvar_next696.2.2 = add nuw nsw i64 %polly.indvar695.2.2, 1
  %exitcond834.2.2.not = icmp eq i64 %polly.indvar_next696.2.2, 16
  br i1 %exitcond834.2.2.not, label %polly.loop_header719, label %polly.loop_header692.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 4}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 64}
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
