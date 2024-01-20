; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3625.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3625.c"
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
  %scevgep1230 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1229 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1228 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1227 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1227, %scevgep1230
  %bound1 = icmp ult i8* %scevgep1229, %scevgep1228
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
  br i1 %exitcond18.not.i, label %vector.ph1234, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1234:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1241 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1242 = shufflevector <4 x i64> %broadcast.splatinsert1241, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1234
  %index1235 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1236, %vector.body1233 ]
  %vec.ind1239 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1234 ], [ %vec.ind.next1240, %vector.body1233 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1239, %broadcast.splat1242
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv7.i, i64 %index1235
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1236 = add i64 %index1235, 4
  %vec.ind.next1240 = add <4 x i64> %vec.ind1239, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1236, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1233, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1233
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1234, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit905
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1297 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1297, label %for.body3.i46.preheader1377, label %vector.ph1298

vector.ph1298:                                    ; preds = %for.body3.i46.preheader
  %n.vec1300 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.body1296, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1302, %vector.body1296 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %index1301
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1302 = add i64 %index1301, 4
  %46 = icmp eq i64 %index.next1302, %n.vec1300
  br i1 %46, label %middle.block1294, label %vector.body1296, !llvm.loop !18

middle.block1294:                                 ; preds = %vector.body1296
  %cmp.n1304 = icmp eq i64 %indvars.iv21.i, %n.vec1300
  br i1 %cmp.n1304, label %for.inc6.i, label %for.body3.i46.preheader1377

for.body3.i46.preheader1377:                      ; preds = %for.body3.i46.preheader, %middle.block1294
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1300, %middle.block1294 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1377, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1377 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1294, %for.cond1.preheader.i45
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
  %min.iters.check1320 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1320, label %for.body3.i60.preheader1374, label %vector.ph1321

vector.ph1321:                                    ; preds = %for.body3.i60.preheader
  %n.vec1323 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %vector.ph1321
  %index1324 = phi i64 [ 0, %vector.ph1321 ], [ %index.next1325, %vector.body1319 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1324
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1328 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1328, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1325 = add i64 %index1324, 4
  %57 = icmp eq i64 %index.next1325, %n.vec1323
  br i1 %57, label %middle.block1317, label %vector.body1319, !llvm.loop !60

middle.block1317:                                 ; preds = %vector.body1319
  %cmp.n1327 = icmp eq i64 %indvars.iv21.i52, %n.vec1323
  br i1 %cmp.n1327, label %for.inc6.i63, label %for.body3.i60.preheader1374

for.body3.i60.preheader1374:                      ; preds = %for.body3.i60.preheader, %middle.block1317
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1323, %middle.block1317 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1374, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1374 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  %min.iters.check1346 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1346, label %for.body3.i99.preheader1371, label %vector.ph1347

vector.ph1347:                                    ; preds = %for.body3.i99.preheader
  %n.vec1349 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1345 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1350
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1354, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1351 = add i64 %index1350, 4
  %68 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %68, label %middle.block1343, label %vector.body1345, !llvm.loop !62

middle.block1343:                                 ; preds = %vector.body1345
  %cmp.n1353 = icmp eq i64 %indvars.iv21.i91, %n.vec1349
  br i1 %cmp.n1353, label %for.inc6.i102, label %for.body3.i99.preheader1371

for.body3.i99.preheader1371:                      ; preds = %for.body3.i99.preheader, %middle.block1343
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1349, %middle.block1343 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1371, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1371 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1343, %for.cond1.preheader.i93
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
  %indvar1358 = phi i64 [ %indvar.next1359, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1358, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1360 = icmp ult i64 %88, 4
  br i1 %min.iters.check1360, label %polly.loop_header191.preheader, label %vector.ph1361

vector.ph1361:                                    ; preds = %polly.loop_header
  %n.vec1363 = and i64 %88, -4
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1361
  %index1364 = phi i64 [ 0, %vector.ph1361 ], [ %index.next1365, %vector.body1357 ]
  %90 = shl nuw nsw i64 %index1364, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1368, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1365 = add i64 %index1364, 4
  %95 = icmp eq i64 %index.next1365, %n.vec1363
  br i1 %95, label %middle.block1355, label %vector.body1357, !llvm.loop !74

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1367 = icmp eq i64 %88, %n.vec1363
  br i1 %cmp.n1367, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1355
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1363, %middle.block1355 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1355
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1359 = add i64 %indvar1358, 1
  br i1 %exitcond1112.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1111.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1111.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv1102 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1103, %polly.loop_exit207 ]
  %indvars.iv1097 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1098, %polly.loop_exit207 ]
  %indvars.iv1091 = phi i64 [ 4, %polly.loop_header199.preheader ], [ %indvars.iv.next1092, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 79, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = udiv i64 %indvars.iv1091, 5
  %98 = mul nuw nsw i64 %97, 80
  %99 = trunc i64 %polly.indvar202 to i8
  %pexp.p_div_q.lhs.trunc = add i8 %99, 4
  %pexp.p_div_q928 = udiv i8 %pexp.p_div_q.lhs.trunc, 5
  %pexp.p_div_q.zext = zext i8 %pexp.p_div_q928 to i64
  %100 = sub nsw i64 %polly.indvar202, %pexp.p_div_q.zext
  %polly.loop_guard = icmp slt i64 %100, 15
  br i1 %polly.loop_guard, label %polly.loop_header205.preheader, label %polly.loop_exit207

polly.loop_header205.preheader:                   ; preds = %polly.loop_header199
  %101 = sub nsw i64 %indvars.iv, %98
  %102 = sub nsw i64 %indvars.iv1102, %98
  %103 = add i64 %indvars.iv1097, %98
  %104 = shl nsw i64 %polly.indvar202, 2
  %105 = or i64 %104, 1
  %106 = shl nsw i64 %polly.indvar202, 6
  %107 = mul nsw i64 %polly.indvar202, -64
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit259, %polly.loop_header199
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %indvars.iv.next1092 = add nuw nsw i64 %indvars.iv1091, 1
  %indvars.iv.next1098 = add nsw i64 %indvars.iv1097, -16
  %indvars.iv.next1103 = add nuw nsw i64 %indvars.iv1102, 16
  %exitcond1110.not = icmp eq i64 %polly.indvar_next203, 19
  br i1 %exitcond1110.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205.preheader, %polly.loop_exit259
  %indvars.iv1104 = phi i64 [ %102, %polly.loop_header205.preheader ], [ %indvars.iv.next1105, %polly.loop_exit259 ]
  %indvars.iv1099 = phi i64 [ %103, %polly.loop_header205.preheader ], [ %indvars.iv.next1100, %polly.loop_exit259 ]
  %indvars.iv1093 = phi i64 [ %101, %polly.loop_header205.preheader ], [ %indvars.iv.next1094, %polly.loop_exit259 ]
  %polly.indvar208 = phi i64 [ %100, %polly.loop_header205.preheader ], [ %polly.indvar_next209, %polly.loop_exit259 ]
  %smax1101 = call i64 @llvm.smax.i64(i64 %indvars.iv1099, i64 0)
  %108 = add i64 %smax1101, %indvars.iv1104
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1093, i64 0)
  %109 = mul nsw i64 %polly.indvar208, 5
  %.not = icmp slt i64 %109, %105
  %110 = mul nsw i64 %polly.indvar208, 80
  %111 = add nsw i64 %110, %107
  %112 = icmp sgt i64 %111, 64
  %113 = select i1 %112, i64 %111, i64 64
  %114 = add nsw i64 %111, 79
  %polly.loop_guard246 = icmp sgt i64 %111, -80
  br i1 %.not, label %polly.loop_header211.us, label %polly.loop_header205.split

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.merge.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.merge.us ], [ 0, %polly.loop_header205 ]
  br i1 %polly.loop_guard246, label %polly.loop_header243.preheader.us, label %polly.merge.us

