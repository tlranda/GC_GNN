; ModuleID = 'syr2k_recreations//mmp_syr2k_S_170.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_170.c"
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
  %call712 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1573 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1573, %call2
  %polly.access.call2593 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2593, %call1
  %2 = or i1 %0, %1
  %polly.access.call613 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call613, %call2
  %4 = icmp ule i8* %polly.access.call2593, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call613, %call1
  %8 = icmp ule i8* %polly.access.call1573, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header698, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv7.i, i64 %index925
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit759.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header491, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i, i64 %index1207
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
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit521.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i52, i64 %index1230
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
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit366.1
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
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i91, i64 %index1256
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
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %exitcond788.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1265 = add i64 %indvar1264, 1
  br i1 %exitcond788.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond787.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond787.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.1
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %polly.loop_exit213.1 ], [ 1, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv777 = phi i64 [ %indvars.iv.next778, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %98 = shl nsw i64 %polly.indvar214, 3
  %99 = sub nsw i64 %97, %98
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next778 = add nsw i64 %indvars.iv777, -8
  %exitcond785.not = icmp eq i64 %polly.indvar_next215, %indvars.iv783
  br i1 %exitcond785.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit225 ], [ %indvars.iv777, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ 0, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv779, i64 7)
  %100 = add nsw i64 %polly.indvar220, %99
  %polly.loop_guard903 = icmp sgt i64 %100, -1
  %101 = add nuw nsw i64 %polly.indvar220, %97
  %102 = mul nuw nsw i64 %101, 480
  %103 = mul nuw nsw i64 %101, 640
  br i1 %polly.loop_guard903, label %polly.loop_header223.us, label %polly.loop_exit225

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.loop_exit231.loopexit.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit231.loopexit.us ], [ 0, %polly.loop_header217 ]
  %104 = shl i64 %polly.indvar226.us, 3
  %105 = add i64 %104, %102
  %scevgep238.us = getelementptr i8, i8* %call2, i64 %105
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !62, !noalias !66
  %scevgep244.us = getelementptr i8, i8* %call1, i64 %105
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %106 = add nuw nsw i64 %polly.indvar232.us, %98
  %107 = mul nuw nsw i64 %106, 480
  %108 = add nuw nsw i64 %107, %104
  %scevgep235.us = getelementptr i8, i8* %call1, i64 %108
  %scevgep235236.us = bitcast i8* %scevgep235.us to double*
  %_p_scalar_237.us = load double, double* %scevgep235236.us, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_237.us
  %scevgep241.us = getelementptr i8, i8* %call2, i64 %108
  %scevgep241242.us = bitcast i8* %scevgep241.us to double*
  %_p_scalar_243.us = load double, double* %scevgep241242.us, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_243.us
  %109 = shl i64 %106, 3
  %110 = add nuw nsw i64 %109, %103
  %scevgep247.us = getelementptr i8, i8* %call, i64 %110
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar232.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit231.loopexit.us, label %polly.loop_header229.us

polly.loop_exit231.loopexit.us:                   ; preds = %polly.loop_header229.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond781.not = icmp eq i64 %polly.indvar_next227.us, 50
  br i1 %exitcond781.not, label %polly.loop_exit225, label %polly.loop_header223.us

polly.loop_exit225:                               ; preds = %polly.loop_exit231.loopexit.us, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next780 = add nsw i64 %indvars.iv779, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next221, 8
  br i1 %exitcond782.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1238 = phi i64 [ %indvar.next1239, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %111 = add i64 %indvar1238, 1
  %112 = mul nuw nsw i64 %polly.indvar339, 640
  %scevgep348 = getelementptr i8, i8* %call, i64 %112
  %min.iters.check1240 = icmp ult i64 %111, 4
  br i1 %min.iters.check1240, label %polly.loop_header342.preheader, label %vector.ph1241

vector.ph1241:                                    ; preds = %polly.loop_header336
  %n.vec1243 = and i64 %111, -4
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %vector.ph1241
  %index1244 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1245, %vector.body1237 ]
  %113 = shl nuw nsw i64 %index1244, 3
  %114 = getelementptr i8, i8* %scevgep348, i64 %113
  %115 = bitcast i8* %114 to <4 x double>*
  %wide.load1248 = load <4 x double>, <4 x double>* %115, align 8, !alias.scope !68, !noalias !70
  %116 = fmul fast <4 x double> %wide.load1248, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %117 = bitcast i8* %114 to <4 x double>*
  store <4 x double> %116, <4 x double>* %117, align 8, !alias.scope !68, !noalias !70
  %index.next1245 = add i64 %index1244, 4
  %118 = icmp eq i64 %index.next1245, %n.vec1243
  br i1 %118, label %middle.block1235, label %vector.body1237, !llvm.loop !73

middle.block1235:                                 ; preds = %vector.body1237
  %cmp.n1247 = icmp eq i64 %111, %n.vec1243
  br i1 %cmp.n1247, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block1235
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1243, %middle.block1235 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block1235
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next340, 80
  %indvar.next1239 = add i64 %indvar1238, 1
  br i1 %exitcond804.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %119 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %119
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond803.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !74

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit366.1
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %polly.loop_exit366.1 ], [ 1, %polly.loop_exit344 ]
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit366.1 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit366.1 ], [ 0, %polly.loop_exit344 ]
  %120 = shl nsw i64 %polly.indvar355, 3
  br label %polly.loop_header364

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header352
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %polly.loop_exit372 ], [ %indvars.iv789, %polly.loop_header352 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit372 ], [ 0, %polly.loop_header352 ]
  %121 = shl nsw i64 %polly.indvar367, 3
  %122 = sub nsw i64 %120, %121
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_exit378
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next792 = add nsw i64 %indvars.iv791, -8
  %exitcond801.not = icmp eq i64 %polly.indvar_next368, %indvars.iv799
  br i1 %exitcond801.not, label %polly.loop_header364.1, label %polly.loop_header364

polly.loop_header370:                             ; preds = %polly.loop_exit378, %polly.loop_header364
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit378 ], [ %indvars.iv791, %polly.loop_header364 ]
  %polly.indvar373 = phi i64 [ %polly.indvar_next374, %polly.loop_exit378 ], [ 0, %polly.loop_header364 ]
  %smin795 = call i64 @llvm.smin.i64(i64 %indvars.iv793, i64 7)
  %123 = add nsw i64 %polly.indvar373, %122
  %polly.loop_guard386905 = icmp sgt i64 %123, -1
  %124 = add nuw nsw i64 %polly.indvar373, %120
  %125 = mul nuw nsw i64 %124, 480
  %126 = mul nuw nsw i64 %124, 640
  br i1 %polly.loop_guard386905, label %polly.loop_header376.us, label %polly.loop_exit378

polly.loop_header376.us:                          ; preds = %polly.loop_header370, %polly.loop_exit385.loopexit.us
  %polly.indvar379.us = phi i64 [ %polly.indvar_next380.us, %polly.loop_exit385.loopexit.us ], [ 0, %polly.loop_header370 ]
  %127 = shl i64 %polly.indvar379.us, 3
  %128 = add i64 %127, %125
  %scevgep393.us = getelementptr i8, i8* %call2, i64 %128
  %scevgep393394.us = bitcast i8* %scevgep393.us to double*
  %_p_scalar_395.us = load double, double* %scevgep393394.us, align 8, !alias.scope !72, !noalias !75
  %scevgep399.us = getelementptr i8, i8* %call1, i64 %128
  %scevgep399400.us = bitcast i8* %scevgep399.us to double*
  %_p_scalar_401.us = load double, double* %scevgep399400.us, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header383.us

polly.loop_header383.us:                          ; preds = %polly.loop_header376.us, %polly.loop_header383.us
  %polly.indvar387.us = phi i64 [ %polly.indvar_next388.us, %polly.loop_header383.us ], [ 0, %polly.loop_header376.us ]
  %129 = add nuw nsw i64 %polly.indvar387.us, %121
  %130 = mul nuw nsw i64 %129, 480
  %131 = add nuw nsw i64 %130, %127
  %scevgep390.us = getelementptr i8, i8* %call1, i64 %131
  %scevgep390391.us = bitcast i8* %scevgep390.us to double*
  %_p_scalar_392.us = load double, double* %scevgep390391.us, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us = fmul fast double %_p_scalar_395.us, %_p_scalar_392.us
  %scevgep396.us = getelementptr i8, i8* %call2, i64 %131
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us = fmul fast double %_p_scalar_401.us, %_p_scalar_398.us
  %132 = shl i64 %129, 3
  %133 = add nuw nsw i64 %132, %126
  %scevgep402.us = getelementptr i8, i8* %call, i64 %133
  %scevgep402403.us = bitcast i8* %scevgep402.us to double*
  %_p_scalar_404.us = load double, double* %scevgep402403.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_404.us
  store double %p_add42.i79.us, double* %scevgep402403.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next388.us = add nuw nsw i64 %polly.indvar387.us, 1
  %exitcond796.not = icmp eq i64 %polly.indvar387.us, %smin795
  br i1 %exitcond796.not, label %polly.loop_exit385.loopexit.us, label %polly.loop_header383.us

