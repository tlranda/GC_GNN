; ModuleID = 'syr2k_recreations//mmp_syr2k_S_118.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_118.c"
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
  %call748 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1609 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1609, %call2
  %polly.access.call2629 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2629, %call1
  %2 = or i1 %0, %1
  %polly.access.call649 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call649, %call2
  %4 = icmp ule i8* %polly.access.call2629, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call649, %call1
  %8 = icmp ule i8* %polly.access.call1609, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header734, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep944 = getelementptr i8, i8* %call2, i64 %12
  %scevgep943 = getelementptr i8, i8* %call2, i64 %11
  %scevgep942 = getelementptr i8, i8* %call1, i64 %12
  %scevgep941 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep941, %scevgep944
  %bound1 = icmp ult i8* %scevgep943, %scevgep942
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
  br i1 %exitcond18.not.i, label %vector.ph948, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph948:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert955 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat956 = shufflevector <4 x i64> %broadcast.splatinsert955, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %vector.ph948
  %index949 = phi i64 [ 0, %vector.ph948 ], [ %index.next950, %vector.body947 ]
  %vec.ind953 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph948 ], [ %vec.ind.next954, %vector.body947 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind953, %broadcast.splat956
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv7.i, i64 %index949
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next950 = add i64 %index949, 4
  %vec.ind.next954 = add <4 x i64> %vec.ind953, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next950, 80
  br i1 %40, label %for.inc41.i, label %vector.body947, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body947
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph948, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit795.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start431, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1301, label %vector.ph1230

vector.ph1230:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1230
  %index1231 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1232, %vector.body1229 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %index1231
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1232 = add i64 %index1231, 4
  %46 = icmp eq i64 %index.next1232, %n.vec
  br i1 %46, label %middle.block1227, label %vector.body1229, !llvm.loop !18

middle.block1227:                                 ; preds = %vector.body1229
  %cmp.n1234 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1234, label %for.inc6.i, label %for.body3.i46.preheader1301

for.body3.i46.preheader1301:                      ; preds = %for.body3.i46.preheader, %middle.block1227
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1227 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1301, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1301 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1227, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !22

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting432
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start264, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1250 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1250, label %for.body3.i60.preheader1300, label %vector.ph1251

vector.ph1251:                                    ; preds = %for.body3.i60.preheader
  %n.vec1253 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1249 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %index1254
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1258, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1255 = add i64 %index1254, 4
  %57 = icmp eq i64 %index.next1255, %n.vec1253
  br i1 %57, label %middle.block1247, label %vector.body1249, !llvm.loop !55

middle.block1247:                                 ; preds = %vector.body1249
  %cmp.n1257 = icmp eq i64 %indvars.iv21.i52, %n.vec1253
  br i1 %cmp.n1257, label %for.inc6.i63, label %for.body3.i60.preheader1300

for.body3.i60.preheader1300:                      ; preds = %for.body3.i60.preheader, %middle.block1247
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1253, %middle.block1247 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1300, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1300 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1247, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !22

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting265
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1276 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1276, label %for.body3.i99.preheader1299, label %vector.ph1277

vector.ph1277:                                    ; preds = %for.body3.i99.preheader
  %n.vec1279 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1277
  %index1280 = phi i64 [ 0, %vector.ph1277 ], [ %index.next1281, %vector.body1275 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %index1280
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1284 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1284, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1281 = add i64 %index1280, 4
  %68 = icmp eq i64 %index.next1281, %n.vec1279
  br i1 %68, label %middle.block1273, label %vector.body1275, !llvm.loop !57

middle.block1273:                                 ; preds = %vector.body1275
  %cmp.n1283 = icmp eq i64 %indvars.iv21.i91, %n.vec1279
  br i1 %cmp.n1283, label %for.inc6.i102, label %for.body3.i99.preheader1299

for.body3.i99.preheader1299:                      ; preds = %for.body3.i99.preheader, %middle.block1273
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1279, %middle.block1273 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1299, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1299 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1273, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !22

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit213.3
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1288 = phi i64 [ %indvar.next1289, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1288, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1290 = icmp ult i64 %88, 4
  br i1 %min.iters.check1290, label %polly.loop_header191.preheader, label %vector.ph1291

vector.ph1291:                                    ; preds = %polly.loop_header
  %n.vec1293 = and i64 %88, -4
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1291
  %index1294 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1295, %vector.body1287 ]
  %90 = shl nuw nsw i64 %index1294, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1298 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1298, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1295 = add i64 %index1294, 4
  %95 = icmp eq i64 %index.next1295, %n.vec1293
  br i1 %95, label %middle.block1285, label %vector.body1287, !llvm.loop !69

middle.block1285:                                 ; preds = %vector.body1287
  %cmp.n1297 = icmp eq i64 %88, %n.vec1293
  br i1 %cmp.n1297, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1285
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1293, %middle.block1285 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1285
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1289 = add i64 %indvar1288, 1
  br i1 %exitcond825.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond824.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit213.3
  %polly.loop_cond204 = phi i1 [ false, %polly.loop_exit213.3 ], [ true, %polly.loop_header199.preheader ]
  %polly.indvar202 = phi i64 [ 1, %polly.loop_exit213.3 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, -64
  %98 = icmp slt i64 %97, -16
  %99 = select i1 %98, i64 %97, i64 -16
  %100 = shl nuw nsw i64 %polly.indvar202, 6
  %101 = or i64 %100, 1
  %102 = add nsw i64 %99, 80
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit235, %polly.loop_header199
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %polly.loop_exit235 ], [ %101, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit235 ], [ 0, %polly.loop_header199 ]
  br label %polly.loop_header217

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next818 = add nuw nsw i64 %indvars.iv817, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next215, %102
  br i1 %exitcond822.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %103 = shl nuw nsw i64 %polly.indvar220, 7
  %scevgep814 = getelementptr i8, i8* %malloccall, i64 %103
  %104 = mul nuw nsw i64 %polly.indvar220, 480
  %scevgep815 = getelementptr i8, i8* %call1, i64 %104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep814, i8* noundef nonnull align 8 dereferenceable(128) %scevgep815, i64 128, i1 false)
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv817
  br i1 %exitcond.not, label %polly.loop_header233.preheader, label %polly.loop_header217

polly.loop_header233.preheader:                   ; preds = %polly.loop_header217
  %105 = add nuw nsw i64 %polly.indvar214, %100
  %106 = mul nuw nsw i64 %105, 480
  %polly.access.mul.Packed_MemRef_call1255 = shl nsw i64 %105, 4
  %107 = mul nuw nsw i64 %105, 640
  br label %polly.loop_header233

polly.loop_header233:                             ; preds = %polly.loop_header233.preheader, %polly.loop_exit241
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header233.preheader ]
  %108 = shl i64 %polly.indvar236, 3
  %109 = add nuw nsw i64 %108, %106
  %scevgep249 = getelementptr i8, i8* %call2, i64 %109
  %scevgep249250 = bitcast i8* %scevgep249 to double*
  %_p_scalar_251 = load double, double* %scevgep249250, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1256 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1255
  %polly.access.Packed_MemRef_call1257 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1256
  %_p_scalar_258 = load double, double* %polly.access.Packed_MemRef_call1257, align 8
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next237, 16
  br i1 %exitcond821.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %polly.access.mul.Packed_MemRef_call1245 = shl nsw i64 %polly.indvar242, 4
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1245, %polly.indvar236
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  %_p_scalar_248 = load double, double* %polly.access.Packed_MemRef_call1247, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_248
  %110 = mul nuw nsw i64 %polly.indvar242, 480
  %111 = add nuw nsw i64 %110, %108
  %scevgep252 = getelementptr i8, i8* %call2, i64 %111
  %scevgep252253 = bitcast i8* %scevgep252 to double*
  %_p_scalar_254 = load double, double* %scevgep252253, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114 = fmul fast double %_p_scalar_258, %_p_scalar_254
  %112 = shl nuw nsw i64 %polly.indvar242, 3
  %113 = add nuw nsw i64 %112, %107
  %scevgep259 = getelementptr i8, i8* %call, i64 %113
  %scevgep259260 = bitcast i8* %scevgep259 to double*
  %_p_scalar_261 = load double, double* %scevgep259260, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_261
  store double %p_add42.i118, double* %scevgep259260, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next243, %indvars.iv817
  br i1 %exitcond819.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start264:                                   ; preds = %kernel_syr2k.exit
  %malloccall266 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header350

polly.exiting265:                                 ; preds = %polly.loop_exit380.3
  tail call void @free(i8* nonnull %malloccall266)
  br label %kernel_syr2k.exit90

polly.loop_header350:                             ; preds = %polly.loop_exit358, %polly.start264
  %indvar1262 = phi i64 [ %indvar.next1263, %polly.loop_exit358 ], [ 0, %polly.start264 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 1, %polly.start264 ]
  %114 = add i64 %indvar1262, 1
  %115 = mul nuw nsw i64 %polly.indvar353, 640
  %scevgep362 = getelementptr i8, i8* %call, i64 %115
  %min.iters.check1264 = icmp ult i64 %114, 4
  br i1 %min.iters.check1264, label %polly.loop_header356.preheader, label %vector.ph1265

vector.ph1265:                                    ; preds = %polly.loop_header350
  %n.vec1267 = and i64 %114, -4
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %vector.ph1265
  %index1268 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1269, %vector.body1261 ]
  %116 = shl nuw nsw i64 %index1268, 3
  %117 = getelementptr i8, i8* %scevgep362, i64 %116
  %118 = bitcast i8* %117 to <4 x double>*
  %wide.load1272 = load <4 x double>, <4 x double>* %118, align 8, !alias.scope !73, !noalias !75
  %119 = fmul fast <4 x double> %wide.load1272, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %120 = bitcast i8* %117 to <4 x double>*
  store <4 x double> %119, <4 x double>* %120, align 8, !alias.scope !73, !noalias !75
  %index.next1269 = add i64 %index1268, 4
  %121 = icmp eq i64 %index.next1269, %n.vec1267
  br i1 %121, label %middle.block1259, label %vector.body1261, !llvm.loop !79

middle.block1259:                                 ; preds = %vector.body1261
  %cmp.n1271 = icmp eq i64 %114, %n.vec1267
  br i1 %cmp.n1271, label %polly.loop_exit358, label %polly.loop_header356.preheader

polly.loop_header356.preheader:                   ; preds = %polly.loop_header350, %middle.block1259
  %polly.indvar359.ph = phi i64 [ 0, %polly.loop_header350 ], [ %n.vec1267, %middle.block1259 ]
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_header356, %middle.block1259
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next354, 80
  %indvar.next1263 = add i64 %indvar1262, 1
  br i1 %exitcond842.not, label %polly.loop_header366.preheader, label %polly.loop_header350

polly.loop_header366.preheader:                   ; preds = %polly.loop_exit358
  %Packed_MemRef_call1267 = bitcast i8* %malloccall266 to double*
  br label %polly.loop_header366

polly.loop_header356:                             ; preds = %polly.loop_header356.preheader, %polly.loop_header356
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_header356 ], [ %polly.indvar359.ph, %polly.loop_header356.preheader ]
  %122 = shl nuw nsw i64 %polly.indvar359, 3
  %scevgep363 = getelementptr i8, i8* %scevgep362, i64 %122
  %scevgep363364 = bitcast i8* %scevgep363 to double*
  %_p_scalar_365 = load double, double* %scevgep363364, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_365, 1.200000e+00
  store double %p_mul.i57, double* %scevgep363364, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next360, %polly.indvar353
  br i1 %exitcond841.not, label %polly.loop_exit358, label %polly.loop_header356, !llvm.loop !80

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_exit380.3
  %polly.loop_cond371 = phi i1 [ false, %polly.loop_exit380.3 ], [ true, %polly.loop_header366.preheader ]
  %polly.indvar369 = phi i64 [ 1, %polly.loop_exit380.3 ], [ 0, %polly.loop_header366.preheader ]
  %123 = mul nuw nsw i64 %polly.indvar369, -64
  %124 = icmp slt i64 %123, -16
  %125 = select i1 %124, i64 %123, i64 -16
  %126 = shl nuw nsw i64 %polly.indvar369, 6
  %127 = or i64 %126, 1
  %128 = add nsw i64 %125, 80
  br label %polly.loop_header378

polly.loop_header378:                             ; preds = %polly.loop_exit402, %polly.loop_header366
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit402 ], [ %127, %polly.loop_header366 ]
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_exit402 ], [ 0, %polly.loop_header366 ]
  br label %polly.loop_header384

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %indvars.iv.next834 = add nuw nsw i64 %indvars.iv833, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next382, %128
  br i1 %exitcond839.not, label %polly.loop_header378.1, label %polly.loop_header378

polly.loop_header384:                             ; preds = %polly.loop_header384, %polly.loop_header378
  %polly.indvar387 = phi i64 [ 0, %polly.loop_header378 ], [ %polly.indvar_next388, %polly.loop_header384 ]
  %129 = shl nuw nsw i64 %polly.indvar387, 7
  %scevgep830 = getelementptr i8, i8* %malloccall266, i64 %129
  %130 = mul nuw nsw i64 %polly.indvar387, 480
  %scevgep831 = getelementptr i8, i8* %call1, i64 %130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep830, i8* noundef nonnull align 8 dereferenceable(128) %scevgep831, i64 128, i1 false)
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next388, %indvars.iv833
  br i1 %exitcond835.not, label %polly.loop_header400.preheader, label %polly.loop_header384

polly.loop_header400.preheader:                   ; preds = %polly.loop_header384
  %131 = add nuw nsw i64 %polly.indvar381, %126
  %132 = mul nuw nsw i64 %131, 480
  %polly.access.mul.Packed_MemRef_call1267422 = shl nsw i64 %131, 4
  %133 = mul nuw nsw i64 %131, 640
  br label %polly.loop_header400

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit408
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit408 ], [ 0, %polly.loop_header400.preheader ]
  %134 = shl i64 %polly.indvar403, 3
  %135 = add nuw nsw i64 %134, %132
  %scevgep416 = getelementptr i8, i8* %call2, i64 %135
  %scevgep416417 = bitcast i8* %scevgep416 to double*
  %_p_scalar_418 = load double, double* %scevgep416417, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1267423 = add nuw nsw i64 %polly.indvar403, %polly.access.mul.Packed_MemRef_call1267422
  %polly.access.Packed_MemRef_call1267424 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267423
  %_p_scalar_425 = load double, double* %polly.access.Packed_MemRef_call1267424, align 8
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next404, 16
  br i1 %exitcond838.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %polly.access.mul.Packed_MemRef_call1267412 = shl nsw i64 %polly.indvar409, 4
  %polly.access.add.Packed_MemRef_call1267413 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267412, %polly.indvar403
  %polly.access.Packed_MemRef_call1267414 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267413
  %_p_scalar_415 = load double, double* %polly.access.Packed_MemRef_call1267414, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_418, %_p_scalar_415
  %136 = mul nuw nsw i64 %polly.indvar409, 480
  %137 = add nuw nsw i64 %136, %134
  %scevgep419 = getelementptr i8, i8* %call2, i64 %137
  %scevgep419420 = bitcast i8* %scevgep419 to double*
  %_p_scalar_421 = load double, double* %scevgep419420, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75 = fmul fast double %_p_scalar_425, %_p_scalar_421
  %138 = shl nuw nsw i64 %polly.indvar409, 3
  %139 = add nuw nsw i64 %138, %133
  %scevgep426 = getelementptr i8, i8* %call, i64 %139
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_428
  store double %p_add42.i79, double* %scevgep426427, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next410, %indvars.iv833
  br i1 %exitcond836.not, label %polly.loop_exit408, label %polly.loop_header406

