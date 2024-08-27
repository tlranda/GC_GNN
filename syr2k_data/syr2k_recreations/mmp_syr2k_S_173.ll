; ModuleID = 'syr2k_recreations//mmp_syr2k_S_173.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_173.c"
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
  %call739 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1591 = bitcast i8* %call1 to double*
  %polly.access.call1600 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1600, %call2
  %polly.access.call2620 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2620, %call1
  %2 = or i1 %0, %1
  %polly.access.call640 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call640, %call2
  %4 = icmp ule i8* %polly.access.call2620, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call640, %call1
  %8 = icmp ule i8* %polly.access.call1600, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header725, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep924 = getelementptr i8, i8* %call2, i64 %12
  %scevgep923 = getelementptr i8, i8* %call2, i64 %11
  %scevgep922 = getelementptr i8, i8* %call1, i64 %12
  %scevgep921 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep921, %scevgep924
  %bound1 = icmp ult i8* %scevgep923, %scevgep922
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
  br i1 %exitcond18.not.i, label %vector.ph928, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph928:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert935 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat936 = shufflevector <4 x i64> %broadcast.splatinsert935, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph928
  %index929 = phi i64 [ 0, %vector.ph928 ], [ %index.next930, %vector.body927 ]
  %vec.ind933 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph928 ], [ %vec.ind.next934, %vector.body927 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind933, %broadcast.splat936
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv7.i, i64 %index929
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next930 = add i64 %index929, 4
  %vec.ind.next934 = add <4 x i64> %vec.ind933, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next930, 80
  br i1 %40, label %for.inc41.i, label %vector.body927, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body927
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph928, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit786.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start425, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1281, label %vector.ph1210

vector.ph1210:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1210
  %index1211 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1212, %vector.body1209 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i, i64 %index1211
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1212 = add i64 %index1211, 4
  %46 = icmp eq i64 %index.next1212, %n.vec
  br i1 %46, label %middle.block1207, label %vector.body1209, !llvm.loop !18

middle.block1207:                                 ; preds = %vector.body1209
  %cmp.n1214 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1214, label %for.inc6.i, label %for.body3.i46.preheader1281

for.body3.i46.preheader1281:                      ; preds = %for.body3.i46.preheader, %middle.block1207
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1207 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1281, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1281 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1207, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit551.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start261, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1230 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1230, label %for.body3.i60.preheader1280, label %vector.ph1231

vector.ph1231:                                    ; preds = %for.body3.i60.preheader
  %n.vec1233 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1231
  %index1234 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1235, %vector.body1229 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i52, i64 %index1234
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1238 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1238, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1235 = add i64 %index1234, 4
  %57 = icmp eq i64 %index.next1235, %n.vec1233
  br i1 %57, label %middle.block1227, label %vector.body1229, !llvm.loop !60

middle.block1227:                                 ; preds = %vector.body1229
  %cmp.n1237 = icmp eq i64 %indvars.iv21.i52, %n.vec1233
  br i1 %cmp.n1237, label %for.inc6.i63, label %for.body3.i60.preheader1280

for.body3.i60.preheader1280:                      ; preds = %for.body3.i60.preheader, %middle.block1227
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1233, %middle.block1227 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1280, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1280 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1227, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit387.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1256 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1256, label %for.body3.i99.preheader1279, label %vector.ph1257

vector.ph1257:                                    ; preds = %for.body3.i99.preheader
  %n.vec1259 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1255 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i91, i64 %index1260
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1264 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1264, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1261 = add i64 %index1260, 4
  %68 = icmp eq i64 %index.next1261, %n.vec1259
  br i1 %68, label %middle.block1253, label %vector.body1255, !llvm.loop !62

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1263 = icmp eq i64 %indvars.iv21.i91, %n.vec1259
  br i1 %cmp.n1263, label %for.inc6.i102, label %for.body3.i99.preheader1279

for.body3.i99.preheader1279:                      ; preds = %for.body3.i99.preheader, %middle.block1253
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1259, %middle.block1253 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1279, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1279 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1253, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call739, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1268 = phi i64 [ %indvar.next1269, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1268, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1270 = icmp ult i64 %88, 4
  br i1 %min.iters.check1270, label %polly.loop_header191.preheader, label %vector.ph1271

vector.ph1271:                                    ; preds = %polly.loop_header
  %n.vec1273 = and i64 %88, -4
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1267 ]
  %90 = shl nuw nsw i64 %index1274, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1278 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1278, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1275 = add i64 %index1274, 4
  %95 = icmp eq i64 %index.next1275, %n.vec1273
  br i1 %95, label %middle.block1265, label %vector.body1267, !llvm.loop !74

middle.block1265:                                 ; preds = %vector.body1267
  %cmp.n1277 = icmp eq i64 %88, %n.vec1273
  br i1 %cmp.n1277, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1265
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1273, %middle.block1265 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1265
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1269 = add i64 %indvar1268, 1
  br i1 %exitcond813.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond812.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199.preheader
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar208, 80
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next209, 60
  br i1 %exitcond805.not, label %polly.loop_header221, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %polly.access.mul.call1218 = mul nuw nsw i64 %polly.indvar214, 60
  %polly.access.add.call1219 = add nuw nsw i64 %polly.access.mul.call1218, %polly.indvar208
  %polly.access.call1220 = getelementptr double, double* %polly.access.cast.call1591, i64 %polly.access.add.call1219
  %polly.access.call1220.load = load double, double* %polly.access.call1220, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1220.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, 80
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header221:                             ; preds = %polly.loop_exit213, %polly.loop_exit229
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_exit213 ]
  %97 = shl nuw nsw i64 %polly.indvar224, 3
  %scevgep243 = getelementptr i8, i8* %call2, i64 %97
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar224, 80
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next225, 60
  br i1 %exitcond810.not, label %polly.loop_header205.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv806, i64 31)
  %98 = mul nuw nsw i64 %polly.indvar230, 480
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %98
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %99 = mul nuw nsw i64 %polly.indvar230, 640
  %scevgep255 = getelementptr i8, i8* %call, i64 %99
  %_p_scalar_246.pre = load double, double* %scevgep244245, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1252 = add nuw nsw i64 %polly.indvar230, %polly.access.mul.Packed_MemRef_call1239
  %polly.access.Packed_MemRef_call1253 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252
  %_p_scalar_254 = load double, double* %polly.access.Packed_MemRef_call1253, align 8
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 1
  %exitcond809.not = icmp eq i64 %indvars.iv.next807, 80
  br i1 %exitcond809.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_header233 ]
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1239
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  %_p_scalar_242 = load double, double* %polly.access.Packed_MemRef_call1241, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_246.pre, %_p_scalar_242
  %100 = mul nuw nsw i64 %polly.indvar236, 480
  %scevgep248 = getelementptr i8, i8* %scevgep243, i64 %100
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %101 = shl i64 %polly.indvar236, 3
  %scevgep256 = getelementptr i8, i8* %scevgep255, i64 %101
  %scevgep256257 = bitcast i8* %scevgep256 to double*
  %_p_scalar_258 = load double, double* %scevgep256257, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_258
  store double %p_add42.i118, double* %scevgep256257, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond808.not = icmp eq i64 %polly.indvar236, %smin
  br i1 %exitcond808.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start261:                                   ; preds = %kernel_syr2k.exit
  %malloccall263 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header347

polly.loop_header347:                             ; preds = %polly.loop_exit355, %polly.start261
  %indvar1242 = phi i64 [ %indvar.next1243, %polly.loop_exit355 ], [ 0, %polly.start261 ]
  %polly.indvar350 = phi i64 [ %polly.indvar_next351, %polly.loop_exit355 ], [ 1, %polly.start261 ]
  %102 = add i64 %indvar1242, 1
  %103 = mul nuw nsw i64 %polly.indvar350, 640
  %scevgep359 = getelementptr i8, i8* %call, i64 %103
  %min.iters.check1244 = icmp ult i64 %102, 4
  br i1 %min.iters.check1244, label %polly.loop_header353.preheader, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header347
  %n.vec1247 = and i64 %102, -4
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1241 ]
  %104 = shl nuw nsw i64 %index1248, 3
  %105 = getelementptr i8, i8* %scevgep359, i64 %104
  %106 = bitcast i8* %105 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %106, align 8, !alias.scope !79, !noalias !81
  %107 = fmul fast <4 x double> %wide.load1252, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %108 = bitcast i8* %105 to <4 x double>*
  store <4 x double> %107, <4 x double>* %108, align 8, !alias.scope !79, !noalias !81
  %index.next1249 = add i64 %index1248, 4
  %109 = icmp eq i64 %index.next1249, %n.vec1247
  br i1 %109, label %middle.block1239, label %vector.body1241, !llvm.loop !85

middle.block1239:                                 ; preds = %vector.body1241
  %cmp.n1251 = icmp eq i64 %102, %n.vec1247
  br i1 %cmp.n1251, label %polly.loop_exit355, label %polly.loop_header353.preheader

polly.loop_header353.preheader:                   ; preds = %polly.loop_header347, %middle.block1239
  %polly.indvar356.ph = phi i64 [ 0, %polly.loop_header347 ], [ %n.vec1247, %middle.block1239 ]
  br label %polly.loop_header353

polly.loop_exit355:                               ; preds = %polly.loop_header353, %middle.block1239
  %polly.indvar_next351 = add nuw nsw i64 %polly.indvar350, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next351, 80
  %indvar.next1243 = add i64 %indvar1242, 1
  br i1 %exitcond826.not, label %polly.loop_header363.preheader, label %polly.loop_header347

polly.loop_header363.preheader:                   ; preds = %polly.loop_exit355
  %Packed_MemRef_call1264 = bitcast i8* %malloccall263 to double*
  br label %polly.loop_header369

polly.loop_header353:                             ; preds = %polly.loop_header353.preheader, %polly.loop_header353
  %polly.indvar356 = phi i64 [ %polly.indvar_next357, %polly.loop_header353 ], [ %polly.indvar356.ph, %polly.loop_header353.preheader ]
  %110 = shl nuw nsw i64 %polly.indvar356, 3
  %scevgep360 = getelementptr i8, i8* %scevgep359, i64 %110
  %scevgep360361 = bitcast i8* %scevgep360 to double*
  %_p_scalar_362 = load double, double* %scevgep360361, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_362, 1.200000e+00
  store double %p_mul.i57, double* %scevgep360361, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next357 = add nuw nsw i64 %polly.indvar356, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next357, %polly.indvar350
  br i1 %exitcond825.not, label %polly.loop_exit355, label %polly.loop_header353, !llvm.loop !86

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.loop_header363.preheader
  %polly.indvar372 = phi i64 [ 0, %polly.loop_header363.preheader ], [ %polly.indvar_next373, %polly.loop_exit377 ]
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar372, 80
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next373, 60
  br i1 %exitcond817.not, label %polly.loop_header385, label %polly.loop_header369

polly.loop_header375:                             ; preds = %polly.loop_header375, %polly.loop_header369
  %polly.indvar378 = phi i64 [ 0, %polly.loop_header369 ], [ %polly.indvar_next379, %polly.loop_header375 ]
  %polly.access.mul.call1382 = mul nuw nsw i64 %polly.indvar378, 60
  %polly.access.add.call1383 = add nuw nsw i64 %polly.access.mul.call1382, %polly.indvar372
  %polly.access.call1384 = getelementptr double, double* %polly.access.cast.call1591, i64 %polly.access.add.call1383
  %polly.access.call1384.load = load double, double* %polly.access.call1384, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1264 = add nuw nsw i64 %polly.indvar378, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1264, i64 %polly.access.add.Packed_MemRef_call1264
  store double %polly.access.call1384.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next379, 80
  br i1 %exitcond816.not, label %polly.loop_exit377, label %polly.loop_header375