polly.loop_exit385.loopexit.us:                   ; preds = %polly.loop_header383.us
  %polly.indvar_next380.us = add nuw nsw i64 %polly.indvar379.us, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next380.us, 50
  br i1 %exitcond797.not, label %polly.loop_exit378, label %polly.loop_header376.us

polly.loop_exit378:                               ; preds = %polly.loop_exit385.loopexit.us, %polly.loop_header370
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %indvars.iv.next794 = add nsw i64 %indvars.iv793, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next374, 8
  br i1 %exitcond798.not, label %polly.loop_exit372, label %polly.loop_header370

polly.loop_header491:                             ; preds = %init_array.exit, %polly.loop_exit499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit499 ], [ 0, %init_array.exit ]
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_exit499 ], [ 1, %init_array.exit ]
  %134 = add i64 %indvar, 1
  %135 = mul nuw nsw i64 %polly.indvar494, 640
  %scevgep503 = getelementptr i8, i8* %call, i64 %135
  %min.iters.check1214 = icmp ult i64 %134, 4
  br i1 %min.iters.check1214, label %polly.loop_header497.preheader, label %vector.ph1215

vector.ph1215:                                    ; preds = %polly.loop_header491
  %n.vec1217 = and i64 %134, -4
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1215
  %index1218 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1219, %vector.body1213 ]
  %136 = shl nuw nsw i64 %index1218, 3
  %137 = getelementptr i8, i8* %scevgep503, i64 %136
  %138 = bitcast i8* %137 to <4 x double>*
  %wide.load1222 = load <4 x double>, <4 x double>* %138, align 8, !alias.scope !77, !noalias !79
  %139 = fmul fast <4 x double> %wide.load1222, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %140 = bitcast i8* %137 to <4 x double>*
  store <4 x double> %139, <4 x double>* %140, align 8, !alias.scope !77, !noalias !79
  %index.next1219 = add i64 %index1218, 4
  %141 = icmp eq i64 %index.next1219, %n.vec1217
  br i1 %141, label %middle.block1211, label %vector.body1213, !llvm.loop !82

middle.block1211:                                 ; preds = %vector.body1213
  %cmp.n1221 = icmp eq i64 %134, %n.vec1217
  br i1 %cmp.n1221, label %polly.loop_exit499, label %polly.loop_header497.preheader

polly.loop_header497.preheader:                   ; preds = %polly.loop_header491, %middle.block1211
  %polly.indvar500.ph = phi i64 [ 0, %polly.loop_header491 ], [ %n.vec1217, %middle.block1211 ]
  br label %polly.loop_header497

polly.loop_exit499:                               ; preds = %polly.loop_header497, %middle.block1211
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next495, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond820.not, label %polly.loop_header507, label %polly.loop_header491

polly.loop_header497:                             ; preds = %polly.loop_header497.preheader, %polly.loop_header497
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_header497 ], [ %polly.indvar500.ph, %polly.loop_header497.preheader ]
  %142 = shl nuw nsw i64 %polly.indvar500, 3
  %scevgep504 = getelementptr i8, i8* %scevgep503, i64 %142
  %scevgep504505 = bitcast i8* %scevgep504 to double*
  %_p_scalar_506 = load double, double* %scevgep504505, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_506, 1.200000e+00
  store double %p_mul.i, double* %scevgep504505, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next501, %polly.indvar494
  br i1 %exitcond819.not, label %polly.loop_exit499, label %polly.loop_header497, !llvm.loop !83

polly.loop_header507:                             ; preds = %polly.loop_exit499, %polly.loop_exit521.1
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit521.1 ], [ 1, %polly.loop_exit499 ]
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit521.1 ], [ 0, %polly.loop_exit499 ]
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit521.1 ], [ 0, %polly.loop_exit499 ]
  %143 = shl nsw i64 %polly.indvar510, 3
  br label %polly.loop_header519

polly.loop_header519:                             ; preds = %polly.loop_exit527, %polly.loop_header507
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit527 ], [ %indvars.iv805, %polly.loop_header507 ]
  %polly.indvar522 = phi i64 [ %polly.indvar_next523, %polly.loop_exit527 ], [ 0, %polly.loop_header507 ]
  %144 = shl nsw i64 %polly.indvar522, 3
  %145 = sub nsw i64 %143, %144
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit533
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %indvars.iv.next808 = add nsw i64 %indvars.iv807, -8
  %exitcond817.not = icmp eq i64 %polly.indvar_next523, %indvars.iv815
  br i1 %exitcond817.not, label %polly.loop_header519.1, label %polly.loop_header519

polly.loop_header525:                             ; preds = %polly.loop_exit533, %polly.loop_header519
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit533 ], [ %indvars.iv807, %polly.loop_header519 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit533 ], [ 0, %polly.loop_header519 ]
  %smin811 = call i64 @llvm.smin.i64(i64 %indvars.iv809, i64 7)
  %146 = add nsw i64 %polly.indvar528, %145
  %polly.loop_guard541907 = icmp sgt i64 %146, -1
  %147 = add nuw nsw i64 %polly.indvar528, %143
  %148 = mul nuw nsw i64 %147, 480
  %149 = mul nuw nsw i64 %147, 640
  br i1 %polly.loop_guard541907, label %polly.loop_header531.us, label %polly.loop_exit533

polly.loop_header531.us:                          ; preds = %polly.loop_header525, %polly.loop_exit540.loopexit.us
  %polly.indvar534.us = phi i64 [ %polly.indvar_next535.us, %polly.loop_exit540.loopexit.us ], [ 0, %polly.loop_header525 ]
  %150 = shl i64 %polly.indvar534.us, 3
  %151 = add i64 %150, %148
  %scevgep548.us = getelementptr i8, i8* %call2, i64 %151
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !81, !noalias !84
  %scevgep554.us = getelementptr i8, i8* %call1, i64 %151
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header538.us

polly.loop_header538.us:                          ; preds = %polly.loop_header531.us, %polly.loop_header538.us
  %polly.indvar542.us = phi i64 [ %polly.indvar_next543.us, %polly.loop_header538.us ], [ 0, %polly.loop_header531.us ]
  %152 = add nuw nsw i64 %polly.indvar542.us, %144
  %153 = mul nuw nsw i64 %152, 480
  %154 = add nuw nsw i64 %153, %150
  %scevgep545.us = getelementptr i8, i8* %call1, i64 %154
  %scevgep545546.us = bitcast i8* %scevgep545.us to double*
  %_p_scalar_547.us = load double, double* %scevgep545546.us, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_547.us
  %scevgep551.us = getelementptr i8, i8* %call2, i64 %154
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_553.us
  %155 = shl i64 %152, 3
  %156 = add nuw nsw i64 %155, %149
  %scevgep557.us = getelementptr i8, i8* %call, i64 %156
  %scevgep557558.us = bitcast i8* %scevgep557.us to double*
  %_p_scalar_559.us = load double, double* %scevgep557558.us, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_559.us
  store double %p_add42.i.us, double* %scevgep557558.us, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %exitcond812.not = icmp eq i64 %polly.indvar542.us, %smin811
  br i1 %exitcond812.not, label %polly.loop_exit540.loopexit.us, label %polly.loop_header538.us

polly.loop_exit540.loopexit.us:                   ; preds = %polly.loop_header538.us
  %polly.indvar_next535.us = add nuw nsw i64 %polly.indvar534.us, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next535.us, 50
  br i1 %exitcond813.not, label %polly.loop_exit533, label %polly.loop_header531.us

polly.loop_exit533:                               ; preds = %polly.loop_exit540.loopexit.us, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next529, 8
  br i1 %exitcond814.not, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header698:                             ; preds = %entry, %polly.loop_exit706
  %polly.indvar701 = phi i64 [ %polly.indvar_next702, %polly.loop_exit706 ], [ 0, %entry ]
  %157 = mul nuw nsw i64 %polly.indvar701, 640
  %158 = trunc i64 %polly.indvar701 to i32
  %broadcast.splatinsert945 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat946 = shufflevector <4 x i32> %broadcast.splatinsert945, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body935

vector.body935:                                   ; preds = %vector.body935, %polly.loop_header698
  %index937 = phi i64 [ 0, %polly.loop_header698 ], [ %index.next938, %vector.body935 ]
  %vec.ind943 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698 ], [ %vec.ind.next944, %vector.body935 ]
  %159 = mul <4 x i32> %vec.ind943, %broadcast.splat946
  %160 = add <4 x i32> %159, <i32 3, i32 3, i32 3, i32 3>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %164 = shl i64 %index937, 3
  %165 = add nuw nsw i64 %164, %157
  %166 = getelementptr i8, i8* %call, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !86, !noalias !88
  %index.next938 = add i64 %index937, 4
  %vec.ind.next944 = add <4 x i32> %vec.ind943, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next938, 32
  br i1 %168, label %polly.loop_exit706, label %vector.body935, !llvm.loop !91

