; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1240.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1240.c"
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
  %call894 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1746 = bitcast i8* %call1 to double*
  %polly.access.call1755 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2756 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1755, %call2
  %polly.access.call2775 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2775, %call1
  %2 = or i1 %0, %1
  %polly.access.call795 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call795, %call2
  %4 = icmp ule i8* %polly.access.call2775, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call795, %call1
  %8 = icmp ule i8* %polly.access.call1755, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header868, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1242 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1241 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1240 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1239 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1239, %scevgep1242
  %bound1 = icmp ult i8* %scevgep1241, %scevgep1240
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
  br i1 %exitcond18.not.i, label %vector.ph1246, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1246:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1253 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1254 = shufflevector <4 x i64> %broadcast.splatinsert1253, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1246
  %index1247 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1248, %vector.body1245 ]
  %vec.ind1251 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1246 ], [ %vec.ind.next1252, %vector.body1245 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1251, %broadcast.splat1254
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv7.i, i64 %index1247
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1248 = add i64 %index1247, 4
  %vec.ind.next1252 = add <4 x i64> %vec.ind1251, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1248, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1245, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1245
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1246, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit929
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start527, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1308 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1308, label %for.body3.i46.preheader1463, label %vector.ph1309

vector.ph1309:                                    ; preds = %for.body3.i46.preheader
  %n.vec1311 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1309
  %index1312 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1313, %vector.body1307 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i, i64 %index1312
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1313 = add i64 %index1312, 4
  %46 = icmp eq i64 %index.next1313, %n.vec1311
  br i1 %46, label %middle.block1305, label %vector.body1307, !llvm.loop !18

middle.block1305:                                 ; preds = %vector.body1307
  %cmp.n1315 = icmp eq i64 %indvars.iv21.i, %n.vec1311
  br i1 %cmp.n1315, label %for.inc6.i, label %for.body3.i46.preheader1463

for.body3.i46.preheader1463:                      ; preds = %for.body3.i46.preheader, %middle.block1305
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1311, %middle.block1305 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1463, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1463 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1305, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting528
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start310, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1355 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1355, label %for.body3.i60.preheader1459, label %vector.ph1356

vector.ph1356:                                    ; preds = %for.body3.i60.preheader
  %n.vec1358 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %vector.ph1356
  %index1359 = phi i64 [ 0, %vector.ph1356 ], [ %index.next1360, %vector.body1354 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i52, i64 %index1359
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1363 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1363, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1360 = add i64 %index1359, 4
  %57 = icmp eq i64 %index.next1360, %n.vec1358
  br i1 %57, label %middle.block1352, label %vector.body1354, !llvm.loop !64

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1362 = icmp eq i64 %indvars.iv21.i52, %n.vec1358
  br i1 %cmp.n1362, label %for.inc6.i63, label %for.body3.i60.preheader1459

for.body3.i60.preheader1459:                      ; preds = %for.body3.i60.preheader, %middle.block1352
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1358, %middle.block1352 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1459, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1459 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1352, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting311
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1405 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1405, label %for.body3.i99.preheader1455, label %vector.ph1406

vector.ph1406:                                    ; preds = %for.body3.i99.preheader
  %n.vec1408 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %vector.ph1406
  %index1409 = phi i64 [ 0, %vector.ph1406 ], [ %index.next1410, %vector.body1404 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i91, i64 %index1409
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1413 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1413, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1410 = add i64 %index1409, 4
  %68 = icmp eq i64 %index.next1410, %n.vec1408
  br i1 %68, label %middle.block1402, label %vector.body1404, !llvm.loop !66

middle.block1402:                                 ; preds = %vector.body1404
  %cmp.n1412 = icmp eq i64 %indvars.iv21.i91, %n.vec1408
  br i1 %cmp.n1412, label %for.inc6.i102, label %for.body3.i99.preheader1455

for.body3.i99.preheader1455:                      ; preds = %for.body3.i99.preheader, %middle.block1402
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1408, %middle.block1402 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1455, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1455 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1402, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall136 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1417 = phi i64 [ %indvar.next1418, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1417, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1419 = icmp ult i64 %88, 4
  br i1 %min.iters.check1419, label %polly.loop_header192.preheader, label %vector.ph1420

vector.ph1420:                                    ; preds = %polly.loop_header
  %n.vec1422 = and i64 %88, -4
  br label %vector.body1416

vector.body1416:                                  ; preds = %vector.body1416, %vector.ph1420
  %index1423 = phi i64 [ 0, %vector.ph1420 ], [ %index.next1424, %vector.body1416 ]
  %90 = shl nuw nsw i64 %index1423, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1427 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1427, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1424 = add i64 %index1423, 4
  %95 = icmp eq i64 %index.next1424, %n.vec1422
  br i1 %95, label %middle.block1414, label %vector.body1416, !llvm.loop !79

middle.block1414:                                 ; preds = %vector.body1416
  %cmp.n1426 = icmp eq i64 %88, %n.vec1422
  br i1 %cmp.n1426, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1414
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1422, %middle.block1414 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1414
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1418 = add i64 %indvar1417, 1
  br i1 %exitcond1121.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1120.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1120.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1094 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1095, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1094, i64 -984)
  %97 = add nsw i64 %smin1116, 1000
  %98 = shl nsw i64 %polly.indvar203, 4
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, -16
  %exitcond1119.not = icmp eq i64 %polly.indvar_next204, 63
  br i1 %exitcond1119.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit230 ], [ 31, %polly.loop_header200 ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = mul nsw i64 %polly.indvar209, -28
  %100 = mul nuw nsw i64 %polly.indvar209, 28
  %101 = add nuw i64 %100, 124
  %102 = and i64 %101, -128
  %103 = add i64 %99, %102
  %104 = sub i64 %100, %102
  %105 = shl nuw nsw i64 %indvars.iv1104, 2
  %106 = and i64 %105, 9223372036854775680
  %107 = add i64 %indvars.iv1102, %106
  %108 = sub nsw i64 %indvars.iv1108, %106
  %109 = mul nsw i64 %polly.indvar209, -100
  %110 = mul nuw nsw i64 %polly.indvar209, 100
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %111 = add nsw i64 %109, 1199
  %112 = mul nuw nsw i64 %polly.indvar209, 7
  %113 = add nuw nsw i64 %112, 31
  %pexp.p_div_q = lshr i64 %113, 5
  %114 = sub nsw i64 %polly.indvar209, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %114, 10
  br i1 %polly.loop_guard, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_exit230:                               ; preds = %polly.loop_exit269, %polly.loop_exit214
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1103 = add nsw i64 %indvars.iv1102, -28
  %indvars.iv.next1105 = add nuw nsw i64 %indvars.iv1104, 7
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 28
  %exitcond1118.not = icmp eq i64 %polly.indvar_next210, 12
  br i1 %exitcond1118.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %115 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1096.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %116 = add nuw nsw i64 %polly.indvar221, %110
  %polly.access.mul.call2225 = mul nuw nsw i64 %116, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %115, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2756, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit214, %polly.loop_exit269
  %indvar1431 = phi i64 [ %indvar.next1432, %polly.loop_exit269 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit269 ], [ %108, %polly.loop_exit214 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit269 ], [ %107, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit269 ], [ %114, %polly.loop_exit214 ]
  %117 = mul nsw i64 %indvar1431, -128
  %118 = add i64 %103, %117
  %smax1433 = call i64 @llvm.smax.i64(i64 %118, i64 0)
  %119 = shl nuw nsw i64 %indvar1431, 7
  %120 = add i64 %104, %119
  %121 = add i64 %smax1433, %120
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1106, i64 0)
  %122 = add i64 %smax, %indvars.iv1110
  %123 = shl nsw i64 %polly.indvar231, 7
  %124 = add nsw i64 %123, %109
  %125 = add nsw i64 %124, -1
  %.inv = icmp sgt i64 %124, 99
  %126 = select i1 %.inv, i64 99, i64 %125
  %polly.loop_guard244 = icmp sgt i64 %126, -1
  %127 = icmp sgt i64 %124, 0
  %128 = select i1 %127, i64 %124, i64 0
  %129 = add nsw i64 %124, 127
  %130 = icmp slt i64 %111, %129
  %131 = select i1 %130, i64 %111, i64 %129
  %polly.loop_guard256.not = icmp sgt i64 %128, %131
  br i1 %polly.loop_guard244, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit255.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit255.us ], [ 0, %polly.loop_header228 ]
  %132 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header241.us

polly.loop_header241.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header234.us ]
  %133 = add nuw nsw i64 %polly.indvar245.us, %110
  %polly.access.mul.call1249.us = mul nuw nsw i64 %133, 1000
  %polly.access.add.call1250.us = add nuw nsw i64 %132, %polly.access.mul.call1249.us
  %polly.access.call1251.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1250.us
  %polly.access.call1251.load.us = load double, double* %polly.access.call1251.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar245.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1251.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next246.us = add nuw i64 %polly.indvar245.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar245.us, %126
  br i1 %exitcond1099.not, label %polly.loop_exit243.loopexit.us, label %polly.loop_header241.us

polly.loop_header253.us:                          ; preds = %polly.loop_exit243.loopexit.us, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ %128, %polly.loop_exit243.loopexit.us ]
  %134 = add nuw nsw i64 %polly.indvar257.us, %110
  %polly.access.mul.call1261.us = mul nsw i64 %134, 1000
  %polly.access.add.call1262.us = add nuw nsw i64 %132, %polly.access.mul.call1261.us
  %polly.access.call1263.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1262.us
  %polly.access.call1263.load.us = load double, double* %polly.access.call1263.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1265.us = add nuw nsw i64 %polly.indvar257.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  store double %polly.access.call1263.load.us, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %polly.loop_cond259.not.not.us = icmp slt i64 %polly.indvar257.us, %131
  br i1 %polly.loop_cond259.not.not.us, label %polly.loop_header253.us, label %polly.loop_exit255.us

