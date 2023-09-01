; ModuleID = 'syr2k_recreations//mmp_syr2k_S_159.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_159.c"
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
  %call718 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1579 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1579, %call2
  %polly.access.call2599 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2599, %call1
  %2 = or i1 %0, %1
  %polly.access.call619 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call619, %call2
  %4 = icmp ule i8* %polly.access.call2599, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call619, %call1
  %8 = icmp ule i8* %polly.access.call1579, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header704, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep922 = getelementptr i8, i8* %call2, i64 %12
  %scevgep921 = getelementptr i8, i8* %call2, i64 %11
  %scevgep920 = getelementptr i8, i8* %call1, i64 %12
  %scevgep919 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep919, %scevgep922
  %bound1 = icmp ult i8* %scevgep921, %scevgep920
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
  br i1 %exitcond18.not.i, label %vector.ph926, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph926:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert933 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat934 = shufflevector <4 x i64> %broadcast.splatinsert933, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body925

vector.body925:                                   ; preds = %vector.body925, %vector.ph926
  %index927 = phi i64 [ 0, %vector.ph926 ], [ %index.next928, %vector.body925 ]
  %vec.ind931 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph926 ], [ %vec.ind.next932, %vector.body925 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind931, %broadcast.splat934
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv7.i, i64 %index927
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next928 = add i64 %index927, 4
  %vec.ind.next932 = add <4 x i64> %vec.ind931, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next928, 80
  br i1 %40, label %for.inc41.i, label %vector.body925, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body925
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph926, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit765.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header495, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1282, label %vector.ph1208

vector.ph1208:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %vector.ph1208
  %index1209 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1210, %vector.body1207 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i, i64 %index1209
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1210 = add i64 %index1209, 4
  %46 = icmp eq i64 %index.next1210, %n.vec
  br i1 %46, label %middle.block1205, label %vector.body1207, !llvm.loop !18

middle.block1205:                                 ; preds = %vector.body1207
  %cmp.n1212 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1212, label %for.inc6.i, label %for.body3.i46.preheader1282

for.body3.i46.preheader1282:                      ; preds = %for.body3.i46.preheader, %middle.block1205
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1205 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1282, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1282 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1205, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit525.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header338, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1228 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1228, label %for.body3.i60.preheader1280, label %vector.ph1229

vector.ph1229:                                    ; preds = %for.body3.i60.preheader
  %n.vec1231 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1229
  %index1232 = phi i64 [ 0, %vector.ph1229 ], [ %index.next1233, %vector.body1227 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i52, i64 %index1232
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1236 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1236, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1233 = add i64 %index1232, 4
  %57 = icmp eq i64 %index.next1233, %n.vec1231
  br i1 %57, label %middle.block1225, label %vector.body1227, !llvm.loop !51

middle.block1225:                                 ; preds = %vector.body1227
  %cmp.n1235 = icmp eq i64 %indvars.iv21.i52, %n.vec1231
  br i1 %cmp.n1235, label %for.inc6.i63, label %for.body3.i60.preheader1280

for.body3.i60.preheader1280:                      ; preds = %for.body3.i60.preheader, %middle.block1225
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1231, %middle.block1225 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1280, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1280 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1225, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit368.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1254 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1254, label %for.body3.i99.preheader1278, label %vector.ph1255

vector.ph1255:                                    ; preds = %for.body3.i99.preheader
  %n.vec1257 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %vector.ph1255
  %index1258 = phi i64 [ 0, %vector.ph1255 ], [ %index.next1259, %vector.body1253 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i91, i64 %index1258
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1262 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1262, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1259 = add i64 %index1258, 4
  %68 = icmp eq i64 %index.next1259, %n.vec1257
  br i1 %68, label %middle.block1251, label %vector.body1253, !llvm.loop !53

middle.block1251:                                 ; preds = %vector.body1253
  %cmp.n1261 = icmp eq i64 %indvars.iv21.i91, %n.vec1257
  br i1 %cmp.n1261, label %for.inc6.i102, label %for.body3.i99.preheader1278

for.body3.i99.preheader1278:                      ; preds = %for.body3.i99.preheader, %middle.block1251
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1257, %middle.block1251 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1278, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1278 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1251, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.2
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call718, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1266 = phi i64 [ %indvar.next1267, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1266, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1268 = icmp ult i64 %88, 4
  br i1 %min.iters.check1268, label %polly.loop_header191.preheader, label %vector.ph1269

vector.ph1269:                                    ; preds = %polly.loop_header
  %n.vec1271 = and i64 %88, -4
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %vector.ph1269
  %index1272 = phi i64 [ 0, %vector.ph1269 ], [ %index.next1273, %vector.body1265 ]
  %90 = shl nuw nsw i64 %index1272, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1276 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1276, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1273 = add i64 %index1272, 4
  %95 = icmp eq i64 %index.next1273, %n.vec1271
  br i1 %95, label %middle.block1263, label %vector.body1265, !llvm.loop !64

middle.block1263:                                 ; preds = %vector.body1265
  %cmp.n1275 = icmp eq i64 %88, %n.vec1271
  br i1 %cmp.n1275, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1263
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1271, %middle.block1263 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1263
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1267 = add i64 %indvar1266, 1
  br i1 %exitcond791.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond790.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.2
  %polly.loop_cond204 = phi i1 [ false, %polly.loop_exit213.2 ], [ true, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ 1, %polly.loop_exit213.2 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nuw nsw i64 %polly.indvar202, 4
  %98 = or i64 %97, 15
  %99 = icmp ult i64 %98, 19
  %100 = select i1 %99, i64 %98, i64 19
  %101 = mul nuw nsw i64 %polly.indvar202, -64
  %102 = icmp slt i64 %101, -16
  %103 = select i1 %102, i64 %101, i64 -16
  %104 = add nsw i64 %103, 79
  %105 = shl nuw nsw i64 %polly.indvar202, 6
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %polly.loop_exit219 ], [ %105, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ %101, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %106 = shl nsw i64 %polly.indvar214, 2
  %107 = add nsw i64 %106, %101
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %polly.loop_guard.not = icmp sgt i64 %109, %104
  br i1 %polly.loop_guard.not, label %polly.loop_exit219, label %polly.loop_header217.preheader

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 0)
  %110 = add i64 %smax, %indvars.iv783
  %111 = sub nsw i64 %105, %106
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 4
  %indvars.iv.next784 = add nsw i64 %indvars.iv783, -4
  %exitcond788.not = icmp eq i64 %polly.indvar214, %100
  br i1 %exitcond788.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit225
  %indvars.iv785 = phi i64 [ %110, %polly.loop_header217.preheader ], [ %indvars.iv.next786, %polly.loop_exit225 ]
  %polly.indvar220 = phi i64 [ %109, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv785, i64 3)
  %112 = add nsw i64 %polly.indvar220, %111
  %polly.loop_guard233902 = icmp sgt i64 %112, -1
  %113 = add nuw nsw i64 %polly.indvar220, %105
  %114 = mul i64 %113, 480
  %115 = mul i64 %113, 640
  br i1 %polly.loop_guard233902, label %polly.loop_header223.us, label %polly.loop_exit225

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.loop_exit232.loopexit.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit232.loopexit.us ], [ 0, %polly.loop_header217 ]
  %116 = shl i64 %polly.indvar226.us, 3
  %117 = add i64 %116, %114
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %117
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %117
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %118 = add nuw nsw i64 %polly.indvar234.us, %106
  %119 = mul nuw nsw i64 %118, 480
  %120 = add nuw nsw i64 %119, %116
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %120
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %120
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %121 = shl i64 %118, 3
  %122 = add i64 %121, %115
  %scevgep249.us = getelementptr i8, i8* %call, i64 %122
  %scevgep249250.us = bitcast i8* %scevgep249.us to double*
  %_p_scalar_251.us = load double, double* %scevgep249250.us, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_251.us
  store double %p_add42.i118.us, double* %scevgep249250.us, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar234.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit232.loopexit.us, label %polly.loop_header230.us

polly.loop_exit232.loopexit.us:                   ; preds = %polly.loop_header230.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond787.not = icmp eq i64 %polly.indvar_next227.us, 20
  br i1 %exitcond787.not, label %polly.loop_exit225, label %polly.loop_header223.us

polly.loop_exit225:                               ; preds = %polly.loop_exit232.loopexit.us, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp ult i64 %polly.indvar220, %104
  %indvars.iv.next786 = add i64 %indvars.iv785, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar1240 = phi i64 [ %indvar.next1241, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %123 = add i64 %indvar1240, 1
  %124 = mul nuw nsw i64 %polly.indvar341, 640
  %scevgep350 = getelementptr i8, i8* %call, i64 %124
  %min.iters.check1242 = icmp ult i64 %123, 4
  br i1 %min.iters.check1242, label %polly.loop_header344.preheader, label %vector.ph1243

vector.ph1243:                                    ; preds = %polly.loop_header338
  %n.vec1245 = and i64 %123, -4
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1243
  %index1246 = phi i64 [ 0, %vector.ph1243 ], [ %index.next1247, %vector.body1239 ]
  %125 = shl nuw nsw i64 %index1246, 3
  %126 = getelementptr i8, i8* %scevgep350, i64 %125
  %127 = bitcast i8* %126 to <4 x double>*
  %wide.load1250 = load <4 x double>, <4 x double>* %127, align 8, !alias.scope !69, !noalias !71
  %128 = fmul fast <4 x double> %wide.load1250, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %129 = bitcast i8* %126 to <4 x double>*
  store <4 x double> %128, <4 x double>* %129, align 8, !alias.scope !69, !noalias !71
  %index.next1247 = add i64 %index1246, 4
  %130 = icmp eq i64 %index.next1247, %n.vec1245
  br i1 %130, label %middle.block1237, label %vector.body1239, !llvm.loop !74

middle.block1237:                                 ; preds = %vector.body1239
  %cmp.n1249 = icmp eq i64 %123, %n.vec1245
  br i1 %cmp.n1249, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block1237
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec1245, %middle.block1237 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block1237
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next342, 80
  %indvar.next1241 = add i64 %indvar1240, 1
  br i1 %exitcond805.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %131 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %131
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond804.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !75

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit368.2
  %polly.loop_cond359 = phi i1 [ false, %polly.loop_exit368.2 ], [ true, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ 1, %polly.loop_exit368.2 ], [ 0, %polly.loop_exit346 ]
  %132 = shl nuw nsw i64 %polly.indvar357, 4
  %133 = or i64 %132, 15
  %134 = icmp ult i64 %133, 19
  %135 = select i1 %134, i64 %133, i64 19
  %136 = mul nuw nsw i64 %polly.indvar357, -64
  %137 = icmp slt i64 %136, -16
  %138 = select i1 %137, i64 %136, i64 -16
  %139 = add nsw i64 %138, 79
  %140 = shl nuw nsw i64 %polly.indvar357, 6
  br label %polly.loop_header366

polly.loop_header366:                             ; preds = %polly.loop_exit375, %polly.loop_header354
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %polly.loop_exit375 ], [ %140, %polly.loop_header354 ]
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit375 ], [ %136, %polly.loop_header354 ]
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_exit375 ], [ 0, %polly.loop_header354 ]
  %141 = shl nsw i64 %polly.indvar369, 2
  %142 = add nsw i64 %141, %136
  %143 = icmp sgt i64 %142, 0
  %144 = select i1 %143, i64 %142, i64 0
  %polly.loop_guard376.not = icmp sgt i64 %144, %139
  br i1 %polly.loop_guard376.not, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header366
  %smax794 = call i64 @llvm.smax.i64(i64 %indvars.iv792, i64 0)
  %145 = add i64 %smax794, %indvars.iv795
  %146 = sub nsw i64 %140, %141
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_exit382, %polly.loop_header366
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 4
  %indvars.iv.next796 = add nsw i64 %indvars.iv795, -4
  %exitcond802.not = icmp eq i64 %polly.indvar369, %135
  br i1 %exitcond802.not, label %polly.loop_header366.1, label %polly.loop_header366

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_exit382
  %indvars.iv797 = phi i64 [ %145, %polly.loop_header373.preheader ], [ %indvars.iv.next798, %polly.loop_exit382 ]
  %polly.indvar377 = phi i64 [ %144, %polly.loop_header373.preheader ], [ %polly.indvar_next378, %polly.loop_exit382 ]
  %smin799 = call i64 @llvm.smin.i64(i64 %indvars.iv797, i64 3)
  %147 = add nsw i64 %polly.indvar377, %146
  %polly.loop_guard390905 = icmp sgt i64 %147, -1
  %148 = add nuw nsw i64 %polly.indvar377, %140
  %149 = mul i64 %148, 480
  %150 = mul i64 %148, 640
  br i1 %polly.loop_guard390905, label %polly.loop_header380.us, label %polly.loop_exit382

polly.loop_header380.us:                          ; preds = %polly.loop_header373, %polly.loop_exit389.loopexit.us
  %polly.indvar383.us = phi i64 [ %polly.indvar_next384.us, %polly.loop_exit389.loopexit.us ], [ 0, %polly.loop_header373 ]
  %151 = shl i64 %polly.indvar383.us, 3
  %152 = add i64 %151, %149
  %scevgep397.us = getelementptr i8, i8* %call2, i64 %152
  %scevgep397398.us = bitcast i8* %scevgep397.us to double*
  %_p_scalar_399.us = load double, double* %scevgep397398.us, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us = getelementptr i8, i8* %call1, i64 %152
  %scevgep403404.us = bitcast i8* %scevgep403.us to double*
  %_p_scalar_405.us = load double, double* %scevgep403404.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us

polly.loop_header387.us:                          ; preds = %polly.loop_header380.us, %polly.loop_header387.us
  %polly.indvar391.us = phi i64 [ %polly.indvar_next392.us, %polly.loop_header387.us ], [ 0, %polly.loop_header380.us ]
  %153 = add nuw nsw i64 %polly.indvar391.us, %141
  %154 = mul nuw nsw i64 %153, 480
  %155 = add nuw nsw i64 %154, %151
  %scevgep394.us = getelementptr i8, i8* %call1, i64 %155
  %scevgep394395.us = bitcast i8* %scevgep394.us to double*
  %_p_scalar_396.us = load double, double* %scevgep394395.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_399.us, %_p_scalar_396.us
  %scevgep400.us = getelementptr i8, i8* %call2, i64 %155
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_405.us, %_p_scalar_402.us
  %156 = shl i64 %153, 3
  %157 = add i64 %156, %150
  %scevgep406.us = getelementptr i8, i8* %call, i64 %157
  %scevgep406407.us = bitcast i8* %scevgep406.us to double*
  %_p_scalar_408.us = load double, double* %scevgep406407.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_408.us
  store double %p_add42.i79.us, double* %scevgep406407.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us = add nuw nsw i64 %polly.indvar391.us, 1
  %exitcond800.not = icmp eq i64 %polly.indvar391.us, %smin799
  br i1 %exitcond800.not, label %polly.loop_exit389.loopexit.us, label %polly.loop_header387.us

polly.loop_exit389.loopexit.us:                   ; preds = %polly.loop_header387.us
  %polly.indvar_next384.us = add nuw nsw i64 %polly.indvar383.us, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next384.us, 20
  br i1 %exitcond801.not, label %polly.loop_exit382, label %polly.loop_header380.us

polly.loop_exit382:                               ; preds = %polly.loop_exit389.loopexit.us, %polly.loop_header373
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %polly.loop_cond379.not.not = icmp ult i64 %polly.indvar377, %139
  %indvars.iv.next798 = add i64 %indvars.iv797, 1
  br i1 %polly.loop_cond379.not.not, label %polly.loop_header373, label %polly.loop_exit375

polly.loop_header495:                             ; preds = %init_array.exit, %polly.loop_exit503
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit503 ], [ 0, %init_array.exit ]
  %polly.indvar498 = phi i64 [ %polly.indvar_next499, %polly.loop_exit503 ], [ 1, %init_array.exit ]
  %158 = add i64 %indvar, 1
  %159 = mul nuw nsw i64 %polly.indvar498, 640
  %scevgep507 = getelementptr i8, i8* %call, i64 %159
  %min.iters.check1216 = icmp ult i64 %158, 4
  br i1 %min.iters.check1216, label %polly.loop_header501.preheader, label %vector.ph1217