polly.start431:                                   ; preds = %init_array.exit
  %malloccall433 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header517

polly.exiting432:                                 ; preds = %polly.loop_exit547.3
  tail call void @free(i8* nonnull %malloccall433)
  br label %kernel_syr2k.exit

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.start431
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit525 ], [ 0, %polly.start431 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 1, %polly.start431 ]
  %140 = add i64 %indvar, 1
  %141 = mul nuw nsw i64 %polly.indvar520, 640
  %scevgep529 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check1238 = icmp ult i64 %140, 4
  br i1 %min.iters.check1238, label %polly.loop_header523.preheader, label %vector.ph1239

vector.ph1239:                                    ; preds = %polly.loop_header517
  %n.vec1241 = and i64 %140, -4
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %vector.ph1239
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1243, %vector.body1237 ]
  %142 = shl nuw nsw i64 %index1242, 3
  %143 = getelementptr i8, i8* %scevgep529, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1246 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !82, !noalias !84
  %145 = fmul fast <4 x double> %wide.load1246, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !82, !noalias !84
  %index.next1243 = add i64 %index1242, 4
  %147 = icmp eq i64 %index.next1243, %n.vec1241
  br i1 %147, label %middle.block1235, label %vector.body1237, !llvm.loop !88

middle.block1235:                                 ; preds = %vector.body1237
  %cmp.n1245 = icmp eq i64 %140, %n.vec1241
  br i1 %cmp.n1245, label %polly.loop_exit525, label %polly.loop_header523.preheader

polly.loop_header523.preheader:                   ; preds = %polly.loop_header517, %middle.block1235
  %polly.indvar526.ph = phi i64 [ 0, %polly.loop_header517 ], [ %n.vec1241, %middle.block1235 ]
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523, %middle.block1235
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next521, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond859.not, label %polly.loop_header533.preheader, label %polly.loop_header517

polly.loop_header533.preheader:                   ; preds = %polly.loop_exit525
  %Packed_MemRef_call1434 = bitcast i8* %malloccall433 to double*
  br label %polly.loop_header533

polly.loop_header523:                             ; preds = %polly.loop_header523.preheader, %polly.loop_header523
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_header523 ], [ %polly.indvar526.ph, %polly.loop_header523.preheader ]
  %148 = shl nuw nsw i64 %polly.indvar526, 3
  %scevgep530 = getelementptr i8, i8* %scevgep529, i64 %148
  %scevgep530531 = bitcast i8* %scevgep530 to double*
  %_p_scalar_532 = load double, double* %scevgep530531, align 8, !alias.scope !82, !noalias !84
  %p_mul.i = fmul fast double %_p_scalar_532, 1.200000e+00
  store double %p_mul.i, double* %scevgep530531, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next527, %polly.indvar520
  br i1 %exitcond858.not, label %polly.loop_exit525, label %polly.loop_header523, !llvm.loop !89

polly.loop_header533:                             ; preds = %polly.loop_header533.preheader, %polly.loop_exit547.3
  %polly.loop_cond538 = phi i1 [ false, %polly.loop_exit547.3 ], [ true, %polly.loop_header533.preheader ]
  %polly.indvar536 = phi i64 [ 1, %polly.loop_exit547.3 ], [ 0, %polly.loop_header533.preheader ]
  %149 = mul nuw nsw i64 %polly.indvar536, -64
  %150 = icmp slt i64 %149, -16
  %151 = select i1 %150, i64 %149, i64 -16
  %152 = shl nuw nsw i64 %polly.indvar536, 6
  %153 = or i64 %152, 1
  %154 = add nsw i64 %151, 80
  br label %polly.loop_header545

polly.loop_header545:                             ; preds = %polly.loop_exit569, %polly.loop_header533
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit569 ], [ %153, %polly.loop_header533 ]
  %polly.indvar548 = phi i64 [ %polly.indvar_next549, %polly.loop_exit569 ], [ 0, %polly.loop_header533 ]
  br label %polly.loop_header551

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next549, %154
  br i1 %exitcond856.not, label %polly.loop_header545.1, label %polly.loop_header545

polly.loop_header551:                             ; preds = %polly.loop_header551, %polly.loop_header545
  %polly.indvar554 = phi i64 [ 0, %polly.loop_header545 ], [ %polly.indvar_next555, %polly.loop_header551 ]
  %155 = shl nuw nsw i64 %polly.indvar554, 7
  %scevgep847 = getelementptr i8, i8* %malloccall433, i64 %155
  %156 = mul nuw nsw i64 %polly.indvar554, 480
  %scevgep848 = getelementptr i8, i8* %call1, i64 %156
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep847, i8* noundef nonnull align 8 dereferenceable(128) %scevgep848, i64 128, i1 false)
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next555, %indvars.iv850
  br i1 %exitcond852.not, label %polly.loop_header567.preheader, label %polly.loop_header551

polly.loop_header567.preheader:                   ; preds = %polly.loop_header551
  %157 = add nuw nsw i64 %polly.indvar548, %152
  %158 = mul nuw nsw i64 %157, 480
  %polly.access.mul.Packed_MemRef_call1434589 = shl nsw i64 %157, 4
  %159 = mul nuw nsw i64 %157, 640
  br label %polly.loop_header567

polly.loop_header567:                             ; preds = %polly.loop_header567.preheader, %polly.loop_exit575
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ 0, %polly.loop_header567.preheader ]
  %160 = shl i64 %polly.indvar570, 3
  %161 = add nuw nsw i64 %160, %158
  %scevgep583 = getelementptr i8, i8* %call2, i64 %161
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1434590 = add nuw nsw i64 %polly.indvar570, %polly.access.mul.Packed_MemRef_call1434589
  %polly.access.Packed_MemRef_call1434591 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434590
  %_p_scalar_592 = load double, double* %polly.access.Packed_MemRef_call1434591, align 8
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_header573
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next571, 16
  br i1 %exitcond855.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_header573, %polly.loop_header567
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header567 ], [ %polly.indvar_next577, %polly.loop_header573 ]
  %polly.access.mul.Packed_MemRef_call1434579 = shl nsw i64 %polly.indvar576, 4
  %polly.access.add.Packed_MemRef_call1434580 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434579, %polly.indvar570
  %polly.access.Packed_MemRef_call1434581 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434580
  %_p_scalar_582 = load double, double* %polly.access.Packed_MemRef_call1434581, align 8
  %p_mul27.i = fmul fast double %_p_scalar_585, %_p_scalar_582
  %162 = mul nuw nsw i64 %polly.indvar576, 480
  %163 = add nuw nsw i64 %162, %160
  %scevgep586 = getelementptr i8, i8* %call2, i64 %163
  %scevgep586587 = bitcast i8* %scevgep586 to double*
  %_p_scalar_588 = load double, double* %scevgep586587, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i = fmul fast double %_p_scalar_592, %_p_scalar_588
  %164 = shl nuw nsw i64 %polly.indvar576, 3
  %165 = add nuw nsw i64 %164, %159
  %scevgep593 = getelementptr i8, i8* %call, i64 %165
  %scevgep593594 = bitcast i8* %scevgep593 to double*
  %_p_scalar_595 = load double, double* %scevgep593594, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_595
  store double %p_add42.i, double* %scevgep593594, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next577, %indvars.iv850
  br i1 %exitcond853.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header734:                             ; preds = %entry, %polly.loop_exit742
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %entry ]
  %166 = mul nuw nsw i64 %polly.indvar737, 640
  %167 = trunc i64 %polly.indvar737 to i32
  %broadcast.splatinsert969 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat970 = shufflevector <4 x i32> %broadcast.splatinsert969, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body959

vector.body959:                                   ; preds = %vector.body959, %polly.loop_header734
  %index961 = phi i64 [ 0, %polly.loop_header734 ], [ %index.next962, %vector.body959 ]
  %vec.ind967 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734 ], [ %vec.ind.next968, %vector.body959 ]
  %168 = mul <4 x i32> %vec.ind967, %broadcast.splat970
  %169 = add <4 x i32> %168, <i32 3, i32 3, i32 3, i32 3>
  %170 = urem <4 x i32> %169, <i32 80, i32 80, i32 80, i32 80>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %173 = shl i64 %index961, 3
  %174 = add nuw nsw i64 %173, %166
  %175 = getelementptr i8, i8* %call, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !91, !noalias !93
  %index.next962 = add i64 %index961, 4
  %vec.ind.next968 = add <4 x i32> %vec.ind967, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next962, 32
  br i1 %177, label %polly.loop_exit742, label %vector.body959, !llvm.loop !96

polly.loop_exit742:                               ; preds = %vector.body959
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next738, 32
  br i1 %exitcond879.not, label %polly.loop_header734.1, label %polly.loop_header734

polly.loop_header761:                             ; preds = %polly.loop_exit742.2.2, %polly.loop_exit769
  %polly.indvar764 = phi i64 [ %polly.indvar_next765, %polly.loop_exit769 ], [ 0, %polly.loop_exit742.2.2 ]
  %178 = mul nuw nsw i64 %polly.indvar764, 480
  %179 = trunc i64 %polly.indvar764 to i32
  %broadcast.splatinsert1083 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1084 = shufflevector <4 x i32> %broadcast.splatinsert1083, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %polly.loop_header761
  %index1075 = phi i64 [ 0, %polly.loop_header761 ], [ %index.next1076, %vector.body1073 ]
  %vec.ind1081 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761 ], [ %vec.ind.next1082, %vector.body1073 ]
  %180 = mul <4 x i32> %vec.ind1081, %broadcast.splat1084
  %181 = add <4 x i32> %180, <i32 2, i32 2, i32 2, i32 2>
  %182 = urem <4 x i32> %181, <i32 60, i32 60, i32 60, i32 60>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %185 = shl i64 %index1075, 3
  %186 = add i64 %185, %178
  %187 = getelementptr i8, i8* %call2, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %184, <4 x double>* %188, align 8, !alias.scope !95, !noalias !97
  %index.next1076 = add i64 %index1075, 4
  %vec.ind.next1082 = add <4 x i32> %vec.ind1081, <i32 4, i32 4, i32 4, i32 4>
  %189 = icmp eq i64 %index.next1076, 32
  br i1 %189, label %polly.loop_exit769, label %vector.body1073, !llvm.loop !98

polly.loop_exit769:                               ; preds = %vector.body1073
  %polly.indvar_next765 = add nuw nsw i64 %polly.indvar764, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next765, 32
  br i1 %exitcond870.not, label %polly.loop_header761.1, label %polly.loop_header761

polly.loop_header787:                             ; preds = %polly.loop_exit769.1.2, %polly.loop_exit795
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_exit769.1.2 ]
  %190 = mul nuw nsw i64 %polly.indvar790, 480
  %191 = trunc i64 %polly.indvar790 to i32
  %broadcast.splatinsert1161 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1162 = shufflevector <4 x i32> %broadcast.splatinsert1161, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %polly.loop_header787
  %index1153 = phi i64 [ 0, %polly.loop_header787 ], [ %index.next1154, %vector.body1151 ]
  %vec.ind1159 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787 ], [ %vec.ind.next1160, %vector.body1151 ]
  %192 = mul <4 x i32> %vec.ind1159, %broadcast.splat1162
  %193 = add <4 x i32> %192, <i32 1, i32 1, i32 1, i32 1>
  %194 = urem <4 x i32> %193, <i32 80, i32 80, i32 80, i32 80>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %197 = shl i64 %index1153, 3
  %198 = add i64 %197, %190
  %199 = getelementptr i8, i8* %call1, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %196, <4 x double>* %200, align 8, !alias.scope !94, !noalias !99
  %index.next1154 = add i64 %index1153, 4
  %vec.ind.next1160 = add <4 x i32> %vec.ind1159, <i32 4, i32 4, i32 4, i32 4>
  %201 = icmp eq i64 %index.next1154, 32
  br i1 %201, label %polly.loop_exit795, label %vector.body1151, !llvm.loop !100

polly.loop_exit795:                               ; preds = %vector.body1151
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond864.not, label %polly.loop_header787.1, label %polly.loop_header787

polly.loop_header211.1:                           ; preds = %polly.loop_exit235, %polly.loop_exit235.1
  %indvars.iv817.1 = phi i64 [ %indvars.iv.next818.1, %polly.loop_exit235.1 ], [ %101, %polly.loop_exit235 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit235 ]
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %202 = shl nuw nsw i64 %polly.indvar220.1, 7
  %scevgep814.1 = getelementptr i8, i8* %malloccall, i64 %202
  %203 = mul nuw nsw i64 %polly.indvar220.1, 480
  %204 = add nuw nsw i64 %203, 128
  %scevgep815.1 = getelementptr i8, i8* %call1, i64 %204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep814.1, i8* noundef nonnull align 8 dereferenceable(128) %scevgep815.1, i64 128, i1 false)
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv817.1
  br i1 %exitcond.1.not, label %polly.loop_header233.preheader.1, label %polly.loop_header217.1