polly.loop_header243.us:                          ; preds = %polly.loop_header243.preheader.us, %polly.loop_header243.us
  %polly.indvar247.us = phi i64 [ %polly.indvar_next248.us, %polly.loop_header243.us ], [ 0, %polly.loop_header243.preheader.us ]
  %115 = add nuw nsw i64 %polly.indvar247.us, %106
  %polly.access.mul.call1251.us = mul nuw nsw i64 %115, 1000
  %polly.access.add.call1252.us = add nuw nsw i64 %polly.access.mul.call1251.us, %polly.indvar214.us
  %polly.access.call1253.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1252.us
  %polly.access.call1253.load.us = load double, double* %polly.access.call1253.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1255.us = add nuw nsw i64 %polly.indvar247.us, %polly.access.mul.Packed_MemRef_call1254.us
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  store double %polly.access.call1253.load.us, double* %polly.access.Packed_MemRef_call1256.us, align 8
  %polly.indvar_next248.us = add nuw nsw i64 %polly.indvar247.us, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar247.us, %smax
  br i1 %exitcond1095.not, label %polly.merge.us, label %polly.loop_header243.us

polly.merge.us:                                   ; preds = %polly.loop_header243.us, %polly.loop_header211.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond1096.not, label %polly.loop_header257.preheader, label %polly.loop_header211.us

polly.loop_header243.preheader.us:                ; preds = %polly.loop_header211.us
  %polly.access.mul.Packed_MemRef_call1254.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header243.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  %polly.loop_guard231.not = icmp sgt i64 %113, %114
  br i1 %polly.loop_guard231.not, label %polly.loop_header211.us937, label %polly.loop_header211

polly.loop_header211.us937:                       ; preds = %polly.loop_header205.split, %polly.merge.us973
  %polly.indvar214.us938 = phi i64 [ %polly.indvar_next215.us974, %polly.merge.us973 ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1.us982 = mul nuw nsw i64 %polly.indvar214.us938, 1200
  br label %polly.loop_header217.us939

polly.loop_header217.us939:                       ; preds = %polly.loop_header211.us937, %polly.loop_header217.us939
  %polly.indvar220.us940 = phi i64 [ %polly.indvar_next221.us947, %polly.loop_header217.us939 ], [ 0, %polly.loop_header211.us937 ]
  %116 = add nuw nsw i64 %polly.indvar220.us940, %106
  %polly.access.mul.call1224.us941 = mul nuw nsw i64 %116, 1000
  %polly.access.add.call1225.us942 = add nuw nsw i64 %polly.access.mul.call1224.us941, %polly.indvar214.us938
  %polly.access.call1226.us943 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1225.us942
  %polly.access.call1226.load.us944 = load double, double* %polly.access.call1226.us943, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us945 = add nuw nsw i64 %polly.indvar220.us940, %polly.access.mul.Packed_MemRef_call1.us982
  %polly.access.Packed_MemRef_call1.us946 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us945
  store double %polly.access.call1226.load.us944, double* %polly.access.Packed_MemRef_call1.us946, align 8
  %polly.indvar_next221.us947 = add nuw nsw i64 %polly.indvar220.us940, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next221.us947, 64
  br i1 %exitcond1089.not, label %polly.merge.us973, label %polly.loop_header217.us939

polly.merge.us973:                                ; preds = %polly.loop_header217.us939
  %polly.indvar_next215.us974 = add nuw nsw i64 %polly.indvar214.us938, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next215.us974, 1000
  br i1 %exitcond1090.not, label %polly.loop_header257.preheader, label %polly.loop_header211.us937

polly.loop_exit259:                               ; preds = %polly.loop_exit266.loopexit.us, %polly.loop_header257.preheader
  %polly.indvar_next209 = add nsw i64 %polly.indvar208, 1
  %polly.loop_cond210 = icmp slt i64 %polly.indvar208, 14
  %indvars.iv.next1094 = add i64 %indvars.iv1093, 80
  %indvars.iv.next1100 = add i64 %indvars.iv1099, -80
  %indvars.iv.next1105 = add i64 %indvars.iv1104, 80
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_exit207

polly.loop_header211:                             ; preds = %polly.loop_header205.split, %polly.merge
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.merge ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header217

polly.merge:                                      ; preds = %polly.loop_header228
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond1088.not, label %polly.loop_header257.preheader, label %polly.loop_header211

polly.loop_header257.preheader:                   ; preds = %polly.merge, %polly.merge.us973, %polly.merge.us
  %117 = sub nsw i64 %106, %110
  %118 = icmp sgt i64 %117, 0
  %119 = select i1 %118, i64 %117, i64 0
  %polly.loop_guard267 = icmp slt i64 %119, 80
  br i1 %polly.loop_guard267, label %polly.loop_header257.us, label %polly.loop_exit259

polly.loop_header257.us:                          ; preds = %polly.loop_header257.preheader, %polly.loop_exit266.loopexit.us
  %polly.indvar260.us = phi i64 [ %polly.indvar_next261.us, %polly.loop_exit266.loopexit.us ], [ 0, %polly.loop_header257.preheader ]
  %120 = shl nuw nsw i64 %polly.indvar260.us, 3
  %scevgep283.us = getelementptr i8, i8* %call2, i64 %120
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar260.us, 1200
  br label %polly.loop_header264.us

polly.loop_header264.us:                          ; preds = %polly.loop_exit274.us, %polly.loop_header257.us
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit274.us ], [ %108, %polly.loop_header257.us ]
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.us ], [ %119, %polly.loop_header257.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1106, i64 63)
  %121 = add i64 %polly.indvar268.us, %110
  %122 = add i64 %121, %107
  %polly.loop_guard275.us1210 = icmp sgt i64 %122, -1
  br i1 %polly.loop_guard275.us1210, label %polly.loop_header272.preheader.us, label %polly.loop_exit274.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.preheader.us, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ 0, %polly.loop_header272.preheader.us ]
  %123 = add nuw nsw i64 %polly.indvar276.us, %106
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %124 = mul nuw nsw i64 %123, 8000
  %scevgep288.us = getelementptr i8, i8* %scevgep283.us, i64 %124
  %scevgep288289.us = bitcast i8* %scevgep288.us to double*
  %_p_scalar_290.us = load double, double* %scevgep288289.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %125 = shl i64 %123, 3
  %126 = add i64 %125, %128
  %scevgep295.us = getelementptr i8, i8* %call, i64 %126
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar276.us, %smin
  br i1 %exitcond1108.not, label %polly.loop_exit274.us, label %polly.loop_header272.us

polly.loop_exit274.us:                            ; preds = %polly.loop_header272.us, %polly.loop_header264.us
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %polly.loop_cond270.us = icmp ult i64 %polly.indvar268.us, 79
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 1
  br i1 %polly.loop_cond270.us, label %polly.loop_header264.us, label %polly.loop_exit266.loopexit.us

polly.loop_header272.preheader.us:                ; preds = %polly.loop_header264.us
  %127 = mul i64 %121, 8000
  %scevgep284.us = getelementptr i8, i8* %scevgep283.us, i64 %127
  %scevgep284285.us = bitcast i8* %scevgep284.us to double*
  %_p_scalar_286.us = load double, double* %scevgep284285.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1292.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %122
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %128 = mul i64 %121, 9600
  br label %polly.loop_header272.us

polly.loop_exit266.loopexit.us:                   ; preds = %polly.loop_exit274.us
  %polly.indvar_next261.us = add nuw nsw i64 %polly.indvar260.us, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next261.us, 1000
  br i1 %exitcond1109.not, label %polly.loop_exit259, label %polly.loop_header257.us

