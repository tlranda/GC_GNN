; ModuleID = 'syr2k_recreations//mmp_syr2k_S_172.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_172.c"
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
  %call714 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1575 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1575, %call2
  %polly.access.call2595 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2595, %call1
  %2 = or i1 %0, %1
  %polly.access.call615 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call615, %call2
  %4 = icmp ule i8* %polly.access.call2595, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call615, %call1
  %8 = icmp ule i8* %polly.access.call1575, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header700, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv7.i, i64 %index929
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit761.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header492, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1284, label %vector.ph1210

vector.ph1210:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1210
  %index1211 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1212, %vector.body1209 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %index1211
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
  br i1 %cmp.n1214, label %for.inc6.i, label %for.body3.i46.preheader1284

for.body3.i46.preheader1284:                      ; preds = %for.body3.i46.preheader, %middle.block1207
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1207 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1284, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1284 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit517
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1230 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1230, label %for.body3.i60.preheader1282, label %vector.ph1231

vector.ph1231:                                    ; preds = %for.body3.i60.preheader
  %n.vec1233 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1231
  %index1234 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1235, %vector.body1229 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %index1234
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1238 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1238, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1235 = add i64 %index1234, 4
  %57 = icmp eq i64 %index.next1235, %n.vec1233
  br i1 %57, label %middle.block1227, label %vector.body1229, !llvm.loop !51

middle.block1227:                                 ; preds = %vector.body1229
  %cmp.n1237 = icmp eq i64 %indvars.iv21.i52, %n.vec1233
  br i1 %cmp.n1237, label %for.inc6.i63, label %for.body3.i60.preheader1282

for.body3.i60.preheader1282:                      ; preds = %for.body3.i60.preheader, %middle.block1227
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1233, %middle.block1227 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1282, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1282 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit361
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1256 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1256, label %for.body3.i99.preheader1280, label %vector.ph1257

vector.ph1257:                                    ; preds = %for.body3.i99.preheader
  %n.vec1259 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1255 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %index1260
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1264 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1264, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1261 = add i64 %index1260, 4
  %68 = icmp eq i64 %index.next1261, %n.vec1259
  br i1 %68, label %middle.block1253, label %vector.body1255, !llvm.loop !53

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1263 = icmp eq i64 %indvars.iv21.i91, %n.vec1259
  br i1 %cmp.n1263, label %for.inc6.i102, label %for.body3.i99.preheader1280

for.body3.i99.preheader1280:                      ; preds = %for.body3.i99.preheader, %middle.block1253
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1259, %middle.block1253 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1280, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1280 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1268 = phi i64 [ %indvar.next1269, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
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
  %wide.load1278 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1278, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1275 = add i64 %index1274, 4
  %95 = icmp eq i64 %index.next1275, %n.vec1273
  br i1 %95, label %middle.block1265, label %vector.body1267, !llvm.loop !64

middle.block1265:                                 ; preds = %vector.body1267
  %cmp.n1277 = icmp eq i64 %88, %n.vec1273
  br i1 %cmp.n1277, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1265
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1273, %middle.block1265 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1265
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1269 = add i64 %indvar1268, 1
  br i1 %exitcond793.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond792.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = trunc i64 %polly.indvar202 to i8
  %pexp.p_div_q.lhs.trunc = add i8 %97, 6
  %pexp.p_div_q770 = udiv i8 %pexp.p_div_q.lhs.trunc, 5
  %pexp.p_div_q.zext = zext i8 %pexp.p_div_q770 to i64
  %98 = sub nsw i64 %polly.indvar202, %pexp.p_div_q.zext
  %99 = mul nsw i64 %polly.indvar202, -16
  %100 = shl nsw i64 %polly.indvar202, 4
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 16
  %exitcond791.not = icmp eq i64 %polly.indvar_next203, 5
  br i1 %exitcond791.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %polly.loop_exit213 ], [ %indvars.iv784, %polly.loop_header199 ]
  %indvars.iv782 = phi i64 [ %indvars.iv.next783, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %101 = mul nuw nsw i64 %polly.indvar208, 20
  %102 = add nsw i64 %101, %99
  %103 = icmp sgt i64 %102, 0
  %104 = select i1 %103, i64 %102, i64 0
  %polly.loop_guard = icmp slt i64 %104, 16
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv782, i64 0)
  %105 = add i64 %smax, %indvars.iv786
  %106 = sub nsw i64 %100, %101
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %polly.loop_cond210.not = icmp sgt i64 %polly.indvar208, %98
  %indvars.iv.next783 = add nsw i64 %indvars.iv782, 20
  %indvars.iv.next787 = add nsw i64 %indvars.iv786, -20
  br i1 %polly.loop_cond210.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit219
  %indvars.iv788 = phi i64 [ %105, %polly.loop_header211.preheader ], [ %indvars.iv.next789, %polly.loop_exit219 ]
  %polly.indvar214 = phi i64 [ %104, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv788, i64 19)
  %107 = add nsw i64 %polly.indvar214, %106
  %polly.loop_guard227910 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar214, %100
  %109 = mul i64 %108, 480
  %110 = mul i64 %108, 640
  br i1 %polly.loop_guard227910, label %polly.loop_header217.us, label %polly.loop_exit219

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit226.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit226.loopexit.us ], [ 0, %polly.loop_header211 ]
  %111 = shl nuw nsw i64 %polly.indvar220.us, 3
  %scevgep231.us = getelementptr i8, i8* %call1, i64 %111
  %scevgep235.us = getelementptr i8, i8* %call2, i64 %111
  %scevgep236.us = getelementptr i8, i8* %scevgep235.us, i64 %109
  %scevgep236237.us = bitcast i8* %scevgep236.us to double*
  %_p_scalar_238.us = load double, double* %scevgep236237.us, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us = getelementptr i8, i8* %scevgep231.us, i64 %109
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header224.us, %polly.loop_header217.us
  %polly.indvar228.us = phi i64 [ 0, %polly.loop_header217.us ], [ %polly.indvar_next229.us, %polly.loop_header224.us ]
  %112 = add nuw nsw i64 %polly.indvar228.us, %101
  %113 = mul nuw nsw i64 %112, 480
  %scevgep232.us = getelementptr i8, i8* %scevgep231.us, i64 %113
  %scevgep232233.us = bitcast i8* %scevgep232.us to double*
  %_p_scalar_234.us = load double, double* %scevgep232233.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_238.us, %_p_scalar_234.us
  %scevgep240.us = getelementptr i8, i8* %scevgep235.us, i64 %113
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_242.us
  %114 = shl i64 %112, 3
  %115 = add i64 %114, %110
  %scevgep247.us = getelementptr i8, i8* %call, i64 %115
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar228.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit226.loopexit.us, label %polly.loop_header224.us

polly.loop_exit226.loopexit.us:                   ; preds = %polly.loop_header224.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next221.us, 60
  br i1 %exitcond790.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit226.loopexit.us, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 15
  %indvars.iv.next789 = add i64 %indvars.iv788, 1
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1242 = phi i64 [ %indvar.next1243, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %116 = add i64 %indvar1242, 1
  %117 = mul nuw nsw i64 %polly.indvar339, 640
  %scevgep348 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1244 = icmp ult i64 %116, 4
  br i1 %min.iters.check1244, label %polly.loop_header342.preheader, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header336
  %n.vec1247 = and i64 %116, -4
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1241 ]
  %118 = shl nuw nsw i64 %index1248, 3
  %119 = getelementptr i8, i8* %scevgep348, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !69, !noalias !71
  %121 = fmul fast <4 x double> %wide.load1252, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !69, !noalias !71
  %index.next1249 = add i64 %index1248, 4
  %123 = icmp eq i64 %index.next1249, %n.vec1247
  br i1 %123, label %middle.block1239, label %vector.body1241, !llvm.loop !74

middle.block1239:                                 ; preds = %vector.body1241
  %cmp.n1251 = icmp eq i64 %116, %n.vec1247
  br i1 %cmp.n1251, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block1239
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1247, %middle.block1239 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block1239
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next340, 80
  %indvar.next1243 = add i64 %indvar1242, 1
  br i1 %exitcond810.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %124
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond809.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !75

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit361
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %125 = trunc i64 %polly.indvar355 to i8
  %pexp.p_div_q358.lhs.trunc = add i8 %125, 6
  %pexp.p_div_q358769 = udiv i8 %pexp.p_div_q358.lhs.trunc, 5
  %pexp.p_div_q358.zext = zext i8 %pexp.p_div_q358769 to i64
  %126 = sub nsw i64 %polly.indvar355, %pexp.p_div_q358.zext
  %127 = mul nsw i64 %polly.indvar355, -16
  %128 = shl nsw i64 %polly.indvar355, 4
  br label %polly.loop_header359

