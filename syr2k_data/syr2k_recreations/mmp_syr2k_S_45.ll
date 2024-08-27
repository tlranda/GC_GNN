; ModuleID = 'syr2k_recreations//mmp_syr2k_S_45.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_45.c"
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
  %scevgep998 = getelementptr i8, i8* %call2, i64 %12
  %scevgep997 = getelementptr i8, i8* %call2, i64 %11
  %scevgep996 = getelementptr i8, i8* %call1, i64 %12
  %scevgep995 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep995, %scevgep998
  %bound1 = icmp ult i8* %scevgep997, %scevgep996
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
  br i1 %exitcond18.not.i, label %vector.ph1002, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1002:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1009 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1010 = shufflevector <4 x i64> %broadcast.splatinsert1009, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %vector.ph1002
  %index1003 = phi i64 [ 0, %vector.ph1002 ], [ %index.next1004, %vector.body1001 ]
  %vec.ind1007 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1002 ], [ %vec.ind.next1008, %vector.body1001 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1007, %broadcast.splat1010
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv7.i, i64 %index1003
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1004 = add i64 %index1003, 4
  %vec.ind.next1008 = add <4 x i64> %vec.ind1007, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1004, 80
  br i1 %40, label %for.inc41.i, label %vector.body1001, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1001
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1002, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1355, label %vector.ph1284

vector.ph1284:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %vector.ph1284
  %index1285 = phi i64 [ 0, %vector.ph1284 ], [ %index.next1286, %vector.body1283 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %index1285
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1286 = add i64 %index1285, 4
  %46 = icmp eq i64 %index.next1286, %n.vec
  br i1 %46, label %middle.block1281, label %vector.body1283, !llvm.loop !18

middle.block1281:                                 ; preds = %vector.body1283
  %cmp.n1288 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1288, label %for.inc6.i, label %for.body3.i46.preheader1355

for.body3.i46.preheader1355:                      ; preds = %for.body3.i46.preheader, %middle.block1281
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1281 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1355, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1355 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1281, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit557.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start264, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1304 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1304, label %for.body3.i60.preheader1354, label %vector.ph1305

vector.ph1305:                                    ; preds = %for.body3.i60.preheader
  %n.vec1307 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1303

vector.body1303:                                  ; preds = %vector.body1303, %vector.ph1305
  %index1308 = phi i64 [ 0, %vector.ph1305 ], [ %index.next1309, %vector.body1303 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %index1308
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1312 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1312, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1309 = add i64 %index1308, 4
  %57 = icmp eq i64 %index.next1309, %n.vec1307
  br i1 %57, label %middle.block1301, label %vector.body1303, !llvm.loop !55

middle.block1301:                                 ; preds = %vector.body1303
  %cmp.n1311 = icmp eq i64 %indvars.iv21.i52, %n.vec1307
  br i1 %cmp.n1311, label %for.inc6.i63, label %for.body3.i60.preheader1354

for.body3.i60.preheader1354:                      ; preds = %for.body3.i60.preheader, %middle.block1301
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1307, %middle.block1301 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1354, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1354 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1301, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !41

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit390.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1330 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1330, label %for.body3.i99.preheader1353, label %vector.ph1331

vector.ph1331:                                    ; preds = %for.body3.i99.preheader
  %n.vec1333 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1329

vector.body1329:                                  ; preds = %vector.body1329, %vector.ph1331
  %index1334 = phi i64 [ 0, %vector.ph1331 ], [ %index.next1335, %vector.body1329 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %index1334
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1338 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1338, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1335 = add i64 %index1334, 4
  %68 = icmp eq i64 %index.next1335, %n.vec1333
  br i1 %68, label %middle.block1327, label %vector.body1329, !llvm.loop !57

middle.block1327:                                 ; preds = %vector.body1329
  %cmp.n1337 = icmp eq i64 %indvars.iv21.i91, %n.vec1333
  br i1 %cmp.n1337, label %for.inc6.i102, label %for.body3.i99.preheader1353

for.body3.i99.preheader1353:                      ; preds = %for.body3.i99.preheader, %middle.block1327
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1333, %middle.block1327 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1353, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1353 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1327, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !41

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.1
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1342 = phi i64 [ %indvar.next1343, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1342, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1344 = icmp ult i64 %88, 4
  br i1 %min.iters.check1344, label %polly.loop_header191.preheader, label %vector.ph1345

vector.ph1345:                                    ; preds = %polly.loop_header
  %n.vec1347 = and i64 %88, -4
  br label %vector.body1341

vector.body1341:                                  ; preds = %vector.body1341, %vector.ph1345
  %index1348 = phi i64 [ 0, %vector.ph1345 ], [ %index.next1349, %vector.body1341 ]
  %90 = shl nuw nsw i64 %index1348, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1352 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1352, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1349 = add i64 %index1348, 4
  %95 = icmp eq i64 %index.next1349, %n.vec1347
  br i1 %95, label %middle.block1339, label %vector.body1341, !llvm.loop !69

middle.block1339:                                 ; preds = %vector.body1341
  %cmp.n1351 = icmp eq i64 %88, %n.vec1347
  br i1 %cmp.n1351, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1339
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1347, %middle.block1339 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1339
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1343 = add i64 %indvar1342, 1
  br i1 %exitcond812.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep808.1 = getelementptr i8, i8* %malloccall, i64 480
  %scevgep809.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.1, i64 480, i1 false)
  %scevgep808.2 = getelementptr i8, i8* %malloccall, i64 960
  %scevgep809.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.2, i64 480, i1 false)
  %scevgep808.3 = getelementptr i8, i8* %malloccall, i64 1440
  %scevgep809.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.3, i64 480, i1 false)
  %scevgep808.4 = getelementptr i8, i8* %malloccall, i64 1920
  %scevgep809.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.4, i64 480, i1 false)
  %scevgep808.5 = getelementptr i8, i8* %malloccall, i64 2400
  %scevgep809.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.5, i64 480, i1 false)
  %scevgep808.6 = getelementptr i8, i8* %malloccall, i64 2880
  %scevgep809.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.6, i64 480, i1 false)
  %scevgep808.7 = getelementptr i8, i8* %malloccall, i64 3360
  %scevgep809.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.7, i64 480, i1 false)
  %scevgep808.8 = getelementptr i8, i8* %malloccall, i64 3840
  %scevgep809.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.8, i64 480, i1 false)
  %scevgep808.9 = getelementptr i8, i8* %malloccall, i64 4320
  %scevgep809.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.9, i64 480, i1 false)
  %scevgep808.10 = getelementptr i8, i8* %malloccall, i64 4800
  %scevgep809.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.10, i64 480, i1 false)
  %scevgep808.11 = getelementptr i8, i8* %malloccall, i64 5280
  %scevgep809.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.11, i64 480, i1 false)
  %scevgep808.12 = getelementptr i8, i8* %malloccall, i64 5760
  %scevgep809.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.12, i64 480, i1 false)
  %scevgep808.13 = getelementptr i8, i8* %malloccall, i64 6240
  %scevgep809.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.13, i64 480, i1 false)
  %scevgep808.14 = getelementptr i8, i8* %malloccall, i64 6720
  %scevgep809.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.14, i64 480, i1 false)
  %scevgep808.15 = getelementptr i8, i8* %malloccall, i64 7200
  %scevgep809.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.15, i64 480, i1 false)
  %scevgep808.16 = getelementptr i8, i8* %malloccall, i64 7680
  %scevgep809.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.16, i64 480, i1 false)
  %scevgep808.17 = getelementptr i8, i8* %malloccall, i64 8160
  %scevgep809.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.17, i64 480, i1 false)
  %scevgep808.18 = getelementptr i8, i8* %malloccall, i64 8640
  %scevgep809.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.18, i64 480, i1 false)
  %scevgep808.19 = getelementptr i8, i8* %malloccall, i64 9120
  %scevgep809.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.19, i64 480, i1 false)
  %scevgep808.20 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep809.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.20, i64 480, i1 false)
  %scevgep808.21 = getelementptr i8, i8* %malloccall, i64 10080
  %scevgep809.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.21, i64 480, i1 false)
  %scevgep808.22 = getelementptr i8, i8* %malloccall, i64 10560
  %scevgep809.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.22, i64 480, i1 false)
  %scevgep808.23 = getelementptr i8, i8* %malloccall, i64 11040
  %scevgep809.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.23, i64 480, i1 false)
  %scevgep808.24 = getelementptr i8, i8* %malloccall, i64 11520
  %scevgep809.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.24, i64 480, i1 false)
  %scevgep808.25 = getelementptr i8, i8* %malloccall, i64 12000
  %scevgep809.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.25, i64 480, i1 false)
  %scevgep808.26 = getelementptr i8, i8* %malloccall, i64 12480
  %scevgep809.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.26, i64 480, i1 false)
  %scevgep808.27 = getelementptr i8, i8* %malloccall, i64 12960
  %scevgep809.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.27, i64 480, i1 false)
  %scevgep808.28 = getelementptr i8, i8* %malloccall, i64 13440
  %scevgep809.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.28, i64 480, i1 false)
  %scevgep808.29 = getelementptr i8, i8* %malloccall, i64 13920
  %scevgep809.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.29, i64 480, i1 false)
  %scevgep808.30 = getelementptr i8, i8* %malloccall, i64 14400
  %scevgep809.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.30, i64 480, i1 false)
  %scevgep808.31 = getelementptr i8, i8* %malloccall, i64 14880
  %scevgep809.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.31, i64 480, i1 false)
  %scevgep808.32 = getelementptr i8, i8* %malloccall, i64 15360
  %scevgep809.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.32, i64 480, i1 false)
  %scevgep808.33 = getelementptr i8, i8* %malloccall, i64 15840
  %scevgep809.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.33, i64 480, i1 false)
  %scevgep808.34 = getelementptr i8, i8* %malloccall, i64 16320
  %scevgep809.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.34, i64 480, i1 false)
  %scevgep808.35 = getelementptr i8, i8* %malloccall, i64 16800
  %scevgep809.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.35, i64 480, i1 false)
  %scevgep808.36 = getelementptr i8, i8* %malloccall, i64 17280
  %scevgep809.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.36, i64 480, i1 false)
  %scevgep808.37 = getelementptr i8, i8* %malloccall, i64 17760
  %scevgep809.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.37, i64 480, i1 false)
  %scevgep808.38 = getelementptr i8, i8* %malloccall, i64 18240
  %scevgep809.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.38, i64 480, i1 false)
  %scevgep808.39 = getelementptr i8, i8* %malloccall, i64 18720
  %scevgep809.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.39, i64 480, i1 false)
  %scevgep808.40 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep809.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.40, i64 480, i1 false)
  %scevgep808.41 = getelementptr i8, i8* %malloccall, i64 19680
  %scevgep809.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.41, i64 480, i1 false)
  %scevgep808.42 = getelementptr i8, i8* %malloccall, i64 20160
  %scevgep809.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.42, i64 480, i1 false)
  %scevgep808.43 = getelementptr i8, i8* %malloccall, i64 20640
  %scevgep809.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.43, i64 480, i1 false)
  %scevgep808.44 = getelementptr i8, i8* %malloccall, i64 21120
  %scevgep809.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.44, i64 480, i1 false)
  %scevgep808.45 = getelementptr i8, i8* %malloccall, i64 21600
  %scevgep809.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.45, i64 480, i1 false)
  %scevgep808.46 = getelementptr i8, i8* %malloccall, i64 22080
  %scevgep809.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.46, i64 480, i1 false)
  %scevgep808.47 = getelementptr i8, i8* %malloccall, i64 22560
  %scevgep809.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.47, i64 480, i1 false)
  %scevgep808.48 = getelementptr i8, i8* %malloccall, i64 23040
  %scevgep809.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.48, i64 480, i1 false)
  %scevgep808.49 = getelementptr i8, i8* %malloccall, i64 23520
  %scevgep809.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.49, i64 480, i1 false)
  %scevgep808.50 = getelementptr i8, i8* %malloccall, i64 24000
  %scevgep809.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.50, i64 480, i1 false)
  %scevgep808.51 = getelementptr i8, i8* %malloccall, i64 24480
  %scevgep809.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.51, i64 480, i1 false)
  %scevgep808.52 = getelementptr i8, i8* %malloccall, i64 24960
  %scevgep809.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.52, i64 480, i1 false)
  %scevgep808.53 = getelementptr i8, i8* %malloccall, i64 25440
  %scevgep809.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.53, i64 480, i1 false)
  %scevgep808.54 = getelementptr i8, i8* %malloccall, i64 25920
  %scevgep809.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.54, i64 480, i1 false)
  %scevgep808.55 = getelementptr i8, i8* %malloccall, i64 26400
  %scevgep809.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.55, i64 480, i1 false)
  %scevgep808.56 = getelementptr i8, i8* %malloccall, i64 26880
  %scevgep809.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.56, i64 480, i1 false)
  %scevgep808.57 = getelementptr i8, i8* %malloccall, i64 27360
  %scevgep809.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.57, i64 480, i1 false)
  %scevgep808.58 = getelementptr i8, i8* %malloccall, i64 27840
  %scevgep809.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.58, i64 480, i1 false)
  %scevgep808.59 = getelementptr i8, i8* %malloccall, i64 28320
  %scevgep809.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.59, i64 480, i1 false)
  %scevgep808.60 = getelementptr i8, i8* %malloccall, i64 28800
  %scevgep809.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.60, i64 480, i1 false)
  %scevgep808.61 = getelementptr i8, i8* %malloccall, i64 29280
  %scevgep809.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.61, i64 480, i1 false)
  %scevgep808.62 = getelementptr i8, i8* %malloccall, i64 29760
  %scevgep809.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.62, i64 480, i1 false)
  %scevgep808.63 = getelementptr i8, i8* %malloccall, i64 30240
  %scevgep809.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.63, i64 480, i1 false)
  %scevgep808.64 = getelementptr i8, i8* %malloccall, i64 30720
  %scevgep809.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.64, i64 480, i1 false)
  %scevgep808.65 = getelementptr i8, i8* %malloccall, i64 31200
  %scevgep809.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.65, i64 480, i1 false)
  %scevgep808.66 = getelementptr i8, i8* %malloccall, i64 31680
  %scevgep809.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.66, i64 480, i1 false)
  %scevgep808.67 = getelementptr i8, i8* %malloccall, i64 32160
  %scevgep809.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.67, i64 480, i1 false)
  %scevgep808.68 = getelementptr i8, i8* %malloccall, i64 32640
  %scevgep809.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.68, i64 480, i1 false)
  %scevgep808.69 = getelementptr i8, i8* %malloccall, i64 33120
  %scevgep809.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.69, i64 480, i1 false)
  %scevgep808.70 = getelementptr i8, i8* %malloccall, i64 33600
  %scevgep809.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.70, i64 480, i1 false)
  %scevgep808.71 = getelementptr i8, i8* %malloccall, i64 34080
  %scevgep809.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.71, i64 480, i1 false)
  %scevgep808.72 = getelementptr i8, i8* %malloccall, i64 34560
  %scevgep809.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.72, i64 480, i1 false)
  %scevgep808.73 = getelementptr i8, i8* %malloccall, i64 35040
  %scevgep809.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.73, i64 480, i1 false)
  %scevgep808.74 = getelementptr i8, i8* %malloccall, i64 35520
  %scevgep809.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.74, i64 480, i1 false)
  %scevgep808.75 = getelementptr i8, i8* %malloccall, i64 36000
  %scevgep809.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.75, i64 480, i1 false)
  %scevgep808.76 = getelementptr i8, i8* %malloccall, i64 36480
  %scevgep809.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.76, i64 480, i1 false)
  %scevgep808.77 = getelementptr i8, i8* %malloccall, i64 36960
  %scevgep809.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.77, i64 480, i1 false)
  %scevgep808.78 = getelementptr i8, i8* %malloccall, i64 37440
  %scevgep809.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.78, i64 480, i1 false)
  %scevgep808.79 = getelementptr i8, i8* %malloccall, i64 37920
  %scevgep809.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep809.79, i64 480, i1 false)
  br label %polly.loop_header221

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond811.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header199.preheader
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %97 = shl nsw i64 %polly.indvar224, 2
  %98 = shl i64 %polly.indvar224, 5
  %99 = or i64 %97, 1
  %100 = shl i64 %99, 3
  %101 = or i64 %97, 2
  %102 = shl i64 %101, 3
  %103 = or i64 %97, 3
  %104 = shl i64 %103, 3
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit241.3
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond806.not = icmp eq i64 %polly.indvar_next225, 15
  br i1 %exitcond806.not, label %polly.loop_header221.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit241.3, %polly.loop_header221
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit241.3 ], [ 1, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit241.3 ], [ 0, %polly.loop_header221 ]
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %polly.indvar230, 60
  %105 = mul nuw nsw i64 %polly.indvar230, 480
  %106 = mul nuw nsw i64 %polly.indvar230, 640
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %97, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %107 = add nuw nsw i64 %98, %105
  %scevgep256 = getelementptr i8, i8* %call1, i64 %107
  %scevgep256257 = bitcast i8* %scevgep256 to double*
  %_p_scalar_258 = load double, double* %scevgep256257, align 8, !alias.scope !66, !noalias !72
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %99, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %108 = add nuw nsw i64 %100, %105
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %108
  %scevgep256257.1 = bitcast i8* %scevgep256.1 to double*
  %_p_scalar_258.1 = load double, double* %scevgep256257.1, align 8, !alias.scope !66, !noalias !72
  br label %polly.loop_header239.1

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header227
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %109 = mul nuw nsw i64 %polly.indvar242, 480
  %110 = add nuw nsw i64 %109, %98
  %scevgep245 = getelementptr i8, i8* %call1, i64 %110
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !66, !noalias !72
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.mul.Packed_MemRef_call2252 = mul nuw nsw i64 %polly.indvar242, 60
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252, %97
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_258, %_p_scalar_255
  %111 = shl nuw nsw i64 %polly.indvar242, 3
  %112 = add nuw nsw i64 %111, %106
  %scevgep259 = getelementptr i8, i8* %call, i64 %112
  %scevgep259260 = bitcast i8* %scevgep259 to double*
  %_p_scalar_261 = load double, double* %scevgep259260, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_261
  store double %p_add42.i118, double* %scevgep259260, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next243, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start264:                                   ; preds = %kernel_syr2k.exit
  %malloccall266 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header350

polly.loop_header350:                             ; preds = %polly.loop_exit358, %polly.start264
  %indvar1316 = phi i64 [ %indvar.next1317, %polly.loop_exit358 ], [ 0, %polly.start264 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 1, %polly.start264 ]
  %113 = add i64 %indvar1316, 1
  %114 = mul nuw nsw i64 %polly.indvar353, 640
  %scevgep362 = getelementptr i8, i8* %call, i64 %114
  %min.iters.check1318 = icmp ult i64 %113, 4
  br i1 %min.iters.check1318, label %polly.loop_header356.preheader, label %vector.ph1319

vector.ph1319:                                    ; preds = %polly.loop_header350
  %n.vec1321 = and i64 %113, -4
  br label %vector.body1315

vector.body1315:                                  ; preds = %vector.body1315, %vector.ph1319
  %index1322 = phi i64 [ 0, %vector.ph1319 ], [ %index.next1323, %vector.body1315 ]
  %115 = shl nuw nsw i64 %index1322, 3
  %116 = getelementptr i8, i8* %scevgep362, i64 %115
  %117 = bitcast i8* %116 to <4 x double>*
  %wide.load1326 = load <4 x double>, <4 x double>* %117, align 8, !alias.scope !73, !noalias !75
  %118 = fmul fast <4 x double> %wide.load1326, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %119 = bitcast i8* %116 to <4 x double>*
  store <4 x double> %118, <4 x double>* %119, align 8, !alias.scope !73, !noalias !75
  %index.next1323 = add i64 %index1322, 4
  %120 = icmp eq i64 %index.next1323, %n.vec1321
  br i1 %120, label %middle.block1313, label %vector.body1315, !llvm.loop !79

middle.block1313:                                 ; preds = %vector.body1315
  %cmp.n1325 = icmp eq i64 %113, %n.vec1321
  br i1 %cmp.n1325, label %polly.loop_exit358, label %polly.loop_header356.preheader

