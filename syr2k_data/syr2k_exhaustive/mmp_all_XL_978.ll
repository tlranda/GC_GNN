; ModuleID = 'syr2k_exhaustive/mmp_all_XL_978.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_978.c"
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
  %scevgep1224 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1223 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1222 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1221 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1221, %scevgep1224
  %bound1 = icmp ult i8* %scevgep1223, %scevgep1222
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
  br i1 %exitcond18.not.i, label %vector.ph1228, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1228:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1235 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1236 = shufflevector <4 x i64> %broadcast.splatinsert1235, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1228
  %index1229 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1230, %vector.body1227 ]
  %vec.ind1233 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1228 ], [ %vec.ind.next1234, %vector.body1227 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1233, %broadcast.splat1236
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv7.i, i64 %index1229
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1230 = add i64 %index1229, 4
  %vec.ind.next1234 = add <4 x i64> %vec.ind1233, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1230, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1227, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1227
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1228, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit923
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1291 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1291, label %for.body3.i46.preheader1755, label %vector.ph1292

vector.ph1292:                                    ; preds = %for.body3.i46.preheader
  %n.vec1294 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1292
  %index1295 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1296, %vector.body1290 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %index1295
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1296 = add i64 %index1295, 4
  %46 = icmp eq i64 %index.next1296, %n.vec1294
  br i1 %46, label %middle.block1288, label %vector.body1290, !llvm.loop !18

middle.block1288:                                 ; preds = %vector.body1290
  %cmp.n1298 = icmp eq i64 %indvars.iv21.i, %n.vec1294
  br i1 %cmp.n1298, label %for.inc6.i, label %for.body3.i46.preheader1755

for.body3.i46.preheader1755:                      ; preds = %for.body3.i46.preheader, %middle.block1288
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1294, %middle.block1288 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1755, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1755 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1288, %for.cond1.preheader.i45
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
  %min.iters.check1442 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1442, label %for.body3.i60.preheader1752, label %vector.ph1443

vector.ph1443:                                    ; preds = %for.body3.i60.preheader
  %n.vec1445 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1441

vector.body1441:                                  ; preds = %vector.body1441, %vector.ph1443
  %index1446 = phi i64 [ 0, %vector.ph1443 ], [ %index.next1447, %vector.body1441 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %index1446
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1450 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1450, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1447 = add i64 %index1446, 4
  %57 = icmp eq i64 %index.next1447, %n.vec1445
  br i1 %57, label %middle.block1439, label %vector.body1441, !llvm.loop !64

middle.block1439:                                 ; preds = %vector.body1441
  %cmp.n1449 = icmp eq i64 %indvars.iv21.i52, %n.vec1445
  br i1 %cmp.n1449, label %for.inc6.i63, label %for.body3.i60.preheader1752

for.body3.i60.preheader1752:                      ; preds = %for.body3.i60.preheader, %middle.block1439
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1445, %middle.block1439 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1752, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1752 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1439, %for.cond1.preheader.i54
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
  %min.iters.check1596 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1596, label %for.body3.i99.preheader1749, label %vector.ph1597

vector.ph1597:                                    ; preds = %for.body3.i99.preheader
  %n.vec1599 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1595

vector.body1595:                                  ; preds = %vector.body1595, %vector.ph1597
  %index1600 = phi i64 [ 0, %vector.ph1597 ], [ %index.next1601, %vector.body1595 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %index1600
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1604 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1604, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1601 = add i64 %index1600, 4
  %68 = icmp eq i64 %index.next1601, %n.vec1599
  br i1 %68, label %middle.block1593, label %vector.body1595, !llvm.loop !66

middle.block1593:                                 ; preds = %vector.body1595
  %cmp.n1603 = icmp eq i64 %indvars.iv21.i91, %n.vec1599
  br i1 %cmp.n1603, label %for.inc6.i102, label %for.body3.i99.preheader1749

for.body3.i99.preheader1749:                      ; preds = %for.body3.i99.preheader, %middle.block1593
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1599, %middle.block1593 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1749, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1749 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1593, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1608 = phi i64 [ %indvar.next1609, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1608, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1610 = icmp ult i64 %88, 4
  br i1 %min.iters.check1610, label %polly.loop_header192.preheader, label %vector.ph1611

vector.ph1611:                                    ; preds = %polly.loop_header
  %n.vec1613 = and i64 %88, -4
  br label %vector.body1607

vector.body1607:                                  ; preds = %vector.body1607, %vector.ph1611
  %index1614 = phi i64 [ 0, %vector.ph1611 ], [ %index.next1615, %vector.body1607 ]
  %90 = shl nuw nsw i64 %index1614, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1618 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1618, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1615 = add i64 %index1614, 4
  %95 = icmp eq i64 %index.next1615, %n.vec1613
  br i1 %95, label %middle.block1605, label %vector.body1607, !llvm.loop !79

middle.block1605:                                 ; preds = %vector.body1607
  %cmp.n1617 = icmp eq i64 %88, %n.vec1613
  br i1 %cmp.n1617, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1605
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1613, %middle.block1605 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1605
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1609 = add i64 %indvar1608, 1
  br i1 %exitcond1109.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  %scevgep1651 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1652 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1686 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1687 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1721 = getelementptr i8, i8* %malloccall, i64 8
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
  %exitcond1108.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1108.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = shl nsw i64 %polly.indvar203, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next204, 250
  br i1 %exitcond1107.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit230 ], [ 2, %polly.loop_header200 ]
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %101 = mul nsw i64 %polly.indvar209, -32
  %102 = add nuw i64 %polly.indvar209, 2
  %103 = udiv i64 %102, 3
  %104 = mul nuw nsw i64 %103, 96
  %105 = add i64 %101, %104
  %106 = shl nuw nsw i64 %polly.indvar209, 5
  %107 = sub nsw i64 %106, %104
  %108 = shl nuw nsw i64 %polly.indvar209, 11
  %109 = mul nsw i64 %polly.indvar209, -32
  %110 = add nuw i64 %polly.indvar209, 2
  %111 = udiv i64 %110, 3
  %112 = mul nuw nsw i64 %111, 96
  %113 = add i64 %109, %112
  %114 = mul nuw nsw i64 %polly.indvar209, 288
  %115 = sub nsw i64 %114, %112
  %116 = or i64 %108, 8
  %117 = shl nuw nsw i64 %polly.indvar209, 5
  %118 = sub nsw i64 %117, %112
  %119 = mul nsw i64 %polly.indvar209, -32
  %120 = add nuw i64 %polly.indvar209, 2
  %121 = udiv i64 %120, 3
  %122 = mul nuw nsw i64 %121, 96
  %123 = add i64 %119, %122
  %124 = shl nuw nsw i64 %polly.indvar209, 5
  %125 = sub nsw i64 %124, %122
  %126 = shl nuw nsw i64 %polly.indvar209, 11
  %127 = mul nsw i64 %polly.indvar209, -32
  %128 = add nuw i64 %polly.indvar209, 2
  %129 = udiv i64 %128, 3
  %130 = mul nuw nsw i64 %129, 96
  %131 = add i64 %127, %130
  %132 = mul nuw nsw i64 %polly.indvar209, 288
  %133 = sub nsw i64 %132, %130
  %134 = or i64 %126, 8
  %135 = shl nuw nsw i64 %polly.indvar209, 5
  %136 = sub nsw i64 %135, %130
  %137 = mul nsw i64 %polly.indvar209, -32
  %138 = add nuw i64 %polly.indvar209, 2
  %139 = udiv i64 %138, 3
  %140 = mul nuw nsw i64 %139, 96
  %141 = add i64 %137, %140
  %142 = shl nuw nsw i64 %polly.indvar209, 5
  %143 = sub nsw i64 %142, %140
  %144 = shl nuw nsw i64 %polly.indvar209, 11
  %145 = mul nsw i64 %polly.indvar209, -32
  %146 = add nuw i64 %polly.indvar209, 2
  %147 = udiv i64 %146, 3
  %148 = mul nuw nsw i64 %147, 96
  %149 = add i64 %145, %148
  %150 = mul nuw nsw i64 %polly.indvar209, 288
  %151 = sub nsw i64 %150, %148
  %152 = or i64 %144, 8
  %153 = shl nuw nsw i64 %polly.indvar209, 5
  %154 = sub nsw i64 %153, %148
  %155 = mul nsw i64 %polly.indvar209, -32
  %156 = add nuw i64 %polly.indvar209, 2
  %157 = udiv i64 %156, 3
  %158 = mul nuw nsw i64 %157, 96
  %159 = add i64 %155, %158
  %160 = shl nuw nsw i64 %polly.indvar209, 5
  %161 = sub nsw i64 %160, %158
  %162 = udiv i64 %indvars.iv1094, 3
  %163 = mul nuw nsw i64 %162, 96
  %164 = add i64 %indvars.iv1092, %163
  %165 = sub nsw i64 %indvars.iv1098, %163
  %166 = mul nsw i64 %polly.indvar209, -256
  %167 = shl nsw i64 %polly.indvar209, 8
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -32
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 1
  %indvars.iv.next1099 = add nuw nsw i64 %indvars.iv1098, 32
  %exitcond1106.not = icmp eq i64 %polly.indvar_next210, 5
  br i1 %exitcond1106.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %168 = add nuw nsw i64 %polly.indvar221, %167
  %polly.access.mul.call2225 = mul nuw nsw i64 %168, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %97, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit220.3
  %indvar1622 = phi i64 [ %indvar.next1623, %polly.loop_exit267 ], [ 0, %polly.loop_exit220.3 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit267 ], [ %165, %polly.loop_exit220.3 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit267 ], [ %164, %polly.loop_exit220.3 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %721, %polly.loop_exit220.3 ]
  %169 = mul nsw i64 %indvar1622, -96
  %170 = add i64 %105, %169
  %smax1730 = call i64 @llvm.smax.i64(i64 %170, i64 0)
  %171 = mul nuw nsw i64 %indvar1622, 96
  %172 = add i64 %107, %171
  %173 = add i64 %smax1730, %172
  %174 = mul nsw i64 %indvar1622, -96
  %175 = add i64 %113, %174
  %smax1714 = call i64 @llvm.smax.i64(i64 %175, i64 0)
  %176 = mul nuw nsw i64 %indvar1622, 96
  %177 = add i64 %115, %176
  %178 = add i64 %smax1714, %177
  %179 = mul nsw i64 %178, 9600
  %180 = add i64 %108, %179
  %181 = add i64 %116, %179
  %182 = add i64 %118, %176
  %183 = add i64 %smax1714, %182
  %184 = mul nsw i64 %indvar1622, -96
  %185 = add i64 %123, %184
  %smax1696 = call i64 @llvm.smax.i64(i64 %185, i64 0)
  %186 = mul nuw nsw i64 %indvar1622, 96
  %187 = add i64 %125, %186
  %188 = add i64 %smax1696, %187
  %189 = mul nsw i64 %indvar1622, -96
  %190 = add i64 %131, %189
  %smax1679 = call i64 @llvm.smax.i64(i64 %190, i64 0)
  %191 = mul nuw nsw i64 %indvar1622, 96
  %192 = add i64 %133, %191
  %193 = add i64 %smax1679, %192
  %194 = mul nsw i64 %193, 9600
  %195 = add i64 %126, %194
  %196 = add i64 %134, %194
  %197 = add i64 %136, %191
  %198 = add i64 %smax1679, %197
  %199 = mul nsw i64 %indvar1622, -96
  %200 = add i64 %141, %199
  %smax1661 = call i64 @llvm.smax.i64(i64 %200, i64 0)
  %201 = mul nuw nsw i64 %indvar1622, 96
  %202 = add i64 %143, %201
  %203 = add i64 %smax1661, %202
  %204 = mul nsw i64 %indvar1622, -96
  %205 = add i64 %149, %204
  %smax1644 = call i64 @llvm.smax.i64(i64 %205, i64 0)
  %206 = mul nuw nsw i64 %indvar1622, 96
  %207 = add i64 %151, %206
  %208 = add i64 %smax1644, %207
  %209 = mul nsw i64 %208, 9600
  %210 = add i64 %144, %209
  %211 = add i64 %152, %209
  %212 = add i64 %154, %206
  %213 = add i64 %smax1644, %212
  %214 = mul nsw i64 %indvar1622, -96
  %215 = add i64 %159, %214
  %smax1624 = call i64 @llvm.smax.i64(i64 %215, i64 0)
  %216 = mul nuw nsw i64 %indvar1622, 96
  %217 = add i64 %161, %216
  %218 = add i64 %smax1624, %217
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1096, i64 0)
  %219 = add i64 %smax, %indvars.iv1100
  %220 = mul nsw i64 %polly.indvar231, 96
  %221 = add nsw i64 %220, %166
  %222 = add nsw i64 %221, -1
  %.inv = icmp sgt i64 %221, 255
  %223 = select i1 %.inv, i64 255, i64 %222
  %polly.loop_guard = icmp sgt i64 %223, -1
  %224 = icmp sgt i64 %221, 0
  %225 = select i1 %224, i64 %221, i64 0
  %226 = add nsw i64 %221, 95
  %227 = icmp slt i64 %718, %226
  %228 = select i1 %227, i64 %718, i64 %226
  %polly.loop_guard254.not = icmp sgt i64 %225, %228
  br i1 %polly.loop_guard, label %polly.loop_header240.us, label %polly.loop_header228.split

polly.loop_header240.us:                          ; preds = %polly.loop_header228, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header228 ]
  %229 = add nuw nsw i64 %polly.indvar243.us, %167
  %polly.access.mul.call1247.us = mul nuw nsw i64 %229, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %97, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar243.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar243.us, %223
  br i1 %exitcond1090.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %225, %polly.loop_exit242.loopexit.us ]
  %230 = add nuw nsw i64 %polly.indvar255.us, %167
  %polly.access.mul.call1259.us = mul nsw i64 %230, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %97, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %228
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_header240.us.1.preheader

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.1.preheader, label %polly.loop_header251.us

polly.loop_header240.us.1.preheader:              ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  br label %polly.loop_header240.us.1

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251

polly.loop_exit267:                               ; preds = %polly.loop_exit282.3, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp slt i64 %polly.indvar231, 12
  %indvars.iv.next1097 = add i64 %indvars.iv1096, -96
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 96
  %indvar.next1623 = add i64 %indvar1622, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header265.preheader:                   ; preds = %polly.loop_header251.3, %polly.loop_header251.us.3, %polly.loop_exit242.loopexit.us.3, %polly.loop_header228.split
  %231 = sub nsw i64 %167, %220
  %232 = icmp sgt i64 %231, 0
  %233 = select i1 %232, i64 %231, i64 0
  %234 = mul nsw i64 %polly.indvar231, -96
  %235 = icmp slt i64 %234, -1104
  %236 = select i1 %235, i64 %234, i64 -1104
  %237 = add nsw i64 %236, 1199
  %polly.loop_guard275.not = icmp sgt i64 %233, %237
  br i1 %polly.loop_guard275.not, label %polly.loop_exit267, label %polly.loop_header272

polly.loop_header251:                             ; preds = %polly.loop_header228.split, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %225, %polly.loop_header228.split ]
  %238 = add nuw nsw i64 %polly.indvar255, %167
  %polly.access.mul.call1259 = mul nsw i64 %238, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %97, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %228
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_header251.1

polly.loop_header272:                             ; preds = %polly.loop_header265.preheader, %polly.loop_exit282
  %indvar1715 = phi i64 [ %indvar.next1716, %polly.loop_exit282 ], [ 0, %polly.loop_header265.preheader ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit282 ], [ %219, %polly.loop_header265.preheader ]
  %polly.indvar276 = phi i64 [ %polly.indvar_next277, %polly.loop_exit282 ], [ %233, %polly.loop_header265.preheader ]
  %239 = add i64 %173, %indvar1715
  %smin1731 = call i64 @llvm.smin.i64(i64 %239, i64 255)
  %240 = add nsw i64 %smin1731, 1
  %241 = mul nuw nsw i64 %indvar1715, 9600
  %242 = add i64 %180, %241
  %scevgep1717 = getelementptr i8, i8* %call, i64 %242
  %243 = add i64 %181, %241
  %scevgep1718 = getelementptr i8, i8* %call, i64 %243
  %244 = add i64 %183, %indvar1715
  %smin1719 = call i64 @llvm.smin.i64(i64 %244, i64 255)
  %245 = shl nsw i64 %smin1719, 3
  %scevgep1720 = getelementptr i8, i8* %scevgep1718, i64 %245
  %scevgep1722 = getelementptr i8, i8* %scevgep1721, i64 %245
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1102, i64 255)
  %246 = add nsw i64 %polly.indvar276, %221
  %polly.loop_guard2831201 = icmp sgt i64 %246, -1
  br i1 %polly.loop_guard2831201, label %polly.loop_header280.preheader, label %polly.loop_exit282

polly.loop_header280.preheader:                   ; preds = %polly.loop_header272
  %247 = add nsw i64 %polly.indvar276, %220
  %polly.access.Packed_MemRef_call2293 = getelementptr double, double* %Packed_MemRef_call2, i64 %246
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call2293, align 8
  %polly.access.Packed_MemRef_call1301 = getelementptr double, double* %Packed_MemRef_call1, i64 %246
  %_p_scalar_302 = load double, double* %polly.access.Packed_MemRef_call1301, align 8
  %248 = mul i64 %247, 9600
  %min.iters.check1732 = icmp ult i64 %240, 4
  br i1 %min.iters.check1732, label %polly.loop_header280.preheader1747, label %vector.memcheck1713

vector.memcheck1713:                              ; preds = %polly.loop_header280.preheader
  %bound01723 = icmp ult i8* %scevgep1717, %scevgep1722
  %bound11724 = icmp ult i8* %malloccall, %scevgep1720
  %found.conflict1725 = and i1 %bound01723, %bound11724
  br i1 %found.conflict1725, label %polly.loop_header280.preheader1747, label %vector.ph1733

vector.ph1733:                                    ; preds = %vector.memcheck1713
  %n.vec1735 = and i64 %240, -4
  %broadcast.splatinsert1741 = insertelement <4 x double> poison, double %_p_scalar_294, i32 0
  %broadcast.splat1742 = shufflevector <4 x double> %broadcast.splatinsert1741, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1744 = insertelement <4 x double> poison, double %_p_scalar_302, i32 0
  %broadcast.splat1745 = shufflevector <4 x double> %broadcast.splatinsert1744, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1729

vector.body1729:                                  ; preds = %vector.body1729, %vector.ph1733
  %index1736 = phi i64 [ 0, %vector.ph1733 ], [ %index.next1737, %vector.body1729 ]
  %249 = add nuw nsw i64 %index1736, %167
  %250 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1736
  %251 = bitcast double* %250 to <4 x double>*
  %wide.load1740 = load <4 x double>, <4 x double>* %251, align 8, !alias.scope !84
  %252 = fmul fast <4 x double> %broadcast.splat1742, %wide.load1740
  %253 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1736
  %254 = bitcast double* %253 to <4 x double>*
  %wide.load1743 = load <4 x double>, <4 x double>* %254, align 8
  %255 = fmul fast <4 x double> %broadcast.splat1745, %wide.load1743
  %256 = shl i64 %249, 3
  %257 = add i64 %256, %248
  %258 = getelementptr i8, i8* %call, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  %wide.load1746 = load <4 x double>, <4 x double>* %259, align 8, !alias.scope !87, !noalias !89
  %260 = fadd fast <4 x double> %255, %252
  %261 = fmul fast <4 x double> %260, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %262 = fadd fast <4 x double> %261, %wide.load1746
  %263 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %262, <4 x double>* %263, align 8, !alias.scope !87, !noalias !89
  %index.next1737 = add i64 %index1736, 4
  %264 = icmp eq i64 %index.next1737, %n.vec1735
  br i1 %264, label %middle.block1727, label %vector.body1729, !llvm.loop !90

middle.block1727:                                 ; preds = %vector.body1729
  %cmp.n1739 = icmp eq i64 %240, %n.vec1735
  br i1 %cmp.n1739, label %polly.loop_exit282, label %polly.loop_header280.preheader1747

polly.loop_header280.preheader1747:               ; preds = %vector.memcheck1713, %polly.loop_header280.preheader, %middle.block1727
  %polly.indvar284.ph = phi i64 [ 0, %vector.memcheck1713 ], [ 0, %polly.loop_header280.preheader ], [ %n.vec1735, %middle.block1727 ]
  br label %polly.loop_header280

polly.loop_exit282:                               ; preds = %polly.loop_header280, %middle.block1727, %polly.loop_header272
  %polly.indvar_next277 = add nuw nsw i64 %polly.indvar276, 1
  %polly.loop_cond278.not.not = icmp slt i64 %polly.indvar276, %237
  %indvars.iv.next1103 = add i64 %indvars.iv1102, 1
  %indvar.next1716 = add i64 %indvar1715, 1
  br i1 %polly.loop_cond278.not.not, label %polly.loop_header272, label %polly.loop_header272.1

polly.loop_header280:                             ; preds = %polly.loop_header280.preheader1747, %polly.loop_header280
  %polly.indvar284 = phi i64 [ %polly.indvar_next285, %polly.loop_header280 ], [ %polly.indvar284.ph, %polly.loop_header280.preheader1747 ]
  %265 = add nuw nsw i64 %polly.indvar284, %167
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar284
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_294, %_p_scalar_290
  %polly.access.Packed_MemRef_call2297 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar284
  %_p_scalar_298 = load double, double* %polly.access.Packed_MemRef_call2297, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_302, %_p_scalar_298
  %266 = shl i64 %265, 3
  %267 = add i64 %266, %248
  %scevgep303 = getelementptr i8, i8* %call, i64 %267
  %scevgep303304 = bitcast i8* %scevgep303 to double*
  %_p_scalar_305 = load double, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_305
  store double %p_add42.i118, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285 = add nuw nsw i64 %polly.indvar284, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar284, %smin
  br i1 %exitcond1104.not, label %polly.loop_exit282, label %polly.loop_header280, !llvm.loop !91

polly.start308:                                   ; preds = %kernel_syr2k.exit
  %malloccall310 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall312 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header396

