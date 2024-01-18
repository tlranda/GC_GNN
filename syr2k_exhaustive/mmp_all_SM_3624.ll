; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3624.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3624.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 1440000, i32 8) #6
  %call870 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1722 = bitcast i8* %call1 to double*
  %polly.access.call1731 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1731, %call2
  %polly.access.call2751 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2751, %call1
  %2 = or i1 %0, %1
  %polly.access.call771 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call771, %call2
  %4 = icmp ule i8* %polly.access.call2751, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call771, %call1
  %8 = icmp ule i8* %polly.access.call1731, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header844, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1212 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1211 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1210 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1209 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1209, %scevgep1212
  %bound1 = icmp ult i8* %scevgep1211, %scevgep1210
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
  %16 = urem <4 x i32> %15, <i32 1200, i32 1200, i32 1200, i32 1200>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %19 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 1000, i32 1000, i32 1000, i32 1000>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %25 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 1000
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 1200
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 0x3F4B4E81B4E81B4F
  %arrayidx6.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 1000
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 1.000000e-03
  %arrayidx16.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 1000
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 1200
  br i1 %exitcond18.not.i, label %vector.ph1216, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1216:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1223 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1224 = shufflevector <4 x i64> %broadcast.splatinsert1223, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1216
  %index1217 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1218, %vector.body1215 ]
  %vec.ind1221 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1216 ], [ %vec.ind.next1222, %vector.body1215 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1221, %broadcast.splat1224
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv7.i, i64 %index1217
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1218 = add i64 %index1217, 4
  %vec.ind.next1222 = add <4 x i64> %vec.ind1221, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1218, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1215, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1215
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1216, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit905
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1279 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1279, label %for.body3.i46.preheader1356, label %vector.ph1280

vector.ph1280:                                    ; preds = %for.body3.i46.preheader
  %n.vec1282 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1278 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %index1283
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1284 = add i64 %index1283, 4
  %46 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %46, label %middle.block1276, label %vector.body1278, !llvm.loop !18

middle.block1276:                                 ; preds = %vector.body1278
  %cmp.n1286 = icmp eq i64 %indvars.iv21.i, %n.vec1282
  br i1 %cmp.n1286, label %for.inc6.i, label %for.body3.i46.preheader1356

for.body3.i46.preheader1356:                      ; preds = %for.body3.i46.preheader, %middle.block1276
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1282, %middle.block1276 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1356, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1356 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1276, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 1200
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting511
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start300, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1302 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1302, label %for.body3.i60.preheader1354, label %vector.ph1303

vector.ph1303:                                    ; preds = %for.body3.i60.preheader
  %n.vec1305 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1301 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1306
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1310, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1307 = add i64 %index1306, 4
  %57 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %57, label %middle.block1299, label %vector.body1301, !llvm.loop !60

middle.block1299:                                 ; preds = %vector.body1301
  %cmp.n1309 = icmp eq i64 %indvars.iv21.i52, %n.vec1305
  br i1 %cmp.n1309, label %for.inc6.i63, label %for.body3.i60.preheader1354

for.body3.i60.preheader1354:                      ; preds = %for.body3.i60.preheader, %middle.block1299
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1305, %middle.block1299 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1354, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1354 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1299, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 1200
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting301
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1328 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1328, label %for.body3.i99.preheader1352, label %vector.ph1329

vector.ph1329:                                    ; preds = %for.body3.i99.preheader
  %n.vec1331 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %vector.ph1329
  %index1332 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1333, %vector.body1327 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1332
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1336, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1333 = add i64 %index1332, 4
  %68 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %68, label %middle.block1325, label %vector.body1327, !llvm.loop !62

middle.block1325:                                 ; preds = %vector.body1327
  %cmp.n1335 = icmp eq i64 %indvars.iv21.i91, %n.vec1331
  br i1 %cmp.n1335, label %for.inc6.i102, label %for.body3.i99.preheader1352

for.body3.i99.preheader1352:                      ; preds = %for.body3.i99.preheader, %middle.block1325
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1331, %middle.block1325 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1352, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1352 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1325, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 1200
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

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
  %79 = mul nuw nsw i64 %indvars.iv4.i, 1200
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1340 = phi i64 [ %indvar.next1341, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1340, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1342 = icmp ult i64 %88, 4
  br i1 %min.iters.check1342, label %polly.loop_header191.preheader, label %vector.ph1343

vector.ph1343:                                    ; preds = %polly.loop_header
  %n.vec1345 = and i64 %88, -4
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %vector.ph1343
  %index1346 = phi i64 [ 0, %vector.ph1343 ], [ %index.next1347, %vector.body1339 ]
  %90 = shl nuw nsw i64 %index1346, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1350, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1347 = add i64 %index1346, 4
  %95 = icmp eq i64 %index.next1347, %n.vec1345
  br i1 %95, label %middle.block1337, label %vector.body1339, !llvm.loop !74

middle.block1337:                                 ; preds = %vector.body1339
  %cmp.n1349 = icmp eq i64 %88, %n.vec1345
  br i1 %cmp.n1349, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1337
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1345, %middle.block1337 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1337
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1341 = add i64 %indvar1340, 1
  br i1 %exitcond1107.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
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
  %exitcond1106.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1106.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv1097 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1098, %polly.loop_exit207 ]
  %indvars.iv1092 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1093, %polly.loop_exit207 ]
  %indvars.iv1085 = phi i64 [ 7, %polly.loop_header199.preheader ], [ %indvars.iv.next1086, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 79, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = lshr i64 %indvars.iv1085, 3
  %98 = mul nuw nsw i64 %97, 80
  %99 = mul nuw nsw i64 %polly.indvar202, 3
  %100 = add nuw nsw i64 %99, 7
  %pexp.p_div_q = lshr i64 %100, 3
  %101 = sub nsw i64 %polly.indvar202, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %101, 15
  br i1 %polly.loop_guard, label %polly.loop_header205.preheader, label %polly.loop_exit207

polly.loop_header205.preheader:                   ; preds = %polly.loop_header199
  %102 = sub nsw i64 %indvars.iv, %98
  %103 = sub nsw i64 %indvars.iv1097, %98
  %104 = add i64 %indvars.iv1092, %98
  %105 = mul nuw nsw i64 %polly.indvar202, 5
  %106 = mul nsw i64 %polly.indvar202, -50
  %107 = mul nuw nsw i64 %polly.indvar202, 50
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit259, %polly.loop_header199
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 30
  %indvars.iv.next1086 = add nuw nsw i64 %indvars.iv1085, 3
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -30
  %indvars.iv.next1098 = add nuw nsw i64 %indvars.iv1097, 30
  %exitcond1105.not = icmp eq i64 %polly.indvar_next203, 24
  br i1 %exitcond1105.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205.preheader, %polly.loop_exit259
  %indvars.iv1099 = phi i64 [ %103, %polly.loop_header205.preheader ], [ %indvars.iv.next1100, %polly.loop_exit259 ]
  %indvars.iv1094 = phi i64 [ %104, %polly.loop_header205.preheader ], [ %indvars.iv.next1095, %polly.loop_exit259 ]
  %indvars.iv1087 = phi i64 [ %102, %polly.loop_header205.preheader ], [ %indvars.iv.next1088, %polly.loop_exit259 ]
  %polly.indvar208 = phi i64 [ %101, %polly.loop_header205.preheader ], [ %polly.indvar_next209, %polly.loop_exit259 ]
  %smax1096 = call i64 @llvm.smax.i64(i64 %indvars.iv1094, i64 0)
  %108 = add i64 %smax1096, %indvars.iv1099
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1087, i64 0)
  %109 = shl nsw i64 %polly.indvar208, 3
  %.not.not = icmp sgt i64 %109, %105
  %110 = mul nsw i64 %polly.indvar208, 80
  %111 = add nsw i64 %110, %106
  %112 = icmp sgt i64 %111, 50
  %113 = select i1 %112, i64 %111, i64 50
  %114 = add nsw i64 %111, 79
  %polly.loop_guard231.not = icmp sgt i64 %113, %114
  br i1 %.not.not, label %polly.loop_header211.us, label %polly.loop_header205.split

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.merge.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.merge.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211.us ]
  %115 = add nuw nsw i64 %polly.indvar220.us, %107
  %polly.access.mul.call1224.us = mul nuw nsw i64 %115, 1000
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next221.us, 50
  br i1 %exitcond1090.not, label %polly.loop_exit219.us, label %polly.loop_header217.us