polly.loop_exit255.us:                            ; preds = %polly.loop_header253.us, %polly.loop_exit243.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1101.not, label %polly.loop_header267.preheader, label %polly.loop_header234.us

polly.loop_exit243.loopexit.us:                   ; preds = %polly.loop_header241.us
  br i1 %polly.loop_guard256.not, label %polly.loop_exit255.us, label %polly.loop_header253.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard256.not, label %polly.loop_header267.preheader, label %polly.loop_header234

polly.loop_exit269:                               ; preds = %polly.loop_exit276, %polly.loop_header267.preheader
  %polly.indvar_next232 = add nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp slt i64 %polly.indvar231, 9
  %indvars.iv.next1107 = add i64 %indvars.iv1106, -128
  %indvars.iv.next1111 = add i64 %indvars.iv1110, 128
  %indvar.next1432 = add i64 %indvar1431, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit255
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit255 ], [ 0, %polly.loop_header228.split ]
  %135 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header253

polly.loop_exit255:                               ; preds = %polly.loop_header253
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1098.not, label %polly.loop_header267.preheader, label %polly.loop_header234

polly.loop_header267.preheader:                   ; preds = %polly.loop_exit255, %polly.loop_exit255.us, %polly.loop_header228.split
  %136 = sub nsw i64 %110, %123
  %137 = icmp sgt i64 %136, 0
  %138 = select i1 %137, i64 %136, i64 0
  %139 = mul nsw i64 %polly.indvar231, -128
  %140 = icmp slt i64 %139, -1072
  %141 = select i1 %140, i64 %139, i64 -1072
  %142 = add nsw i64 %141, 1199
  %polly.loop_guard277.not = icmp sgt i64 %138, %142
  br i1 %polly.loop_guard277.not, label %polly.loop_exit269, label %polly.loop_header267

polly.loop_header253:                             ; preds = %polly.loop_header234, %polly.loop_header253
  %polly.indvar257 = phi i64 [ %polly.indvar_next258, %polly.loop_header253 ], [ %128, %polly.loop_header234 ]
  %143 = add nuw nsw i64 %polly.indvar257, %110
  %polly.access.mul.call1261 = mul nsw i64 %143, 1000
  %polly.access.add.call1262 = add nuw nsw i64 %135, %polly.access.mul.call1261
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1262
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1265 = add nuw nsw i64 %polly.indvar257, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %polly.loop_cond259.not.not = icmp slt i64 %polly.indvar257, %131
  br i1 %polly.loop_cond259.not.not, label %polly.loop_header253, label %polly.loop_exit255

polly.loop_header267:                             ; preds = %polly.loop_header267.preheader, %polly.loop_exit276
  %polly.indvar270 = phi i64 [ %polly.indvar_next271, %polly.loop_exit276 ], [ 0, %polly.loop_header267.preheader ]
  %polly.access.mul.Packed_MemRef_call1289 = mul nuw nsw i64 %polly.indvar270, 1200
  br label %polly.loop_header274

polly.loop_exit276:                               ; preds = %polly.loop_exit284
  %polly.indvar_next271 = add nuw nsw i64 %polly.indvar270, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next271, %97
  br i1 %exitcond1117.not, label %polly.loop_exit269, label %polly.loop_header267

polly.loop_header274:                             ; preds = %polly.loop_header267, %polly.loop_exit284
  %indvar1434 = phi i64 [ 0, %polly.loop_header267 ], [ %indvar.next1435, %polly.loop_exit284 ]
  %indvars.iv1112 = phi i64 [ %122, %polly.loop_header267 ], [ %indvars.iv.next1113, %polly.loop_exit284 ]
  %polly.indvar278 = phi i64 [ %138, %polly.loop_header267 ], [ %polly.indvar_next279, %polly.loop_exit284 ]
  %144 = add i64 %121, %indvar1434
  %smin1436 = call i64 @llvm.smin.i64(i64 %144, i64 99)
  %145 = add nsw i64 %smin1436, 1
  %smin1114 = call i64 @llvm.smin.i64(i64 %indvars.iv1112, i64 99)
  %146 = add nsw i64 %polly.indvar278, %124
  %polly.loop_guard2851225 = icmp sgt i64 %146, -1
  br i1 %polly.loop_guard2851225, label %polly.loop_header282.preheader, label %polly.loop_exit284

polly.loop_header282.preheader:                   ; preds = %polly.loop_header274
  %147 = add nsw i64 %polly.indvar278, %123
  %polly.access.add.Packed_MemRef_call2294 = add nsw i64 %146, %polly.access.mul.Packed_MemRef_call1289
  %polly.access.Packed_MemRef_call2295 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2294
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call2295, align 8
  %polly.access.Packed_MemRef_call1303 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2294
  %_p_scalar_304 = load double, double* %polly.access.Packed_MemRef_call1303, align 8
  %148 = mul i64 %147, 9600
  %min.iters.check1437 = icmp ult i64 %145, 4
  br i1 %min.iters.check1437, label %polly.loop_header282.preheader1452, label %vector.ph1438

vector.ph1438:                                    ; preds = %polly.loop_header282.preheader
  %n.vec1440 = and i64 %145, -4
  %broadcast.splatinsert1446 = insertelement <4 x double> poison, double %_p_scalar_296, i32 0
  %broadcast.splat1447 = shufflevector <4 x double> %broadcast.splatinsert1446, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1449 = insertelement <4 x double> poison, double %_p_scalar_304, i32 0
  %broadcast.splat1450 = shufflevector <4 x double> %broadcast.splatinsert1449, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1430

vector.body1430:                                  ; preds = %vector.body1430, %vector.ph1438
  %index1441 = phi i64 [ 0, %vector.ph1438 ], [ %index.next1442, %vector.body1430 ]
  %149 = add nuw nsw i64 %index1441, %110
  %150 = add nuw nsw i64 %index1441, %polly.access.mul.Packed_MemRef_call1289
  %151 = getelementptr double, double* %Packed_MemRef_call1, i64 %150
  %152 = bitcast double* %151 to <4 x double>*
  %wide.load1445 = load <4 x double>, <4 x double>* %152, align 8
  %153 = fmul fast <4 x double> %broadcast.splat1447, %wide.load1445
  %154 = getelementptr double, double* %Packed_MemRef_call2, i64 %150
  %155 = bitcast double* %154 to <4 x double>*
  %wide.load1448 = load <4 x double>, <4 x double>* %155, align 8
  %156 = fmul fast <4 x double> %broadcast.splat1450, %wide.load1448
  %157 = shl i64 %149, 3
  %158 = add i64 %157, %148
  %159 = getelementptr i8, i8* %call, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1451 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !72, !noalias !74
  %161 = fadd fast <4 x double> %156, %153
  %162 = fmul fast <4 x double> %161, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %163 = fadd fast <4 x double> %162, %wide.load1451
  %164 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !72, !noalias !74
  %index.next1442 = add i64 %index1441, 4
  %165 = icmp eq i64 %index.next1442, %n.vec1440
  br i1 %165, label %middle.block1428, label %vector.body1430, !llvm.loop !84

middle.block1428:                                 ; preds = %vector.body1430
  %cmp.n1444 = icmp eq i64 %145, %n.vec1440
  br i1 %cmp.n1444, label %polly.loop_exit284, label %polly.loop_header282.preheader1452

polly.loop_header282.preheader1452:               ; preds = %polly.loop_header282.preheader, %middle.block1428
  %polly.indvar286.ph = phi i64 [ 0, %polly.loop_header282.preheader ], [ %n.vec1440, %middle.block1428 ]
  br label %polly.loop_header282

polly.loop_exit284:                               ; preds = %polly.loop_header282, %middle.block1428, %polly.loop_header274
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %polly.loop_cond280.not.not = icmp slt i64 %polly.indvar278, %142
  %indvars.iv.next1113 = add i64 %indvars.iv1112, 1
  %indvar.next1435 = add i64 %indvar1434, 1
  br i1 %polly.loop_cond280.not.not, label %polly.loop_header274, label %polly.loop_exit276

polly.loop_header282:                             ; preds = %polly.loop_header282.preheader1452, %polly.loop_header282
  %polly.indvar286 = phi i64 [ %polly.indvar_next287, %polly.loop_header282 ], [ %polly.indvar286.ph, %polly.loop_header282.preheader1452 ]
  %166 = add nuw nsw i64 %polly.indvar286, %110
  %polly.access.add.Packed_MemRef_call1290 = add nuw nsw i64 %polly.indvar286, %polly.access.mul.Packed_MemRef_call1289
  %polly.access.Packed_MemRef_call1291 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call1291, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %polly.access.Packed_MemRef_call2299 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1290
  %_p_scalar_300 = load double, double* %polly.access.Packed_MemRef_call2299, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_304, %_p_scalar_300
  %167 = shl i64 %166, 3
  %168 = add i64 %167, %148
  %scevgep305 = getelementptr i8, i8* %call, i64 %168
  %scevgep305306 = bitcast i8* %scevgep305 to double*
  %_p_scalar_307 = load double, double* %scevgep305306, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_307
  store double %p_add42.i118, double* %scevgep305306, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next287 = add nuw nsw i64 %polly.indvar286, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar286, %smin1114
  br i1 %exitcond1115.not, label %polly.loop_exit284, label %polly.loop_header282, !llvm.loop !85

polly.start310:                                   ; preds = %kernel_syr2k.exit
  %malloccall312 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall314 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header398

polly.exiting311:                                 ; preds = %polly.loop_exit422
  tail call void @free(i8* %malloccall312)
  tail call void @free(i8* %malloccall314)
  br label %kernel_syr2k.exit90