polly.exiting309:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall310)
  tail call void @free(i8* %malloccall312)
  br label %kernel_syr2k.exit90

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.start308
  %indvar1454 = phi i64 [ %indvar.next1455, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %268 = add i64 %indvar1454, 1
  %269 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %269
  %min.iters.check1456 = icmp ult i64 %268, 4
  br i1 %min.iters.check1456, label %polly.loop_header402.preheader, label %vector.ph1457

vector.ph1457:                                    ; preds = %polly.loop_header396
  %n.vec1459 = and i64 %268, -4
  br label %vector.body1453

vector.body1453:                                  ; preds = %vector.body1453, %vector.ph1457
  %index1460 = phi i64 [ 0, %vector.ph1457 ], [ %index.next1461, %vector.body1453 ]
  %270 = shl nuw nsw i64 %index1460, 3
  %271 = getelementptr i8, i8* %scevgep408, i64 %270
  %272 = bitcast i8* %271 to <4 x double>*
  %wide.load1464 = load <4 x double>, <4 x double>* %272, align 8, !alias.scope !92, !noalias !94
  %273 = fmul fast <4 x double> %wide.load1464, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %274 = bitcast i8* %271 to <4 x double>*
  store <4 x double> %273, <4 x double>* %274, align 8, !alias.scope !92, !noalias !94
  %index.next1461 = add i64 %index1460, 4
  %275 = icmp eq i64 %index.next1461, %n.vec1459
  br i1 %275, label %middle.block1451, label %vector.body1453, !llvm.loop !99

middle.block1451:                                 ; preds = %vector.body1453
  %cmp.n1463 = icmp eq i64 %268, %n.vec1459
  br i1 %cmp.n1463, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header396, %middle.block1451
  %polly.indvar405.ph = phi i64 [ 0, %polly.loop_header396 ], [ %n.vec1459, %middle.block1451 ]
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402, %middle.block1451
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next400, 1200
  %indvar.next1455 = add i64 %indvar1454, 1
  br i1 %exitcond1136.not, label %polly.loop_header412.preheader, label %polly.loop_header396

polly.loop_header412.preheader:                   ; preds = %polly.loop_exit404
  %Packed_MemRef_call1311 = bitcast i8* %malloccall310 to double*
  %Packed_MemRef_call2313 = bitcast i8* %malloccall312 to double*
  %scevgep1497 = getelementptr i8, i8* %malloccall310, i64 19200
  %scevgep1498 = getelementptr i8, i8* %malloccall310, i64 19208
  %scevgep1532 = getelementptr i8, i8* %malloccall310, i64 9600
  %scevgep1533 = getelementptr i8, i8* %malloccall310, i64 9608
  %scevgep1567 = getelementptr i8, i8* %malloccall310, i64 8
  br label %polly.loop_header412

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_header402
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_header402 ], [ %polly.indvar405.ph, %polly.loop_header402.preheader ]
  %276 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %276
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1135.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !100

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_header412.preheader ]
  %277 = shl nsw i64 %polly.indvar415, 2
  %278 = or i64 %277, 1
  %279 = or i64 %277, 2
  %280 = or i64 %277, 3
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next416, 250
  br i1 %exitcond1134.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit443 ], [ 2, %polly.loop_header412 ]
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %281 = mul nsw i64 %polly.indvar421, -32
  %282 = add nuw i64 %polly.indvar421, 2
  %283 = udiv i64 %282, 3
  %284 = mul nuw nsw i64 %283, 96
  %285 = add i64 %281, %284
  %286 = shl nuw nsw i64 %polly.indvar421, 5
  %287 = sub nsw i64 %286, %284
  %288 = shl nuw nsw i64 %polly.indvar421, 11
  %289 = mul nsw i64 %polly.indvar421, -32
  %290 = add nuw i64 %polly.indvar421, 2
  %291 = udiv i64 %290, 3
  %292 = mul nuw nsw i64 %291, 96
  %293 = add i64 %289, %292
  %294 = mul nuw nsw i64 %polly.indvar421, 288
  %295 = sub nsw i64 %294, %292
  %296 = or i64 %288, 8
  %297 = shl nuw nsw i64 %polly.indvar421, 5
  %298 = sub nsw i64 %297, %292
  %299 = mul nsw i64 %polly.indvar421, -32
  %300 = add nuw i64 %polly.indvar421, 2
  %301 = udiv i64 %300, 3
  %302 = mul nuw nsw i64 %301, 96
  %303 = add i64 %299, %302
  %304 = shl nuw nsw i64 %polly.indvar421, 5
  %305 = sub nsw i64 %304, %302
  %306 = shl nuw nsw i64 %polly.indvar421, 11
  %307 = mul nsw i64 %polly.indvar421, -32
  %308 = add nuw i64 %polly.indvar421, 2
  %309 = udiv i64 %308, 3
  %310 = mul nuw nsw i64 %309, 96
  %311 = add i64 %307, %310
  %312 = mul nuw nsw i64 %polly.indvar421, 288
  %313 = sub nsw i64 %312, %310
  %314 = or i64 %306, 8
  %315 = shl nuw nsw i64 %polly.indvar421, 5
  %316 = sub nsw i64 %315, %310
  %317 = mul nsw i64 %polly.indvar421, -32
  %318 = add nuw i64 %polly.indvar421, 2
  %319 = udiv i64 %318, 3
  %320 = mul nuw nsw i64 %319, 96
  %321 = add i64 %317, %320
  %322 = shl nuw nsw i64 %polly.indvar421, 5
  %323 = sub nsw i64 %322, %320
  %324 = shl nuw nsw i64 %polly.indvar421, 11
  %325 = mul nsw i64 %polly.indvar421, -32
  %326 = add nuw i64 %polly.indvar421, 2
  %327 = udiv i64 %326, 3
  %328 = mul nuw nsw i64 %327, 96
  %329 = add i64 %325, %328
  %330 = mul nuw nsw i64 %polly.indvar421, 288
  %331 = sub nsw i64 %330, %328
  %332 = or i64 %324, 8
  %333 = shl nuw nsw i64 %polly.indvar421, 5
  %334 = sub nsw i64 %333, %328
  %335 = mul nsw i64 %polly.indvar421, -32
  %336 = add nuw i64 %polly.indvar421, 2
  %337 = udiv i64 %336, 3
  %338 = mul nuw nsw i64 %337, 96
  %339 = add i64 %335, %338
  %340 = shl nuw nsw i64 %polly.indvar421, 5
  %341 = sub nsw i64 %340, %338
  %342 = udiv i64 %indvars.iv1119, 3
  %343 = mul nuw nsw i64 %342, 96
  %344 = add i64 %indvars.iv1117, %343
  %345 = sub nsw i64 %indvars.iv1124, %343
  %346 = mul nsw i64 %polly.indvar421, -256
  %347 = shl nsw i64 %polly.indvar421, 8
  br label %polly.loop_header430

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -256
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -32
  %indvars.iv.next1120 = add nuw nsw i64 %indvars.iv1119, 1
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next422, 5
  br i1 %exitcond1133.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header418
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %348 = add nuw nsw i64 %polly.indvar433, %347
  %polly.access.mul.call2437 = mul nuw nsw i64 %348, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %277, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !96, !noalias !101
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.indvar433
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1110
  br i1 %exitcond1112.not, label %polly.loop_header430.1, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit432.3
  %indvar1468 = phi i64 [ %indvar.next1469, %polly.loop_exit482 ], [ 0, %polly.loop_exit432.3 ]
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit482 ], [ %345, %polly.loop_exit432.3 ]
  %indvars.iv1121 = phi i64 [ %indvars.iv.next1122, %polly.loop_exit482 ], [ %344, %polly.loop_exit432.3 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %822, %polly.loop_exit432.3 ]
  %349 = mul nsw i64 %indvar1468, -96
  %350 = add i64 %285, %349
  %smax1576 = call i64 @llvm.smax.i64(i64 %350, i64 0)
  %351 = mul nuw nsw i64 %indvar1468, 96
  %352 = add i64 %287, %351
  %353 = add i64 %smax1576, %352
  %354 = mul nsw i64 %indvar1468, -96
  %355 = add i64 %293, %354
  %smax1560 = call i64 @llvm.smax.i64(i64 %355, i64 0)
  %356 = mul nuw nsw i64 %indvar1468, 96
  %357 = add i64 %295, %356
  %358 = add i64 %smax1560, %357
  %359 = mul nsw i64 %358, 9600
  %360 = add i64 %288, %359
  %361 = add i64 %296, %359
  %362 = add i64 %298, %356
  %363 = add i64 %smax1560, %362
  %364 = mul nsw i64 %indvar1468, -96
  %365 = add i64 %303, %364
  %smax1542 = call i64 @llvm.smax.i64(i64 %365, i64 0)
  %366 = mul nuw nsw i64 %indvar1468, 96
  %367 = add i64 %305, %366
  %368 = add i64 %smax1542, %367
  %369 = mul nsw i64 %indvar1468, -96
  %370 = add i64 %311, %369
  %smax1525 = call i64 @llvm.smax.i64(i64 %370, i64 0)
  %371 = mul nuw nsw i64 %indvar1468, 96
  %372 = add i64 %313, %371
  %373 = add i64 %smax1525, %372
  %374 = mul nsw i64 %373, 9600
  %375 = add i64 %306, %374
  %376 = add i64 %314, %374
  %377 = add i64 %316, %371
  %378 = add i64 %smax1525, %377
  %379 = mul nsw i64 %indvar1468, -96
  %380 = add i64 %321, %379
  %smax1507 = call i64 @llvm.smax.i64(i64 %380, i64 0)
  %381 = mul nuw nsw i64 %indvar1468, 96
  %382 = add i64 %323, %381
  %383 = add i64 %smax1507, %382
  %384 = mul nsw i64 %indvar1468, -96
  %385 = add i64 %329, %384
  %smax1490 = call i64 @llvm.smax.i64(i64 %385, i64 0)
  %386 = mul nuw nsw i64 %indvar1468, 96
  %387 = add i64 %331, %386
  %388 = add i64 %smax1490, %387
  %389 = mul nsw i64 %388, 9600
  %390 = add i64 %324, %389
  %391 = add i64 %332, %389
  %392 = add i64 %334, %386
  %393 = add i64 %smax1490, %392
  %394 = mul nsw i64 %indvar1468, -96
  %395 = add i64 %339, %394
  %smax1470 = call i64 @llvm.smax.i64(i64 %395, i64 0)
  %396 = mul nuw nsw i64 %indvar1468, 96
  %397 = add i64 %341, %396
  %398 = add i64 %smax1470, %397
  %smax1123 = call i64 @llvm.smax.i64(i64 %indvars.iv1121, i64 0)
  %399 = add i64 %smax1123, %indvars.iv1126
  %400 = mul nsw i64 %polly.indvar444, 96
  %401 = add nsw i64 %400, %346
  %402 = add nsw i64 %401, -1
  %.inv942 = icmp sgt i64 %401, 255
  %403 = select i1 %.inv942, i64 255, i64 %402
  %polly.loop_guard457 = icmp sgt i64 %403, -1
  %404 = icmp sgt i64 %401, 0
  %405 = select i1 %404, i64 %401, i64 0
  %406 = add nsw i64 %401, 95
  %407 = icmp slt i64 %819, %406
  %408 = select i1 %407, i64 %819, i64 %406
  %polly.loop_guard469.not = icmp sgt i64 %405, %408
  br i1 %polly.loop_guard457, label %polly.loop_header454.us, label %polly.loop_header441.split

polly.loop_header454.us:                          ; preds = %polly.loop_header441, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header441 ]
  %409 = add nuw nsw i64 %polly.indvar458.us, %347
  %polly.access.mul.call1462.us = mul nuw nsw i64 %409, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %277, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar458.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar458.us, %403
  br i1 %exitcond1115.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %405, %polly.loop_exit456.loopexit.us ]
  %410 = add nuw nsw i64 %polly.indvar470.us, %347
  %polly.access.mul.call1474.us = mul nsw i64 %410, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %277, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar470.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %408
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_header454.us.1.preheader

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.1.preheader, label %polly.loop_header466.us

polly.loop_header454.us.1.preheader:              ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  br label %polly.loop_header454.us.1

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466

polly.loop_exit482:                               ; preds = %polly.loop_exit497.3, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp slt i64 %polly.indvar444, 12
  %indvars.iv.next1122 = add i64 %indvars.iv1121, -96
  %indvars.iv.next1127 = add i64 %indvars.iv1126, 96
  %indvar.next1469 = add i64 %indvar1468, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header480.preheader:                   ; preds = %polly.loop_header466.3, %polly.loop_header466.us.3, %polly.loop_exit456.loopexit.us.3, %polly.loop_header441.split
  %411 = sub nsw i64 %347, %400
  %412 = icmp sgt i64 %411, 0
  %413 = select i1 %412, i64 %411, i64 0
  %414 = mul nsw i64 %polly.indvar444, -96
  %415 = icmp slt i64 %414, -1104
  %416 = select i1 %415, i64 %414, i64 -1104
  %417 = add nsw i64 %416, 1199
  %polly.loop_guard490.not = icmp sgt i64 %413, %417
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header487

polly.loop_header466:                             ; preds = %polly.loop_header441.split, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %405, %polly.loop_header441.split ]
  %418 = add nuw nsw i64 %polly.indvar470, %347
  %polly.access.mul.call1474 = mul nsw i64 %418, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %277, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar470
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %408
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_header466.1

polly.loop_header487:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit497
  %indvar1561 = phi i64 [ %indvar.next1562, %polly.loop_exit497 ], [ 0, %polly.loop_header480.preheader ]
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit497 ], [ %399, %polly.loop_header480.preheader ]
  %polly.indvar491 = phi i64 [ %polly.indvar_next492, %polly.loop_exit497 ], [ %413, %polly.loop_header480.preheader ]
  %419 = add i64 %353, %indvar1561
  %smin1577 = call i64 @llvm.smin.i64(i64 %419, i64 255)
  %420 = add nsw i64 %smin1577, 1
  %421 = mul nuw nsw i64 %indvar1561, 9600
  %422 = add i64 %360, %421
  %scevgep1563 = getelementptr i8, i8* %call, i64 %422
  %423 = add i64 %361, %421
  %scevgep1564 = getelementptr i8, i8* %call, i64 %423
  %424 = add i64 %363, %indvar1561
  %smin1565 = call i64 @llvm.smin.i64(i64 %424, i64 255)
  %425 = shl nsw i64 %smin1565, 3
  %scevgep1566 = getelementptr i8, i8* %scevgep1564, i64 %425
  %scevgep1568 = getelementptr i8, i8* %scevgep1567, i64 %425
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 255)
  %426 = add nsw i64 %polly.indvar491, %401
  %polly.loop_guard4981205 = icmp sgt i64 %426, -1
  br i1 %polly.loop_guard4981205, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %427 = add nsw i64 %polly.indvar491, %400
  %polly.access.Packed_MemRef_call2313508 = getelementptr double, double* %Packed_MemRef_call2313, i64 %426
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2313508, align 8
  %polly.access.Packed_MemRef_call1311516 = getelementptr double, double* %Packed_MemRef_call1311, i64 %426
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1311516, align 8
  %428 = mul i64 %427, 9600
  %min.iters.check1578 = icmp ult i64 %420, 4
  br i1 %min.iters.check1578, label %polly.loop_header495.preheader1750, label %vector.memcheck1559

vector.memcheck1559:                              ; preds = %polly.loop_header495.preheader
  %bound01569 = icmp ult i8* %scevgep1563, %scevgep1568
  %bound11570 = icmp ult i8* %malloccall310, %scevgep1566
  %found.conflict1571 = and i1 %bound01569, %bound11570
  br i1 %found.conflict1571, label %polly.loop_header495.preheader1750, label %vector.ph1579

vector.ph1579:                                    ; preds = %vector.memcheck1559
  %n.vec1581 = and i64 %420, -4
  %broadcast.splatinsert1587 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1588 = shufflevector <4 x double> %broadcast.splatinsert1587, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1590 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1591 = shufflevector <4 x double> %broadcast.splatinsert1590, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1575

vector.body1575:                                  ; preds = %vector.body1575, %vector.ph1579
  %index1582 = phi i64 [ 0, %vector.ph1579 ], [ %index.next1583, %vector.body1575 ]
  %429 = add nuw nsw i64 %index1582, %347
  %430 = getelementptr double, double* %Packed_MemRef_call1311, i64 %index1582
  %431 = bitcast double* %430 to <4 x double>*
  %wide.load1586 = load <4 x double>, <4 x double>* %431, align 8, !alias.scope !103
  %432 = fmul fast <4 x double> %broadcast.splat1588, %wide.load1586
  %433 = getelementptr double, double* %Packed_MemRef_call2313, i64 %index1582
  %434 = bitcast double* %433 to <4 x double>*
  %wide.load1589 = load <4 x double>, <4 x double>* %434, align 8
  %435 = fmul fast <4 x double> %broadcast.splat1591, %wide.load1589
  %436 = shl i64 %429, 3
  %437 = add i64 %436, %428
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  %wide.load1592 = load <4 x double>, <4 x double>* %439, align 8, !alias.scope !106, !noalias !108
  %440 = fadd fast <4 x double> %435, %432
  %441 = fmul fast <4 x double> %440, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %442 = fadd fast <4 x double> %441, %wide.load1592
  %443 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %442, <4 x double>* %443, align 8, !alias.scope !106, !noalias !108
  %index.next1583 = add i64 %index1582, 4
  %444 = icmp eq i64 %index.next1583, %n.vec1581
  br i1 %444, label %middle.block1573, label %vector.body1575, !llvm.loop !109

middle.block1573:                                 ; preds = %vector.body1575
  %cmp.n1585 = icmp eq i64 %420, %n.vec1581
  br i1 %cmp.n1585, label %polly.loop_exit497, label %polly.loop_header495.preheader1750

polly.loop_header495.preheader1750:               ; preds = %vector.memcheck1559, %polly.loop_header495.preheader, %middle.block1573
  %polly.indvar499.ph = phi i64 [ 0, %vector.memcheck1559 ], [ 0, %polly.loop_header495.preheader ], [ %n.vec1581, %middle.block1573 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1573, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %417
  %indvars.iv.next1129 = add i64 %indvars.iv1128, 1
  %indvar.next1562 = add i64 %indvar1561, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_header487.1

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1750, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1750 ]
  %445 = add nuw nsw i64 %polly.indvar499, %347
  %polly.access.Packed_MemRef_call1311504 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar499
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1311504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2313512 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.indvar499
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2313512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %446 = shl i64 %445, 3
  %447 = add i64 %446, %428
  %scevgep518 = getelementptr i8, i8* %call, i64 %447
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_520
  store double %p_add42.i79, double* %scevgep518519, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar499, %smin1130
  br i1 %exitcond1131.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !110

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall527 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %448 = add i64 %indvar, 1
  %449 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %449
  %min.iters.check1302 = icmp ult i64 %448, 4
  br i1 %min.iters.check1302, label %polly.loop_header617.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %polly.loop_header611
  %n.vec1305 = and i64 %448, -4
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1301 ]
  %450 = shl nuw nsw i64 %index1306, 3
  %451 = getelementptr i8, i8* %scevgep623, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %452, align 8, !alias.scope !111, !noalias !113
  %453 = fmul fast <4 x double> %wide.load1310, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %454 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %453, <4 x double>* %454, align 8, !alias.scope !111, !noalias !113
  %index.next1307 = add i64 %index1306, 4
  %455 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %455, label %middle.block1299, label %vector.body1301, !llvm.loop !118