polly.loop_header217:                             ; preds = %polly.loop_header211, %polly.loop_header217
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_header217 ], [ 0, %polly.loop_header211 ]
  %129 = add nuw nsw i64 %polly.indvar220, %106
  %polly.access.mul.call1224 = mul nuw nsw i64 %129, 1000
  %polly.access.add.call1225 = add nuw nsw i64 %polly.access.mul.call1224, %polly.indvar214
  %polly.access.call1226 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1225
  %polly.access.call1226.load = load double, double* %polly.access.call1226, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1226.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 64
  br i1 %exitcond.not, label %polly.loop_header228, label %polly.loop_header217

polly.loop_header228:                             ; preds = %polly.loop_header217, %polly.loop_header228
  %polly.indvar232 = phi i64 [ %polly.indvar_next233, %polly.loop_header228 ], [ %113, %polly.loop_header217 ]
  %130 = add nuw nsw i64 %polly.indvar232, %106
  %polly.access.mul.call1236 = mul nsw i64 %130, 1000
  %polly.access.add.call1237 = add nuw nsw i64 %polly.access.mul.call1236, %polly.indvar214
  %polly.access.call1238 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1237
  %polly.access.call1238.load = load double, double* %polly.access.call1238, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.indvar232, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  store double %polly.access.call1238.load, double* %polly.access.Packed_MemRef_call1241, align 8
  %polly.indvar_next233 = add nuw nsw i64 %polly.indvar232, 1
  %polly.loop_cond234.not.not = icmp slt i64 %polly.indvar232, %114
  br i1 %polly.loop_cond234.not.not, label %polly.loop_header228, label %polly.merge

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header386

polly.exiting301:                                 ; preds = %polly.loop_exit412
  tail call void @free(i8* %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start300
  %indvar1332 = phi i64 [ %indvar.next1333, %polly.loop_exit394 ], [ 0, %polly.start300 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start300 ]
  %131 = add i64 %indvar1332, 1
  %132 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %132
  %min.iters.check1334 = icmp ult i64 %131, 4
  br i1 %min.iters.check1334, label %polly.loop_header392.preheader, label %vector.ph1335

vector.ph1335:                                    ; preds = %polly.loop_header386
  %n.vec1337 = and i64 %131, -4
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %vector.ph1335
  %index1338 = phi i64 [ 0, %vector.ph1335 ], [ %index.next1339, %vector.body1331 ]
  %133 = shl nuw nsw i64 %index1338, 3
  %134 = getelementptr i8, i8* %scevgep398, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !79, !noalias !81
  %136 = fmul fast <4 x double> %wide.load1342, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %137 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %136, <4 x double>* %137, align 8, !alias.scope !79, !noalias !81
  %index.next1339 = add i64 %index1338, 4
  %138 = icmp eq i64 %index.next1339, %n.vec1337
  br i1 %138, label %middle.block1329, label %vector.body1331, !llvm.loop !85

middle.block1329:                                 ; preds = %vector.body1331
  %cmp.n1341 = icmp eq i64 %131, %n.vec1337
  br i1 %cmp.n1341, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1329
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1337, %middle.block1329 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1329
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1333 = add i64 %indvar1332, 1
  br i1 %exitcond1142.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %139 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %139
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1141.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !86

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit412
  %indvars.iv1131 = phi i64 [ 0, %polly.loop_header402.preheader ], [ %indvars.iv.next1132, %polly.loop_exit412 ]
  %indvars.iv1126 = phi i64 [ 0, %polly.loop_header402.preheader ], [ %indvars.iv.next1127, %polly.loop_exit412 ]
  %indvars.iv1119 = phi i64 [ 4, %polly.loop_header402.preheader ], [ %indvars.iv.next1120, %polly.loop_exit412 ]
  %indvars.iv1117 = phi i64 [ 79, %polly.loop_header402.preheader ], [ %indvars.iv.next1118, %polly.loop_exit412 ]
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header402.preheader ], [ %polly.indvar_next406, %polly.loop_exit412 ]
  %140 = udiv i64 %indvars.iv1119, 5
  %141 = mul nuw nsw i64 %140, 80
  %142 = trunc i64 %polly.indvar405 to i8
  %pexp.p_div_q408.lhs.trunc = add i8 %142, 4
  %pexp.p_div_q408927 = udiv i8 %pexp.p_div_q408.lhs.trunc, 5
  %pexp.p_div_q408.zext = zext i8 %pexp.p_div_q408927 to i64
  %143 = sub nsw i64 %polly.indvar405, %pexp.p_div_q408.zext
  %polly.loop_guard413 = icmp slt i64 %143, 15
  br i1 %polly.loop_guard413, label %polly.loop_header410.preheader, label %polly.loop_exit412

polly.loop_header410.preheader:                   ; preds = %polly.loop_header402
  %144 = sub nsw i64 %indvars.iv1117, %141
  %145 = sub nsw i64 %indvars.iv1131, %141
  %146 = add i64 %indvars.iv1126, %141
  %147 = shl nsw i64 %polly.indvar405, 2
  %148 = or i64 %147, 1
  %149 = shl nsw i64 %polly.indvar405, 6
  %150 = mul nsw i64 %polly.indvar405, -64
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit469, %polly.loop_header402
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next1118 = add nuw nsw i64 %indvars.iv1117, 16
  %indvars.iv.next1120 = add nuw nsw i64 %indvars.iv1119, 1
  %indvars.iv.next1127 = add nsw i64 %indvars.iv1126, -16
  %indvars.iv.next1132 = add nuw nsw i64 %indvars.iv1131, 16
  %exitcond1140.not = icmp eq i64 %polly.indvar_next406, 19
  br i1 %exitcond1140.not, label %polly.exiting301, label %polly.loop_header402

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit469
  %indvars.iv1133 = phi i64 [ %145, %polly.loop_header410.preheader ], [ %indvars.iv.next1134, %polly.loop_exit469 ]
  %indvars.iv1128 = phi i64 [ %146, %polly.loop_header410.preheader ], [ %indvars.iv.next1129, %polly.loop_exit469 ]
  %indvars.iv1121 = phi i64 [ %144, %polly.loop_header410.preheader ], [ %indvars.iv.next1122, %polly.loop_exit469 ]
  %polly.indvar414 = phi i64 [ %143, %polly.loop_header410.preheader ], [ %polly.indvar_next415, %polly.loop_exit469 ]
  %smax1130 = call i64 @llvm.smax.i64(i64 %indvars.iv1128, i64 0)
  %151 = add i64 %smax1130, %indvars.iv1133
  %smax1123 = call i64 @llvm.smax.i64(i64 %indvars.iv1121, i64 0)
  %152 = mul nsw i64 %polly.indvar414, 5
  %.not924 = icmp slt i64 %152, %148
  %153 = mul nsw i64 %polly.indvar414, 80
  %154 = add nsw i64 %153, %150
  %155 = icmp sgt i64 %154, 64
  %156 = select i1 %155, i64 %154, i64 64
  %157 = add nsw i64 %154, 79
  %polly.loop_guard456 = icmp sgt i64 %154, -80
  br i1 %.not924, label %polly.loop_header417.us, label %polly.loop_header410.split

polly.loop_header417.us:                          ; preds = %polly.loop_header410, %polly.merge424.us
  %polly.indvar420.us = phi i64 [ %polly.indvar_next421.us, %polly.merge424.us ], [ 0, %polly.loop_header410 ]
  br i1 %polly.loop_guard456, label %polly.loop_header453.preheader.us, label %polly.merge424.us

