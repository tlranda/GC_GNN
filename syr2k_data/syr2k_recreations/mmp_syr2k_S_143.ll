; ModuleID = 'syr2k_recreations//mmp_syr2k_S_143.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_143.c"
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
  %call764 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1625 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2626 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1625, %call2
  %polly.access.call2645 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2645, %call1
  %2 = or i1 %0, %1
  %polly.access.call665 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call665, %call2
  %4 = icmp ule i8* %polly.access.call2645, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call665, %call1
  %8 = icmp ule i8* %polly.access.call1625, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header750, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep946 = getelementptr i8, i8* %call2, i64 %12
  %scevgep945 = getelementptr i8, i8* %call2, i64 %11
  %scevgep944 = getelementptr i8, i8* %call1, i64 %12
  %scevgep943 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep943, %scevgep946
  %bound1 = icmp ult i8* %scevgep945, %scevgep944
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
  br i1 %exitcond18.not.i, label %vector.ph950, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph950:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert957 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat958 = shufflevector <4 x i64> %broadcast.splatinsert957, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body949

vector.body949:                                   ; preds = %vector.body949, %vector.ph950
  %index951 = phi i64 [ 0, %vector.ph950 ], [ %index.next952, %vector.body949 ]
  %vec.ind955 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph950 ], [ %vec.ind.next956, %vector.body949 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind955, %broadcast.splat958
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv7.i, i64 %index951
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next952 = add i64 %index951, 4
  %vec.ind.next956 = add <4 x i64> %vec.ind955, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next952, 80
  br i1 %40, label %for.inc41.i, label %vector.body949, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body949
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph950, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit811.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start441, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1303, label %vector.ph1232

vector.ph1232:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1232
  %index1233 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1234, %vector.body1231 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i, i64 %index1233
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1234 = add i64 %index1233, 4
  %46 = icmp eq i64 %index.next1234, %n.vec
  br i1 %46, label %middle.block1229, label %vector.body1231, !llvm.loop !18

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1236 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1236, label %for.inc6.i, label %for.body3.i46.preheader1303

for.body3.i46.preheader1303:                      ; preds = %for.body3.i46.preheader, %middle.block1229
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1229 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1303, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1303 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1229, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !21
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !21
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit567.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start268, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1252 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1252, label %for.body3.i60.preheader1302, label %vector.ph1253

vector.ph1253:                                    ; preds = %for.body3.i60.preheader
  %n.vec1255 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1257, %vector.body1251 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i52, i64 %index1256
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1260 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1260, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1257 = add i64 %index1256, 4
  %57 = icmp eq i64 %index.next1257, %n.vec1255
  br i1 %57, label %middle.block1249, label %vector.body1251, !llvm.loop !59

middle.block1249:                                 ; preds = %vector.body1251
  %cmp.n1259 = icmp eq i64 %indvars.iv21.i52, %n.vec1255
  br i1 %cmp.n1259, label %for.inc6.i63, label %for.body3.i60.preheader1302

for.body3.i60.preheader1302:                      ; preds = %for.body3.i60.preheader, %middle.block1249
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1255, %middle.block1249 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1302, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1302 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1249, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !21
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !21
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit394.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1278 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1278, label %for.body3.i99.preheader1301, label %vector.ph1279

vector.ph1279:                                    ; preds = %for.body3.i99.preheader
  %n.vec1281 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1277 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i91, i64 %index1282
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1286, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1283 = add i64 %index1282, 4
  %68 = icmp eq i64 %index.next1283, %n.vec1281
  br i1 %68, label %middle.block1275, label %vector.body1277, !llvm.loop !61

middle.block1275:                                 ; preds = %vector.body1277
  %cmp.n1285 = icmp eq i64 %indvars.iv21.i91, %n.vec1281
  br i1 %cmp.n1285, label %for.inc6.i102, label %for.body3.i99.preheader1301

for.body3.i99.preheader1301:                      ; preds = %for.body3.i99.preheader, %middle.block1275
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1281, %middle.block1275 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1301, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1301 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1275, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !21
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !21
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %indvar1290 = phi i64 [ %indvar.next1291, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1290, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1292 = icmp ult i64 %88, 4
  br i1 %min.iters.check1292, label %polly.loop_header191.preheader, label %vector.ph1293

vector.ph1293:                                    ; preds = %polly.loop_header
  %n.vec1295 = and i64 %88, -4
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1293
  %index1296 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1297, %vector.body1289 ]
  %90 = shl nuw nsw i64 %index1296, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1300, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1297 = add i64 %index1296, 4
  %95 = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %95, label %middle.block1287, label %vector.body1289, !llvm.loop !73

middle.block1287:                                 ; preds = %vector.body1289
  %cmp.n1299 = icmp eq i64 %88, %n.vec1295
  br i1 %cmp.n1299, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1287
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1295, %middle.block1287 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1287
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1291 = add i64 %indvar1290, 1
  br i1 %exitcond837.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond836.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199.preheader
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar208, 80
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next209, 60
  br i1 %exitcond833.not, label %polly.loop_header227.preheader, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %polly.access.mul.call2218 = mul nuw nsw i64 %polly.indvar214, 60
  %polly.access.add.call2219 = add nuw nsw i64 %polly.access.mul.call2218, %polly.indvar208
  %polly.access.call2220 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2219
  %polly.access.call2220.load = load double, double* %polly.access.call2220, align 8, !alias.scope !71, !noalias !76
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2220.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, 80
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header227.preheader:                   ; preds = %polly.loop_exit213, %polly.loop_exit229
  %polly.loop_cond226 = phi i1 [ false, %polly.loop_exit229 ], [ true, %polly.loop_exit213 ]
  %polly.indvar224 = phi i64 [ 1, %polly.loop_exit229 ], [ 0, %polly.loop_exit213 ]
  %97 = mul nuw nsw i64 %polly.indvar224, 50
  %98 = mul nuw nsw i64 %polly.indvar224, -50
  %99 = icmp slt i64 %98, -30
  %100 = select i1 %99, i64 %98, i64 -30
  %101 = add nsw i64 %100, 79
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  br i1 %polly.loop_cond226, label %polly.loop_header227.preheader, label %polly.loop_header205.1

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header227.preheader ]
  %102 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep247 = getelementptr i8, i8* %call1, i64 %102
  %polly.access.mul.Packed_MemRef_call2251 = mul nuw nsw i64 %polly.indvar230, 80
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit242
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next231, 60
  br i1 %exitcond835.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit242, %polly.loop_header227
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit242 ], [ %97, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit242 ], [ 0, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 63)
  %103 = add nuw i64 %polly.indvar236, %97
  %polly.loop_guard243935 = icmp sgt i64 %103, -1
  br i1 %polly.loop_guard243935, label %polly.loop_header240.preheader, label %polly.loop_exit242

polly.loop_header240.preheader:                   ; preds = %polly.loop_header233
  %polly.access.add.Packed_MemRef_call2252 = add nsw i64 %polly.access.mul.Packed_MemRef_call2251, %103
  %polly.access.Packed_MemRef_call2253 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252
  %_p_scalar_254 = load double, double* %polly.access.Packed_MemRef_call2253, align 8
  %104 = mul i64 %103, 480
  %scevgep260 = getelementptr i8, i8* %scevgep247, i64 %104
  %scevgep260261 = bitcast i8* %scevgep260 to double*
  %_p_scalar_262 = load double, double* %scevgep260261, align 8, !alias.scope !70, !noalias !77
  %105 = mul i64 %103, 640
  br label %polly.loop_header240

polly.loop_exit242:                               ; preds = %polly.loop_header240, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, %101
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header240:                             ; preds = %polly.loop_header240.preheader, %polly.loop_header240
  %polly.indvar244 = phi i64 [ %polly.indvar_next245, %polly.loop_header240 ], [ 0, %polly.loop_header240.preheader ]
  %106 = mul nuw nsw i64 %polly.indvar244, 480
  %scevgep248 = getelementptr i8, i8* %scevgep247, i64 %106
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %polly.access.add.Packed_MemRef_call2256 = add nuw nsw i64 %polly.indvar244, %polly.access.mul.Packed_MemRef_call2251
  %polly.access.Packed_MemRef_call2257 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256
  %_p_scalar_258 = load double, double* %polly.access.Packed_MemRef_call2257, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_262, %_p_scalar_258
  %107 = shl i64 %polly.indvar244, 3
  %108 = add i64 %107, %105
  %scevgep263 = getelementptr i8, i8* %call, i64 %108
  %scevgep263264 = bitcast i8* %scevgep263 to double*
  %_p_scalar_265 = load double, double* %scevgep263264, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_265
  store double %p_add42.i118, double* %scevgep263264, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next245 = add nuw nsw i64 %polly.indvar244, 1
  %exitcond834.not = icmp eq i64 %polly.indvar244, %smin
  br i1 %exitcond834.not, label %polly.loop_exit242, label %polly.loop_header240

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header354

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1264 = phi i64 [ %indvar.next1265, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %109 = add i64 %indvar1264, 1
  %110 = mul nuw nsw i64 %polly.indvar357, 640
  %scevgep366 = getelementptr i8, i8* %call, i64 %110
  %min.iters.check1266 = icmp ult i64 %109, 4
  br i1 %min.iters.check1266, label %polly.loop_header360.preheader, label %vector.ph1267

vector.ph1267:                                    ; preds = %polly.loop_header354
  %n.vec1269 = and i64 %109, -4
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1267
  %index1270 = phi i64 [ 0, %vector.ph1267 ], [ %index.next1271, %vector.body1263 ]
  %111 = shl nuw nsw i64 %index1270, 3
  %112 = getelementptr i8, i8* %scevgep366, i64 %111
  %113 = bitcast i8* %112 to <4 x double>*
  %wide.load1274 = load <4 x double>, <4 x double>* %113, align 8, !alias.scope !78, !noalias !80
  %114 = fmul fast <4 x double> %wide.load1274, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %115 = bitcast i8* %112 to <4 x double>*
  store <4 x double> %114, <4 x double>* %115, align 8, !alias.scope !78, !noalias !80
  %index.next1271 = add i64 %index1270, 4
  %116 = icmp eq i64 %index.next1271, %n.vec1269
  br i1 %116, label %middle.block1261, label %vector.body1263, !llvm.loop !84

middle.block1261:                                 ; preds = %vector.body1263
  %cmp.n1273 = icmp eq i64 %109, %n.vec1269
  br i1 %cmp.n1273, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1261
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1269, %middle.block1261 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1261
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next358, 80
  %indvar.next1265 = add i64 %indvar1264, 1
  br i1 %exitcond846.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header376

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %117 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %117
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond845.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !85

polly.loop_header376:                             ; preds = %polly.loop_exit384, %polly.loop_header370.preheader
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %polly.indvar_next380, %polly.loop_exit384 ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar379, 80
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next380, 60
  br i1 %exitcond839.not, label %polly.loop_header398.preheader, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %polly.access.mul.call2389 = mul nuw nsw i64 %polly.indvar385, 60
  %polly.access.add.call2390 = add nuw nsw i64 %polly.access.mul.call2389, %polly.indvar379
  %polly.access.call2391 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2390
  %polly.access.call2391.load = load double, double* %polly.access.call2391, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar385, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2391.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next386, 80
  br i1 %exitcond838.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header398.preheader:                   ; preds = %polly.loop_exit384, %polly.loop_exit400
  %polly.loop_cond397 = phi i1 [ false, %polly.loop_exit400 ], [ true, %polly.loop_exit384 ]
  %polly.indvar395 = phi i64 [ 1, %polly.loop_exit400 ], [ 0, %polly.loop_exit384 ]
  %118 = mul nuw nsw i64 %polly.indvar395, 50
  %119 = mul nuw nsw i64 %polly.indvar395, -50
  %120 = icmp slt i64 %119, -30
  %121 = select i1 %120, i64 %119, i64 -30
  %122 = add nsw i64 %121, 79
  br label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_exit407
  br i1 %polly.loop_cond397, label %polly.loop_header398.preheader, label %polly.loop_header376.1

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_exit407
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit407 ], [ 0, %polly.loop_header398.preheader ]
  %123 = shl nuw nsw i64 %polly.indvar401, 3
  %scevgep420 = getelementptr i8, i8* %call1, i64 %123
  %polly.access.mul.Packed_MemRef_call2271424 = mul nuw nsw i64 %polly.indvar401, 80
  br label %polly.loop_header405

