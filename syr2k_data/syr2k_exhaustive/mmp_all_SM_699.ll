; ModuleID = 'syr2k_exhaustive/mmp_all_SM_699.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_699.c"
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
  %call888 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1740 = bitcast i8* %call1 to double*
  %polly.access.call1749 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2750 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1749, %call2
  %polly.access.call2769 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2769, %call1
  %2 = or i1 %0, %1
  %polly.access.call789 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call789, %call2
  %4 = icmp ule i8* %polly.access.call2769, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call789, %call1
  %8 = icmp ule i8* %polly.access.call1749, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header862, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1206 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1205 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1204 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1203 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1203, %scevgep1206
  %bound1 = icmp ult i8* %scevgep1205, %scevgep1204
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
  br i1 %exitcond18.not.i, label %vector.ph1210, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1210:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1217 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1218 = shufflevector <4 x i64> %broadcast.splatinsert1217, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1210
  %index1211 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1212, %vector.body1209 ]
  %vec.ind1215 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1210 ], [ %vec.ind.next1216, %vector.body1209 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1215, %broadcast.splat1218
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv7.i, i64 %index1211
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1216 = add <4 x i64> %vec.ind1215, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1212, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1209, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1209
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1210, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit923
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1273 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1273, label %for.body3.i46.preheader1422, label %vector.ph1274

vector.ph1274:                                    ; preds = %for.body3.i46.preheader
  %n.vec1276 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %vector.ph1274
  %index1277 = phi i64 [ 0, %vector.ph1274 ], [ %index.next1278, %vector.body1272 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %index1277
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1278 = add i64 %index1277, 4
  %46 = icmp eq i64 %index.next1278, %n.vec1276
  br i1 %46, label %middle.block1270, label %vector.body1272, !llvm.loop !18

middle.block1270:                                 ; preds = %vector.body1272
  %cmp.n1280 = icmp eq i64 %indvars.iv21.i, %n.vec1276
  br i1 %cmp.n1280, label %for.inc6.i, label %for.body3.i46.preheader1422

for.body3.i46.preheader1422:                      ; preds = %for.body3.i46.preheader, %middle.block1270
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1276, %middle.block1270 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1422, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1422 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1270, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !23

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting524
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start308, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1320 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1320, label %for.body3.i60.preheader1420, label %vector.ph1321

vector.ph1321:                                    ; preds = %for.body3.i60.preheader
  %n.vec1323 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %vector.ph1321
  %index1324 = phi i64 [ 0, %vector.ph1321 ], [ %index.next1325, %vector.body1319 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %index1324
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1328 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1328, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1325 = add i64 %index1324, 4
  %57 = icmp eq i64 %index.next1325, %n.vec1323
  br i1 %57, label %middle.block1317, label %vector.body1319, !llvm.loop !64

middle.block1317:                                 ; preds = %vector.body1319
  %cmp.n1327 = icmp eq i64 %indvars.iv21.i52, %n.vec1323
  br i1 %cmp.n1327, label %for.inc6.i63, label %for.body3.i60.preheader1420

for.body3.i60.preheader1420:                      ; preds = %for.body3.i60.preheader, %middle.block1317
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1323, %middle.block1317 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1420, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1420 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1317, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !23

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting309
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1370 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1370, label %for.body3.i99.preheader1418, label %vector.ph1371

vector.ph1371:                                    ; preds = %for.body3.i99.preheader
  %n.vec1373 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1369

vector.body1369:                                  ; preds = %vector.body1369, %vector.ph1371
  %index1374 = phi i64 [ 0, %vector.ph1371 ], [ %index.next1375, %vector.body1369 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %index1374
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1378 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1378, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1375 = add i64 %index1374, 4
  %68 = icmp eq i64 %index.next1375, %n.vec1373
  br i1 %68, label %middle.block1367, label %vector.body1369, !llvm.loop !66

middle.block1367:                                 ; preds = %vector.body1369
  %cmp.n1377 = icmp eq i64 %indvars.iv21.i91, %n.vec1373
  br i1 %cmp.n1377, label %for.inc6.i102, label %for.body3.i99.preheader1418

for.body3.i99.preheader1418:                      ; preds = %for.body3.i99.preheader, %middle.block1367
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1373, %middle.block1367 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1418, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1418 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1367, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !23

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !68
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !71

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall136 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1382 = phi i64 [ %indvar.next1383, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1382, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1384 = icmp ult i64 %88, 4
  br i1 %min.iters.check1384, label %polly.loop_header192.preheader, label %vector.ph1385

vector.ph1385:                                    ; preds = %polly.loop_header
  %n.vec1387 = and i64 %88, -4
  br label %vector.body1381

vector.body1381:                                  ; preds = %vector.body1381, %vector.ph1385
  %index1388 = phi i64 [ 0, %vector.ph1385 ], [ %index.next1389, %vector.body1381 ]
  %90 = shl nuw nsw i64 %index1388, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1392 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1392, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1389 = add i64 %index1388, 4
  %95 = icmp eq i64 %index.next1389, %n.vec1387
  br i1 %95, label %middle.block1379, label %vector.body1381, !llvm.loop !79

middle.block1379:                                 ; preds = %vector.body1381
  %cmp.n1391 = icmp eq i64 %88, %n.vec1387
  br i1 %cmp.n1391, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1379
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1387, %middle.block1379 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1379
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1383 = add i64 %indvar1382, 1
  br i1 %exitcond1103.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1102.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 100
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar_next204, 10
  br i1 %exitcond1101.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = shl nuw nsw i64 %polly.indvar209, 6
  %99 = mul nuw nsw i64 %polly.indvar209, 7
  %100 = udiv i64 %99, 25
  %101 = add nuw i64 %polly.indvar209, %100
  %102 = mul nuw nsw i64 %101, 50
  %103 = sub i64 %98, %102
  %104 = mul nsw i64 %polly.indvar209, -64
  %105 = add i64 %104, %102
  %106 = udiv i64 %indvars.iv1088, 25
  %107 = add nuw i64 %polly.indvar209, %106
  %108 = mul nuw nsw i64 %107, 50
  %109 = sub i64 %indvars.iv1086, %108
  %110 = add i64 %indvars.iv1092, %108
  %111 = shl nsw i64 %polly.indvar209, 6
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %112 = mul nsw i64 %polly.indvar209, -64
  %113 = mul nuw nsw i64 %polly.indvar209, 7
  %pexp.p_div_q = udiv i64 %113, 25
  %114 = add nuw nsw i64 %pexp.p_div_q, %polly.indvar209
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 64
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 7
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -64
  %exitcond1100.not = icmp eq i64 %polly.indvar_next210, 19
  br i1 %exitcond1100.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %115 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next216, 100
  br i1 %exitcond1082.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %116 = add nuw nsw i64 %polly.indvar221, %111
  %polly.access.mul.call2225 = mul nuw nsw i64 %116, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %115, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1396 = phi i64 [ %indvar.next1397, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit267 ], [ %110, %polly.loop_exit214 ]
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit267 ], [ %109, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %114, %polly.loop_exit214 ]
  %117 = mul nsw i64 %indvar1396, -50
  %118 = add i64 %103, %117
  %smax1398 = call i64 @llvm.smax.i64(i64 %118, i64 0)
  %119 = mul nuw nsw i64 %indvar1396, 50
  %120 = add i64 %105, %119
  %121 = add i64 %smax1398, %120
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1090, i64 0)
  %122 = add i64 %smax, %indvars.iv1094
  %123 = mul nuw nsw i64 %polly.indvar231, 50
  %124 = add nsw i64 %123, %112
  %125 = add nsw i64 %124, -1
  %.inv = icmp sgt i64 %124, 63
  %126 = select i1 %.inv, i64 63, i64 %125
  %polly.loop_guard = icmp sgt i64 %126, -1
  %127 = icmp sgt i64 %124, 0
  %128 = select i1 %127, i64 %124, i64 0
  %129 = add nsw i64 %124, 49
  %polly.loop_guard254.not = icmp sgt i64 %128, %129
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %130 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %131 = add nuw nsw i64 %polly.indvar243.us, %111
  %polly.access.mul.call1247.us = mul nuw nsw i64 %131, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %130, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar243.us, %126
  br i1 %exitcond1084.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %128, %polly.loop_exit242.loopexit.us ]
  %132 = add nuw nsw i64 %polly.indvar255.us, %111
  %polly.access.mul.call1259.us = mul nsw i64 %132, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %130, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %129
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_exit253.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next238.us, 100
  br i1 %exitcond1085.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 23
  %indvars.iv.next1091 = add i64 %indvars.iv1090, -50
  %indvars.iv.next1095 = add i64 %indvars.iv1094, 50
  %indvar.next1397 = add i64 %indvar1396, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228.split ]
  %133 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next238, 100
  br i1 %exitcond1083.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.loop_header228.split
  %134 = sub nsw i64 %111, %123
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %polly.loop_guard275 = icmp slt i64 %136, 50
  br i1 %polly.loop_guard275, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1287.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header265.us, %polly.loop_exit282.us
  %indvar1399 = phi i64 [ 0, %polly.loop_header265.us ], [ %indvar.next1400, %polly.loop_exit282.us ]
  %indvars.iv1096 = phi i64 [ %122, %polly.loop_header265.us ], [ %indvars.iv.next1097, %polly.loop_exit282.us ]
  %polly.indvar276.us = phi i64 [ %136, %polly.loop_header265.us ], [ %polly.indvar_next277.us, %polly.loop_exit282.us ]
  %137 = add i64 %121, %indvar1399
  %smin1401 = call i64 @llvm.smin.i64(i64 %137, i64 63)
  %138 = add nsw i64 %smin1401, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1096, i64 63)
  %139 = add nsw i64 %polly.indvar276.us, %124
  %polly.loop_guard283.us1192 = icmp sgt i64 %139, -1
  br i1 %polly.loop_guard283.us1192, label %polly.loop_header280.preheader.us, label %polly.loop_exit282.us

