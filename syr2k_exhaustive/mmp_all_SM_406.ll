; ModuleID = 'syr2k_exhaustive/mmp_all_SM_406.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_406.c"
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
  br i1 %57, label %middle.block1317, label %vector.body1319, !llvm.loop !63

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

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
  br i1 %68, label %middle.block1367, label %vector.body1369, !llvm.loop !65

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

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
  %75 = load i8*, i8** %argv, align 8, !tbaa !67
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !69

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !70

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall136 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
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
  %wide.load1392 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1392, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1389 = add i64 %index1388, 4
  %95 = icmp eq i64 %index.next1389, %n.vec1387
  br i1 %95, label %middle.block1379, label %vector.body1381, !llvm.loop !78

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
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1102.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 20
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar_next204, 50
  br i1 %exitcond1101.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit230 ], [ 4, %polly.loop_header200 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = mul nsw i64 %polly.indvar209, -4
  %99 = add nuw i64 %polly.indvar209, 4
  %100 = udiv i64 %99, 5
  %101 = mul nuw nsw i64 %100, 20
  %102 = add i64 %98, %101
  %103 = shl nuw nsw i64 %polly.indvar209, 2
  %104 = sub nsw i64 %103, %101
  %105 = udiv i64 %indvars.iv1088, 5
  %106 = mul nuw nsw i64 %105, 20
  %107 = add i64 %indvars.iv1086, %106
  %108 = sub nsw i64 %indvars.iv1092, %106
  %109 = shl nsw i64 %polly.indvar209, 8
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %110 = mul nsw i64 %polly.indvar209, -256
  %111 = mul nuw nsw i64 %polly.indvar209, 13
  %112 = add nuw nsw i64 %polly.indvar209, 4
  %pexp.p_div_q = udiv i64 %112, 5
  %113 = sub nsw i64 %111, %pexp.p_div_q
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -4
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 1
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 4
  %exitcond1100.not = icmp eq i64 %polly.indvar_next210, 5
  br i1 %exitcond1100.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %114 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next216, 20
  br i1 %exitcond1082.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %115 = add nuw nsw i64 %polly.indvar221, %109
  %polly.access.mul.call2225 = mul nuw nsw i64 %115, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %114, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1396 = phi i64 [ %indvar.next1397, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit267 ], [ %108, %polly.loop_exit214 ]
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit267 ], [ %107, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %113, %polly.loop_exit214 ]
  %116 = mul nsw i64 %indvar1396, -20
  %117 = add i64 %102, %116
  %smax1398 = call i64 @llvm.smax.i64(i64 %117, i64 0)
  %118 = mul nuw nsw i64 %indvar1396, 20
  %119 = add i64 %104, %118
  %120 = add i64 %smax1398, %119
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1090, i64 0)
  %121 = add i64 %smax, %indvars.iv1094
  %122 = mul nsw i64 %polly.indvar231, 20
  %123 = add nsw i64 %122, %110
  %124 = add nsw i64 %123, -1
  %.inv = icmp sgt i64 %123, 255
  %125 = select i1 %.inv, i64 255, i64 %124
  %polly.loop_guard = icmp sgt i64 %125, -1
  %126 = icmp sgt i64 %123, 0
  %127 = select i1 %126, i64 %123, i64 0
  %128 = add nsw i64 %123, 19
  %polly.loop_guard254.not = icmp sgt i64 %127, %128
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %129 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %130 = add nuw nsw i64 %polly.indvar243.us, %109
  %polly.access.mul.call1247.us = mul nuw nsw i64 %130, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %129, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar243.us, %125
  br i1 %exitcond1084.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %127, %polly.loop_exit242.loopexit.us ]
  %131 = add nuw nsw i64 %polly.indvar255.us, %109
  %polly.access.mul.call1259.us = mul nsw i64 %131, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %129, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %128
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_exit253.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next238.us, 20
  br i1 %exitcond1085.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp slt i64 %polly.indvar231, 59
  %indvars.iv.next1091 = add i64 %indvars.iv1090, -20
  %indvars.iv.next1095 = add i64 %indvars.iv1094, 20
  %indvar.next1397 = add i64 %indvar1396, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228.split ]
  %132 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next238, 20
  br i1 %exitcond1083.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.loop_header228.split
  %133 = sub nsw i64 %109, %122
  %134 = icmp sgt i64 %133, 0
  %135 = select i1 %134, i64 %133, i64 0
  %polly.loop_guard275 = icmp slt i64 %135, 20
  br i1 %polly.loop_guard275, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1287.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header265.us, %polly.loop_exit282.us
  %indvar1399 = phi i64 [ 0, %polly.loop_header265.us ], [ %indvar.next1400, %polly.loop_exit282.us ]
  %indvars.iv1096 = phi i64 [ %121, %polly.loop_header265.us ], [ %indvars.iv.next1097, %polly.loop_exit282.us ]
  %polly.indvar276.us = phi i64 [ %135, %polly.loop_header265.us ], [ %polly.indvar_next277.us, %polly.loop_exit282.us ]
  %136 = add i64 %120, %indvar1399
  %smin1401 = call i64 @llvm.smin.i64(i64 %136, i64 255)
  %137 = add nsw i64 %smin1401, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1096, i64 255)
  %138 = add nsw i64 %polly.indvar276.us, %123
  %polly.loop_guard283.us1192 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard283.us1192, label %polly.loop_header280.preheader.us, label %polly.loop_exit282.us

polly.loop_header280.us:                          ; preds = %polly.loop_header280.us.preheader, %polly.loop_header280.us
  %polly.indvar284.us = phi i64 [ %polly.indvar_next285.us, %polly.loop_header280.us ], [ %polly.indvar284.us.ph, %polly.loop_header280.us.preheader ]
  %139 = add nuw nsw i64 %polly.indvar284.us, %109
  %polly.access.add.Packed_MemRef_call1288.us = add nuw nsw i64 %polly.indvar284.us, %polly.access.mul.Packed_MemRef_call1287.us
  %polly.access.Packed_MemRef_call1289.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call1289.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %polly.access.Packed_MemRef_call2297.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us
  %_p_scalar_298.us = load double, double* %polly.access.Packed_MemRef_call2297.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_302.us, %_p_scalar_298.us
  %140 = shl i64 %139, 3
  %141 = add i64 %140, %143
  %scevgep303.us = getelementptr i8, i8* %call, i64 %141
  %scevgep303304.us = bitcast i8* %scevgep303.us to double*
  %_p_scalar_305.us = load double, double* %scevgep303304.us, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_305.us
  store double %p_add42.i118.us, double* %scevgep303304.us, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next285.us = add nuw nsw i64 %polly.indvar284.us, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar284.us, %smin
  br i1 %exitcond1098.not, label %polly.loop_exit282.us, label %polly.loop_header280.us, !llvm.loop !83