polly.loop_exit361:                               ; preds = %polly.loop_exit368
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next795 = add nsw i64 %indvars.iv794, -16
  %indvars.iv.next800 = add nuw nsw i64 %indvars.iv799, 16
  %exitcond808.not = icmp eq i64 %polly.indvar_next356, 5
  br i1 %exitcond808.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header359:                             ; preds = %polly.loop_exit368, %polly.loop_header352
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit368 ], [ %indvars.iv799, %polly.loop_header352 ]
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit368 ], [ %indvars.iv794, %polly.loop_header352 ]
  %polly.indvar362 = phi i64 [ %polly.indvar_next363, %polly.loop_exit368 ], [ 0, %polly.loop_header352 ]
  %129 = mul nuw nsw i64 %polly.indvar362, 20
  %130 = add nsw i64 %129, %127
  %131 = icmp sgt i64 %130, 0
  %132 = select i1 %131, i64 %130, i64 0
  %polly.loop_guard369 = icmp slt i64 %132, 16
  br i1 %polly.loop_guard369, label %polly.loop_header366.preheader, label %polly.loop_exit368

polly.loop_header366.preheader:                   ; preds = %polly.loop_header359
  %smax798 = call i64 @llvm.smax.i64(i64 %indvars.iv796, i64 0)
  %133 = add i64 %smax798, %indvars.iv801
  %134 = sub nsw i64 %128, %129
  br label %polly.loop_header366

polly.loop_exit368:                               ; preds = %polly.loop_exit375, %polly.loop_header359
  %polly.indvar_next363 = add nuw nsw i64 %polly.indvar362, 1
  %polly.loop_cond364.not = icmp sgt i64 %polly.indvar362, %126
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, 20
  %indvars.iv.next802 = add nsw i64 %indvars.iv801, -20
  br i1 %polly.loop_cond364.not, label %polly.loop_exit361, label %polly.loop_header359

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_exit375
  %indvars.iv803 = phi i64 [ %133, %polly.loop_header366.preheader ], [ %indvars.iv.next804, %polly.loop_exit375 ]
  %polly.indvar370 = phi i64 [ %132, %polly.loop_header366.preheader ], [ %polly.indvar_next371, %polly.loop_exit375 ]
  %smin805 = call i64 @llvm.smin.i64(i64 %indvars.iv803, i64 19)
  %135 = add nsw i64 %polly.indvar370, %134
  %polly.loop_guard383911 = icmp sgt i64 %135, -1
  %136 = add nuw nsw i64 %polly.indvar370, %128
  %137 = mul i64 %136, 480
  %138 = mul i64 %136, 640
  br i1 %polly.loop_guard383911, label %polly.loop_header373.us, label %polly.loop_exit375

polly.loop_header373.us:                          ; preds = %polly.loop_header366, %polly.loop_exit382.loopexit.us
  %polly.indvar376.us = phi i64 [ %polly.indvar_next377.us, %polly.loop_exit382.loopexit.us ], [ 0, %polly.loop_header366 ]
  %139 = shl nuw nsw i64 %polly.indvar376.us, 3
  %scevgep387.us = getelementptr i8, i8* %call1, i64 %139
  %scevgep391.us = getelementptr i8, i8* %call2, i64 %139
  %scevgep392.us = getelementptr i8, i8* %scevgep391.us, i64 %137
  %scevgep392393.us = bitcast i8* %scevgep392.us to double*
  %_p_scalar_394.us = load double, double* %scevgep392393.us, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us = getelementptr i8, i8* %scevgep387.us, i64 %137
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header380.us

polly.loop_header380.us:                          ; preds = %polly.loop_header380.us, %polly.loop_header373.us
  %polly.indvar384.us = phi i64 [ 0, %polly.loop_header373.us ], [ %polly.indvar_next385.us, %polly.loop_header380.us ]
  %140 = add nuw nsw i64 %polly.indvar384.us, %129
  %141 = mul nuw nsw i64 %140, 480
  %scevgep388.us = getelementptr i8, i8* %scevgep387.us, i64 %141
  %scevgep388389.us = bitcast i8* %scevgep388.us to double*
  %_p_scalar_390.us = load double, double* %scevgep388389.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_394.us, %_p_scalar_390.us
  %scevgep396.us = getelementptr i8, i8* %scevgep391.us, i64 %141
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_402.us, %_p_scalar_398.us
  %142 = shl i64 %140, 3
  %143 = add i64 %142, %138
  %scevgep403.us = getelementptr i8, i8* %call, i64 %143
  %scevgep403404.us = bitcast i8* %scevgep403.us to double*
  %_p_scalar_405.us = load double, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_405.us
  store double %p_add42.i79.us, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next385.us = add nuw nsw i64 %polly.indvar384.us, 1
  %exitcond806.not = icmp eq i64 %polly.indvar384.us, %smin805
  br i1 %exitcond806.not, label %polly.loop_exit382.loopexit.us, label %polly.loop_header380.us

polly.loop_exit382.loopexit.us:                   ; preds = %polly.loop_header380.us
  %polly.indvar_next377.us = add nuw nsw i64 %polly.indvar376.us, 1
  %exitcond807.not = icmp eq i64 %polly.indvar_next377.us, 60
  br i1 %exitcond807.not, label %polly.loop_exit375, label %polly.loop_header373.us

polly.loop_exit375:                               ; preds = %polly.loop_exit382.loopexit.us, %polly.loop_header366
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %polly.loop_cond372 = icmp ult i64 %polly.indvar370, 15
  %indvars.iv.next804 = add i64 %indvars.iv803, 1
  br i1 %polly.loop_cond372, label %polly.loop_header366, label %polly.loop_exit368

polly.loop_header492:                             ; preds = %init_array.exit, %polly.loop_exit500
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit500 ], [ 0, %init_array.exit ]
  %polly.indvar495 = phi i64 [ %polly.indvar_next496, %polly.loop_exit500 ], [ 1, %init_array.exit ]
  %144 = add i64 %indvar, 1
  %145 = mul nuw nsw i64 %polly.indvar495, 640
  %scevgep504 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1218 = icmp ult i64 %144, 4
  br i1 %min.iters.check1218, label %polly.loop_header498.preheader, label %vector.ph1219

vector.ph1219:                                    ; preds = %polly.loop_header492
  %n.vec1221 = and i64 %144, -4
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1217 ]
  %146 = shl nuw nsw i64 %index1222, 3
  %147 = getelementptr i8, i8* %scevgep504, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !78, !noalias !80
  %149 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !78, !noalias !80
  %index.next1223 = add i64 %index1222, 4
  %151 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %151, label %middle.block1215, label %vector.body1217, !llvm.loop !83

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1225 = icmp eq i64 %144, %n.vec1221
  br i1 %cmp.n1225, label %polly.loop_exit500, label %polly.loop_header498.preheader

polly.loop_header498.preheader:                   ; preds = %polly.loop_header492, %middle.block1215
  %polly.indvar501.ph = phi i64 [ 0, %polly.loop_header492 ], [ %n.vec1221, %middle.block1215 ]
  br label %polly.loop_header498

polly.loop_exit500:                               ; preds = %polly.loop_header498, %middle.block1215
  %polly.indvar_next496 = add nuw nsw i64 %polly.indvar495, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next496, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond827.not, label %polly.loop_header508, label %polly.loop_header492