polly.loop_exit706:                               ; preds = %vector.body935
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next702, 32
  br i1 %exitcond840.not, label %polly.loop_header698.1, label %polly.loop_header698

polly.loop_header725:                             ; preds = %polly.loop_exit706.2.2, %polly.loop_exit733
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_exit733 ], [ 0, %polly.loop_exit706.2.2 ]
  %169 = mul nuw nsw i64 %polly.indvar728, 480
  %170 = trunc i64 %polly.indvar728 to i32
  %broadcast.splatinsert1059 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1060 = shufflevector <4 x i32> %broadcast.splatinsert1059, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %polly.loop_header725
  %index1051 = phi i64 [ 0, %polly.loop_header725 ], [ %index.next1052, %vector.body1049 ]
  %vec.ind1057 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725 ], [ %vec.ind.next1058, %vector.body1049 ]
  %171 = mul <4 x i32> %vec.ind1057, %broadcast.splat1060
  %172 = add <4 x i32> %171, <i32 2, i32 2, i32 2, i32 2>
  %173 = urem <4 x i32> %172, <i32 60, i32 60, i32 60, i32 60>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %176 = shl i64 %index1051, 3
  %177 = add i64 %176, %169
  %178 = getelementptr i8, i8* %call2, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !90, !noalias !92
  %index.next1052 = add i64 %index1051, 4
  %vec.ind.next1058 = add <4 x i32> %vec.ind1057, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1052, 32
  br i1 %180, label %polly.loop_exit733, label %vector.body1049, !llvm.loop !93

polly.loop_exit733:                               ; preds = %vector.body1049
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next729, 32
  br i1 %exitcond831.not, label %polly.loop_header725.1, label %polly.loop_header725

polly.loop_header751:                             ; preds = %polly.loop_exit733.1.2, %polly.loop_exit759
  %polly.indvar754 = phi i64 [ %polly.indvar_next755, %polly.loop_exit759 ], [ 0, %polly.loop_exit733.1.2 ]
  %181 = mul nuw nsw i64 %polly.indvar754, 480
  %182 = trunc i64 %polly.indvar754 to i32
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header751
  %index1129 = phi i64 [ 0, %polly.loop_header751 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1135 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751 ], [ %vec.ind.next1136, %vector.body1127 ]
  %183 = mul <4 x i32> %vec.ind1135, %broadcast.splat1138
  %184 = add <4 x i32> %183, <i32 1, i32 1, i32 1, i32 1>
  %185 = urem <4 x i32> %184, <i32 80, i32 80, i32 80, i32 80>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %188 = shl i64 %index1129, 3
  %189 = add i64 %188, %181
  %190 = getelementptr i8, i8* %call1, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %187, <4 x double>* %191, align 8, !alias.scope !89, !noalias !94
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1136 = add <4 x i32> %vec.ind1135, <i32 4, i32 4, i32 4, i32 4>
  %192 = icmp eq i64 %index.next1130, 32
  br i1 %192, label %polly.loop_exit759, label %vector.body1127, !llvm.loop !95

polly.loop_exit759:                               ; preds = %vector.body1127
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next755, 32
  br i1 %exitcond825.not, label %polly.loop_header751.1, label %polly.loop_header751

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv777.1 = phi i64 [ %indvars.iv.next778.1, %polly.loop_exit219.1 ], [ %indvars.iv, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %193 = shl nsw i64 %polly.indvar214.1, 3
  %194 = sub nsw i64 %97, %193
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %indvars.iv779.1 = phi i64 [ %indvars.iv.next780.1, %polly.loop_exit225.1 ], [ %indvars.iv777.1, %polly.loop_header211.1 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit225.1 ], [ 0, %polly.loop_header211.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv779.1, i64 7)
  %195 = add nsw i64 %polly.indvar220.1, %194
  %polly.loop_guard.1904 = icmp sgt i64 %195, -1
  %196 = add nuw nsw i64 %polly.indvar220.1, %97
  %197 = mul nuw nsw i64 %196, 480
  %198 = mul nuw nsw i64 %196, 640
  br i1 %polly.loop_guard.1904, label %polly.loop_header223.us.1, label %polly.loop_exit225.1

polly.loop_header223.us.1:                        ; preds = %polly.loop_header217.1, %polly.loop_exit231.loopexit.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.loop_exit231.loopexit.us.1 ], [ 0, %polly.loop_header217.1 ]
  %199 = shl i64 %polly.indvar226.us.1, 3
  %200 = add i64 %199, 400
  %201 = add i64 %200, %197
  %scevgep238.us.1 = getelementptr i8, i8* %call2, i64 %201
  %scevgep238239.us.1 = bitcast i8* %scevgep238.us.1 to double*
  %_p_scalar_240.us.1 = load double, double* %scevgep238239.us.1, align 8, !alias.scope !62, !noalias !66
  %scevgep244.us.1 = getelementptr i8, i8* %call1, i64 %201
  %scevgep244245.us.1 = bitcast i8* %scevgep244.us.1 to double*
  %_p_scalar_246.us.1 = load double, double* %scevgep244245.us.1, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header229.us.1

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1, %polly.loop_header223.us.1
  %polly.indvar232.us.1 = phi i64 [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ], [ 0, %polly.loop_header223.us.1 ]
  %202 = add nuw nsw i64 %polly.indvar232.us.1, %193
  %203 = mul nuw nsw i64 %202, 480
  %204 = add nuw nsw i64 %203, %200
  %scevgep235.us.1 = getelementptr i8, i8* %call1, i64 %204
  %scevgep235236.us.1 = bitcast i8* %scevgep235.us.1 to double*
  %_p_scalar_237.us.1 = load double, double* %scevgep235236.us.1, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_240.us.1, %_p_scalar_237.us.1
  %scevgep241.us.1 = getelementptr i8, i8* %call2, i64 %204
  %scevgep241242.us.1 = bitcast i8* %scevgep241.us.1 to double*
  %_p_scalar_243.us.1 = load double, double* %scevgep241242.us.1, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_246.us.1, %_p_scalar_243.us.1
  %205 = shl i64 %202, 3
  %206 = add nuw nsw i64 %205, %198
  %scevgep247.us.1 = getelementptr i8, i8* %call, i64 %206
  %scevgep247248.us.1 = bitcast i8* %scevgep247.us.1 to double*
  %_p_scalar_249.us.1 = load double, double* %scevgep247248.us.1, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_249.us.1
  store double %p_add42.i118.us.1, double* %scevgep247248.us.1, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next233.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar232.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit231.loopexit.us.1, label %polly.loop_header229.us.1

polly.loop_exit231.loopexit.us.1:                 ; preds = %polly.loop_header229.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond781.1.not = icmp eq i64 %polly.indvar_next227.us.1, 10
  br i1 %exitcond781.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.us.1

polly.loop_exit225.1:                             ; preds = %polly.loop_exit231.loopexit.us.1, %polly.loop_header217.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %indvars.iv.next780.1 = add nsw i64 %indvars.iv779.1, 1
  %exitcond782.1.not = icmp eq i64 %polly.indvar_next221.1, 8
  br i1 %exitcond782.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next778.1 = add nsw i64 %indvars.iv777.1, -8
  %exitcond785.1.not = icmp eq i64 %polly.indvar_next215.1, %indvars.iv783
  br i1 %exitcond785.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond786.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header364.1:                           ; preds = %polly.loop_exit372, %polly.loop_exit372.1
  %indvars.iv791.1 = phi i64 [ %indvars.iv.next792.1, %polly.loop_exit372.1 ], [ %indvars.iv789, %polly.loop_exit372 ]
  %polly.indvar367.1 = phi i64 [ %polly.indvar_next368.1, %polly.loop_exit372.1 ], [ 0, %polly.loop_exit372 ]
  %207 = shl nsw i64 %polly.indvar367.1, 3
  %208 = sub nsw i64 %120, %207
  br label %polly.loop_header370.1

polly.loop_header370.1:                           ; preds = %polly.loop_exit378.1, %polly.loop_header364.1
  %indvars.iv793.1 = phi i64 [ %indvars.iv.next794.1, %polly.loop_exit378.1 ], [ %indvars.iv791.1, %polly.loop_header364.1 ]
  %polly.indvar373.1 = phi i64 [ %polly.indvar_next374.1, %polly.loop_exit378.1 ], [ 0, %polly.loop_header364.1 ]
  %smin795.1 = call i64 @llvm.smin.i64(i64 %indvars.iv793.1, i64 7)
  %209 = add nsw i64 %polly.indvar373.1, %208
  %polly.loop_guard386.1906 = icmp sgt i64 %209, -1
  %210 = add nuw nsw i64 %polly.indvar373.1, %120
  %211 = mul nuw nsw i64 %210, 480
  %212 = mul nuw nsw i64 %210, 640
  br i1 %polly.loop_guard386.1906, label %polly.loop_header376.us.1, label %polly.loop_exit378.1