polly.loop_header385:                             ; preds = %polly.loop_exit377, %polly.loop_exit393
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_exit393 ], [ 0, %polly.loop_exit377 ]
  %111 = shl nuw nsw i64 %polly.indvar388, 3
  %scevgep407 = getelementptr i8, i8* %call2, i64 %111
  %polly.access.mul.Packed_MemRef_call1264403 = mul nuw nsw i64 %polly.indvar388, 80
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit399
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next389, 60
  br i1 %exitcond823.not, label %polly.loop_header369.1, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit399, %polly.loop_header385
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %polly.loop_exit399 ], [ 0, %polly.loop_header385 ]
  %polly.indvar394 = phi i64 [ %polly.indvar_next395, %polly.loop_exit399 ], [ 0, %polly.loop_header385 ]
  %smin820 = call i64 @llvm.smin.i64(i64 %indvars.iv818, i64 31)
  %112 = mul nuw nsw i64 %polly.indvar394, 480
  %scevgep408 = getelementptr i8, i8* %scevgep407, i64 %112
  %scevgep408409 = bitcast i8* %scevgep408 to double*
  %113 = mul nuw nsw i64 %polly.indvar394, 640
  %scevgep419 = getelementptr i8, i8* %call, i64 %113
  %_p_scalar_410.pre = load double, double* %scevgep408409, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1264416 = add nuw nsw i64 %polly.indvar394, %polly.access.mul.Packed_MemRef_call1264403
  %polly.access.Packed_MemRef_call1264417 = getelementptr double, double* %Packed_MemRef_call1264, i64 %polly.access.add.Packed_MemRef_call1264416
  %_p_scalar_418 = load double, double* %polly.access.Packed_MemRef_call1264417, align 8
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_header397
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1
  %exitcond822.not = icmp eq i64 %indvars.iv.next819, 80
  br i1 %exitcond822.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_header397, %polly.loop_header391
  %polly.indvar400 = phi i64 [ 0, %polly.loop_header391 ], [ %polly.indvar_next401, %polly.loop_header397 ]
  %polly.access.add.Packed_MemRef_call1264404 = add nuw nsw i64 %polly.indvar400, %polly.access.mul.Packed_MemRef_call1264403
  %polly.access.Packed_MemRef_call1264405 = getelementptr double, double* %Packed_MemRef_call1264, i64 %polly.access.add.Packed_MemRef_call1264404
  %_p_scalar_406 = load double, double* %polly.access.Packed_MemRef_call1264405, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_410.pre, %_p_scalar_406
  %114 = mul nuw nsw i64 %polly.indvar400, 480
  %scevgep412 = getelementptr i8, i8* %scevgep407, i64 %114
  %scevgep412413 = bitcast i8* %scevgep412 to double*
  %_p_scalar_414 = load double, double* %scevgep412413, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_418, %_p_scalar_414
  %115 = shl i64 %polly.indvar400, 3
  %scevgep420 = getelementptr i8, i8* %scevgep419, i64 %115
  %scevgep420421 = bitcast i8* %scevgep420 to double*
  %_p_scalar_422 = load double, double* %scevgep420421, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_422
  store double %p_add42.i79, double* %scevgep420421, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %exitcond821.not = icmp eq i64 %polly.indvar400, %smin820
  br i1 %exitcond821.not, label %polly.loop_exit399, label %polly.loop_header397

polly.start425:                                   ; preds = %init_array.exit
  %malloccall427 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header511

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.start425
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit519 ], [ 0, %polly.start425 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 1, %polly.start425 ]
  %116 = add i64 %indvar, 1
  %117 = mul nuw nsw i64 %polly.indvar514, 640
  %scevgep523 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1218 = icmp ult i64 %116, 4
  br i1 %min.iters.check1218, label %polly.loop_header517.preheader, label %vector.ph1219

vector.ph1219:                                    ; preds = %polly.loop_header511
  %n.vec1221 = and i64 %116, -4
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1217 ]
  %118 = shl nuw nsw i64 %index1222, 3
  %119 = getelementptr i8, i8* %scevgep523, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !89, !noalias !91
  %121 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !89, !noalias !91
  %index.next1223 = add i64 %index1222, 4
  %123 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %123, label %middle.block1215, label %vector.body1217, !llvm.loop !95

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1225 = icmp eq i64 %116, %n.vec1221
  br i1 %cmp.n1225, label %polly.loop_exit519, label %polly.loop_header517.preheader

polly.loop_header517.preheader:                   ; preds = %polly.loop_header511, %middle.block1215
  %polly.indvar520.ph = phi i64 [ 0, %polly.loop_header511 ], [ %n.vec1221, %middle.block1215 ]
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_header517, %middle.block1215
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next515, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond839.not, label %polly.loop_header527.preheader, label %polly.loop_header511

polly.loop_header527.preheader:                   ; preds = %polly.loop_exit519
  %Packed_MemRef_call1428 = bitcast i8* %malloccall427 to double*
  br label %polly.loop_header533

polly.loop_header517:                             ; preds = %polly.loop_header517.preheader, %polly.loop_header517
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_header517 ], [ %polly.indvar520.ph, %polly.loop_header517.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar520, 3
  %scevgep524 = getelementptr i8, i8* %scevgep523, i64 %124
  %scevgep524525 = bitcast i8* %scevgep524 to double*
  %_p_scalar_526 = load double, double* %scevgep524525, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_526, 1.200000e+00
  store double %p_mul.i, double* %scevgep524525, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next521, %polly.indvar514
  br i1 %exitcond838.not, label %polly.loop_exit519, label %polly.loop_header517, !llvm.loop !96

polly.loop_header533:                             ; preds = %polly.loop_exit541, %polly.loop_header527.preheader
  %polly.indvar536 = phi i64 [ 0, %polly.loop_header527.preheader ], [ %polly.indvar_next537, %polly.loop_exit541 ]
  %polly.access.mul.Packed_MemRef_call1428 = mul nuw nsw i64 %polly.indvar536, 80
  br label %polly.loop_header539

polly.loop_exit541:                               ; preds = %polly.loop_header539
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next537, 60
  br i1 %exitcond830.not, label %polly.loop_header549, label %polly.loop_header533

polly.loop_header539:                             ; preds = %polly.loop_header539, %polly.loop_header533
  %polly.indvar542 = phi i64 [ 0, %polly.loop_header533 ], [ %polly.indvar_next543, %polly.loop_header539 ]
  %polly.access.mul.call1546 = mul nuw nsw i64 %polly.indvar542, 60
  %polly.access.add.call1547 = add nuw nsw i64 %polly.access.mul.call1546, %polly.indvar536
  %polly.access.call1548 = getelementptr double, double* %polly.access.cast.call1591, i64 %polly.access.add.call1547
  %polly.access.call1548.load = load double, double* %polly.access.call1548, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1428 = add nuw nsw i64 %polly.indvar542, %polly.access.mul.Packed_MemRef_call1428
  %polly.access.Packed_MemRef_call1428 = getelementptr double, double* %Packed_MemRef_call1428, i64 %polly.access.add.Packed_MemRef_call1428
  store double %polly.access.call1548.load, double* %polly.access.Packed_MemRef_call1428, align 8
  %polly.indvar_next543 = add nuw nsw i64 %polly.indvar542, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next543, 80
  br i1 %exitcond829.not, label %polly.loop_exit541, label %polly.loop_header539

polly.loop_header549:                             ; preds = %polly.loop_exit541, %polly.loop_exit557
  %polly.indvar552 = phi i64 [ %polly.indvar_next553, %polly.loop_exit557 ], [ 0, %polly.loop_exit541 ]
  %125 = shl nuw nsw i64 %polly.indvar552, 3
  %scevgep571 = getelementptr i8, i8* %call2, i64 %125
  %polly.access.mul.Packed_MemRef_call1428567 = mul nuw nsw i64 %polly.indvar552, 80
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_exit563
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next553, 60
  br i1 %exitcond836.not, label %polly.loop_header533.1, label %polly.loop_header549

polly.loop_header555:                             ; preds = %polly.loop_exit563, %polly.loop_header549
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit563 ], [ 0, %polly.loop_header549 ]
  %polly.indvar558 = phi i64 [ %polly.indvar_next559, %polly.loop_exit563 ], [ 0, %polly.loop_header549 ]
  %smin833 = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 31)
  %126 = mul nuw nsw i64 %polly.indvar558, 480
  %scevgep572 = getelementptr i8, i8* %scevgep571, i64 %126
  %scevgep572573 = bitcast i8* %scevgep572 to double*
  %127 = mul nuw nsw i64 %polly.indvar558, 640
  %scevgep583 = getelementptr i8, i8* %call, i64 %127
  %_p_scalar_574.pre = load double, double* %scevgep572573, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1428580 = add nuw nsw i64 %polly.indvar558, %polly.access.mul.Packed_MemRef_call1428567
  %polly.access.Packed_MemRef_call1428581 = getelementptr double, double* %Packed_MemRef_call1428, i64 %polly.access.add.Packed_MemRef_call1428580
  %_p_scalar_582 = load double, double* %polly.access.Packed_MemRef_call1428581, align 8
  br label %polly.loop_header561

polly.loop_exit563:                               ; preds = %polly.loop_header561
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %indvars.iv.next832 = add nuw nsw i64 %indvars.iv831, 1
  %exitcond835.not = icmp eq i64 %indvars.iv.next832, 80
  br i1 %exitcond835.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header561:                             ; preds = %polly.loop_header561, %polly.loop_header555
  %polly.indvar564 = phi i64 [ 0, %polly.loop_header555 ], [ %polly.indvar_next565, %polly.loop_header561 ]
  %polly.access.add.Packed_MemRef_call1428568 = add nuw nsw i64 %polly.indvar564, %polly.access.mul.Packed_MemRef_call1428567
  %polly.access.Packed_MemRef_call1428569 = getelementptr double, double* %Packed_MemRef_call1428, i64 %polly.access.add.Packed_MemRef_call1428568
  %_p_scalar_570 = load double, double* %polly.access.Packed_MemRef_call1428569, align 8
  %p_mul27.i = fmul fast double %_p_scalar_574.pre, %_p_scalar_570
  %128 = mul nuw nsw i64 %polly.indvar564, 480
  %scevgep576 = getelementptr i8, i8* %scevgep571, i64 %128
  %scevgep576577 = bitcast i8* %scevgep576 to double*
  %_p_scalar_578 = load double, double* %scevgep576577, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_582, %_p_scalar_578
  %129 = shl i64 %polly.indvar564, 3
  %scevgep584 = getelementptr i8, i8* %scevgep583, i64 %129
  %scevgep584585 = bitcast i8* %scevgep584 to double*
  %_p_scalar_586 = load double, double* %scevgep584585, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_586
  store double %p_add42.i, double* %scevgep584585, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %exitcond834.not = icmp eq i64 %polly.indvar564, %smin833
  br i1 %exitcond834.not, label %polly.loop_exit563, label %polly.loop_header561

polly.loop_header725:                             ; preds = %entry, %polly.loop_exit733
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_exit733 ], [ 0, %entry ]
  %130 = mul nuw nsw i64 %polly.indvar728, 640
  %131 = trunc i64 %polly.indvar728 to i32
  %broadcast.splatinsert949 = insertelement <4 x i32> poison, i32 %131, i32 0
  %broadcast.splat950 = shufflevector <4 x i32> %broadcast.splatinsert949, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body939

vector.body939:                                   ; preds = %vector.body939, %polly.loop_header725
  %index941 = phi i64 [ 0, %polly.loop_header725 ], [ %index.next942, %vector.body939 ]
  %vec.ind947 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725 ], [ %vec.ind.next948, %vector.body939 ]
  %132 = mul <4 x i32> %vec.ind947, %broadcast.splat950
  %133 = add <4 x i32> %132, <i32 3, i32 3, i32 3, i32 3>
  %134 = urem <4 x i32> %133, <i32 80, i32 80, i32 80, i32 80>
  %135 = sitofp <4 x i32> %134 to <4 x double>
  %136 = fmul fast <4 x double> %135, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %137 = shl i64 %index941, 3
  %138 = add nuw nsw i64 %137, %130
  %139 = getelementptr i8, i8* %call, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %136, <4 x double>* %140, align 8, !alias.scope !99, !noalias !101
  %index.next942 = add i64 %index941, 4
  %vec.ind.next948 = add <4 x i32> %vec.ind947, <i32 4, i32 4, i32 4, i32 4>
  %141 = icmp eq i64 %index.next942, 32
  br i1 %141, label %polly.loop_exit733, label %vector.body939, !llvm.loop !104

polly.loop_exit733:                               ; preds = %vector.body939
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next729, 32
  br i1 %exitcond859.not, label %polly.loop_header725.1, label %polly.loop_header725

polly.loop_header752:                             ; preds = %polly.loop_exit733.2.2, %polly.loop_exit760
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %polly.loop_exit733.2.2 ]
  %142 = mul nuw nsw i64 %polly.indvar755, 480
  %143 = trunc i64 %polly.indvar755 to i32
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %143, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %polly.loop_header752
  %index1055 = phi i64 [ 0, %polly.loop_header752 ], [ %index.next1056, %vector.body1053 ]
  %vec.ind1061 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752 ], [ %vec.ind.next1062, %vector.body1053 ]
  %144 = mul <4 x i32> %vec.ind1061, %broadcast.splat1064
  %145 = add <4 x i32> %144, <i32 2, i32 2, i32 2, i32 2>
  %146 = urem <4 x i32> %145, <i32 60, i32 60, i32 60, i32 60>
  %147 = sitofp <4 x i32> %146 to <4 x double>
  %148 = fmul fast <4 x double> %147, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %149 = shl i64 %index1055, 3
  %150 = add i64 %149, %142
  %151 = getelementptr i8, i8* %call2, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %148, <4 x double>* %152, align 8, !alias.scope !103, !noalias !105
  %index.next1056 = add i64 %index1055, 4
  %vec.ind.next1062 = add <4 x i32> %vec.ind1061, <i32 4, i32 4, i32 4, i32 4>
  %153 = icmp eq i64 %index.next1056, 32
  br i1 %153, label %polly.loop_exit760, label %vector.body1053, !llvm.loop !106

polly.loop_exit760:                               ; preds = %vector.body1053
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next756, 32
  br i1 %exitcond850.not, label %polly.loop_header752.1, label %polly.loop_header752