polly.loop_exit407:                               ; preds = %polly.loop_exit415
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next402, 60
  br i1 %exitcond844.not, label %polly.loop_exit400, label %polly.loop_header398

polly.loop_header405:                             ; preds = %polly.loop_exit415, %polly.loop_header398
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit415 ], [ %118, %polly.loop_header398 ]
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit415 ], [ 0, %polly.loop_header398 ]
  %smin842 = call i64 @llvm.smin.i64(i64 %indvars.iv840, i64 63)
  %124 = add nuw i64 %polly.indvar409, %118
  %polly.loop_guard416937 = icmp sgt i64 %124, -1
  br i1 %polly.loop_guard416937, label %polly.loop_header413.preheader, label %polly.loop_exit415

polly.loop_header413.preheader:                   ; preds = %polly.loop_header405
  %polly.access.add.Packed_MemRef_call2271425 = add nsw i64 %polly.access.mul.Packed_MemRef_call2271424, %124
  %polly.access.Packed_MemRef_call2271426 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271425
  %_p_scalar_427 = load double, double* %polly.access.Packed_MemRef_call2271426, align 8
  %125 = mul i64 %124, 480
  %scevgep433 = getelementptr i8, i8* %scevgep420, i64 %125
  %scevgep433434 = bitcast i8* %scevgep433 to double*
  %_p_scalar_435 = load double, double* %scevgep433434, align 8, !alias.scope !81, !noalias !87
  %126 = mul i64 %124, 640
  br label %polly.loop_header413

polly.loop_exit415:                               ; preds = %polly.loop_header413, %polly.loop_header405
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %polly.loop_cond411.not.not = icmp ult i64 %polly.indvar409, %122
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1
  br i1 %polly.loop_cond411.not.not, label %polly.loop_header405, label %polly.loop_exit407

polly.loop_header413:                             ; preds = %polly.loop_header413.preheader, %polly.loop_header413
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_header413 ], [ 0, %polly.loop_header413.preheader ]
  %127 = mul nuw nsw i64 %polly.indvar417, 480
  %scevgep421 = getelementptr i8, i8* %scevgep420, i64 %127
  %scevgep421422 = bitcast i8* %scevgep421 to double*
  %_p_scalar_423 = load double, double* %scevgep421422, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73 = fmul fast double %_p_scalar_427, %_p_scalar_423
  %polly.access.add.Packed_MemRef_call2271429 = add nuw nsw i64 %polly.indvar417, %polly.access.mul.Packed_MemRef_call2271424
  %polly.access.Packed_MemRef_call2271430 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271429
  %_p_scalar_431 = load double, double* %polly.access.Packed_MemRef_call2271430, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_435, %_p_scalar_431
  %128 = shl i64 %polly.indvar417, 3
  %129 = add i64 %128, %126
  %scevgep436 = getelementptr i8, i8* %call, i64 %129
  %scevgep436437 = bitcast i8* %scevgep436 to double*
  %_p_scalar_438 = load double, double* %scevgep436437, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_438
  store double %p_add42.i79, double* %scevgep436437, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond843.not = icmp eq i64 %polly.indvar417, %smin842
  br i1 %exitcond843.not, label %polly.loop_exit415, label %polly.loop_header413

polly.start441:                                   ; preds = %init_array.exit
  %malloccall443 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header527

polly.loop_header527:                             ; preds = %polly.loop_exit535, %polly.start441
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit535 ], [ 0, %polly.start441 ]
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit535 ], [ 1, %polly.start441 ]
  %130 = add i64 %indvar, 1
  %131 = mul nuw nsw i64 %polly.indvar530, 640
  %scevgep539 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1240 = icmp ult i64 %130, 4
  br i1 %min.iters.check1240, label %polly.loop_header533.preheader, label %vector.ph1241

vector.ph1241:                                    ; preds = %polly.loop_header527
  %n.vec1243 = and i64 %130, -4
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1241
  %index1244 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1245, %vector.body1239 ]
  %132 = shl nuw nsw i64 %index1244, 3
  %133 = getelementptr i8, i8* %scevgep539, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1248 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !88, !noalias !90
  %135 = fmul fast <4 x double> %wide.load1248, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !88, !noalias !90
  %index.next1245 = add i64 %index1244, 4
  %137 = icmp eq i64 %index.next1245, %n.vec1243
  br i1 %137, label %middle.block1237, label %vector.body1239, !llvm.loop !94

middle.block1237:                                 ; preds = %vector.body1239
  %cmp.n1247 = icmp eq i64 %130, %n.vec1243
  br i1 %cmp.n1247, label %polly.loop_exit535, label %polly.loop_header533.preheader

polly.loop_header533.preheader:                   ; preds = %polly.loop_header527, %middle.block1237
  %polly.indvar536.ph = phi i64 [ 0, %polly.loop_header527 ], [ %n.vec1243, %middle.block1237 ]
  br label %polly.loop_header533

polly.loop_exit535:                               ; preds = %polly.loop_header533, %middle.block1237
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next531, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond855.not, label %polly.loop_header543.preheader, label %polly.loop_header527

polly.loop_header543.preheader:                   ; preds = %polly.loop_exit535
  %Packed_MemRef_call2444 = bitcast i8* %malloccall443 to double*
  br label %polly.loop_header549

polly.loop_header533:                             ; preds = %polly.loop_header533.preheader, %polly.loop_header533
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_header533 ], [ %polly.indvar536.ph, %polly.loop_header533.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar536, 3
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %138
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_542, 1.200000e+00
  store double %p_mul.i, double* %scevgep540541, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next537, %polly.indvar530
  br i1 %exitcond854.not, label %polly.loop_exit535, label %polly.loop_header533, !llvm.loop !95

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.loop_header543.preheader
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header543.preheader ], [ %polly.indvar_next553, %polly.loop_exit557 ]
  %polly.access.mul.Packed_MemRef_call2444 = mul nuw nsw i64 %polly.indvar552, 80
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_header555
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next553, 60
  br i1 %exitcond848.not, label %polly.loop_header571.preheader, label %polly.loop_header549

polly.loop_header555:                             ; preds = %polly.loop_header555, %polly.loop_header549
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header549 ], [ %polly.indvar_next559, %polly.loop_header555 ]
  %polly.access.mul.call2562 = mul nuw nsw i64 %polly.indvar558, 60
  %polly.access.add.call2563 = add nuw nsw i64 %polly.access.mul.call2562, %polly.indvar552
  %polly.access.call2564 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2563
  %polly.access.call2564.load = load double, double* %polly.access.call2564, align 8, !alias.scope !92, !noalias !96
  %polly.access.add.Packed_MemRef_call2444 = add nuw nsw i64 %polly.indvar558, %polly.access.mul.Packed_MemRef_call2444
  %polly.access.Packed_MemRef_call2444 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444
  store double %polly.access.call2564.load, double* %polly.access.Packed_MemRef_call2444, align 8
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next559, 80
  br i1 %exitcond847.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header571.preheader:                   ; preds = %polly.loop_exit557, %polly.loop_exit573
  %polly.loop_cond570 = phi i1 [ false, %polly.loop_exit573 ], [ true, %polly.loop_exit557 ]
  %polly.indvar568 = phi i64 [ 1, %polly.loop_exit573 ], [ 0, %polly.loop_exit557 ]
  %139 = mul nuw nsw i64 %polly.indvar568, 50
  %140 = mul nuw nsw i64 %polly.indvar568, -50
  %141 = icmp slt i64 %140, -30
  %142 = select i1 %141, i64 %140, i64 -30
  %143 = add nsw i64 %142, 79
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit580
  br i1 %polly.loop_cond570, label %polly.loop_header571.preheader, label %polly.loop_header549.1

polly.loop_header571:                             ; preds = %polly.loop_header571.preheader, %polly.loop_exit580
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_exit580 ], [ 0, %polly.loop_header571.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar574, 3
  %scevgep593 = getelementptr i8, i8* %call1, i64 %144
  %polly.access.mul.Packed_MemRef_call2444597 = mul nuw nsw i64 %polly.indvar574, 80
  br label %polly.loop_header578

polly.loop_exit580:                               ; preds = %polly.loop_exit588
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next575, 60
  br i1 %exitcond853.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header578:                             ; preds = %polly.loop_exit588, %polly.loop_header571
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit588 ], [ %139, %polly.loop_header571 ]
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_exit588 ], [ 0, %polly.loop_header571 ]
  %smin851 = call i64 @llvm.smin.i64(i64 %indvars.iv849, i64 63)
  %145 = add nuw i64 %polly.indvar582, %139
  %polly.loop_guard589939 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard589939, label %polly.loop_header586.preheader, label %polly.loop_exit588

