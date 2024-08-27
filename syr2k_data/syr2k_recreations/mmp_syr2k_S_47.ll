; ModuleID = 'syr2k_recreations//mmp_syr2k_S_47.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_47.c"
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
  %call754 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1615 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2616 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1615, %call2
  %polly.access.call2635 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2635, %call1
  %2 = or i1 %0, %1
  %polly.access.call655 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call655, %call2
  %4 = icmp ule i8* %polly.access.call2635, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call655, %call1
  %8 = icmp ule i8* %polly.access.call1615, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header740, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep960 = getelementptr i8, i8* %call2, i64 %12
  %scevgep959 = getelementptr i8, i8* %call2, i64 %11
  %scevgep958 = getelementptr i8, i8* %call1, i64 %12
  %scevgep957 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep957, %scevgep960
  %bound1 = icmp ult i8* %scevgep959, %scevgep958
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
  br i1 %exitcond18.not.i, label %vector.ph964, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph964:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert971 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat972 = shufflevector <4 x i64> %broadcast.splatinsert971, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body963

vector.body963:                                   ; preds = %vector.body963, %vector.ph964
  %index965 = phi i64 [ 0, %vector.ph964 ], [ %index.next966, %vector.body963 ]
  %vec.ind969 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph964 ], [ %vec.ind.next970, %vector.body963 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind969, %broadcast.splat972
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv7.i, i64 %index965
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next966 = add i64 %index965, 4
  %vec.ind.next970 = add <4 x i64> %vec.ind969, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next966, 80
  br i1 %40, label %for.inc41.i, label %vector.body963, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body963
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph964, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit801.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start435, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1317, label %vector.ph1246

vector.ph1246:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1246
  %index1247 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1248, %vector.body1245 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %index1247
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1248 = add i64 %index1247, 4
  %46 = icmp eq i64 %index.next1248, %n.vec
  br i1 %46, label %middle.block1243, label %vector.body1245, !llvm.loop !18

middle.block1243:                                 ; preds = %vector.body1245
  %cmp.n1250 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1250, label %for.inc6.i, label %for.body3.i46.preheader1317

for.body3.i46.preheader1317:                      ; preds = %for.body3.i46.preheader, %middle.block1243
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1243 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1317, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1317 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1243, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting436
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1266 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1266, label %for.body3.i60.preheader1316, label %vector.ph1267

vector.ph1267:                                    ; preds = %for.body3.i60.preheader
  %n.vec1269 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %vector.ph1267
  %index1270 = phi i64 [ 0, %vector.ph1267 ], [ %index.next1271, %vector.body1265 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %index1270
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1274 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1274, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1271 = add i64 %index1270, 4
  %57 = icmp eq i64 %index.next1271, %n.vec1269
  br i1 %57, label %middle.block1263, label %vector.body1265, !llvm.loop !60

middle.block1263:                                 ; preds = %vector.body1265
  %cmp.n1273 = icmp eq i64 %indvars.iv21.i52, %n.vec1269
  br i1 %cmp.n1273, label %for.inc6.i63, label %for.body3.i60.preheader1316

for.body3.i60.preheader1316:                      ; preds = %for.body3.i60.preheader, %middle.block1263
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1269, %middle.block1263 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1316, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1316 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1263, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !41

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting267
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1292 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1292, label %for.body3.i99.preheader1315, label %vector.ph1293

vector.ph1293:                                    ; preds = %for.body3.i99.preheader
  %n.vec1295 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %vector.ph1293
  %index1296 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1297, %vector.body1291 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %index1296
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1300, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1297 = add i64 %index1296, 4
  %68 = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %68, label %middle.block1289, label %vector.body1291, !llvm.loop !62

middle.block1289:                                 ; preds = %vector.body1291
  %cmp.n1299 = icmp eq i64 %indvars.iv21.i91, %n.vec1295
  br i1 %cmp.n1299, label %for.inc6.i102, label %for.body3.i99.preheader1315

for.body3.i99.preheader1315:                      ; preds = %for.body3.i99.preheader, %middle.block1289
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1295, %middle.block1289 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1315, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1315 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1289, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !41

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit229.3
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1304 = phi i64 [ %indvar.next1305, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1304, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1306 = icmp ult i64 %88, 4
  br i1 %min.iters.check1306, label %polly.loop_header191.preheader, label %vector.ph1307

vector.ph1307:                                    ; preds = %polly.loop_header
  %n.vec1309 = and i64 %88, -4
  br label %vector.body1303

vector.body1303:                                  ; preds = %vector.body1303, %vector.ph1307
  %index1310 = phi i64 [ 0, %vector.ph1307 ], [ %index.next1311, %vector.body1303 ]
  %90 = shl nuw nsw i64 %index1310, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1314 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1314, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1311 = add i64 %index1310, 4
  %95 = icmp eq i64 %index.next1311, %n.vec1309
  br i1 %95, label %middle.block1301, label %vector.body1303, !llvm.loop !74

middle.block1301:                                 ; preds = %vector.body1303
  %cmp.n1313 = icmp eq i64 %88, %n.vec1309
  br i1 %cmp.n1313, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1301
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1309, %middle.block1301 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1301
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1305 = add i64 %indvar1304, 1
  br i1 %exitcond839.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond838.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit229.3
  %indvars.iv826 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next827, %polly.loop_exit229.3 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit229.3 ]
  %smin834 = call i64 @llvm.smin.i64(i64 %indvars.iv826, i64 -44)
  %97 = add nsw i64 %smin834, 60
  %98 = shl nsw i64 %polly.indvar202, 4
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %99 = add nuw nsw i64 %polly.indvar214, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next215, %97
  br i1 %exitcond828.not, label %polly.loop_header227, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %polly.access.mul.call2224 = mul nuw nsw i64 %polly.indvar220, 60
  %polly.access.add.call2225 = add nuw nsw i64 %99, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 80
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit219, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_exit219 ]
  %100 = add nuw nsw i64 %polly.indvar230, %98
  %101 = shl i64 %100, 3
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %polly.indvar230, 80
  %scevgep256 = getelementptr i8, i8* %call1, i64 %101
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next231, %97
  br i1 %exitcond835.not, label %polly.loop_header211.1, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %smin831 = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 19)
  %102 = mul nuw nsw i64 %polly.indvar236, 480
  %103 = mul nuw nsw i64 %polly.indvar236, 640
  %scevgep260 = getelementptr i8, i8* %call, i64 %103
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %scevgep257 = getelementptr i8, i8* %scevgep256, i64 %102
  %scevgep257258 = bitcast i8* %scevgep257 to double*
  %_p_scalar_259 = load double, double* %scevgep257258, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1
  %exitcond833.not = icmp eq i64 %indvars.iv.next830, 80
  br i1 %exitcond833.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %104 = mul nuw nsw i64 %polly.indvar242, 480
  %105 = add nuw nsw i64 %104, %101
  %scevgep245 = getelementptr i8, i8* %call1, i64 %105
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.indvar242, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %106 = shl i64 %polly.indvar242, 3
  %scevgep261 = getelementptr i8, i8* %scevgep260, i64 %106
  %scevgep261262 = bitcast i8* %scevgep261 to double*
  %_p_scalar_263 = load double, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_263
  store double %p_add42.i118, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond832.not = icmp eq i64 %polly.indvar242, %smin831
  br i1 %exitcond832.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header352

polly.exiting267:                                 ; preds = %polly.loop_exit398.3
  tail call void @free(i8* nonnull %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1278 = phi i64 [ %indvar.next1279, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %107 = add i64 %indvar1278, 1
  %108 = mul nuw nsw i64 %polly.indvar355, 640
  %scevgep364 = getelementptr i8, i8* %call, i64 %108
  %min.iters.check1280 = icmp ult i64 %107, 4
  br i1 %min.iters.check1280, label %polly.loop_header358.preheader, label %vector.ph1281

vector.ph1281:                                    ; preds = %polly.loop_header352
  %n.vec1283 = and i64 %107, -4
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1277 ]
  %109 = shl nuw nsw i64 %index1284, 3
  %110 = getelementptr i8, i8* %scevgep364, i64 %109
  %111 = bitcast i8* %110 to <4 x double>*
  %wide.load1288 = load <4 x double>, <4 x double>* %111, align 8, !alias.scope !79, !noalias !81
  %112 = fmul fast <4 x double> %wide.load1288, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %113 = bitcast i8* %110 to <4 x double>*
  store <4 x double> %112, <4 x double>* %113, align 8, !alias.scope !79, !noalias !81
  %index.next1285 = add i64 %index1284, 4
  %114 = icmp eq i64 %index.next1285, %n.vec1283
  br i1 %114, label %middle.block1275, label %vector.body1277, !llvm.loop !85

middle.block1275:                                 ; preds = %vector.body1277
  %cmp.n1287 = icmp eq i64 %107, %n.vec1283
  br i1 %cmp.n1287, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1275
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1283, %middle.block1275 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1275
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next356, 80
  %indvar.next1279 = add i64 %indvar1278, 1
  br i1 %exitcond857.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %115 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %115
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond856.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !86

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit398.3
  %indvars.iv843 = phi i64 [ 0, %polly.loop_header368.preheader ], [ %indvars.iv.next844, %polly.loop_exit398.3 ]
  %polly.indvar371 = phi i64 [ 0, %polly.loop_header368.preheader ], [ %polly.indvar_next372, %polly.loop_exit398.3 ]
  %smin852 = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 -44)
  %116 = add nsw i64 %smin852, 60
  %117 = shl nsw i64 %polly.indvar371, 4
  br label %polly.loop_header380

polly.loop_header380:                             ; preds = %polly.loop_exit388, %polly.loop_header368
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next384, %polly.loop_exit388 ]
  %118 = add nuw nsw i64 %polly.indvar383, %117
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar383, 80
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_header386
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next384, %116
  br i1 %exitcond846.not, label %polly.loop_header396, label %polly.loop_header380

polly.loop_header386:                             ; preds = %polly.loop_header386, %polly.loop_header380
  %polly.indvar389 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next390, %polly.loop_header386 ]
  %polly.access.mul.call2393 = mul nuw nsw i64 %polly.indvar389, 60
  %polly.access.add.call2394 = add nuw nsw i64 %118, %polly.access.mul.call2393
  %polly.access.call2395 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2394
  %polly.access.call2395.load = load double, double* %polly.access.call2395, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar389, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2395.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next390, 80
  br i1 %exitcond842.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header396:                             ; preds = %polly.loop_exit388, %polly.loop_exit404
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_exit388 ]
  %119 = add nuw nsw i64 %polly.indvar399, %117
  %120 = shl i64 %119, 3
  %polly.access.mul.Packed_MemRef_call2269417 = mul nuw nsw i64 %polly.indvar399, 80
  %scevgep425 = getelementptr i8, i8* %call1, i64 %120
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit410
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next400, %116
  br i1 %exitcond853.not, label %polly.loop_header380.1, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit410, %polly.loop_header396
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit410 ], [ 0, %polly.loop_header396 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header396 ]
  %smin849 = call i64 @llvm.smin.i64(i64 %indvars.iv847, i64 19)
  %121 = mul nuw nsw i64 %polly.indvar405, 480
  %122 = mul nuw nsw i64 %polly.indvar405, 640
  %scevgep429 = getelementptr i8, i8* %call, i64 %122
  %polly.access.add.Packed_MemRef_call2269418 = add nuw nsw i64 %polly.indvar405, %polly.access.mul.Packed_MemRef_call2269417
  %polly.access.Packed_MemRef_call2269419 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418
  %_p_scalar_420 = load double, double* %polly.access.Packed_MemRef_call2269419, align 8
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %121
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv847, 1
  %exitcond851.not = icmp eq i64 %indvars.iv.next848, 80
  br i1 %exitcond851.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %123 = mul nuw nsw i64 %polly.indvar411, 480
  %124 = add nuw nsw i64 %123, %120
  %scevgep414 = getelementptr i8, i8* %call1, i64 %124
  %scevgep414415 = bitcast i8* %scevgep414 to double*
  %_p_scalar_416 = load double, double* %scevgep414415, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_420, %_p_scalar_416
  %polly.access.add.Packed_MemRef_call2269422 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2269417
  %polly.access.Packed_MemRef_call2269423 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422
  %_p_scalar_424 = load double, double* %polly.access.Packed_MemRef_call2269423, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_428, %_p_scalar_424
  %125 = shl i64 %polly.indvar411, 3
  %scevgep430 = getelementptr i8, i8* %scevgep429, i64 %125
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_432
  store double %p_add42.i79, double* %scevgep430431, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond850.not = icmp eq i64 %polly.indvar411, %smin849
  br i1 %exitcond850.not, label %polly.loop_exit410, label %polly.loop_header408

polly.start435:                                   ; preds = %init_array.exit
  %malloccall437 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header521

polly.exiting436:                                 ; preds = %polly.loop_exit567.3
  tail call void @free(i8* nonnull %malloccall437)
  br label %kernel_syr2k.exit

polly.loop_header521:                             ; preds = %polly.loop_exit529, %polly.start435
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit529 ], [ 0, %polly.start435 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 1, %polly.start435 ]
  %126 = add i64 %indvar, 1
  %127 = mul nuw nsw i64 %polly.indvar524, 640
  %scevgep533 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1254 = icmp ult i64 %126, 4
  br i1 %min.iters.check1254, label %polly.loop_header527.preheader, label %vector.ph1255

vector.ph1255:                                    ; preds = %polly.loop_header521
  %n.vec1257 = and i64 %126, -4
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %vector.ph1255
  %index1258 = phi i64 [ 0, %vector.ph1255 ], [ %index.next1259, %vector.body1253 ]
  %128 = shl nuw nsw i64 %index1258, 3
  %129 = getelementptr i8, i8* %scevgep533, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1262 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !89, !noalias !91
  %131 = fmul fast <4 x double> %wide.load1262, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !89, !noalias !91
  %index.next1259 = add i64 %index1258, 4
  %133 = icmp eq i64 %index.next1259, %n.vec1257
  br i1 %133, label %middle.block1251, label %vector.body1253, !llvm.loop !95