polly.loop_header356.preheader:                   ; preds = %polly.loop_header350, %middle.block1313
  %polly.indvar359.ph = phi i64 [ 0, %polly.loop_header350 ], [ %n.vec1321, %middle.block1313 ]
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_header356, %middle.block1313
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next354, 80
  %indvar.next1317 = add i64 %indvar1316, 1
  br i1 %exitcond824.not, label %polly.loop_header366.preheader, label %polly.loop_header350

polly.loop_header366.preheader:                   ; preds = %polly.loop_exit358
  %Packed_MemRef_call2267 = bitcast i8* %malloccall266 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall266, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep820.1 = getelementptr i8, i8* %malloccall266, i64 480
  %scevgep821.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.1, i64 480, i1 false)
  %scevgep820.2 = getelementptr i8, i8* %malloccall266, i64 960
  %scevgep821.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.2, i64 480, i1 false)
  %scevgep820.3 = getelementptr i8, i8* %malloccall266, i64 1440
  %scevgep821.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.3, i64 480, i1 false)
  %scevgep820.4 = getelementptr i8, i8* %malloccall266, i64 1920
  %scevgep821.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.4, i64 480, i1 false)
  %scevgep820.5 = getelementptr i8, i8* %malloccall266, i64 2400
  %scevgep821.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.5, i64 480, i1 false)
  %scevgep820.6 = getelementptr i8, i8* %malloccall266, i64 2880
  %scevgep821.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.6, i64 480, i1 false)
  %scevgep820.7 = getelementptr i8, i8* %malloccall266, i64 3360
  %scevgep821.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.7, i64 480, i1 false)
  %scevgep820.8 = getelementptr i8, i8* %malloccall266, i64 3840
  %scevgep821.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.8, i64 480, i1 false)
  %scevgep820.9 = getelementptr i8, i8* %malloccall266, i64 4320
  %scevgep821.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.9, i64 480, i1 false)
  %scevgep820.10 = getelementptr i8, i8* %malloccall266, i64 4800
  %scevgep821.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.10, i64 480, i1 false)
  %scevgep820.11 = getelementptr i8, i8* %malloccall266, i64 5280
  %scevgep821.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.11, i64 480, i1 false)
  %scevgep820.12 = getelementptr i8, i8* %malloccall266, i64 5760
  %scevgep821.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.12, i64 480, i1 false)
  %scevgep820.13 = getelementptr i8, i8* %malloccall266, i64 6240
  %scevgep821.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.13, i64 480, i1 false)
  %scevgep820.14 = getelementptr i8, i8* %malloccall266, i64 6720
  %scevgep821.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.14, i64 480, i1 false)
  %scevgep820.15 = getelementptr i8, i8* %malloccall266, i64 7200
  %scevgep821.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.15, i64 480, i1 false)
  %scevgep820.16 = getelementptr i8, i8* %malloccall266, i64 7680
  %scevgep821.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.16, i64 480, i1 false)
  %scevgep820.17 = getelementptr i8, i8* %malloccall266, i64 8160
  %scevgep821.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.17, i64 480, i1 false)
  %scevgep820.18 = getelementptr i8, i8* %malloccall266, i64 8640
  %scevgep821.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.18, i64 480, i1 false)
  %scevgep820.19 = getelementptr i8, i8* %malloccall266, i64 9120
  %scevgep821.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.19, i64 480, i1 false)
  %scevgep820.20 = getelementptr i8, i8* %malloccall266, i64 9600
  %scevgep821.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.20, i64 480, i1 false)
  %scevgep820.21 = getelementptr i8, i8* %malloccall266, i64 10080
  %scevgep821.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.21, i64 480, i1 false)
  %scevgep820.22 = getelementptr i8, i8* %malloccall266, i64 10560
  %scevgep821.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.22, i64 480, i1 false)
  %scevgep820.23 = getelementptr i8, i8* %malloccall266, i64 11040
  %scevgep821.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.23, i64 480, i1 false)
  %scevgep820.24 = getelementptr i8, i8* %malloccall266, i64 11520
  %scevgep821.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.24, i64 480, i1 false)
  %scevgep820.25 = getelementptr i8, i8* %malloccall266, i64 12000
  %scevgep821.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.25, i64 480, i1 false)
  %scevgep820.26 = getelementptr i8, i8* %malloccall266, i64 12480
  %scevgep821.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.26, i64 480, i1 false)
  %scevgep820.27 = getelementptr i8, i8* %malloccall266, i64 12960
  %scevgep821.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.27, i64 480, i1 false)
  %scevgep820.28 = getelementptr i8, i8* %malloccall266, i64 13440
  %scevgep821.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.28, i64 480, i1 false)
  %scevgep820.29 = getelementptr i8, i8* %malloccall266, i64 13920
  %scevgep821.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.29, i64 480, i1 false)
  %scevgep820.30 = getelementptr i8, i8* %malloccall266, i64 14400
  %scevgep821.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.30, i64 480, i1 false)
  %scevgep820.31 = getelementptr i8, i8* %malloccall266, i64 14880
  %scevgep821.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.31, i64 480, i1 false)
  %scevgep820.32 = getelementptr i8, i8* %malloccall266, i64 15360
  %scevgep821.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.32, i64 480, i1 false)
  %scevgep820.33 = getelementptr i8, i8* %malloccall266, i64 15840
  %scevgep821.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.33, i64 480, i1 false)
  %scevgep820.34 = getelementptr i8, i8* %malloccall266, i64 16320
  %scevgep821.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.34, i64 480, i1 false)
  %scevgep820.35 = getelementptr i8, i8* %malloccall266, i64 16800
  %scevgep821.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.35, i64 480, i1 false)
  %scevgep820.36 = getelementptr i8, i8* %malloccall266, i64 17280
  %scevgep821.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.36, i64 480, i1 false)
  %scevgep820.37 = getelementptr i8, i8* %malloccall266, i64 17760
  %scevgep821.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.37, i64 480, i1 false)
  %scevgep820.38 = getelementptr i8, i8* %malloccall266, i64 18240
  %scevgep821.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.38, i64 480, i1 false)
  %scevgep820.39 = getelementptr i8, i8* %malloccall266, i64 18720
  %scevgep821.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.39, i64 480, i1 false)
  %scevgep820.40 = getelementptr i8, i8* %malloccall266, i64 19200
  %scevgep821.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.40, i64 480, i1 false)
  %scevgep820.41 = getelementptr i8, i8* %malloccall266, i64 19680
  %scevgep821.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.41, i64 480, i1 false)
  %scevgep820.42 = getelementptr i8, i8* %malloccall266, i64 20160
  %scevgep821.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.42, i64 480, i1 false)
  %scevgep820.43 = getelementptr i8, i8* %malloccall266, i64 20640
  %scevgep821.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.43, i64 480, i1 false)
  %scevgep820.44 = getelementptr i8, i8* %malloccall266, i64 21120
  %scevgep821.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.44, i64 480, i1 false)
  %scevgep820.45 = getelementptr i8, i8* %malloccall266, i64 21600
  %scevgep821.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.45, i64 480, i1 false)
  %scevgep820.46 = getelementptr i8, i8* %malloccall266, i64 22080
  %scevgep821.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.46, i64 480, i1 false)
  %scevgep820.47 = getelementptr i8, i8* %malloccall266, i64 22560
  %scevgep821.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.47, i64 480, i1 false)
  %scevgep820.48 = getelementptr i8, i8* %malloccall266, i64 23040
  %scevgep821.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.48, i64 480, i1 false)
  %scevgep820.49 = getelementptr i8, i8* %malloccall266, i64 23520
  %scevgep821.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.49, i64 480, i1 false)
  %scevgep820.50 = getelementptr i8, i8* %malloccall266, i64 24000
  %scevgep821.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.50, i64 480, i1 false)
  %scevgep820.51 = getelementptr i8, i8* %malloccall266, i64 24480
  %scevgep821.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.51, i64 480, i1 false)
  %scevgep820.52 = getelementptr i8, i8* %malloccall266, i64 24960
  %scevgep821.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.52, i64 480, i1 false)
  %scevgep820.53 = getelementptr i8, i8* %malloccall266, i64 25440
  %scevgep821.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.53, i64 480, i1 false)
  %scevgep820.54 = getelementptr i8, i8* %malloccall266, i64 25920
  %scevgep821.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.54, i64 480, i1 false)
  %scevgep820.55 = getelementptr i8, i8* %malloccall266, i64 26400
  %scevgep821.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.55, i64 480, i1 false)
  %scevgep820.56 = getelementptr i8, i8* %malloccall266, i64 26880
  %scevgep821.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.56, i64 480, i1 false)
  %scevgep820.57 = getelementptr i8, i8* %malloccall266, i64 27360
  %scevgep821.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.57, i64 480, i1 false)
  %scevgep820.58 = getelementptr i8, i8* %malloccall266, i64 27840
  %scevgep821.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.58, i64 480, i1 false)
  %scevgep820.59 = getelementptr i8, i8* %malloccall266, i64 28320
  %scevgep821.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.59, i64 480, i1 false)
  %scevgep820.60 = getelementptr i8, i8* %malloccall266, i64 28800
  %scevgep821.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.60, i64 480, i1 false)
  %scevgep820.61 = getelementptr i8, i8* %malloccall266, i64 29280
  %scevgep821.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.61, i64 480, i1 false)
  %scevgep820.62 = getelementptr i8, i8* %malloccall266, i64 29760
  %scevgep821.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.62, i64 480, i1 false)
  %scevgep820.63 = getelementptr i8, i8* %malloccall266, i64 30240
  %scevgep821.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.63, i64 480, i1 false)
  %scevgep820.64 = getelementptr i8, i8* %malloccall266, i64 30720
  %scevgep821.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.64, i64 480, i1 false)
  %scevgep820.65 = getelementptr i8, i8* %malloccall266, i64 31200
  %scevgep821.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.65, i64 480, i1 false)
  %scevgep820.66 = getelementptr i8, i8* %malloccall266, i64 31680
  %scevgep821.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.66, i64 480, i1 false)
  %scevgep820.67 = getelementptr i8, i8* %malloccall266, i64 32160
  %scevgep821.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.67, i64 480, i1 false)
  %scevgep820.68 = getelementptr i8, i8* %malloccall266, i64 32640
  %scevgep821.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.68, i64 480, i1 false)
  %scevgep820.69 = getelementptr i8, i8* %malloccall266, i64 33120
  %scevgep821.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.69, i64 480, i1 false)
  %scevgep820.70 = getelementptr i8, i8* %malloccall266, i64 33600
  %scevgep821.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.70, i64 480, i1 false)
  %scevgep820.71 = getelementptr i8, i8* %malloccall266, i64 34080
  %scevgep821.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.71, i64 480, i1 false)
  %scevgep820.72 = getelementptr i8, i8* %malloccall266, i64 34560
  %scevgep821.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.72, i64 480, i1 false)
  %scevgep820.73 = getelementptr i8, i8* %malloccall266, i64 35040
  %scevgep821.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.73, i64 480, i1 false)
  %scevgep820.74 = getelementptr i8, i8* %malloccall266, i64 35520
  %scevgep821.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.74, i64 480, i1 false)
  %scevgep820.75 = getelementptr i8, i8* %malloccall266, i64 36000
  %scevgep821.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.75, i64 480, i1 false)
  %scevgep820.76 = getelementptr i8, i8* %malloccall266, i64 36480
  %scevgep821.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.76, i64 480, i1 false)
  %scevgep820.77 = getelementptr i8, i8* %malloccall266, i64 36960
  %scevgep821.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.77, i64 480, i1 false)
  %scevgep820.78 = getelementptr i8, i8* %malloccall266, i64 37440
  %scevgep821.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.78, i64 480, i1 false)
  %scevgep820.79 = getelementptr i8, i8* %malloccall266, i64 37920
  %scevgep821.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep820.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep821.79, i64 480, i1 false)
  br label %polly.loop_header388

polly.loop_header356:                             ; preds = %polly.loop_header356.preheader, %polly.loop_header356
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_header356 ], [ %polly.indvar359.ph, %polly.loop_header356.preheader ]
  %121 = shl nuw nsw i64 %polly.indvar359, 3
  %scevgep363 = getelementptr i8, i8* %scevgep362, i64 %121
  %scevgep363364 = bitcast i8* %scevgep363 to double*
  %_p_scalar_365 = load double, double* %scevgep363364, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_365, 1.200000e+00
  store double %p_mul.i57, double* %scevgep363364, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next360, %polly.indvar353
  br i1 %exitcond823.not, label %polly.loop_exit358, label %polly.loop_header356, !llvm.loop !80

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.loop_header366.preheader
  %polly.indvar391 = phi i64 [ 0, %polly.loop_header366.preheader ], [ %polly.indvar_next392, %polly.loop_exit396 ]
  %122 = shl nsw i64 %polly.indvar391, 2
  %123 = shl i64 %polly.indvar391, 5
  %124 = or i64 %122, 1
  %125 = shl i64 %124, 3
  %126 = or i64 %122, 2
  %127 = shl i64 %126, 3
  %128 = or i64 %122, 3
  %129 = shl i64 %128, 3
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit408.3
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next392, 15
  br i1 %exitcond818.not, label %polly.loop_header388.1, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit408.3, %polly.loop_header388
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %polly.loop_exit408.3 ], [ 1, %polly.loop_header388 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit408.3 ], [ 0, %polly.loop_header388 ]
  %polly.access.mul.Packed_MemRef_call2267415 = mul nuw nsw i64 %polly.indvar397, 60
  %130 = mul nuw nsw i64 %polly.indvar397, 480
  %131 = mul nuw nsw i64 %polly.indvar397, 640
  %polly.access.add.Packed_MemRef_call2267416 = add nuw nsw i64 %122, %polly.access.mul.Packed_MemRef_call2267415
  %polly.access.Packed_MemRef_call2267417 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416
  %_p_scalar_418 = load double, double* %polly.access.Packed_MemRef_call2267417, align 8
  %132 = add nuw nsw i64 %123, %130
  %scevgep423 = getelementptr i8, i8* %call1, i64 %132
  %scevgep423424 = bitcast i8* %scevgep423 to double*
  %_p_scalar_425 = load double, double* %scevgep423424, align 8, !alias.scope !76, !noalias !81
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.access.add.Packed_MemRef_call2267416.1 = add nuw nsw i64 %124, %polly.access.mul.Packed_MemRef_call2267415
  %polly.access.Packed_MemRef_call2267417.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1
  %_p_scalar_418.1 = load double, double* %polly.access.Packed_MemRef_call2267417.1, align 8
  %133 = add nuw nsw i64 %125, %130
  %scevgep423.1 = getelementptr i8, i8* %call1, i64 %133
  %scevgep423424.1 = bitcast i8* %scevgep423.1 to double*
  %_p_scalar_425.1 = load double, double* %scevgep423424.1, align 8, !alias.scope !76, !noalias !81
  br label %polly.loop_header406.1

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header394
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header394 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %134 = mul nuw nsw i64 %polly.indvar409, 480
  %135 = add nuw nsw i64 %134, %123
  %scevgep412 = getelementptr i8, i8* %call1, i64 %135
  %scevgep412413 = bitcast i8* %scevgep412 to double*
  %_p_scalar_414 = load double, double* %scevgep412413, align 8, !alias.scope !76, !noalias !81
  %p_mul27.i73 = fmul fast double %_p_scalar_418, %_p_scalar_414
  %polly.access.mul.Packed_MemRef_call2267419 = mul nuw nsw i64 %polly.indvar409, 60
  %polly.access.add.Packed_MemRef_call2267420 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419, %122
  %polly.access.Packed_MemRef_call2267421 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420
  %_p_scalar_422 = load double, double* %polly.access.Packed_MemRef_call2267421, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_425, %_p_scalar_422
  %136 = shl nuw nsw i64 %polly.indvar409, 3
  %137 = add nuw nsw i64 %136, %131
  %scevgep426 = getelementptr i8, i8* %call, i64 %137
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_428
  store double %p_add42.i79, double* %scevgep426427, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next410, %indvars.iv813
  br i1 %exitcond815.not, label %polly.loop_exit408, label %polly.loop_header406

polly.start431:                                   ; preds = %init_array.exit
  %malloccall433 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header517

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.start431
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit525 ], [ 0, %polly.start431 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 1, %polly.start431 ]
  %138 = add i64 %indvar, 1
  %139 = mul nuw nsw i64 %polly.indvar520, 640
  %scevgep529 = getelementptr i8, i8* %call, i64 %139
  %min.iters.check1292 = icmp ult i64 %138, 4
  br i1 %min.iters.check1292, label %polly.loop_header523.preheader, label %vector.ph1293

vector.ph1293:                                    ; preds = %polly.loop_header517
  %n.vec1295 = and i64 %138, -4
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %vector.ph1293
  %index1296 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1297, %vector.body1291 ]
  %140 = shl nuw nsw i64 %index1296, 3
  %141 = getelementptr i8, i8* %scevgep529, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !82, !noalias !84
  %143 = fmul fast <4 x double> %wide.load1300, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %144 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %143, <4 x double>* %144, align 8, !alias.scope !82, !noalias !84
  %index.next1297 = add i64 %index1296, 4
  %145 = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %145, label %middle.block1289, label %vector.body1291, !llvm.loop !88

middle.block1289:                                 ; preds = %vector.body1291
  %cmp.n1299 = icmp eq i64 %138, %n.vec1295
  br i1 %cmp.n1299, label %polly.loop_exit525, label %polly.loop_header523.preheader

polly.loop_header523.preheader:                   ; preds = %polly.loop_header517, %middle.block1289
  %polly.indvar526.ph = phi i64 [ 0, %polly.loop_header517 ], [ %n.vec1295, %middle.block1289 ]
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523, %middle.block1289
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next521, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond836.not, label %polly.loop_header533.preheader, label %polly.loop_header517