polly.loop_header586.preheader:                   ; preds = %polly.loop_header578
  %polly.access.add.Packed_MemRef_call2444598 = add nsw i64 %polly.access.mul.Packed_MemRef_call2444597, %145
  %polly.access.Packed_MemRef_call2444599 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444598
  %_p_scalar_600 = load double, double* %polly.access.Packed_MemRef_call2444599, align 8
  %146 = mul i64 %145, 480
  %scevgep606 = getelementptr i8, i8* %scevgep593, i64 %146
  %scevgep606607 = bitcast i8* %scevgep606 to double*
  %_p_scalar_608 = load double, double* %scevgep606607, align 8, !alias.scope !91, !noalias !97
  %147 = mul i64 %145, 640
  br label %polly.loop_header586

polly.loop_exit588:                               ; preds = %polly.loop_header586, %polly.loop_header578
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %polly.loop_cond584.not.not = icmp ult i64 %polly.indvar582, %143
  %indvars.iv.next850 = add nuw nsw i64 %indvars.iv849, 1
  br i1 %polly.loop_cond584.not.not, label %polly.loop_header578, label %polly.loop_exit580

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_header586
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_header586 ], [ 0, %polly.loop_header586.preheader ]
  %148 = mul nuw nsw i64 %polly.indvar590, 480
  %scevgep594 = getelementptr i8, i8* %scevgep593, i64 %148
  %scevgep594595 = bitcast i8* %scevgep594 to double*
  %_p_scalar_596 = load double, double* %scevgep594595, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i = fmul fast double %_p_scalar_600, %_p_scalar_596
  %polly.access.add.Packed_MemRef_call2444602 = add nuw nsw i64 %polly.indvar590, %polly.access.mul.Packed_MemRef_call2444597
  %polly.access.Packed_MemRef_call2444603 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444602
  %_p_scalar_604 = load double, double* %polly.access.Packed_MemRef_call2444603, align 8
  %p_mul37.i = fmul fast double %_p_scalar_608, %_p_scalar_604
  %149 = shl i64 %polly.indvar590, 3
  %150 = add i64 %149, %147
  %scevgep609 = getelementptr i8, i8* %call, i64 %150
  %scevgep609610 = bitcast i8* %scevgep609 to double*
  %_p_scalar_611 = load double, double* %scevgep609610, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_611
  store double %p_add42.i, double* %scevgep609610, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %exitcond852.not = icmp eq i64 %polly.indvar590, %smin851
  br i1 %exitcond852.not, label %polly.loop_exit588, label %polly.loop_header586

polly.loop_header750:                             ; preds = %entry, %polly.loop_exit758
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_exit758 ], [ 0, %entry ]
  %151 = mul nuw nsw i64 %polly.indvar753, 640
  %152 = trunc i64 %polly.indvar753 to i32
  %broadcast.splatinsert971 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat972 = shufflevector <4 x i32> %broadcast.splatinsert971, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %polly.loop_header750
  %index963 = phi i64 [ 0, %polly.loop_header750 ], [ %index.next964, %vector.body961 ]
  %vec.ind969 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header750 ], [ %vec.ind.next970, %vector.body961 ]
  %153 = mul <4 x i32> %vec.ind969, %broadcast.splat972
  %154 = add <4 x i32> %153, <i32 3, i32 3, i32 3, i32 3>
  %155 = urem <4 x i32> %154, <i32 80, i32 80, i32 80, i32 80>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index963, 3
  %159 = add nuw nsw i64 %158, %151
  %160 = getelementptr i8, i8* %call, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !98, !noalias !100
  %index.next964 = add i64 %index963, 4
  %vec.ind.next970 = add <4 x i32> %vec.ind969, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next964, 32
  br i1 %162, label %polly.loop_exit758, label %vector.body961, !llvm.loop !103

polly.loop_exit758:                               ; preds = %vector.body961
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next754, 32
  br i1 %exitcond875.not, label %polly.loop_header750.1, label %polly.loop_header750

polly.loop_header777:                             ; preds = %polly.loop_exit758.2.2, %polly.loop_exit785
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_exit758.2.2 ]
  %163 = mul nuw nsw i64 %polly.indvar780, 480
  %164 = trunc i64 %polly.indvar780 to i32
  %broadcast.splatinsert1085 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1086 = shufflevector <4 x i32> %broadcast.splatinsert1085, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %polly.loop_header777
  %index1077 = phi i64 [ 0, %polly.loop_header777 ], [ %index.next1078, %vector.body1075 ]
  %vec.ind1083 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header777 ], [ %vec.ind.next1084, %vector.body1075 ]
  %165 = mul <4 x i32> %vec.ind1083, %broadcast.splat1086
  %166 = add <4 x i32> %165, <i32 2, i32 2, i32 2, i32 2>
  %167 = urem <4 x i32> %166, <i32 60, i32 60, i32 60, i32 60>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %170 = shl i64 %index1077, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call2, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !102, !noalias !104
  %index.next1078 = add i64 %index1077, 4
  %vec.ind.next1084 = add <4 x i32> %vec.ind1083, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1078, 32
  br i1 %174, label %polly.loop_exit785, label %vector.body1075, !llvm.loop !105

polly.loop_exit785:                               ; preds = %vector.body1075
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next781, 32
  br i1 %exitcond866.not, label %polly.loop_header777.1, label %polly.loop_header777

polly.loop_header803:                             ; preds = %polly.loop_exit785.1.2, %polly.loop_exit811
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_exit785.1.2 ]
  %175 = mul nuw nsw i64 %polly.indvar806, 480
  %176 = trunc i64 %polly.indvar806 to i32
  %broadcast.splatinsert1163 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat1164 = shufflevector <4 x i32> %broadcast.splatinsert1163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_header803
  %index1155 = phi i64 [ 0, %polly.loop_header803 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1161 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803 ], [ %vec.ind.next1162, %vector.body1153 ]
  %177 = mul <4 x i32> %vec.ind1161, %broadcast.splat1164
  %178 = add <4 x i32> %177, <i32 1, i32 1, i32 1, i32 1>
  %179 = urem <4 x i32> %178, <i32 80, i32 80, i32 80, i32 80>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %182 = shl i64 %index1155, 3
  %183 = add i64 %182, %175
  %184 = getelementptr i8, i8* %call1, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !101, !noalias !106
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1162 = add <4 x i32> %vec.ind1161, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next1156, 32
  br i1 %186, label %polly.loop_exit811, label %vector.body1153, !llvm.loop !107

polly.loop_exit811:                               ; preds = %vector.body1153
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next807, 32
  br i1 %exitcond860.not, label %polly.loop_header803.1, label %polly.loop_header803

polly.loop_header205.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit213.1
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit229 ]
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar208.1, 80
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_header211.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_header211.1 ]
  %187 = mul i64 %polly.indvar214.1, 60
  %polly.access.mul.call2218.1 = add i64 %187, 3840
  %polly.access.add.call2219.1 = add nuw nsw i64 %polly.access.mul.call2218.1, %polly.indvar208.1
  %polly.access.call2220.1 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2219.1
  %polly.access.call2220.load.1 = load double, double* %polly.access.call2220.1, align 8, !alias.scope !71, !noalias !76
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar214.1, %polly.access.mul.Packed_MemRef_call2.1
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2220.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next215.1, 16
  br i1 %exitcond.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_header211.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %exitcond833.1.not = icmp eq i64 %polly.indvar_next209.1, 60
  br i1 %exitcond833.1.not, label %polly.loop_header227.1, label %polly.loop_header205.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit213.1, %polly.loop_exit235.1
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit213.1 ]
  %188 = shl nuw nsw i64 %polly.indvar230.1, 3
  %scevgep247.1 = getelementptr i8, i8* %call1, i64 %188
  %polly.access.mul.Packed_MemRef_call2251.1 = mul nuw nsw i64 %polly.indvar230.1, 80
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit242.1, %polly.loop_header227.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit242.1 ], [ 0, %polly.loop_header227.1 ]
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit242.1 ], [ 14, %polly.loop_header227.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 63)
  %189 = add nuw nsw i64 %polly.indvar236.1, 50
  %polly.loop_guard243.1936 = icmp ugt i64 %polly.indvar236.1, 13
  br i1 %polly.loop_guard243.1936, label %polly.loop_header240.preheader.1, label %polly.loop_exit242.1

polly.loop_header240.preheader.1:                 ; preds = %polly.loop_header233.1
  %190 = add nsw i64 %polly.indvar236.1, -14
  %polly.access.add.Packed_MemRef_call2252.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2251.1, %190
  %polly.access.Packed_MemRef_call2253.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.1
  %_p_scalar_254.1 = load double, double* %polly.access.Packed_MemRef_call2253.1, align 8
  %191 = mul nuw nsw i64 %189, 480
  %scevgep260.1 = getelementptr i8, i8* %scevgep247.1, i64 %191
  %scevgep260261.1 = bitcast i8* %scevgep260.1 to double*
  %_p_scalar_262.1 = load double, double* %scevgep260261.1, align 8, !alias.scope !70, !noalias !77
  %192 = mul nuw nsw i64 %189, 640
  br label %polly.loop_header240.1

polly.loop_header240.1:                           ; preds = %polly.loop_header240.1, %polly.loop_header240.preheader.1
  %polly.indvar244.1 = phi i64 [ %polly.indvar_next245.1, %polly.loop_header240.1 ], [ 0, %polly.loop_header240.preheader.1 ]
  %193 = add nuw nsw i64 %polly.indvar244.1, 64
  %194 = mul nuw nsw i64 %193, 480
  %scevgep248.1 = getelementptr i8, i8* %scevgep247.1, i64 %194
  %scevgep248249.1 = bitcast i8* %scevgep248.1 to double*
  %_p_scalar_250.1 = load double, double* %scevgep248249.1, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112.1 = fmul fast double %_p_scalar_254.1, %_p_scalar_250.1
  %polly.access.add.Packed_MemRef_call2256.1 = add nuw nsw i64 %polly.indvar244.1, %polly.access.mul.Packed_MemRef_call2251.1
  %polly.access.Packed_MemRef_call2257.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.1
  %_p_scalar_258.1 = load double, double* %polly.access.Packed_MemRef_call2257.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_262.1, %_p_scalar_258.1
  %195 = shl i64 %193, 3
  %196 = add i64 %195, %192
  %scevgep263.1 = getelementptr i8, i8* %call, i64 %196
  %scevgep263264.1 = bitcast i8* %scevgep263.1 to double*
  %_p_scalar_265.1 = load double, double* %scevgep263264.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_265.1
  store double %p_add42.i118.1, double* %scevgep263264.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next245.1 = add nuw nsw i64 %polly.indvar244.1, 1
  %exitcond834.1.not = icmp eq i64 %polly.indvar244.1, %smin.1
  br i1 %exitcond834.1.not, label %polly.loop_exit242.1, label %polly.loop_header240.1