middle.block1251:                                 ; preds = %vector.body1253
  %cmp.n1261 = icmp eq i64 %126, %n.vec1257
  br i1 %cmp.n1261, label %polly.loop_exit529, label %polly.loop_header527.preheader

polly.loop_header527.preheader:                   ; preds = %polly.loop_header521, %middle.block1251
  %polly.indvar530.ph = phi i64 [ 0, %polly.loop_header521 ], [ %n.vec1257, %middle.block1251 ]
  br label %polly.loop_header527

polly.loop_exit529:                               ; preds = %polly.loop_header527, %middle.block1251
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next525, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond875.not, label %polly.loop_header537.preheader, label %polly.loop_header521

polly.loop_header537.preheader:                   ; preds = %polly.loop_exit529
  %Packed_MemRef_call2438 = bitcast i8* %malloccall437 to double*
  br label %polly.loop_header537

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_header527
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_header527 ], [ %polly.indvar530.ph, %polly.loop_header527.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar530, 3
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 %134
  %scevgep534535 = bitcast i8* %scevgep534 to double*
  %_p_scalar_536 = load double, double* %scevgep534535, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_536, 1.200000e+00
  store double %p_mul.i, double* %scevgep534535, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next531, %polly.indvar524
  br i1 %exitcond874.not, label %polly.loop_exit529, label %polly.loop_header527, !llvm.loop !96

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_exit567.3
  %indvars.iv861 = phi i64 [ 0, %polly.loop_header537.preheader ], [ %indvars.iv.next862, %polly.loop_exit567.3 ]
  %polly.indvar540 = phi i64 [ 0, %polly.loop_header537.preheader ], [ %polly.indvar_next541, %polly.loop_exit567.3 ]
  %smin870 = call i64 @llvm.smin.i64(i64 %indvars.iv861, i64 -44)
  %135 = add nsw i64 %smin870, 60
  %136 = shl nsw i64 %polly.indvar540, 4
  br label %polly.loop_header549

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.loop_header537
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header537 ], [ %polly.indvar_next553, %polly.loop_exit557 ]
  %137 = add nuw nsw i64 %polly.indvar552, %136
  %polly.access.mul.Packed_MemRef_call2438 = mul nuw nsw i64 %polly.indvar552, 80
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_header555
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next553, %135
  br i1 %exitcond864.not, label %polly.loop_header565, label %polly.loop_header549

polly.loop_header555:                             ; preds = %polly.loop_header555, %polly.loop_header549
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header549 ], [ %polly.indvar_next559, %polly.loop_header555 ]
  %polly.access.mul.call2562 = mul nuw nsw i64 %polly.indvar558, 60
  %polly.access.add.call2563 = add nuw nsw i64 %137, %polly.access.mul.call2562
  %polly.access.call2564 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2563
  %polly.access.call2564.load = load double, double* %polly.access.call2564, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438 = add nuw nsw i64 %polly.indvar558, %polly.access.mul.Packed_MemRef_call2438
  %polly.access.Packed_MemRef_call2438 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438
  store double %polly.access.call2564.load, double* %polly.access.Packed_MemRef_call2438, align 8
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next559, 80
  br i1 %exitcond860.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header565:                             ; preds = %polly.loop_exit557, %polly.loop_exit573
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ 0, %polly.loop_exit557 ]
  %138 = add nuw nsw i64 %polly.indvar568, %136
  %139 = shl i64 %138, 3
  %polly.access.mul.Packed_MemRef_call2438586 = mul nuw nsw i64 %polly.indvar568, 80
  %scevgep594 = getelementptr i8, i8* %call1, i64 %139
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit579
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next569, %135
  br i1 %exitcond871.not, label %polly.loop_header549.1, label %polly.loop_header565

polly.loop_header571:                             ; preds = %polly.loop_exit579, %polly.loop_header565
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %polly.loop_exit579 ], [ 0, %polly.loop_header565 ]
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_exit579 ], [ 0, %polly.loop_header565 ]
  %smin867 = call i64 @llvm.smin.i64(i64 %indvars.iv865, i64 19)
  %140 = mul nuw nsw i64 %polly.indvar574, 480
  %141 = mul nuw nsw i64 %polly.indvar574, 640
  %scevgep598 = getelementptr i8, i8* %call, i64 %141
  %polly.access.add.Packed_MemRef_call2438587 = add nuw nsw i64 %polly.indvar574, %polly.access.mul.Packed_MemRef_call2438586
  %polly.access.Packed_MemRef_call2438588 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2438588, align 8
  %scevgep595 = getelementptr i8, i8* %scevgep594, i64 %140
  %scevgep595596 = bitcast i8* %scevgep595 to double*
  %_p_scalar_597 = load double, double* %scevgep595596, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_header577
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %indvars.iv.next866 = add nuw nsw i64 %indvars.iv865, 1
  %exitcond869.not = icmp eq i64 %indvars.iv.next866, 80
  br i1 %exitcond869.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header577:                             ; preds = %polly.loop_header577, %polly.loop_header571
  %polly.indvar580 = phi i64 [ 0, %polly.loop_header571 ], [ %polly.indvar_next581, %polly.loop_header577 ]
  %142 = mul nuw nsw i64 %polly.indvar580, 480
  %143 = add nuw nsw i64 %142, %139
  %scevgep583 = getelementptr i8, i8* %call1, i64 %143
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_589, %_p_scalar_585
  %polly.access.add.Packed_MemRef_call2438591 = add nuw nsw i64 %polly.indvar580, %polly.access.mul.Packed_MemRef_call2438586
  %polly.access.Packed_MemRef_call2438592 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591
  %_p_scalar_593 = load double, double* %polly.access.Packed_MemRef_call2438592, align 8
  %p_mul37.i = fmul fast double %_p_scalar_597, %_p_scalar_593
  %144 = shl i64 %polly.indvar580, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %144
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_601
  store double %p_add42.i, double* %scevgep599600, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %exitcond868.not = icmp eq i64 %polly.indvar580, %smin867
  br i1 %exitcond868.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %145 = mul nuw nsw i64 %polly.indvar743, 640
  %146 = trunc i64 %polly.indvar743 to i32
  %broadcast.splatinsert985 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat986 = shufflevector <4 x i32> %broadcast.splatinsert985, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %polly.loop_header740
  %index977 = phi i64 [ 0, %polly.loop_header740 ], [ %index.next978, %vector.body975 ]
  %vec.ind983 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740 ], [ %vec.ind.next984, %vector.body975 ]
  %147 = mul <4 x i32> %vec.ind983, %broadcast.splat986
  %148 = add <4 x i32> %147, <i32 3, i32 3, i32 3, i32 3>
  %149 = urem <4 x i32> %148, <i32 80, i32 80, i32 80, i32 80>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index977, 3
  %153 = add nuw nsw i64 %152, %145
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !99, !noalias !101
  %index.next978 = add i64 %index977, 4
  %vec.ind.next984 = add <4 x i32> %vec.ind983, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next978, 32
  br i1 %156, label %polly.loop_exit748, label %vector.body975, !llvm.loop !104

polly.loop_exit748:                               ; preds = %vector.body975
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next744, 32
  br i1 %exitcond895.not, label %polly.loop_header740.1, label %polly.loop_header740

polly.loop_header767:                             ; preds = %polly.loop_exit748.2.2, %polly.loop_exit775
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748.2.2 ]
  %157 = mul nuw nsw i64 %polly.indvar770, 480
  %158 = trunc i64 %polly.indvar770 to i32
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %polly.loop_header767
  %index1091 = phi i64 [ 0, %polly.loop_header767 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1097 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767 ], [ %vec.ind.next1098, %vector.body1089 ]
  %159 = mul <4 x i32> %vec.ind1097, %broadcast.splat1100
  %160 = add <4 x i32> %159, <i32 2, i32 2, i32 2, i32 2>
  %161 = urem <4 x i32> %160, <i32 60, i32 60, i32 60, i32 60>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %164 = shl i64 %index1091, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call2, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !103, !noalias !105
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1098 = add <4 x i32> %vec.ind1097, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1092, 32
  br i1 %168, label %polly.loop_exit775, label %vector.body1089, !llvm.loop !106

polly.loop_exit775:                               ; preds = %vector.body1089
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next771, 32
  br i1 %exitcond886.not, label %polly.loop_header767.1, label %polly.loop_header767

polly.loop_header793:                             ; preds = %polly.loop_exit775.1.2, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775.1.2 ]
  %169 = mul nuw nsw i64 %polly.indvar796, 480
  %170 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %polly.loop_header793
  %index1169 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1175 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1176, %vector.body1167 ]
  %171 = mul <4 x i32> %vec.ind1175, %broadcast.splat1178
  %172 = add <4 x i32> %171, <i32 1, i32 1, i32 1, i32 1>
  %173 = urem <4 x i32> %172, <i32 80, i32 80, i32 80, i32 80>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %176 = shl i64 %index1169, 3
  %177 = add i64 %176, %169
  %178 = getelementptr i8, i8* %call1, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !102, !noalias !107
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1176 = add <4 x i32> %vec.ind1175, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1170, 32
  br i1 %180, label %polly.loop_exit801, label %vector.body1167, !llvm.loop !108

polly.loop_exit801:                               ; preds = %vector.body1167
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond880.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header211.1:                           ; preds = %polly.loop_exit235, %polly.loop_exit219.1
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit235 ]
  %181 = add nuw nsw i64 %polly.indvar214.1, %98
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar214.1, 80
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %182 = mul i64 %polly.indvar220.1, 60
  %polly.access.mul.call2224.1 = add i64 %182, 1200
  %polly.access.add.call2225.1 = add nuw nsw i64 %181, %polly.access.mul.call2224.1
  %polly.access.call2226.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2225.1
  %polly.access.call2226.load.1 = load double, double* %polly.access.call2226.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar220.1, %polly.access.mul.Packed_MemRef_call2.1
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2226.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, 60
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond828.1.not = icmp eq i64 %polly.indvar_next215.1, %97
  br i1 %exitcond828.1.not, label %polly.loop_header227.1, label %polly.loop_header211.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit235.1
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit219.1 ]
  %183 = add nuw nsw i64 %polly.indvar230.1, %98
  %184 = shl i64 %183, 3
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %polly.indvar230.1, 80
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %184
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %indvars.iv829.1 = phi i64 [ %indvars.iv.next830.1, %polly.loop_exit241.1 ], [ 0, %polly.loop_header227.1 ]
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit241.1 ], [ 20, %polly.loop_header227.1 ]
  %smin831.1 = call i64 @llvm.smin.i64(i64 %indvars.iv829.1, i64 19)
  %185 = add nsw i64 %polly.indvar236.1, -20
  %186 = mul nuw nsw i64 %polly.indvar236.1, 480
  %187 = mul nuw nsw i64 %polly.indvar236.1, 640
  %scevgep260.1 = getelementptr i8, i8* %call, i64 %187
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %185, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %scevgep257.1 = getelementptr i8, i8* %scevgep256.1, i64 %186
  %scevgep257258.1 = bitcast i8* %scevgep257.1 to double*
  %_p_scalar_259.1 = load double, double* %scevgep257258.1, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %188 = add nuw nsw i64 %polly.indvar242.1, 20
  %189 = mul nuw nsw i64 %188, 480
  %190 = add nuw nsw i64 %189, %184
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %190
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %polly.indvar242.1, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_259.1, %_p_scalar_255.1
  %191 = shl i64 %188, 3
  %scevgep261.1 = getelementptr i8, i8* %scevgep260.1, i64 %191
  %scevgep261262.1 = bitcast i8* %scevgep261.1 to double*
  %_p_scalar_263.1 = load double, double* %scevgep261262.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_263.1
  store double %p_add42.i118.1, double* %scevgep261262.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond832.1.not = icmp eq i64 %polly.indvar242.1, %smin831.1
  br i1 %exitcond832.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %indvars.iv.next830.1 = add nuw nsw i64 %indvars.iv829.1, 1
  %exitcond833.1.not = icmp eq i64 %indvars.iv.next830.1, 60
  br i1 %exitcond833.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %exitcond835.1.not = icmp eq i64 %polly.indvar_next231.1, %97
  br i1 %exitcond835.1.not, label %polly.loop_header211.2, label %polly.loop_header227.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit219.2
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit235.1 ]
  %192 = add nuw nsw i64 %polly.indvar214.2, %98
  %polly.access.mul.Packed_MemRef_call2.2 = mul nuw nsw i64 %polly.indvar214.2, 80
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_header217.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_header217.2 ]
  %193 = mul i64 %polly.indvar220.2, 60
  %polly.access.mul.call2224.2 = add i64 %193, 2400
  %polly.access.add.call2225.2 = add nuw nsw i64 %192, %polly.access.mul.call2224.2
  %polly.access.call2226.2 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2225.2
  %polly.access.call2226.load.2 = load double, double* %polly.access.call2226.2, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar220.2, %polly.access.mul.Packed_MemRef_call2.2
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2226.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next221.2, 40
  br i1 %exitcond.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_header217.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond828.2.not = icmp eq i64 %polly.indvar_next215.2, %97
  br i1 %exitcond828.2.not, label %polly.loop_header227.2, label %polly.loop_header211.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit219.2, %polly.loop_exit235.2
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_exit219.2 ]
  %194 = add nuw nsw i64 %polly.indvar230.2, %98
  %195 = shl i64 %194, 3
  %polly.access.mul.Packed_MemRef_call2248.2 = mul nuw nsw i64 %polly.indvar230.2, 80
  %scevgep256.2 = getelementptr i8, i8* %call1, i64 %195
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.2, %polly.loop_header227.2
  %indvars.iv829.2 = phi i64 [ %indvars.iv.next830.2, %polly.loop_exit241.2 ], [ 0, %polly.loop_header227.2 ]
  %polly.indvar236.2 = phi i64 [ %polly.indvar_next237.2, %polly.loop_exit241.2 ], [ 40, %polly.loop_header227.2 ]
  %smin831.2 = call i64 @llvm.smin.i64(i64 %indvars.iv829.2, i64 19)
  %196 = add nsw i64 %polly.indvar236.2, -40
  %197 = mul nuw nsw i64 %polly.indvar236.2, 480
  %198 = mul nuw nsw i64 %polly.indvar236.2, 640
  %scevgep260.2 = getelementptr i8, i8* %call, i64 %198
  %polly.access.add.Packed_MemRef_call2249.2 = add nuw nsw i64 %196, %polly.access.mul.Packed_MemRef_call2248.2
  %polly.access.Packed_MemRef_call2250.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2
  %_p_scalar_251.2 = load double, double* %polly.access.Packed_MemRef_call2250.2, align 8
  %scevgep257.2 = getelementptr i8, i8* %scevgep256.2, i64 %197
  %scevgep257258.2 = bitcast i8* %scevgep257.2 to double*
  %_p_scalar_259.2 = load double, double* %scevgep257258.2, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_header233.2
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_header233.2 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %199 = add nuw nsw i64 %polly.indvar242.2, 40
  %200 = mul nuw nsw i64 %199, 480
  %201 = add nuw nsw i64 %200, %195
  %scevgep245.2 = getelementptr i8, i8* %call1, i64 %201
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_247.2
  %polly.access.add.Packed_MemRef_call2253.2 = add nuw nsw i64 %polly.indvar242.2, %polly.access.mul.Packed_MemRef_call2248.2
  %polly.access.Packed_MemRef_call2254.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2
  %_p_scalar_255.2 = load double, double* %polly.access.Packed_MemRef_call2254.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_259.2, %_p_scalar_255.2
  %202 = shl i64 %199, 3
  %scevgep261.2 = getelementptr i8, i8* %scevgep260.2, i64 %202
  %scevgep261262.2 = bitcast i8* %scevgep261.2 to double*
  %_p_scalar_263.2 = load double, double* %scevgep261262.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_263.2
  store double %p_add42.i118.2, double* %scevgep261262.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond832.2.not = icmp eq i64 %polly.indvar242.2, %smin831.2
  br i1 %exitcond832.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %indvars.iv.next830.2 = add nuw nsw i64 %indvars.iv829.2, 1
  %exitcond833.2.not = icmp eq i64 %indvars.iv.next830.2, 40
  br i1 %exitcond833.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %exitcond835.2.not = icmp eq i64 %polly.indvar_next231.2, %97
  br i1 %exitcond835.2.not, label %polly.loop_header211.3, label %polly.loop_header227.2