polly.loop_exit282.us:                            ; preds = %polly.loop_header280.us, %middle.block1393, %polly.loop_header272.us
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %polly.loop_cond278.us = icmp ult i64 %polly.indvar276.us, 19
  %indvars.iv.next1097 = add i64 %indvars.iv1096, 1
  %indvar.next1400 = add i64 %indvar1399, 1
  br i1 %polly.loop_cond278.us, label %polly.loop_header272.us, label %polly.loop_exit274.loopexit.us

polly.loop_header280.preheader.us:                ; preds = %polly.loop_header272.us
  %142 = add nsw i64 %polly.indvar276.us, %122
  %polly.access.add.Packed_MemRef_call2292.us = add nsw i64 %138, %polly.access.mul.Packed_MemRef_call1287.us
  %polly.access.Packed_MemRef_call2293.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call2293.us, align 8
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us
  %_p_scalar_302.us = load double, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %143 = mul i64 %142, 9600
  %min.iters.check1402 = icmp ult i64 %137, 4
  br i1 %min.iters.check1402, label %polly.loop_header280.us.preheader, label %vector.ph1403

vector.ph1403:                                    ; preds = %polly.loop_header280.preheader.us
  %n.vec1405 = and i64 %137, -4
  %broadcast.splatinsert1411 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1412 = shufflevector <4 x double> %broadcast.splatinsert1411, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1414 = insertelement <4 x double> poison, double %_p_scalar_302.us, i32 0
  %broadcast.splat1415 = shufflevector <4 x double> %broadcast.splatinsert1414, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1395

vector.body1395:                                  ; preds = %vector.body1395, %vector.ph1403
  %index1406 = phi i64 [ 0, %vector.ph1403 ], [ %index.next1407, %vector.body1395 ]
  %144 = add nuw nsw i64 %index1406, %109
  %145 = add nuw nsw i64 %index1406, %polly.access.mul.Packed_MemRef_call1287.us
  %146 = getelementptr double, double* %Packed_MemRef_call1, i64 %145
  %147 = bitcast double* %146 to <4 x double>*
  %wide.load1410 = load <4 x double>, <4 x double>* %147, align 8
  %148 = fmul fast <4 x double> %broadcast.splat1412, %wide.load1410
  %149 = getelementptr double, double* %Packed_MemRef_call2, i64 %145
  %150 = bitcast double* %149 to <4 x double>*
  %wide.load1413 = load <4 x double>, <4 x double>* %150, align 8
  %151 = fmul fast <4 x double> %broadcast.splat1415, %wide.load1413
  %152 = shl i64 %144, 3
  %153 = add i64 %152, %143
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  %wide.load1416 = load <4 x double>, <4 x double>* %155, align 8, !alias.scope !71, !noalias !73
  %156 = fadd fast <4 x double> %151, %148
  %157 = fmul fast <4 x double> %156, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %158 = fadd fast <4 x double> %157, %wide.load1416
  %159 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %158, <4 x double>* %159, align 8, !alias.scope !71, !noalias !73
  %index.next1407 = add i64 %index1406, 4
  %160 = icmp eq i64 %index.next1407, %n.vec1405
  br i1 %160, label %middle.block1393, label %vector.body1395, !llvm.loop !84

middle.block1393:                                 ; preds = %vector.body1395
  %cmp.n1409 = icmp eq i64 %137, %n.vec1405
  br i1 %cmp.n1409, label %polly.loop_exit282.us, label %polly.loop_header280.us.preheader

polly.loop_header280.us.preheader:                ; preds = %polly.loop_header280.preheader.us, %middle.block1393
  %polly.indvar284.us.ph = phi i64 [ 0, %polly.loop_header280.preheader.us ], [ %n.vec1405, %middle.block1393 ]
  br label %polly.loop_header280.us

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_exit282.us
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next269.us, 20
  br i1 %exitcond1099.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %127, %polly.loop_header234 ]
  %161 = add nuw nsw i64 %polly.indvar255, %109
  %polly.access.mul.call1259 = mul nsw i64 %161, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %132, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %128
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.start308:                                   ; preds = %kernel_syr2k.exit
  %malloccall310 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall312 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header396