polly.loop_exit242.1:                             ; preds = %polly.loop_header240.1, %polly.loop_header233.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %polly.loop_cond238.not.not.1 = icmp ult i64 %polly.indvar236.1, 29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  br i1 %polly.loop_cond238.not.not.1, label %polly.loop_header233.1, label %polly.loop_exit235.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit242.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %exitcond835.1.not = icmp eq i64 %polly.indvar_next231.1, 60
  br i1 %exitcond835.1.not, label %polly.loop_exit223.1, label %polly.loop_header227.1

polly.loop_exit223.1:                             ; preds = %polly.loop_exit235.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header376.1:                           ; preds = %polly.loop_exit400, %polly.loop_exit384.1
  %polly.indvar379.1 = phi i64 [ %polly.indvar_next380.1, %polly.loop_exit384.1 ], [ 0, %polly.loop_exit400 ]
  %polly.access.mul.Packed_MemRef_call2271.1 = mul nuw nsw i64 %polly.indvar379.1, 80
  br label %polly.loop_header382.1

polly.loop_header382.1:                           ; preds = %polly.loop_header382.1, %polly.loop_header376.1
  %polly.indvar385.1 = phi i64 [ 0, %polly.loop_header376.1 ], [ %polly.indvar_next386.1, %polly.loop_header382.1 ]
  %197 = mul i64 %polly.indvar385.1, 60
  %polly.access.mul.call2389.1 = add i64 %197, 3840
  %polly.access.add.call2390.1 = add nuw nsw i64 %polly.access.mul.call2389.1, %polly.indvar379.1
  %polly.access.call2391.1 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2390.1
  %polly.access.call2391.load.1 = load double, double* %polly.access.call2391.1, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call2271.1 = add nuw nsw i64 %polly.indvar385.1, %polly.access.mul.Packed_MemRef_call2271.1
  %polly.access.Packed_MemRef_call2271.1 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271.1
  store double %polly.access.call2391.load.1, double* %polly.access.Packed_MemRef_call2271.1, align 8
  %polly.indvar_next386.1 = add nuw nsw i64 %polly.indvar385.1, 1
  %exitcond838.1.not = icmp eq i64 %polly.indvar_next386.1, 16
  br i1 %exitcond838.1.not, label %polly.loop_exit384.1, label %polly.loop_header382.1

polly.loop_exit384.1:                             ; preds = %polly.loop_header382.1
  %polly.indvar_next380.1 = add nuw nsw i64 %polly.indvar379.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar_next380.1, 60
  br i1 %exitcond839.1.not, label %polly.loop_header398.1, label %polly.loop_header376.1

polly.loop_header398.1:                           ; preds = %polly.loop_exit384.1, %polly.loop_exit407.1
  %polly.indvar401.1 = phi i64 [ %polly.indvar_next402.1, %polly.loop_exit407.1 ], [ 0, %polly.loop_exit384.1 ]
  %198 = shl nuw nsw i64 %polly.indvar401.1, 3
  %scevgep420.1 = getelementptr i8, i8* %call1, i64 %198
  %polly.access.mul.Packed_MemRef_call2271424.1 = mul nuw nsw i64 %polly.indvar401.1, 80
  br label %polly.loop_header405.1

polly.loop_header405.1:                           ; preds = %polly.loop_exit415.1, %polly.loop_header398.1
  %indvars.iv840.1 = phi i64 [ %indvars.iv.next841.1, %polly.loop_exit415.1 ], [ 0, %polly.loop_header398.1 ]
  %polly.indvar409.1 = phi i64 [ %polly.indvar_next410.1, %polly.loop_exit415.1 ], [ 14, %polly.loop_header398.1 ]
  %smin842.1 = call i64 @llvm.smin.i64(i64 %indvars.iv840.1, i64 63)
  %199 = add nuw nsw i64 %polly.indvar409.1, 50
  %polly.loop_guard416.1938 = icmp ugt i64 %polly.indvar409.1, 13
  br i1 %polly.loop_guard416.1938, label %polly.loop_header413.preheader.1, label %polly.loop_exit415.1

polly.loop_header413.preheader.1:                 ; preds = %polly.loop_header405.1
  %200 = add nsw i64 %polly.indvar409.1, -14
  %polly.access.add.Packed_MemRef_call2271425.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2271424.1, %200
  %polly.access.Packed_MemRef_call2271426.1 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271425.1
  %_p_scalar_427.1 = load double, double* %polly.access.Packed_MemRef_call2271426.1, align 8
  %201 = mul nuw nsw i64 %199, 480
  %scevgep433.1 = getelementptr i8, i8* %scevgep420.1, i64 %201
  %scevgep433434.1 = bitcast i8* %scevgep433.1 to double*
  %_p_scalar_435.1 = load double, double* %scevgep433434.1, align 8, !alias.scope !81, !noalias !87
  %202 = mul nuw nsw i64 %199, 640
  br label %polly.loop_header413.1

polly.loop_header413.1:                           ; preds = %polly.loop_header413.1, %polly.loop_header413.preheader.1
  %polly.indvar417.1 = phi i64 [ %polly.indvar_next418.1, %polly.loop_header413.1 ], [ 0, %polly.loop_header413.preheader.1 ]
  %203 = add nuw nsw i64 %polly.indvar417.1, 64
  %204 = mul nuw nsw i64 %203, 480
  %scevgep421.1 = getelementptr i8, i8* %scevgep420.1, i64 %204
  %scevgep421422.1 = bitcast i8* %scevgep421.1 to double*
  %_p_scalar_423.1 = load double, double* %scevgep421422.1, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73.1 = fmul fast double %_p_scalar_427.1, %_p_scalar_423.1
  %polly.access.add.Packed_MemRef_call2271429.1 = add nuw nsw i64 %polly.indvar417.1, %polly.access.mul.Packed_MemRef_call2271424.1
  %polly.access.Packed_MemRef_call2271430.1 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271429.1
  %_p_scalar_431.1 = load double, double* %polly.access.Packed_MemRef_call2271430.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_435.1, %_p_scalar_431.1
  %205 = shl i64 %203, 3
  %206 = add i64 %205, %202
  %scevgep436.1 = getelementptr i8, i8* %call, i64 %206
  %scevgep436437.1 = bitcast i8* %scevgep436.1 to double*
  %_p_scalar_438.1 = load double, double* %scevgep436437.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_438.1
  store double %p_add42.i79.1, double* %scevgep436437.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next418.1 = add nuw nsw i64 %polly.indvar417.1, 1
  %exitcond843.1.not = icmp eq i64 %polly.indvar417.1, %smin842.1
  br i1 %exitcond843.1.not, label %polly.loop_exit415.1, label %polly.loop_header413.1

polly.loop_exit415.1:                             ; preds = %polly.loop_header413.1, %polly.loop_header405.1
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %polly.loop_cond411.not.not.1 = icmp ult i64 %polly.indvar409.1, 29
  %indvars.iv.next841.1 = add nuw nsw i64 %indvars.iv840.1, 1
  br i1 %polly.loop_cond411.not.not.1, label %polly.loop_header405.1, label %polly.loop_exit407.1

polly.loop_exit407.1:                             ; preds = %polly.loop_exit415.1
  %polly.indvar_next402.1 = add nuw nsw i64 %polly.indvar401.1, 1
  %exitcond844.1.not = icmp eq i64 %polly.indvar_next402.1, 60
  br i1 %exitcond844.1.not, label %polly.loop_exit394.1, label %polly.loop_header398.1

polly.loop_exit394.1:                             ; preds = %polly.loop_exit407.1
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header549.1:                           ; preds = %polly.loop_exit573, %polly.loop_exit557.1
  %polly.indvar552.1 = phi i64 [ %polly.indvar_next553.1, %polly.loop_exit557.1 ], [ 0, %polly.loop_exit573 ]
  %polly.access.mul.Packed_MemRef_call2444.1 = mul nuw nsw i64 %polly.indvar552.1, 80
  br label %polly.loop_header555.1

polly.loop_header555.1:                           ; preds = %polly.loop_header555.1, %polly.loop_header549.1
  %polly.indvar558.1 = phi i64 [ 0, %polly.loop_header549.1 ], [ %polly.indvar_next559.1, %polly.loop_header555.1 ]
  %207 = mul i64 %polly.indvar558.1, 60
  %polly.access.mul.call2562.1 = add i64 %207, 3840
  %polly.access.add.call2563.1 = add nuw nsw i64 %polly.access.mul.call2562.1, %polly.indvar552.1
  %polly.access.call2564.1 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2563.1
  %polly.access.call2564.load.1 = load double, double* %polly.access.call2564.1, align 8, !alias.scope !92, !noalias !96
  %polly.access.add.Packed_MemRef_call2444.1 = add nuw nsw i64 %polly.indvar558.1, %polly.access.mul.Packed_MemRef_call2444.1
  %polly.access.Packed_MemRef_call2444.1 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444.1
  store double %polly.access.call2564.load.1, double* %polly.access.Packed_MemRef_call2444.1, align 8
  %polly.indvar_next559.1 = add nuw nsw i64 %polly.indvar558.1, 1
  %exitcond847.1.not = icmp eq i64 %polly.indvar_next559.1, 16
  br i1 %exitcond847.1.not, label %polly.loop_exit557.1, label %polly.loop_header555.1

polly.loop_exit557.1:                             ; preds = %polly.loop_header555.1
  %polly.indvar_next553.1 = add nuw nsw i64 %polly.indvar552.1, 1
  %exitcond848.1.not = icmp eq i64 %polly.indvar_next553.1, 60
  br i1 %exitcond848.1.not, label %polly.loop_header571.1, label %polly.loop_header549.1

polly.loop_header571.1:                           ; preds = %polly.loop_exit557.1, %polly.loop_exit580.1
  %polly.indvar574.1 = phi i64 [ %polly.indvar_next575.1, %polly.loop_exit580.1 ], [ 0, %polly.loop_exit557.1 ]
  %208 = shl nuw nsw i64 %polly.indvar574.1, 3
  %scevgep593.1 = getelementptr i8, i8* %call1, i64 %208
  %polly.access.mul.Packed_MemRef_call2444597.1 = mul nuw nsw i64 %polly.indvar574.1, 80
  br label %polly.loop_header578.1