polly.loop_header376.us.1:                        ; preds = %polly.loop_header370.1, %polly.loop_exit385.loopexit.us.1
  %polly.indvar379.us.1 = phi i64 [ %polly.indvar_next380.us.1, %polly.loop_exit385.loopexit.us.1 ], [ 0, %polly.loop_header370.1 ]
  %213 = shl i64 %polly.indvar379.us.1, 3
  %214 = add i64 %213, 400
  %215 = add i64 %214, %211
  %scevgep393.us.1 = getelementptr i8, i8* %call2, i64 %215
  %scevgep393394.us.1 = bitcast i8* %scevgep393.us.1 to double*
  %_p_scalar_395.us.1 = load double, double* %scevgep393394.us.1, align 8, !alias.scope !72, !noalias !75
  %scevgep399.us.1 = getelementptr i8, i8* %call1, i64 %215
  %scevgep399400.us.1 = bitcast i8* %scevgep399.us.1 to double*
  %_p_scalar_401.us.1 = load double, double* %scevgep399400.us.1, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header383.us.1

polly.loop_header383.us.1:                        ; preds = %polly.loop_header383.us.1, %polly.loop_header376.us.1
  %polly.indvar387.us.1 = phi i64 [ %polly.indvar_next388.us.1, %polly.loop_header383.us.1 ], [ 0, %polly.loop_header376.us.1 ]
  %216 = add nuw nsw i64 %polly.indvar387.us.1, %207
  %217 = mul nuw nsw i64 %216, 480
  %218 = add nuw nsw i64 %217, %214
  %scevgep390.us.1 = getelementptr i8, i8* %call1, i64 %218
  %scevgep390391.us.1 = bitcast i8* %scevgep390.us.1 to double*
  %_p_scalar_392.us.1 = load double, double* %scevgep390391.us.1, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_395.us.1, %_p_scalar_392.us.1
  %scevgep396.us.1 = getelementptr i8, i8* %call2, i64 %218
  %scevgep396397.us.1 = bitcast i8* %scevgep396.us.1 to double*
  %_p_scalar_398.us.1 = load double, double* %scevgep396397.us.1, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_401.us.1, %_p_scalar_398.us.1
  %219 = shl i64 %216, 3
  %220 = add nuw nsw i64 %219, %212
  %scevgep402.us.1 = getelementptr i8, i8* %call, i64 %220
  %scevgep402403.us.1 = bitcast i8* %scevgep402.us.1 to double*
  %_p_scalar_404.us.1 = load double, double* %scevgep402403.us.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_404.us.1
  store double %p_add42.i79.us.1, double* %scevgep402403.us.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next388.us.1 = add nuw nsw i64 %polly.indvar387.us.1, 1
  %exitcond796.1.not = icmp eq i64 %polly.indvar387.us.1, %smin795.1
  br i1 %exitcond796.1.not, label %polly.loop_exit385.loopexit.us.1, label %polly.loop_header383.us.1

polly.loop_exit385.loopexit.us.1:                 ; preds = %polly.loop_header383.us.1
  %polly.indvar_next380.us.1 = add nuw nsw i64 %polly.indvar379.us.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar_next380.us.1, 10
  br i1 %exitcond797.1.not, label %polly.loop_exit378.1, label %polly.loop_header376.us.1

polly.loop_exit378.1:                             ; preds = %polly.loop_exit385.loopexit.us.1, %polly.loop_header370.1
  %polly.indvar_next374.1 = add nuw nsw i64 %polly.indvar373.1, 1
  %indvars.iv.next794.1 = add nsw i64 %indvars.iv793.1, 1
  %exitcond798.1.not = icmp eq i64 %polly.indvar_next374.1, 8
  br i1 %exitcond798.1.not, label %polly.loop_exit372.1, label %polly.loop_header370.1

polly.loop_exit372.1:                             ; preds = %polly.loop_exit378.1
  %polly.indvar_next368.1 = add nuw nsw i64 %polly.indvar367.1, 1
  %indvars.iv.next792.1 = add nsw i64 %indvars.iv791.1, -8
  %exitcond801.1.not = icmp eq i64 %polly.indvar_next368.1, %indvars.iv799
  br i1 %exitcond801.1.not, label %polly.loop_exit366.1, label %polly.loop_header364.1

polly.loop_exit366.1:                             ; preds = %polly.loop_exit372.1
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next790 = add nuw nsw i64 %indvars.iv789, 8
  %indvars.iv.next800 = add nuw nsw i64 %indvars.iv799, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next356, 10
  br i1 %exitcond802.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header519.1:                           ; preds = %polly.loop_exit527, %polly.loop_exit527.1
  %indvars.iv807.1 = phi i64 [ %indvars.iv.next808.1, %polly.loop_exit527.1 ], [ %indvars.iv805, %polly.loop_exit527 ]
  %polly.indvar522.1 = phi i64 [ %polly.indvar_next523.1, %polly.loop_exit527.1 ], [ 0, %polly.loop_exit527 ]
  %221 = shl nsw i64 %polly.indvar522.1, 3
  %222 = sub nsw i64 %143, %221
  br label %polly.loop_header525.1

polly.loop_header525.1:                           ; preds = %polly.loop_exit533.1, %polly.loop_header519.1
  %indvars.iv809.1 = phi i64 [ %indvars.iv.next810.1, %polly.loop_exit533.1 ], [ %indvars.iv807.1, %polly.loop_header519.1 ]
  %polly.indvar528.1 = phi i64 [ %polly.indvar_next529.1, %polly.loop_exit533.1 ], [ 0, %polly.loop_header519.1 ]
  %smin811.1 = call i64 @llvm.smin.i64(i64 %indvars.iv809.1, i64 7)
  %223 = add nsw i64 %polly.indvar528.1, %222
  %polly.loop_guard541.1908 = icmp sgt i64 %223, -1
  %224 = add nuw nsw i64 %polly.indvar528.1, %143
  %225 = mul nuw nsw i64 %224, 480
  %226 = mul nuw nsw i64 %224, 640
  br i1 %polly.loop_guard541.1908, label %polly.loop_header531.us.1, label %polly.loop_exit533.1

polly.loop_header531.us.1:                        ; preds = %polly.loop_header525.1, %polly.loop_exit540.loopexit.us.1
  %polly.indvar534.us.1 = phi i64 [ %polly.indvar_next535.us.1, %polly.loop_exit540.loopexit.us.1 ], [ 0, %polly.loop_header525.1 ]
  %227 = shl i64 %polly.indvar534.us.1, 3
  %228 = add i64 %227, 400
  %229 = add i64 %228, %225
  %scevgep548.us.1 = getelementptr i8, i8* %call2, i64 %229
  %scevgep548549.us.1 = bitcast i8* %scevgep548.us.1 to double*
  %_p_scalar_550.us.1 = load double, double* %scevgep548549.us.1, align 8, !alias.scope !81, !noalias !84
  %scevgep554.us.1 = getelementptr i8, i8* %call1, i64 %229
  %scevgep554555.us.1 = bitcast i8* %scevgep554.us.1 to double*
  %_p_scalar_556.us.1 = load double, double* %scevgep554555.us.1, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header538.us.1

polly.loop_header538.us.1:                        ; preds = %polly.loop_header538.us.1, %polly.loop_header531.us.1
  %polly.indvar542.us.1 = phi i64 [ %polly.indvar_next543.us.1, %polly.loop_header538.us.1 ], [ 0, %polly.loop_header531.us.1 ]
  %230 = add nuw nsw i64 %polly.indvar542.us.1, %221
  %231 = mul nuw nsw i64 %230, 480
  %232 = add nuw nsw i64 %231, %228
  %scevgep545.us.1 = getelementptr i8, i8* %call1, i64 %232
  %scevgep545546.us.1 = bitcast i8* %scevgep545.us.1 to double*
  %_p_scalar_547.us.1 = load double, double* %scevgep545546.us.1, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_550.us.1, %_p_scalar_547.us.1
  %scevgep551.us.1 = getelementptr i8, i8* %call2, i64 %232
  %scevgep551552.us.1 = bitcast i8* %scevgep551.us.1 to double*
  %_p_scalar_553.us.1 = load double, double* %scevgep551552.us.1, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_556.us.1, %_p_scalar_553.us.1
  %233 = shl i64 %230, 3
  %234 = add nuw nsw i64 %233, %226
  %scevgep557.us.1 = getelementptr i8, i8* %call, i64 %234
  %scevgep557558.us.1 = bitcast i8* %scevgep557.us.1 to double*
  %_p_scalar_559.us.1 = load double, double* %scevgep557558.us.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_559.us.1
  store double %p_add42.i.us.1, double* %scevgep557558.us.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next543.us.1 = add nuw nsw i64 %polly.indvar542.us.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar542.us.1, %smin811.1
  br i1 %exitcond812.1.not, label %polly.loop_exit540.loopexit.us.1, label %polly.loop_header538.us.1