polly.exiting309:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall310)
  tail call void @free(i8* %malloccall312)
  br label %kernel_syr2k.exit90

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.start308
  %indvar1332 = phi i64 [ %indvar.next1333, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %162 = add i64 %indvar1332, 1
  %163 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check1334 = icmp ult i64 %162, 4
  br i1 %min.iters.check1334, label %polly.loop_header402.preheader, label %vector.ph1335

vector.ph1335:                                    ; preds = %polly.loop_header396
  %n.vec1337 = and i64 %162, -4
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %vector.ph1335
  %index1338 = phi i64 [ 0, %vector.ph1335 ], [ %index.next1339, %vector.body1331 ]
  %164 = shl nuw nsw i64 %index1338, 3
  %165 = getelementptr i8, i8* %scevgep408, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !85, !noalias !87
  %167 = fmul fast <4 x double> %wide.load1342, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !85, !noalias !87
  %index.next1339 = add i64 %index1338, 4
  %169 = icmp eq i64 %index.next1339, %n.vec1337
  br i1 %169, label %middle.block1329, label %vector.body1331, !llvm.loop !92

middle.block1329:                                 ; preds = %vector.body1331
  %cmp.n1341 = icmp eq i64 %162, %n.vec1337
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
  %170 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %170
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1129.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !93

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_header412.preheader ]
  %171 = mul nuw nsw i64 %polly.indvar415, 20
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar_next416, 50
  br i1 %exitcond1128.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit443 ], [ 4, %polly.loop_header412 ]
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %172 = mul nsw i64 %polly.indvar421, -4
  %173 = add nuw i64 %polly.indvar421, 4
  %174 = udiv i64 %173, 5
  %175 = mul nuw nsw i64 %174, 20
  %176 = add i64 %172, %175
  %177 = shl nuw nsw i64 %polly.indvar421, 2
  %178 = sub nsw i64 %177, %175
  %179 = udiv i64 %indvars.iv1113, 5
  %180 = mul nuw nsw i64 %179, 20
  %181 = add i64 %indvars.iv1111, %180
  %182 = sub nsw i64 %indvars.iv1118, %180
  %183 = shl nsw i64 %polly.indvar421, 8
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %184 = mul nsw i64 %polly.indvar421, -256
  %185 = mul nuw nsw i64 %polly.indvar421, 13
  %186 = add nuw nsw i64 %polly.indvar421, 4
  %pexp.p_div_q440 = udiv i64 %186, 5
  %187 = sub nsw i64 %185, %pexp.p_div_q440
  br label %polly.loop_header441

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -256
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -4
  %indvars.iv.next1114 = add nuw nsw i64 %indvars.iv1113, 1
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 4
  %exitcond1127.not = icmp eq i64 %polly.indvar_next422, 5
  br i1 %exitcond1127.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %188 = add nuw nsw i64 %polly.indvar427, %171
  %polly.access.mul.Packed_MemRef_call2313 = mul nuw nsw i64 %polly.indvar427, 1200
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_header430
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next428, 20
  br i1 %exitcond1107.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header424
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header424 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %189 = add nuw nsw i64 %polly.indvar433, %183
  %polly.access.mul.call2437 = mul nuw nsw i64 %189, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %188, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2313 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call2313
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1104
  br i1 %exitcond1106.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit426
  %indvar1346 = phi i64 [ %indvar.next1347, %polly.loop_exit482 ], [ 0, %polly.loop_exit426 ]
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit482 ], [ %182, %polly.loop_exit426 ]
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit482 ], [ %181, %polly.loop_exit426 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %187, %polly.loop_exit426 ]
  %190 = mul nsw i64 %indvar1346, -20
  %191 = add i64 %176, %190
  %smax1348 = call i64 @llvm.smax.i64(i64 %191, i64 0)
  %192 = mul nuw nsw i64 %indvar1346, 20
  %193 = add i64 %178, %192
  %194 = add i64 %smax1348, %193
  %smax1117 = call i64 @llvm.smax.i64(i64 %indvars.iv1115, i64 0)
  %195 = add i64 %smax1117, %indvars.iv1120
  %196 = mul nsw i64 %polly.indvar444, 20
  %197 = add nsw i64 %196, %184
  %198 = add nsw i64 %197, -1
  %.inv942 = icmp sgt i64 %197, 255
  %199 = select i1 %.inv942, i64 255, i64 %198
  %polly.loop_guard457 = icmp sgt i64 %199, -1
  %200 = icmp sgt i64 %197, 0
  %201 = select i1 %200, i64 %197, i64 0
  %202 = add nsw i64 %197, 19
  %polly.loop_guard469.not = icmp sgt i64 %201, %202
  br i1 %polly.loop_guard457, label %polly.loop_header447.us, label %polly.loop_header441.split

polly.loop_header447.us:                          ; preds = %polly.loop_header441, %polly.loop_exit468.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header441 ]
  %203 = add nuw nsw i64 %polly.indvar450.us, %171
  %polly.access.mul.Packed_MemRef_call1311.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %204 = add nuw nsw i64 %polly.indvar458.us, %183
  %polly.access.mul.call1462.us = mul nuw nsw i64 %204, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %203, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1311.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar458.us, %199
  br i1 %exitcond1109.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %201, %polly.loop_exit456.loopexit.us ]
  %205 = add nuw nsw i64 %polly.indvar470.us, %183
  %polly.access.mul.call1474.us = mul nsw i64 %205, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %203, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1311478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %202
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next451.us, 20
  br i1 %exitcond1110.not, label %polly.loop_header480.preheader, label %polly.loop_header447.us

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_exit482:                               ; preds = %polly.loop_exit489.loopexit.us, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp slt i64 %polly.indvar444, 59
  %indvars.iv.next1116 = add i64 %indvars.iv1115, -20
  %indvars.iv.next1121 = add i64 %indvars.iv1120, 20
  %indvar.next1347 = add i64 %indvar1346, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header447:                             ; preds = %polly.loop_header441.split, %polly.loop_exit468
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_exit468 ], [ 0, %polly.loop_header441.split ]
  %206 = add nuw nsw i64 %polly.indvar450, %171
  %polly.access.mul.Packed_MemRef_call1311477 = mul nuw nsw i64 %polly.indvar450, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next451, 20
  br i1 %exitcond1108.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header441.split
  %207 = sub nsw i64 %183, %196
  %208 = icmp sgt i64 %207, 0
  %209 = select i1 %208, i64 %207, i64 0
  %polly.loop_guard490 = icmp slt i64 %209, 20
  br i1 %polly.loop_guard490, label %polly.loop_header480.us, label %polly.loop_exit482

polly.loop_header480.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit489.loopexit.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_exit489.loopexit.us ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1311502.us = mul nuw nsw i64 %polly.indvar483.us, 1200
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header480.us, %polly.loop_exit497.us
  %indvar1349 = phi i64 [ 0, %polly.loop_header480.us ], [ %indvar.next1350, %polly.loop_exit497.us ]
  %indvars.iv1122 = phi i64 [ %195, %polly.loop_header480.us ], [ %indvars.iv.next1123, %polly.loop_exit497.us ]
  %polly.indvar491.us = phi i64 [ %209, %polly.loop_header480.us ], [ %polly.indvar_next492.us, %polly.loop_exit497.us ]
  %210 = add i64 %194, %indvar1349
  %smin1351 = call i64 @llvm.smin.i64(i64 %210, i64 255)
  %211 = add nsw i64 %smin1351, 1
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 255)
  %212 = add nsw i64 %polly.indvar491.us, %197
  %polly.loop_guard498.us1193 = icmp sgt i64 %212, -1
  br i1 %polly.loop_guard498.us1193, label %polly.loop_header495.preheader.us, label %polly.loop_exit497.us