polly.loop_header280.us:                          ; preds = %polly.loop_header280.us.preheader, %polly.loop_header280.us
  %polly.indvar284.us = phi i64 [ %polly.indvar_next285.us, %polly.loop_header280.us ], [ %polly.indvar284.us.ph, %polly.loop_header280.us.preheader ]
  %140 = add nuw nsw i64 %polly.indvar284.us, %111
  %polly.access.add.Packed_MemRef_call1288.us = add nuw nsw i64 %polly.indvar284.us, %polly.access.mul.Packed_MemRef_call1287.us
  %polly.access.Packed_MemRef_call1289.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call1289.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %polly.access.Packed_MemRef_call2297.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us
  %_p_scalar_298.us = load double, double* %polly.access.Packed_MemRef_call2297.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_302.us, %_p_scalar_298.us
  %141 = shl i64 %140, 3
  %142 = add i64 %141, %144
  %scevgep303.us = getelementptr i8, i8* %call, i64 %142
  %scevgep303304.us = bitcast i8* %scevgep303.us to double*
  %_p_scalar_305.us = load double, double* %scevgep303304.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_305.us
  store double %p_add42.i118.us, double* %scevgep303304.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.us = add nuw nsw i64 %polly.indvar284.us, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar284.us, %smin
  br i1 %exitcond1098.not, label %polly.loop_exit282.us, label %polly.loop_header280.us, !llvm.loop !84

polly.loop_exit282.us:                            ; preds = %polly.loop_header280.us, %middle.block1393, %polly.loop_header272.us
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %polly.loop_cond278.us = icmp ult i64 %polly.indvar276.us, 49
  %indvars.iv.next1097 = add i64 %indvars.iv1096, 1
  %indvar.next1400 = add i64 %indvar1399, 1
  br i1 %polly.loop_cond278.us, label %polly.loop_header272.us, label %polly.loop_exit274.loopexit.us

polly.loop_header280.preheader.us:                ; preds = %polly.loop_header272.us
  %143 = add nuw nsw i64 %polly.indvar276.us, %123
  %polly.access.add.Packed_MemRef_call2292.us = add nsw i64 %139, %polly.access.mul.Packed_MemRef_call1287.us
  %polly.access.Packed_MemRef_call2293.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call2293.us, align 8
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us
  %_p_scalar_302.us = load double, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %144 = mul i64 %143, 9600
  %min.iters.check1402 = icmp ult i64 %138, 4
  br i1 %min.iters.check1402, label %polly.loop_header280.us.preheader, label %vector.ph1403

vector.ph1403:                                    ; preds = %polly.loop_header280.preheader.us
  %n.vec1405 = and i64 %138, -4
  %broadcast.splatinsert1411 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1412 = shufflevector <4 x double> %broadcast.splatinsert1411, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1414 = insertelement <4 x double> poison, double %_p_scalar_302.us, i32 0
  %broadcast.splat1415 = shufflevector <4 x double> %broadcast.splatinsert1414, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1395