polly.loop_header211.3:                           ; preds = %polly.loop_exit235.2, %polly.loop_exit219.3
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit219.3 ], [ 0, %polly.loop_exit235.2 ]
  %203 = add nuw nsw i64 %polly.indvar214.3, %98
  %polly.access.mul.Packed_MemRef_call2.3 = mul nuw nsw i64 %polly.indvar214.3, 80
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_header217.3, %polly.loop_header211.3
  %polly.indvar220.3 = phi i64 [ 0, %polly.loop_header211.3 ], [ %polly.indvar_next221.3, %polly.loop_header217.3 ]
  %204 = mul i64 %polly.indvar220.3, 60
  %polly.access.mul.call2224.3 = add i64 %204, 3600
  %polly.access.add.call2225.3 = add nuw nsw i64 %203, %polly.access.mul.call2224.3
  %polly.access.call2226.3 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2225.3
  %polly.access.call2226.load.3 = load double, double* %polly.access.call2226.3, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar220.3, %polly.access.mul.Packed_MemRef_call2.3
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2226.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next221.3, 20
  br i1 %exitcond.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_header217.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %exitcond828.3.not = icmp eq i64 %polly.indvar_next215.3, %97
  br i1 %exitcond828.3.not, label %polly.loop_header227.3, label %polly.loop_header211.3

polly.loop_header227.3:                           ; preds = %polly.loop_exit219.3, %polly.loop_exit235.3
  %polly.indvar230.3 = phi i64 [ %polly.indvar_next231.3, %polly.loop_exit235.3 ], [ 0, %polly.loop_exit219.3 ]
  %205 = add nuw nsw i64 %polly.indvar230.3, %98
  %206 = shl i64 %205, 3
  %polly.access.mul.Packed_MemRef_call2248.3 = mul nuw nsw i64 %polly.indvar230.3, 80
  %scevgep256.3 = getelementptr i8, i8* %call1, i64 %206
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_exit241.3, %polly.loop_header227.3
  %indvars.iv829.3 = phi i64 [ %indvars.iv.next830.3, %polly.loop_exit241.3 ], [ 0, %polly.loop_header227.3 ]
  %polly.indvar236.3 = phi i64 [ %polly.indvar_next237.3, %polly.loop_exit241.3 ], [ 60, %polly.loop_header227.3 ]
  %smin831.3 = call i64 @llvm.smin.i64(i64 %indvars.iv829.3, i64 19)
  %207 = add nsw i64 %polly.indvar236.3, -60
  %208 = mul nuw nsw i64 %polly.indvar236.3, 480
  %209 = mul nuw nsw i64 %polly.indvar236.3, 640
  %scevgep260.3 = getelementptr i8, i8* %call, i64 %209
  %polly.access.add.Packed_MemRef_call2249.3 = add nuw nsw i64 %207, %polly.access.mul.Packed_MemRef_call2248.3
  %polly.access.Packed_MemRef_call2250.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.3
  %_p_scalar_251.3 = load double, double* %polly.access.Packed_MemRef_call2250.3, align 8
  %scevgep257.3 = getelementptr i8, i8* %scevgep256.3, i64 %208
  %scevgep257258.3 = bitcast i8* %scevgep257.3 to double*
  %_p_scalar_259.3 = load double, double* %scevgep257258.3, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_header239.3, %polly.loop_header233.3
  %polly.indvar242.3 = phi i64 [ 0, %polly.loop_header233.3 ], [ %polly.indvar_next243.3, %polly.loop_header239.3 ]
  %210 = add nuw nsw i64 %polly.indvar242.3, 60
  %211 = mul nuw nsw i64 %210, 480
  %212 = add nuw nsw i64 %211, %206
  %scevgep245.3 = getelementptr i8, i8* %call1, i64 %212
  %scevgep245246.3 = bitcast i8* %scevgep245.3 to double*
  %_p_scalar_247.3 = load double, double* %scevgep245246.3, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.3 = fmul fast double %_p_scalar_251.3, %_p_scalar_247.3
  %polly.access.add.Packed_MemRef_call2253.3 = add nuw nsw i64 %polly.indvar242.3, %polly.access.mul.Packed_MemRef_call2248.3
  %polly.access.Packed_MemRef_call2254.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.3
  %_p_scalar_255.3 = load double, double* %polly.access.Packed_MemRef_call2254.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_259.3, %_p_scalar_255.3
  %213 = shl i64 %210, 3
  %scevgep261.3 = getelementptr i8, i8* %scevgep260.3, i64 %213
  %scevgep261262.3 = bitcast i8* %scevgep261.3 to double*
  %_p_scalar_263.3 = load double, double* %scevgep261262.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_263.3
  store double %p_add42.i118.3, double* %scevgep261262.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %exitcond832.3.not = icmp eq i64 %polly.indvar242.3, %smin831.3
  br i1 %exitcond832.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.3

polly.loop_exit241.3:                             ; preds = %polly.loop_header239.3
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %indvars.iv.next830.3 = add nuw nsw i64 %indvars.iv829.3, 1
  %exitcond833.3.not = icmp eq i64 %indvars.iv.next830.3, 20
  br i1 %exitcond833.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_exit241.3
  %polly.indvar_next231.3 = add nuw nsw i64 %polly.indvar230.3, 1
  %exitcond835.3.not = icmp eq i64 %polly.indvar_next231.3, %97
  br i1 %exitcond835.3.not, label %polly.loop_exit229.3, label %polly.loop_header227.3

polly.loop_exit229.3:                             ; preds = %polly.loop_exit235.3
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next827 = add nsw i64 %indvars.iv826, -16
  %exitcond837.not = icmp eq i64 %polly.indvar_next203, 4
  br i1 %exitcond837.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header380.1:                           ; preds = %polly.loop_exit404, %polly.loop_exit388.1
  %polly.indvar383.1 = phi i64 [ %polly.indvar_next384.1, %polly.loop_exit388.1 ], [ 0, %polly.loop_exit404 ]
  %214 = add nuw nsw i64 %polly.indvar383.1, %117
  %polly.access.mul.Packed_MemRef_call2269.1 = mul nuw nsw i64 %polly.indvar383.1, 80
  br label %polly.loop_header386.1

polly.loop_header386.1:                           ; preds = %polly.loop_header386.1, %polly.loop_header380.1
  %polly.indvar389.1 = phi i64 [ 0, %polly.loop_header380.1 ], [ %polly.indvar_next390.1, %polly.loop_header386.1 ]
  %215 = mul i64 %polly.indvar389.1, 60
  %polly.access.mul.call2393.1 = add i64 %215, 1200
  %polly.access.add.call2394.1 = add nuw nsw i64 %214, %polly.access.mul.call2393.1
  %polly.access.call2395.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2394.1
  %polly.access.call2395.load.1 = load double, double* %polly.access.call2395.1, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269.1 = add nuw nsw i64 %polly.indvar389.1, %polly.access.mul.Packed_MemRef_call2269.1
  %polly.access.Packed_MemRef_call2269.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269.1
  store double %polly.access.call2395.load.1, double* %polly.access.Packed_MemRef_call2269.1, align 8
  %polly.indvar_next390.1 = add nuw nsw i64 %polly.indvar389.1, 1
  %exitcond842.1.not = icmp eq i64 %polly.indvar_next390.1, 60
  br i1 %exitcond842.1.not, label %polly.loop_exit388.1, label %polly.loop_header386.1

polly.loop_exit388.1:                             ; preds = %polly.loop_header386.1
  %polly.indvar_next384.1 = add nuw nsw i64 %polly.indvar383.1, 1
  %exitcond846.1.not = icmp eq i64 %polly.indvar_next384.1, %116
  br i1 %exitcond846.1.not, label %polly.loop_header396.1, label %polly.loop_header380.1

polly.loop_header396.1:                           ; preds = %polly.loop_exit388.1, %polly.loop_exit404.1
  %polly.indvar399.1 = phi i64 [ %polly.indvar_next400.1, %polly.loop_exit404.1 ], [ 0, %polly.loop_exit388.1 ]
  %216 = add nuw nsw i64 %polly.indvar399.1, %117
  %217 = shl i64 %216, 3
  %polly.access.mul.Packed_MemRef_call2269417.1 = mul nuw nsw i64 %polly.indvar399.1, 80
  %scevgep425.1 = getelementptr i8, i8* %call1, i64 %217
  br label %polly.loop_header402.1

polly.loop_header402.1:                           ; preds = %polly.loop_exit410.1, %polly.loop_header396.1
  %indvars.iv847.1 = phi i64 [ %indvars.iv.next848.1, %polly.loop_exit410.1 ], [ 0, %polly.loop_header396.1 ]
  %polly.indvar405.1 = phi i64 [ %polly.indvar_next406.1, %polly.loop_exit410.1 ], [ 20, %polly.loop_header396.1 ]
  %smin849.1 = call i64 @llvm.smin.i64(i64 %indvars.iv847.1, i64 19)
  %218 = add nsw i64 %polly.indvar405.1, -20
  %219 = mul nuw nsw i64 %polly.indvar405.1, 480
  %220 = mul nuw nsw i64 %polly.indvar405.1, 640
  %scevgep429.1 = getelementptr i8, i8* %call, i64 %220
  %polly.access.add.Packed_MemRef_call2269418.1 = add nuw nsw i64 %218, %polly.access.mul.Packed_MemRef_call2269417.1
  %polly.access.Packed_MemRef_call2269419.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.1
  %_p_scalar_420.1 = load double, double* %polly.access.Packed_MemRef_call2269419.1, align 8
  %scevgep426.1 = getelementptr i8, i8* %scevgep425.1, i64 %219
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.1

polly.loop_header408.1:                           ; preds = %polly.loop_header408.1, %polly.loop_header402.1
  %polly.indvar411.1 = phi i64 [ 0, %polly.loop_header402.1 ], [ %polly.indvar_next412.1, %polly.loop_header408.1 ]
  %221 = add nuw nsw i64 %polly.indvar411.1, 20
  %222 = mul nuw nsw i64 %221, 480
  %223 = add nuw nsw i64 %222, %217
  %scevgep414.1 = getelementptr i8, i8* %call1, i64 %223
  %scevgep414415.1 = bitcast i8* %scevgep414.1 to double*
  %_p_scalar_416.1 = load double, double* %scevgep414415.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_420.1, %_p_scalar_416.1
  %polly.access.add.Packed_MemRef_call2269422.1 = add nuw nsw i64 %polly.indvar411.1, %polly.access.mul.Packed_MemRef_call2269417.1
  %polly.access.Packed_MemRef_call2269423.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.1
  %_p_scalar_424.1 = load double, double* %polly.access.Packed_MemRef_call2269423.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_428.1, %_p_scalar_424.1
  %224 = shl i64 %221, 3
  %scevgep430.1 = getelementptr i8, i8* %scevgep429.1, i64 %224
  %scevgep430431.1 = bitcast i8* %scevgep430.1 to double*
  %_p_scalar_432.1 = load double, double* %scevgep430431.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_432.1
  store double %p_add42.i79.1, double* %scevgep430431.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.1 = add nuw nsw i64 %polly.indvar411.1, 1
  %exitcond850.1.not = icmp eq i64 %polly.indvar411.1, %smin849.1
  br i1 %exitcond850.1.not, label %polly.loop_exit410.1, label %polly.loop_header408.1

polly.loop_exit410.1:                             ; preds = %polly.loop_header408.1
  %polly.indvar_next406.1 = add nuw nsw i64 %polly.indvar405.1, 1
  %indvars.iv.next848.1 = add nuw nsw i64 %indvars.iv847.1, 1
  %exitcond851.1.not = icmp eq i64 %indvars.iv.next848.1, 60
  br i1 %exitcond851.1.not, label %polly.loop_exit404.1, label %polly.loop_header402.1