polly.loop_header498:                             ; preds = %polly.loop_header498.preheader, %polly.loop_header498
  %polly.indvar501 = phi i64 [ %polly.indvar_next502, %polly.loop_header498 ], [ %polly.indvar501.ph, %polly.loop_header498.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar501, 3
  %scevgep505 = getelementptr i8, i8* %scevgep504, i64 %152
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_507, 1.200000e+00
  store double %p_mul.i, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next502 = add nuw nsw i64 %polly.indvar501, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next502, %polly.indvar495
  br i1 %exitcond826.not, label %polly.loop_exit500, label %polly.loop_header498, !llvm.loop !84

polly.loop_header508:                             ; preds = %polly.loop_exit500, %polly.loop_exit517
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %polly.indvar511 = phi i64 [ %polly.indvar_next512, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %153 = trunc i64 %polly.indvar511 to i8
  %pexp.p_div_q514.lhs.trunc = add i8 %153, 6
  %pexp.p_div_q514768 = udiv i8 %pexp.p_div_q514.lhs.trunc, 5
  %pexp.p_div_q514.zext = zext i8 %pexp.p_div_q514768 to i64
  %154 = sub nsw i64 %polly.indvar511, %pexp.p_div_q514.zext
  %155 = mul nsw i64 %polly.indvar511, -16
  %156 = shl nsw i64 %polly.indvar511, 4
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_exit524
  %polly.indvar_next512 = add nuw nsw i64 %polly.indvar511, 1
  %indvars.iv.next812 = add nsw i64 %indvars.iv811, -16
  %indvars.iv.next817 = add nuw nsw i64 %indvars.iv816, 16
  %exitcond825.not = icmp eq i64 %polly.indvar_next512, 5
  br i1 %exitcond825.not, label %kernel_syr2k.exit, label %polly.loop_header508

polly.loop_header515:                             ; preds = %polly.loop_exit524, %polly.loop_header508
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %polly.loop_exit524 ], [ %indvars.iv816, %polly.loop_header508 ]
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %polly.loop_exit524 ], [ %indvars.iv811, %polly.loop_header508 ]
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_exit524 ], [ 0, %polly.loop_header508 ]
  %157 = mul nuw nsw i64 %polly.indvar518, 20
  %158 = add nsw i64 %157, %155
  %159 = icmp sgt i64 %158, 0
  %160 = select i1 %159, i64 %158, i64 0
  %polly.loop_guard525 = icmp slt i64 %160, 16
  br i1 %polly.loop_guard525, label %polly.loop_header522.preheader, label %polly.loop_exit524

polly.loop_header522.preheader:                   ; preds = %polly.loop_header515
  %smax815 = call i64 @llvm.smax.i64(i64 %indvars.iv813, i64 0)
  %161 = add i64 %smax815, %indvars.iv818
  %162 = sub nsw i64 %156, %157
  br label %polly.loop_header522

polly.loop_exit524:                               ; preds = %polly.loop_exit531, %polly.loop_header515
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %polly.loop_cond520.not = icmp sgt i64 %polly.indvar518, %154
  %indvars.iv.next814 = add nsw i64 %indvars.iv813, 20
  %indvars.iv.next819 = add nsw i64 %indvars.iv818, -20
  br i1 %polly.loop_cond520.not, label %polly.loop_exit517, label %polly.loop_header515

polly.loop_header522:                             ; preds = %polly.loop_header522.preheader, %polly.loop_exit531
  %indvars.iv820 = phi i64 [ %161, %polly.loop_header522.preheader ], [ %indvars.iv.next821, %polly.loop_exit531 ]
  %polly.indvar526 = phi i64 [ %160, %polly.loop_header522.preheader ], [ %polly.indvar_next527, %polly.loop_exit531 ]
  %smin822 = call i64 @llvm.smin.i64(i64 %indvars.iv820, i64 19)
  %163 = add nsw i64 %polly.indvar526, %162
  %polly.loop_guard539912 = icmp sgt i64 %163, -1
  %164 = add nuw nsw i64 %polly.indvar526, %156
  %165 = mul i64 %164, 480
  %166 = mul i64 %164, 640
  br i1 %polly.loop_guard539912, label %polly.loop_header529.us, label %polly.loop_exit531

polly.loop_header529.us:                          ; preds = %polly.loop_header522, %polly.loop_exit538.loopexit.us
  %polly.indvar532.us = phi i64 [ %polly.indvar_next533.us, %polly.loop_exit538.loopexit.us ], [ 0, %polly.loop_header522 ]
  %167 = shl nuw nsw i64 %polly.indvar532.us, 3
  %scevgep543.us = getelementptr i8, i8* %call1, i64 %167
  %scevgep547.us = getelementptr i8, i8* %call2, i64 %167
  %scevgep548.us = getelementptr i8, i8* %scevgep547.us, i64 %165
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us = getelementptr i8, i8* %scevgep543.us, i64 %165
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header536.us

polly.loop_header536.us:                          ; preds = %polly.loop_header536.us, %polly.loop_header529.us
  %polly.indvar540.us = phi i64 [ 0, %polly.loop_header529.us ], [ %polly.indvar_next541.us, %polly.loop_header536.us ]
  %168 = add nuw nsw i64 %polly.indvar540.us, %157
  %169 = mul nuw nsw i64 %168, 480
  %scevgep544.us = getelementptr i8, i8* %scevgep543.us, i64 %169
  %scevgep544545.us = bitcast i8* %scevgep544.us to double*
  %_p_scalar_546.us = load double, double* %scevgep544545.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_546.us
  %scevgep552.us = getelementptr i8, i8* %scevgep547.us, i64 %169
  %scevgep552553.us = bitcast i8* %scevgep552.us to double*
  %_p_scalar_554.us = load double, double* %scevgep552553.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_554.us
  %170 = shl i64 %168, 3
  %171 = add i64 %170, %166
  %scevgep559.us = getelementptr i8, i8* %call, i64 %171
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_561.us
  store double %p_add42.i.us, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next541.us = add nuw nsw i64 %polly.indvar540.us, 1
  %exitcond823.not = icmp eq i64 %polly.indvar540.us, %smin822
  br i1 %exitcond823.not, label %polly.loop_exit538.loopexit.us, label %polly.loop_header536.us

polly.loop_exit538.loopexit.us:                   ; preds = %polly.loop_header536.us
  %polly.indvar_next533.us = add nuw nsw i64 %polly.indvar532.us, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next533.us, 60
  br i1 %exitcond824.not, label %polly.loop_exit531, label %polly.loop_header529.us

polly.loop_exit531:                               ; preds = %polly.loop_exit538.loopexit.us, %polly.loop_header522
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %polly.loop_cond528 = icmp ult i64 %polly.indvar526, 15
  %indvars.iv.next821 = add i64 %indvars.iv820, 1
  br i1 %polly.loop_cond528, label %polly.loop_header522, label %polly.loop_exit524

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %172 = mul nuw nsw i64 %polly.indvar703, 640
  %173 = trunc i64 %polly.indvar703 to i32
  %broadcast.splatinsert949 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat950 = shufflevector <4 x i32> %broadcast.splatinsert949, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body939

vector.body939:                                   ; preds = %vector.body939, %polly.loop_header700
  %index941 = phi i64 [ 0, %polly.loop_header700 ], [ %index.next942, %vector.body939 ]
  %vec.ind947 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700 ], [ %vec.ind.next948, %vector.body939 ]
  %174 = mul <4 x i32> %vec.ind947, %broadcast.splat950
  %175 = add <4 x i32> %174, <i32 3, i32 3, i32 3, i32 3>
  %176 = urem <4 x i32> %175, <i32 80, i32 80, i32 80, i32 80>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %179 = shl i64 %index941, 3
  %180 = add nuw nsw i64 %179, %172
  %181 = getelementptr i8, i8* %call, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !87, !noalias !89
  %index.next942 = add i64 %index941, 4
  %vec.ind.next948 = add <4 x i32> %vec.ind947, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next942, 32
  br i1 %183, label %polly.loop_exit708, label %vector.body939, !llvm.loop !92

polly.loop_exit708:                               ; preds = %vector.body939
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next704, 32
  br i1 %exitcond847.not, label %polly.loop_header700.1, label %polly.loop_header700

polly.loop_header727:                             ; preds = %polly.loop_exit708.2.2, %polly.loop_exit735
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708.2.2 ]
  %184 = mul nuw nsw i64 %polly.indvar730, 480
  %185 = trunc i64 %polly.indvar730 to i32
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %polly.loop_header727
  %index1055 = phi i64 [ 0, %polly.loop_header727 ], [ %index.next1056, %vector.body1053 ]
  %vec.ind1061 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727 ], [ %vec.ind.next1062, %vector.body1053 ]
  %186 = mul <4 x i32> %vec.ind1061, %broadcast.splat1064
  %187 = add <4 x i32> %186, <i32 2, i32 2, i32 2, i32 2>
  %188 = urem <4 x i32> %187, <i32 60, i32 60, i32 60, i32 60>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %191 = shl i64 %index1055, 3
  %192 = add i64 %191, %184
  %193 = getelementptr i8, i8* %call2, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !91, !noalias !93
  %index.next1056 = add i64 %index1055, 4
  %vec.ind.next1062 = add <4 x i32> %vec.ind1061, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1056, 32
  br i1 %195, label %polly.loop_exit735, label %vector.body1053, !llvm.loop !94