vector.ph1217:                                    ; preds = %polly.loop_header495
  %n.vec1219 = and i64 %158, -4
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1217
  %index1220 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1221, %vector.body1215 ]
  %160 = shl nuw nsw i64 %index1220, 3
  %161 = getelementptr i8, i8* %scevgep507, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1224 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !78, !noalias !80
  %163 = fmul fast <4 x double> %wide.load1224, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %164 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !78, !noalias !80
  %index.next1221 = add i64 %index1220, 4
  %165 = icmp eq i64 %index.next1221, %n.vec1219
  br i1 %165, label %middle.block1213, label %vector.body1215, !llvm.loop !83

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1223 = icmp eq i64 %158, %n.vec1219
  br i1 %cmp.n1223, label %polly.loop_exit503, label %polly.loop_header501.preheader

polly.loop_header501.preheader:                   ; preds = %polly.loop_header495, %middle.block1213
  %polly.indvar504.ph = phi i64 [ 0, %polly.loop_header495 ], [ %n.vec1219, %middle.block1213 ]
  br label %polly.loop_header501

polly.loop_exit503:                               ; preds = %polly.loop_header501, %middle.block1213
  %polly.indvar_next499 = add nuw nsw i64 %polly.indvar498, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next499, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond819.not, label %polly.loop_header511, label %polly.loop_header495

polly.loop_header501:                             ; preds = %polly.loop_header501.preheader, %polly.loop_header501
  %polly.indvar504 = phi i64 [ %polly.indvar_next505, %polly.loop_header501 ], [ %polly.indvar504.ph, %polly.loop_header501.preheader ]
  %166 = shl nuw nsw i64 %polly.indvar504, 3
  %scevgep508 = getelementptr i8, i8* %scevgep507, i64 %166
  %scevgep508509 = bitcast i8* %scevgep508 to double*
  %_p_scalar_510 = load double, double* %scevgep508509, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_510, 1.200000e+00
  store double %p_mul.i, double* %scevgep508509, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next505 = add nuw nsw i64 %polly.indvar504, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next505, %polly.indvar498
  br i1 %exitcond818.not, label %polly.loop_exit503, label %polly.loop_header501, !llvm.loop !84

polly.loop_header511:                             ; preds = %polly.loop_exit503, %polly.loop_exit525.2
  %polly.loop_cond516 = phi i1 [ false, %polly.loop_exit525.2 ], [ true, %polly.loop_exit503 ]
  %polly.indvar514 = phi i64 [ 1, %polly.loop_exit525.2 ], [ 0, %polly.loop_exit503 ]
  %167 = shl nuw nsw i64 %polly.indvar514, 4
  %168 = or i64 %167, 15
  %169 = icmp ult i64 %168, 19
  %170 = select i1 %169, i64 %168, i64 19
  %171 = mul nuw nsw i64 %polly.indvar514, -64
  %172 = icmp slt i64 %171, -16
  %173 = select i1 %172, i64 %171, i64 -16
  %174 = add nsw i64 %173, 79
  %175 = shl nuw nsw i64 %polly.indvar514, 6
  br label %polly.loop_header523

polly.loop_header523:                             ; preds = %polly.loop_exit532, %polly.loop_header511
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit532 ], [ %175, %polly.loop_header511 ]
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit532 ], [ %171, %polly.loop_header511 ]
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_exit532 ], [ 0, %polly.loop_header511 ]
  %176 = shl nsw i64 %polly.indvar526, 2
  %177 = add nsw i64 %176, %171
  %178 = icmp sgt i64 %177, 0
  %179 = select i1 %178, i64 %177, i64 0
  %polly.loop_guard533.not = icmp sgt i64 %179, %174
  br i1 %polly.loop_guard533.not, label %polly.loop_exit532, label %polly.loop_header530.preheader

polly.loop_header530.preheader:                   ; preds = %polly.loop_header523
  %smax808 = call i64 @llvm.smax.i64(i64 %indvars.iv806, i64 0)
  %180 = add i64 %smax808, %indvars.iv809
  %181 = sub nsw i64 %175, %176
  br label %polly.loop_header530

polly.loop_exit532:                               ; preds = %polly.loop_exit539, %polly.loop_header523
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %indvars.iv.next807 = add nsw i64 %indvars.iv806, 4
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, -4
  %exitcond816.not = icmp eq i64 %polly.indvar526, %170
  br i1 %exitcond816.not, label %polly.loop_header523.1, label %polly.loop_header523

polly.loop_header530:                             ; preds = %polly.loop_header530.preheader, %polly.loop_exit539
  %indvars.iv811 = phi i64 [ %180, %polly.loop_header530.preheader ], [ %indvars.iv.next812, %polly.loop_exit539 ]
  %polly.indvar534 = phi i64 [ %179, %polly.loop_header530.preheader ], [ %polly.indvar_next535, %polly.loop_exit539 ]
  %smin813 = call i64 @llvm.smin.i64(i64 %indvars.iv811, i64 3)
  %182 = add nsw i64 %polly.indvar534, %181
  %polly.loop_guard547908 = icmp sgt i64 %182, -1
  %183 = add nuw nsw i64 %polly.indvar534, %175
  %184 = mul i64 %183, 480
  %185 = mul i64 %183, 640
  br i1 %polly.loop_guard547908, label %polly.loop_header537.us, label %polly.loop_exit539

polly.loop_header537.us:                          ; preds = %polly.loop_header530, %polly.loop_exit546.loopexit.us
  %polly.indvar540.us = phi i64 [ %polly.indvar_next541.us, %polly.loop_exit546.loopexit.us ], [ 0, %polly.loop_header530 ]
  %186 = shl i64 %polly.indvar540.us, 3
  %187 = add i64 %186, %184
  %scevgep554.us = getelementptr i8, i8* %call2, i64 %187
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us = getelementptr i8, i8* %call1, i64 %187
  %scevgep560561.us = bitcast i8* %scevgep560.us to double*
  %_p_scalar_562.us = load double, double* %scevgep560561.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us

polly.loop_header544.us:                          ; preds = %polly.loop_header537.us, %polly.loop_header544.us
  %polly.indvar548.us = phi i64 [ %polly.indvar_next549.us, %polly.loop_header544.us ], [ 0, %polly.loop_header537.us ]
  %188 = add nuw nsw i64 %polly.indvar548.us, %176
  %189 = mul nuw nsw i64 %188, 480
  %190 = add nuw nsw i64 %189, %186
  %scevgep551.us = getelementptr i8, i8* %call1, i64 %190
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_553.us
  %scevgep557.us = getelementptr i8, i8* %call2, i64 %190
  %scevgep557558.us = bitcast i8* %scevgep557.us to double*
  %_p_scalar_559.us = load double, double* %scevgep557558.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_562.us, %_p_scalar_559.us
  %191 = shl i64 %188, 3
  %192 = add i64 %191, %185
  %scevgep563.us = getelementptr i8, i8* %call, i64 %192
  %scevgep563564.us = bitcast i8* %scevgep563.us to double*
  %_p_scalar_565.us = load double, double* %scevgep563564.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_565.us
  store double %p_add42.i.us, double* %scevgep563564.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us = add nuw nsw i64 %polly.indvar548.us, 1
  %exitcond814.not = icmp eq i64 %polly.indvar548.us, %smin813
  br i1 %exitcond814.not, label %polly.loop_exit546.loopexit.us, label %polly.loop_header544.us

polly.loop_exit546.loopexit.us:                   ; preds = %polly.loop_header544.us
  %polly.indvar_next541.us = add nuw nsw i64 %polly.indvar540.us, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next541.us, 20
  br i1 %exitcond815.not, label %polly.loop_exit539, label %polly.loop_header537.us

polly.loop_exit539:                               ; preds = %polly.loop_exit546.loopexit.us, %polly.loop_header530
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %polly.loop_cond536.not.not = icmp ult i64 %polly.indvar534, %174
  %indvars.iv.next812 = add i64 %indvars.iv811, 1
  br i1 %polly.loop_cond536.not.not, label %polly.loop_header530, label %polly.loop_exit532

polly.loop_header704:                             ; preds = %entry, %polly.loop_exit712
  %polly.indvar707 = phi i64 [ %polly.indvar_next708, %polly.loop_exit712 ], [ 0, %entry ]
  %193 = mul nuw nsw i64 %polly.indvar707, 640
  %194 = trunc i64 %polly.indvar707 to i32
  %broadcast.splatinsert947 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat948 = shufflevector <4 x i32> %broadcast.splatinsert947, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body937

vector.body937:                                   ; preds = %vector.body937, %polly.loop_header704
  %index939 = phi i64 [ 0, %polly.loop_header704 ], [ %index.next940, %vector.body937 ]
  %vec.ind945 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header704 ], [ %vec.ind.next946, %vector.body937 ]
  %195 = mul <4 x i32> %vec.ind945, %broadcast.splat948
  %196 = add <4 x i32> %195, <i32 3, i32 3, i32 3, i32 3>
  %197 = urem <4 x i32> %196, <i32 80, i32 80, i32 80, i32 80>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %200 = shl i64 %index939, 3
  %201 = add nuw nsw i64 %200, %193
  %202 = getelementptr i8, i8* %call, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %199, <4 x double>* %203, align 8, !alias.scope !87, !noalias !89
  %index.next940 = add i64 %index939, 4
  %vec.ind.next946 = add <4 x i32> %vec.ind945, <i32 4, i32 4, i32 4, i32 4>
  %204 = icmp eq i64 %index.next940, 32
  br i1 %204, label %polly.loop_exit712, label %vector.body937, !llvm.loop !92

polly.loop_exit712:                               ; preds = %vector.body937
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next708, 32
  br i1 %exitcond839.not, label %polly.loop_header704.1, label %polly.loop_header704

polly.loop_header731:                             ; preds = %polly.loop_exit712.2.2, %polly.loop_exit739
  %polly.indvar734 = phi i64 [ %polly.indvar_next735, %polly.loop_exit739 ], [ 0, %polly.loop_exit712.2.2 ]
  %205 = mul nuw nsw i64 %polly.indvar734, 480
  %206 = trunc i64 %polly.indvar734 to i32
  %broadcast.splatinsert1061 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1062 = shufflevector <4 x i32> %broadcast.splatinsert1061, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %polly.loop_header731
  %index1053 = phi i64 [ 0, %polly.loop_header731 ], [ %index.next1054, %vector.body1051 ]
  %vec.ind1059 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header731 ], [ %vec.ind.next1060, %vector.body1051 ]
  %207 = mul <4 x i32> %vec.ind1059, %broadcast.splat1062
  %208 = add <4 x i32> %207, <i32 2, i32 2, i32 2, i32 2>
  %209 = urem <4 x i32> %208, <i32 60, i32 60, i32 60, i32 60>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %212 = shl i64 %index1053, 3
  %213 = add i64 %212, %205
  %214 = getelementptr i8, i8* %call2, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !91, !noalias !93
  %index.next1054 = add i64 %index1053, 4
  %vec.ind.next1060 = add <4 x i32> %vec.ind1059, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1054, 32
  br i1 %216, label %polly.loop_exit739, label %vector.body1051, !llvm.loop !94