polly.loop_exit404.1:                             ; preds = %polly.loop_exit410.1
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond853.1.not = icmp eq i64 %polly.indvar_next400.1, %116
  br i1 %exitcond853.1.not, label %polly.loop_header380.2, label %polly.loop_header396.1

polly.loop_header380.2:                           ; preds = %polly.loop_exit404.1, %polly.loop_exit388.2
  %polly.indvar383.2 = phi i64 [ %polly.indvar_next384.2, %polly.loop_exit388.2 ], [ 0, %polly.loop_exit404.1 ]
  %225 = add nuw nsw i64 %polly.indvar383.2, %117
  %polly.access.mul.Packed_MemRef_call2269.2 = mul nuw nsw i64 %polly.indvar383.2, 80
  br label %polly.loop_header386.2

polly.loop_header386.2:                           ; preds = %polly.loop_header386.2, %polly.loop_header380.2
  %polly.indvar389.2 = phi i64 [ 0, %polly.loop_header380.2 ], [ %polly.indvar_next390.2, %polly.loop_header386.2 ]
  %226 = mul i64 %polly.indvar389.2, 60
  %polly.access.mul.call2393.2 = add i64 %226, 2400
  %polly.access.add.call2394.2 = add nuw nsw i64 %225, %polly.access.mul.call2393.2
  %polly.access.call2395.2 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2394.2
  %polly.access.call2395.load.2 = load double, double* %polly.access.call2395.2, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269.2 = add nuw nsw i64 %polly.indvar389.2, %polly.access.mul.Packed_MemRef_call2269.2
  %polly.access.Packed_MemRef_call2269.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269.2
  store double %polly.access.call2395.load.2, double* %polly.access.Packed_MemRef_call2269.2, align 8
  %polly.indvar_next390.2 = add nuw nsw i64 %polly.indvar389.2, 1
  %exitcond842.2.not = icmp eq i64 %polly.indvar_next390.2, 40
  br i1 %exitcond842.2.not, label %polly.loop_exit388.2, label %polly.loop_header386.2

polly.loop_exit388.2:                             ; preds = %polly.loop_header386.2
  %polly.indvar_next384.2 = add nuw nsw i64 %polly.indvar383.2, 1
  %exitcond846.2.not = icmp eq i64 %polly.indvar_next384.2, %116
  br i1 %exitcond846.2.not, label %polly.loop_header396.2, label %polly.loop_header380.2

polly.loop_header396.2:                           ; preds = %polly.loop_exit388.2, %polly.loop_exit404.2
  %polly.indvar399.2 = phi i64 [ %polly.indvar_next400.2, %polly.loop_exit404.2 ], [ 0, %polly.loop_exit388.2 ]
  %227 = add nuw nsw i64 %polly.indvar399.2, %117
  %228 = shl i64 %227, 3
  %polly.access.mul.Packed_MemRef_call2269417.2 = mul nuw nsw i64 %polly.indvar399.2, 80
  %scevgep425.2 = getelementptr i8, i8* %call1, i64 %228
  br label %polly.loop_header402.2

polly.loop_header402.2:                           ; preds = %polly.loop_exit410.2, %polly.loop_header396.2
  %indvars.iv847.2 = phi i64 [ %indvars.iv.next848.2, %polly.loop_exit410.2 ], [ 0, %polly.loop_header396.2 ]
  %polly.indvar405.2 = phi i64 [ %polly.indvar_next406.2, %polly.loop_exit410.2 ], [ 40, %polly.loop_header396.2 ]
  %smin849.2 = call i64 @llvm.smin.i64(i64 %indvars.iv847.2, i64 19)
  %229 = add nsw i64 %polly.indvar405.2, -40
  %230 = mul nuw nsw i64 %polly.indvar405.2, 480
  %231 = mul nuw nsw i64 %polly.indvar405.2, 640
  %scevgep429.2 = getelementptr i8, i8* %call, i64 %231
  %polly.access.add.Packed_MemRef_call2269418.2 = add nuw nsw i64 %229, %polly.access.mul.Packed_MemRef_call2269417.2
  %polly.access.Packed_MemRef_call2269419.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.2
  %_p_scalar_420.2 = load double, double* %polly.access.Packed_MemRef_call2269419.2, align 8
  %scevgep426.2 = getelementptr i8, i8* %scevgep425.2, i64 %230
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.2

polly.loop_header408.2:                           ; preds = %polly.loop_header408.2, %polly.loop_header402.2
  %polly.indvar411.2 = phi i64 [ 0, %polly.loop_header402.2 ], [ %polly.indvar_next412.2, %polly.loop_header408.2 ]
  %232 = add nuw nsw i64 %polly.indvar411.2, 40
  %233 = mul nuw nsw i64 %232, 480
  %234 = add nuw nsw i64 %233, %228
  %scevgep414.2 = getelementptr i8, i8* %call1, i64 %234
  %scevgep414415.2 = bitcast i8* %scevgep414.2 to double*
  %_p_scalar_416.2 = load double, double* %scevgep414415.2, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.2 = fmul fast double %_p_scalar_420.2, %_p_scalar_416.2
  %polly.access.add.Packed_MemRef_call2269422.2 = add nuw nsw i64 %polly.indvar411.2, %polly.access.mul.Packed_MemRef_call2269417.2
  %polly.access.Packed_MemRef_call2269423.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.2
  %_p_scalar_424.2 = load double, double* %polly.access.Packed_MemRef_call2269423.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_428.2, %_p_scalar_424.2
  %235 = shl i64 %232, 3
  %scevgep430.2 = getelementptr i8, i8* %scevgep429.2, i64 %235
  %scevgep430431.2 = bitcast i8* %scevgep430.2 to double*
  %_p_scalar_432.2 = load double, double* %scevgep430431.2, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_432.2
  store double %p_add42.i79.2, double* %scevgep430431.2, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.2 = add nuw nsw i64 %polly.indvar411.2, 1
  %exitcond850.2.not = icmp eq i64 %polly.indvar411.2, %smin849.2
  br i1 %exitcond850.2.not, label %polly.loop_exit410.2, label %polly.loop_header408.2

polly.loop_exit410.2:                             ; preds = %polly.loop_header408.2
  %polly.indvar_next406.2 = add nuw nsw i64 %polly.indvar405.2, 1
  %indvars.iv.next848.2 = add nuw nsw i64 %indvars.iv847.2, 1
  %exitcond851.2.not = icmp eq i64 %indvars.iv.next848.2, 40
  br i1 %exitcond851.2.not, label %polly.loop_exit404.2, label %polly.loop_header402.2

polly.loop_exit404.2:                             ; preds = %polly.loop_exit410.2
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %exitcond853.2.not = icmp eq i64 %polly.indvar_next400.2, %116
  br i1 %exitcond853.2.not, label %polly.loop_header380.3, label %polly.loop_header396.2

polly.loop_header380.3:                           ; preds = %polly.loop_exit404.2, %polly.loop_exit388.3
  %polly.indvar383.3 = phi i64 [ %polly.indvar_next384.3, %polly.loop_exit388.3 ], [ 0, %polly.loop_exit404.2 ]
  %236 = add nuw nsw i64 %polly.indvar383.3, %117
  %polly.access.mul.Packed_MemRef_call2269.3 = mul nuw nsw i64 %polly.indvar383.3, 80
  br label %polly.loop_header386.3

polly.loop_header386.3:                           ; preds = %polly.loop_header386.3, %polly.loop_header380.3
  %polly.indvar389.3 = phi i64 [ 0, %polly.loop_header380.3 ], [ %polly.indvar_next390.3, %polly.loop_header386.3 ]
  %237 = mul i64 %polly.indvar389.3, 60
  %polly.access.mul.call2393.3 = add i64 %237, 3600
  %polly.access.add.call2394.3 = add nuw nsw i64 %236, %polly.access.mul.call2393.3
  %polly.access.call2395.3 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2394.3
  %polly.access.call2395.load.3 = load double, double* %polly.access.call2395.3, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269.3 = add nuw nsw i64 %polly.indvar389.3, %polly.access.mul.Packed_MemRef_call2269.3
  %polly.access.Packed_MemRef_call2269.3 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269.3
  store double %polly.access.call2395.load.3, double* %polly.access.Packed_MemRef_call2269.3, align 8
  %polly.indvar_next390.3 = add nuw nsw i64 %polly.indvar389.3, 1
  %exitcond842.3.not = icmp eq i64 %polly.indvar_next390.3, 20
  br i1 %exitcond842.3.not, label %polly.loop_exit388.3, label %polly.loop_header386.3

polly.loop_exit388.3:                             ; preds = %polly.loop_header386.3
  %polly.indvar_next384.3 = add nuw nsw i64 %polly.indvar383.3, 1
  %exitcond846.3.not = icmp eq i64 %polly.indvar_next384.3, %116
  br i1 %exitcond846.3.not, label %polly.loop_header396.3, label %polly.loop_header380.3

polly.loop_header396.3:                           ; preds = %polly.loop_exit388.3, %polly.loop_exit404.3
  %polly.indvar399.3 = phi i64 [ %polly.indvar_next400.3, %polly.loop_exit404.3 ], [ 0, %polly.loop_exit388.3 ]
  %238 = add nuw nsw i64 %polly.indvar399.3, %117
  %239 = shl i64 %238, 3
  %polly.access.mul.Packed_MemRef_call2269417.3 = mul nuw nsw i64 %polly.indvar399.3, 80
  %scevgep425.3 = getelementptr i8, i8* %call1, i64 %239
  br label %polly.loop_header402.3

polly.loop_header402.3:                           ; preds = %polly.loop_exit410.3, %polly.loop_header396.3
  %indvars.iv847.3 = phi i64 [ %indvars.iv.next848.3, %polly.loop_exit410.3 ], [ 0, %polly.loop_header396.3 ]
  %polly.indvar405.3 = phi i64 [ %polly.indvar_next406.3, %polly.loop_exit410.3 ], [ 60, %polly.loop_header396.3 ]
  %smin849.3 = call i64 @llvm.smin.i64(i64 %indvars.iv847.3, i64 19)
  %240 = add nsw i64 %polly.indvar405.3, -60
  %241 = mul nuw nsw i64 %polly.indvar405.3, 480
  %242 = mul nuw nsw i64 %polly.indvar405.3, 640
  %scevgep429.3 = getelementptr i8, i8* %call, i64 %242
  %polly.access.add.Packed_MemRef_call2269418.3 = add nuw nsw i64 %240, %polly.access.mul.Packed_MemRef_call2269417.3
  %polly.access.Packed_MemRef_call2269419.3 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.3
  %_p_scalar_420.3 = load double, double* %polly.access.Packed_MemRef_call2269419.3, align 8
  %scevgep426.3 = getelementptr i8, i8* %scevgep425.3, i64 %241
  %scevgep426427.3 = bitcast i8* %scevgep426.3 to double*
  %_p_scalar_428.3 = load double, double* %scevgep426427.3, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.3

polly.loop_header408.3:                           ; preds = %polly.loop_header408.3, %polly.loop_header402.3
  %polly.indvar411.3 = phi i64 [ 0, %polly.loop_header402.3 ], [ %polly.indvar_next412.3, %polly.loop_header408.3 ]
  %243 = add nuw nsw i64 %polly.indvar411.3, 60
  %244 = mul nuw nsw i64 %243, 480
  %245 = add nuw nsw i64 %244, %239
  %scevgep414.3 = getelementptr i8, i8* %call1, i64 %245
  %scevgep414415.3 = bitcast i8* %scevgep414.3 to double*
  %_p_scalar_416.3 = load double, double* %scevgep414415.3, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.3 = fmul fast double %_p_scalar_420.3, %_p_scalar_416.3
  %polly.access.add.Packed_MemRef_call2269422.3 = add nuw nsw i64 %polly.indvar411.3, %polly.access.mul.Packed_MemRef_call2269417.3
  %polly.access.Packed_MemRef_call2269423.3 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.3
  %_p_scalar_424.3 = load double, double* %polly.access.Packed_MemRef_call2269423.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_428.3, %_p_scalar_424.3
  %246 = shl i64 %243, 3
  %scevgep430.3 = getelementptr i8, i8* %scevgep429.3, i64 %246
  %scevgep430431.3 = bitcast i8* %scevgep430.3 to double*
  %_p_scalar_432.3 = load double, double* %scevgep430431.3, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_432.3
  store double %p_add42.i79.3, double* %scevgep430431.3, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.3 = add nuw nsw i64 %polly.indvar411.3, 1
  %exitcond850.3.not = icmp eq i64 %polly.indvar411.3, %smin849.3
  br i1 %exitcond850.3.not, label %polly.loop_exit410.3, label %polly.loop_header408.3

polly.loop_exit410.3:                             ; preds = %polly.loop_header408.3
  %polly.indvar_next406.3 = add nuw nsw i64 %polly.indvar405.3, 1
  %indvars.iv.next848.3 = add nuw nsw i64 %indvars.iv847.3, 1
  %exitcond851.3.not = icmp eq i64 %indvars.iv.next848.3, 20
  br i1 %exitcond851.3.not, label %polly.loop_exit404.3, label %polly.loop_header402.3

polly.loop_exit404.3:                             ; preds = %polly.loop_exit410.3
  %polly.indvar_next400.3 = add nuw nsw i64 %polly.indvar399.3, 1
  %exitcond853.3.not = icmp eq i64 %polly.indvar_next400.3, %116
  br i1 %exitcond853.3.not, label %polly.loop_exit398.3, label %polly.loop_header396.3

polly.loop_exit398.3:                             ; preds = %polly.loop_exit404.3
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -16
  %exitcond855.not = icmp eq i64 %polly.indvar_next372, 4
  br i1 %exitcond855.not, label %polly.exiting267, label %polly.loop_header368