polly.loop_header398:                             ; preds = %polly.loop_exit406, %polly.start310
  %indvar1367 = phi i64 [ %indvar.next1368, %polly.loop_exit406 ], [ 0, %polly.start310 ]
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit406 ], [ 1, %polly.start310 ]
  %169 = add i64 %indvar1367, 1
  %170 = mul nuw nsw i64 %polly.indvar401, 9600
  %scevgep410 = getelementptr i8, i8* %call, i64 %170
  %min.iters.check1369 = icmp ult i64 %169, 4
  br i1 %min.iters.check1369, label %polly.loop_header404.preheader, label %vector.ph1370

vector.ph1370:                                    ; preds = %polly.loop_header398
  %n.vec1372 = and i64 %169, -4
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %vector.ph1370
  %index1373 = phi i64 [ 0, %vector.ph1370 ], [ %index.next1374, %vector.body1366 ]
  %171 = shl nuw nsw i64 %index1373, 3
  %172 = getelementptr i8, i8* %scevgep410, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  %wide.load1377 = load <4 x double>, <4 x double>* %173, align 8, !alias.scope !86, !noalias !88
  %174 = fmul fast <4 x double> %wide.load1377, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %175 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %174, <4 x double>* %175, align 8, !alias.scope !86, !noalias !88
  %index.next1374 = add i64 %index1373, 4
  %176 = icmp eq i64 %index.next1374, %n.vec1372
  br i1 %176, label %middle.block1364, label %vector.body1366, !llvm.loop !93

middle.block1364:                                 ; preds = %vector.body1366
  %cmp.n1376 = icmp eq i64 %169, %n.vec1372
  br i1 %cmp.n1376, label %polly.loop_exit406, label %polly.loop_header404.preheader

polly.loop_header404.preheader:                   ; preds = %polly.loop_header398, %middle.block1364
  %polly.indvar407.ph = phi i64 [ 0, %polly.loop_header398 ], [ %n.vec1372, %middle.block1364 ]
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_header404, %middle.block1364
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar_next402, 1200
  %indvar.next1368 = add i64 %indvar1367, 1
  br i1 %exitcond1154.not, label %polly.loop_header414.preheader, label %polly.loop_header398

polly.loop_header414.preheader:                   ; preds = %polly.loop_exit406
  %Packed_MemRef_call1313 = bitcast i8* %malloccall312 to double*
  %Packed_MemRef_call2315 = bitcast i8* %malloccall314 to double*
  br label %polly.loop_header414

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_header404
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_header404 ], [ %polly.indvar407.ph, %polly.loop_header404.preheader ]
  %177 = shl nuw nsw i64 %polly.indvar407, 3
  %scevgep411 = getelementptr i8, i8* %scevgep410, i64 %177
  %scevgep411412 = bitcast i8* %scevgep411 to double*
  %_p_scalar_413 = load double, double* %scevgep411412, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_413, 1.200000e+00
  store double %p_mul.i57, double* %scevgep411412, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar_next408, %polly.indvar401
  br i1 %exitcond1153.not, label %polly.loop_exit406, label %polly.loop_header404, !llvm.loop !94

polly.loop_header414:                             ; preds = %polly.loop_header414.preheader, %polly.loop_exit422
  %indvars.iv1125 = phi i64 [ 0, %polly.loop_header414.preheader ], [ %indvars.iv.next1126, %polly.loop_exit422 ]
  %polly.indvar417 = phi i64 [ 0, %polly.loop_header414.preheader ], [ %polly.indvar_next418, %polly.loop_exit422 ]
  %smin1149 = call i64 @llvm.smin.i64(i64 %indvars.iv1125, i64 -984)
  %178 = add nsw i64 %smin1149, 1000
  %179 = shl nsw i64 %polly.indvar417, 4
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit446
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next1126 = add nsw i64 %indvars.iv1125, -16
  %exitcond1152.not = icmp eq i64 %polly.indvar_next418, 63
  br i1 %exitcond1152.not, label %polly.exiting311, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit446, %polly.loop_header414
  %indvars.iv1141 = phi i64 [ %indvars.iv.next1142, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %polly.loop_exit446 ], [ 31, %polly.loop_header414 ]
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit446 ], [ 1200, %polly.loop_header414 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %180 = mul nsw i64 %polly.indvar423, -28
  %181 = mul nuw nsw i64 %polly.indvar423, 28
  %182 = add nuw i64 %181, 124
  %183 = and i64 %182, -128
  %184 = add i64 %180, %183
  %185 = sub i64 %181, %183
  %186 = shl nuw nsw i64 %indvars.iv1136, 2
  %187 = and i64 %186, 9223372036854775680
  %188 = add i64 %indvars.iv1134, %187
  %189 = sub nsw i64 %indvars.iv1141, %187
  %190 = mul nsw i64 %polly.indvar423, -100
  %191 = mul nuw nsw i64 %polly.indvar423, 100
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit434
  %192 = add nsw i64 %190, 1199
  %193 = mul nuw nsw i64 %polly.indvar423, 7
  %194 = add nuw nsw i64 %193, 31
  %pexp.p_div_q442 = lshr i64 %194, 5
  %195 = sub nsw i64 %polly.indvar423, %pexp.p_div_q442
  %polly.loop_guard447 = icmp slt i64 %195, 10
  br i1 %polly.loop_guard447, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_exit446:                               ; preds = %polly.loop_exit486, %polly.loop_exit428
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, -100
  %indvars.iv.next1135 = add nsw i64 %indvars.iv1134, -28
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 7
  %indvars.iv.next1142 = add nuw nsw i64 %indvars.iv1141, 28
  %exitcond1151.not = icmp eq i64 %polly.indvar_next424, 12
  br i1 %exitcond1151.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit434, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit434 ]
  %196 = add nuw nsw i64 %polly.indvar429, %179
  %polly.access.mul.Packed_MemRef_call2315 = mul nuw nsw i64 %polly.indvar429, 1200
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_header432
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar_next430, %178
  br i1 %exitcond1128.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_header432, %polly.loop_header426
  %polly.indvar435 = phi i64 [ 0, %polly.loop_header426 ], [ %polly.indvar_next436, %polly.loop_header432 ]
  %197 = add nuw nsw i64 %polly.indvar435, %191
  %polly.access.mul.call2439 = mul nuw nsw i64 %197, 1000
  %polly.access.add.call2440 = add nuw nsw i64 %196, %polly.access.mul.call2439
  %polly.access.call2441 = getelementptr double, double* %polly.access.cast.call2756, i64 %polly.access.add.call2440
  %polly.access.call2441.load = load double, double* %polly.access.call2441, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2315 = add nuw nsw i64 %polly.indvar435, %polly.access.mul.Packed_MemRef_call2315
  %polly.access.Packed_MemRef_call2315 = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call2315
  store double %polly.access.call2441.load, double* %polly.access.Packed_MemRef_call2315, align 8
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next436, %indvars.iv1122
  br i1 %exitcond1124.not, label %polly.loop_exit434, label %polly.loop_header432

polly.loop_header444:                             ; preds = %polly.loop_exit428, %polly.loop_exit486
  %indvar1381 = phi i64 [ %indvar.next1382, %polly.loop_exit486 ], [ 0, %polly.loop_exit428 ]
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %polly.loop_exit486 ], [ %189, %polly.loop_exit428 ]
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit486 ], [ %188, %polly.loop_exit428 ]
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit486 ], [ %195, %polly.loop_exit428 ]
  %198 = mul nsw i64 %indvar1381, -128
  %199 = add i64 %184, %198
  %smax1383 = call i64 @llvm.smax.i64(i64 %199, i64 0)
  %200 = shl nuw nsw i64 %indvar1381, 7
  %201 = add i64 %185, %200
  %202 = add i64 %smax1383, %201
  %smax1140 = call i64 @llvm.smax.i64(i64 %indvars.iv1138, i64 0)
  %203 = add i64 %smax1140, %indvars.iv1143
  %204 = shl nsw i64 %polly.indvar448, 7
  %205 = add nsw i64 %204, %190
  %206 = add nsw i64 %205, -1
  %.inv948 = icmp sgt i64 %205, 99
  %207 = select i1 %.inv948, i64 99, i64 %206
  %polly.loop_guard461 = icmp sgt i64 %207, -1
  %208 = icmp sgt i64 %205, 0
  %209 = select i1 %208, i64 %205, i64 0
  %210 = add nsw i64 %205, 127
  %211 = icmp slt i64 %192, %210
  %212 = select i1 %211, i64 %192, i64 %210
  %polly.loop_guard473.not = icmp sgt i64 %209, %212
  br i1 %polly.loop_guard461, label %polly.loop_header451.us, label %polly.loop_header444.split

polly.loop_header451.us:                          ; preds = %polly.loop_header444, %polly.loop_exit472.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_exit472.us ], [ 0, %polly.loop_header444 ]
  %213 = add nuw nsw i64 %polly.indvar454.us, %179
  %polly.access.mul.Packed_MemRef_call1313.us = mul nuw nsw i64 %polly.indvar454.us, 1200
  br label %polly.loop_header458.us

polly.loop_header458.us:                          ; preds = %polly.loop_header451.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header451.us ]
  %214 = add nuw nsw i64 %polly.indvar462.us, %191
  %polly.access.mul.call1466.us = mul nuw nsw i64 %214, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %213, %polly.access.mul.call1466.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1313.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1313.us
  %polly.access.Packed_MemRef_call1313.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1313.us, align 8
  %polly.indvar_next463.us = add nuw i64 %polly.indvar462.us, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar462.us, %207
  br i1 %exitcond1131.not, label %polly.loop_exit460.loopexit.us, label %polly.loop_header458.us

polly.loop_header470.us:                          ; preds = %polly.loop_exit460.loopexit.us, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ %209, %polly.loop_exit460.loopexit.us ]
  %215 = add nuw nsw i64 %polly.indvar474.us, %191
  %polly.access.mul.call1478.us = mul nsw i64 %215, 1000
  %polly.access.add.call1479.us = add nuw nsw i64 %213, %polly.access.mul.call1478.us
  %polly.access.call1480.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1479.us
  %polly.access.call1480.load.us = load double, double* %polly.access.call1480.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1313482.us = add nuw nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1313.us
  %polly.access.Packed_MemRef_call1313483.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313482.us
  store double %polly.access.call1480.load.us, double* %polly.access.Packed_MemRef_call1313483.us, align 8
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %polly.loop_cond476.not.not.us = icmp slt i64 %polly.indvar474.us, %212
  br i1 %polly.loop_cond476.not.not.us, label %polly.loop_header470.us, label %polly.loop_exit472.us