polly.loop_header495.us:                          ; preds = %polly.loop_header495.us.preheader, %polly.loop_header495.us
  %polly.indvar499.us = phi i64 [ %polly.indvar_next500.us, %polly.loop_header495.us ], [ %polly.indvar499.us.ph, %polly.loop_header495.us.preheader ]
  %213 = add nuw nsw i64 %polly.indvar499.us, %183
  %polly.access.add.Packed_MemRef_call1311503.us = add nuw nsw i64 %polly.indvar499.us, %polly.access.mul.Packed_MemRef_call1311502.us
  %polly.access.Packed_MemRef_call1311504.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1311504.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %polly.access.Packed_MemRef_call2313512.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2313512.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_517.us, %_p_scalar_513.us
  %214 = shl i64 %213, 3
  %215 = add i64 %214, %217
  %scevgep518.us = getelementptr i8, i8* %call, i64 %215
  %scevgep518519.us = bitcast i8* %scevgep518.us to double*
  %_p_scalar_520.us = load double, double* %scevgep518519.us, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_520.us
  store double %p_add42.i79.us, double* %scevgep518519.us, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next500.us = add nuw nsw i64 %polly.indvar499.us, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar499.us, %smin1124
  br i1 %exitcond1125.not, label %polly.loop_exit497.us, label %polly.loop_header495.us, !llvm.loop !96

polly.loop_exit497.us:                            ; preds = %polly.loop_header495.us, %middle.block1343, %polly.loop_header487.us
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %polly.loop_cond493.us = icmp ult i64 %polly.indvar491.us, 19
  %indvars.iv.next1123 = add i64 %indvars.iv1122, 1
  %indvar.next1350 = add i64 %indvar1349, 1
  br i1 %polly.loop_cond493.us, label %polly.loop_header487.us, label %polly.loop_exit489.loopexit.us

polly.loop_header495.preheader.us:                ; preds = %polly.loop_header487.us
  %216 = add nsw i64 %polly.indvar491.us, %196
  %polly.access.add.Packed_MemRef_call2313507.us = add nsw i64 %212, %polly.access.mul.Packed_MemRef_call1311502.us
  %polly.access.Packed_MemRef_call2313508.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call2313508.us, align 8
  %polly.access.Packed_MemRef_call1311516.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call1311516.us, align 8
  %217 = mul i64 %216, 9600
  %min.iters.check1352 = icmp ult i64 %211, 4
  br i1 %min.iters.check1352, label %polly.loop_header495.us.preheader, label %vector.ph1353

vector.ph1353:                                    ; preds = %polly.loop_header495.preheader.us
  %n.vec1355 = and i64 %211, -4
  %broadcast.splatinsert1361 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1362 = shufflevector <4 x double> %broadcast.splatinsert1361, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1364 = insertelement <4 x double> poison, double %_p_scalar_517.us, i32 0
  %broadcast.splat1365 = shufflevector <4 x double> %broadcast.splatinsert1364, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1357, %vector.body1345 ]
  %218 = add nuw nsw i64 %index1356, %183
  %219 = add nuw nsw i64 %index1356, %polly.access.mul.Packed_MemRef_call1311502.us
  %220 = getelementptr double, double* %Packed_MemRef_call1311, i64 %219
  %221 = bitcast double* %220 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %221, align 8
  %222 = fmul fast <4 x double> %broadcast.splat1362, %wide.load1360
  %223 = getelementptr double, double* %Packed_MemRef_call2313, i64 %219
  %224 = bitcast double* %223 to <4 x double>*
  %wide.load1363 = load <4 x double>, <4 x double>* %224, align 8
  %225 = fmul fast <4 x double> %broadcast.splat1365, %wide.load1363
  %226 = shl i64 %218, 3
  %227 = add i64 %226, %217
  %228 = getelementptr i8, i8* %call, i64 %227
  %229 = bitcast i8* %228 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %229, align 8, !alias.scope !85, !noalias !87
  %230 = fadd fast <4 x double> %225, %222
  %231 = fmul fast <4 x double> %230, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %232 = fadd fast <4 x double> %231, %wide.load1366
  %233 = bitcast i8* %228 to <4 x double>*
  store <4 x double> %232, <4 x double>* %233, align 8, !alias.scope !85, !noalias !87
  %index.next1357 = add i64 %index1356, 4
  %234 = icmp eq i64 %index.next1357, %n.vec1355
  br i1 %234, label %middle.block1343, label %vector.body1345, !llvm.loop !97

middle.block1343:                                 ; preds = %vector.body1345
  %cmp.n1359 = icmp eq i64 %211, %n.vec1355
  br i1 %cmp.n1359, label %polly.loop_exit497.us, label %polly.loop_header495.us.preheader

polly.loop_header495.us.preheader:                ; preds = %polly.loop_header495.preheader.us, %middle.block1343
  %polly.indvar499.us.ph = phi i64 [ 0, %polly.loop_header495.preheader.us ], [ %n.vec1355, %middle.block1343 ]
  br label %polly.loop_header495.us

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_exit497.us
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next484.us, 20
  br i1 %exitcond1126.not, label %polly.loop_exit482, label %polly.loop_header480.us

polly.loop_header466:                             ; preds = %polly.loop_header447, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %201, %polly.loop_header447 ]
  %235 = add nuw nsw i64 %polly.indvar470, %183
  %polly.access.mul.call1474 = mul nsw i64 %235, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %206, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1311478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1311477
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %202
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall527 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %236 = add i64 %indvar, 1
  %237 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %237
  %min.iters.check1284 = icmp ult i64 %236, 4
  br i1 %min.iters.check1284, label %polly.loop_header617.preheader, label %vector.ph1285