polly.loop_exit219.us:                            ; preds = %polly.loop_header217.us
  br i1 %polly.loop_guard231.not, label %polly.merge.us, label %polly.loop_header228.us

polly.loop_header228.us:                          ; preds = %polly.loop_exit219.us, %polly.loop_header228.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header228.us ], [ %113, %polly.loop_exit219.us ]
  %116 = add nuw nsw i64 %polly.indvar232.us, %107
  %polly.access.mul.call1236.us = mul nsw i64 %116, 1000
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.access.mul.call1236.us, %polly.indvar214.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.us = add nuw nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %polly.loop_cond234.not.not.us = icmp slt i64 %polly.indvar232.us, %114
  br i1 %polly.loop_cond234.not.not.us, label %polly.loop_header228.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header228.us, %polly.loop_exit219.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond1091.not, label %polly.loop_header257.preheader, label %polly.loop_header211.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  %polly.loop_guard246 = icmp sgt i64 %111, -80
  br i1 %polly.loop_guard246, label %polly.loop_header211.us934, label %polly.loop_header257.preheader

polly.loop_header211.us934:                       ; preds = %polly.loop_header205.split, %polly.merge.loopexit926.us979
  %polly.indvar214.us935 = phi i64 [ %polly.indvar_next215.us971, %polly.merge.loopexit926.us979 ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1254.us978 = mul nuw nsw i64 %polly.indvar214.us935, 1200
  br label %polly.loop_header243.us937

polly.loop_header243.us937:                       ; preds = %polly.loop_header211.us934, %polly.loop_header243.us937
  %polly.indvar247.us938 = phi i64 [ %polly.indvar_next248.us945, %polly.loop_header243.us937 ], [ 0, %polly.loop_header211.us934 ]
  %117 = add nuw nsw i64 %polly.indvar247.us938, %107
  %polly.access.mul.call1251.us939 = mul nuw nsw i64 %117, 1000
  %polly.access.add.call1252.us940 = add nuw nsw i64 %polly.access.mul.call1251.us939, %polly.indvar214.us935
  %polly.access.call1253.us941 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1252.us940
  %polly.access.call1253.load.us942 = load double, double* %polly.access.call1253.us941, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1255.us943 = add nuw nsw i64 %polly.indvar247.us938, %polly.access.mul.Packed_MemRef_call1254.us978
  %polly.access.Packed_MemRef_call1256.us944 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us943
  store double %polly.access.call1253.load.us942, double* %polly.access.Packed_MemRef_call1256.us944, align 8
  %polly.indvar_next248.us945 = add nuw nsw i64 %polly.indvar247.us938, 1
  %exitcond.not = icmp eq i64 %polly.indvar247.us938, %smax
  br i1 %exitcond.not, label %polly.merge.loopexit926.us979, label %polly.loop_header243.us937

polly.merge.loopexit926.us979:                    ; preds = %polly.loop_header243.us937
  %polly.indvar_next215.us971 = add nuw nsw i64 %polly.indvar214.us935, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next215.us971, 1000
  br i1 %exitcond1089.not, label %polly.loop_header257.preheader, label %polly.loop_header211.us934

polly.loop_exit259:                               ; preds = %polly.loop_exit266.loopexit.us, %polly.loop_header257.preheader
  %polly.indvar_next209 = add nsw i64 %polly.indvar208, 1
  %polly.loop_cond210 = icmp slt i64 %polly.indvar208, 14
  %indvars.iv.next1088 = add i64 %indvars.iv1087, 80
  %indvars.iv.next1095 = add i64 %indvars.iv1094, -80
  %indvars.iv.next1100 = add i64 %indvars.iv1099, 80
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_exit207

polly.loop_header257.preheader:                   ; preds = %polly.merge.loopexit926.us979, %polly.merge.us, %polly.loop_header205.split
  %118 = sub nsw i64 %107, %110
  %119 = icmp sgt i64 %118, 0
  %120 = select i1 %119, i64 %118, i64 0
  %polly.loop_guard267 = icmp slt i64 %120, 80
  br i1 %polly.loop_guard267, label %polly.loop_header257.us, label %polly.loop_exit259

polly.loop_header257.us:                          ; preds = %polly.loop_header257.preheader, %polly.loop_exit266.loopexit.us
  %polly.indvar260.us = phi i64 [ %polly.indvar_next261.us, %polly.loop_exit266.loopexit.us ], [ 0, %polly.loop_header257.preheader ]
  %121 = shl nuw nsw i64 %polly.indvar260.us, 3
  %scevgep283.us = getelementptr i8, i8* %call2, i64 %121
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar260.us, 1200
  br label %polly.loop_header264.us

polly.loop_header264.us:                          ; preds = %polly.loop_exit274.us, %polly.loop_header257.us
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit274.us ], [ %108, %polly.loop_header257.us ]
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.us ], [ %120, %polly.loop_header257.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1101, i64 49)
  %122 = add i64 %polly.indvar268.us, %110
  %123 = add i64 %122, %106
  %polly.loop_guard275.us1198 = icmp sgt i64 %123, -1
  br i1 %polly.loop_guard275.us1198, label %polly.loop_header272.preheader.us, label %polly.loop_exit274.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.preheader.us, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ 0, %polly.loop_header272.preheader.us ]
  %124 = add nuw nsw i64 %polly.indvar276.us, %107
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %125 = mul nuw nsw i64 %124, 8000
  %scevgep288.us = getelementptr i8, i8* %scevgep283.us, i64 %125
  %scevgep288289.us = bitcast i8* %scevgep288.us to double*
  %_p_scalar_290.us = load double, double* %scevgep288289.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %126 = shl i64 %124, 3
  %127 = add i64 %126, %129
  %scevgep295.us = getelementptr i8, i8* %call, i64 %127
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar276.us, %smin
  br i1 %exitcond1103.not, label %polly.loop_exit274.us, label %polly.loop_header272.us

polly.loop_exit274.us:                            ; preds = %polly.loop_header272.us, %polly.loop_header264.us
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %polly.loop_cond270.us = icmp ult i64 %polly.indvar268.us, 79
  %indvars.iv.next1102 = add i64 %indvars.iv1101, 1
  br i1 %polly.loop_cond270.us, label %polly.loop_header264.us, label %polly.loop_exit266.loopexit.us

polly.loop_header272.preheader.us:                ; preds = %polly.loop_header264.us
  %128 = mul i64 %122, 8000
  %scevgep284.us = getelementptr i8, i8* %scevgep283.us, i64 %128
  %scevgep284285.us = bitcast i8* %scevgep284.us to double*
  %_p_scalar_286.us = load double, double* %scevgep284285.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1292.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %123
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %129 = mul i64 %122, 9600
  br label %polly.loop_header272.us