polly.loop_header533.preheader:                   ; preds = %polly.loop_exit525
  %Packed_MemRef_call2434 = bitcast i8* %malloccall433 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall433, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep832.1 = getelementptr i8, i8* %malloccall433, i64 480
  %scevgep833.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.1, i64 480, i1 false)
  %scevgep832.2 = getelementptr i8, i8* %malloccall433, i64 960
  %scevgep833.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.2, i64 480, i1 false)
  %scevgep832.3 = getelementptr i8, i8* %malloccall433, i64 1440
  %scevgep833.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.3, i64 480, i1 false)
  %scevgep832.4 = getelementptr i8, i8* %malloccall433, i64 1920
  %scevgep833.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.4, i64 480, i1 false)
  %scevgep832.5 = getelementptr i8, i8* %malloccall433, i64 2400
  %scevgep833.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.5, i64 480, i1 false)
  %scevgep832.6 = getelementptr i8, i8* %malloccall433, i64 2880
  %scevgep833.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.6, i64 480, i1 false)
  %scevgep832.7 = getelementptr i8, i8* %malloccall433, i64 3360
  %scevgep833.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.7, i64 480, i1 false)
  %scevgep832.8 = getelementptr i8, i8* %malloccall433, i64 3840
  %scevgep833.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.8, i64 480, i1 false)
  %scevgep832.9 = getelementptr i8, i8* %malloccall433, i64 4320
  %scevgep833.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.9, i64 480, i1 false)
  %scevgep832.10 = getelementptr i8, i8* %malloccall433, i64 4800
  %scevgep833.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.10, i64 480, i1 false)
  %scevgep832.11 = getelementptr i8, i8* %malloccall433, i64 5280
  %scevgep833.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.11, i64 480, i1 false)
  %scevgep832.12 = getelementptr i8, i8* %malloccall433, i64 5760
  %scevgep833.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.12, i64 480, i1 false)
  %scevgep832.13 = getelementptr i8, i8* %malloccall433, i64 6240
  %scevgep833.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.13, i64 480, i1 false)
  %scevgep832.14 = getelementptr i8, i8* %malloccall433, i64 6720
  %scevgep833.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.14, i64 480, i1 false)
  %scevgep832.15 = getelementptr i8, i8* %malloccall433, i64 7200
  %scevgep833.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.15, i64 480, i1 false)
  %scevgep832.16 = getelementptr i8, i8* %malloccall433, i64 7680
  %scevgep833.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.16, i64 480, i1 false)
  %scevgep832.17 = getelementptr i8, i8* %malloccall433, i64 8160
  %scevgep833.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.17, i64 480, i1 false)
  %scevgep832.18 = getelementptr i8, i8* %malloccall433, i64 8640
  %scevgep833.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.18, i64 480, i1 false)
  %scevgep832.19 = getelementptr i8, i8* %malloccall433, i64 9120
  %scevgep833.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.19, i64 480, i1 false)
  %scevgep832.20 = getelementptr i8, i8* %malloccall433, i64 9600
  %scevgep833.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.20, i64 480, i1 false)
  %scevgep832.21 = getelementptr i8, i8* %malloccall433, i64 10080
  %scevgep833.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.21, i64 480, i1 false)
  %scevgep832.22 = getelementptr i8, i8* %malloccall433, i64 10560
  %scevgep833.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.22, i64 480, i1 false)
  %scevgep832.23 = getelementptr i8, i8* %malloccall433, i64 11040
  %scevgep833.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.23, i64 480, i1 false)
  %scevgep832.24 = getelementptr i8, i8* %malloccall433, i64 11520
  %scevgep833.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.24, i64 480, i1 false)
  %scevgep832.25 = getelementptr i8, i8* %malloccall433, i64 12000
  %scevgep833.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.25, i64 480, i1 false)
  %scevgep832.26 = getelementptr i8, i8* %malloccall433, i64 12480
  %scevgep833.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.26, i64 480, i1 false)
  %scevgep832.27 = getelementptr i8, i8* %malloccall433, i64 12960
  %scevgep833.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.27, i64 480, i1 false)
  %scevgep832.28 = getelementptr i8, i8* %malloccall433, i64 13440
  %scevgep833.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.28, i64 480, i1 false)
  %scevgep832.29 = getelementptr i8, i8* %malloccall433, i64 13920
  %scevgep833.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.29, i64 480, i1 false)
  %scevgep832.30 = getelementptr i8, i8* %malloccall433, i64 14400
  %scevgep833.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.30, i64 480, i1 false)
  %scevgep832.31 = getelementptr i8, i8* %malloccall433, i64 14880
  %scevgep833.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.31, i64 480, i1 false)
  %scevgep832.32 = getelementptr i8, i8* %malloccall433, i64 15360
  %scevgep833.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.32, i64 480, i1 false)
  %scevgep832.33 = getelementptr i8, i8* %malloccall433, i64 15840
  %scevgep833.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.33, i64 480, i1 false)
  %scevgep832.34 = getelementptr i8, i8* %malloccall433, i64 16320
  %scevgep833.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.34, i64 480, i1 false)
  %scevgep832.35 = getelementptr i8, i8* %malloccall433, i64 16800
  %scevgep833.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.35, i64 480, i1 false)
  %scevgep832.36 = getelementptr i8, i8* %malloccall433, i64 17280
  %scevgep833.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.36, i64 480, i1 false)
  %scevgep832.37 = getelementptr i8, i8* %malloccall433, i64 17760
  %scevgep833.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.37, i64 480, i1 false)
  %scevgep832.38 = getelementptr i8, i8* %malloccall433, i64 18240
  %scevgep833.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.38, i64 480, i1 false)
  %scevgep832.39 = getelementptr i8, i8* %malloccall433, i64 18720
  %scevgep833.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.39, i64 480, i1 false)
  %scevgep832.40 = getelementptr i8, i8* %malloccall433, i64 19200
  %scevgep833.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.40, i64 480, i1 false)
  %scevgep832.41 = getelementptr i8, i8* %malloccall433, i64 19680
  %scevgep833.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.41, i64 480, i1 false)
  %scevgep832.42 = getelementptr i8, i8* %malloccall433, i64 20160
  %scevgep833.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.42, i64 480, i1 false)
  %scevgep832.43 = getelementptr i8, i8* %malloccall433, i64 20640
  %scevgep833.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.43, i64 480, i1 false)
  %scevgep832.44 = getelementptr i8, i8* %malloccall433, i64 21120
  %scevgep833.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.44, i64 480, i1 false)
  %scevgep832.45 = getelementptr i8, i8* %malloccall433, i64 21600
  %scevgep833.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.45, i64 480, i1 false)
  %scevgep832.46 = getelementptr i8, i8* %malloccall433, i64 22080
  %scevgep833.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.46, i64 480, i1 false)
  %scevgep832.47 = getelementptr i8, i8* %malloccall433, i64 22560
  %scevgep833.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.47, i64 480, i1 false)
  %scevgep832.48 = getelementptr i8, i8* %malloccall433, i64 23040
  %scevgep833.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.48, i64 480, i1 false)
  %scevgep832.49 = getelementptr i8, i8* %malloccall433, i64 23520
  %scevgep833.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.49, i64 480, i1 false)
  %scevgep832.50 = getelementptr i8, i8* %malloccall433, i64 24000
  %scevgep833.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.50, i64 480, i1 false)
  %scevgep832.51 = getelementptr i8, i8* %malloccall433, i64 24480
  %scevgep833.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.51, i64 480, i1 false)
  %scevgep832.52 = getelementptr i8, i8* %malloccall433, i64 24960
  %scevgep833.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.52, i64 480, i1 false)
  %scevgep832.53 = getelementptr i8, i8* %malloccall433, i64 25440
  %scevgep833.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.53, i64 480, i1 false)
  %scevgep832.54 = getelementptr i8, i8* %malloccall433, i64 25920
  %scevgep833.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.54, i64 480, i1 false)
  %scevgep832.55 = getelementptr i8, i8* %malloccall433, i64 26400
  %scevgep833.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.55, i64 480, i1 false)
  %scevgep832.56 = getelementptr i8, i8* %malloccall433, i64 26880
  %scevgep833.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.56, i64 480, i1 false)
  %scevgep832.57 = getelementptr i8, i8* %malloccall433, i64 27360
  %scevgep833.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.57, i64 480, i1 false)
  %scevgep832.58 = getelementptr i8, i8* %malloccall433, i64 27840
  %scevgep833.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.58, i64 480, i1 false)
  %scevgep832.59 = getelementptr i8, i8* %malloccall433, i64 28320
  %scevgep833.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.59, i64 480, i1 false)
  %scevgep832.60 = getelementptr i8, i8* %malloccall433, i64 28800
  %scevgep833.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.60, i64 480, i1 false)
  %scevgep832.61 = getelementptr i8, i8* %malloccall433, i64 29280
  %scevgep833.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.61, i64 480, i1 false)
  %scevgep832.62 = getelementptr i8, i8* %malloccall433, i64 29760
  %scevgep833.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.62, i64 480, i1 false)
  %scevgep832.63 = getelementptr i8, i8* %malloccall433, i64 30240
  %scevgep833.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.63, i64 480, i1 false)
  %scevgep832.64 = getelementptr i8, i8* %malloccall433, i64 30720
  %scevgep833.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.64, i64 480, i1 false)
  %scevgep832.65 = getelementptr i8, i8* %malloccall433, i64 31200
  %scevgep833.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.65, i64 480, i1 false)
  %scevgep832.66 = getelementptr i8, i8* %malloccall433, i64 31680
  %scevgep833.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.66, i64 480, i1 false)
  %scevgep832.67 = getelementptr i8, i8* %malloccall433, i64 32160
  %scevgep833.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.67, i64 480, i1 false)
  %scevgep832.68 = getelementptr i8, i8* %malloccall433, i64 32640
  %scevgep833.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.68, i64 480, i1 false)
  %scevgep832.69 = getelementptr i8, i8* %malloccall433, i64 33120
  %scevgep833.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.69, i64 480, i1 false)
  %scevgep832.70 = getelementptr i8, i8* %malloccall433, i64 33600
  %scevgep833.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.70, i64 480, i1 false)
  %scevgep832.71 = getelementptr i8, i8* %malloccall433, i64 34080
  %scevgep833.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.71, i64 480, i1 false)
  %scevgep832.72 = getelementptr i8, i8* %malloccall433, i64 34560
  %scevgep833.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.72, i64 480, i1 false)
  %scevgep832.73 = getelementptr i8, i8* %malloccall433, i64 35040
  %scevgep833.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.73, i64 480, i1 false)
  %scevgep832.74 = getelementptr i8, i8* %malloccall433, i64 35520
  %scevgep833.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.74, i64 480, i1 false)
  %scevgep832.75 = getelementptr i8, i8* %malloccall433, i64 36000
  %scevgep833.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.75, i64 480, i1 false)
  %scevgep832.76 = getelementptr i8, i8* %malloccall433, i64 36480
  %scevgep833.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.76, i64 480, i1 false)
  %scevgep832.77 = getelementptr i8, i8* %malloccall433, i64 36960
  %scevgep833.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.77, i64 480, i1 false)
  %scevgep832.78 = getelementptr i8, i8* %malloccall433, i64 37440
  %scevgep833.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.78, i64 480, i1 false)
  %scevgep832.79 = getelementptr i8, i8* %malloccall433, i64 37920
  %scevgep833.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep833.79, i64 480, i1 false)
  br label %polly.loop_header555

polly.loop_header523:                             ; preds = %polly.loop_header523.preheader, %polly.loop_header523
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_header523 ], [ %polly.indvar526.ph, %polly.loop_header523.preheader ]
  %146 = shl nuw nsw i64 %polly.indvar526, 3
  %scevgep530 = getelementptr i8, i8* %scevgep529, i64 %146
  %scevgep530531 = bitcast i8* %scevgep530 to double*
  %_p_scalar_532 = load double, double* %scevgep530531, align 8, !alias.scope !82, !noalias !84
  %p_mul.i = fmul fast double %_p_scalar_532, 1.200000e+00
  store double %p_mul.i, double* %scevgep530531, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next527, %polly.indvar520
  br i1 %exitcond835.not, label %polly.loop_exit525, label %polly.loop_header523, !llvm.loop !89

polly.loop_header555:                             ; preds = %polly.loop_exit563, %polly.loop_header533.preheader
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header533.preheader ], [ %polly.indvar_next559, %polly.loop_exit563 ]
  %147 = shl nsw i64 %polly.indvar558, 2
  %148 = shl i64 %polly.indvar558, 5
  %149 = or i64 %147, 1
  %150 = shl i64 %149, 3
  %151 = or i64 %147, 2
  %152 = shl i64 %151, 3
  %153 = or i64 %147, 3
  %154 = shl i64 %153, 3
  br label %polly.loop_header561

polly.loop_exit563:                               ; preds = %polly.loop_exit575.3
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next559, 15
  br i1 %exitcond830.not, label %polly.loop_header555.1, label %polly.loop_header555

polly.loop_header561:                             ; preds = %polly.loop_exit575.3, %polly.loop_header555
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit575.3 ], [ 1, %polly.loop_header555 ]
  %polly.indvar564 = phi i64 [ %polly.indvar_next565, %polly.loop_exit575.3 ], [ 0, %polly.loop_header555 ]
  %polly.access.mul.Packed_MemRef_call2434582 = mul nuw nsw i64 %polly.indvar564, 60
  %155 = mul nuw nsw i64 %polly.indvar564, 480
  %156 = mul nuw nsw i64 %polly.indvar564, 640
  %polly.access.add.Packed_MemRef_call2434583 = add nuw nsw i64 %147, %polly.access.mul.Packed_MemRef_call2434582
  %polly.access.Packed_MemRef_call2434584 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583
  %_p_scalar_585 = load double, double* %polly.access.Packed_MemRef_call2434584, align 8
  %157 = add nuw nsw i64 %148, %155
  %scevgep590 = getelementptr i8, i8* %call1, i64 %157
  %scevgep590591 = bitcast i8* %scevgep590 to double*
  %_p_scalar_592 = load double, double* %scevgep590591, align 8, !alias.scope !85, !noalias !90
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_header573
  %polly.access.add.Packed_MemRef_call2434583.1 = add nuw nsw i64 %149, %polly.access.mul.Packed_MemRef_call2434582
  %polly.access.Packed_MemRef_call2434584.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1
  %_p_scalar_585.1 = load double, double* %polly.access.Packed_MemRef_call2434584.1, align 8
  %158 = add nuw nsw i64 %150, %155
  %scevgep590.1 = getelementptr i8, i8* %call1, i64 %158
  %scevgep590591.1 = bitcast i8* %scevgep590.1 to double*
  %_p_scalar_592.1 = load double, double* %scevgep590591.1, align 8, !alias.scope !85, !noalias !90
  br label %polly.loop_header573.1

polly.loop_header573:                             ; preds = %polly.loop_header573, %polly.loop_header561
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header561 ], [ %polly.indvar_next577, %polly.loop_header573 ]
  %159 = mul nuw nsw i64 %polly.indvar576, 480
  %160 = add nuw nsw i64 %159, %148
  %scevgep579 = getelementptr i8, i8* %call1, i64 %160
  %scevgep579580 = bitcast i8* %scevgep579 to double*
  %_p_scalar_581 = load double, double* %scevgep579580, align 8, !alias.scope !85, !noalias !90
  %p_mul27.i = fmul fast double %_p_scalar_585, %_p_scalar_581
  %polly.access.mul.Packed_MemRef_call2434586 = mul nuw nsw i64 %polly.indvar576, 60
  %polly.access.add.Packed_MemRef_call2434587 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586, %147
  %polly.access.Packed_MemRef_call2434588 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2434588, align 8
  %p_mul37.i = fmul fast double %_p_scalar_592, %_p_scalar_589
  %161 = shl nuw nsw i64 %polly.indvar576, 3
  %162 = add nuw nsw i64 %161, %156
  %scevgep593 = getelementptr i8, i8* %call, i64 %162
  %scevgep593594 = bitcast i8* %scevgep593 to double*
  %_p_scalar_595 = load double, double* %scevgep593594, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_595
  store double %p_add42.i, double* %scevgep593594, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next577, %indvars.iv825
  br i1 %exitcond827.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header734:                             ; preds = %entry, %polly.loop_exit742
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %entry ]
  %163 = mul nuw nsw i64 %polly.indvar737, 640
  %164 = trunc i64 %polly.indvar737 to i32
  %broadcast.splatinsert1023 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1024 = shufflevector <4 x i32> %broadcast.splatinsert1023, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %polly.loop_header734
  %index1015 = phi i64 [ 0, %polly.loop_header734 ], [ %index.next1016, %vector.body1013 ]
  %vec.ind1021 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734 ], [ %vec.ind.next1022, %vector.body1013 ]
  %165 = mul <4 x i32> %vec.ind1021, %broadcast.splat1024
  %166 = add <4 x i32> %165, <i32 3, i32 3, i32 3, i32 3>
  %167 = urem <4 x i32> %166, <i32 80, i32 80, i32 80, i32 80>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %170 = shl i64 %index1015, 3
  %171 = add nuw nsw i64 %170, %163
  %172 = getelementptr i8, i8* %call, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !91, !noalias !93
  %index.next1016 = add i64 %index1015, 4
  %vec.ind.next1022 = add <4 x i32> %vec.ind1021, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1016, 32
  br i1 %174, label %polly.loop_exit742, label %vector.body1013, !llvm.loop !96

polly.loop_exit742:                               ; preds = %vector.body1013
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next738, 32
  br i1 %exitcond855.not, label %polly.loop_header734.1, label %polly.loop_header734

polly.loop_header761:                             ; preds = %polly.loop_exit742.2.2, %polly.loop_exit769
  %polly.indvar764 = phi i64 [ %polly.indvar_next765, %polly.loop_exit769 ], [ 0, %polly.loop_exit742.2.2 ]
  %175 = mul nuw nsw i64 %polly.indvar764, 480
  %176 = trunc i64 %polly.indvar764 to i32
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header761
  %index1129 = phi i64 [ 0, %polly.loop_header761 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1135 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761 ], [ %vec.ind.next1136, %vector.body1127 ]
  %177 = mul <4 x i32> %vec.ind1135, %broadcast.splat1138
  %178 = add <4 x i32> %177, <i32 2, i32 2, i32 2, i32 2>
  %179 = urem <4 x i32> %178, <i32 60, i32 60, i32 60, i32 60>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %182 = shl i64 %index1129, 3
  %183 = add i64 %182, %175
  %184 = getelementptr i8, i8* %call2, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !95, !noalias !97
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1136 = add <4 x i32> %vec.ind1135, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next1130, 32
  br i1 %186, label %polly.loop_exit769, label %vector.body1127, !llvm.loop !98

polly.loop_exit769:                               ; preds = %vector.body1127
  %polly.indvar_next765 = add nuw nsw i64 %polly.indvar764, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next765, 32
  br i1 %exitcond846.not, label %polly.loop_header761.1, label %polly.loop_header761

polly.loop_header787:                             ; preds = %polly.loop_exit769.1.2, %polly.loop_exit795
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_exit769.1.2 ]
  %187 = mul nuw nsw i64 %polly.indvar790, 480
  %188 = trunc i64 %polly.indvar790 to i32
  %broadcast.splatinsert1215 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1216 = shufflevector <4 x i32> %broadcast.splatinsert1215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %polly.loop_header787
  %index1207 = phi i64 [ 0, %polly.loop_header787 ], [ %index.next1208, %vector.body1205 ]
  %vec.ind1213 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787 ], [ %vec.ind.next1214, %vector.body1205 ]
  %189 = mul <4 x i32> %vec.ind1213, %broadcast.splat1216
  %190 = add <4 x i32> %189, <i32 1, i32 1, i32 1, i32 1>
  %191 = urem <4 x i32> %190, <i32 80, i32 80, i32 80, i32 80>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %194 = shl i64 %index1207, 3
  %195 = add i64 %194, %187
  %196 = getelementptr i8, i8* %call1, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %193, <4 x double>* %197, align 8, !alias.scope !94, !noalias !99
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1214 = add <4 x i32> %vec.ind1213, <i32 4, i32 4, i32 4, i32 4>
  %198 = icmp eq i64 %index.next1208, 32
  br i1 %198, label %polly.loop_exit795, label %vector.body1205, !llvm.loop !100

polly.loop_exit795:                               ; preds = %vector.body1205
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond840.not, label %polly.loop_header787.1, label %polly.loop_header787

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_exit241
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_exit241 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %199 = mul nuw nsw i64 %polly.indvar242.1, 480
  %200 = add nuw nsw i64 %199, %100
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %200
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !66, !noalias !72
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.mul.Packed_MemRef_call2252.1 = mul nuw nsw i64 %polly.indvar242.1, 60
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.1, %99
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_258.1, %_p_scalar_255.1
  %201 = shl nuw nsw i64 %polly.indvar242.1, 3
  %202 = add nuw nsw i64 %201, %106
  %scevgep259.1 = getelementptr i8, i8* %call, i64 %202
  %scevgep259260.1 = bitcast i8* %scevgep259.1 to double*
  %_p_scalar_261.1 = load double, double* %scevgep259260.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_261.1
  store double %p_add42.i118.1, double* %scevgep259260.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next243.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.access.add.Packed_MemRef_call2249.2 = add nuw nsw i64 %101, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2250.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2
  %_p_scalar_251.2 = load double, double* %polly.access.Packed_MemRef_call2250.2, align 8
  %203 = add nuw nsw i64 %102, %105
  %scevgep256.2 = getelementptr i8, i8* %call1, i64 %203
  %scevgep256257.2 = bitcast i8* %scevgep256.2 to double*
  %_p_scalar_258.2 = load double, double* %scevgep256257.2, align 8, !alias.scope !66, !noalias !72
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_exit241.1
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_exit241.1 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %204 = mul nuw nsw i64 %polly.indvar242.2, 480
  %205 = add nuw nsw i64 %204, %102
  %scevgep245.2 = getelementptr i8, i8* %call1, i64 %205
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !66, !noalias !72
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_247.2
  %polly.access.mul.Packed_MemRef_call2252.2 = mul nuw nsw i64 %polly.indvar242.2, 60
  %polly.access.add.Packed_MemRef_call2253.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.2, %101
  %polly.access.Packed_MemRef_call2254.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2
  %_p_scalar_255.2 = load double, double* %polly.access.Packed_MemRef_call2254.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_258.2, %_p_scalar_255.2
  %206 = shl nuw nsw i64 %polly.indvar242.2, 3
  %207 = add nuw nsw i64 %206, %106
  %scevgep259.2 = getelementptr i8, i8* %call, i64 %207
  %scevgep259260.2 = bitcast i8* %scevgep259.2 to double*
  %_p_scalar_261.2 = load double, double* %scevgep259260.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_261.2
  store double %p_add42.i118.2, double* %scevgep259260.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next243.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.access.add.Packed_MemRef_call2249.3 = add nuw nsw i64 %103, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2250.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.3
  %_p_scalar_251.3 = load double, double* %polly.access.Packed_MemRef_call2250.3, align 8
  %208 = add nuw nsw i64 %104, %105
  %scevgep256.3 = getelementptr i8, i8* %call1, i64 %208
  %scevgep256257.3 = bitcast i8* %scevgep256.3 to double*
  %_p_scalar_258.3 = load double, double* %scevgep256257.3, align 8, !alias.scope !66, !noalias !72
  br label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_header239.3, %polly.loop_exit241.2
  %polly.indvar242.3 = phi i64 [ 0, %polly.loop_exit241.2 ], [ %polly.indvar_next243.3, %polly.loop_header239.3 ]
  %209 = mul nuw nsw i64 %polly.indvar242.3, 480
  %210 = add nuw nsw i64 %209, %104
  %scevgep245.3 = getelementptr i8, i8* %call1, i64 %210
  %scevgep245246.3 = bitcast i8* %scevgep245.3 to double*
  %_p_scalar_247.3 = load double, double* %scevgep245246.3, align 8, !alias.scope !66, !noalias !72
  %p_mul27.i112.3 = fmul fast double %_p_scalar_251.3, %_p_scalar_247.3
  %polly.access.mul.Packed_MemRef_call2252.3 = mul nuw nsw i64 %polly.indvar242.3, 60
  %polly.access.add.Packed_MemRef_call2253.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.3, %103
  %polly.access.Packed_MemRef_call2254.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.3
  %_p_scalar_255.3 = load double, double* %polly.access.Packed_MemRef_call2254.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_258.3, %_p_scalar_255.3
  %211 = shl nuw nsw i64 %polly.indvar242.3, 3
  %212 = add nuw nsw i64 %211, %106
  %scevgep259.3 = getelementptr i8, i8* %call, i64 %212
  %scevgep259260.3 = bitcast i8* %scevgep259.3 to double*
  %_p_scalar_261.3 = load double, double* %scevgep259260.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_261.3
  store double %p_add42.i118.3, double* %scevgep259260.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next243.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.3