vector.body1395:                                  ; preds = %vector.body1395, %vector.ph1403
  %index1406 = phi i64 [ 0, %vector.ph1403 ], [ %index.next1407, %vector.body1395 ]
  %145 = add nuw nsw i64 %index1406, %111
  %146 = add nuw nsw i64 %index1406, %polly.access.mul.Packed_MemRef_call1287.us
  %147 = getelementptr double, double* %Packed_MemRef_call1, i64 %146
  %148 = bitcast double* %147 to <4 x double>*
  %wide.load1410 = load <4 x double>, <4 x double>* %148, align 8
  %149 = fmul fast <4 x double> %broadcast.splat1412, %wide.load1410
  %150 = getelementptr double, double* %Packed_MemRef_call2, i64 %146
  %151 = bitcast double* %150 to <4 x double>*
  %wide.load1413 = load <4 x double>, <4 x double>* %151, align 8
  %152 = fmul fast <4 x double> %broadcast.splat1415, %wide.load1413
  %153 = shl i64 %145, 3
  %154 = add i64 %153, %144
  %155 = getelementptr i8, i8* %call, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1416 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !72, !noalias !74
  %157 = fadd fast <4 x double> %152, %149
  %158 = fmul fast <4 x double> %157, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %159 = fadd fast <4 x double> %158, %wide.load1416
  %160 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !72, !noalias !74
  %index.next1407 = add i64 %index1406, 4
  %161 = icmp eq i64 %index.next1407, %n.vec1405
  br i1 %161, label %middle.block1393, label %vector.body1395, !llvm.loop !85

middle.block1393:                                 ; preds = %vector.body1395
  %cmp.n1409 = icmp eq i64 %138, %n.vec1405
  br i1 %cmp.n1409, label %polly.loop_exit282.us, label %polly.loop_header280.us.preheader

polly.loop_header280.us.preheader:                ; preds = %polly.loop_header280.preheader.us, %middle.block1393
  %polly.indvar284.us.ph = phi i64 [ 0, %polly.loop_header280.preheader.us ], [ %n.vec1405, %middle.block1393 ]
  br label %polly.loop_header280.us

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_exit282.us
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next269.us, 100
  br i1 %exitcond1099.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %128, %polly.loop_header234 ]
  %162 = add nuw nsw i64 %polly.indvar255, %111
  %polly.access.mul.call1259 = mul nsw i64 %162, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %133, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %129
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.start308:                                   ; preds = %kernel_syr2k.exit
  %malloccall310 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall312 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header396

polly.exiting309:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall310)
  tail call void @free(i8* %malloccall312)
  br label %kernel_syr2k.exit90

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.start308
  %indvar1332 = phi i64 [ %indvar.next1333, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %163 = add i64 %indvar1332, 1
  %164 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %164
  %min.iters.check1334 = icmp ult i64 %163, 4
  br i1 %min.iters.check1334, label %polly.loop_header402.preheader, label %vector.ph1335

vector.ph1335:                                    ; preds = %polly.loop_header396
  %n.vec1337 = and i64 %163, -4
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %vector.ph1335
  %index1338 = phi i64 [ 0, %vector.ph1335 ], [ %index.next1339, %vector.body1331 ]
  %165 = shl nuw nsw i64 %index1338, 3
  %166 = getelementptr i8, i8* %scevgep408, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %167, align 8, !alias.scope !86, !noalias !88
  %168 = fmul fast <4 x double> %wide.load1342, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %169 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %168, <4 x double>* %169, align 8, !alias.scope !86, !noalias !88
  %index.next1339 = add i64 %index1338, 4
  %170 = icmp eq i64 %index.next1339, %n.vec1337
  br i1 %170, label %middle.block1329, label %vector.body1331, !llvm.loop !93

middle.block1329:                                 ; preds = %vector.body1331
  %cmp.n1341 = icmp eq i64 %163, %n.vec1337
  br i1 %cmp.n1341, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header396, %middle.block1329
  %polly.indvar405.ph = phi i64 [ 0, %polly.loop_header396 ], [ %n.vec1337, %middle.block1329 ]
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402, %middle.block1329
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next400, 1200
  %indvar.next1333 = add i64 %indvar1332, 1
  br i1 %exitcond1130.not, label %polly.loop_header412.preheader, label %polly.loop_header396

polly.loop_header412.preheader:                   ; preds = %polly.loop_exit404
  %Packed_MemRef_call1311 = bitcast i8* %malloccall310 to double*
  %Packed_MemRef_call2313 = bitcast i8* %malloccall312 to double*
  br label %polly.loop_header412

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_header402
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_header402 ], [ %polly.indvar405.ph, %polly.loop_header402.preheader ]
  %171 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %171
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1129.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !94

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_header412.preheader ]
  %172 = mul nuw nsw i64 %polly.indvar415, 100
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar_next416, 10
  br i1 %exitcond1128.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %173 = shl nuw nsw i64 %polly.indvar421, 6
  %174 = mul nuw nsw i64 %polly.indvar421, 7
  %175 = udiv i64 %174, 25
  %176 = add nuw i64 %polly.indvar421, %175
  %177 = mul nuw nsw i64 %176, 50
  %178 = sub i64 %173, %177
  %179 = mul nsw i64 %polly.indvar421, -64
  %180 = add i64 %179, %177
  %181 = udiv i64 %indvars.iv1113, 25
  %182 = add nuw i64 %polly.indvar421, %181
  %183 = mul nuw nsw i64 %182, 50
  %184 = sub i64 %indvars.iv1111, %183
  %185 = add i64 %indvars.iv1118, %183
  %186 = shl nsw i64 %polly.indvar421, 6
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %187 = mul nsw i64 %polly.indvar421, -64
  %188 = mul nuw nsw i64 %polly.indvar421, 7
  %pexp.p_div_q440 = udiv i64 %188, 25
  %189 = add nuw nsw i64 %pexp.p_div_q440, %polly.indvar421
  br label %polly.loop_header441

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -64
  %indvars.iv.next1112 = add nuw nsw i64 %indvars.iv1111, 64
  %indvars.iv.next1114 = add nuw nsw i64 %indvars.iv1113, 7
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -64
  %exitcond1127.not = icmp eq i64 %polly.indvar_next422, 19
  br i1 %exitcond1127.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %190 = add nuw nsw i64 %polly.indvar427, %172
  %polly.access.mul.Packed_MemRef_call2313 = mul nuw nsw i64 %polly.indvar427, 1200
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_header430
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next428, 100
  br i1 %exitcond1107.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header424
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header424 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %191 = add nuw nsw i64 %polly.indvar433, %186
  %polly.access.mul.call2437 = mul nuw nsw i64 %191, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %190, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2313 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call2313
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1104
  br i1 %exitcond1106.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit426
  %indvar1346 = phi i64 [ %indvar.next1347, %polly.loop_exit482 ], [ 0, %polly.loop_exit426 ]
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit482 ], [ %185, %polly.loop_exit426 ]
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit482 ], [ %184, %polly.loop_exit426 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %189, %polly.loop_exit426 ]
  %192 = mul nsw i64 %indvar1346, -50
  %193 = add i64 %178, %192
  %smax1348 = call i64 @llvm.smax.i64(i64 %193, i64 0)
  %194 = mul nuw nsw i64 %indvar1346, 50
  %195 = add i64 %180, %194
  %196 = add i64 %smax1348, %195
  %smax1117 = call i64 @llvm.smax.i64(i64 %indvars.iv1115, i64 0)
  %197 = add i64 %smax1117, %indvars.iv1120
  %198 = mul nuw nsw i64 %polly.indvar444, 50
  %199 = add nsw i64 %198, %187
  %200 = add nsw i64 %199, -1
  %.inv942 = icmp sgt i64 %199, 63
  %201 = select i1 %.inv942, i64 63, i64 %200
  %polly.loop_guard457 = icmp sgt i64 %201, -1
  %202 = icmp sgt i64 %199, 0
  %203 = select i1 %202, i64 %199, i64 0
  %204 = add nsw i64 %199, 49
  %polly.loop_guard469.not = icmp sgt i64 %203, %204
  br i1 %polly.loop_guard457, label %polly.loop_header447.us, label %polly.loop_header441.split