polly.loop_exit540.loopexit.us.1:                 ; preds = %polly.loop_header538.us.1
  %polly.indvar_next535.us.1 = add nuw nsw i64 %polly.indvar534.us.1, 1
  %exitcond813.1.not = icmp eq i64 %polly.indvar_next535.us.1, 10
  br i1 %exitcond813.1.not, label %polly.loop_exit533.1, label %polly.loop_header531.us.1

polly.loop_exit533.1:                             ; preds = %polly.loop_exit540.loopexit.us.1, %polly.loop_header525.1
  %polly.indvar_next529.1 = add nuw nsw i64 %polly.indvar528.1, 1
  %indvars.iv.next810.1 = add nsw i64 %indvars.iv809.1, 1
  %exitcond814.1.not = icmp eq i64 %polly.indvar_next529.1, 8
  br i1 %exitcond814.1.not, label %polly.loop_exit527.1, label %polly.loop_header525.1

polly.loop_exit527.1:                             ; preds = %polly.loop_exit533.1
  %polly.indvar_next523.1 = add nuw nsw i64 %polly.indvar522.1, 1
  %indvars.iv.next808.1 = add nsw i64 %indvars.iv807.1, -8
  %exitcond817.1.not = icmp eq i64 %polly.indvar_next523.1, %indvars.iv815
  br i1 %exitcond817.1.not, label %polly.loop_exit521.1, label %polly.loop_header519.1

polly.loop_exit521.1:                             ; preds = %polly.loop_exit527.1
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 8
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next511, 10
  br i1 %exitcond818.not, label %kernel_syr2k.exit, label %polly.loop_header507

polly.loop_header751.1:                           ; preds = %polly.loop_exit759, %polly.loop_exit759.1
  %polly.indvar754.1 = phi i64 [ %polly.indvar_next755.1, %polly.loop_exit759.1 ], [ 0, %polly.loop_exit759 ]
  %235 = mul nuw nsw i64 %polly.indvar754.1, 480
  %236 = trunc i64 %polly.indvar754.1 to i32
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %polly.loop_header751.1
  %index1143 = phi i64 [ 0, %polly.loop_header751.1 ], [ %index.next1144, %vector.body1141 ]
  %vec.ind1147 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1 ], [ %vec.ind.next1148, %vector.body1141 ]
  %237 = add nuw nsw <4 x i64> %vec.ind1147, <i64 32, i64 32, i64 32, i64 32>
  %238 = trunc <4 x i64> %237 to <4 x i32>
  %239 = mul <4 x i32> %broadcast.splat1150, %238
  %240 = add <4 x i32> %239, <i32 1, i32 1, i32 1, i32 1>
  %241 = urem <4 x i32> %240, <i32 80, i32 80, i32 80, i32 80>
  %242 = sitofp <4 x i32> %241 to <4 x double>
  %243 = fmul fast <4 x double> %242, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %244 = extractelement <4 x i64> %237, i32 0
  %245 = shl i64 %244, 3
  %246 = add i64 %245, %235
  %247 = getelementptr i8, i8* %call1, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %243, <4 x double>* %248, align 8, !alias.scope !89, !noalias !94
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1148 = add <4 x i64> %vec.ind1147, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next1144, 28
  br i1 %249, label %polly.loop_exit759.1, label %vector.body1141, !llvm.loop !96

polly.loop_exit759.1:                             ; preds = %vector.body1141
  %polly.indvar_next755.1 = add nuw nsw i64 %polly.indvar754.1, 1
  %exitcond825.1.not = icmp eq i64 %polly.indvar_next755.1, 32
  br i1 %exitcond825.1.not, label %polly.loop_header751.1848, label %polly.loop_header751.1

polly.loop_header751.1848:                        ; preds = %polly.loop_exit759.1, %polly.loop_exit759.1859
  %polly.indvar754.1847 = phi i64 [ %polly.indvar_next755.1857, %polly.loop_exit759.1859 ], [ 0, %polly.loop_exit759.1 ]
  %250 = add nuw nsw i64 %polly.indvar754.1847, 32
  %251 = mul nuw nsw i64 %250, 480
  %252 = trunc i64 %250 to i32
  %broadcast.splatinsert1163 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat1164 = shufflevector <4 x i32> %broadcast.splatinsert1163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_header751.1848
  %index1155 = phi i64 [ 0, %polly.loop_header751.1848 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1161 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751.1848 ], [ %vec.ind.next1162, %vector.body1153 ]
  %253 = mul <4 x i32> %vec.ind1161, %broadcast.splat1164
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = shl i64 %index1155, 3
  %259 = add i64 %258, %251
  %260 = getelementptr i8, i8* %call1, i64 %259
  %261 = bitcast i8* %260 to <4 x double>*
  store <4 x double> %257, <4 x double>* %261, align 8, !alias.scope !89, !noalias !94
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1162 = add <4 x i32> %vec.ind1161, <i32 4, i32 4, i32 4, i32 4>
  %262 = icmp eq i64 %index.next1156, 32
  br i1 %262, label %polly.loop_exit759.1859, label %vector.body1153, !llvm.loop !97

polly.loop_exit759.1859:                          ; preds = %vector.body1153
  %polly.indvar_next755.1857 = add nuw nsw i64 %polly.indvar754.1847, 1
  %exitcond825.1858.not = icmp eq i64 %polly.indvar_next755.1857, 32
  br i1 %exitcond825.1858.not, label %polly.loop_header751.1.1, label %polly.loop_header751.1848

polly.loop_header751.1.1:                         ; preds = %polly.loop_exit759.1859, %polly.loop_exit759.1.1
  %polly.indvar754.1.1 = phi i64 [ %polly.indvar_next755.1.1, %polly.loop_exit759.1.1 ], [ 0, %polly.loop_exit759.1859 ]
  %263 = add nuw nsw i64 %polly.indvar754.1.1, 32
  %264 = mul nuw nsw i64 %263, 480
  %265 = trunc i64 %263 to i32
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %265, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %polly.loop_header751.1.1
  %index1169 = phi i64 [ 0, %polly.loop_header751.1.1 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1173 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1.1 ], [ %vec.ind.next1174, %vector.body1167 ]
  %266 = add nuw nsw <4 x i64> %vec.ind1173, <i64 32, i64 32, i64 32, i64 32>
  %267 = trunc <4 x i64> %266 to <4 x i32>
  %268 = mul <4 x i32> %broadcast.splat1176, %267
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 80, i32 80, i32 80, i32 80>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %273 = extractelement <4 x i64> %266, i32 0
  %274 = shl i64 %273, 3
  %275 = add i64 %274, %264
  %276 = getelementptr i8, i8* %call1, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %272, <4 x double>* %277, align 8, !alias.scope !89, !noalias !94
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1174 = add <4 x i64> %vec.ind1173, <i64 4, i64 4, i64 4, i64 4>
  %278 = icmp eq i64 %index.next1170, 28
  br i1 %278, label %polly.loop_exit759.1.1, label %vector.body1167, !llvm.loop !98

polly.loop_exit759.1.1:                           ; preds = %vector.body1167
  %polly.indvar_next755.1.1 = add nuw nsw i64 %polly.indvar754.1.1, 1
  %exitcond825.1.1.not = icmp eq i64 %polly.indvar_next755.1.1, 32
  br i1 %exitcond825.1.1.not, label %polly.loop_header751.2, label %polly.loop_header751.1.1

polly.loop_header751.2:                           ; preds = %polly.loop_exit759.1.1, %polly.loop_exit759.2
  %polly.indvar754.2 = phi i64 [ %polly.indvar_next755.2, %polly.loop_exit759.2 ], [ 0, %polly.loop_exit759.1.1 ]
  %279 = add nuw nsw i64 %polly.indvar754.2, 64
  %280 = mul nuw nsw i64 %279, 480
  %281 = trunc i64 %279 to i32
  %broadcast.splatinsert1189 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1190 = shufflevector <4 x i32> %broadcast.splatinsert1189, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %polly.loop_header751.2
  %index1181 = phi i64 [ 0, %polly.loop_header751.2 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1187 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751.2 ], [ %vec.ind.next1188, %vector.body1179 ]
  %282 = mul <4 x i32> %vec.ind1187, %broadcast.splat1190
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = shl i64 %index1181, 3
  %288 = add i64 %287, %280
  %289 = getelementptr i8, i8* %call1, i64 %288
  %290 = bitcast i8* %289 to <4 x double>*
  store <4 x double> %286, <4 x double>* %290, align 8, !alias.scope !89, !noalias !94
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1188 = add <4 x i32> %vec.ind1187, <i32 4, i32 4, i32 4, i32 4>
  %291 = icmp eq i64 %index.next1182, 32
  br i1 %291, label %polly.loop_exit759.2, label %vector.body1179, !llvm.loop !99

polly.loop_exit759.2:                             ; preds = %vector.body1179
  %polly.indvar_next755.2 = add nuw nsw i64 %polly.indvar754.2, 1
  %exitcond825.2.not = icmp eq i64 %polly.indvar_next755.2, 16
  br i1 %exitcond825.2.not, label %polly.loop_header751.1.2, label %polly.loop_header751.2