middle.block1299:                                 ; preds = %vector.body1301
  %cmp.n1309 = icmp eq i64 %448, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1299
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1305, %middle.block1299 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1299
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1163.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  %scevgep1343 = getelementptr i8, i8* %malloccall525, i64 19200
  %scevgep1344 = getelementptr i8, i8* %malloccall525, i64 19208
  %scevgep1378 = getelementptr i8, i8* %malloccall525, i64 9600
  %scevgep1379 = getelementptr i8, i8* %malloccall525, i64 9608
  %scevgep1413 = getelementptr i8, i8* %malloccall525, i64 8
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %456 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %456
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !111, !noalias !113
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1162.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !119

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %457 = shl nsw i64 %polly.indvar630, 2
  %458 = or i64 %457, 1
  %459 = or i64 %457, 2
  %460 = or i64 %457, 3
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next631, 250
  br i1 %exitcond1161.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit658 ], [ 2, %polly.loop_header627 ]
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %461 = mul nsw i64 %polly.indvar636, -32
  %462 = add nuw i64 %polly.indvar636, 2
  %463 = udiv i64 %462, 3
  %464 = mul nuw nsw i64 %463, 96
  %465 = add i64 %461, %464
  %466 = shl nuw nsw i64 %polly.indvar636, 5
  %467 = sub nsw i64 %466, %464
  %468 = shl nuw nsw i64 %polly.indvar636, 11
  %469 = mul nsw i64 %polly.indvar636, -32
  %470 = add nuw i64 %polly.indvar636, 2
  %471 = udiv i64 %470, 3
  %472 = mul nuw nsw i64 %471, 96
  %473 = add i64 %469, %472
  %474 = mul nuw nsw i64 %polly.indvar636, 288
  %475 = sub nsw i64 %474, %472
  %476 = or i64 %468, 8
  %477 = shl nuw nsw i64 %polly.indvar636, 5
  %478 = sub nsw i64 %477, %472
  %479 = mul nsw i64 %polly.indvar636, -32
  %480 = add nuw i64 %polly.indvar636, 2
  %481 = udiv i64 %480, 3
  %482 = mul nuw nsw i64 %481, 96
  %483 = add i64 %479, %482
  %484 = shl nuw nsw i64 %polly.indvar636, 5
  %485 = sub nsw i64 %484, %482
  %486 = shl nuw nsw i64 %polly.indvar636, 11
  %487 = mul nsw i64 %polly.indvar636, -32
  %488 = add nuw i64 %polly.indvar636, 2
  %489 = udiv i64 %488, 3
  %490 = mul nuw nsw i64 %489, 96
  %491 = add i64 %487, %490
  %492 = mul nuw nsw i64 %polly.indvar636, 288
  %493 = sub nsw i64 %492, %490
  %494 = or i64 %486, 8
  %495 = shl nuw nsw i64 %polly.indvar636, 5
  %496 = sub nsw i64 %495, %490
  %497 = mul nsw i64 %polly.indvar636, -32
  %498 = add nuw i64 %polly.indvar636, 2
  %499 = udiv i64 %498, 3
  %500 = mul nuw nsw i64 %499, 96
  %501 = add i64 %497, %500
  %502 = shl nuw nsw i64 %polly.indvar636, 5
  %503 = sub nsw i64 %502, %500
  %504 = shl nuw nsw i64 %polly.indvar636, 11
  %505 = mul nsw i64 %polly.indvar636, -32
  %506 = add nuw i64 %polly.indvar636, 2
  %507 = udiv i64 %506, 3
  %508 = mul nuw nsw i64 %507, 96
  %509 = add i64 %505, %508
  %510 = mul nuw nsw i64 %polly.indvar636, 288
  %511 = sub nsw i64 %510, %508
  %512 = or i64 %504, 8
  %513 = shl nuw nsw i64 %polly.indvar636, 5
  %514 = sub nsw i64 %513, %508
  %515 = mul nsw i64 %polly.indvar636, -32
  %516 = add nuw i64 %polly.indvar636, 2
  %517 = udiv i64 %516, 3
  %518 = mul nuw nsw i64 %517, 96
  %519 = add i64 %515, %518
  %520 = shl nuw nsw i64 %polly.indvar636, 5
  %521 = sub nsw i64 %520, %518
  %522 = udiv i64 %indvars.iv1146, 3
  %523 = mul nuw nsw i64 %522, 96
  %524 = add i64 %indvars.iv1144, %523
  %525 = sub nsw i64 %indvars.iv1151, %523
  %526 = mul nsw i64 %polly.indvar636, -256
  %527 = shl nsw i64 %polly.indvar636, 8
  br label %polly.loop_header645

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, -256
  %indvars.iv.next1145 = add nsw i64 %indvars.iv1144, -32
  %indvars.iv.next1147 = add nuw nsw i64 %indvars.iv1146, 1
  %indvars.iv.next1152 = add nuw nsw i64 %indvars.iv1151, 32
  %exitcond1160.not = icmp eq i64 %polly.indvar_next637, 5
  br i1 %exitcond1160.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header633
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %528 = add nuw nsw i64 %polly.indvar648, %527
  %polly.access.mul.call2652 = mul nuw nsw i64 %528, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %457, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !115, !noalias !120
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar648
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1137
  br i1 %exitcond1139.not, label %polly.loop_header645.1, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit647.3
  %indvar1314 = phi i64 [ %indvar.next1315, %polly.loop_exit697 ], [ 0, %polly.loop_exit647.3 ]
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit697 ], [ %525, %polly.loop_exit647.3 ]
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit697 ], [ %524, %polly.loop_exit647.3 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %923, %polly.loop_exit647.3 ]
  %529 = mul nsw i64 %indvar1314, -96
  %530 = add i64 %465, %529
  %smax1422 = call i64 @llvm.smax.i64(i64 %530, i64 0)
  %531 = mul nuw nsw i64 %indvar1314, 96
  %532 = add i64 %467, %531
  %533 = add i64 %smax1422, %532
  %534 = mul nsw i64 %indvar1314, -96
  %535 = add i64 %473, %534
  %smax1406 = call i64 @llvm.smax.i64(i64 %535, i64 0)
  %536 = mul nuw nsw i64 %indvar1314, 96
  %537 = add i64 %475, %536
  %538 = add i64 %smax1406, %537
  %539 = mul nsw i64 %538, 9600
  %540 = add i64 %468, %539
  %541 = add i64 %476, %539
  %542 = add i64 %478, %536
  %543 = add i64 %smax1406, %542
  %544 = mul nsw i64 %indvar1314, -96
  %545 = add i64 %483, %544
  %smax1388 = call i64 @llvm.smax.i64(i64 %545, i64 0)
  %546 = mul nuw nsw i64 %indvar1314, 96
  %547 = add i64 %485, %546
  %548 = add i64 %smax1388, %547
  %549 = mul nsw i64 %indvar1314, -96
  %550 = add i64 %491, %549
  %smax1371 = call i64 @llvm.smax.i64(i64 %550, i64 0)
  %551 = mul nuw nsw i64 %indvar1314, 96
  %552 = add i64 %493, %551
  %553 = add i64 %smax1371, %552
  %554 = mul nsw i64 %553, 9600
  %555 = add i64 %486, %554
  %556 = add i64 %494, %554
  %557 = add i64 %496, %551
  %558 = add i64 %smax1371, %557
  %559 = mul nsw i64 %indvar1314, -96
  %560 = add i64 %501, %559
  %smax1353 = call i64 @llvm.smax.i64(i64 %560, i64 0)
  %561 = mul nuw nsw i64 %indvar1314, 96
  %562 = add i64 %503, %561
  %563 = add i64 %smax1353, %562
  %564 = mul nsw i64 %indvar1314, -96
  %565 = add i64 %509, %564
  %smax1336 = call i64 @llvm.smax.i64(i64 %565, i64 0)
  %566 = mul nuw nsw i64 %indvar1314, 96
  %567 = add i64 %511, %566
  %568 = add i64 %smax1336, %567
  %569 = mul nsw i64 %568, 9600
  %570 = add i64 %504, %569
  %571 = add i64 %512, %569
  %572 = add i64 %514, %566
  %573 = add i64 %smax1336, %572
  %574 = mul nsw i64 %indvar1314, -96
  %575 = add i64 %519, %574
  %smax1316 = call i64 @llvm.smax.i64(i64 %575, i64 0)
  %576 = mul nuw nsw i64 %indvar1314, 96
  %577 = add i64 %521, %576
  %578 = add i64 %smax1316, %577
  %smax1150 = call i64 @llvm.smax.i64(i64 %indvars.iv1148, i64 0)
  %579 = add i64 %smax1150, %indvars.iv1153
  %580 = mul nsw i64 %polly.indvar659, 96
  %581 = add nsw i64 %580, %526
  %582 = add nsw i64 %581, -1
  %.inv943 = icmp sgt i64 %581, 255
  %583 = select i1 %.inv943, i64 255, i64 %582
  %polly.loop_guard672 = icmp sgt i64 %583, -1
  %584 = icmp sgt i64 %581, 0
  %585 = select i1 %584, i64 %581, i64 0
  %586 = add nsw i64 %581, 95
  %587 = icmp slt i64 %920, %586
  %588 = select i1 %587, i64 %920, i64 %586
  %polly.loop_guard684.not = icmp sgt i64 %585, %588
  br i1 %polly.loop_guard672, label %polly.loop_header669.us, label %polly.loop_header656.split

polly.loop_header669.us:                          ; preds = %polly.loop_header656, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header656 ]
  %589 = add nuw nsw i64 %polly.indvar673.us, %527
  %polly.access.mul.call1677.us = mul nuw nsw i64 %589, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %457, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar673.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar673.us, %583
  br i1 %exitcond1142.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %585, %polly.loop_exit671.loopexit.us ]
  %590 = add nuw nsw i64 %polly.indvar685.us, %527
  %polly.access.mul.call1689.us = mul nsw i64 %590, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %457, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar685.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %588
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_header669.us.1.preheader

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.1.preheader, label %polly.loop_header681.us

polly.loop_header669.us.1.preheader:              ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  br label %polly.loop_header669.us.1

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header681

polly.loop_exit697:                               ; preds = %polly.loop_exit712.3, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp slt i64 %polly.indvar659, 12
  %indvars.iv.next1149 = add i64 %indvars.iv1148, -96
  %indvars.iv.next1154 = add i64 %indvars.iv1153, 96
  %indvar.next1315 = add i64 %indvar1314, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header695.preheader:                   ; preds = %polly.loop_header681.3, %polly.loop_header681.us.3, %polly.loop_exit671.loopexit.us.3, %polly.loop_header656.split
  %591 = sub nsw i64 %527, %580
  %592 = icmp sgt i64 %591, 0
  %593 = select i1 %592, i64 %591, i64 0
  %594 = mul nsw i64 %polly.indvar659, -96
  %595 = icmp slt i64 %594, -1104
  %596 = select i1 %595, i64 %594, i64 -1104
  %597 = add nsw i64 %596, 1199
  %polly.loop_guard705.not = icmp sgt i64 %593, %597
  br i1 %polly.loop_guard705.not, label %polly.loop_exit697, label %polly.loop_header702

polly.loop_header681:                             ; preds = %polly.loop_header656.split, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %585, %polly.loop_header656.split ]
  %598 = add nuw nsw i64 %polly.indvar685, %527
  %polly.access.mul.call1689 = mul nsw i64 %598, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %457, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar685
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %588
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_header681.1

polly.loop_header702:                             ; preds = %polly.loop_header695.preheader, %polly.loop_exit712
  %indvar1407 = phi i64 [ %indvar.next1408, %polly.loop_exit712 ], [ 0, %polly.loop_header695.preheader ]
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit712 ], [ %579, %polly.loop_header695.preheader ]
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit712 ], [ %593, %polly.loop_header695.preheader ]
  %599 = add i64 %533, %indvar1407
  %smin1423 = call i64 @llvm.smin.i64(i64 %599, i64 255)
  %600 = add nsw i64 %smin1423, 1
  %601 = mul nuw nsw i64 %indvar1407, 9600
  %602 = add i64 %540, %601
  %scevgep1409 = getelementptr i8, i8* %call, i64 %602
  %603 = add i64 %541, %601
  %scevgep1410 = getelementptr i8, i8* %call, i64 %603
  %604 = add i64 %543, %indvar1407
  %smin1411 = call i64 @llvm.smin.i64(i64 %604, i64 255)
  %605 = shl nsw i64 %smin1411, 3
  %scevgep1412 = getelementptr i8, i8* %scevgep1410, i64 %605
  %scevgep1414 = getelementptr i8, i8* %scevgep1413, i64 %605
  %smin1157 = call i64 @llvm.smin.i64(i64 %indvars.iv1155, i64 255)
  %606 = add nsw i64 %polly.indvar706, %581
  %polly.loop_guard7131209 = icmp sgt i64 %606, -1
  br i1 %polly.loop_guard7131209, label %polly.loop_header710.preheader, label %polly.loop_exit712

polly.loop_header710.preheader:                   ; preds = %polly.loop_header702
  %607 = add nsw i64 %polly.indvar706, %580
  %polly.access.Packed_MemRef_call2528723 = getelementptr double, double* %Packed_MemRef_call2528, i64 %606
  %_p_scalar_724 = load double, double* %polly.access.Packed_MemRef_call2528723, align 8
  %polly.access.Packed_MemRef_call1526731 = getelementptr double, double* %Packed_MemRef_call1526, i64 %606
  %_p_scalar_732 = load double, double* %polly.access.Packed_MemRef_call1526731, align 8
  %608 = mul i64 %607, 9600
  %min.iters.check1424 = icmp ult i64 %600, 4
  br i1 %min.iters.check1424, label %polly.loop_header710.preheader1753, label %vector.memcheck1405

vector.memcheck1405:                              ; preds = %polly.loop_header710.preheader
  %bound01415 = icmp ult i8* %scevgep1409, %scevgep1414
  %bound11416 = icmp ult i8* %malloccall525, %scevgep1412
  %found.conflict1417 = and i1 %bound01415, %bound11416
  br i1 %found.conflict1417, label %polly.loop_header710.preheader1753, label %vector.ph1425

vector.ph1425:                                    ; preds = %vector.memcheck1405
  %n.vec1427 = and i64 %600, -4
  %broadcast.splatinsert1433 = insertelement <4 x double> poison, double %_p_scalar_724, i32 0
  %broadcast.splat1434 = shufflevector <4 x double> %broadcast.splatinsert1433, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1436 = insertelement <4 x double> poison, double %_p_scalar_732, i32 0
  %broadcast.splat1437 = shufflevector <4 x double> %broadcast.splatinsert1436, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1421

vector.body1421:                                  ; preds = %vector.body1421, %vector.ph1425
  %index1428 = phi i64 [ 0, %vector.ph1425 ], [ %index.next1429, %vector.body1421 ]
  %609 = add nuw nsw i64 %index1428, %527
  %610 = getelementptr double, double* %Packed_MemRef_call1526, i64 %index1428
  %611 = bitcast double* %610 to <4 x double>*
  %wide.load1432 = load <4 x double>, <4 x double>* %611, align 8, !alias.scope !122
  %612 = fmul fast <4 x double> %broadcast.splat1434, %wide.load1432
  %613 = getelementptr double, double* %Packed_MemRef_call2528, i64 %index1428
  %614 = bitcast double* %613 to <4 x double>*
  %wide.load1435 = load <4 x double>, <4 x double>* %614, align 8
  %615 = fmul fast <4 x double> %broadcast.splat1437, %wide.load1435
  %616 = shl i64 %609, 3
  %617 = add i64 %616, %608
  %618 = getelementptr i8, i8* %call, i64 %617
  %619 = bitcast i8* %618 to <4 x double>*
  %wide.load1438 = load <4 x double>, <4 x double>* %619, align 8, !alias.scope !125, !noalias !127
  %620 = fadd fast <4 x double> %615, %612
  %621 = fmul fast <4 x double> %620, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %622 = fadd fast <4 x double> %621, %wide.load1438
  %623 = bitcast i8* %618 to <4 x double>*
  store <4 x double> %622, <4 x double>* %623, align 8, !alias.scope !125, !noalias !127
  %index.next1429 = add i64 %index1428, 4
  %624 = icmp eq i64 %index.next1429, %n.vec1427
  br i1 %624, label %middle.block1419, label %vector.body1421, !llvm.loop !128

middle.block1419:                                 ; preds = %vector.body1421
  %cmp.n1431 = icmp eq i64 %600, %n.vec1427
  br i1 %cmp.n1431, label %polly.loop_exit712, label %polly.loop_header710.preheader1753

polly.loop_header710.preheader1753:               ; preds = %vector.memcheck1405, %polly.loop_header710.preheader, %middle.block1419
  %polly.indvar714.ph = phi i64 [ 0, %vector.memcheck1405 ], [ 0, %polly.loop_header710.preheader ], [ %n.vec1427, %middle.block1419 ]
  br label %polly.loop_header710

polly.loop_exit712:                               ; preds = %polly.loop_header710, %middle.block1419, %polly.loop_header702
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %polly.loop_cond708.not.not = icmp slt i64 %polly.indvar706, %597
  %indvars.iv.next1156 = add i64 %indvars.iv1155, 1
  %indvar.next1408 = add i64 %indvar1407, 1
  br i1 %polly.loop_cond708.not.not, label %polly.loop_header702, label %polly.loop_header702.1

polly.loop_header710:                             ; preds = %polly.loop_header710.preheader1753, %polly.loop_header710
  %polly.indvar714 = phi i64 [ %polly.indvar_next715, %polly.loop_header710 ], [ %polly.indvar714.ph, %polly.loop_header710.preheader1753 ]
  %625 = add nuw nsw i64 %polly.indvar714, %527
  %polly.access.Packed_MemRef_call1526719 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar714
  %_p_scalar_720 = load double, double* %polly.access.Packed_MemRef_call1526719, align 8
  %p_mul27.i = fmul fast double %_p_scalar_724, %_p_scalar_720
  %polly.access.Packed_MemRef_call2528727 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar714
  %_p_scalar_728 = load double, double* %polly.access.Packed_MemRef_call2528727, align 8
  %p_mul37.i = fmul fast double %_p_scalar_732, %_p_scalar_728
  %626 = shl i64 %625, 3
  %627 = add i64 %626, %608
  %scevgep733 = getelementptr i8, i8* %call, i64 %627
  %scevgep733734 = bitcast i8* %scevgep733 to double*
  %_p_scalar_735 = load double, double* %scevgep733734, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_735
  store double %p_add42.i, double* %scevgep733734, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715 = add nuw nsw i64 %polly.indvar714, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar714, %smin1157
  br i1 %exitcond1158.not, label %polly.loop_exit712, label %polly.loop_header710, !llvm.loop !129

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1190 = call i64 @llvm.smin.i64(i64 %indvars.iv1188, i64 -1168)
  %628 = shl nsw i64 %polly.indvar865, 5
  %629 = add nsw i64 %smin1190, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1189 = add nsw i64 %indvars.iv1188, -32
  %exitcond1193.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1193.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1184 = phi i64 [ %indvars.iv.next1185, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %630 = mul nsw i64 %polly.indvar871, -32
  %smin1240 = call i64 @llvm.smin.i64(i64 %630, i64 -1168)
  %631 = add nsw i64 %smin1240, 1200
  %smin1186 = call i64 @llvm.smin.i64(i64 %indvars.iv1184, i64 -1168)
  %632 = shl nsw i64 %polly.indvar871, 5
  %633 = add nsw i64 %smin1186, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1185 = add nsw i64 %indvars.iv1184, -32
  %exitcond1192.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1192.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %634 = add nuw nsw i64 %polly.indvar877, %628
  %635 = trunc i64 %634 to i32
  %636 = mul nuw nsw i64 %634, 9600
  %min.iters.check = icmp eq i64 %631, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1241

vector.ph1241:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1248 = insertelement <4 x i64> poison, i64 %632, i32 0
  %broadcast.splat1249 = shufflevector <4 x i64> %broadcast.splatinsert1248, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %635, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1241
  %index1242 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1243, %vector.body1239 ]
  %vec.ind1246 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1241 ], [ %vec.ind.next1247, %vector.body1239 ]
  %637 = add nuw nsw <4 x i64> %vec.ind1246, %broadcast.splat1249
  %638 = trunc <4 x i64> %637 to <4 x i32>
  %639 = mul <4 x i32> %broadcast.splat1251, %638
  %640 = add <4 x i32> %639, <i32 3, i32 3, i32 3, i32 3>
  %641 = urem <4 x i32> %640, <i32 1200, i32 1200, i32 1200, i32 1200>
  %642 = sitofp <4 x i32> %641 to <4 x double>
  %643 = fmul fast <4 x double> %642, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %644 = extractelement <4 x i64> %637, i32 0
  %645 = shl i64 %644, 3
  %646 = add nuw nsw i64 %645, %636
  %647 = getelementptr i8, i8* %call, i64 %646
  %648 = bitcast i8* %647 to <4 x double>*
  store <4 x double> %643, <4 x double>* %648, align 8, !alias.scope !130, !noalias !132
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1247 = add <4 x i64> %vec.ind1246, <i64 4, i64 4, i64 4, i64 4>
  %649 = icmp eq i64 %index.next1243, %631
  br i1 %649, label %polly.loop_exit882, label %vector.body1239, !llvm.loop !135

polly.loop_exit882:                               ; preds = %vector.body1239, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1191.not = icmp eq i64 %polly.indvar877, %629
  br i1 %exitcond1191.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %650 = add nuw nsw i64 %polly.indvar883, %632
  %651 = trunc i64 %650 to i32
  %652 = mul i32 %651, %635
  %653 = add i32 %652, 3
  %654 = urem i32 %653, 1200
  %p_conv31.i = sitofp i32 %654 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %655 = shl i64 %650, 3
  %656 = add nuw nsw i64 %655, %636
  %scevgep886 = getelementptr i8, i8* %call, i64 %656
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !130, !noalias !132
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1187.not = icmp eq i64 %polly.indvar883, %633
  br i1 %exitcond1187.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !136

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 -1168)
  %657 = shl nsw i64 %polly.indvar892, 5
  %658 = add nsw i64 %smin1180, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -32
  %exitcond1183.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1183.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1174 = phi i64 [ %indvars.iv.next1175, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %659 = mul nsw i64 %polly.indvar898, -32
  %smin1255 = call i64 @llvm.smin.i64(i64 %659, i64 -968)
  %660 = add nsw i64 %smin1255, 1000
  %smin1176 = call i64 @llvm.smin.i64(i64 %indvars.iv1174, i64 -968)
  %661 = shl nsw i64 %polly.indvar898, 5
  %662 = add nsw i64 %smin1176, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1175 = add nsw i64 %indvars.iv1174, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1182.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %663 = add nuw nsw i64 %polly.indvar904, %657
  %664 = trunc i64 %663 to i32
  %665 = mul nuw nsw i64 %663, 8000
  %min.iters.check1256 = icmp eq i64 %660, 0
  br i1 %min.iters.check1256, label %polly.loop_header907, label %vector.ph1257

vector.ph1257:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1266 = insertelement <4 x i64> poison, i64 %661, i32 0
  %broadcast.splat1267 = shufflevector <4 x i64> %broadcast.splatinsert1266, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %664, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1254 ]
  %vec.ind1264 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1257 ], [ %vec.ind.next1265, %vector.body1254 ]
  %666 = add nuw nsw <4 x i64> %vec.ind1264, %broadcast.splat1267
  %667 = trunc <4 x i64> %666 to <4 x i32>
  %668 = mul <4 x i32> %broadcast.splat1269, %667
  %669 = add <4 x i32> %668, <i32 2, i32 2, i32 2, i32 2>
  %670 = urem <4 x i32> %669, <i32 1000, i32 1000, i32 1000, i32 1000>
  %671 = sitofp <4 x i32> %670 to <4 x double>
  %672 = fmul fast <4 x double> %671, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %673 = extractelement <4 x i64> %666, i32 0
  %674 = shl i64 %673, 3
  %675 = add nuw nsw i64 %674, %665
  %676 = getelementptr i8, i8* %call2, i64 %675
  %677 = bitcast i8* %676 to <4 x double>*
  store <4 x double> %672, <4 x double>* %677, align 8, !alias.scope !134, !noalias !137
  %index.next1261 = add i64 %index1260, 4
  %vec.ind.next1265 = add <4 x i64> %vec.ind1264, <i64 4, i64 4, i64 4, i64 4>
  %678 = icmp eq i64 %index.next1261, %660
  br i1 %678, label %polly.loop_exit909, label %vector.body1254, !llvm.loop !138

polly.loop_exit909:                               ; preds = %vector.body1254, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar904, %658
  br i1 %exitcond1181.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %679 = add nuw nsw i64 %polly.indvar910, %661
  %680 = trunc i64 %679 to i32
  %681 = mul i32 %680, %664
  %682 = add i32 %681, 2
  %683 = urem i32 %682, 1000
  %p_conv10.i = sitofp i32 %683 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %684 = shl i64 %679, 3
  %685 = add nuw nsw i64 %684, %665
  %scevgep913 = getelementptr i8, i8* %call2, i64 %685
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !134, !noalias !137
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar910, %662
  br i1 %exitcond1177.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !139

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -1168)
  %686 = shl nsw i64 %polly.indvar918, 5
  %687 = add nsw i64 %smin1170, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1173.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1173.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1164 = phi i64 [ %indvars.iv.next1165, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %688 = mul nsw i64 %polly.indvar924, -32
  %smin1273 = call i64 @llvm.smin.i64(i64 %688, i64 -968)
  %689 = add nsw i64 %smin1273, 1000
  %smin1166 = call i64 @llvm.smin.i64(i64 %indvars.iv1164, i64 -968)
  %690 = shl nsw i64 %polly.indvar924, 5
  %691 = add nsw i64 %smin1166, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1165 = add nsw i64 %indvars.iv1164, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1172.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %692 = add nuw nsw i64 %polly.indvar930, %686
  %693 = trunc i64 %692 to i32
  %694 = mul nuw nsw i64 %692, 8000
  %min.iters.check1274 = icmp eq i64 %689, 0
  br i1 %min.iters.check1274, label %polly.loop_header933, label %vector.ph1275

vector.ph1275:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1284 = insertelement <4 x i64> poison, i64 %690, i32 0
  %broadcast.splat1285 = shufflevector <4 x i64> %broadcast.splatinsert1284, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %693, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %vector.ph1275
  %index1278 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1279, %vector.body1272 ]
  %vec.ind1282 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1275 ], [ %vec.ind.next1283, %vector.body1272 ]
  %695 = add nuw nsw <4 x i64> %vec.ind1282, %broadcast.splat1285
  %696 = trunc <4 x i64> %695 to <4 x i32>
  %697 = mul <4 x i32> %broadcast.splat1287, %696
  %698 = add <4 x i32> %697, <i32 1, i32 1, i32 1, i32 1>
  %699 = urem <4 x i32> %698, <i32 1200, i32 1200, i32 1200, i32 1200>
  %700 = sitofp <4 x i32> %699 to <4 x double>
  %701 = fmul fast <4 x double> %700, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %702 = extractelement <4 x i64> %695, i32 0
  %703 = shl i64 %702, 3
  %704 = add nuw nsw i64 %703, %694
  %705 = getelementptr i8, i8* %call1, i64 %704
  %706 = bitcast i8* %705 to <4 x double>*
  store <4 x double> %701, <4 x double>* %706, align 8, !alias.scope !133, !noalias !140
  %index.next1279 = add i64 %index1278, 4
  %vec.ind.next1283 = add <4 x i64> %vec.ind1282, <i64 4, i64 4, i64 4, i64 4>
  %707 = icmp eq i64 %index.next1279, %689
  br i1 %707, label %polly.loop_exit935, label %vector.body1272, !llvm.loop !141

