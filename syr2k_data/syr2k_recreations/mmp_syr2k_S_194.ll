; ModuleID = 'syr2k_recreations//mmp_syr2k_S_194.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_194.c"
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
  %call720 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1581 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1581, %call2
  %polly.access.call2601 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2601, %call1
  %2 = or i1 %0, %1
  %polly.access.call621 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call621, %call2
  %4 = icmp ule i8* %polly.access.call2601, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call621, %call1
  %8 = icmp ule i8* %polly.access.call1581, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header706, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep951 = getelementptr i8, i8* %call2, i64 %12
  %scevgep950 = getelementptr i8, i8* %call2, i64 %11
  %scevgep949 = getelementptr i8, i8* %call1, i64 %12
  %scevgep948 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep948, %scevgep951
  %bound1 = icmp ult i8* %scevgep950, %scevgep949
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
  br i1 %exitcond18.not.i, label %vector.ph955, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph955:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert962 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat963 = shufflevector <4 x i64> %broadcast.splatinsert962, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph955
  %index956 = phi i64 [ 0, %vector.ph955 ], [ %index.next957, %vector.body954 ]
  %vec.ind960 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph955 ], [ %vec.ind.next961, %vector.body954 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind960, %broadcast.splat963
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv7.i, i64 %index956
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next957 = add i64 %index956, 4
  %vec.ind.next961 = add <4 x i64> %vec.ind960, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next957, 80
  br i1 %40, label %for.inc41.i, label %vector.body954, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body954
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph955, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit767.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header496, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1311, label %vector.ph1237

vector.ph1237:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1237
  %index1238 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1239, %vector.body1236 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i, i64 %index1238
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1239 = add i64 %index1238, 4
  %46 = icmp eq i64 %index.next1239, %n.vec
  br i1 %46, label %middle.block1234, label %vector.body1236, !llvm.loop !18

middle.block1234:                                 ; preds = %vector.body1236
  %cmp.n1241 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1241, label %for.inc6.i, label %for.body3.i46.preheader1311

for.body3.i46.preheader1311:                      ; preds = %for.body3.i46.preheader, %middle.block1234
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1234 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1311, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1311 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1234, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit520
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header338, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1257 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1257, label %for.body3.i60.preheader1309, label %vector.ph1258

vector.ph1258:                                    ; preds = %for.body3.i60.preheader
  %n.vec1260 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %vector.ph1258
  %index1261 = phi i64 [ 0, %vector.ph1258 ], [ %index.next1262, %vector.body1256 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i52, i64 %index1261
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1265 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1265, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1262 = add i64 %index1261, 4
  %57 = icmp eq i64 %index.next1262, %n.vec1260
  br i1 %57, label %middle.block1254, label %vector.body1256, !llvm.loop !51

middle.block1254:                                 ; preds = %vector.body1256
  %cmp.n1264 = icmp eq i64 %indvars.iv21.i52, %n.vec1260
  br i1 %cmp.n1264, label %for.inc6.i63, label %for.body3.i60.preheader1309

for.body3.i60.preheader1309:                      ; preds = %for.body3.i60.preheader, %middle.block1254
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1260, %middle.block1254 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1309, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1309 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1254, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit362
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1283 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1283, label %for.body3.i99.preheader1307, label %vector.ph1284

vector.ph1284:                                    ; preds = %for.body3.i99.preheader
  %n.vec1286 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.body1282, %vector.ph1284
  %index1287 = phi i64 [ 0, %vector.ph1284 ], [ %index.next1288, %vector.body1282 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i91, i64 %index1287
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1291, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1288 = add i64 %index1287, 4
  %68 = icmp eq i64 %index.next1288, %n.vec1286
  br i1 %68, label %middle.block1280, label %vector.body1282, !llvm.loop !53

middle.block1280:                                 ; preds = %vector.body1282
  %cmp.n1290 = icmp eq i64 %indvars.iv21.i91, %n.vec1286
  br i1 %cmp.n1290, label %for.inc6.i102, label %for.body3.i99.preheader1307

for.body3.i99.preheader1307:                      ; preds = %for.body3.i99.preheader, %middle.block1280
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1286, %middle.block1280 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1307, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1307 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1280, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1295 = phi i64 [ %indvar.next1296, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1295, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1297 = icmp ult i64 %88, 4
  br i1 %min.iters.check1297, label %polly.loop_header191.preheader, label %vector.ph1298

vector.ph1298:                                    ; preds = %polly.loop_header
  %n.vec1300 = and i64 %88, -4
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1302, %vector.body1294 ]
  %90 = shl nuw nsw i64 %index1301, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1305, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1302 = add i64 %index1301, 4
  %95 = icmp eq i64 %index.next1302, %n.vec1300
  br i1 %95, label %middle.block1292, label %vector.body1294, !llvm.loop !64

middle.block1292:                                 ; preds = %vector.body1294
  %cmp.n1304 = icmp eq i64 %88, %n.vec1300
  br i1 %cmp.n1304, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1292
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1300, %middle.block1292 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1292
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1296 = add i64 %indvar1295, 1
  br i1 %exitcond804.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond803.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %polly.loop_exit207 ], [ 3, %polly.loop_exit193 ]
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %indvars.iv797, 3
  %98 = sub nsw i64 %polly.indvar202, %97
  %smax799 = call i64 @llvm.smax.i64(i64 %98, i64 0)
  %99 = mul nsw i64 %polly.indvar202, -20
  %100 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 20
  %indvars.iv.next798 = add nuw nsw i64 %indvars.iv797, 3
  %exitcond802.not = icmp eq i64 %polly.indvar_next203, 4
  br i1 %exitcond802.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %smin795 = call i64 @llvm.smin.i64(i64 %indvars.iv793, i64 -52)
  %101 = shl nsw i64 %polly.indvar208, 3
  %102 = add nsw i64 %smin795, 59
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next794 = add nsw i64 %indvars.iv793, -8
  %exitcond801.not = icmp eq i64 %polly.indvar_next209, 8
  br i1 %exitcond801.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit219 ], [ %indvars.iv787, %polly.loop_header205 ]
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %103 = shl nsw i64 %polly.indvar214, 5
  %104 = add nsw i64 %103, %99
  %105 = icmp sgt i64 %104, 0
  %106 = select i1 %105, i64 %104, i64 0
  %polly.loop_guard = icmp slt i64 %106, 20
  br i1 %polly.loop_guard, label %polly.loop_header217.preheader, label %polly.loop_exit219

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv785, i64 0)
  %107 = add i64 %smax, %indvars.iv789
  %108 = sub nsw i64 %100, %103
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, 32
  %indvars.iv.next790 = add nsw i64 %indvars.iv789, -32
  %exitcond800.not = icmp eq i64 %polly.indvar214, %smax799
  br i1 %exitcond800.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit225
  %indvars.iv791 = phi i64 [ %107, %polly.loop_header217.preheader ], [ %indvars.iv.next792, %polly.loop_exit225 ]
  %polly.indvar220 = phi i64 [ %106, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv791, i64 31)
  %109 = add nsw i64 %polly.indvar220, %108
  %polly.loop_guard233937 = icmp sgt i64 %109, -1
  %110 = add nuw nsw i64 %polly.indvar220, %100
  %111 = mul i64 %110, 480
  %112 = mul i64 %110, 640
  br i1 %polly.loop_guard233937, label %polly.loop_header223.us, label %polly.loop_exit225

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.loop_exit232.loopexit.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit232.loopexit.us ], [ 0, %polly.loop_header217 ]
  %113 = add nuw nsw i64 %polly.indvar226.us, %101
  %114 = shl i64 %113, 3
  %115 = add i64 %114, %111
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %115
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %115
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %116 = add nuw nsw i64 %polly.indvar234.us, %103
  %117 = mul nuw nsw i64 %116, 480
  %118 = add nuw nsw i64 %117, %114
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %118
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %119 = shl i64 %116, 3
  %120 = add i64 %119, %112
  %scevgep249.us = getelementptr i8, i8* %call, i64 %120
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
  %exitcond796.not = icmp eq i64 %polly.indvar226.us, %102
  br i1 %exitcond796.not, label %polly.loop_exit225, label %polly.loop_header223.us