polly.loop_exit472.us:                            ; preds = %polly.loop_header470.us, %polly.loop_exit460.loopexit.us
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next455.us, %178
  br i1 %exitcond1133.not, label %polly.loop_header484.preheader, label %polly.loop_header451.us

polly.loop_exit460.loopexit.us:                   ; preds = %polly.loop_header458.us
  br i1 %polly.loop_guard473.not, label %polly.loop_exit472.us, label %polly.loop_header470.us

polly.loop_header444.split:                       ; preds = %polly.loop_header444
  br i1 %polly.loop_guard473.not, label %polly.loop_header484.preheader, label %polly.loop_header451

polly.loop_exit486:                               ; preds = %polly.loop_exit493, %polly.loop_header484.preheader
  %polly.indvar_next449 = add nsw i64 %polly.indvar448, 1
  %polly.loop_cond450 = icmp slt i64 %polly.indvar448, 9
  %indvars.iv.next1139 = add i64 %indvars.iv1138, -128
  %indvars.iv.next1144 = add i64 %indvars.iv1143, 128
  %indvar.next1382 = add i64 %indvar1381, 1
  br i1 %polly.loop_cond450, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header451:                             ; preds = %polly.loop_header444.split, %polly.loop_exit472
  %polly.indvar454 = phi i64 [ %polly.indvar_next455, %polly.loop_exit472 ], [ 0, %polly.loop_header444.split ]
  %216 = add nuw nsw i64 %polly.indvar454, %179
  %polly.access.mul.Packed_MemRef_call1313481 = mul nuw nsw i64 %polly.indvar454, 1200
  br label %polly.loop_header470

polly.loop_exit472:                               ; preds = %polly.loop_header470
  %polly.indvar_next455 = add nuw nsw i64 %polly.indvar454, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next455, %178
  br i1 %exitcond1130.not, label %polly.loop_header484.preheader, label %polly.loop_header451

polly.loop_header484.preheader:                   ; preds = %polly.loop_exit472, %polly.loop_exit472.us, %polly.loop_header444.split
  %217 = sub nsw i64 %191, %204
  %218 = icmp sgt i64 %217, 0
  %219 = select i1 %218, i64 %217, i64 0
  %220 = mul nsw i64 %polly.indvar448, -128
  %221 = icmp slt i64 %220, -1072
  %222 = select i1 %221, i64 %220, i64 -1072
  %223 = add nsw i64 %222, 1199
  %polly.loop_guard494.not = icmp sgt i64 %219, %223
  br i1 %polly.loop_guard494.not, label %polly.loop_exit486, label %polly.loop_header484

polly.loop_header470:                             ; preds = %polly.loop_header451, %polly.loop_header470
  %polly.indvar474 = phi i64 [ %polly.indvar_next475, %polly.loop_header470 ], [ %209, %polly.loop_header451 ]
  %224 = add nuw nsw i64 %polly.indvar474, %191
  %polly.access.mul.call1478 = mul nsw i64 %224, 1000
  %polly.access.add.call1479 = add nuw nsw i64 %216, %polly.access.mul.call1478
  %polly.access.call1480 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1479
  %polly.access.call1480.load = load double, double* %polly.access.call1480, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1313482 = add nuw nsw i64 %polly.indvar474, %polly.access.mul.Packed_MemRef_call1313481
  %polly.access.Packed_MemRef_call1313483 = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313482
  store double %polly.access.call1480.load, double* %polly.access.Packed_MemRef_call1313483, align 8
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %polly.loop_cond476.not.not = icmp slt i64 %polly.indvar474, %212
  br i1 %polly.loop_cond476.not.not, label %polly.loop_header470, label %polly.loop_exit472

polly.loop_header484:                             ; preds = %polly.loop_header484.preheader, %polly.loop_exit493
  %polly.indvar487 = phi i64 [ %polly.indvar_next488, %polly.loop_exit493 ], [ 0, %polly.loop_header484.preheader ]
  %polly.access.mul.Packed_MemRef_call1313506 = mul nuw nsw i64 %polly.indvar487, 1200
  br label %polly.loop_header491

polly.loop_exit493:                               ; preds = %polly.loop_exit501
  %polly.indvar_next488 = add nuw nsw i64 %polly.indvar487, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar_next488, %178
  br i1 %exitcond1150.not, label %polly.loop_exit486, label %polly.loop_header484

polly.loop_header491:                             ; preds = %polly.loop_header484, %polly.loop_exit501
  %indvar1384 = phi i64 [ 0, %polly.loop_header484 ], [ %indvar.next1385, %polly.loop_exit501 ]
  %indvars.iv1145 = phi i64 [ %203, %polly.loop_header484 ], [ %indvars.iv.next1146, %polly.loop_exit501 ]
  %polly.indvar495 = phi i64 [ %219, %polly.loop_header484 ], [ %polly.indvar_next496, %polly.loop_exit501 ]
  %225 = add i64 %202, %indvar1384
  %smin1386 = call i64 @llvm.smin.i64(i64 %225, i64 99)
  %226 = add nsw i64 %smin1386, 1
  %smin1147 = call i64 @llvm.smin.i64(i64 %indvars.iv1145, i64 99)
  %227 = add nsw i64 %polly.indvar495, %205
  %polly.loop_guard5021226 = icmp sgt i64 %227, -1
  br i1 %polly.loop_guard5021226, label %polly.loop_header499.preheader, label %polly.loop_exit501

polly.loop_header499.preheader:                   ; preds = %polly.loop_header491
  %228 = add nsw i64 %polly.indvar495, %204
  %polly.access.add.Packed_MemRef_call2315511 = add nsw i64 %227, %polly.access.mul.Packed_MemRef_call1313506
  %polly.access.Packed_MemRef_call2315512 = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call2315511
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2315512, align 8
  %polly.access.Packed_MemRef_call1313520 = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call2315511
  %_p_scalar_521 = load double, double* %polly.access.Packed_MemRef_call1313520, align 8
  %229 = mul i64 %228, 9600
  %min.iters.check1387 = icmp ult i64 %226, 4
  br i1 %min.iters.check1387, label %polly.loop_header499.preheader1456, label %vector.ph1388

vector.ph1388:                                    ; preds = %polly.loop_header499.preheader
  %n.vec1390 = and i64 %226, -4
  %broadcast.splatinsert1396 = insertelement <4 x double> poison, double %_p_scalar_513, i32 0
  %broadcast.splat1397 = shufflevector <4 x double> %broadcast.splatinsert1396, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1399 = insertelement <4 x double> poison, double %_p_scalar_521, i32 0
  %broadcast.splat1400 = shufflevector <4 x double> %broadcast.splatinsert1399, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %vector.ph1388
  %index1391 = phi i64 [ 0, %vector.ph1388 ], [ %index.next1392, %vector.body1380 ]
  %230 = add nuw nsw i64 %index1391, %191
  %231 = add nuw nsw i64 %index1391, %polly.access.mul.Packed_MemRef_call1313506
  %232 = getelementptr double, double* %Packed_MemRef_call1313, i64 %231
  %233 = bitcast double* %232 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %233, align 8
  %234 = fmul fast <4 x double> %broadcast.splat1397, %wide.load1395
  %235 = getelementptr double, double* %Packed_MemRef_call2315, i64 %231
  %236 = bitcast double* %235 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %236, align 8
  %237 = fmul fast <4 x double> %broadcast.splat1400, %wide.load1398
  %238 = shl i64 %230, 3
  %239 = add i64 %238, %229
  %240 = getelementptr i8, i8* %call, i64 %239
  %241 = bitcast i8* %240 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %241, align 8, !alias.scope !86, !noalias !88
  %242 = fadd fast <4 x double> %237, %234
  %243 = fmul fast <4 x double> %242, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %244 = fadd fast <4 x double> %243, %wide.load1401
  %245 = bitcast i8* %240 to <4 x double>*
  store <4 x double> %244, <4 x double>* %245, align 8, !alias.scope !86, !noalias !88
  %index.next1392 = add i64 %index1391, 4
  %246 = icmp eq i64 %index.next1392, %n.vec1390
  br i1 %246, label %middle.block1378, label %vector.body1380, !llvm.loop !97

middle.block1378:                                 ; preds = %vector.body1380
  %cmp.n1394 = icmp eq i64 %226, %n.vec1390
  br i1 %cmp.n1394, label %polly.loop_exit501, label %polly.loop_header499.preheader1456

polly.loop_header499.preheader1456:               ; preds = %polly.loop_header499.preheader, %middle.block1378
  %polly.indvar503.ph = phi i64 [ 0, %polly.loop_header499.preheader ], [ %n.vec1390, %middle.block1378 ]
  br label %polly.loop_header499

polly.loop_exit501:                               ; preds = %polly.loop_header499, %middle.block1378, %polly.loop_header491
  %polly.indvar_next496 = add nuw nsw i64 %polly.indvar495, 1
  %polly.loop_cond497.not.not = icmp slt i64 %polly.indvar495, %223
  %indvars.iv.next1146 = add i64 %indvars.iv1145, 1
  %indvar.next1385 = add i64 %indvar1384, 1
  br i1 %polly.loop_cond497.not.not, label %polly.loop_header491, label %polly.loop_exit493