polly.loop_exit241.3:                             ; preds = %polly.loop_header239.3
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next231, 64
  br i1 %exitcond805.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header221.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %213 = shl nsw i64 %polly.indvar224.1, 2
  %214 = shl i64 %polly.indvar224.1, 5
  %215 = or i64 %213, 1
  %216 = shl i64 %215, 3
  %217 = or i64 %213, 2
  %218 = shl i64 %217, 3
  %219 = or i64 %213, 3
  %220 = shl i64 %219, 3
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit241.3.1, %polly.loop_header221.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit241.3.1 ], [ 65, %polly.loop_header221.1 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit241.3.1 ], [ 0, %polly.loop_header221.1 ]
  %221 = add nuw nsw i64 %polly.indvar230.1, 64
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %221, 60
  %222 = mul nuw nsw i64 %221, 480
  %223 = mul nuw nsw i64 %221, 640
  %polly.access.add.Packed_MemRef_call2249.1859 = add nuw nsw i64 %213, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2250.1860 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1859
  %_p_scalar_251.1861 = load double, double* %polly.access.Packed_MemRef_call2250.1860, align 8
  %224 = add nuw nsw i64 %214, %222
  %scevgep256.1862 = getelementptr i8, i8* %call1, i64 %224
  %scevgep256257.1863 = bitcast i8* %scevgep256.1862 to double*
  %_p_scalar_258.1864 = load double, double* %scevgep256257.1863, align 8, !alias.scope !66, !noalias !72
  br label %polly.loop_header239.1883

polly.loop_header239.1883:                        ; preds = %polly.loop_header239.1883, %polly.loop_header227.1
  %polly.indvar242.1865 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next243.1881, %polly.loop_header239.1883 ]
  %225 = mul nuw nsw i64 %polly.indvar242.1865, 480
  %226 = add nuw nsw i64 %225, %214
  %scevgep245.1866 = getelementptr i8, i8* %call1, i64 %226
  %scevgep245246.1867 = bitcast i8* %scevgep245.1866 to double*
  %_p_scalar_247.1868 = load double, double* %scevgep245246.1867, align 8, !alias.scope !66, !noalias !72
  %p_mul27.i112.1869 = fmul fast double %_p_scalar_251.1861, %_p_scalar_247.1868
  %polly.access.mul.Packed_MemRef_call2252.1870 = mul nuw nsw i64 %polly.indvar242.1865, 60
  %polly.access.add.Packed_MemRef_call2253.1871 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.1870, %213
  %polly.access.Packed_MemRef_call2254.1872 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1871
  %_p_scalar_255.1873 = load double, double* %polly.access.Packed_MemRef_call2254.1872, align 8
  %p_mul37.i114.1874 = fmul fast double %_p_scalar_258.1864, %_p_scalar_255.1873
  %227 = shl nuw nsw i64 %polly.indvar242.1865, 3
  %228 = add nuw nsw i64 %227, %223
  %scevgep259.1875 = getelementptr i8, i8* %call, i64 %228
  %scevgep259260.1876 = bitcast i8* %scevgep259.1875 to double*
  %_p_scalar_261.1877 = load double, double* %scevgep259260.1876, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.1878 = fadd fast double %p_mul37.i114.1874, %p_mul27.i112.1869
  %p_reass.mul.i117.1879 = fmul fast double %p_reass.add.i116.1878, 1.500000e+00
  %p_add42.i118.1880 = fadd fast double %p_reass.mul.i117.1879, %_p_scalar_261.1877
  store double %p_add42.i118.1880, double* %scevgep259260.1876, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.1881 = add nuw nsw i64 %polly.indvar242.1865, 1
  %exitcond.1882.not = icmp eq i64 %polly.indvar_next243.1881, %indvars.iv.1
  br i1 %exitcond.1882.not, label %polly.loop_exit241.1884, label %polly.loop_header239.1883

polly.loop_exit241.1884:                          ; preds = %polly.loop_header239.1883
  %polly.access.add.Packed_MemRef_call2249.1.1 = add nuw nsw i64 %215, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2250.1.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1.1
  %_p_scalar_251.1.1 = load double, double* %polly.access.Packed_MemRef_call2250.1.1, align 8
  %229 = add nuw nsw i64 %216, %222
  %scevgep256.1.1 = getelementptr i8, i8* %call1, i64 %229
  %scevgep256257.1.1 = bitcast i8* %scevgep256.1.1 to double*
  %_p_scalar_258.1.1 = load double, double* %scevgep256257.1.1, align 8, !alias.scope !66, !noalias !72
  br label %polly.loop_header239.1.1

polly.loop_header239.1.1:                         ; preds = %polly.loop_header239.1.1, %polly.loop_exit241.1884
  %polly.indvar242.1.1 = phi i64 [ 0, %polly.loop_exit241.1884 ], [ %polly.indvar_next243.1.1, %polly.loop_header239.1.1 ]
  %230 = mul nuw nsw i64 %polly.indvar242.1.1, 480
  %231 = add nuw nsw i64 %230, %216
  %scevgep245.1.1 = getelementptr i8, i8* %call1, i64 %231
  %scevgep245246.1.1 = bitcast i8* %scevgep245.1.1 to double*
  %_p_scalar_247.1.1 = load double, double* %scevgep245246.1.1, align 8, !alias.scope !66, !noalias !72
  %p_mul27.i112.1.1 = fmul fast double %_p_scalar_251.1.1, %_p_scalar_247.1.1
  %polly.access.mul.Packed_MemRef_call2252.1.1 = mul nuw nsw i64 %polly.indvar242.1.1, 60
  %polly.access.add.Packed_MemRef_call2253.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.1.1, %215
  %polly.access.Packed_MemRef_call2254.1.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1.1
  %_p_scalar_255.1.1 = load double, double* %polly.access.Packed_MemRef_call2254.1.1, align 8
  %p_mul37.i114.1.1 = fmul fast double %_p_scalar_258.1.1, %_p_scalar_255.1.1
  %232 = shl nuw nsw i64 %polly.indvar242.1.1, 3
  %233 = add nuw nsw i64 %232, %223
  %scevgep259.1.1 = getelementptr i8, i8* %call, i64 %233
  %scevgep259260.1.1 = bitcast i8* %scevgep259.1.1 to double*
  %_p_scalar_261.1.1 = load double, double* %scevgep259260.1.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.1.1 = fadd fast double %p_mul37.i114.1.1, %p_mul27.i112.1.1
  %p_reass.mul.i117.1.1 = fmul fast double %p_reass.add.i116.1.1, 1.500000e+00
  %p_add42.i118.1.1 = fadd fast double %p_reass.mul.i117.1.1, %_p_scalar_261.1.1
  store double %p_add42.i118.1.1, double* %scevgep259260.1.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.1.1 = add nuw nsw i64 %polly.indvar242.1.1, 1
  %exitcond.1.1.not = icmp eq i64 %polly.indvar_next243.1.1, %indvars.iv.1
  br i1 %exitcond.1.1.not, label %polly.loop_exit241.1.1, label %polly.loop_header239.1.1

polly.loop_exit241.1.1:                           ; preds = %polly.loop_header239.1.1
  %polly.access.add.Packed_MemRef_call2249.2.1 = add nuw nsw i64 %217, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2250.2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2.1
  %_p_scalar_251.2.1 = load double, double* %polly.access.Packed_MemRef_call2250.2.1, align 8
  %234 = add nuw nsw i64 %218, %222
  %scevgep256.2.1 = getelementptr i8, i8* %call1, i64 %234
  %scevgep256257.2.1 = bitcast i8* %scevgep256.2.1 to double*
  %_p_scalar_258.2.1 = load double, double* %scevgep256257.2.1, align 8, !alias.scope !66, !noalias !72
  br label %polly.loop_header239.2.1

polly.loop_header239.2.1:                         ; preds = %polly.loop_header239.2.1, %polly.loop_exit241.1.1
  %polly.indvar242.2.1 = phi i64 [ 0, %polly.loop_exit241.1.1 ], [ %polly.indvar_next243.2.1, %polly.loop_header239.2.1 ]
  %235 = mul nuw nsw i64 %polly.indvar242.2.1, 480
  %236 = add nuw nsw i64 %235, %218
  %scevgep245.2.1 = getelementptr i8, i8* %call1, i64 %236
  %scevgep245246.2.1 = bitcast i8* %scevgep245.2.1 to double*
  %_p_scalar_247.2.1 = load double, double* %scevgep245246.2.1, align 8, !alias.scope !66, !noalias !72
  %p_mul27.i112.2.1 = fmul fast double %_p_scalar_251.2.1, %_p_scalar_247.2.1
  %polly.access.mul.Packed_MemRef_call2252.2.1 = mul nuw nsw i64 %polly.indvar242.2.1, 60
  %polly.access.add.Packed_MemRef_call2253.2.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.2.1, %217
  %polly.access.Packed_MemRef_call2254.2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2.1
  %_p_scalar_255.2.1 = load double, double* %polly.access.Packed_MemRef_call2254.2.1, align 8
  %p_mul37.i114.2.1 = fmul fast double %_p_scalar_258.2.1, %_p_scalar_255.2.1
  %237 = shl nuw nsw i64 %polly.indvar242.2.1, 3
  %238 = add nuw nsw i64 %237, %223
  %scevgep259.2.1 = getelementptr i8, i8* %call, i64 %238
  %scevgep259260.2.1 = bitcast i8* %scevgep259.2.1 to double*
  %_p_scalar_261.2.1 = load double, double* %scevgep259260.2.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.2.1 = fadd fast double %p_mul37.i114.2.1, %p_mul27.i112.2.1
  %p_reass.mul.i117.2.1 = fmul fast double %p_reass.add.i116.2.1, 1.500000e+00
  %p_add42.i118.2.1 = fadd fast double %p_reass.mul.i117.2.1, %_p_scalar_261.2.1
  store double %p_add42.i118.2.1, double* %scevgep259260.2.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.2.1 = add nuw nsw i64 %polly.indvar242.2.1, 1
  %exitcond.2.1.not = icmp eq i64 %polly.indvar_next243.2.1, %indvars.iv.1
  br i1 %exitcond.2.1.not, label %polly.loop_exit241.2.1, label %polly.loop_header239.2.1

polly.loop_exit241.2.1:                           ; preds = %polly.loop_header239.2.1
  %polly.access.add.Packed_MemRef_call2249.3.1 = add nuw nsw i64 %219, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2250.3.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.3.1
  %_p_scalar_251.3.1 = load double, double* %polly.access.Packed_MemRef_call2250.3.1, align 8
  %239 = add nuw nsw i64 %220, %222
  %scevgep256.3.1 = getelementptr i8, i8* %call1, i64 %239
  %scevgep256257.3.1 = bitcast i8* %scevgep256.3.1 to double*
  %_p_scalar_258.3.1 = load double, double* %scevgep256257.3.1, align 8, !alias.scope !66, !noalias !72
  br label %polly.loop_header239.3.1

polly.loop_header239.3.1:                         ; preds = %polly.loop_header239.3.1, %polly.loop_exit241.2.1
  %polly.indvar242.3.1 = phi i64 [ 0, %polly.loop_exit241.2.1 ], [ %polly.indvar_next243.3.1, %polly.loop_header239.3.1 ]
  %240 = mul nuw nsw i64 %polly.indvar242.3.1, 480
  %241 = add nuw nsw i64 %240, %220
  %scevgep245.3.1 = getelementptr i8, i8* %call1, i64 %241
  %scevgep245246.3.1 = bitcast i8* %scevgep245.3.1 to double*
  %_p_scalar_247.3.1 = load double, double* %scevgep245246.3.1, align 8, !alias.scope !66, !noalias !72
  %p_mul27.i112.3.1 = fmul fast double %_p_scalar_251.3.1, %_p_scalar_247.3.1
  %polly.access.mul.Packed_MemRef_call2252.3.1 = mul nuw nsw i64 %polly.indvar242.3.1, 60
  %polly.access.add.Packed_MemRef_call2253.3.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.3.1, %219
  %polly.access.Packed_MemRef_call2254.3.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.3.1
  %_p_scalar_255.3.1 = load double, double* %polly.access.Packed_MemRef_call2254.3.1, align 8
  %p_mul37.i114.3.1 = fmul fast double %_p_scalar_258.3.1, %_p_scalar_255.3.1
  %242 = shl nuw nsw i64 %polly.indvar242.3.1, 3
  %243 = add nuw nsw i64 %242, %223
  %scevgep259.3.1 = getelementptr i8, i8* %call, i64 %243
  %scevgep259260.3.1 = bitcast i8* %scevgep259.3.1 to double*
  %_p_scalar_261.3.1 = load double, double* %scevgep259260.3.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.3.1 = fadd fast double %p_mul37.i114.3.1, %p_mul27.i112.3.1
  %p_reass.mul.i117.3.1 = fmul fast double %p_reass.add.i116.3.1, 1.500000e+00
  %p_add42.i118.3.1 = fadd fast double %p_reass.mul.i117.3.1, %_p_scalar_261.3.1
  store double %p_add42.i118.3.1, double* %scevgep259260.3.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.3.1 = add nuw nsw i64 %polly.indvar242.3.1, 1
  %exitcond.3.1.not = icmp eq i64 %polly.indvar_next243.3.1, %indvars.iv.1
  br i1 %exitcond.3.1.not, label %polly.loop_exit241.3.1, label %polly.loop_header239.3.1

polly.loop_exit241.3.1:                           ; preds = %polly.loop_header239.3.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond805.1.not = icmp eq i64 %polly.indvar_next231.1, 16
  br i1 %exitcond805.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit241.3.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %exitcond806.1.not = icmp eq i64 %polly.indvar_next225.1, 15
  br i1 %exitcond806.1.not, label %polly.loop_exit223.1, label %polly.loop_header221.1

polly.loop_exit223.1:                             ; preds = %polly.loop_exit229.1
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header406.1:                           ; preds = %polly.loop_header406.1, %polly.loop_exit408
  %polly.indvar409.1 = phi i64 [ 0, %polly.loop_exit408 ], [ %polly.indvar_next410.1, %polly.loop_header406.1 ]
  %244 = mul nuw nsw i64 %polly.indvar409.1, 480
  %245 = add nuw nsw i64 %244, %125
  %scevgep412.1 = getelementptr i8, i8* %call1, i64 %245
  %scevgep412413.1 = bitcast i8* %scevgep412.1 to double*
  %_p_scalar_414.1 = load double, double* %scevgep412413.1, align 8, !alias.scope !76, !noalias !81
  %p_mul27.i73.1 = fmul fast double %_p_scalar_418.1, %_p_scalar_414.1
  %polly.access.mul.Packed_MemRef_call2267419.1 = mul nuw nsw i64 %polly.indvar409.1, 60
  %polly.access.add.Packed_MemRef_call2267420.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.1, %124
  %polly.access.Packed_MemRef_call2267421.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1
  %_p_scalar_422.1 = load double, double* %polly.access.Packed_MemRef_call2267421.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_425.1, %_p_scalar_422.1
  %246 = shl nuw nsw i64 %polly.indvar409.1, 3
  %247 = add nuw nsw i64 %246, %131
  %scevgep426.1 = getelementptr i8, i8* %call, i64 %247
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_428.1
  store double %p_add42.i79.1, double* %scevgep426427.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar_next410.1, %indvars.iv813
  br i1 %exitcond815.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.1

polly.loop_exit408.1:                             ; preds = %polly.loop_header406.1
  %polly.access.add.Packed_MemRef_call2267416.2 = add nuw nsw i64 %126, %polly.access.mul.Packed_MemRef_call2267415
  %polly.access.Packed_MemRef_call2267417.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.2
  %_p_scalar_418.2 = load double, double* %polly.access.Packed_MemRef_call2267417.2, align 8
  %248 = add nuw nsw i64 %127, %130
  %scevgep423.2 = getelementptr i8, i8* %call1, i64 %248
  %scevgep423424.2 = bitcast i8* %scevgep423.2 to double*
  %_p_scalar_425.2 = load double, double* %scevgep423424.2, align 8, !alias.scope !76, !noalias !81
  br label %polly.loop_header406.2

polly.loop_header406.2:                           ; preds = %polly.loop_header406.2, %polly.loop_exit408.1
  %polly.indvar409.2 = phi i64 [ 0, %polly.loop_exit408.1 ], [ %polly.indvar_next410.2, %polly.loop_header406.2 ]
  %249 = mul nuw nsw i64 %polly.indvar409.2, 480
  %250 = add nuw nsw i64 %249, %127
  %scevgep412.2 = getelementptr i8, i8* %call1, i64 %250
  %scevgep412413.2 = bitcast i8* %scevgep412.2 to double*
  %_p_scalar_414.2 = load double, double* %scevgep412413.2, align 8, !alias.scope !76, !noalias !81
  %p_mul27.i73.2 = fmul fast double %_p_scalar_418.2, %_p_scalar_414.2
  %polly.access.mul.Packed_MemRef_call2267419.2 = mul nuw nsw i64 %polly.indvar409.2, 60
  %polly.access.add.Packed_MemRef_call2267420.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.2, %126
  %polly.access.Packed_MemRef_call2267421.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.2
  %_p_scalar_422.2 = load double, double* %polly.access.Packed_MemRef_call2267421.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_425.2, %_p_scalar_422.2
  %251 = shl nuw nsw i64 %polly.indvar409.2, 3
  %252 = add nuw nsw i64 %251, %131
  %scevgep426.2 = getelementptr i8, i8* %call, i64 %252
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_428.2
  store double %p_add42.i79.2, double* %scevgep426427.2, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410.2 = add nuw nsw i64 %polly.indvar409.2, 1
  %exitcond815.2.not = icmp eq i64 %polly.indvar_next410.2, %indvars.iv813
  br i1 %exitcond815.2.not, label %polly.loop_exit408.2, label %polly.loop_header406.2

polly.loop_exit408.2:                             ; preds = %polly.loop_header406.2
  %polly.access.add.Packed_MemRef_call2267416.3 = add nuw nsw i64 %128, %polly.access.mul.Packed_MemRef_call2267415
  %polly.access.Packed_MemRef_call2267417.3 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.3
  %_p_scalar_418.3 = load double, double* %polly.access.Packed_MemRef_call2267417.3, align 8
  %253 = add nuw nsw i64 %129, %130
  %scevgep423.3 = getelementptr i8, i8* %call1, i64 %253
  %scevgep423424.3 = bitcast i8* %scevgep423.3 to double*
  %_p_scalar_425.3 = load double, double* %scevgep423424.3, align 8, !alias.scope !76, !noalias !81
  br label %polly.loop_header406.3