polly.loop_header778:                             ; preds = %polly.loop_exit760.1.2, %polly.loop_exit786
  %polly.indvar781 = phi i64 [ %polly.indvar_next782, %polly.loop_exit786 ], [ 0, %polly.loop_exit760.1.2 ]
  %154 = mul nuw nsw i64 %polly.indvar781, 480
  %155 = trunc i64 %polly.indvar781 to i32
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %polly.loop_header778
  %index1133 = phi i64 [ 0, %polly.loop_header778 ], [ %index.next1134, %vector.body1131 ]
  %vec.ind1139 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778 ], [ %vec.ind.next1140, %vector.body1131 ]
  %156 = mul <4 x i32> %vec.ind1139, %broadcast.splat1142
  %157 = add <4 x i32> %156, <i32 1, i32 1, i32 1, i32 1>
  %158 = urem <4 x i32> %157, <i32 80, i32 80, i32 80, i32 80>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %161 = shl i64 %index1133, 3
  %162 = add i64 %161, %154
  %163 = getelementptr i8, i8* %call1, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !102, !noalias !107
  %index.next1134 = add i64 %index1133, 4
  %vec.ind.next1140 = add <4 x i32> %vec.ind1139, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next1134, 32
  br i1 %165, label %polly.loop_exit786, label %vector.body1131, !llvm.loop !108

polly.loop_exit786:                               ; preds = %vector.body1131
  %polly.indvar_next782 = add nuw nsw i64 %polly.indvar781, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next782, 32
  br i1 %exitcond844.not, label %polly.loop_header778.1, label %polly.loop_header778

polly.loop_header205.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit213.1
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit229 ]
  %polly.access.mul.Packed_MemRef_call1.1 = mul nuw nsw i64 %polly.indvar208.1, 80
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_header211.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_header211.1 ]
  %166 = mul i64 %polly.indvar214.1, 60
  %polly.access.mul.call1218.1 = add i64 %166, 1920
  %polly.access.add.call1219.1 = add nuw nsw i64 %polly.access.mul.call1218.1, %polly.indvar208.1
  %polly.access.call1220.1 = getelementptr double, double* %polly.access.cast.call1591, i64 %polly.access.add.call1219.1
  %polly.access.call1220.load.1 = load double, double* %polly.access.call1220.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.1 = add nuw nsw i64 %polly.indvar214.1, %polly.access.mul.Packed_MemRef_call1.1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1220.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next215.1, 48
  br i1 %exitcond.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_header211.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %exitcond805.1.not = icmp eq i64 %polly.indvar_next209.1, 60
  br i1 %exitcond805.1.not, label %polly.loop_header221.1, label %polly.loop_header205.1

polly.loop_header221.1:                           ; preds = %polly.loop_exit213.1, %polly.loop_exit229.1
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit213.1 ]
  %167 = shl nuw nsw i64 %polly.indvar224.1, 3
  %scevgep243.1 = getelementptr i8, i8* %call2, i64 %167
  %polly.access.mul.Packed_MemRef_call1239.1 = mul nuw nsw i64 %polly.indvar224.1, 80
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %indvars.iv806.1 = phi i64 [ %indvars.iv.next807.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header221.1 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 32, %polly.loop_header221.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv806.1, i64 31)
  %168 = add nsw i64 %polly.indvar230.1, -32
  %169 = mul nuw nsw i64 %polly.indvar230.1, 480
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %169
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %170 = mul nuw nsw i64 %polly.indvar230.1, 640
  %scevgep255.1 = getelementptr i8, i8* %call, i64 %170
  %_p_scalar_246.pre.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1252.1 = add nuw nsw i64 %168, %polly.access.mul.Packed_MemRef_call1239.1
  %polly.access.Packed_MemRef_call1253.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252.1
  %_p_scalar_254.1 = load double, double* %polly.access.Packed_MemRef_call1253.1, align 8
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_header233.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_header233.1 ]
  %171 = add nuw nsw i64 %polly.indvar236.1, 32
  %polly.access.add.Packed_MemRef_call1240.1 = add nuw nsw i64 %polly.indvar236.1, %polly.access.mul.Packed_MemRef_call1239.1
  %polly.access.Packed_MemRef_call1241.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.1
  %_p_scalar_242.1 = load double, double* %polly.access.Packed_MemRef_call1241.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_246.pre.1, %_p_scalar_242.1
  %172 = mul nuw nsw i64 %171, 480
  %scevgep248.1 = getelementptr i8, i8* %scevgep243.1, i64 %172
  %scevgep248249.1 = bitcast i8* %scevgep248.1 to double*
  %_p_scalar_250.1 = load double, double* %scevgep248249.1, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.1 = fmul fast double %_p_scalar_254.1, %_p_scalar_250.1
  %173 = shl i64 %171, 3
  %scevgep256.1 = getelementptr i8, i8* %scevgep255.1, i64 %173
  %scevgep256257.1 = bitcast i8* %scevgep256.1 to double*
  %_p_scalar_258.1 = load double, double* %scevgep256257.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_258.1
  store double %p_add42.i118.1, double* %scevgep256257.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond808.1.not = icmp eq i64 %polly.indvar236.1, %smin.1
  br i1 %exitcond808.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_header233.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next807.1 = add nuw nsw i64 %indvars.iv806.1, 1
  %exitcond809.1.not = icmp eq i64 %indvars.iv.next807.1, 48
  br i1 %exitcond809.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %exitcond810.1.not = icmp eq i64 %polly.indvar_next225.1, 60
  br i1 %exitcond810.1.not, label %polly.loop_header205.2, label %polly.loop_header221.1

polly.loop_header205.2:                           ; preds = %polly.loop_exit229.1, %polly.loop_exit213.2
  %polly.indvar208.2 = phi i64 [ %polly.indvar_next209.2, %polly.loop_exit213.2 ], [ 0, %polly.loop_exit229.1 ]
  %polly.access.mul.Packed_MemRef_call1.2 = mul nuw nsw i64 %polly.indvar208.2, 80
  br label %polly.loop_header211.2

polly.loop_header211.2:                           ; preds = %polly.loop_header211.2, %polly.loop_header205.2
  %polly.indvar214.2 = phi i64 [ 0, %polly.loop_header205.2 ], [ %polly.indvar_next215.2, %polly.loop_header211.2 ]
  %174 = mul i64 %polly.indvar214.2, 60
  %polly.access.mul.call1218.2 = add i64 %174, 3840
  %polly.access.add.call1219.2 = add nuw nsw i64 %polly.access.mul.call1218.2, %polly.indvar208.2
  %polly.access.call1220.2 = getelementptr double, double* %polly.access.cast.call1591, i64 %polly.access.add.call1219.2
  %polly.access.call1220.load.2 = load double, double* %polly.access.call1220.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.2 = add nuw nsw i64 %polly.indvar214.2, %polly.access.mul.Packed_MemRef_call1.2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1220.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next215.2, 16
  br i1 %exitcond.2.not, label %polly.loop_exit213.2, label %polly.loop_header211.2

polly.loop_exit213.2:                             ; preds = %polly.loop_header211.2
  %polly.indvar_next209.2 = add nuw nsw i64 %polly.indvar208.2, 1
  %exitcond805.2.not = icmp eq i64 %polly.indvar_next209.2, 60
  br i1 %exitcond805.2.not, label %polly.loop_header221.2, label %polly.loop_header205.2

polly.loop_header221.2:                           ; preds = %polly.loop_exit213.2, %polly.loop_exit229.2
  %polly.indvar224.2 = phi i64 [ %polly.indvar_next225.2, %polly.loop_exit229.2 ], [ 0, %polly.loop_exit213.2 ]
  %175 = shl nuw nsw i64 %polly.indvar224.2, 3
  %scevgep243.2 = getelementptr i8, i8* %call2, i64 %175
  %polly.access.mul.Packed_MemRef_call1239.2 = mul nuw nsw i64 %polly.indvar224.2, 80
  br label %polly.loop_header227.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.2, %polly.loop_header221.2
  %indvars.iv806.2 = phi i64 [ %indvars.iv.next807.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_header221.2 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 64, %polly.loop_header221.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv806.2, i64 31)
  %176 = add nsw i64 %polly.indvar230.2, -64
  %177 = mul nuw nsw i64 %polly.indvar230.2, 480
  %scevgep244.2 = getelementptr i8, i8* %scevgep243.2, i64 %177
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %178 = mul nuw nsw i64 %polly.indvar230.2, 640
  %scevgep255.2 = getelementptr i8, i8* %call, i64 %178
  %_p_scalar_246.pre.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1252.2 = add nuw nsw i64 %176, %polly.access.mul.Packed_MemRef_call1239.2
  %polly.access.Packed_MemRef_call1253.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252.2
  %_p_scalar_254.2 = load double, double* %polly.access.Packed_MemRef_call1253.2, align 8
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_header233.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_header233.2 ]
  %179 = add nuw nsw i64 %polly.indvar236.2, 64
  %polly.access.add.Packed_MemRef_call1240.2 = add nuw nsw i64 %polly.indvar236.2, %polly.access.mul.Packed_MemRef_call1239.2
  %polly.access.Packed_MemRef_call1241.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.2
  %_p_scalar_242.2 = load double, double* %polly.access.Packed_MemRef_call1241.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_246.pre.2, %_p_scalar_242.2
  %180 = mul nuw nsw i64 %179, 480
  %scevgep248.2 = getelementptr i8, i8* %scevgep243.2, i64 %180
  %scevgep248249.2 = bitcast i8* %scevgep248.2 to double*
  %_p_scalar_250.2 = load double, double* %scevgep248249.2, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.2 = fmul fast double %_p_scalar_254.2, %_p_scalar_250.2
  %181 = shl i64 %179, 3
  %scevgep256.2 = getelementptr i8, i8* %scevgep255.2, i64 %181
  %scevgep256257.2 = bitcast i8* %scevgep256.2 to double*
  %_p_scalar_258.2 = load double, double* %scevgep256257.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_258.2
  store double %p_add42.i118.2, double* %scevgep256257.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond808.2.not = icmp eq i64 %polly.indvar236.2, %smin.2
  br i1 %exitcond808.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_header233.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %indvars.iv.next807.2 = add nuw nsw i64 %indvars.iv806.2, 1
  %exitcond809.2.not = icmp eq i64 %indvars.iv.next807.2, 16
  br i1 %exitcond809.2.not, label %polly.loop_exit229.2, label %polly.loop_header227.2

polly.loop_exit229.2:                             ; preds = %polly.loop_exit235.2
  %polly.indvar_next225.2 = add nuw nsw i64 %polly.indvar224.2, 1
  %exitcond810.2.not = icmp eq i64 %polly.indvar_next225.2, 60
  br i1 %exitcond810.2.not, label %polly.loop_exit223.2, label %polly.loop_header221.2

polly.loop_exit223.2:                             ; preds = %polly.loop_exit229.2
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header369.1:                           ; preds = %polly.loop_exit393, %polly.loop_exit377.1
  %polly.indvar372.1 = phi i64 [ %polly.indvar_next373.1, %polly.loop_exit377.1 ], [ 0, %polly.loop_exit393 ]
  %polly.access.mul.Packed_MemRef_call1264.1 = mul nuw nsw i64 %polly.indvar372.1, 80
  br label %polly.loop_header375.1

polly.loop_header375.1:                           ; preds = %polly.loop_header375.1, %polly.loop_header369.1
  %polly.indvar378.1 = phi i64 [ 0, %polly.loop_header369.1 ], [ %polly.indvar_next379.1, %polly.loop_header375.1 ]
  %182 = mul i64 %polly.indvar378.1, 60
  %polly.access.mul.call1382.1 = add i64 %182, 1920
  %polly.access.add.call1383.1 = add nuw nsw i64 %polly.access.mul.call1382.1, %polly.indvar372.1
  %polly.access.call1384.1 = getelementptr double, double* %polly.access.cast.call1591, i64 %polly.access.add.call1383.1
  %polly.access.call1384.load.1 = load double, double* %polly.access.call1384.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1264.1 = add nuw nsw i64 %polly.indvar378.1, %polly.access.mul.Packed_MemRef_call1264.1
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1264, i64 %polly.access.add.Packed_MemRef_call1264.1
  store double %polly.access.call1384.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.indvar_next379.1 = add nuw nsw i64 %polly.indvar378.1, 1
  %exitcond816.1.not = icmp eq i64 %polly.indvar_next379.1, 48
  br i1 %exitcond816.1.not, label %polly.loop_exit377.1, label %polly.loop_header375.1

polly.loop_exit377.1:                             ; preds = %polly.loop_header375.1
  %polly.indvar_next373.1 = add nuw nsw i64 %polly.indvar372.1, 1
  %exitcond817.1.not = icmp eq i64 %polly.indvar_next373.1, 60
  br i1 %exitcond817.1.not, label %polly.loop_header385.1, label %polly.loop_header369.1