polly.loop_exit266.loopexit.us:                   ; preds = %polly.loop_exit274.us
  %polly.indvar_next261.us = add nuw nsw i64 %polly.indvar260.us, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next261.us, 1000
  br i1 %exitcond1104.not, label %polly.loop_exit259, label %polly.loop_header257.us

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header386

polly.exiting301:                                 ; preds = %polly.loop_exit412
  tail call void @free(i8* %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start300
  %indvar1314 = phi i64 [ %indvar.next1315, %polly.loop_exit394 ], [ 0, %polly.start300 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start300 ]
  %130 = add i64 %indvar1314, 1
  %131 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1316 = icmp ult i64 %130, 4
  br i1 %min.iters.check1316, label %polly.loop_header392.preheader, label %vector.ph1317

vector.ph1317:                                    ; preds = %polly.loop_header386
  %n.vec1319 = and i64 %130, -4
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %vector.ph1317
  %index1320 = phi i64 [ 0, %vector.ph1317 ], [ %index.next1321, %vector.body1313 ]
  %132 = shl nuw nsw i64 %index1320, 3
  %133 = getelementptr i8, i8* %scevgep398, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !79, !noalias !81
  %135 = fmul fast <4 x double> %wide.load1324, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !79, !noalias !81
  %index.next1321 = add i64 %index1320, 4
  %137 = icmp eq i64 %index.next1321, %n.vec1319
  br i1 %137, label %middle.block1311, label %vector.body1313, !llvm.loop !85

middle.block1311:                                 ; preds = %vector.body1313
  %cmp.n1323 = icmp eq i64 %130, %n.vec1319
  br i1 %cmp.n1323, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1311
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1319, %middle.block1311 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1311
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1315 = add i64 %indvar1314, 1
  br i1 %exitcond1135.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %138
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1134.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !86

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit412
  %indvars.iv1124 = phi i64 [ 0, %polly.loop_header402.preheader ], [ %indvars.iv.next1125, %polly.loop_exit412 ]
  %indvars.iv1119 = phi i64 [ 0, %polly.loop_header402.preheader ], [ %indvars.iv.next1120, %polly.loop_exit412 ]
  %indvars.iv1110 = phi i64 [ 7, %polly.loop_header402.preheader ], [ %indvars.iv.next1111, %polly.loop_exit412 ]
  %indvars.iv1108 = phi i64 [ 79, %polly.loop_header402.preheader ], [ %indvars.iv.next1109, %polly.loop_exit412 ]
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header402.preheader ], [ %polly.indvar_next406, %polly.loop_exit412 ]
  %139 = lshr i64 %indvars.iv1110, 3
  %140 = mul nuw nsw i64 %139, 80
  %141 = mul nuw nsw i64 %polly.indvar405, 3
  %142 = add nuw nsw i64 %141, 7
  %pexp.p_div_q408 = lshr i64 %142, 3
  %143 = sub nsw i64 %polly.indvar405, %pexp.p_div_q408
  %polly.loop_guard413 = icmp slt i64 %143, 15
  br i1 %polly.loop_guard413, label %polly.loop_header410.preheader, label %polly.loop_exit412

polly.loop_header410.preheader:                   ; preds = %polly.loop_header402
  %144 = sub nsw i64 %indvars.iv1108, %140
  %145 = sub nsw i64 %indvars.iv1124, %140
  %146 = add i64 %indvars.iv1119, %140
  %147 = mul nuw nsw i64 %polly.indvar405, 5
  %148 = mul nsw i64 %polly.indvar405, -50
  %149 = mul nuw nsw i64 %polly.indvar405, 50
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit469, %polly.loop_header402
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 30
  %indvars.iv.next1111 = add nuw nsw i64 %indvars.iv1110, 3
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -30
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 30
  %exitcond1133.not = icmp eq i64 %polly.indvar_next406, 24
  br i1 %exitcond1133.not, label %polly.exiting301, label %polly.loop_header402

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit469
  %indvars.iv1126 = phi i64 [ %145, %polly.loop_header410.preheader ], [ %indvars.iv.next1127, %polly.loop_exit469 ]
  %indvars.iv1121 = phi i64 [ %146, %polly.loop_header410.preheader ], [ %indvars.iv.next1122, %polly.loop_exit469 ]
  %indvars.iv1112 = phi i64 [ %144, %polly.loop_header410.preheader ], [ %indvars.iv.next1113, %polly.loop_exit469 ]
  %polly.indvar414 = phi i64 [ %143, %polly.loop_header410.preheader ], [ %polly.indvar_next415, %polly.loop_exit469 ]
  %smax1123 = call i64 @llvm.smax.i64(i64 %indvars.iv1121, i64 0)
  %150 = add i64 %smax1123, %indvars.iv1126
  %smax1114 = call i64 @llvm.smax.i64(i64 %indvars.iv1112, i64 0)
  %151 = shl nsw i64 %polly.indvar414, 3
  %.not.not924 = icmp sgt i64 %151, %147
  %152 = mul nsw i64 %polly.indvar414, 80
  %153 = add nsw i64 %152, %148
  %154 = icmp sgt i64 %153, 50
  %155 = select i1 %154, i64 %153, i64 50
  %156 = add nsw i64 %153, 79
  %polly.loop_guard441.not = icmp sgt i64 %155, %156
  br i1 %.not.not924, label %polly.loop_header417.us, label %polly.loop_header410.split

polly.loop_header417.us:                          ; preds = %polly.loop_header410, %polly.merge424.us
  %polly.indvar420.us = phi i64 [ %polly.indvar_next421.us, %polly.merge424.us ], [ 0, %polly.loop_header410 ]
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar420.us, 1200
  br label %polly.loop_header427.us

polly.loop_header427.us:                          ; preds = %polly.loop_header417.us, %polly.loop_header427.us
  %polly.indvar430.us = phi i64 [ %polly.indvar_next431.us, %polly.loop_header427.us ], [ 0, %polly.loop_header417.us ]
  %157 = add nuw nsw i64 %polly.indvar430.us, %149
  %polly.access.mul.call1434.us = mul nuw nsw i64 %157, 1000
  %polly.access.add.call1435.us = add nuw nsw i64 %polly.access.mul.call1434.us, %polly.indvar420.us
  %polly.access.call1436.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1435.us
  %polly.access.call1436.load.us = load double, double* %polly.access.call1436.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar430.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us
  store double %polly.access.call1436.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next431.us = add nuw nsw i64 %polly.indvar430.us, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next431.us, 50
  br i1 %exitcond1117.not, label %polly.loop_exit429.us, label %polly.loop_header427.us

polly.loop_exit429.us:                            ; preds = %polly.loop_header427.us
  br i1 %polly.loop_guard441.not, label %polly.merge424.us, label %polly.loop_header438.us

polly.loop_header438.us:                          ; preds = %polly.loop_exit429.us, %polly.loop_header438.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.loop_header438.us ], [ %155, %polly.loop_exit429.us ]
  %158 = add nuw nsw i64 %polly.indvar442.us, %149
  %polly.access.mul.call1446.us = mul nsw i64 %158, 1000
  %polly.access.add.call1447.us = add nuw nsw i64 %polly.access.mul.call1446.us, %polly.indvar420.us
  %polly.access.call1448.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1447.us
  %polly.access.call1448.load.us = load double, double* %polly.access.call1448.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1303450.us = add nuw nsw i64 %polly.indvar442.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303451.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303450.us
  store double %polly.access.call1448.load.us, double* %polly.access.Packed_MemRef_call1303451.us, align 8
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %polly.loop_cond444.not.not.us = icmp slt i64 %polly.indvar442.us, %156
  br i1 %polly.loop_cond444.not.not.us, label %polly.loop_header438.us, label %polly.merge424.us