polly.loop_exit739:                               ; preds = %vector.body1051
  %polly.indvar_next735 = add nuw nsw i64 %polly.indvar734, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next735, 32
  br i1 %exitcond830.not, label %polly.loop_header731.1, label %polly.loop_header731

polly.loop_header757:                             ; preds = %polly.loop_exit739.1.2, %polly.loop_exit765
  %polly.indvar760 = phi i64 [ %polly.indvar_next761, %polly.loop_exit765 ], [ 0, %polly.loop_exit739.1.2 ]
  %217 = mul nuw nsw i64 %polly.indvar760, 480
  %218 = trunc i64 %polly.indvar760 to i32
  %broadcast.splatinsert1139 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1140 = shufflevector <4 x i32> %broadcast.splatinsert1139, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %polly.loop_header757
  %index1131 = phi i64 [ 0, %polly.loop_header757 ], [ %index.next1132, %vector.body1129 ]
  %vec.ind1137 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header757 ], [ %vec.ind.next1138, %vector.body1129 ]
  %219 = mul <4 x i32> %vec.ind1137, %broadcast.splat1140
  %220 = add <4 x i32> %219, <i32 1, i32 1, i32 1, i32 1>
  %221 = urem <4 x i32> %220, <i32 80, i32 80, i32 80, i32 80>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %224 = shl i64 %index1131, 3
  %225 = add i64 %224, %217
  %226 = getelementptr i8, i8* %call1, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %223, <4 x double>* %227, align 8, !alias.scope !90, !noalias !95
  %index.next1132 = add i64 %index1131, 4
  %vec.ind.next1138 = add <4 x i32> %vec.ind1137, <i32 4, i32 4, i32 4, i32 4>
  %228 = icmp eq i64 %index.next1132, 32
  br i1 %228, label %polly.loop_exit765, label %vector.body1129, !llvm.loop !96

polly.loop_exit765:                               ; preds = %vector.body1129
  %polly.indvar_next761 = add nuw nsw i64 %polly.indvar760, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next761, 32
  br i1 %exitcond824.not, label %polly.loop_header757.1, label %polly.loop_header757

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv783.1 = phi i64 [ %indvars.iv.next784.1, %polly.loop_exit219.1 ], [ %105, %polly.loop_exit219 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit219.1 ], [ %101, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %229 = shl nsw i64 %polly.indvar214.1, 2
  %230 = add nsw i64 %229, %101
  %231 = icmp sgt i64 %230, 0
  %232 = select i1 %231, i64 %230, i64 0
  %polly.loop_guard.not.1 = icmp sgt i64 %232, %104
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit219.1, label %polly.loop_header217.preheader.1

polly.loop_header217.preheader.1:                 ; preds = %polly.loop_header211.1
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv.1, i64 0)
  %233 = add i64 %smax.1, %indvars.iv783.1
  %234 = sub nsw i64 %105, %229
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header217.preheader.1
  %indvars.iv785.1 = phi i64 [ %233, %polly.loop_header217.preheader.1 ], [ %indvars.iv.next786.1, %polly.loop_exit225.1 ]
  %polly.indvar220.1 = phi i64 [ %232, %polly.loop_header217.preheader.1 ], [ %polly.indvar_next221.1, %polly.loop_exit225.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv785.1, i64 3)
  %235 = add nsw i64 %polly.indvar220.1, %234
  %polly.loop_guard233.1903 = icmp sgt i64 %235, -1
  %236 = add nuw nsw i64 %polly.indvar220.1, %105
  %237 = mul i64 %236, 480
  %238 = mul i64 %236, 640
  br i1 %polly.loop_guard233.1903, label %polly.loop_header223.us.1, label %polly.loop_exit225.1

polly.loop_header223.us.1:                        ; preds = %polly.loop_header217.1, %polly.loop_exit232.loopexit.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.loop_exit232.loopexit.us.1 ], [ 0, %polly.loop_header217.1 ]
  %239 = shl i64 %polly.indvar226.us.1, 3
  %240 = add i64 %239, 160
  %241 = add i64 %240, %237
  %scevgep240.us.1 = getelementptr i8, i8* %call2, i64 %241
  %scevgep240241.us.1 = bitcast i8* %scevgep240.us.1 to double*
  %_p_scalar_242.us.1 = load double, double* %scevgep240241.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.1 = getelementptr i8, i8* %call1, i64 %241
  %scevgep246247.us.1 = bitcast i8* %scevgep246.us.1 to double*
  %_p_scalar_248.us.1 = load double, double* %scevgep246247.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.1

polly.loop_header230.us.1:                        ; preds = %polly.loop_header230.us.1, %polly.loop_header223.us.1
  %polly.indvar234.us.1 = phi i64 [ %polly.indvar_next235.us.1, %polly.loop_header230.us.1 ], [ 0, %polly.loop_header223.us.1 ]
  %242 = add nuw nsw i64 %polly.indvar234.us.1, %229
  %243 = mul nuw nsw i64 %242, 480
  %244 = add nuw nsw i64 %243, %240
  %scevgep237.us.1 = getelementptr i8, i8* %call1, i64 %244
  %scevgep237238.us.1 = bitcast i8* %scevgep237.us.1 to double*
  %_p_scalar_239.us.1 = load double, double* %scevgep237238.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_242.us.1, %_p_scalar_239.us.1
  %scevgep243.us.1 = getelementptr i8, i8* %call2, i64 %244
  %scevgep243244.us.1 = bitcast i8* %scevgep243.us.1 to double*
  %_p_scalar_245.us.1 = load double, double* %scevgep243244.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_248.us.1, %_p_scalar_245.us.1
  %245 = shl i64 %242, 3
  %246 = add i64 %245, %238
  %scevgep249.us.1 = getelementptr i8, i8* %call, i64 %246
  %scevgep249250.us.1 = bitcast i8* %scevgep249.us.1 to double*
  %_p_scalar_251.us.1 = load double, double* %scevgep249250.us.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_251.us.1
  store double %p_add42.i118.us.1, double* %scevgep249250.us.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us.1 = add nuw nsw i64 %polly.indvar234.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar234.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit232.loopexit.us.1, label %polly.loop_header230.us.1

polly.loop_exit232.loopexit.us.1:                 ; preds = %polly.loop_header230.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond787.1.not = icmp eq i64 %polly.indvar_next227.us.1, 20
  br i1 %exitcond787.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.us.1

polly.loop_exit225.1:                             ; preds = %polly.loop_exit232.loopexit.us.1, %polly.loop_header217.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %polly.loop_cond222.not.not.1 = icmp ult i64 %polly.indvar220.1, %104
  %indvars.iv.next786.1 = add i64 %indvars.iv785.1, 1
  br i1 %polly.loop_cond222.not.not.1, label %polly.loop_header217.1, label %polly.loop_exit219.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 4
  %indvars.iv.next784.1 = add nsw i64 %indvars.iv783.1, -4
  %exitcond788.1.not = icmp eq i64 %polly.indvar214.1, %100
  br i1 %exitcond788.1.not, label %polly.loop_header211.2, label %polly.loop_header211.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit219.2
  %indvars.iv783.2 = phi i64 [ %indvars.iv.next784.2, %polly.loop_exit219.2 ], [ %105, %polly.loop_exit219.1 ]
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit219.2 ], [ %101, %polly.loop_exit219.1 ]
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit219.1 ]
  %247 = shl nsw i64 %polly.indvar214.2, 2
  %248 = add nsw i64 %247, %101
  %249 = icmp sgt i64 %248, 0
  %250 = select i1 %249, i64 %248, i64 0
  %polly.loop_guard.not.2 = icmp sgt i64 %250, %104
  br i1 %polly.loop_guard.not.2, label %polly.loop_exit219.2, label %polly.loop_header217.preheader.2

polly.loop_header217.preheader.2:                 ; preds = %polly.loop_header211.2
  %smax.2 = call i64 @llvm.smax.i64(i64 %indvars.iv.2, i64 0)
  %251 = add i64 %smax.2, %indvars.iv783.2
  %252 = sub nsw i64 %105, %247
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.2, %polly.loop_header217.preheader.2
  %indvars.iv785.2 = phi i64 [ %251, %polly.loop_header217.preheader.2 ], [ %indvars.iv.next786.2, %polly.loop_exit225.2 ]
  %polly.indvar220.2 = phi i64 [ %250, %polly.loop_header217.preheader.2 ], [ %polly.indvar_next221.2, %polly.loop_exit225.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv785.2, i64 3)
  %253 = add nsw i64 %polly.indvar220.2, %252
  %polly.loop_guard233.2904 = icmp sgt i64 %253, -1
  %254 = add nuw nsw i64 %polly.indvar220.2, %105
  %255 = mul i64 %254, 480
  %256 = mul i64 %254, 640
  br i1 %polly.loop_guard233.2904, label %polly.loop_header223.us.2, label %polly.loop_exit225.2

polly.loop_header223.us.2:                        ; preds = %polly.loop_header217.2, %polly.loop_exit232.loopexit.us.2
  %polly.indvar226.us.2 = phi i64 [ %polly.indvar_next227.us.2, %polly.loop_exit232.loopexit.us.2 ], [ 0, %polly.loop_header217.2 ]
  %257 = shl i64 %polly.indvar226.us.2, 3
  %258 = add i64 %257, 320
  %259 = add i64 %258, %255
  %scevgep240.us.2 = getelementptr i8, i8* %call2, i64 %259
  %scevgep240241.us.2 = bitcast i8* %scevgep240.us.2 to double*
  %_p_scalar_242.us.2 = load double, double* %scevgep240241.us.2, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.2 = getelementptr i8, i8* %call1, i64 %259
  %scevgep246247.us.2 = bitcast i8* %scevgep246.us.2 to double*
  %_p_scalar_248.us.2 = load double, double* %scevgep246247.us.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.2

polly.loop_header230.us.2:                        ; preds = %polly.loop_header230.us.2, %polly.loop_header223.us.2
  %polly.indvar234.us.2 = phi i64 [ %polly.indvar_next235.us.2, %polly.loop_header230.us.2 ], [ 0, %polly.loop_header223.us.2 ]
  %260 = add nuw nsw i64 %polly.indvar234.us.2, %247
  %261 = mul nuw nsw i64 %260, 480
  %262 = add nuw nsw i64 %261, %258
  %scevgep237.us.2 = getelementptr i8, i8* %call1, i64 %262
  %scevgep237238.us.2 = bitcast i8* %scevgep237.us.2 to double*
  %_p_scalar_239.us.2 = load double, double* %scevgep237238.us.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_242.us.2, %_p_scalar_239.us.2
  %scevgep243.us.2 = getelementptr i8, i8* %call2, i64 %262
  %scevgep243244.us.2 = bitcast i8* %scevgep243.us.2 to double*
  %_p_scalar_245.us.2 = load double, double* %scevgep243244.us.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_248.us.2, %_p_scalar_245.us.2
  %263 = shl i64 %260, 3
  %264 = add i64 %263, %256
  %scevgep249.us.2 = getelementptr i8, i8* %call, i64 %264
  %scevgep249250.us.2 = bitcast i8* %scevgep249.us.2 to double*
  %_p_scalar_251.us.2 = load double, double* %scevgep249250.us.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_251.us.2
  store double %p_add42.i118.us.2, double* %scevgep249250.us.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us.2 = add nuw nsw i64 %polly.indvar234.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar234.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit232.loopexit.us.2, label %polly.loop_header230.us.2

polly.loop_exit232.loopexit.us.2:                 ; preds = %polly.loop_header230.us.2
  %polly.indvar_next227.us.2 = add nuw nsw i64 %polly.indvar226.us.2, 1
  %exitcond787.2.not = icmp eq i64 %polly.indvar_next227.us.2, 20
  br i1 %exitcond787.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.us.2

polly.loop_exit225.2:                             ; preds = %polly.loop_exit232.loopexit.us.2, %polly.loop_header217.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %polly.loop_cond222.not.not.2 = icmp ult i64 %polly.indvar220.2, %104
  %indvars.iv.next786.2 = add i64 %indvars.iv785.2, 1
  br i1 %polly.loop_cond222.not.not.2, label %polly.loop_header217.2, label %polly.loop_exit219.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.2, %polly.loop_header211.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.2, 4
  %indvars.iv.next784.2 = add nsw i64 %indvars.iv783.2, -4
  %exitcond788.2.not = icmp eq i64 %polly.indvar214.2, %100
  br i1 %exitcond788.2.not, label %polly.loop_exit213.2, label %polly.loop_header211.2

polly.loop_exit213.2:                             ; preds = %polly.loop_exit219.2
  br i1 %polly.loop_cond204, label %polly.loop_header199, label %kernel_syr2k.exit129