vector.ph1285:                                    ; preds = %polly.loop_header611
  %n.vec1287 = and i64 %236, -4
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %vector.ph1285
  %index1288 = phi i64 [ 0, %vector.ph1285 ], [ %index.next1289, %vector.body1283 ]
  %238 = shl nuw nsw i64 %index1288, 3
  %239 = getelementptr i8, i8* %scevgep623, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %240, align 8, !alias.scope !98, !noalias !100
  %241 = fmul fast <4 x double> %wide.load1292, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %242 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %241, <4 x double>* %242, align 8, !alias.scope !98, !noalias !100
  %index.next1289 = add i64 %index1288, 4
  %243 = icmp eq i64 %index.next1289, %n.vec1287
  br i1 %243, label %middle.block1281, label %vector.body1283, !llvm.loop !105

middle.block1281:                                 ; preds = %vector.body1283
  %cmp.n1291 = icmp eq i64 %236, %n.vec1287
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
  %244 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %244
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !98, !noalias !100
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1156.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !106

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %245 = mul nuw nsw i64 %polly.indvar630, 20
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next631, 50
  br i1 %exitcond1155.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit658 ], [ 4, %polly.loop_header627 ]
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %246 = mul nsw i64 %polly.indvar636, -4
  %247 = add nuw i64 %polly.indvar636, 4
  %248 = udiv i64 %247, 5
  %249 = mul nuw nsw i64 %248, 20
  %250 = add i64 %246, %249
  %251 = shl nuw nsw i64 %polly.indvar636, 2
  %252 = sub nsw i64 %251, %249
  %253 = udiv i64 %indvars.iv1140, 5
  %254 = mul nuw nsw i64 %253, 20
  %255 = add i64 %indvars.iv1138, %254
  %256 = sub nsw i64 %indvars.iv1145, %254
  %257 = shl nsw i64 %polly.indvar636, 8
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %258 = mul nsw i64 %polly.indvar636, -256
  %259 = mul nuw nsw i64 %polly.indvar636, 13
  %260 = add nuw nsw i64 %polly.indvar636, 4
  %pexp.p_div_q655 = udiv i64 %260, 5
  %261 = sub nsw i64 %259, %pexp.p_div_q655
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1132 = add nsw i64 %indvars.iv1131, -256
  %indvars.iv.next1139 = add nsw i64 %indvars.iv1138, -4
  %indvars.iv.next1141 = add nuw nsw i64 %indvars.iv1140, 1
  %indvars.iv.next1146 = add nuw nsw i64 %indvars.iv1145, 4
  %exitcond1154.not = icmp eq i64 %polly.indvar_next637, 5
  br i1 %exitcond1154.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %262 = add nuw nsw i64 %polly.indvar642, %245
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next643, 20
  br i1 %exitcond1134.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %263 = add nuw nsw i64 %polly.indvar648, %257
  %polly.access.mul.call2652 = mul nuw nsw i64 %263, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %262, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1131
  br i1 %exitcond1133.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit641
  %indvar1296 = phi i64 [ %indvar.next1297, %polly.loop_exit697 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit697 ], [ %256, %polly.loop_exit641 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit697 ], [ %255, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %261, %polly.loop_exit641 ]
  %264 = mul nsw i64 %indvar1296, -20
  %265 = add i64 %250, %264
  %smax1298 = call i64 @llvm.smax.i64(i64 %265, i64 0)
  %266 = mul nuw nsw i64 %indvar1296, 20
  %267 = add i64 %252, %266
  %268 = add i64 %smax1298, %267
  %smax1144 = call i64 @llvm.smax.i64(i64 %indvars.iv1142, i64 0)
  %269 = add i64 %smax1144, %indvars.iv1147
  %270 = mul nsw i64 %polly.indvar659, 20
  %271 = add nsw i64 %270, %258
  %272 = add nsw i64 %271, -1
  %.inv943 = icmp sgt i64 %271, 255
  %273 = select i1 %.inv943, i64 255, i64 %272
  %polly.loop_guard672 = icmp sgt i64 %273, -1
  %274 = icmp sgt i64 %271, 0
  %275 = select i1 %274, i64 %271, i64 0
  %276 = add nsw i64 %271, 19
  %polly.loop_guard684.not = icmp sgt i64 %275, %276
  br i1 %polly.loop_guard672, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit683.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit683.us ], [ 0, %polly.loop_header656 ]
  %277 = add nuw nsw i64 %polly.indvar665.us, %245
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  br label %polly.loop_header669.us

polly.loop_header669.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header662.us ]
  %278 = add nuw nsw i64 %polly.indvar673.us, %257
  %polly.access.mul.call1677.us = mul nuw nsw i64 %278, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %277, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526.us = add nuw nsw i64 %polly.indvar673.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar673.us, %273
  br i1 %exitcond1136.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %275, %polly.loop_exit671.loopexit.us ]
  %279 = add nuw nsw i64 %polly.indvar685.us, %257
  %polly.access.mul.call1689.us = mul nsw i64 %279, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %277, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526693.us = add nuw nsw i64 %polly.indvar685.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %276
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_exit683.us

polly.loop_exit683.us:                            ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next666.us, 20
  br i1 %exitcond1137.not, label %polly.loop_header695.preheader, label %polly.loop_header662.us

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_exit683.us, label %polly.loop_header681.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_exit697:                               ; preds = %polly.loop_exit704.loopexit.us, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp slt i64 %polly.indvar659, 59
  %indvars.iv.next1143 = add i64 %indvars.iv1142, -20
  %indvars.iv.next1148 = add i64 %indvars.iv1147, 20
  %indvar.next1297 = add i64 %indvar1296, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit683
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit683 ], [ 0, %polly.loop_header656.split ]
  %280 = add nuw nsw i64 %polly.indvar665, %245
  %polly.access.mul.Packed_MemRef_call1526692 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header681

polly.loop_exit683:                               ; preds = %polly.loop_header681
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next666, 20
  br i1 %exitcond1135.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_header695.preheader:                   ; preds = %polly.loop_exit683, %polly.loop_exit683.us, %polly.loop_header656.split
  %281 = sub nsw i64 %257, %270
  %282 = icmp sgt i64 %281, 0
  %283 = select i1 %282, i64 %281, i64 0
  %polly.loop_guard705 = icmp slt i64 %283, 20
  br i1 %polly.loop_guard705, label %polly.loop_header695.us, label %polly.loop_exit697