polly.loop_exit735:                               ; preds = %vector.body1053
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond838.not, label %polly.loop_header727.1, label %polly.loop_header727

polly.loop_header753:                             ; preds = %polly.loop_exit735.1.2, %polly.loop_exit761
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735.1.2 ]
  %196 = mul nuw nsw i64 %polly.indvar756, 480
  %197 = trunc i64 %polly.indvar756 to i32
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %polly.loop_header753
  %index1133 = phi i64 [ 0, %polly.loop_header753 ], [ %index.next1134, %vector.body1131 ]
  %vec.ind1139 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753 ], [ %vec.ind.next1140, %vector.body1131 ]
  %198 = mul <4 x i32> %vec.ind1139, %broadcast.splat1142
  %199 = add <4 x i32> %198, <i32 1, i32 1, i32 1, i32 1>
  %200 = urem <4 x i32> %199, <i32 80, i32 80, i32 80, i32 80>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %203 = shl i64 %index1133, 3
  %204 = add i64 %203, %196
  %205 = getelementptr i8, i8* %call1, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !90, !noalias !95
  %index.next1134 = add i64 %index1133, 4
  %vec.ind.next1140 = add <4 x i32> %vec.ind1139, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next1134, 32
  br i1 %207, label %polly.loop_exit761, label %vector.body1131, !llvm.loop !96

polly.loop_exit761:                               ; preds = %vector.body1131
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond832.not, label %polly.loop_header753.1, label %polly.loop_header753

polly.loop_header753.1:                           ; preds = %polly.loop_exit761, %polly.loop_exit761.1
  %polly.indvar756.1 = phi i64 [ %polly.indvar_next757.1, %polly.loop_exit761.1 ], [ 0, %polly.loop_exit761 ]
  %208 = mul nuw nsw i64 %polly.indvar756.1, 480
  %209 = trunc i64 %polly.indvar756.1 to i32
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %polly.loop_header753.1
  %index1147 = phi i64 [ 0, %polly.loop_header753.1 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1151 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1 ], [ %vec.ind.next1152, %vector.body1145 ]
  %210 = add nuw nsw <4 x i64> %vec.ind1151, <i64 32, i64 32, i64 32, i64 32>
  %211 = trunc <4 x i64> %210 to <4 x i32>
  %212 = mul <4 x i32> %broadcast.splat1154, %211
  %213 = add <4 x i32> %212, <i32 1, i32 1, i32 1, i32 1>
  %214 = urem <4 x i32> %213, <i32 80, i32 80, i32 80, i32 80>
  %215 = sitofp <4 x i32> %214 to <4 x double>
  %216 = fmul fast <4 x double> %215, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %217 = extractelement <4 x i64> %210, i32 0
  %218 = shl i64 %217, 3
  %219 = add i64 %218, %208
  %220 = getelementptr i8, i8* %call1, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %216, <4 x double>* %221, align 8, !alias.scope !90, !noalias !95
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1152 = add <4 x i64> %vec.ind1151, <i64 4, i64 4, i64 4, i64 4>
  %222 = icmp eq i64 %index.next1148, 28
  br i1 %222, label %polly.loop_exit761.1, label %vector.body1145, !llvm.loop !97

polly.loop_exit761.1:                             ; preds = %vector.body1145
  %polly.indvar_next757.1 = add nuw nsw i64 %polly.indvar756.1, 1
  %exitcond832.1.not = icmp eq i64 %polly.indvar_next757.1, 32
  br i1 %exitcond832.1.not, label %polly.loop_header753.1855, label %polly.loop_header753.1

polly.loop_header753.1855:                        ; preds = %polly.loop_exit761.1, %polly.loop_exit761.1866
  %polly.indvar756.1854 = phi i64 [ %polly.indvar_next757.1864, %polly.loop_exit761.1866 ], [ 0, %polly.loop_exit761.1 ]
  %223 = add nuw nsw i64 %polly.indvar756.1854, 32
  %224 = mul nuw nsw i64 %223, 480
  %225 = trunc i64 %223 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %225, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %polly.loop_header753.1855
  %index1159 = phi i64 [ 0, %polly.loop_header753.1855 ], [ %index.next1160, %vector.body1157 ]
  %vec.ind1165 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.1855 ], [ %vec.ind.next1166, %vector.body1157 ]
  %226 = mul <4 x i32> %vec.ind1165, %broadcast.splat1168
  %227 = add <4 x i32> %226, <i32 1, i32 1, i32 1, i32 1>
  %228 = urem <4 x i32> %227, <i32 80, i32 80, i32 80, i32 80>
  %229 = sitofp <4 x i32> %228 to <4 x double>
  %230 = fmul fast <4 x double> %229, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %231 = shl i64 %index1159, 3
  %232 = add i64 %231, %224
  %233 = getelementptr i8, i8* %call1, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %230, <4 x double>* %234, align 8, !alias.scope !90, !noalias !95
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1166 = add <4 x i32> %vec.ind1165, <i32 4, i32 4, i32 4, i32 4>
  %235 = icmp eq i64 %index.next1160, 32
  br i1 %235, label %polly.loop_exit761.1866, label %vector.body1157, !llvm.loop !98

polly.loop_exit761.1866:                          ; preds = %vector.body1157
  %polly.indvar_next757.1864 = add nuw nsw i64 %polly.indvar756.1854, 1
  %exitcond832.1865.not = icmp eq i64 %polly.indvar_next757.1864, 32
  br i1 %exitcond832.1865.not, label %polly.loop_header753.1.1, label %polly.loop_header753.1855

polly.loop_header753.1.1:                         ; preds = %polly.loop_exit761.1866, %polly.loop_exit761.1.1
  %polly.indvar756.1.1 = phi i64 [ %polly.indvar_next757.1.1, %polly.loop_exit761.1.1 ], [ 0, %polly.loop_exit761.1866 ]
  %236 = add nuw nsw i64 %polly.indvar756.1.1, 32
  %237 = mul nuw nsw i64 %236, 480
  %238 = trunc i64 %236 to i32
  %broadcast.splatinsert1179 = insertelement <4 x i32> poison, i32 %238, i32 0
  %broadcast.splat1180 = shufflevector <4 x i32> %broadcast.splatinsert1179, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_header753.1.1
  %index1173 = phi i64 [ 0, %polly.loop_header753.1.1 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1177 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.1 ], [ %vec.ind.next1178, %vector.body1171 ]
  %239 = add nuw nsw <4 x i64> %vec.ind1177, <i64 32, i64 32, i64 32, i64 32>
  %240 = trunc <4 x i64> %239 to <4 x i32>
  %241 = mul <4 x i32> %broadcast.splat1180, %240
  %242 = add <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %243 = urem <4 x i32> %242, <i32 80, i32 80, i32 80, i32 80>
  %244 = sitofp <4 x i32> %243 to <4 x double>
  %245 = fmul fast <4 x double> %244, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %246 = extractelement <4 x i64> %239, i32 0
  %247 = shl i64 %246, 3
  %248 = add i64 %247, %237
  %249 = getelementptr i8, i8* %call1, i64 %248
  %250 = bitcast i8* %249 to <4 x double>*
  store <4 x double> %245, <4 x double>* %250, align 8, !alias.scope !90, !noalias !95
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1178 = add <4 x i64> %vec.ind1177, <i64 4, i64 4, i64 4, i64 4>
  %251 = icmp eq i64 %index.next1174, 28
  br i1 %251, label %polly.loop_exit761.1.1, label %vector.body1171, !llvm.loop !99

polly.loop_exit761.1.1:                           ; preds = %vector.body1171
  %polly.indvar_next757.1.1 = add nuw nsw i64 %polly.indvar756.1.1, 1
  %exitcond832.1.1.not = icmp eq i64 %polly.indvar_next757.1.1, 32
  br i1 %exitcond832.1.1.not, label %polly.loop_header753.2, label %polly.loop_header753.1.1