polly.loop_header366.1:                           ; preds = %polly.loop_exit375, %polly.loop_exit375.1
  %indvars.iv795.1 = phi i64 [ %indvars.iv.next796.1, %polly.loop_exit375.1 ], [ %140, %polly.loop_exit375 ]
  %indvars.iv792.1 = phi i64 [ %indvars.iv.next793.1, %polly.loop_exit375.1 ], [ %136, %polly.loop_exit375 ]
  %polly.indvar369.1 = phi i64 [ %polly.indvar_next370.1, %polly.loop_exit375.1 ], [ 0, %polly.loop_exit375 ]
  %265 = shl nsw i64 %polly.indvar369.1, 2
  %266 = add nsw i64 %265, %136
  %267 = icmp sgt i64 %266, 0
  %268 = select i1 %267, i64 %266, i64 0
  %polly.loop_guard376.not.1 = icmp sgt i64 %268, %139
  br i1 %polly.loop_guard376.not.1, label %polly.loop_exit375.1, label %polly.loop_header373.preheader.1

polly.loop_header373.preheader.1:                 ; preds = %polly.loop_header366.1
  %smax794.1 = call i64 @llvm.smax.i64(i64 %indvars.iv792.1, i64 0)
  %269 = add i64 %smax794.1, %indvars.iv795.1
  %270 = sub nsw i64 %140, %265
  br label %polly.loop_header373.1

polly.loop_header373.1:                           ; preds = %polly.loop_exit382.1, %polly.loop_header373.preheader.1
  %indvars.iv797.1 = phi i64 [ %269, %polly.loop_header373.preheader.1 ], [ %indvars.iv.next798.1, %polly.loop_exit382.1 ]
  %polly.indvar377.1 = phi i64 [ %268, %polly.loop_header373.preheader.1 ], [ %polly.indvar_next378.1, %polly.loop_exit382.1 ]
  %smin799.1 = call i64 @llvm.smin.i64(i64 %indvars.iv797.1, i64 3)
  %271 = add nsw i64 %polly.indvar377.1, %270
  %polly.loop_guard390.1906 = icmp sgt i64 %271, -1
  %272 = add nuw nsw i64 %polly.indvar377.1, %140
  %273 = mul i64 %272, 480
  %274 = mul i64 %272, 640
  br i1 %polly.loop_guard390.1906, label %polly.loop_header380.us.1, label %polly.loop_exit382.1

polly.loop_header380.us.1:                        ; preds = %polly.loop_header373.1, %polly.loop_exit389.loopexit.us.1
  %polly.indvar383.us.1 = phi i64 [ %polly.indvar_next384.us.1, %polly.loop_exit389.loopexit.us.1 ], [ 0, %polly.loop_header373.1 ]
  %275 = shl i64 %polly.indvar383.us.1, 3
  %276 = add i64 %275, 160
  %277 = add i64 %276, %273
  %scevgep397.us.1 = getelementptr i8, i8* %call2, i64 %277
  %scevgep397398.us.1 = bitcast i8* %scevgep397.us.1 to double*
  %_p_scalar_399.us.1 = load double, double* %scevgep397398.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us.1 = getelementptr i8, i8* %call1, i64 %277
  %scevgep403404.us.1 = bitcast i8* %scevgep403.us.1 to double*
  %_p_scalar_405.us.1 = load double, double* %scevgep403404.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us.1

polly.loop_header387.us.1:                        ; preds = %polly.loop_header387.us.1, %polly.loop_header380.us.1
  %polly.indvar391.us.1 = phi i64 [ %polly.indvar_next392.us.1, %polly.loop_header387.us.1 ], [ 0, %polly.loop_header380.us.1 ]
  %278 = add nuw nsw i64 %polly.indvar391.us.1, %265
  %279 = mul nuw nsw i64 %278, 480
  %280 = add nuw nsw i64 %279, %276
  %scevgep394.us.1 = getelementptr i8, i8* %call1, i64 %280
  %scevgep394395.us.1 = bitcast i8* %scevgep394.us.1 to double*
  %_p_scalar_396.us.1 = load double, double* %scevgep394395.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_399.us.1, %_p_scalar_396.us.1
  %scevgep400.us.1 = getelementptr i8, i8* %call2, i64 %280
  %scevgep400401.us.1 = bitcast i8* %scevgep400.us.1 to double*
  %_p_scalar_402.us.1 = load double, double* %scevgep400401.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_405.us.1, %_p_scalar_402.us.1
  %281 = shl i64 %278, 3
  %282 = add i64 %281, %274
  %scevgep406.us.1 = getelementptr i8, i8* %call, i64 %282
  %scevgep406407.us.1 = bitcast i8* %scevgep406.us.1 to double*
  %_p_scalar_408.us.1 = load double, double* %scevgep406407.us.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_408.us.1
  store double %p_add42.i79.us.1, double* %scevgep406407.us.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us.1 = add nuw nsw i64 %polly.indvar391.us.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar391.us.1, %smin799.1
  br i1 %exitcond800.1.not, label %polly.loop_exit389.loopexit.us.1, label %polly.loop_header387.us.1

polly.loop_exit389.loopexit.us.1:                 ; preds = %polly.loop_header387.us.1
  %polly.indvar_next384.us.1 = add nuw nsw i64 %polly.indvar383.us.1, 1
  %exitcond801.1.not = icmp eq i64 %polly.indvar_next384.us.1, 20
  br i1 %exitcond801.1.not, label %polly.loop_exit382.1, label %polly.loop_header380.us.1

polly.loop_exit382.1:                             ; preds = %polly.loop_exit389.loopexit.us.1, %polly.loop_header373.1
  %polly.indvar_next378.1 = add nuw nsw i64 %polly.indvar377.1, 1
  %polly.loop_cond379.not.not.1 = icmp ult i64 %polly.indvar377.1, %139
  %indvars.iv.next798.1 = add i64 %indvars.iv797.1, 1
  br i1 %polly.loop_cond379.not.not.1, label %polly.loop_header373.1, label %polly.loop_exit375.1

polly.loop_exit375.1:                             ; preds = %polly.loop_exit382.1, %polly.loop_header366.1
  %polly.indvar_next370.1 = add nuw nsw i64 %polly.indvar369.1, 1
  %indvars.iv.next793.1 = add nsw i64 %indvars.iv792.1, 4
  %indvars.iv.next796.1 = add nsw i64 %indvars.iv795.1, -4
  %exitcond802.1.not = icmp eq i64 %polly.indvar369.1, %135
  br i1 %exitcond802.1.not, label %polly.loop_header366.2, label %polly.loop_header366.1

polly.loop_header366.2:                           ; preds = %polly.loop_exit375.1, %polly.loop_exit375.2
  %indvars.iv795.2 = phi i64 [ %indvars.iv.next796.2, %polly.loop_exit375.2 ], [ %140, %polly.loop_exit375.1 ]
  %indvars.iv792.2 = phi i64 [ %indvars.iv.next793.2, %polly.loop_exit375.2 ], [ %136, %polly.loop_exit375.1 ]
  %polly.indvar369.2 = phi i64 [ %polly.indvar_next370.2, %polly.loop_exit375.2 ], [ 0, %polly.loop_exit375.1 ]
  %283 = shl nsw i64 %polly.indvar369.2, 2
  %284 = add nsw i64 %283, %136
  %285 = icmp sgt i64 %284, 0
  %286 = select i1 %285, i64 %284, i64 0
  %polly.loop_guard376.not.2 = icmp sgt i64 %286, %139
  br i1 %polly.loop_guard376.not.2, label %polly.loop_exit375.2, label %polly.loop_header373.preheader.2

polly.loop_header373.preheader.2:                 ; preds = %polly.loop_header366.2
  %smax794.2 = call i64 @llvm.smax.i64(i64 %indvars.iv792.2, i64 0)
  %287 = add i64 %smax794.2, %indvars.iv795.2
  %288 = sub nsw i64 %140, %283
  br label %polly.loop_header373.2

polly.loop_header373.2:                           ; preds = %polly.loop_exit382.2, %polly.loop_header373.preheader.2
  %indvars.iv797.2 = phi i64 [ %287, %polly.loop_header373.preheader.2 ], [ %indvars.iv.next798.2, %polly.loop_exit382.2 ]
  %polly.indvar377.2 = phi i64 [ %286, %polly.loop_header373.preheader.2 ], [ %polly.indvar_next378.2, %polly.loop_exit382.2 ]
  %smin799.2 = call i64 @llvm.smin.i64(i64 %indvars.iv797.2, i64 3)
  %289 = add nsw i64 %polly.indvar377.2, %288
  %polly.loop_guard390.2907 = icmp sgt i64 %289, -1
  %290 = add nuw nsw i64 %polly.indvar377.2, %140
  %291 = mul i64 %290, 480
  %292 = mul i64 %290, 640
  br i1 %polly.loop_guard390.2907, label %polly.loop_header380.us.2, label %polly.loop_exit382.2

polly.loop_header380.us.2:                        ; preds = %polly.loop_header373.2, %polly.loop_exit389.loopexit.us.2
  %polly.indvar383.us.2 = phi i64 [ %polly.indvar_next384.us.2, %polly.loop_exit389.loopexit.us.2 ], [ 0, %polly.loop_header373.2 ]
  %293 = shl i64 %polly.indvar383.us.2, 3
  %294 = add i64 %293, 320
  %295 = add i64 %294, %291
  %scevgep397.us.2 = getelementptr i8, i8* %call2, i64 %295
  %scevgep397398.us.2 = bitcast i8* %scevgep397.us.2 to double*
  %_p_scalar_399.us.2 = load double, double* %scevgep397398.us.2, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us.2 = getelementptr i8, i8* %call1, i64 %295
  %scevgep403404.us.2 = bitcast i8* %scevgep403.us.2 to double*
  %_p_scalar_405.us.2 = load double, double* %scevgep403404.us.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us.2

polly.loop_header387.us.2:                        ; preds = %polly.loop_header387.us.2, %polly.loop_header380.us.2
  %polly.indvar391.us.2 = phi i64 [ %polly.indvar_next392.us.2, %polly.loop_header387.us.2 ], [ 0, %polly.loop_header380.us.2 ]
  %296 = add nuw nsw i64 %polly.indvar391.us.2, %283
  %297 = mul nuw nsw i64 %296, 480
  %298 = add nuw nsw i64 %297, %294
  %scevgep394.us.2 = getelementptr i8, i8* %call1, i64 %298
  %scevgep394395.us.2 = bitcast i8* %scevgep394.us.2 to double*
  %_p_scalar_396.us.2 = load double, double* %scevgep394395.us.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_399.us.2, %_p_scalar_396.us.2
  %scevgep400.us.2 = getelementptr i8, i8* %call2, i64 %298
  %scevgep400401.us.2 = bitcast i8* %scevgep400.us.2 to double*
  %_p_scalar_402.us.2 = load double, double* %scevgep400401.us.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_405.us.2, %_p_scalar_402.us.2
  %299 = shl i64 %296, 3
  %300 = add i64 %299, %292
  %scevgep406.us.2 = getelementptr i8, i8* %call, i64 %300
  %scevgep406407.us.2 = bitcast i8* %scevgep406.us.2 to double*
  %_p_scalar_408.us.2 = load double, double* %scevgep406407.us.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_408.us.2
  store double %p_add42.i79.us.2, double* %scevgep406407.us.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us.2 = add nuw nsw i64 %polly.indvar391.us.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar391.us.2, %smin799.2
  br i1 %exitcond800.2.not, label %polly.loop_exit389.loopexit.us.2, label %polly.loop_header387.us.2

polly.loop_exit389.loopexit.us.2:                 ; preds = %polly.loop_header387.us.2
  %polly.indvar_next384.us.2 = add nuw nsw i64 %polly.indvar383.us.2, 1
  %exitcond801.2.not = icmp eq i64 %polly.indvar_next384.us.2, 20
  br i1 %exitcond801.2.not, label %polly.loop_exit382.2, label %polly.loop_header380.us.2

polly.loop_exit382.2:                             ; preds = %polly.loop_exit389.loopexit.us.2, %polly.loop_header373.2
  %polly.indvar_next378.2 = add nuw nsw i64 %polly.indvar377.2, 1
  %polly.loop_cond379.not.not.2 = icmp ult i64 %polly.indvar377.2, %139
  %indvars.iv.next798.2 = add i64 %indvars.iv797.2, 1
  br i1 %polly.loop_cond379.not.not.2, label %polly.loop_header373.2, label %polly.loop_exit375.2

polly.loop_exit375.2:                             ; preds = %polly.loop_exit382.2, %polly.loop_header366.2
  %polly.indvar_next370.2 = add nuw nsw i64 %polly.indvar369.2, 1
  %indvars.iv.next793.2 = add nsw i64 %indvars.iv792.2, 4
  %indvars.iv.next796.2 = add nsw i64 %indvars.iv795.2, -4
  %exitcond802.2.not = icmp eq i64 %polly.indvar369.2, %135
  br i1 %exitcond802.2.not, label %polly.loop_exit368.2, label %polly.loop_header366.2

polly.loop_exit368.2:                             ; preds = %polly.loop_exit375.2
  br i1 %polly.loop_cond359, label %polly.loop_header354, label %kernel_syr2k.exit90