polly.loop_header549.1:                           ; preds = %polly.loop_exit573, %polly.loop_exit557.1
  %polly.indvar552.1 = phi i64 [ %polly.indvar_next553.1, %polly.loop_exit557.1 ], [ 0, %polly.loop_exit573 ]
  %247 = add nuw nsw i64 %polly.indvar552.1, %136
  %polly.access.mul.Packed_MemRef_call2438.1 = mul nuw nsw i64 %polly.indvar552.1, 80
  br label %polly.loop_header555.1

polly.loop_header555.1:                           ; preds = %polly.loop_header555.1, %polly.loop_header549.1
  %polly.indvar558.1 = phi i64 [ 0, %polly.loop_header549.1 ], [ %polly.indvar_next559.1, %polly.loop_header555.1 ]
  %248 = mul i64 %polly.indvar558.1, 60
  %polly.access.mul.call2562.1 = add i64 %248, 1200
  %polly.access.add.call2563.1 = add nuw nsw i64 %247, %polly.access.mul.call2562.1
  %polly.access.call2564.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2563.1
  %polly.access.call2564.load.1 = load double, double* %polly.access.call2564.1, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438.1 = add nuw nsw i64 %polly.indvar558.1, %polly.access.mul.Packed_MemRef_call2438.1
  %polly.access.Packed_MemRef_call2438.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438.1
  store double %polly.access.call2564.load.1, double* %polly.access.Packed_MemRef_call2438.1, align 8
  %polly.indvar_next559.1 = add nuw nsw i64 %polly.indvar558.1, 1
  %exitcond860.1.not = icmp eq i64 %polly.indvar_next559.1, 60
  br i1 %exitcond860.1.not, label %polly.loop_exit557.1, label %polly.loop_header555.1

polly.loop_exit557.1:                             ; preds = %polly.loop_header555.1
  %polly.indvar_next553.1 = add nuw nsw i64 %polly.indvar552.1, 1
  %exitcond864.1.not = icmp eq i64 %polly.indvar_next553.1, %135
  br i1 %exitcond864.1.not, label %polly.loop_header565.1, label %polly.loop_header549.1

polly.loop_header565.1:                           ; preds = %polly.loop_exit557.1, %polly.loop_exit573.1
  %polly.indvar568.1 = phi i64 [ %polly.indvar_next569.1, %polly.loop_exit573.1 ], [ 0, %polly.loop_exit557.1 ]
  %249 = add nuw nsw i64 %polly.indvar568.1, %136
  %250 = shl i64 %249, 3
  %polly.access.mul.Packed_MemRef_call2438586.1 = mul nuw nsw i64 %polly.indvar568.1, 80
  %scevgep594.1 = getelementptr i8, i8* %call1, i64 %250
  br label %polly.loop_header571.1

polly.loop_header571.1:                           ; preds = %polly.loop_exit579.1, %polly.loop_header565.1
  %indvars.iv865.1 = phi i64 [ %indvars.iv.next866.1, %polly.loop_exit579.1 ], [ 0, %polly.loop_header565.1 ]
  %polly.indvar574.1 = phi i64 [ %polly.indvar_next575.1, %polly.loop_exit579.1 ], [ 20, %polly.loop_header565.1 ]
  %smin867.1 = call i64 @llvm.smin.i64(i64 %indvars.iv865.1, i64 19)
  %251 = add nsw i64 %polly.indvar574.1, -20
  %252 = mul nuw nsw i64 %polly.indvar574.1, 480
  %253 = mul nuw nsw i64 %polly.indvar574.1, 640
  %scevgep598.1 = getelementptr i8, i8* %call, i64 %253
  %polly.access.add.Packed_MemRef_call2438587.1 = add nuw nsw i64 %251, %polly.access.mul.Packed_MemRef_call2438586.1
  %polly.access.Packed_MemRef_call2438588.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2438588.1, align 8
  %scevgep595.1 = getelementptr i8, i8* %scevgep594.1, i64 %252
  %scevgep595596.1 = bitcast i8* %scevgep595.1 to double*
  %_p_scalar_597.1 = load double, double* %scevgep595596.1, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.1

polly.loop_header577.1:                           ; preds = %polly.loop_header577.1, %polly.loop_header571.1
  %polly.indvar580.1 = phi i64 [ 0, %polly.loop_header571.1 ], [ %polly.indvar_next581.1, %polly.loop_header577.1 ]
  %254 = add nuw nsw i64 %polly.indvar580.1, 20
  %255 = mul nuw nsw i64 %254, 480
  %256 = add nuw nsw i64 %255, %250
  %scevgep583.1 = getelementptr i8, i8* %call1, i64 %256
  %scevgep583584.1 = bitcast i8* %scevgep583.1 to double*
  %_p_scalar_585.1 = load double, double* %scevgep583584.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_589.1, %_p_scalar_585.1
  %polly.access.add.Packed_MemRef_call2438591.1 = add nuw nsw i64 %polly.indvar580.1, %polly.access.mul.Packed_MemRef_call2438586.1
  %polly.access.Packed_MemRef_call2438592.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.1
  %_p_scalar_593.1 = load double, double* %polly.access.Packed_MemRef_call2438592.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_597.1, %_p_scalar_593.1
  %257 = shl i64 %254, 3
  %scevgep599.1 = getelementptr i8, i8* %scevgep598.1, i64 %257
  %scevgep599600.1 = bitcast i8* %scevgep599.1 to double*
  %_p_scalar_601.1 = load double, double* %scevgep599600.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_601.1
  store double %p_add42.i.1, double* %scevgep599600.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.1 = add nuw nsw i64 %polly.indvar580.1, 1
  %exitcond868.1.not = icmp eq i64 %polly.indvar580.1, %smin867.1
  br i1 %exitcond868.1.not, label %polly.loop_exit579.1, label %polly.loop_header577.1

polly.loop_exit579.1:                             ; preds = %polly.loop_header577.1
  %polly.indvar_next575.1 = add nuw nsw i64 %polly.indvar574.1, 1
  %indvars.iv.next866.1 = add nuw nsw i64 %indvars.iv865.1, 1
  %exitcond869.1.not = icmp eq i64 %indvars.iv.next866.1, 60
  br i1 %exitcond869.1.not, label %polly.loop_exit573.1, label %polly.loop_header571.1

polly.loop_exit573.1:                             ; preds = %polly.loop_exit579.1
  %polly.indvar_next569.1 = add nuw nsw i64 %polly.indvar568.1, 1
  %exitcond871.1.not = icmp eq i64 %polly.indvar_next569.1, %135
  br i1 %exitcond871.1.not, label %polly.loop_header549.2, label %polly.loop_header565.1

polly.loop_header549.2:                           ; preds = %polly.loop_exit573.1, %polly.loop_exit557.2
  %polly.indvar552.2 = phi i64 [ %polly.indvar_next553.2, %polly.loop_exit557.2 ], [ 0, %polly.loop_exit573.1 ]
  %258 = add nuw nsw i64 %polly.indvar552.2, %136
  %polly.access.mul.Packed_MemRef_call2438.2 = mul nuw nsw i64 %polly.indvar552.2, 80
  br label %polly.loop_header555.2

polly.loop_header555.2:                           ; preds = %polly.loop_header555.2, %polly.loop_header549.2
  %polly.indvar558.2 = phi i64 [ 0, %polly.loop_header549.2 ], [ %polly.indvar_next559.2, %polly.loop_header555.2 ]
  %259 = mul i64 %polly.indvar558.2, 60
  %polly.access.mul.call2562.2 = add i64 %259, 2400
  %polly.access.add.call2563.2 = add nuw nsw i64 %258, %polly.access.mul.call2562.2
  %polly.access.call2564.2 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2563.2
  %polly.access.call2564.load.2 = load double, double* %polly.access.call2564.2, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438.2 = add nuw nsw i64 %polly.indvar558.2, %polly.access.mul.Packed_MemRef_call2438.2
  %polly.access.Packed_MemRef_call2438.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438.2
  store double %polly.access.call2564.load.2, double* %polly.access.Packed_MemRef_call2438.2, align 8
  %polly.indvar_next559.2 = add nuw nsw i64 %polly.indvar558.2, 1
  %exitcond860.2.not = icmp eq i64 %polly.indvar_next559.2, 40
  br i1 %exitcond860.2.not, label %polly.loop_exit557.2, label %polly.loop_header555.2

polly.loop_exit557.2:                             ; preds = %polly.loop_header555.2
  %polly.indvar_next553.2 = add nuw nsw i64 %polly.indvar552.2, 1
  %exitcond864.2.not = icmp eq i64 %polly.indvar_next553.2, %135
  br i1 %exitcond864.2.not, label %polly.loop_header565.2, label %polly.loop_header549.2

polly.loop_header565.2:                           ; preds = %polly.loop_exit557.2, %polly.loop_exit573.2
  %polly.indvar568.2 = phi i64 [ %polly.indvar_next569.2, %polly.loop_exit573.2 ], [ 0, %polly.loop_exit557.2 ]
  %260 = add nuw nsw i64 %polly.indvar568.2, %136
  %261 = shl i64 %260, 3
  %polly.access.mul.Packed_MemRef_call2438586.2 = mul nuw nsw i64 %polly.indvar568.2, 80
  %scevgep594.2 = getelementptr i8, i8* %call1, i64 %261
  br label %polly.loop_header571.2

polly.loop_header571.2:                           ; preds = %polly.loop_exit579.2, %polly.loop_header565.2
  %indvars.iv865.2 = phi i64 [ %indvars.iv.next866.2, %polly.loop_exit579.2 ], [ 0, %polly.loop_header565.2 ]
  %polly.indvar574.2 = phi i64 [ %polly.indvar_next575.2, %polly.loop_exit579.2 ], [ 40, %polly.loop_header565.2 ]
  %smin867.2 = call i64 @llvm.smin.i64(i64 %indvars.iv865.2, i64 19)
  %262 = add nsw i64 %polly.indvar574.2, -40
  %263 = mul nuw nsw i64 %polly.indvar574.2, 480
  %264 = mul nuw nsw i64 %polly.indvar574.2, 640
  %scevgep598.2 = getelementptr i8, i8* %call, i64 %264
  %polly.access.add.Packed_MemRef_call2438587.2 = add nuw nsw i64 %262, %polly.access.mul.Packed_MemRef_call2438586.2
  %polly.access.Packed_MemRef_call2438588.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.2
  %_p_scalar_589.2 = load double, double* %polly.access.Packed_MemRef_call2438588.2, align 8
  %scevgep595.2 = getelementptr i8, i8* %scevgep594.2, i64 %263
  %scevgep595596.2 = bitcast i8* %scevgep595.2 to double*
  %_p_scalar_597.2 = load double, double* %scevgep595596.2, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.2

polly.loop_header577.2:                           ; preds = %polly.loop_header577.2, %polly.loop_header571.2
  %polly.indvar580.2 = phi i64 [ 0, %polly.loop_header571.2 ], [ %polly.indvar_next581.2, %polly.loop_header577.2 ]
  %265 = add nuw nsw i64 %polly.indvar580.2, 40
  %266 = mul nuw nsw i64 %265, 480
  %267 = add nuw nsw i64 %266, %261
  %scevgep583.2 = getelementptr i8, i8* %call1, i64 %267
  %scevgep583584.2 = bitcast i8* %scevgep583.2 to double*
  %_p_scalar_585.2 = load double, double* %scevgep583584.2, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.2 = fmul fast double %_p_scalar_589.2, %_p_scalar_585.2
  %polly.access.add.Packed_MemRef_call2438591.2 = add nuw nsw i64 %polly.indvar580.2, %polly.access.mul.Packed_MemRef_call2438586.2
  %polly.access.Packed_MemRef_call2438592.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.2
  %_p_scalar_593.2 = load double, double* %polly.access.Packed_MemRef_call2438592.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_597.2, %_p_scalar_593.2
  %268 = shl i64 %265, 3
  %scevgep599.2 = getelementptr i8, i8* %scevgep598.2, i64 %268
  %scevgep599600.2 = bitcast i8* %scevgep599.2 to double*
  %_p_scalar_601.2 = load double, double* %scevgep599600.2, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_601.2
  store double %p_add42.i.2, double* %scevgep599600.2, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.2 = add nuw nsw i64 %polly.indvar580.2, 1
  %exitcond868.2.not = icmp eq i64 %polly.indvar580.2, %smin867.2
  br i1 %exitcond868.2.not, label %polly.loop_exit579.2, label %polly.loop_header577.2

polly.loop_exit579.2:                             ; preds = %polly.loop_header577.2
  %polly.indvar_next575.2 = add nuw nsw i64 %polly.indvar574.2, 1
  %indvars.iv.next866.2 = add nuw nsw i64 %indvars.iv865.2, 1
  %exitcond869.2.not = icmp eq i64 %indvars.iv.next866.2, 40
  br i1 %exitcond869.2.not, label %polly.loop_exit573.2, label %polly.loop_header571.2

polly.loop_exit573.2:                             ; preds = %polly.loop_exit579.2
  %polly.indvar_next569.2 = add nuw nsw i64 %polly.indvar568.2, 1
  %exitcond871.2.not = icmp eq i64 %polly.indvar_next569.2, %135
  br i1 %exitcond871.2.not, label %polly.loop_header549.3, label %polly.loop_header565.2

polly.loop_header549.3:                           ; preds = %polly.loop_exit573.2, %polly.loop_exit557.3
  %polly.indvar552.3 = phi i64 [ %polly.indvar_next553.3, %polly.loop_exit557.3 ], [ 0, %polly.loop_exit573.2 ]
  %269 = add nuw nsw i64 %polly.indvar552.3, %136
  %polly.access.mul.Packed_MemRef_call2438.3 = mul nuw nsw i64 %polly.indvar552.3, 80
  br label %polly.loop_header555.3