polly.loop_header695.us:                          ; preds = %polly.loop_header695.preheader, %polly.loop_exit704.loopexit.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_exit704.loopexit.us ], [ 0, %polly.loop_header695.preheader ]
  %polly.access.mul.Packed_MemRef_call1526717.us = mul nuw nsw i64 %polly.indvar698.us, 1200
  br label %polly.loop_header702.us

polly.loop_header702.us:                          ; preds = %polly.loop_header695.us, %polly.loop_exit712.us
  %indvar1299 = phi i64 [ 0, %polly.loop_header695.us ], [ %indvar.next1300, %polly.loop_exit712.us ]
  %indvars.iv1149 = phi i64 [ %269, %polly.loop_header695.us ], [ %indvars.iv.next1150, %polly.loop_exit712.us ]
  %polly.indvar706.us = phi i64 [ %283, %polly.loop_header695.us ], [ %polly.indvar_next707.us, %polly.loop_exit712.us ]
  %284 = add i64 %268, %indvar1299
  %smin1301 = call i64 @llvm.smin.i64(i64 %284, i64 255)
  %285 = add nsw i64 %smin1301, 1
  %smin1151 = call i64 @llvm.smin.i64(i64 %indvars.iv1149, i64 255)
  %286 = add nsw i64 %polly.indvar706.us, %271
  %polly.loop_guard713.us1194 = icmp sgt i64 %286, -1
  br i1 %polly.loop_guard713.us1194, label %polly.loop_header710.preheader.us, label %polly.loop_exit712.us

polly.loop_header710.us:                          ; preds = %polly.loop_header710.us.preheader, %polly.loop_header710.us
  %polly.indvar714.us = phi i64 [ %polly.indvar_next715.us, %polly.loop_header710.us ], [ %polly.indvar714.us.ph, %polly.loop_header710.us.preheader ]
  %287 = add nuw nsw i64 %polly.indvar714.us, %257
  %polly.access.add.Packed_MemRef_call1526718.us = add nuw nsw i64 %polly.indvar714.us, %polly.access.mul.Packed_MemRef_call1526717.us
  %polly.access.Packed_MemRef_call1526719.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call1526719.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %polly.access.Packed_MemRef_call2528727.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us
  %_p_scalar_728.us = load double, double* %polly.access.Packed_MemRef_call2528727.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_732.us, %_p_scalar_728.us
  %288 = shl i64 %287, 3
  %289 = add i64 %288, %291
  %scevgep733.us = getelementptr i8, i8* %call, i64 %289
  %scevgep733734.us = bitcast i8* %scevgep733.us to double*
  %_p_scalar_735.us = load double, double* %scevgep733734.us, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_735.us
  store double %p_add42.i.us, double* %scevgep733734.us, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next715.us = add nuw nsw i64 %polly.indvar714.us, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar714.us, %smin1151
  br i1 %exitcond1152.not, label %polly.loop_exit712.us, label %polly.loop_header710.us, !llvm.loop !109

polly.loop_exit712.us:                            ; preds = %polly.loop_header710.us, %middle.block1293, %polly.loop_header702.us
  %polly.indvar_next707.us = add nuw nsw i64 %polly.indvar706.us, 1
  %polly.loop_cond708.us = icmp ult i64 %polly.indvar706.us, 19
  %indvars.iv.next1150 = add i64 %indvars.iv1149, 1
  %indvar.next1300 = add i64 %indvar1299, 1
  br i1 %polly.loop_cond708.us, label %polly.loop_header702.us, label %polly.loop_exit704.loopexit.us

polly.loop_header710.preheader.us:                ; preds = %polly.loop_header702.us
  %290 = add nsw i64 %polly.indvar706.us, %270
  %polly.access.add.Packed_MemRef_call2528722.us = add nsw i64 %286, %polly.access.mul.Packed_MemRef_call1526717.us
  %polly.access.Packed_MemRef_call2528723.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call2528723.us, align 8
  %polly.access.Packed_MemRef_call1526731.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us
  %_p_scalar_732.us = load double, double* %polly.access.Packed_MemRef_call1526731.us, align 8
  %291 = mul i64 %290, 9600
  %min.iters.check1302 = icmp ult i64 %285, 4
  br i1 %min.iters.check1302, label %polly.loop_header710.us.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %polly.loop_header710.preheader.us
  %n.vec1305 = and i64 %285, -4
  %broadcast.splatinsert1311 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1312 = shufflevector <4 x double> %broadcast.splatinsert1311, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1314 = insertelement <4 x double> poison, double %_p_scalar_732.us, i32 0
  %broadcast.splat1315 = shufflevector <4 x double> %broadcast.splatinsert1314, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1295 ]
  %292 = add nuw nsw i64 %index1306, %257
  %293 = add nuw nsw i64 %index1306, %polly.access.mul.Packed_MemRef_call1526717.us
  %294 = getelementptr double, double* %Packed_MemRef_call1526, i64 %293
  %295 = bitcast double* %294 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %295, align 8
  %296 = fmul fast <4 x double> %broadcast.splat1312, %wide.load1310
  %297 = getelementptr double, double* %Packed_MemRef_call2528, i64 %293
  %298 = bitcast double* %297 to <4 x double>*
  %wide.load1313 = load <4 x double>, <4 x double>* %298, align 8
  %299 = fmul fast <4 x double> %broadcast.splat1315, %wide.load1313
  %300 = shl i64 %292, 3
  %301 = add i64 %300, %291
  %302 = getelementptr i8, i8* %call, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  %wide.load1316 = load <4 x double>, <4 x double>* %303, align 8, !alias.scope !98, !noalias !100
  %304 = fadd fast <4 x double> %299, %296
  %305 = fmul fast <4 x double> %304, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %306 = fadd fast <4 x double> %305, %wide.load1316
  %307 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %306, <4 x double>* %307, align 8, !alias.scope !98, !noalias !100
  %index.next1307 = add i64 %index1306, 4
  %308 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %308, label %middle.block1293, label %vector.body1295, !llvm.loop !110

middle.block1293:                                 ; preds = %vector.body1295
  %cmp.n1309 = icmp eq i64 %285, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit712.us, label %polly.loop_header710.us.preheader