polly.loop_header385.1:                           ; preds = %polly.loop_exit377.1, %polly.loop_exit393.1
  %polly.indvar388.1 = phi i64 [ %polly.indvar_next389.1, %polly.loop_exit393.1 ], [ 0, %polly.loop_exit377.1 ]
  %183 = shl nuw nsw i64 %polly.indvar388.1, 3
  %scevgep407.1 = getelementptr i8, i8* %call2, i64 %183
  %polly.access.mul.Packed_MemRef_call1264403.1 = mul nuw nsw i64 %polly.indvar388.1, 80
  br label %polly.loop_header391.1

polly.loop_header391.1:                           ; preds = %polly.loop_exit399.1, %polly.loop_header385.1
  %indvars.iv818.1 = phi i64 [ %indvars.iv.next819.1, %polly.loop_exit399.1 ], [ 0, %polly.loop_header385.1 ]
  %polly.indvar394.1 = phi i64 [ %polly.indvar_next395.1, %polly.loop_exit399.1 ], [ 32, %polly.loop_header385.1 ]
  %smin820.1 = call i64 @llvm.smin.i64(i64 %indvars.iv818.1, i64 31)
  %184 = add nsw i64 %polly.indvar394.1, -32
  %185 = mul nuw nsw i64 %polly.indvar394.1, 480
  %scevgep408.1 = getelementptr i8, i8* %scevgep407.1, i64 %185
  %scevgep408409.1 = bitcast i8* %scevgep408.1 to double*
  %186 = mul nuw nsw i64 %polly.indvar394.1, 640
  %scevgep419.1 = getelementptr i8, i8* %call, i64 %186
  %_p_scalar_410.pre.1 = load double, double* %scevgep408409.1, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1264416.1 = add nuw nsw i64 %184, %polly.access.mul.Packed_MemRef_call1264403.1
  %polly.access.Packed_MemRef_call1264417.1 = getelementptr double, double* %Packed_MemRef_call1264, i64 %polly.access.add.Packed_MemRef_call1264416.1
  %_p_scalar_418.1 = load double, double* %polly.access.Packed_MemRef_call1264417.1, align 8
  br label %polly.loop_header397.1

polly.loop_header397.1:                           ; preds = %polly.loop_header397.1, %polly.loop_header391.1
  %polly.indvar400.1 = phi i64 [ 0, %polly.loop_header391.1 ], [ %polly.indvar_next401.1, %polly.loop_header397.1 ]
  %187 = add nuw nsw i64 %polly.indvar400.1, 32
  %polly.access.add.Packed_MemRef_call1264404.1 = add nuw nsw i64 %polly.indvar400.1, %polly.access.mul.Packed_MemRef_call1264403.1
  %polly.access.Packed_MemRef_call1264405.1 = getelementptr double, double* %Packed_MemRef_call1264, i64 %polly.access.add.Packed_MemRef_call1264404.1
  %_p_scalar_406.1 = load double, double* %polly.access.Packed_MemRef_call1264405.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_410.pre.1, %_p_scalar_406.1
  %188 = mul nuw nsw i64 %187, 480
  %scevgep412.1 = getelementptr i8, i8* %scevgep407.1, i64 %188
  %scevgep412413.1 = bitcast i8* %scevgep412.1 to double*
  %_p_scalar_414.1 = load double, double* %scevgep412413.1, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.1 = fmul fast double %_p_scalar_418.1, %_p_scalar_414.1
  %189 = shl i64 %187, 3
  %scevgep420.1 = getelementptr i8, i8* %scevgep419.1, i64 %189
  %scevgep420421.1 = bitcast i8* %scevgep420.1 to double*
  %_p_scalar_422.1 = load double, double* %scevgep420421.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_422.1
  store double %p_add42.i79.1, double* %scevgep420421.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next401.1 = add nuw nsw i64 %polly.indvar400.1, 1
  %exitcond821.1.not = icmp eq i64 %polly.indvar400.1, %smin820.1
  br i1 %exitcond821.1.not, label %polly.loop_exit399.1, label %polly.loop_header397.1

polly.loop_exit399.1:                             ; preds = %polly.loop_header397.1
  %polly.indvar_next395.1 = add nuw nsw i64 %polly.indvar394.1, 1
  %indvars.iv.next819.1 = add nuw nsw i64 %indvars.iv818.1, 1
  %exitcond822.1.not = icmp eq i64 %indvars.iv.next819.1, 48
  br i1 %exitcond822.1.not, label %polly.loop_exit393.1, label %polly.loop_header391.1

polly.loop_exit393.1:                             ; preds = %polly.loop_exit399.1
  %polly.indvar_next389.1 = add nuw nsw i64 %polly.indvar388.1, 1
  %exitcond823.1.not = icmp eq i64 %polly.indvar_next389.1, 60
  br i1 %exitcond823.1.not, label %polly.loop_header369.2, label %polly.loop_header385.1

polly.loop_header369.2:                           ; preds = %polly.loop_exit393.1, %polly.loop_exit377.2
  %polly.indvar372.2 = phi i64 [ %polly.indvar_next373.2, %polly.loop_exit377.2 ], [ 0, %polly.loop_exit393.1 ]
  %polly.access.mul.Packed_MemRef_call1264.2 = mul nuw nsw i64 %polly.indvar372.2, 80
  br label %polly.loop_header375.2

polly.loop_header375.2:                           ; preds = %polly.loop_header375.2, %polly.loop_header369.2
  %polly.indvar378.2 = phi i64 [ 0, %polly.loop_header369.2 ], [ %polly.indvar_next379.2, %polly.loop_header375.2 ]
  %190 = mul i64 %polly.indvar378.2, 60
  %polly.access.mul.call1382.2 = add i64 %190, 3840
  %polly.access.add.call1383.2 = add nuw nsw i64 %polly.access.mul.call1382.2, %polly.indvar372.2
  %polly.access.call1384.2 = getelementptr double, double* %polly.access.cast.call1591, i64 %polly.access.add.call1383.2
  %polly.access.call1384.load.2 = load double, double* %polly.access.call1384.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1264.2 = add nuw nsw i64 %polly.indvar378.2, %polly.access.mul.Packed_MemRef_call1264.2
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1264, i64 %polly.access.add.Packed_MemRef_call1264.2
  store double %polly.access.call1384.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.indvar_next379.2 = add nuw nsw i64 %polly.indvar378.2, 1
  %exitcond816.2.not = icmp eq i64 %polly.indvar_next379.2, 16
  br i1 %exitcond816.2.not, label %polly.loop_exit377.2, label %polly.loop_header375.2

polly.loop_exit377.2:                             ; preds = %polly.loop_header375.2
  %polly.indvar_next373.2 = add nuw nsw i64 %polly.indvar372.2, 1
  %exitcond817.2.not = icmp eq i64 %polly.indvar_next373.2, 60
  br i1 %exitcond817.2.not, label %polly.loop_header385.2, label %polly.loop_header369.2

polly.loop_header385.2:                           ; preds = %polly.loop_exit377.2, %polly.loop_exit393.2
  %polly.indvar388.2 = phi i64 [ %polly.indvar_next389.2, %polly.loop_exit393.2 ], [ 0, %polly.loop_exit377.2 ]
  %191 = shl nuw nsw i64 %polly.indvar388.2, 3
  %scevgep407.2 = getelementptr i8, i8* %call2, i64 %191
  %polly.access.mul.Packed_MemRef_call1264403.2 = mul nuw nsw i64 %polly.indvar388.2, 80
  br label %polly.loop_header391.2

polly.loop_header391.2:                           ; preds = %polly.loop_exit399.2, %polly.loop_header385.2
  %indvars.iv818.2 = phi i64 [ %indvars.iv.next819.2, %polly.loop_exit399.2 ], [ 0, %polly.loop_header385.2 ]
  %polly.indvar394.2 = phi i64 [ %polly.indvar_next395.2, %polly.loop_exit399.2 ], [ 64, %polly.loop_header385.2 ]
  %smin820.2 = call i64 @llvm.smin.i64(i64 %indvars.iv818.2, i64 31)
  %192 = add nsw i64 %polly.indvar394.2, -64
  %193 = mul nuw nsw i64 %polly.indvar394.2, 480
  %scevgep408.2 = getelementptr i8, i8* %scevgep407.2, i64 %193
  %scevgep408409.2 = bitcast i8* %scevgep408.2 to double*
  %194 = mul nuw nsw i64 %polly.indvar394.2, 640
  %scevgep419.2 = getelementptr i8, i8* %call, i64 %194
  %_p_scalar_410.pre.2 = load double, double* %scevgep408409.2, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1264416.2 = add nuw nsw i64 %192, %polly.access.mul.Packed_MemRef_call1264403.2
  %polly.access.Packed_MemRef_call1264417.2 = getelementptr double, double* %Packed_MemRef_call1264, i64 %polly.access.add.Packed_MemRef_call1264416.2
  %_p_scalar_418.2 = load double, double* %polly.access.Packed_MemRef_call1264417.2, align 8
  br label %polly.loop_header397.2

polly.loop_header397.2:                           ; preds = %polly.loop_header397.2, %polly.loop_header391.2
  %polly.indvar400.2 = phi i64 [ 0, %polly.loop_header391.2 ], [ %polly.indvar_next401.2, %polly.loop_header397.2 ]
  %195 = add nuw nsw i64 %polly.indvar400.2, 64
  %polly.access.add.Packed_MemRef_call1264404.2 = add nuw nsw i64 %polly.indvar400.2, %polly.access.mul.Packed_MemRef_call1264403.2
  %polly.access.Packed_MemRef_call1264405.2 = getelementptr double, double* %Packed_MemRef_call1264, i64 %polly.access.add.Packed_MemRef_call1264404.2
  %_p_scalar_406.2 = load double, double* %polly.access.Packed_MemRef_call1264405.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_410.pre.2, %_p_scalar_406.2
  %196 = mul nuw nsw i64 %195, 480
  %scevgep412.2 = getelementptr i8, i8* %scevgep407.2, i64 %196
  %scevgep412413.2 = bitcast i8* %scevgep412.2 to double*
  %_p_scalar_414.2 = load double, double* %scevgep412413.2, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.2 = fmul fast double %_p_scalar_418.2, %_p_scalar_414.2
  %197 = shl i64 %195, 3
  %scevgep420.2 = getelementptr i8, i8* %scevgep419.2, i64 %197
  %scevgep420421.2 = bitcast i8* %scevgep420.2 to double*
  %_p_scalar_422.2 = load double, double* %scevgep420421.2, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_422.2
  store double %p_add42.i79.2, double* %scevgep420421.2, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next401.2 = add nuw nsw i64 %polly.indvar400.2, 1
  %exitcond821.2.not = icmp eq i64 %polly.indvar400.2, %smin820.2
  br i1 %exitcond821.2.not, label %polly.loop_exit399.2, label %polly.loop_header397.2

polly.loop_exit399.2:                             ; preds = %polly.loop_header397.2
  %polly.indvar_next395.2 = add nuw nsw i64 %polly.indvar394.2, 1
  %indvars.iv.next819.2 = add nuw nsw i64 %indvars.iv818.2, 1
  %exitcond822.2.not = icmp eq i64 %indvars.iv.next819.2, 16
  br i1 %exitcond822.2.not, label %polly.loop_exit393.2, label %polly.loop_header391.2

polly.loop_exit393.2:                             ; preds = %polly.loop_exit399.2
  %polly.indvar_next389.2 = add nuw nsw i64 %polly.indvar388.2, 1
  %exitcond823.2.not = icmp eq i64 %polly.indvar_next389.2, 60
  br i1 %exitcond823.2.not, label %polly.loop_exit387.2, label %polly.loop_header385.2

polly.loop_exit387.2:                             ; preds = %polly.loop_exit393.2
  tail call void @free(i8* nonnull %malloccall263)
  br label %kernel_syr2k.exit90

polly.loop_header533.1:                           ; preds = %polly.loop_exit557, %polly.loop_exit541.1
  %polly.indvar536.1 = phi i64 [ %polly.indvar_next537.1, %polly.loop_exit541.1 ], [ 0, %polly.loop_exit557 ]
  %polly.access.mul.Packed_MemRef_call1428.1 = mul nuw nsw i64 %polly.indvar536.1, 80
  br label %polly.loop_header539.1

polly.loop_header539.1:                           ; preds = %polly.loop_header539.1, %polly.loop_header533.1
  %polly.indvar542.1 = phi i64 [ 0, %polly.loop_header533.1 ], [ %polly.indvar_next543.1, %polly.loop_header539.1 ]
  %198 = mul i64 %polly.indvar542.1, 60
  %polly.access.mul.call1546.1 = add i64 %198, 1920
  %polly.access.add.call1547.1 = add nuw nsw i64 %polly.access.mul.call1546.1, %polly.indvar536.1
  %polly.access.call1548.1 = getelementptr double, double* %polly.access.cast.call1591, i64 %polly.access.add.call1547.1
  %polly.access.call1548.load.1 = load double, double* %polly.access.call1548.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1428.1 = add nuw nsw i64 %polly.indvar542.1, %polly.access.mul.Packed_MemRef_call1428.1
  %polly.access.Packed_MemRef_call1428.1 = getelementptr double, double* %Packed_MemRef_call1428, i64 %polly.access.add.Packed_MemRef_call1428.1
  store double %polly.access.call1548.load.1, double* %polly.access.Packed_MemRef_call1428.1, align 8
  %polly.indvar_next543.1 = add nuw nsw i64 %polly.indvar542.1, 1
  %exitcond829.1.not = icmp eq i64 %polly.indvar_next543.1, 48
  br i1 %exitcond829.1.not, label %polly.loop_exit541.1, label %polly.loop_header539.1