polly.loop_exit935:                               ; preds = %vector.body1272, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar930, %687
  br i1 %exitcond1171.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %708 = add nuw nsw i64 %polly.indvar936, %690
  %709 = trunc i64 %708 to i32
  %710 = mul i32 %709, %693
  %711 = add i32 %710, 1
  %712 = urem i32 %711, 1200
  %p_conv.i = sitofp i32 %712 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %713 = shl i64 %708, 3
  %714 = add nuw nsw i64 %713, %694
  %scevgep940 = getelementptr i8, i8* %call1, i64 %714
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !133, !noalias !140
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar936, %691
  br i1 %exitcond1167.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !142

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %715 = add nuw nsw i64 %polly.indvar221.1, %167
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %715, 1000
  %polly.access.add.call2226.1 = add nuw nsw i64 %98, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, 1200
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header218.2, label %polly.loop_header218.1

polly.loop_header218.2:                           ; preds = %polly.loop_header218.1, %polly.loop_header218.2
  %polly.indvar221.2 = phi i64 [ %polly.indvar_next222.2, %polly.loop_header218.2 ], [ 0, %polly.loop_header218.1 ]
  %716 = add nuw nsw i64 %polly.indvar221.2, %167
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %716, 1000
  %polly.access.add.call2226.2 = add nuw nsw i64 %99, %polly.access.mul.call2225.2
  %polly.access.call2227.2 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226.2
  %polly.access.call2227.load.2 = load double, double* %polly.access.call2227.2, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar221.2, 2400
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2227.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next222.2 = add nuw nsw i64 %polly.indvar221.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next222.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header218.3, label %polly.loop_header218.2

polly.loop_header218.3:                           ; preds = %polly.loop_header218.2, %polly.loop_header218.3
  %polly.indvar221.3 = phi i64 [ %polly.indvar_next222.3, %polly.loop_header218.3 ], [ 0, %polly.loop_header218.2 ]
  %717 = add nuw nsw i64 %polly.indvar221.3, %167
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %717, 1000
  %polly.access.add.call2226.3 = add nuw nsw i64 %100, %polly.access.mul.call2225.3
  %polly.access.call2227.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226.3
  %polly.access.call2227.load.3 = load double, double* %polly.access.call2227.3, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar221.3, 3600
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2227.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next222.3 = add nuw nsw i64 %polly.indvar221.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next222.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit220.3, label %polly.loop_header218.3

polly.loop_exit220.3:                             ; preds = %polly.loop_header218.3
  %718 = add nsw i64 %166, 1199
  %719 = mul nuw nsw i64 %polly.indvar209, 3
  %720 = add nuw nsw i64 %polly.indvar209, 2
  %pexp.p_div_q = udiv i64 %720, 3
  %721 = sub nsw i64 %719, %pexp.p_div_q
  br label %polly.loop_header228

polly.loop_header251.1:                           ; preds = %polly.loop_header251, %polly.loop_header251.1
  %polly.indvar255.1 = phi i64 [ %polly.indvar_next256.1, %polly.loop_header251.1 ], [ %225, %polly.loop_header251 ]
  %722 = add nuw nsw i64 %polly.indvar255.1, %167
  %polly.access.mul.call1259.1 = mul nsw i64 %722, 1000
  %polly.access.add.call1260.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar255.1, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.indvar_next256.1 = add nuw nsw i64 %polly.indvar255.1, 1
  %polly.loop_cond257.not.not.1 = icmp slt i64 %polly.indvar255.1, %228
  br i1 %polly.loop_cond257.not.not.1, label %polly.loop_header251.1, label %polly.loop_header251.2

polly.loop_header251.2:                           ; preds = %polly.loop_header251.1, %polly.loop_header251.2
  %polly.indvar255.2 = phi i64 [ %polly.indvar_next256.2, %polly.loop_header251.2 ], [ %225, %polly.loop_header251.1 ]
  %723 = add nuw nsw i64 %polly.indvar255.2, %167
  %polly.access.mul.call1259.2 = mul nsw i64 %723, 1000
  %polly.access.add.call1260.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.indvar255.2, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.indvar_next256.2 = add nuw nsw i64 %polly.indvar255.2, 1
  %polly.loop_cond257.not.not.2 = icmp slt i64 %polly.indvar255.2, %228
  br i1 %polly.loop_cond257.not.not.2, label %polly.loop_header251.2, label %polly.loop_header251.3

polly.loop_header251.3:                           ; preds = %polly.loop_header251.2, %polly.loop_header251.3
  %polly.indvar255.3 = phi i64 [ %polly.indvar_next256.3, %polly.loop_header251.3 ], [ %225, %polly.loop_header251.2 ]
  %724 = add nuw nsw i64 %polly.indvar255.3, %167
  %polly.access.mul.call1259.3 = mul nsw i64 %724, 1000
  %polly.access.add.call1260.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.indvar255.3, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  %polly.indvar_next256.3 = add nuw nsw i64 %polly.indvar255.3, 1
  %polly.loop_cond257.not.not.3 = icmp slt i64 %polly.indvar255.3, %228
  br i1 %polly.loop_cond257.not.not.3, label %polly.loop_header251.3, label %polly.loop_header265.preheader

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1.preheader, %polly.loop_header240.us.1
  %polly.indvar243.us.1 = phi i64 [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ], [ 0, %polly.loop_header240.us.1.preheader ]
  %725 = add nuw nsw i64 %polly.indvar243.us.1, %167
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %725, 1000
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw i64 %polly.indvar243.us.1, 1
  %exitcond1090.1.not = icmp eq i64 %polly.indvar243.us.1, %223
  br i1 %exitcond1090.1.not, label %polly.loop_exit242.loopexit.us.1, label %polly.loop_header240.us.1

polly.loop_exit242.loopexit.us.1:                 ; preds = %polly.loop_header240.us.1
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.2.preheader, label %polly.loop_header251.us.1

polly.loop_header251.us.1:                        ; preds = %polly.loop_exit242.loopexit.us.1, %polly.loop_header251.us.1
  %polly.indvar255.us.1 = phi i64 [ %polly.indvar_next256.us.1, %polly.loop_header251.us.1 ], [ %225, %polly.loop_exit242.loopexit.us.1 ]
  %726 = add nuw nsw i64 %polly.indvar255.us.1, %167
  %polly.access.mul.call1259.us.1 = mul nsw i64 %726, 1000
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %polly.indvar_next256.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1
  %polly.loop_cond257.not.not.us.1 = icmp slt i64 %polly.indvar255.us.1, %228
  br i1 %polly.loop_cond257.not.not.us.1, label %polly.loop_header251.us.1, label %polly.loop_header240.us.2.preheader

polly.loop_header240.us.2.preheader:              ; preds = %polly.loop_header251.us.1, %polly.loop_exit242.loopexit.us.1
  br label %polly.loop_header240.us.2

polly.loop_header240.us.2:                        ; preds = %polly.loop_header240.us.2.preheader, %polly.loop_header240.us.2
  %polly.indvar243.us.2 = phi i64 [ %polly.indvar_next244.us.2, %polly.loop_header240.us.2 ], [ 0, %polly.loop_header240.us.2.preheader ]
  %727 = add nuw nsw i64 %polly.indvar243.us.2, %167
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %727, 1000
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar243.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next244.us.2 = add nuw i64 %polly.indvar243.us.2, 1
  %exitcond1090.2.not = icmp eq i64 %polly.indvar243.us.2, %223
  br i1 %exitcond1090.2.not, label %polly.loop_exit242.loopexit.us.2, label %polly.loop_header240.us.2

polly.loop_exit242.loopexit.us.2:                 ; preds = %polly.loop_header240.us.2
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.3.preheader, label %polly.loop_header251.us.2

polly.loop_header251.us.2:                        ; preds = %polly.loop_exit242.loopexit.us.2, %polly.loop_header251.us.2
  %polly.indvar255.us.2 = phi i64 [ %polly.indvar_next256.us.2, %polly.loop_header251.us.2 ], [ %225, %polly.loop_exit242.loopexit.us.2 ]
  %728 = add nuw nsw i64 %polly.indvar255.us.2, %167
  %polly.access.mul.call1259.us.2 = mul nsw i64 %728, 1000
  %polly.access.add.call1260.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.us.2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %polly.indvar_next256.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 1
  %polly.loop_cond257.not.not.us.2 = icmp slt i64 %polly.indvar255.us.2, %228
  br i1 %polly.loop_cond257.not.not.us.2, label %polly.loop_header251.us.2, label %polly.loop_header240.us.3.preheader

polly.loop_header240.us.3.preheader:              ; preds = %polly.loop_header251.us.2, %polly.loop_exit242.loopexit.us.2
  br label %polly.loop_header240.us.3

polly.loop_header240.us.3:                        ; preds = %polly.loop_header240.us.3.preheader, %polly.loop_header240.us.3
  %polly.indvar243.us.3 = phi i64 [ %polly.indvar_next244.us.3, %polly.loop_header240.us.3 ], [ 0, %polly.loop_header240.us.3.preheader ]
  %729 = add nuw nsw i64 %polly.indvar243.us.3, %167
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %729, 1000
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar243.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next244.us.3 = add nuw i64 %polly.indvar243.us.3, 1
  %exitcond1090.3.not = icmp eq i64 %polly.indvar243.us.3, %223
  br i1 %exitcond1090.3.not, label %polly.loop_exit242.loopexit.us.3, label %polly.loop_header240.us.3

polly.loop_exit242.loopexit.us.3:                 ; preds = %polly.loop_header240.us.3
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251.us.3

polly.loop_header251.us.3:                        ; preds = %polly.loop_exit242.loopexit.us.3, %polly.loop_header251.us.3
  %polly.indvar255.us.3 = phi i64 [ %polly.indvar_next256.us.3, %polly.loop_header251.us.3 ], [ %225, %polly.loop_exit242.loopexit.us.3 ]
  %730 = add nuw nsw i64 %polly.indvar255.us.3, %167
  %polly.access.mul.call1259.us.3 = mul nsw i64 %730, 1000
  %polly.access.add.call1260.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.us.3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  %polly.indvar_next256.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 1
  %polly.loop_cond257.not.not.us.3 = icmp slt i64 %polly.indvar255.us.3, %228
  br i1 %polly.loop_cond257.not.not.us.3, label %polly.loop_header251.us.3, label %polly.loop_header265.preheader

polly.loop_header272.1:                           ; preds = %polly.loop_exit282, %polly.loop_exit282.1
  %indvar1680 = phi i64 [ %indvar.next1681, %polly.loop_exit282.1 ], [ 0, %polly.loop_exit282 ]
  %indvars.iv1102.1 = phi i64 [ %indvars.iv.next1103.1, %polly.loop_exit282.1 ], [ %219, %polly.loop_exit282 ]
  %polly.indvar276.1 = phi i64 [ %polly.indvar_next277.1, %polly.loop_exit282.1 ], [ %233, %polly.loop_exit282 ]
  %731 = add i64 %188, %indvar1680
  %smin1697 = call i64 @llvm.smin.i64(i64 %731, i64 255)
  %732 = add nsw i64 %smin1697, 1
  %733 = mul nuw nsw i64 %indvar1680, 9600
  %734 = add i64 %195, %733
  %scevgep1682 = getelementptr i8, i8* %call, i64 %734
  %735 = add i64 %196, %733
  %scevgep1683 = getelementptr i8, i8* %call, i64 %735
  %736 = add i64 %198, %indvar1680
  %smin1684 = call i64 @llvm.smin.i64(i64 %736, i64 255)
  %737 = shl nsw i64 %smin1684, 3
  %scevgep1685 = getelementptr i8, i8* %scevgep1683, i64 %737
  %scevgep1688 = getelementptr i8, i8* %scevgep1687, i64 %737
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1102.1, i64 255)
  %738 = add nsw i64 %polly.indvar276.1, %221
  %polly.loop_guard283.11202 = icmp sgt i64 %738, -1
  br i1 %polly.loop_guard283.11202, label %polly.loop_header280.preheader.1, label %polly.loop_exit282.1

polly.loop_header280.preheader.1:                 ; preds = %polly.loop_header272.1
  %739 = add nsw i64 %polly.indvar276.1, %220
  %polly.access.add.Packed_MemRef_call2292.1 = add nuw nsw i64 %738, 1200
  %polly.access.Packed_MemRef_call2293.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.1
  %_p_scalar_294.1 = load double, double* %polly.access.Packed_MemRef_call2293.1, align 8
  %polly.access.Packed_MemRef_call1301.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.1
  %_p_scalar_302.1 = load double, double* %polly.access.Packed_MemRef_call1301.1, align 8
  %740 = mul i64 %739, 9600
  %min.iters.check1698 = icmp ult i64 %732, 4
  br i1 %min.iters.check1698, label %polly.loop_header280.1.preheader, label %vector.memcheck1678

vector.memcheck1678:                              ; preds = %polly.loop_header280.preheader.1
  %bound01689 = icmp ult i8* %scevgep1682, %scevgep1688
  %bound11690 = icmp ult i8* %scevgep1686, %scevgep1685
  %found.conflict1691 = and i1 %bound01689, %bound11690
  br i1 %found.conflict1691, label %polly.loop_header280.1.preheader, label %vector.ph1699

vector.ph1699:                                    ; preds = %vector.memcheck1678
  %n.vec1701 = and i64 %732, -4
  %broadcast.splatinsert1707 = insertelement <4 x double> poison, double %_p_scalar_294.1, i32 0
  %broadcast.splat1708 = shufflevector <4 x double> %broadcast.splatinsert1707, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1710 = insertelement <4 x double> poison, double %_p_scalar_302.1, i32 0
  %broadcast.splat1711 = shufflevector <4 x double> %broadcast.splatinsert1710, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1695

vector.body1695:                                  ; preds = %vector.body1695, %vector.ph1699
  %index1702 = phi i64 [ 0, %vector.ph1699 ], [ %index.next1703, %vector.body1695 ]
  %741 = add nuw nsw i64 %index1702, %167
  %742 = add nuw nsw i64 %index1702, 1200
  %743 = getelementptr double, double* %Packed_MemRef_call1, i64 %742
  %744 = bitcast double* %743 to <4 x double>*
  %wide.load1706 = load <4 x double>, <4 x double>* %744, align 8, !alias.scope !143
  %745 = fmul fast <4 x double> %broadcast.splat1708, %wide.load1706
  %746 = getelementptr double, double* %Packed_MemRef_call2, i64 %742
  %747 = bitcast double* %746 to <4 x double>*
  %wide.load1709 = load <4 x double>, <4 x double>* %747, align 8
  %748 = fmul fast <4 x double> %broadcast.splat1711, %wide.load1709
  %749 = shl i64 %741, 3
  %750 = add i64 %749, %740
  %751 = getelementptr i8, i8* %call, i64 %750
  %752 = bitcast i8* %751 to <4 x double>*
  %wide.load1712 = load <4 x double>, <4 x double>* %752, align 8, !alias.scope !146, !noalias !148
  %753 = fadd fast <4 x double> %748, %745
  %754 = fmul fast <4 x double> %753, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %755 = fadd fast <4 x double> %754, %wide.load1712
  %756 = bitcast i8* %751 to <4 x double>*
  store <4 x double> %755, <4 x double>* %756, align 8, !alias.scope !146, !noalias !148
  %index.next1703 = add i64 %index1702, 4
  %757 = icmp eq i64 %index.next1703, %n.vec1701
  br i1 %757, label %middle.block1693, label %vector.body1695, !llvm.loop !149

middle.block1693:                                 ; preds = %vector.body1695
  %cmp.n1705 = icmp eq i64 %732, %n.vec1701
  br i1 %cmp.n1705, label %polly.loop_exit282.1, label %polly.loop_header280.1.preheader

polly.loop_header280.1.preheader:                 ; preds = %vector.memcheck1678, %polly.loop_header280.preheader.1, %middle.block1693
  %polly.indvar284.1.ph = phi i64 [ 0, %vector.memcheck1678 ], [ 0, %polly.loop_header280.preheader.1 ], [ %n.vec1701, %middle.block1693 ]
  br label %polly.loop_header280.1

polly.loop_header280.1:                           ; preds = %polly.loop_header280.1.preheader, %polly.loop_header280.1
  %polly.indvar284.1 = phi i64 [ %polly.indvar_next285.1, %polly.loop_header280.1 ], [ %polly.indvar284.1.ph, %polly.loop_header280.1.preheader ]
  %758 = add nuw nsw i64 %polly.indvar284.1, %167
  %polly.access.add.Packed_MemRef_call1288.1 = add nuw nsw i64 %polly.indvar284.1, 1200
  %polly.access.Packed_MemRef_call1289.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.1
  %_p_scalar_290.1 = load double, double* %polly.access.Packed_MemRef_call1289.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_294.1, %_p_scalar_290.1
  %polly.access.Packed_MemRef_call2297.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.1
  %_p_scalar_298.1 = load double, double* %polly.access.Packed_MemRef_call2297.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_302.1, %_p_scalar_298.1
  %759 = shl i64 %758, 3
  %760 = add i64 %759, %740
  %scevgep303.1 = getelementptr i8, i8* %call, i64 %760
  %scevgep303304.1 = bitcast i8* %scevgep303.1 to double*
  %_p_scalar_305.1 = load double, double* %scevgep303304.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_305.1
  store double %p_add42.i118.1, double* %scevgep303304.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.1 = add nuw nsw i64 %polly.indvar284.1, 1
  %exitcond1104.1.not = icmp eq i64 %polly.indvar284.1, %smin.1
  br i1 %exitcond1104.1.not, label %polly.loop_exit282.1, label %polly.loop_header280.1, !llvm.loop !150

polly.loop_exit282.1:                             ; preds = %polly.loop_header280.1, %middle.block1693, %polly.loop_header272.1
  %polly.indvar_next277.1 = add nuw nsw i64 %polly.indvar276.1, 1
  %polly.loop_cond278.not.not.1 = icmp slt i64 %polly.indvar276.1, %237
  %indvars.iv.next1103.1 = add i64 %indvars.iv1102.1, 1
  %indvar.next1681 = add i64 %indvar1680, 1
  br i1 %polly.loop_cond278.not.not.1, label %polly.loop_header272.1, label %polly.loop_header272.2

polly.loop_header272.2:                           ; preds = %polly.loop_exit282.1, %polly.loop_exit282.2
  %indvar1645 = phi i64 [ %indvar.next1646, %polly.loop_exit282.2 ], [ 0, %polly.loop_exit282.1 ]
  %indvars.iv1102.2 = phi i64 [ %indvars.iv.next1103.2, %polly.loop_exit282.2 ], [ %219, %polly.loop_exit282.1 ]
  %polly.indvar276.2 = phi i64 [ %polly.indvar_next277.2, %polly.loop_exit282.2 ], [ %233, %polly.loop_exit282.1 ]
  %761 = add i64 %203, %indvar1645
  %smin1662 = call i64 @llvm.smin.i64(i64 %761, i64 255)
  %762 = add nsw i64 %smin1662, 1
  %763 = mul nuw nsw i64 %indvar1645, 9600
  %764 = add i64 %210, %763
  %scevgep1647 = getelementptr i8, i8* %call, i64 %764
  %765 = add i64 %211, %763
  %scevgep1648 = getelementptr i8, i8* %call, i64 %765
  %766 = add i64 %213, %indvar1645
  %smin1649 = call i64 @llvm.smin.i64(i64 %766, i64 255)
  %767 = shl nsw i64 %smin1649, 3
  %scevgep1650 = getelementptr i8, i8* %scevgep1648, i64 %767
  %scevgep1653 = getelementptr i8, i8* %scevgep1652, i64 %767
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1102.2, i64 255)
  %768 = add nsw i64 %polly.indvar276.2, %221
  %polly.loop_guard283.21203 = icmp sgt i64 %768, -1
  br i1 %polly.loop_guard283.21203, label %polly.loop_header280.preheader.2, label %polly.loop_exit282.2

polly.loop_header280.preheader.2:                 ; preds = %polly.loop_header272.2
  %769 = add nsw i64 %polly.indvar276.2, %220
  %polly.access.add.Packed_MemRef_call2292.2 = add nuw nsw i64 %768, 2400
  %polly.access.Packed_MemRef_call2293.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.2
  %_p_scalar_294.2 = load double, double* %polly.access.Packed_MemRef_call2293.2, align 8
  %polly.access.Packed_MemRef_call1301.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.2
  %_p_scalar_302.2 = load double, double* %polly.access.Packed_MemRef_call1301.2, align 8
  %770 = mul i64 %769, 9600
  %min.iters.check1663 = icmp ult i64 %762, 4
  br i1 %min.iters.check1663, label %polly.loop_header280.2.preheader, label %vector.memcheck1643

vector.memcheck1643:                              ; preds = %polly.loop_header280.preheader.2
  %bound01654 = icmp ult i8* %scevgep1647, %scevgep1653
  %bound11655 = icmp ult i8* %scevgep1651, %scevgep1650
  %found.conflict1656 = and i1 %bound01654, %bound11655
  br i1 %found.conflict1656, label %polly.loop_header280.2.preheader, label %vector.ph1664