polly.merge424.us:                                ; preds = %polly.loop_header438.us, %polly.loop_exit429.us
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next421.us, 1000
  br i1 %exitcond1118.not, label %polly.loop_header467.preheader, label %polly.loop_header417.us

polly.loop_header410.split:                       ; preds = %polly.loop_header410
  %polly.loop_guard456 = icmp sgt i64 %153, -80
  br i1 %polly.loop_guard456, label %polly.loop_header417.us980, label %polly.loop_header467.preheader

polly.loop_header417.us980:                       ; preds = %polly.loop_header410.split, %polly.merge424.loopexit927.us1025
  %polly.indvar420.us981 = phi i64 [ %polly.indvar_next421.us1017, %polly.merge424.loopexit927.us1025 ], [ 0, %polly.loop_header410.split ]
  %polly.access.mul.Packed_MemRef_call1303464.us1024 = mul nuw nsw i64 %polly.indvar420.us981, 1200
  br label %polly.loop_header453.us983

polly.loop_header453.us983:                       ; preds = %polly.loop_header417.us980, %polly.loop_header453.us983
  %polly.indvar457.us984 = phi i64 [ %polly.indvar_next458.us991, %polly.loop_header453.us983 ], [ 0, %polly.loop_header417.us980 ]
  %159 = add nuw nsw i64 %polly.indvar457.us984, %149
  %polly.access.mul.call1461.us985 = mul nuw nsw i64 %159, 1000
  %polly.access.add.call1462.us986 = add nuw nsw i64 %polly.access.mul.call1461.us985, %polly.indvar420.us981
  %polly.access.call1463.us987 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us986
  %polly.access.call1463.load.us988 = load double, double* %polly.access.call1463.us987, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1303465.us989 = add nuw nsw i64 %polly.indvar457.us984, %polly.access.mul.Packed_MemRef_call1303464.us1024
  %polly.access.Packed_MemRef_call1303466.us990 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303465.us989
  store double %polly.access.call1463.load.us988, double* %polly.access.Packed_MemRef_call1303466.us990, align 8
  %polly.indvar_next458.us991 = add nuw nsw i64 %polly.indvar457.us984, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar457.us984, %smax1114
  br i1 %exitcond1115.not, label %polly.merge424.loopexit927.us1025, label %polly.loop_header453.us983

polly.merge424.loopexit927.us1025:                ; preds = %polly.loop_header453.us983
  %polly.indvar_next421.us1017 = add nuw nsw i64 %polly.indvar420.us981, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next421.us1017, 1000
  br i1 %exitcond1116.not, label %polly.loop_header467.preheader, label %polly.loop_header417.us980

polly.loop_exit469:                               ; preds = %polly.loop_exit476.loopexit.us, %polly.loop_header467.preheader
  %polly.indvar_next415 = add nsw i64 %polly.indvar414, 1
  %polly.loop_cond416 = icmp slt i64 %polly.indvar414, 14
  %indvars.iv.next1113 = add i64 %indvars.iv1112, 80
  %indvars.iv.next1122 = add i64 %indvars.iv1121, -80
  %indvars.iv.next1127 = add i64 %indvars.iv1126, 80
  br i1 %polly.loop_cond416, label %polly.loop_header410, label %polly.loop_exit412

polly.loop_header467.preheader:                   ; preds = %polly.merge424.loopexit927.us1025, %polly.merge424.us, %polly.loop_header410.split
  %160 = sub nsw i64 %149, %152
  %161 = icmp sgt i64 %160, 0
  %162 = select i1 %161, i64 %160, i64 0
  %polly.loop_guard477 = icmp slt i64 %162, 80
  br i1 %polly.loop_guard477, label %polly.loop_header467.us, label %polly.loop_exit469

polly.loop_header467.us:                          ; preds = %polly.loop_header467.preheader, %polly.loop_exit476.loopexit.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_exit476.loopexit.us ], [ 0, %polly.loop_header467.preheader ]
  %163 = shl nuw nsw i64 %polly.indvar470.us, 3
  %scevgep493.us = getelementptr i8, i8* %call2, i64 %163
  %polly.access.mul.Packed_MemRef_call1303489.us = mul nuw nsw i64 %polly.indvar470.us, 1200
  br label %polly.loop_header474.us

polly.loop_header474.us:                          ; preds = %polly.loop_exit484.us, %polly.loop_header467.us
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit484.us ], [ %150, %polly.loop_header467.us ]
  %polly.indvar478.us = phi i64 [ %polly.indvar_next479.us, %polly.loop_exit484.us ], [ %162, %polly.loop_header467.us ]
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 49)
  %164 = add i64 %polly.indvar478.us, %152
  %165 = add i64 %164, %148
  %polly.loop_guard485.us1199 = icmp sgt i64 %165, -1
  br i1 %polly.loop_guard485.us1199, label %polly.loop_header482.preheader.us, label %polly.loop_exit484.us

polly.loop_header482.us:                          ; preds = %polly.loop_header482.preheader.us, %polly.loop_header482.us
  %polly.indvar486.us = phi i64 [ %polly.indvar_next487.us, %polly.loop_header482.us ], [ 0, %polly.loop_header482.preheader.us ]
  %166 = add nuw nsw i64 %polly.indvar486.us, %149
  %polly.access.add.Packed_MemRef_call1303490.us = add nuw nsw i64 %polly.indvar486.us, %polly.access.mul.Packed_MemRef_call1303489.us
  %polly.access.Packed_MemRef_call1303491.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1303491.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_496.us, %_p_scalar_492.us
  %167 = mul nuw nsw i64 %166, 8000
  %scevgep498.us = getelementptr i8, i8* %scevgep493.us, i64 %167
  %scevgep498499.us = bitcast i8* %scevgep498.us to double*
  %_p_scalar_500.us = load double, double* %scevgep498499.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %168 = shl i64 %166, 3
  %169 = add i64 %168, %171
  %scevgep505.us = getelementptr i8, i8* %call, i64 %169
  %scevgep505506.us = bitcast i8* %scevgep505.us to double*
  %_p_scalar_507.us = load double, double* %scevgep505506.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_507.us
  store double %p_add42.i79.us, double* %scevgep505506.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next487.us = add nuw nsw i64 %polly.indvar486.us, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar486.us, %smin1130
  br i1 %exitcond1131.not, label %polly.loop_exit484.us, label %polly.loop_header482.us

polly.loop_exit484.us:                            ; preds = %polly.loop_header482.us, %polly.loop_header474.us
  %polly.indvar_next479.us = add nuw nsw i64 %polly.indvar478.us, 1
  %polly.loop_cond480.us = icmp ult i64 %polly.indvar478.us, 79
  %indvars.iv.next1129 = add i64 %indvars.iv1128, 1
  br i1 %polly.loop_cond480.us, label %polly.loop_header474.us, label %polly.loop_exit476.loopexit.us

polly.loop_header482.preheader.us:                ; preds = %polly.loop_header474.us
  %170 = mul i64 %164, 8000
  %scevgep494.us = getelementptr i8, i8* %scevgep493.us, i64 %170
  %scevgep494495.us = bitcast i8* %scevgep494.us to double*
  %_p_scalar_496.us = load double, double* %scevgep494495.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1303502.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303489.us, %165
  %polly.access.Packed_MemRef_call1303503.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call1303503.us, align 8
  %171 = mul i64 %164, 9600
  br label %polly.loop_header482.us