polly.loop_header578.1:                           ; preds = %polly.loop_exit588.1, %polly.loop_header571.1
  %indvars.iv849.1 = phi i64 [ %indvars.iv.next850.1, %polly.loop_exit588.1 ], [ 0, %polly.loop_header571.1 ]
  %polly.indvar582.1 = phi i64 [ %polly.indvar_next583.1, %polly.loop_exit588.1 ], [ 14, %polly.loop_header571.1 ]
  %smin851.1 = call i64 @llvm.smin.i64(i64 %indvars.iv849.1, i64 63)
  %209 = add nuw nsw i64 %polly.indvar582.1, 50
  %polly.loop_guard589.1940 = icmp ugt i64 %polly.indvar582.1, 13
  br i1 %polly.loop_guard589.1940, label %polly.loop_header586.preheader.1, label %polly.loop_exit588.1

polly.loop_header586.preheader.1:                 ; preds = %polly.loop_header578.1
  %210 = add nsw i64 %polly.indvar582.1, -14
  %polly.access.add.Packed_MemRef_call2444598.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2444597.1, %210
  %polly.access.Packed_MemRef_call2444599.1 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444598.1
  %_p_scalar_600.1 = load double, double* %polly.access.Packed_MemRef_call2444599.1, align 8
  %211 = mul nuw nsw i64 %209, 480
  %scevgep606.1 = getelementptr i8, i8* %scevgep593.1, i64 %211
  %scevgep606607.1 = bitcast i8* %scevgep606.1 to double*
  %_p_scalar_608.1 = load double, double* %scevgep606607.1, align 8, !alias.scope !91, !noalias !97
  %212 = mul nuw nsw i64 %209, 640
  br label %polly.loop_header586.1

polly.loop_header586.1:                           ; preds = %polly.loop_header586.1, %polly.loop_header586.preheader.1
  %polly.indvar590.1 = phi i64 [ %polly.indvar_next591.1, %polly.loop_header586.1 ], [ 0, %polly.loop_header586.preheader.1 ]
  %213 = add nuw nsw i64 %polly.indvar590.1, 64
  %214 = mul nuw nsw i64 %213, 480
  %scevgep594.1 = getelementptr i8, i8* %scevgep593.1, i64 %214
  %scevgep594595.1 = bitcast i8* %scevgep594.1 to double*
  %_p_scalar_596.1 = load double, double* %scevgep594595.1, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i.1 = fmul fast double %_p_scalar_600.1, %_p_scalar_596.1
  %polly.access.add.Packed_MemRef_call2444602.1 = add nuw nsw i64 %polly.indvar590.1, %polly.access.mul.Packed_MemRef_call2444597.1
  %polly.access.Packed_MemRef_call2444603.1 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444602.1
  %_p_scalar_604.1 = load double, double* %polly.access.Packed_MemRef_call2444603.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_608.1, %_p_scalar_604.1
  %215 = shl i64 %213, 3
  %216 = add i64 %215, %212
  %scevgep609.1 = getelementptr i8, i8* %call, i64 %216
  %scevgep609610.1 = bitcast i8* %scevgep609.1 to double*
  %_p_scalar_611.1 = load double, double* %scevgep609610.1, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_611.1
  store double %p_add42.i.1, double* %scevgep609610.1, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next591.1 = add nuw nsw i64 %polly.indvar590.1, 1
  %exitcond852.1.not = icmp eq i64 %polly.indvar590.1, %smin851.1
  br i1 %exitcond852.1.not, label %polly.loop_exit588.1, label %polly.loop_header586.1

polly.loop_exit588.1:                             ; preds = %polly.loop_header586.1, %polly.loop_header578.1
  %polly.indvar_next583.1 = add nuw nsw i64 %polly.indvar582.1, 1
  %polly.loop_cond584.not.not.1 = icmp ult i64 %polly.indvar582.1, 29
  %indvars.iv.next850.1 = add nuw nsw i64 %indvars.iv849.1, 1
  br i1 %polly.loop_cond584.not.not.1, label %polly.loop_header578.1, label %polly.loop_exit580.1

polly.loop_exit580.1:                             ; preds = %polly.loop_exit588.1
  %polly.indvar_next575.1 = add nuw nsw i64 %polly.indvar574.1, 1
  %exitcond853.1.not = icmp eq i64 %polly.indvar_next575.1, 60
  br i1 %exitcond853.1.not, label %polly.loop_exit567.1, label %polly.loop_header571.1

polly.loop_exit567.1:                             ; preds = %polly.loop_exit580.1
  tail call void @free(i8* %malloccall443)
  br label %kernel_syr2k.exit

polly.loop_header803.1:                           ; preds = %polly.loop_exit811, %polly.loop_exit811.1
  %polly.indvar806.1 = phi i64 [ %polly.indvar_next807.1, %polly.loop_exit811.1 ], [ 0, %polly.loop_exit811 ]
  %217 = mul nuw nsw i64 %polly.indvar806.1, 480
  %218 = trunc i64 %polly.indvar806.1 to i32
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %polly.loop_header803.1
  %index1169 = phi i64 [ 0, %polly.loop_header803.1 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1173 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1 ], [ %vec.ind.next1174, %vector.body1167 ]
  %219 = add nuw nsw <4 x i64> %vec.ind1173, <i64 32, i64 32, i64 32, i64 32>
  %220 = trunc <4 x i64> %219 to <4 x i32>
  %221 = mul <4 x i32> %broadcast.splat1176, %220
  %222 = add <4 x i32> %221, <i32 1, i32 1, i32 1, i32 1>
  %223 = urem <4 x i32> %222, <i32 80, i32 80, i32 80, i32 80>
  %224 = sitofp <4 x i32> %223 to <4 x double>
  %225 = fmul fast <4 x double> %224, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %226 = extractelement <4 x i64> %219, i32 0
  %227 = shl i64 %226, 3
  %228 = add i64 %227, %217
  %229 = getelementptr i8, i8* %call1, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %225, <4 x double>* %230, align 8, !alias.scope !101, !noalias !106
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1174 = add <4 x i64> %vec.ind1173, <i64 4, i64 4, i64 4, i64 4>
  %231 = icmp eq i64 %index.next1170, 28
  br i1 %231, label %polly.loop_exit811.1, label %vector.body1167, !llvm.loop !108

polly.loop_exit811.1:                             ; preds = %vector.body1167
  %polly.indvar_next807.1 = add nuw nsw i64 %polly.indvar806.1, 1
  %exitcond860.1.not = icmp eq i64 %polly.indvar_next807.1, 32
  br i1 %exitcond860.1.not, label %polly.loop_header803.1880, label %polly.loop_header803.1

polly.loop_header803.1880:                        ; preds = %polly.loop_exit811.1, %polly.loop_exit811.1891
  %polly.indvar806.1879 = phi i64 [ %polly.indvar_next807.1889, %polly.loop_exit811.1891 ], [ 0, %polly.loop_exit811.1 ]
  %232 = add nuw nsw i64 %polly.indvar806.1879, 32
  %233 = mul nuw nsw i64 %232, 480
  %234 = trunc i64 %232 to i32
  %broadcast.splatinsert1189 = insertelement <4 x i32> poison, i32 %234, i32 0
  %broadcast.splat1190 = shufflevector <4 x i32> %broadcast.splatinsert1189, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %polly.loop_header803.1880
  %index1181 = phi i64 [ 0, %polly.loop_header803.1880 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1187 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803.1880 ], [ %vec.ind.next1188, %vector.body1179 ]
  %235 = mul <4 x i32> %vec.ind1187, %broadcast.splat1190
  %236 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %237 = urem <4 x i32> %236, <i32 80, i32 80, i32 80, i32 80>
  %238 = sitofp <4 x i32> %237 to <4 x double>
  %239 = fmul fast <4 x double> %238, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %240 = shl i64 %index1181, 3
  %241 = add i64 %240, %233
  %242 = getelementptr i8, i8* %call1, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %239, <4 x double>* %243, align 8, !alias.scope !101, !noalias !106
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1188 = add <4 x i32> %vec.ind1187, <i32 4, i32 4, i32 4, i32 4>
  %244 = icmp eq i64 %index.next1182, 32
  br i1 %244, label %polly.loop_exit811.1891, label %vector.body1179, !llvm.loop !109

polly.loop_exit811.1891:                          ; preds = %vector.body1179
  %polly.indvar_next807.1889 = add nuw nsw i64 %polly.indvar806.1879, 1
  %exitcond860.1890.not = icmp eq i64 %polly.indvar_next807.1889, 32
  br i1 %exitcond860.1890.not, label %polly.loop_header803.1.1, label %polly.loop_header803.1880

polly.loop_header803.1.1:                         ; preds = %polly.loop_exit811.1891, %polly.loop_exit811.1.1
  %polly.indvar806.1.1 = phi i64 [ %polly.indvar_next807.1.1, %polly.loop_exit811.1.1 ], [ 0, %polly.loop_exit811.1891 ]
  %245 = add nuw nsw i64 %polly.indvar806.1.1, 32
  %246 = mul nuw nsw i64 %245, 480
  %247 = trunc i64 %245 to i32
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %247, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %polly.loop_header803.1.1
  %index1195 = phi i64 [ 0, %polly.loop_header803.1.1 ], [ %index.next1196, %vector.body1193 ]
  %vec.ind1199 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1.1 ], [ %vec.ind.next1200, %vector.body1193 ]
  %248 = add nuw nsw <4 x i64> %vec.ind1199, <i64 32, i64 32, i64 32, i64 32>
  %249 = trunc <4 x i64> %248 to <4 x i32>
  %250 = mul <4 x i32> %broadcast.splat1202, %249
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 80, i32 80, i32 80, i32 80>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %255 = extractelement <4 x i64> %248, i32 0
  %256 = shl i64 %255, 3
  %257 = add i64 %256, %246
  %258 = getelementptr i8, i8* %call1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %254, <4 x double>* %259, align 8, !alias.scope !101, !noalias !106
  %index.next1196 = add i64 %index1195, 4
  %vec.ind.next1200 = add <4 x i64> %vec.ind1199, <i64 4, i64 4, i64 4, i64 4>
  %260 = icmp eq i64 %index.next1196, 28
  br i1 %260, label %polly.loop_exit811.1.1, label %vector.body1193, !llvm.loop !110

polly.loop_exit811.1.1:                           ; preds = %vector.body1193
  %polly.indvar_next807.1.1 = add nuw nsw i64 %polly.indvar806.1.1, 1
  %exitcond860.1.1.not = icmp eq i64 %polly.indvar_next807.1.1, 32
  br i1 %exitcond860.1.1.not, label %polly.loop_header803.2, label %polly.loop_header803.1.1