polly.loop_header499:                             ; preds = %polly.loop_header499.preheader1456, %polly.loop_header499
  %polly.indvar503 = phi i64 [ %polly.indvar_next504, %polly.loop_header499 ], [ %polly.indvar503.ph, %polly.loop_header499.preheader1456 ]
  %247 = add nuw nsw i64 %polly.indvar503, %191
  %polly.access.add.Packed_MemRef_call1313507 = add nuw nsw i64 %polly.indvar503, %polly.access.mul.Packed_MemRef_call1313506
  %polly.access.Packed_MemRef_call1313508 = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313507
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call1313508, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_513, %_p_scalar_509
  %polly.access.Packed_MemRef_call2315516 = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call1313507
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call2315516, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_521, %_p_scalar_517
  %248 = shl i64 %247, 3
  %249 = add i64 %248, %229
  %scevgep522 = getelementptr i8, i8* %call, i64 %249
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_524
  store double %p_add42.i79, double* %scevgep522523, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next504 = add nuw nsw i64 %polly.indvar503, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar503, %smin1147
  br i1 %exitcond1148.not, label %polly.loop_exit501, label %polly.loop_header499, !llvm.loop !98

polly.start527:                                   ; preds = %init_array.exit
  %malloccall529 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall531 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header615

polly.exiting528:                                 ; preds = %polly.loop_exit639
  tail call void @free(i8* %malloccall529)
  tail call void @free(i8* %malloccall531)
  br label %kernel_syr2k.exit

polly.loop_header615:                             ; preds = %polly.loop_exit623, %polly.start527
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit623 ], [ 0, %polly.start527 ]
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 1, %polly.start527 ]
  %250 = add i64 %indvar, 1
  %251 = mul nuw nsw i64 %polly.indvar618, 9600
  %scevgep627 = getelementptr i8, i8* %call, i64 %251
  %min.iters.check1319 = icmp ult i64 %250, 4
  br i1 %min.iters.check1319, label %polly.loop_header621.preheader, label %vector.ph1320

vector.ph1320:                                    ; preds = %polly.loop_header615
  %n.vec1322 = and i64 %250, -4
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %vector.ph1320
  %index1323 = phi i64 [ 0, %vector.ph1320 ], [ %index.next1324, %vector.body1318 ]
  %252 = shl nuw nsw i64 %index1323, 3
  %253 = getelementptr i8, i8* %scevgep627, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %254, align 8, !alias.scope !99, !noalias !101
  %255 = fmul fast <4 x double> %wide.load1327, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %256 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %255, <4 x double>* %256, align 8, !alias.scope !99, !noalias !101
  %index.next1324 = add i64 %index1323, 4
  %257 = icmp eq i64 %index.next1324, %n.vec1322
  br i1 %257, label %middle.block1316, label %vector.body1318, !llvm.loop !106

middle.block1316:                                 ; preds = %vector.body1318
  %cmp.n1326 = icmp eq i64 %250, %n.vec1322
  br i1 %cmp.n1326, label %polly.loop_exit623, label %polly.loop_header621.preheader

polly.loop_header621.preheader:                   ; preds = %polly.loop_header615, %middle.block1316
  %polly.indvar624.ph = phi i64 [ 0, %polly.loop_header615 ], [ %n.vec1322, %middle.block1316 ]
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621, %middle.block1316
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1187.not = icmp eq i64 %polly.indvar_next619, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1187.not, label %polly.loop_header631.preheader, label %polly.loop_header615

polly.loop_header631.preheader:                   ; preds = %polly.loop_exit623
  %Packed_MemRef_call1530 = bitcast i8* %malloccall529 to double*
  %Packed_MemRef_call2532 = bitcast i8* %malloccall531 to double*
  br label %polly.loop_header631

polly.loop_header621:                             ; preds = %polly.loop_header621.preheader, %polly.loop_header621
  %polly.indvar624 = phi i64 [ %polly.indvar_next625, %polly.loop_header621 ], [ %polly.indvar624.ph, %polly.loop_header621.preheader ]
  %258 = shl nuw nsw i64 %polly.indvar624, 3
  %scevgep628 = getelementptr i8, i8* %scevgep627, i64 %258
  %scevgep628629 = bitcast i8* %scevgep628 to double*
  %_p_scalar_630 = load double, double* %scevgep628629, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_630, 1.200000e+00
  store double %p_mul.i, double* %scevgep628629, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar_next625, %polly.indvar618
  br i1 %exitcond1186.not, label %polly.loop_exit623, label %polly.loop_header621, !llvm.loop !107

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit639
  %indvars.iv1158 = phi i64 [ 0, %polly.loop_header631.preheader ], [ %indvars.iv.next1159, %polly.loop_exit639 ]
  %polly.indvar634 = phi i64 [ 0, %polly.loop_header631.preheader ], [ %polly.indvar_next635, %polly.loop_exit639 ]
  %smin1182 = call i64 @llvm.smin.i64(i64 %indvars.iv1158, i64 -984)
  %259 = add nsw i64 %smin1182, 1000
  %260 = shl nsw i64 %polly.indvar634, 4
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit663
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1159 = add nsw i64 %indvars.iv1158, -16
  %exitcond1185.not = icmp eq i64 %polly.indvar_next635, 63
  br i1 %exitcond1185.not, label %polly.exiting528, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit663, %polly.loop_header631
  %indvars.iv1174 = phi i64 [ %indvars.iv.next1175, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %indvars.iv1169 = phi i64 [ %indvars.iv.next1170, %polly.loop_exit663 ], [ 31, %polly.loop_header631 ]
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit663 ], [ 1200, %polly.loop_header631 ]
  %polly.indvar640 = phi i64 [ %polly.indvar_next641, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %261 = mul nsw i64 %polly.indvar640, -28
  %262 = mul nuw nsw i64 %polly.indvar640, 28
  %263 = add nuw i64 %262, 124
  %264 = and i64 %263, -128
  %265 = add i64 %261, %264
  %266 = sub i64 %262, %264
  %267 = shl nuw nsw i64 %indvars.iv1169, 2
  %268 = and i64 %267, 9223372036854775680
  %269 = add i64 %indvars.iv1167, %268
  %270 = sub nsw i64 %indvars.iv1174, %268
  %271 = mul nsw i64 %polly.indvar640, -100
  %272 = mul nuw nsw i64 %polly.indvar640, 100
  br label %polly.loop_header643

polly.loop_exit645:                               ; preds = %polly.loop_exit651
  %273 = add nsw i64 %271, 1199
  %274 = mul nuw nsw i64 %polly.indvar640, 7
  %275 = add nuw nsw i64 %274, 31
  %pexp.p_div_q659 = lshr i64 %275, 5
  %276 = sub nsw i64 %polly.indvar640, %pexp.p_div_q659
  %polly.loop_guard664 = icmp slt i64 %276, 10
  br i1 %polly.loop_guard664, label %polly.loop_header661, label %polly.loop_exit663

polly.loop_exit663:                               ; preds = %polly.loop_exit703, %polly.loop_exit645
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %indvars.iv.next1156 = add nsw i64 %indvars.iv1155, -100
  %indvars.iv.next1168 = add nsw i64 %indvars.iv1167, -28
  %indvars.iv.next1170 = add nuw nsw i64 %indvars.iv1169, 7
  %indvars.iv.next1175 = add nuw nsw i64 %indvars.iv1174, 28
  %exitcond1184.not = icmp eq i64 %polly.indvar_next641, 12
  br i1 %exitcond1184.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header643:                             ; preds = %polly.loop_exit651, %polly.loop_header637
  %polly.indvar646 = phi i64 [ 0, %polly.loop_header637 ], [ %polly.indvar_next647, %polly.loop_exit651 ]
  %277 = add nuw nsw i64 %polly.indvar646, %260
  %polly.access.mul.Packed_MemRef_call2532 = mul nuw nsw i64 %polly.indvar646, 1200
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_header649
  %polly.indvar_next647 = add nuw nsw i64 %polly.indvar646, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next647, %259
  br i1 %exitcond1161.not, label %polly.loop_exit645, label %polly.loop_header643

polly.loop_header649:                             ; preds = %polly.loop_header649, %polly.loop_header643
  %polly.indvar652 = phi i64 [ 0, %polly.loop_header643 ], [ %polly.indvar_next653, %polly.loop_header649 ]
  %278 = add nuw nsw i64 %polly.indvar652, %272
  %polly.access.mul.call2656 = mul nuw nsw i64 %278, 1000
  %polly.access.add.call2657 = add nuw nsw i64 %277, %polly.access.mul.call2656
  %polly.access.call2658 = getelementptr double, double* %polly.access.cast.call2756, i64 %polly.access.add.call2657
  %polly.access.call2658.load = load double, double* %polly.access.call2658, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2532 = add nuw nsw i64 %polly.indvar652, %polly.access.mul.Packed_MemRef_call2532
  %polly.access.Packed_MemRef_call2532 = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call2532
  store double %polly.access.call2658.load, double* %polly.access.Packed_MemRef_call2532, align 8
  %polly.indvar_next653 = add nuw nsw i64 %polly.indvar652, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next653, %indvars.iv1155
  br i1 %exitcond1157.not, label %polly.loop_exit651, label %polly.loop_header649

polly.loop_header661:                             ; preds = %polly.loop_exit645, %polly.loop_exit703
  %indvar1331 = phi i64 [ %indvar.next1332, %polly.loop_exit703 ], [ 0, %polly.loop_exit645 ]
  %indvars.iv1176 = phi i64 [ %indvars.iv.next1177, %polly.loop_exit703 ], [ %270, %polly.loop_exit645 ]
  %indvars.iv1171 = phi i64 [ %indvars.iv.next1172, %polly.loop_exit703 ], [ %269, %polly.loop_exit645 ]
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit703 ], [ %276, %polly.loop_exit645 ]
  %279 = mul nsw i64 %indvar1331, -128
  %280 = add i64 %265, %279
  %smax1333 = call i64 @llvm.smax.i64(i64 %280, i64 0)
  %281 = shl nuw nsw i64 %indvar1331, 7
  %282 = add i64 %266, %281
  %283 = add i64 %smax1333, %282
  %smax1173 = call i64 @llvm.smax.i64(i64 %indvars.iv1171, i64 0)
  %284 = add i64 %smax1173, %indvars.iv1176
  %285 = shl nsw i64 %polly.indvar665, 7
  %286 = add nsw i64 %285, %271
  %287 = add nsw i64 %286, -1
  %.inv949 = icmp sgt i64 %286, 99
  %288 = select i1 %.inv949, i64 99, i64 %287
  %polly.loop_guard678 = icmp sgt i64 %288, -1
  %289 = icmp sgt i64 %286, 0
  %290 = select i1 %289, i64 %286, i64 0
  %291 = add nsw i64 %286, 127
  %292 = icmp slt i64 %273, %291
  %293 = select i1 %292, i64 %273, i64 %291
  %polly.loop_guard690.not = icmp sgt i64 %290, %293
  br i1 %polly.loop_guard678, label %polly.loop_header668.us, label %polly.loop_header661.split