vector.ph1664:                                    ; preds = %vector.memcheck1643
  %n.vec1666 = and i64 %762, -4
  %broadcast.splatinsert1672 = insertelement <4 x double> poison, double %_p_scalar_294.2, i32 0
  %broadcast.splat1673 = shufflevector <4 x double> %broadcast.splatinsert1672, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1675 = insertelement <4 x double> poison, double %_p_scalar_302.2, i32 0
  %broadcast.splat1676 = shufflevector <4 x double> %broadcast.splatinsert1675, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1660

vector.body1660:                                  ; preds = %vector.body1660, %vector.ph1664
  %index1667 = phi i64 [ 0, %vector.ph1664 ], [ %index.next1668, %vector.body1660 ]
  %771 = add nuw nsw i64 %index1667, %167
  %772 = add nuw nsw i64 %index1667, 2400
  %773 = getelementptr double, double* %Packed_MemRef_call1, i64 %772
  %774 = bitcast double* %773 to <4 x double>*
  %wide.load1671 = load <4 x double>, <4 x double>* %774, align 8, !alias.scope !151
  %775 = fmul fast <4 x double> %broadcast.splat1673, %wide.load1671
  %776 = getelementptr double, double* %Packed_MemRef_call2, i64 %772
  %777 = bitcast double* %776 to <4 x double>*
  %wide.load1674 = load <4 x double>, <4 x double>* %777, align 8
  %778 = fmul fast <4 x double> %broadcast.splat1676, %wide.load1674
  %779 = shl i64 %771, 3
  %780 = add i64 %779, %770
  %781 = getelementptr i8, i8* %call, i64 %780
  %782 = bitcast i8* %781 to <4 x double>*
  %wide.load1677 = load <4 x double>, <4 x double>* %782, align 8, !alias.scope !154, !noalias !156
  %783 = fadd fast <4 x double> %778, %775
  %784 = fmul fast <4 x double> %783, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %785 = fadd fast <4 x double> %784, %wide.load1677
  %786 = bitcast i8* %781 to <4 x double>*
  store <4 x double> %785, <4 x double>* %786, align 8, !alias.scope !154, !noalias !156
  %index.next1668 = add i64 %index1667, 4
  %787 = icmp eq i64 %index.next1668, %n.vec1666
  br i1 %787, label %middle.block1658, label %vector.body1660, !llvm.loop !157

middle.block1658:                                 ; preds = %vector.body1660
  %cmp.n1670 = icmp eq i64 %762, %n.vec1666
  br i1 %cmp.n1670, label %polly.loop_exit282.2, label %polly.loop_header280.2.preheader

polly.loop_header280.2.preheader:                 ; preds = %vector.memcheck1643, %polly.loop_header280.preheader.2, %middle.block1658
  %polly.indvar284.2.ph = phi i64 [ 0, %vector.memcheck1643 ], [ 0, %polly.loop_header280.preheader.2 ], [ %n.vec1666, %middle.block1658 ]
  br label %polly.loop_header280.2

polly.loop_header280.2:                           ; preds = %polly.loop_header280.2.preheader, %polly.loop_header280.2
  %polly.indvar284.2 = phi i64 [ %polly.indvar_next285.2, %polly.loop_header280.2 ], [ %polly.indvar284.2.ph, %polly.loop_header280.2.preheader ]
  %788 = add nuw nsw i64 %polly.indvar284.2, %167
  %polly.access.add.Packed_MemRef_call1288.2 = add nuw nsw i64 %polly.indvar284.2, 2400
  %polly.access.Packed_MemRef_call1289.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.2
  %_p_scalar_290.2 = load double, double* %polly.access.Packed_MemRef_call1289.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_294.2, %_p_scalar_290.2
  %polly.access.Packed_MemRef_call2297.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.2
  %_p_scalar_298.2 = load double, double* %polly.access.Packed_MemRef_call2297.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_302.2, %_p_scalar_298.2
  %789 = shl i64 %788, 3
  %790 = add i64 %789, %770
  %scevgep303.2 = getelementptr i8, i8* %call, i64 %790
  %scevgep303304.2 = bitcast i8* %scevgep303.2 to double*
  %_p_scalar_305.2 = load double, double* %scevgep303304.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_305.2
  store double %p_add42.i118.2, double* %scevgep303304.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.2 = add nuw nsw i64 %polly.indvar284.2, 1
  %exitcond1104.2.not = icmp eq i64 %polly.indvar284.2, %smin.2
  br i1 %exitcond1104.2.not, label %polly.loop_exit282.2, label %polly.loop_header280.2, !llvm.loop !158

polly.loop_exit282.2:                             ; preds = %polly.loop_header280.2, %middle.block1658, %polly.loop_header272.2
  %polly.indvar_next277.2 = add nuw nsw i64 %polly.indvar276.2, 1
  %polly.loop_cond278.not.not.2 = icmp slt i64 %polly.indvar276.2, %237
  %indvars.iv.next1103.2 = add i64 %indvars.iv1102.2, 1
  %indvar.next1646 = add i64 %indvar1645, 1
  br i1 %polly.loop_cond278.not.not.2, label %polly.loop_header272.2, label %polly.loop_header272.3

polly.loop_header272.3:                           ; preds = %polly.loop_exit282.2, %polly.loop_exit282.3
  %indvar1625 = phi i64 [ %indvar.next1626, %polly.loop_exit282.3 ], [ 0, %polly.loop_exit282.2 ]
  %indvars.iv1102.3 = phi i64 [ %indvars.iv.next1103.3, %polly.loop_exit282.3 ], [ %219, %polly.loop_exit282.2 ]
  %polly.indvar276.3 = phi i64 [ %polly.indvar_next277.3, %polly.loop_exit282.3 ], [ %233, %polly.loop_exit282.2 ]
  %791 = add i64 %218, %indvar1625
  %smin1627 = call i64 @llvm.smin.i64(i64 %791, i64 255)
  %792 = add nsw i64 %smin1627, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1102.3, i64 255)
  %793 = add nsw i64 %polly.indvar276.3, %221
  %polly.loop_guard283.31204 = icmp sgt i64 %793, -1
  br i1 %polly.loop_guard283.31204, label %polly.loop_header280.preheader.3, label %polly.loop_exit282.3

polly.loop_header280.preheader.3:                 ; preds = %polly.loop_header272.3
  %794 = add nsw i64 %polly.indvar276.3, %220
  %polly.access.add.Packed_MemRef_call2292.3 = add nuw nsw i64 %793, 3600
  %polly.access.Packed_MemRef_call2293.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.3
  %_p_scalar_294.3 = load double, double* %polly.access.Packed_MemRef_call2293.3, align 8
  %polly.access.Packed_MemRef_call1301.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.3
  %_p_scalar_302.3 = load double, double* %polly.access.Packed_MemRef_call1301.3, align 8
  %795 = mul i64 %794, 9600
  %min.iters.check1628 = icmp ult i64 %792, 4
  br i1 %min.iters.check1628, label %polly.loop_header280.3.preheader, label %vector.ph1629

vector.ph1629:                                    ; preds = %polly.loop_header280.preheader.3
  %n.vec1631 = and i64 %792, -4
  %broadcast.splatinsert1637 = insertelement <4 x double> poison, double %_p_scalar_294.3, i32 0
  %broadcast.splat1638 = shufflevector <4 x double> %broadcast.splatinsert1637, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1640 = insertelement <4 x double> poison, double %_p_scalar_302.3, i32 0
  %broadcast.splat1641 = shufflevector <4 x double> %broadcast.splatinsert1640, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1621

vector.body1621:                                  ; preds = %vector.body1621, %vector.ph1629
  %index1632 = phi i64 [ 0, %vector.ph1629 ], [ %index.next1633, %vector.body1621 ]
  %796 = add nuw nsw i64 %index1632, %167
  %797 = add nuw nsw i64 %index1632, 3600
  %798 = getelementptr double, double* %Packed_MemRef_call1, i64 %797
  %799 = bitcast double* %798 to <4 x double>*
  %wide.load1636 = load <4 x double>, <4 x double>* %799, align 8
  %800 = fmul fast <4 x double> %broadcast.splat1638, %wide.load1636
  %801 = getelementptr double, double* %Packed_MemRef_call2, i64 %797
  %802 = bitcast double* %801 to <4 x double>*
  %wide.load1639 = load <4 x double>, <4 x double>* %802, align 8
  %803 = fmul fast <4 x double> %broadcast.splat1641, %wide.load1639
  %804 = shl i64 %796, 3
  %805 = add i64 %804, %795
  %806 = getelementptr i8, i8* %call, i64 %805
  %807 = bitcast i8* %806 to <4 x double>*
  %wide.load1642 = load <4 x double>, <4 x double>* %807, align 8, !alias.scope !72, !noalias !74
  %808 = fadd fast <4 x double> %803, %800
  %809 = fmul fast <4 x double> %808, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %810 = fadd fast <4 x double> %809, %wide.load1642
  %811 = bitcast i8* %806 to <4 x double>*
  store <4 x double> %810, <4 x double>* %811, align 8, !alias.scope !72, !noalias !74
  %index.next1633 = add i64 %index1632, 4
  %812 = icmp eq i64 %index.next1633, %n.vec1631
  br i1 %812, label %middle.block1619, label %vector.body1621, !llvm.loop !159

middle.block1619:                                 ; preds = %vector.body1621
  %cmp.n1635 = icmp eq i64 %792, %n.vec1631
  br i1 %cmp.n1635, label %polly.loop_exit282.3, label %polly.loop_header280.3.preheader

polly.loop_header280.3.preheader:                 ; preds = %polly.loop_header280.preheader.3, %middle.block1619
  %polly.indvar284.3.ph = phi i64 [ 0, %polly.loop_header280.preheader.3 ], [ %n.vec1631, %middle.block1619 ]
  br label %polly.loop_header280.3

polly.loop_header280.3:                           ; preds = %polly.loop_header280.3.preheader, %polly.loop_header280.3
  %polly.indvar284.3 = phi i64 [ %polly.indvar_next285.3, %polly.loop_header280.3 ], [ %polly.indvar284.3.ph, %polly.loop_header280.3.preheader ]
  %813 = add nuw nsw i64 %polly.indvar284.3, %167
  %polly.access.add.Packed_MemRef_call1288.3 = add nuw nsw i64 %polly.indvar284.3, 3600
  %polly.access.Packed_MemRef_call1289.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.3
  %_p_scalar_290.3 = load double, double* %polly.access.Packed_MemRef_call1289.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_294.3, %_p_scalar_290.3
  %polly.access.Packed_MemRef_call2297.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.3
  %_p_scalar_298.3 = load double, double* %polly.access.Packed_MemRef_call2297.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_302.3, %_p_scalar_298.3
  %814 = shl i64 %813, 3
  %815 = add i64 %814, %795
  %scevgep303.3 = getelementptr i8, i8* %call, i64 %815
  %scevgep303304.3 = bitcast i8* %scevgep303.3 to double*
  %_p_scalar_305.3 = load double, double* %scevgep303304.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_305.3
  store double %p_add42.i118.3, double* %scevgep303304.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.3 = add nuw nsw i64 %polly.indvar284.3, 1
  %exitcond1104.3.not = icmp eq i64 %polly.indvar284.3, %smin.3
  br i1 %exitcond1104.3.not, label %polly.loop_exit282.3, label %polly.loop_header280.3, !llvm.loop !160

polly.loop_exit282.3:                             ; preds = %polly.loop_header280.3, %middle.block1619, %polly.loop_header272.3
  %polly.indvar_next277.3 = add nuw nsw i64 %polly.indvar276.3, 1
  %polly.loop_cond278.not.not.3 = icmp slt i64 %polly.indvar276.3, %237
  %indvars.iv.next1103.3 = add i64 %indvars.iv1102.3, 1
  %indvar.next1626 = add i64 %indvar1625, 1
  br i1 %polly.loop_cond278.not.not.3, label %polly.loop_header272.3, label %polly.loop_exit267

polly.loop_header430.1:                           ; preds = %polly.loop_header430, %polly.loop_header430.1
  %polly.indvar433.1 = phi i64 [ %polly.indvar_next434.1, %polly.loop_header430.1 ], [ 0, %polly.loop_header430 ]
  %816 = add nuw nsw i64 %polly.indvar433.1, %347
  %polly.access.mul.call2437.1 = mul nuw nsw i64 %816, 1000
  %polly.access.add.call2438.1 = add nuw nsw i64 %278, %polly.access.mul.call2437.1
  %polly.access.call2439.1 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.1
  %polly.access.call2439.load.1 = load double, double* %polly.access.call2439.1, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.1 = add nuw nsw i64 %polly.indvar433.1, 1200
  %polly.access.Packed_MemRef_call2313.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.1
  store double %polly.access.call2439.load.1, double* %polly.access.Packed_MemRef_call2313.1, align 8
  %polly.indvar_next434.1 = add nuw nsw i64 %polly.indvar433.1, 1
  %exitcond1112.1.not = icmp eq i64 %polly.indvar_next434.1, %indvars.iv1110
  br i1 %exitcond1112.1.not, label %polly.loop_header430.2, label %polly.loop_header430.1

polly.loop_header430.2:                           ; preds = %polly.loop_header430.1, %polly.loop_header430.2
  %polly.indvar433.2 = phi i64 [ %polly.indvar_next434.2, %polly.loop_header430.2 ], [ 0, %polly.loop_header430.1 ]
  %817 = add nuw nsw i64 %polly.indvar433.2, %347
  %polly.access.mul.call2437.2 = mul nuw nsw i64 %817, 1000
  %polly.access.add.call2438.2 = add nuw nsw i64 %279, %polly.access.mul.call2437.2
  %polly.access.call2439.2 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.2
  %polly.access.call2439.load.2 = load double, double* %polly.access.call2439.2, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.2 = add nuw nsw i64 %polly.indvar433.2, 2400
  %polly.access.Packed_MemRef_call2313.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.2
  store double %polly.access.call2439.load.2, double* %polly.access.Packed_MemRef_call2313.2, align 8
  %polly.indvar_next434.2 = add nuw nsw i64 %polly.indvar433.2, 1
  %exitcond1112.2.not = icmp eq i64 %polly.indvar_next434.2, %indvars.iv1110
  br i1 %exitcond1112.2.not, label %polly.loop_header430.3, label %polly.loop_header430.2

polly.loop_header430.3:                           ; preds = %polly.loop_header430.2, %polly.loop_header430.3
  %polly.indvar433.3 = phi i64 [ %polly.indvar_next434.3, %polly.loop_header430.3 ], [ 0, %polly.loop_header430.2 ]
  %818 = add nuw nsw i64 %polly.indvar433.3, %347
  %polly.access.mul.call2437.3 = mul nuw nsw i64 %818, 1000
  %polly.access.add.call2438.3 = add nuw nsw i64 %280, %polly.access.mul.call2437.3
  %polly.access.call2439.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.3
  %polly.access.call2439.load.3 = load double, double* %polly.access.call2439.3, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.3 = add nuw nsw i64 %polly.indvar433.3, 3600
  %polly.access.Packed_MemRef_call2313.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.3
  store double %polly.access.call2439.load.3, double* %polly.access.Packed_MemRef_call2313.3, align 8
  %polly.indvar_next434.3 = add nuw nsw i64 %polly.indvar433.3, 1
  %exitcond1112.3.not = icmp eq i64 %polly.indvar_next434.3, %indvars.iv1110
  br i1 %exitcond1112.3.not, label %polly.loop_exit432.3, label %polly.loop_header430.3

polly.loop_exit432.3:                             ; preds = %polly.loop_header430.3
  %819 = add nsw i64 %346, 1199
  %820 = mul nuw nsw i64 %polly.indvar421, 3
  %821 = add nuw nsw i64 %polly.indvar421, 2
  %pexp.p_div_q440 = udiv i64 %821, 3
  %822 = sub nsw i64 %820, %pexp.p_div_q440
  br label %polly.loop_header441

polly.loop_header466.1:                           ; preds = %polly.loop_header466, %polly.loop_header466.1
  %polly.indvar470.1 = phi i64 [ %polly.indvar_next471.1, %polly.loop_header466.1 ], [ %405, %polly.loop_header466 ]
  %823 = add nuw nsw i64 %polly.indvar470.1, %347
  %polly.access.mul.call1474.1 = mul nsw i64 %823, 1000
  %polly.access.add.call1475.1 = add nuw nsw i64 %278, %polly.access.mul.call1474.1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.1 = add nuw nsw i64 %polly.indvar470.1, 1200
  %polly.access.Packed_MemRef_call1311479.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1311479.1, align 8
  %polly.indvar_next471.1 = add nuw nsw i64 %polly.indvar470.1, 1
  %polly.loop_cond472.not.not.1 = icmp slt i64 %polly.indvar470.1, %408
  br i1 %polly.loop_cond472.not.not.1, label %polly.loop_header466.1, label %polly.loop_header466.2

polly.loop_header466.2:                           ; preds = %polly.loop_header466.1, %polly.loop_header466.2
  %polly.indvar470.2 = phi i64 [ %polly.indvar_next471.2, %polly.loop_header466.2 ], [ %405, %polly.loop_header466.1 ]
  %824 = add nuw nsw i64 %polly.indvar470.2, %347
  %polly.access.mul.call1474.2 = mul nsw i64 %824, 1000
  %polly.access.add.call1475.2 = add nuw nsw i64 %279, %polly.access.mul.call1474.2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.2 = add nuw nsw i64 %polly.indvar470.2, 2400
  %polly.access.Packed_MemRef_call1311479.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1311479.2, align 8
  %polly.indvar_next471.2 = add nuw nsw i64 %polly.indvar470.2, 1
  %polly.loop_cond472.not.not.2 = icmp slt i64 %polly.indvar470.2, %408
  br i1 %polly.loop_cond472.not.not.2, label %polly.loop_header466.2, label %polly.loop_header466.3

polly.loop_header466.3:                           ; preds = %polly.loop_header466.2, %polly.loop_header466.3
  %polly.indvar470.3 = phi i64 [ %polly.indvar_next471.3, %polly.loop_header466.3 ], [ %405, %polly.loop_header466.2 ]
  %825 = add nuw nsw i64 %polly.indvar470.3, %347
  %polly.access.mul.call1474.3 = mul nsw i64 %825, 1000
  %polly.access.add.call1475.3 = add nuw nsw i64 %280, %polly.access.mul.call1474.3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.3 = add nuw nsw i64 %polly.indvar470.3, 3600
  %polly.access.Packed_MemRef_call1311479.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1311479.3, align 8
  %polly.indvar_next471.3 = add nuw nsw i64 %polly.indvar470.3, 1
  %polly.loop_cond472.not.not.3 = icmp slt i64 %polly.indvar470.3, %408
  br i1 %polly.loop_cond472.not.not.3, label %polly.loop_header466.3, label %polly.loop_header480.preheader

polly.loop_header454.us.1:                        ; preds = %polly.loop_header454.us.1.preheader, %polly.loop_header454.us.1
  %polly.indvar458.us.1 = phi i64 [ %polly.indvar_next459.us.1, %polly.loop_header454.us.1 ], [ 0, %polly.loop_header454.us.1.preheader ]
  %826 = add nuw nsw i64 %polly.indvar458.us.1, %347
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %826, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %278, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.1 = add nuw nsw i64 %polly.indvar458.us.1, 1200
  %polly.access.Packed_MemRef_call1311.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1311.us.1, align 8
  %polly.indvar_next459.us.1 = add nuw i64 %polly.indvar458.us.1, 1
  %exitcond1115.1.not = icmp eq i64 %polly.indvar458.us.1, %403
  br i1 %exitcond1115.1.not, label %polly.loop_exit456.loopexit.us.1, label %polly.loop_header454.us.1

polly.loop_exit456.loopexit.us.1:                 ; preds = %polly.loop_header454.us.1
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.2.preheader, label %polly.loop_header466.us.1

polly.loop_header466.us.1:                        ; preds = %polly.loop_exit456.loopexit.us.1, %polly.loop_header466.us.1
  %polly.indvar470.us.1 = phi i64 [ %polly.indvar_next471.us.1, %polly.loop_header466.us.1 ], [ %405, %polly.loop_exit456.loopexit.us.1 ]
  %827 = add nuw nsw i64 %polly.indvar470.us.1, %347
  %polly.access.mul.call1474.us.1 = mul nsw i64 %827, 1000
  %polly.access.add.call1475.us.1 = add nuw nsw i64 %278, %polly.access.mul.call1474.us.1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1200
  %polly.access.Packed_MemRef_call1311479.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1311479.us.1, align 8
  %polly.indvar_next471.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1
  %polly.loop_cond472.not.not.us.1 = icmp slt i64 %polly.indvar470.us.1, %408
  br i1 %polly.loop_cond472.not.not.us.1, label %polly.loop_header466.us.1, label %polly.loop_header454.us.2.preheader

polly.loop_header454.us.2.preheader:              ; preds = %polly.loop_header466.us.1, %polly.loop_exit456.loopexit.us.1
  br label %polly.loop_header454.us.2

polly.loop_header454.us.2:                        ; preds = %polly.loop_header454.us.2.preheader, %polly.loop_header454.us.2
  %polly.indvar458.us.2 = phi i64 [ %polly.indvar_next459.us.2, %polly.loop_header454.us.2 ], [ 0, %polly.loop_header454.us.2.preheader ]
  %828 = add nuw nsw i64 %polly.indvar458.us.2, %347
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %828, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %279, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.2 = add nuw nsw i64 %polly.indvar458.us.2, 2400
  %polly.access.Packed_MemRef_call1311.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1311.us.2, align 8
  %polly.indvar_next459.us.2 = add nuw i64 %polly.indvar458.us.2, 1
  %exitcond1115.2.not = icmp eq i64 %polly.indvar458.us.2, %403
  br i1 %exitcond1115.2.not, label %polly.loop_exit456.loopexit.us.2, label %polly.loop_header454.us.2

polly.loop_exit456.loopexit.us.2:                 ; preds = %polly.loop_header454.us.2
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.3.preheader, label %polly.loop_header466.us.2

polly.loop_header466.us.2:                        ; preds = %polly.loop_exit456.loopexit.us.2, %polly.loop_header466.us.2
  %polly.indvar470.us.2 = phi i64 [ %polly.indvar_next471.us.2, %polly.loop_header466.us.2 ], [ %405, %polly.loop_exit456.loopexit.us.2 ]
  %829 = add nuw nsw i64 %polly.indvar470.us.2, %347
  %polly.access.mul.call1474.us.2 = mul nsw i64 %829, 1000
  %polly.access.add.call1475.us.2 = add nuw nsw i64 %279, %polly.access.mul.call1474.us.2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 2400
  %polly.access.Packed_MemRef_call1311479.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1311479.us.2, align 8
  %polly.indvar_next471.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 1
  %polly.loop_cond472.not.not.us.2 = icmp slt i64 %polly.indvar470.us.2, %408
  br i1 %polly.loop_cond472.not.not.us.2, label %polly.loop_header466.us.2, label %polly.loop_header454.us.3.preheader