polly.loop_header751.1.2:                         ; preds = %polly.loop_exit759.2, %polly.loop_exit759.1.2
  %polly.indvar754.1.2 = phi i64 [ %polly.indvar_next755.1.2, %polly.loop_exit759.1.2 ], [ 0, %polly.loop_exit759.2 ]
  %292 = add nuw nsw i64 %polly.indvar754.1.2, 64
  %293 = mul nuw nsw i64 %292, 480
  %294 = trunc i64 %292 to i32
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %polly.loop_header751.1.2
  %index1195 = phi i64 [ 0, %polly.loop_header751.1.2 ], [ %index.next1196, %vector.body1193 ]
  %vec.ind1199 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1.2 ], [ %vec.ind.next1200, %vector.body1193 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1199, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1202, %296
  %298 = add <4 x i32> %297, <i32 1, i32 1, i32 1, i32 1>
  %299 = urem <4 x i32> %298, <i32 80, i32 80, i32 80, i32 80>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add i64 %303, %293
  %305 = getelementptr i8, i8* %call1, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !89, !noalias !94
  %index.next1196 = add i64 %index1195, 4
  %vec.ind.next1200 = add <4 x i64> %vec.ind1199, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1196, 28
  br i1 %307, label %polly.loop_exit759.1.2, label %vector.body1193, !llvm.loop !100

polly.loop_exit759.1.2:                           ; preds = %vector.body1193
  %polly.indvar_next755.1.2 = add nuw nsw i64 %polly.indvar754.1.2, 1
  %exitcond825.1.2.not = icmp eq i64 %polly.indvar_next755.1.2, 16
  br i1 %exitcond825.1.2.not, label %init_array.exit, label %polly.loop_header751.1.2

polly.loop_header725.1:                           ; preds = %polly.loop_exit733, %polly.loop_exit733.1
  %polly.indvar728.1 = phi i64 [ %polly.indvar_next729.1, %polly.loop_exit733.1 ], [ 0, %polly.loop_exit733 ]
  %308 = mul nuw nsw i64 %polly.indvar728.1, 480
  %309 = trunc i64 %polly.indvar728.1 to i32
  %broadcast.splatinsert1071 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1072 = shufflevector <4 x i32> %broadcast.splatinsert1071, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1063

vector.body1063:                                  ; preds = %vector.body1063, %polly.loop_header725.1
  %index1065 = phi i64 [ 0, %polly.loop_header725.1 ], [ %index.next1066, %vector.body1063 ]
  %vec.ind1069 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1 ], [ %vec.ind.next1070, %vector.body1063 ]
  %310 = add nuw nsw <4 x i64> %vec.ind1069, <i64 32, i64 32, i64 32, i64 32>
  %311 = trunc <4 x i64> %310 to <4 x i32>
  %312 = mul <4 x i32> %broadcast.splat1072, %311
  %313 = add <4 x i32> %312, <i32 2, i32 2, i32 2, i32 2>
  %314 = urem <4 x i32> %313, <i32 60, i32 60, i32 60, i32 60>
  %315 = sitofp <4 x i32> %314 to <4 x double>
  %316 = fmul fast <4 x double> %315, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %317 = extractelement <4 x i64> %310, i32 0
  %318 = shl i64 %317, 3
  %319 = add i64 %318, %308
  %320 = getelementptr i8, i8* %call2, i64 %319
  %321 = bitcast i8* %320 to <4 x double>*
  store <4 x double> %316, <4 x double>* %321, align 8, !alias.scope !90, !noalias !92
  %index.next1066 = add i64 %index1065, 4
  %vec.ind.next1070 = add <4 x i64> %vec.ind1069, <i64 4, i64 4, i64 4, i64 4>
  %322 = icmp eq i64 %index.next1066, 28
  br i1 %322, label %polly.loop_exit733.1, label %vector.body1063, !llvm.loop !101

polly.loop_exit733.1:                             ; preds = %vector.body1063
  %polly.indvar_next729.1 = add nuw nsw i64 %polly.indvar728.1, 1
  %exitcond831.1.not = icmp eq i64 %polly.indvar_next729.1, 32
  br i1 %exitcond831.1.not, label %polly.loop_header725.1862, label %polly.loop_header725.1

polly.loop_header725.1862:                        ; preds = %polly.loop_exit733.1, %polly.loop_exit733.1873
  %polly.indvar728.1861 = phi i64 [ %polly.indvar_next729.1871, %polly.loop_exit733.1873 ], [ 0, %polly.loop_exit733.1 ]
  %323 = add nuw nsw i64 %polly.indvar728.1861, 32
  %324 = mul nuw nsw i64 %323, 480
  %325 = trunc i64 %323 to i32
  %broadcast.splatinsert1085 = insertelement <4 x i32> poison, i32 %325, i32 0
  %broadcast.splat1086 = shufflevector <4 x i32> %broadcast.splatinsert1085, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %polly.loop_header725.1862
  %index1077 = phi i64 [ 0, %polly.loop_header725.1862 ], [ %index.next1078, %vector.body1075 ]
  %vec.ind1083 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.1862 ], [ %vec.ind.next1084, %vector.body1075 ]
  %326 = mul <4 x i32> %vec.ind1083, %broadcast.splat1086
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = shl i64 %index1077, 3
  %332 = add i64 %331, %324
  %333 = getelementptr i8, i8* %call2, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %330, <4 x double>* %334, align 8, !alias.scope !90, !noalias !92
  %index.next1078 = add i64 %index1077, 4
  %vec.ind.next1084 = add <4 x i32> %vec.ind1083, <i32 4, i32 4, i32 4, i32 4>
  %335 = icmp eq i64 %index.next1078, 32
  br i1 %335, label %polly.loop_exit733.1873, label %vector.body1075, !llvm.loop !102

polly.loop_exit733.1873:                          ; preds = %vector.body1075
  %polly.indvar_next729.1871 = add nuw nsw i64 %polly.indvar728.1861, 1
  %exitcond831.1872.not = icmp eq i64 %polly.indvar_next729.1871, 32
  br i1 %exitcond831.1872.not, label %polly.loop_header725.1.1, label %polly.loop_header725.1862

polly.loop_header725.1.1:                         ; preds = %polly.loop_exit733.1873, %polly.loop_exit733.1.1
  %polly.indvar728.1.1 = phi i64 [ %polly.indvar_next729.1.1, %polly.loop_exit733.1.1 ], [ 0, %polly.loop_exit733.1873 ]
  %336 = add nuw nsw i64 %polly.indvar728.1.1, 32
  %337 = mul nuw nsw i64 %336, 480
  %338 = trunc i64 %336 to i32
  %broadcast.splatinsert1097 = insertelement <4 x i32> poison, i32 %338, i32 0
  %broadcast.splat1098 = shufflevector <4 x i32> %broadcast.splatinsert1097, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %polly.loop_header725.1.1
  %index1091 = phi i64 [ 0, %polly.loop_header725.1.1 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1095 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.1 ], [ %vec.ind.next1096, %vector.body1089 ]
  %339 = add nuw nsw <4 x i64> %vec.ind1095, <i64 32, i64 32, i64 32, i64 32>
  %340 = trunc <4 x i64> %339 to <4 x i32>
  %341 = mul <4 x i32> %broadcast.splat1098, %340
  %342 = add <4 x i32> %341, <i32 2, i32 2, i32 2, i32 2>
  %343 = urem <4 x i32> %342, <i32 60, i32 60, i32 60, i32 60>
  %344 = sitofp <4 x i32> %343 to <4 x double>
  %345 = fmul fast <4 x double> %344, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %346 = extractelement <4 x i64> %339, i32 0
  %347 = shl i64 %346, 3
  %348 = add i64 %347, %337
  %349 = getelementptr i8, i8* %call2, i64 %348
  %350 = bitcast i8* %349 to <4 x double>*
  store <4 x double> %345, <4 x double>* %350, align 8, !alias.scope !90, !noalias !92
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1096 = add <4 x i64> %vec.ind1095, <i64 4, i64 4, i64 4, i64 4>
  %351 = icmp eq i64 %index.next1092, 28
  br i1 %351, label %polly.loop_exit733.1.1, label %vector.body1089, !llvm.loop !103

polly.loop_exit733.1.1:                           ; preds = %vector.body1089
  %polly.indvar_next729.1.1 = add nuw nsw i64 %polly.indvar728.1.1, 1
  %exitcond831.1.1.not = icmp eq i64 %polly.indvar_next729.1.1, 32
  br i1 %exitcond831.1.1.not, label %polly.loop_header725.2, label %polly.loop_header725.1.1