polly.loop_header753.2:                           ; preds = %polly.loop_exit761.1.1, %polly.loop_exit761.2
  %polly.indvar756.2 = phi i64 [ %polly.indvar_next757.2, %polly.loop_exit761.2 ], [ 0, %polly.loop_exit761.1.1 ]
  %252 = add nuw nsw i64 %polly.indvar756.2, 64
  %253 = mul nuw nsw i64 %252, 480
  %254 = trunc i64 %252 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %254, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %polly.loop_header753.2
  %index1185 = phi i64 [ 0, %polly.loop_header753.2 ], [ %index.next1186, %vector.body1183 ]
  %vec.ind1191 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.2 ], [ %vec.ind.next1192, %vector.body1183 ]
  %255 = mul <4 x i32> %vec.ind1191, %broadcast.splat1194
  %256 = add <4 x i32> %255, <i32 1, i32 1, i32 1, i32 1>
  %257 = urem <4 x i32> %256, <i32 80, i32 80, i32 80, i32 80>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %260 = shl i64 %index1185, 3
  %261 = add i64 %260, %253
  %262 = getelementptr i8, i8* %call1, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %259, <4 x double>* %263, align 8, !alias.scope !90, !noalias !95
  %index.next1186 = add i64 %index1185, 4
  %vec.ind.next1192 = add <4 x i32> %vec.ind1191, <i32 4, i32 4, i32 4, i32 4>
  %264 = icmp eq i64 %index.next1186, 32
  br i1 %264, label %polly.loop_exit761.2, label %vector.body1183, !llvm.loop !100

polly.loop_exit761.2:                             ; preds = %vector.body1183
  %polly.indvar_next757.2 = add nuw nsw i64 %polly.indvar756.2, 1
  %exitcond832.2.not = icmp eq i64 %polly.indvar_next757.2, 16
  br i1 %exitcond832.2.not, label %polly.loop_header753.1.2, label %polly.loop_header753.2

polly.loop_header753.1.2:                         ; preds = %polly.loop_exit761.2, %polly.loop_exit761.1.2
  %polly.indvar756.1.2 = phi i64 [ %polly.indvar_next757.1.2, %polly.loop_exit761.1.2 ], [ 0, %polly.loop_exit761.2 ]
  %265 = add nuw nsw i64 %polly.indvar756.1.2, 64
  %266 = mul nuw nsw i64 %265, 480
  %267 = trunc i64 %265 to i32
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %267, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %polly.loop_header753.1.2
  %index1199 = phi i64 [ 0, %polly.loop_header753.1.2 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.2 ], [ %vec.ind.next1204, %vector.body1197 ]
  %268 = add nuw nsw <4 x i64> %vec.ind1203, <i64 32, i64 32, i64 32, i64 32>
  %269 = trunc <4 x i64> %268 to <4 x i32>
  %270 = mul <4 x i32> %broadcast.splat1206, %269
  %271 = add <4 x i32> %270, <i32 1, i32 1, i32 1, i32 1>
  %272 = urem <4 x i32> %271, <i32 80, i32 80, i32 80, i32 80>
  %273 = sitofp <4 x i32> %272 to <4 x double>
  %274 = fmul fast <4 x double> %273, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %275 = extractelement <4 x i64> %268, i32 0
  %276 = shl i64 %275, 3
  %277 = add i64 %276, %266
  %278 = getelementptr i8, i8* %call1, i64 %277
  %279 = bitcast i8* %278 to <4 x double>*
  store <4 x double> %274, <4 x double>* %279, align 8, !alias.scope !90, !noalias !95
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %280 = icmp eq i64 %index.next1200, 28
  br i1 %280, label %polly.loop_exit761.1.2, label %vector.body1197, !llvm.loop !101

polly.loop_exit761.1.2:                           ; preds = %vector.body1197
  %polly.indvar_next757.1.2 = add nuw nsw i64 %polly.indvar756.1.2, 1
  %exitcond832.1.2.not = icmp eq i64 %polly.indvar_next757.1.2, 16
  br i1 %exitcond832.1.2.not, label %init_array.exit, label %polly.loop_header753.1.2

polly.loop_header727.1:                           ; preds = %polly.loop_exit735, %polly.loop_exit735.1
  %polly.indvar730.1 = phi i64 [ %polly.indvar_next731.1, %polly.loop_exit735.1 ], [ 0, %polly.loop_exit735 ]
  %281 = mul nuw nsw i64 %polly.indvar730.1, 480
  %282 = trunc i64 %polly.indvar730.1 to i32
  %broadcast.splatinsert1075 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1076 = shufflevector <4 x i32> %broadcast.splatinsert1075, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header727.1
  %index1069 = phi i64 [ 0, %polly.loop_header727.1 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1073 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1 ], [ %vec.ind.next1074, %vector.body1067 ]
  %283 = add nuw nsw <4 x i64> %vec.ind1073, <i64 32, i64 32, i64 32, i64 32>
  %284 = trunc <4 x i64> %283 to <4 x i32>
  %285 = mul <4 x i32> %broadcast.splat1076, %284
  %286 = add <4 x i32> %285, <i32 2, i32 2, i32 2, i32 2>
  %287 = urem <4 x i32> %286, <i32 60, i32 60, i32 60, i32 60>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %290 = extractelement <4 x i64> %283, i32 0
  %291 = shl i64 %290, 3
  %292 = add i64 %291, %281
  %293 = getelementptr i8, i8* %call2, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %289, <4 x double>* %294, align 8, !alias.scope !91, !noalias !93
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1074 = add <4 x i64> %vec.ind1073, <i64 4, i64 4, i64 4, i64 4>
  %295 = icmp eq i64 %index.next1070, 28
  br i1 %295, label %polly.loop_exit735.1, label %vector.body1067, !llvm.loop !102

polly.loop_exit735.1:                             ; preds = %vector.body1067
  %polly.indvar_next731.1 = add nuw nsw i64 %polly.indvar730.1, 1
  %exitcond838.1.not = icmp eq i64 %polly.indvar_next731.1, 32
  br i1 %exitcond838.1.not, label %polly.loop_header727.1869, label %polly.loop_header727.1

polly.loop_header727.1869:                        ; preds = %polly.loop_exit735.1, %polly.loop_exit735.1880
  %polly.indvar730.1868 = phi i64 [ %polly.indvar_next731.1878, %polly.loop_exit735.1880 ], [ 0, %polly.loop_exit735.1 ]
  %296 = add nuw nsw i64 %polly.indvar730.1868, 32
  %297 = mul nuw nsw i64 %296, 480
  %298 = trunc i64 %296 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %298, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %polly.loop_header727.1869
  %index1081 = phi i64 [ 0, %polly.loop_header727.1869 ], [ %index.next1082, %vector.body1079 ]
  %vec.ind1087 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.1869 ], [ %vec.ind.next1088, %vector.body1079 ]
  %299 = mul <4 x i32> %vec.ind1087, %broadcast.splat1090
  %300 = add <4 x i32> %299, <i32 2, i32 2, i32 2, i32 2>
  %301 = urem <4 x i32> %300, <i32 60, i32 60, i32 60, i32 60>
  %302 = sitofp <4 x i32> %301 to <4 x double>
  %303 = fmul fast <4 x double> %302, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %304 = shl i64 %index1081, 3
  %305 = add i64 %304, %297
  %306 = getelementptr i8, i8* %call2, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  store <4 x double> %303, <4 x double>* %307, align 8, !alias.scope !91, !noalias !93
  %index.next1082 = add i64 %index1081, 4
  %vec.ind.next1088 = add <4 x i32> %vec.ind1087, <i32 4, i32 4, i32 4, i32 4>
  %308 = icmp eq i64 %index.next1082, 32
  br i1 %308, label %polly.loop_exit735.1880, label %vector.body1079, !llvm.loop !103

polly.loop_exit735.1880:                          ; preds = %vector.body1079
  %polly.indvar_next731.1878 = add nuw nsw i64 %polly.indvar730.1868, 1
  %exitcond838.1879.not = icmp eq i64 %polly.indvar_next731.1878, 32
  br i1 %exitcond838.1879.not, label %polly.loop_header727.1.1, label %polly.loop_header727.1869