polly.loop_header233.preheader.1:                 ; preds = %polly.loop_header217.1
  %205 = add nuw nsw i64 %polly.indvar214.1, %100
  %206 = mul nuw nsw i64 %205, 480
  %polly.access.mul.Packed_MemRef_call1255.1 = shl nsw i64 %205, 4
  %207 = mul nuw nsw i64 %205, 640
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header233.preheader.1
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit241.1 ], [ 0, %polly.loop_header233.preheader.1 ]
  %208 = shl i64 %polly.indvar236.1, 3
  %209 = add i64 %208, 128
  %210 = add nuw nsw i64 %209, %206
  %scevgep249.1 = getelementptr i8, i8* %call2, i64 %210
  %scevgep249250.1 = bitcast i8* %scevgep249.1 to double*
  %_p_scalar_251.1 = load double, double* %scevgep249250.1, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1256.1 = add nuw nsw i64 %polly.indvar236.1, %polly.access.mul.Packed_MemRef_call1255.1
  %polly.access.Packed_MemRef_call1257.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1256.1
  %_p_scalar_258.1 = load double, double* %polly.access.Packed_MemRef_call1257.1, align 8
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %polly.access.mul.Packed_MemRef_call1245.1 = shl nsw i64 %polly.indvar242.1, 4
  %polly.access.add.Packed_MemRef_call1246.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1245.1, %polly.indvar236.1
  %polly.access.Packed_MemRef_call1247.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.1
  %_p_scalar_248.1 = load double, double* %polly.access.Packed_MemRef_call1247.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_248.1
  %211 = mul nuw nsw i64 %polly.indvar242.1, 480
  %212 = add nuw nsw i64 %211, %209
  %scevgep252.1 = getelementptr i8, i8* %call2, i64 %212
  %scevgep252253.1 = bitcast i8* %scevgep252.1 to double*
  %_p_scalar_254.1 = load double, double* %scevgep252253.1, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114.1 = fmul fast double %_p_scalar_258.1, %_p_scalar_254.1
  %213 = shl nuw nsw i64 %polly.indvar242.1, 3
  %214 = add nuw nsw i64 %213, %207
  %scevgep259.1 = getelementptr i8, i8* %call, i64 %214
  %scevgep259260.1 = bitcast i8* %scevgep259.1 to double*
  %_p_scalar_261.1 = load double, double* %scevgep259260.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_261.1
  store double %p_add42.i118.1, double* %scevgep259260.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond819.1.not = icmp eq i64 %polly.indvar_next243.1, %indvars.iv817.1
  br i1 %exitcond819.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond821.1.not = icmp eq i64 %polly.indvar_next237.1, 16
  br i1 %exitcond821.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next818.1 = add nuw nsw i64 %indvars.iv817.1, 1
  %exitcond822.1.not = icmp eq i64 %polly.indvar_next215.1, %102
  br i1 %exitcond822.1.not, label %polly.loop_header211.2, label %polly.loop_header211.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit235.2
  %indvars.iv817.2 = phi i64 [ %indvars.iv.next818.2, %polly.loop_exit235.2 ], [ %101, %polly.loop_exit235.1 ]
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_exit235.1 ]
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_header217.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_header217.2 ]
  %215 = shl nuw nsw i64 %polly.indvar220.2, 7
  %scevgep814.2 = getelementptr i8, i8* %malloccall, i64 %215
  %216 = mul nuw nsw i64 %polly.indvar220.2, 480
  %217 = add nuw nsw i64 %216, 256
  %scevgep815.2 = getelementptr i8, i8* %call1, i64 %217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep814.2, i8* noundef nonnull align 8 dereferenceable(128) %scevgep815.2, i64 128, i1 false)
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next221.2, %indvars.iv817.2
  br i1 %exitcond.2.not, label %polly.loop_header233.preheader.2, label %polly.loop_header217.2

polly.loop_header233.preheader.2:                 ; preds = %polly.loop_header217.2
  %218 = add nuw nsw i64 %polly.indvar214.2, %100
  %219 = mul nuw nsw i64 %218, 480
  %polly.access.mul.Packed_MemRef_call1255.2 = shl nsw i64 %218, 4
  %220 = mul nuw nsw i64 %218, 640
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.2, %polly.loop_header233.preheader.2
  %polly.indvar236.2 = phi i64 [ %polly.indvar_next237.2, %polly.loop_exit241.2 ], [ 0, %polly.loop_header233.preheader.2 ]
  %221 = shl i64 %polly.indvar236.2, 3
  %222 = add i64 %221, 256
  %223 = add nuw nsw i64 %222, %219
  %scevgep249.2 = getelementptr i8, i8* %call2, i64 %223
  %scevgep249250.2 = bitcast i8* %scevgep249.2 to double*
  %_p_scalar_251.2 = load double, double* %scevgep249250.2, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1256.2 = add nuw nsw i64 %polly.indvar236.2, %polly.access.mul.Packed_MemRef_call1255.2
  %polly.access.Packed_MemRef_call1257.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1256.2
  %_p_scalar_258.2 = load double, double* %polly.access.Packed_MemRef_call1257.2, align 8
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_header233.2
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_header233.2 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %polly.access.mul.Packed_MemRef_call1245.2 = shl nsw i64 %polly.indvar242.2, 4
  %polly.access.add.Packed_MemRef_call1246.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1245.2, %polly.indvar236.2
  %polly.access.Packed_MemRef_call1247.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.2
  %_p_scalar_248.2 = load double, double* %polly.access.Packed_MemRef_call1247.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_248.2
  %224 = mul nuw nsw i64 %polly.indvar242.2, 480
  %225 = add nuw nsw i64 %224, %222
  %scevgep252.2 = getelementptr i8, i8* %call2, i64 %225
  %scevgep252253.2 = bitcast i8* %scevgep252.2 to double*
  %_p_scalar_254.2 = load double, double* %scevgep252253.2, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114.2 = fmul fast double %_p_scalar_258.2, %_p_scalar_254.2
  %226 = shl nuw nsw i64 %polly.indvar242.2, 3
  %227 = add nuw nsw i64 %226, %220
  %scevgep259.2 = getelementptr i8, i8* %call, i64 %227
  %scevgep259260.2 = bitcast i8* %scevgep259.2 to double*
  %_p_scalar_261.2 = load double, double* %scevgep259260.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_261.2
  store double %p_add42.i118.2, double* %scevgep259260.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond819.2.not = icmp eq i64 %polly.indvar_next243.2, %indvars.iv817.2
  br i1 %exitcond819.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond821.2.not = icmp eq i64 %polly.indvar_next237.2, 16
  br i1 %exitcond821.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %indvars.iv.next818.2 = add nuw nsw i64 %indvars.iv817.2, 1
  %exitcond822.2.not = icmp eq i64 %polly.indvar_next215.2, %102
  br i1 %exitcond822.2.not, label %polly.loop_header211.3, label %polly.loop_header211.2

polly.loop_header211.3:                           ; preds = %polly.loop_exit235.2, %polly.loop_exit235.3
  %indvars.iv817.3 = phi i64 [ %indvars.iv.next818.3, %polly.loop_exit235.3 ], [ %101, %polly.loop_exit235.2 ]
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit235.3 ], [ 0, %polly.loop_exit235.2 ]
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_header217.3, %polly.loop_header211.3
  %polly.indvar220.3 = phi i64 [ 0, %polly.loop_header211.3 ], [ %polly.indvar_next221.3, %polly.loop_header217.3 ]
  %228 = shl nuw nsw i64 %polly.indvar220.3, 7
  %scevgep814.3 = getelementptr i8, i8* %malloccall, i64 %228
  %229 = mul nuw nsw i64 %polly.indvar220.3, 480
  %230 = add nuw nsw i64 %229, 384
  %scevgep815.3 = getelementptr i8, i8* %call1, i64 %230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %scevgep814.3, i8* noundef nonnull align 8 dereferenceable(96) %scevgep815.3, i64 96, i1 false)
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next221.3, %indvars.iv817.3
  br i1 %exitcond.3.not, label %polly.loop_header233.preheader.3, label %polly.loop_header217.3

polly.loop_header233.preheader.3:                 ; preds = %polly.loop_header217.3
  %231 = add nuw nsw i64 %polly.indvar214.3, %100
  %232 = mul nuw nsw i64 %231, 480
  %polly.access.mul.Packed_MemRef_call1255.3 = shl nsw i64 %231, 4
  %233 = mul nuw nsw i64 %231, 640
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_exit241.3, %polly.loop_header233.preheader.3
  %polly.indvar236.3 = phi i64 [ %polly.indvar_next237.3, %polly.loop_exit241.3 ], [ 0, %polly.loop_header233.preheader.3 ]
  %234 = shl i64 %polly.indvar236.3, 3
  %235 = add i64 %234, 384
  %236 = add nuw nsw i64 %235, %232
  %scevgep249.3 = getelementptr i8, i8* %call2, i64 %236
  %scevgep249250.3 = bitcast i8* %scevgep249.3 to double*
  %_p_scalar_251.3 = load double, double* %scevgep249250.3, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1256.3 = add nuw nsw i64 %polly.indvar236.3, %polly.access.mul.Packed_MemRef_call1255.3
  %polly.access.Packed_MemRef_call1257.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1256.3
  %_p_scalar_258.3 = load double, double* %polly.access.Packed_MemRef_call1257.3, align 8
  br label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_header239.3, %polly.loop_header233.3
  %polly.indvar242.3 = phi i64 [ 0, %polly.loop_header233.3 ], [ %polly.indvar_next243.3, %polly.loop_header239.3 ]
  %polly.access.mul.Packed_MemRef_call1245.3 = shl nsw i64 %polly.indvar242.3, 4
  %polly.access.add.Packed_MemRef_call1246.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1245.3, %polly.indvar236.3
  %polly.access.Packed_MemRef_call1247.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.3
  %_p_scalar_248.3 = load double, double* %polly.access.Packed_MemRef_call1247.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_251.3, %_p_scalar_248.3
  %237 = mul nuw nsw i64 %polly.indvar242.3, 480
  %238 = add nuw nsw i64 %237, %235
  %scevgep252.3 = getelementptr i8, i8* %call2, i64 %238
  %scevgep252253.3 = bitcast i8* %scevgep252.3 to double*
  %_p_scalar_254.3 = load double, double* %scevgep252253.3, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114.3 = fmul fast double %_p_scalar_258.3, %_p_scalar_254.3
  %239 = shl nuw nsw i64 %polly.indvar242.3, 3
  %240 = add nuw nsw i64 %239, %233
  %scevgep259.3 = getelementptr i8, i8* %call, i64 %240
  %scevgep259260.3 = bitcast i8* %scevgep259.3 to double*
  %_p_scalar_261.3 = load double, double* %scevgep259260.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_261.3
  store double %p_add42.i118.3, double* %scevgep259260.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %exitcond819.3.not = icmp eq i64 %polly.indvar_next243.3, %indvars.iv817.3
  br i1 %exitcond819.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.3

polly.loop_exit241.3:                             ; preds = %polly.loop_header239.3
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %exitcond821.3.not = icmp eq i64 %polly.indvar_next237.3, 12
  br i1 %exitcond821.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_exit241.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %indvars.iv.next818.3 = add nuw nsw i64 %indvars.iv817.3, 1
  %exitcond822.3.not = icmp eq i64 %polly.indvar_next215.3, %102
  br i1 %exitcond822.3.not, label %polly.loop_exit213.3, label %polly.loop_header211.3

polly.loop_exit213.3:                             ; preds = %polly.loop_exit235.3
  br i1 %polly.loop_cond204, label %polly.loop_header199, label %polly.exiting

polly.loop_header378.1:                           ; preds = %polly.loop_exit402, %polly.loop_exit402.1
  %indvars.iv833.1 = phi i64 [ %indvars.iv.next834.1, %polly.loop_exit402.1 ], [ %127, %polly.loop_exit402 ]
  %polly.indvar381.1 = phi i64 [ %polly.indvar_next382.1, %polly.loop_exit402.1 ], [ 0, %polly.loop_exit402 ]
  br label %polly.loop_header384.1

polly.loop_header384.1:                           ; preds = %polly.loop_header384.1, %polly.loop_header378.1
  %polly.indvar387.1 = phi i64 [ 0, %polly.loop_header378.1 ], [ %polly.indvar_next388.1, %polly.loop_header384.1 ]
  %241 = shl nuw nsw i64 %polly.indvar387.1, 7
  %scevgep830.1 = getelementptr i8, i8* %malloccall266, i64 %241
  %242 = mul nuw nsw i64 %polly.indvar387.1, 480
  %243 = add nuw nsw i64 %242, 128
  %scevgep831.1 = getelementptr i8, i8* %call1, i64 %243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep830.1, i8* noundef nonnull align 8 dereferenceable(128) %scevgep831.1, i64 128, i1 false)
  %polly.indvar_next388.1 = add nuw nsw i64 %polly.indvar387.1, 1
  %exitcond835.1.not = icmp eq i64 %polly.indvar_next388.1, %indvars.iv833.1
  br i1 %exitcond835.1.not, label %polly.loop_header400.preheader.1, label %polly.loop_header384.1

polly.loop_header400.preheader.1:                 ; preds = %polly.loop_header384.1
  %244 = add nuw nsw i64 %polly.indvar381.1, %126
  %245 = mul nuw nsw i64 %244, 480
  %polly.access.mul.Packed_MemRef_call1267422.1 = shl nsw i64 %244, 4
  %246 = mul nuw nsw i64 %244, 640
  br label %polly.loop_header400.1

polly.loop_header400.1:                           ; preds = %polly.loop_exit408.1, %polly.loop_header400.preheader.1
  %polly.indvar403.1 = phi i64 [ %polly.indvar_next404.1, %polly.loop_exit408.1 ], [ 0, %polly.loop_header400.preheader.1 ]
  %247 = shl i64 %polly.indvar403.1, 3
  %248 = add i64 %247, 128
  %249 = add nuw nsw i64 %248, %245
  %scevgep416.1 = getelementptr i8, i8* %call2, i64 %249
  %scevgep416417.1 = bitcast i8* %scevgep416.1 to double*
  %_p_scalar_418.1 = load double, double* %scevgep416417.1, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1267423.1 = add nuw nsw i64 %polly.indvar403.1, %polly.access.mul.Packed_MemRef_call1267422.1
  %polly.access.Packed_MemRef_call1267424.1 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267423.1
  %_p_scalar_425.1 = load double, double* %polly.access.Packed_MemRef_call1267424.1, align 8
  br label %polly.loop_header406.1

polly.loop_header406.1:                           ; preds = %polly.loop_header406.1, %polly.loop_header400.1
  %polly.indvar409.1 = phi i64 [ 0, %polly.loop_header400.1 ], [ %polly.indvar_next410.1, %polly.loop_header406.1 ]
  %polly.access.mul.Packed_MemRef_call1267412.1 = shl nsw i64 %polly.indvar409.1, 4
  %polly.access.add.Packed_MemRef_call1267413.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267412.1, %polly.indvar403.1
  %polly.access.Packed_MemRef_call1267414.1 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267413.1
  %_p_scalar_415.1 = load double, double* %polly.access.Packed_MemRef_call1267414.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_418.1, %_p_scalar_415.1
  %250 = mul nuw nsw i64 %polly.indvar409.1, 480
  %251 = add nuw nsw i64 %250, %248
  %scevgep419.1 = getelementptr i8, i8* %call2, i64 %251
  %scevgep419420.1 = bitcast i8* %scevgep419.1 to double*
  %_p_scalar_421.1 = load double, double* %scevgep419420.1, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75.1 = fmul fast double %_p_scalar_425.1, %_p_scalar_421.1
  %252 = shl nuw nsw i64 %polly.indvar409.1, 3
  %253 = add nuw nsw i64 %252, %246
  %scevgep426.1 = getelementptr i8, i8* %call, i64 %253
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_428.1
  store double %p_add42.i79.1, double* %scevgep426427.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond836.1.not = icmp eq i64 %polly.indvar_next410.1, %indvars.iv833.1
  br i1 %exitcond836.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.1