polly.loop_exit476.loopexit.us:                   ; preds = %polly.loop_exit484.us
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next471.us, 1000
  br i1 %exitcond1132.not, label %polly.loop_exit469, label %polly.loop_header467.us

polly.start510:                                   ; preds = %init_array.exit
  %malloccall512 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header596

polly.exiting511:                                 ; preds = %polly.loop_exit622
  tail call void @free(i8* %malloccall512)
  br label %kernel_syr2k.exit

polly.loop_header596:                             ; preds = %polly.loop_exit604, %polly.start510
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit604 ], [ 0, %polly.start510 ]
  %polly.indvar599 = phi i64 [ %polly.indvar_next600, %polly.loop_exit604 ], [ 1, %polly.start510 ]
  %172 = add i64 %indvar, 1
  %173 = mul nuw nsw i64 %polly.indvar599, 9600
  %scevgep608 = getelementptr i8, i8* %call, i64 %173
  %min.iters.check1290 = icmp ult i64 %172, 4
  br i1 %min.iters.check1290, label %polly.loop_header602.preheader, label %vector.ph1291

vector.ph1291:                                    ; preds = %polly.loop_header596
  %n.vec1293 = and i64 %172, -4
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1291
  %index1294 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1295, %vector.body1289 ]
  %174 = shl nuw nsw i64 %index1294, 3
  %175 = getelementptr i8, i8* %scevgep608, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  %wide.load1298 = load <4 x double>, <4 x double>* %176, align 8, !alias.scope !89, !noalias !91
  %177 = fmul fast <4 x double> %wide.load1298, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %178 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %177, <4 x double>* %178, align 8, !alias.scope !89, !noalias !91
  %index.next1295 = add i64 %index1294, 4
  %179 = icmp eq i64 %index.next1295, %n.vec1293
  br i1 %179, label %middle.block1287, label %vector.body1289, !llvm.loop !95

middle.block1287:                                 ; preds = %vector.body1289
  %cmp.n1297 = icmp eq i64 %172, %n.vec1293
  br i1 %cmp.n1297, label %polly.loop_exit604, label %polly.loop_header602.preheader

polly.loop_header602.preheader:                   ; preds = %polly.loop_header596, %middle.block1287
  %polly.indvar605.ph = phi i64 [ 0, %polly.loop_header596 ], [ %n.vec1293, %middle.block1287 ]
  br label %polly.loop_header602

polly.loop_exit604:                               ; preds = %polly.loop_header602, %middle.block1287
  %polly.indvar_next600 = add nuw nsw i64 %polly.indvar599, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next600, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1163.not, label %polly.loop_header612.preheader, label %polly.loop_header596

polly.loop_header612.preheader:                   ; preds = %polly.loop_exit604
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  br label %polly.loop_header612

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_header602
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_header602 ], [ %polly.indvar605.ph, %polly.loop_header602.preheader ]
  %180 = shl nuw nsw i64 %polly.indvar605, 3
  %scevgep609 = getelementptr i8, i8* %scevgep608, i64 %180
  %scevgep609610 = bitcast i8* %scevgep609 to double*
  %_p_scalar_611 = load double, double* %scevgep609610, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_611, 1.200000e+00
  store double %p_mul.i, double* %scevgep609610, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar_next606, %polly.indvar599
  br i1 %exitcond1162.not, label %polly.loop_exit604, label %polly.loop_header602, !llvm.loop !96

polly.loop_header612:                             ; preds = %polly.loop_header612.preheader, %polly.loop_exit622
  %indvars.iv1152 = phi i64 [ 0, %polly.loop_header612.preheader ], [ %indvars.iv.next1153, %polly.loop_exit622 ]
  %indvars.iv1147 = phi i64 [ 0, %polly.loop_header612.preheader ], [ %indvars.iv.next1148, %polly.loop_exit622 ]
  %indvars.iv1138 = phi i64 [ 7, %polly.loop_header612.preheader ], [ %indvars.iv.next1139, %polly.loop_exit622 ]
  %indvars.iv1136 = phi i64 [ 79, %polly.loop_header612.preheader ], [ %indvars.iv.next1137, %polly.loop_exit622 ]
  %polly.indvar615 = phi i64 [ 0, %polly.loop_header612.preheader ], [ %polly.indvar_next616, %polly.loop_exit622 ]
  %181 = lshr i64 %indvars.iv1138, 3
  %182 = mul nuw nsw i64 %181, 80
  %183 = mul nuw nsw i64 %polly.indvar615, 3
  %184 = add nuw nsw i64 %183, 7
  %pexp.p_div_q618 = lshr i64 %184, 3
  %185 = sub nsw i64 %polly.indvar615, %pexp.p_div_q618
  %polly.loop_guard623 = icmp slt i64 %185, 15
  br i1 %polly.loop_guard623, label %polly.loop_header620.preheader, label %polly.loop_exit622

polly.loop_header620.preheader:                   ; preds = %polly.loop_header612
  %186 = sub nsw i64 %indvars.iv1136, %182
  %187 = sub nsw i64 %indvars.iv1152, %182
  %188 = add i64 %indvars.iv1147, %182
  %189 = mul nuw nsw i64 %polly.indvar615, 5
  %190 = mul nsw i64 %polly.indvar615, -50
  %191 = mul nuw nsw i64 %polly.indvar615, 50
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_exit679, %polly.loop_header612
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 30
  %indvars.iv.next1139 = add nuw nsw i64 %indvars.iv1138, 3
  %indvars.iv.next1148 = add nsw i64 %indvars.iv1147, -30
  %indvars.iv.next1153 = add nuw nsw i64 %indvars.iv1152, 30
  %exitcond1161.not = icmp eq i64 %polly.indvar_next616, 24
  br i1 %exitcond1161.not, label %polly.exiting511, label %polly.loop_header612

polly.loop_header620:                             ; preds = %polly.loop_header620.preheader, %polly.loop_exit679
  %indvars.iv1154 = phi i64 [ %187, %polly.loop_header620.preheader ], [ %indvars.iv.next1155, %polly.loop_exit679 ]
  %indvars.iv1149 = phi i64 [ %188, %polly.loop_header620.preheader ], [ %indvars.iv.next1150, %polly.loop_exit679 ]
  %indvars.iv1140 = phi i64 [ %186, %polly.loop_header620.preheader ], [ %indvars.iv.next1141, %polly.loop_exit679 ]
  %polly.indvar624 = phi i64 [ %185, %polly.loop_header620.preheader ], [ %polly.indvar_next625, %polly.loop_exit679 ]
  %smax1151 = call i64 @llvm.smax.i64(i64 %indvars.iv1149, i64 0)
  %192 = add i64 %smax1151, %indvars.iv1154
  %smax1142 = call i64 @llvm.smax.i64(i64 %indvars.iv1140, i64 0)
  %193 = shl nsw i64 %polly.indvar624, 3
  %.not.not925 = icmp sgt i64 %193, %189
  %194 = mul nsw i64 %polly.indvar624, 80
  %195 = add nsw i64 %194, %190
  %196 = icmp sgt i64 %195, 50
  %197 = select i1 %196, i64 %195, i64 50
  %198 = add nsw i64 %195, 79
  %polly.loop_guard651.not = icmp sgt i64 %197, %198
  br i1 %.not.not925, label %polly.loop_header627.us, label %polly.loop_header620.split