polly.loop_header668.us:                          ; preds = %polly.loop_header661, %polly.loop_exit689.us
  %polly.indvar671.us = phi i64 [ %polly.indvar_next672.us, %polly.loop_exit689.us ], [ 0, %polly.loop_header661 ]
  %294 = add nuw nsw i64 %polly.indvar671.us, %260
  %polly.access.mul.Packed_MemRef_call1530.us = mul nuw nsw i64 %polly.indvar671.us, 1200
  br label %polly.loop_header675.us

polly.loop_header675.us:                          ; preds = %polly.loop_header668.us, %polly.loop_header675.us
  %polly.indvar679.us = phi i64 [ %polly.indvar_next680.us, %polly.loop_header675.us ], [ 0, %polly.loop_header668.us ]
  %295 = add nuw nsw i64 %polly.indvar679.us, %272
  %polly.access.mul.call1683.us = mul nuw nsw i64 %295, 1000
  %polly.access.add.call1684.us = add nuw nsw i64 %294, %polly.access.mul.call1683.us
  %polly.access.call1685.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1684.us
  %polly.access.call1685.load.us = load double, double* %polly.access.call1685.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1530.us = add nuw nsw i64 %polly.indvar679.us, %polly.access.mul.Packed_MemRef_call1530.us
  %polly.access.Packed_MemRef_call1530.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530.us
  store double %polly.access.call1685.load.us, double* %polly.access.Packed_MemRef_call1530.us, align 8
  %polly.indvar_next680.us = add nuw i64 %polly.indvar679.us, 1
  %exitcond1164.not = icmp eq i64 %polly.indvar679.us, %288
  br i1 %exitcond1164.not, label %polly.loop_exit677.loopexit.us, label %polly.loop_header675.us

polly.loop_header687.us:                          ; preds = %polly.loop_exit677.loopexit.us, %polly.loop_header687.us
  %polly.indvar691.us = phi i64 [ %polly.indvar_next692.us, %polly.loop_header687.us ], [ %290, %polly.loop_exit677.loopexit.us ]
  %296 = add nuw nsw i64 %polly.indvar691.us, %272
  %polly.access.mul.call1695.us = mul nsw i64 %296, 1000
  %polly.access.add.call1696.us = add nuw nsw i64 %294, %polly.access.mul.call1695.us
  %polly.access.call1697.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1696.us
  %polly.access.call1697.load.us = load double, double* %polly.access.call1697.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1530699.us = add nuw nsw i64 %polly.indvar691.us, %polly.access.mul.Packed_MemRef_call1530.us
  %polly.access.Packed_MemRef_call1530700.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530699.us
  store double %polly.access.call1697.load.us, double* %polly.access.Packed_MemRef_call1530700.us, align 8
  %polly.indvar_next692.us = add nuw nsw i64 %polly.indvar691.us, 1
  %polly.loop_cond693.not.not.us = icmp slt i64 %polly.indvar691.us, %293
  br i1 %polly.loop_cond693.not.not.us, label %polly.loop_header687.us, label %polly.loop_exit689.us

polly.loop_exit689.us:                            ; preds = %polly.loop_header687.us, %polly.loop_exit677.loopexit.us
  %polly.indvar_next672.us = add nuw nsw i64 %polly.indvar671.us, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar_next672.us, %259
  br i1 %exitcond1166.not, label %polly.loop_header701.preheader, label %polly.loop_header668.us

polly.loop_exit677.loopexit.us:                   ; preds = %polly.loop_header675.us
  br i1 %polly.loop_guard690.not, label %polly.loop_exit689.us, label %polly.loop_header687.us

polly.loop_header661.split:                       ; preds = %polly.loop_header661
  br i1 %polly.loop_guard690.not, label %polly.loop_header701.preheader, label %polly.loop_header668

polly.loop_exit703:                               ; preds = %polly.loop_exit710, %polly.loop_header701.preheader
  %polly.indvar_next666 = add nsw i64 %polly.indvar665, 1
  %polly.loop_cond667 = icmp slt i64 %polly.indvar665, 9
  %indvars.iv.next1172 = add i64 %indvars.iv1171, -128
  %indvars.iv.next1177 = add i64 %indvars.iv1176, 128
  %indvar.next1332 = add i64 %indvar1331, 1
  br i1 %polly.loop_cond667, label %polly.loop_header661, label %polly.loop_exit663

polly.loop_header668:                             ; preds = %polly.loop_header661.split, %polly.loop_exit689
  %polly.indvar671 = phi i64 [ %polly.indvar_next672, %polly.loop_exit689 ], [ 0, %polly.loop_header661.split ]
  %297 = add nuw nsw i64 %polly.indvar671, %260
  %polly.access.mul.Packed_MemRef_call1530698 = mul nuw nsw i64 %polly.indvar671, 1200
  br label %polly.loop_header687

polly.loop_exit689:                               ; preds = %polly.loop_header687
  %polly.indvar_next672 = add nuw nsw i64 %polly.indvar671, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next672, %259
  br i1 %exitcond1163.not, label %polly.loop_header701.preheader, label %polly.loop_header668

polly.loop_header701.preheader:                   ; preds = %polly.loop_exit689, %polly.loop_exit689.us, %polly.loop_header661.split
  %298 = sub nsw i64 %272, %285
  %299 = icmp sgt i64 %298, 0
  %300 = select i1 %299, i64 %298, i64 0
  %301 = mul nsw i64 %polly.indvar665, -128
  %302 = icmp slt i64 %301, -1072
  %303 = select i1 %302, i64 %301, i64 -1072
  %304 = add nsw i64 %303, 1199
  %polly.loop_guard711.not = icmp sgt i64 %300, %304
  br i1 %polly.loop_guard711.not, label %polly.loop_exit703, label %polly.loop_header701

polly.loop_header687:                             ; preds = %polly.loop_header668, %polly.loop_header687
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_header687 ], [ %290, %polly.loop_header668 ]
  %305 = add nuw nsw i64 %polly.indvar691, %272
  %polly.access.mul.call1695 = mul nsw i64 %305, 1000
  %polly.access.add.call1696 = add nuw nsw i64 %297, %polly.access.mul.call1695
  %polly.access.call1697 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1696
  %polly.access.call1697.load = load double, double* %polly.access.call1697, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1530699 = add nuw nsw i64 %polly.indvar691, %polly.access.mul.Packed_MemRef_call1530698
  %polly.access.Packed_MemRef_call1530700 = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530699
  store double %polly.access.call1697.load, double* %polly.access.Packed_MemRef_call1530700, align 8
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %polly.loop_cond693.not.not = icmp slt i64 %polly.indvar691, %293
  br i1 %polly.loop_cond693.not.not, label %polly.loop_header687, label %polly.loop_exit689

polly.loop_header701:                             ; preds = %polly.loop_header701.preheader, %polly.loop_exit710
  %polly.indvar704 = phi i64 [ %polly.indvar_next705, %polly.loop_exit710 ], [ 0, %polly.loop_header701.preheader ]
  %polly.access.mul.Packed_MemRef_call1530723 = mul nuw nsw i64 %polly.indvar704, 1200
  br label %polly.loop_header708

polly.loop_exit710:                               ; preds = %polly.loop_exit718
  %polly.indvar_next705 = add nuw nsw i64 %polly.indvar704, 1
  %exitcond1183.not = icmp eq i64 %polly.indvar_next705, %259
  br i1 %exitcond1183.not, label %polly.loop_exit703, label %polly.loop_header701

polly.loop_header708:                             ; preds = %polly.loop_header701, %polly.loop_exit718
  %indvar1334 = phi i64 [ 0, %polly.loop_header701 ], [ %indvar.next1335, %polly.loop_exit718 ]
  %indvars.iv1178 = phi i64 [ %284, %polly.loop_header701 ], [ %indvars.iv.next1179, %polly.loop_exit718 ]
  %polly.indvar712 = phi i64 [ %300, %polly.loop_header701 ], [ %polly.indvar_next713, %polly.loop_exit718 ]
  %306 = add i64 %283, %indvar1334
  %smin1336 = call i64 @llvm.smin.i64(i64 %306, i64 99)
  %307 = add nsw i64 %smin1336, 1
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 99)
  %308 = add nsw i64 %polly.indvar712, %286
  %polly.loop_guard7191227 = icmp sgt i64 %308, -1
  br i1 %polly.loop_guard7191227, label %polly.loop_header716.preheader, label %polly.loop_exit718

polly.loop_header716.preheader:                   ; preds = %polly.loop_header708
  %309 = add nsw i64 %polly.indvar712, %285
  %polly.access.add.Packed_MemRef_call2532728 = add nsw i64 %308, %polly.access.mul.Packed_MemRef_call1530723
  %polly.access.Packed_MemRef_call2532729 = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call2532728
  %_p_scalar_730 = load double, double* %polly.access.Packed_MemRef_call2532729, align 8
  %polly.access.Packed_MemRef_call1530737 = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call2532728
  %_p_scalar_738 = load double, double* %polly.access.Packed_MemRef_call1530737, align 8
  %310 = mul i64 %309, 9600
  %min.iters.check1337 = icmp ult i64 %307, 4
  br i1 %min.iters.check1337, label %polly.loop_header716.preheader1460, label %vector.ph1338