polly.loop_header710.us.preheader:                ; preds = %polly.loop_header710.preheader.us, %middle.block1293
  %polly.indvar714.us.ph = phi i64 [ 0, %polly.loop_header710.preheader.us ], [ %n.vec1305, %middle.block1293 ]
  br label %polly.loop_header710.us

polly.loop_exit704.loopexit.us:                   ; preds = %polly.loop_exit712.us
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar_next699.us, 20
  br i1 %exitcond1153.not, label %polly.loop_exit697, label %polly.loop_header695.us

polly.loop_header681:                             ; preds = %polly.loop_header662, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %275, %polly.loop_header662 ]
  %309 = add nuw nsw i64 %polly.indvar685, %257
  %polly.access.mul.call1689 = mul nsw i64 %309, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %280, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526693 = add nuw nsw i64 %polly.indvar685, %polly.access.mul.Packed_MemRef_call1526692
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %276
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_exit683

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1182 = phi i64 [ %indvars.iv.next1183, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 -1168)
  %310 = shl nsw i64 %polly.indvar865, 5
  %311 = add nsw i64 %smin1184, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1183 = add nsw i64 %indvars.iv1182, -32
  %exitcond1187.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1187.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %312 = mul nsw i64 %polly.indvar871, -32
  %smin1222 = call i64 @llvm.smin.i64(i64 %312, i64 -1168)
  %313 = add nsw i64 %smin1222, 1200
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 -1168)
  %314 = shl nsw i64 %polly.indvar871, 5
  %315 = add nsw i64 %smin1180, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -32
  %exitcond1186.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1186.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %316 = add nuw nsw i64 %polly.indvar877, %310
  %317 = trunc i64 %316 to i32
  %318 = mul nuw nsw i64 %316, 9600
  %min.iters.check = icmp eq i64 %313, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1223

vector.ph1223:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1230 = insertelement <4 x i64> poison, i64 %314, i32 0
  %broadcast.splat1231 = shufflevector <4 x i64> %broadcast.splatinsert1230, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1232 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1233 = shufflevector <4 x i32> %broadcast.splatinsert1232, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1223
  %index1224 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1225, %vector.body1221 ]
  %vec.ind1228 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1223 ], [ %vec.ind.next1229, %vector.body1221 ]
  %319 = add nuw nsw <4 x i64> %vec.ind1228, %broadcast.splat1231
  %320 = trunc <4 x i64> %319 to <4 x i32>
  %321 = mul <4 x i32> %broadcast.splat1233, %320
  %322 = add <4 x i32> %321, <i32 3, i32 3, i32 3, i32 3>
  %323 = urem <4 x i32> %322, <i32 1200, i32 1200, i32 1200, i32 1200>
  %324 = sitofp <4 x i32> %323 to <4 x double>
  %325 = fmul fast <4 x double> %324, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %326 = extractelement <4 x i64> %319, i32 0
  %327 = shl i64 %326, 3
  %328 = add nuw nsw i64 %327, %318
  %329 = getelementptr i8, i8* %call, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %325, <4 x double>* %330, align 8, !alias.scope !111, !noalias !113
  %index.next1225 = add i64 %index1224, 4
  %vec.ind.next1229 = add <4 x i64> %vec.ind1228, <i64 4, i64 4, i64 4, i64 4>
  %331 = icmp eq i64 %index.next1225, %313
  br i1 %331, label %polly.loop_exit882, label %vector.body1221, !llvm.loop !116

polly.loop_exit882:                               ; preds = %vector.body1221, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar877, %311
  br i1 %exitcond1185.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %332 = add nuw nsw i64 %polly.indvar883, %314
  %333 = trunc i64 %332 to i32
  %334 = mul i32 %333, %317
  %335 = add i32 %334, 3
  %336 = urem i32 %335, 1200
  %p_conv31.i = sitofp i32 %336 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %337 = shl i64 %332, 3
  %338 = add nuw nsw i64 %337, %318
  %scevgep886 = getelementptr i8, i8* %call, i64 %338
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar883, %315
  br i1 %exitcond1181.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !117

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1172, i64 -1168)
  %339 = shl nsw i64 %polly.indvar892, 5
  %340 = add nsw i64 %smin1174, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1173 = add nsw i64 %indvars.iv1172, -32
  %exitcond1177.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1177.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %341 = mul nsw i64 %polly.indvar898, -32
  %smin1237 = call i64 @llvm.smin.i64(i64 %341, i64 -968)
  %342 = add nsw i64 %smin1237, 1000
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -968)
  %343 = shl nsw i64 %polly.indvar898, 5
  %344 = add nsw i64 %smin1170, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1176.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1176.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %345 = add nuw nsw i64 %polly.indvar904, %339
  %346 = trunc i64 %345 to i32
  %347 = mul nuw nsw i64 %345, 8000
  %min.iters.check1238 = icmp eq i64 %342, 0
  br i1 %min.iters.check1238, label %polly.loop_header907, label %vector.ph1239

vector.ph1239:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1248 = insertelement <4 x i64> poison, i64 %343, i32 0
  %broadcast.splat1249 = shufflevector <4 x i64> %broadcast.splatinsert1248, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1239
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1243, %vector.body1236 ]
  %vec.ind1246 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1239 ], [ %vec.ind.next1247, %vector.body1236 ]
  %348 = add nuw nsw <4 x i64> %vec.ind1246, %broadcast.splat1249
  %349 = trunc <4 x i64> %348 to <4 x i32>
  %350 = mul <4 x i32> %broadcast.splat1251, %349
  %351 = add <4 x i32> %350, <i32 2, i32 2, i32 2, i32 2>
  %352 = urem <4 x i32> %351, <i32 1000, i32 1000, i32 1000, i32 1000>
  %353 = sitofp <4 x i32> %352 to <4 x double>
  %354 = fmul fast <4 x double> %353, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %355 = extractelement <4 x i64> %348, i32 0
  %356 = shl i64 %355, 3
  %357 = add nuw nsw i64 %356, %347
  %358 = getelementptr i8, i8* %call2, i64 %357
  %359 = bitcast i8* %358 to <4 x double>*
  store <4 x double> %354, <4 x double>* %359, align 8, !alias.scope !115, !noalias !118
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1247 = add <4 x i64> %vec.ind1246, <i64 4, i64 4, i64 4, i64 4>
  %360 = icmp eq i64 %index.next1243, %342
  br i1 %360, label %polly.loop_exit909, label %vector.body1236, !llvm.loop !119