polly.loop_header627.us:                          ; preds = %polly.loop_header620, %polly.merge634.us
  %polly.indvar630.us = phi i64 [ %polly.indvar_next631.us, %polly.merge634.us ], [ 0, %polly.loop_header620 ]
  %polly.access.mul.Packed_MemRef_call1513.us = mul nuw nsw i64 %polly.indvar630.us, 1200
  br label %polly.loop_header637.us

polly.loop_header637.us:                          ; preds = %polly.loop_header627.us, %polly.loop_header637.us
  %polly.indvar640.us = phi i64 [ %polly.indvar_next641.us, %polly.loop_header637.us ], [ 0, %polly.loop_header627.us ]
  %199 = add nuw nsw i64 %polly.indvar640.us, %191
  %polly.access.mul.call1644.us = mul nuw nsw i64 %199, 1000
  %polly.access.add.call1645.us = add nuw nsw i64 %polly.access.mul.call1644.us, %polly.indvar630.us
  %polly.access.call1646.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1645.us
  %polly.access.call1646.load.us = load double, double* %polly.access.call1646.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1513.us = add nuw nsw i64 %polly.indvar640.us, %polly.access.mul.Packed_MemRef_call1513.us
  %polly.access.Packed_MemRef_call1513.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us
  store double %polly.access.call1646.load.us, double* %polly.access.Packed_MemRef_call1513.us, align 8
  %polly.indvar_next641.us = add nuw nsw i64 %polly.indvar640.us, 1
  %exitcond1145.not = icmp eq i64 %polly.indvar_next641.us, 50
  br i1 %exitcond1145.not, label %polly.loop_exit639.us, label %polly.loop_header637.us

polly.loop_exit639.us:                            ; preds = %polly.loop_header637.us
  br i1 %polly.loop_guard651.not, label %polly.merge634.us, label %polly.loop_header648.us

polly.loop_header648.us:                          ; preds = %polly.loop_exit639.us, %polly.loop_header648.us
  %polly.indvar652.us = phi i64 [ %polly.indvar_next653.us, %polly.loop_header648.us ], [ %197, %polly.loop_exit639.us ]
  %200 = add nuw nsw i64 %polly.indvar652.us, %191
  %polly.access.mul.call1656.us = mul nsw i64 %200, 1000
  %polly.access.add.call1657.us = add nuw nsw i64 %polly.access.mul.call1656.us, %polly.indvar630.us
  %polly.access.call1658.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1657.us
  %polly.access.call1658.load.us = load double, double* %polly.access.call1658.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1513660.us = add nuw nsw i64 %polly.indvar652.us, %polly.access.mul.Packed_MemRef_call1513.us
  %polly.access.Packed_MemRef_call1513661.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513660.us
  store double %polly.access.call1658.load.us, double* %polly.access.Packed_MemRef_call1513661.us, align 8
  %polly.indvar_next653.us = add nuw nsw i64 %polly.indvar652.us, 1
  %polly.loop_cond654.not.not.us = icmp slt i64 %polly.indvar652.us, %198
  br i1 %polly.loop_cond654.not.not.us, label %polly.loop_header648.us, label %polly.merge634.us

polly.merge634.us:                                ; preds = %polly.loop_header648.us, %polly.loop_exit639.us
  %polly.indvar_next631.us = add nuw nsw i64 %polly.indvar630.us, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar_next631.us, 1000
  br i1 %exitcond1146.not, label %polly.loop_header677.preheader, label %polly.loop_header627.us

polly.loop_header620.split:                       ; preds = %polly.loop_header620
  %polly.loop_guard666 = icmp sgt i64 %195, -80
  br i1 %polly.loop_guard666, label %polly.loop_header627.us1026, label %polly.loop_header677.preheader

polly.loop_header627.us1026:                      ; preds = %polly.loop_header620.split, %polly.merge634.loopexit928.us1071
  %polly.indvar630.us1027 = phi i64 [ %polly.indvar_next631.us1063, %polly.merge634.loopexit928.us1071 ], [ 0, %polly.loop_header620.split ]
  %polly.access.mul.Packed_MemRef_call1513674.us1070 = mul nuw nsw i64 %polly.indvar630.us1027, 1200
  br label %polly.loop_header663.us1029

polly.loop_header663.us1029:                      ; preds = %polly.loop_header627.us1026, %polly.loop_header663.us1029
  %polly.indvar667.us1030 = phi i64 [ %polly.indvar_next668.us1037, %polly.loop_header663.us1029 ], [ 0, %polly.loop_header627.us1026 ]
  %201 = add nuw nsw i64 %polly.indvar667.us1030, %191
  %polly.access.mul.call1671.us1031 = mul nuw nsw i64 %201, 1000
  %polly.access.add.call1672.us1032 = add nuw nsw i64 %polly.access.mul.call1671.us1031, %polly.indvar630.us1027
  %polly.access.call1673.us1033 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us1032
  %polly.access.call1673.load.us1034 = load double, double* %polly.access.call1673.us1033, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1513675.us1035 = add nuw nsw i64 %polly.indvar667.us1030, %polly.access.mul.Packed_MemRef_call1513674.us1070
  %polly.access.Packed_MemRef_call1513676.us1036 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513675.us1035
  store double %polly.access.call1673.load.us1034, double* %polly.access.Packed_MemRef_call1513676.us1036, align 8
  %polly.indvar_next668.us1037 = add nuw nsw i64 %polly.indvar667.us1030, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar667.us1030, %smax1142
  br i1 %exitcond1143.not, label %polly.merge634.loopexit928.us1071, label %polly.loop_header663.us1029

polly.merge634.loopexit928.us1071:                ; preds = %polly.loop_header663.us1029
  %polly.indvar_next631.us1063 = add nuw nsw i64 %polly.indvar630.us1027, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar_next631.us1063, 1000
  br i1 %exitcond1144.not, label %polly.loop_header677.preheader, label %polly.loop_header627.us1026

polly.loop_exit679:                               ; preds = %polly.loop_exit686.loopexit.us, %polly.loop_header677.preheader
  %polly.indvar_next625 = add nsw i64 %polly.indvar624, 1
  %polly.loop_cond626 = icmp slt i64 %polly.indvar624, 14
  %indvars.iv.next1141 = add i64 %indvars.iv1140, 80
  %indvars.iv.next1150 = add i64 %indvars.iv1149, -80
  %indvars.iv.next1155 = add i64 %indvars.iv1154, 80
  br i1 %polly.loop_cond626, label %polly.loop_header620, label %polly.loop_exit622

polly.loop_header677.preheader:                   ; preds = %polly.merge634.loopexit928.us1071, %polly.merge634.us, %polly.loop_header620.split
  %202 = sub nsw i64 %191, %194
  %203 = icmp sgt i64 %202, 0
  %204 = select i1 %203, i64 %202, i64 0
  %polly.loop_guard687 = icmp slt i64 %204, 80
  br i1 %polly.loop_guard687, label %polly.loop_header677.us, label %polly.loop_exit679

polly.loop_header677.us:                          ; preds = %polly.loop_header677.preheader, %polly.loop_exit686.loopexit.us
  %polly.indvar680.us = phi i64 [ %polly.indvar_next681.us, %polly.loop_exit686.loopexit.us ], [ 0, %polly.loop_header677.preheader ]
  %205 = shl nuw nsw i64 %polly.indvar680.us, 3
  %scevgep703.us = getelementptr i8, i8* %call2, i64 %205
  %polly.access.mul.Packed_MemRef_call1513699.us = mul nuw nsw i64 %polly.indvar680.us, 1200
  br label %polly.loop_header684.us