polly.loop_header727.1.1:                         ; preds = %polly.loop_exit735.1880, %polly.loop_exit735.1.1
  %polly.indvar730.1.1 = phi i64 [ %polly.indvar_next731.1.1, %polly.loop_exit735.1.1 ], [ 0, %polly.loop_exit735.1880 ]
  %309 = add nuw nsw i64 %polly.indvar730.1.1, 32
  %310 = mul nuw nsw i64 %309, 480
  %311 = trunc i64 %309 to i32
  %broadcast.splatinsert1101 = insertelement <4 x i32> poison, i32 %311, i32 0
  %broadcast.splat1102 = shufflevector <4 x i32> %broadcast.splatinsert1101, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %polly.loop_header727.1.1
  %index1095 = phi i64 [ 0, %polly.loop_header727.1.1 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1099 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.1 ], [ %vec.ind.next1100, %vector.body1093 ]
  %312 = add nuw nsw <4 x i64> %vec.ind1099, <i64 32, i64 32, i64 32, i64 32>
  %313 = trunc <4 x i64> %312 to <4 x i32>
  %314 = mul <4 x i32> %broadcast.splat1102, %313
  %315 = add <4 x i32> %314, <i32 2, i32 2, i32 2, i32 2>
  %316 = urem <4 x i32> %315, <i32 60, i32 60, i32 60, i32 60>
  %317 = sitofp <4 x i32> %316 to <4 x double>
  %318 = fmul fast <4 x double> %317, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %319 = extractelement <4 x i64> %312, i32 0
  %320 = shl i64 %319, 3
  %321 = add i64 %320, %310
  %322 = getelementptr i8, i8* %call2, i64 %321
  %323 = bitcast i8* %322 to <4 x double>*
  store <4 x double> %318, <4 x double>* %323, align 8, !alias.scope !91, !noalias !93
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1100 = add <4 x i64> %vec.ind1099, <i64 4, i64 4, i64 4, i64 4>
  %324 = icmp eq i64 %index.next1096, 28
  br i1 %324, label %polly.loop_exit735.1.1, label %vector.body1093, !llvm.loop !104

polly.loop_exit735.1.1:                           ; preds = %vector.body1093
  %polly.indvar_next731.1.1 = add nuw nsw i64 %polly.indvar730.1.1, 1
  %exitcond838.1.1.not = icmp eq i64 %polly.indvar_next731.1.1, 32
  br i1 %exitcond838.1.1.not, label %polly.loop_header727.2, label %polly.loop_header727.1.1

polly.loop_header727.2:                           ; preds = %polly.loop_exit735.1.1, %polly.loop_exit735.2
  %polly.indvar730.2 = phi i64 [ %polly.indvar_next731.2, %polly.loop_exit735.2 ], [ 0, %polly.loop_exit735.1.1 ]
  %325 = add nuw nsw i64 %polly.indvar730.2, 64
  %326 = mul nuw nsw i64 %325, 480
  %327 = trunc i64 %325 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %327, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.body1105, %polly.loop_header727.2
  %index1107 = phi i64 [ 0, %polly.loop_header727.2 ], [ %index.next1108, %vector.body1105 ]
  %vec.ind1113 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.2 ], [ %vec.ind.next1114, %vector.body1105 ]
  %328 = mul <4 x i32> %vec.ind1113, %broadcast.splat1116
  %329 = add <4 x i32> %328, <i32 2, i32 2, i32 2, i32 2>
  %330 = urem <4 x i32> %329, <i32 60, i32 60, i32 60, i32 60>
  %331 = sitofp <4 x i32> %330 to <4 x double>
  %332 = fmul fast <4 x double> %331, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %333 = shl i64 %index1107, 3
  %334 = add i64 %333, %326
  %335 = getelementptr i8, i8* %call2, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %332, <4 x double>* %336, align 8, !alias.scope !91, !noalias !93
  %index.next1108 = add i64 %index1107, 4
  %vec.ind.next1114 = add <4 x i32> %vec.ind1113, <i32 4, i32 4, i32 4, i32 4>
  %337 = icmp eq i64 %index.next1108, 32
  br i1 %337, label %polly.loop_exit735.2, label %vector.body1105, !llvm.loop !105

polly.loop_exit735.2:                             ; preds = %vector.body1105
  %polly.indvar_next731.2 = add nuw nsw i64 %polly.indvar730.2, 1
  %exitcond838.2.not = icmp eq i64 %polly.indvar_next731.2, 16
  br i1 %exitcond838.2.not, label %polly.loop_header727.1.2, label %polly.loop_header727.2

polly.loop_header727.1.2:                         ; preds = %polly.loop_exit735.2, %polly.loop_exit735.1.2
  %polly.indvar730.1.2 = phi i64 [ %polly.indvar_next731.1.2, %polly.loop_exit735.1.2 ], [ 0, %polly.loop_exit735.2 ]
  %338 = add nuw nsw i64 %polly.indvar730.1.2, 64
  %339 = mul nuw nsw i64 %338, 480
  %340 = trunc i64 %338 to i32
  %broadcast.splatinsert1127 = insertelement <4 x i32> poison, i32 %340, i32 0
  %broadcast.splat1128 = shufflevector <4 x i32> %broadcast.splatinsert1127, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header727.1.2
  %index1121 = phi i64 [ 0, %polly.loop_header727.1.2 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1125 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.2 ], [ %vec.ind.next1126, %vector.body1119 ]
  %341 = add nuw nsw <4 x i64> %vec.ind1125, <i64 32, i64 32, i64 32, i64 32>
  %342 = trunc <4 x i64> %341 to <4 x i32>
  %343 = mul <4 x i32> %broadcast.splat1128, %342
  %344 = add <4 x i32> %343, <i32 2, i32 2, i32 2, i32 2>
  %345 = urem <4 x i32> %344, <i32 60, i32 60, i32 60, i32 60>
  %346 = sitofp <4 x i32> %345 to <4 x double>
  %347 = fmul fast <4 x double> %346, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %348 = extractelement <4 x i64> %341, i32 0
  %349 = shl i64 %348, 3
  %350 = add i64 %349, %339
  %351 = getelementptr i8, i8* %call2, i64 %350
  %352 = bitcast i8* %351 to <4 x double>*
  store <4 x double> %347, <4 x double>* %352, align 8, !alias.scope !91, !noalias !93
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1126 = add <4 x i64> %vec.ind1125, <i64 4, i64 4, i64 4, i64 4>
  %353 = icmp eq i64 %index.next1122, 28
  br i1 %353, label %polly.loop_exit735.1.2, label %vector.body1119, !llvm.loop !106

polly.loop_exit735.1.2:                           ; preds = %vector.body1119
  %polly.indvar_next731.1.2 = add nuw nsw i64 %polly.indvar730.1.2, 1
  %exitcond838.1.2.not = icmp eq i64 %polly.indvar_next731.1.2, 16
  br i1 %exitcond838.1.2.not, label %polly.loop_header753, label %polly.loop_header727.1.2

polly.loop_header700.1:                           ; preds = %polly.loop_exit708, %polly.loop_exit708.1
  %polly.indvar703.1 = phi i64 [ %polly.indvar_next704.1, %polly.loop_exit708.1 ], [ 0, %polly.loop_exit708 ]
  %354 = mul nuw nsw i64 %polly.indvar703.1, 640
  %355 = trunc i64 %polly.indvar703.1 to i32
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %polly.loop_header700.1
  %index955 = phi i64 [ 0, %polly.loop_header700.1 ], [ %index.next956, %vector.body953 ]
  %vec.ind959 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1 ], [ %vec.ind.next960, %vector.body953 ]
  %356 = add nuw nsw <4 x i64> %vec.ind959, <i64 32, i64 32, i64 32, i64 32>
  %357 = trunc <4 x i64> %356 to <4 x i32>
  %358 = mul <4 x i32> %broadcast.splat962, %357
  %359 = add <4 x i32> %358, <i32 3, i32 3, i32 3, i32 3>
  %360 = urem <4 x i32> %359, <i32 80, i32 80, i32 80, i32 80>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %363 = extractelement <4 x i64> %356, i32 0
  %364 = shl i64 %363, 3
  %365 = add nuw nsw i64 %364, %354
  %366 = getelementptr i8, i8* %call, i64 %365
  %367 = bitcast i8* %366 to <4 x double>*
  store <4 x double> %362, <4 x double>* %367, align 8, !alias.scope !87, !noalias !89
  %index.next956 = add i64 %index955, 4
  %vec.ind.next960 = add <4 x i64> %vec.ind959, <i64 4, i64 4, i64 4, i64 4>
  %368 = icmp eq i64 %index.next956, 32
  br i1 %368, label %polly.loop_exit708.1, label %vector.body953, !llvm.loop !107