polly.loop_exit541.1:                             ; preds = %polly.loop_header539.1
  %polly.indvar_next537.1 = add nuw nsw i64 %polly.indvar536.1, 1
  %exitcond830.1.not = icmp eq i64 %polly.indvar_next537.1, 60
  br i1 %exitcond830.1.not, label %polly.loop_header549.1, label %polly.loop_header533.1

polly.loop_header549.1:                           ; preds = %polly.loop_exit541.1, %polly.loop_exit557.1
  %polly.indvar552.1 = phi i64 [ %polly.indvar_next553.1, %polly.loop_exit557.1 ], [ 0, %polly.loop_exit541.1 ]
  %199 = shl nuw nsw i64 %polly.indvar552.1, 3
  %scevgep571.1 = getelementptr i8, i8* %call2, i64 %199
  %polly.access.mul.Packed_MemRef_call1428567.1 = mul nuw nsw i64 %polly.indvar552.1, 80
  br label %polly.loop_header555.1

polly.loop_header555.1:                           ; preds = %polly.loop_exit563.1, %polly.loop_header549.1
  %indvars.iv831.1 = phi i64 [ %indvars.iv.next832.1, %polly.loop_exit563.1 ], [ 0, %polly.loop_header549.1 ]
  %polly.indvar558.1 = phi i64 [ %polly.indvar_next559.1, %polly.loop_exit563.1 ], [ 32, %polly.loop_header549.1 ]
  %smin833.1 = call i64 @llvm.smin.i64(i64 %indvars.iv831.1, i64 31)
  %200 = add nsw i64 %polly.indvar558.1, -32
  %201 = mul nuw nsw i64 %polly.indvar558.1, 480
  %scevgep572.1 = getelementptr i8, i8* %scevgep571.1, i64 %201
  %scevgep572573.1 = bitcast i8* %scevgep572.1 to double*
  %202 = mul nuw nsw i64 %polly.indvar558.1, 640
  %scevgep583.1 = getelementptr i8, i8* %call, i64 %202
  %_p_scalar_574.pre.1 = load double, double* %scevgep572573.1, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1428580.1 = add nuw nsw i64 %200, %polly.access.mul.Packed_MemRef_call1428567.1
  %polly.access.Packed_MemRef_call1428581.1 = getelementptr double, double* %Packed_MemRef_call1428, i64 %polly.access.add.Packed_MemRef_call1428580.1
  %_p_scalar_582.1 = load double, double* %polly.access.Packed_MemRef_call1428581.1, align 8
  br label %polly.loop_header561.1

polly.loop_header561.1:                           ; preds = %polly.loop_header561.1, %polly.loop_header555.1
  %polly.indvar564.1 = phi i64 [ 0, %polly.loop_header555.1 ], [ %polly.indvar_next565.1, %polly.loop_header561.1 ]
  %203 = add nuw nsw i64 %polly.indvar564.1, 32
  %polly.access.add.Packed_MemRef_call1428568.1 = add nuw nsw i64 %polly.indvar564.1, %polly.access.mul.Packed_MemRef_call1428567.1
  %polly.access.Packed_MemRef_call1428569.1 = getelementptr double, double* %Packed_MemRef_call1428, i64 %polly.access.add.Packed_MemRef_call1428568.1
  %_p_scalar_570.1 = load double, double* %polly.access.Packed_MemRef_call1428569.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_574.pre.1, %_p_scalar_570.1
  %204 = mul nuw nsw i64 %203, 480
  %scevgep576.1 = getelementptr i8, i8* %scevgep571.1, i64 %204
  %scevgep576577.1 = bitcast i8* %scevgep576.1 to double*
  %_p_scalar_578.1 = load double, double* %scevgep576577.1, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.1 = fmul fast double %_p_scalar_582.1, %_p_scalar_578.1
  %205 = shl i64 %203, 3
  %scevgep584.1 = getelementptr i8, i8* %scevgep583.1, i64 %205
  %scevgep584585.1 = bitcast i8* %scevgep584.1 to double*
  %_p_scalar_586.1 = load double, double* %scevgep584585.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_586.1
  store double %p_add42.i.1, double* %scevgep584585.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next565.1 = add nuw nsw i64 %polly.indvar564.1, 1
  %exitcond834.1.not = icmp eq i64 %polly.indvar564.1, %smin833.1
  br i1 %exitcond834.1.not, label %polly.loop_exit563.1, label %polly.loop_header561.1

polly.loop_exit563.1:                             ; preds = %polly.loop_header561.1
  %polly.indvar_next559.1 = add nuw nsw i64 %polly.indvar558.1, 1
  %indvars.iv.next832.1 = add nuw nsw i64 %indvars.iv831.1, 1
  %exitcond835.1.not = icmp eq i64 %indvars.iv.next832.1, 48
  br i1 %exitcond835.1.not, label %polly.loop_exit557.1, label %polly.loop_header555.1

polly.loop_exit557.1:                             ; preds = %polly.loop_exit563.1
  %polly.indvar_next553.1 = add nuw nsw i64 %polly.indvar552.1, 1
  %exitcond836.1.not = icmp eq i64 %polly.indvar_next553.1, 60
  br i1 %exitcond836.1.not, label %polly.loop_header533.2, label %polly.loop_header549.1

polly.loop_header533.2:                           ; preds = %polly.loop_exit557.1, %polly.loop_exit541.2
  %polly.indvar536.2 = phi i64 [ %polly.indvar_next537.2, %polly.loop_exit541.2 ], [ 0, %polly.loop_exit557.1 ]
  %polly.access.mul.Packed_MemRef_call1428.2 = mul nuw nsw i64 %polly.indvar536.2, 80
  br label %polly.loop_header539.2

polly.loop_header539.2:                           ; preds = %polly.loop_header539.2, %polly.loop_header533.2
  %polly.indvar542.2 = phi i64 [ 0, %polly.loop_header533.2 ], [ %polly.indvar_next543.2, %polly.loop_header539.2 ]
  %206 = mul i64 %polly.indvar542.2, 60
  %polly.access.mul.call1546.2 = add i64 %206, 3840
  %polly.access.add.call1547.2 = add nuw nsw i64 %polly.access.mul.call1546.2, %polly.indvar536.2
  %polly.access.call1548.2 = getelementptr double, double* %polly.access.cast.call1591, i64 %polly.access.add.call1547.2
  %polly.access.call1548.load.2 = load double, double* %polly.access.call1548.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1428.2 = add nuw nsw i64 %polly.indvar542.2, %polly.access.mul.Packed_MemRef_call1428.2
  %polly.access.Packed_MemRef_call1428.2 = getelementptr double, double* %Packed_MemRef_call1428, i64 %polly.access.add.Packed_MemRef_call1428.2
  store double %polly.access.call1548.load.2, double* %polly.access.Packed_MemRef_call1428.2, align 8
  %polly.indvar_next543.2 = add nuw nsw i64 %polly.indvar542.2, 1
  %exitcond829.2.not = icmp eq i64 %polly.indvar_next543.2, 16
  br i1 %exitcond829.2.not, label %polly.loop_exit541.2, label %polly.loop_header539.2

polly.loop_exit541.2:                             ; preds = %polly.loop_header539.2
  %polly.indvar_next537.2 = add nuw nsw i64 %polly.indvar536.2, 1
  %exitcond830.2.not = icmp eq i64 %polly.indvar_next537.2, 60
  br i1 %exitcond830.2.not, label %polly.loop_header549.2, label %polly.loop_header533.2

polly.loop_header549.2:                           ; preds = %polly.loop_exit541.2, %polly.loop_exit557.2
  %polly.indvar552.2 = phi i64 [ %polly.indvar_next553.2, %polly.loop_exit557.2 ], [ 0, %polly.loop_exit541.2 ]
  %207 = shl nuw nsw i64 %polly.indvar552.2, 3
  %scevgep571.2 = getelementptr i8, i8* %call2, i64 %207
  %polly.access.mul.Packed_MemRef_call1428567.2 = mul nuw nsw i64 %polly.indvar552.2, 80
  br label %polly.loop_header555.2

polly.loop_header555.2:                           ; preds = %polly.loop_exit563.2, %polly.loop_header549.2
  %indvars.iv831.2 = phi i64 [ %indvars.iv.next832.2, %polly.loop_exit563.2 ], [ 0, %polly.loop_header549.2 ]
  %polly.indvar558.2 = phi i64 [ %polly.indvar_next559.2, %polly.loop_exit563.2 ], [ 64, %polly.loop_header549.2 ]
  %smin833.2 = call i64 @llvm.smin.i64(i64 %indvars.iv831.2, i64 31)
  %208 = add nsw i64 %polly.indvar558.2, -64
  %209 = mul nuw nsw i64 %polly.indvar558.2, 480
  %scevgep572.2 = getelementptr i8, i8* %scevgep571.2, i64 %209
  %scevgep572573.2 = bitcast i8* %scevgep572.2 to double*
  %210 = mul nuw nsw i64 %polly.indvar558.2, 640
  %scevgep583.2 = getelementptr i8, i8* %call, i64 %210
  %_p_scalar_574.pre.2 = load double, double* %scevgep572573.2, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1428580.2 = add nuw nsw i64 %208, %polly.access.mul.Packed_MemRef_call1428567.2
  %polly.access.Packed_MemRef_call1428581.2 = getelementptr double, double* %Packed_MemRef_call1428, i64 %polly.access.add.Packed_MemRef_call1428580.2
  %_p_scalar_582.2 = load double, double* %polly.access.Packed_MemRef_call1428581.2, align 8
  br label %polly.loop_header561.2

polly.loop_header561.2:                           ; preds = %polly.loop_header561.2, %polly.loop_header555.2
  %polly.indvar564.2 = phi i64 [ 0, %polly.loop_header555.2 ], [ %polly.indvar_next565.2, %polly.loop_header561.2 ]
  %211 = add nuw nsw i64 %polly.indvar564.2, 64
  %polly.access.add.Packed_MemRef_call1428568.2 = add nuw nsw i64 %polly.indvar564.2, %polly.access.mul.Packed_MemRef_call1428567.2
  %polly.access.Packed_MemRef_call1428569.2 = getelementptr double, double* %Packed_MemRef_call1428, i64 %polly.access.add.Packed_MemRef_call1428568.2
  %_p_scalar_570.2 = load double, double* %polly.access.Packed_MemRef_call1428569.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_574.pre.2, %_p_scalar_570.2
  %212 = mul nuw nsw i64 %211, 480
  %scevgep576.2 = getelementptr i8, i8* %scevgep571.2, i64 %212
  %scevgep576577.2 = bitcast i8* %scevgep576.2 to double*
  %_p_scalar_578.2 = load double, double* %scevgep576577.2, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.2 = fmul fast double %_p_scalar_582.2, %_p_scalar_578.2
  %213 = shl i64 %211, 3
  %scevgep584.2 = getelementptr i8, i8* %scevgep583.2, i64 %213
  %scevgep584585.2 = bitcast i8* %scevgep584.2 to double*
  %_p_scalar_586.2 = load double, double* %scevgep584585.2, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_586.2
  store double %p_add42.i.2, double* %scevgep584585.2, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next565.2 = add nuw nsw i64 %polly.indvar564.2, 1
  %exitcond834.2.not = icmp eq i64 %polly.indvar564.2, %smin833.2
  br i1 %exitcond834.2.not, label %polly.loop_exit563.2, label %polly.loop_header561.2

polly.loop_exit563.2:                             ; preds = %polly.loop_header561.2
  %polly.indvar_next559.2 = add nuw nsw i64 %polly.indvar558.2, 1
  %indvars.iv.next832.2 = add nuw nsw i64 %indvars.iv831.2, 1
  %exitcond835.2.not = icmp eq i64 %indvars.iv.next832.2, 16
  br i1 %exitcond835.2.not, label %polly.loop_exit557.2, label %polly.loop_header555.2

polly.loop_exit557.2:                             ; preds = %polly.loop_exit563.2
  %polly.indvar_next553.2 = add nuw nsw i64 %polly.indvar552.2, 1
  %exitcond836.2.not = icmp eq i64 %polly.indvar_next553.2, 60
  br i1 %exitcond836.2.not, label %polly.loop_exit551.2, label %polly.loop_header549.2

polly.loop_exit551.2:                             ; preds = %polly.loop_exit557.2
  tail call void @free(i8* nonnull %malloccall427)
  br label %kernel_syr2k.exit