polly.loop_header684.us:                          ; preds = %polly.loop_exit694.us, %polly.loop_header677.us
  %indvars.iv1156 = phi i64 [ %indvars.iv.next1157, %polly.loop_exit694.us ], [ %192, %polly.loop_header677.us ]
  %polly.indvar688.us = phi i64 [ %polly.indvar_next689.us, %polly.loop_exit694.us ], [ %204, %polly.loop_header677.us ]
  %smin1158 = call i64 @llvm.smin.i64(i64 %indvars.iv1156, i64 49)
  %206 = add i64 %polly.indvar688.us, %194
  %207 = add i64 %206, %190
  %polly.loop_guard695.us1200 = icmp sgt i64 %207, -1
  br i1 %polly.loop_guard695.us1200, label %polly.loop_header692.preheader.us, label %polly.loop_exit694.us

polly.loop_header692.us:                          ; preds = %polly.loop_header692.preheader.us, %polly.loop_header692.us
  %polly.indvar696.us = phi i64 [ %polly.indvar_next697.us, %polly.loop_header692.us ], [ 0, %polly.loop_header692.preheader.us ]
  %208 = add nuw nsw i64 %polly.indvar696.us, %191
  %polly.access.add.Packed_MemRef_call1513700.us = add nuw nsw i64 %polly.indvar696.us, %polly.access.mul.Packed_MemRef_call1513699.us
  %polly.access.Packed_MemRef_call1513701.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call1513701.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_706.us, %_p_scalar_702.us
  %209 = mul nuw nsw i64 %208, 8000
  %scevgep708.us = getelementptr i8, i8* %scevgep703.us, i64 %209
  %scevgep708709.us = bitcast i8* %scevgep708.us to double*
  %_p_scalar_710.us = load double, double* %scevgep708709.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %210 = shl i64 %208, 3
  %211 = add i64 %210, %213
  %scevgep715.us = getelementptr i8, i8* %call, i64 %211
  %scevgep715716.us = bitcast i8* %scevgep715.us to double*
  %_p_scalar_717.us = load double, double* %scevgep715716.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_717.us
  store double %p_add42.i.us, double* %scevgep715716.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %exitcond1159.not = icmp eq i64 %polly.indvar696.us, %smin1158
  br i1 %exitcond1159.not, label %polly.loop_exit694.us, label %polly.loop_header692.us

polly.loop_exit694.us:                            ; preds = %polly.loop_header692.us, %polly.loop_header684.us
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %polly.loop_cond690.us = icmp ult i64 %polly.indvar688.us, 79
  %indvars.iv.next1157 = add i64 %indvars.iv1156, 1
  br i1 %polly.loop_cond690.us, label %polly.loop_header684.us, label %polly.loop_exit686.loopexit.us

polly.loop_header692.preheader.us:                ; preds = %polly.loop_header684.us
  %212 = mul i64 %206, 8000
  %scevgep704.us = getelementptr i8, i8* %scevgep703.us, i64 %212
  %scevgep704705.us = bitcast i8* %scevgep704.us to double*
  %_p_scalar_706.us = load double, double* %scevgep704705.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1513712.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1513699.us, %207
  %polly.access.Packed_MemRef_call1513713.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call1513713.us, align 8
  %213 = mul i64 %206, 9600
  br label %polly.loop_header692.us

polly.loop_exit686.loopexit.us:                   ; preds = %polly.loop_exit694.us
  %polly.indvar_next681.us = add nuw nsw i64 %polly.indvar680.us, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar_next681.us, 1000
  br i1 %exitcond1160.not, label %polly.loop_exit679, label %polly.loop_header677.us

polly.loop_header844:                             ; preds = %entry, %polly.loop_exit852
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %polly.loop_exit852 ], [ 0, %entry ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %entry ]
  %smin1190 = call i64 @llvm.smin.i64(i64 %indvars.iv1188, i64 -1168)
  %214 = shl nsw i64 %polly.indvar847, 5
  %215 = add nsw i64 %smin1190, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1189 = add nsw i64 %indvars.iv1188, -32
  %exitcond1193.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1193.not, label %polly.loop_header871, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %indvars.iv1184 = phi i64 [ %indvars.iv.next1185, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %216 = mul nsw i64 %polly.indvar853, -32
  %smin1228 = call i64 @llvm.smin.i64(i64 %216, i64 -1168)
  %217 = add nsw i64 %smin1228, 1200
  %smin1186 = call i64 @llvm.smin.i64(i64 %indvars.iv1184, i64 -1168)
  %218 = shl nsw i64 %polly.indvar853, 5
  %219 = add nsw i64 %smin1186, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1185 = add nsw i64 %indvars.iv1184, -32
  %exitcond1192.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1192.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %polly.indvar859 = phi i64 [ 0, %polly.loop_header850 ], [ %polly.indvar_next860, %polly.loop_exit864 ]
  %220 = add nuw nsw i64 %polly.indvar859, %214
  %221 = trunc i64 %220 to i32
  %222 = mul nuw nsw i64 %220, 9600
  %min.iters.check = icmp eq i64 %217, 0
  br i1 %min.iters.check, label %polly.loop_header862, label %vector.ph1229

vector.ph1229:                                    ; preds = %polly.loop_header856
  %broadcast.splatinsert1236 = insertelement <4 x i64> poison, i64 %218, i32 0
  %broadcast.splat1237 = shufflevector <4 x i64> %broadcast.splatinsert1236, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1229
  %index1230 = phi i64 [ 0, %vector.ph1229 ], [ %index.next1231, %vector.body1227 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1229 ], [ %vec.ind.next1235, %vector.body1227 ]
  %223 = add nuw nsw <4 x i64> %vec.ind1234, %broadcast.splat1237
  %224 = trunc <4 x i64> %223 to <4 x i32>
  %225 = mul <4 x i32> %broadcast.splat1239, %224
  %226 = add <4 x i32> %225, <i32 3, i32 3, i32 3, i32 3>
  %227 = urem <4 x i32> %226, <i32 1200, i32 1200, i32 1200, i32 1200>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %230 = extractelement <4 x i64> %223, i32 0
  %231 = shl i64 %230, 3
  %232 = add nuw nsw i64 %231, %222
  %233 = getelementptr i8, i8* %call, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %229, <4 x double>* %234, align 8, !alias.scope !99, !noalias !101
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %235 = icmp eq i64 %index.next1231, %217
  br i1 %235, label %polly.loop_exit864, label %vector.body1227, !llvm.loop !104

polly.loop_exit864:                               ; preds = %vector.body1227, %polly.loop_header862
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1191.not = icmp eq i64 %polly.indvar859, %215
  br i1 %exitcond1191.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_header856, %polly.loop_header862
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_header862 ], [ 0, %polly.loop_header856 ]
  %236 = add nuw nsw i64 %polly.indvar865, %218
  %237 = trunc i64 %236 to i32
  %238 = mul i32 %237, %221
  %239 = add i32 %238, 3
  %240 = urem i32 %239, 1200
  %p_conv31.i = sitofp i32 %240 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %241 = shl i64 %236, 3
  %242 = add nuw nsw i64 %241, %222
  %scevgep868 = getelementptr i8, i8* %call, i64 %242
  %scevgep868869 = bitcast i8* %scevgep868 to double*
  store double %p_div33.i, double* %scevgep868869, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1187.not = icmp eq i64 %polly.indvar865, %219
  br i1 %exitcond1187.not, label %polly.loop_exit864, label %polly.loop_header862, !llvm.loop !105