polly.loop_header447.us:                          ; preds = %polly.loop_header441, %polly.loop_exit468.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header441 ]
  %205 = add nuw nsw i64 %polly.indvar450.us, %172
  %polly.access.mul.Packed_MemRef_call1311.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %206 = add nuw nsw i64 %polly.indvar458.us, %186
  %polly.access.mul.call1462.us = mul nuw nsw i64 %206, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %205, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar458.us, %201
  br i1 %exitcond1109.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %203, %polly.loop_exit456.loopexit.us ]
  %207 = add nuw nsw i64 %polly.indvar470.us, %186
  %polly.access.mul.call1474.us = mul nsw i64 %207, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %205, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %204
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next451.us, 100
  br i1 %exitcond1110.not, label %polly.loop_header480.preheader, label %polly.loop_header447.us

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_exit482:                               ; preds = %polly.loop_exit489.loopexit.us, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp ult i64 %polly.indvar444, 23
  %indvars.iv.next1116 = add i64 %indvars.iv1115, -50
  %indvars.iv.next1121 = add i64 %indvars.iv1120, 50
  %indvar.next1347 = add i64 %indvar1346, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header447:                             ; preds = %polly.loop_header441.split, %polly.loop_exit468
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_exit468 ], [ 0, %polly.loop_header441.split ]
  %208 = add nuw nsw i64 %polly.indvar450, %172
  %polly.access.mul.Packed_MemRef_call1311477 = mul nuw nsw i64 %polly.indvar450, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next451, 100
  br i1 %exitcond1108.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header441.split
  %209 = sub nsw i64 %186, %198
  %210 = icmp sgt i64 %209, 0
  %211 = select i1 %210, i64 %209, i64 0
  %polly.loop_guard490 = icmp slt i64 %211, 50
  br i1 %polly.loop_guard490, label %polly.loop_header480.us, label %polly.loop_exit482

polly.loop_header480.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit489.loopexit.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_exit489.loopexit.us ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1311502.us = mul nuw nsw i64 %polly.indvar483.us, 1200
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header480.us, %polly.loop_exit497.us
  %indvar1349 = phi i64 [ 0, %polly.loop_header480.us ], [ %indvar.next1350, %polly.loop_exit497.us ]
  %indvars.iv1122 = phi i64 [ %197, %polly.loop_header480.us ], [ %indvars.iv.next1123, %polly.loop_exit497.us ]
  %polly.indvar491.us = phi i64 [ %211, %polly.loop_header480.us ], [ %polly.indvar_next492.us, %polly.loop_exit497.us ]
  %212 = add i64 %196, %indvar1349
  %smin1351 = call i64 @llvm.smin.i64(i64 %212, i64 63)
  %213 = add nsw i64 %smin1351, 1
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 63)
  %214 = add nsw i64 %polly.indvar491.us, %199
  %polly.loop_guard498.us1193 = icmp sgt i64 %214, -1
  br i1 %polly.loop_guard498.us1193, label %polly.loop_header495.preheader.us, label %polly.loop_exit497.us

polly.loop_header495.us:                          ; preds = %polly.loop_header495.us.preheader, %polly.loop_header495.us
  %polly.indvar499.us = phi i64 [ %polly.indvar_next500.us, %polly.loop_header495.us ], [ %polly.indvar499.us.ph, %polly.loop_header495.us.preheader ]
  %215 = add nuw nsw i64 %polly.indvar499.us, %186
  %polly.access.add.Packed_MemRef_call1311503.us = add nuw nsw i64 %polly.indvar499.us, %polly.access.mul.Packed_MemRef_call1311502.us
  %polly.access.Packed_MemRef_call1311504.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1311504.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %polly.access.Packed_MemRef_call2313512.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2313512.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_517.us, %_p_scalar_513.us
  %216 = shl i64 %215, 3
  %217 = add i64 %216, %219
  %scevgep518.us = getelementptr i8, i8* %call, i64 %217
  %scevgep518519.us = bitcast i8* %scevgep518.us to double*
  %_p_scalar_520.us = load double, double* %scevgep518519.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_520.us
  store double %p_add42.i79.us, double* %scevgep518519.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next500.us = add nuw nsw i64 %polly.indvar499.us, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar499.us, %smin1124
  br i1 %exitcond1125.not, label %polly.loop_exit497.us, label %polly.loop_header495.us, !llvm.loop !97

polly.loop_exit497.us:                            ; preds = %polly.loop_header495.us, %middle.block1343, %polly.loop_header487.us
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %polly.loop_cond493.us = icmp ult i64 %polly.indvar491.us, 49
  %indvars.iv.next1123 = add i64 %indvars.iv1122, 1
  %indvar.next1350 = add i64 %indvar1349, 1
  br i1 %polly.loop_cond493.us, label %polly.loop_header487.us, label %polly.loop_exit489.loopexit.us

polly.loop_header495.preheader.us:                ; preds = %polly.loop_header487.us
  %218 = add nuw nsw i64 %polly.indvar491.us, %198
  %polly.access.add.Packed_MemRef_call2313507.us = add nsw i64 %214, %polly.access.mul.Packed_MemRef_call1311502.us
  %polly.access.Packed_MemRef_call2313508.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call2313508.us, align 8
  %polly.access.Packed_MemRef_call1311516.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call1311516.us, align 8
  %219 = mul i64 %218, 9600
  %min.iters.check1352 = icmp ult i64 %213, 4
  br i1 %min.iters.check1352, label %polly.loop_header495.us.preheader, label %vector.ph1353