polly.loop_header454.us.3.preheader:              ; preds = %polly.loop_header466.us.2, %polly.loop_exit456.loopexit.us.2
  br label %polly.loop_header454.us.3

polly.loop_header454.us.3:                        ; preds = %polly.loop_header454.us.3.preheader, %polly.loop_header454.us.3
  %polly.indvar458.us.3 = phi i64 [ %polly.indvar_next459.us.3, %polly.loop_header454.us.3 ], [ 0, %polly.loop_header454.us.3.preheader ]
  %830 = add nuw nsw i64 %polly.indvar458.us.3, %347
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %830, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %280, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.3 = add nuw nsw i64 %polly.indvar458.us.3, 3600
  %polly.access.Packed_MemRef_call1311.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1311.us.3, align 8
  %polly.indvar_next459.us.3 = add nuw i64 %polly.indvar458.us.3, 1
  %exitcond1115.3.not = icmp eq i64 %polly.indvar458.us.3, %403
  br i1 %exitcond1115.3.not, label %polly.loop_exit456.loopexit.us.3, label %polly.loop_header454.us.3

polly.loop_exit456.loopexit.us.3:                 ; preds = %polly.loop_header454.us.3
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466.us.3

polly.loop_header466.us.3:                        ; preds = %polly.loop_exit456.loopexit.us.3, %polly.loop_header466.us.3
  %polly.indvar470.us.3 = phi i64 [ %polly.indvar_next471.us.3, %polly.loop_header466.us.3 ], [ %405, %polly.loop_exit456.loopexit.us.3 ]
  %831 = add nuw nsw i64 %polly.indvar470.us.3, %347
  %polly.access.mul.call1474.us.3 = mul nsw i64 %831, 1000
  %polly.access.add.call1475.us.3 = add nuw nsw i64 %280, %polly.access.mul.call1474.us.3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 3600
  %polly.access.Packed_MemRef_call1311479.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1311479.us.3, align 8
  %polly.indvar_next471.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 1
  %polly.loop_cond472.not.not.us.3 = icmp slt i64 %polly.indvar470.us.3, %408
  br i1 %polly.loop_cond472.not.not.us.3, label %polly.loop_header466.us.3, label %polly.loop_header480.preheader

polly.loop_header487.1:                           ; preds = %polly.loop_exit497, %polly.loop_exit497.1
  %indvar1526 = phi i64 [ %indvar.next1527, %polly.loop_exit497.1 ], [ 0, %polly.loop_exit497 ]
  %indvars.iv1128.1 = phi i64 [ %indvars.iv.next1129.1, %polly.loop_exit497.1 ], [ %399, %polly.loop_exit497 ]
  %polly.indvar491.1 = phi i64 [ %polly.indvar_next492.1, %polly.loop_exit497.1 ], [ %413, %polly.loop_exit497 ]
  %832 = add i64 %368, %indvar1526
  %smin1543 = call i64 @llvm.smin.i64(i64 %832, i64 255)
  %833 = add nsw i64 %smin1543, 1
  %834 = mul nuw nsw i64 %indvar1526, 9600
  %835 = add i64 %375, %834
  %scevgep1528 = getelementptr i8, i8* %call, i64 %835
  %836 = add i64 %376, %834
  %scevgep1529 = getelementptr i8, i8* %call, i64 %836
  %837 = add i64 %378, %indvar1526
  %smin1530 = call i64 @llvm.smin.i64(i64 %837, i64 255)
  %838 = shl nsw i64 %smin1530, 3
  %scevgep1531 = getelementptr i8, i8* %scevgep1529, i64 %838
  %scevgep1534 = getelementptr i8, i8* %scevgep1533, i64 %838
  %smin1130.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1128.1, i64 255)
  %839 = add nsw i64 %polly.indvar491.1, %401
  %polly.loop_guard498.11206 = icmp sgt i64 %839, -1
  br i1 %polly.loop_guard498.11206, label %polly.loop_header495.preheader.1, label %polly.loop_exit497.1

polly.loop_header495.preheader.1:                 ; preds = %polly.loop_header487.1
  %840 = add nsw i64 %polly.indvar491.1, %400
  %polly.access.add.Packed_MemRef_call2313507.1 = add nuw nsw i64 %839, 1200
  %polly.access.Packed_MemRef_call2313508.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.1
  %_p_scalar_509.1 = load double, double* %polly.access.Packed_MemRef_call2313508.1, align 8
  %polly.access.Packed_MemRef_call1311516.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.1
  %_p_scalar_517.1 = load double, double* %polly.access.Packed_MemRef_call1311516.1, align 8
  %841 = mul i64 %840, 9600
  %min.iters.check1544 = icmp ult i64 %833, 4
  br i1 %min.iters.check1544, label %polly.loop_header495.1.preheader, label %vector.memcheck1524

vector.memcheck1524:                              ; preds = %polly.loop_header495.preheader.1
  %bound01535 = icmp ult i8* %scevgep1528, %scevgep1534
  %bound11536 = icmp ult i8* %scevgep1532, %scevgep1531
  %found.conflict1537 = and i1 %bound01535, %bound11536
  br i1 %found.conflict1537, label %polly.loop_header495.1.preheader, label %vector.ph1545

vector.ph1545:                                    ; preds = %vector.memcheck1524
  %n.vec1547 = and i64 %833, -4
  %broadcast.splatinsert1553 = insertelement <4 x double> poison, double %_p_scalar_509.1, i32 0
  %broadcast.splat1554 = shufflevector <4 x double> %broadcast.splatinsert1553, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1556 = insertelement <4 x double> poison, double %_p_scalar_517.1, i32 0
  %broadcast.splat1557 = shufflevector <4 x double> %broadcast.splatinsert1556, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1541

vector.body1541:                                  ; preds = %vector.body1541, %vector.ph1545
  %index1548 = phi i64 [ 0, %vector.ph1545 ], [ %index.next1549, %vector.body1541 ]
  %842 = add nuw nsw i64 %index1548, %347
  %843 = add nuw nsw i64 %index1548, 1200
  %844 = getelementptr double, double* %Packed_MemRef_call1311, i64 %843
  %845 = bitcast double* %844 to <4 x double>*
  %wide.load1552 = load <4 x double>, <4 x double>* %845, align 8, !alias.scope !161
  %846 = fmul fast <4 x double> %broadcast.splat1554, %wide.load1552
  %847 = getelementptr double, double* %Packed_MemRef_call2313, i64 %843
  %848 = bitcast double* %847 to <4 x double>*
  %wide.load1555 = load <4 x double>, <4 x double>* %848, align 8
  %849 = fmul fast <4 x double> %broadcast.splat1557, %wide.load1555
  %850 = shl i64 %842, 3
  %851 = add i64 %850, %841
  %852 = getelementptr i8, i8* %call, i64 %851
  %853 = bitcast i8* %852 to <4 x double>*
  %wide.load1558 = load <4 x double>, <4 x double>* %853, align 8, !alias.scope !164, !noalias !166
  %854 = fadd fast <4 x double> %849, %846
  %855 = fmul fast <4 x double> %854, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %856 = fadd fast <4 x double> %855, %wide.load1558
  %857 = bitcast i8* %852 to <4 x double>*
  store <4 x double> %856, <4 x double>* %857, align 8, !alias.scope !164, !noalias !166
  %index.next1549 = add i64 %index1548, 4
  %858 = icmp eq i64 %index.next1549, %n.vec1547
  br i1 %858, label %middle.block1539, label %vector.body1541, !llvm.loop !167

middle.block1539:                                 ; preds = %vector.body1541
  %cmp.n1551 = icmp eq i64 %833, %n.vec1547
  br i1 %cmp.n1551, label %polly.loop_exit497.1, label %polly.loop_header495.1.preheader

polly.loop_header495.1.preheader:                 ; preds = %vector.memcheck1524, %polly.loop_header495.preheader.1, %middle.block1539
  %polly.indvar499.1.ph = phi i64 [ 0, %vector.memcheck1524 ], [ 0, %polly.loop_header495.preheader.1 ], [ %n.vec1547, %middle.block1539 ]
  br label %polly.loop_header495.1

polly.loop_header495.1:                           ; preds = %polly.loop_header495.1.preheader, %polly.loop_header495.1
  %polly.indvar499.1 = phi i64 [ %polly.indvar_next500.1, %polly.loop_header495.1 ], [ %polly.indvar499.1.ph, %polly.loop_header495.1.preheader ]
  %859 = add nuw nsw i64 %polly.indvar499.1, %347
  %polly.access.add.Packed_MemRef_call1311503.1 = add nuw nsw i64 %polly.indvar499.1, 1200
  %polly.access.Packed_MemRef_call1311504.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.1
  %_p_scalar_505.1 = load double, double* %polly.access.Packed_MemRef_call1311504.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_509.1, %_p_scalar_505.1
  %polly.access.Packed_MemRef_call2313512.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.1
  %_p_scalar_513.1 = load double, double* %polly.access.Packed_MemRef_call2313512.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_517.1, %_p_scalar_513.1
  %860 = shl i64 %859, 3
  %861 = add i64 %860, %841
  %scevgep518.1 = getelementptr i8, i8* %call, i64 %861
  %scevgep518519.1 = bitcast i8* %scevgep518.1 to double*
  %_p_scalar_520.1 = load double, double* %scevgep518519.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_520.1
  store double %p_add42.i79.1, double* %scevgep518519.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.1 = add nuw nsw i64 %polly.indvar499.1, 1
  %exitcond1131.1.not = icmp eq i64 %polly.indvar499.1, %smin1130.1
  br i1 %exitcond1131.1.not, label %polly.loop_exit497.1, label %polly.loop_header495.1, !llvm.loop !168

polly.loop_exit497.1:                             ; preds = %polly.loop_header495.1, %middle.block1539, %polly.loop_header487.1
  %polly.indvar_next492.1 = add nuw nsw i64 %polly.indvar491.1, 1
  %polly.loop_cond493.not.not.1 = icmp slt i64 %polly.indvar491.1, %417
  %indvars.iv.next1129.1 = add i64 %indvars.iv1128.1, 1
  %indvar.next1527 = add i64 %indvar1526, 1
  br i1 %polly.loop_cond493.not.not.1, label %polly.loop_header487.1, label %polly.loop_header487.2

polly.loop_header487.2:                           ; preds = %polly.loop_exit497.1, %polly.loop_exit497.2
  %indvar1491 = phi i64 [ %indvar.next1492, %polly.loop_exit497.2 ], [ 0, %polly.loop_exit497.1 ]
  %indvars.iv1128.2 = phi i64 [ %indvars.iv.next1129.2, %polly.loop_exit497.2 ], [ %399, %polly.loop_exit497.1 ]
  %polly.indvar491.2 = phi i64 [ %polly.indvar_next492.2, %polly.loop_exit497.2 ], [ %413, %polly.loop_exit497.1 ]
  %862 = add i64 %383, %indvar1491
  %smin1508 = call i64 @llvm.smin.i64(i64 %862, i64 255)
  %863 = add nsw i64 %smin1508, 1
  %864 = mul nuw nsw i64 %indvar1491, 9600
  %865 = add i64 %390, %864
  %scevgep1493 = getelementptr i8, i8* %call, i64 %865
  %866 = add i64 %391, %864
  %scevgep1494 = getelementptr i8, i8* %call, i64 %866
  %867 = add i64 %393, %indvar1491
  %smin1495 = call i64 @llvm.smin.i64(i64 %867, i64 255)
  %868 = shl nsw i64 %smin1495, 3
  %scevgep1496 = getelementptr i8, i8* %scevgep1494, i64 %868
  %scevgep1499 = getelementptr i8, i8* %scevgep1498, i64 %868
  %smin1130.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1128.2, i64 255)
  %869 = add nsw i64 %polly.indvar491.2, %401
  %polly.loop_guard498.21207 = icmp sgt i64 %869, -1
  br i1 %polly.loop_guard498.21207, label %polly.loop_header495.preheader.2, label %polly.loop_exit497.2

polly.loop_header495.preheader.2:                 ; preds = %polly.loop_header487.2
  %870 = add nsw i64 %polly.indvar491.2, %400
  %polly.access.add.Packed_MemRef_call2313507.2 = add nuw nsw i64 %869, 2400
  %polly.access.Packed_MemRef_call2313508.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.2
  %_p_scalar_509.2 = load double, double* %polly.access.Packed_MemRef_call2313508.2, align 8
  %polly.access.Packed_MemRef_call1311516.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.2
  %_p_scalar_517.2 = load double, double* %polly.access.Packed_MemRef_call1311516.2, align 8
  %871 = mul i64 %870, 9600
  %min.iters.check1509 = icmp ult i64 %863, 4
  br i1 %min.iters.check1509, label %polly.loop_header495.2.preheader, label %vector.memcheck1489

vector.memcheck1489:                              ; preds = %polly.loop_header495.preheader.2
  %bound01500 = icmp ult i8* %scevgep1493, %scevgep1499
  %bound11501 = icmp ult i8* %scevgep1497, %scevgep1496
  %found.conflict1502 = and i1 %bound01500, %bound11501
  br i1 %found.conflict1502, label %polly.loop_header495.2.preheader, label %vector.ph1510

vector.ph1510:                                    ; preds = %vector.memcheck1489
  %n.vec1512 = and i64 %863, -4
  %broadcast.splatinsert1518 = insertelement <4 x double> poison, double %_p_scalar_509.2, i32 0
  %broadcast.splat1519 = shufflevector <4 x double> %broadcast.splatinsert1518, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1521 = insertelement <4 x double> poison, double %_p_scalar_517.2, i32 0
  %broadcast.splat1522 = shufflevector <4 x double> %broadcast.splatinsert1521, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1506

vector.body1506:                                  ; preds = %vector.body1506, %vector.ph1510
  %index1513 = phi i64 [ 0, %vector.ph1510 ], [ %index.next1514, %vector.body1506 ]
  %872 = add nuw nsw i64 %index1513, %347
  %873 = add nuw nsw i64 %index1513, 2400
  %874 = getelementptr double, double* %Packed_MemRef_call1311, i64 %873
  %875 = bitcast double* %874 to <4 x double>*
  %wide.load1517 = load <4 x double>, <4 x double>* %875, align 8, !alias.scope !169
  %876 = fmul fast <4 x double> %broadcast.splat1519, %wide.load1517
  %877 = getelementptr double, double* %Packed_MemRef_call2313, i64 %873
  %878 = bitcast double* %877 to <4 x double>*
  %wide.load1520 = load <4 x double>, <4 x double>* %878, align 8
  %879 = fmul fast <4 x double> %broadcast.splat1522, %wide.load1520
  %880 = shl i64 %872, 3
  %881 = add i64 %880, %871
  %882 = getelementptr i8, i8* %call, i64 %881
  %883 = bitcast i8* %882 to <4 x double>*
  %wide.load1523 = load <4 x double>, <4 x double>* %883, align 8, !alias.scope !172, !noalias !174
  %884 = fadd fast <4 x double> %879, %876
  %885 = fmul fast <4 x double> %884, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %886 = fadd fast <4 x double> %885, %wide.load1523
  %887 = bitcast i8* %882 to <4 x double>*
  store <4 x double> %886, <4 x double>* %887, align 8, !alias.scope !172, !noalias !174
  %index.next1514 = add i64 %index1513, 4
  %888 = icmp eq i64 %index.next1514, %n.vec1512
  br i1 %888, label %middle.block1504, label %vector.body1506, !llvm.loop !175

middle.block1504:                                 ; preds = %vector.body1506
  %cmp.n1516 = icmp eq i64 %863, %n.vec1512
  br i1 %cmp.n1516, label %polly.loop_exit497.2, label %polly.loop_header495.2.preheader

polly.loop_header495.2.preheader:                 ; preds = %vector.memcheck1489, %polly.loop_header495.preheader.2, %middle.block1504
  %polly.indvar499.2.ph = phi i64 [ 0, %vector.memcheck1489 ], [ 0, %polly.loop_header495.preheader.2 ], [ %n.vec1512, %middle.block1504 ]
  br label %polly.loop_header495.2

polly.loop_header495.2:                           ; preds = %polly.loop_header495.2.preheader, %polly.loop_header495.2
  %polly.indvar499.2 = phi i64 [ %polly.indvar_next500.2, %polly.loop_header495.2 ], [ %polly.indvar499.2.ph, %polly.loop_header495.2.preheader ]
  %889 = add nuw nsw i64 %polly.indvar499.2, %347
  %polly.access.add.Packed_MemRef_call1311503.2 = add nuw nsw i64 %polly.indvar499.2, 2400
  %polly.access.Packed_MemRef_call1311504.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.2
  %_p_scalar_505.2 = load double, double* %polly.access.Packed_MemRef_call1311504.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_509.2, %_p_scalar_505.2
  %polly.access.Packed_MemRef_call2313512.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.2
  %_p_scalar_513.2 = load double, double* %polly.access.Packed_MemRef_call2313512.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_517.2, %_p_scalar_513.2
  %890 = shl i64 %889, 3
  %891 = add i64 %890, %871
  %scevgep518.2 = getelementptr i8, i8* %call, i64 %891
  %scevgep518519.2 = bitcast i8* %scevgep518.2 to double*
  %_p_scalar_520.2 = load double, double* %scevgep518519.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_520.2
  store double %p_add42.i79.2, double* %scevgep518519.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.2 = add nuw nsw i64 %polly.indvar499.2, 1
  %exitcond1131.2.not = icmp eq i64 %polly.indvar499.2, %smin1130.2
  br i1 %exitcond1131.2.not, label %polly.loop_exit497.2, label %polly.loop_header495.2, !llvm.loop !176

polly.loop_exit497.2:                             ; preds = %polly.loop_header495.2, %middle.block1504, %polly.loop_header487.2
  %polly.indvar_next492.2 = add nuw nsw i64 %polly.indvar491.2, 1
  %polly.loop_cond493.not.not.2 = icmp slt i64 %polly.indvar491.2, %417
  %indvars.iv.next1129.2 = add i64 %indvars.iv1128.2, 1
  %indvar.next1492 = add i64 %indvar1491, 1
  br i1 %polly.loop_cond493.not.not.2, label %polly.loop_header487.2, label %polly.loop_header487.3

polly.loop_header487.3:                           ; preds = %polly.loop_exit497.2, %polly.loop_exit497.3
  %indvar1471 = phi i64 [ %indvar.next1472, %polly.loop_exit497.3 ], [ 0, %polly.loop_exit497.2 ]
  %indvars.iv1128.3 = phi i64 [ %indvars.iv.next1129.3, %polly.loop_exit497.3 ], [ %399, %polly.loop_exit497.2 ]
  %polly.indvar491.3 = phi i64 [ %polly.indvar_next492.3, %polly.loop_exit497.3 ], [ %413, %polly.loop_exit497.2 ]
  %892 = add i64 %398, %indvar1471
  %smin1473 = call i64 @llvm.smin.i64(i64 %892, i64 255)
  %893 = add nsw i64 %smin1473, 1
  %smin1130.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1128.3, i64 255)
  %894 = add nsw i64 %polly.indvar491.3, %401
  %polly.loop_guard498.31208 = icmp sgt i64 %894, -1
  br i1 %polly.loop_guard498.31208, label %polly.loop_header495.preheader.3, label %polly.loop_exit497.3

polly.loop_header495.preheader.3:                 ; preds = %polly.loop_header487.3
  %895 = add nsw i64 %polly.indvar491.3, %400
  %polly.access.add.Packed_MemRef_call2313507.3 = add nuw nsw i64 %894, 3600
  %polly.access.Packed_MemRef_call2313508.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.3
  %_p_scalar_509.3 = load double, double* %polly.access.Packed_MemRef_call2313508.3, align 8
  %polly.access.Packed_MemRef_call1311516.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.3
  %_p_scalar_517.3 = load double, double* %polly.access.Packed_MemRef_call1311516.3, align 8
  %896 = mul i64 %895, 9600
  %min.iters.check1474 = icmp ult i64 %893, 4
  br i1 %min.iters.check1474, label %polly.loop_header495.3.preheader, label %vector.ph1475

vector.ph1475:                                    ; preds = %polly.loop_header495.preheader.3
  %n.vec1477 = and i64 %893, -4
  %broadcast.splatinsert1483 = insertelement <4 x double> poison, double %_p_scalar_509.3, i32 0
  %broadcast.splat1484 = shufflevector <4 x double> %broadcast.splatinsert1483, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1486 = insertelement <4 x double> poison, double %_p_scalar_517.3, i32 0
  %broadcast.splat1487 = shufflevector <4 x double> %broadcast.splatinsert1486, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1467

vector.body1467:                                  ; preds = %vector.body1467, %vector.ph1475
  %index1478 = phi i64 [ 0, %vector.ph1475 ], [ %index.next1479, %vector.body1467 ]
  %897 = add nuw nsw i64 %index1478, %347
  %898 = add nuw nsw i64 %index1478, 3600
  %899 = getelementptr double, double* %Packed_MemRef_call1311, i64 %898
  %900 = bitcast double* %899 to <4 x double>*
  %wide.load1482 = load <4 x double>, <4 x double>* %900, align 8
  %901 = fmul fast <4 x double> %broadcast.splat1484, %wide.load1482
  %902 = getelementptr double, double* %Packed_MemRef_call2313, i64 %898
  %903 = bitcast double* %902 to <4 x double>*
  %wide.load1485 = load <4 x double>, <4 x double>* %903, align 8
  %904 = fmul fast <4 x double> %broadcast.splat1487, %wide.load1485
  %905 = shl i64 %897, 3
  %906 = add i64 %905, %896
  %907 = getelementptr i8, i8* %call, i64 %906
  %908 = bitcast i8* %907 to <4 x double>*
  %wide.load1488 = load <4 x double>, <4 x double>* %908, align 8, !alias.scope !92, !noalias !94
  %909 = fadd fast <4 x double> %904, %901
  %910 = fmul fast <4 x double> %909, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %911 = fadd fast <4 x double> %910, %wide.load1488
  %912 = bitcast i8* %907 to <4 x double>*
  store <4 x double> %911, <4 x double>* %912, align 8, !alias.scope !92, !noalias !94
  %index.next1479 = add i64 %index1478, 4
  %913 = icmp eq i64 %index.next1479, %n.vec1477
  br i1 %913, label %middle.block1465, label %vector.body1467, !llvm.loop !177