polly.loop_header725.2:                           ; preds = %polly.loop_exit733.1.1, %polly.loop_exit733.2
  %polly.indvar728.2 = phi i64 [ %polly.indvar_next729.2, %polly.loop_exit733.2 ], [ 0, %polly.loop_exit733.1.1 ]
  %352 = add nuw nsw i64 %polly.indvar728.2, 64
  %353 = mul nuw nsw i64 %352, 480
  %354 = trunc i64 %352 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %polly.loop_header725.2
  %index1103 = phi i64 [ 0, %polly.loop_header725.2 ], [ %index.next1104, %vector.body1101 ]
  %vec.ind1109 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.2 ], [ %vec.ind.next1110, %vector.body1101 ]
  %355 = mul <4 x i32> %vec.ind1109, %broadcast.splat1112
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = shl i64 %index1103, 3
  %361 = add i64 %360, %353
  %362 = getelementptr i8, i8* %call2, i64 %361
  %363 = bitcast i8* %362 to <4 x double>*
  store <4 x double> %359, <4 x double>* %363, align 8, !alias.scope !90, !noalias !92
  %index.next1104 = add i64 %index1103, 4
  %vec.ind.next1110 = add <4 x i32> %vec.ind1109, <i32 4, i32 4, i32 4, i32 4>
  %364 = icmp eq i64 %index.next1104, 32
  br i1 %364, label %polly.loop_exit733.2, label %vector.body1101, !llvm.loop !104

polly.loop_exit733.2:                             ; preds = %vector.body1101
  %polly.indvar_next729.2 = add nuw nsw i64 %polly.indvar728.2, 1
  %exitcond831.2.not = icmp eq i64 %polly.indvar_next729.2, 16
  br i1 %exitcond831.2.not, label %polly.loop_header725.1.2, label %polly.loop_header725.2

polly.loop_header725.1.2:                         ; preds = %polly.loop_exit733.2, %polly.loop_exit733.1.2
  %polly.indvar728.1.2 = phi i64 [ %polly.indvar_next729.1.2, %polly.loop_exit733.1.2 ], [ 0, %polly.loop_exit733.2 ]
  %365 = add nuw nsw i64 %polly.indvar728.1.2, 64
  %366 = mul nuw nsw i64 %365, 480
  %367 = trunc i64 %365 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header725.1.2
  %index1117 = phi i64 [ 0, %polly.loop_header725.1.2 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1121 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.2 ], [ %vec.ind.next1122, %vector.body1115 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1121, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1124, %369
  %371 = add <4 x i32> %370, <i32 2, i32 2, i32 2, i32 2>
  %372 = urem <4 x i32> %371, <i32 60, i32 60, i32 60, i32 60>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add i64 %376, %366
  %378 = getelementptr i8, i8* %call2, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !90, !noalias !92
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1122 = add <4 x i64> %vec.ind1121, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1118, 28
  br i1 %380, label %polly.loop_exit733.1.2, label %vector.body1115, !llvm.loop !105

polly.loop_exit733.1.2:                           ; preds = %vector.body1115
  %polly.indvar_next729.1.2 = add nuw nsw i64 %polly.indvar728.1.2, 1
  %exitcond831.1.2.not = icmp eq i64 %polly.indvar_next729.1.2, 16
  br i1 %exitcond831.1.2.not, label %polly.loop_header751, label %polly.loop_header725.1.2

polly.loop_header698.1:                           ; preds = %polly.loop_exit706, %polly.loop_exit706.1
  %polly.indvar701.1 = phi i64 [ %polly.indvar_next702.1, %polly.loop_exit706.1 ], [ 0, %polly.loop_exit706 ]
  %381 = mul nuw nsw i64 %polly.indvar701.1, 640
  %382 = trunc i64 %polly.indvar701.1 to i32
  %broadcast.splatinsert957 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat958 = shufflevector <4 x i32> %broadcast.splatinsert957, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body949

vector.body949:                                   ; preds = %vector.body949, %polly.loop_header698.1
  %index951 = phi i64 [ 0, %polly.loop_header698.1 ], [ %index.next952, %vector.body949 ]
  %vec.ind955 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1 ], [ %vec.ind.next956, %vector.body949 ]
  %383 = add nuw nsw <4 x i64> %vec.ind955, <i64 32, i64 32, i64 32, i64 32>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat958, %384
  %386 = add <4 x i32> %385, <i32 3, i32 3, i32 3, i32 3>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %381
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !86, !noalias !88
  %index.next952 = add i64 %index951, 4
  %vec.ind.next956 = add <4 x i64> %vec.ind955, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next952, 32
  br i1 %395, label %polly.loop_exit706.1, label %vector.body949, !llvm.loop !106

polly.loop_exit706.1:                             ; preds = %vector.body949
  %polly.indvar_next702.1 = add nuw nsw i64 %polly.indvar701.1, 1
  %exitcond840.1.not = icmp eq i64 %polly.indvar_next702.1, 32
  br i1 %exitcond840.1.not, label %polly.loop_header698.2, label %polly.loop_header698.1

polly.loop_header698.2:                           ; preds = %polly.loop_exit706.1, %polly.loop_exit706.2
  %polly.indvar701.2 = phi i64 [ %polly.indvar_next702.2, %polly.loop_exit706.2 ], [ 0, %polly.loop_exit706.1 ]
  %396 = mul nuw nsw i64 %polly.indvar701.2, 640
  %397 = trunc i64 %polly.indvar701.2 to i32
  %broadcast.splatinsert969 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat970 = shufflevector <4 x i32> %broadcast.splatinsert969, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %polly.loop_header698.2
  %index963 = phi i64 [ 0, %polly.loop_header698.2 ], [ %index.next964, %vector.body961 ]
  %vec.ind967 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2 ], [ %vec.ind.next968, %vector.body961 ]
  %398 = add nuw nsw <4 x i64> %vec.ind967, <i64 64, i64 64, i64 64, i64 64>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat970, %399
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
  %index.next964 = add i64 %index963, 4
  %vec.ind.next968 = add <4 x i64> %vec.ind967, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next964, 16
  br i1 %410, label %polly.loop_exit706.2, label %vector.body961, !llvm.loop !107

polly.loop_exit706.2:                             ; preds = %vector.body961
  %polly.indvar_next702.2 = add nuw nsw i64 %polly.indvar701.2, 1
  %exitcond840.2.not = icmp eq i64 %polly.indvar_next702.2, 32
  br i1 %exitcond840.2.not, label %polly.loop_header698.1876, label %polly.loop_header698.2

polly.loop_header698.1876:                        ; preds = %polly.loop_exit706.2, %polly.loop_exit706.1887
  %polly.indvar701.1875 = phi i64 [ %polly.indvar_next702.1885, %polly.loop_exit706.1887 ], [ 0, %polly.loop_exit706.2 ]
  %411 = add nuw nsw i64 %polly.indvar701.1875, 32
  %412 = mul nuw nsw i64 %411, 640
  %413 = trunc i64 %411 to i32
  %broadcast.splatinsert983 = insertelement <4 x i32> poison, i32 %413, i32 0
  %broadcast.splat984 = shufflevector <4 x i32> %broadcast.splatinsert983, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %polly.loop_header698.1876
  %index975 = phi i64 [ 0, %polly.loop_header698.1876 ], [ %index.next976, %vector.body973 ]
  %vec.ind981 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698.1876 ], [ %vec.ind.next982, %vector.body973 ]
  %414 = mul <4 x i32> %vec.ind981, %broadcast.splat984
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = shl i64 %index975, 3
  %420 = add nuw nsw i64 %419, %412
  %421 = getelementptr i8, i8* %call, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %418, <4 x double>* %422, align 8, !alias.scope !86, !noalias !88
  %index.next976 = add i64 %index975, 4
  %vec.ind.next982 = add <4 x i32> %vec.ind981, <i32 4, i32 4, i32 4, i32 4>
  %423 = icmp eq i64 %index.next976, 32
  br i1 %423, label %polly.loop_exit706.1887, label %vector.body973, !llvm.loop !108

polly.loop_exit706.1887:                          ; preds = %vector.body973
  %polly.indvar_next702.1885 = add nuw nsw i64 %polly.indvar701.1875, 1
  %exitcond840.1886.not = icmp eq i64 %polly.indvar_next702.1885, 32
  br i1 %exitcond840.1886.not, label %polly.loop_header698.1.1, label %polly.loop_header698.1876

polly.loop_header698.1.1:                         ; preds = %polly.loop_exit706.1887, %polly.loop_exit706.1.1
  %polly.indvar701.1.1 = phi i64 [ %polly.indvar_next702.1.1, %polly.loop_exit706.1.1 ], [ 0, %polly.loop_exit706.1887 ]
  %424 = add nuw nsw i64 %polly.indvar701.1.1, 32
  %425 = mul nuw nsw i64 %424, 640
  %426 = trunc i64 %424 to i32
  %broadcast.splatinsert995 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat996 = shufflevector <4 x i32> %broadcast.splatinsert995, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %polly.loop_header698.1.1
  %index989 = phi i64 [ 0, %polly.loop_header698.1.1 ], [ %index.next990, %vector.body987 ]
  %vec.ind993 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1.1 ], [ %vec.ind.next994, %vector.body987 ]
  %427 = add nuw nsw <4 x i64> %vec.ind993, <i64 32, i64 32, i64 32, i64 32>
  %428 = trunc <4 x i64> %427 to <4 x i32>
  %429 = mul <4 x i32> %broadcast.splat996, %428
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
  %index.next990 = add i64 %index989, 4
  %vec.ind.next994 = add <4 x i64> %vec.ind993, <i64 4, i64 4, i64 4, i64 4>
  %439 = icmp eq i64 %index.next990, 32
  br i1 %439, label %polly.loop_exit706.1.1, label %vector.body987, !llvm.loop !109