polly.loop_header871:                             ; preds = %polly.loop_exit852, %polly.loop_exit879
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 -1168)
  %243 = shl nsw i64 %polly.indvar874, 5
  %244 = add nsw i64 %smin1180, 1199
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -32
  %exitcond1183.not = icmp eq i64 %polly.indvar_next875, 38
  br i1 %exitcond1183.not, label %polly.loop_header897, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %indvars.iv1174 = phi i64 [ %indvars.iv.next1175, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %245 = mul nsw i64 %polly.indvar880, -32
  %smin1243 = call i64 @llvm.smin.i64(i64 %245, i64 -968)
  %246 = add nsw i64 %smin1243, 1000
  %smin1176 = call i64 @llvm.smin.i64(i64 %indvars.iv1174, i64 -968)
  %247 = shl nsw i64 %polly.indvar880, 5
  %248 = add nsw i64 %smin1176, 999
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1175 = add nsw i64 %indvars.iv1174, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next881, 32
  br i1 %exitcond1182.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %polly.indvar886 = phi i64 [ 0, %polly.loop_header877 ], [ %polly.indvar_next887, %polly.loop_exit891 ]
  %249 = add nuw nsw i64 %polly.indvar886, %243
  %250 = trunc i64 %249 to i32
  %251 = mul nuw nsw i64 %249, 8000
  %min.iters.check1244 = icmp eq i64 %246, 0
  br i1 %min.iters.check1244, label %polly.loop_header889, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header883
  %broadcast.splatinsert1254 = insertelement <4 x i64> poison, i64 %247, i32 0
  %broadcast.splat1255 = shufflevector <4 x i64> %broadcast.splatinsert1254, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1256 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1257 = shufflevector <4 x i32> %broadcast.splatinsert1256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1242 ]
  %vec.ind1252 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1245 ], [ %vec.ind.next1253, %vector.body1242 ]
  %252 = add nuw nsw <4 x i64> %vec.ind1252, %broadcast.splat1255
  %253 = trunc <4 x i64> %252 to <4 x i32>
  %254 = mul <4 x i32> %broadcast.splat1257, %253
  %255 = add <4 x i32> %254, <i32 2, i32 2, i32 2, i32 2>
  %256 = urem <4 x i32> %255, <i32 1000, i32 1000, i32 1000, i32 1000>
  %257 = sitofp <4 x i32> %256 to <4 x double>
  %258 = fmul fast <4 x double> %257, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %259 = extractelement <4 x i64> %252, i32 0
  %260 = shl i64 %259, 3
  %261 = add nuw nsw i64 %260, %251
  %262 = getelementptr i8, i8* %call2, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %258, <4 x double>* %263, align 8, !alias.scope !103, !noalias !106
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1253 = add <4 x i64> %vec.ind1252, <i64 4, i64 4, i64 4, i64 4>
  %264 = icmp eq i64 %index.next1249, %246
  br i1 %264, label %polly.loop_exit891, label %vector.body1242, !llvm.loop !107

polly.loop_exit891:                               ; preds = %vector.body1242, %polly.loop_header889
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar886, %244
  br i1 %exitcond1181.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_header883, %polly.loop_header889
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_header889 ], [ 0, %polly.loop_header883 ]
  %265 = add nuw nsw i64 %polly.indvar892, %247
  %266 = trunc i64 %265 to i32
  %267 = mul i32 %266, %250
  %268 = add i32 %267, 2
  %269 = urem i32 %268, 1000
  %p_conv10.i = sitofp i32 %269 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %270 = shl i64 %265, 3
  %271 = add nuw nsw i64 %270, %251
  %scevgep895 = getelementptr i8, i8* %call2, i64 %271
  %scevgep895896 = bitcast i8* %scevgep895 to double*
  store double %p_div12.i, double* %scevgep895896, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar892, %248
  br i1 %exitcond1177.not, label %polly.loop_exit891, label %polly.loop_header889, !llvm.loop !108

polly.loop_header897:                             ; preds = %polly.loop_exit879, %polly.loop_exit905
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -1168)
  %272 = shl nsw i64 %polly.indvar900, 5
  %273 = add nsw i64 %smin1170, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1173.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1173.not, label %init_array.exit, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %indvars.iv1164 = phi i64 [ %indvars.iv.next1165, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %274 = mul nsw i64 %polly.indvar906, -32
  %smin1261 = call i64 @llvm.smin.i64(i64 %274, i64 -968)
  %275 = add nsw i64 %smin1261, 1000
  %smin1166 = call i64 @llvm.smin.i64(i64 %indvars.iv1164, i64 -968)
  %276 = shl nsw i64 %polly.indvar906, 5
  %277 = add nsw i64 %smin1166, 999
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1165 = add nsw i64 %indvars.iv1164, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next907, 32
  br i1 %exitcond1172.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %polly.indvar912 = phi i64 [ 0, %polly.loop_header903 ], [ %polly.indvar_next913, %polly.loop_exit917 ]
  %278 = add nuw nsw i64 %polly.indvar912, %272
  %279 = trunc i64 %278 to i32
  %280 = mul nuw nsw i64 %278, 8000
  %min.iters.check1262 = icmp eq i64 %275, 0
  br i1 %min.iters.check1262, label %polly.loop_header915, label %vector.ph1263

vector.ph1263:                                    ; preds = %polly.loop_header909
  %broadcast.splatinsert1272 = insertelement <4 x i64> poison, i64 %276, i32 0
  %broadcast.splat1273 = shufflevector <4 x i64> %broadcast.splatinsert1272, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1260 ]
  %vec.ind1270 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1263 ], [ %vec.ind.next1271, %vector.body1260 ]
  %281 = add nuw nsw <4 x i64> %vec.ind1270, %broadcast.splat1273
  %282 = trunc <4 x i64> %281 to <4 x i32>
  %283 = mul <4 x i32> %broadcast.splat1275, %282
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 1200, i32 1200, i32 1200, i32 1200>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %288 = extractelement <4 x i64> %281, i32 0
  %289 = shl i64 %288, 3
  %290 = add nuw nsw i64 %289, %280
  %291 = getelementptr i8, i8* %call1, i64 %290
  %292 = bitcast i8* %291 to <4 x double>*
  store <4 x double> %287, <4 x double>* %292, align 8, !alias.scope !102, !noalias !109
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1271 = add <4 x i64> %vec.ind1270, <i64 4, i64 4, i64 4, i64 4>
  %293 = icmp eq i64 %index.next1267, %275
  br i1 %293, label %polly.loop_exit917, label %vector.body1260, !llvm.loop !110

polly.loop_exit917:                               ; preds = %vector.body1260, %polly.loop_header915
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar912, %273
  br i1 %exitcond1171.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_header909, %polly.loop_header915
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_header915 ], [ 0, %polly.loop_header909 ]
  %294 = add nuw nsw i64 %polly.indvar918, %276
  %295 = trunc i64 %294 to i32
  %296 = mul i32 %295, %279
  %297 = add i32 %296, 1
  %298 = urem i32 %297, 1200
  %p_conv.i = sitofp i32 %298 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %299 = shl i64 %294, 3
  %300 = add nuw nsw i64 %299, %280
  %scevgep922 = getelementptr i8, i8* %call1, i64 %300
  %scevgep922923 = bitcast i8* %scevgep922 to double*
  store double %p_div.i, double* %scevgep922923, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar918, %277
  br i1 %exitcond1167.not, label %polly.loop_exit917, label %polly.loop_header915, !llvm.loop !111
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
!21 = distinct !{!"A"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 50}
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
!50 = !{!"llvm.loop.tile.size", i32 80}
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
!105 = distinct !{!105, !76, !13}
!106 = !{!102, !99}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !76, !13}
!109 = !{!103, !99}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !76, !13}