polly.loop_exit408.1:                             ; preds = %polly.loop_header406.1
  %polly.indvar_next404.1 = add nuw nsw i64 %polly.indvar403.1, 1
  %exitcond838.1.not = icmp eq i64 %polly.indvar_next404.1, 16
  br i1 %exitcond838.1.not, label %polly.loop_exit402.1, label %polly.loop_header400.1

polly.loop_exit402.1:                             ; preds = %polly.loop_exit408.1
  %polly.indvar_next382.1 = add nuw nsw i64 %polly.indvar381.1, 1
  %indvars.iv.next834.1 = add nuw nsw i64 %indvars.iv833.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar_next382.1, %128
  br i1 %exitcond839.1.not, label %polly.loop_header378.2, label %polly.loop_header378.1

polly.loop_header378.2:                           ; preds = %polly.loop_exit402.1, %polly.loop_exit402.2
  %indvars.iv833.2 = phi i64 [ %indvars.iv.next834.2, %polly.loop_exit402.2 ], [ %127, %polly.loop_exit402.1 ]
  %polly.indvar381.2 = phi i64 [ %polly.indvar_next382.2, %polly.loop_exit402.2 ], [ 0, %polly.loop_exit402.1 ]
  br label %polly.loop_header384.2

polly.loop_header384.2:                           ; preds = %polly.loop_header384.2, %polly.loop_header378.2
  %polly.indvar387.2 = phi i64 [ 0, %polly.loop_header378.2 ], [ %polly.indvar_next388.2, %polly.loop_header384.2 ]
  %254 = shl nuw nsw i64 %polly.indvar387.2, 7
  %scevgep830.2 = getelementptr i8, i8* %malloccall266, i64 %254
  %255 = mul nuw nsw i64 %polly.indvar387.2, 480
  %256 = add nuw nsw i64 %255, 256
  %scevgep831.2 = getelementptr i8, i8* %call1, i64 %256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep830.2, i8* noundef nonnull align 8 dereferenceable(128) %scevgep831.2, i64 128, i1 false)
  %polly.indvar_next388.2 = add nuw nsw i64 %polly.indvar387.2, 1
  %exitcond835.2.not = icmp eq i64 %polly.indvar_next388.2, %indvars.iv833.2
  br i1 %exitcond835.2.not, label %polly.loop_header400.preheader.2, label %polly.loop_header384.2

polly.loop_header400.preheader.2:                 ; preds = %polly.loop_header384.2
  %257 = add nuw nsw i64 %polly.indvar381.2, %126
  %258 = mul nuw nsw i64 %257, 480
  %polly.access.mul.Packed_MemRef_call1267422.2 = shl nsw i64 %257, 4
  %259 = mul nuw nsw i64 %257, 640
  br label %polly.loop_header400.2

polly.loop_header400.2:                           ; preds = %polly.loop_exit408.2, %polly.loop_header400.preheader.2
  %polly.indvar403.2 = phi i64 [ %polly.indvar_next404.2, %polly.loop_exit408.2 ], [ 0, %polly.loop_header400.preheader.2 ]
  %260 = shl i64 %polly.indvar403.2, 3
  %261 = add i64 %260, 256
  %262 = add nuw nsw i64 %261, %258
  %scevgep416.2 = getelementptr i8, i8* %call2, i64 %262
  %scevgep416417.2 = bitcast i8* %scevgep416.2 to double*
  %_p_scalar_418.2 = load double, double* %scevgep416417.2, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1267423.2 = add nuw nsw i64 %polly.indvar403.2, %polly.access.mul.Packed_MemRef_call1267422.2
  %polly.access.Packed_MemRef_call1267424.2 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267423.2
  %_p_scalar_425.2 = load double, double* %polly.access.Packed_MemRef_call1267424.2, align 8
  br label %polly.loop_header406.2

polly.loop_header406.2:                           ; preds = %polly.loop_header406.2, %polly.loop_header400.2
  %polly.indvar409.2 = phi i64 [ 0, %polly.loop_header400.2 ], [ %polly.indvar_next410.2, %polly.loop_header406.2 ]
  %polly.access.mul.Packed_MemRef_call1267412.2 = shl nsw i64 %polly.indvar409.2, 4
  %polly.access.add.Packed_MemRef_call1267413.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267412.2, %polly.indvar403.2
  %polly.access.Packed_MemRef_call1267414.2 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267413.2
  %_p_scalar_415.2 = load double, double* %polly.access.Packed_MemRef_call1267414.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_418.2, %_p_scalar_415.2
  %263 = mul nuw nsw i64 %polly.indvar409.2, 480
  %264 = add nuw nsw i64 %263, %261
  %scevgep419.2 = getelementptr i8, i8* %call2, i64 %264
  %scevgep419420.2 = bitcast i8* %scevgep419.2 to double*
  %_p_scalar_421.2 = load double, double* %scevgep419420.2, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75.2 = fmul fast double %_p_scalar_425.2, %_p_scalar_421.2
  %265 = shl nuw nsw i64 %polly.indvar409.2, 3
  %266 = add nuw nsw i64 %265, %259
  %scevgep426.2 = getelementptr i8, i8* %call, i64 %266
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_428.2
  store double %p_add42.i79.2, double* %scevgep426427.2, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410.2 = add nuw nsw i64 %polly.indvar409.2, 1
  %exitcond836.2.not = icmp eq i64 %polly.indvar_next410.2, %indvars.iv833.2
  br i1 %exitcond836.2.not, label %polly.loop_exit408.2, label %polly.loop_header406.2

polly.loop_exit408.2:                             ; preds = %polly.loop_header406.2
  %polly.indvar_next404.2 = add nuw nsw i64 %polly.indvar403.2, 1
  %exitcond838.2.not = icmp eq i64 %polly.indvar_next404.2, 16
  br i1 %exitcond838.2.not, label %polly.loop_exit402.2, label %polly.loop_header400.2

polly.loop_exit402.2:                             ; preds = %polly.loop_exit408.2
  %polly.indvar_next382.2 = add nuw nsw i64 %polly.indvar381.2, 1
  %indvars.iv.next834.2 = add nuw nsw i64 %indvars.iv833.2, 1
  %exitcond839.2.not = icmp eq i64 %polly.indvar_next382.2, %128
  br i1 %exitcond839.2.not, label %polly.loop_header378.3, label %polly.loop_header378.2

polly.loop_header378.3:                           ; preds = %polly.loop_exit402.2, %polly.loop_exit402.3
  %indvars.iv833.3 = phi i64 [ %indvars.iv.next834.3, %polly.loop_exit402.3 ], [ %127, %polly.loop_exit402.2 ]
  %polly.indvar381.3 = phi i64 [ %polly.indvar_next382.3, %polly.loop_exit402.3 ], [ 0, %polly.loop_exit402.2 ]
  br label %polly.loop_header384.3

polly.loop_header384.3:                           ; preds = %polly.loop_header384.3, %polly.loop_header378.3
  %polly.indvar387.3 = phi i64 [ 0, %polly.loop_header378.3 ], [ %polly.indvar_next388.3, %polly.loop_header384.3 ]
  %267 = shl nuw nsw i64 %polly.indvar387.3, 7
  %scevgep830.3 = getelementptr i8, i8* %malloccall266, i64 %267
  %268 = mul nuw nsw i64 %polly.indvar387.3, 480
  %269 = add nuw nsw i64 %268, 384
  %scevgep831.3 = getelementptr i8, i8* %call1, i64 %269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %scevgep830.3, i8* noundef nonnull align 8 dereferenceable(96) %scevgep831.3, i64 96, i1 false)
  %polly.indvar_next388.3 = add nuw nsw i64 %polly.indvar387.3, 1
  %exitcond835.3.not = icmp eq i64 %polly.indvar_next388.3, %indvars.iv833.3
  br i1 %exitcond835.3.not, label %polly.loop_header400.preheader.3, label %polly.loop_header384.3

polly.loop_header400.preheader.3:                 ; preds = %polly.loop_header384.3
  %270 = add nuw nsw i64 %polly.indvar381.3, %126
  %271 = mul nuw nsw i64 %270, 480
  %polly.access.mul.Packed_MemRef_call1267422.3 = shl nsw i64 %270, 4
  %272 = mul nuw nsw i64 %270, 640
  br label %polly.loop_header400.3

polly.loop_header400.3:                           ; preds = %polly.loop_exit408.3, %polly.loop_header400.preheader.3
  %polly.indvar403.3 = phi i64 [ %polly.indvar_next404.3, %polly.loop_exit408.3 ], [ 0, %polly.loop_header400.preheader.3 ]
  %273 = shl i64 %polly.indvar403.3, 3
  %274 = add i64 %273, 384
  %275 = add nuw nsw i64 %274, %271
  %scevgep416.3 = getelementptr i8, i8* %call2, i64 %275
  %scevgep416417.3 = bitcast i8* %scevgep416.3 to double*
  %_p_scalar_418.3 = load double, double* %scevgep416417.3, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1267423.3 = add nuw nsw i64 %polly.indvar403.3, %polly.access.mul.Packed_MemRef_call1267422.3
  %polly.access.Packed_MemRef_call1267424.3 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267423.3
  %_p_scalar_425.3 = load double, double* %polly.access.Packed_MemRef_call1267424.3, align 8
  br label %polly.loop_header406.3

polly.loop_header406.3:                           ; preds = %polly.loop_header406.3, %polly.loop_header400.3
  %polly.indvar409.3 = phi i64 [ 0, %polly.loop_header400.3 ], [ %polly.indvar_next410.3, %polly.loop_header406.3 ]
  %polly.access.mul.Packed_MemRef_call1267412.3 = shl nsw i64 %polly.indvar409.3, 4
  %polly.access.add.Packed_MemRef_call1267413.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267412.3, %polly.indvar403.3
  %polly.access.Packed_MemRef_call1267414.3 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267413.3
  %_p_scalar_415.3 = load double, double* %polly.access.Packed_MemRef_call1267414.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_418.3, %_p_scalar_415.3
  %276 = mul nuw nsw i64 %polly.indvar409.3, 480
  %277 = add nuw nsw i64 %276, %274
  %scevgep419.3 = getelementptr i8, i8* %call2, i64 %277
  %scevgep419420.3 = bitcast i8* %scevgep419.3 to double*
  %_p_scalar_421.3 = load double, double* %scevgep419420.3, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75.3 = fmul fast double %_p_scalar_425.3, %_p_scalar_421.3
  %278 = shl nuw nsw i64 %polly.indvar409.3, 3
  %279 = add nuw nsw i64 %278, %272
  %scevgep426.3 = getelementptr i8, i8* %call, i64 %279
  %scevgep426427.3 = bitcast i8* %scevgep426.3 to double*
  %_p_scalar_428.3 = load double, double* %scevgep426427.3, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_428.3
  store double %p_add42.i79.3, double* %scevgep426427.3, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410.3 = add nuw nsw i64 %polly.indvar409.3, 1
  %exitcond836.3.not = icmp eq i64 %polly.indvar_next410.3, %indvars.iv833.3
  br i1 %exitcond836.3.not, label %polly.loop_exit408.3, label %polly.loop_header406.3

polly.loop_exit408.3:                             ; preds = %polly.loop_header406.3
  %polly.indvar_next404.3 = add nuw nsw i64 %polly.indvar403.3, 1
  %exitcond838.3.not = icmp eq i64 %polly.indvar_next404.3, 12
  br i1 %exitcond838.3.not, label %polly.loop_exit402.3, label %polly.loop_header400.3

polly.loop_exit402.3:                             ; preds = %polly.loop_exit408.3
  %polly.indvar_next382.3 = add nuw nsw i64 %polly.indvar381.3, 1
  %indvars.iv.next834.3 = add nuw nsw i64 %indvars.iv833.3, 1
  %exitcond839.3.not = icmp eq i64 %polly.indvar_next382.3, %128
  br i1 %exitcond839.3.not, label %polly.loop_exit380.3, label %polly.loop_header378.3

polly.loop_exit380.3:                             ; preds = %polly.loop_exit402.3
  br i1 %polly.loop_cond371, label %polly.loop_header366, label %polly.exiting265

polly.loop_header545.1:                           ; preds = %polly.loop_exit569, %polly.loop_exit569.1
  %indvars.iv850.1 = phi i64 [ %indvars.iv.next851.1, %polly.loop_exit569.1 ], [ %153, %polly.loop_exit569 ]
  %polly.indvar548.1 = phi i64 [ %polly.indvar_next549.1, %polly.loop_exit569.1 ], [ 0, %polly.loop_exit569 ]
  br label %polly.loop_header551.1

polly.loop_header551.1:                           ; preds = %polly.loop_header551.1, %polly.loop_header545.1
  %polly.indvar554.1 = phi i64 [ 0, %polly.loop_header545.1 ], [ %polly.indvar_next555.1, %polly.loop_header551.1 ]
  %280 = shl nuw nsw i64 %polly.indvar554.1, 7
  %scevgep847.1 = getelementptr i8, i8* %malloccall433, i64 %280
  %281 = mul nuw nsw i64 %polly.indvar554.1, 480
  %282 = add nuw nsw i64 %281, 128
  %scevgep848.1 = getelementptr i8, i8* %call1, i64 %282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep847.1, i8* noundef nonnull align 8 dereferenceable(128) %scevgep848.1, i64 128, i1 false)
  %polly.indvar_next555.1 = add nuw nsw i64 %polly.indvar554.1, 1
  %exitcond852.1.not = icmp eq i64 %polly.indvar_next555.1, %indvars.iv850.1
  br i1 %exitcond852.1.not, label %polly.loop_header567.preheader.1, label %polly.loop_header551.1

polly.loop_header567.preheader.1:                 ; preds = %polly.loop_header551.1
  %283 = add nuw nsw i64 %polly.indvar548.1, %152
  %284 = mul nuw nsw i64 %283, 480
  %polly.access.mul.Packed_MemRef_call1434589.1 = shl nsw i64 %283, 4
  %285 = mul nuw nsw i64 %283, 640
  br label %polly.loop_header567.1