polly.loop_exit706.1.1:                           ; preds = %vector.body987
  %polly.indvar_next702.1.1 = add nuw nsw i64 %polly.indvar701.1.1, 1
  %exitcond840.1.1.not = icmp eq i64 %polly.indvar_next702.1.1, 32
  br i1 %exitcond840.1.1.not, label %polly.loop_header698.2.1, label %polly.loop_header698.1.1

polly.loop_header698.2.1:                         ; preds = %polly.loop_exit706.1.1, %polly.loop_exit706.2.1
  %polly.indvar701.2.1 = phi i64 [ %polly.indvar_next702.2.1, %polly.loop_exit706.2.1 ], [ 0, %polly.loop_exit706.1.1 ]
  %440 = add nuw nsw i64 %polly.indvar701.2.1, 32
  %441 = mul nuw nsw i64 %440, 640
  %442 = trunc i64 %440 to i32
  %broadcast.splatinsert1007 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1008 = shufflevector <4 x i32> %broadcast.splatinsert1007, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %polly.loop_header698.2.1
  %index1001 = phi i64 [ 0, %polly.loop_header698.2.1 ], [ %index.next1002, %vector.body999 ]
  %vec.ind1005 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2.1 ], [ %vec.ind.next1006, %vector.body999 ]
  %443 = add nuw nsw <4 x i64> %vec.ind1005, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat1008, %444
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
  %index.next1002 = add i64 %index1001, 4
  %vec.ind.next1006 = add <4 x i64> %vec.ind1005, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next1002, 16
  br i1 %455, label %polly.loop_exit706.2.1, label %vector.body999, !llvm.loop !110

polly.loop_exit706.2.1:                           ; preds = %vector.body999
  %polly.indvar_next702.2.1 = add nuw nsw i64 %polly.indvar701.2.1, 1
  %exitcond840.2.1.not = icmp eq i64 %polly.indvar_next702.2.1, 32
  br i1 %exitcond840.2.1.not, label %polly.loop_header698.2890, label %polly.loop_header698.2.1

polly.loop_header698.2890:                        ; preds = %polly.loop_exit706.2.1, %polly.loop_exit706.2901
  %polly.indvar701.2889 = phi i64 [ %polly.indvar_next702.2899, %polly.loop_exit706.2901 ], [ 0, %polly.loop_exit706.2.1 ]
  %456 = add nuw nsw i64 %polly.indvar701.2889, 64
  %457 = mul nuw nsw i64 %456, 640
  %458 = trunc i64 %456 to i32
  %broadcast.splatinsert1021 = insertelement <4 x i32> poison, i32 %458, i32 0
  %broadcast.splat1022 = shufflevector <4 x i32> %broadcast.splatinsert1021, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %polly.loop_header698.2890
  %index1013 = phi i64 [ 0, %polly.loop_header698.2890 ], [ %index.next1014, %vector.body1011 ]
  %vec.ind1019 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698.2890 ], [ %vec.ind.next1020, %vector.body1011 ]
  %459 = mul <4 x i32> %vec.ind1019, %broadcast.splat1022
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = shl i64 %index1013, 3
  %465 = add nuw nsw i64 %464, %457
  %466 = getelementptr i8, i8* %call, i64 %465
  %467 = bitcast i8* %466 to <4 x double>*
  store <4 x double> %463, <4 x double>* %467, align 8, !alias.scope !86, !noalias !88
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1020 = add <4 x i32> %vec.ind1019, <i32 4, i32 4, i32 4, i32 4>
  %468 = icmp eq i64 %index.next1014, 32
  br i1 %468, label %polly.loop_exit706.2901, label %vector.body1011, !llvm.loop !111

polly.loop_exit706.2901:                          ; preds = %vector.body1011
  %polly.indvar_next702.2899 = add nuw nsw i64 %polly.indvar701.2889, 1
  %exitcond840.2900.not = icmp eq i64 %polly.indvar_next702.2899, 16
  br i1 %exitcond840.2900.not, label %polly.loop_header698.1.2, label %polly.loop_header698.2890

polly.loop_header698.1.2:                         ; preds = %polly.loop_exit706.2901, %polly.loop_exit706.1.2
  %polly.indvar701.1.2 = phi i64 [ %polly.indvar_next702.1.2, %polly.loop_exit706.1.2 ], [ 0, %polly.loop_exit706.2901 ]
  %469 = add nuw nsw i64 %polly.indvar701.1.2, 64
  %470 = mul nuw nsw i64 %469, 640
  %471 = trunc i64 %469 to i32
  %broadcast.splatinsert1033 = insertelement <4 x i32> poison, i32 %471, i32 0
  %broadcast.splat1034 = shufflevector <4 x i32> %broadcast.splatinsert1033, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %polly.loop_header698.1.2
  %index1027 = phi i64 [ 0, %polly.loop_header698.1.2 ], [ %index.next1028, %vector.body1025 ]
  %vec.ind1031 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1.2 ], [ %vec.ind.next1032, %vector.body1025 ]
  %472 = add nuw nsw <4 x i64> %vec.ind1031, <i64 32, i64 32, i64 32, i64 32>
  %473 = trunc <4 x i64> %472 to <4 x i32>
  %474 = mul <4 x i32> %broadcast.splat1034, %473
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = extractelement <4 x i64> %472, i32 0
  %480 = shl i64 %479, 3
  %481 = add nuw nsw i64 %480, %470
  %482 = getelementptr i8, i8* %call, i64 %481
  %483 = bitcast i8* %482 to <4 x double>*
  store <4 x double> %478, <4 x double>* %483, align 8, !alias.scope !86, !noalias !88
  %index.next1028 = add i64 %index1027, 4
  %vec.ind.next1032 = add <4 x i64> %vec.ind1031, <i64 4, i64 4, i64 4, i64 4>
  %484 = icmp eq i64 %index.next1028, 32
  br i1 %484, label %polly.loop_exit706.1.2, label %vector.body1025, !llvm.loop !112

polly.loop_exit706.1.2:                           ; preds = %vector.body1025
  %polly.indvar_next702.1.2 = add nuw nsw i64 %polly.indvar701.1.2, 1
  %exitcond840.1.2.not = icmp eq i64 %polly.indvar_next702.1.2, 16
  br i1 %exitcond840.1.2.not, label %polly.loop_header698.2.2, label %polly.loop_header698.1.2

polly.loop_header698.2.2:                         ; preds = %polly.loop_exit706.1.2, %polly.loop_exit706.2.2
  %polly.indvar701.2.2 = phi i64 [ %polly.indvar_next702.2.2, %polly.loop_exit706.2.2 ], [ 0, %polly.loop_exit706.1.2 ]
  %485 = add nuw nsw i64 %polly.indvar701.2.2, 64
  %486 = mul nuw nsw i64 %485, 640
  %487 = trunc i64 %485 to i32
  %broadcast.splatinsert1045 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1046 = shufflevector <4 x i32> %broadcast.splatinsert1045, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %polly.loop_header698.2.2
  %index1039 = phi i64 [ 0, %polly.loop_header698.2.2 ], [ %index.next1040, %vector.body1037 ]
  %vec.ind1043 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2.2 ], [ %vec.ind.next1044, %vector.body1037 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1043, <i64 64, i64 64, i64 64, i64 64>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1046, %489
  %491 = add <4 x i32> %490, <i32 3, i32 3, i32 3, i32 3>
  %492 = urem <4 x i32> %491, <i32 80, i32 80, i32 80, i32 80>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = extractelement <4 x i64> %488, i32 0
  %496 = shl i64 %495, 3
  %497 = add nuw nsw i64 %496, %486
  %498 = getelementptr i8, i8* %call, i64 %497
  %499 = bitcast i8* %498 to <4 x double>*
  store <4 x double> %494, <4 x double>* %499, align 8, !alias.scope !86, !noalias !88
  %index.next1040 = add i64 %index1039, 4
  %vec.ind.next1044 = add <4 x i64> %vec.ind1043, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1040, 16
  br i1 %500, label %polly.loop_exit706.2.2, label %vector.body1037, !llvm.loop !113

polly.loop_exit706.2.2:                           ; preds = %vector.body1037
  %polly.indvar_next702.2.2 = add nuw nsw i64 %polly.indvar701.2.2, 1
  %exitcond840.2.2.not = icmp eq i64 %polly.indvar_next702.2.2, 16
  br i1 %exitcond840.2.2.not, label %polly.loop_header725, label %polly.loop_header698.2.2
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
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 50}
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