middle.block1465:                                 ; preds = %vector.body1467
  %cmp.n1481 = icmp eq i64 %893, %n.vec1477
  br i1 %cmp.n1481, label %polly.loop_exit497.3, label %polly.loop_header495.3.preheader

polly.loop_header495.3.preheader:                 ; preds = %polly.loop_header495.preheader.3, %middle.block1465
  %polly.indvar499.3.ph = phi i64 [ 0, %polly.loop_header495.preheader.3 ], [ %n.vec1477, %middle.block1465 ]
  br label %polly.loop_header495.3

polly.loop_header495.3:                           ; preds = %polly.loop_header495.3.preheader, %polly.loop_header495.3
  %polly.indvar499.3 = phi i64 [ %polly.indvar_next500.3, %polly.loop_header495.3 ], [ %polly.indvar499.3.ph, %polly.loop_header495.3.preheader ]
  %914 = add nuw nsw i64 %polly.indvar499.3, %347
  %polly.access.add.Packed_MemRef_call1311503.3 = add nuw nsw i64 %polly.indvar499.3, 3600
  %polly.access.Packed_MemRef_call1311504.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.3
  %_p_scalar_505.3 = load double, double* %polly.access.Packed_MemRef_call1311504.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_509.3, %_p_scalar_505.3
  %polly.access.Packed_MemRef_call2313512.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.3
  %_p_scalar_513.3 = load double, double* %polly.access.Packed_MemRef_call2313512.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_517.3, %_p_scalar_513.3
  %915 = shl i64 %914, 3
  %916 = add i64 %915, %896
  %scevgep518.3 = getelementptr i8, i8* %call, i64 %916
  %scevgep518519.3 = bitcast i8* %scevgep518.3 to double*
  %_p_scalar_520.3 = load double, double* %scevgep518519.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_520.3
  store double %p_add42.i79.3, double* %scevgep518519.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.3 = add nuw nsw i64 %polly.indvar499.3, 1
  %exitcond1131.3.not = icmp eq i64 %polly.indvar499.3, %smin1130.3
  br i1 %exitcond1131.3.not, label %polly.loop_exit497.3, label %polly.loop_header495.3, !llvm.loop !178

polly.loop_exit497.3:                             ; preds = %polly.loop_header495.3, %middle.block1465, %polly.loop_header487.3
  %polly.indvar_next492.3 = add nuw nsw i64 %polly.indvar491.3, 1
  %polly.loop_cond493.not.not.3 = icmp slt i64 %polly.indvar491.3, %417
  %indvars.iv.next1129.3 = add i64 %indvars.iv1128.3, 1
  %indvar.next1472 = add i64 %indvar1471, 1
  br i1 %polly.loop_cond493.not.not.3, label %polly.loop_header487.3, label %polly.loop_exit482

polly.loop_header645.1:                           ; preds = %polly.loop_header645, %polly.loop_header645.1
  %polly.indvar648.1 = phi i64 [ %polly.indvar_next649.1, %polly.loop_header645.1 ], [ 0, %polly.loop_header645 ]
  %917 = add nuw nsw i64 %polly.indvar648.1, %527
  %polly.access.mul.call2652.1 = mul nuw nsw i64 %917, 1000
  %polly.access.add.call2653.1 = add nuw nsw i64 %458, %polly.access.mul.call2652.1
  %polly.access.call2654.1 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.1
  %polly.access.call2654.load.1 = load double, double* %polly.access.call2654.1, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.1 = add nuw nsw i64 %polly.indvar648.1, 1200
  %polly.access.Packed_MemRef_call2528.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.1
  store double %polly.access.call2654.load.1, double* %polly.access.Packed_MemRef_call2528.1, align 8
  %polly.indvar_next649.1 = add nuw nsw i64 %polly.indvar648.1, 1
  %exitcond1139.1.not = icmp eq i64 %polly.indvar_next649.1, %indvars.iv1137
  br i1 %exitcond1139.1.not, label %polly.loop_header645.2, label %polly.loop_header645.1

polly.loop_header645.2:                           ; preds = %polly.loop_header645.1, %polly.loop_header645.2
  %polly.indvar648.2 = phi i64 [ %polly.indvar_next649.2, %polly.loop_header645.2 ], [ 0, %polly.loop_header645.1 ]
  %918 = add nuw nsw i64 %polly.indvar648.2, %527
  %polly.access.mul.call2652.2 = mul nuw nsw i64 %918, 1000
  %polly.access.add.call2653.2 = add nuw nsw i64 %459, %polly.access.mul.call2652.2
  %polly.access.call2654.2 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.2
  %polly.access.call2654.load.2 = load double, double* %polly.access.call2654.2, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.2 = add nuw nsw i64 %polly.indvar648.2, 2400
  %polly.access.Packed_MemRef_call2528.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.2
  store double %polly.access.call2654.load.2, double* %polly.access.Packed_MemRef_call2528.2, align 8
  %polly.indvar_next649.2 = add nuw nsw i64 %polly.indvar648.2, 1
  %exitcond1139.2.not = icmp eq i64 %polly.indvar_next649.2, %indvars.iv1137
  br i1 %exitcond1139.2.not, label %polly.loop_header645.3, label %polly.loop_header645.2

polly.loop_header645.3:                           ; preds = %polly.loop_header645.2, %polly.loop_header645.3
  %polly.indvar648.3 = phi i64 [ %polly.indvar_next649.3, %polly.loop_header645.3 ], [ 0, %polly.loop_header645.2 ]
  %919 = add nuw nsw i64 %polly.indvar648.3, %527
  %polly.access.mul.call2652.3 = mul nuw nsw i64 %919, 1000
  %polly.access.add.call2653.3 = add nuw nsw i64 %460, %polly.access.mul.call2652.3
  %polly.access.call2654.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.3
  %polly.access.call2654.load.3 = load double, double* %polly.access.call2654.3, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.3 = add nuw nsw i64 %polly.indvar648.3, 3600
  %polly.access.Packed_MemRef_call2528.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.3
  store double %polly.access.call2654.load.3, double* %polly.access.Packed_MemRef_call2528.3, align 8
  %polly.indvar_next649.3 = add nuw nsw i64 %polly.indvar648.3, 1
  %exitcond1139.3.not = icmp eq i64 %polly.indvar_next649.3, %indvars.iv1137
  br i1 %exitcond1139.3.not, label %polly.loop_exit647.3, label %polly.loop_header645.3

polly.loop_exit647.3:                             ; preds = %polly.loop_header645.3
  %920 = add nsw i64 %526, 1199
  %921 = mul nuw nsw i64 %polly.indvar636, 3
  %922 = add nuw nsw i64 %polly.indvar636, 2
  %pexp.p_div_q655 = udiv i64 %922, 3
  %923 = sub nsw i64 %921, %pexp.p_div_q655
  br label %polly.loop_header656

polly.loop_header681.1:                           ; preds = %polly.loop_header681, %polly.loop_header681.1
  %polly.indvar685.1 = phi i64 [ %polly.indvar_next686.1, %polly.loop_header681.1 ], [ %585, %polly.loop_header681 ]
  %924 = add nuw nsw i64 %polly.indvar685.1, %527
  %polly.access.mul.call1689.1 = mul nsw i64 %924, 1000
  %polly.access.add.call1690.1 = add nuw nsw i64 %458, %polly.access.mul.call1689.1
  %polly.access.call1691.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.1
  %polly.access.call1691.load.1 = load double, double* %polly.access.call1691.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.1 = add nuw nsw i64 %polly.indvar685.1, 1200
  %polly.access.Packed_MemRef_call1526694.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.1
  store double %polly.access.call1691.load.1, double* %polly.access.Packed_MemRef_call1526694.1, align 8
  %polly.indvar_next686.1 = add nuw nsw i64 %polly.indvar685.1, 1
  %polly.loop_cond687.not.not.1 = icmp slt i64 %polly.indvar685.1, %588
  br i1 %polly.loop_cond687.not.not.1, label %polly.loop_header681.1, label %polly.loop_header681.2

polly.loop_header681.2:                           ; preds = %polly.loop_header681.1, %polly.loop_header681.2
  %polly.indvar685.2 = phi i64 [ %polly.indvar_next686.2, %polly.loop_header681.2 ], [ %585, %polly.loop_header681.1 ]
  %925 = add nuw nsw i64 %polly.indvar685.2, %527
  %polly.access.mul.call1689.2 = mul nsw i64 %925, 1000
  %polly.access.add.call1690.2 = add nuw nsw i64 %459, %polly.access.mul.call1689.2
  %polly.access.call1691.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.2
  %polly.access.call1691.load.2 = load double, double* %polly.access.call1691.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.2 = add nuw nsw i64 %polly.indvar685.2, 2400
  %polly.access.Packed_MemRef_call1526694.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.2
  store double %polly.access.call1691.load.2, double* %polly.access.Packed_MemRef_call1526694.2, align 8
  %polly.indvar_next686.2 = add nuw nsw i64 %polly.indvar685.2, 1
  %polly.loop_cond687.not.not.2 = icmp slt i64 %polly.indvar685.2, %588
  br i1 %polly.loop_cond687.not.not.2, label %polly.loop_header681.2, label %polly.loop_header681.3

polly.loop_header681.3:                           ; preds = %polly.loop_header681.2, %polly.loop_header681.3
  %polly.indvar685.3 = phi i64 [ %polly.indvar_next686.3, %polly.loop_header681.3 ], [ %585, %polly.loop_header681.2 ]
  %926 = add nuw nsw i64 %polly.indvar685.3, %527
  %polly.access.mul.call1689.3 = mul nsw i64 %926, 1000
  %polly.access.add.call1690.3 = add nuw nsw i64 %460, %polly.access.mul.call1689.3
  %polly.access.call1691.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.3
  %polly.access.call1691.load.3 = load double, double* %polly.access.call1691.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.3 = add nuw nsw i64 %polly.indvar685.3, 3600
  %polly.access.Packed_MemRef_call1526694.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.3
  store double %polly.access.call1691.load.3, double* %polly.access.Packed_MemRef_call1526694.3, align 8
  %polly.indvar_next686.3 = add nuw nsw i64 %polly.indvar685.3, 1
  %polly.loop_cond687.not.not.3 = icmp slt i64 %polly.indvar685.3, %588
  br i1 %polly.loop_cond687.not.not.3, label %polly.loop_header681.3, label %polly.loop_header695.preheader

polly.loop_header669.us.1:                        ; preds = %polly.loop_header669.us.1.preheader, %polly.loop_header669.us.1
  %polly.indvar673.us.1 = phi i64 [ %polly.indvar_next674.us.1, %polly.loop_header669.us.1 ], [ 0, %polly.loop_header669.us.1.preheader ]
  %927 = add nuw nsw i64 %polly.indvar673.us.1, %527
  %polly.access.mul.call1677.us.1 = mul nuw nsw i64 %927, 1000
  %polly.access.add.call1678.us.1 = add nuw nsw i64 %458, %polly.access.mul.call1677.us.1
  %polly.access.call1679.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.1
  %polly.access.call1679.load.us.1 = load double, double* %polly.access.call1679.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.1 = add nuw nsw i64 %polly.indvar673.us.1, 1200
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1679.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.indvar_next674.us.1 = add nuw i64 %polly.indvar673.us.1, 1
  %exitcond1142.1.not = icmp eq i64 %polly.indvar673.us.1, %583
  br i1 %exitcond1142.1.not, label %polly.loop_exit671.loopexit.us.1, label %polly.loop_header669.us.1

polly.loop_exit671.loopexit.us.1:                 ; preds = %polly.loop_header669.us.1
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.2.preheader, label %polly.loop_header681.us.1

polly.loop_header681.us.1:                        ; preds = %polly.loop_exit671.loopexit.us.1, %polly.loop_header681.us.1
  %polly.indvar685.us.1 = phi i64 [ %polly.indvar_next686.us.1, %polly.loop_header681.us.1 ], [ %585, %polly.loop_exit671.loopexit.us.1 ]
  %928 = add nuw nsw i64 %polly.indvar685.us.1, %527
  %polly.access.mul.call1689.us.1 = mul nsw i64 %928, 1000
  %polly.access.add.call1690.us.1 = add nuw nsw i64 %458, %polly.access.mul.call1689.us.1
  %polly.access.call1691.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.1
  %polly.access.call1691.load.us.1 = load double, double* %polly.access.call1691.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.1 = add nuw nsw i64 %polly.indvar685.us.1, 1200
  %polly.access.Packed_MemRef_call1526694.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.1
  store double %polly.access.call1691.load.us.1, double* %polly.access.Packed_MemRef_call1526694.us.1, align 8
  %polly.indvar_next686.us.1 = add nuw nsw i64 %polly.indvar685.us.1, 1
  %polly.loop_cond687.not.not.us.1 = icmp slt i64 %polly.indvar685.us.1, %588
  br i1 %polly.loop_cond687.not.not.us.1, label %polly.loop_header681.us.1, label %polly.loop_header669.us.2.preheader

polly.loop_header669.us.2.preheader:              ; preds = %polly.loop_header681.us.1, %polly.loop_exit671.loopexit.us.1
  br label %polly.loop_header669.us.2

polly.loop_header669.us.2:                        ; preds = %polly.loop_header669.us.2.preheader, %polly.loop_header669.us.2
  %polly.indvar673.us.2 = phi i64 [ %polly.indvar_next674.us.2, %polly.loop_header669.us.2 ], [ 0, %polly.loop_header669.us.2.preheader ]
  %929 = add nuw nsw i64 %polly.indvar673.us.2, %527
  %polly.access.mul.call1677.us.2 = mul nuw nsw i64 %929, 1000
  %polly.access.add.call1678.us.2 = add nuw nsw i64 %459, %polly.access.mul.call1677.us.2
  %polly.access.call1679.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.2
  %polly.access.call1679.load.us.2 = load double, double* %polly.access.call1679.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.2 = add nuw nsw i64 %polly.indvar673.us.2, 2400
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1679.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.indvar_next674.us.2 = add nuw i64 %polly.indvar673.us.2, 1
  %exitcond1142.2.not = icmp eq i64 %polly.indvar673.us.2, %583
  br i1 %exitcond1142.2.not, label %polly.loop_exit671.loopexit.us.2, label %polly.loop_header669.us.2

polly.loop_exit671.loopexit.us.2:                 ; preds = %polly.loop_header669.us.2
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.3.preheader, label %polly.loop_header681.us.2

polly.loop_header681.us.2:                        ; preds = %polly.loop_exit671.loopexit.us.2, %polly.loop_header681.us.2
  %polly.indvar685.us.2 = phi i64 [ %polly.indvar_next686.us.2, %polly.loop_header681.us.2 ], [ %585, %polly.loop_exit671.loopexit.us.2 ]
  %930 = add nuw nsw i64 %polly.indvar685.us.2, %527
  %polly.access.mul.call1689.us.2 = mul nsw i64 %930, 1000
  %polly.access.add.call1690.us.2 = add nuw nsw i64 %459, %polly.access.mul.call1689.us.2
  %polly.access.call1691.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.2
  %polly.access.call1691.load.us.2 = load double, double* %polly.access.call1691.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.2 = add nuw nsw i64 %polly.indvar685.us.2, 2400
  %polly.access.Packed_MemRef_call1526694.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.2
  store double %polly.access.call1691.load.us.2, double* %polly.access.Packed_MemRef_call1526694.us.2, align 8
  %polly.indvar_next686.us.2 = add nuw nsw i64 %polly.indvar685.us.2, 1
  %polly.loop_cond687.not.not.us.2 = icmp slt i64 %polly.indvar685.us.2, %588
  br i1 %polly.loop_cond687.not.not.us.2, label %polly.loop_header681.us.2, label %polly.loop_header669.us.3.preheader

polly.loop_header669.us.3.preheader:              ; preds = %polly.loop_header681.us.2, %polly.loop_exit671.loopexit.us.2
  br label %polly.loop_header669.us.3

polly.loop_header669.us.3:                        ; preds = %polly.loop_header669.us.3.preheader, %polly.loop_header669.us.3
  %polly.indvar673.us.3 = phi i64 [ %polly.indvar_next674.us.3, %polly.loop_header669.us.3 ], [ 0, %polly.loop_header669.us.3.preheader ]
  %931 = add nuw nsw i64 %polly.indvar673.us.3, %527
  %polly.access.mul.call1677.us.3 = mul nuw nsw i64 %931, 1000
  %polly.access.add.call1678.us.3 = add nuw nsw i64 %460, %polly.access.mul.call1677.us.3
  %polly.access.call1679.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.3
  %polly.access.call1679.load.us.3 = load double, double* %polly.access.call1679.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.3 = add nuw nsw i64 %polly.indvar673.us.3, 3600
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1679.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  %polly.indvar_next674.us.3 = add nuw i64 %polly.indvar673.us.3, 1
  %exitcond1142.3.not = icmp eq i64 %polly.indvar673.us.3, %583
  br i1 %exitcond1142.3.not, label %polly.loop_exit671.loopexit.us.3, label %polly.loop_header669.us.3

polly.loop_exit671.loopexit.us.3:                 ; preds = %polly.loop_header669.us.3
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header681.us.3

polly.loop_header681.us.3:                        ; preds = %polly.loop_exit671.loopexit.us.3, %polly.loop_header681.us.3
  %polly.indvar685.us.3 = phi i64 [ %polly.indvar_next686.us.3, %polly.loop_header681.us.3 ], [ %585, %polly.loop_exit671.loopexit.us.3 ]
  %932 = add nuw nsw i64 %polly.indvar685.us.3, %527
  %polly.access.mul.call1689.us.3 = mul nsw i64 %932, 1000
  %polly.access.add.call1690.us.3 = add nuw nsw i64 %460, %polly.access.mul.call1689.us.3
  %polly.access.call1691.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.3
  %polly.access.call1691.load.us.3 = load double, double* %polly.access.call1691.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.3 = add nuw nsw i64 %polly.indvar685.us.3, 3600
  %polly.access.Packed_MemRef_call1526694.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.3
  store double %polly.access.call1691.load.us.3, double* %polly.access.Packed_MemRef_call1526694.us.3, align 8
  %polly.indvar_next686.us.3 = add nuw nsw i64 %polly.indvar685.us.3, 1
  %polly.loop_cond687.not.not.us.3 = icmp slt i64 %polly.indvar685.us.3, %588
  br i1 %polly.loop_cond687.not.not.us.3, label %polly.loop_header681.us.3, label %polly.loop_header695.preheader

polly.loop_header702.1:                           ; preds = %polly.loop_exit712, %polly.loop_exit712.1
  %indvar1372 = phi i64 [ %indvar.next1373, %polly.loop_exit712.1 ], [ 0, %polly.loop_exit712 ]
  %indvars.iv1155.1 = phi i64 [ %indvars.iv.next1156.1, %polly.loop_exit712.1 ], [ %579, %polly.loop_exit712 ]
  %polly.indvar706.1 = phi i64 [ %polly.indvar_next707.1, %polly.loop_exit712.1 ], [ %593, %polly.loop_exit712 ]
  %933 = add i64 %548, %indvar1372
  %smin1389 = call i64 @llvm.smin.i64(i64 %933, i64 255)
  %934 = add nsw i64 %smin1389, 1
  %935 = mul nuw nsw i64 %indvar1372, 9600
  %936 = add i64 %555, %935
  %scevgep1374 = getelementptr i8, i8* %call, i64 %936
  %937 = add i64 %556, %935
  %scevgep1375 = getelementptr i8, i8* %call, i64 %937
  %938 = add i64 %558, %indvar1372
  %smin1376 = call i64 @llvm.smin.i64(i64 %938, i64 255)
  %939 = shl nsw i64 %smin1376, 3
  %scevgep1377 = getelementptr i8, i8* %scevgep1375, i64 %939
  %scevgep1380 = getelementptr i8, i8* %scevgep1379, i64 %939
  %smin1157.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1155.1, i64 255)
  %940 = add nsw i64 %polly.indvar706.1, %581
  %polly.loop_guard713.11210 = icmp sgt i64 %940, -1
  br i1 %polly.loop_guard713.11210, label %polly.loop_header710.preheader.1, label %polly.loop_exit712.1

polly.loop_header710.preheader.1:                 ; preds = %polly.loop_header702.1
  %941 = add nsw i64 %polly.indvar706.1, %580
  %polly.access.add.Packed_MemRef_call2528722.1 = add nuw nsw i64 %940, 1200
  %polly.access.Packed_MemRef_call2528723.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.1
  %_p_scalar_724.1 = load double, double* %polly.access.Packed_MemRef_call2528723.1, align 8
  %polly.access.Packed_MemRef_call1526731.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.1
  %_p_scalar_732.1 = load double, double* %polly.access.Packed_MemRef_call1526731.1, align 8
  %942 = mul i64 %941, 9600
  %min.iters.check1390 = icmp ult i64 %934, 4
  br i1 %min.iters.check1390, label %polly.loop_header710.1.preheader, label %vector.memcheck1370

vector.memcheck1370:                              ; preds = %polly.loop_header710.preheader.1
  %bound01381 = icmp ult i8* %scevgep1374, %scevgep1380
  %bound11382 = icmp ult i8* %scevgep1378, %scevgep1377
  %found.conflict1383 = and i1 %bound01381, %bound11382
  br i1 %found.conflict1383, label %polly.loop_header710.1.preheader, label %vector.ph1391

vector.ph1391:                                    ; preds = %vector.memcheck1370
  %n.vec1393 = and i64 %934, -4
  %broadcast.splatinsert1399 = insertelement <4 x double> poison, double %_p_scalar_724.1, i32 0
  %broadcast.splat1400 = shufflevector <4 x double> %broadcast.splatinsert1399, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1402 = insertelement <4 x double> poison, double %_p_scalar_732.1, i32 0
  %broadcast.splat1403 = shufflevector <4 x double> %broadcast.splatinsert1402, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1387