polly.loop_exit708.1:                             ; preds = %vector.body953
  %polly.indvar_next704.1 = add nuw nsw i64 %polly.indvar703.1, 1
  %exitcond847.1.not = icmp eq i64 %polly.indvar_next704.1, 32
  br i1 %exitcond847.1.not, label %polly.loop_header700.2, label %polly.loop_header700.1

polly.loop_header700.2:                           ; preds = %polly.loop_exit708.1, %polly.loop_exit708.2
  %polly.indvar703.2 = phi i64 [ %polly.indvar_next704.2, %polly.loop_exit708.2 ], [ 0, %polly.loop_exit708.1 ]
  %369 = mul nuw nsw i64 %polly.indvar703.2, 640
  %370 = trunc i64 %polly.indvar703.2 to i32
  %broadcast.splatinsert973 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat974 = shufflevector <4 x i32> %broadcast.splatinsert973, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %polly.loop_header700.2
  %index967 = phi i64 [ 0, %polly.loop_header700.2 ], [ %index.next968, %vector.body965 ]
  %vec.ind971 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2 ], [ %vec.ind.next972, %vector.body965 ]
  %371 = add nuw nsw <4 x i64> %vec.ind971, <i64 64, i64 64, i64 64, i64 64>
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat974, %372
  %374 = add <4 x i32> %373, <i32 3, i32 3, i32 3, i32 3>
  %375 = urem <4 x i32> %374, <i32 80, i32 80, i32 80, i32 80>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %378 = extractelement <4 x i64> %371, i32 0
  %379 = shl i64 %378, 3
  %380 = add nuw nsw i64 %379, %369
  %381 = getelementptr i8, i8* %call, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %377, <4 x double>* %382, align 8, !alias.scope !87, !noalias !89
  %index.next968 = add i64 %index967, 4
  %vec.ind.next972 = add <4 x i64> %vec.ind971, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next968, 16
  br i1 %383, label %polly.loop_exit708.2, label %vector.body965, !llvm.loop !108

polly.loop_exit708.2:                             ; preds = %vector.body965
  %polly.indvar_next704.2 = add nuw nsw i64 %polly.indvar703.2, 1
  %exitcond847.2.not = icmp eq i64 %polly.indvar_next704.2, 32
  br i1 %exitcond847.2.not, label %polly.loop_header700.1883, label %polly.loop_header700.2

polly.loop_header700.1883:                        ; preds = %polly.loop_exit708.2, %polly.loop_exit708.1894
  %polly.indvar703.1882 = phi i64 [ %polly.indvar_next704.1892, %polly.loop_exit708.1894 ], [ 0, %polly.loop_exit708.2 ]
  %384 = add nuw nsw i64 %polly.indvar703.1882, 32
  %385 = mul nuw nsw i64 %384, 640
  %386 = trunc i64 %384 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %386, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %polly.loop_header700.1883
  %index979 = phi i64 [ 0, %polly.loop_header700.1883 ], [ %index.next980, %vector.body977 ]
  %vec.ind985 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.1883 ], [ %vec.ind.next986, %vector.body977 ]
  %387 = mul <4 x i32> %vec.ind985, %broadcast.splat988
  %388 = add <4 x i32> %387, <i32 3, i32 3, i32 3, i32 3>
  %389 = urem <4 x i32> %388, <i32 80, i32 80, i32 80, i32 80>
  %390 = sitofp <4 x i32> %389 to <4 x double>
  %391 = fmul fast <4 x double> %390, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %392 = shl i64 %index979, 3
  %393 = add nuw nsw i64 %392, %385
  %394 = getelementptr i8, i8* %call, i64 %393
  %395 = bitcast i8* %394 to <4 x double>*
  store <4 x double> %391, <4 x double>* %395, align 8, !alias.scope !87, !noalias !89
  %index.next980 = add i64 %index979, 4
  %vec.ind.next986 = add <4 x i32> %vec.ind985, <i32 4, i32 4, i32 4, i32 4>
  %396 = icmp eq i64 %index.next980, 32
  br i1 %396, label %polly.loop_exit708.1894, label %vector.body977, !llvm.loop !109

polly.loop_exit708.1894:                          ; preds = %vector.body977
  %polly.indvar_next704.1892 = add nuw nsw i64 %polly.indvar703.1882, 1
  %exitcond847.1893.not = icmp eq i64 %polly.indvar_next704.1892, 32
  br i1 %exitcond847.1893.not, label %polly.loop_header700.1.1, label %polly.loop_header700.1883

polly.loop_header700.1.1:                         ; preds = %polly.loop_exit708.1894, %polly.loop_exit708.1.1
  %polly.indvar703.1.1 = phi i64 [ %polly.indvar_next704.1.1, %polly.loop_exit708.1.1 ], [ 0, %polly.loop_exit708.1894 ]
  %397 = add nuw nsw i64 %polly.indvar703.1.1, 32
  %398 = mul nuw nsw i64 %397, 640
  %399 = trunc i64 %397 to i32
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header700.1.1
  %index993 = phi i64 [ 0, %polly.loop_header700.1.1 ], [ %index.next994, %vector.body991 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.1 ], [ %vec.ind.next998, %vector.body991 ]
  %400 = add nuw nsw <4 x i64> %vec.ind997, <i64 32, i64 32, i64 32, i64 32>
  %401 = trunc <4 x i64> %400 to <4 x i32>
  %402 = mul <4 x i32> %broadcast.splat1000, %401
  %403 = add <4 x i32> %402, <i32 3, i32 3, i32 3, i32 3>
  %404 = urem <4 x i32> %403, <i32 80, i32 80, i32 80, i32 80>
  %405 = sitofp <4 x i32> %404 to <4 x double>
  %406 = fmul fast <4 x double> %405, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %407 = extractelement <4 x i64> %400, i32 0
  %408 = shl i64 %407, 3
  %409 = add nuw nsw i64 %408, %398
  %410 = getelementptr i8, i8* %call, i64 %409
  %411 = bitcast i8* %410 to <4 x double>*
  store <4 x double> %406, <4 x double>* %411, align 8, !alias.scope !87, !noalias !89
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %412 = icmp eq i64 %index.next994, 32
  br i1 %412, label %polly.loop_exit708.1.1, label %vector.body991, !llvm.loop !110

polly.loop_exit708.1.1:                           ; preds = %vector.body991
  %polly.indvar_next704.1.1 = add nuw nsw i64 %polly.indvar703.1.1, 1
  %exitcond847.1.1.not = icmp eq i64 %polly.indvar_next704.1.1, 32
  br i1 %exitcond847.1.1.not, label %polly.loop_header700.2.1, label %polly.loop_header700.1.1

polly.loop_header700.2.1:                         ; preds = %polly.loop_exit708.1.1, %polly.loop_exit708.2.1
  %polly.indvar703.2.1 = phi i64 [ %polly.indvar_next704.2.1, %polly.loop_exit708.2.1 ], [ 0, %polly.loop_exit708.1.1 ]
  %413 = add nuw nsw i64 %polly.indvar703.2.1, 32
  %414 = mul nuw nsw i64 %413, 640
  %415 = trunc i64 %413 to i32
  %broadcast.splatinsert1011 = insertelement <4 x i32> poison, i32 %415, i32 0
  %broadcast.splat1012 = shufflevector <4 x i32> %broadcast.splatinsert1011, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %polly.loop_header700.2.1
  %index1005 = phi i64 [ 0, %polly.loop_header700.2.1 ], [ %index.next1006, %vector.body1003 ]
  %vec.ind1009 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.1 ], [ %vec.ind.next1010, %vector.body1003 ]
  %416 = add nuw nsw <4 x i64> %vec.ind1009, <i64 64, i64 64, i64 64, i64 64>
  %417 = trunc <4 x i64> %416 to <4 x i32>
  %418 = mul <4 x i32> %broadcast.splat1012, %417
  %419 = add <4 x i32> %418, <i32 3, i32 3, i32 3, i32 3>
  %420 = urem <4 x i32> %419, <i32 80, i32 80, i32 80, i32 80>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %423 = extractelement <4 x i64> %416, i32 0
  %424 = shl i64 %423, 3
  %425 = add nuw nsw i64 %424, %414
  %426 = getelementptr i8, i8* %call, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %422, <4 x double>* %427, align 8, !alias.scope !87, !noalias !89
  %index.next1006 = add i64 %index1005, 4
  %vec.ind.next1010 = add <4 x i64> %vec.ind1009, <i64 4, i64 4, i64 4, i64 4>
  %428 = icmp eq i64 %index.next1006, 16
  br i1 %428, label %polly.loop_exit708.2.1, label %vector.body1003, !llvm.loop !111