polly.loop_header778.1:                           ; preds = %polly.loop_exit786, %polly.loop_exit786.1
  %polly.indvar781.1 = phi i64 [ %polly.indvar_next782.1, %polly.loop_exit786.1 ], [ 0, %polly.loop_exit786 ]
  %214 = mul nuw nsw i64 %polly.indvar781.1, 480
  %215 = trunc i64 %polly.indvar781.1 to i32
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %polly.loop_header778.1
  %index1147 = phi i64 [ 0, %polly.loop_header778.1 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1151 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1 ], [ %vec.ind.next1152, %vector.body1145 ]
  %216 = add nuw nsw <4 x i64> %vec.ind1151, <i64 32, i64 32, i64 32, i64 32>
  %217 = trunc <4 x i64> %216 to <4 x i32>
  %218 = mul <4 x i32> %broadcast.splat1154, %217
  %219 = add <4 x i32> %218, <i32 1, i32 1, i32 1, i32 1>
  %220 = urem <4 x i32> %219, <i32 80, i32 80, i32 80, i32 80>
  %221 = sitofp <4 x i32> %220 to <4 x double>
  %222 = fmul fast <4 x double> %221, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %223 = extractelement <4 x i64> %216, i32 0
  %224 = shl i64 %223, 3
  %225 = add i64 %224, %214
  %226 = getelementptr i8, i8* %call1, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %222, <4 x double>* %227, align 8, !alias.scope !102, !noalias !107
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1152 = add <4 x i64> %vec.ind1151, <i64 4, i64 4, i64 4, i64 4>
  %228 = icmp eq i64 %index.next1148, 28
  br i1 %228, label %polly.loop_exit786.1, label %vector.body1145, !llvm.loop !109

polly.loop_exit786.1:                             ; preds = %vector.body1145
  %polly.indvar_next782.1 = add nuw nsw i64 %polly.indvar781.1, 1
  %exitcond844.1.not = icmp eq i64 %polly.indvar_next782.1, 32
  br i1 %exitcond844.1.not, label %polly.loop_header778.1864, label %polly.loop_header778.1

polly.loop_header778.1864:                        ; preds = %polly.loop_exit786.1, %polly.loop_exit786.1875
  %polly.indvar781.1863 = phi i64 [ %polly.indvar_next782.1873, %polly.loop_exit786.1875 ], [ 0, %polly.loop_exit786.1 ]
  %229 = add nuw nsw i64 %polly.indvar781.1863, 32
  %230 = mul nuw nsw i64 %229, 480
  %231 = trunc i64 %229 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %231, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %polly.loop_header778.1864
  %index1159 = phi i64 [ 0, %polly.loop_header778.1864 ], [ %index.next1160, %vector.body1157 ]
  %vec.ind1165 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.1864 ], [ %vec.ind.next1166, %vector.body1157 ]
  %232 = mul <4 x i32> %vec.ind1165, %broadcast.splat1168
  %233 = add <4 x i32> %232, <i32 1, i32 1, i32 1, i32 1>
  %234 = urem <4 x i32> %233, <i32 80, i32 80, i32 80, i32 80>
  %235 = sitofp <4 x i32> %234 to <4 x double>
  %236 = fmul fast <4 x double> %235, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %237 = shl i64 %index1159, 3
  %238 = add i64 %237, %230
  %239 = getelementptr i8, i8* %call1, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %236, <4 x double>* %240, align 8, !alias.scope !102, !noalias !107
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1166 = add <4 x i32> %vec.ind1165, <i32 4, i32 4, i32 4, i32 4>
  %241 = icmp eq i64 %index.next1160, 32
  br i1 %241, label %polly.loop_exit786.1875, label %vector.body1157, !llvm.loop !110

polly.loop_exit786.1875:                          ; preds = %vector.body1157
  %polly.indvar_next782.1873 = add nuw nsw i64 %polly.indvar781.1863, 1
  %exitcond844.1874.not = icmp eq i64 %polly.indvar_next782.1873, 32
  br i1 %exitcond844.1874.not, label %polly.loop_header778.1.1, label %polly.loop_header778.1864

polly.loop_header778.1.1:                         ; preds = %polly.loop_exit786.1875, %polly.loop_exit786.1.1
  %polly.indvar781.1.1 = phi i64 [ %polly.indvar_next782.1.1, %polly.loop_exit786.1.1 ], [ 0, %polly.loop_exit786.1875 ]
  %242 = add nuw nsw i64 %polly.indvar781.1.1, 32
  %243 = mul nuw nsw i64 %242, 480
  %244 = trunc i64 %242 to i32
  %broadcast.splatinsert1179 = insertelement <4 x i32> poison, i32 %244, i32 0
  %broadcast.splat1180 = shufflevector <4 x i32> %broadcast.splatinsert1179, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_header778.1.1
  %index1173 = phi i64 [ 0, %polly.loop_header778.1.1 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1177 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.1 ], [ %vec.ind.next1178, %vector.body1171 ]
  %245 = add nuw nsw <4 x i64> %vec.ind1177, <i64 32, i64 32, i64 32, i64 32>
  %246 = trunc <4 x i64> %245 to <4 x i32>
  %247 = mul <4 x i32> %broadcast.splat1180, %246
  %248 = add <4 x i32> %247, <i32 1, i32 1, i32 1, i32 1>
  %249 = urem <4 x i32> %248, <i32 80, i32 80, i32 80, i32 80>
  %250 = sitofp <4 x i32> %249 to <4 x double>
  %251 = fmul fast <4 x double> %250, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %252 = extractelement <4 x i64> %245, i32 0
  %253 = shl i64 %252, 3
  %254 = add i64 %253, %243
  %255 = getelementptr i8, i8* %call1, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %251, <4 x double>* %256, align 8, !alias.scope !102, !noalias !107
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1178 = add <4 x i64> %vec.ind1177, <i64 4, i64 4, i64 4, i64 4>
  %257 = icmp eq i64 %index.next1174, 28
  br i1 %257, label %polly.loop_exit786.1.1, label %vector.body1171, !llvm.loop !111

polly.loop_exit786.1.1:                           ; preds = %vector.body1171
  %polly.indvar_next782.1.1 = add nuw nsw i64 %polly.indvar781.1.1, 1
  %exitcond844.1.1.not = icmp eq i64 %polly.indvar_next782.1.1, 32
  br i1 %exitcond844.1.1.not, label %polly.loop_header778.2, label %polly.loop_header778.1.1

polly.loop_header778.2:                           ; preds = %polly.loop_exit786.1.1, %polly.loop_exit786.2
  %polly.indvar781.2 = phi i64 [ %polly.indvar_next782.2, %polly.loop_exit786.2 ], [ 0, %polly.loop_exit786.1.1 ]
  %258 = add nuw nsw i64 %polly.indvar781.2, 64
  %259 = mul nuw nsw i64 %258, 480
  %260 = trunc i64 %258 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %260, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %polly.loop_header778.2
  %index1185 = phi i64 [ 0, %polly.loop_header778.2 ], [ %index.next1186, %vector.body1183 ]
  %vec.ind1191 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.2 ], [ %vec.ind.next1192, %vector.body1183 ]
  %261 = mul <4 x i32> %vec.ind1191, %broadcast.splat1194
  %262 = add <4 x i32> %261, <i32 1, i32 1, i32 1, i32 1>
  %263 = urem <4 x i32> %262, <i32 80, i32 80, i32 80, i32 80>
  %264 = sitofp <4 x i32> %263 to <4 x double>
  %265 = fmul fast <4 x double> %264, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %266 = shl i64 %index1185, 3
  %267 = add i64 %266, %259
  %268 = getelementptr i8, i8* %call1, i64 %267
  %269 = bitcast i8* %268 to <4 x double>*
  store <4 x double> %265, <4 x double>* %269, align 8, !alias.scope !102, !noalias !107
  %index.next1186 = add i64 %index1185, 4
  %vec.ind.next1192 = add <4 x i32> %vec.ind1191, <i32 4, i32 4, i32 4, i32 4>
  %270 = icmp eq i64 %index.next1186, 32
  br i1 %270, label %polly.loop_exit786.2, label %vector.body1183, !llvm.loop !112

polly.loop_exit786.2:                             ; preds = %vector.body1183
  %polly.indvar_next782.2 = add nuw nsw i64 %polly.indvar781.2, 1
  %exitcond844.2.not = icmp eq i64 %polly.indvar_next782.2, 16
  br i1 %exitcond844.2.not, label %polly.loop_header778.1.2, label %polly.loop_header778.2

polly.loop_header778.1.2:                         ; preds = %polly.loop_exit786.2, %polly.loop_exit786.1.2
  %polly.indvar781.1.2 = phi i64 [ %polly.indvar_next782.1.2, %polly.loop_exit786.1.2 ], [ 0, %polly.loop_exit786.2 ]
  %271 = add nuw nsw i64 %polly.indvar781.1.2, 64
  %272 = mul nuw nsw i64 %271, 480
  %273 = trunc i64 %271 to i32
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %polly.loop_header778.1.2
  %index1199 = phi i64 [ 0, %polly.loop_header778.1.2 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.2 ], [ %vec.ind.next1204, %vector.body1197 ]
  %274 = add nuw nsw <4 x i64> %vec.ind1203, <i64 32, i64 32, i64 32, i64 32>
  %275 = trunc <4 x i64> %274 to <4 x i32>
  %276 = mul <4 x i32> %broadcast.splat1206, %275
  %277 = add <4 x i32> %276, <i32 1, i32 1, i32 1, i32 1>
  %278 = urem <4 x i32> %277, <i32 80, i32 80, i32 80, i32 80>
  %279 = sitofp <4 x i32> %278 to <4 x double>
  %280 = fmul fast <4 x double> %279, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %281 = extractelement <4 x i64> %274, i32 0
  %282 = shl i64 %281, 3
  %283 = add i64 %282, %272
  %284 = getelementptr i8, i8* %call1, i64 %283
  %285 = bitcast i8* %284 to <4 x double>*
  store <4 x double> %280, <4 x double>* %285, align 8, !alias.scope !102, !noalias !107
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %286 = icmp eq i64 %index.next1200, 28
  br i1 %286, label %polly.loop_exit786.1.2, label %vector.body1197, !llvm.loop !113

polly.loop_exit786.1.2:                           ; preds = %vector.body1197
  %polly.indvar_next782.1.2 = add nuw nsw i64 %polly.indvar781.1.2, 1
  %exitcond844.1.2.not = icmp eq i64 %polly.indvar_next782.1.2, 16
  br i1 %exitcond844.1.2.not, label %init_array.exit, label %polly.loop_header778.1.2

polly.loop_header752.1:                           ; preds = %polly.loop_exit760, %polly.loop_exit760.1
  %polly.indvar755.1 = phi i64 [ %polly.indvar_next756.1, %polly.loop_exit760.1 ], [ 0, %polly.loop_exit760 ]
  %287 = mul nuw nsw i64 %polly.indvar755.1, 480
  %288 = trunc i64 %polly.indvar755.1 to i32
  %broadcast.splatinsert1075 = insertelement <4 x i32> poison, i32 %288, i32 0
  %broadcast.splat1076 = shufflevector <4 x i32> %broadcast.splatinsert1075, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header752.1
  %index1069 = phi i64 [ 0, %polly.loop_header752.1 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1073 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1 ], [ %vec.ind.next1074, %vector.body1067 ]
  %289 = add nuw nsw <4 x i64> %vec.ind1073, <i64 32, i64 32, i64 32, i64 32>
  %290 = trunc <4 x i64> %289 to <4 x i32>
  %291 = mul <4 x i32> %broadcast.splat1076, %290
  %292 = add <4 x i32> %291, <i32 2, i32 2, i32 2, i32 2>
  %293 = urem <4 x i32> %292, <i32 60, i32 60, i32 60, i32 60>
  %294 = sitofp <4 x i32> %293 to <4 x double>
  %295 = fmul fast <4 x double> %294, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %296 = extractelement <4 x i64> %289, i32 0
  %297 = shl i64 %296, 3
  %298 = add i64 %297, %287
  %299 = getelementptr i8, i8* %call2, i64 %298
  %300 = bitcast i8* %299 to <4 x double>*
  store <4 x double> %295, <4 x double>* %300, align 8, !alias.scope !103, !noalias !105
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1074 = add <4 x i64> %vec.ind1073, <i64 4, i64 4, i64 4, i64 4>
  %301 = icmp eq i64 %index.next1070, 28
  br i1 %301, label %polly.loop_exit760.1, label %vector.body1067, !llvm.loop !114

polly.loop_exit760.1:                             ; preds = %vector.body1067
  %polly.indvar_next756.1 = add nuw nsw i64 %polly.indvar755.1, 1
  %exitcond850.1.not = icmp eq i64 %polly.indvar_next756.1, 32
  br i1 %exitcond850.1.not, label %polly.loop_header752.1878, label %polly.loop_header752.1