vector.ph1353:                                    ; preds = %polly.loop_header495.preheader.us
  %n.vec1355 = and i64 %213, -4
  %broadcast.splatinsert1361 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1362 = shufflevector <4 x double> %broadcast.splatinsert1361, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1364 = insertelement <4 x double> poison, double %_p_scalar_517.us, i32 0
  %broadcast.splat1365 = shufflevector <4 x double> %broadcast.splatinsert1364, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1357, %vector.body1345 ]
  %220 = add nuw nsw i64 %index1356, %186
  %221 = add nuw nsw i64 %index1356, %polly.access.mul.Packed_MemRef_call1311502.us
  %222 = getelementptr double, double* %Packed_MemRef_call1311, i64 %221
  %223 = bitcast double* %222 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %223, align 8
  %224 = fmul fast <4 x double> %broadcast.splat1362, %wide.load1360
  %225 = getelementptr double, double* %Packed_MemRef_call2313, i64 %221
  %226 = bitcast double* %225 to <4 x double>*
  %wide.load1363 = load <4 x double>, <4 x double>* %226, align 8
  %227 = fmul fast <4 x double> %broadcast.splat1365, %wide.load1363
  %228 = shl i64 %220, 3
  %229 = add i64 %228, %219
  %230 = getelementptr i8, i8* %call, i64 %229
  %231 = bitcast i8* %230 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %231, align 8, !alias.scope !86, !noalias !88
  %232 = fadd fast <4 x double> %227, %224
  %233 = fmul fast <4 x double> %232, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %234 = fadd fast <4 x double> %233, %wide.load1366
  %235 = bitcast i8* %230 to <4 x double>*
  store <4 x double> %234, <4 x double>* %235, align 8, !alias.scope !86, !noalias !88
  %index.next1357 = add i64 %index1356, 4
  %236 = icmp eq i64 %index.next1357, %n.vec1355
  br i1 %236, label %middle.block1343, label %vector.body1345, !llvm.loop !98

middle.block1343:                                 ; preds = %vector.body1345
  %cmp.n1359 = icmp eq i64 %213, %n.vec1355
  br i1 %cmp.n1359, label %polly.loop_exit497.us, label %polly.loop_header495.us.preheader

polly.loop_header495.us.preheader:                ; preds = %polly.loop_header495.preheader.us, %middle.block1343
  %polly.indvar499.us.ph = phi i64 [ 0, %polly.loop_header495.preheader.us ], [ %n.vec1355, %middle.block1343 ]
  br label %polly.loop_header495.us

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_exit497.us
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next484.us, 100
  br i1 %exitcond1126.not, label %polly.loop_exit482, label %polly.loop_header480.us

polly.loop_header466:                             ; preds = %polly.loop_header447, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %203, %polly.loop_header447 ]
  %237 = add nuw nsw i64 %polly.indvar470, %186
  %polly.access.mul.call1474 = mul nsw i64 %237, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %208, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1311477
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %204
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall527 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %238 = add i64 %indvar, 1
  %239 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %239
  %min.iters.check1284 = icmp ult i64 %238, 4
  br i1 %min.iters.check1284, label %polly.loop_header617.preheader, label %vector.ph1285

vector.ph1285:                                    ; preds = %polly.loop_header611
  %n.vec1287 = and i64 %238, -4
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %vector.ph1285
  %index1288 = phi i64 [ 0, %vector.ph1285 ], [ %index.next1289, %vector.body1283 ]
  %240 = shl nuw nsw i64 %index1288, 3
  %241 = getelementptr i8, i8* %scevgep623, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %242, align 8, !alias.scope !99, !noalias !101
  %243 = fmul fast <4 x double> %wide.load1292, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %244 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %243, <4 x double>* %244, align 8, !alias.scope !99, !noalias !101
  %index.next1289 = add i64 %index1288, 4
  %245 = icmp eq i64 %index.next1289, %n.vec1287
  br i1 %245, label %middle.block1281, label %vector.body1283, !llvm.loop !106

middle.block1281:                                 ; preds = %vector.body1283
  %cmp.n1291 = icmp eq i64 %238, %n.vec1287
  br i1 %cmp.n1291, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1281
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1287, %middle.block1281 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1281
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1157.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %246 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %246
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1156.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %247 = mul nuw nsw i64 %polly.indvar630, 100
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next631, 10
  br i1 %exitcond1155.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %248 = shl nuw nsw i64 %polly.indvar636, 6
  %249 = mul nuw nsw i64 %polly.indvar636, 7
  %250 = udiv i64 %249, 25
  %251 = add nuw i64 %polly.indvar636, %250
  %252 = mul nuw nsw i64 %251, 50
  %253 = sub i64 %248, %252
  %254 = mul nsw i64 %polly.indvar636, -64
  %255 = add i64 %254, %252
  %256 = udiv i64 %indvars.iv1140, 25
  %257 = add nuw i64 %polly.indvar636, %256
  %258 = mul nuw nsw i64 %257, 50
  %259 = sub i64 %indvars.iv1138, %258
  %260 = add i64 %indvars.iv1145, %258
  %261 = shl nsw i64 %polly.indvar636, 6
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %262 = mul nsw i64 %polly.indvar636, -64
  %263 = mul nuw nsw i64 %polly.indvar636, 7
  %pexp.p_div_q655 = udiv i64 %263, 25
  %264 = add nuw nsw i64 %pexp.p_div_q655, %polly.indvar636
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1132 = add nsw i64 %indvars.iv1131, -64
  %indvars.iv.next1139 = add nuw nsw i64 %indvars.iv1138, 64
  %indvars.iv.next1141 = add nuw nsw i64 %indvars.iv1140, 7
  %indvars.iv.next1146 = add nsw i64 %indvars.iv1145, -64
  %exitcond1154.not = icmp eq i64 %polly.indvar_next637, 19
  br i1 %exitcond1154.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %265 = add nuw nsw i64 %polly.indvar642, %247
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next643, 100
  br i1 %exitcond1134.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %266 = add nuw nsw i64 %polly.indvar648, %261
  %polly.access.mul.call2652 = mul nuw nsw i64 %266, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %265, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1131
  br i1 %exitcond1133.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit641
  %indvar1296 = phi i64 [ %indvar.next1297, %polly.loop_exit697 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit697 ], [ %260, %polly.loop_exit641 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit697 ], [ %259, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %264, %polly.loop_exit641 ]
  %267 = mul nsw i64 %indvar1296, -50
  %268 = add i64 %253, %267
  %smax1298 = call i64 @llvm.smax.i64(i64 %268, i64 0)
  %269 = mul nuw nsw i64 %indvar1296, 50
  %270 = add i64 %255, %269
  %271 = add i64 %smax1298, %270
  %smax1144 = call i64 @llvm.smax.i64(i64 %indvars.iv1142, i64 0)
  %272 = add i64 %smax1144, %indvars.iv1147
  %273 = mul nuw nsw i64 %polly.indvar659, 50
  %274 = add nsw i64 %273, %262
  %275 = add nsw i64 %274, -1
  %.inv943 = icmp sgt i64 %274, 63
  %276 = select i1 %.inv943, i64 63, i64 %275
  %polly.loop_guard672 = icmp sgt i64 %276, -1
  %277 = icmp sgt i64 %274, 0
  %278 = select i1 %277, i64 %274, i64 0
  %279 = add nsw i64 %274, 49
  %polly.loop_guard684.not = icmp sgt i64 %278, %279
  br i1 %polly.loop_guard672, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit683.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit683.us ], [ 0, %polly.loop_header656 ]
  %280 = add nuw nsw i64 %polly.indvar665.us, %247
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  br label %polly.loop_header669.us