polly.loop_header567.1:                           ; preds = %polly.loop_exit575.1, %polly.loop_header567.preheader.1
  %polly.indvar570.1 = phi i64 [ %polly.indvar_next571.1, %polly.loop_exit575.1 ], [ 0, %polly.loop_header567.preheader.1 ]
  %286 = shl i64 %polly.indvar570.1, 3
  %287 = add i64 %286, 128
  %288 = add nuw nsw i64 %287, %284
  %scevgep583.1 = getelementptr i8, i8* %call2, i64 %288
  %scevgep583584.1 = bitcast i8* %scevgep583.1 to double*
  %_p_scalar_585.1 = load double, double* %scevgep583584.1, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1434590.1 = add nuw nsw i64 %polly.indvar570.1, %polly.access.mul.Packed_MemRef_call1434589.1
  %polly.access.Packed_MemRef_call1434591.1 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434590.1
  %_p_scalar_592.1 = load double, double* %polly.access.Packed_MemRef_call1434591.1, align 8
  br label %polly.loop_header573.1

polly.loop_header573.1:                           ; preds = %polly.loop_header573.1, %polly.loop_header567.1
  %polly.indvar576.1 = phi i64 [ 0, %polly.loop_header567.1 ], [ %polly.indvar_next577.1, %polly.loop_header573.1 ]
  %polly.access.mul.Packed_MemRef_call1434579.1 = shl nsw i64 %polly.indvar576.1, 4
  %polly.access.add.Packed_MemRef_call1434580.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434579.1, %polly.indvar570.1
  %polly.access.Packed_MemRef_call1434581.1 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434580.1
  %_p_scalar_582.1 = load double, double* %polly.access.Packed_MemRef_call1434581.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_585.1, %_p_scalar_582.1
  %289 = mul nuw nsw i64 %polly.indvar576.1, 480
  %290 = add nuw nsw i64 %289, %287
  %scevgep586.1 = getelementptr i8, i8* %call2, i64 %290
  %scevgep586587.1 = bitcast i8* %scevgep586.1 to double*
  %_p_scalar_588.1 = load double, double* %scevgep586587.1, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i.1 = fmul fast double %_p_scalar_592.1, %_p_scalar_588.1
  %291 = shl nuw nsw i64 %polly.indvar576.1, 3
  %292 = add nuw nsw i64 %291, %285
  %scevgep593.1 = getelementptr i8, i8* %call, i64 %292
  %scevgep593594.1 = bitcast i8* %scevgep593.1 to double*
  %_p_scalar_595.1 = load double, double* %scevgep593594.1, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_595.1
  store double %p_add42.i.1, double* %scevgep593594.1, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577.1 = add nuw nsw i64 %polly.indvar576.1, 1
  %exitcond853.1.not = icmp eq i64 %polly.indvar_next577.1, %indvars.iv850.1
  br i1 %exitcond853.1.not, label %polly.loop_exit575.1, label %polly.loop_header573.1

polly.loop_exit575.1:                             ; preds = %polly.loop_header573.1
  %polly.indvar_next571.1 = add nuw nsw i64 %polly.indvar570.1, 1
  %exitcond855.1.not = icmp eq i64 %polly.indvar_next571.1, 16
  br i1 %exitcond855.1.not, label %polly.loop_exit569.1, label %polly.loop_header567.1

polly.loop_exit569.1:                             ; preds = %polly.loop_exit575.1
  %polly.indvar_next549.1 = add nuw nsw i64 %polly.indvar548.1, 1
  %indvars.iv.next851.1 = add nuw nsw i64 %indvars.iv850.1, 1
  %exitcond856.1.not = icmp eq i64 %polly.indvar_next549.1, %154
  br i1 %exitcond856.1.not, label %polly.loop_header545.2, label %polly.loop_header545.1

polly.loop_header545.2:                           ; preds = %polly.loop_exit569.1, %polly.loop_exit569.2
  %indvars.iv850.2 = phi i64 [ %indvars.iv.next851.2, %polly.loop_exit569.2 ], [ %153, %polly.loop_exit569.1 ]
  %polly.indvar548.2 = phi i64 [ %polly.indvar_next549.2, %polly.loop_exit569.2 ], [ 0, %polly.loop_exit569.1 ]
  br label %polly.loop_header551.2

polly.loop_header551.2:                           ; preds = %polly.loop_header551.2, %polly.loop_header545.2
  %polly.indvar554.2 = phi i64 [ 0, %polly.loop_header545.2 ], [ %polly.indvar_next555.2, %polly.loop_header551.2 ]
  %293 = shl nuw nsw i64 %polly.indvar554.2, 7
  %scevgep847.2 = getelementptr i8, i8* %malloccall433, i64 %293
  %294 = mul nuw nsw i64 %polly.indvar554.2, 480
  %295 = add nuw nsw i64 %294, 256
  %scevgep848.2 = getelementptr i8, i8* %call1, i64 %295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep847.2, i8* noundef nonnull align 8 dereferenceable(128) %scevgep848.2, i64 128, i1 false)
  %polly.indvar_next555.2 = add nuw nsw i64 %polly.indvar554.2, 1
  %exitcond852.2.not = icmp eq i64 %polly.indvar_next555.2, %indvars.iv850.2
  br i1 %exitcond852.2.not, label %polly.loop_header567.preheader.2, label %polly.loop_header551.2

polly.loop_header567.preheader.2:                 ; preds = %polly.loop_header551.2
  %296 = add nuw nsw i64 %polly.indvar548.2, %152
  %297 = mul nuw nsw i64 %296, 480
  %polly.access.mul.Packed_MemRef_call1434589.2 = shl nsw i64 %296, 4
  %298 = mul nuw nsw i64 %296, 640
  br label %polly.loop_header567.2

polly.loop_header567.2:                           ; preds = %polly.loop_exit575.2, %polly.loop_header567.preheader.2
  %polly.indvar570.2 = phi i64 [ %polly.indvar_next571.2, %polly.loop_exit575.2 ], [ 0, %polly.loop_header567.preheader.2 ]
  %299 = shl i64 %polly.indvar570.2, 3
  %300 = add i64 %299, 256
  %301 = add nuw nsw i64 %300, %297
  %scevgep583.2 = getelementptr i8, i8* %call2, i64 %301
  %scevgep583584.2 = bitcast i8* %scevgep583.2 to double*
  %_p_scalar_585.2 = load double, double* %scevgep583584.2, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1434590.2 = add nuw nsw i64 %polly.indvar570.2, %polly.access.mul.Packed_MemRef_call1434589.2
  %polly.access.Packed_MemRef_call1434591.2 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434590.2
  %_p_scalar_592.2 = load double, double* %polly.access.Packed_MemRef_call1434591.2, align 8
  br label %polly.loop_header573.2

polly.loop_header573.2:                           ; preds = %polly.loop_header573.2, %polly.loop_header567.2
  %polly.indvar576.2 = phi i64 [ 0, %polly.loop_header567.2 ], [ %polly.indvar_next577.2, %polly.loop_header573.2 ]
  %polly.access.mul.Packed_MemRef_call1434579.2 = shl nsw i64 %polly.indvar576.2, 4
  %polly.access.add.Packed_MemRef_call1434580.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434579.2, %polly.indvar570.2
  %polly.access.Packed_MemRef_call1434581.2 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434580.2
  %_p_scalar_582.2 = load double, double* %polly.access.Packed_MemRef_call1434581.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_585.2, %_p_scalar_582.2
  %302 = mul nuw nsw i64 %polly.indvar576.2, 480
  %303 = add nuw nsw i64 %302, %300
  %scevgep586.2 = getelementptr i8, i8* %call2, i64 %303
  %scevgep586587.2 = bitcast i8* %scevgep586.2 to double*
  %_p_scalar_588.2 = load double, double* %scevgep586587.2, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i.2 = fmul fast double %_p_scalar_592.2, %_p_scalar_588.2
  %304 = shl nuw nsw i64 %polly.indvar576.2, 3
  %305 = add nuw nsw i64 %304, %298
  %scevgep593.2 = getelementptr i8, i8* %call, i64 %305
  %scevgep593594.2 = bitcast i8* %scevgep593.2 to double*
  %_p_scalar_595.2 = load double, double* %scevgep593594.2, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_595.2
  store double %p_add42.i.2, double* %scevgep593594.2, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577.2 = add nuw nsw i64 %polly.indvar576.2, 1
  %exitcond853.2.not = icmp eq i64 %polly.indvar_next577.2, %indvars.iv850.2
  br i1 %exitcond853.2.not, label %polly.loop_exit575.2, label %polly.loop_header573.2

polly.loop_exit575.2:                             ; preds = %polly.loop_header573.2
  %polly.indvar_next571.2 = add nuw nsw i64 %polly.indvar570.2, 1
  %exitcond855.2.not = icmp eq i64 %polly.indvar_next571.2, 16
  br i1 %exitcond855.2.not, label %polly.loop_exit569.2, label %polly.loop_header567.2

polly.loop_exit569.2:                             ; preds = %polly.loop_exit575.2
  %polly.indvar_next549.2 = add nuw nsw i64 %polly.indvar548.2, 1
  %indvars.iv.next851.2 = add nuw nsw i64 %indvars.iv850.2, 1
  %exitcond856.2.not = icmp eq i64 %polly.indvar_next549.2, %154
  br i1 %exitcond856.2.not, label %polly.loop_header545.3, label %polly.loop_header545.2

polly.loop_header545.3:                           ; preds = %polly.loop_exit569.2, %polly.loop_exit569.3
  %indvars.iv850.3 = phi i64 [ %indvars.iv.next851.3, %polly.loop_exit569.3 ], [ %153, %polly.loop_exit569.2 ]
  %polly.indvar548.3 = phi i64 [ %polly.indvar_next549.3, %polly.loop_exit569.3 ], [ 0, %polly.loop_exit569.2 ]
  br label %polly.loop_header551.3

polly.loop_header551.3:                           ; preds = %polly.loop_header551.3, %polly.loop_header545.3
  %polly.indvar554.3 = phi i64 [ 0, %polly.loop_header545.3 ], [ %polly.indvar_next555.3, %polly.loop_header551.3 ]
  %306 = shl nuw nsw i64 %polly.indvar554.3, 7
  %scevgep847.3 = getelementptr i8, i8* %malloccall433, i64 %306
  %307 = mul nuw nsw i64 %polly.indvar554.3, 480
  %308 = add nuw nsw i64 %307, 384
  %scevgep848.3 = getelementptr i8, i8* %call1, i64 %308
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %scevgep847.3, i8* noundef nonnull align 8 dereferenceable(96) %scevgep848.3, i64 96, i1 false)
  %polly.indvar_next555.3 = add nuw nsw i64 %polly.indvar554.3, 1
  %exitcond852.3.not = icmp eq i64 %polly.indvar_next555.3, %indvars.iv850.3
  br i1 %exitcond852.3.not, label %polly.loop_header567.preheader.3, label %polly.loop_header551.3

polly.loop_header567.preheader.3:                 ; preds = %polly.loop_header551.3
  %309 = add nuw nsw i64 %polly.indvar548.3, %152
  %310 = mul nuw nsw i64 %309, 480
  %polly.access.mul.Packed_MemRef_call1434589.3 = shl nsw i64 %309, 4
  %311 = mul nuw nsw i64 %309, 640
  br label %polly.loop_header567.3

polly.loop_header567.3:                           ; preds = %polly.loop_exit575.3, %polly.loop_header567.preheader.3
  %polly.indvar570.3 = phi i64 [ %polly.indvar_next571.3, %polly.loop_exit575.3 ], [ 0, %polly.loop_header567.preheader.3 ]
  %312 = shl i64 %polly.indvar570.3, 3
  %313 = add i64 %312, 384
  %314 = add nuw nsw i64 %313, %310
  %scevgep583.3 = getelementptr i8, i8* %call2, i64 %314
  %scevgep583584.3 = bitcast i8* %scevgep583.3 to double*
  %_p_scalar_585.3 = load double, double* %scevgep583584.3, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1434590.3 = add nuw nsw i64 %polly.indvar570.3, %polly.access.mul.Packed_MemRef_call1434589.3
  %polly.access.Packed_MemRef_call1434591.3 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434590.3
  %_p_scalar_592.3 = load double, double* %polly.access.Packed_MemRef_call1434591.3, align 8
  br label %polly.loop_header573.3

polly.loop_header573.3:                           ; preds = %polly.loop_header573.3, %polly.loop_header567.3
  %polly.indvar576.3 = phi i64 [ 0, %polly.loop_header567.3 ], [ %polly.indvar_next577.3, %polly.loop_header573.3 ]
  %polly.access.mul.Packed_MemRef_call1434579.3 = shl nsw i64 %polly.indvar576.3, 4
  %polly.access.add.Packed_MemRef_call1434580.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434579.3, %polly.indvar570.3
  %polly.access.Packed_MemRef_call1434581.3 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434580.3
  %_p_scalar_582.3 = load double, double* %polly.access.Packed_MemRef_call1434581.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_585.3, %_p_scalar_582.3
  %315 = mul nuw nsw i64 %polly.indvar576.3, 480
  %316 = add nuw nsw i64 %315, %313
  %scevgep586.3 = getelementptr i8, i8* %call2, i64 %316
  %scevgep586587.3 = bitcast i8* %scevgep586.3 to double*
  %_p_scalar_588.3 = load double, double* %scevgep586587.3, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i.3 = fmul fast double %_p_scalar_592.3, %_p_scalar_588.3
  %317 = shl nuw nsw i64 %polly.indvar576.3, 3
  %318 = add nuw nsw i64 %317, %311
  %scevgep593.3 = getelementptr i8, i8* %call, i64 %318
  %scevgep593594.3 = bitcast i8* %scevgep593.3 to double*
  %_p_scalar_595.3 = load double, double* %scevgep593594.3, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_595.3
  store double %p_add42.i.3, double* %scevgep593594.3, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577.3 = add nuw nsw i64 %polly.indvar576.3, 1
  %exitcond853.3.not = icmp eq i64 %polly.indvar_next577.3, %indvars.iv850.3
  br i1 %exitcond853.3.not, label %polly.loop_exit575.3, label %polly.loop_header573.3

polly.loop_exit575.3:                             ; preds = %polly.loop_header573.3
  %polly.indvar_next571.3 = add nuw nsw i64 %polly.indvar570.3, 1
  %exitcond855.3.not = icmp eq i64 %polly.indvar_next571.3, 12
  br i1 %exitcond855.3.not, label %polly.loop_exit569.3, label %polly.loop_header567.3

polly.loop_exit569.3:                             ; preds = %polly.loop_exit575.3
  %polly.indvar_next549.3 = add nuw nsw i64 %polly.indvar548.3, 1
  %indvars.iv.next851.3 = add nuw nsw i64 %indvars.iv850.3, 1
  %exitcond856.3.not = icmp eq i64 %polly.indvar_next549.3, %154
  br i1 %exitcond856.3.not, label %polly.loop_exit547.3, label %polly.loop_header545.3