polly.loop_header406.3:                           ; preds = %polly.loop_header406.3, %polly.loop_exit408.2
  %polly.indvar409.3 = phi i64 [ 0, %polly.loop_exit408.2 ], [ %polly.indvar_next410.3, %polly.loop_header406.3 ]
  %254 = mul nuw nsw i64 %polly.indvar409.3, 480
  %255 = add nuw nsw i64 %254, %129
  %scevgep412.3 = getelementptr i8, i8* %call1, i64 %255
  %scevgep412413.3 = bitcast i8* %scevgep412.3 to double*
  %_p_scalar_414.3 = load double, double* %scevgep412413.3, align 8, !alias.scope !76, !noalias !81
  %p_mul27.i73.3 = fmul fast double %_p_scalar_418.3, %_p_scalar_414.3
  %polly.access.mul.Packed_MemRef_call2267419.3 = mul nuw nsw i64 %polly.indvar409.3, 60
  %polly.access.add.Packed_MemRef_call2267420.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.3, %128
  %polly.access.Packed_MemRef_call2267421.3 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.3
  %_p_scalar_422.3 = load double, double* %polly.access.Packed_MemRef_call2267421.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_425.3, %_p_scalar_422.3
  %256 = shl nuw nsw i64 %polly.indvar409.3, 3
  %257 = add nuw nsw i64 %256, %131
  %scevgep426.3 = getelementptr i8, i8* %call, i64 %257
  %scevgep426427.3 = bitcast i8* %scevgep426.3 to double*
  %_p_scalar_428.3 = load double, double* %scevgep426427.3, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_428.3
  store double %p_add42.i79.3, double* %scevgep426427.3, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410.3 = add nuw nsw i64 %polly.indvar409.3, 1
  %exitcond815.3.not = icmp eq i64 %polly.indvar_next410.3, %indvars.iv813
  br i1 %exitcond815.3.not, label %polly.loop_exit408.3, label %polly.loop_header406.3

polly.loop_exit408.3:                             ; preds = %polly.loop_header406.3
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next814 = add nuw nsw i64 %indvars.iv813, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next398, 64
  br i1 %exitcond817.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header388.1:                           ; preds = %polly.loop_exit396, %polly.loop_exit396.1
  %polly.indvar391.1 = phi i64 [ %polly.indvar_next392.1, %polly.loop_exit396.1 ], [ 0, %polly.loop_exit396 ]
  %258 = shl nsw i64 %polly.indvar391.1, 2
  %259 = shl i64 %polly.indvar391.1, 5
  %260 = or i64 %258, 1
  %261 = shl i64 %260, 3
  %262 = or i64 %258, 2
  %263 = shl i64 %262, 3
  %264 = or i64 %258, 3
  %265 = shl i64 %264, 3
  br label %polly.loop_header394.1

polly.loop_header394.1:                           ; preds = %polly.loop_exit408.3.1, %polly.loop_header388.1
  %indvars.iv813.1 = phi i64 [ %indvars.iv.next814.1, %polly.loop_exit408.3.1 ], [ 65, %polly.loop_header388.1 ]
  %polly.indvar397.1 = phi i64 [ %polly.indvar_next398.1, %polly.loop_exit408.3.1 ], [ 0, %polly.loop_header388.1 ]
  %266 = add nuw nsw i64 %polly.indvar397.1, 64
  %polly.access.mul.Packed_MemRef_call2267415.1 = mul nuw nsw i64 %266, 60
  %267 = mul nuw nsw i64 %266, 480
  %268 = mul nuw nsw i64 %266, 640
  %polly.access.add.Packed_MemRef_call2267416.1885 = add nuw nsw i64 %258, %polly.access.mul.Packed_MemRef_call2267415.1
  %polly.access.Packed_MemRef_call2267417.1886 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1885
  %_p_scalar_418.1887 = load double, double* %polly.access.Packed_MemRef_call2267417.1886, align 8
  %269 = add nuw nsw i64 %259, %267
  %scevgep423.1888 = getelementptr i8, i8* %call1, i64 %269
  %scevgep423424.1889 = bitcast i8* %scevgep423.1888 to double*
  %_p_scalar_425.1890 = load double, double* %scevgep423424.1889, align 8, !alias.scope !76, !noalias !81
  br label %polly.loop_header406.1909

polly.loop_header406.1909:                        ; preds = %polly.loop_header406.1909, %polly.loop_header394.1
  %polly.indvar409.1891 = phi i64 [ 0, %polly.loop_header394.1 ], [ %polly.indvar_next410.1907, %polly.loop_header406.1909 ]
  %270 = mul nuw nsw i64 %polly.indvar409.1891, 480
  %271 = add nuw nsw i64 %270, %259
  %scevgep412.1892 = getelementptr i8, i8* %call1, i64 %271
  %scevgep412413.1893 = bitcast i8* %scevgep412.1892 to double*
  %_p_scalar_414.1894 = load double, double* %scevgep412413.1893, align 8, !alias.scope !76, !noalias !81
  %p_mul27.i73.1895 = fmul fast double %_p_scalar_418.1887, %_p_scalar_414.1894
  %polly.access.mul.Packed_MemRef_call2267419.1896 = mul nuw nsw i64 %polly.indvar409.1891, 60
  %polly.access.add.Packed_MemRef_call2267420.1897 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.1896, %258
  %polly.access.Packed_MemRef_call2267421.1898 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1897
  %_p_scalar_422.1899 = load double, double* %polly.access.Packed_MemRef_call2267421.1898, align 8
  %p_mul37.i75.1900 = fmul fast double %_p_scalar_425.1890, %_p_scalar_422.1899
  %272 = shl nuw nsw i64 %polly.indvar409.1891, 3
  %273 = add nuw nsw i64 %272, %268
  %scevgep426.1901 = getelementptr i8, i8* %call, i64 %273
  %scevgep426427.1902 = bitcast i8* %scevgep426.1901 to double*
  %_p_scalar_428.1903 = load double, double* %scevgep426427.1902, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.1904 = fadd fast double %p_mul37.i75.1900, %p_mul27.i73.1895
  %p_reass.mul.i78.1905 = fmul fast double %p_reass.add.i77.1904, 1.500000e+00
  %p_add42.i79.1906 = fadd fast double %p_reass.mul.i78.1905, %_p_scalar_428.1903
  store double %p_add42.i79.1906, double* %scevgep426427.1902, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410.1907 = add nuw nsw i64 %polly.indvar409.1891, 1
  %exitcond815.1908.not = icmp eq i64 %polly.indvar_next410.1907, %indvars.iv813.1
  br i1 %exitcond815.1908.not, label %polly.loop_exit408.1910, label %polly.loop_header406.1909

polly.loop_exit408.1910:                          ; preds = %polly.loop_header406.1909
  %polly.access.add.Packed_MemRef_call2267416.1.1 = add nuw nsw i64 %260, %polly.access.mul.Packed_MemRef_call2267415.1
  %polly.access.Packed_MemRef_call2267417.1.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1.1
  %_p_scalar_418.1.1 = load double, double* %polly.access.Packed_MemRef_call2267417.1.1, align 8
  %274 = add nuw nsw i64 %261, %267
  %scevgep423.1.1 = getelementptr i8, i8* %call1, i64 %274
  %scevgep423424.1.1 = bitcast i8* %scevgep423.1.1 to double*
  %_p_scalar_425.1.1 = load double, double* %scevgep423424.1.1, align 8, !alias.scope !76, !noalias !81
  br label %polly.loop_header406.1.1

polly.loop_header406.1.1:                         ; preds = %polly.loop_header406.1.1, %polly.loop_exit408.1910
  %polly.indvar409.1.1 = phi i64 [ 0, %polly.loop_exit408.1910 ], [ %polly.indvar_next410.1.1, %polly.loop_header406.1.1 ]
  %275 = mul nuw nsw i64 %polly.indvar409.1.1, 480
  %276 = add nuw nsw i64 %275, %261
  %scevgep412.1.1 = getelementptr i8, i8* %call1, i64 %276
  %scevgep412413.1.1 = bitcast i8* %scevgep412.1.1 to double*
  %_p_scalar_414.1.1 = load double, double* %scevgep412413.1.1, align 8, !alias.scope !76, !noalias !81
  %p_mul27.i73.1.1 = fmul fast double %_p_scalar_418.1.1, %_p_scalar_414.1.1
  %polly.access.mul.Packed_MemRef_call2267419.1.1 = mul nuw nsw i64 %polly.indvar409.1.1, 60
  %polly.access.add.Packed_MemRef_call2267420.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.1.1, %260
  %polly.access.Packed_MemRef_call2267421.1.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1.1
  %_p_scalar_422.1.1 = load double, double* %polly.access.Packed_MemRef_call2267421.1.1, align 8
  %p_mul37.i75.1.1 = fmul fast double %_p_scalar_425.1.1, %_p_scalar_422.1.1
  %277 = shl nuw nsw i64 %polly.indvar409.1.1, 3
  %278 = add nuw nsw i64 %277, %268
  %scevgep426.1.1 = getelementptr i8, i8* %call, i64 %278
  %scevgep426427.1.1 = bitcast i8* %scevgep426.1.1 to double*
  %_p_scalar_428.1.1 = load double, double* %scevgep426427.1.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.1.1 = fadd fast double %p_mul37.i75.1.1, %p_mul27.i73.1.1
  %p_reass.mul.i78.1.1 = fmul fast double %p_reass.add.i77.1.1, 1.500000e+00
  %p_add42.i79.1.1 = fadd fast double %p_reass.mul.i78.1.1, %_p_scalar_428.1.1
  store double %p_add42.i79.1.1, double* %scevgep426427.1.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410.1.1 = add nuw nsw i64 %polly.indvar409.1.1, 1
  %exitcond815.1.1.not = icmp eq i64 %polly.indvar_next410.1.1, %indvars.iv813.1
  br i1 %exitcond815.1.1.not, label %polly.loop_exit408.1.1, label %polly.loop_header406.1.1

polly.loop_exit408.1.1:                           ; preds = %polly.loop_header406.1.1
  %polly.access.add.Packed_MemRef_call2267416.2.1 = add nuw nsw i64 %262, %polly.access.mul.Packed_MemRef_call2267415.1
  %polly.access.Packed_MemRef_call2267417.2.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.2.1
  %_p_scalar_418.2.1 = load double, double* %polly.access.Packed_MemRef_call2267417.2.1, align 8
  %279 = add nuw nsw i64 %263, %267
  %scevgep423.2.1 = getelementptr i8, i8* %call1, i64 %279
  %scevgep423424.2.1 = bitcast i8* %scevgep423.2.1 to double*
  %_p_scalar_425.2.1 = load double, double* %scevgep423424.2.1, align 8, !alias.scope !76, !noalias !81
  br label %polly.loop_header406.2.1

polly.loop_header406.2.1:                         ; preds = %polly.loop_header406.2.1, %polly.loop_exit408.1.1
  %polly.indvar409.2.1 = phi i64 [ 0, %polly.loop_exit408.1.1 ], [ %polly.indvar_next410.2.1, %polly.loop_header406.2.1 ]
  %280 = mul nuw nsw i64 %polly.indvar409.2.1, 480
  %281 = add nuw nsw i64 %280, %263
  %scevgep412.2.1 = getelementptr i8, i8* %call1, i64 %281
  %scevgep412413.2.1 = bitcast i8* %scevgep412.2.1 to double*
  %_p_scalar_414.2.1 = load double, double* %scevgep412413.2.1, align 8, !alias.scope !76, !noalias !81
  %p_mul27.i73.2.1 = fmul fast double %_p_scalar_418.2.1, %_p_scalar_414.2.1
  %polly.access.mul.Packed_MemRef_call2267419.2.1 = mul nuw nsw i64 %polly.indvar409.2.1, 60
  %polly.access.add.Packed_MemRef_call2267420.2.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.2.1, %262
  %polly.access.Packed_MemRef_call2267421.2.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.2.1
  %_p_scalar_422.2.1 = load double, double* %polly.access.Packed_MemRef_call2267421.2.1, align 8
  %p_mul37.i75.2.1 = fmul fast double %_p_scalar_425.2.1, %_p_scalar_422.2.1
  %282 = shl nuw nsw i64 %polly.indvar409.2.1, 3
  %283 = add nuw nsw i64 %282, %268
  %scevgep426.2.1 = getelementptr i8, i8* %call, i64 %283
  %scevgep426427.2.1 = bitcast i8* %scevgep426.2.1 to double*
  %_p_scalar_428.2.1 = load double, double* %scevgep426427.2.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.2.1 = fadd fast double %p_mul37.i75.2.1, %p_mul27.i73.2.1
  %p_reass.mul.i78.2.1 = fmul fast double %p_reass.add.i77.2.1, 1.500000e+00
  %p_add42.i79.2.1 = fadd fast double %p_reass.mul.i78.2.1, %_p_scalar_428.2.1
  store double %p_add42.i79.2.1, double* %scevgep426427.2.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410.2.1 = add nuw nsw i64 %polly.indvar409.2.1, 1
  %exitcond815.2.1.not = icmp eq i64 %polly.indvar_next410.2.1, %indvars.iv813.1
  br i1 %exitcond815.2.1.not, label %polly.loop_exit408.2.1, label %polly.loop_header406.2.1

polly.loop_exit408.2.1:                           ; preds = %polly.loop_header406.2.1
  %polly.access.add.Packed_MemRef_call2267416.3.1 = add nuw nsw i64 %264, %polly.access.mul.Packed_MemRef_call2267415.1
  %polly.access.Packed_MemRef_call2267417.3.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.3.1
  %_p_scalar_418.3.1 = load double, double* %polly.access.Packed_MemRef_call2267417.3.1, align 8
  %284 = add nuw nsw i64 %265, %267
  %scevgep423.3.1 = getelementptr i8, i8* %call1, i64 %284
  %scevgep423424.3.1 = bitcast i8* %scevgep423.3.1 to double*
  %_p_scalar_425.3.1 = load double, double* %scevgep423424.3.1, align 8, !alias.scope !76, !noalias !81
  br label %polly.loop_header406.3.1

polly.loop_header406.3.1:                         ; preds = %polly.loop_header406.3.1, %polly.loop_exit408.2.1
  %polly.indvar409.3.1 = phi i64 [ 0, %polly.loop_exit408.2.1 ], [ %polly.indvar_next410.3.1, %polly.loop_header406.3.1 ]
  %285 = mul nuw nsw i64 %polly.indvar409.3.1, 480
  %286 = add nuw nsw i64 %285, %265
  %scevgep412.3.1 = getelementptr i8, i8* %call1, i64 %286
  %scevgep412413.3.1 = bitcast i8* %scevgep412.3.1 to double*
  %_p_scalar_414.3.1 = load double, double* %scevgep412413.3.1, align 8, !alias.scope !76, !noalias !81
  %p_mul27.i73.3.1 = fmul fast double %_p_scalar_418.3.1, %_p_scalar_414.3.1
  %polly.access.mul.Packed_MemRef_call2267419.3.1 = mul nuw nsw i64 %polly.indvar409.3.1, 60
  %polly.access.add.Packed_MemRef_call2267420.3.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.3.1, %264
  %polly.access.Packed_MemRef_call2267421.3.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.3.1
  %_p_scalar_422.3.1 = load double, double* %polly.access.Packed_MemRef_call2267421.3.1, align 8
  %p_mul37.i75.3.1 = fmul fast double %_p_scalar_425.3.1, %_p_scalar_422.3.1
  %287 = shl nuw nsw i64 %polly.indvar409.3.1, 3
  %288 = add nuw nsw i64 %287, %268
  %scevgep426.3.1 = getelementptr i8, i8* %call, i64 %288
  %scevgep426427.3.1 = bitcast i8* %scevgep426.3.1 to double*
  %_p_scalar_428.3.1 = load double, double* %scevgep426427.3.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.3.1 = fadd fast double %p_mul37.i75.3.1, %p_mul27.i73.3.1
  %p_reass.mul.i78.3.1 = fmul fast double %p_reass.add.i77.3.1, 1.500000e+00
  %p_add42.i79.3.1 = fadd fast double %p_reass.mul.i78.3.1, %_p_scalar_428.3.1
  store double %p_add42.i79.3.1, double* %scevgep426427.3.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next410.3.1 = add nuw nsw i64 %polly.indvar409.3.1, 1
  %exitcond815.3.1.not = icmp eq i64 %polly.indvar_next410.3.1, %indvars.iv813.1
  br i1 %exitcond815.3.1.not, label %polly.loop_exit408.3.1, label %polly.loop_header406.3.1

polly.loop_exit408.3.1:                           ; preds = %polly.loop_header406.3.1
  %polly.indvar_next398.1 = add nuw nsw i64 %polly.indvar397.1, 1
  %indvars.iv.next814.1 = add nuw nsw i64 %indvars.iv813.1, 1
  %exitcond817.1.not = icmp eq i64 %polly.indvar_next398.1, 16
  br i1 %exitcond817.1.not, label %polly.loop_exit396.1, label %polly.loop_header394.1

polly.loop_exit396.1:                             ; preds = %polly.loop_exit408.3.1
  %polly.indvar_next392.1 = add nuw nsw i64 %polly.indvar391.1, 1
  %exitcond818.1.not = icmp eq i64 %polly.indvar_next392.1, 15
  br i1 %exitcond818.1.not, label %polly.loop_exit390.1, label %polly.loop_header388.1

polly.loop_exit390.1:                             ; preds = %polly.loop_exit396.1
  tail call void @free(i8* nonnull %malloccall266)
  br label %kernel_syr2k.exit90

polly.loop_header573.1:                           ; preds = %polly.loop_header573.1, %polly.loop_exit575
  %polly.indvar576.1 = phi i64 [ 0, %polly.loop_exit575 ], [ %polly.indvar_next577.1, %polly.loop_header573.1 ]
  %289 = mul nuw nsw i64 %polly.indvar576.1, 480
  %290 = add nuw nsw i64 %289, %150
  %scevgep579.1 = getelementptr i8, i8* %call1, i64 %290
  %scevgep579580.1 = bitcast i8* %scevgep579.1 to double*
  %_p_scalar_581.1 = load double, double* %scevgep579580.1, align 8, !alias.scope !85, !noalias !90
  %p_mul27.i.1 = fmul fast double %_p_scalar_585.1, %_p_scalar_581.1
  %polly.access.mul.Packed_MemRef_call2434586.1 = mul nuw nsw i64 %polly.indvar576.1, 60
  %polly.access.add.Packed_MemRef_call2434587.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.1, %149
  %polly.access.Packed_MemRef_call2434588.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2434588.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_592.1, %_p_scalar_589.1
  %291 = shl nuw nsw i64 %polly.indvar576.1, 3
  %292 = add nuw nsw i64 %291, %156
  %scevgep593.1 = getelementptr i8, i8* %call, i64 %292
  %scevgep593594.1 = bitcast i8* %scevgep593.1 to double*
  %_p_scalar_595.1 = load double, double* %scevgep593594.1, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_595.1
  store double %p_add42.i.1, double* %scevgep593594.1, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577.1 = add nuw nsw i64 %polly.indvar576.1, 1
  %exitcond827.1.not = icmp eq i64 %polly.indvar_next577.1, %indvars.iv825
  br i1 %exitcond827.1.not, label %polly.loop_exit575.1, label %polly.loop_header573.1

polly.loop_exit575.1:                             ; preds = %polly.loop_header573.1
  %polly.access.add.Packed_MemRef_call2434583.2 = add nuw nsw i64 %151, %polly.access.mul.Packed_MemRef_call2434582
  %polly.access.Packed_MemRef_call2434584.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.2
  %_p_scalar_585.2 = load double, double* %polly.access.Packed_MemRef_call2434584.2, align 8
  %293 = add nuw nsw i64 %152, %155
  %scevgep590.2 = getelementptr i8, i8* %call1, i64 %293
  %scevgep590591.2 = bitcast i8* %scevgep590.2 to double*
  %_p_scalar_592.2 = load double, double* %scevgep590591.2, align 8, !alias.scope !85, !noalias !90
  br label %polly.loop_header573.2