polly.loop_exit225:                               ; preds = %polly.loop_exit232.loopexit.us, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222 = icmp ult i64 %polly.indvar220, 19
  %indvars.iv.next792 = add i64 %indvars.iv791, 1
  br i1 %polly.loop_cond222, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar1269 = phi i64 [ %indvar.next1270, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %121 = add i64 %indvar1269, 1
  %122 = mul nuw nsw i64 %polly.indvar341, 640
  %scevgep350 = getelementptr i8, i8* %call, i64 %122
  %min.iters.check1271 = icmp ult i64 %121, 4
  br i1 %min.iters.check1271, label %polly.loop_header344.preheader, label %vector.ph1272

vector.ph1272:                                    ; preds = %polly.loop_header338
  %n.vec1274 = and i64 %121, -4
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1272
  %index1275 = phi i64 [ 0, %vector.ph1272 ], [ %index.next1276, %vector.body1268 ]
  %123 = shl nuw nsw i64 %index1275, 3
  %124 = getelementptr i8, i8* %scevgep350, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1279 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !69, !noalias !71
  %126 = fmul fast <4 x double> %wide.load1279, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %127 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !69, !noalias !71
  %index.next1276 = add i64 %index1275, 4
  %128 = icmp eq i64 %index.next1276, %n.vec1274
  br i1 %128, label %middle.block1266, label %vector.body1268, !llvm.loop !74

middle.block1266:                                 ; preds = %vector.body1268
  %cmp.n1278 = icmp eq i64 %121, %n.vec1274
  br i1 %cmp.n1278, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block1266
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec1274, %middle.block1266 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block1266
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next342, 80
  %indvar.next1270 = add i64 %indvar1269, 1
  br i1 %exitcond829.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %129
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond828.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !75

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit362 ], [ 3, %polly.loop_exit346 ]
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %130 = lshr i64 %indvars.iv822, 3
  %131 = sub nsw i64 %polly.indvar357, %130
  %smax824 = call i64 @llvm.smax.i64(i64 %131, i64 0)
  %132 = mul nsw i64 %polly.indvar357, -20
  %133 = mul nuw nsw i64 %polly.indvar357, 20
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit369
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next806 = add nsw i64 %indvars.iv805, -20
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 20
  %indvars.iv.next823 = add nuw nsw i64 %indvars.iv822, 3
  %exitcond827.not = icmp eq i64 %polly.indvar_next358, 4
  br i1 %exitcond827.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit369, %polly.loop_header354
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %smin820 = call i64 @llvm.smin.i64(i64 %indvars.iv818, i64 -52)
  %134 = shl nsw i64 %polly.indvar363, 3
  %135 = add nsw i64 %smin820, 59
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit376
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %indvars.iv.next819 = add nsw i64 %indvars.iv818, -8
  %exitcond826.not = icmp eq i64 %polly.indvar_next364, 8
  br i1 %exitcond826.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header367:                             ; preds = %polly.loop_exit376, %polly.loop_header360
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %polly.loop_exit376 ], [ %indvars.iv810, %polly.loop_header360 ]
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit376 ], [ %indvars.iv805, %polly.loop_header360 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit376 ], [ 0, %polly.loop_header360 ]
  %136 = shl nsw i64 %polly.indvar370, 5
  %137 = add nsw i64 %136, %132
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  %polly.loop_guard377 = icmp slt i64 %139, 20
  br i1 %polly.loop_guard377, label %polly.loop_header374.preheader, label %polly.loop_exit376

polly.loop_header374.preheader:                   ; preds = %polly.loop_header367
  %smax809 = call i64 @llvm.smax.i64(i64 %indvars.iv807, i64 0)
  %140 = add i64 %smax809, %indvars.iv812
  %141 = sub nsw i64 %133, %136
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_exit383, %polly.loop_header367
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %indvars.iv.next808 = add nsw i64 %indvars.iv807, 32
  %indvars.iv.next813 = add nsw i64 %indvars.iv812, -32
  %exitcond825.not = icmp eq i64 %polly.indvar370, %smax824
  br i1 %exitcond825.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit383
  %indvars.iv814 = phi i64 [ %140, %polly.loop_header374.preheader ], [ %indvars.iv.next815, %polly.loop_exit383 ]
  %polly.indvar378 = phi i64 [ %139, %polly.loop_header374.preheader ], [ %polly.indvar_next379, %polly.loop_exit383 ]
  %smin816 = call i64 @llvm.smin.i64(i64 %indvars.iv814, i64 31)
  %142 = add nsw i64 %polly.indvar378, %141
  %polly.loop_guard391938 = icmp sgt i64 %142, -1
  %143 = add nuw nsw i64 %polly.indvar378, %133
  %144 = mul i64 %143, 480
  %145 = mul i64 %143, 640
  br i1 %polly.loop_guard391938, label %polly.loop_header381.us, label %polly.loop_exit383

polly.loop_header381.us:                          ; preds = %polly.loop_header374, %polly.loop_exit390.loopexit.us
  %polly.indvar384.us = phi i64 [ %polly.indvar_next385.us, %polly.loop_exit390.loopexit.us ], [ 0, %polly.loop_header374 ]
  %146 = add nuw nsw i64 %polly.indvar384.us, %134
  %147 = shl i64 %146, 3
  %148 = add i64 %147, %144
  %scevgep398.us = getelementptr i8, i8* %call2, i64 %148
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us = getelementptr i8, i8* %call1, i64 %148
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us

polly.loop_header388.us:                          ; preds = %polly.loop_header381.us, %polly.loop_header388.us
  %polly.indvar392.us = phi i64 [ %polly.indvar_next393.us, %polly.loop_header388.us ], [ 0, %polly.loop_header381.us ]
  %149 = add nuw nsw i64 %polly.indvar392.us, %136
  %150 = mul nuw nsw i64 %149, 480
  %151 = add nuw nsw i64 %150, %147
  %scevgep395.us = getelementptr i8, i8* %call1, i64 %151
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_400.us, %_p_scalar_397.us
  %scevgep401.us = getelementptr i8, i8* %call2, i64 %151
  %scevgep401402.us = bitcast i8* %scevgep401.us to double*
  %_p_scalar_403.us = load double, double* %scevgep401402.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_403.us
  %152 = shl i64 %149, 3
  %153 = add i64 %152, %145
  %scevgep407.us = getelementptr i8, i8* %call, i64 %153
  %scevgep407408.us = bitcast i8* %scevgep407.us to double*
  %_p_scalar_409.us = load double, double* %scevgep407408.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_409.us
  store double %p_add42.i79.us, double* %scevgep407408.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us = add nuw nsw i64 %polly.indvar392.us, 1
  %exitcond817.not = icmp eq i64 %polly.indvar392.us, %smin816
  br i1 %exitcond817.not, label %polly.loop_exit390.loopexit.us, label %polly.loop_header388.us

polly.loop_exit390.loopexit.us:                   ; preds = %polly.loop_header388.us
  %polly.indvar_next385.us = add nuw nsw i64 %polly.indvar384.us, 1
  %exitcond821.not = icmp eq i64 %polly.indvar384.us, %135
  br i1 %exitcond821.not, label %polly.loop_exit383, label %polly.loop_header381.us

polly.loop_exit383:                               ; preds = %polly.loop_exit390.loopexit.us, %polly.loop_header374
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %polly.loop_cond380 = icmp ult i64 %polly.indvar378, 19
  %indvars.iv.next815 = add i64 %indvars.iv814, 1
  br i1 %polly.loop_cond380, label %polly.loop_header374, label %polly.loop_exit376

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %154 = add i64 %indvar, 1
  %155 = mul nuw nsw i64 %polly.indvar499, 640
  %scevgep508 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check1245 = icmp ult i64 %154, 4
  br i1 %min.iters.check1245, label %polly.loop_header502.preheader, label %vector.ph1246

vector.ph1246:                                    ; preds = %polly.loop_header496
  %n.vec1248 = and i64 %154, -4
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1246
  %index1249 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1250, %vector.body1244 ]
  %156 = shl nuw nsw i64 %index1249, 3
  %157 = getelementptr i8, i8* %scevgep508, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1253 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !78, !noalias !80
  %159 = fmul fast <4 x double> %wide.load1253, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !78, !noalias !80
  %index.next1250 = add i64 %index1249, 4
  %161 = icmp eq i64 %index.next1250, %n.vec1248
  br i1 %161, label %middle.block1242, label %vector.body1244, !llvm.loop !83