polly.loop_header453.us:                          ; preds = %polly.loop_header453.preheader.us, %polly.loop_header453.us
  %polly.indvar457.us = phi i64 [ %polly.indvar_next458.us, %polly.loop_header453.us ], [ 0, %polly.loop_header453.preheader.us ]
  %158 = add nuw nsw i64 %polly.indvar457.us, %149
  %polly.access.mul.call1461.us = mul nuw nsw i64 %158, 1000
  %polly.access.add.call1462.us = add nuw nsw i64 %polly.access.mul.call1461.us, %polly.indvar420.us
  %polly.access.call1463.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us
  %polly.access.call1463.load.us = load double, double* %polly.access.call1463.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1303465.us = add nuw nsw i64 %polly.indvar457.us, %polly.access.mul.Packed_MemRef_call1303464.us
  %polly.access.Packed_MemRef_call1303466.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303465.us
  store double %polly.access.call1463.load.us, double* %polly.access.Packed_MemRef_call1303466.us, align 8
  %polly.indvar_next458.us = add nuw nsw i64 %polly.indvar457.us, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar457.us, %smax1123
  br i1 %exitcond1124.not, label %polly.merge424.us, label %polly.loop_header453.us

polly.merge424.us:                                ; preds = %polly.loop_header453.us, %polly.loop_header417.us
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next421.us, 1000
  br i1 %exitcond1125.not, label %polly.loop_header467.preheader, label %polly.loop_header417.us

polly.loop_header453.preheader.us:                ; preds = %polly.loop_header417.us
  %polly.access.mul.Packed_MemRef_call1303464.us = mul nuw nsw i64 %polly.indvar420.us, 1200
  br label %polly.loop_header453.us

polly.loop_header410.split:                       ; preds = %polly.loop_header410
  %polly.loop_guard441.not = icmp sgt i64 %156, %157
  br i1 %polly.loop_guard441.not, label %polly.loop_header417.us983, label %polly.loop_header417

polly.loop_header417.us983:                       ; preds = %polly.loop_header410.split, %polly.merge424.us1019
  %polly.indvar420.us984 = phi i64 [ %polly.indvar_next421.us1020, %polly.merge424.us1019 ], [ 0, %polly.loop_header410.split ]
  %polly.access.mul.Packed_MemRef_call1303.us1028 = mul nuw nsw i64 %polly.indvar420.us984, 1200
  br label %polly.loop_header427.us985

polly.loop_header427.us985:                       ; preds = %polly.loop_header417.us983, %polly.loop_header427.us985
  %polly.indvar430.us986 = phi i64 [ %polly.indvar_next431.us993, %polly.loop_header427.us985 ], [ 0, %polly.loop_header417.us983 ]
  %159 = add nuw nsw i64 %polly.indvar430.us986, %149
  %polly.access.mul.call1434.us987 = mul nuw nsw i64 %159, 1000
  %polly.access.add.call1435.us988 = add nuw nsw i64 %polly.access.mul.call1434.us987, %polly.indvar420.us984
  %polly.access.call1436.us989 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1435.us988
  %polly.access.call1436.load.us990 = load double, double* %polly.access.call1436.us989, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1303.us991 = add nuw nsw i64 %polly.indvar430.us986, %polly.access.mul.Packed_MemRef_call1303.us1028
  %polly.access.Packed_MemRef_call1303.us992 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us991
  store double %polly.access.call1436.load.us990, double* %polly.access.Packed_MemRef_call1303.us992, align 8
  %polly.indvar_next431.us993 = add nuw nsw i64 %polly.indvar430.us986, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next431.us993, 64
  br i1 %exitcond1115.not, label %polly.merge424.us1019, label %polly.loop_header427.us985

polly.merge424.us1019:                            ; preds = %polly.loop_header427.us985
  %polly.indvar_next421.us1020 = add nuw nsw i64 %polly.indvar420.us984, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next421.us1020, 1000
  br i1 %exitcond1116.not, label %polly.loop_header467.preheader, label %polly.loop_header417.us983

polly.loop_exit469:                               ; preds = %polly.loop_exit476.loopexit.us, %polly.loop_header467.preheader
  %polly.indvar_next415 = add nsw i64 %polly.indvar414, 1
  %polly.loop_cond416 = icmp slt i64 %polly.indvar414, 14
  %indvars.iv.next1122 = add i64 %indvars.iv1121, 80
  %indvars.iv.next1129 = add i64 %indvars.iv1128, -80
  %indvars.iv.next1134 = add i64 %indvars.iv1133, 80
  br i1 %polly.loop_cond416, label %polly.loop_header410, label %polly.loop_exit412

polly.loop_header417:                             ; preds = %polly.loop_header410.split, %polly.merge424
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.merge424 ], [ 0, %polly.loop_header410.split ]
  %polly.access.mul.Packed_MemRef_call1303 = mul nuw nsw i64 %polly.indvar420, 1200
  br label %polly.loop_header427

polly.merge424:                                   ; preds = %polly.loop_header438
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next421, 1000
  br i1 %exitcond1114.not, label %polly.loop_header467.preheader, label %polly.loop_header417

polly.loop_header467.preheader:                   ; preds = %polly.merge424, %polly.merge424.us1019, %polly.merge424.us
  %160 = sub nsw i64 %149, %153
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
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit484.us ], [ %151, %polly.loop_header467.us ]
  %polly.indvar478.us = phi i64 [ %polly.indvar_next479.us, %polly.loop_exit484.us ], [ %162, %polly.loop_header467.us ]
  %smin1137 = call i64 @llvm.smin.i64(i64 %indvars.iv1135, i64 63)
  %164 = add i64 %polly.indvar478.us, %153
  %165 = add i64 %164, %150
  %polly.loop_guard485.us1211 = icmp sgt i64 %165, -1
  br i1 %polly.loop_guard485.us1211, label %polly.loop_header482.preheader.us, label %polly.loop_exit484.us

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
  %exitcond1138.not = icmp eq i64 %polly.indvar486.us, %smin1137
  br i1 %exitcond1138.not, label %polly.loop_exit484.us, label %polly.loop_header482.us

polly.loop_exit484.us:                            ; preds = %polly.loop_header482.us, %polly.loop_header474.us
  %polly.indvar_next479.us = add nuw nsw i64 %polly.indvar478.us, 1
  %polly.loop_cond480.us = icmp ult i64 %polly.indvar478.us, 79
  %indvars.iv.next1136 = add i64 %indvars.iv1135, 1
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
  %exitcond1139.not = icmp eq i64 %polly.indvar_next471.us, 1000
  br i1 %exitcond1139.not, label %polly.loop_exit469, label %polly.loop_header467.us

polly.loop_header427:                             ; preds = %polly.loop_header417, %polly.loop_header427
  %polly.indvar430 = phi i64 [ %polly.indvar_next431, %polly.loop_header427 ], [ 0, %polly.loop_header417 ]
  %172 = add nuw nsw i64 %polly.indvar430, %149
  %polly.access.mul.call1434 = mul nuw nsw i64 %172, 1000
  %polly.access.add.call1435 = add nuw nsw i64 %polly.access.mul.call1434, %polly.indvar420
  %polly.access.call1436 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1435
  %polly.access.call1436.load = load double, double* %polly.access.call1436, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1303 = add nuw nsw i64 %polly.indvar430, %polly.access.mul.Packed_MemRef_call1303
  %polly.access.Packed_MemRef_call1303 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303
  store double %polly.access.call1436.load, double* %polly.access.Packed_MemRef_call1303, align 8
  %polly.indvar_next431 = add nuw nsw i64 %polly.indvar430, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next431, 64
  br i1 %exitcond1113.not, label %polly.loop_header438, label %polly.loop_header427

polly.loop_header438:                             ; preds = %polly.loop_header427, %polly.loop_header438
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_header438 ], [ %156, %polly.loop_header427 ]
  %173 = add nuw nsw i64 %polly.indvar442, %149
  %polly.access.mul.call1446 = mul nsw i64 %173, 1000
  %polly.access.add.call1447 = add nuw nsw i64 %polly.access.mul.call1446, %polly.indvar420
  %polly.access.call1448 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1447
  %polly.access.call1448.load = load double, double* %polly.access.call1448, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1303450 = add nuw nsw i64 %polly.indvar442, %polly.access.mul.Packed_MemRef_call1303
  %polly.access.Packed_MemRef_call1303451 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303450
  store double %polly.access.call1448.load, double* %polly.access.Packed_MemRef_call1303451, align 8
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %polly.loop_cond444.not.not = icmp slt i64 %polly.indvar442, %157
  br i1 %polly.loop_cond444.not.not, label %polly.loop_header438, label %polly.merge424