polly.loop_exit909:                               ; preds = %vector.body1236, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar904, %340
  br i1 %exitcond1175.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %361 = add nuw nsw i64 %polly.indvar910, %343
  %362 = trunc i64 %361 to i32
  %363 = mul i32 %362, %346
  %364 = add i32 %363, 2
  %365 = urem i32 %364, 1000
  %p_conv10.i = sitofp i32 %365 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %366 = shl i64 %361, 3
  %367 = add nuw nsw i64 %366, %347
  %scevgep913 = getelementptr i8, i8* %call2, i64 %367
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !115, !noalias !118
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar910, %344
  br i1 %exitcond1171.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !120

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1162 = phi i64 [ %indvars.iv.next1163, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1164 = call i64 @llvm.smin.i64(i64 %indvars.iv1162, i64 -1168)
  %368 = shl nsw i64 %polly.indvar918, 5
  %369 = add nsw i64 %smin1164, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1163 = add nsw i64 %indvars.iv1162, -32
  %exitcond1167.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1167.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1158 = phi i64 [ %indvars.iv.next1159, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %370 = mul nsw i64 %polly.indvar924, -32
  %smin1255 = call i64 @llvm.smin.i64(i64 %370, i64 -968)
  %371 = add nsw i64 %smin1255, 1000
  %smin1160 = call i64 @llvm.smin.i64(i64 %indvars.iv1158, i64 -968)
  %372 = shl nsw i64 %polly.indvar924, 5
  %373 = add nsw i64 %smin1160, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1159 = add nsw i64 %indvars.iv1158, -32
  %exitcond1166.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1166.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %374 = add nuw nsw i64 %polly.indvar930, %368
  %375 = trunc i64 %374 to i32
  %376 = mul nuw nsw i64 %374, 8000
  %min.iters.check1256 = icmp eq i64 %371, 0
  br i1 %min.iters.check1256, label %polly.loop_header933, label %vector.ph1257

vector.ph1257:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1266 = insertelement <4 x i64> poison, i64 %372, i32 0
  %broadcast.splat1267 = shufflevector <4 x i64> %broadcast.splatinsert1266, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1254 ]
  %vec.ind1264 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1257 ], [ %vec.ind.next1265, %vector.body1254 ]
  %377 = add nuw nsw <4 x i64> %vec.ind1264, %broadcast.splat1267
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat1269, %378
  %380 = add <4 x i32> %379, <i32 1, i32 1, i32 1, i32 1>
  %381 = urem <4 x i32> %380, <i32 1200, i32 1200, i32 1200, i32 1200>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add nuw nsw i64 %385, %376
  %387 = getelementptr i8, i8* %call1, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !114, !noalias !121
  %index.next1261 = add i64 %index1260, 4
  %vec.ind.next1265 = add <4 x i64> %vec.ind1264, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next1261, %371
  br i1 %389, label %polly.loop_exit935, label %vector.body1254, !llvm.loop !122

polly.loop_exit935:                               ; preds = %vector.body1254, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar930, %369
  br i1 %exitcond1165.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %390 = add nuw nsw i64 %polly.indvar936, %372
  %391 = trunc i64 %390 to i32
  %392 = mul i32 %391, %375
  %393 = add i32 %392, 1
  %394 = urem i32 %393, 1200
  %p_conv.i = sitofp i32 %394 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %395 = shl i64 %390, 3
  %396 = add nuw nsw i64 %395, %376
  %scevgep940 = getelementptr i8, i8* %call1, i64 %396
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !114, !noalias !121
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar936, %373
  br i1 %exitcond1161.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !123
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
!26 = !{!"llvm.loop.tile.size", i32 256}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 20}
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
!47 = distinct !{!47, !12, !24, !48, !49, !50, !35, !51, !60}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !24, !53, !54, !55, !56, !57}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.interchange.followup_interchanged", !58}
!58 = distinct !{!58, !12, !24, !53, !44, !59, !46}
!59 = !{!"llvm.data.pack.array", !22}
!60 = !{!"llvm.loop.tile.followup_tile", !61}
!61 = distinct !{!61, !12, !24, !62}
!62 = !{!"llvm.loop.id", !"i2"}
!63 = distinct !{!63, !12, !13}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !4, i64 0}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75, !76, !77}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !72, !"polly.alias.scope.Packed_MemRef_call1"}
!77 = distinct !{!77, !72, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !80, !13}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!71, !74, !76, !77}
!82 = !{!71, !75, !76, !77}
!83 = distinct !{!83, !80, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !86, !"polly.alias.scope.MemRef_call"}
!86 = distinct !{!86, !"polly.alias.scope.domain"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !86, !"polly.alias.scope.MemRef_call1"}
!89 = distinct !{!89, !86, !"polly.alias.scope.MemRef_call2"}
!90 = distinct !{!90, !86, !"polly.alias.scope.Packed_MemRef_call1"}
!91 = distinct !{!91, !86, !"polly.alias.scope.Packed_MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !80, !13}
!94 = !{!85, !88, !90, !91}
!95 = !{!85, !89, !90, !91}
!96 = distinct !{!96, !80, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102, !103, !104}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !99, !"polly.alias.scope.Packed_MemRef_call1"}
!104 = distinct !{!104, !99, !"polly.alias.scope.Packed_MemRef_call2"}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !80, !13}
!107 = !{!98, !101, !103, !104}
!108 = !{!98, !102, !103, !104}
!109 = distinct !{!109, !80, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !112, !"polly.alias.scope.MemRef_call"}
!112 = distinct !{!112, !"polly.alias.scope.domain"}
!113 = !{!114, !115}
!114 = distinct !{!114, !112, !"polly.alias.scope.MemRef_call1"}
!115 = distinct !{!115, !112, !"polly.alias.scope.MemRef_call2"}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !80, !13}
!118 = !{!114, !111}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !80, !13}
!121 = !{!115, !111}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !80, !13}