vector.ph1338:                                    ; preds = %polly.loop_header716.preheader
  %n.vec1340 = and i64 %307, -4
  %broadcast.splatinsert1346 = insertelement <4 x double> poison, double %_p_scalar_730, i32 0
  %broadcast.splat1347 = shufflevector <4 x double> %broadcast.splatinsert1346, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1349 = insertelement <4 x double> poison, double %_p_scalar_738, i32 0
  %broadcast.splat1350 = shufflevector <4 x double> %broadcast.splatinsert1349, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1338
  %index1341 = phi i64 [ 0, %vector.ph1338 ], [ %index.next1342, %vector.body1330 ]
  %311 = add nuw nsw i64 %index1341, %272
  %312 = add nuw nsw i64 %index1341, %polly.access.mul.Packed_MemRef_call1530723
  %313 = getelementptr double, double* %Packed_MemRef_call1530, i64 %312
  %314 = bitcast double* %313 to <4 x double>*
  %wide.load1345 = load <4 x double>, <4 x double>* %314, align 8
  %315 = fmul fast <4 x double> %broadcast.splat1347, %wide.load1345
  %316 = getelementptr double, double* %Packed_MemRef_call2532, i64 %312
  %317 = bitcast double* %316 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %317, align 8
  %318 = fmul fast <4 x double> %broadcast.splat1350, %wide.load1348
  %319 = shl i64 %311, 3
  %320 = add i64 %319, %310
  %321 = getelementptr i8, i8* %call, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %322, align 8, !alias.scope !99, !noalias !101
  %323 = fadd fast <4 x double> %318, %315
  %324 = fmul fast <4 x double> %323, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %325 = fadd fast <4 x double> %324, %wide.load1351
  %326 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %325, <4 x double>* %326, align 8, !alias.scope !99, !noalias !101
  %index.next1342 = add i64 %index1341, 4
  %327 = icmp eq i64 %index.next1342, %n.vec1340
  br i1 %327, label %middle.block1328, label %vector.body1330, !llvm.loop !110

middle.block1328:                                 ; preds = %vector.body1330
  %cmp.n1344 = icmp eq i64 %307, %n.vec1340
  br i1 %cmp.n1344, label %polly.loop_exit718, label %polly.loop_header716.preheader1460

polly.loop_header716.preheader1460:               ; preds = %polly.loop_header716.preheader, %middle.block1328
  %polly.indvar720.ph = phi i64 [ 0, %polly.loop_header716.preheader ], [ %n.vec1340, %middle.block1328 ]
  br label %polly.loop_header716

polly.loop_exit718:                               ; preds = %polly.loop_header716, %middle.block1328, %polly.loop_header708
  %polly.indvar_next713 = add nuw nsw i64 %polly.indvar712, 1
  %polly.loop_cond714.not.not = icmp slt i64 %polly.indvar712, %304
  %indvars.iv.next1179 = add i64 %indvars.iv1178, 1
  %indvar.next1335 = add i64 %indvar1334, 1
  br i1 %polly.loop_cond714.not.not, label %polly.loop_header708, label %polly.loop_exit710

polly.loop_header716:                             ; preds = %polly.loop_header716.preheader1460, %polly.loop_header716
  %polly.indvar720 = phi i64 [ %polly.indvar_next721, %polly.loop_header716 ], [ %polly.indvar720.ph, %polly.loop_header716.preheader1460 ]
  %328 = add nuw nsw i64 %polly.indvar720, %272
  %polly.access.add.Packed_MemRef_call1530724 = add nuw nsw i64 %polly.indvar720, %polly.access.mul.Packed_MemRef_call1530723
  %polly.access.Packed_MemRef_call1530725 = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530724
  %_p_scalar_726 = load double, double* %polly.access.Packed_MemRef_call1530725, align 8
  %p_mul27.i = fmul fast double %_p_scalar_730, %_p_scalar_726
  %polly.access.Packed_MemRef_call2532733 = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call1530724
  %_p_scalar_734 = load double, double* %polly.access.Packed_MemRef_call2532733, align 8
  %p_mul37.i = fmul fast double %_p_scalar_738, %_p_scalar_734
  %329 = shl i64 %328, 3
  %330 = add i64 %329, %310
  %scevgep739 = getelementptr i8, i8* %call, i64 %330
  %scevgep739740 = bitcast i8* %scevgep739 to double*
  %_p_scalar_741 = load double, double* %scevgep739740, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_741
  store double %p_add42.i, double* %scevgep739740, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next721 = add nuw nsw i64 %polly.indvar720, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar720, %smin1180
  br i1 %exitcond1181.not, label %polly.loop_exit718, label %polly.loop_header716, !llvm.loop !111

polly.loop_header868:                             ; preds = %entry, %polly.loop_exit876
  %indvars.iv1212 = phi i64 [ %indvars.iv.next1213, %polly.loop_exit876 ], [ 0, %entry ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %entry ]
  %smin1214 = call i64 @llvm.smin.i64(i64 %indvars.iv1212, i64 -1168)
  %331 = shl nsw i64 %polly.indvar871, 5
  %332 = add nsw i64 %smin1214, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1213 = add nsw i64 %indvars.iv1212, -32
  %exitcond1217.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1217.not, label %polly.loop_header895, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %indvars.iv1208 = phi i64 [ %indvars.iv.next1209, %polly.loop_exit882 ], [ 0, %polly.loop_header868 ]
  %polly.indvar877 = phi i64 [ %polly.indvar_next878, %polly.loop_exit882 ], [ 0, %polly.loop_header868 ]
  %333 = mul nsw i64 %polly.indvar877, -32
  %smin = call i64 @llvm.smin.i64(i64 %333, i64 -1168)
  %334 = add nsw i64 %smin, 1200
  %smin1210 = call i64 @llvm.smin.i64(i64 %indvars.iv1208, i64 -1168)
  %335 = shl nsw i64 %polly.indvar877, 5
  %336 = add nsw i64 %smin1210, 1199
  br label %polly.loop_header880

polly.loop_exit882:                               ; preds = %polly.loop_exit888
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %indvars.iv.next1209 = add nsw i64 %indvars.iv1208, -32
  %exitcond1216.not = icmp eq i64 %polly.indvar_next878, 38
  br i1 %exitcond1216.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_exit888, %polly.loop_header874
  %polly.indvar883 = phi i64 [ 0, %polly.loop_header874 ], [ %polly.indvar_next884, %polly.loop_exit888 ]
  %337 = add nuw nsw i64 %polly.indvar883, %331
  %338 = trunc i64 %337 to i32
  %339 = mul nuw nsw i64 %337, 9600
  %min.iters.check = icmp eq i64 %334, 0
  br i1 %min.iters.check, label %polly.loop_header886, label %vector.ph1258

vector.ph1258:                                    ; preds = %polly.loop_header880
  %broadcast.splatinsert1265 = insertelement <4 x i64> poison, i64 %335, i32 0
  %broadcast.splat1266 = shufflevector <4 x i64> %broadcast.splatinsert1265, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1267 = insertelement <4 x i32> poison, i32 %338, i32 0
  %broadcast.splat1268 = shufflevector <4 x i32> %broadcast.splatinsert1267, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1257

vector.body1257:                                  ; preds = %vector.body1257, %vector.ph1258
  %index1259 = phi i64 [ 0, %vector.ph1258 ], [ %index.next1260, %vector.body1257 ]
  %vec.ind1263 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1258 ], [ %vec.ind.next1264, %vector.body1257 ]
  %340 = add nuw nsw <4 x i64> %vec.ind1263, %broadcast.splat1266
  %341 = trunc <4 x i64> %340 to <4 x i32>
  %342 = mul <4 x i32> %broadcast.splat1268, %341
  %343 = add <4 x i32> %342, <i32 3, i32 3, i32 3, i32 3>
  %344 = urem <4 x i32> %343, <i32 1200, i32 1200, i32 1200, i32 1200>
  %345 = sitofp <4 x i32> %344 to <4 x double>
  %346 = fmul fast <4 x double> %345, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %347 = extractelement <4 x i64> %340, i32 0
  %348 = shl i64 %347, 3
  %349 = add nuw nsw i64 %348, %339
  %350 = getelementptr i8, i8* %call, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %346, <4 x double>* %351, align 8, !alias.scope !112, !noalias !114
  %index.next1260 = add i64 %index1259, 4
  %vec.ind.next1264 = add <4 x i64> %vec.ind1263, <i64 4, i64 4, i64 4, i64 4>
  %352 = icmp eq i64 %index.next1260, %334
  br i1 %352, label %polly.loop_exit888, label %vector.body1257, !llvm.loop !117

polly.loop_exit888:                               ; preds = %vector.body1257, %polly.loop_header886
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1215.not = icmp eq i64 %polly.indvar883, %332
  br i1 %exitcond1215.not, label %polly.loop_exit882, label %polly.loop_header880

polly.loop_header886:                             ; preds = %polly.loop_header880, %polly.loop_header886
  %polly.indvar889 = phi i64 [ %polly.indvar_next890, %polly.loop_header886 ], [ 0, %polly.loop_header880 ]
  %353 = add nuw nsw i64 %polly.indvar889, %335
  %354 = trunc i64 %353 to i32
  %355 = mul i32 %354, %338
  %356 = add i32 %355, 3
  %357 = urem i32 %356, 1200
  %p_conv31.i = sitofp i32 %357 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %358 = shl i64 %353, 3
  %359 = add nuw nsw i64 %358, %339
  %scevgep892 = getelementptr i8, i8* %call, i64 %359
  %scevgep892893 = bitcast i8* %scevgep892 to double*
  store double %p_div33.i, double* %scevgep892893, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next890 = add nuw nsw i64 %polly.indvar889, 1
  %exitcond1211.not = icmp eq i64 %polly.indvar889, %336
  br i1 %exitcond1211.not, label %polly.loop_exit888, label %polly.loop_header886, !llvm.loop !118