polly.loop_header523.1:                           ; preds = %polly.loop_exit532, %polly.loop_exit532.1
  %indvars.iv809.1 = phi i64 [ %indvars.iv.next810.1, %polly.loop_exit532.1 ], [ %175, %polly.loop_exit532 ]
  %indvars.iv806.1 = phi i64 [ %indvars.iv.next807.1, %polly.loop_exit532.1 ], [ %171, %polly.loop_exit532 ]
  %polly.indvar526.1 = phi i64 [ %polly.indvar_next527.1, %polly.loop_exit532.1 ], [ 0, %polly.loop_exit532 ]
  %301 = shl nsw i64 %polly.indvar526.1, 2
  %302 = add nsw i64 %301, %171
  %303 = icmp sgt i64 %302, 0
  %304 = select i1 %303, i64 %302, i64 0
  %polly.loop_guard533.not.1 = icmp sgt i64 %304, %174
  br i1 %polly.loop_guard533.not.1, label %polly.loop_exit532.1, label %polly.loop_header530.preheader.1

polly.loop_header530.preheader.1:                 ; preds = %polly.loop_header523.1
  %smax808.1 = call i64 @llvm.smax.i64(i64 %indvars.iv806.1, i64 0)
  %305 = add i64 %smax808.1, %indvars.iv809.1
  %306 = sub nsw i64 %175, %301
  br label %polly.loop_header530.1

polly.loop_header530.1:                           ; preds = %polly.loop_exit539.1, %polly.loop_header530.preheader.1
  %indvars.iv811.1 = phi i64 [ %305, %polly.loop_header530.preheader.1 ], [ %indvars.iv.next812.1, %polly.loop_exit539.1 ]
  %polly.indvar534.1 = phi i64 [ %304, %polly.loop_header530.preheader.1 ], [ %polly.indvar_next535.1, %polly.loop_exit539.1 ]
  %smin813.1 = call i64 @llvm.smin.i64(i64 %indvars.iv811.1, i64 3)
  %307 = add nsw i64 %polly.indvar534.1, %306
  %polly.loop_guard547.1909 = icmp sgt i64 %307, -1
  %308 = add nuw nsw i64 %polly.indvar534.1, %175
  %309 = mul i64 %308, 480
  %310 = mul i64 %308, 640
  br i1 %polly.loop_guard547.1909, label %polly.loop_header537.us.1, label %polly.loop_exit539.1

polly.loop_header537.us.1:                        ; preds = %polly.loop_header530.1, %polly.loop_exit546.loopexit.us.1
  %polly.indvar540.us.1 = phi i64 [ %polly.indvar_next541.us.1, %polly.loop_exit546.loopexit.us.1 ], [ 0, %polly.loop_header530.1 ]
  %311 = shl i64 %polly.indvar540.us.1, 3
  %312 = add i64 %311, 160
  %313 = add i64 %312, %309
  %scevgep554.us.1 = getelementptr i8, i8* %call2, i64 %313
  %scevgep554555.us.1 = bitcast i8* %scevgep554.us.1 to double*
  %_p_scalar_556.us.1 = load double, double* %scevgep554555.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us.1 = getelementptr i8, i8* %call1, i64 %313
  %scevgep560561.us.1 = bitcast i8* %scevgep560.us.1 to double*
  %_p_scalar_562.us.1 = load double, double* %scevgep560561.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us.1

polly.loop_header544.us.1:                        ; preds = %polly.loop_header544.us.1, %polly.loop_header537.us.1
  %polly.indvar548.us.1 = phi i64 [ %polly.indvar_next549.us.1, %polly.loop_header544.us.1 ], [ 0, %polly.loop_header537.us.1 ]
  %314 = add nuw nsw i64 %polly.indvar548.us.1, %301
  %315 = mul nuw nsw i64 %314, 480
  %316 = add nuw nsw i64 %315, %312
  %scevgep551.us.1 = getelementptr i8, i8* %call1, i64 %316
  %scevgep551552.us.1 = bitcast i8* %scevgep551.us.1 to double*
  %_p_scalar_553.us.1 = load double, double* %scevgep551552.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_556.us.1, %_p_scalar_553.us.1
  %scevgep557.us.1 = getelementptr i8, i8* %call2, i64 %316
  %scevgep557558.us.1 = bitcast i8* %scevgep557.us.1 to double*
  %_p_scalar_559.us.1 = load double, double* %scevgep557558.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_562.us.1, %_p_scalar_559.us.1
  %317 = shl i64 %314, 3
  %318 = add i64 %317, %310
  %scevgep563.us.1 = getelementptr i8, i8* %call, i64 %318
  %scevgep563564.us.1 = bitcast i8* %scevgep563.us.1 to double*
  %_p_scalar_565.us.1 = load double, double* %scevgep563564.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_565.us.1
  store double %p_add42.i.us.1, double* %scevgep563564.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us.1 = add nuw nsw i64 %polly.indvar548.us.1, 1
  %exitcond814.1.not = icmp eq i64 %polly.indvar548.us.1, %smin813.1
  br i1 %exitcond814.1.not, label %polly.loop_exit546.loopexit.us.1, label %polly.loop_header544.us.1

polly.loop_exit546.loopexit.us.1:                 ; preds = %polly.loop_header544.us.1
  %polly.indvar_next541.us.1 = add nuw nsw i64 %polly.indvar540.us.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar_next541.us.1, 20
  br i1 %exitcond815.1.not, label %polly.loop_exit539.1, label %polly.loop_header537.us.1

polly.loop_exit539.1:                             ; preds = %polly.loop_exit546.loopexit.us.1, %polly.loop_header530.1
  %polly.indvar_next535.1 = add nuw nsw i64 %polly.indvar534.1, 1
  %polly.loop_cond536.not.not.1 = icmp ult i64 %polly.indvar534.1, %174
  %indvars.iv.next812.1 = add i64 %indvars.iv811.1, 1
  br i1 %polly.loop_cond536.not.not.1, label %polly.loop_header530.1, label %polly.loop_exit532.1

polly.loop_exit532.1:                             ; preds = %polly.loop_exit539.1, %polly.loop_header523.1
  %polly.indvar_next527.1 = add nuw nsw i64 %polly.indvar526.1, 1
  %indvars.iv.next807.1 = add nsw i64 %indvars.iv806.1, 4
  %indvars.iv.next810.1 = add nsw i64 %indvars.iv809.1, -4
  %exitcond816.1.not = icmp eq i64 %polly.indvar526.1, %170
  br i1 %exitcond816.1.not, label %polly.loop_header523.2, label %polly.loop_header523.1

polly.loop_header523.2:                           ; preds = %polly.loop_exit532.1, %polly.loop_exit532.2
  %indvars.iv809.2 = phi i64 [ %indvars.iv.next810.2, %polly.loop_exit532.2 ], [ %175, %polly.loop_exit532.1 ]
  %indvars.iv806.2 = phi i64 [ %indvars.iv.next807.2, %polly.loop_exit532.2 ], [ %171, %polly.loop_exit532.1 ]
  %polly.indvar526.2 = phi i64 [ %polly.indvar_next527.2, %polly.loop_exit532.2 ], [ 0, %polly.loop_exit532.1 ]
  %319 = shl nsw i64 %polly.indvar526.2, 2
  %320 = add nsw i64 %319, %171
  %321 = icmp sgt i64 %320, 0
  %322 = select i1 %321, i64 %320, i64 0
  %polly.loop_guard533.not.2 = icmp sgt i64 %322, %174
  br i1 %polly.loop_guard533.not.2, label %polly.loop_exit532.2, label %polly.loop_header530.preheader.2

polly.loop_header530.preheader.2:                 ; preds = %polly.loop_header523.2
  %smax808.2 = call i64 @llvm.smax.i64(i64 %indvars.iv806.2, i64 0)
  %323 = add i64 %smax808.2, %indvars.iv809.2
  %324 = sub nsw i64 %175, %319
  br label %polly.loop_header530.2

polly.loop_header530.2:                           ; preds = %polly.loop_exit539.2, %polly.loop_header530.preheader.2
  %indvars.iv811.2 = phi i64 [ %323, %polly.loop_header530.preheader.2 ], [ %indvars.iv.next812.2, %polly.loop_exit539.2 ]
  %polly.indvar534.2 = phi i64 [ %322, %polly.loop_header530.preheader.2 ], [ %polly.indvar_next535.2, %polly.loop_exit539.2 ]
  %smin813.2 = call i64 @llvm.smin.i64(i64 %indvars.iv811.2, i64 3)
  %325 = add nsw i64 %polly.indvar534.2, %324
  %polly.loop_guard547.2910 = icmp sgt i64 %325, -1
  %326 = add nuw nsw i64 %polly.indvar534.2, %175
  %327 = mul i64 %326, 480
  %328 = mul i64 %326, 640
  br i1 %polly.loop_guard547.2910, label %polly.loop_header537.us.2, label %polly.loop_exit539.2

polly.loop_header537.us.2:                        ; preds = %polly.loop_header530.2, %polly.loop_exit546.loopexit.us.2
  %polly.indvar540.us.2 = phi i64 [ %polly.indvar_next541.us.2, %polly.loop_exit546.loopexit.us.2 ], [ 0, %polly.loop_header530.2 ]
  %329 = shl i64 %polly.indvar540.us.2, 3
  %330 = add i64 %329, 320
  %331 = add i64 %330, %327
  %scevgep554.us.2 = getelementptr i8, i8* %call2, i64 %331
  %scevgep554555.us.2 = bitcast i8* %scevgep554.us.2 to double*
  %_p_scalar_556.us.2 = load double, double* %scevgep554555.us.2, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us.2 = getelementptr i8, i8* %call1, i64 %331
  %scevgep560561.us.2 = bitcast i8* %scevgep560.us.2 to double*
  %_p_scalar_562.us.2 = load double, double* %scevgep560561.us.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us.2

polly.loop_header544.us.2:                        ; preds = %polly.loop_header544.us.2, %polly.loop_header537.us.2
  %polly.indvar548.us.2 = phi i64 [ %polly.indvar_next549.us.2, %polly.loop_header544.us.2 ], [ 0, %polly.loop_header537.us.2 ]
  %332 = add nuw nsw i64 %polly.indvar548.us.2, %319
  %333 = mul nuw nsw i64 %332, 480
  %334 = add nuw nsw i64 %333, %330
  %scevgep551.us.2 = getelementptr i8, i8* %call1, i64 %334
  %scevgep551552.us.2 = bitcast i8* %scevgep551.us.2 to double*
  %_p_scalar_553.us.2 = load double, double* %scevgep551552.us.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_556.us.2, %_p_scalar_553.us.2
  %scevgep557.us.2 = getelementptr i8, i8* %call2, i64 %334
  %scevgep557558.us.2 = bitcast i8* %scevgep557.us.2 to double*
  %_p_scalar_559.us.2 = load double, double* %scevgep557558.us.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_562.us.2, %_p_scalar_559.us.2
  %335 = shl i64 %332, 3
  %336 = add i64 %335, %328
  %scevgep563.us.2 = getelementptr i8, i8* %call, i64 %336
  %scevgep563564.us.2 = bitcast i8* %scevgep563.us.2 to double*
  %_p_scalar_565.us.2 = load double, double* %scevgep563564.us.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_565.us.2
  store double %p_add42.i.us.2, double* %scevgep563564.us.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us.2 = add nuw nsw i64 %polly.indvar548.us.2, 1
  %exitcond814.2.not = icmp eq i64 %polly.indvar548.us.2, %smin813.2
  br i1 %exitcond814.2.not, label %polly.loop_exit546.loopexit.us.2, label %polly.loop_header544.us.2

polly.loop_exit546.loopexit.us.2:                 ; preds = %polly.loop_header544.us.2
  %polly.indvar_next541.us.2 = add nuw nsw i64 %polly.indvar540.us.2, 1
  %exitcond815.2.not = icmp eq i64 %polly.indvar_next541.us.2, 20
  br i1 %exitcond815.2.not, label %polly.loop_exit539.2, label %polly.loop_header537.us.2

polly.loop_exit539.2:                             ; preds = %polly.loop_exit546.loopexit.us.2, %polly.loop_header530.2
  %polly.indvar_next535.2 = add nuw nsw i64 %polly.indvar534.2, 1
  %polly.loop_cond536.not.not.2 = icmp ult i64 %polly.indvar534.2, %174
  %indvars.iv.next812.2 = add i64 %indvars.iv811.2, 1
  br i1 %polly.loop_cond536.not.not.2, label %polly.loop_header530.2, label %polly.loop_exit532.2

polly.loop_exit532.2:                             ; preds = %polly.loop_exit539.2, %polly.loop_header523.2
  %polly.indvar_next527.2 = add nuw nsw i64 %polly.indvar526.2, 1
  %indvars.iv.next807.2 = add nsw i64 %indvars.iv806.2, 4
  %indvars.iv.next810.2 = add nsw i64 %indvars.iv809.2, -4
  %exitcond816.2.not = icmp eq i64 %polly.indvar526.2, %170
  br i1 %exitcond816.2.not, label %polly.loop_exit525.2, label %polly.loop_header523.2

polly.loop_exit525.2:                             ; preds = %polly.loop_exit532.2
  br i1 %polly.loop_cond516, label %polly.loop_header511, label %kernel_syr2k.exit