vector.body1387:                                  ; preds = %vector.body1387, %vector.ph1391
  %index1394 = phi i64 [ 0, %vector.ph1391 ], [ %index.next1395, %vector.body1387 ]
  %943 = add nuw nsw i64 %index1394, %527
  %944 = add nuw nsw i64 %index1394, 1200
  %945 = getelementptr double, double* %Packed_MemRef_call1526, i64 %944
  %946 = bitcast double* %945 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %946, align 8, !alias.scope !179
  %947 = fmul fast <4 x double> %broadcast.splat1400, %wide.load1398
  %948 = getelementptr double, double* %Packed_MemRef_call2528, i64 %944
  %949 = bitcast double* %948 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %949, align 8
  %950 = fmul fast <4 x double> %broadcast.splat1403, %wide.load1401
  %951 = shl i64 %943, 3
  %952 = add i64 %951, %942
  %953 = getelementptr i8, i8* %call, i64 %952
  %954 = bitcast i8* %953 to <4 x double>*
  %wide.load1404 = load <4 x double>, <4 x double>* %954, align 8, !alias.scope !182, !noalias !184
  %955 = fadd fast <4 x double> %950, %947
  %956 = fmul fast <4 x double> %955, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %957 = fadd fast <4 x double> %956, %wide.load1404
  %958 = bitcast i8* %953 to <4 x double>*
  store <4 x double> %957, <4 x double>* %958, align 8, !alias.scope !182, !noalias !184
  %index.next1395 = add i64 %index1394, 4
  %959 = icmp eq i64 %index.next1395, %n.vec1393
  br i1 %959, label %middle.block1385, label %vector.body1387, !llvm.loop !185

middle.block1385:                                 ; preds = %vector.body1387
  %cmp.n1397 = icmp eq i64 %934, %n.vec1393
  br i1 %cmp.n1397, label %polly.loop_exit712.1, label %polly.loop_header710.1.preheader

polly.loop_header710.1.preheader:                 ; preds = %vector.memcheck1370, %polly.loop_header710.preheader.1, %middle.block1385
  %polly.indvar714.1.ph = phi i64 [ 0, %vector.memcheck1370 ], [ 0, %polly.loop_header710.preheader.1 ], [ %n.vec1393, %middle.block1385 ]
  br label %polly.loop_header710.1

polly.loop_header710.1:                           ; preds = %polly.loop_header710.1.preheader, %polly.loop_header710.1
  %polly.indvar714.1 = phi i64 [ %polly.indvar_next715.1, %polly.loop_header710.1 ], [ %polly.indvar714.1.ph, %polly.loop_header710.1.preheader ]
  %960 = add nuw nsw i64 %polly.indvar714.1, %527
  %polly.access.add.Packed_MemRef_call1526718.1 = add nuw nsw i64 %polly.indvar714.1, 1200
  %polly.access.Packed_MemRef_call1526719.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.1
  %_p_scalar_720.1 = load double, double* %polly.access.Packed_MemRef_call1526719.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_724.1, %_p_scalar_720.1
  %polly.access.Packed_MemRef_call2528727.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.1
  %_p_scalar_728.1 = load double, double* %polly.access.Packed_MemRef_call2528727.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_732.1, %_p_scalar_728.1
  %961 = shl i64 %960, 3
  %962 = add i64 %961, %942
  %scevgep733.1 = getelementptr i8, i8* %call, i64 %962
  %scevgep733734.1 = bitcast i8* %scevgep733.1 to double*
  %_p_scalar_735.1 = load double, double* %scevgep733734.1, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_735.1
  store double %p_add42.i.1, double* %scevgep733734.1, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.1 = add nuw nsw i64 %polly.indvar714.1, 1
  %exitcond1158.1.not = icmp eq i64 %polly.indvar714.1, %smin1157.1
  br i1 %exitcond1158.1.not, label %polly.loop_exit712.1, label %polly.loop_header710.1, !llvm.loop !186

polly.loop_exit712.1:                             ; preds = %polly.loop_header710.1, %middle.block1385, %polly.loop_header702.1
  %polly.indvar_next707.1 = add nuw nsw i64 %polly.indvar706.1, 1
  %polly.loop_cond708.not.not.1 = icmp slt i64 %polly.indvar706.1, %597
  %indvars.iv.next1156.1 = add i64 %indvars.iv1155.1, 1
  %indvar.next1373 = add i64 %indvar1372, 1
  br i1 %polly.loop_cond708.not.not.1, label %polly.loop_header702.1, label %polly.loop_header702.2

polly.loop_header702.2:                           ; preds = %polly.loop_exit712.1, %polly.loop_exit712.2
  %indvar1337 = phi i64 [ %indvar.next1338, %polly.loop_exit712.2 ], [ 0, %polly.loop_exit712.1 ]
  %indvars.iv1155.2 = phi i64 [ %indvars.iv.next1156.2, %polly.loop_exit712.2 ], [ %579, %polly.loop_exit712.1 ]
  %polly.indvar706.2 = phi i64 [ %polly.indvar_next707.2, %polly.loop_exit712.2 ], [ %593, %polly.loop_exit712.1 ]
  %963 = add i64 %563, %indvar1337
  %smin1354 = call i64 @llvm.smin.i64(i64 %963, i64 255)
  %964 = add nsw i64 %smin1354, 1
  %965 = mul nuw nsw i64 %indvar1337, 9600
  %966 = add i64 %570, %965
  %scevgep1339 = getelementptr i8, i8* %call, i64 %966
  %967 = add i64 %571, %965
  %scevgep1340 = getelementptr i8, i8* %call, i64 %967
  %968 = add i64 %573, %indvar1337
  %smin1341 = call i64 @llvm.smin.i64(i64 %968, i64 255)
  %969 = shl nsw i64 %smin1341, 3
  %scevgep1342 = getelementptr i8, i8* %scevgep1340, i64 %969
  %scevgep1345 = getelementptr i8, i8* %scevgep1344, i64 %969
  %smin1157.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1155.2, i64 255)
  %970 = add nsw i64 %polly.indvar706.2, %581
  %polly.loop_guard713.21211 = icmp sgt i64 %970, -1
  br i1 %polly.loop_guard713.21211, label %polly.loop_header710.preheader.2, label %polly.loop_exit712.2

polly.loop_header710.preheader.2:                 ; preds = %polly.loop_header702.2
  %971 = add nsw i64 %polly.indvar706.2, %580
  %polly.access.add.Packed_MemRef_call2528722.2 = add nuw nsw i64 %970, 2400
  %polly.access.Packed_MemRef_call2528723.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.2
  %_p_scalar_724.2 = load double, double* %polly.access.Packed_MemRef_call2528723.2, align 8
  %polly.access.Packed_MemRef_call1526731.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.2
  %_p_scalar_732.2 = load double, double* %polly.access.Packed_MemRef_call1526731.2, align 8
  %972 = mul i64 %971, 9600
  %min.iters.check1355 = icmp ult i64 %964, 4
  br i1 %min.iters.check1355, label %polly.loop_header710.2.preheader, label %vector.memcheck1335

vector.memcheck1335:                              ; preds = %polly.loop_header710.preheader.2
  %bound01346 = icmp ult i8* %scevgep1339, %scevgep1345
  %bound11347 = icmp ult i8* %scevgep1343, %scevgep1342
  %found.conflict1348 = and i1 %bound01346, %bound11347
  br i1 %found.conflict1348, label %polly.loop_header710.2.preheader, label %vector.ph1356

vector.ph1356:                                    ; preds = %vector.memcheck1335
  %n.vec1358 = and i64 %964, -4
  %broadcast.splatinsert1364 = insertelement <4 x double> poison, double %_p_scalar_724.2, i32 0
  %broadcast.splat1365 = shufflevector <4 x double> %broadcast.splatinsert1364, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1367 = insertelement <4 x double> poison, double %_p_scalar_732.2, i32 0
  %broadcast.splat1368 = shufflevector <4 x double> %broadcast.splatinsert1367, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1352

vector.body1352:                                  ; preds = %vector.body1352, %vector.ph1356
  %index1359 = phi i64 [ 0, %vector.ph1356 ], [ %index.next1360, %vector.body1352 ]
  %973 = add nuw nsw i64 %index1359, %527
  %974 = add nuw nsw i64 %index1359, 2400
  %975 = getelementptr double, double* %Packed_MemRef_call1526, i64 %974
  %976 = bitcast double* %975 to <4 x double>*
  %wide.load1363 = load <4 x double>, <4 x double>* %976, align 8, !alias.scope !187
  %977 = fmul fast <4 x double> %broadcast.splat1365, %wide.load1363
  %978 = getelementptr double, double* %Packed_MemRef_call2528, i64 %974
  %979 = bitcast double* %978 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %979, align 8
  %980 = fmul fast <4 x double> %broadcast.splat1368, %wide.load1366
  %981 = shl i64 %973, 3
  %982 = add i64 %981, %972
  %983 = getelementptr i8, i8* %call, i64 %982
  %984 = bitcast i8* %983 to <4 x double>*
  %wide.load1369 = load <4 x double>, <4 x double>* %984, align 8, !alias.scope !190, !noalias !192
  %985 = fadd fast <4 x double> %980, %977
  %986 = fmul fast <4 x double> %985, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %987 = fadd fast <4 x double> %986, %wide.load1369
  %988 = bitcast i8* %983 to <4 x double>*
  store <4 x double> %987, <4 x double>* %988, align 8, !alias.scope !190, !noalias !192
  %index.next1360 = add i64 %index1359, 4
  %989 = icmp eq i64 %index.next1360, %n.vec1358
  br i1 %989, label %middle.block1350, label %vector.body1352, !llvm.loop !193

middle.block1350:                                 ; preds = %vector.body1352
  %cmp.n1362 = icmp eq i64 %964, %n.vec1358
  br i1 %cmp.n1362, label %polly.loop_exit712.2, label %polly.loop_header710.2.preheader

polly.loop_header710.2.preheader:                 ; preds = %vector.memcheck1335, %polly.loop_header710.preheader.2, %middle.block1350
  %polly.indvar714.2.ph = phi i64 [ 0, %vector.memcheck1335 ], [ 0, %polly.loop_header710.preheader.2 ], [ %n.vec1358, %middle.block1350 ]
  br label %polly.loop_header710.2

polly.loop_header710.2:                           ; preds = %polly.loop_header710.2.preheader, %polly.loop_header710.2
  %polly.indvar714.2 = phi i64 [ %polly.indvar_next715.2, %polly.loop_header710.2 ], [ %polly.indvar714.2.ph, %polly.loop_header710.2.preheader ]
  %990 = add nuw nsw i64 %polly.indvar714.2, %527
  %polly.access.add.Packed_MemRef_call1526718.2 = add nuw nsw i64 %polly.indvar714.2, 2400
  %polly.access.Packed_MemRef_call1526719.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.2
  %_p_scalar_720.2 = load double, double* %polly.access.Packed_MemRef_call1526719.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_724.2, %_p_scalar_720.2
  %polly.access.Packed_MemRef_call2528727.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.2
  %_p_scalar_728.2 = load double, double* %polly.access.Packed_MemRef_call2528727.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_732.2, %_p_scalar_728.2
  %991 = shl i64 %990, 3
  %992 = add i64 %991, %972
  %scevgep733.2 = getelementptr i8, i8* %call, i64 %992
  %scevgep733734.2 = bitcast i8* %scevgep733.2 to double*
  %_p_scalar_735.2 = load double, double* %scevgep733734.2, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_735.2
  store double %p_add42.i.2, double* %scevgep733734.2, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.2 = add nuw nsw i64 %polly.indvar714.2, 1
  %exitcond1158.2.not = icmp eq i64 %polly.indvar714.2, %smin1157.2
  br i1 %exitcond1158.2.not, label %polly.loop_exit712.2, label %polly.loop_header710.2, !llvm.loop !194

polly.loop_exit712.2:                             ; preds = %polly.loop_header710.2, %middle.block1350, %polly.loop_header702.2
  %polly.indvar_next707.2 = add nuw nsw i64 %polly.indvar706.2, 1
  %polly.loop_cond708.not.not.2 = icmp slt i64 %polly.indvar706.2, %597
  %indvars.iv.next1156.2 = add i64 %indvars.iv1155.2, 1
  %indvar.next1338 = add i64 %indvar1337, 1
  br i1 %polly.loop_cond708.not.not.2, label %polly.loop_header702.2, label %polly.loop_header702.3

polly.loop_header702.3:                           ; preds = %polly.loop_exit712.2, %polly.loop_exit712.3
  %indvar1317 = phi i64 [ %indvar.next1318, %polly.loop_exit712.3 ], [ 0, %polly.loop_exit712.2 ]
  %indvars.iv1155.3 = phi i64 [ %indvars.iv.next1156.3, %polly.loop_exit712.3 ], [ %579, %polly.loop_exit712.2 ]
  %polly.indvar706.3 = phi i64 [ %polly.indvar_next707.3, %polly.loop_exit712.3 ], [ %593, %polly.loop_exit712.2 ]
  %993 = add i64 %578, %indvar1317
  %smin1319 = call i64 @llvm.smin.i64(i64 %993, i64 255)
  %994 = add nsw i64 %smin1319, 1
  %smin1157.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1155.3, i64 255)
  %995 = add nsw i64 %polly.indvar706.3, %581
  %polly.loop_guard713.31212 = icmp sgt i64 %995, -1
  br i1 %polly.loop_guard713.31212, label %polly.loop_header710.preheader.3, label %polly.loop_exit712.3

polly.loop_header710.preheader.3:                 ; preds = %polly.loop_header702.3
  %996 = add nsw i64 %polly.indvar706.3, %580
  %polly.access.add.Packed_MemRef_call2528722.3 = add nuw nsw i64 %995, 3600
  %polly.access.Packed_MemRef_call2528723.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.3
  %_p_scalar_724.3 = load double, double* %polly.access.Packed_MemRef_call2528723.3, align 8
  %polly.access.Packed_MemRef_call1526731.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.3
  %_p_scalar_732.3 = load double, double* %polly.access.Packed_MemRef_call1526731.3, align 8
  %997 = mul i64 %996, 9600
  %min.iters.check1320 = icmp ult i64 %994, 4
  br i1 %min.iters.check1320, label %polly.loop_header710.3.preheader, label %vector.ph1321

vector.ph1321:                                    ; preds = %polly.loop_header710.preheader.3
  %n.vec1323 = and i64 %994, -4
  %broadcast.splatinsert1329 = insertelement <4 x double> poison, double %_p_scalar_724.3, i32 0
  %broadcast.splat1330 = shufflevector <4 x double> %broadcast.splatinsert1329, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1332 = insertelement <4 x double> poison, double %_p_scalar_732.3, i32 0
  %broadcast.splat1333 = shufflevector <4 x double> %broadcast.splatinsert1332, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %vector.ph1321
  %index1324 = phi i64 [ 0, %vector.ph1321 ], [ %index.next1325, %vector.body1313 ]
  %998 = add nuw nsw i64 %index1324, %527
  %999 = add nuw nsw i64 %index1324, 3600
  %1000 = getelementptr double, double* %Packed_MemRef_call1526, i64 %999
  %1001 = bitcast double* %1000 to <4 x double>*
  %wide.load1328 = load <4 x double>, <4 x double>* %1001, align 8
  %1002 = fmul fast <4 x double> %broadcast.splat1330, %wide.load1328
  %1003 = getelementptr double, double* %Packed_MemRef_call2528, i64 %999
  %1004 = bitcast double* %1003 to <4 x double>*
  %wide.load1331 = load <4 x double>, <4 x double>* %1004, align 8
  %1005 = fmul fast <4 x double> %broadcast.splat1333, %wide.load1331
  %1006 = shl i64 %998, 3
  %1007 = add i64 %1006, %997
  %1008 = getelementptr i8, i8* %call, i64 %1007
  %1009 = bitcast i8* %1008 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %1009, align 8, !alias.scope !111, !noalias !113
  %1010 = fadd fast <4 x double> %1005, %1002
  %1011 = fmul fast <4 x double> %1010, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %1012 = fadd fast <4 x double> %1011, %wide.load1334
  %1013 = bitcast i8* %1008 to <4 x double>*
  store <4 x double> %1012, <4 x double>* %1013, align 8, !alias.scope !111, !noalias !113
  %index.next1325 = add i64 %index1324, 4
  %1014 = icmp eq i64 %index.next1325, %n.vec1323
  br i1 %1014, label %middle.block1311, label %vector.body1313, !llvm.loop !195

middle.block1311:                                 ; preds = %vector.body1313
  %cmp.n1327 = icmp eq i64 %994, %n.vec1323
  br i1 %cmp.n1327, label %polly.loop_exit712.3, label %polly.loop_header710.3.preheader

polly.loop_header710.3.preheader:                 ; preds = %polly.loop_header710.preheader.3, %middle.block1311
  %polly.indvar714.3.ph = phi i64 [ 0, %polly.loop_header710.preheader.3 ], [ %n.vec1323, %middle.block1311 ]
  br label %polly.loop_header710.3

polly.loop_header710.3:                           ; preds = %polly.loop_header710.3.preheader, %polly.loop_header710.3
  %polly.indvar714.3 = phi i64 [ %polly.indvar_next715.3, %polly.loop_header710.3 ], [ %polly.indvar714.3.ph, %polly.loop_header710.3.preheader ]
  %1015 = add nuw nsw i64 %polly.indvar714.3, %527
  %polly.access.add.Packed_MemRef_call1526718.3 = add nuw nsw i64 %polly.indvar714.3, 3600
  %polly.access.Packed_MemRef_call1526719.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.3
  %_p_scalar_720.3 = load double, double* %polly.access.Packed_MemRef_call1526719.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_724.3, %_p_scalar_720.3
  %polly.access.Packed_MemRef_call2528727.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.3
  %_p_scalar_728.3 = load double, double* %polly.access.Packed_MemRef_call2528727.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_732.3, %_p_scalar_728.3
  %1016 = shl i64 %1015, 3
  %1017 = add i64 %1016, %997
  %scevgep733.3 = getelementptr i8, i8* %call, i64 %1017
  %scevgep733734.3 = bitcast i8* %scevgep733.3 to double*
  %_p_scalar_735.3 = load double, double* %scevgep733734.3, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_735.3
  store double %p_add42.i.3, double* %scevgep733734.3, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.3 = add nuw nsw i64 %polly.indvar714.3, 1
  %exitcond1158.3.not = icmp eq i64 %polly.indvar714.3, %smin1157.3
  br i1 %exitcond1158.3.not, label %polly.loop_exit712.3, label %polly.loop_header710.3, !llvm.loop !196

polly.loop_exit712.3:                             ; preds = %polly.loop_header710.3, %middle.block1311, %polly.loop_header702.3
  %polly.indvar_next707.3 = add nuw nsw i64 %polly.indvar706.3, 1
  %polly.loop_cond708.not.not.3 = icmp slt i64 %polly.indvar706.3, %597
  %indvars.iv.next1156.3 = add i64 %indvars.iv1155.3, 1
  %indvar.next1318 = add i64 %indvar1317, 1
  br i1 %polly.loop_cond708.not.not.3, label %polly.loop_header702.3, label %polly.loop_exit697
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
!35 = !{!"llvm.loop.tile.size", i32 4}
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
!51 = !{!"llvm.loop.tile.size", i32 96}
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
!84 = !{!85}
!85 = distinct !{!85, !86}
!86 = distinct !{!86, !"LVerDomain"}
!87 = !{!72, !73, !"polly.alias.scope.MemRef_call", !88}
!88 = distinct !{!88, !86}
!89 = !{!75, !76, !77, !78, !85}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !81, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!92, !93, !"polly.alias.scope.MemRef_call", !107}
!107 = distinct !{!107, !105}
!108 = !{!95, !96, !97, !98, !104}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !112, !"polly.alias.scope.MemRef_call"}
!112 = distinct !{!112, !"polly.alias.scope.domain"}
!113 = !{!114, !115, !116, !117}
!114 = distinct !{!114, !112, !"polly.alias.scope.MemRef_call1"}
!115 = distinct !{!115, !112, !"polly.alias.scope.MemRef_call2"}
!116 = distinct !{!116, !112, !"polly.alias.scope.Packed_MemRef_call1"}
!117 = distinct !{!117, !112, !"polly.alias.scope.Packed_MemRef_call2"}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !81, !13}
!120 = !{!111, !114, !116, !117}
!121 = !{!111, !115, !116, !117}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!111, !112, !"polly.alias.scope.MemRef_call", !126}
!126 = distinct !{!126, !124}
!127 = !{!114, !115, !116, !117, !123}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !131, !"polly.alias.scope.MemRef_call"}
!131 = distinct !{!131, !"polly.alias.scope.domain"}
!132 = !{!133, !134}
!133 = distinct !{!133, !131, !"polly.alias.scope.MemRef_call1"}
!134 = distinct !{!134, !131, !"polly.alias.scope.MemRef_call2"}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !81, !13}
!137 = !{!133, !130}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !81, !13}
!140 = !{!134, !130}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !81, !13}
!143 = !{!144}
!144 = distinct !{!144, !145}
!145 = distinct !{!145, !"LVerDomain"}
!146 = !{!72, !73, !"polly.alias.scope.MemRef_call", !147}
!147 = distinct !{!147, !145}
!148 = !{!75, !76, !77, !78, !144}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !13}
!151 = !{!152}
!152 = distinct !{!152, !153}
!153 = distinct !{!153, !"LVerDomain"}
!154 = !{!72, !73, !"polly.alias.scope.MemRef_call", !155}
!155 = distinct !{!155, !153}
!156 = !{!75, !76, !77, !78, !152}
!157 = distinct !{!157, !13}
!158 = distinct !{!158, !13}
!159 = distinct !{!159, !13}
!160 = distinct !{!160, !81, !13}
!161 = !{!162}
!162 = distinct !{!162, !163}
!163 = distinct !{!163, !"LVerDomain"}
!164 = !{!92, !93, !"polly.alias.scope.MemRef_call", !165}
!165 = distinct !{!165, !163}
!166 = !{!95, !96, !97, !98, !162}
!167 = distinct !{!167, !13}
!168 = distinct !{!168, !13}
!169 = !{!170}
!170 = distinct !{!170, !171}
!171 = distinct !{!171, !"LVerDomain"}
!172 = !{!92, !93, !"polly.alias.scope.MemRef_call", !173}
!173 = distinct !{!173, !171}
!174 = !{!95, !96, !97, !98, !170}
!175 = distinct !{!175, !13}
!176 = distinct !{!176, !13}
!177 = distinct !{!177, !13}
!178 = distinct !{!178, !81, !13}
!179 = !{!180}
!180 = distinct !{!180, !181}
!181 = distinct !{!181, !"LVerDomain"}
!182 = !{!111, !112, !"polly.alias.scope.MemRef_call", !183}
!183 = distinct !{!183, !181}
!184 = !{!114, !115, !116, !117, !180}
!185 = distinct !{!185, !13}
!186 = distinct !{!186, !13}
!187 = !{!188}
!188 = distinct !{!188, !189}
!189 = distinct !{!189, !"LVerDomain"}
!190 = !{!111, !112, !"polly.alias.scope.MemRef_call", !191}
!191 = distinct !{!191, !189}
!192 = !{!114, !115, !116, !117, !188}
!193 = distinct !{!193, !13}
!194 = distinct !{!194, !13}
!195 = distinct !{!195, !13}
!196 = distinct !{!196, !81, !13}