polly.loop_header555.3:                           ; preds = %polly.loop_header555.3, %polly.loop_header549.3
  %polly.indvar558.3 = phi i64 [ 0, %polly.loop_header549.3 ], [ %polly.indvar_next559.3, %polly.loop_header555.3 ]
  %270 = mul i64 %polly.indvar558.3, 60
  %polly.access.mul.call2562.3 = add i64 %270, 3600
  %polly.access.add.call2563.3 = add nuw nsw i64 %269, %polly.access.mul.call2562.3
  %polly.access.call2564.3 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2563.3
  %polly.access.call2564.load.3 = load double, double* %polly.access.call2564.3, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438.3 = add nuw nsw i64 %polly.indvar558.3, %polly.access.mul.Packed_MemRef_call2438.3
  %polly.access.Packed_MemRef_call2438.3 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438.3
  store double %polly.access.call2564.load.3, double* %polly.access.Packed_MemRef_call2438.3, align 8
  %polly.indvar_next559.3 = add nuw nsw i64 %polly.indvar558.3, 1
  %exitcond860.3.not = icmp eq i64 %polly.indvar_next559.3, 20
  br i1 %exitcond860.3.not, label %polly.loop_exit557.3, label %polly.loop_header555.3

polly.loop_exit557.3:                             ; preds = %polly.loop_header555.3
  %polly.indvar_next553.3 = add nuw nsw i64 %polly.indvar552.3, 1
  %exitcond864.3.not = icmp eq i64 %polly.indvar_next553.3, %135
  br i1 %exitcond864.3.not, label %polly.loop_header565.3, label %polly.loop_header549.3

polly.loop_header565.3:                           ; preds = %polly.loop_exit557.3, %polly.loop_exit573.3
  %polly.indvar568.3 = phi i64 [ %polly.indvar_next569.3, %polly.loop_exit573.3 ], [ 0, %polly.loop_exit557.3 ]
  %271 = add nuw nsw i64 %polly.indvar568.3, %136
  %272 = shl i64 %271, 3
  %polly.access.mul.Packed_MemRef_call2438586.3 = mul nuw nsw i64 %polly.indvar568.3, 80
  %scevgep594.3 = getelementptr i8, i8* %call1, i64 %272
  br label %polly.loop_header571.3

polly.loop_header571.3:                           ; preds = %polly.loop_exit579.3, %polly.loop_header565.3
  %indvars.iv865.3 = phi i64 [ %indvars.iv.next866.3, %polly.loop_exit579.3 ], [ 0, %polly.loop_header565.3 ]
  %polly.indvar574.3 = phi i64 [ %polly.indvar_next575.3, %polly.loop_exit579.3 ], [ 60, %polly.loop_header565.3 ]
  %smin867.3 = call i64 @llvm.smin.i64(i64 %indvars.iv865.3, i64 19)
  %273 = add nsw i64 %polly.indvar574.3, -60
  %274 = mul nuw nsw i64 %polly.indvar574.3, 480
  %275 = mul nuw nsw i64 %polly.indvar574.3, 640
  %scevgep598.3 = getelementptr i8, i8* %call, i64 %275
  %polly.access.add.Packed_MemRef_call2438587.3 = add nuw nsw i64 %273, %polly.access.mul.Packed_MemRef_call2438586.3
  %polly.access.Packed_MemRef_call2438588.3 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.3
  %_p_scalar_589.3 = load double, double* %polly.access.Packed_MemRef_call2438588.3, align 8
  %scevgep595.3 = getelementptr i8, i8* %scevgep594.3, i64 %274
  %scevgep595596.3 = bitcast i8* %scevgep595.3 to double*
  %_p_scalar_597.3 = load double, double* %scevgep595596.3, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.3

polly.loop_header577.3:                           ; preds = %polly.loop_header577.3, %polly.loop_header571.3
  %polly.indvar580.3 = phi i64 [ 0, %polly.loop_header571.3 ], [ %polly.indvar_next581.3, %polly.loop_header577.3 ]
  %276 = add nuw nsw i64 %polly.indvar580.3, 60
  %277 = mul nuw nsw i64 %276, 480
  %278 = add nuw nsw i64 %277, %272
  %scevgep583.3 = getelementptr i8, i8* %call1, i64 %278
  %scevgep583584.3 = bitcast i8* %scevgep583.3 to double*
  %_p_scalar_585.3 = load double, double* %scevgep583584.3, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.3 = fmul fast double %_p_scalar_589.3, %_p_scalar_585.3
  %polly.access.add.Packed_MemRef_call2438591.3 = add nuw nsw i64 %polly.indvar580.3, %polly.access.mul.Packed_MemRef_call2438586.3
  %polly.access.Packed_MemRef_call2438592.3 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.3
  %_p_scalar_593.3 = load double, double* %polly.access.Packed_MemRef_call2438592.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_597.3, %_p_scalar_593.3
  %279 = shl i64 %276, 3
  %scevgep599.3 = getelementptr i8, i8* %scevgep598.3, i64 %279
  %scevgep599600.3 = bitcast i8* %scevgep599.3 to double*
  %_p_scalar_601.3 = load double, double* %scevgep599600.3, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_601.3
  store double %p_add42.i.3, double* %scevgep599600.3, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.3 = add nuw nsw i64 %polly.indvar580.3, 1
  %exitcond868.3.not = icmp eq i64 %polly.indvar580.3, %smin867.3
  br i1 %exitcond868.3.not, label %polly.loop_exit579.3, label %polly.loop_header577.3

polly.loop_exit579.3:                             ; preds = %polly.loop_header577.3
  %polly.indvar_next575.3 = add nuw nsw i64 %polly.indvar574.3, 1
  %indvars.iv.next866.3 = add nuw nsw i64 %indvars.iv865.3, 1
  %exitcond869.3.not = icmp eq i64 %indvars.iv.next866.3, 20
  br i1 %exitcond869.3.not, label %polly.loop_exit573.3, label %polly.loop_header571.3

polly.loop_exit573.3:                             ; preds = %polly.loop_exit579.3
  %polly.indvar_next569.3 = add nuw nsw i64 %polly.indvar568.3, 1
  %exitcond871.3.not = icmp eq i64 %polly.indvar_next569.3, %135
  br i1 %exitcond871.3.not, label %polly.loop_exit567.3, label %polly.loop_header565.3

polly.loop_exit567.3:                             ; preds = %polly.loop_exit573.3
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %indvars.iv.next862 = add nsw i64 %indvars.iv861, -16
  %exitcond873.not = icmp eq i64 %polly.indvar_next541, 4
  br i1 %exitcond873.not, label %polly.exiting436, label %polly.loop_header537

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %280 = mul nuw nsw i64 %polly.indvar796.1, 480
  %281 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1189 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1190 = shufflevector <4 x i32> %broadcast.splatinsert1189, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %polly.loop_header793.1
  %index1183 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1184, %vector.body1181 ]
  %vec.ind1187 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1188, %vector.body1181 ]
  %282 = add nuw nsw <4 x i64> %vec.ind1187, <i64 32, i64 32, i64 32, i64 32>
  %283 = trunc <4 x i64> %282 to <4 x i32>
  %284 = mul <4 x i32> %broadcast.splat1190, %283
  %285 = add <4 x i32> %284, <i32 1, i32 1, i32 1, i32 1>
  %286 = urem <4 x i32> %285, <i32 80, i32 80, i32 80, i32 80>
  %287 = sitofp <4 x i32> %286 to <4 x double>
  %288 = fmul fast <4 x double> %287, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %289 = extractelement <4 x i64> %282, i32 0
  %290 = shl i64 %289, 3
  %291 = add i64 %290, %280
  %292 = getelementptr i8, i8* %call1, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %288, <4 x double>* %293, align 8, !alias.scope !102, !noalias !107
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1188 = add <4 x i64> %vec.ind1187, <i64 4, i64 4, i64 4, i64 4>
  %294 = icmp eq i64 %index.next1184, 28
  br i1 %294, label %polly.loop_exit801.1, label %vector.body1181, !llvm.loop !109

polly.loop_exit801.1:                             ; preds = %vector.body1181
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond880.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond880.1.not, label %polly.loop_header793.1900, label %polly.loop_header793.1

polly.loop_header793.1900:                        ; preds = %polly.loop_exit801.1, %polly.loop_exit801.1911
  %polly.indvar796.1899 = phi i64 [ %polly.indvar_next797.1909, %polly.loop_exit801.1911 ], [ 0, %polly.loop_exit801.1 ]
  %295 = add nuw nsw i64 %polly.indvar796.1899, 32
  %296 = mul nuw nsw i64 %295, 480
  %297 = trunc i64 %295 to i32
  %broadcast.splatinsert1203 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1204 = shufflevector <4 x i32> %broadcast.splatinsert1203, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %polly.loop_header793.1900
  %index1195 = phi i64 [ 0, %polly.loop_header793.1900 ], [ %index.next1196, %vector.body1193 ]
  %vec.ind1201 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.1900 ], [ %vec.ind.next1202, %vector.body1193 ]
  %298 = mul <4 x i32> %vec.ind1201, %broadcast.splat1204
  %299 = add <4 x i32> %298, <i32 1, i32 1, i32 1, i32 1>
  %300 = urem <4 x i32> %299, <i32 80, i32 80, i32 80, i32 80>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %303 = shl i64 %index1195, 3
  %304 = add i64 %303, %296
  %305 = getelementptr i8, i8* %call1, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %302, <4 x double>* %306, align 8, !alias.scope !102, !noalias !107
  %index.next1196 = add i64 %index1195, 4
  %vec.ind.next1202 = add <4 x i32> %vec.ind1201, <i32 4, i32 4, i32 4, i32 4>
  %307 = icmp eq i64 %index.next1196, 32
  br i1 %307, label %polly.loop_exit801.1911, label %vector.body1193, !llvm.loop !110

polly.loop_exit801.1911:                          ; preds = %vector.body1193
  %polly.indvar_next797.1909 = add nuw nsw i64 %polly.indvar796.1899, 1
  %exitcond880.1910.not = icmp eq i64 %polly.indvar_next797.1909, 32
  br i1 %exitcond880.1910.not, label %polly.loop_header793.1.1, label %polly.loop_header793.1900

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.1911, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.1911 ]
  %308 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1215 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1216 = shufflevector <4 x i32> %broadcast.splatinsert1215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %polly.loop_header793.1.1
  %index1209 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1210, %vector.body1207 ]
  %vec.ind1213 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1214, %vector.body1207 ]
  %311 = add nuw nsw <4 x i64> %vec.ind1213, <i64 32, i64 32, i64 32, i64 32>
  %312 = trunc <4 x i64> %311 to <4 x i32>
  %313 = mul <4 x i32> %broadcast.splat1216, %312
  %314 = add <4 x i32> %313, <i32 1, i32 1, i32 1, i32 1>
  %315 = urem <4 x i32> %314, <i32 80, i32 80, i32 80, i32 80>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %318 = extractelement <4 x i64> %311, i32 0
  %319 = shl i64 %318, 3
  %320 = add i64 %319, %309
  %321 = getelementptr i8, i8* %call1, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %317, <4 x double>* %322, align 8, !alias.scope !102, !noalias !107
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1214 = add <4 x i64> %vec.ind1213, <i64 4, i64 4, i64 4, i64 4>
  %323 = icmp eq i64 %index.next1210, 28
  br i1 %323, label %polly.loop_exit801.1.1, label %vector.body1207, !llvm.loop !111

polly.loop_exit801.1.1:                           ; preds = %vector.body1207
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond880.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond880.1.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1.1 ]
  %324 = add nuw nsw i64 %polly.indvar796.2, 64
  %325 = mul nuw nsw i64 %324, 480
  %326 = trunc i64 %324 to i32
  %broadcast.splatinsert1229 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1230 = shufflevector <4 x i32> %broadcast.splatinsert1229, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %polly.loop_header793.2
  %index1221 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1222, %vector.body1219 ]
  %vec.ind1227 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.2 ], [ %vec.ind.next1228, %vector.body1219 ]
  %327 = mul <4 x i32> %vec.ind1227, %broadcast.splat1230
  %328 = add <4 x i32> %327, <i32 1, i32 1, i32 1, i32 1>
  %329 = urem <4 x i32> %328, <i32 80, i32 80, i32 80, i32 80>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %332 = shl i64 %index1221, 3
  %333 = add i64 %332, %325
  %334 = getelementptr i8, i8* %call1, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %331, <4 x double>* %335, align 8, !alias.scope !102, !noalias !107
  %index.next1222 = add i64 %index1221, 4
  %vec.ind.next1228 = add <4 x i32> %vec.ind1227, <i32 4, i32 4, i32 4, i32 4>
  %336 = icmp eq i64 %index.next1222, 32
  br i1 %336, label %polly.loop_exit801.2, label %vector.body1219, !llvm.loop !112

polly.loop_exit801.2:                             ; preds = %vector.body1219
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond880.2.not = icmp eq i64 %polly.indvar_next797.2, 16
  br i1 %exitcond880.2.not, label %polly.loop_header793.1.2, label %polly.loop_header793.2

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.2, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.2 ]
  %337 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1241 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1242 = shufflevector <4 x i32> %broadcast.splatinsert1241, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %polly.loop_header793.1.2
  %index1235 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1236, %vector.body1233 ]
  %vec.ind1239 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1240, %vector.body1233 ]
  %340 = add nuw nsw <4 x i64> %vec.ind1239, <i64 32, i64 32, i64 32, i64 32>
  %341 = trunc <4 x i64> %340 to <4 x i32>
  %342 = mul <4 x i32> %broadcast.splat1242, %341
  %343 = add <4 x i32> %342, <i32 1, i32 1, i32 1, i32 1>
  %344 = urem <4 x i32> %343, <i32 80, i32 80, i32 80, i32 80>
  %345 = sitofp <4 x i32> %344 to <4 x double>
  %346 = fmul fast <4 x double> %345, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %347 = extractelement <4 x i64> %340, i32 0
  %348 = shl i64 %347, 3
  %349 = add i64 %348, %338
  %350 = getelementptr i8, i8* %call1, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %346, <4 x double>* %351, align 8, !alias.scope !102, !noalias !107
  %index.next1236 = add i64 %index1235, 4
  %vec.ind.next1240 = add <4 x i64> %vec.ind1239, <i64 4, i64 4, i64 4, i64 4>
  %352 = icmp eq i64 %index.next1236, 28
  br i1 %352, label %polly.loop_exit801.1.2, label %vector.body1233, !llvm.loop !113