middle.block1242:                                 ; preds = %vector.body1244
  %cmp.n1252 = icmp eq i64 %154, %n.vec1248
  br i1 %cmp.n1252, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block1242
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec1248, %middle.block1242 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block1242
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next500, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond854.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %162
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond853.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !84

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit520
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit520 ], [ 3, %polly.loop_exit504 ]
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %163 = lshr i64 %indvars.iv847, 3
  %164 = sub nsw i64 %polly.indvar515, %163
  %smax849 = call i64 @llvm.smax.i64(i64 %164, i64 0)
  %165 = mul nsw i64 %polly.indvar515, -20
  %166 = mul nuw nsw i64 %polly.indvar515, 20
  br label %polly.loop_header518

polly.loop_exit520:                               ; preds = %polly.loop_exit527
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next831 = add nsw i64 %indvars.iv830, -20
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 20
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv847, 3
  %exitcond852.not = icmp eq i64 %polly.indvar_next516, 4
  br i1 %exitcond852.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header518:                             ; preds = %polly.loop_exit527, %polly.loop_header512
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %polly.indvar521 = phi i64 [ %polly.indvar_next522, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 -52)
  %167 = shl nsw i64 %polly.indvar521, 3
  %168 = add nsw i64 %smin845, 59
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit534
  %polly.indvar_next522 = add nuw nsw i64 %polly.indvar521, 1
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -8
  %exitcond851.not = icmp eq i64 %polly.indvar_next522, 8
  br i1 %exitcond851.not, label %polly.loop_exit520, label %polly.loop_header518

polly.loop_header525:                             ; preds = %polly.loop_exit534, %polly.loop_header518
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %polly.loop_exit534 ], [ %indvars.iv835, %polly.loop_header518 ]
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %polly.loop_exit534 ], [ %indvars.iv830, %polly.loop_header518 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit534 ], [ 0, %polly.loop_header518 ]
  %169 = shl nsw i64 %polly.indvar528, 5
  %170 = add nsw i64 %169, %165
  %171 = icmp sgt i64 %170, 0
  %172 = select i1 %171, i64 %170, i64 0
  %polly.loop_guard535 = icmp slt i64 %172, 20
  br i1 %polly.loop_guard535, label %polly.loop_header532.preheader, label %polly.loop_exit534

polly.loop_header532.preheader:                   ; preds = %polly.loop_header525
  %smax834 = call i64 @llvm.smax.i64(i64 %indvars.iv832, i64 0)
  %173 = add i64 %smax834, %indvars.iv837
  %174 = sub nsw i64 %166, %169
  br label %polly.loop_header532

polly.loop_exit534:                               ; preds = %polly.loop_exit541, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %indvars.iv.next833 = add nsw i64 %indvars.iv832, 32
  %indvars.iv.next838 = add nsw i64 %indvars.iv837, -32
  %exitcond850.not = icmp eq i64 %polly.indvar528, %smax849
  br i1 %exitcond850.not, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header532:                             ; preds = %polly.loop_header532.preheader, %polly.loop_exit541
  %indvars.iv839 = phi i64 [ %173, %polly.loop_header532.preheader ], [ %indvars.iv.next840, %polly.loop_exit541 ]
  %polly.indvar536 = phi i64 [ %172, %polly.loop_header532.preheader ], [ %polly.indvar_next537, %polly.loop_exit541 ]
  %smin841 = call i64 @llvm.smin.i64(i64 %indvars.iv839, i64 31)
  %175 = add nsw i64 %polly.indvar536, %174
  %polly.loop_guard549939 = icmp sgt i64 %175, -1
  %176 = add nuw nsw i64 %polly.indvar536, %166
  %177 = mul i64 %176, 480
  %178 = mul i64 %176, 640
  br i1 %polly.loop_guard549939, label %polly.loop_header539.us, label %polly.loop_exit541

polly.loop_header539.us:                          ; preds = %polly.loop_header532, %polly.loop_exit548.loopexit.us
  %polly.indvar542.us = phi i64 [ %polly.indvar_next543.us, %polly.loop_exit548.loopexit.us ], [ 0, %polly.loop_header532 ]
  %179 = add nuw nsw i64 %polly.indvar542.us, %167
  %180 = shl i64 %179, 3
  %181 = add i64 %180, %177
  %scevgep556.us = getelementptr i8, i8* %call2, i64 %181
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us = getelementptr i8, i8* %call1, i64 %181
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us

polly.loop_header546.us:                          ; preds = %polly.loop_header539.us, %polly.loop_header546.us
  %polly.indvar550.us = phi i64 [ %polly.indvar_next551.us, %polly.loop_header546.us ], [ 0, %polly.loop_header539.us ]
  %182 = add nuw nsw i64 %polly.indvar550.us, %169
  %183 = mul nuw nsw i64 %182, 480
  %184 = add nuw nsw i64 %183, %180
  %scevgep553.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %scevgep559.us = getelementptr i8, i8* %call2, i64 %184
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_561.us
  %185 = shl i64 %182, 3
  %186 = add i64 %185, %178
  %scevgep565.us = getelementptr i8, i8* %call, i64 %186
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_567.us
  store double %p_add42.i.us, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us = add nuw nsw i64 %polly.indvar550.us, 1
  %exitcond842.not = icmp eq i64 %polly.indvar550.us, %smin841
  br i1 %exitcond842.not, label %polly.loop_exit548.loopexit.us, label %polly.loop_header546.us

polly.loop_exit548.loopexit.us:                   ; preds = %polly.loop_header546.us
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %exitcond846.not = icmp eq i64 %polly.indvar542.us, %168
  br i1 %exitcond846.not, label %polly.loop_exit541, label %polly.loop_header539.us

polly.loop_exit541:                               ; preds = %polly.loop_exit548.loopexit.us, %polly.loop_header532
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %polly.loop_cond538 = icmp ult i64 %polly.indvar536, 19
  %indvars.iv.next840 = add i64 %indvars.iv839, 1
  br i1 %polly.loop_cond538, label %polly.loop_header532, label %polly.loop_exit534

polly.loop_header706:                             ; preds = %entry, %polly.loop_exit714
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_exit714 ], [ 0, %entry ]
  %187 = mul nuw nsw i64 %polly.indvar709, 640
  %188 = trunc i64 %polly.indvar709 to i32
  %broadcast.splatinsert976 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat977 = shufflevector <4 x i32> %broadcast.splatinsert976, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %polly.loop_header706
  %index968 = phi i64 [ 0, %polly.loop_header706 ], [ %index.next969, %vector.body966 ]
  %vec.ind974 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header706 ], [ %vec.ind.next975, %vector.body966 ]
  %189 = mul <4 x i32> %vec.ind974, %broadcast.splat977
  %190 = add <4 x i32> %189, <i32 3, i32 3, i32 3, i32 3>
  %191 = urem <4 x i32> %190, <i32 80, i32 80, i32 80, i32 80>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %194 = shl i64 %index968, 3
  %195 = add nuw nsw i64 %194, %187
  %196 = getelementptr i8, i8* %call, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %193, <4 x double>* %197, align 8, !alias.scope !87, !noalias !89
  %index.next969 = add i64 %index968, 4
  %vec.ind.next975 = add <4 x i32> %vec.ind974, <i32 4, i32 4, i32 4, i32 4>
  %198 = icmp eq i64 %index.next969, 32
  br i1 %198, label %polly.loop_exit714, label %vector.body966, !llvm.loop !92

polly.loop_exit714:                               ; preds = %vector.body966
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next710, 32
  br i1 %exitcond874.not, label %polly.loop_header706.1, label %polly.loop_header706

polly.loop_header733:                             ; preds = %polly.loop_exit714.2.2, %polly.loop_exit741
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_exit741 ], [ 0, %polly.loop_exit714.2.2 ]
  %199 = mul nuw nsw i64 %polly.indvar736, 480
  %200 = trunc i64 %polly.indvar736 to i32
  %broadcast.splatinsert1090 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1091 = shufflevector <4 x i32> %broadcast.splatinsert1090, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %polly.loop_header733
  %index1082 = phi i64 [ 0, %polly.loop_header733 ], [ %index.next1083, %vector.body1080 ]
  %vec.ind1088 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header733 ], [ %vec.ind.next1089, %vector.body1080 ]
  %201 = mul <4 x i32> %vec.ind1088, %broadcast.splat1091
  %202 = add <4 x i32> %201, <i32 2, i32 2, i32 2, i32 2>
  %203 = urem <4 x i32> %202, <i32 60, i32 60, i32 60, i32 60>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %206 = shl i64 %index1082, 3
  %207 = add i64 %206, %199
  %208 = getelementptr i8, i8* %call2, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %205, <4 x double>* %209, align 8, !alias.scope !91, !noalias !93
  %index.next1083 = add i64 %index1082, 4
  %vec.ind.next1089 = add <4 x i32> %vec.ind1088, <i32 4, i32 4, i32 4, i32 4>
  %210 = icmp eq i64 %index.next1083, 32
  br i1 %210, label %polly.loop_exit741, label %vector.body1080, !llvm.loop !94