polly.loop_header757.1:                           ; preds = %polly.loop_exit765, %polly.loop_exit765.1
  %polly.indvar760.1 = phi i64 [ %polly.indvar_next761.1, %polly.loop_exit765.1 ], [ 0, %polly.loop_exit765 ]
  %337 = mul nuw nsw i64 %polly.indvar760.1, 480
  %338 = trunc i64 %polly.indvar760.1 to i32
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %338, i32 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %polly.loop_header757.1
  %index1145 = phi i64 [ 0, %polly.loop_header757.1 ], [ %index.next1146, %vector.body1143 ]
  %vec.ind1149 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header757.1 ], [ %vec.ind.next1150, %vector.body1143 ]
  %339 = add nuw nsw <4 x i64> %vec.ind1149, <i64 32, i64 32, i64 32, i64 32>
  %340 = trunc <4 x i64> %339 to <4 x i32>
  %341 = mul <4 x i32> %broadcast.splat1152, %340
  %342 = add <4 x i32> %341, <i32 1, i32 1, i32 1, i32 1>
  %343 = urem <4 x i32> %342, <i32 80, i32 80, i32 80, i32 80>
  %344 = sitofp <4 x i32> %343 to <4 x double>
  %345 = fmul fast <4 x double> %344, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %346 = extractelement <4 x i64> %339, i32 0
  %347 = shl i64 %346, 3
  %348 = add i64 %347, %337
  %349 = getelementptr i8, i8* %call1, i64 %348
  %350 = bitcast i8* %349 to <4 x double>*
  store <4 x double> %345, <4 x double>* %350, align 8, !alias.scope !90, !noalias !95
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1150 = add <4 x i64> %vec.ind1149, <i64 4, i64 4, i64 4, i64 4>
  %351 = icmp eq i64 %index.next1146, 28
  br i1 %351, label %polly.loop_exit765.1, label %vector.body1143, !llvm.loop !97

polly.loop_exit765.1:                             ; preds = %vector.body1143
  %polly.indvar_next761.1 = add nuw nsw i64 %polly.indvar760.1, 1
  %exitcond824.1.not = icmp eq i64 %polly.indvar_next761.1, 32
  br i1 %exitcond824.1.not, label %polly.loop_header757.1847, label %polly.loop_header757.1

polly.loop_header757.1847:                        ; preds = %polly.loop_exit765.1, %polly.loop_exit765.1858
  %polly.indvar760.1846 = phi i64 [ %polly.indvar_next761.1856, %polly.loop_exit765.1858 ], [ 0, %polly.loop_exit765.1 ]
  %352 = add nuw nsw i64 %polly.indvar760.1846, 32
  %353 = mul nuw nsw i64 %352, 480
  %354 = trunc i64 %352 to i32
  %broadcast.splatinsert1165 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1166 = shufflevector <4 x i32> %broadcast.splatinsert1165, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %polly.loop_header757.1847
  %index1157 = phi i64 [ 0, %polly.loop_header757.1847 ], [ %index.next1158, %vector.body1155 ]
  %vec.ind1163 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header757.1847 ], [ %vec.ind.next1164, %vector.body1155 ]
  %355 = mul <4 x i32> %vec.ind1163, %broadcast.splat1166
  %356 = add <4 x i32> %355, <i32 1, i32 1, i32 1, i32 1>
  %357 = urem <4 x i32> %356, <i32 80, i32 80, i32 80, i32 80>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %360 = shl i64 %index1157, 3
  %361 = add i64 %360, %353
  %362 = getelementptr i8, i8* %call1, i64 %361
  %363 = bitcast i8* %362 to <4 x double>*
  store <4 x double> %359, <4 x double>* %363, align 8, !alias.scope !90, !noalias !95
  %index.next1158 = add i64 %index1157, 4
  %vec.ind.next1164 = add <4 x i32> %vec.ind1163, <i32 4, i32 4, i32 4, i32 4>
  %364 = icmp eq i64 %index.next1158, 32
  br i1 %364, label %polly.loop_exit765.1858, label %vector.body1155, !llvm.loop !98

polly.loop_exit765.1858:                          ; preds = %vector.body1155
  %polly.indvar_next761.1856 = add nuw nsw i64 %polly.indvar760.1846, 1
  %exitcond824.1857.not = icmp eq i64 %polly.indvar_next761.1856, 32
  br i1 %exitcond824.1857.not, label %polly.loop_header757.1.1, label %polly.loop_header757.1847

polly.loop_header757.1.1:                         ; preds = %polly.loop_exit765.1858, %polly.loop_exit765.1.1
  %polly.indvar760.1.1 = phi i64 [ %polly.indvar_next761.1.1, %polly.loop_exit765.1.1 ], [ 0, %polly.loop_exit765.1858 ]
  %365 = add nuw nsw i64 %polly.indvar760.1.1, 32
  %366 = mul nuw nsw i64 %365, 480
  %367 = trunc i64 %365 to i32
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %polly.loop_header757.1.1
  %index1171 = phi i64 [ 0, %polly.loop_header757.1.1 ], [ %index.next1172, %vector.body1169 ]
  %vec.ind1175 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header757.1.1 ], [ %vec.ind.next1176, %vector.body1169 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1175, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1178, %369
  %371 = add <4 x i32> %370, <i32 1, i32 1, i32 1, i32 1>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add i64 %376, %366
  %378 = getelementptr i8, i8* %call1, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !90, !noalias !95
  %index.next1172 = add i64 %index1171, 4
  %vec.ind.next1176 = add <4 x i64> %vec.ind1175, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1172, 28
  br i1 %380, label %polly.loop_exit765.1.1, label %vector.body1169, !llvm.loop !99

polly.loop_exit765.1.1:                           ; preds = %vector.body1169
  %polly.indvar_next761.1.1 = add nuw nsw i64 %polly.indvar760.1.1, 1
  %exitcond824.1.1.not = icmp eq i64 %polly.indvar_next761.1.1, 32
  br i1 %exitcond824.1.1.not, label %polly.loop_header757.2, label %polly.loop_header757.1.1

polly.loop_header757.2:                           ; preds = %polly.loop_exit765.1.1, %polly.loop_exit765.2
  %polly.indvar760.2 = phi i64 [ %polly.indvar_next761.2, %polly.loop_exit765.2 ], [ 0, %polly.loop_exit765.1.1 ]
  %381 = add nuw nsw i64 %polly.indvar760.2, 64
  %382 = mul nuw nsw i64 %381, 480
  %383 = trunc i64 %381 to i32
  %broadcast.splatinsert1191 = insertelement <4 x i32> poison, i32 %383, i32 0
  %broadcast.splat1192 = shufflevector <4 x i32> %broadcast.splatinsert1191, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %polly.loop_header757.2
  %index1183 = phi i64 [ 0, %polly.loop_header757.2 ], [ %index.next1184, %vector.body1181 ]
  %vec.ind1189 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header757.2 ], [ %vec.ind.next1190, %vector.body1181 ]
  %384 = mul <4 x i32> %vec.ind1189, %broadcast.splat1192
  %385 = add <4 x i32> %384, <i32 1, i32 1, i32 1, i32 1>
  %386 = urem <4 x i32> %385, <i32 80, i32 80, i32 80, i32 80>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %389 = shl i64 %index1183, 3
  %390 = add i64 %389, %382
  %391 = getelementptr i8, i8* %call1, i64 %390
  %392 = bitcast i8* %391 to <4 x double>*
  store <4 x double> %388, <4 x double>* %392, align 8, !alias.scope !90, !noalias !95
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1190 = add <4 x i32> %vec.ind1189, <i32 4, i32 4, i32 4, i32 4>
  %393 = icmp eq i64 %index.next1184, 32
  br i1 %393, label %polly.loop_exit765.2, label %vector.body1181, !llvm.loop !100

polly.loop_exit765.2:                             ; preds = %vector.body1181
  %polly.indvar_next761.2 = add nuw nsw i64 %polly.indvar760.2, 1
  %exitcond824.2.not = icmp eq i64 %polly.indvar_next761.2, 16
  br i1 %exitcond824.2.not, label %polly.loop_header757.1.2, label %polly.loop_header757.2

polly.loop_header757.1.2:                         ; preds = %polly.loop_exit765.2, %polly.loop_exit765.1.2
  %polly.indvar760.1.2 = phi i64 [ %polly.indvar_next761.1.2, %polly.loop_exit765.1.2 ], [ 0, %polly.loop_exit765.2 ]
  %394 = add nuw nsw i64 %polly.indvar760.1.2, 64
  %395 = mul nuw nsw i64 %394, 480
  %396 = trunc i64 %394 to i32
  %broadcast.splatinsert1203 = insertelement <4 x i32> poison, i32 %396, i32 0
  %broadcast.splat1204 = shufflevector <4 x i32> %broadcast.splatinsert1203, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %polly.loop_header757.1.2
  %index1197 = phi i64 [ 0, %polly.loop_header757.1.2 ], [ %index.next1198, %vector.body1195 ]
  %vec.ind1201 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header757.1.2 ], [ %vec.ind.next1202, %vector.body1195 ]
  %397 = add nuw nsw <4 x i64> %vec.ind1201, <i64 32, i64 32, i64 32, i64 32>
  %398 = trunc <4 x i64> %397 to <4 x i32>
  %399 = mul <4 x i32> %broadcast.splat1204, %398
  %400 = add <4 x i32> %399, <i32 1, i32 1, i32 1, i32 1>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %404 = extractelement <4 x i64> %397, i32 0
  %405 = shl i64 %404, 3
  %406 = add i64 %405, %395
  %407 = getelementptr i8, i8* %call1, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %403, <4 x double>* %408, align 8, !alias.scope !90, !noalias !95
  %index.next1198 = add i64 %index1197, 4
  %vec.ind.next1202 = add <4 x i64> %vec.ind1201, <i64 4, i64 4, i64 4, i64 4>
  %409 = icmp eq i64 %index.next1198, 28
  br i1 %409, label %polly.loop_exit765.1.2, label %vector.body1195, !llvm.loop !101

polly.loop_exit765.1.2:                           ; preds = %vector.body1195
  %polly.indvar_next761.1.2 = add nuw nsw i64 %polly.indvar760.1.2, 1
  %exitcond824.1.2.not = icmp eq i64 %polly.indvar_next761.1.2, 16
  br i1 %exitcond824.1.2.not, label %init_array.exit, label %polly.loop_header757.1.2

polly.loop_header731.1:                           ; preds = %polly.loop_exit739, %polly.loop_exit739.1
  %polly.indvar734.1 = phi i64 [ %polly.indvar_next735.1, %polly.loop_exit739.1 ], [ 0, %polly.loop_exit739 ]
  %410 = mul nuw nsw i64 %polly.indvar734.1, 480
  %411 = trunc i64 %polly.indvar734.1 to i32
  %broadcast.splatinsert1073 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1074 = shufflevector <4 x i32> %broadcast.splatinsert1073, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %polly.loop_header731.1
  %index1067 = phi i64 [ 0, %polly.loop_header731.1 ], [ %index.next1068, %vector.body1065 ]
  %vec.ind1071 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header731.1 ], [ %vec.ind.next1072, %vector.body1065 ]
  %412 = add nuw nsw <4 x i64> %vec.ind1071, <i64 32, i64 32, i64 32, i64 32>
  %413 = trunc <4 x i64> %412 to <4 x i32>
  %414 = mul <4 x i32> %broadcast.splat1074, %413
  %415 = add <4 x i32> %414, <i32 2, i32 2, i32 2, i32 2>
  %416 = urem <4 x i32> %415, <i32 60, i32 60, i32 60, i32 60>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = extractelement <4 x i64> %412, i32 0
  %420 = shl i64 %419, 3
  %421 = add i64 %420, %410
  %422 = getelementptr i8, i8* %call2, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %418, <4 x double>* %423, align 8, !alias.scope !91, !noalias !93
  %index.next1068 = add i64 %index1067, 4
  %vec.ind.next1072 = add <4 x i64> %vec.ind1071, <i64 4, i64 4, i64 4, i64 4>
  %424 = icmp eq i64 %index.next1068, 28
  br i1 %424, label %polly.loop_exit739.1, label %vector.body1065, !llvm.loop !102

polly.loop_exit739.1:                             ; preds = %vector.body1065
  %polly.indvar_next735.1 = add nuw nsw i64 %polly.indvar734.1, 1
  %exitcond830.1.not = icmp eq i64 %polly.indvar_next735.1, 32
  br i1 %exitcond830.1.not, label %polly.loop_header731.1861, label %polly.loop_header731.1

polly.loop_header731.1861:                        ; preds = %polly.loop_exit739.1, %polly.loop_exit739.1872
  %polly.indvar734.1860 = phi i64 [ %polly.indvar_next735.1870, %polly.loop_exit739.1872 ], [ 0, %polly.loop_exit739.1 ]
  %425 = add nuw nsw i64 %polly.indvar734.1860, 32
  %426 = mul nuw nsw i64 %425, 480
  %427 = trunc i64 %425 to i32
  %broadcast.splatinsert1087 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1088 = shufflevector <4 x i32> %broadcast.splatinsert1087, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %polly.loop_header731.1861
  %index1079 = phi i64 [ 0, %polly.loop_header731.1861 ], [ %index.next1080, %vector.body1077 ]
  %vec.ind1085 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header731.1861 ], [ %vec.ind.next1086, %vector.body1077 ]
  %428 = mul <4 x i32> %vec.ind1085, %broadcast.splat1088
  %429 = add <4 x i32> %428, <i32 2, i32 2, i32 2, i32 2>
  %430 = urem <4 x i32> %429, <i32 60, i32 60, i32 60, i32 60>
  %431 = sitofp <4 x i32> %430 to <4 x double>
  %432 = fmul fast <4 x double> %431, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %433 = shl i64 %index1079, 3
  %434 = add i64 %433, %426
  %435 = getelementptr i8, i8* %call2, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %432, <4 x double>* %436, align 8, !alias.scope !91, !noalias !93
  %index.next1080 = add i64 %index1079, 4
  %vec.ind.next1086 = add <4 x i32> %vec.ind1085, <i32 4, i32 4, i32 4, i32 4>
  %437 = icmp eq i64 %index.next1080, 32
  br i1 %437, label %polly.loop_exit739.1872, label %vector.body1077, !llvm.loop !103