polly.loop_header669.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header662.us ]
  %281 = add nuw nsw i64 %polly.indvar673.us, %261
  %polly.access.mul.call1677.us = mul nuw nsw i64 %281, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %280, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us = add nuw nsw i64 %polly.indvar673.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar673.us, %276
  br i1 %exitcond1136.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %278, %polly.loop_exit671.loopexit.us ]
  %282 = add nuw nsw i64 %polly.indvar685.us, %261
  %polly.access.mul.call1689.us = mul nsw i64 %282, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %280, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693.us = add nuw nsw i64 %polly.indvar685.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %279
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_exit683.us

polly.loop_exit683.us:                            ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next666.us, 100
  br i1 %exitcond1137.not, label %polly.loop_header695.preheader, label %polly.loop_header662.us

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_exit683.us, label %polly.loop_header681.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_exit697:                               ; preds = %polly.loop_exit704.loopexit.us, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp ult i64 %polly.indvar659, 23
  %indvars.iv.next1143 = add i64 %indvars.iv1142, -50
  %indvars.iv.next1148 = add i64 %indvars.iv1147, 50
  %indvar.next1297 = add i64 %indvar1296, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit683
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit683 ], [ 0, %polly.loop_header656.split ]
  %283 = add nuw nsw i64 %polly.indvar665, %247
  %polly.access.mul.Packed_MemRef_call1526692 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header681

polly.loop_exit683:                               ; preds = %polly.loop_header681
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next666, 100
  br i1 %exitcond1135.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_header695.preheader:                   ; preds = %polly.loop_exit683, %polly.loop_exit683.us, %polly.loop_header656.split
  %284 = sub nsw i64 %261, %273
  %285 = icmp sgt i64 %284, 0
  %286 = select i1 %285, i64 %284, i64 0
  %polly.loop_guard705 = icmp slt i64 %286, 50
  br i1 %polly.loop_guard705, label %polly.loop_header695.us, label %polly.loop_exit697

polly.loop_header695.us:                          ; preds = %polly.loop_header695.preheader, %polly.loop_exit704.loopexit.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_exit704.loopexit.us ], [ 0, %polly.loop_header695.preheader ]
  %polly.access.mul.Packed_MemRef_call1526717.us = mul nuw nsw i64 %polly.indvar698.us, 1200
  br label %polly.loop_header702.us

polly.loop_header702.us:                          ; preds = %polly.loop_header695.us, %polly.loop_exit712.us
  %indvar1299 = phi i64 [ 0, %polly.loop_header695.us ], [ %indvar.next1300, %polly.loop_exit712.us ]
  %indvars.iv1149 = phi i64 [ %272, %polly.loop_header695.us ], [ %indvars.iv.next1150, %polly.loop_exit712.us ]
  %polly.indvar706.us = phi i64 [ %286, %polly.loop_header695.us ], [ %polly.indvar_next707.us, %polly.loop_exit712.us ]
  %287 = add i64 %271, %indvar1299
  %smin1301 = call i64 @llvm.smin.i64(i64 %287, i64 63)
  %288 = add nsw i64 %smin1301, 1
  %smin1151 = call i64 @llvm.smin.i64(i64 %indvars.iv1149, i64 63)
  %289 = add nsw i64 %polly.indvar706.us, %274
  %polly.loop_guard713.us1194 = icmp sgt i64 %289, -1
  br i1 %polly.loop_guard713.us1194, label %polly.loop_header710.preheader.us, label %polly.loop_exit712.us

polly.loop_header710.us:                          ; preds = %polly.loop_header710.us.preheader, %polly.loop_header710.us
  %polly.indvar714.us = phi i64 [ %polly.indvar_next715.us, %polly.loop_header710.us ], [ %polly.indvar714.us.ph, %polly.loop_header710.us.preheader ]
  %290 = add nuw nsw i64 %polly.indvar714.us, %261
  %polly.access.add.Packed_MemRef_call1526718.us = add nuw nsw i64 %polly.indvar714.us, %polly.access.mul.Packed_MemRef_call1526717.us
  %polly.access.Packed_MemRef_call1526719.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call1526719.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %polly.access.Packed_MemRef_call2528727.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us
  %_p_scalar_728.us = load double, double* %polly.access.Packed_MemRef_call2528727.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_732.us, %_p_scalar_728.us
  %291 = shl i64 %290, 3
  %292 = add i64 %291, %294
  %scevgep733.us = getelementptr i8, i8* %call, i64 %292
  %scevgep733734.us = bitcast i8* %scevgep733.us to double*
  %_p_scalar_735.us = load double, double* %scevgep733734.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_735.us
  store double %p_add42.i.us, double* %scevgep733734.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next715.us = add nuw nsw i64 %polly.indvar714.us, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar714.us, %smin1151
  br i1 %exitcond1152.not, label %polly.loop_exit712.us, label %polly.loop_header710.us, !llvm.loop !110

polly.loop_exit712.us:                            ; preds = %polly.loop_header710.us, %middle.block1293, %polly.loop_header702.us
  %polly.indvar_next707.us = add nuw nsw i64 %polly.indvar706.us, 1
  %polly.loop_cond708.us = icmp ult i64 %polly.indvar706.us, 49
  %indvars.iv.next1150 = add i64 %indvars.iv1149, 1
  %indvar.next1300 = add i64 %indvar1299, 1
  br i1 %polly.loop_cond708.us, label %polly.loop_header702.us, label %polly.loop_exit704.loopexit.us

polly.loop_header710.preheader.us:                ; preds = %polly.loop_header702.us
  %293 = add nuw nsw i64 %polly.indvar706.us, %273
  %polly.access.add.Packed_MemRef_call2528722.us = add nsw i64 %289, %polly.access.mul.Packed_MemRef_call1526717.us
  %polly.access.Packed_MemRef_call2528723.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call2528723.us, align 8
  %polly.access.Packed_MemRef_call1526731.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us
  %_p_scalar_732.us = load double, double* %polly.access.Packed_MemRef_call1526731.us, align 8
  %294 = mul i64 %293, 9600
  %min.iters.check1302 = icmp ult i64 %288, 4
  br i1 %min.iters.check1302, label %polly.loop_header710.us.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %polly.loop_header710.preheader.us
  %n.vec1305 = and i64 %288, -4
  %broadcast.splatinsert1311 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1312 = shufflevector <4 x double> %broadcast.splatinsert1311, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1314 = insertelement <4 x double> poison, double %_p_scalar_732.us, i32 0
  %broadcast.splat1315 = shufflevector <4 x double> %broadcast.splatinsert1314, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1295 ]
  %295 = add nuw nsw i64 %index1306, %261
  %296 = add nuw nsw i64 %index1306, %polly.access.mul.Packed_MemRef_call1526717.us
  %297 = getelementptr double, double* %Packed_MemRef_call1526, i64 %296
  %298 = bitcast double* %297 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %298, align 8
  %299 = fmul fast <4 x double> %broadcast.splat1312, %wide.load1310
  %300 = getelementptr double, double* %Packed_MemRef_call2528, i64 %296
  %301 = bitcast double* %300 to <4 x double>*
  %wide.load1313 = load <4 x double>, <4 x double>* %301, align 8
  %302 = fmul fast <4 x double> %broadcast.splat1315, %wide.load1313
  %303 = shl i64 %295, 3
  %304 = add i64 %303, %294
  %305 = getelementptr i8, i8* %call, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  %wide.load1316 = load <4 x double>, <4 x double>* %306, align 8, !alias.scope !99, !noalias !101
  %307 = fadd fast <4 x double> %302, %299
  %308 = fmul fast <4 x double> %307, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %309 = fadd fast <4 x double> %308, %wide.load1316
  %310 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %309, <4 x double>* %310, align 8, !alias.scope !99, !noalias !101
  %index.next1307 = add i64 %index1306, 4
  %311 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %311, label %middle.block1293, label %vector.body1295, !llvm.loop !111