polly.start510:                                   ; preds = %init_array.exit
  %malloccall512 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header596

polly.exiting511:                                 ; preds = %polly.loop_exit622
  tail call void @free(i8* %malloccall512)
  br label %kernel_syr2k.exit

polly.loop_header596:                             ; preds = %polly.loop_exit604, %polly.start510
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit604 ], [ 0, %polly.start510 ]
  %polly.indvar599 = phi i64 [ %polly.indvar_next600, %polly.loop_exit604 ], [ 1, %polly.start510 ]
  %174 = add i64 %indvar, 1
  %175 = mul nuw nsw i64 %polly.indvar599, 9600
  %scevgep608 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check1308 = icmp ult i64 %174, 4
  br i1 %min.iters.check1308, label %polly.loop_header602.preheader, label %vector.ph1309

vector.ph1309:                                    ; preds = %polly.loop_header596
  %n.vec1311 = and i64 %174, -4
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1309
  %index1312 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1313, %vector.body1307 ]
  %176 = shl nuw nsw i64 %index1312, 3
  %177 = getelementptr i8, i8* %scevgep608, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load1316 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !89, !noalias !91
  %179 = fmul fast <4 x double> %wide.load1316, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !89, !noalias !91
  %index.next1313 = add i64 %index1312, 4
  %181 = icmp eq i64 %index.next1313, %n.vec1311
  br i1 %181, label %middle.block1305, label %vector.body1307, !llvm.loop !95

middle.block1305:                                 ; preds = %vector.body1307
  %cmp.n1315 = icmp eq i64 %174, %n.vec1311
  br i1 %cmp.n1315, label %polly.loop_exit604, label %polly.loop_header602.preheader

polly.loop_header602.preheader:                   ; preds = %polly.loop_header596, %middle.block1305
  %polly.indvar605.ph = phi i64 [ 0, %polly.loop_header596 ], [ %n.vec1311, %middle.block1305 ]
  br label %polly.loop_header602

polly.loop_exit604:                               ; preds = %polly.loop_header602, %middle.block1305
  %polly.indvar_next600 = add nuw nsw i64 %polly.indvar599, 1
  %exitcond1172.not = icmp eq i64 %polly.indvar_next600, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1172.not, label %polly.loop_header612.preheader, label %polly.loop_header596

polly.loop_header612.preheader:                   ; preds = %polly.loop_exit604
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  br label %polly.loop_header612

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_header602
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_header602 ], [ %polly.indvar605.ph, %polly.loop_header602.preheader ]
  %182 = shl nuw nsw i64 %polly.indvar605, 3
  %scevgep609 = getelementptr i8, i8* %scevgep608, i64 %182
  %scevgep609610 = bitcast i8* %scevgep609 to double*
  %_p_scalar_611 = load double, double* %scevgep609610, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_611, 1.200000e+00
  store double %p_mul.i, double* %scevgep609610, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar_next606, %polly.indvar599
  br i1 %exitcond1171.not, label %polly.loop_exit604, label %polly.loop_header602, !llvm.loop !96

polly.loop_header612:                             ; preds = %polly.loop_header612.preheader, %polly.loop_exit622
  %indvars.iv1161 = phi i64 [ 0, %polly.loop_header612.preheader ], [ %indvars.iv.next1162, %polly.loop_exit622 ]
  %indvars.iv1156 = phi i64 [ 0, %polly.loop_header612.preheader ], [ %indvars.iv.next1157, %polly.loop_exit622 ]
  %indvars.iv1149 = phi i64 [ 4, %polly.loop_header612.preheader ], [ %indvars.iv.next1150, %polly.loop_exit622 ]
  %indvars.iv1147 = phi i64 [ 79, %polly.loop_header612.preheader ], [ %indvars.iv.next1148, %polly.loop_exit622 ]
  %polly.indvar615 = phi i64 [ 0, %polly.loop_header612.preheader ], [ %polly.indvar_next616, %polly.loop_exit622 ]
  %183 = udiv i64 %indvars.iv1149, 5
  %184 = mul nuw nsw i64 %183, 80
  %185 = trunc i64 %polly.indvar615 to i8
  %pexp.p_div_q618.lhs.trunc = add i8 %185, 4
  %pexp.p_div_q618926 = udiv i8 %pexp.p_div_q618.lhs.trunc, 5
  %pexp.p_div_q618.zext = zext i8 %pexp.p_div_q618926 to i64
  %186 = sub nsw i64 %polly.indvar615, %pexp.p_div_q618.zext
  %polly.loop_guard623 = icmp slt i64 %186, 15
  br i1 %polly.loop_guard623, label %polly.loop_header620.preheader, label %polly.loop_exit622

polly.loop_header620.preheader:                   ; preds = %polly.loop_header612
  %187 = sub nsw i64 %indvars.iv1147, %184
  %188 = sub nsw i64 %indvars.iv1161, %184
  %189 = add i64 %indvars.iv1156, %184
  %190 = shl nsw i64 %polly.indvar615, 2
  %191 = or i64 %190, 1
  %192 = shl nsw i64 %polly.indvar615, 6
  %193 = mul nsw i64 %polly.indvar615, -64
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_exit679, %polly.loop_header612
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %indvars.iv.next1148 = add nuw nsw i64 %indvars.iv1147, 16
  %indvars.iv.next1150 = add nuw nsw i64 %indvars.iv1149, 1
  %indvars.iv.next1157 = add nsw i64 %indvars.iv1156, -16
  %indvars.iv.next1162 = add nuw nsw i64 %indvars.iv1161, 16
  %exitcond1170.not = icmp eq i64 %polly.indvar_next616, 19
  br i1 %exitcond1170.not, label %polly.exiting511, label %polly.loop_header612

polly.loop_header620:                             ; preds = %polly.loop_header620.preheader, %polly.loop_exit679
  %indvars.iv1163 = phi i64 [ %188, %polly.loop_header620.preheader ], [ %indvars.iv.next1164, %polly.loop_exit679 ]
  %indvars.iv1158 = phi i64 [ %189, %polly.loop_header620.preheader ], [ %indvars.iv.next1159, %polly.loop_exit679 ]
  %indvars.iv1151 = phi i64 [ %187, %polly.loop_header620.preheader ], [ %indvars.iv.next1152, %polly.loop_exit679 ]
  %polly.indvar624 = phi i64 [ %186, %polly.loop_header620.preheader ], [ %polly.indvar_next625, %polly.loop_exit679 ]
  %smax1160 = call i64 @llvm.smax.i64(i64 %indvars.iv1158, i64 0)
  %194 = add i64 %smax1160, %indvars.iv1163
  %smax1153 = call i64 @llvm.smax.i64(i64 %indvars.iv1151, i64 0)
  %195 = mul nsw i64 %polly.indvar624, 5
  %.not925 = icmp slt i64 %195, %191
  %196 = mul nsw i64 %polly.indvar624, 80
  %197 = add nsw i64 %196, %193
  %198 = icmp sgt i64 %197, 64
  %199 = select i1 %198, i64 %197, i64 64
  %200 = add nsw i64 %197, 79
  %polly.loop_guard666 = icmp sgt i64 %197, -80
  br i1 %.not925, label %polly.loop_header627.us, label %polly.loop_header620.split

polly.loop_header627.us:                          ; preds = %polly.loop_header620, %polly.merge634.us
  %polly.indvar630.us = phi i64 [ %polly.indvar_next631.us, %polly.merge634.us ], [ 0, %polly.loop_header620 ]
  br i1 %polly.loop_guard666, label %polly.loop_header663.preheader.us, label %polly.merge634.us