polly.loop_exit741:                               ; preds = %vector.body1080
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next737, 32
  br i1 %exitcond865.not, label %polly.loop_header733.1, label %polly.loop_header733

polly.loop_header759:                             ; preds = %polly.loop_exit741.1.2, %polly.loop_exit767
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_exit767 ], [ 0, %polly.loop_exit741.1.2 ]
  %211 = mul nuw nsw i64 %polly.indvar762, 480
  %212 = trunc i64 %polly.indvar762 to i32
  %broadcast.splatinsert1168 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1169 = shufflevector <4 x i32> %broadcast.splatinsert1168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header759
  %index1160 = phi i64 [ 0, %polly.loop_header759 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1166 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header759 ], [ %vec.ind.next1167, %vector.body1158 ]
  %213 = mul <4 x i32> %vec.ind1166, %broadcast.splat1169
  %214 = add <4 x i32> %213, <i32 1, i32 1, i32 1, i32 1>
  %215 = urem <4 x i32> %214, <i32 80, i32 80, i32 80, i32 80>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %218 = shl i64 %index1160, 3
  %219 = add i64 %218, %211
  %220 = getelementptr i8, i8* %call1, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %217, <4 x double>* %221, align 8, !alias.scope !90, !noalias !95
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1167 = add <4 x i32> %vec.ind1166, <i32 4, i32 4, i32 4, i32 4>
  %222 = icmp eq i64 %index.next1161, 32
  br i1 %222, label %polly.loop_exit767, label %vector.body1158, !llvm.loop !96

polly.loop_exit767:                               ; preds = %vector.body1158
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next763, 32
  br i1 %exitcond859.not, label %polly.loop_header759.1, label %polly.loop_header759

polly.loop_header759.1:                           ; preds = %polly.loop_exit767, %polly.loop_exit767.1
  %polly.indvar762.1 = phi i64 [ %polly.indvar_next763.1, %polly.loop_exit767.1 ], [ 0, %polly.loop_exit767 ]
  %223 = mul nuw nsw i64 %polly.indvar762.1, 480
  %224 = trunc i64 %polly.indvar762.1 to i32
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %polly.loop_header759.1
  %index1174 = phi i64 [ 0, %polly.loop_header759.1 ], [ %index.next1175, %vector.body1172 ]
  %vec.ind1178 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header759.1 ], [ %vec.ind.next1179, %vector.body1172 ]
  %225 = add nuw nsw <4 x i64> %vec.ind1178, <i64 32, i64 32, i64 32, i64 32>
  %226 = trunc <4 x i64> %225 to <4 x i32>
  %227 = mul <4 x i32> %broadcast.splat1181, %226
  %228 = add <4 x i32> %227, <i32 1, i32 1, i32 1, i32 1>
  %229 = urem <4 x i32> %228, <i32 80, i32 80, i32 80, i32 80>
  %230 = sitofp <4 x i32> %229 to <4 x double>
  %231 = fmul fast <4 x double> %230, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %232 = extractelement <4 x i64> %225, i32 0
  %233 = shl i64 %232, 3
  %234 = add i64 %233, %223
  %235 = getelementptr i8, i8* %call1, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %231, <4 x double>* %236, align 8, !alias.scope !90, !noalias !95
  %index.next1175 = add i64 %index1174, 4
  %vec.ind.next1179 = add <4 x i64> %vec.ind1178, <i64 4, i64 4, i64 4, i64 4>
  %237 = icmp eq i64 %index.next1175, 28
  br i1 %237, label %polly.loop_exit767.1, label %vector.body1172, !llvm.loop !97

polly.loop_exit767.1:                             ; preds = %vector.body1172
  %polly.indvar_next763.1 = add nuw nsw i64 %polly.indvar762.1, 1
  %exitcond859.1.not = icmp eq i64 %polly.indvar_next763.1, 32
  br i1 %exitcond859.1.not, label %polly.loop_header759.1882, label %polly.loop_header759.1

polly.loop_header759.1882:                        ; preds = %polly.loop_exit767.1, %polly.loop_exit767.1893
  %polly.indvar762.1881 = phi i64 [ %polly.indvar_next763.1891, %polly.loop_exit767.1893 ], [ 0, %polly.loop_exit767.1 ]
  %238 = add nuw nsw i64 %polly.indvar762.1881, 32
  %239 = mul nuw nsw i64 %238, 480
  %240 = trunc i64 %238 to i32
  %broadcast.splatinsert1194 = insertelement <4 x i32> poison, i32 %240, i32 0
  %broadcast.splat1195 = shufflevector <4 x i32> %broadcast.splatinsert1194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %polly.loop_header759.1882
  %index1186 = phi i64 [ 0, %polly.loop_header759.1882 ], [ %index.next1187, %vector.body1184 ]
  %vec.ind1192 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header759.1882 ], [ %vec.ind.next1193, %vector.body1184 ]
  %241 = mul <4 x i32> %vec.ind1192, %broadcast.splat1195
  %242 = add <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %243 = urem <4 x i32> %242, <i32 80, i32 80, i32 80, i32 80>
  %244 = sitofp <4 x i32> %243 to <4 x double>
  %245 = fmul fast <4 x double> %244, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %246 = shl i64 %index1186, 3
  %247 = add i64 %246, %239
  %248 = getelementptr i8, i8* %call1, i64 %247
  %249 = bitcast i8* %248 to <4 x double>*
  store <4 x double> %245, <4 x double>* %249, align 8, !alias.scope !90, !noalias !95
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1193 = add <4 x i32> %vec.ind1192, <i32 4, i32 4, i32 4, i32 4>
  %250 = icmp eq i64 %index.next1187, 32
  br i1 %250, label %polly.loop_exit767.1893, label %vector.body1184, !llvm.loop !98

polly.loop_exit767.1893:                          ; preds = %vector.body1184
  %polly.indvar_next763.1891 = add nuw nsw i64 %polly.indvar762.1881, 1
  %exitcond859.1892.not = icmp eq i64 %polly.indvar_next763.1891, 32
  br i1 %exitcond859.1892.not, label %polly.loop_header759.1.1, label %polly.loop_header759.1882

polly.loop_header759.1.1:                         ; preds = %polly.loop_exit767.1893, %polly.loop_exit767.1.1
  %polly.indvar762.1.1 = phi i64 [ %polly.indvar_next763.1.1, %polly.loop_exit767.1.1 ], [ 0, %polly.loop_exit767.1893 ]
  %251 = add nuw nsw i64 %polly.indvar762.1.1, 32
  %252 = mul nuw nsw i64 %251, 480
  %253 = trunc i64 %251 to i32
  %broadcast.splatinsert1206 = insertelement <4 x i32> poison, i32 %253, i32 0
  %broadcast.splat1207 = shufflevector <4 x i32> %broadcast.splatinsert1206, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %polly.loop_header759.1.1
  %index1200 = phi i64 [ 0, %polly.loop_header759.1.1 ], [ %index.next1201, %vector.body1198 ]
  %vec.ind1204 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header759.1.1 ], [ %vec.ind.next1205, %vector.body1198 ]
  %254 = add nuw nsw <4 x i64> %vec.ind1204, <i64 32, i64 32, i64 32, i64 32>
  %255 = trunc <4 x i64> %254 to <4 x i32>
  %256 = mul <4 x i32> %broadcast.splat1207, %255
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 80, i32 80, i32 80, i32 80>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %261 = extractelement <4 x i64> %254, i32 0
  %262 = shl i64 %261, 3
  %263 = add i64 %262, %252
  %264 = getelementptr i8, i8* %call1, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %260, <4 x double>* %265, align 8, !alias.scope !90, !noalias !95
  %index.next1201 = add i64 %index1200, 4
  %vec.ind.next1205 = add <4 x i64> %vec.ind1204, <i64 4, i64 4, i64 4, i64 4>
  %266 = icmp eq i64 %index.next1201, 28
  br i1 %266, label %polly.loop_exit767.1.1, label %vector.body1198, !llvm.loop !99