polly.loop_exit547.3:                             ; preds = %polly.loop_exit569.3
  br i1 %polly.loop_cond538, label %polly.loop_header533, label %polly.exiting432

polly.loop_header787.1:                           ; preds = %polly.loop_exit795, %polly.loop_exit795.1
  %polly.indvar790.1 = phi i64 [ %polly.indvar_next791.1, %polly.loop_exit795.1 ], [ 0, %polly.loop_exit795 ]
  %319 = mul nuw nsw i64 %polly.indvar790.1, 480
  %320 = trunc i64 %polly.indvar790.1 to i32
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %polly.loop_header787.1
  %index1167 = phi i64 [ 0, %polly.loop_header787.1 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1171 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1 ], [ %vec.ind.next1172, %vector.body1165 ]
  %321 = add nuw nsw <4 x i64> %vec.ind1171, <i64 32, i64 32, i64 32, i64 32>
  %322 = trunc <4 x i64> %321 to <4 x i32>
  %323 = mul <4 x i32> %broadcast.splat1174, %322
  %324 = add <4 x i32> %323, <i32 1, i32 1, i32 1, i32 1>
  %325 = urem <4 x i32> %324, <i32 80, i32 80, i32 80, i32 80>
  %326 = sitofp <4 x i32> %325 to <4 x double>
  %327 = fmul fast <4 x double> %326, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %328 = extractelement <4 x i64> %321, i32 0
  %329 = shl i64 %328, 3
  %330 = add i64 %329, %319
  %331 = getelementptr i8, i8* %call1, i64 %330
  %332 = bitcast i8* %331 to <4 x double>*
  store <4 x double> %327, <4 x double>* %332, align 8, !alias.scope !94, !noalias !99
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1172 = add <4 x i64> %vec.ind1171, <i64 4, i64 4, i64 4, i64 4>
  %333 = icmp eq i64 %index.next1168, 28
  br i1 %333, label %polly.loop_exit795.1, label %vector.body1165, !llvm.loop !101

polly.loop_exit795.1:                             ; preds = %vector.body1165
  %polly.indvar_next791.1 = add nuw nsw i64 %polly.indvar790.1, 1
  %exitcond864.1.not = icmp eq i64 %polly.indvar_next791.1, 32
  br i1 %exitcond864.1.not, label %polly.loop_header787.1884, label %polly.loop_header787.1

polly.loop_header787.1884:                        ; preds = %polly.loop_exit795.1, %polly.loop_exit795.1895
  %polly.indvar790.1883 = phi i64 [ %polly.indvar_next791.1893, %polly.loop_exit795.1895 ], [ 0, %polly.loop_exit795.1 ]
  %334 = add nuw nsw i64 %polly.indvar790.1883, 32
  %335 = mul nuw nsw i64 %334, 480
  %336 = trunc i64 %334 to i32
  %broadcast.splatinsert1187 = insertelement <4 x i32> poison, i32 %336, i32 0
  %broadcast.splat1188 = shufflevector <4 x i32> %broadcast.splatinsert1187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %polly.loop_header787.1884
  %index1179 = phi i64 [ 0, %polly.loop_header787.1884 ], [ %index.next1180, %vector.body1177 ]
  %vec.ind1185 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.1884 ], [ %vec.ind.next1186, %vector.body1177 ]
  %337 = mul <4 x i32> %vec.ind1185, %broadcast.splat1188
  %338 = add <4 x i32> %337, <i32 1, i32 1, i32 1, i32 1>
  %339 = urem <4 x i32> %338, <i32 80, i32 80, i32 80, i32 80>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %342 = shl i64 %index1179, 3
  %343 = add i64 %342, %335
  %344 = getelementptr i8, i8* %call1, i64 %343
  %345 = bitcast i8* %344 to <4 x double>*
  store <4 x double> %341, <4 x double>* %345, align 8, !alias.scope !94, !noalias !99
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1186 = add <4 x i32> %vec.ind1185, <i32 4, i32 4, i32 4, i32 4>
  %346 = icmp eq i64 %index.next1180, 32
  br i1 %346, label %polly.loop_exit795.1895, label %vector.body1177, !llvm.loop !102

polly.loop_exit795.1895:                          ; preds = %vector.body1177
  %polly.indvar_next791.1893 = add nuw nsw i64 %polly.indvar790.1883, 1
  %exitcond864.1894.not = icmp eq i64 %polly.indvar_next791.1893, 32
  br i1 %exitcond864.1894.not, label %polly.loop_header787.1.1, label %polly.loop_header787.1884

polly.loop_header787.1.1:                         ; preds = %polly.loop_exit795.1895, %polly.loop_exit795.1.1
  %polly.indvar790.1.1 = phi i64 [ %polly.indvar_next791.1.1, %polly.loop_exit795.1.1 ], [ 0, %polly.loop_exit795.1895 ]
  %347 = add nuw nsw i64 %polly.indvar790.1.1, 32
  %348 = mul nuw nsw i64 %347, 480
  %349 = trunc i64 %347 to i32
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %polly.loop_header787.1.1
  %index1193 = phi i64 [ 0, %polly.loop_header787.1.1 ], [ %index.next1194, %vector.body1191 ]
  %vec.ind1197 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.1 ], [ %vec.ind.next1198, %vector.body1191 ]
  %350 = add nuw nsw <4 x i64> %vec.ind1197, <i64 32, i64 32, i64 32, i64 32>
  %351 = trunc <4 x i64> %350 to <4 x i32>
  %352 = mul <4 x i32> %broadcast.splat1200, %351
  %353 = add <4 x i32> %352, <i32 1, i32 1, i32 1, i32 1>
  %354 = urem <4 x i32> %353, <i32 80, i32 80, i32 80, i32 80>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %357 = extractelement <4 x i64> %350, i32 0
  %358 = shl i64 %357, 3
  %359 = add i64 %358, %348
  %360 = getelementptr i8, i8* %call1, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %356, <4 x double>* %361, align 8, !alias.scope !94, !noalias !99
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1198 = add <4 x i64> %vec.ind1197, <i64 4, i64 4, i64 4, i64 4>
  %362 = icmp eq i64 %index.next1194, 28
  br i1 %362, label %polly.loop_exit795.1.1, label %vector.body1191, !llvm.loop !103

polly.loop_exit795.1.1:                           ; preds = %vector.body1191
  %polly.indvar_next791.1.1 = add nuw nsw i64 %polly.indvar790.1.1, 1
  %exitcond864.1.1.not = icmp eq i64 %polly.indvar_next791.1.1, 32
  br i1 %exitcond864.1.1.not, label %polly.loop_header787.2, label %polly.loop_header787.1.1

polly.loop_header787.2:                           ; preds = %polly.loop_exit795.1.1, %polly.loop_exit795.2
  %polly.indvar790.2 = phi i64 [ %polly.indvar_next791.2, %polly.loop_exit795.2 ], [ 0, %polly.loop_exit795.1.1 ]
  %363 = add nuw nsw i64 %polly.indvar790.2, 64
  %364 = mul nuw nsw i64 %363, 480
  %365 = trunc i64 %363 to i32
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %365, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %polly.loop_header787.2
  %index1205 = phi i64 [ 0, %polly.loop_header787.2 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1211 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.2 ], [ %vec.ind.next1212, %vector.body1203 ]
  %366 = mul <4 x i32> %vec.ind1211, %broadcast.splat1214
  %367 = add <4 x i32> %366, <i32 1, i32 1, i32 1, i32 1>
  %368 = urem <4 x i32> %367, <i32 80, i32 80, i32 80, i32 80>
  %369 = sitofp <4 x i32> %368 to <4 x double>
  %370 = fmul fast <4 x double> %369, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %371 = shl i64 %index1205, 3
  %372 = add i64 %371, %364
  %373 = getelementptr i8, i8* %call1, i64 %372
  %374 = bitcast i8* %373 to <4 x double>*
  store <4 x double> %370, <4 x double>* %374, align 8, !alias.scope !94, !noalias !99
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1212 = add <4 x i32> %vec.ind1211, <i32 4, i32 4, i32 4, i32 4>
  %375 = icmp eq i64 %index.next1206, 32
  br i1 %375, label %polly.loop_exit795.2, label %vector.body1203, !llvm.loop !104

polly.loop_exit795.2:                             ; preds = %vector.body1203
  %polly.indvar_next791.2 = add nuw nsw i64 %polly.indvar790.2, 1
  %exitcond864.2.not = icmp eq i64 %polly.indvar_next791.2, 16
  br i1 %exitcond864.2.not, label %polly.loop_header787.1.2, label %polly.loop_header787.2

polly.loop_header787.1.2:                         ; preds = %polly.loop_exit795.2, %polly.loop_exit795.1.2
  %polly.indvar790.1.2 = phi i64 [ %polly.indvar_next791.1.2, %polly.loop_exit795.1.2 ], [ 0, %polly.loop_exit795.2 ]
  %376 = add nuw nsw i64 %polly.indvar790.1.2, 64
  %377 = mul nuw nsw i64 %376, 480
  %378 = trunc i64 %376 to i32
  %broadcast.splatinsert1225 = insertelement <4 x i32> poison, i32 %378, i32 0
  %broadcast.splat1226 = shufflevector <4 x i32> %broadcast.splatinsert1225, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %polly.loop_header787.1.2
  %index1219 = phi i64 [ 0, %polly.loop_header787.1.2 ], [ %index.next1220, %vector.body1217 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.2 ], [ %vec.ind.next1224, %vector.body1217 ]
  %379 = add nuw nsw <4 x i64> %vec.ind1223, <i64 32, i64 32, i64 32, i64 32>
  %380 = trunc <4 x i64> %379 to <4 x i32>
  %381 = mul <4 x i32> %broadcast.splat1226, %380
  %382 = add <4 x i32> %381, <i32 1, i32 1, i32 1, i32 1>
  %383 = urem <4 x i32> %382, <i32 80, i32 80, i32 80, i32 80>
  %384 = sitofp <4 x i32> %383 to <4 x double>
  %385 = fmul fast <4 x double> %384, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %386 = extractelement <4 x i64> %379, i32 0
  %387 = shl i64 %386, 3
  %388 = add i64 %387, %377
  %389 = getelementptr i8, i8* %call1, i64 %388
  %390 = bitcast i8* %389 to <4 x double>*
  store <4 x double> %385, <4 x double>* %390, align 8, !alias.scope !94, !noalias !99
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %391 = icmp eq i64 %index.next1220, 28
  br i1 %391, label %polly.loop_exit795.1.2, label %vector.body1217, !llvm.loop !105

polly.loop_exit795.1.2:                           ; preds = %vector.body1217
  %polly.indvar_next791.1.2 = add nuw nsw i64 %polly.indvar790.1.2, 1
  %exitcond864.1.2.not = icmp eq i64 %polly.indvar_next791.1.2, 16
  br i1 %exitcond864.1.2.not, label %init_array.exit, label %polly.loop_header787.1.2

polly.loop_header761.1:                           ; preds = %polly.loop_exit769, %polly.loop_exit769.1
  %polly.indvar764.1 = phi i64 [ %polly.indvar_next765.1, %polly.loop_exit769.1 ], [ 0, %polly.loop_exit769 ]
  %392 = mul nuw nsw i64 %polly.indvar764.1, 480
  %393 = trunc i64 %polly.indvar764.1 to i32
  %broadcast.splatinsert1095 = insertelement <4 x i32> poison, i32 %393, i32 0
  %broadcast.splat1096 = shufflevector <4 x i32> %broadcast.splatinsert1095, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.body1087, %polly.loop_header761.1
  %index1089 = phi i64 [ 0, %polly.loop_header761.1 ], [ %index.next1090, %vector.body1087 ]
  %vec.ind1093 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1 ], [ %vec.ind.next1094, %vector.body1087 ]
  %394 = add nuw nsw <4 x i64> %vec.ind1093, <i64 32, i64 32, i64 32, i64 32>
  %395 = trunc <4 x i64> %394 to <4 x i32>
  %396 = mul <4 x i32> %broadcast.splat1096, %395
  %397 = add <4 x i32> %396, <i32 2, i32 2, i32 2, i32 2>
  %398 = urem <4 x i32> %397, <i32 60, i32 60, i32 60, i32 60>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %401 = extractelement <4 x i64> %394, i32 0
  %402 = shl i64 %401, 3
  %403 = add i64 %402, %392
  %404 = getelementptr i8, i8* %call2, i64 %403
  %405 = bitcast i8* %404 to <4 x double>*
  store <4 x double> %400, <4 x double>* %405, align 8, !alias.scope !95, !noalias !97
  %index.next1090 = add i64 %index1089, 4
  %vec.ind.next1094 = add <4 x i64> %vec.ind1093, <i64 4, i64 4, i64 4, i64 4>
  %406 = icmp eq i64 %index.next1090, 28
  br i1 %406, label %polly.loop_exit769.1, label %vector.body1087, !llvm.loop !106

polly.loop_exit769.1:                             ; preds = %vector.body1087
  %polly.indvar_next765.1 = add nuw nsw i64 %polly.indvar764.1, 1
  %exitcond870.1.not = icmp eq i64 %polly.indvar_next765.1, 32
  br i1 %exitcond870.1.not, label %polly.loop_header761.1898, label %polly.loop_header761.1

polly.loop_header761.1898:                        ; preds = %polly.loop_exit769.1, %polly.loop_exit769.1909
  %polly.indvar764.1897 = phi i64 [ %polly.indvar_next765.1907, %polly.loop_exit769.1909 ], [ 0, %polly.loop_exit769.1 ]
  %407 = add nuw nsw i64 %polly.indvar764.1897, 32
  %408 = mul nuw nsw i64 %407, 480
  %409 = trunc i64 %407 to i32
  %broadcast.splatinsert1109 = insertelement <4 x i32> poison, i32 %409, i32 0
  %broadcast.splat1110 = shufflevector <4 x i32> %broadcast.splatinsert1109, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %polly.loop_header761.1898
  %index1101 = phi i64 [ 0, %polly.loop_header761.1898 ], [ %index.next1102, %vector.body1099 ]
  %vec.ind1107 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.1898 ], [ %vec.ind.next1108, %vector.body1099 ]
  %410 = mul <4 x i32> %vec.ind1107, %broadcast.splat1110
  %411 = add <4 x i32> %410, <i32 2, i32 2, i32 2, i32 2>
  %412 = urem <4 x i32> %411, <i32 60, i32 60, i32 60, i32 60>
  %413 = sitofp <4 x i32> %412 to <4 x double>
  %414 = fmul fast <4 x double> %413, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %415 = shl i64 %index1101, 3
  %416 = add i64 %415, %408
  %417 = getelementptr i8, i8* %call2, i64 %416
  %418 = bitcast i8* %417 to <4 x double>*
  store <4 x double> %414, <4 x double>* %418, align 8, !alias.scope !95, !noalias !97
  %index.next1102 = add i64 %index1101, 4
  %vec.ind.next1108 = add <4 x i32> %vec.ind1107, <i32 4, i32 4, i32 4, i32 4>
  %419 = icmp eq i64 %index.next1102, 32
  br i1 %419, label %polly.loop_exit769.1909, label %vector.body1099, !llvm.loop !107