polly.loop_header663.us:                          ; preds = %polly.loop_header663.preheader.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header663.preheader.us ]
  %201 = add nuw nsw i64 %polly.indvar667.us, %192
  %polly.access.mul.call1671.us = mul nuw nsw i64 %201, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %polly.access.mul.call1671.us, %polly.indvar630.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1513675.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1513674.us
  %polly.access.Packed_MemRef_call1513676.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513675.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1513676.us, align 8
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar667.us, %smax1153
  br i1 %exitcond1154.not, label %polly.merge634.us, label %polly.loop_header663.us

polly.merge634.us:                                ; preds = %polly.loop_header663.us, %polly.loop_header627.us
  %polly.indvar_next631.us = add nuw nsw i64 %polly.indvar630.us, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next631.us, 1000
  br i1 %exitcond1155.not, label %polly.loop_header677.preheader, label %polly.loop_header627.us

polly.loop_header663.preheader.us:                ; preds = %polly.loop_header627.us
  %polly.access.mul.Packed_MemRef_call1513674.us = mul nuw nsw i64 %polly.indvar630.us, 1200
  br label %polly.loop_header663.us

polly.loop_header620.split:                       ; preds = %polly.loop_header620
  %polly.loop_guard651.not = icmp sgt i64 %199, %200
  br i1 %polly.loop_guard651.not, label %polly.loop_header627.us1029, label %polly.loop_header627

polly.loop_header627.us1029:                      ; preds = %polly.loop_header620.split, %polly.merge634.us1065
  %polly.indvar630.us1030 = phi i64 [ %polly.indvar_next631.us1066, %polly.merge634.us1065 ], [ 0, %polly.loop_header620.split ]
  %polly.access.mul.Packed_MemRef_call1513.us1074 = mul nuw nsw i64 %polly.indvar630.us1030, 1200
  br label %polly.loop_header637.us1031

polly.loop_header637.us1031:                      ; preds = %polly.loop_header627.us1029, %polly.loop_header637.us1031
  %polly.indvar640.us1032 = phi i64 [ %polly.indvar_next641.us1039, %polly.loop_header637.us1031 ], [ 0, %polly.loop_header627.us1029 ]
  %202 = add nuw nsw i64 %polly.indvar640.us1032, %192
  %polly.access.mul.call1644.us1033 = mul nuw nsw i64 %202, 1000
  %polly.access.add.call1645.us1034 = add nuw nsw i64 %polly.access.mul.call1644.us1033, %polly.indvar630.us1030
  %polly.access.call1646.us1035 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1645.us1034
  %polly.access.call1646.load.us1036 = load double, double* %polly.access.call1646.us1035, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1513.us1037 = add nuw nsw i64 %polly.indvar640.us1032, %polly.access.mul.Packed_MemRef_call1513.us1074
  %polly.access.Packed_MemRef_call1513.us1038 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us1037
  store double %polly.access.call1646.load.us1036, double* %polly.access.Packed_MemRef_call1513.us1038, align 8
  %polly.indvar_next641.us1039 = add nuw nsw i64 %polly.indvar640.us1032, 1
  %exitcond1145.not = icmp eq i64 %polly.indvar_next641.us1039, 64
  br i1 %exitcond1145.not, label %polly.merge634.us1065, label %polly.loop_header637.us1031

polly.merge634.us1065:                            ; preds = %polly.loop_header637.us1031
  %polly.indvar_next631.us1066 = add nuw nsw i64 %polly.indvar630.us1030, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar_next631.us1066, 1000
  br i1 %exitcond1146.not, label %polly.loop_header677.preheader, label %polly.loop_header627.us1029

polly.loop_exit679:                               ; preds = %polly.loop_exit686.loopexit.us, %polly.loop_header677.preheader
  %polly.indvar_next625 = add nsw i64 %polly.indvar624, 1
  %polly.loop_cond626 = icmp slt i64 %polly.indvar624, 14
  %indvars.iv.next1152 = add i64 %indvars.iv1151, 80
  %indvars.iv.next1159 = add i64 %indvars.iv1158, -80
  %indvars.iv.next1164 = add i64 %indvars.iv1163, 80
  br i1 %polly.loop_cond626, label %polly.loop_header620, label %polly.loop_exit622

polly.loop_header627:                             ; preds = %polly.loop_header620.split, %polly.merge634
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.merge634 ], [ 0, %polly.loop_header620.split ]
  %polly.access.mul.Packed_MemRef_call1513 = mul nuw nsw i64 %polly.indvar630, 1200
  br label %polly.loop_header637

polly.merge634:                                   ; preds = %polly.loop_header648
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar_next631, 1000
  br i1 %exitcond1144.not, label %polly.loop_header677.preheader, label %polly.loop_header627

polly.loop_header677.preheader:                   ; preds = %polly.merge634, %polly.merge634.us1065, %polly.merge634.us
  %203 = sub nsw i64 %192, %196
  %204 = icmp sgt i64 %203, 0
  %205 = select i1 %204, i64 %203, i64 0
  %polly.loop_guard687 = icmp slt i64 %205, 80
  br i1 %polly.loop_guard687, label %polly.loop_header677.us, label %polly.loop_exit679

polly.loop_header677.us:                          ; preds = %polly.loop_header677.preheader, %polly.loop_exit686.loopexit.us
  %polly.indvar680.us = phi i64 [ %polly.indvar_next681.us, %polly.loop_exit686.loopexit.us ], [ 0, %polly.loop_header677.preheader ]
  %206 = shl nuw nsw i64 %polly.indvar680.us, 3
  %scevgep703.us = getelementptr i8, i8* %call2, i64 %206
  %polly.access.mul.Packed_MemRef_call1513699.us = mul nuw nsw i64 %polly.indvar680.us, 1200
  br label %polly.loop_header684.us

polly.loop_header684.us:                          ; preds = %polly.loop_exit694.us, %polly.loop_header677.us
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166, %polly.loop_exit694.us ], [ %194, %polly.loop_header677.us ]
  %polly.indvar688.us = phi i64 [ %polly.indvar_next689.us, %polly.loop_exit694.us ], [ %205, %polly.loop_header677.us ]
  %smin1167 = call i64 @llvm.smin.i64(i64 %indvars.iv1165, i64 63)
  %207 = add i64 %polly.indvar688.us, %196
  %208 = add i64 %207, %193
  %polly.loop_guard695.us1212 = icmp sgt i64 %208, -1
  br i1 %polly.loop_guard695.us1212, label %polly.loop_header692.preheader.us, label %polly.loop_exit694.us

polly.loop_header692.us:                          ; preds = %polly.loop_header692.preheader.us, %polly.loop_header692.us
  %polly.indvar696.us = phi i64 [ %polly.indvar_next697.us, %polly.loop_header692.us ], [ 0, %polly.loop_header692.preheader.us ]
  %209 = add nuw nsw i64 %polly.indvar696.us, %192
  %polly.access.add.Packed_MemRef_call1513700.us = add nuw nsw i64 %polly.indvar696.us, %polly.access.mul.Packed_MemRef_call1513699.us
  %polly.access.Packed_MemRef_call1513701.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call1513701.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_706.us, %_p_scalar_702.us
  %210 = mul nuw nsw i64 %209, 8000
  %scevgep708.us = getelementptr i8, i8* %scevgep703.us, i64 %210
  %scevgep708709.us = bitcast i8* %scevgep708.us to double*
  %_p_scalar_710.us = load double, double* %scevgep708709.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %211 = shl i64 %209, 3
  %212 = add i64 %211, %214
  %scevgep715.us = getelementptr i8, i8* %call, i64 %212
  %scevgep715716.us = bitcast i8* %scevgep715.us to double*
  %_p_scalar_717.us = load double, double* %scevgep715716.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_717.us
  store double %p_add42.i.us, double* %scevgep715716.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %exitcond1168.not = icmp eq i64 %polly.indvar696.us, %smin1167
  br i1 %exitcond1168.not, label %polly.loop_exit694.us, label %polly.loop_header692.us