polly.loop_exit767.1.1:                           ; preds = %vector.body1198
  %polly.indvar_next763.1.1 = add nuw nsw i64 %polly.indvar762.1.1, 1
  %exitcond859.1.1.not = icmp eq i64 %polly.indvar_next763.1.1, 32
  br i1 %exitcond859.1.1.not, label %polly.loop_header759.2, label %polly.loop_header759.1.1

polly.loop_header759.2:                           ; preds = %polly.loop_exit767.1.1, %polly.loop_exit767.2
  %polly.indvar762.2 = phi i64 [ %polly.indvar_next763.2, %polly.loop_exit767.2 ], [ 0, %polly.loop_exit767.1.1 ]
  %267 = add nuw nsw i64 %polly.indvar762.2, 64
  %268 = mul nuw nsw i64 %267, 480
  %269 = trunc i64 %267 to i32
  %broadcast.splatinsert1220 = insertelement <4 x i32> poison, i32 %269, i32 0
  %broadcast.splat1221 = shufflevector <4 x i32> %broadcast.splatinsert1220, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %polly.loop_header759.2
  %index1212 = phi i64 [ 0, %polly.loop_header759.2 ], [ %index.next1213, %vector.body1210 ]
  %vec.ind1218 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header759.2 ], [ %vec.ind.next1219, %vector.body1210 ]
  %270 = mul <4 x i32> %vec.ind1218, %broadcast.splat1221
  %271 = add <4 x i32> %270, <i32 1, i32 1, i32 1, i32 1>
  %272 = urem <4 x i32> %271, <i32 80, i32 80, i32 80, i32 80>
  %273 = sitofp <4 x i32> %272 to <4 x double>
  %274 = fmul fast <4 x double> %273, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %275 = shl i64 %index1212, 3
  %276 = add i64 %275, %268
  %277 = getelementptr i8, i8* %call1, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %274, <4 x double>* %278, align 8, !alias.scope !90, !noalias !95
  %index.next1213 = add i64 %index1212, 4
  %vec.ind.next1219 = add <4 x i32> %vec.ind1218, <i32 4, i32 4, i32 4, i32 4>
  %279 = icmp eq i64 %index.next1213, 32
  br i1 %279, label %polly.loop_exit767.2, label %vector.body1210, !llvm.loop !100

polly.loop_exit767.2:                             ; preds = %vector.body1210
  %polly.indvar_next763.2 = add nuw nsw i64 %polly.indvar762.2, 1
  %exitcond859.2.not = icmp eq i64 %polly.indvar_next763.2, 16
  br i1 %exitcond859.2.not, label %polly.loop_header759.1.2, label %polly.loop_header759.2

polly.loop_header759.1.2:                         ; preds = %polly.loop_exit767.2, %polly.loop_exit767.1.2
  %polly.indvar762.1.2 = phi i64 [ %polly.indvar_next763.1.2, %polly.loop_exit767.1.2 ], [ 0, %polly.loop_exit767.2 ]
  %280 = add nuw nsw i64 %polly.indvar762.1.2, 64
  %281 = mul nuw nsw i64 %280, 480
  %282 = trunc i64 %280 to i32
  %broadcast.splatinsert1232 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1233 = shufflevector <4 x i32> %broadcast.splatinsert1232, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %polly.loop_header759.1.2
  %index1226 = phi i64 [ 0, %polly.loop_header759.1.2 ], [ %index.next1227, %vector.body1224 ]
  %vec.ind1230 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header759.1.2 ], [ %vec.ind.next1231, %vector.body1224 ]
  %283 = add nuw nsw <4 x i64> %vec.ind1230, <i64 32, i64 32, i64 32, i64 32>
  %284 = trunc <4 x i64> %283 to <4 x i32>
  %285 = mul <4 x i32> %broadcast.splat1233, %284
  %286 = add <4 x i32> %285, <i32 1, i32 1, i32 1, i32 1>
  %287 = urem <4 x i32> %286, <i32 80, i32 80, i32 80, i32 80>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %290 = extractelement <4 x i64> %283, i32 0
  %291 = shl i64 %290, 3
  %292 = add i64 %291, %281
  %293 = getelementptr i8, i8* %call1, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %289, <4 x double>* %294, align 8, !alias.scope !90, !noalias !95
  %index.next1227 = add i64 %index1226, 4
  %vec.ind.next1231 = add <4 x i64> %vec.ind1230, <i64 4, i64 4, i64 4, i64 4>
  %295 = icmp eq i64 %index.next1227, 28
  br i1 %295, label %polly.loop_exit767.1.2, label %vector.body1224, !llvm.loop !101

polly.loop_exit767.1.2:                           ; preds = %vector.body1224
  %polly.indvar_next763.1.2 = add nuw nsw i64 %polly.indvar762.1.2, 1
  %exitcond859.1.2.not = icmp eq i64 %polly.indvar_next763.1.2, 16
  br i1 %exitcond859.1.2.not, label %init_array.exit, label %polly.loop_header759.1.2

polly.loop_header733.1:                           ; preds = %polly.loop_exit741, %polly.loop_exit741.1
  %polly.indvar736.1 = phi i64 [ %polly.indvar_next737.1, %polly.loop_exit741.1 ], [ 0, %polly.loop_exit741 ]
  %296 = mul nuw nsw i64 %polly.indvar736.1, 480
  %297 = trunc i64 %polly.indvar736.1 to i32
  %broadcast.splatinsert1102 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1103 = shufflevector <4 x i32> %broadcast.splatinsert1102, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %polly.loop_header733.1
  %index1096 = phi i64 [ 0, %polly.loop_header733.1 ], [ %index.next1097, %vector.body1094 ]
  %vec.ind1100 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header733.1 ], [ %vec.ind.next1101, %vector.body1094 ]
  %298 = add nuw nsw <4 x i64> %vec.ind1100, <i64 32, i64 32, i64 32, i64 32>
  %299 = trunc <4 x i64> %298 to <4 x i32>
  %300 = mul <4 x i32> %broadcast.splat1103, %299
  %301 = add <4 x i32> %300, <i32 2, i32 2, i32 2, i32 2>
  %302 = urem <4 x i32> %301, <i32 60, i32 60, i32 60, i32 60>
  %303 = sitofp <4 x i32> %302 to <4 x double>
  %304 = fmul fast <4 x double> %303, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %305 = extractelement <4 x i64> %298, i32 0
  %306 = shl i64 %305, 3
  %307 = add i64 %306, %296
  %308 = getelementptr i8, i8* %call2, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %304, <4 x double>* %309, align 8, !alias.scope !91, !noalias !93
  %index.next1097 = add i64 %index1096, 4
  %vec.ind.next1101 = add <4 x i64> %vec.ind1100, <i64 4, i64 4, i64 4, i64 4>
  %310 = icmp eq i64 %index.next1097, 28
  br i1 %310, label %polly.loop_exit741.1, label %vector.body1094, !llvm.loop !102

polly.loop_exit741.1:                             ; preds = %vector.body1094
  %polly.indvar_next737.1 = add nuw nsw i64 %polly.indvar736.1, 1
  %exitcond865.1.not = icmp eq i64 %polly.indvar_next737.1, 32
  br i1 %exitcond865.1.not, label %polly.loop_header733.1896, label %polly.loop_header733.1

polly.loop_header733.1896:                        ; preds = %polly.loop_exit741.1, %polly.loop_exit741.1907
  %polly.indvar736.1895 = phi i64 [ %polly.indvar_next737.1905, %polly.loop_exit741.1907 ], [ 0, %polly.loop_exit741.1 ]
  %311 = add nuw nsw i64 %polly.indvar736.1895, 32
  %312 = mul nuw nsw i64 %311, 480
  %313 = trunc i64 %311 to i32
  %broadcast.splatinsert1116 = insertelement <4 x i32> poison, i32 %313, i32 0
  %broadcast.splat1117 = shufflevector <4 x i32> %broadcast.splatinsert1116, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %polly.loop_header733.1896
  %index1108 = phi i64 [ 0, %polly.loop_header733.1896 ], [ %index.next1109, %vector.body1106 ]
  %vec.ind1114 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header733.1896 ], [ %vec.ind.next1115, %vector.body1106 ]
  %314 = mul <4 x i32> %vec.ind1114, %broadcast.splat1117
  %315 = add <4 x i32> %314, <i32 2, i32 2, i32 2, i32 2>
  %316 = urem <4 x i32> %315, <i32 60, i32 60, i32 60, i32 60>
  %317 = sitofp <4 x i32> %316 to <4 x double>
  %318 = fmul fast <4 x double> %317, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %319 = shl i64 %index1108, 3
  %320 = add i64 %319, %312
  %321 = getelementptr i8, i8* %call2, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %318, <4 x double>* %322, align 8, !alias.scope !91, !noalias !93
  %index.next1109 = add i64 %index1108, 4
  %vec.ind.next1115 = add <4 x i32> %vec.ind1114, <i32 4, i32 4, i32 4, i32 4>
  %323 = icmp eq i64 %index.next1109, 32
  br i1 %323, label %polly.loop_exit741.1907, label %vector.body1106, !llvm.loop !103