polly.loop_exit769.1909:                          ; preds = %vector.body1099
  %polly.indvar_next765.1907 = add nuw nsw i64 %polly.indvar764.1897, 1
  %exitcond870.1908.not = icmp eq i64 %polly.indvar_next765.1907, 32
  br i1 %exitcond870.1908.not, label %polly.loop_header761.1.1, label %polly.loop_header761.1898

polly.loop_header761.1.1:                         ; preds = %polly.loop_exit769.1909, %polly.loop_exit769.1.1
  %polly.indvar764.1.1 = phi i64 [ %polly.indvar_next765.1.1, %polly.loop_exit769.1.1 ], [ 0, %polly.loop_exit769.1909 ]
  %420 = add nuw nsw i64 %polly.indvar764.1.1, 32
  %421 = mul nuw nsw i64 %420, 480
  %422 = trunc i64 %420 to i32
  %broadcast.splatinsert1121 = insertelement <4 x i32> poison, i32 %422, i32 0
  %broadcast.splat1122 = shufflevector <4 x i32> %broadcast.splatinsert1121, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %polly.loop_header761.1.1
  %index1115 = phi i64 [ 0, %polly.loop_header761.1.1 ], [ %index.next1116, %vector.body1113 ]
  %vec.ind1119 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.1 ], [ %vec.ind.next1120, %vector.body1113 ]
  %423 = add nuw nsw <4 x i64> %vec.ind1119, <i64 32, i64 32, i64 32, i64 32>
  %424 = trunc <4 x i64> %423 to <4 x i32>
  %425 = mul <4 x i32> %broadcast.splat1122, %424
  %426 = add <4 x i32> %425, <i32 2, i32 2, i32 2, i32 2>
  %427 = urem <4 x i32> %426, <i32 60, i32 60, i32 60, i32 60>
  %428 = sitofp <4 x i32> %427 to <4 x double>
  %429 = fmul fast <4 x double> %428, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %430 = extractelement <4 x i64> %423, i32 0
  %431 = shl i64 %430, 3
  %432 = add i64 %431, %421
  %433 = getelementptr i8, i8* %call2, i64 %432
  %434 = bitcast i8* %433 to <4 x double>*
  store <4 x double> %429, <4 x double>* %434, align 8, !alias.scope !95, !noalias !97
  %index.next1116 = add i64 %index1115, 4
  %vec.ind.next1120 = add <4 x i64> %vec.ind1119, <i64 4, i64 4, i64 4, i64 4>
  %435 = icmp eq i64 %index.next1116, 28
  br i1 %435, label %polly.loop_exit769.1.1, label %vector.body1113, !llvm.loop !108

polly.loop_exit769.1.1:                           ; preds = %vector.body1113
  %polly.indvar_next765.1.1 = add nuw nsw i64 %polly.indvar764.1.1, 1
  %exitcond870.1.1.not = icmp eq i64 %polly.indvar_next765.1.1, 32
  br i1 %exitcond870.1.1.not, label %polly.loop_header761.2, label %polly.loop_header761.1.1

polly.loop_header761.2:                           ; preds = %polly.loop_exit769.1.1, %polly.loop_exit769.2
  %polly.indvar764.2 = phi i64 [ %polly.indvar_next765.2, %polly.loop_exit769.2 ], [ 0, %polly.loop_exit769.1.1 ]
  %436 = add nuw nsw i64 %polly.indvar764.2, 64
  %437 = mul nuw nsw i64 %436, 480
  %438 = trunc i64 %436 to i32
  %broadcast.splatinsert1135 = insertelement <4 x i32> poison, i32 %438, i32 0
  %broadcast.splat1136 = shufflevector <4 x i32> %broadcast.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %polly.loop_header761.2
  %index1127 = phi i64 [ 0, %polly.loop_header761.2 ], [ %index.next1128, %vector.body1125 ]
  %vec.ind1133 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.2 ], [ %vec.ind.next1134, %vector.body1125 ]
  %439 = mul <4 x i32> %vec.ind1133, %broadcast.splat1136
  %440 = add <4 x i32> %439, <i32 2, i32 2, i32 2, i32 2>
  %441 = urem <4 x i32> %440, <i32 60, i32 60, i32 60, i32 60>
  %442 = sitofp <4 x i32> %441 to <4 x double>
  %443 = fmul fast <4 x double> %442, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %444 = shl i64 %index1127, 3
  %445 = add i64 %444, %437
  %446 = getelementptr i8, i8* %call2, i64 %445
  %447 = bitcast i8* %446 to <4 x double>*
  store <4 x double> %443, <4 x double>* %447, align 8, !alias.scope !95, !noalias !97
  %index.next1128 = add i64 %index1127, 4
  %vec.ind.next1134 = add <4 x i32> %vec.ind1133, <i32 4, i32 4, i32 4, i32 4>
  %448 = icmp eq i64 %index.next1128, 32
  br i1 %448, label %polly.loop_exit769.2, label %vector.body1125, !llvm.loop !109

polly.loop_exit769.2:                             ; preds = %vector.body1125
  %polly.indvar_next765.2 = add nuw nsw i64 %polly.indvar764.2, 1
  %exitcond870.2.not = icmp eq i64 %polly.indvar_next765.2, 16
  br i1 %exitcond870.2.not, label %polly.loop_header761.1.2, label %polly.loop_header761.2

polly.loop_header761.1.2:                         ; preds = %polly.loop_exit769.2, %polly.loop_exit769.1.2
  %polly.indvar764.1.2 = phi i64 [ %polly.indvar_next765.1.2, %polly.loop_exit769.1.2 ], [ 0, %polly.loop_exit769.2 ]
  %449 = add nuw nsw i64 %polly.indvar764.1.2, 64
  %450 = mul nuw nsw i64 %449, 480
  %451 = trunc i64 %449 to i32
  %broadcast.splatinsert1147 = insertelement <4 x i32> poison, i32 %451, i32 0
  %broadcast.splat1148 = shufflevector <4 x i32> %broadcast.splatinsert1147, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %polly.loop_header761.1.2
  %index1141 = phi i64 [ 0, %polly.loop_header761.1.2 ], [ %index.next1142, %vector.body1139 ]
  %vec.ind1145 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.2 ], [ %vec.ind.next1146, %vector.body1139 ]
  %452 = add nuw nsw <4 x i64> %vec.ind1145, <i64 32, i64 32, i64 32, i64 32>
  %453 = trunc <4 x i64> %452 to <4 x i32>
  %454 = mul <4 x i32> %broadcast.splat1148, %453
  %455 = add <4 x i32> %454, <i32 2, i32 2, i32 2, i32 2>
  %456 = urem <4 x i32> %455, <i32 60, i32 60, i32 60, i32 60>
  %457 = sitofp <4 x i32> %456 to <4 x double>
  %458 = fmul fast <4 x double> %457, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %459 = extractelement <4 x i64> %452, i32 0
  %460 = shl i64 %459, 3
  %461 = add i64 %460, %450
  %462 = getelementptr i8, i8* %call2, i64 %461
  %463 = bitcast i8* %462 to <4 x double>*
  store <4 x double> %458, <4 x double>* %463, align 8, !alias.scope !95, !noalias !97
  %index.next1142 = add i64 %index1141, 4
  %vec.ind.next1146 = add <4 x i64> %vec.ind1145, <i64 4, i64 4, i64 4, i64 4>
  %464 = icmp eq i64 %index.next1142, 28
  br i1 %464, label %polly.loop_exit769.1.2, label %vector.body1139, !llvm.loop !110

polly.loop_exit769.1.2:                           ; preds = %vector.body1139
  %polly.indvar_next765.1.2 = add nuw nsw i64 %polly.indvar764.1.2, 1
  %exitcond870.1.2.not = icmp eq i64 %polly.indvar_next765.1.2, 16
  br i1 %exitcond870.1.2.not, label %polly.loop_header787, label %polly.loop_header761.1.2

polly.loop_header734.1:                           ; preds = %polly.loop_exit742, %polly.loop_exit742.1
  %polly.indvar737.1 = phi i64 [ %polly.indvar_next738.1, %polly.loop_exit742.1 ], [ 0, %polly.loop_exit742 ]
  %465 = mul nuw nsw i64 %polly.indvar737.1, 640
  %466 = trunc i64 %polly.indvar737.1 to i32
  %broadcast.splatinsert981 = insertelement <4 x i32> poison, i32 %466, i32 0
  %broadcast.splat982 = shufflevector <4 x i32> %broadcast.splatinsert981, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %polly.loop_header734.1
  %index975 = phi i64 [ 0, %polly.loop_header734.1 ], [ %index.next976, %vector.body973 ]
  %vec.ind979 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1 ], [ %vec.ind.next980, %vector.body973 ]
  %467 = add nuw nsw <4 x i64> %vec.ind979, <i64 32, i64 32, i64 32, i64 32>
  %468 = trunc <4 x i64> %467 to <4 x i32>
  %469 = mul <4 x i32> %broadcast.splat982, %468
  %470 = add <4 x i32> %469, <i32 3, i32 3, i32 3, i32 3>
  %471 = urem <4 x i32> %470, <i32 80, i32 80, i32 80, i32 80>
  %472 = sitofp <4 x i32> %471 to <4 x double>
  %473 = fmul fast <4 x double> %472, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %474 = extractelement <4 x i64> %467, i32 0
  %475 = shl i64 %474, 3
  %476 = add nuw nsw i64 %475, %465
  %477 = getelementptr i8, i8* %call, i64 %476
  %478 = bitcast i8* %477 to <4 x double>*
  store <4 x double> %473, <4 x double>* %478, align 8, !alias.scope !91, !noalias !93
  %index.next976 = add i64 %index975, 4
  %vec.ind.next980 = add <4 x i64> %vec.ind979, <i64 4, i64 4, i64 4, i64 4>
  %479 = icmp eq i64 %index.next976, 32
  br i1 %479, label %polly.loop_exit742.1, label %vector.body973, !llvm.loop !111

polly.loop_exit742.1:                             ; preds = %vector.body973
  %polly.indvar_next738.1 = add nuw nsw i64 %polly.indvar737.1, 1
  %exitcond879.1.not = icmp eq i64 %polly.indvar_next738.1, 32
  br i1 %exitcond879.1.not, label %polly.loop_header734.2, label %polly.loop_header734.1

polly.loop_header734.2:                           ; preds = %polly.loop_exit742.1, %polly.loop_exit742.2
  %polly.indvar737.2 = phi i64 [ %polly.indvar_next738.2, %polly.loop_exit742.2 ], [ 0, %polly.loop_exit742.1 ]
  %480 = mul nuw nsw i64 %polly.indvar737.2, 640
  %481 = trunc i64 %polly.indvar737.2 to i32
  %broadcast.splatinsert993 = insertelement <4 x i32> poison, i32 %481, i32 0
  %broadcast.splat994 = shufflevector <4 x i32> %broadcast.splatinsert993, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body985

vector.body985:                                   ; preds = %vector.body985, %polly.loop_header734.2
  %index987 = phi i64 [ 0, %polly.loop_header734.2 ], [ %index.next988, %vector.body985 ]
  %vec.ind991 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2 ], [ %vec.ind.next992, %vector.body985 ]
  %482 = add nuw nsw <4 x i64> %vec.ind991, <i64 64, i64 64, i64 64, i64 64>
  %483 = trunc <4 x i64> %482 to <4 x i32>
  %484 = mul <4 x i32> %broadcast.splat994, %483
  %485 = add <4 x i32> %484, <i32 3, i32 3, i32 3, i32 3>
  %486 = urem <4 x i32> %485, <i32 80, i32 80, i32 80, i32 80>
  %487 = sitofp <4 x i32> %486 to <4 x double>
  %488 = fmul fast <4 x double> %487, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %489 = extractelement <4 x i64> %482, i32 0
  %490 = shl i64 %489, 3
  %491 = add nuw nsw i64 %490, %480
  %492 = getelementptr i8, i8* %call, i64 %491
  %493 = bitcast i8* %492 to <4 x double>*
  store <4 x double> %488, <4 x double>* %493, align 8, !alias.scope !91, !noalias !93
  %index.next988 = add i64 %index987, 4
  %vec.ind.next992 = add <4 x i64> %vec.ind991, <i64 4, i64 4, i64 4, i64 4>
  %494 = icmp eq i64 %index.next988, 16
  br i1 %494, label %polly.loop_exit742.2, label %vector.body985, !llvm.loop !112

polly.loop_exit742.2:                             ; preds = %vector.body985
  %polly.indvar_next738.2 = add nuw nsw i64 %polly.indvar737.2, 1
  %exitcond879.2.not = icmp eq i64 %polly.indvar_next738.2, 32
  br i1 %exitcond879.2.not, label %polly.loop_header734.1912, label %polly.loop_header734.2

polly.loop_header734.1912:                        ; preds = %polly.loop_exit742.2, %polly.loop_exit742.1923
  %polly.indvar737.1911 = phi i64 [ %polly.indvar_next738.1921, %polly.loop_exit742.1923 ], [ 0, %polly.loop_exit742.2 ]
  %495 = add nuw nsw i64 %polly.indvar737.1911, 32
  %496 = mul nuw nsw i64 %495, 640
  %497 = trunc i64 %495 to i32
  %broadcast.splatinsert1007 = insertelement <4 x i32> poison, i32 %497, i32 0
  %broadcast.splat1008 = shufflevector <4 x i32> %broadcast.splatinsert1007, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %polly.loop_header734.1912
  %index999 = phi i64 [ 0, %polly.loop_header734.1912 ], [ %index.next1000, %vector.body997 ]
  %vec.ind1005 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.1912 ], [ %vec.ind.next1006, %vector.body997 ]
  %498 = mul <4 x i32> %vec.ind1005, %broadcast.splat1008
  %499 = add <4 x i32> %498, <i32 3, i32 3, i32 3, i32 3>
  %500 = urem <4 x i32> %499, <i32 80, i32 80, i32 80, i32 80>
  %501 = sitofp <4 x i32> %500 to <4 x double>
  %502 = fmul fast <4 x double> %501, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %503 = shl i64 %index999, 3
  %504 = add nuw nsw i64 %503, %496
  %505 = getelementptr i8, i8* %call, i64 %504
  %506 = bitcast i8* %505 to <4 x double>*
  store <4 x double> %502, <4 x double>* %506, align 8, !alias.scope !91, !noalias !93
  %index.next1000 = add i64 %index999, 4
  %vec.ind.next1006 = add <4 x i32> %vec.ind1005, <i32 4, i32 4, i32 4, i32 4>
  %507 = icmp eq i64 %index.next1000, 32
  br i1 %507, label %polly.loop_exit742.1923, label %vector.body997, !llvm.loop !113