polly.loop_exit708.2.1:                           ; preds = %vector.body1003
  %polly.indvar_next704.2.1 = add nuw nsw i64 %polly.indvar703.2.1, 1
  %exitcond847.2.1.not = icmp eq i64 %polly.indvar_next704.2.1, 32
  br i1 %exitcond847.2.1.not, label %polly.loop_header700.2897, label %polly.loop_header700.2.1

polly.loop_header700.2897:                        ; preds = %polly.loop_exit708.2.1, %polly.loop_exit708.2908
  %polly.indvar703.2896 = phi i64 [ %polly.indvar_next704.2906, %polly.loop_exit708.2908 ], [ 0, %polly.loop_exit708.2.1 ]
  %429 = add nuw nsw i64 %polly.indvar703.2896, 64
  %430 = mul nuw nsw i64 %429, 640
  %431 = trunc i64 %429 to i32
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %431, i32 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %polly.loop_header700.2897
  %index1017 = phi i64 [ 0, %polly.loop_header700.2897 ], [ %index.next1018, %vector.body1015 ]
  %vec.ind1023 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.2897 ], [ %vec.ind.next1024, %vector.body1015 ]
  %432 = mul <4 x i32> %vec.ind1023, %broadcast.splat1026
  %433 = add <4 x i32> %432, <i32 3, i32 3, i32 3, i32 3>
  %434 = urem <4 x i32> %433, <i32 80, i32 80, i32 80, i32 80>
  %435 = sitofp <4 x i32> %434 to <4 x double>
  %436 = fmul fast <4 x double> %435, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %437 = shl i64 %index1017, 3
  %438 = add nuw nsw i64 %437, %430
  %439 = getelementptr i8, i8* %call, i64 %438
  %440 = bitcast i8* %439 to <4 x double>*
  store <4 x double> %436, <4 x double>* %440, align 8, !alias.scope !87, !noalias !89
  %index.next1018 = add i64 %index1017, 4
  %vec.ind.next1024 = add <4 x i32> %vec.ind1023, <i32 4, i32 4, i32 4, i32 4>
  %441 = icmp eq i64 %index.next1018, 32
  br i1 %441, label %polly.loop_exit708.2908, label %vector.body1015, !llvm.loop !112

polly.loop_exit708.2908:                          ; preds = %vector.body1015
  %polly.indvar_next704.2906 = add nuw nsw i64 %polly.indvar703.2896, 1
  %exitcond847.2907.not = icmp eq i64 %polly.indvar_next704.2906, 16
  br i1 %exitcond847.2907.not, label %polly.loop_header700.1.2, label %polly.loop_header700.2897

polly.loop_header700.1.2:                         ; preds = %polly.loop_exit708.2908, %polly.loop_exit708.1.2
  %polly.indvar703.1.2 = phi i64 [ %polly.indvar_next704.1.2, %polly.loop_exit708.1.2 ], [ 0, %polly.loop_exit708.2908 ]
  %442 = add nuw nsw i64 %polly.indvar703.1.2, 64
  %443 = mul nuw nsw i64 %442, 640
  %444 = trunc i64 %442 to i32
  %broadcast.splatinsert1037 = insertelement <4 x i32> poison, i32 %444, i32 0
  %broadcast.splat1038 = shufflevector <4 x i32> %broadcast.splatinsert1037, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header700.1.2
  %index1031 = phi i64 [ 0, %polly.loop_header700.1.2 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1035 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.2 ], [ %vec.ind.next1036, %vector.body1029 ]
  %445 = add nuw nsw <4 x i64> %vec.ind1035, <i64 32, i64 32, i64 32, i64 32>
  %446 = trunc <4 x i64> %445 to <4 x i32>
  %447 = mul <4 x i32> %broadcast.splat1038, %446
  %448 = add <4 x i32> %447, <i32 3, i32 3, i32 3, i32 3>
  %449 = urem <4 x i32> %448, <i32 80, i32 80, i32 80, i32 80>
  %450 = sitofp <4 x i32> %449 to <4 x double>
  %451 = fmul fast <4 x double> %450, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %452 = extractelement <4 x i64> %445, i32 0
  %453 = shl i64 %452, 3
  %454 = add nuw nsw i64 %453, %443
  %455 = getelementptr i8, i8* %call, i64 %454
  %456 = bitcast i8* %455 to <4 x double>*
  store <4 x double> %451, <4 x double>* %456, align 8, !alias.scope !87, !noalias !89
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1036 = add <4 x i64> %vec.ind1035, <i64 4, i64 4, i64 4, i64 4>
  %457 = icmp eq i64 %index.next1032, 32
  br i1 %457, label %polly.loop_exit708.1.2, label %vector.body1029, !llvm.loop !113

polly.loop_exit708.1.2:                           ; preds = %vector.body1029
  %polly.indvar_next704.1.2 = add nuw nsw i64 %polly.indvar703.1.2, 1
  %exitcond847.1.2.not = icmp eq i64 %polly.indvar_next704.1.2, 16
  br i1 %exitcond847.1.2.not, label %polly.loop_header700.2.2, label %polly.loop_header700.1.2

polly.loop_header700.2.2:                         ; preds = %polly.loop_exit708.1.2, %polly.loop_exit708.2.2
  %polly.indvar703.2.2 = phi i64 [ %polly.indvar_next704.2.2, %polly.loop_exit708.2.2 ], [ 0, %polly.loop_exit708.1.2 ]
  %458 = add nuw nsw i64 %polly.indvar703.2.2, 64
  %459 = mul nuw nsw i64 %458, 640
  %460 = trunc i64 %458 to i32
  %broadcast.splatinsert1049 = insertelement <4 x i32> poison, i32 %460, i32 0
  %broadcast.splat1050 = shufflevector <4 x i32> %broadcast.splatinsert1049, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %polly.loop_header700.2.2
  %index1043 = phi i64 [ 0, %polly.loop_header700.2.2 ], [ %index.next1044, %vector.body1041 ]
  %vec.ind1047 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.2 ], [ %vec.ind.next1048, %vector.body1041 ]
  %461 = add nuw nsw <4 x i64> %vec.ind1047, <i64 64, i64 64, i64 64, i64 64>
  %462 = trunc <4 x i64> %461 to <4 x i32>
  %463 = mul <4 x i32> %broadcast.splat1050, %462
  %464 = add <4 x i32> %463, <i32 3, i32 3, i32 3, i32 3>
  %465 = urem <4 x i32> %464, <i32 80, i32 80, i32 80, i32 80>
  %466 = sitofp <4 x i32> %465 to <4 x double>
  %467 = fmul fast <4 x double> %466, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %468 = extractelement <4 x i64> %461, i32 0
  %469 = shl i64 %468, 3
  %470 = add nuw nsw i64 %469, %459
  %471 = getelementptr i8, i8* %call, i64 %470
  %472 = bitcast i8* %471 to <4 x double>*
  store <4 x double> %467, <4 x double>* %472, align 8, !alias.scope !87, !noalias !89
  %index.next1044 = add i64 %index1043, 4
  %vec.ind.next1048 = add <4 x i64> %vec.ind1047, <i64 4, i64 4, i64 4, i64 4>
  %473 = icmp eq i64 %index.next1044, 16
  br i1 %473, label %polly.loop_exit708.2.2, label %vector.body1041, !llvm.loop !114

polly.loop_exit708.2.2:                           ; preds = %vector.body1041
  %polly.indvar_next704.2.2 = add nuw nsw i64 %polly.indvar703.2.2, 1
  %exitcond847.2.2.not = icmp eq i64 %polly.indvar_next704.2.2, 16
  br i1 %exitcond847.2.2.not, label %polly.loop_header727, label %polly.loop_header700.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 20}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 128}
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
!44 = !{!"llvm.loop.tile.size", i32 16}
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