polly.loop_exit694.us:                            ; preds = %polly.loop_header692.us, %polly.loop_header684.us
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %polly.loop_cond690.us = icmp ult i64 %polly.indvar688.us, 79
  %indvars.iv.next1166 = add i64 %indvars.iv1165, 1
  br i1 %polly.loop_cond690.us, label %polly.loop_header684.us, label %polly.loop_exit686.loopexit.us

polly.loop_header692.preheader.us:                ; preds = %polly.loop_header684.us
  %213 = mul i64 %207, 8000
  %scevgep704.us = getelementptr i8, i8* %scevgep703.us, i64 %213
  %scevgep704705.us = bitcast i8* %scevgep704.us to double*
  %_p_scalar_706.us = load double, double* %scevgep704705.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1513712.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1513699.us, %208
  %polly.access.Packed_MemRef_call1513713.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call1513713.us, align 8
  %214 = mul i64 %207, 9600
  br label %polly.loop_header692.us

polly.loop_exit686.loopexit.us:                   ; preds = %polly.loop_exit694.us
  %polly.indvar_next681.us = add nuw nsw i64 %polly.indvar680.us, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar_next681.us, 1000
  br i1 %exitcond1169.not, label %polly.loop_exit679, label %polly.loop_header677.us

polly.loop_header637:                             ; preds = %polly.loop_header627, %polly.loop_header637
  %polly.indvar640 = phi i64 [ %polly.indvar_next641, %polly.loop_header637 ], [ 0, %polly.loop_header627 ]
  %215 = add nuw nsw i64 %polly.indvar640, %192
  %polly.access.mul.call1644 = mul nuw nsw i64 %215, 1000
  %polly.access.add.call1645 = add nuw nsw i64 %polly.access.mul.call1644, %polly.indvar630
  %polly.access.call1646 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1645
  %polly.access.call1646.load = load double, double* %polly.access.call1646, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1513 = add nuw nsw i64 %polly.indvar640, %polly.access.mul.Packed_MemRef_call1513
  %polly.access.Packed_MemRef_call1513 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513
  store double %polly.access.call1646.load, double* %polly.access.Packed_MemRef_call1513, align 8
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar_next641, 64
  br i1 %exitcond1143.not, label %polly.loop_header648, label %polly.loop_header637

polly.loop_header648:                             ; preds = %polly.loop_header637, %polly.loop_header648
  %polly.indvar652 = phi i64 [ %polly.indvar_next653, %polly.loop_header648 ], [ %199, %polly.loop_header637 ]
  %216 = add nuw nsw i64 %polly.indvar652, %192
  %polly.access.mul.call1656 = mul nsw i64 %216, 1000
  %polly.access.add.call1657 = add nuw nsw i64 %polly.access.mul.call1656, %polly.indvar630
  %polly.access.call1658 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1657
  %polly.access.call1658.load = load double, double* %polly.access.call1658, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1513660 = add nuw nsw i64 %polly.indvar652, %polly.access.mul.Packed_MemRef_call1513
  %polly.access.Packed_MemRef_call1513661 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513660
  store double %polly.access.call1658.load, double* %polly.access.Packed_MemRef_call1513661, align 8
  %polly.indvar_next653 = add nuw nsw i64 %polly.indvar652, 1
  %polly.loop_cond654.not.not = icmp slt i64 %polly.indvar652, %200
  br i1 %polly.loop_cond654.not.not, label %polly.loop_header648, label %polly.merge634

polly.loop_header844:                             ; preds = %entry, %polly.loop_exit852
  %indvars.iv1197 = phi i64 [ %indvars.iv.next1198, %polly.loop_exit852 ], [ 0, %entry ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %entry ]
  %smin1199 = call i64 @llvm.smin.i64(i64 %indvars.iv1197, i64 -1168)
  %217 = shl nsw i64 %polly.indvar847, 5
  %218 = add nsw i64 %smin1199, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1198 = add nsw i64 %indvars.iv1197, -32
  %exitcond1202.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1202.not, label %polly.loop_header871, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %indvars.iv1193 = phi i64 [ %indvars.iv.next1194, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %219 = mul nsw i64 %polly.indvar853, -32
  %smin1246 = call i64 @llvm.smin.i64(i64 %219, i64 -1168)
  %220 = add nsw i64 %smin1246, 1200
  %smin1195 = call i64 @llvm.smin.i64(i64 %indvars.iv1193, i64 -1168)
  %221 = shl nsw i64 %polly.indvar853, 5
  %222 = add nsw i64 %smin1195, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1194 = add nsw i64 %indvars.iv1193, -32
  %exitcond1201.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1201.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %polly.indvar859 = phi i64 [ 0, %polly.loop_header850 ], [ %polly.indvar_next860, %polly.loop_exit864 ]
  %223 = add nuw nsw i64 %polly.indvar859, %217
  %224 = trunc i64 %223 to i32
  %225 = mul nuw nsw i64 %223, 9600
  %min.iters.check = icmp eq i64 %220, 0
  br i1 %min.iters.check, label %polly.loop_header862, label %vector.ph1247

vector.ph1247:                                    ; preds = %polly.loop_header856
  %broadcast.splatinsert1254 = insertelement <4 x i64> poison, i64 %221, i32 0
  %broadcast.splat1255 = shufflevector <4 x i64> %broadcast.splatinsert1254, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1256 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1257 = shufflevector <4 x i32> %broadcast.splatinsert1256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1247
  %index1248 = phi i64 [ 0, %vector.ph1247 ], [ %index.next1249, %vector.body1245 ]
  %vec.ind1252 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1247 ], [ %vec.ind.next1253, %vector.body1245 ]
  %226 = add nuw nsw <4 x i64> %vec.ind1252, %broadcast.splat1255
  %227 = trunc <4 x i64> %226 to <4 x i32>
  %228 = mul <4 x i32> %broadcast.splat1257, %227
  %229 = add <4 x i32> %228, <i32 3, i32 3, i32 3, i32 3>
  %230 = urem <4 x i32> %229, <i32 1200, i32 1200, i32 1200, i32 1200>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %233 = extractelement <4 x i64> %226, i32 0
  %234 = shl i64 %233, 3
  %235 = add nuw nsw i64 %234, %225
  %236 = getelementptr i8, i8* %call, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %232, <4 x double>* %237, align 8, !alias.scope !99, !noalias !101
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1253 = add <4 x i64> %vec.ind1252, <i64 4, i64 4, i64 4, i64 4>
  %238 = icmp eq i64 %index.next1249, %220
  br i1 %238, label %polly.loop_exit864, label %vector.body1245, !llvm.loop !104

polly.loop_exit864:                               ; preds = %vector.body1245, %polly.loop_header862
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1200.not = icmp eq i64 %polly.indvar859, %218
  br i1 %exitcond1200.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_header856, %polly.loop_header862
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_header862 ], [ 0, %polly.loop_header856 ]
  %239 = add nuw nsw i64 %polly.indvar865, %221
  %240 = trunc i64 %239 to i32
  %241 = mul i32 %240, %224
  %242 = add i32 %241, 3
  %243 = urem i32 %242, 1200
  %p_conv31.i = sitofp i32 %243 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %244 = shl i64 %239, 3
  %245 = add nuw nsw i64 %244, %225
  %scevgep868 = getelementptr i8, i8* %call, i64 %245
  %scevgep868869 = bitcast i8* %scevgep868 to double*
  store double %p_div33.i, double* %scevgep868869, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1196.not = icmp eq i64 %polly.indvar865, %222
  br i1 %exitcond1196.not, label %polly.loop_exit864, label %polly.loop_header862, !llvm.loop !105