polly.loop_exit741.1907:                          ; preds = %vector.body1106
  %polly.indvar_next737.1905 = add nuw nsw i64 %polly.indvar736.1895, 1
  %exitcond865.1906.not = icmp eq i64 %polly.indvar_next737.1905, 32
  br i1 %exitcond865.1906.not, label %polly.loop_header733.1.1, label %polly.loop_header733.1896

polly.loop_header733.1.1:                         ; preds = %polly.loop_exit741.1907, %polly.loop_exit741.1.1
  %polly.indvar736.1.1 = phi i64 [ %polly.indvar_next737.1.1, %polly.loop_exit741.1.1 ], [ 0, %polly.loop_exit741.1907 ]
  %324 = add nuw nsw i64 %polly.indvar736.1.1, 32
  %325 = mul nuw nsw i64 %324, 480
  %326 = trunc i64 %324 to i32
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %polly.loop_header733.1.1
  %index1122 = phi i64 [ 0, %polly.loop_header733.1.1 ], [ %index.next1123, %vector.body1120 ]
  %vec.ind1126 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header733.1.1 ], [ %vec.ind.next1127, %vector.body1120 ]
  %327 = add nuw nsw <4 x i64> %vec.ind1126, <i64 32, i64 32, i64 32, i64 32>
  %328 = trunc <4 x i64> %327 to <4 x i32>
  %329 = mul <4 x i32> %broadcast.splat1129, %328
  %330 = add <4 x i32> %329, <i32 2, i32 2, i32 2, i32 2>
  %331 = urem <4 x i32> %330, <i32 60, i32 60, i32 60, i32 60>
  %332 = sitofp <4 x i32> %331 to <4 x double>
  %333 = fmul fast <4 x double> %332, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %334 = extractelement <4 x i64> %327, i32 0
  %335 = shl i64 %334, 3
  %336 = add i64 %335, %325
  %337 = getelementptr i8, i8* %call2, i64 %336
  %338 = bitcast i8* %337 to <4 x double>*
  store <4 x double> %333, <4 x double>* %338, align 8, !alias.scope !91, !noalias !93
  %index.next1123 = add i64 %index1122, 4
  %vec.ind.next1127 = add <4 x i64> %vec.ind1126, <i64 4, i64 4, i64 4, i64 4>
  %339 = icmp eq i64 %index.next1123, 28
  br i1 %339, label %polly.loop_exit741.1.1, label %vector.body1120, !llvm.loop !104

polly.loop_exit741.1.1:                           ; preds = %vector.body1120
  %polly.indvar_next737.1.1 = add nuw nsw i64 %polly.indvar736.1.1, 1
  %exitcond865.1.1.not = icmp eq i64 %polly.indvar_next737.1.1, 32
  br i1 %exitcond865.1.1.not, label %polly.loop_header733.2, label %polly.loop_header733.1.1

polly.loop_header733.2:                           ; preds = %polly.loop_exit741.1.1, %polly.loop_exit741.2
  %polly.indvar736.2 = phi i64 [ %polly.indvar_next737.2, %polly.loop_exit741.2 ], [ 0, %polly.loop_exit741.1.1 ]
  %340 = add nuw nsw i64 %polly.indvar736.2, 64
  %341 = mul nuw nsw i64 %340, 480
  %342 = trunc i64 %340 to i32
  %broadcast.splatinsert1142 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1143 = shufflevector <4 x i32> %broadcast.splatinsert1142, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %polly.loop_header733.2
  %index1134 = phi i64 [ 0, %polly.loop_header733.2 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1140 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header733.2 ], [ %vec.ind.next1141, %vector.body1132 ]
  %343 = mul <4 x i32> %vec.ind1140, %broadcast.splat1143
  %344 = add <4 x i32> %343, <i32 2, i32 2, i32 2, i32 2>
  %345 = urem <4 x i32> %344, <i32 60, i32 60, i32 60, i32 60>
  %346 = sitofp <4 x i32> %345 to <4 x double>
  %347 = fmul fast <4 x double> %346, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %348 = shl i64 %index1134, 3
  %349 = add i64 %348, %341
  %350 = getelementptr i8, i8* %call2, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %347, <4 x double>* %351, align 8, !alias.scope !91, !noalias !93
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1141 = add <4 x i32> %vec.ind1140, <i32 4, i32 4, i32 4, i32 4>
  %352 = icmp eq i64 %index.next1135, 32
  br i1 %352, label %polly.loop_exit741.2, label %vector.body1132, !llvm.loop !105

polly.loop_exit741.2:                             ; preds = %vector.body1132
  %polly.indvar_next737.2 = add nuw nsw i64 %polly.indvar736.2, 1
  %exitcond865.2.not = icmp eq i64 %polly.indvar_next737.2, 16
  br i1 %exitcond865.2.not, label %polly.loop_header733.1.2, label %polly.loop_header733.2

polly.loop_header733.1.2:                         ; preds = %polly.loop_exit741.2, %polly.loop_exit741.1.2
  %polly.indvar736.1.2 = phi i64 [ %polly.indvar_next737.1.2, %polly.loop_exit741.1.2 ], [ 0, %polly.loop_exit741.2 ]
  %353 = add nuw nsw i64 %polly.indvar736.1.2, 64
  %354 = mul nuw nsw i64 %353, 480
  %355 = trunc i64 %353 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %polly.loop_header733.1.2
  %index1148 = phi i64 [ 0, %polly.loop_header733.1.2 ], [ %index.next1149, %vector.body1146 ]
  %vec.ind1152 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header733.1.2 ], [ %vec.ind.next1153, %vector.body1146 ]
  %356 = add nuw nsw <4 x i64> %vec.ind1152, <i64 32, i64 32, i64 32, i64 32>
  %357 = trunc <4 x i64> %356 to <4 x i32>
  %358 = mul <4 x i32> %broadcast.splat1155, %357
  %359 = add <4 x i32> %358, <i32 2, i32 2, i32 2, i32 2>
  %360 = urem <4 x i32> %359, <i32 60, i32 60, i32 60, i32 60>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %363 = extractelement <4 x i64> %356, i32 0
  %364 = shl i64 %363, 3
  %365 = add i64 %364, %354
  %366 = getelementptr i8, i8* %call2, i64 %365
  %367 = bitcast i8* %366 to <4 x double>*
  store <4 x double> %362, <4 x double>* %367, align 8, !alias.scope !91, !noalias !93
  %index.next1149 = add i64 %index1148, 4
  %vec.ind.next1153 = add <4 x i64> %vec.ind1152, <i64 4, i64 4, i64 4, i64 4>
  %368 = icmp eq i64 %index.next1149, 28
  br i1 %368, label %polly.loop_exit741.1.2, label %vector.body1146, !llvm.loop !106

polly.loop_exit741.1.2:                           ; preds = %vector.body1146
  %polly.indvar_next737.1.2 = add nuw nsw i64 %polly.indvar736.1.2, 1
  %exitcond865.1.2.not = icmp eq i64 %polly.indvar_next737.1.2, 16
  br i1 %exitcond865.1.2.not, label %polly.loop_header759, label %polly.loop_header733.1.2