polly.loop_exit801.1.2:                           ; preds = %vector.body1233
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond880.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond880.1.2.not, label %init_array.exit, label %polly.loop_header793.1.2

polly.loop_header767.1:                           ; preds = %polly.loop_exit775, %polly.loop_exit775.1
  %polly.indvar770.1 = phi i64 [ %polly.indvar_next771.1, %polly.loop_exit775.1 ], [ 0, %polly.loop_exit775 ]
  %353 = mul nuw nsw i64 %polly.indvar770.1, 480
  %354 = trunc i64 %polly.indvar770.1 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %polly.loop_header767.1
  %index1105 = phi i64 [ 0, %polly.loop_header767.1 ], [ %index.next1106, %vector.body1103 ]
  %vec.ind1109 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1 ], [ %vec.ind.next1110, %vector.body1103 ]
  %355 = add nuw nsw <4 x i64> %vec.ind1109, <i64 32, i64 32, i64 32, i64 32>
  %356 = trunc <4 x i64> %355 to <4 x i32>
  %357 = mul <4 x i32> %broadcast.splat1112, %356
  %358 = add <4 x i32> %357, <i32 2, i32 2, i32 2, i32 2>
  %359 = urem <4 x i32> %358, <i32 60, i32 60, i32 60, i32 60>
  %360 = sitofp <4 x i32> %359 to <4 x double>
  %361 = fmul fast <4 x double> %360, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %362 = extractelement <4 x i64> %355, i32 0
  %363 = shl i64 %362, 3
  %364 = add i64 %363, %353
  %365 = getelementptr i8, i8* %call2, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %361, <4 x double>* %366, align 8, !alias.scope !103, !noalias !105
  %index.next1106 = add i64 %index1105, 4
  %vec.ind.next1110 = add <4 x i64> %vec.ind1109, <i64 4, i64 4, i64 4, i64 4>
  %367 = icmp eq i64 %index.next1106, 28
  br i1 %367, label %polly.loop_exit775.1, label %vector.body1103, !llvm.loop !114

polly.loop_exit775.1:                             ; preds = %vector.body1103
  %polly.indvar_next771.1 = add nuw nsw i64 %polly.indvar770.1, 1
  %exitcond886.1.not = icmp eq i64 %polly.indvar_next771.1, 32
  br i1 %exitcond886.1.not, label %polly.loop_header767.1914, label %polly.loop_header767.1

polly.loop_header767.1914:                        ; preds = %polly.loop_exit775.1, %polly.loop_exit775.1925
  %polly.indvar770.1913 = phi i64 [ %polly.indvar_next771.1923, %polly.loop_exit775.1925 ], [ 0, %polly.loop_exit775.1 ]
  %368 = add nuw nsw i64 %polly.indvar770.1913, 32
  %369 = mul nuw nsw i64 %368, 480
  %370 = trunc i64 %368 to i32
  %broadcast.splatinsert1125 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1126 = shufflevector <4 x i32> %broadcast.splatinsert1125, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header767.1914
  %index1117 = phi i64 [ 0, %polly.loop_header767.1914 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1123 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.1914 ], [ %vec.ind.next1124, %vector.body1115 ]
  %371 = mul <4 x i32> %vec.ind1123, %broadcast.splat1126
  %372 = add <4 x i32> %371, <i32 2, i32 2, i32 2, i32 2>
  %373 = urem <4 x i32> %372, <i32 60, i32 60, i32 60, i32 60>
  %374 = sitofp <4 x i32> %373 to <4 x double>
  %375 = fmul fast <4 x double> %374, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %376 = shl i64 %index1117, 3
  %377 = add i64 %376, %369
  %378 = getelementptr i8, i8* %call2, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %375, <4 x double>* %379, align 8, !alias.scope !103, !noalias !105
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1124 = add <4 x i32> %vec.ind1123, <i32 4, i32 4, i32 4, i32 4>
  %380 = icmp eq i64 %index.next1118, 32
  br i1 %380, label %polly.loop_exit775.1925, label %vector.body1115, !llvm.loop !115

polly.loop_exit775.1925:                          ; preds = %vector.body1115
  %polly.indvar_next771.1923 = add nuw nsw i64 %polly.indvar770.1913, 1
  %exitcond886.1924.not = icmp eq i64 %polly.indvar_next771.1923, 32
  br i1 %exitcond886.1924.not, label %polly.loop_header767.1.1, label %polly.loop_header767.1914

polly.loop_header767.1.1:                         ; preds = %polly.loop_exit775.1925, %polly.loop_exit775.1.1
  %polly.indvar770.1.1 = phi i64 [ %polly.indvar_next771.1.1, %polly.loop_exit775.1.1 ], [ 0, %polly.loop_exit775.1925 ]
  %381 = add nuw nsw i64 %polly.indvar770.1.1, 32
  %382 = mul nuw nsw i64 %381, 480
  %383 = trunc i64 %381 to i32
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %383, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %polly.loop_header767.1.1
  %index1131 = phi i64 [ 0, %polly.loop_header767.1.1 ], [ %index.next1132, %vector.body1129 ]
  %vec.ind1135 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.1 ], [ %vec.ind.next1136, %vector.body1129 ]
  %384 = add nuw nsw <4 x i64> %vec.ind1135, <i64 32, i64 32, i64 32, i64 32>
  %385 = trunc <4 x i64> %384 to <4 x i32>
  %386 = mul <4 x i32> %broadcast.splat1138, %385
  %387 = add <4 x i32> %386, <i32 2, i32 2, i32 2, i32 2>
  %388 = urem <4 x i32> %387, <i32 60, i32 60, i32 60, i32 60>
  %389 = sitofp <4 x i32> %388 to <4 x double>
  %390 = fmul fast <4 x double> %389, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %391 = extractelement <4 x i64> %384, i32 0
  %392 = shl i64 %391, 3
  %393 = add i64 %392, %382
  %394 = getelementptr i8, i8* %call2, i64 %393
  %395 = bitcast i8* %394 to <4 x double>*
  store <4 x double> %390, <4 x double>* %395, align 8, !alias.scope !103, !noalias !105
  %index.next1132 = add i64 %index1131, 4
  %vec.ind.next1136 = add <4 x i64> %vec.ind1135, <i64 4, i64 4, i64 4, i64 4>
  %396 = icmp eq i64 %index.next1132, 28
  br i1 %396, label %polly.loop_exit775.1.1, label %vector.body1129, !llvm.loop !116

polly.loop_exit775.1.1:                           ; preds = %vector.body1129
  %polly.indvar_next771.1.1 = add nuw nsw i64 %polly.indvar770.1.1, 1
  %exitcond886.1.1.not = icmp eq i64 %polly.indvar_next771.1.1, 32
  br i1 %exitcond886.1.1.not, label %polly.loop_header767.2, label %polly.loop_header767.1.1

polly.loop_header767.2:                           ; preds = %polly.loop_exit775.1.1, %polly.loop_exit775.2
  %polly.indvar770.2 = phi i64 [ %polly.indvar_next771.2, %polly.loop_exit775.2 ], [ 0, %polly.loop_exit775.1.1 ]
  %397 = add nuw nsw i64 %polly.indvar770.2, 64
  %398 = mul nuw nsw i64 %397, 480
  %399 = trunc i64 %397 to i32
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %polly.loop_header767.2
  %index1143 = phi i64 [ 0, %polly.loop_header767.2 ], [ %index.next1144, %vector.body1141 ]
  %vec.ind1149 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.2 ], [ %vec.ind.next1150, %vector.body1141 ]
  %400 = mul <4 x i32> %vec.ind1149, %broadcast.splat1152
  %401 = add <4 x i32> %400, <i32 2, i32 2, i32 2, i32 2>
  %402 = urem <4 x i32> %401, <i32 60, i32 60, i32 60, i32 60>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = shl i64 %index1143, 3
  %406 = add i64 %405, %398
  %407 = getelementptr i8, i8* %call2, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %404, <4 x double>* %408, align 8, !alias.scope !103, !noalias !105
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1150 = add <4 x i32> %vec.ind1149, <i32 4, i32 4, i32 4, i32 4>
  %409 = icmp eq i64 %index.next1144, 32
  br i1 %409, label %polly.loop_exit775.2, label %vector.body1141, !llvm.loop !117

polly.loop_exit775.2:                             ; preds = %vector.body1141
  %polly.indvar_next771.2 = add nuw nsw i64 %polly.indvar770.2, 1
  %exitcond886.2.not = icmp eq i64 %polly.indvar_next771.2, 16
  br i1 %exitcond886.2.not, label %polly.loop_header767.1.2, label %polly.loop_header767.2

polly.loop_header767.1.2:                         ; preds = %polly.loop_exit775.2, %polly.loop_exit775.1.2
  %polly.indvar770.1.2 = phi i64 [ %polly.indvar_next771.1.2, %polly.loop_exit775.1.2 ], [ 0, %polly.loop_exit775.2 ]
  %410 = add nuw nsw i64 %polly.indvar770.1.2, 64
  %411 = mul nuw nsw i64 %410, 480
  %412 = trunc i64 %410 to i32
  %broadcast.splatinsert1163 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1164 = shufflevector <4 x i32> %broadcast.splatinsert1163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %polly.loop_header767.1.2
  %index1157 = phi i64 [ 0, %polly.loop_header767.1.2 ], [ %index.next1158, %vector.body1155 ]
  %vec.ind1161 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.2 ], [ %vec.ind.next1162, %vector.body1155 ]
  %413 = add nuw nsw <4 x i64> %vec.ind1161, <i64 32, i64 32, i64 32, i64 32>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1164, %414
  %416 = add <4 x i32> %415, <i32 2, i32 2, i32 2, i32 2>
  %417 = urem <4 x i32> %416, <i32 60, i32 60, i32 60, i32 60>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add i64 %421, %411
  %423 = getelementptr i8, i8* %call2, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !103, !noalias !105
  %index.next1158 = add i64 %index1157, 4
  %vec.ind.next1162 = add <4 x i64> %vec.ind1161, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next1158, 28
  br i1 %425, label %polly.loop_exit775.1.2, label %vector.body1155, !llvm.loop !118

polly.loop_exit775.1.2:                           ; preds = %vector.body1155
  %polly.indvar_next771.1.2 = add nuw nsw i64 %polly.indvar770.1.2, 1
  %exitcond886.1.2.not = icmp eq i64 %polly.indvar_next771.1.2, 16
  br i1 %exitcond886.1.2.not, label %polly.loop_header793, label %polly.loop_header767.1.2

polly.loop_header740.1:                           ; preds = %polly.loop_exit748, %polly.loop_exit748.1
  %polly.indvar743.1 = phi i64 [ %polly.indvar_next744.1, %polly.loop_exit748.1 ], [ 0, %polly.loop_exit748 ]
  %426 = mul nuw nsw i64 %polly.indvar743.1, 640
  %427 = trunc i64 %polly.indvar743.1 to i32
  %broadcast.splatinsert997 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat998 = shufflevector <4 x i32> %broadcast.splatinsert997, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %polly.loop_header740.1
  %index991 = phi i64 [ 0, %polly.loop_header740.1 ], [ %index.next992, %vector.body989 ]
  %vec.ind995 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1 ], [ %vec.ind.next996, %vector.body989 ]
  %428 = add nuw nsw <4 x i64> %vec.ind995, <i64 32, i64 32, i64 32, i64 32>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat998, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !99, !noalias !101
  %index.next992 = add i64 %index991, 4
  %vec.ind.next996 = add <4 x i64> %vec.ind995, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next992, 32
  br i1 %440, label %polly.loop_exit748.1, label %vector.body989, !llvm.loop !119

polly.loop_exit748.1:                             ; preds = %vector.body989
  %polly.indvar_next744.1 = add nuw nsw i64 %polly.indvar743.1, 1
  %exitcond895.1.not = icmp eq i64 %polly.indvar_next744.1, 32
  br i1 %exitcond895.1.not, label %polly.loop_header740.2, label %polly.loop_header740.1

polly.loop_header740.2:                           ; preds = %polly.loop_exit748.1, %polly.loop_exit748.2
  %polly.indvar743.2 = phi i64 [ %polly.indvar_next744.2, %polly.loop_exit748.2 ], [ 0, %polly.loop_exit748.1 ]
  %441 = mul nuw nsw i64 %polly.indvar743.2, 640
  %442 = trunc i64 %polly.indvar743.2 to i32
  %broadcast.splatinsert1009 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1010 = shufflevector <4 x i32> %broadcast.splatinsert1009, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %polly.loop_header740.2
  %index1003 = phi i64 [ 0, %polly.loop_header740.2 ], [ %index.next1004, %vector.body1001 ]
  %vec.ind1007 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2 ], [ %vec.ind.next1008, %vector.body1001 ]
  %443 = add nuw nsw <4 x i64> %vec.ind1007, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat1010, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !99, !noalias !101
  %index.next1004 = add i64 %index1003, 4
  %vec.ind.next1008 = add <4 x i64> %vec.ind1007, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next1004, 16
  br i1 %455, label %polly.loop_exit748.2, label %vector.body1001, !llvm.loop !120

polly.loop_exit748.2:                             ; preds = %vector.body1001
  %polly.indvar_next744.2 = add nuw nsw i64 %polly.indvar743.2, 1
  %exitcond895.2.not = icmp eq i64 %polly.indvar_next744.2, 32
  br i1 %exitcond895.2.not, label %polly.loop_header740.1928, label %polly.loop_header740.2