polly.loop_header871:                             ; preds = %polly.loop_exit852, %polly.loop_exit879
  %indvars.iv1187 = phi i64 [ %indvars.iv.next1188, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %smin1189 = call i64 @llvm.smin.i64(i64 %indvars.iv1187, i64 -1168)
  %246 = shl nsw i64 %polly.indvar874, 5
  %247 = add nsw i64 %smin1189, 1199
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1188 = add nsw i64 %indvars.iv1187, -32
  %exitcond1192.not = icmp eq i64 %polly.indvar_next875, 38
  br i1 %exitcond1192.not, label %polly.loop_header897, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %indvars.iv1183 = phi i64 [ %indvars.iv.next1184, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %248 = mul nsw i64 %polly.indvar880, -32
  %smin1261 = call i64 @llvm.smin.i64(i64 %248, i64 -968)
  %249 = add nsw i64 %smin1261, 1000
  %smin1185 = call i64 @llvm.smin.i64(i64 %indvars.iv1183, i64 -968)
  %250 = shl nsw i64 %polly.indvar880, 5
  %251 = add nsw i64 %smin1185, 999
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, -32
  %exitcond1191.not = icmp eq i64 %polly.indvar_next881, 32
  br i1 %exitcond1191.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %polly.indvar886 = phi i64 [ 0, %polly.loop_header877 ], [ %polly.indvar_next887, %polly.loop_exit891 ]
  %252 = add nuw nsw i64 %polly.indvar886, %246
  %253 = trunc i64 %252 to i32
  %254 = mul nuw nsw i64 %252, 8000
  %min.iters.check1262 = icmp eq i64 %249, 0
  br i1 %min.iters.check1262, label %polly.loop_header889, label %vector.ph1263

vector.ph1263:                                    ; preds = %polly.loop_header883
  %broadcast.splatinsert1272 = insertelement <4 x i64> poison, i64 %250, i32 0
  %broadcast.splat1273 = shufflevector <4 x i64> %broadcast.splatinsert1272, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %253, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1260 ]
  %vec.ind1270 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1263 ], [ %vec.ind.next1271, %vector.body1260 ]
  %255 = add nuw nsw <4 x i64> %vec.ind1270, %broadcast.splat1273
  %256 = trunc <4 x i64> %255 to <4 x i32>
  %257 = mul <4 x i32> %broadcast.splat1275, %256
  %258 = add <4 x i32> %257, <i32 2, i32 2, i32 2, i32 2>
  %259 = urem <4 x i32> %258, <i32 1000, i32 1000, i32 1000, i32 1000>
  %260 = sitofp <4 x i32> %259 to <4 x double>
  %261 = fmul fast <4 x double> %260, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %262 = extractelement <4 x i64> %255, i32 0
  %263 = shl i64 %262, 3
  %264 = add nuw nsw i64 %263, %254
  %265 = getelementptr i8, i8* %call2, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %261, <4 x double>* %266, align 8, !alias.scope !103, !noalias !106
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1271 = add <4 x i64> %vec.ind1270, <i64 4, i64 4, i64 4, i64 4>
  %267 = icmp eq i64 %index.next1267, %249
  br i1 %267, label %polly.loop_exit891, label %vector.body1260, !llvm.loop !107

polly.loop_exit891:                               ; preds = %vector.body1260, %polly.loop_header889
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1190.not = icmp eq i64 %polly.indvar886, %247
  br i1 %exitcond1190.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_header883, %polly.loop_header889
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_header889 ], [ 0, %polly.loop_header883 ]
  %268 = add nuw nsw i64 %polly.indvar892, %250
  %269 = trunc i64 %268 to i32
  %270 = mul i32 %269, %253
  %271 = add i32 %270, 2
  %272 = urem i32 %271, 1000
  %p_conv10.i = sitofp i32 %272 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %273 = shl i64 %268, 3
  %274 = add nuw nsw i64 %273, %254
  %scevgep895 = getelementptr i8, i8* %call2, i64 %274
  %scevgep895896 = bitcast i8* %scevgep895 to double*
  store double %p_div12.i, double* %scevgep895896, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar892, %251
  br i1 %exitcond1186.not, label %polly.loop_exit891, label %polly.loop_header889, !llvm.loop !108

polly.loop_header897:                             ; preds = %polly.loop_exit879, %polly.loop_exit905
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %smin1179 = call i64 @llvm.smin.i64(i64 %indvars.iv1177, i64 -1168)
  %275 = shl nsw i64 %polly.indvar900, 5
  %276 = add nsw i64 %smin1179, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1182.not, label %init_array.exit, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %277 = mul nsw i64 %polly.indvar906, -32
  %smin1279 = call i64 @llvm.smin.i64(i64 %277, i64 -968)
  %278 = add nsw i64 %smin1279, 1000
  %smin1175 = call i64 @llvm.smin.i64(i64 %indvars.iv1173, i64 -968)
  %279 = shl nsw i64 %polly.indvar906, 5
  %280 = add nsw i64 %smin1175, 999
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1174 = add nsw i64 %indvars.iv1173, -32
  %exitcond1181.not = icmp eq i64 %polly.indvar_next907, 32
  br i1 %exitcond1181.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %polly.indvar912 = phi i64 [ 0, %polly.loop_header903 ], [ %polly.indvar_next913, %polly.loop_exit917 ]
  %281 = add nuw nsw i64 %polly.indvar912, %275
  %282 = trunc i64 %281 to i32
  %283 = mul nuw nsw i64 %281, 8000
  %min.iters.check1280 = icmp eq i64 %278, 0
  br i1 %min.iters.check1280, label %polly.loop_header915, label %vector.ph1281

vector.ph1281:                                    ; preds = %polly.loop_header909
  %broadcast.splatinsert1290 = insertelement <4 x i64> poison, i64 %279, i32 0
  %broadcast.splat1291 = shufflevector <4 x i64> %broadcast.splatinsert1290, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1292 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1293 = shufflevector <4 x i32> %broadcast.splatinsert1292, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1278 ]
  %vec.ind1288 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1281 ], [ %vec.ind.next1289, %vector.body1278 ]
  %284 = add nuw nsw <4 x i64> %vec.ind1288, %broadcast.splat1291
  %285 = trunc <4 x i64> %284 to <4 x i32>
  %286 = mul <4 x i32> %broadcast.splat1293, %285
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 1200, i32 1200, i32 1200, i32 1200>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %291 = extractelement <4 x i64> %284, i32 0
  %292 = shl i64 %291, 3
  %293 = add nuw nsw i64 %292, %283
  %294 = getelementptr i8, i8* %call1, i64 %293
  %295 = bitcast i8* %294 to <4 x double>*
  store <4 x double> %290, <4 x double>* %295, align 8, !alias.scope !102, !noalias !109
  %index.next1285 = add i64 %index1284, 4
  %vec.ind.next1289 = add <4 x i64> %vec.ind1288, <i64 4, i64 4, i64 4, i64 4>
  %296 = icmp eq i64 %index.next1285, %278
  br i1 %296, label %polly.loop_exit917, label %vector.body1278, !llvm.loop !110

polly.loop_exit917:                               ; preds = %vector.body1278, %polly.loop_header915
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar912, %276
  br i1 %exitcond1180.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_header909, %polly.loop_header915
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_header915 ], [ 0, %polly.loop_header909 ]
  %297 = add nuw nsw i64 %polly.indvar918, %279
  %298 = trunc i64 %297 to i32
  %299 = mul i32 %298, %282
  %300 = add i32 %299, 1
  %301 = urem i32 %300, 1200
  %p_conv.i = sitofp i32 %301 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %302 = shl i64 %297, 3
  %303 = add nuw nsw i64 %302, %283
  %scevgep922 = getelementptr i8, i8* %call1, i64 %303
  %scevgep922923 = bitcast i8* %scevgep922 to double*
  store double %p_div.i, double* %scevgep922923, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar918, %280
  br i1 %exitcond1176.not, label %polly.loop_exit917, label %polly.loop_header915, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 64}
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