polly.loop_header706.1:                           ; preds = %polly.loop_exit714, %polly.loop_exit714.1
  %polly.indvar709.1 = phi i64 [ %polly.indvar_next710.1, %polly.loop_exit714.1 ], [ 0, %polly.loop_exit714 ]
  %369 = mul nuw nsw i64 %polly.indvar709.1, 640
  %370 = trunc i64 %polly.indvar709.1 to i32
  %broadcast.splatinsert988 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat989 = shufflevector <4 x i32> %broadcast.splatinsert988, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %polly.loop_header706.1
  %index982 = phi i64 [ 0, %polly.loop_header706.1 ], [ %index.next983, %vector.body980 ]
  %vec.ind986 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.1 ], [ %vec.ind.next987, %vector.body980 ]
  %371 = add nuw nsw <4 x i64> %vec.ind986, <i64 32, i64 32, i64 32, i64 32>
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat989, %372
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
  %index.next983 = add i64 %index982, 4
  %vec.ind.next987 = add <4 x i64> %vec.ind986, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next983, 32
  br i1 %383, label %polly.loop_exit714.1, label %vector.body980, !llvm.loop !107

polly.loop_exit714.1:                             ; preds = %vector.body980
  %polly.indvar_next710.1 = add nuw nsw i64 %polly.indvar709.1, 1
  %exitcond874.1.not = icmp eq i64 %polly.indvar_next710.1, 32
  br i1 %exitcond874.1.not, label %polly.loop_header706.2, label %polly.loop_header706.1

polly.loop_header706.2:                           ; preds = %polly.loop_exit714.1, %polly.loop_exit714.2
  %polly.indvar709.2 = phi i64 [ %polly.indvar_next710.2, %polly.loop_exit714.2 ], [ 0, %polly.loop_exit714.1 ]
  %384 = mul nuw nsw i64 %polly.indvar709.2, 640
  %385 = trunc i64 %polly.indvar709.2 to i32
  %broadcast.splatinsert1000 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1001 = shufflevector <4 x i32> %broadcast.splatinsert1000, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %polly.loop_header706.2
  %index994 = phi i64 [ 0, %polly.loop_header706.2 ], [ %index.next995, %vector.body992 ]
  %vec.ind998 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.2 ], [ %vec.ind.next999, %vector.body992 ]
  %386 = add nuw nsw <4 x i64> %vec.ind998, <i64 64, i64 64, i64 64, i64 64>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1001, %387
  %389 = add <4 x i32> %388, <i32 3, i32 3, i32 3, i32 3>
  %390 = urem <4 x i32> %389, <i32 80, i32 80, i32 80, i32 80>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %384
  %396 = getelementptr i8, i8* %call, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !87, !noalias !89
  %index.next995 = add i64 %index994, 4
  %vec.ind.next999 = add <4 x i64> %vec.ind998, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next995, 16
  br i1 %398, label %polly.loop_exit714.2, label %vector.body992, !llvm.loop !108

polly.loop_exit714.2:                             ; preds = %vector.body992
  %polly.indvar_next710.2 = add nuw nsw i64 %polly.indvar709.2, 1
  %exitcond874.2.not = icmp eq i64 %polly.indvar_next710.2, 32
  br i1 %exitcond874.2.not, label %polly.loop_header706.1910, label %polly.loop_header706.2

polly.loop_header706.1910:                        ; preds = %polly.loop_exit714.2, %polly.loop_exit714.1921
  %polly.indvar709.1909 = phi i64 [ %polly.indvar_next710.1919, %polly.loop_exit714.1921 ], [ 0, %polly.loop_exit714.2 ]
  %399 = add nuw nsw i64 %polly.indvar709.1909, 32
  %400 = mul nuw nsw i64 %399, 640
  %401 = trunc i64 %399 to i32
  %broadcast.splatinsert1014 = insertelement <4 x i32> poison, i32 %401, i32 0
  %broadcast.splat1015 = shufflevector <4 x i32> %broadcast.splatinsert1014, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %polly.loop_header706.1910
  %index1006 = phi i64 [ 0, %polly.loop_header706.1910 ], [ %index.next1007, %vector.body1004 ]
  %vec.ind1012 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header706.1910 ], [ %vec.ind.next1013, %vector.body1004 ]
  %402 = mul <4 x i32> %vec.ind1012, %broadcast.splat1015
  %403 = add <4 x i32> %402, <i32 3, i32 3, i32 3, i32 3>
  %404 = urem <4 x i32> %403, <i32 80, i32 80, i32 80, i32 80>
  %405 = sitofp <4 x i32> %404 to <4 x double>
  %406 = fmul fast <4 x double> %405, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %407 = shl i64 %index1006, 3
  %408 = add nuw nsw i64 %407, %400
  %409 = getelementptr i8, i8* %call, i64 %408
  %410 = bitcast i8* %409 to <4 x double>*
  store <4 x double> %406, <4 x double>* %410, align 8, !alias.scope !87, !noalias !89
  %index.next1007 = add i64 %index1006, 4
  %vec.ind.next1013 = add <4 x i32> %vec.ind1012, <i32 4, i32 4, i32 4, i32 4>
  %411 = icmp eq i64 %index.next1007, 32
  br i1 %411, label %polly.loop_exit714.1921, label %vector.body1004, !llvm.loop !109

polly.loop_exit714.1921:                          ; preds = %vector.body1004
  %polly.indvar_next710.1919 = add nuw nsw i64 %polly.indvar709.1909, 1
  %exitcond874.1920.not = icmp eq i64 %polly.indvar_next710.1919, 32
  br i1 %exitcond874.1920.not, label %polly.loop_header706.1.1, label %polly.loop_header706.1910

polly.loop_header706.1.1:                         ; preds = %polly.loop_exit714.1921, %polly.loop_exit714.1.1
  %polly.indvar709.1.1 = phi i64 [ %polly.indvar_next710.1.1, %polly.loop_exit714.1.1 ], [ 0, %polly.loop_exit714.1921 ]
  %412 = add nuw nsw i64 %polly.indvar709.1.1, 32
  %413 = mul nuw nsw i64 %412, 640
  %414 = trunc i64 %412 to i32
  %broadcast.splatinsert1026 = insertelement <4 x i32> poison, i32 %414, i32 0
  %broadcast.splat1027 = shufflevector <4 x i32> %broadcast.splatinsert1026, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %polly.loop_header706.1.1
  %index1020 = phi i64 [ 0, %polly.loop_header706.1.1 ], [ %index.next1021, %vector.body1018 ]
  %vec.ind1024 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.1.1 ], [ %vec.ind.next1025, %vector.body1018 ]
  %415 = add nuw nsw <4 x i64> %vec.ind1024, <i64 32, i64 32, i64 32, i64 32>
  %416 = trunc <4 x i64> %415 to <4 x i32>
  %417 = mul <4 x i32> %broadcast.splat1027, %416
  %418 = add <4 x i32> %417, <i32 3, i32 3, i32 3, i32 3>
  %419 = urem <4 x i32> %418, <i32 80, i32 80, i32 80, i32 80>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %422 = extractelement <4 x i64> %415, i32 0
  %423 = shl i64 %422, 3
  %424 = add nuw nsw i64 %423, %413
  %425 = getelementptr i8, i8* %call, i64 %424
  %426 = bitcast i8* %425 to <4 x double>*
  store <4 x double> %421, <4 x double>* %426, align 8, !alias.scope !87, !noalias !89
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1025 = add <4 x i64> %vec.ind1024, <i64 4, i64 4, i64 4, i64 4>
  %427 = icmp eq i64 %index.next1021, 32
  br i1 %427, label %polly.loop_exit714.1.1, label %vector.body1018, !llvm.loop !110

polly.loop_exit714.1.1:                           ; preds = %vector.body1018
  %polly.indvar_next710.1.1 = add nuw nsw i64 %polly.indvar709.1.1, 1
  %exitcond874.1.1.not = icmp eq i64 %polly.indvar_next710.1.1, 32
  br i1 %exitcond874.1.1.not, label %polly.loop_header706.2.1, label %polly.loop_header706.1.1

polly.loop_header706.2.1:                         ; preds = %polly.loop_exit714.1.1, %polly.loop_exit714.2.1
  %polly.indvar709.2.1 = phi i64 [ %polly.indvar_next710.2.1, %polly.loop_exit714.2.1 ], [ 0, %polly.loop_exit714.1.1 ]
  %428 = add nuw nsw i64 %polly.indvar709.2.1, 32
  %429 = mul nuw nsw i64 %428, 640
  %430 = trunc i64 %428 to i32
  %broadcast.splatinsert1038 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat1039 = shufflevector <4 x i32> %broadcast.splatinsert1038, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %polly.loop_header706.2.1
  %index1032 = phi i64 [ 0, %polly.loop_header706.2.1 ], [ %index.next1033, %vector.body1030 ]
  %vec.ind1036 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.2.1 ], [ %vec.ind.next1037, %vector.body1030 ]
  %431 = add nuw nsw <4 x i64> %vec.ind1036, <i64 64, i64 64, i64 64, i64 64>
  %432 = trunc <4 x i64> %431 to <4 x i32>
  %433 = mul <4 x i32> %broadcast.splat1039, %432
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
  %index.next1033 = add i64 %index1032, 4
  %vec.ind.next1037 = add <4 x i64> %vec.ind1036, <i64 4, i64 4, i64 4, i64 4>
  %443 = icmp eq i64 %index.next1033, 16
  br i1 %443, label %polly.loop_exit714.2.1, label %vector.body1030, !llvm.loop !111