polly.loop_header803.2:                           ; preds = %polly.loop_exit811.1.1, %polly.loop_exit811.2
  %polly.indvar806.2 = phi i64 [ %polly.indvar_next807.2, %polly.loop_exit811.2 ], [ 0, %polly.loop_exit811.1.1 ]
  %261 = add nuw nsw i64 %polly.indvar806.2, 64
  %262 = mul nuw nsw i64 %261, 480
  %263 = trunc i64 %261 to i32
  %broadcast.splatinsert1215 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1216 = shufflevector <4 x i32> %broadcast.splatinsert1215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %polly.loop_header803.2
  %index1207 = phi i64 [ 0, %polly.loop_header803.2 ], [ %index.next1208, %vector.body1205 ]
  %vec.ind1213 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803.2 ], [ %vec.ind.next1214, %vector.body1205 ]
  %264 = mul <4 x i32> %vec.ind1213, %broadcast.splat1216
  %265 = add <4 x i32> %264, <i32 1, i32 1, i32 1, i32 1>
  %266 = urem <4 x i32> %265, <i32 80, i32 80, i32 80, i32 80>
  %267 = sitofp <4 x i32> %266 to <4 x double>
  %268 = fmul fast <4 x double> %267, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %269 = shl i64 %index1207, 3
  %270 = add i64 %269, %262
  %271 = getelementptr i8, i8* %call1, i64 %270
  %272 = bitcast i8* %271 to <4 x double>*
  store <4 x double> %268, <4 x double>* %272, align 8, !alias.scope !101, !noalias !106
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1214 = add <4 x i32> %vec.ind1213, <i32 4, i32 4, i32 4, i32 4>
  %273 = icmp eq i64 %index.next1208, 32
  br i1 %273, label %polly.loop_exit811.2, label %vector.body1205, !llvm.loop !111

polly.loop_exit811.2:                             ; preds = %vector.body1205
  %polly.indvar_next807.2 = add nuw nsw i64 %polly.indvar806.2, 1
  %exitcond860.2.not = icmp eq i64 %polly.indvar_next807.2, 16
  br i1 %exitcond860.2.not, label %polly.loop_header803.1.2, label %polly.loop_header803.2

polly.loop_header803.1.2:                         ; preds = %polly.loop_exit811.2, %polly.loop_exit811.1.2
  %polly.indvar806.1.2 = phi i64 [ %polly.indvar_next807.1.2, %polly.loop_exit811.1.2 ], [ 0, %polly.loop_exit811.2 ]
  %274 = add nuw nsw i64 %polly.indvar806.1.2, 64
  %275 = mul nuw nsw i64 %274, 480
  %276 = trunc i64 %274 to i32
  %broadcast.splatinsert1227 = insertelement <4 x i32> poison, i32 %276, i32 0
  %broadcast.splat1228 = shufflevector <4 x i32> %broadcast.splatinsert1227, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %polly.loop_header803.1.2
  %index1221 = phi i64 [ 0, %polly.loop_header803.1.2 ], [ %index.next1222, %vector.body1219 ]
  %vec.ind1225 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1.2 ], [ %vec.ind.next1226, %vector.body1219 ]
  %277 = add nuw nsw <4 x i64> %vec.ind1225, <i64 32, i64 32, i64 32, i64 32>
  %278 = trunc <4 x i64> %277 to <4 x i32>
  %279 = mul <4 x i32> %broadcast.splat1228, %278
  %280 = add <4 x i32> %279, <i32 1, i32 1, i32 1, i32 1>
  %281 = urem <4 x i32> %280, <i32 80, i32 80, i32 80, i32 80>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %284 = extractelement <4 x i64> %277, i32 0
  %285 = shl i64 %284, 3
  %286 = add i64 %285, %275
  %287 = getelementptr i8, i8* %call1, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %283, <4 x double>* %288, align 8, !alias.scope !101, !noalias !106
  %index.next1222 = add i64 %index1221, 4
  %vec.ind.next1226 = add <4 x i64> %vec.ind1225, <i64 4, i64 4, i64 4, i64 4>
  %289 = icmp eq i64 %index.next1222, 28
  br i1 %289, label %polly.loop_exit811.1.2, label %vector.body1219, !llvm.loop !112

polly.loop_exit811.1.2:                           ; preds = %vector.body1219
  %polly.indvar_next807.1.2 = add nuw nsw i64 %polly.indvar806.1.2, 1
  %exitcond860.1.2.not = icmp eq i64 %polly.indvar_next807.1.2, 16
  br i1 %exitcond860.1.2.not, label %init_array.exit, label %polly.loop_header803.1.2

polly.loop_header777.1:                           ; preds = %polly.loop_exit785, %polly.loop_exit785.1
  %polly.indvar780.1 = phi i64 [ %polly.indvar_next781.1, %polly.loop_exit785.1 ], [ 0, %polly.loop_exit785 ]
  %290 = mul nuw nsw i64 %polly.indvar780.1, 480
  %291 = trunc i64 %polly.indvar780.1 to i32
  %broadcast.splatinsert1097 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1098 = shufflevector <4 x i32> %broadcast.splatinsert1097, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %polly.loop_header777.1
  %index1091 = phi i64 [ 0, %polly.loop_header777.1 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1095 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header777.1 ], [ %vec.ind.next1096, %vector.body1089 ]
  %292 = add nuw nsw <4 x i64> %vec.ind1095, <i64 32, i64 32, i64 32, i64 32>
  %293 = trunc <4 x i64> %292 to <4 x i32>
  %294 = mul <4 x i32> %broadcast.splat1098, %293
  %295 = add <4 x i32> %294, <i32 2, i32 2, i32 2, i32 2>
  %296 = urem <4 x i32> %295, <i32 60, i32 60, i32 60, i32 60>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %299 = extractelement <4 x i64> %292, i32 0
  %300 = shl i64 %299, 3
  %301 = add i64 %300, %290
  %302 = getelementptr i8, i8* %call2, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %298, <4 x double>* %303, align 8, !alias.scope !102, !noalias !104
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1096 = add <4 x i64> %vec.ind1095, <i64 4, i64 4, i64 4, i64 4>
  %304 = icmp eq i64 %index.next1092, 28
  br i1 %304, label %polly.loop_exit785.1, label %vector.body1089, !llvm.loop !113

polly.loop_exit785.1:                             ; preds = %vector.body1089
  %polly.indvar_next781.1 = add nuw nsw i64 %polly.indvar780.1, 1
  %exitcond866.1.not = icmp eq i64 %polly.indvar_next781.1, 32
  br i1 %exitcond866.1.not, label %polly.loop_header777.1894, label %polly.loop_header777.1

polly.loop_header777.1894:                        ; preds = %polly.loop_exit785.1, %polly.loop_exit785.1905
  %polly.indvar780.1893 = phi i64 [ %polly.indvar_next781.1903, %polly.loop_exit785.1905 ], [ 0, %polly.loop_exit785.1 ]
  %305 = add nuw nsw i64 %polly.indvar780.1893, 32
  %306 = mul nuw nsw i64 %305, 480
  %307 = trunc i64 %305 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %307, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %polly.loop_header777.1894
  %index1103 = phi i64 [ 0, %polly.loop_header777.1894 ], [ %index.next1104, %vector.body1101 ]
  %vec.ind1109 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header777.1894 ], [ %vec.ind.next1110, %vector.body1101 ]
  %308 = mul <4 x i32> %vec.ind1109, %broadcast.splat1112
  %309 = add <4 x i32> %308, <i32 2, i32 2, i32 2, i32 2>
  %310 = urem <4 x i32> %309, <i32 60, i32 60, i32 60, i32 60>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %313 = shl i64 %index1103, 3
  %314 = add i64 %313, %306
  %315 = getelementptr i8, i8* %call2, i64 %314
  %316 = bitcast i8* %315 to <4 x double>*
  store <4 x double> %312, <4 x double>* %316, align 8, !alias.scope !102, !noalias !104
  %index.next1104 = add i64 %index1103, 4
  %vec.ind.next1110 = add <4 x i32> %vec.ind1109, <i32 4, i32 4, i32 4, i32 4>
  %317 = icmp eq i64 %index.next1104, 32
  br i1 %317, label %polly.loop_exit785.1905, label %vector.body1101, !llvm.loop !114

polly.loop_exit785.1905:                          ; preds = %vector.body1101
  %polly.indvar_next781.1903 = add nuw nsw i64 %polly.indvar780.1893, 1
  %exitcond866.1904.not = icmp eq i64 %polly.indvar_next781.1903, 32
  br i1 %exitcond866.1904.not, label %polly.loop_header777.1.1, label %polly.loop_header777.1894

polly.loop_header777.1.1:                         ; preds = %polly.loop_exit785.1905, %polly.loop_exit785.1.1
  %polly.indvar780.1.1 = phi i64 [ %polly.indvar_next781.1.1, %polly.loop_exit785.1.1 ], [ 0, %polly.loop_exit785.1905 ]
  %318 = add nuw nsw i64 %polly.indvar780.1.1, 32
  %319 = mul nuw nsw i64 %318, 480
  %320 = trunc i64 %318 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header777.1.1
  %index1117 = phi i64 [ 0, %polly.loop_header777.1.1 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1121 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header777.1.1 ], [ %vec.ind.next1122, %vector.body1115 ]
  %321 = add nuw nsw <4 x i64> %vec.ind1121, <i64 32, i64 32, i64 32, i64 32>
  %322 = trunc <4 x i64> %321 to <4 x i32>
  %323 = mul <4 x i32> %broadcast.splat1124, %322
  %324 = add <4 x i32> %323, <i32 2, i32 2, i32 2, i32 2>
  %325 = urem <4 x i32> %324, <i32 60, i32 60, i32 60, i32 60>
  %326 = sitofp <4 x i32> %325 to <4 x double>
  %327 = fmul fast <4 x double> %326, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %328 = extractelement <4 x i64> %321, i32 0
  %329 = shl i64 %328, 3
  %330 = add i64 %329, %319
  %331 = getelementptr i8, i8* %call2, i64 %330
  %332 = bitcast i8* %331 to <4 x double>*
  store <4 x double> %327, <4 x double>* %332, align 8, !alias.scope !102, !noalias !104
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1122 = add <4 x i64> %vec.ind1121, <i64 4, i64 4, i64 4, i64 4>
  %333 = icmp eq i64 %index.next1118, 28
  br i1 %333, label %polly.loop_exit785.1.1, label %vector.body1115, !llvm.loop !115

polly.loop_exit785.1.1:                           ; preds = %vector.body1115
  %polly.indvar_next781.1.1 = add nuw nsw i64 %polly.indvar780.1.1, 1
  %exitcond866.1.1.not = icmp eq i64 %polly.indvar_next781.1.1, 32
  br i1 %exitcond866.1.1.not, label %polly.loop_header777.2, label %polly.loop_header777.1.1