polly.loop_header752.1878:                        ; preds = %polly.loop_exit760.1, %polly.loop_exit760.1889
  %polly.indvar755.1877 = phi i64 [ %polly.indvar_next756.1887, %polly.loop_exit760.1889 ], [ 0, %polly.loop_exit760.1 ]
  %302 = add nuw nsw i64 %polly.indvar755.1877, 32
  %303 = mul nuw nsw i64 %302, 480
  %304 = trunc i64 %302 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %304, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %polly.loop_header752.1878
  %index1081 = phi i64 [ 0, %polly.loop_header752.1878 ], [ %index.next1082, %vector.body1079 ]
  %vec.ind1087 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.1878 ], [ %vec.ind.next1088, %vector.body1079 ]
  %305 = mul <4 x i32> %vec.ind1087, %broadcast.splat1090
  %306 = add <4 x i32> %305, <i32 2, i32 2, i32 2, i32 2>
  %307 = urem <4 x i32> %306, <i32 60, i32 60, i32 60, i32 60>
  %308 = sitofp <4 x i32> %307 to <4 x double>
  %309 = fmul fast <4 x double> %308, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %310 = shl i64 %index1081, 3
  %311 = add i64 %310, %303
  %312 = getelementptr i8, i8* %call2, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %309, <4 x double>* %313, align 8, !alias.scope !103, !noalias !105
  %index.next1082 = add i64 %index1081, 4
  %vec.ind.next1088 = add <4 x i32> %vec.ind1087, <i32 4, i32 4, i32 4, i32 4>
  %314 = icmp eq i64 %index.next1082, 32
  br i1 %314, label %polly.loop_exit760.1889, label %vector.body1079, !llvm.loop !115

polly.loop_exit760.1889:                          ; preds = %vector.body1079
  %polly.indvar_next756.1887 = add nuw nsw i64 %polly.indvar755.1877, 1
  %exitcond850.1888.not = icmp eq i64 %polly.indvar_next756.1887, 32
  br i1 %exitcond850.1888.not, label %polly.loop_header752.1.1, label %polly.loop_header752.1878

polly.loop_header752.1.1:                         ; preds = %polly.loop_exit760.1889, %polly.loop_exit760.1.1
  %polly.indvar755.1.1 = phi i64 [ %polly.indvar_next756.1.1, %polly.loop_exit760.1.1 ], [ 0, %polly.loop_exit760.1889 ]
  %315 = add nuw nsw i64 %polly.indvar755.1.1, 32
  %316 = mul nuw nsw i64 %315, 480
  %317 = trunc i64 %315 to i32
  %broadcast.splatinsert1101 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1102 = shufflevector <4 x i32> %broadcast.splatinsert1101, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %polly.loop_header752.1.1
  %index1095 = phi i64 [ 0, %polly.loop_header752.1.1 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1099 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.1 ], [ %vec.ind.next1100, %vector.body1093 ]
  %318 = add nuw nsw <4 x i64> %vec.ind1099, <i64 32, i64 32, i64 32, i64 32>
  %319 = trunc <4 x i64> %318 to <4 x i32>
  %320 = mul <4 x i32> %broadcast.splat1102, %319
  %321 = add <4 x i32> %320, <i32 2, i32 2, i32 2, i32 2>
  %322 = urem <4 x i32> %321, <i32 60, i32 60, i32 60, i32 60>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %325 = extractelement <4 x i64> %318, i32 0
  %326 = shl i64 %325, 3
  %327 = add i64 %326, %316
  %328 = getelementptr i8, i8* %call2, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %324, <4 x double>* %329, align 8, !alias.scope !103, !noalias !105
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1100 = add <4 x i64> %vec.ind1099, <i64 4, i64 4, i64 4, i64 4>
  %330 = icmp eq i64 %index.next1096, 28
  br i1 %330, label %polly.loop_exit760.1.1, label %vector.body1093, !llvm.loop !116

polly.loop_exit760.1.1:                           ; preds = %vector.body1093
  %polly.indvar_next756.1.1 = add nuw nsw i64 %polly.indvar755.1.1, 1
  %exitcond850.1.1.not = icmp eq i64 %polly.indvar_next756.1.1, 32
  br i1 %exitcond850.1.1.not, label %polly.loop_header752.2, label %polly.loop_header752.1.1

polly.loop_header752.2:                           ; preds = %polly.loop_exit760.1.1, %polly.loop_exit760.2
  %polly.indvar755.2 = phi i64 [ %polly.indvar_next756.2, %polly.loop_exit760.2 ], [ 0, %polly.loop_exit760.1.1 ]
  %331 = add nuw nsw i64 %polly.indvar755.2, 64
  %332 = mul nuw nsw i64 %331, 480
  %333 = trunc i64 %331 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %333, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.body1105, %polly.loop_header752.2
  %index1107 = phi i64 [ 0, %polly.loop_header752.2 ], [ %index.next1108, %vector.body1105 ]
  %vec.ind1113 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.2 ], [ %vec.ind.next1114, %vector.body1105 ]
  %334 = mul <4 x i32> %vec.ind1113, %broadcast.splat1116
  %335 = add <4 x i32> %334, <i32 2, i32 2, i32 2, i32 2>
  %336 = urem <4 x i32> %335, <i32 60, i32 60, i32 60, i32 60>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %339 = shl i64 %index1107, 3
  %340 = add i64 %339, %332
  %341 = getelementptr i8, i8* %call2, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %338, <4 x double>* %342, align 8, !alias.scope !103, !noalias !105
  %index.next1108 = add i64 %index1107, 4
  %vec.ind.next1114 = add <4 x i32> %vec.ind1113, <i32 4, i32 4, i32 4, i32 4>
  %343 = icmp eq i64 %index.next1108, 32
  br i1 %343, label %polly.loop_exit760.2, label %vector.body1105, !llvm.loop !117

polly.loop_exit760.2:                             ; preds = %vector.body1105
  %polly.indvar_next756.2 = add nuw nsw i64 %polly.indvar755.2, 1
  %exitcond850.2.not = icmp eq i64 %polly.indvar_next756.2, 16
  br i1 %exitcond850.2.not, label %polly.loop_header752.1.2, label %polly.loop_header752.2

polly.loop_header752.1.2:                         ; preds = %polly.loop_exit760.2, %polly.loop_exit760.1.2
  %polly.indvar755.1.2 = phi i64 [ %polly.indvar_next756.1.2, %polly.loop_exit760.1.2 ], [ 0, %polly.loop_exit760.2 ]
  %344 = add nuw nsw i64 %polly.indvar755.1.2, 64
  %345 = mul nuw nsw i64 %344, 480
  %346 = trunc i64 %344 to i32
  %broadcast.splatinsert1127 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1128 = shufflevector <4 x i32> %broadcast.splatinsert1127, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header752.1.2
  %index1121 = phi i64 [ 0, %polly.loop_header752.1.2 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1125 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.2 ], [ %vec.ind.next1126, %vector.body1119 ]
  %347 = add nuw nsw <4 x i64> %vec.ind1125, <i64 32, i64 32, i64 32, i64 32>
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat1128, %348
  %350 = add <4 x i32> %349, <i32 2, i32 2, i32 2, i32 2>
  %351 = urem <4 x i32> %350, <i32 60, i32 60, i32 60, i32 60>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add i64 %355, %345
  %357 = getelementptr i8, i8* %call2, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !103, !noalias !105
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1126 = add <4 x i64> %vec.ind1125, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next1122, 28
  br i1 %359, label %polly.loop_exit760.1.2, label %vector.body1119, !llvm.loop !118

polly.loop_exit760.1.2:                           ; preds = %vector.body1119
  %polly.indvar_next756.1.2 = add nuw nsw i64 %polly.indvar755.1.2, 1
  %exitcond850.1.2.not = icmp eq i64 %polly.indvar_next756.1.2, 16
  br i1 %exitcond850.1.2.not, label %polly.loop_header778, label %polly.loop_header752.1.2

polly.loop_header725.1:                           ; preds = %polly.loop_exit733, %polly.loop_exit733.1
  %polly.indvar728.1 = phi i64 [ %polly.indvar_next729.1, %polly.loop_exit733.1 ], [ 0, %polly.loop_exit733 ]
  %360 = mul nuw nsw i64 %polly.indvar728.1, 640
  %361 = trunc i64 %polly.indvar728.1 to i32
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %361, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %polly.loop_header725.1
  %index955 = phi i64 [ 0, %polly.loop_header725.1 ], [ %index.next956, %vector.body953 ]
  %vec.ind959 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1 ], [ %vec.ind.next960, %vector.body953 ]
  %362 = add nuw nsw <4 x i64> %vec.ind959, <i64 32, i64 32, i64 32, i64 32>
  %363 = trunc <4 x i64> %362 to <4 x i32>
  %364 = mul <4 x i32> %broadcast.splat962, %363
  %365 = add <4 x i32> %364, <i32 3, i32 3, i32 3, i32 3>
  %366 = urem <4 x i32> %365, <i32 80, i32 80, i32 80, i32 80>
  %367 = sitofp <4 x i32> %366 to <4 x double>
  %368 = fmul fast <4 x double> %367, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %369 = extractelement <4 x i64> %362, i32 0
  %370 = shl i64 %369, 3
  %371 = add nuw nsw i64 %370, %360
  %372 = getelementptr i8, i8* %call, i64 %371
  %373 = bitcast i8* %372 to <4 x double>*
  store <4 x double> %368, <4 x double>* %373, align 8, !alias.scope !99, !noalias !101
  %index.next956 = add i64 %index955, 4
  %vec.ind.next960 = add <4 x i64> %vec.ind959, <i64 4, i64 4, i64 4, i64 4>
  %374 = icmp eq i64 %index.next956, 32
  br i1 %374, label %polly.loop_exit733.1, label %vector.body953, !llvm.loop !119

polly.loop_exit733.1:                             ; preds = %vector.body953
  %polly.indvar_next729.1 = add nuw nsw i64 %polly.indvar728.1, 1
  %exitcond859.1.not = icmp eq i64 %polly.indvar_next729.1, 32
  br i1 %exitcond859.1.not, label %polly.loop_header725.2, label %polly.loop_header725.1

polly.loop_header725.2:                           ; preds = %polly.loop_exit733.1, %polly.loop_exit733.2
  %polly.indvar728.2 = phi i64 [ %polly.indvar_next729.2, %polly.loop_exit733.2 ], [ 0, %polly.loop_exit733.1 ]
  %375 = mul nuw nsw i64 %polly.indvar728.2, 640
  %376 = trunc i64 %polly.indvar728.2 to i32
  %broadcast.splatinsert973 = insertelement <4 x i32> poison, i32 %376, i32 0
  %broadcast.splat974 = shufflevector <4 x i32> %broadcast.splatinsert973, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %polly.loop_header725.2
  %index967 = phi i64 [ 0, %polly.loop_header725.2 ], [ %index.next968, %vector.body965 ]
  %vec.ind971 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2 ], [ %vec.ind.next972, %vector.body965 ]
  %377 = add nuw nsw <4 x i64> %vec.ind971, <i64 64, i64 64, i64 64, i64 64>
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat974, %378
  %380 = add <4 x i32> %379, <i32 3, i32 3, i32 3, i32 3>
  %381 = urem <4 x i32> %380, <i32 80, i32 80, i32 80, i32 80>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add nuw nsw i64 %385, %375
  %387 = getelementptr i8, i8* %call, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !99, !noalias !101
  %index.next968 = add i64 %index967, 4
  %vec.ind.next972 = add <4 x i64> %vec.ind971, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next968, 16
  br i1 %389, label %polly.loop_exit733.2, label %vector.body965, !llvm.loop !120

polly.loop_exit733.2:                             ; preds = %vector.body965
  %polly.indvar_next729.2 = add nuw nsw i64 %polly.indvar728.2, 1
  %exitcond859.2.not = icmp eq i64 %polly.indvar_next729.2, 32
  br i1 %exitcond859.2.not, label %polly.loop_header725.1892, label %polly.loop_header725.2

polly.loop_header725.1892:                        ; preds = %polly.loop_exit733.2, %polly.loop_exit733.1903
  %polly.indvar728.1891 = phi i64 [ %polly.indvar_next729.1901, %polly.loop_exit733.1903 ], [ 0, %polly.loop_exit733.2 ]
  %390 = add nuw nsw i64 %polly.indvar728.1891, 32
  %391 = mul nuw nsw i64 %390, 640
  %392 = trunc i64 %390 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %392, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %polly.loop_header725.1892
  %index979 = phi i64 [ 0, %polly.loop_header725.1892 ], [ %index.next980, %vector.body977 ]
  %vec.ind985 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.1892 ], [ %vec.ind.next986, %vector.body977 ]
  %393 = mul <4 x i32> %vec.ind985, %broadcast.splat988
  %394 = add <4 x i32> %393, <i32 3, i32 3, i32 3, i32 3>
  %395 = urem <4 x i32> %394, <i32 80, i32 80, i32 80, i32 80>
  %396 = sitofp <4 x i32> %395 to <4 x double>
  %397 = fmul fast <4 x double> %396, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %398 = shl i64 %index979, 3
  %399 = add nuw nsw i64 %398, %391
  %400 = getelementptr i8, i8* %call, i64 %399
  %401 = bitcast i8* %400 to <4 x double>*
  store <4 x double> %397, <4 x double>* %401, align 8, !alias.scope !99, !noalias !101
  %index.next980 = add i64 %index979, 4
  %vec.ind.next986 = add <4 x i32> %vec.ind985, <i32 4, i32 4, i32 4, i32 4>
  %402 = icmp eq i64 %index.next980, 32
  br i1 %402, label %polly.loop_exit733.1903, label %vector.body977, !llvm.loop !121