polly.loop_exit714.2.1:                           ; preds = %vector.body1030
  %polly.indvar_next710.2.1 = add nuw nsw i64 %polly.indvar709.2.1, 1
  %exitcond874.2.1.not = icmp eq i64 %polly.indvar_next710.2.1, 32
  br i1 %exitcond874.2.1.not, label %polly.loop_header706.2924, label %polly.loop_header706.2.1

polly.loop_header706.2924:                        ; preds = %polly.loop_exit714.2.1, %polly.loop_exit714.2935
  %polly.indvar709.2923 = phi i64 [ %polly.indvar_next710.2933, %polly.loop_exit714.2935 ], [ 0, %polly.loop_exit714.2.1 ]
  %444 = add nuw nsw i64 %polly.indvar709.2923, 64
  %445 = mul nuw nsw i64 %444, 640
  %446 = trunc i64 %444 to i32
  %broadcast.splatinsert1052 = insertelement <4 x i32> poison, i32 %446, i32 0
  %broadcast.splat1053 = shufflevector <4 x i32> %broadcast.splatinsert1052, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %polly.loop_header706.2924
  %index1044 = phi i64 [ 0, %polly.loop_header706.2924 ], [ %index.next1045, %vector.body1042 ]
  %vec.ind1050 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header706.2924 ], [ %vec.ind.next1051, %vector.body1042 ]
  %447 = mul <4 x i32> %vec.ind1050, %broadcast.splat1053
  %448 = add <4 x i32> %447, <i32 3, i32 3, i32 3, i32 3>
  %449 = urem <4 x i32> %448, <i32 80, i32 80, i32 80, i32 80>
  %450 = sitofp <4 x i32> %449 to <4 x double>
  %451 = fmul fast <4 x double> %450, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %452 = shl i64 %index1044, 3
  %453 = add nuw nsw i64 %452, %445
  %454 = getelementptr i8, i8* %call, i64 %453
  %455 = bitcast i8* %454 to <4 x double>*
  store <4 x double> %451, <4 x double>* %455, align 8, !alias.scope !87, !noalias !89
  %index.next1045 = add i64 %index1044, 4
  %vec.ind.next1051 = add <4 x i32> %vec.ind1050, <i32 4, i32 4, i32 4, i32 4>
  %456 = icmp eq i64 %index.next1045, 32
  br i1 %456, label %polly.loop_exit714.2935, label %vector.body1042, !llvm.loop !112

polly.loop_exit714.2935:                          ; preds = %vector.body1042
  %polly.indvar_next710.2933 = add nuw nsw i64 %polly.indvar709.2923, 1
  %exitcond874.2934.not = icmp eq i64 %polly.indvar_next710.2933, 16
  br i1 %exitcond874.2934.not, label %polly.loop_header706.1.2, label %polly.loop_header706.2924

polly.loop_header706.1.2:                         ; preds = %polly.loop_exit714.2935, %polly.loop_exit714.1.2
  %polly.indvar709.1.2 = phi i64 [ %polly.indvar_next710.1.2, %polly.loop_exit714.1.2 ], [ 0, %polly.loop_exit714.2935 ]
  %457 = add nuw nsw i64 %polly.indvar709.1.2, 64
  %458 = mul nuw nsw i64 %457, 640
  %459 = trunc i64 %457 to i32
  %broadcast.splatinsert1064 = insertelement <4 x i32> poison, i32 %459, i32 0
  %broadcast.splat1065 = shufflevector <4 x i32> %broadcast.splatinsert1064, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %polly.loop_header706.1.2
  %index1058 = phi i64 [ 0, %polly.loop_header706.1.2 ], [ %index.next1059, %vector.body1056 ]
  %vec.ind1062 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.1.2 ], [ %vec.ind.next1063, %vector.body1056 ]
  %460 = add nuw nsw <4 x i64> %vec.ind1062, <i64 32, i64 32, i64 32, i64 32>
  %461 = trunc <4 x i64> %460 to <4 x i32>
  %462 = mul <4 x i32> %broadcast.splat1065, %461
  %463 = add <4 x i32> %462, <i32 3, i32 3, i32 3, i32 3>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %467 = extractelement <4 x i64> %460, i32 0
  %468 = shl i64 %467, 3
  %469 = add nuw nsw i64 %468, %458
  %470 = getelementptr i8, i8* %call, i64 %469
  %471 = bitcast i8* %470 to <4 x double>*
  store <4 x double> %466, <4 x double>* %471, align 8, !alias.scope !87, !noalias !89
  %index.next1059 = add i64 %index1058, 4
  %vec.ind.next1063 = add <4 x i64> %vec.ind1062, <i64 4, i64 4, i64 4, i64 4>
  %472 = icmp eq i64 %index.next1059, 32
  br i1 %472, label %polly.loop_exit714.1.2, label %vector.body1056, !llvm.loop !113

polly.loop_exit714.1.2:                           ; preds = %vector.body1056
  %polly.indvar_next710.1.2 = add nuw nsw i64 %polly.indvar709.1.2, 1
  %exitcond874.1.2.not = icmp eq i64 %polly.indvar_next710.1.2, 16
  br i1 %exitcond874.1.2.not, label %polly.loop_header706.2.2, label %polly.loop_header706.1.2

polly.loop_header706.2.2:                         ; preds = %polly.loop_exit714.1.2, %polly.loop_exit714.2.2
  %polly.indvar709.2.2 = phi i64 [ %polly.indvar_next710.2.2, %polly.loop_exit714.2.2 ], [ 0, %polly.loop_exit714.1.2 ]
  %473 = add nuw nsw i64 %polly.indvar709.2.2, 64
  %474 = mul nuw nsw i64 %473, 640
  %475 = trunc i64 %473 to i32
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %475, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1068

vector.body1068:                                  ; preds = %vector.body1068, %polly.loop_header706.2.2
  %index1070 = phi i64 [ 0, %polly.loop_header706.2.2 ], [ %index.next1071, %vector.body1068 ]
  %vec.ind1074 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.2.2 ], [ %vec.ind.next1075, %vector.body1068 ]
  %476 = add nuw nsw <4 x i64> %vec.ind1074, <i64 64, i64 64, i64 64, i64 64>
  %477 = trunc <4 x i64> %476 to <4 x i32>
  %478 = mul <4 x i32> %broadcast.splat1077, %477
  %479 = add <4 x i32> %478, <i32 3, i32 3, i32 3, i32 3>
  %480 = urem <4 x i32> %479, <i32 80, i32 80, i32 80, i32 80>
  %481 = sitofp <4 x i32> %480 to <4 x double>
  %482 = fmul fast <4 x double> %481, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %483 = extractelement <4 x i64> %476, i32 0
  %484 = shl i64 %483, 3
  %485 = add nuw nsw i64 %484, %474
  %486 = getelementptr i8, i8* %call, i64 %485
  %487 = bitcast i8* %486 to <4 x double>*
  store <4 x double> %482, <4 x double>* %487, align 8, !alias.scope !87, !noalias !89
  %index.next1071 = add i64 %index1070, 4
  %vec.ind.next1075 = add <4 x i64> %vec.ind1074, <i64 4, i64 4, i64 4, i64 4>
  %488 = icmp eq i64 %index.next1071, 16
  br i1 %488, label %polly.loop_exit714.2.2, label %vector.body1068, !llvm.loop !114

polly.loop_exit714.2.2:                           ; preds = %vector.body1068
  %polly.indvar_next710.2.2 = add nuw nsw i64 %polly.indvar709.2.2, 1
  %exitcond874.2.2.not = icmp eq i64 %polly.indvar_next710.2.2, 16
  br i1 %exitcond874.2.2.not, label %polly.loop_header733, label %polly.loop_header706.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 32}
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
!44 = !{!"llvm.loop.tile.size", i32 20}
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