polly.loop_exit742.1923:                          ; preds = %vector.body997
  %polly.indvar_next738.1921 = add nuw nsw i64 %polly.indvar737.1911, 1
  %exitcond879.1922.not = icmp eq i64 %polly.indvar_next738.1921, 32
  br i1 %exitcond879.1922.not, label %polly.loop_header734.1.1, label %polly.loop_header734.1912

polly.loop_header734.1.1:                         ; preds = %polly.loop_exit742.1923, %polly.loop_exit742.1.1
  %polly.indvar737.1.1 = phi i64 [ %polly.indvar_next738.1.1, %polly.loop_exit742.1.1 ], [ 0, %polly.loop_exit742.1923 ]
  %508 = add nuw nsw i64 %polly.indvar737.1.1, 32
  %509 = mul nuw nsw i64 %508, 640
  %510 = trunc i64 %508 to i32
  %broadcast.splatinsert1019 = insertelement <4 x i32> poison, i32 %510, i32 0
  %broadcast.splat1020 = shufflevector <4 x i32> %broadcast.splatinsert1019, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %polly.loop_header734.1.1
  %index1013 = phi i64 [ 0, %polly.loop_header734.1.1 ], [ %index.next1014, %vector.body1011 ]
  %vec.ind1017 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.1 ], [ %vec.ind.next1018, %vector.body1011 ]
  %511 = add nuw nsw <4 x i64> %vec.ind1017, <i64 32, i64 32, i64 32, i64 32>
  %512 = trunc <4 x i64> %511 to <4 x i32>
  %513 = mul <4 x i32> %broadcast.splat1020, %512
  %514 = add <4 x i32> %513, <i32 3, i32 3, i32 3, i32 3>
  %515 = urem <4 x i32> %514, <i32 80, i32 80, i32 80, i32 80>
  %516 = sitofp <4 x i32> %515 to <4 x double>
  %517 = fmul fast <4 x double> %516, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %518 = extractelement <4 x i64> %511, i32 0
  %519 = shl i64 %518, 3
  %520 = add nuw nsw i64 %519, %509
  %521 = getelementptr i8, i8* %call, i64 %520
  %522 = bitcast i8* %521 to <4 x double>*
  store <4 x double> %517, <4 x double>* %522, align 8, !alias.scope !91, !noalias !93
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1018 = add <4 x i64> %vec.ind1017, <i64 4, i64 4, i64 4, i64 4>
  %523 = icmp eq i64 %index.next1014, 32
  br i1 %523, label %polly.loop_exit742.1.1, label %vector.body1011, !llvm.loop !114

polly.loop_exit742.1.1:                           ; preds = %vector.body1011
  %polly.indvar_next738.1.1 = add nuw nsw i64 %polly.indvar737.1.1, 1
  %exitcond879.1.1.not = icmp eq i64 %polly.indvar_next738.1.1, 32
  br i1 %exitcond879.1.1.not, label %polly.loop_header734.2.1, label %polly.loop_header734.1.1

polly.loop_header734.2.1:                         ; preds = %polly.loop_exit742.1.1, %polly.loop_exit742.2.1
  %polly.indvar737.2.1 = phi i64 [ %polly.indvar_next738.2.1, %polly.loop_exit742.2.1 ], [ 0, %polly.loop_exit742.1.1 ]
  %524 = add nuw nsw i64 %polly.indvar737.2.1, 32
  %525 = mul nuw nsw i64 %524, 640
  %526 = trunc i64 %524 to i32
  %broadcast.splatinsert1031 = insertelement <4 x i32> poison, i32 %526, i32 0
  %broadcast.splat1032 = shufflevector <4 x i32> %broadcast.splatinsert1031, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.body1023, %polly.loop_header734.2.1
  %index1025 = phi i64 [ 0, %polly.loop_header734.2.1 ], [ %index.next1026, %vector.body1023 ]
  %vec.ind1029 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.1 ], [ %vec.ind.next1030, %vector.body1023 ]
  %527 = add nuw nsw <4 x i64> %vec.ind1029, <i64 64, i64 64, i64 64, i64 64>
  %528 = trunc <4 x i64> %527 to <4 x i32>
  %529 = mul <4 x i32> %broadcast.splat1032, %528
  %530 = add <4 x i32> %529, <i32 3, i32 3, i32 3, i32 3>
  %531 = urem <4 x i32> %530, <i32 80, i32 80, i32 80, i32 80>
  %532 = sitofp <4 x i32> %531 to <4 x double>
  %533 = fmul fast <4 x double> %532, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %534 = extractelement <4 x i64> %527, i32 0
  %535 = shl i64 %534, 3
  %536 = add nuw nsw i64 %535, %525
  %537 = getelementptr i8, i8* %call, i64 %536
  %538 = bitcast i8* %537 to <4 x double>*
  store <4 x double> %533, <4 x double>* %538, align 8, !alias.scope !91, !noalias !93
  %index.next1026 = add i64 %index1025, 4
  %vec.ind.next1030 = add <4 x i64> %vec.ind1029, <i64 4, i64 4, i64 4, i64 4>
  %539 = icmp eq i64 %index.next1026, 16
  br i1 %539, label %polly.loop_exit742.2.1, label %vector.body1023, !llvm.loop !115

polly.loop_exit742.2.1:                           ; preds = %vector.body1023
  %polly.indvar_next738.2.1 = add nuw nsw i64 %polly.indvar737.2.1, 1
  %exitcond879.2.1.not = icmp eq i64 %polly.indvar_next738.2.1, 32
  br i1 %exitcond879.2.1.not, label %polly.loop_header734.2926, label %polly.loop_header734.2.1

polly.loop_header734.2926:                        ; preds = %polly.loop_exit742.2.1, %polly.loop_exit742.2937
  %polly.indvar737.2925 = phi i64 [ %polly.indvar_next738.2935, %polly.loop_exit742.2937 ], [ 0, %polly.loop_exit742.2.1 ]
  %540 = add nuw nsw i64 %polly.indvar737.2925, 64
  %541 = mul nuw nsw i64 %540, 640
  %542 = trunc i64 %540 to i32
  %broadcast.splatinsert1045 = insertelement <4 x i32> poison, i32 %542, i32 0
  %broadcast.splat1046 = shufflevector <4 x i32> %broadcast.splatinsert1045, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %polly.loop_header734.2926
  %index1037 = phi i64 [ 0, %polly.loop_header734.2926 ], [ %index.next1038, %vector.body1035 ]
  %vec.ind1043 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.2926 ], [ %vec.ind.next1044, %vector.body1035 ]
  %543 = mul <4 x i32> %vec.ind1043, %broadcast.splat1046
  %544 = add <4 x i32> %543, <i32 3, i32 3, i32 3, i32 3>
  %545 = urem <4 x i32> %544, <i32 80, i32 80, i32 80, i32 80>
  %546 = sitofp <4 x i32> %545 to <4 x double>
  %547 = fmul fast <4 x double> %546, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %548 = shl i64 %index1037, 3
  %549 = add nuw nsw i64 %548, %541
  %550 = getelementptr i8, i8* %call, i64 %549
  %551 = bitcast i8* %550 to <4 x double>*
  store <4 x double> %547, <4 x double>* %551, align 8, !alias.scope !91, !noalias !93
  %index.next1038 = add i64 %index1037, 4
  %vec.ind.next1044 = add <4 x i32> %vec.ind1043, <i32 4, i32 4, i32 4, i32 4>
  %552 = icmp eq i64 %index.next1038, 32
  br i1 %552, label %polly.loop_exit742.2937, label %vector.body1035, !llvm.loop !116

polly.loop_exit742.2937:                          ; preds = %vector.body1035
  %polly.indvar_next738.2935 = add nuw nsw i64 %polly.indvar737.2925, 1
  %exitcond879.2936.not = icmp eq i64 %polly.indvar_next738.2935, 16
  br i1 %exitcond879.2936.not, label %polly.loop_header734.1.2, label %polly.loop_header734.2926

polly.loop_header734.1.2:                         ; preds = %polly.loop_exit742.2937, %polly.loop_exit742.1.2
  %polly.indvar737.1.2 = phi i64 [ %polly.indvar_next738.1.2, %polly.loop_exit742.1.2 ], [ 0, %polly.loop_exit742.2937 ]
  %553 = add nuw nsw i64 %polly.indvar737.1.2, 64
  %554 = mul nuw nsw i64 %553, 640
  %555 = trunc i64 %553 to i32
  %broadcast.splatinsert1057 = insertelement <4 x i32> poison, i32 %555, i32 0
  %broadcast.splat1058 = shufflevector <4 x i32> %broadcast.splatinsert1057, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %polly.loop_header734.1.2
  %index1051 = phi i64 [ 0, %polly.loop_header734.1.2 ], [ %index.next1052, %vector.body1049 ]
  %vec.ind1055 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.2 ], [ %vec.ind.next1056, %vector.body1049 ]
  %556 = add nuw nsw <4 x i64> %vec.ind1055, <i64 32, i64 32, i64 32, i64 32>
  %557 = trunc <4 x i64> %556 to <4 x i32>
  %558 = mul <4 x i32> %broadcast.splat1058, %557
  %559 = add <4 x i32> %558, <i32 3, i32 3, i32 3, i32 3>
  %560 = urem <4 x i32> %559, <i32 80, i32 80, i32 80, i32 80>
  %561 = sitofp <4 x i32> %560 to <4 x double>
  %562 = fmul fast <4 x double> %561, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %563 = extractelement <4 x i64> %556, i32 0
  %564 = shl i64 %563, 3
  %565 = add nuw nsw i64 %564, %554
  %566 = getelementptr i8, i8* %call, i64 %565
  %567 = bitcast i8* %566 to <4 x double>*
  store <4 x double> %562, <4 x double>* %567, align 8, !alias.scope !91, !noalias !93
  %index.next1052 = add i64 %index1051, 4
  %vec.ind.next1056 = add <4 x i64> %vec.ind1055, <i64 4, i64 4, i64 4, i64 4>
  %568 = icmp eq i64 %index.next1052, 32
  br i1 %568, label %polly.loop_exit742.1.2, label %vector.body1049, !llvm.loop !117

polly.loop_exit742.1.2:                           ; preds = %vector.body1049
  %polly.indvar_next738.1.2 = add nuw nsw i64 %polly.indvar737.1.2, 1
  %exitcond879.1.2.not = icmp eq i64 %polly.indvar_next738.1.2, 16
  br i1 %exitcond879.1.2.not, label %polly.loop_header734.2.2, label %polly.loop_header734.1.2

polly.loop_header734.2.2:                         ; preds = %polly.loop_exit742.1.2, %polly.loop_exit742.2.2
  %polly.indvar737.2.2 = phi i64 [ %polly.indvar_next738.2.2, %polly.loop_exit742.2.2 ], [ 0, %polly.loop_exit742.1.2 ]
  %569 = add nuw nsw i64 %polly.indvar737.2.2, 64
  %570 = mul nuw nsw i64 %569, 640
  %571 = trunc i64 %569 to i32
  %broadcast.splatinsert1069 = insertelement <4 x i32> poison, i32 %571, i32 0
  %broadcast.splat1070 = shufflevector <4 x i32> %broadcast.splatinsert1069, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1061

vector.body1061:                                  ; preds = %vector.body1061, %polly.loop_header734.2.2
  %index1063 = phi i64 [ 0, %polly.loop_header734.2.2 ], [ %index.next1064, %vector.body1061 ]
  %vec.ind1067 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.2 ], [ %vec.ind.next1068, %vector.body1061 ]
  %572 = add nuw nsw <4 x i64> %vec.ind1067, <i64 64, i64 64, i64 64, i64 64>
  %573 = trunc <4 x i64> %572 to <4 x i32>
  %574 = mul <4 x i32> %broadcast.splat1070, %573
  %575 = add <4 x i32> %574, <i32 3, i32 3, i32 3, i32 3>
  %576 = urem <4 x i32> %575, <i32 80, i32 80, i32 80, i32 80>
  %577 = sitofp <4 x i32> %576 to <4 x double>
  %578 = fmul fast <4 x double> %577, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %579 = extractelement <4 x i64> %572, i32 0
  %580 = shl i64 %579, 3
  %581 = add nuw nsw i64 %580, %570
  %582 = getelementptr i8, i8* %call, i64 %581
  %583 = bitcast i8* %582 to <4 x double>*
  store <4 x double> %578, <4 x double>* %583, align 8, !alias.scope !91, !noalias !93
  %index.next1064 = add i64 %index1063, 4
  %vec.ind.next1068 = add <4 x i64> %vec.ind1067, <i64 4, i64 4, i64 4, i64 4>
  %584 = icmp eq i64 %index.next1064, 16
  br i1 %584, label %polly.loop_exit742.2.2, label %vector.body1061, !llvm.loop !118

polly.loop_exit742.2.2:                           ; preds = %vector.body1061
  %polly.indvar_next738.2.2 = add nuw nsw i64 %polly.indvar737.2.2, 1
  %exitcond879.2.2.not = icmp eq i64 %polly.indvar_next738.2.2, 16
  br i1 %exitcond879.2.2.not, label %polly.loop_header761, label %polly.loop_header734.2.2
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

declare noalias i8* @malloc(i64)

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
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
!21 = distinct !{!"A"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 16}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !48, !49, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 64}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !71, !13}
!81 = !{!73, !76, !78}
!82 = distinct !{!82, !83, !"polly.alias.scope.MemRef_call"}
!83 = distinct !{!83, !"polly.alias.scope.domain"}
!84 = !{!85, !86, !87}
!85 = distinct !{!85, !83, !"polly.alias.scope.MemRef_call1"}
!86 = distinct !{!86, !83, !"polly.alias.scope.MemRef_call2"}
!87 = distinct !{!87, !83, !"polly.alias.scope.Packed_MemRef_call1"}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !71, !13}
!90 = !{!82, !85, !87}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !13}
!97 = !{!94, !91}
!98 = distinct !{!98, !13}
!99 = !{!95, !91}
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
!118 = distinct !{!118, !13}