polly.loop_header573.2:                           ; preds = %polly.loop_header573.2, %polly.loop_exit575.1
  %polly.indvar576.2 = phi i64 [ 0, %polly.loop_exit575.1 ], [ %polly.indvar_next577.2, %polly.loop_header573.2 ]
  %294 = mul nuw nsw i64 %polly.indvar576.2, 480
  %295 = add nuw nsw i64 %294, %152
  %scevgep579.2 = getelementptr i8, i8* %call1, i64 %295
  %scevgep579580.2 = bitcast i8* %scevgep579.2 to double*
  %_p_scalar_581.2 = load double, double* %scevgep579580.2, align 8, !alias.scope !85, !noalias !90
  %p_mul27.i.2 = fmul fast double %_p_scalar_585.2, %_p_scalar_581.2
  %polly.access.mul.Packed_MemRef_call2434586.2 = mul nuw nsw i64 %polly.indvar576.2, 60
  %polly.access.add.Packed_MemRef_call2434587.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.2, %151
  %polly.access.Packed_MemRef_call2434588.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.2
  %_p_scalar_589.2 = load double, double* %polly.access.Packed_MemRef_call2434588.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_592.2, %_p_scalar_589.2
  %296 = shl nuw nsw i64 %polly.indvar576.2, 3
  %297 = add nuw nsw i64 %296, %156
  %scevgep593.2 = getelementptr i8, i8* %call, i64 %297
  %scevgep593594.2 = bitcast i8* %scevgep593.2 to double*
  %_p_scalar_595.2 = load double, double* %scevgep593594.2, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_595.2
  store double %p_add42.i.2, double* %scevgep593594.2, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577.2 = add nuw nsw i64 %polly.indvar576.2, 1
  %exitcond827.2.not = icmp eq i64 %polly.indvar_next577.2, %indvars.iv825
  br i1 %exitcond827.2.not, label %polly.loop_exit575.2, label %polly.loop_header573.2

polly.loop_exit575.2:                             ; preds = %polly.loop_header573.2
  %polly.access.add.Packed_MemRef_call2434583.3 = add nuw nsw i64 %153, %polly.access.mul.Packed_MemRef_call2434582
  %polly.access.Packed_MemRef_call2434584.3 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.3
  %_p_scalar_585.3 = load double, double* %polly.access.Packed_MemRef_call2434584.3, align 8
  %298 = add nuw nsw i64 %154, %155
  %scevgep590.3 = getelementptr i8, i8* %call1, i64 %298
  %scevgep590591.3 = bitcast i8* %scevgep590.3 to double*
  %_p_scalar_592.3 = load double, double* %scevgep590591.3, align 8, !alias.scope !85, !noalias !90
  br label %polly.loop_header573.3

polly.loop_header573.3:                           ; preds = %polly.loop_header573.3, %polly.loop_exit575.2
  %polly.indvar576.3 = phi i64 [ 0, %polly.loop_exit575.2 ], [ %polly.indvar_next577.3, %polly.loop_header573.3 ]
  %299 = mul nuw nsw i64 %polly.indvar576.3, 480
  %300 = add nuw nsw i64 %299, %154
  %scevgep579.3 = getelementptr i8, i8* %call1, i64 %300
  %scevgep579580.3 = bitcast i8* %scevgep579.3 to double*
  %_p_scalar_581.3 = load double, double* %scevgep579580.3, align 8, !alias.scope !85, !noalias !90
  %p_mul27.i.3 = fmul fast double %_p_scalar_585.3, %_p_scalar_581.3
  %polly.access.mul.Packed_MemRef_call2434586.3 = mul nuw nsw i64 %polly.indvar576.3, 60
  %polly.access.add.Packed_MemRef_call2434587.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.3, %153
  %polly.access.Packed_MemRef_call2434588.3 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.3
  %_p_scalar_589.3 = load double, double* %polly.access.Packed_MemRef_call2434588.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_592.3, %_p_scalar_589.3
  %301 = shl nuw nsw i64 %polly.indvar576.3, 3
  %302 = add nuw nsw i64 %301, %156
  %scevgep593.3 = getelementptr i8, i8* %call, i64 %302
  %scevgep593594.3 = bitcast i8* %scevgep593.3 to double*
  %_p_scalar_595.3 = load double, double* %scevgep593594.3, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_595.3
  store double %p_add42.i.3, double* %scevgep593594.3, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577.3 = add nuw nsw i64 %polly.indvar576.3, 1
  %exitcond827.3.not = icmp eq i64 %polly.indvar_next577.3, %indvars.iv825
  br i1 %exitcond827.3.not, label %polly.loop_exit575.3, label %polly.loop_header573.3

polly.loop_exit575.3:                             ; preds = %polly.loop_header573.3
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next565, 64
  br i1 %exitcond829.not, label %polly.loop_exit563, label %polly.loop_header561

polly.loop_header555.1:                           ; preds = %polly.loop_exit563, %polly.loop_exit563.1
  %polly.indvar558.1 = phi i64 [ %polly.indvar_next559.1, %polly.loop_exit563.1 ], [ 0, %polly.loop_exit563 ]
  %303 = shl nsw i64 %polly.indvar558.1, 2
  %304 = shl i64 %polly.indvar558.1, 5
  %305 = or i64 %303, 1
  %306 = shl i64 %305, 3
  %307 = or i64 %303, 2
  %308 = shl i64 %307, 3
  %309 = or i64 %303, 3
  %310 = shl i64 %309, 3
  br label %polly.loop_header561.1

polly.loop_header561.1:                           ; preds = %polly.loop_exit575.3.1, %polly.loop_header555.1
  %indvars.iv825.1 = phi i64 [ %indvars.iv.next826.1, %polly.loop_exit575.3.1 ], [ 65, %polly.loop_header555.1 ]
  %polly.indvar564.1 = phi i64 [ %polly.indvar_next565.1, %polly.loop_exit575.3.1 ], [ 0, %polly.loop_header555.1 ]
  %311 = add nuw nsw i64 %polly.indvar564.1, 64
  %polly.access.mul.Packed_MemRef_call2434582.1 = mul nuw nsw i64 %311, 60
  %312 = mul nuw nsw i64 %311, 480
  %313 = mul nuw nsw i64 %311, 640
  %polly.access.add.Packed_MemRef_call2434583.1911 = add nuw nsw i64 %303, %polly.access.mul.Packed_MemRef_call2434582.1
  %polly.access.Packed_MemRef_call2434584.1912 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1911
  %_p_scalar_585.1913 = load double, double* %polly.access.Packed_MemRef_call2434584.1912, align 8
  %314 = add nuw nsw i64 %304, %312
  %scevgep590.1914 = getelementptr i8, i8* %call1, i64 %314
  %scevgep590591.1915 = bitcast i8* %scevgep590.1914 to double*
  %_p_scalar_592.1916 = load double, double* %scevgep590591.1915, align 8, !alias.scope !85, !noalias !90
  br label %polly.loop_header573.1935

polly.loop_header573.1935:                        ; preds = %polly.loop_header573.1935, %polly.loop_header561.1
  %polly.indvar576.1917 = phi i64 [ 0, %polly.loop_header561.1 ], [ %polly.indvar_next577.1933, %polly.loop_header573.1935 ]
  %315 = mul nuw nsw i64 %polly.indvar576.1917, 480
  %316 = add nuw nsw i64 %315, %304
  %scevgep579.1918 = getelementptr i8, i8* %call1, i64 %316
  %scevgep579580.1919 = bitcast i8* %scevgep579.1918 to double*
  %_p_scalar_581.1920 = load double, double* %scevgep579580.1919, align 8, !alias.scope !85, !noalias !90
  %p_mul27.i.1921 = fmul fast double %_p_scalar_585.1913, %_p_scalar_581.1920
  %polly.access.mul.Packed_MemRef_call2434586.1922 = mul nuw nsw i64 %polly.indvar576.1917, 60
  %polly.access.add.Packed_MemRef_call2434587.1923 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.1922, %303
  %polly.access.Packed_MemRef_call2434588.1924 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1923
  %_p_scalar_589.1925 = load double, double* %polly.access.Packed_MemRef_call2434588.1924, align 8
  %p_mul37.i.1926 = fmul fast double %_p_scalar_592.1916, %_p_scalar_589.1925
  %317 = shl nuw nsw i64 %polly.indvar576.1917, 3
  %318 = add nuw nsw i64 %317, %313
  %scevgep593.1927 = getelementptr i8, i8* %call, i64 %318
  %scevgep593594.1928 = bitcast i8* %scevgep593.1927 to double*
  %_p_scalar_595.1929 = load double, double* %scevgep593594.1928, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.1930 = fadd fast double %p_mul37.i.1926, %p_mul27.i.1921
  %p_reass.mul.i.1931 = fmul fast double %p_reass.add.i.1930, 1.500000e+00
  %p_add42.i.1932 = fadd fast double %p_reass.mul.i.1931, %_p_scalar_595.1929
  store double %p_add42.i.1932, double* %scevgep593594.1928, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577.1933 = add nuw nsw i64 %polly.indvar576.1917, 1
  %exitcond827.1934.not = icmp eq i64 %polly.indvar_next577.1933, %indvars.iv825.1
  br i1 %exitcond827.1934.not, label %polly.loop_exit575.1936, label %polly.loop_header573.1935

polly.loop_exit575.1936:                          ; preds = %polly.loop_header573.1935
  %polly.access.add.Packed_MemRef_call2434583.1.1 = add nuw nsw i64 %305, %polly.access.mul.Packed_MemRef_call2434582.1
  %polly.access.Packed_MemRef_call2434584.1.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1.1
  %_p_scalar_585.1.1 = load double, double* %polly.access.Packed_MemRef_call2434584.1.1, align 8
  %319 = add nuw nsw i64 %306, %312
  %scevgep590.1.1 = getelementptr i8, i8* %call1, i64 %319
  %scevgep590591.1.1 = bitcast i8* %scevgep590.1.1 to double*
  %_p_scalar_592.1.1 = load double, double* %scevgep590591.1.1, align 8, !alias.scope !85, !noalias !90
  br label %polly.loop_header573.1.1

polly.loop_header573.1.1:                         ; preds = %polly.loop_header573.1.1, %polly.loop_exit575.1936
  %polly.indvar576.1.1 = phi i64 [ 0, %polly.loop_exit575.1936 ], [ %polly.indvar_next577.1.1, %polly.loop_header573.1.1 ]
  %320 = mul nuw nsw i64 %polly.indvar576.1.1, 480
  %321 = add nuw nsw i64 %320, %306
  %scevgep579.1.1 = getelementptr i8, i8* %call1, i64 %321
  %scevgep579580.1.1 = bitcast i8* %scevgep579.1.1 to double*
  %_p_scalar_581.1.1 = load double, double* %scevgep579580.1.1, align 8, !alias.scope !85, !noalias !90
  %p_mul27.i.1.1 = fmul fast double %_p_scalar_585.1.1, %_p_scalar_581.1.1
  %polly.access.mul.Packed_MemRef_call2434586.1.1 = mul nuw nsw i64 %polly.indvar576.1.1, 60
  %polly.access.add.Packed_MemRef_call2434587.1.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.1.1, %305
  %polly.access.Packed_MemRef_call2434588.1.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1.1
  %_p_scalar_589.1.1 = load double, double* %polly.access.Packed_MemRef_call2434588.1.1, align 8
  %p_mul37.i.1.1 = fmul fast double %_p_scalar_592.1.1, %_p_scalar_589.1.1
  %322 = shl nuw nsw i64 %polly.indvar576.1.1, 3
  %323 = add nuw nsw i64 %322, %313
  %scevgep593.1.1 = getelementptr i8, i8* %call, i64 %323
  %scevgep593594.1.1 = bitcast i8* %scevgep593.1.1 to double*
  %_p_scalar_595.1.1 = load double, double* %scevgep593594.1.1, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.1.1 = fadd fast double %p_mul37.i.1.1, %p_mul27.i.1.1
  %p_reass.mul.i.1.1 = fmul fast double %p_reass.add.i.1.1, 1.500000e+00
  %p_add42.i.1.1 = fadd fast double %p_reass.mul.i.1.1, %_p_scalar_595.1.1
  store double %p_add42.i.1.1, double* %scevgep593594.1.1, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577.1.1 = add nuw nsw i64 %polly.indvar576.1.1, 1
  %exitcond827.1.1.not = icmp eq i64 %polly.indvar_next577.1.1, %indvars.iv825.1
  br i1 %exitcond827.1.1.not, label %polly.loop_exit575.1.1, label %polly.loop_header573.1.1

polly.loop_exit575.1.1:                           ; preds = %polly.loop_header573.1.1
  %polly.access.add.Packed_MemRef_call2434583.2.1 = add nuw nsw i64 %307, %polly.access.mul.Packed_MemRef_call2434582.1
  %polly.access.Packed_MemRef_call2434584.2.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.2.1
  %_p_scalar_585.2.1 = load double, double* %polly.access.Packed_MemRef_call2434584.2.1, align 8
  %324 = add nuw nsw i64 %308, %312
  %scevgep590.2.1 = getelementptr i8, i8* %call1, i64 %324
  %scevgep590591.2.1 = bitcast i8* %scevgep590.2.1 to double*
  %_p_scalar_592.2.1 = load double, double* %scevgep590591.2.1, align 8, !alias.scope !85, !noalias !90
  br label %polly.loop_header573.2.1

polly.loop_header573.2.1:                         ; preds = %polly.loop_header573.2.1, %polly.loop_exit575.1.1
  %polly.indvar576.2.1 = phi i64 [ 0, %polly.loop_exit575.1.1 ], [ %polly.indvar_next577.2.1, %polly.loop_header573.2.1 ]
  %325 = mul nuw nsw i64 %polly.indvar576.2.1, 480
  %326 = add nuw nsw i64 %325, %308
  %scevgep579.2.1 = getelementptr i8, i8* %call1, i64 %326
  %scevgep579580.2.1 = bitcast i8* %scevgep579.2.1 to double*
  %_p_scalar_581.2.1 = load double, double* %scevgep579580.2.1, align 8, !alias.scope !85, !noalias !90
  %p_mul27.i.2.1 = fmul fast double %_p_scalar_585.2.1, %_p_scalar_581.2.1
  %polly.access.mul.Packed_MemRef_call2434586.2.1 = mul nuw nsw i64 %polly.indvar576.2.1, 60
  %polly.access.add.Packed_MemRef_call2434587.2.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.2.1, %307
  %polly.access.Packed_MemRef_call2434588.2.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.2.1
  %_p_scalar_589.2.1 = load double, double* %polly.access.Packed_MemRef_call2434588.2.1, align 8
  %p_mul37.i.2.1 = fmul fast double %_p_scalar_592.2.1, %_p_scalar_589.2.1
  %327 = shl nuw nsw i64 %polly.indvar576.2.1, 3
  %328 = add nuw nsw i64 %327, %313
  %scevgep593.2.1 = getelementptr i8, i8* %call, i64 %328
  %scevgep593594.2.1 = bitcast i8* %scevgep593.2.1 to double*
  %_p_scalar_595.2.1 = load double, double* %scevgep593594.2.1, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.2.1 = fadd fast double %p_mul37.i.2.1, %p_mul27.i.2.1
  %p_reass.mul.i.2.1 = fmul fast double %p_reass.add.i.2.1, 1.500000e+00
  %p_add42.i.2.1 = fadd fast double %p_reass.mul.i.2.1, %_p_scalar_595.2.1
  store double %p_add42.i.2.1, double* %scevgep593594.2.1, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577.2.1 = add nuw nsw i64 %polly.indvar576.2.1, 1
  %exitcond827.2.1.not = icmp eq i64 %polly.indvar_next577.2.1, %indvars.iv825.1
  br i1 %exitcond827.2.1.not, label %polly.loop_exit575.2.1, label %polly.loop_header573.2.1

polly.loop_exit575.2.1:                           ; preds = %polly.loop_header573.2.1
  %polly.access.add.Packed_MemRef_call2434583.3.1 = add nuw nsw i64 %309, %polly.access.mul.Packed_MemRef_call2434582.1
  %polly.access.Packed_MemRef_call2434584.3.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.3.1
  %_p_scalar_585.3.1 = load double, double* %polly.access.Packed_MemRef_call2434584.3.1, align 8
  %329 = add nuw nsw i64 %310, %312
  %scevgep590.3.1 = getelementptr i8, i8* %call1, i64 %329
  %scevgep590591.3.1 = bitcast i8* %scevgep590.3.1 to double*
  %_p_scalar_592.3.1 = load double, double* %scevgep590591.3.1, align 8, !alias.scope !85, !noalias !90
  br label %polly.loop_header573.3.1

polly.loop_header573.3.1:                         ; preds = %polly.loop_header573.3.1, %polly.loop_exit575.2.1
  %polly.indvar576.3.1 = phi i64 [ 0, %polly.loop_exit575.2.1 ], [ %polly.indvar_next577.3.1, %polly.loop_header573.3.1 ]
  %330 = mul nuw nsw i64 %polly.indvar576.3.1, 480
  %331 = add nuw nsw i64 %330, %310
  %scevgep579.3.1 = getelementptr i8, i8* %call1, i64 %331
  %scevgep579580.3.1 = bitcast i8* %scevgep579.3.1 to double*
  %_p_scalar_581.3.1 = load double, double* %scevgep579580.3.1, align 8, !alias.scope !85, !noalias !90
  %p_mul27.i.3.1 = fmul fast double %_p_scalar_585.3.1, %_p_scalar_581.3.1
  %polly.access.mul.Packed_MemRef_call2434586.3.1 = mul nuw nsw i64 %polly.indvar576.3.1, 60
  %polly.access.add.Packed_MemRef_call2434587.3.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.3.1, %309
  %polly.access.Packed_MemRef_call2434588.3.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.3.1
  %_p_scalar_589.3.1 = load double, double* %polly.access.Packed_MemRef_call2434588.3.1, align 8
  %p_mul37.i.3.1 = fmul fast double %_p_scalar_592.3.1, %_p_scalar_589.3.1
  %332 = shl nuw nsw i64 %polly.indvar576.3.1, 3
  %333 = add nuw nsw i64 %332, %313
  %scevgep593.3.1 = getelementptr i8, i8* %call, i64 %333
  %scevgep593594.3.1 = bitcast i8* %scevgep593.3.1 to double*
  %_p_scalar_595.3.1 = load double, double* %scevgep593594.3.1, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.3.1 = fadd fast double %p_mul37.i.3.1, %p_mul27.i.3.1
  %p_reass.mul.i.3.1 = fmul fast double %p_reass.add.i.3.1, 1.500000e+00
  %p_add42.i.3.1 = fadd fast double %p_reass.mul.i.3.1, %_p_scalar_595.3.1
  store double %p_add42.i.3.1, double* %scevgep593594.3.1, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next577.3.1 = add nuw nsw i64 %polly.indvar576.3.1, 1
  %exitcond827.3.1.not = icmp eq i64 %polly.indvar_next577.3.1, %indvars.iv825.1
  br i1 %exitcond827.3.1.not, label %polly.loop_exit575.3.1, label %polly.loop_header573.3.1

polly.loop_exit575.3.1:                           ; preds = %polly.loop_header573.3.1
  %polly.indvar_next565.1 = add nuw nsw i64 %polly.indvar564.1, 1
  %indvars.iv.next826.1 = add nuw nsw i64 %indvars.iv825.1, 1
  %exitcond829.1.not = icmp eq i64 %polly.indvar_next565.1, 16
  br i1 %exitcond829.1.not, label %polly.loop_exit563.1, label %polly.loop_header561.1

polly.loop_exit563.1:                             ; preds = %polly.loop_exit575.3.1
  %polly.indvar_next559.1 = add nuw nsw i64 %polly.indvar558.1, 1
  %exitcond830.1.not = icmp eq i64 %polly.indvar_next559.1, 15
  br i1 %exitcond830.1.not, label %polly.loop_exit557.1, label %polly.loop_header555.1

polly.loop_exit557.1:                             ; preds = %polly.loop_exit563.1
  tail call void @free(i8* nonnull %malloccall433)
  br label %kernel_syr2k.exit