polly.loop_header777.2:                           ; preds = %polly.loop_exit785.1.1, %polly.loop_exit785.2
  %polly.indvar780.2 = phi i64 [ %polly.indvar_next781.2, %polly.loop_exit785.2 ], [ 0, %polly.loop_exit785.1.1 ]
  %334 = add nuw nsw i64 %polly.indvar780.2, 64
  %335 = mul nuw nsw i64 %334, 480
  %336 = trunc i64 %334 to i32
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %336, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header777.2
  %index1129 = phi i64 [ 0, %polly.loop_header777.2 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1135 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header777.2 ], [ %vec.ind.next1136, %vector.body1127 ]
  %337 = mul <4 x i32> %vec.ind1135, %broadcast.splat1138
  %338 = add <4 x i32> %337, <i32 2, i32 2, i32 2, i32 2>
  %339 = urem <4 x i32> %338, <i32 60, i32 60, i32 60, i32 60>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %342 = shl i64 %index1129, 3
  %343 = add i64 %342, %335
  %344 = getelementptr i8, i8* %call2, i64 %343
  %345 = bitcast i8* %344 to <4 x double>*
  store <4 x double> %341, <4 x double>* %345, align 8, !alias.scope !102, !noalias !104
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1136 = add <4 x i32> %vec.ind1135, <i32 4, i32 4, i32 4, i32 4>
  %346 = icmp eq i64 %index.next1130, 32
  br i1 %346, label %polly.loop_exit785.2, label %vector.body1127, !llvm.loop !116

polly.loop_exit785.2:                             ; preds = %vector.body1127
  %polly.indvar_next781.2 = add nuw nsw i64 %polly.indvar780.2, 1
  %exitcond866.2.not = icmp eq i64 %polly.indvar_next781.2, 16
  br i1 %exitcond866.2.not, label %polly.loop_header777.1.2, label %polly.loop_header777.2

polly.loop_header777.1.2:                         ; preds = %polly.loop_exit785.2, %polly.loop_exit785.1.2
  %polly.indvar780.1.2 = phi i64 [ %polly.indvar_next781.1.2, %polly.loop_exit785.1.2 ], [ 0, %polly.loop_exit785.2 ]
  %347 = add nuw nsw i64 %polly.indvar780.1.2, 64
  %348 = mul nuw nsw i64 %347, 480
  %349 = trunc i64 %347 to i32
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %polly.loop_header777.1.2
  %index1143 = phi i64 [ 0, %polly.loop_header777.1.2 ], [ %index.next1144, %vector.body1141 ]
  %vec.ind1147 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header777.1.2 ], [ %vec.ind.next1148, %vector.body1141 ]
  %350 = add nuw nsw <4 x i64> %vec.ind1147, <i64 32, i64 32, i64 32, i64 32>
  %351 = trunc <4 x i64> %350 to <4 x i32>
  %352 = mul <4 x i32> %broadcast.splat1150, %351
  %353 = add <4 x i32> %352, <i32 2, i32 2, i32 2, i32 2>
  %354 = urem <4 x i32> %353, <i32 60, i32 60, i32 60, i32 60>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = extractelement <4 x i64> %350, i32 0
  %358 = shl i64 %357, 3
  %359 = add i64 %358, %348
  %360 = getelementptr i8, i8* %call2, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %356, <4 x double>* %361, align 8, !alias.scope !102, !noalias !104
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1148 = add <4 x i64> %vec.ind1147, <i64 4, i64 4, i64 4, i64 4>
  %362 = icmp eq i64 %index.next1144, 28
  br i1 %362, label %polly.loop_exit785.1.2, label %vector.body1141, !llvm.loop !117

polly.loop_exit785.1.2:                           ; preds = %vector.body1141
  %polly.indvar_next781.1.2 = add nuw nsw i64 %polly.indvar780.1.2, 1
  %exitcond866.1.2.not = icmp eq i64 %polly.indvar_next781.1.2, 16
  br i1 %exitcond866.1.2.not, label %polly.loop_header803, label %polly.loop_header777.1.2

polly.loop_header750.1:                           ; preds = %polly.loop_exit758, %polly.loop_exit758.1
  %polly.indvar753.1 = phi i64 [ %polly.indvar_next754.1, %polly.loop_exit758.1 ], [ 0, %polly.loop_exit758 ]
  %363 = mul nuw nsw i64 %polly.indvar753.1, 640
  %364 = trunc i64 %polly.indvar753.1 to i32
  %broadcast.splatinsert983 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat984 = shufflevector <4 x i32> %broadcast.splatinsert983, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %polly.loop_header750.1
  %index977 = phi i64 [ 0, %polly.loop_header750.1 ], [ %index.next978, %vector.body975 ]
  %vec.ind981 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.1 ], [ %vec.ind.next982, %vector.body975 ]
  %365 = add nuw nsw <4 x i64> %vec.ind981, <i64 32, i64 32, i64 32, i64 32>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat984, %366
  %368 = add <4 x i32> %367, <i32 3, i32 3, i32 3, i32 3>
  %369 = urem <4 x i32> %368, <i32 80, i32 80, i32 80, i32 80>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add nuw nsw i64 %373, %363
  %375 = getelementptr i8, i8* %call, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !98, !noalias !100
  %index.next978 = add i64 %index977, 4
  %vec.ind.next982 = add <4 x i64> %vec.ind981, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next978, 32
  br i1 %377, label %polly.loop_exit758.1, label %vector.body975, !llvm.loop !118

polly.loop_exit758.1:                             ; preds = %vector.body975
  %polly.indvar_next754.1 = add nuw nsw i64 %polly.indvar753.1, 1
  %exitcond875.1.not = icmp eq i64 %polly.indvar_next754.1, 32
  br i1 %exitcond875.1.not, label %polly.loop_header750.2, label %polly.loop_header750.1

polly.loop_header750.2:                           ; preds = %polly.loop_exit758.1, %polly.loop_exit758.2
  %polly.indvar753.2 = phi i64 [ %polly.indvar_next754.2, %polly.loop_exit758.2 ], [ 0, %polly.loop_exit758.1 ]
  %378 = mul nuw nsw i64 %polly.indvar753.2, 640
  %379 = trunc i64 %polly.indvar753.2 to i32
  %broadcast.splatinsert995 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat996 = shufflevector <4 x i32> %broadcast.splatinsert995, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %polly.loop_header750.2
  %index989 = phi i64 [ 0, %polly.loop_header750.2 ], [ %index.next990, %vector.body987 ]
  %vec.ind993 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.2 ], [ %vec.ind.next994, %vector.body987 ]
  %380 = add nuw nsw <4 x i64> %vec.ind993, <i64 64, i64 64, i64 64, i64 64>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat996, %381
  %383 = add <4 x i32> %382, <i32 3, i32 3, i32 3, i32 3>
  %384 = urem <4 x i32> %383, <i32 80, i32 80, i32 80, i32 80>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %378
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !98, !noalias !100
  %index.next990 = add i64 %index989, 4
  %vec.ind.next994 = add <4 x i64> %vec.ind993, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next990, 16
  br i1 %392, label %polly.loop_exit758.2, label %vector.body987, !llvm.loop !119

polly.loop_exit758.2:                             ; preds = %vector.body987
  %polly.indvar_next754.2 = add nuw nsw i64 %polly.indvar753.2, 1
  %exitcond875.2.not = icmp eq i64 %polly.indvar_next754.2, 32
  br i1 %exitcond875.2.not, label %polly.loop_header750.1908, label %polly.loop_header750.2

polly.loop_header750.1908:                        ; preds = %polly.loop_exit758.2, %polly.loop_exit758.1919
  %polly.indvar753.1907 = phi i64 [ %polly.indvar_next754.1917, %polly.loop_exit758.1919 ], [ 0, %polly.loop_exit758.2 ]
  %393 = add nuw nsw i64 %polly.indvar753.1907, 32
  %394 = mul nuw nsw i64 %393, 640
  %395 = trunc i64 %393 to i32
  %broadcast.splatinsert1009 = insertelement <4 x i32> poison, i32 %395, i32 0
  %broadcast.splat1010 = shufflevector <4 x i32> %broadcast.splatinsert1009, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %polly.loop_header750.1908
  %index1001 = phi i64 [ 0, %polly.loop_header750.1908 ], [ %index.next1002, %vector.body999 ]
  %vec.ind1007 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header750.1908 ], [ %vec.ind.next1008, %vector.body999 ]
  %396 = mul <4 x i32> %vec.ind1007, %broadcast.splat1010
  %397 = add <4 x i32> %396, <i32 3, i32 3, i32 3, i32 3>
  %398 = urem <4 x i32> %397, <i32 80, i32 80, i32 80, i32 80>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %401 = shl i64 %index1001, 3
  %402 = add nuw nsw i64 %401, %394
  %403 = getelementptr i8, i8* %call, i64 %402
  %404 = bitcast i8* %403 to <4 x double>*
  store <4 x double> %400, <4 x double>* %404, align 8, !alias.scope !98, !noalias !100
  %index.next1002 = add i64 %index1001, 4
  %vec.ind.next1008 = add <4 x i32> %vec.ind1007, <i32 4, i32 4, i32 4, i32 4>
  %405 = icmp eq i64 %index.next1002, 32
  br i1 %405, label %polly.loop_exit758.1919, label %vector.body999, !llvm.loop !120

polly.loop_exit758.1919:                          ; preds = %vector.body999
  %polly.indvar_next754.1917 = add nuw nsw i64 %polly.indvar753.1907, 1
  %exitcond875.1918.not = icmp eq i64 %polly.indvar_next754.1917, 32
  br i1 %exitcond875.1918.not, label %polly.loop_header750.1.1, label %polly.loop_header750.1908