polly.loop_header895:                             ; preds = %polly.loop_exit876, %polly.loop_exit903
  %indvars.iv1202 = phi i64 [ %indvars.iv.next1203, %polly.loop_exit903 ], [ 0, %polly.loop_exit876 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_exit876 ]
  %smin1204 = call i64 @llvm.smin.i64(i64 %indvars.iv1202, i64 -1168)
  %360 = shl nsw i64 %polly.indvar898, 5
  %361 = add nsw i64 %smin1204, 1199
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1203 = add nsw i64 %indvars.iv1202, -32
  %exitcond1207.not = icmp eq i64 %polly.indvar_next899, 38
  br i1 %exitcond1207.not, label %polly.loop_header921, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %indvars.iv1198 = phi i64 [ %indvars.iv.next1199, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %362 = mul nsw i64 %polly.indvar904, -32
  %smin1272 = call i64 @llvm.smin.i64(i64 %362, i64 -968)
  %363 = add nsw i64 %smin1272, 1000
  %smin1200 = call i64 @llvm.smin.i64(i64 %indvars.iv1198, i64 -968)
  %364 = shl nsw i64 %polly.indvar904, 5
  %365 = add nsw i64 %smin1200, 999
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1199 = add nsw i64 %indvars.iv1198, -32
  %exitcond1206.not = icmp eq i64 %polly.indvar_next905, 32
  br i1 %exitcond1206.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %polly.indvar910 = phi i64 [ 0, %polly.loop_header901 ], [ %polly.indvar_next911, %polly.loop_exit915 ]
  %366 = add nuw nsw i64 %polly.indvar910, %360
  %367 = trunc i64 %366 to i32
  %368 = mul nuw nsw i64 %366, 8000
  %min.iters.check1273 = icmp eq i64 %363, 0
  br i1 %min.iters.check1273, label %polly.loop_header913, label %vector.ph1274

vector.ph1274:                                    ; preds = %polly.loop_header907
  %broadcast.splatinsert1283 = insertelement <4 x i64> poison, i64 %364, i32 0
  %broadcast.splat1284 = shufflevector <4 x i64> %broadcast.splatinsert1283, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1285 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1286 = shufflevector <4 x i32> %broadcast.splatinsert1285, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1274
  %index1277 = phi i64 [ 0, %vector.ph1274 ], [ %index.next1278, %vector.body1271 ]
  %vec.ind1281 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1274 ], [ %vec.ind.next1282, %vector.body1271 ]
  %369 = add nuw nsw <4 x i64> %vec.ind1281, %broadcast.splat1284
  %370 = trunc <4 x i64> %369 to <4 x i32>
  %371 = mul <4 x i32> %broadcast.splat1286, %370
  %372 = add <4 x i32> %371, <i32 2, i32 2, i32 2, i32 2>
  %373 = urem <4 x i32> %372, <i32 1000, i32 1000, i32 1000, i32 1000>
  %374 = sitofp <4 x i32> %373 to <4 x double>
  %375 = fmul fast <4 x double> %374, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %376 = extractelement <4 x i64> %369, i32 0
  %377 = shl i64 %376, 3
  %378 = add nuw nsw i64 %377, %368
  %379 = getelementptr i8, i8* %call2, i64 %378
  %380 = bitcast i8* %379 to <4 x double>*
  store <4 x double> %375, <4 x double>* %380, align 8, !alias.scope !116, !noalias !119
  %index.next1278 = add i64 %index1277, 4
  %vec.ind.next1282 = add <4 x i64> %vec.ind1281, <i64 4, i64 4, i64 4, i64 4>
  %381 = icmp eq i64 %index.next1278, %363
  br i1 %381, label %polly.loop_exit915, label %vector.body1271, !llvm.loop !120

polly.loop_exit915:                               ; preds = %vector.body1271, %polly.loop_header913
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1205.not = icmp eq i64 %polly.indvar910, %361
  br i1 %exitcond1205.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_header907, %polly.loop_header913
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_header913 ], [ 0, %polly.loop_header907 ]
  %382 = add nuw nsw i64 %polly.indvar916, %364
  %383 = trunc i64 %382 to i32
  %384 = mul i32 %383, %367
  %385 = add i32 %384, 2
  %386 = urem i32 %385, 1000
  %p_conv10.i = sitofp i32 %386 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %387 = shl i64 %382, 3
  %388 = add nuw nsw i64 %387, %368
  %scevgep919 = getelementptr i8, i8* %call2, i64 %388
  %scevgep919920 = bitcast i8* %scevgep919 to double*
  store double %p_div12.i, double* %scevgep919920, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1201.not = icmp eq i64 %polly.indvar916, %365
  br i1 %exitcond1201.not, label %polly.loop_exit915, label %polly.loop_header913, !llvm.loop !121

polly.loop_header921:                             ; preds = %polly.loop_exit903, %polly.loop_exit929
  %indvars.iv1192 = phi i64 [ %indvars.iv.next1193, %polly.loop_exit929 ], [ 0, %polly.loop_exit903 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_exit903 ]
  %smin1194 = call i64 @llvm.smin.i64(i64 %indvars.iv1192, i64 -1168)
  %389 = shl nsw i64 %polly.indvar924, 5
  %390 = add nsw i64 %smin1194, 1199
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1193 = add nsw i64 %indvars.iv1192, -32
  %exitcond1197.not = icmp eq i64 %polly.indvar_next925, 38
  br i1 %exitcond1197.not, label %init_array.exit, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %polly.loop_exit935 ], [ 0, %polly.loop_header921 ]
  %polly.indvar930 = phi i64 [ %polly.indvar_next931, %polly.loop_exit935 ], [ 0, %polly.loop_header921 ]
  %391 = mul nsw i64 %polly.indvar930, -32
  %smin1290 = call i64 @llvm.smin.i64(i64 %391, i64 -968)
  %392 = add nsw i64 %smin1290, 1000
  %smin1190 = call i64 @llvm.smin.i64(i64 %indvars.iv1188, i64 -968)
  %393 = shl nsw i64 %polly.indvar930, 5
  %394 = add nsw i64 %smin1190, 999
  br label %polly.loop_header933

polly.loop_exit935:                               ; preds = %polly.loop_exit941
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %indvars.iv.next1189 = add nsw i64 %indvars.iv1188, -32
  %exitcond1196.not = icmp eq i64 %polly.indvar_next931, 32
  br i1 %exitcond1196.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_exit941, %polly.loop_header927
  %polly.indvar936 = phi i64 [ 0, %polly.loop_header927 ], [ %polly.indvar_next937, %polly.loop_exit941 ]
  %395 = add nuw nsw i64 %polly.indvar936, %389
  %396 = trunc i64 %395 to i32
  %397 = mul nuw nsw i64 %395, 8000
  %min.iters.check1291 = icmp eq i64 %392, 0
  br i1 %min.iters.check1291, label %polly.loop_header939, label %vector.ph1292

vector.ph1292:                                    ; preds = %polly.loop_header933
  %broadcast.splatinsert1301 = insertelement <4 x i64> poison, i64 %393, i32 0
  %broadcast.splat1302 = shufflevector <4 x i64> %broadcast.splatinsert1301, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1303 = insertelement <4 x i32> poison, i32 %396, i32 0
  %broadcast.splat1304 = shufflevector <4 x i32> %broadcast.splatinsert1303, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1292
  %index1295 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1296, %vector.body1289 ]
  %vec.ind1299 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1292 ], [ %vec.ind.next1300, %vector.body1289 ]
  %398 = add nuw nsw <4 x i64> %vec.ind1299, %broadcast.splat1302
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat1304, %399
  %401 = add <4 x i32> %400, <i32 1, i32 1, i32 1, i32 1>
  %402 = urem <4 x i32> %401, <i32 1200, i32 1200, i32 1200, i32 1200>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add nuw nsw i64 %406, %397
  %408 = getelementptr i8, i8* %call1, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !115, !noalias !122
  %index.next1296 = add i64 %index1295, 4
  %vec.ind.next1300 = add <4 x i64> %vec.ind1299, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next1296, %392
  br i1 %410, label %polly.loop_exit941, label %vector.body1289, !llvm.loop !123

polly.loop_exit941:                               ; preds = %vector.body1289, %polly.loop_header939
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1195.not = icmp eq i64 %polly.indvar936, %390
  br i1 %exitcond1195.not, label %polly.loop_exit935, label %polly.loop_header933

polly.loop_header939:                             ; preds = %polly.loop_header933, %polly.loop_header939
  %polly.indvar942 = phi i64 [ %polly.indvar_next943, %polly.loop_header939 ], [ 0, %polly.loop_header933 ]
  %411 = add nuw nsw i64 %polly.indvar942, %393
  %412 = trunc i64 %411 to i32
  %413 = mul i32 %412, %396
  %414 = add i32 %413, 1
  %415 = urem i32 %414, 1200
  %p_conv.i = sitofp i32 %415 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %416 = shl i64 %411, 3
  %417 = add nuw nsw i64 %416, %397
  %scevgep946 = getelementptr i8, i8* %call1, i64 %417
  %scevgep946947 = bitcast i8* %scevgep946 to double*
  store double %p_div.i, double* %scevgep946947, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next943 = add nuw nsw i64 %polly.indvar942, 1
  %exitcond1191.not = icmp eq i64 %polly.indvar942, %394
  br i1 %exitcond1191.not, label %polly.loop_exit941, label %polly.loop_header939, !llvm.loop !124
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

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
!26 = !{!"llvm.loop.tile.size", i32 100}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 16}
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
!51 = !{!"llvm.loop.tile.size", i32 128}
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
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !81, !13}
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
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !81, !13}
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
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !81, !13}
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