polly.loop_header787.1:                           ; preds = %polly.loop_exit795, %polly.loop_exit795.1
  %polly.indvar790.1 = phi i64 [ %polly.indvar_next791.1, %polly.loop_exit795.1 ], [ 0, %polly.loop_exit795 ]
  %334 = mul nuw nsw i64 %polly.indvar790.1, 480
  %335 = trunc i64 %polly.indvar790.1 to i32
  %broadcast.splatinsert1227 = insertelement <4 x i32> poison, i32 %335, i32 0
  %broadcast.splat1228 = shufflevector <4 x i32> %broadcast.splatinsert1227, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %polly.loop_header787.1
  %index1221 = phi i64 [ 0, %polly.loop_header787.1 ], [ %index.next1222, %vector.body1219 ]
  %vec.ind1225 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1 ], [ %vec.ind.next1226, %vector.body1219 ]
  %336 = add nuw nsw <4 x i64> %vec.ind1225, <i64 32, i64 32, i64 32, i64 32>
  %337 = trunc <4 x i64> %336 to <4 x i32>
  %338 = mul <4 x i32> %broadcast.splat1228, %337
  %339 = add <4 x i32> %338, <i32 1, i32 1, i32 1, i32 1>
  %340 = urem <4 x i32> %339, <i32 80, i32 80, i32 80, i32 80>
  %341 = sitofp <4 x i32> %340 to <4 x double>
  %342 = fmul fast <4 x double> %341, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %343 = extractelement <4 x i64> %336, i32 0
  %344 = shl i64 %343, 3
  %345 = add i64 %344, %334
  %346 = getelementptr i8, i8* %call1, i64 %345
  %347 = bitcast i8* %346 to <4 x double>*
  store <4 x double> %342, <4 x double>* %347, align 8, !alias.scope !94, !noalias !99
  %index.next1222 = add i64 %index1221, 4
  %vec.ind.next1226 = add <4 x i64> %vec.ind1225, <i64 4, i64 4, i64 4, i64 4>
  %348 = icmp eq i64 %index.next1222, 28
  br i1 %348, label %polly.loop_exit795.1, label %vector.body1219, !llvm.loop !101

polly.loop_exit795.1:                             ; preds = %vector.body1219
  %polly.indvar_next791.1 = add nuw nsw i64 %polly.indvar790.1, 1
  %exitcond840.1.not = icmp eq i64 %polly.indvar_next791.1, 32
  br i1 %exitcond840.1.not, label %polly.loop_header787.1938, label %polly.loop_header787.1

polly.loop_header787.1938:                        ; preds = %polly.loop_exit795.1, %polly.loop_exit795.1949
  %polly.indvar790.1937 = phi i64 [ %polly.indvar_next791.1947, %polly.loop_exit795.1949 ], [ 0, %polly.loop_exit795.1 ]
  %349 = add nuw nsw i64 %polly.indvar790.1937, 32
  %350 = mul nuw nsw i64 %349, 480
  %351 = trunc i64 %349 to i32
  %broadcast.splatinsert1241 = insertelement <4 x i32> poison, i32 %351, i32 0
  %broadcast.splat1242 = shufflevector <4 x i32> %broadcast.splatinsert1241, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %polly.loop_header787.1938
  %index1233 = phi i64 [ 0, %polly.loop_header787.1938 ], [ %index.next1234, %vector.body1231 ]
  %vec.ind1239 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.1938 ], [ %vec.ind.next1240, %vector.body1231 ]
  %352 = mul <4 x i32> %vec.ind1239, %broadcast.splat1242
  %353 = add <4 x i32> %352, <i32 1, i32 1, i32 1, i32 1>
  %354 = urem <4 x i32> %353, <i32 80, i32 80, i32 80, i32 80>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %357 = shl i64 %index1233, 3
  %358 = add i64 %357, %350
  %359 = getelementptr i8, i8* %call1, i64 %358
  %360 = bitcast i8* %359 to <4 x double>*
  store <4 x double> %356, <4 x double>* %360, align 8, !alias.scope !94, !noalias !99
  %index.next1234 = add i64 %index1233, 4
  %vec.ind.next1240 = add <4 x i32> %vec.ind1239, <i32 4, i32 4, i32 4, i32 4>
  %361 = icmp eq i64 %index.next1234, 32
  br i1 %361, label %polly.loop_exit795.1949, label %vector.body1231, !llvm.loop !102

polly.loop_exit795.1949:                          ; preds = %vector.body1231
  %polly.indvar_next791.1947 = add nuw nsw i64 %polly.indvar790.1937, 1
  %exitcond840.1948.not = icmp eq i64 %polly.indvar_next791.1947, 32
  br i1 %exitcond840.1948.not, label %polly.loop_header787.1.1, label %polly.loop_header787.1938

polly.loop_header787.1.1:                         ; preds = %polly.loop_exit795.1949, %polly.loop_exit795.1.1
  %polly.indvar790.1.1 = phi i64 [ %polly.indvar_next791.1.1, %polly.loop_exit795.1.1 ], [ 0, %polly.loop_exit795.1949 ]
  %362 = add nuw nsw i64 %polly.indvar790.1.1, 32
  %363 = mul nuw nsw i64 %362, 480
  %364 = trunc i64 %362 to i32
  %broadcast.splatinsert1253 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1254 = shufflevector <4 x i32> %broadcast.splatinsert1253, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %polly.loop_header787.1.1
  %index1247 = phi i64 [ 0, %polly.loop_header787.1.1 ], [ %index.next1248, %vector.body1245 ]
  %vec.ind1251 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.1 ], [ %vec.ind.next1252, %vector.body1245 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1251, <i64 32, i64 32, i64 32, i64 32>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1254, %366
  %368 = add <4 x i32> %367, <i32 1, i32 1, i32 1, i32 1>
  %369 = urem <4 x i32> %368, <i32 80, i32 80, i32 80, i32 80>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add i64 %373, %363
  %375 = getelementptr i8, i8* %call1, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !94, !noalias !99
  %index.next1248 = add i64 %index1247, 4
  %vec.ind.next1252 = add <4 x i64> %vec.ind1251, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1248, 28
  br i1 %377, label %polly.loop_exit795.1.1, label %vector.body1245, !llvm.loop !103

polly.loop_exit795.1.1:                           ; preds = %vector.body1245
  %polly.indvar_next791.1.1 = add nuw nsw i64 %polly.indvar790.1.1, 1
  %exitcond840.1.1.not = icmp eq i64 %polly.indvar_next791.1.1, 32
  br i1 %exitcond840.1.1.not, label %polly.loop_header787.2, label %polly.loop_header787.1.1

polly.loop_header787.2:                           ; preds = %polly.loop_exit795.1.1, %polly.loop_exit795.2
  %polly.indvar790.2 = phi i64 [ %polly.indvar_next791.2, %polly.loop_exit795.2 ], [ 0, %polly.loop_exit795.1.1 ]
  %378 = add nuw nsw i64 %polly.indvar790.2, 64
  %379 = mul nuw nsw i64 %378, 480
  %380 = trunc i64 %378 to i32
  %broadcast.splatinsert1267 = insertelement <4 x i32> poison, i32 %380, i32 0
  %broadcast.splat1268 = shufflevector <4 x i32> %broadcast.splatinsert1267, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1257

vector.body1257:                                  ; preds = %vector.body1257, %polly.loop_header787.2
  %index1259 = phi i64 [ 0, %polly.loop_header787.2 ], [ %index.next1260, %vector.body1257 ]
  %vec.ind1265 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.2 ], [ %vec.ind.next1266, %vector.body1257 ]
  %381 = mul <4 x i32> %vec.ind1265, %broadcast.splat1268
  %382 = add <4 x i32> %381, <i32 1, i32 1, i32 1, i32 1>
  %383 = urem <4 x i32> %382, <i32 80, i32 80, i32 80, i32 80>
  %384 = sitofp <4 x i32> %383 to <4 x double>
  %385 = fmul fast <4 x double> %384, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %386 = shl i64 %index1259, 3
  %387 = add i64 %386, %379
  %388 = getelementptr i8, i8* %call1, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %385, <4 x double>* %389, align 8, !alias.scope !94, !noalias !99
  %index.next1260 = add i64 %index1259, 4
  %vec.ind.next1266 = add <4 x i32> %vec.ind1265, <i32 4, i32 4, i32 4, i32 4>
  %390 = icmp eq i64 %index.next1260, 32
  br i1 %390, label %polly.loop_exit795.2, label %vector.body1257, !llvm.loop !104

polly.loop_exit795.2:                             ; preds = %vector.body1257
  %polly.indvar_next791.2 = add nuw nsw i64 %polly.indvar790.2, 1
  %exitcond840.2.not = icmp eq i64 %polly.indvar_next791.2, 16
  br i1 %exitcond840.2.not, label %polly.loop_header787.1.2, label %polly.loop_header787.2

polly.loop_header787.1.2:                         ; preds = %polly.loop_exit795.2, %polly.loop_exit795.1.2
  %polly.indvar790.1.2 = phi i64 [ %polly.indvar_next791.1.2, %polly.loop_exit795.1.2 ], [ 0, %polly.loop_exit795.2 ]
  %391 = add nuw nsw i64 %polly.indvar790.1.2, 64
  %392 = mul nuw nsw i64 %391, 480
  %393 = trunc i64 %391 to i32
  %broadcast.splatinsert1279 = insertelement <4 x i32> poison, i32 %393, i32 0
  %broadcast.splat1280 = shufflevector <4 x i32> %broadcast.splatinsert1279, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %polly.loop_header787.1.2
  %index1273 = phi i64 [ 0, %polly.loop_header787.1.2 ], [ %index.next1274, %vector.body1271 ]
  %vec.ind1277 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.2 ], [ %vec.ind.next1278, %vector.body1271 ]
  %394 = add nuw nsw <4 x i64> %vec.ind1277, <i64 32, i64 32, i64 32, i64 32>
  %395 = trunc <4 x i64> %394 to <4 x i32>
  %396 = mul <4 x i32> %broadcast.splat1280, %395
  %397 = add <4 x i32> %396, <i32 1, i32 1, i32 1, i32 1>
  %398 = urem <4 x i32> %397, <i32 80, i32 80, i32 80, i32 80>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %401 = extractelement <4 x i64> %394, i32 0
  %402 = shl i64 %401, 3
  %403 = add i64 %402, %392
  %404 = getelementptr i8, i8* %call1, i64 %403
  %405 = bitcast i8* %404 to <4 x double>*
  store <4 x double> %400, <4 x double>* %405, align 8, !alias.scope !94, !noalias !99
  %index.next1274 = add i64 %index1273, 4
  %vec.ind.next1278 = add <4 x i64> %vec.ind1277, <i64 4, i64 4, i64 4, i64 4>
  %406 = icmp eq i64 %index.next1274, 28
  br i1 %406, label %polly.loop_exit795.1.2, label %vector.body1271, !llvm.loop !105

polly.loop_exit795.1.2:                           ; preds = %vector.body1271
  %polly.indvar_next791.1.2 = add nuw nsw i64 %polly.indvar790.1.2, 1
  %exitcond840.1.2.not = icmp eq i64 %polly.indvar_next791.1.2, 16
  br i1 %exitcond840.1.2.not, label %init_array.exit, label %polly.loop_header787.1.2

polly.loop_header761.1:                           ; preds = %polly.loop_exit769, %polly.loop_exit769.1
  %polly.indvar764.1 = phi i64 [ %polly.indvar_next765.1, %polly.loop_exit769.1 ], [ 0, %polly.loop_exit769 ]
  %407 = mul nuw nsw i64 %polly.indvar764.1, 480
  %408 = trunc i64 %polly.indvar764.1 to i32
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %408, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %polly.loop_header761.1
  %index1143 = phi i64 [ 0, %polly.loop_header761.1 ], [ %index.next1144, %vector.body1141 ]
  %vec.ind1147 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1 ], [ %vec.ind.next1148, %vector.body1141 ]
  %409 = add nuw nsw <4 x i64> %vec.ind1147, <i64 32, i64 32, i64 32, i64 32>
  %410 = trunc <4 x i64> %409 to <4 x i32>
  %411 = mul <4 x i32> %broadcast.splat1150, %410
  %412 = add <4 x i32> %411, <i32 2, i32 2, i32 2, i32 2>
  %413 = urem <4 x i32> %412, <i32 60, i32 60, i32 60, i32 60>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = extractelement <4 x i64> %409, i32 0
  %417 = shl i64 %416, 3
  %418 = add i64 %417, %407
  %419 = getelementptr i8, i8* %call2, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %415, <4 x double>* %420, align 8, !alias.scope !95, !noalias !97
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1148 = add <4 x i64> %vec.ind1147, <i64 4, i64 4, i64 4, i64 4>
  %421 = icmp eq i64 %index.next1144, 28
  br i1 %421, label %polly.loop_exit769.1, label %vector.body1141, !llvm.loop !106

polly.loop_exit769.1:                             ; preds = %vector.body1141
  %polly.indvar_next765.1 = add nuw nsw i64 %polly.indvar764.1, 1
  %exitcond846.1.not = icmp eq i64 %polly.indvar_next765.1, 32
  br i1 %exitcond846.1.not, label %polly.loop_header761.1952, label %polly.loop_header761.1

polly.loop_header761.1952:                        ; preds = %polly.loop_exit769.1, %polly.loop_exit769.1963
  %polly.indvar764.1951 = phi i64 [ %polly.indvar_next765.1961, %polly.loop_exit769.1963 ], [ 0, %polly.loop_exit769.1 ]
  %422 = add nuw nsw i64 %polly.indvar764.1951, 32
  %423 = mul nuw nsw i64 %422, 480
  %424 = trunc i64 %422 to i32
  %broadcast.splatinsert1163 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1164 = shufflevector <4 x i32> %broadcast.splatinsert1163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_header761.1952
  %index1155 = phi i64 [ 0, %polly.loop_header761.1952 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1161 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.1952 ], [ %vec.ind.next1162, %vector.body1153 ]
  %425 = mul <4 x i32> %vec.ind1161, %broadcast.splat1164
  %426 = add <4 x i32> %425, <i32 2, i32 2, i32 2, i32 2>
  %427 = urem <4 x i32> %426, <i32 60, i32 60, i32 60, i32 60>
  %428 = sitofp <4 x i32> %427 to <4 x double>
  %429 = fmul fast <4 x double> %428, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %430 = shl i64 %index1155, 3
  %431 = add i64 %430, %423
  %432 = getelementptr i8, i8* %call2, i64 %431
  %433 = bitcast i8* %432 to <4 x double>*
  store <4 x double> %429, <4 x double>* %433, align 8, !alias.scope !95, !noalias !97
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1162 = add <4 x i32> %vec.ind1161, <i32 4, i32 4, i32 4, i32 4>
  %434 = icmp eq i64 %index.next1156, 32
  br i1 %434, label %polly.loop_exit769.1963, label %vector.body1153, !llvm.loop !107

polly.loop_exit769.1963:                          ; preds = %vector.body1153
  %polly.indvar_next765.1961 = add nuw nsw i64 %polly.indvar764.1951, 1
  %exitcond846.1962.not = icmp eq i64 %polly.indvar_next765.1961, 32
  br i1 %exitcond846.1962.not, label %polly.loop_header761.1.1, label %polly.loop_header761.1952

polly.loop_header761.1.1:                         ; preds = %polly.loop_exit769.1963, %polly.loop_exit769.1.1
  %polly.indvar764.1.1 = phi i64 [ %polly.indvar_next765.1.1, %polly.loop_exit769.1.1 ], [ 0, %polly.loop_exit769.1963 ]
  %435 = add nuw nsw i64 %polly.indvar764.1.1, 32
  %436 = mul nuw nsw i64 %435, 480
  %437 = trunc i64 %435 to i32
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %437, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %polly.loop_header761.1.1
  %index1169 = phi i64 [ 0, %polly.loop_header761.1.1 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1173 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.1 ], [ %vec.ind.next1174, %vector.body1167 ]
  %438 = add nuw nsw <4 x i64> %vec.ind1173, <i64 32, i64 32, i64 32, i64 32>
  %439 = trunc <4 x i64> %438 to <4 x i32>
  %440 = mul <4 x i32> %broadcast.splat1176, %439
  %441 = add <4 x i32> %440, <i32 2, i32 2, i32 2, i32 2>
  %442 = urem <4 x i32> %441, <i32 60, i32 60, i32 60, i32 60>
  %443 = sitofp <4 x i32> %442 to <4 x double>
  %444 = fmul fast <4 x double> %443, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %445 = extractelement <4 x i64> %438, i32 0
  %446 = shl i64 %445, 3
  %447 = add i64 %446, %436
  %448 = getelementptr i8, i8* %call2, i64 %447
  %449 = bitcast i8* %448 to <4 x double>*
  store <4 x double> %444, <4 x double>* %449, align 8, !alias.scope !95, !noalias !97
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1174 = add <4 x i64> %vec.ind1173, <i64 4, i64 4, i64 4, i64 4>
  %450 = icmp eq i64 %index.next1170, 28
  br i1 %450, label %polly.loop_exit769.1.1, label %vector.body1167, !llvm.loop !108

polly.loop_exit769.1.1:                           ; preds = %vector.body1167
  %polly.indvar_next765.1.1 = add nuw nsw i64 %polly.indvar764.1.1, 1
  %exitcond846.1.1.not = icmp eq i64 %polly.indvar_next765.1.1, 32
  br i1 %exitcond846.1.1.not, label %polly.loop_header761.2, label %polly.loop_header761.1.1

polly.loop_header761.2:                           ; preds = %polly.loop_exit769.1.1, %polly.loop_exit769.2
  %polly.indvar764.2 = phi i64 [ %polly.indvar_next765.2, %polly.loop_exit769.2 ], [ 0, %polly.loop_exit769.1.1 ]
  %451 = add nuw nsw i64 %polly.indvar764.2, 64
  %452 = mul nuw nsw i64 %451, 480
  %453 = trunc i64 %451 to i32
  %broadcast.splatinsert1189 = insertelement <4 x i32> poison, i32 %453, i32 0
  %broadcast.splat1190 = shufflevector <4 x i32> %broadcast.splatinsert1189, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %polly.loop_header761.2
  %index1181 = phi i64 [ 0, %polly.loop_header761.2 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1187 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.2 ], [ %vec.ind.next1188, %vector.body1179 ]
  %454 = mul <4 x i32> %vec.ind1187, %broadcast.splat1190
  %455 = add <4 x i32> %454, <i32 2, i32 2, i32 2, i32 2>
  %456 = urem <4 x i32> %455, <i32 60, i32 60, i32 60, i32 60>
  %457 = sitofp <4 x i32> %456 to <4 x double>
  %458 = fmul fast <4 x double> %457, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %459 = shl i64 %index1181, 3
  %460 = add i64 %459, %452
  %461 = getelementptr i8, i8* %call2, i64 %460
  %462 = bitcast i8* %461 to <4 x double>*
  store <4 x double> %458, <4 x double>* %462, align 8, !alias.scope !95, !noalias !97
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1188 = add <4 x i32> %vec.ind1187, <i32 4, i32 4, i32 4, i32 4>
  %463 = icmp eq i64 %index.next1182, 32
  br i1 %463, label %polly.loop_exit769.2, label %vector.body1179, !llvm.loop !109

polly.loop_exit769.2:                             ; preds = %vector.body1179
  %polly.indvar_next765.2 = add nuw nsw i64 %polly.indvar764.2, 1
  %exitcond846.2.not = icmp eq i64 %polly.indvar_next765.2, 16
  br i1 %exitcond846.2.not, label %polly.loop_header761.1.2, label %polly.loop_header761.2

polly.loop_header761.1.2:                         ; preds = %polly.loop_exit769.2, %polly.loop_exit769.1.2
  %polly.indvar764.1.2 = phi i64 [ %polly.indvar_next765.1.2, %polly.loop_exit769.1.2 ], [ 0, %polly.loop_exit769.2 ]
  %464 = add nuw nsw i64 %polly.indvar764.1.2, 64
  %465 = mul nuw nsw i64 %464, 480
  %466 = trunc i64 %464 to i32
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %466, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %polly.loop_header761.1.2
  %index1195 = phi i64 [ 0, %polly.loop_header761.1.2 ], [ %index.next1196, %vector.body1193 ]
  %vec.ind1199 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.2 ], [ %vec.ind.next1200, %vector.body1193 ]
  %467 = add nuw nsw <4 x i64> %vec.ind1199, <i64 32, i64 32, i64 32, i64 32>
  %468 = trunc <4 x i64> %467 to <4 x i32>
  %469 = mul <4 x i32> %broadcast.splat1202, %468
  %470 = add <4 x i32> %469, <i32 2, i32 2, i32 2, i32 2>
  %471 = urem <4 x i32> %470, <i32 60, i32 60, i32 60, i32 60>
  %472 = sitofp <4 x i32> %471 to <4 x double>
  %473 = fmul fast <4 x double> %472, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %474 = extractelement <4 x i64> %467, i32 0
  %475 = shl i64 %474, 3
  %476 = add i64 %475, %465
  %477 = getelementptr i8, i8* %call2, i64 %476
  %478 = bitcast i8* %477 to <4 x double>*
  store <4 x double> %473, <4 x double>* %478, align 8, !alias.scope !95, !noalias !97
  %index.next1196 = add i64 %index1195, 4
  %vec.ind.next1200 = add <4 x i64> %vec.ind1199, <i64 4, i64 4, i64 4, i64 4>
  %479 = icmp eq i64 %index.next1196, 28
  br i1 %479, label %polly.loop_exit769.1.2, label %vector.body1193, !llvm.loop !110