middle.block1293:                                 ; preds = %vector.body1295
  %cmp.n1309 = icmp eq i64 %288, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit712.us, label %polly.loop_header710.us.preheader

polly.loop_header710.us.preheader:                ; preds = %polly.loop_header710.preheader.us, %middle.block1293
  %polly.indvar714.us.ph = phi i64 [ 0, %polly.loop_header710.preheader.us ], [ %n.vec1305, %middle.block1293 ]
  br label %polly.loop_header710.us

polly.loop_exit704.loopexit.us:                   ; preds = %polly.loop_exit712.us
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar_next699.us, 100
  br i1 %exitcond1153.not, label %polly.loop_exit697, label %polly.loop_header695.us

polly.loop_header681:                             ; preds = %polly.loop_header662, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %278, %polly.loop_header662 ]
  %312 = add nuw nsw i64 %polly.indvar685, %261
  %polly.access.mul.call1689 = mul nsw i64 %312, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %283, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693 = add nuw nsw i64 %polly.indvar685, %polly.access.mul.Packed_MemRef_call1526692
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %279
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_exit683

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1182 = phi i64 [ %indvars.iv.next1183, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 -1168)
  %313 = shl nsw i64 %polly.indvar865, 5
  %314 = add nsw i64 %smin1184, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1183 = add nsw i64 %indvars.iv1182, -32
  %exitcond1187.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1187.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %315 = mul nsw i64 %polly.indvar871, -32
  %smin1222 = call i64 @llvm.smin.i64(i64 %315, i64 -1168)
  %316 = add nsw i64 %smin1222, 1200
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 -1168)
  %317 = shl nsw i64 %polly.indvar871, 5
  %318 = add nsw i64 %smin1180, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -32
  %exitcond1186.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1186.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %319 = add nuw nsw i64 %polly.indvar877, %313
  %320 = trunc i64 %319 to i32
  %321 = mul nuw nsw i64 %319, 9600
  %min.iters.check = icmp eq i64 %316, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1223

vector.ph1223:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1230 = insertelement <4 x i64> poison, i64 %317, i32 0
  %broadcast.splat1231 = shufflevector <4 x i64> %broadcast.splatinsert1230, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1232 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1233 = shufflevector <4 x i32> %broadcast.splatinsert1232, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1223
  %index1224 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1225, %vector.body1221 ]
  %vec.ind1228 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1223 ], [ %vec.ind.next1229, %vector.body1221 ]
  %322 = add nuw nsw <4 x i64> %vec.ind1228, %broadcast.splat1231
  %323 = trunc <4 x i64> %322 to <4 x i32>
  %324 = mul <4 x i32> %broadcast.splat1233, %323
  %325 = add <4 x i32> %324, <i32 3, i32 3, i32 3, i32 3>
  %326 = urem <4 x i32> %325, <i32 1200, i32 1200, i32 1200, i32 1200>
  %327 = sitofp <4 x i32> %326 to <4 x double>
  %328 = fmul fast <4 x double> %327, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %329 = extractelement <4 x i64> %322, i32 0
  %330 = shl i64 %329, 3
  %331 = add nuw nsw i64 %330, %321
  %332 = getelementptr i8, i8* %call, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %328, <4 x double>* %333, align 8, !alias.scope !112, !noalias !114
  %index.next1225 = add i64 %index1224, 4
  %vec.ind.next1229 = add <4 x i64> %vec.ind1228, <i64 4, i64 4, i64 4, i64 4>
  %334 = icmp eq i64 %index.next1225, %316
  br i1 %334, label %polly.loop_exit882, label %vector.body1221, !llvm.loop !117

polly.loop_exit882:                               ; preds = %vector.body1221, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar877, %314
  br i1 %exitcond1185.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %335 = add nuw nsw i64 %polly.indvar883, %317
  %336 = trunc i64 %335 to i32
  %337 = mul i32 %336, %320
  %338 = add i32 %337, 3
  %339 = urem i32 %338, 1200
  %p_conv31.i = sitofp i32 %339 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %340 = shl i64 %335, 3
  %341 = add nuw nsw i64 %340, %321
  %scevgep886 = getelementptr i8, i8* %call, i64 %341
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar883, %318
  br i1 %exitcond1181.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !118

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1172, i64 -1168)
  %342 = shl nsw i64 %polly.indvar892, 5
  %343 = add nsw i64 %smin1174, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1173 = add nsw i64 %indvars.iv1172, -32
  %exitcond1177.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1177.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %344 = mul nsw i64 %polly.indvar898, -32
  %smin1237 = call i64 @llvm.smin.i64(i64 %344, i64 -968)
  %345 = add nsw i64 %smin1237, 1000
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -968)
  %346 = shl nsw i64 %polly.indvar898, 5
  %347 = add nsw i64 %smin1170, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1176.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1176.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %348 = add nuw nsw i64 %polly.indvar904, %342
  %349 = trunc i64 %348 to i32
  %350 = mul nuw nsw i64 %348, 8000
  %min.iters.check1238 = icmp eq i64 %345, 0
  br i1 %min.iters.check1238, label %polly.loop_header907, label %vector.ph1239