polly.loop_exit733.1903:                          ; preds = %vector.body977
  %polly.indvar_next729.1901 = add nuw nsw i64 %polly.indvar728.1891, 1
  %exitcond859.1902.not = icmp eq i64 %polly.indvar_next729.1901, 32
  br i1 %exitcond859.1902.not, label %polly.loop_header725.1.1, label %polly.loop_header725.1892

polly.loop_header725.1.1:                         ; preds = %polly.loop_exit733.1903, %polly.loop_exit733.1.1
  %polly.indvar728.1.1 = phi i64 [ %polly.indvar_next729.1.1, %polly.loop_exit733.1.1 ], [ 0, %polly.loop_exit733.1903 ]
  %403 = add nuw nsw i64 %polly.indvar728.1.1, 32
  %404 = mul nuw nsw i64 %403, 640
  %405 = trunc i64 %403 to i32
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %405, i32 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header725.1.1
  %index993 = phi i64 [ 0, %polly.loop_header725.1.1 ], [ %index.next994, %vector.body991 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.1 ], [ %vec.ind.next998, %vector.body991 ]
  %406 = add nuw nsw <4 x i64> %vec.ind997, <i64 32, i64 32, i64 32, i64 32>
  %407 = trunc <4 x i64> %406 to <4 x i32>
  %408 = mul <4 x i32> %broadcast.splat1000, %407
  %409 = add <4 x i32> %408, <i32 3, i32 3, i32 3, i32 3>
  %410 = urem <4 x i32> %409, <i32 80, i32 80, i32 80, i32 80>
  %411 = sitofp <4 x i32> %410 to <4 x double>
  %412 = fmul fast <4 x double> %411, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %413 = extractelement <4 x i64> %406, i32 0
  %414 = shl i64 %413, 3
  %415 = add nuw nsw i64 %414, %404
  %416 = getelementptr i8, i8* %call, i64 %415
  %417 = bitcast i8* %416 to <4 x double>*
  store <4 x double> %412, <4 x double>* %417, align 8, !alias.scope !99, !noalias !101
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %418 = icmp eq i64 %index.next994, 32
  br i1 %418, label %polly.loop_exit733.1.1, label %vector.body991, !llvm.loop !122

polly.loop_exit733.1.1:                           ; preds = %vector.body991
  %polly.indvar_next729.1.1 = add nuw nsw i64 %polly.indvar728.1.1, 1
  %exitcond859.1.1.not = icmp eq i64 %polly.indvar_next729.1.1, 32
  br i1 %exitcond859.1.1.not, label %polly.loop_header725.2.1, label %polly.loop_header725.1.1

polly.loop_header725.2.1:                         ; preds = %polly.loop_exit733.1.1, %polly.loop_exit733.2.1
  %polly.indvar728.2.1 = phi i64 [ %polly.indvar_next729.2.1, %polly.loop_exit733.2.1 ], [ 0, %polly.loop_exit733.1.1 ]
  %419 = add nuw nsw i64 %polly.indvar728.2.1, 32
  %420 = mul nuw nsw i64 %419, 640
  %421 = trunc i64 %419 to i32
  %broadcast.splatinsert1011 = insertelement <4 x i32> poison, i32 %421, i32 0
  %broadcast.splat1012 = shufflevector <4 x i32> %broadcast.splatinsert1011, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %polly.loop_header725.2.1
  %index1005 = phi i64 [ 0, %polly.loop_header725.2.1 ], [ %index.next1006, %vector.body1003 ]
  %vec.ind1009 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2.1 ], [ %vec.ind.next1010, %vector.body1003 ]
  %422 = add nuw nsw <4 x i64> %vec.ind1009, <i64 64, i64 64, i64 64, i64 64>
  %423 = trunc <4 x i64> %422 to <4 x i32>
  %424 = mul <4 x i32> %broadcast.splat1012, %423
  %425 = add <4 x i32> %424, <i32 3, i32 3, i32 3, i32 3>
  %426 = urem <4 x i32> %425, <i32 80, i32 80, i32 80, i32 80>
  %427 = sitofp <4 x i32> %426 to <4 x double>
  %428 = fmul fast <4 x double> %427, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %429 = extractelement <4 x i64> %422, i32 0
  %430 = shl i64 %429, 3
  %431 = add nuw nsw i64 %430, %420
  %432 = getelementptr i8, i8* %call, i64 %431
  %433 = bitcast i8* %432 to <4 x double>*
  store <4 x double> %428, <4 x double>* %433, align 8, !alias.scope !99, !noalias !101
  %index.next1006 = add i64 %index1005, 4
  %vec.ind.next1010 = add <4 x i64> %vec.ind1009, <i64 4, i64 4, i64 4, i64 4>
  %434 = icmp eq i64 %index.next1006, 16
  br i1 %434, label %polly.loop_exit733.2.1, label %vector.body1003, !llvm.loop !123

polly.loop_exit733.2.1:                           ; preds = %vector.body1003
  %polly.indvar_next729.2.1 = add nuw nsw i64 %polly.indvar728.2.1, 1
  %exitcond859.2.1.not = icmp eq i64 %polly.indvar_next729.2.1, 32
  br i1 %exitcond859.2.1.not, label %polly.loop_header725.2906, label %polly.loop_header725.2.1

polly.loop_header725.2906:                        ; preds = %polly.loop_exit733.2.1, %polly.loop_exit733.2917
  %polly.indvar728.2905 = phi i64 [ %polly.indvar_next729.2915, %polly.loop_exit733.2917 ], [ 0, %polly.loop_exit733.2.1 ]
  %435 = add nuw nsw i64 %polly.indvar728.2905, 64
  %436 = mul nuw nsw i64 %435, 640
  %437 = trunc i64 %435 to i32
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %437, i32 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %polly.loop_header725.2906
  %index1017 = phi i64 [ 0, %polly.loop_header725.2906 ], [ %index.next1018, %vector.body1015 ]
  %vec.ind1023 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.2906 ], [ %vec.ind.next1024, %vector.body1015 ]
  %438 = mul <4 x i32> %vec.ind1023, %broadcast.splat1026
  %439 = add <4 x i32> %438, <i32 3, i32 3, i32 3, i32 3>
  %440 = urem <4 x i32> %439, <i32 80, i32 80, i32 80, i32 80>
  %441 = sitofp <4 x i32> %440 to <4 x double>
  %442 = fmul fast <4 x double> %441, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %443 = shl i64 %index1017, 3
  %444 = add nuw nsw i64 %443, %436
  %445 = getelementptr i8, i8* %call, i64 %444
  %446 = bitcast i8* %445 to <4 x double>*
  store <4 x double> %442, <4 x double>* %446, align 8, !alias.scope !99, !noalias !101
  %index.next1018 = add i64 %index1017, 4
  %vec.ind.next1024 = add <4 x i32> %vec.ind1023, <i32 4, i32 4, i32 4, i32 4>
  %447 = icmp eq i64 %index.next1018, 32
  br i1 %447, label %polly.loop_exit733.2917, label %vector.body1015, !llvm.loop !124

polly.loop_exit733.2917:                          ; preds = %vector.body1015
  %polly.indvar_next729.2915 = add nuw nsw i64 %polly.indvar728.2905, 1
  %exitcond859.2916.not = icmp eq i64 %polly.indvar_next729.2915, 16
  br i1 %exitcond859.2916.not, label %polly.loop_header725.1.2, label %polly.loop_header725.2906

polly.loop_header725.1.2:                         ; preds = %polly.loop_exit733.2917, %polly.loop_exit733.1.2
  %polly.indvar728.1.2 = phi i64 [ %polly.indvar_next729.1.2, %polly.loop_exit733.1.2 ], [ 0, %polly.loop_exit733.2917 ]
  %448 = add nuw nsw i64 %polly.indvar728.1.2, 64
  %449 = mul nuw nsw i64 %448, 640
  %450 = trunc i64 %448 to i32
  %broadcast.splatinsert1037 = insertelement <4 x i32> poison, i32 %450, i32 0
  %broadcast.splat1038 = shufflevector <4 x i32> %broadcast.splatinsert1037, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header725.1.2
  %index1031 = phi i64 [ 0, %polly.loop_header725.1.2 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1035 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.2 ], [ %vec.ind.next1036, %vector.body1029 ]
  %451 = add nuw nsw <4 x i64> %vec.ind1035, <i64 32, i64 32, i64 32, i64 32>
  %452 = trunc <4 x i64> %451 to <4 x i32>
  %453 = mul <4 x i32> %broadcast.splat1038, %452
  %454 = add <4 x i32> %453, <i32 3, i32 3, i32 3, i32 3>
  %455 = urem <4 x i32> %454, <i32 80, i32 80, i32 80, i32 80>
  %456 = sitofp <4 x i32> %455 to <4 x double>
  %457 = fmul fast <4 x double> %456, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %458 = extractelement <4 x i64> %451, i32 0
  %459 = shl i64 %458, 3
  %460 = add nuw nsw i64 %459, %449
  %461 = getelementptr i8, i8* %call, i64 %460
  %462 = bitcast i8* %461 to <4 x double>*
  store <4 x double> %457, <4 x double>* %462, align 8, !alias.scope !99, !noalias !101
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1036 = add <4 x i64> %vec.ind1035, <i64 4, i64 4, i64 4, i64 4>
  %463 = icmp eq i64 %index.next1032, 32
  br i1 %463, label %polly.loop_exit733.1.2, label %vector.body1029, !llvm.loop !125

polly.loop_exit733.1.2:                           ; preds = %vector.body1029
  %polly.indvar_next729.1.2 = add nuw nsw i64 %polly.indvar728.1.2, 1
  %exitcond859.1.2.not = icmp eq i64 %polly.indvar_next729.1.2, 16
  br i1 %exitcond859.1.2.not, label %polly.loop_header725.2.2, label %polly.loop_header725.1.2

polly.loop_header725.2.2:                         ; preds = %polly.loop_exit733.1.2, %polly.loop_exit733.2.2
  %polly.indvar728.2.2 = phi i64 [ %polly.indvar_next729.2.2, %polly.loop_exit733.2.2 ], [ 0, %polly.loop_exit733.1.2 ]
  %464 = add nuw nsw i64 %polly.indvar728.2.2, 64
  %465 = mul nuw nsw i64 %464, 640
  %466 = trunc i64 %464 to i32
  %broadcast.splatinsert1049 = insertelement <4 x i32> poison, i32 %466, i32 0
  %broadcast.splat1050 = shufflevector <4 x i32> %broadcast.splatinsert1049, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %polly.loop_header725.2.2
  %index1043 = phi i64 [ 0, %polly.loop_header725.2.2 ], [ %index.next1044, %vector.body1041 ]
  %vec.ind1047 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.2.2 ], [ %vec.ind.next1048, %vector.body1041 ]
  %467 = add nuw nsw <4 x i64> %vec.ind1047, <i64 64, i64 64, i64 64, i64 64>
  %468 = trunc <4 x i64> %467 to <4 x i32>
  %469 = mul <4 x i32> %broadcast.splat1050, %468
  %470 = add <4 x i32> %469, <i32 3, i32 3, i32 3, i32 3>
  %471 = urem <4 x i32> %470, <i32 80, i32 80, i32 80, i32 80>
  %472 = sitofp <4 x i32> %471 to <4 x double>
  %473 = fmul fast <4 x double> %472, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %474 = extractelement <4 x i64> %467, i32 0
  %475 = shl i64 %474, 3
  %476 = add nuw nsw i64 %475, %465
  %477 = getelementptr i8, i8* %call, i64 %476
  %478 = bitcast i8* %477 to <4 x double>*
  store <4 x double> %473, <4 x double>* %478, align 8, !alias.scope !99, !noalias !101
  %index.next1044 = add i64 %index1043, 4
  %vec.ind.next1048 = add <4 x i64> %vec.ind1047, <i64 4, i64 4, i64 4, i64 4>
  %479 = icmp eq i64 %index.next1044, 16
  br i1 %479, label %polly.loop_exit733.2.2, label %vector.body1041, !llvm.loop !126

polly.loop_exit733.2.2:                           ; preds = %vector.body1041
  %polly.indvar_next729.2.2 = add nuw nsw i64 %polly.indvar728.2.2, 1
  %exitcond859.2.2.not = icmp eq i64 %polly.indvar_next729.2.2, 16
  br i1 %exitcond859.2.2.not, label %polly.loop_header752, label %polly.loop_header725.2.2
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
!21 = distinct !{!"A"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 32}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !23, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 96}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !72, !73}
!78 = !{!68, !71, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !83, !84}
!88 = !{!79, !82, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !93, !94}
!98 = !{!89, !92, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = !{!102, !99}
!106 = distinct !{!106, !13}
!107 = !{!103, !99}
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
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