polly.loop_exit769.1.2:                           ; preds = %vector.body1193
  %polly.indvar_next765.1.2 = add nuw nsw i64 %polly.indvar764.1.2, 1
  %exitcond846.1.2.not = icmp eq i64 %polly.indvar_next765.1.2, 16
  br i1 %exitcond846.1.2.not, label %polly.loop_header787, label %polly.loop_header761.1.2

polly.loop_header734.1:                           ; preds = %polly.loop_exit742, %polly.loop_exit742.1
  %polly.indvar737.1 = phi i64 [ %polly.indvar_next738.1, %polly.loop_exit742.1 ], [ 0, %polly.loop_exit742 ]
  %480 = mul nuw nsw i64 %polly.indvar737.1, 640
  %481 = trunc i64 %polly.indvar737.1 to i32
  %broadcast.splatinsert1035 = insertelement <4 x i32> poison, i32 %481, i32 0
  %broadcast.splat1036 = shufflevector <4 x i32> %broadcast.splatinsert1035, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %polly.loop_header734.1
  %index1029 = phi i64 [ 0, %polly.loop_header734.1 ], [ %index.next1030, %vector.body1027 ]
  %vec.ind1033 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1 ], [ %vec.ind.next1034, %vector.body1027 ]
  %482 = add nuw nsw <4 x i64> %vec.ind1033, <i64 32, i64 32, i64 32, i64 32>
  %483 = trunc <4 x i64> %482 to <4 x i32>
  %484 = mul <4 x i32> %broadcast.splat1036, %483
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
  %index.next1030 = add i64 %index1029, 4
  %vec.ind.next1034 = add <4 x i64> %vec.ind1033, <i64 4, i64 4, i64 4, i64 4>
  %494 = icmp eq i64 %index.next1030, 32
  br i1 %494, label %polly.loop_exit742.1, label %vector.body1027, !llvm.loop !111

polly.loop_exit742.1:                             ; preds = %vector.body1027
  %polly.indvar_next738.1 = add nuw nsw i64 %polly.indvar737.1, 1
  %exitcond855.1.not = icmp eq i64 %polly.indvar_next738.1, 32
  br i1 %exitcond855.1.not, label %polly.loop_header734.2, label %polly.loop_header734.1

polly.loop_header734.2:                           ; preds = %polly.loop_exit742.1, %polly.loop_exit742.2
  %polly.indvar737.2 = phi i64 [ %polly.indvar_next738.2, %polly.loop_exit742.2 ], [ 0, %polly.loop_exit742.1 ]
  %495 = mul nuw nsw i64 %polly.indvar737.2, 640
  %496 = trunc i64 %polly.indvar737.2 to i32
  %broadcast.splatinsert1047 = insertelement <4 x i32> poison, i32 %496, i32 0
  %broadcast.splat1048 = shufflevector <4 x i32> %broadcast.splatinsert1047, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1039

vector.body1039:                                  ; preds = %vector.body1039, %polly.loop_header734.2
  %index1041 = phi i64 [ 0, %polly.loop_header734.2 ], [ %index.next1042, %vector.body1039 ]
  %vec.ind1045 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2 ], [ %vec.ind.next1046, %vector.body1039 ]
  %497 = add nuw nsw <4 x i64> %vec.ind1045, <i64 64, i64 64, i64 64, i64 64>
  %498 = trunc <4 x i64> %497 to <4 x i32>
  %499 = mul <4 x i32> %broadcast.splat1048, %498
  %500 = add <4 x i32> %499, <i32 3, i32 3, i32 3, i32 3>
  %501 = urem <4 x i32> %500, <i32 80, i32 80, i32 80, i32 80>
  %502 = sitofp <4 x i32> %501 to <4 x double>
  %503 = fmul fast <4 x double> %502, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %504 = extractelement <4 x i64> %497, i32 0
  %505 = shl i64 %504, 3
  %506 = add nuw nsw i64 %505, %495
  %507 = getelementptr i8, i8* %call, i64 %506
  %508 = bitcast i8* %507 to <4 x double>*
  store <4 x double> %503, <4 x double>* %508, align 8, !alias.scope !91, !noalias !93
  %index.next1042 = add i64 %index1041, 4
  %vec.ind.next1046 = add <4 x i64> %vec.ind1045, <i64 4, i64 4, i64 4, i64 4>
  %509 = icmp eq i64 %index.next1042, 16
  br i1 %509, label %polly.loop_exit742.2, label %vector.body1039, !llvm.loop !112

polly.loop_exit742.2:                             ; preds = %vector.body1039
  %polly.indvar_next738.2 = add nuw nsw i64 %polly.indvar737.2, 1
  %exitcond855.2.not = icmp eq i64 %polly.indvar_next738.2, 32
  br i1 %exitcond855.2.not, label %polly.loop_header734.1966, label %polly.loop_header734.2

polly.loop_header734.1966:                        ; preds = %polly.loop_exit742.2, %polly.loop_exit742.1977
  %polly.indvar737.1965 = phi i64 [ %polly.indvar_next738.1975, %polly.loop_exit742.1977 ], [ 0, %polly.loop_exit742.2 ]
  %510 = add nuw nsw i64 %polly.indvar737.1965, 32
  %511 = mul nuw nsw i64 %510, 640
  %512 = trunc i64 %510 to i32
  %broadcast.splatinsert1061 = insertelement <4 x i32> poison, i32 %512, i32 0
  %broadcast.splat1062 = shufflevector <4 x i32> %broadcast.splatinsert1061, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %polly.loop_header734.1966
  %index1053 = phi i64 [ 0, %polly.loop_header734.1966 ], [ %index.next1054, %vector.body1051 ]
  %vec.ind1059 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.1966 ], [ %vec.ind.next1060, %vector.body1051 ]
  %513 = mul <4 x i32> %vec.ind1059, %broadcast.splat1062
  %514 = add <4 x i32> %513, <i32 3, i32 3, i32 3, i32 3>
  %515 = urem <4 x i32> %514, <i32 80, i32 80, i32 80, i32 80>
  %516 = sitofp <4 x i32> %515 to <4 x double>
  %517 = fmul fast <4 x double> %516, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %518 = shl i64 %index1053, 3
  %519 = add nuw nsw i64 %518, %511
  %520 = getelementptr i8, i8* %call, i64 %519
  %521 = bitcast i8* %520 to <4 x double>*
  store <4 x double> %517, <4 x double>* %521, align 8, !alias.scope !91, !noalias !93
  %index.next1054 = add i64 %index1053, 4
  %vec.ind.next1060 = add <4 x i32> %vec.ind1059, <i32 4, i32 4, i32 4, i32 4>
  %522 = icmp eq i64 %index.next1054, 32
  br i1 %522, label %polly.loop_exit742.1977, label %vector.body1051, !llvm.loop !113

polly.loop_exit742.1977:                          ; preds = %vector.body1051
  %polly.indvar_next738.1975 = add nuw nsw i64 %polly.indvar737.1965, 1
  %exitcond855.1976.not = icmp eq i64 %polly.indvar_next738.1975, 32
  br i1 %exitcond855.1976.not, label %polly.loop_header734.1.1, label %polly.loop_header734.1966

polly.loop_header734.1.1:                         ; preds = %polly.loop_exit742.1977, %polly.loop_exit742.1.1
  %polly.indvar737.1.1 = phi i64 [ %polly.indvar_next738.1.1, %polly.loop_exit742.1.1 ], [ 0, %polly.loop_exit742.1977 ]
  %523 = add nuw nsw i64 %polly.indvar737.1.1, 32
  %524 = mul nuw nsw i64 %523, 640
  %525 = trunc i64 %523 to i32
  %broadcast.splatinsert1073 = insertelement <4 x i32> poison, i32 %525, i32 0
  %broadcast.splat1074 = shufflevector <4 x i32> %broadcast.splatinsert1073, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %polly.loop_header734.1.1
  %index1067 = phi i64 [ 0, %polly.loop_header734.1.1 ], [ %index.next1068, %vector.body1065 ]
  %vec.ind1071 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.1 ], [ %vec.ind.next1072, %vector.body1065 ]
  %526 = add nuw nsw <4 x i64> %vec.ind1071, <i64 32, i64 32, i64 32, i64 32>
  %527 = trunc <4 x i64> %526 to <4 x i32>
  %528 = mul <4 x i32> %broadcast.splat1074, %527
  %529 = add <4 x i32> %528, <i32 3, i32 3, i32 3, i32 3>
  %530 = urem <4 x i32> %529, <i32 80, i32 80, i32 80, i32 80>
  %531 = sitofp <4 x i32> %530 to <4 x double>
  %532 = fmul fast <4 x double> %531, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %533 = extractelement <4 x i64> %526, i32 0
  %534 = shl i64 %533, 3
  %535 = add nuw nsw i64 %534, %524
  %536 = getelementptr i8, i8* %call, i64 %535
  %537 = bitcast i8* %536 to <4 x double>*
  store <4 x double> %532, <4 x double>* %537, align 8, !alias.scope !91, !noalias !93
  %index.next1068 = add i64 %index1067, 4
  %vec.ind.next1072 = add <4 x i64> %vec.ind1071, <i64 4, i64 4, i64 4, i64 4>
  %538 = icmp eq i64 %index.next1068, 32
  br i1 %538, label %polly.loop_exit742.1.1, label %vector.body1065, !llvm.loop !114

polly.loop_exit742.1.1:                           ; preds = %vector.body1065
  %polly.indvar_next738.1.1 = add nuw nsw i64 %polly.indvar737.1.1, 1
  %exitcond855.1.1.not = icmp eq i64 %polly.indvar_next738.1.1, 32
  br i1 %exitcond855.1.1.not, label %polly.loop_header734.2.1, label %polly.loop_header734.1.1

polly.loop_header734.2.1:                         ; preds = %polly.loop_exit742.1.1, %polly.loop_exit742.2.1
  %polly.indvar737.2.1 = phi i64 [ %polly.indvar_next738.2.1, %polly.loop_exit742.2.1 ], [ 0, %polly.loop_exit742.1.1 ]
  %539 = add nuw nsw i64 %polly.indvar737.2.1, 32
  %540 = mul nuw nsw i64 %539, 640
  %541 = trunc i64 %539 to i32
  %broadcast.splatinsert1085 = insertelement <4 x i32> poison, i32 %541, i32 0
  %broadcast.splat1086 = shufflevector <4 x i32> %broadcast.splatinsert1085, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %polly.loop_header734.2.1
  %index1079 = phi i64 [ 0, %polly.loop_header734.2.1 ], [ %index.next1080, %vector.body1077 ]
  %vec.ind1083 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.1 ], [ %vec.ind.next1084, %vector.body1077 ]
  %542 = add nuw nsw <4 x i64> %vec.ind1083, <i64 64, i64 64, i64 64, i64 64>
  %543 = trunc <4 x i64> %542 to <4 x i32>
  %544 = mul <4 x i32> %broadcast.splat1086, %543
  %545 = add <4 x i32> %544, <i32 3, i32 3, i32 3, i32 3>
  %546 = urem <4 x i32> %545, <i32 80, i32 80, i32 80, i32 80>
  %547 = sitofp <4 x i32> %546 to <4 x double>
  %548 = fmul fast <4 x double> %547, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %549 = extractelement <4 x i64> %542, i32 0
  %550 = shl i64 %549, 3
  %551 = add nuw nsw i64 %550, %540
  %552 = getelementptr i8, i8* %call, i64 %551
  %553 = bitcast i8* %552 to <4 x double>*
  store <4 x double> %548, <4 x double>* %553, align 8, !alias.scope !91, !noalias !93
  %index.next1080 = add i64 %index1079, 4
  %vec.ind.next1084 = add <4 x i64> %vec.ind1083, <i64 4, i64 4, i64 4, i64 4>
  %554 = icmp eq i64 %index.next1080, 16
  br i1 %554, label %polly.loop_exit742.2.1, label %vector.body1077, !llvm.loop !115

polly.loop_exit742.2.1:                           ; preds = %vector.body1077
  %polly.indvar_next738.2.1 = add nuw nsw i64 %polly.indvar737.2.1, 1
  %exitcond855.2.1.not = icmp eq i64 %polly.indvar_next738.2.1, 32
  br i1 %exitcond855.2.1.not, label %polly.loop_header734.2980, label %polly.loop_header734.2.1

polly.loop_header734.2980:                        ; preds = %polly.loop_exit742.2.1, %polly.loop_exit742.2991
  %polly.indvar737.2979 = phi i64 [ %polly.indvar_next738.2989, %polly.loop_exit742.2991 ], [ 0, %polly.loop_exit742.2.1 ]
  %555 = add nuw nsw i64 %polly.indvar737.2979, 64
  %556 = mul nuw nsw i64 %555, 640
  %557 = trunc i64 %555 to i32
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %557, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %polly.loop_header734.2980
  %index1091 = phi i64 [ 0, %polly.loop_header734.2980 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1097 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.2980 ], [ %vec.ind.next1098, %vector.body1089 ]
  %558 = mul <4 x i32> %vec.ind1097, %broadcast.splat1100
  %559 = add <4 x i32> %558, <i32 3, i32 3, i32 3, i32 3>
  %560 = urem <4 x i32> %559, <i32 80, i32 80, i32 80, i32 80>
  %561 = sitofp <4 x i32> %560 to <4 x double>
  %562 = fmul fast <4 x double> %561, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %563 = shl i64 %index1091, 3
  %564 = add nuw nsw i64 %563, %556
  %565 = getelementptr i8, i8* %call, i64 %564
  %566 = bitcast i8* %565 to <4 x double>*
  store <4 x double> %562, <4 x double>* %566, align 8, !alias.scope !91, !noalias !93
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1098 = add <4 x i32> %vec.ind1097, <i32 4, i32 4, i32 4, i32 4>
  %567 = icmp eq i64 %index.next1092, 32
  br i1 %567, label %polly.loop_exit742.2991, label %vector.body1089, !llvm.loop !116

polly.loop_exit742.2991:                          ; preds = %vector.body1089
  %polly.indvar_next738.2989 = add nuw nsw i64 %polly.indvar737.2979, 1
  %exitcond855.2990.not = icmp eq i64 %polly.indvar_next738.2989, 16
  br i1 %exitcond855.2990.not, label %polly.loop_header734.1.2, label %polly.loop_header734.2980

polly.loop_header734.1.2:                         ; preds = %polly.loop_exit742.2991, %polly.loop_exit742.1.2
  %polly.indvar737.1.2 = phi i64 [ %polly.indvar_next738.1.2, %polly.loop_exit742.1.2 ], [ 0, %polly.loop_exit742.2991 ]
  %568 = add nuw nsw i64 %polly.indvar737.1.2, 64
  %569 = mul nuw nsw i64 %568, 640
  %570 = trunc i64 %568 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %570, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %polly.loop_header734.1.2
  %index1105 = phi i64 [ 0, %polly.loop_header734.1.2 ], [ %index.next1106, %vector.body1103 ]
  %vec.ind1109 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.2 ], [ %vec.ind.next1110, %vector.body1103 ]
  %571 = add nuw nsw <4 x i64> %vec.ind1109, <i64 32, i64 32, i64 32, i64 32>
  %572 = trunc <4 x i64> %571 to <4 x i32>
  %573 = mul <4 x i32> %broadcast.splat1112, %572
  %574 = add <4 x i32> %573, <i32 3, i32 3, i32 3, i32 3>
  %575 = urem <4 x i32> %574, <i32 80, i32 80, i32 80, i32 80>
  %576 = sitofp <4 x i32> %575 to <4 x double>
  %577 = fmul fast <4 x double> %576, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %578 = extractelement <4 x i64> %571, i32 0
  %579 = shl i64 %578, 3
  %580 = add nuw nsw i64 %579, %569
  %581 = getelementptr i8, i8* %call, i64 %580
  %582 = bitcast i8* %581 to <4 x double>*
  store <4 x double> %577, <4 x double>* %582, align 8, !alias.scope !91, !noalias !93
  %index.next1106 = add i64 %index1105, 4
  %vec.ind.next1110 = add <4 x i64> %vec.ind1109, <i64 4, i64 4, i64 4, i64 4>
  %583 = icmp eq i64 %index.next1106, 32
  br i1 %583, label %polly.loop_exit742.1.2, label %vector.body1103, !llvm.loop !117

polly.loop_exit742.1.2:                           ; preds = %vector.body1103
  %polly.indvar_next738.1.2 = add nuw nsw i64 %polly.indvar737.1.2, 1
  %exitcond855.1.2.not = icmp eq i64 %polly.indvar_next738.1.2, 16
  br i1 %exitcond855.1.2.not, label %polly.loop_header734.2.2, label %polly.loop_header734.1.2

polly.loop_header734.2.2:                         ; preds = %polly.loop_exit742.1.2, %polly.loop_exit742.2.2
  %polly.indvar737.2.2 = phi i64 [ %polly.indvar_next738.2.2, %polly.loop_exit742.2.2 ], [ 0, %polly.loop_exit742.1.2 ]
  %584 = add nuw nsw i64 %polly.indvar737.2.2, 64
  %585 = mul nuw nsw i64 %584, 640
  %586 = trunc i64 %584 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %586, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header734.2.2
  %index1117 = phi i64 [ 0, %polly.loop_header734.2.2 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1121 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.2 ], [ %vec.ind.next1122, %vector.body1115 ]
  %587 = add nuw nsw <4 x i64> %vec.ind1121, <i64 64, i64 64, i64 64, i64 64>
  %588 = trunc <4 x i64> %587 to <4 x i32>
  %589 = mul <4 x i32> %broadcast.splat1124, %588
  %590 = add <4 x i32> %589, <i32 3, i32 3, i32 3, i32 3>
  %591 = urem <4 x i32> %590, <i32 80, i32 80, i32 80, i32 80>
  %592 = sitofp <4 x i32> %591 to <4 x double>
  %593 = fmul fast <4 x double> %592, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %594 = extractelement <4 x i64> %587, i32 0
  %595 = shl i64 %594, 3
  %596 = add nuw nsw i64 %595, %585
  %597 = getelementptr i8, i8* %call, i64 %596
  %598 = bitcast i8* %597 to <4 x double>*
  store <4 x double> %593, <4 x double>* %598, align 8, !alias.scope !91, !noalias !93
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1122 = add <4 x i64> %vec.ind1121, <i64 4, i64 4, i64 4, i64 4>
  %599 = icmp eq i64 %index.next1118, 16
  br i1 %599, label %polly.loop_exit742.2.2, label %vector.body1115, !llvm.loop !118

polly.loop_exit742.2.2:                           ; preds = %vector.body1115
  %polly.indvar_next738.2.2 = add nuw nsw i64 %polly.indvar737.2.2, 1
  %exitcond855.2.2.not = icmp eq i64 %polly.indvar_next738.2.2, 16
  br i1 %exitcond855.2.2.not, label %polly.loop_header761, label %polly.loop_header734.2.2
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 4}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !52}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 64}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.data.pack.enable", i1 true}
!50 = !{!"llvm.data.pack.array", !21}
!51 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call2"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !67, !68}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !71, !13}
!81 = !{!73, !77, !78}
!82 = distinct !{!82, !83, !"polly.alias.scope.MemRef_call"}
!83 = distinct !{!83, !"polly.alias.scope.domain"}
!84 = !{!85, !86, !87}
!85 = distinct !{!85, !83, !"polly.alias.scope.MemRef_call1"}
!86 = distinct !{!86, !83, !"polly.alias.scope.MemRef_call2"}
!87 = distinct !{!87, !83, !"polly.alias.scope.Packed_MemRef_call2"}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !71, !13}
!90 = !{!82, !86, !87}
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