vector.ph1239:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1248 = insertelement <4 x i64> poison, i64 %346, i32 0
  %broadcast.splat1249 = shufflevector <4 x i64> %broadcast.splatinsert1248, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1239
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1243, %vector.body1236 ]
  %vec.ind1246 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1239 ], [ %vec.ind.next1247, %vector.body1236 ]
  %351 = add nuw nsw <4 x i64> %vec.ind1246, %broadcast.splat1249
  %352 = trunc <4 x i64> %351 to <4 x i32>
  %353 = mul <4 x i32> %broadcast.splat1251, %352
  %354 = add <4 x i32> %353, <i32 2, i32 2, i32 2, i32 2>
  %355 = urem <4 x i32> %354, <i32 1000, i32 1000, i32 1000, i32 1000>
  %356 = sitofp <4 x i32> %355 to <4 x double>
  %357 = fmul fast <4 x double> %356, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %358 = extractelement <4 x i64> %351, i32 0
  %359 = shl i64 %358, 3
  %360 = add nuw nsw i64 %359, %350
  %361 = getelementptr i8, i8* %call2, i64 %360
  %362 = bitcast i8* %361 to <4 x double>*
  store <4 x double> %357, <4 x double>* %362, align 8, !alias.scope !116, !noalias !119
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1247 = add <4 x i64> %vec.ind1246, <i64 4, i64 4, i64 4, i64 4>
  %363 = icmp eq i64 %index.next1243, %345
  br i1 %363, label %polly.loop_exit909, label %vector.body1236, !llvm.loop !120

polly.loop_exit909:                               ; preds = %vector.body1236, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar904, %343
  br i1 %exitcond1175.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %364 = add nuw nsw i64 %polly.indvar910, %346
  %365 = trunc i64 %364 to i32
  %366 = mul i32 %365, %349
  %367 = add i32 %366, 2
  %368 = urem i32 %367, 1000
  %p_conv10.i = sitofp i32 %368 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %369 = shl i64 %364, 3
  %370 = add nuw nsw i64 %369, %350
  %scevgep913 = getelementptr i8, i8* %call2, i64 %370
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar910, %347
  br i1 %exitcond1171.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !121

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1162 = phi i64 [ %indvars.iv.next1163, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1164 = call i64 @llvm.smin.i64(i64 %indvars.iv1162, i64 -1168)
  %371 = shl nsw i64 %polly.indvar918, 5
  %372 = add nsw i64 %smin1164, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1163 = add nsw i64 %indvars.iv1162, -32
  %exitcond1167.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1167.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1158 = phi i64 [ %indvars.iv.next1159, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %373 = mul nsw i64 %polly.indvar924, -32
  %smin1255 = call i64 @llvm.smin.i64(i64 %373, i64 -968)
  %374 = add nsw i64 %smin1255, 1000
  %smin1160 = call i64 @llvm.smin.i64(i64 %indvars.iv1158, i64 -968)
  %375 = shl nsw i64 %polly.indvar924, 5
  %376 = add nsw i64 %smin1160, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1159 = add nsw i64 %indvars.iv1158, -32
  %exitcond1166.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1166.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %377 = add nuw nsw i64 %polly.indvar930, %371
  %378 = trunc i64 %377 to i32
  %379 = mul nuw nsw i64 %377, 8000
  %min.iters.check1256 = icmp eq i64 %374, 0
  br i1 %min.iters.check1256, label %polly.loop_header933, label %vector.ph1257

vector.ph1257:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1266 = insertelement <4 x i64> poison, i64 %375, i32 0
  %broadcast.splat1267 = shufflevector <4 x i64> %broadcast.splatinsert1266, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %378, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1254 ]
  %vec.ind1264 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1257 ], [ %vec.ind.next1265, %vector.body1254 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1264, %broadcast.splat1267
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1269, %381
  %383 = add <4 x i32> %382, <i32 1, i32 1, i32 1, i32 1>
  %384 = urem <4 x i32> %383, <i32 1200, i32 1200, i32 1200, i32 1200>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %379
  %390 = getelementptr i8, i8* %call1, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !115, !noalias !122
  %index.next1261 = add i64 %index1260, 4
  %vec.ind.next1265 = add <4 x i64> %vec.ind1264, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1261, %374
  br i1 %392, label %polly.loop_exit935, label %vector.body1254, !llvm.loop !123

polly.loop_exit935:                               ; preds = %vector.body1254, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar930, %372
  br i1 %exitcond1165.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %393 = add nuw nsw i64 %polly.indvar936, %375
  %394 = trunc i64 %393 to i32
  %395 = mul i32 %394, %378
  %396 = add i32 %395, 1
  %397 = urem i32 %396, 1200
  %p_conv.i = sitofp i32 %397 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %398 = shl i64 %393, 3
  %399 = add nuw nsw i64 %398, %379
  %scevgep940 = getelementptr i8, i8* %call1, i64 %399
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar936, %376
  br i1 %exitcond1161.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !124
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 64}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 100}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !24, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.loop.interchange.followup_interchanged", !43}
!43 = distinct !{!43, !12, !24, !41, !44, !45, !46}
!44 = !{!"llvm.data.pack.enable", i1 true}
!45 = !{!"llvm.data.pack.array", !21}
!46 = !{!"llvm.data.pack.allocate", !"malloc"}
!47 = distinct !{!47, !12, !24, !48, !49, !50, !51, !52, !61}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.size", i32 50}
!52 = !{!"llvm.loop.tile.followup_floor", !53}
!53 = distinct !{!53, !12, !24, !54, !55, !56, !57, !58}
!54 = !{!"llvm.loop.id", !"i1"}
!55 = !{!"llvm.loop.interchange.enable", i1 true}
!56 = !{!"llvm.loop.interchange.depth", i32 5}
!57 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!58 = !{!"llvm.loop.interchange.followup_interchanged", !59}
!59 = distinct !{!59, !12, !24, !54, !44, !60, !46}
!60 = !{!"llvm.data.pack.array", !22}
!61 = !{!"llvm.loop.tile.followup_tile", !62}
!62 = distinct !{!62, !12, !24, !63}
!63 = !{!"llvm.loop.id", !"i2"}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = distinct !{!67, !12, !13}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !4, i64 0}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77, !78}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call1"}
!78 = distinct !{!78, !73, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !81, !13}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!72, !75, !77, !78}
!83 = !{!72, !76, !77, !78}
!84 = distinct !{!84, !81, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90, !91, !92}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !87, !"polly.alias.scope.Packed_MemRef_call1"}
!92 = distinct !{!92, !87, !"polly.alias.scope.Packed_MemRef_call2"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !81, !13}
!95 = !{!86, !89, !91, !92}
!96 = !{!86, !90, !91, !92}
!97 = distinct !{!97, !81, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103, !104, !105}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !100, !"polly.alias.scope.Packed_MemRef_call1"}
!105 = distinct !{!105, !100, !"polly.alias.scope.Packed_MemRef_call2"}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !81, !13}
!108 = !{!99, !102, !104, !105}
!109 = !{!99, !103, !104, !105}
!110 = distinct !{!110, !81, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !113, !"polly.alias.scope.MemRef_call"}
!113 = distinct !{!113, !"polly.alias.scope.domain"}
!114 = !{!115, !116}
!115 = distinct !{!115, !113, !"polly.alias.scope.MemRef_call1"}
!116 = distinct !{!116, !113, !"polly.alias.scope.MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !81, !13}
!119 = !{!115, !112}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !81, !13}
!122 = !{!116, !112}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !81, !13}