polly.loop_exit739.1872:                          ; preds = %vector.body1077
  %polly.indvar_next735.1870 = add nuw nsw i64 %polly.indvar734.1860, 1
  %exitcond830.1871.not = icmp eq i64 %polly.indvar_next735.1870, 32
  br i1 %exitcond830.1871.not, label %polly.loop_header731.1.1, label %polly.loop_header731.1861

polly.loop_header731.1.1:                         ; preds = %polly.loop_exit739.1872, %polly.loop_exit739.1.1
  %polly.indvar734.1.1 = phi i64 [ %polly.indvar_next735.1.1, %polly.loop_exit739.1.1 ], [ 0, %polly.loop_exit739.1872 ]
  %438 = add nuw nsw i64 %polly.indvar734.1.1, 32
  %439 = mul nuw nsw i64 %438, 480
  %440 = trunc i64 %438 to i32
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.body1091, %polly.loop_header731.1.1
  %index1093 = phi i64 [ 0, %polly.loop_header731.1.1 ], [ %index.next1094, %vector.body1091 ]
  %vec.ind1097 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header731.1.1 ], [ %vec.ind.next1098, %vector.body1091 ]
  %441 = add nuw nsw <4 x i64> %vec.ind1097, <i64 32, i64 32, i64 32, i64 32>
  %442 = trunc <4 x i64> %441 to <4 x i32>
  %443 = mul <4 x i32> %broadcast.splat1100, %442
  %444 = add <4 x i32> %443, <i32 2, i32 2, i32 2, i32 2>
  %445 = urem <4 x i32> %444, <i32 60, i32 60, i32 60, i32 60>
  %446 = sitofp <4 x i32> %445 to <4 x double>
  %447 = fmul fast <4 x double> %446, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %448 = extractelement <4 x i64> %441, i32 0
  %449 = shl i64 %448, 3
  %450 = add i64 %449, %439
  %451 = getelementptr i8, i8* %call2, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %447, <4 x double>* %452, align 8, !alias.scope !91, !noalias !93
  %index.next1094 = add i64 %index1093, 4
  %vec.ind.next1098 = add <4 x i64> %vec.ind1097, <i64 4, i64 4, i64 4, i64 4>
  %453 = icmp eq i64 %index.next1094, 28
  br i1 %453, label %polly.loop_exit739.1.1, label %vector.body1091, !llvm.loop !104

polly.loop_exit739.1.1:                           ; preds = %vector.body1091
  %polly.indvar_next735.1.1 = add nuw nsw i64 %polly.indvar734.1.1, 1
  %exitcond830.1.1.not = icmp eq i64 %polly.indvar_next735.1.1, 32
  br i1 %exitcond830.1.1.not, label %polly.loop_header731.2, label %polly.loop_header731.1.1

polly.loop_header731.2:                           ; preds = %polly.loop_exit739.1.1, %polly.loop_exit739.2
  %polly.indvar734.2 = phi i64 [ %polly.indvar_next735.2, %polly.loop_exit739.2 ], [ 0, %polly.loop_exit739.1.1 ]
  %454 = add nuw nsw i64 %polly.indvar734.2, 64
  %455 = mul nuw nsw i64 %454, 480
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1113 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1114 = shufflevector <4 x i32> %broadcast.splatinsert1113, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %polly.loop_header731.2
  %index1105 = phi i64 [ 0, %polly.loop_header731.2 ], [ %index.next1106, %vector.body1103 ]
  %vec.ind1111 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header731.2 ], [ %vec.ind.next1112, %vector.body1103 ]
  %457 = mul <4 x i32> %vec.ind1111, %broadcast.splat1114
  %458 = add <4 x i32> %457, <i32 2, i32 2, i32 2, i32 2>
  %459 = urem <4 x i32> %458, <i32 60, i32 60, i32 60, i32 60>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = shl i64 %index1105, 3
  %463 = add i64 %462, %455
  %464 = getelementptr i8, i8* %call2, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %461, <4 x double>* %465, align 8, !alias.scope !91, !noalias !93
  %index.next1106 = add i64 %index1105, 4
  %vec.ind.next1112 = add <4 x i32> %vec.ind1111, <i32 4, i32 4, i32 4, i32 4>
  %466 = icmp eq i64 %index.next1106, 32
  br i1 %466, label %polly.loop_exit739.2, label %vector.body1103, !llvm.loop !105

polly.loop_exit739.2:                             ; preds = %vector.body1103
  %polly.indvar_next735.2 = add nuw nsw i64 %polly.indvar734.2, 1
  %exitcond830.2.not = icmp eq i64 %polly.indvar_next735.2, 16
  br i1 %exitcond830.2.not, label %polly.loop_header731.1.2, label %polly.loop_header731.2

polly.loop_header731.1.2:                         ; preds = %polly.loop_exit739.2, %polly.loop_exit739.1.2
  %polly.indvar734.1.2 = phi i64 [ %polly.indvar_next735.1.2, %polly.loop_exit739.1.2 ], [ 0, %polly.loop_exit739.2 ]
  %467 = add nuw nsw i64 %polly.indvar734.1.2, 64
  %468 = mul nuw nsw i64 %467, 480
  %469 = trunc i64 %467 to i32
  %broadcast.splatinsert1125 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1126 = shufflevector <4 x i32> %broadcast.splatinsert1125, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1117

vector.body1117:                                  ; preds = %vector.body1117, %polly.loop_header731.1.2
  %index1119 = phi i64 [ 0, %polly.loop_header731.1.2 ], [ %index.next1120, %vector.body1117 ]
  %vec.ind1123 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header731.1.2 ], [ %vec.ind.next1124, %vector.body1117 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1123, <i64 32, i64 32, i64 32, i64 32>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1126, %471
  %473 = add <4 x i32> %472, <i32 2, i32 2, i32 2, i32 2>
  %474 = urem <4 x i32> %473, <i32 60, i32 60, i32 60, i32 60>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add i64 %478, %468
  %480 = getelementptr i8, i8* %call2, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !91, !noalias !93
  %index.next1120 = add i64 %index1119, 4
  %vec.ind.next1124 = add <4 x i64> %vec.ind1123, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1120, 28
  br i1 %482, label %polly.loop_exit739.1.2, label %vector.body1117, !llvm.loop !106

polly.loop_exit739.1.2:                           ; preds = %vector.body1117
  %polly.indvar_next735.1.2 = add nuw nsw i64 %polly.indvar734.1.2, 1
  %exitcond830.1.2.not = icmp eq i64 %polly.indvar_next735.1.2, 16
  br i1 %exitcond830.1.2.not, label %polly.loop_header757, label %polly.loop_header731.1.2

polly.loop_header704.1:                           ; preds = %polly.loop_exit712, %polly.loop_exit712.1
  %polly.indvar707.1 = phi i64 [ %polly.indvar_next708.1, %polly.loop_exit712.1 ], [ 0, %polly.loop_exit712 ]
  %483 = mul nuw nsw i64 %polly.indvar707.1, 640
  %484 = trunc i64 %polly.indvar707.1 to i32
  %broadcast.splatinsert959 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat960 = shufflevector <4 x i32> %broadcast.splatinsert959, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body951

vector.body951:                                   ; preds = %vector.body951, %polly.loop_header704.1
  %index953 = phi i64 [ 0, %polly.loop_header704.1 ], [ %index.next954, %vector.body951 ]
  %vec.ind957 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.1 ], [ %vec.ind.next958, %vector.body951 ]
  %485 = add nuw nsw <4 x i64> %vec.ind957, <i64 32, i64 32, i64 32, i64 32>
  %486 = trunc <4 x i64> %485 to <4 x i32>
  %487 = mul <4 x i32> %broadcast.splat960, %486
  %488 = add <4 x i32> %487, <i32 3, i32 3, i32 3, i32 3>
  %489 = urem <4 x i32> %488, <i32 80, i32 80, i32 80, i32 80>
  %490 = sitofp <4 x i32> %489 to <4 x double>
  %491 = fmul fast <4 x double> %490, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %492 = extractelement <4 x i64> %485, i32 0
  %493 = shl i64 %492, 3
  %494 = add nuw nsw i64 %493, %483
  %495 = getelementptr i8, i8* %call, i64 %494
  %496 = bitcast i8* %495 to <4 x double>*
  store <4 x double> %491, <4 x double>* %496, align 8, !alias.scope !87, !noalias !89
  %index.next954 = add i64 %index953, 4
  %vec.ind.next958 = add <4 x i64> %vec.ind957, <i64 4, i64 4, i64 4, i64 4>
  %497 = icmp eq i64 %index.next954, 32
  br i1 %497, label %polly.loop_exit712.1, label %vector.body951, !llvm.loop !107

polly.loop_exit712.1:                             ; preds = %vector.body951
  %polly.indvar_next708.1 = add nuw nsw i64 %polly.indvar707.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar_next708.1, 32
  br i1 %exitcond839.1.not, label %polly.loop_header704.2, label %polly.loop_header704.1

polly.loop_header704.2:                           ; preds = %polly.loop_exit712.1, %polly.loop_exit712.2
  %polly.indvar707.2 = phi i64 [ %polly.indvar_next708.2, %polly.loop_exit712.2 ], [ 0, %polly.loop_exit712.1 ]
  %498 = mul nuw nsw i64 %polly.indvar707.2, 640
  %499 = trunc i64 %polly.indvar707.2 to i32
  %broadcast.splatinsert971 = insertelement <4 x i32> poison, i32 %499, i32 0
  %broadcast.splat972 = shufflevector <4 x i32> %broadcast.splatinsert971, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body963

vector.body963:                                   ; preds = %vector.body963, %polly.loop_header704.2
  %index965 = phi i64 [ 0, %polly.loop_header704.2 ], [ %index.next966, %vector.body963 ]
  %vec.ind969 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.2 ], [ %vec.ind.next970, %vector.body963 ]
  %500 = add nuw nsw <4 x i64> %vec.ind969, <i64 64, i64 64, i64 64, i64 64>
  %501 = trunc <4 x i64> %500 to <4 x i32>
  %502 = mul <4 x i32> %broadcast.splat972, %501
  %503 = add <4 x i32> %502, <i32 3, i32 3, i32 3, i32 3>
  %504 = urem <4 x i32> %503, <i32 80, i32 80, i32 80, i32 80>
  %505 = sitofp <4 x i32> %504 to <4 x double>
  %506 = fmul fast <4 x double> %505, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %507 = extractelement <4 x i64> %500, i32 0
  %508 = shl i64 %507, 3
  %509 = add nuw nsw i64 %508, %498
  %510 = getelementptr i8, i8* %call, i64 %509
  %511 = bitcast i8* %510 to <4 x double>*
  store <4 x double> %506, <4 x double>* %511, align 8, !alias.scope !87, !noalias !89
  %index.next966 = add i64 %index965, 4
  %vec.ind.next970 = add <4 x i64> %vec.ind969, <i64 4, i64 4, i64 4, i64 4>
  %512 = icmp eq i64 %index.next966, 16
  br i1 %512, label %polly.loop_exit712.2, label %vector.body963, !llvm.loop !108

polly.loop_exit712.2:                             ; preds = %vector.body963
  %polly.indvar_next708.2 = add nuw nsw i64 %polly.indvar707.2, 1
  %exitcond839.2.not = icmp eq i64 %polly.indvar_next708.2, 32
  br i1 %exitcond839.2.not, label %polly.loop_header704.1875, label %polly.loop_header704.2

polly.loop_header704.1875:                        ; preds = %polly.loop_exit712.2, %polly.loop_exit712.1886
  %polly.indvar707.1874 = phi i64 [ %polly.indvar_next708.1884, %polly.loop_exit712.1886 ], [ 0, %polly.loop_exit712.2 ]
  %513 = add nuw nsw i64 %polly.indvar707.1874, 32
  %514 = mul nuw nsw i64 %513, 640
  %515 = trunc i64 %513 to i32
  %broadcast.splatinsert985 = insertelement <4 x i32> poison, i32 %515, i32 0
  %broadcast.splat986 = shufflevector <4 x i32> %broadcast.splatinsert985, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %polly.loop_header704.1875
  %index977 = phi i64 [ 0, %polly.loop_header704.1875 ], [ %index.next978, %vector.body975 ]
  %vec.ind983 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header704.1875 ], [ %vec.ind.next984, %vector.body975 ]
  %516 = mul <4 x i32> %vec.ind983, %broadcast.splat986
  %517 = add <4 x i32> %516, <i32 3, i32 3, i32 3, i32 3>
  %518 = urem <4 x i32> %517, <i32 80, i32 80, i32 80, i32 80>
  %519 = sitofp <4 x i32> %518 to <4 x double>
  %520 = fmul fast <4 x double> %519, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %521 = shl i64 %index977, 3
  %522 = add nuw nsw i64 %521, %514
  %523 = getelementptr i8, i8* %call, i64 %522
  %524 = bitcast i8* %523 to <4 x double>*
  store <4 x double> %520, <4 x double>* %524, align 8, !alias.scope !87, !noalias !89
  %index.next978 = add i64 %index977, 4
  %vec.ind.next984 = add <4 x i32> %vec.ind983, <i32 4, i32 4, i32 4, i32 4>
  %525 = icmp eq i64 %index.next978, 32
  br i1 %525, label %polly.loop_exit712.1886, label %vector.body975, !llvm.loop !109