polly.loop_header750.1.1:                         ; preds = %polly.loop_exit758.1919, %polly.loop_exit758.1.1
  %polly.indvar753.1.1 = phi i64 [ %polly.indvar_next754.1.1, %polly.loop_exit758.1.1 ], [ 0, %polly.loop_exit758.1919 ]
  %406 = add nuw nsw i64 %polly.indvar753.1.1, 32
  %407 = mul nuw nsw i64 %406, 640
  %408 = trunc i64 %406 to i32
  %broadcast.splatinsert1021 = insertelement <4 x i32> poison, i32 %408, i32 0
  %broadcast.splat1022 = shufflevector <4 x i32> %broadcast.splatinsert1021, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %polly.loop_header750.1.1
  %index1015 = phi i64 [ 0, %polly.loop_header750.1.1 ], [ %index.next1016, %vector.body1013 ]
  %vec.ind1019 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.1.1 ], [ %vec.ind.next1020, %vector.body1013 ]
  %409 = add nuw nsw <4 x i64> %vec.ind1019, <i64 32, i64 32, i64 32, i64 32>
  %410 = trunc <4 x i64> %409 to <4 x i32>
  %411 = mul <4 x i32> %broadcast.splat1022, %410
  %412 = add <4 x i32> %411, <i32 3, i32 3, i32 3, i32 3>
  %413 = urem <4 x i32> %412, <i32 80, i32 80, i32 80, i32 80>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = extractelement <4 x i64> %409, i32 0
  %417 = shl i64 %416, 3
  %418 = add nuw nsw i64 %417, %407
  %419 = getelementptr i8, i8* %call, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %415, <4 x double>* %420, align 8, !alias.scope !98, !noalias !100
  %index.next1016 = add i64 %index1015, 4
  %vec.ind.next1020 = add <4 x i64> %vec.ind1019, <i64 4, i64 4, i64 4, i64 4>
  %421 = icmp eq i64 %index.next1016, 32
  br i1 %421, label %polly.loop_exit758.1.1, label %vector.body1013, !llvm.loop !121

polly.loop_exit758.1.1:                           ; preds = %vector.body1013
  %polly.indvar_next754.1.1 = add nuw nsw i64 %polly.indvar753.1.1, 1
  %exitcond875.1.1.not = icmp eq i64 %polly.indvar_next754.1.1, 32
  br i1 %exitcond875.1.1.not, label %polly.loop_header750.2.1, label %polly.loop_header750.1.1

polly.loop_header750.2.1:                         ; preds = %polly.loop_exit758.1.1, %polly.loop_exit758.2.1
  %polly.indvar753.2.1 = phi i64 [ %polly.indvar_next754.2.1, %polly.loop_exit758.2.1 ], [ 0, %polly.loop_exit758.1.1 ]
  %422 = add nuw nsw i64 %polly.indvar753.2.1, 32
  %423 = mul nuw nsw i64 %422, 640
  %424 = trunc i64 %422 to i32
  %broadcast.splatinsert1033 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1034 = shufflevector <4 x i32> %broadcast.splatinsert1033, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %polly.loop_header750.2.1
  %index1027 = phi i64 [ 0, %polly.loop_header750.2.1 ], [ %index.next1028, %vector.body1025 ]
  %vec.ind1031 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.2.1 ], [ %vec.ind.next1032, %vector.body1025 ]
  %425 = add nuw nsw <4 x i64> %vec.ind1031, <i64 64, i64 64, i64 64, i64 64>
  %426 = trunc <4 x i64> %425 to <4 x i32>
  %427 = mul <4 x i32> %broadcast.splat1034, %426
  %428 = add <4 x i32> %427, <i32 3, i32 3, i32 3, i32 3>
  %429 = urem <4 x i32> %428, <i32 80, i32 80, i32 80, i32 80>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = extractelement <4 x i64> %425, i32 0
  %433 = shl i64 %432, 3
  %434 = add nuw nsw i64 %433, %423
  %435 = getelementptr i8, i8* %call, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %431, <4 x double>* %436, align 8, !alias.scope !98, !noalias !100
  %index.next1028 = add i64 %index1027, 4
  %vec.ind.next1032 = add <4 x i64> %vec.ind1031, <i64 4, i64 4, i64 4, i64 4>
  %437 = icmp eq i64 %index.next1028, 16
  br i1 %437, label %polly.loop_exit758.2.1, label %vector.body1025, !llvm.loop !122

polly.loop_exit758.2.1:                           ; preds = %vector.body1025
  %polly.indvar_next754.2.1 = add nuw nsw i64 %polly.indvar753.2.1, 1
  %exitcond875.2.1.not = icmp eq i64 %polly.indvar_next754.2.1, 32
  br i1 %exitcond875.2.1.not, label %polly.loop_header750.2922, label %polly.loop_header750.2.1

polly.loop_header750.2922:                        ; preds = %polly.loop_exit758.2.1, %polly.loop_exit758.2933
  %polly.indvar753.2921 = phi i64 [ %polly.indvar_next754.2931, %polly.loop_exit758.2933 ], [ 0, %polly.loop_exit758.2.1 ]
  %438 = add nuw nsw i64 %polly.indvar753.2921, 64
  %439 = mul nuw nsw i64 %438, 640
  %440 = trunc i64 %438 to i32
  %broadcast.splatinsert1047 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1048 = shufflevector <4 x i32> %broadcast.splatinsert1047, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %polly.loop_header750.2922
  %index1039 = phi i64 [ 0, %polly.loop_header750.2922 ], [ %index.next1040, %vector.body1037 ]
  %vec.ind1045 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header750.2922 ], [ %vec.ind.next1046, %vector.body1037 ]
  %441 = mul <4 x i32> %vec.ind1045, %broadcast.splat1048
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = shl i64 %index1039, 3
  %447 = add nuw nsw i64 %446, %439
  %448 = getelementptr i8, i8* %call, i64 %447
  %449 = bitcast i8* %448 to <4 x double>*
  store <4 x double> %445, <4 x double>* %449, align 8, !alias.scope !98, !noalias !100
  %index.next1040 = add i64 %index1039, 4
  %vec.ind.next1046 = add <4 x i32> %vec.ind1045, <i32 4, i32 4, i32 4, i32 4>
  %450 = icmp eq i64 %index.next1040, 32
  br i1 %450, label %polly.loop_exit758.2933, label %vector.body1037, !llvm.loop !123

polly.loop_exit758.2933:                          ; preds = %vector.body1037
  %polly.indvar_next754.2931 = add nuw nsw i64 %polly.indvar753.2921, 1
  %exitcond875.2932.not = icmp eq i64 %polly.indvar_next754.2931, 16
  br i1 %exitcond875.2932.not, label %polly.loop_header750.1.2, label %polly.loop_header750.2922

polly.loop_header750.1.2:                         ; preds = %polly.loop_exit758.2933, %polly.loop_exit758.1.2
  %polly.indvar753.1.2 = phi i64 [ %polly.indvar_next754.1.2, %polly.loop_exit758.1.2 ], [ 0, %polly.loop_exit758.2933 ]
  %451 = add nuw nsw i64 %polly.indvar753.1.2, 64
  %452 = mul nuw nsw i64 %451, 640
  %453 = trunc i64 %451 to i32
  %broadcast.splatinsert1059 = insertelement <4 x i32> poison, i32 %453, i32 0
  %broadcast.splat1060 = shufflevector <4 x i32> %broadcast.splatinsert1059, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %polly.loop_header750.1.2
  %index1053 = phi i64 [ 0, %polly.loop_header750.1.2 ], [ %index.next1054, %vector.body1051 ]
  %vec.ind1057 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.1.2 ], [ %vec.ind.next1058, %vector.body1051 ]
  %454 = add nuw nsw <4 x i64> %vec.ind1057, <i64 32, i64 32, i64 32, i64 32>
  %455 = trunc <4 x i64> %454 to <4 x i32>
  %456 = mul <4 x i32> %broadcast.splat1060, %455
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = extractelement <4 x i64> %454, i32 0
  %462 = shl i64 %461, 3
  %463 = add nuw nsw i64 %462, %452
  %464 = getelementptr i8, i8* %call, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %460, <4 x double>* %465, align 8, !alias.scope !98, !noalias !100
  %index.next1054 = add i64 %index1053, 4
  %vec.ind.next1058 = add <4 x i64> %vec.ind1057, <i64 4, i64 4, i64 4, i64 4>
  %466 = icmp eq i64 %index.next1054, 32
  br i1 %466, label %polly.loop_exit758.1.2, label %vector.body1051, !llvm.loop !124

polly.loop_exit758.1.2:                           ; preds = %vector.body1051
  %polly.indvar_next754.1.2 = add nuw nsw i64 %polly.indvar753.1.2, 1
  %exitcond875.1.2.not = icmp eq i64 %polly.indvar_next754.1.2, 16
  br i1 %exitcond875.1.2.not, label %polly.loop_header750.2.2, label %polly.loop_header750.1.2

polly.loop_header750.2.2:                         ; preds = %polly.loop_exit758.1.2, %polly.loop_exit758.2.2
  %polly.indvar753.2.2 = phi i64 [ %polly.indvar_next754.2.2, %polly.loop_exit758.2.2 ], [ 0, %polly.loop_exit758.1.2 ]
  %467 = add nuw nsw i64 %polly.indvar753.2.2, 64
  %468 = mul nuw nsw i64 %467, 640
  %469 = trunc i64 %467 to i32
  %broadcast.splatinsert1071 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1072 = shufflevector <4 x i32> %broadcast.splatinsert1071, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1063

vector.body1063:                                  ; preds = %vector.body1063, %polly.loop_header750.2.2
  %index1065 = phi i64 [ 0, %polly.loop_header750.2.2 ], [ %index.next1066, %vector.body1063 ]
  %vec.ind1069 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.2.2 ], [ %vec.ind.next1070, %vector.body1063 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1069, <i64 64, i64 64, i64 64, i64 64>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1072, %471
  %473 = add <4 x i32> %472, <i32 3, i32 3, i32 3, i32 3>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add nuw nsw i64 %478, %468
  %480 = getelementptr i8, i8* %call, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !98, !noalias !100
  %index.next1066 = add i64 %index1065, 4
  %vec.ind.next1070 = add <4 x i64> %vec.ind1069, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1066, 16
  br i1 %482, label %polly.loop_exit758.2.2, label %vector.body1063, !llvm.loop !125

polly.loop_exit758.2.2:                           ; preds = %vector.body1063
  %polly.indvar_next754.2.2 = add nuw nsw i64 %polly.indvar753.2.2, 1
  %exitcond875.2.2.not = icmp eq i64 %polly.indvar_next754.2.2, 16
  br i1 %exitcond875.2.2.not, label %polly.loop_header777, label %polly.loop_header750.2.2
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 64}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !23, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !23, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !23, !41, !42, !43, !44, !45, !56}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 50}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.interchange.followup_interchanged", !52}
!52 = distinct !{!52, !12, !23, !47, !53, !54, !55}
!53 = !{!"llvm.data.pack.enable", i1 true}
!54 = !{!"llvm.data.pack.array", !21}
!55 = !{!"llvm.data.pack.allocate", !"malloc"}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !70, !72}
!77 = !{!67, !71, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !81, !83}
!87 = !{!78, !82, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call2"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !91, !93}
!97 = !{!88, !92, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = !{!101, !98}
!105 = distinct !{!105, !13}
!106 = !{!102, !98}
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
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