polly.loop_header740.1928:                        ; preds = %polly.loop_exit748.2, %polly.loop_exit748.1939
  %polly.indvar743.1927 = phi i64 [ %polly.indvar_next744.1937, %polly.loop_exit748.1939 ], [ 0, %polly.loop_exit748.2 ]
  %456 = add nuw nsw i64 %polly.indvar743.1927, 32
  %457 = mul nuw nsw i64 %456, 640
  %458 = trunc i64 %456 to i32
  %broadcast.splatinsert1023 = insertelement <4 x i32> poison, i32 %458, i32 0
  %broadcast.splat1024 = shufflevector <4 x i32> %broadcast.splatinsert1023, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %polly.loop_header740.1928
  %index1015 = phi i64 [ 0, %polly.loop_header740.1928 ], [ %index.next1016, %vector.body1013 ]
  %vec.ind1021 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.1928 ], [ %vec.ind.next1022, %vector.body1013 ]
  %459 = mul <4 x i32> %vec.ind1021, %broadcast.splat1024
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = shl i64 %index1015, 3
  %465 = add nuw nsw i64 %464, %457
  %466 = getelementptr i8, i8* %call, i64 %465
  %467 = bitcast i8* %466 to <4 x double>*
  store <4 x double> %463, <4 x double>* %467, align 8, !alias.scope !99, !noalias !101
  %index.next1016 = add i64 %index1015, 4
  %vec.ind.next1022 = add <4 x i32> %vec.ind1021, <i32 4, i32 4, i32 4, i32 4>
  %468 = icmp eq i64 %index.next1016, 32
  br i1 %468, label %polly.loop_exit748.1939, label %vector.body1013, !llvm.loop !121

polly.loop_exit748.1939:                          ; preds = %vector.body1013
  %polly.indvar_next744.1937 = add nuw nsw i64 %polly.indvar743.1927, 1
  %exitcond895.1938.not = icmp eq i64 %polly.indvar_next744.1937, 32
  br i1 %exitcond895.1938.not, label %polly.loop_header740.1.1, label %polly.loop_header740.1928

polly.loop_header740.1.1:                         ; preds = %polly.loop_exit748.1939, %polly.loop_exit748.1.1
  %polly.indvar743.1.1 = phi i64 [ %polly.indvar_next744.1.1, %polly.loop_exit748.1.1 ], [ 0, %polly.loop_exit748.1939 ]
  %469 = add nuw nsw i64 %polly.indvar743.1.1, 32
  %470 = mul nuw nsw i64 %469, 640
  %471 = trunc i64 %469 to i32
  %broadcast.splatinsert1035 = insertelement <4 x i32> poison, i32 %471, i32 0
  %broadcast.splat1036 = shufflevector <4 x i32> %broadcast.splatinsert1035, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %polly.loop_header740.1.1
  %index1029 = phi i64 [ 0, %polly.loop_header740.1.1 ], [ %index.next1030, %vector.body1027 ]
  %vec.ind1033 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.1 ], [ %vec.ind.next1034, %vector.body1027 ]
  %472 = add nuw nsw <4 x i64> %vec.ind1033, <i64 32, i64 32, i64 32, i64 32>
  %473 = trunc <4 x i64> %472 to <4 x i32>
  %474 = mul <4 x i32> %broadcast.splat1036, %473
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = extractelement <4 x i64> %472, i32 0
  %480 = shl i64 %479, 3
  %481 = add nuw nsw i64 %480, %470
  %482 = getelementptr i8, i8* %call, i64 %481
  %483 = bitcast i8* %482 to <4 x double>*
  store <4 x double> %478, <4 x double>* %483, align 8, !alias.scope !99, !noalias !101
  %index.next1030 = add i64 %index1029, 4
  %vec.ind.next1034 = add <4 x i64> %vec.ind1033, <i64 4, i64 4, i64 4, i64 4>
  %484 = icmp eq i64 %index.next1030, 32
  br i1 %484, label %polly.loop_exit748.1.1, label %vector.body1027, !llvm.loop !122

polly.loop_exit748.1.1:                           ; preds = %vector.body1027
  %polly.indvar_next744.1.1 = add nuw nsw i64 %polly.indvar743.1.1, 1
  %exitcond895.1.1.not = icmp eq i64 %polly.indvar_next744.1.1, 32
  br i1 %exitcond895.1.1.not, label %polly.loop_header740.2.1, label %polly.loop_header740.1.1

polly.loop_header740.2.1:                         ; preds = %polly.loop_exit748.1.1, %polly.loop_exit748.2.1
  %polly.indvar743.2.1 = phi i64 [ %polly.indvar_next744.2.1, %polly.loop_exit748.2.1 ], [ 0, %polly.loop_exit748.1.1 ]
  %485 = add nuw nsw i64 %polly.indvar743.2.1, 32
  %486 = mul nuw nsw i64 %485, 640
  %487 = trunc i64 %485 to i32
  %broadcast.splatinsert1047 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1048 = shufflevector <4 x i32> %broadcast.splatinsert1047, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1039

vector.body1039:                                  ; preds = %vector.body1039, %polly.loop_header740.2.1
  %index1041 = phi i64 [ 0, %polly.loop_header740.2.1 ], [ %index.next1042, %vector.body1039 ]
  %vec.ind1045 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.1 ], [ %vec.ind.next1046, %vector.body1039 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1045, <i64 64, i64 64, i64 64, i64 64>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1048, %489
  %491 = add <4 x i32> %490, <i32 3, i32 3, i32 3, i32 3>
  %492 = urem <4 x i32> %491, <i32 80, i32 80, i32 80, i32 80>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = extractelement <4 x i64> %488, i32 0
  %496 = shl i64 %495, 3
  %497 = add nuw nsw i64 %496, %486
  %498 = getelementptr i8, i8* %call, i64 %497
  %499 = bitcast i8* %498 to <4 x double>*
  store <4 x double> %494, <4 x double>* %499, align 8, !alias.scope !99, !noalias !101
  %index.next1042 = add i64 %index1041, 4
  %vec.ind.next1046 = add <4 x i64> %vec.ind1045, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1042, 16
  br i1 %500, label %polly.loop_exit748.2.1, label %vector.body1039, !llvm.loop !123

polly.loop_exit748.2.1:                           ; preds = %vector.body1039
  %polly.indvar_next744.2.1 = add nuw nsw i64 %polly.indvar743.2.1, 1
  %exitcond895.2.1.not = icmp eq i64 %polly.indvar_next744.2.1, 32
  br i1 %exitcond895.2.1.not, label %polly.loop_header740.2942, label %polly.loop_header740.2.1

polly.loop_header740.2942:                        ; preds = %polly.loop_exit748.2.1, %polly.loop_exit748.2953
  %polly.indvar743.2941 = phi i64 [ %polly.indvar_next744.2951, %polly.loop_exit748.2953 ], [ 0, %polly.loop_exit748.2.1 ]
  %501 = add nuw nsw i64 %polly.indvar743.2941, 64
  %502 = mul nuw nsw i64 %501, 640
  %503 = trunc i64 %501 to i32
  %broadcast.splatinsert1061 = insertelement <4 x i32> poison, i32 %503, i32 0
  %broadcast.splat1062 = shufflevector <4 x i32> %broadcast.splatinsert1061, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %polly.loop_header740.2942
  %index1053 = phi i64 [ 0, %polly.loop_header740.2942 ], [ %index.next1054, %vector.body1051 ]
  %vec.ind1059 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.2942 ], [ %vec.ind.next1060, %vector.body1051 ]
  %504 = mul <4 x i32> %vec.ind1059, %broadcast.splat1062
  %505 = add <4 x i32> %504, <i32 3, i32 3, i32 3, i32 3>
  %506 = urem <4 x i32> %505, <i32 80, i32 80, i32 80, i32 80>
  %507 = sitofp <4 x i32> %506 to <4 x double>
  %508 = fmul fast <4 x double> %507, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %509 = shl i64 %index1053, 3
  %510 = add nuw nsw i64 %509, %502
  %511 = getelementptr i8, i8* %call, i64 %510
  %512 = bitcast i8* %511 to <4 x double>*
  store <4 x double> %508, <4 x double>* %512, align 8, !alias.scope !99, !noalias !101
  %index.next1054 = add i64 %index1053, 4
  %vec.ind.next1060 = add <4 x i32> %vec.ind1059, <i32 4, i32 4, i32 4, i32 4>
  %513 = icmp eq i64 %index.next1054, 32
  br i1 %513, label %polly.loop_exit748.2953, label %vector.body1051, !llvm.loop !124

polly.loop_exit748.2953:                          ; preds = %vector.body1051
  %polly.indvar_next744.2951 = add nuw nsw i64 %polly.indvar743.2941, 1
  %exitcond895.2952.not = icmp eq i64 %polly.indvar_next744.2951, 16
  br i1 %exitcond895.2952.not, label %polly.loop_header740.1.2, label %polly.loop_header740.2942

polly.loop_header740.1.2:                         ; preds = %polly.loop_exit748.2953, %polly.loop_exit748.1.2
  %polly.indvar743.1.2 = phi i64 [ %polly.indvar_next744.1.2, %polly.loop_exit748.1.2 ], [ 0, %polly.loop_exit748.2953 ]
  %514 = add nuw nsw i64 %polly.indvar743.1.2, 64
  %515 = mul nuw nsw i64 %514, 640
  %516 = trunc i64 %514 to i32
  %broadcast.splatinsert1073 = insertelement <4 x i32> poison, i32 %516, i32 0
  %broadcast.splat1074 = shufflevector <4 x i32> %broadcast.splatinsert1073, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %polly.loop_header740.1.2
  %index1067 = phi i64 [ 0, %polly.loop_header740.1.2 ], [ %index.next1068, %vector.body1065 ]
  %vec.ind1071 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.2 ], [ %vec.ind.next1072, %vector.body1065 ]
  %517 = add nuw nsw <4 x i64> %vec.ind1071, <i64 32, i64 32, i64 32, i64 32>
  %518 = trunc <4 x i64> %517 to <4 x i32>
  %519 = mul <4 x i32> %broadcast.splat1074, %518
  %520 = add <4 x i32> %519, <i32 3, i32 3, i32 3, i32 3>
  %521 = urem <4 x i32> %520, <i32 80, i32 80, i32 80, i32 80>
  %522 = sitofp <4 x i32> %521 to <4 x double>
  %523 = fmul fast <4 x double> %522, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %524 = extractelement <4 x i64> %517, i32 0
  %525 = shl i64 %524, 3
  %526 = add nuw nsw i64 %525, %515
  %527 = getelementptr i8, i8* %call, i64 %526
  %528 = bitcast i8* %527 to <4 x double>*
  store <4 x double> %523, <4 x double>* %528, align 8, !alias.scope !99, !noalias !101
  %index.next1068 = add i64 %index1067, 4
  %vec.ind.next1072 = add <4 x i64> %vec.ind1071, <i64 4, i64 4, i64 4, i64 4>
  %529 = icmp eq i64 %index.next1068, 32
  br i1 %529, label %polly.loop_exit748.1.2, label %vector.body1065, !llvm.loop !125

polly.loop_exit748.1.2:                           ; preds = %vector.body1065
  %polly.indvar_next744.1.2 = add nuw nsw i64 %polly.indvar743.1.2, 1
  %exitcond895.1.2.not = icmp eq i64 %polly.indvar_next744.1.2, 16
  br i1 %exitcond895.1.2.not, label %polly.loop_header740.2.2, label %polly.loop_header740.1.2

polly.loop_header740.2.2:                         ; preds = %polly.loop_exit748.1.2, %polly.loop_exit748.2.2
  %polly.indvar743.2.2 = phi i64 [ %polly.indvar_next744.2.2, %polly.loop_exit748.2.2 ], [ 0, %polly.loop_exit748.1.2 ]
  %530 = add nuw nsw i64 %polly.indvar743.2.2, 64
  %531 = mul nuw nsw i64 %530, 640
  %532 = trunc i64 %530 to i32
  %broadcast.splatinsert1085 = insertelement <4 x i32> poison, i32 %532, i32 0
  %broadcast.splat1086 = shufflevector <4 x i32> %broadcast.splatinsert1085, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %polly.loop_header740.2.2
  %index1079 = phi i64 [ 0, %polly.loop_header740.2.2 ], [ %index.next1080, %vector.body1077 ]
  %vec.ind1083 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.2 ], [ %vec.ind.next1084, %vector.body1077 ]
  %533 = add nuw nsw <4 x i64> %vec.ind1083, <i64 64, i64 64, i64 64, i64 64>
  %534 = trunc <4 x i64> %533 to <4 x i32>
  %535 = mul <4 x i32> %broadcast.splat1086, %534
  %536 = add <4 x i32> %535, <i32 3, i32 3, i32 3, i32 3>
  %537 = urem <4 x i32> %536, <i32 80, i32 80, i32 80, i32 80>
  %538 = sitofp <4 x i32> %537 to <4 x double>
  %539 = fmul fast <4 x double> %538, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %540 = extractelement <4 x i64> %533, i32 0
  %541 = shl i64 %540, 3
  %542 = add nuw nsw i64 %541, %531
  %543 = getelementptr i8, i8* %call, i64 %542
  %544 = bitcast i8* %543 to <4 x double>*
  store <4 x double> %539, <4 x double>* %544, align 8, !alias.scope !99, !noalias !101
  %index.next1080 = add i64 %index1079, 4
  %vec.ind.next1084 = add <4 x i64> %vec.ind1083, <i64 4, i64 4, i64 4, i64 4>
  %545 = icmp eq i64 %index.next1080, 16
  br i1 %545, label %polly.loop_exit748.2.2, label %vector.body1077, !llvm.loop !126

polly.loop_exit748.2.2:                           ; preds = %vector.body1077
  %polly.indvar_next744.2.2 = add nuw nsw i64 %polly.indvar743.2.2, 1
  %exitcond895.2.2.not = icmp eq i64 %polly.indvar_next744.2.2, 16
  br i1 %exitcond895.2.2.not, label %polly.loop_header767, label %polly.loop_header740.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 16}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 96}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51, !52}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.loop.interchange.enable", i1 true}
!50 = !{!"llvm.loop.interchange.depth", i32 5}
!51 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!52 = !{!"llvm.loop.interchange.followup_interchanged", !53}
!53 = distinct !{!53, !12, !23, !48, !54, !55, !56}
!54 = !{!"llvm.data.pack.enable", i1 true}
!55 = !{!"llvm.data.pack.array", !21}
!56 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !71, !73}
!78 = !{!68, !72, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !82, !84}
!88 = !{!79, !83, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !92, !94}
!98 = !{!89, !93, !94}
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