polly.loop_exit712.1886:                          ; preds = %vector.body975
  %polly.indvar_next708.1884 = add nuw nsw i64 %polly.indvar707.1874, 1
  %exitcond839.1885.not = icmp eq i64 %polly.indvar_next708.1884, 32
  br i1 %exitcond839.1885.not, label %polly.loop_header704.1.1, label %polly.loop_header704.1875

polly.loop_header704.1.1:                         ; preds = %polly.loop_exit712.1886, %polly.loop_exit712.1.1
  %polly.indvar707.1.1 = phi i64 [ %polly.indvar_next708.1.1, %polly.loop_exit712.1.1 ], [ 0, %polly.loop_exit712.1886 ]
  %526 = add nuw nsw i64 %polly.indvar707.1.1, 32
  %527 = mul nuw nsw i64 %526, 640
  %528 = trunc i64 %526 to i32
  %broadcast.splatinsert997 = insertelement <4 x i32> poison, i32 %528, i32 0
  %broadcast.splat998 = shufflevector <4 x i32> %broadcast.splatinsert997, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %polly.loop_header704.1.1
  %index991 = phi i64 [ 0, %polly.loop_header704.1.1 ], [ %index.next992, %vector.body989 ]
  %vec.ind995 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.1.1 ], [ %vec.ind.next996, %vector.body989 ]
  %529 = add nuw nsw <4 x i64> %vec.ind995, <i64 32, i64 32, i64 32, i64 32>
  %530 = trunc <4 x i64> %529 to <4 x i32>
  %531 = mul <4 x i32> %broadcast.splat998, %530
  %532 = add <4 x i32> %531, <i32 3, i32 3, i32 3, i32 3>
  %533 = urem <4 x i32> %532, <i32 80, i32 80, i32 80, i32 80>
  %534 = sitofp <4 x i32> %533 to <4 x double>
  %535 = fmul fast <4 x double> %534, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %536 = extractelement <4 x i64> %529, i32 0
  %537 = shl i64 %536, 3
  %538 = add nuw nsw i64 %537, %527
  %539 = getelementptr i8, i8* %call, i64 %538
  %540 = bitcast i8* %539 to <4 x double>*
  store <4 x double> %535, <4 x double>* %540, align 8, !alias.scope !87, !noalias !89
  %index.next992 = add i64 %index991, 4
  %vec.ind.next996 = add <4 x i64> %vec.ind995, <i64 4, i64 4, i64 4, i64 4>
  %541 = icmp eq i64 %index.next992, 32
  br i1 %541, label %polly.loop_exit712.1.1, label %vector.body989, !llvm.loop !110

polly.loop_exit712.1.1:                           ; preds = %vector.body989
  %polly.indvar_next708.1.1 = add nuw nsw i64 %polly.indvar707.1.1, 1
  %exitcond839.1.1.not = icmp eq i64 %polly.indvar_next708.1.1, 32
  br i1 %exitcond839.1.1.not, label %polly.loop_header704.2.1, label %polly.loop_header704.1.1

polly.loop_header704.2.1:                         ; preds = %polly.loop_exit712.1.1, %polly.loop_exit712.2.1
  %polly.indvar707.2.1 = phi i64 [ %polly.indvar_next708.2.1, %polly.loop_exit712.2.1 ], [ 0, %polly.loop_exit712.1.1 ]
  %542 = add nuw nsw i64 %polly.indvar707.2.1, 32
  %543 = mul nuw nsw i64 %542, 640
  %544 = trunc i64 %542 to i32
  %broadcast.splatinsert1009 = insertelement <4 x i32> poison, i32 %544, i32 0
  %broadcast.splat1010 = shufflevector <4 x i32> %broadcast.splatinsert1009, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %polly.loop_header704.2.1
  %index1003 = phi i64 [ 0, %polly.loop_header704.2.1 ], [ %index.next1004, %vector.body1001 ]
  %vec.ind1007 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.2.1 ], [ %vec.ind.next1008, %vector.body1001 ]
  %545 = add nuw nsw <4 x i64> %vec.ind1007, <i64 64, i64 64, i64 64, i64 64>
  %546 = trunc <4 x i64> %545 to <4 x i32>
  %547 = mul <4 x i32> %broadcast.splat1010, %546
  %548 = add <4 x i32> %547, <i32 3, i32 3, i32 3, i32 3>
  %549 = urem <4 x i32> %548, <i32 80, i32 80, i32 80, i32 80>
  %550 = sitofp <4 x i32> %549 to <4 x double>
  %551 = fmul fast <4 x double> %550, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %552 = extractelement <4 x i64> %545, i32 0
  %553 = shl i64 %552, 3
  %554 = add nuw nsw i64 %553, %543
  %555 = getelementptr i8, i8* %call, i64 %554
  %556 = bitcast i8* %555 to <4 x double>*
  store <4 x double> %551, <4 x double>* %556, align 8, !alias.scope !87, !noalias !89
  %index.next1004 = add i64 %index1003, 4
  %vec.ind.next1008 = add <4 x i64> %vec.ind1007, <i64 4, i64 4, i64 4, i64 4>
  %557 = icmp eq i64 %index.next1004, 16
  br i1 %557, label %polly.loop_exit712.2.1, label %vector.body1001, !llvm.loop !111

polly.loop_exit712.2.1:                           ; preds = %vector.body1001
  %polly.indvar_next708.2.1 = add nuw nsw i64 %polly.indvar707.2.1, 1
  %exitcond839.2.1.not = icmp eq i64 %polly.indvar_next708.2.1, 32
  br i1 %exitcond839.2.1.not, label %polly.loop_header704.2889, label %polly.loop_header704.2.1

polly.loop_header704.2889:                        ; preds = %polly.loop_exit712.2.1, %polly.loop_exit712.2900
  %polly.indvar707.2888 = phi i64 [ %polly.indvar_next708.2898, %polly.loop_exit712.2900 ], [ 0, %polly.loop_exit712.2.1 ]
  %558 = add nuw nsw i64 %polly.indvar707.2888, 64
  %559 = mul nuw nsw i64 %558, 640
  %560 = trunc i64 %558 to i32
  %broadcast.splatinsert1023 = insertelement <4 x i32> poison, i32 %560, i32 0
  %broadcast.splat1024 = shufflevector <4 x i32> %broadcast.splatinsert1023, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %polly.loop_header704.2889
  %index1015 = phi i64 [ 0, %polly.loop_header704.2889 ], [ %index.next1016, %vector.body1013 ]
  %vec.ind1021 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header704.2889 ], [ %vec.ind.next1022, %vector.body1013 ]
  %561 = mul <4 x i32> %vec.ind1021, %broadcast.splat1024
  %562 = add <4 x i32> %561, <i32 3, i32 3, i32 3, i32 3>
  %563 = urem <4 x i32> %562, <i32 80, i32 80, i32 80, i32 80>
  %564 = sitofp <4 x i32> %563 to <4 x double>
  %565 = fmul fast <4 x double> %564, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %566 = shl i64 %index1015, 3
  %567 = add nuw nsw i64 %566, %559
  %568 = getelementptr i8, i8* %call, i64 %567
  %569 = bitcast i8* %568 to <4 x double>*
  store <4 x double> %565, <4 x double>* %569, align 8, !alias.scope !87, !noalias !89
  %index.next1016 = add i64 %index1015, 4
  %vec.ind.next1022 = add <4 x i32> %vec.ind1021, <i32 4, i32 4, i32 4, i32 4>
  %570 = icmp eq i64 %index.next1016, 32
  br i1 %570, label %polly.loop_exit712.2900, label %vector.body1013, !llvm.loop !112

polly.loop_exit712.2900:                          ; preds = %vector.body1013
  %polly.indvar_next708.2898 = add nuw nsw i64 %polly.indvar707.2888, 1
  %exitcond839.2899.not = icmp eq i64 %polly.indvar_next708.2898, 16
  br i1 %exitcond839.2899.not, label %polly.loop_header704.1.2, label %polly.loop_header704.2889

polly.loop_header704.1.2:                         ; preds = %polly.loop_exit712.2900, %polly.loop_exit712.1.2
  %polly.indvar707.1.2 = phi i64 [ %polly.indvar_next708.1.2, %polly.loop_exit712.1.2 ], [ 0, %polly.loop_exit712.2900 ]
  %571 = add nuw nsw i64 %polly.indvar707.1.2, 64
  %572 = mul nuw nsw i64 %571, 640
  %573 = trunc i64 %571 to i32
  %broadcast.splatinsert1035 = insertelement <4 x i32> poison, i32 %573, i32 0
  %broadcast.splat1036 = shufflevector <4 x i32> %broadcast.splatinsert1035, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %polly.loop_header704.1.2
  %index1029 = phi i64 [ 0, %polly.loop_header704.1.2 ], [ %index.next1030, %vector.body1027 ]
  %vec.ind1033 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.1.2 ], [ %vec.ind.next1034, %vector.body1027 ]
  %574 = add nuw nsw <4 x i64> %vec.ind1033, <i64 32, i64 32, i64 32, i64 32>
  %575 = trunc <4 x i64> %574 to <4 x i32>
  %576 = mul <4 x i32> %broadcast.splat1036, %575
  %577 = add <4 x i32> %576, <i32 3, i32 3, i32 3, i32 3>
  %578 = urem <4 x i32> %577, <i32 80, i32 80, i32 80, i32 80>
  %579 = sitofp <4 x i32> %578 to <4 x double>
  %580 = fmul fast <4 x double> %579, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %581 = extractelement <4 x i64> %574, i32 0
  %582 = shl i64 %581, 3
  %583 = add nuw nsw i64 %582, %572
  %584 = getelementptr i8, i8* %call, i64 %583
  %585 = bitcast i8* %584 to <4 x double>*
  store <4 x double> %580, <4 x double>* %585, align 8, !alias.scope !87, !noalias !89
  %index.next1030 = add i64 %index1029, 4
  %vec.ind.next1034 = add <4 x i64> %vec.ind1033, <i64 4, i64 4, i64 4, i64 4>
  %586 = icmp eq i64 %index.next1030, 32
  br i1 %586, label %polly.loop_exit712.1.2, label %vector.body1027, !llvm.loop !113

polly.loop_exit712.1.2:                           ; preds = %vector.body1027
  %polly.indvar_next708.1.2 = add nuw nsw i64 %polly.indvar707.1.2, 1
  %exitcond839.1.2.not = icmp eq i64 %polly.indvar_next708.1.2, 16
  br i1 %exitcond839.1.2.not, label %polly.loop_header704.2.2, label %polly.loop_header704.1.2

polly.loop_header704.2.2:                         ; preds = %polly.loop_exit712.1.2, %polly.loop_exit712.2.2
  %polly.indvar707.2.2 = phi i64 [ %polly.indvar_next708.2.2, %polly.loop_exit712.2.2 ], [ 0, %polly.loop_exit712.1.2 ]
  %587 = add nuw nsw i64 %polly.indvar707.2.2, 64
  %588 = mul nuw nsw i64 %587, 640
  %589 = trunc i64 %587 to i32
  %broadcast.splatinsert1047 = insertelement <4 x i32> poison, i32 %589, i32 0
  %broadcast.splat1048 = shufflevector <4 x i32> %broadcast.splatinsert1047, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1039

vector.body1039:                                  ; preds = %vector.body1039, %polly.loop_header704.2.2
  %index1041 = phi i64 [ 0, %polly.loop_header704.2.2 ], [ %index.next1042, %vector.body1039 ]
  %vec.ind1045 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header704.2.2 ], [ %vec.ind.next1046, %vector.body1039 ]
  %590 = add nuw nsw <4 x i64> %vec.ind1045, <i64 64, i64 64, i64 64, i64 64>
  %591 = trunc <4 x i64> %590 to <4 x i32>
  %592 = mul <4 x i32> %broadcast.splat1048, %591
  %593 = add <4 x i32> %592, <i32 3, i32 3, i32 3, i32 3>
  %594 = urem <4 x i32> %593, <i32 80, i32 80, i32 80, i32 80>
  %595 = sitofp <4 x i32> %594 to <4 x double>
  %596 = fmul fast <4 x double> %595, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %597 = extractelement <4 x i64> %590, i32 0
  %598 = shl i64 %597, 3
  %599 = add nuw nsw i64 %598, %588
  %600 = getelementptr i8, i8* %call, i64 %599
  %601 = bitcast i8* %600 to <4 x double>*
  store <4 x double> %596, <4 x double>* %601, align 8, !alias.scope !87, !noalias !89
  %index.next1042 = add i64 %index1041, 4
  %vec.ind.next1046 = add <4 x i64> %vec.ind1045, <i64 4, i64 4, i64 4, i64 4>
  %602 = icmp eq i64 %index.next1042, 16
  br i1 %602, label %polly.loop_exit712.2.2, label %vector.body1039, !llvm.loop !114

polly.loop_exit712.2.2:                           ; preds = %vector.body1039
  %polly.indvar_next708.2.2 = add nuw nsw i64 %polly.indvar707.2.2, 1
  %exitcond839.2.2.not = icmp eq i64 %polly.indvar_next708.2.2, 16
  br i1 %exitcond839.2.2.not, label %polly.loop_header731, label %polly.loop_header704.2.2
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
declare i64 @llvm.smax.i64(i64, i64) #5

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
!33 = !{!"llvm.loop.tile.size", i32 20}
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
!44 = !{!"llvm.loop.tile.size", i32 64}
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
