; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1216.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1216.c"
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
  %call890 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1742 = bitcast i8* %call1 to double*
  %polly.access.call1751 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2752 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1751, %call2
  %polly.access.call2771 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2771, %call1
  %2 = or i1 %0, %1
  %polly.access.call791 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call791, %call2
  %4 = icmp ule i8* %polly.access.call2771, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call791, %call1
  %8 = icmp ule i8* %polly.access.call1751, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header864, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1229 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1228 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1227 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1226 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1226, %scevgep1229
  %bound1 = icmp ult i8* %scevgep1228, %scevgep1227
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
  br i1 %exitcond18.not.i, label %vector.ph1233, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1233:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1240 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1241 = shufflevector <4 x i64> %broadcast.splatinsert1240, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1233
  %index1234 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1235, %vector.body1232 ]
  %vec.ind1238 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1233 ], [ %vec.ind.next1239, %vector.body1232 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1238, %broadcast.splat1241
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv7.i, i64 %index1234
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1235 = add i64 %index1234, 4
  %vec.ind.next1239 = add <4 x i64> %vec.ind1238, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1235, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1232, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1232
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1233, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit925
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1296 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1296, label %for.body3.i46.preheader1760, label %vector.ph1297

vector.ph1297:                                    ; preds = %for.body3.i46.preheader
  %n.vec1299 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1297
  %index1300 = phi i64 [ 0, %vector.ph1297 ], [ %index.next1301, %vector.body1295 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %index1300
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1301 = add i64 %index1300, 4
  %46 = icmp eq i64 %index.next1301, %n.vec1299
  br i1 %46, label %middle.block1293, label %vector.body1295, !llvm.loop !18

middle.block1293:                                 ; preds = %vector.body1295
  %cmp.n1303 = icmp eq i64 %indvars.iv21.i, %n.vec1299
  br i1 %cmp.n1303, label %for.inc6.i, label %for.body3.i46.preheader1760

for.body3.i46.preheader1760:                      ; preds = %for.body3.i46.preheader, %middle.block1293
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1299, %middle.block1293 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1760, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1760 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1293, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %41, label %polly.start306, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1447 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1447, label %for.body3.i60.preheader1757, label %vector.ph1448

vector.ph1448:                                    ; preds = %for.body3.i60.preheader
  %n.vec1450 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1446

vector.body1446:                                  ; preds = %vector.body1446, %vector.ph1448
  %index1451 = phi i64 [ 0, %vector.ph1448 ], [ %index.next1452, %vector.body1446 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %index1451
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1455 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1455, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1452 = add i64 %index1451, 4
  %57 = icmp eq i64 %index.next1452, %n.vec1450
  br i1 %57, label %middle.block1444, label %vector.body1446, !llvm.loop !64

middle.block1444:                                 ; preds = %vector.body1446
  %cmp.n1454 = icmp eq i64 %indvars.iv21.i52, %n.vec1450
  br i1 %cmp.n1454, label %for.inc6.i63, label %for.body3.i60.preheader1757

for.body3.i60.preheader1757:                      ; preds = %for.body3.i60.preheader, %middle.block1444
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1450, %middle.block1444 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1757, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1757 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1444, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting307
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1601 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1601, label %for.body3.i99.preheader1754, label %vector.ph1602

vector.ph1602:                                    ; preds = %for.body3.i99.preheader
  %n.vec1604 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1600

vector.body1600:                                  ; preds = %vector.body1600, %vector.ph1602
  %index1605 = phi i64 [ 0, %vector.ph1602 ], [ %index.next1606, %vector.body1600 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %index1605
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1609 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1609, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1606 = add i64 %index1605, 4
  %68 = icmp eq i64 %index.next1606, %n.vec1604
  br i1 %68, label %middle.block1598, label %vector.body1600, !llvm.loop !66

middle.block1598:                                 ; preds = %vector.body1600
  %cmp.n1608 = icmp eq i64 %indvars.iv21.i91, %n.vec1604
  br i1 %cmp.n1608, label %for.inc6.i102, label %for.body3.i99.preheader1754

for.body3.i99.preheader1754:                      ; preds = %for.body3.i99.preheader, %middle.block1598
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1604, %middle.block1598 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1754, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1754 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1598, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1613 = phi i64 [ %indvar.next1614, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1613, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1615 = icmp ult i64 %88, 4
  br i1 %min.iters.check1615, label %polly.loop_header192.preheader, label %vector.ph1616

vector.ph1616:                                    ; preds = %polly.loop_header
  %n.vec1618 = and i64 %88, -4
  br label %vector.body1612

vector.body1612:                                  ; preds = %vector.body1612, %vector.ph1616
  %index1619 = phi i64 [ 0, %vector.ph1616 ], [ %index.next1620, %vector.body1612 ]
  %90 = shl nuw nsw i64 %index1619, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1623 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1623, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1620 = add i64 %index1619, 4
  %95 = icmp eq i64 %index.next1620, %n.vec1618
  br i1 %95, label %middle.block1610, label %vector.body1612, !llvm.loop !79

middle.block1610:                                 ; preds = %vector.body1612
  %cmp.n1622 = icmp eq i64 %88, %n.vec1618
  br i1 %cmp.n1622, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1610
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1618, %middle.block1610 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1610
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1614 = add i64 %indvar1613, 1
  br i1 %exitcond1116.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  %scevgep1656 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1657 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1691 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1692 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1726 = getelementptr i8, i8* %malloccall, i64 8
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
  %exitcond1115.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1115.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = shl nsw i64 %polly.indvar203, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next204, 250
  br i1 %exitcond1114.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %155, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %101 = shl nuw nsw i64 %polly.indvar209, 6
  %102 = shl nuw nsw i64 %polly.indvar209, 6
  %103 = and i64 %102, 9223372036854775680
  %104 = sub nsw i64 %101, %103
  %105 = mul nsw i64 %polly.indvar209, -64
  %106 = add i64 %105, %103
  %107 = shl nuw nsw i64 %polly.indvar209, 9
  %108 = shl nuw nsw i64 %polly.indvar209, 6
  %109 = shl nuw nsw i64 %polly.indvar209, 6
  %110 = and i64 %109, 9223372036854775680
  %111 = sub nsw i64 %108, %110
  %112 = or i64 %107, 8
  %113 = mul nsw i64 %polly.indvar209, -64
  %114 = add i64 %113, %110
  %115 = shl nuw nsw i64 %polly.indvar209, 6
  %116 = shl nuw nsw i64 %polly.indvar209, 6
  %117 = and i64 %116, 9223372036854775680
  %118 = sub nsw i64 %115, %117
  %119 = mul nsw i64 %polly.indvar209, -64
  %120 = add i64 %119, %117
  %121 = shl nuw nsw i64 %polly.indvar209, 9
  %122 = shl nuw nsw i64 %polly.indvar209, 6
  %123 = shl nuw nsw i64 %polly.indvar209, 6
  %124 = and i64 %123, 9223372036854775680
  %125 = sub nsw i64 %122, %124
  %126 = or i64 %121, 8
  %127 = mul nsw i64 %polly.indvar209, -64
  %128 = add i64 %127, %124
  %129 = shl nuw nsw i64 %polly.indvar209, 6
  %130 = shl nuw nsw i64 %polly.indvar209, 6
  %131 = and i64 %130, 9223372036854775680
  %132 = sub nsw i64 %129, %131
  %133 = mul nsw i64 %polly.indvar209, -64
  %134 = add i64 %133, %131
  %135 = shl nuw nsw i64 %polly.indvar209, 9
  %136 = shl nuw nsw i64 %polly.indvar209, 6
  %137 = shl nuw nsw i64 %polly.indvar209, 6
  %138 = and i64 %137, 9223372036854775680
  %139 = sub nsw i64 %136, %138
  %140 = or i64 %135, 8
  %141 = mul nsw i64 %polly.indvar209, -64
  %142 = add i64 %141, %138
  %143 = shl nuw nsw i64 %polly.indvar209, 6
  %144 = shl nuw nsw i64 %polly.indvar209, 6
  %145 = and i64 %144, 9223372036854775680
  %146 = sub nsw i64 %143, %145
  %147 = mul nsw i64 %polly.indvar209, -64
  %148 = add i64 %147, %145
  %149 = lshr i64 %polly.indvar209, 1
  %150 = shl nuw nsw i64 %149, 7
  %151 = sub nsw i64 %indvars.iv1100, %150
  %152 = add i64 %indvars.iv1104, %150
  %153 = mul nsw i64 %polly.indvar209, -64
  %154 = shl nsw i64 %polly.indvar209, 6
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %155 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next1101 = add nuw nsw i64 %indvars.iv1100, 64
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -64
  %exitcond1113.not = icmp eq i64 %155, 19
  br i1 %exitcond1113.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %156 = add nuw nsw i64 %polly.indvar221, %154
  %polly.access.mul.call2225 = mul nuw nsw i64 %156, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %97, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit265, %polly.loop_exit220.3
  %indvar1627 = phi i64 [ %indvar.next1628, %polly.loop_exit265 ], [ 0, %polly.loop_exit220.3 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit265 ], [ %152, %polly.loop_exit220.3 ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit265 ], [ %151, %polly.loop_exit220.3 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit265 ], [ %149, %polly.loop_exit220.3 ]
  %157 = mul nsw i64 %indvar1627, -128
  %158 = add i64 %104, %157
  %smax1735 = call i64 @llvm.smax.i64(i64 %158, i64 0)
  %159 = shl nuw nsw i64 %indvar1627, 7
  %160 = add i64 %106, %159
  %161 = add i64 %smax1735, %160
  %162 = mul nsw i64 %indvar1627, -128
  %163 = add i64 %111, %162
  %smax1719 = call i64 @llvm.smax.i64(i64 %163, i64 0)
  %164 = shl nuw nsw i64 %indvar1627, 7
  %165 = add i64 %110, %164
  %166 = add i64 %smax1719, %165
  %167 = mul nsw i64 %166, 9600
  %168 = add i64 %107, %167
  %169 = add i64 %112, %167
  %170 = add i64 %114, %164
  %171 = add i64 %smax1719, %170
  %172 = mul nsw i64 %indvar1627, -128
  %173 = add i64 %118, %172
  %smax1701 = call i64 @llvm.smax.i64(i64 %173, i64 0)
  %174 = shl nuw nsw i64 %indvar1627, 7
  %175 = add i64 %120, %174
  %176 = add i64 %smax1701, %175
  %177 = mul nsw i64 %indvar1627, -128
  %178 = add i64 %125, %177
  %smax1684 = call i64 @llvm.smax.i64(i64 %178, i64 0)
  %179 = shl nuw nsw i64 %indvar1627, 7
  %180 = add i64 %124, %179
  %181 = add i64 %smax1684, %180
  %182 = mul nsw i64 %181, 9600
  %183 = add i64 %121, %182
  %184 = add i64 %126, %182
  %185 = add i64 %128, %179
  %186 = add i64 %smax1684, %185
  %187 = mul nsw i64 %indvar1627, -128
  %188 = add i64 %132, %187
  %smax1666 = call i64 @llvm.smax.i64(i64 %188, i64 0)
  %189 = shl nuw nsw i64 %indvar1627, 7
  %190 = add i64 %134, %189
  %191 = add i64 %smax1666, %190
  %192 = mul nsw i64 %indvar1627, -128
  %193 = add i64 %139, %192
  %smax1649 = call i64 @llvm.smax.i64(i64 %193, i64 0)
  %194 = shl nuw nsw i64 %indvar1627, 7
  %195 = add i64 %138, %194
  %196 = add i64 %smax1649, %195
  %197 = mul nsw i64 %196, 9600
  %198 = add i64 %135, %197
  %199 = add i64 %140, %197
  %200 = add i64 %142, %194
  %201 = add i64 %smax1649, %200
  %202 = mul nsw i64 %indvar1627, -128
  %203 = add i64 %146, %202
  %smax1629 = call i64 @llvm.smax.i64(i64 %203, i64 0)
  %204 = shl nuw nsw i64 %indvar1627, 7
  %205 = add i64 %148, %204
  %206 = add i64 %smax1629, %205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1102, i64 0)
  %207 = add i64 %smax, %indvars.iv1106
  %208 = shl nuw nsw i64 %polly.indvar231, 1
  %.not.not = icmp ugt i64 %208, %polly.indvar209
  %209 = shl nsw i64 %polly.indvar231, 7
  %210 = add nsw i64 %209, %153
  %211 = icmp sgt i64 %210, 0
  %212 = select i1 %211, i64 %210, i64 0
  %213 = add nsw i64 %210, 127
  %214 = icmp slt i64 %679, %213
  %215 = select i1 %214, i64 %679, i64 %213
  %polly.loop_guard.not = icmp sgt i64 %212, %215
  br i1 %.not.not, label %polly.loop_header240.us, label %polly.loop_header228.split

polly.loop_header240.us:                          ; preds = %polly.loop_header228, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header228 ]
  %216 = add nuw nsw i64 %polly.indvar243.us, %154
  %polly.access.mul.call1247.us = mul nuw nsw i64 %216, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %97, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar243.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next244.us, 64
  br i1 %exitcond1098.not, label %polly.merge.loopexit.us, label %polly.loop_header240.us

polly.loop_header250.us:                          ; preds = %polly.merge.loopexit.us, %polly.loop_header250.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %212, %polly.merge.loopexit.us ]
  %217 = add nuw nsw i64 %polly.indvar253.us, %154
  %polly.access.mul.call1257.us = mul nsw i64 %217, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %97, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %215
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.loop_header240.us.1.preheader

polly.merge.loopexit.us:                          ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard.not, label %polly.loop_header240.us.1.preheader, label %polly.loop_header250.us

polly.loop_header240.us.1.preheader:              ; preds = %polly.loop_header250.us, %polly.merge.loopexit.us
  br label %polly.loop_header240.us.1

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header250

polly.loop_exit265:                               ; preds = %polly.loop_exit280.3, %polly.loop_header263.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1103 = add i64 %indvars.iv1102, -128
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 128
  %exitcond1112.not = icmp eq i64 %polly.indvar_next232, 10
  %indvar.next1628 = add i64 %indvar1627, 1
  br i1 %exitcond1112.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header263.preheader:                   ; preds = %polly.loop_header250.3, %polly.loop_header250.us.3, %polly.merge.loopexit.us.3, %polly.loop_header228.split
  %218 = sub nsw i64 %154, %209
  %219 = icmp sgt i64 %218, 0
  %220 = select i1 %219, i64 %218, i64 0
  %221 = mul nsw i64 %polly.indvar231, -128
  %222 = icmp slt i64 %221, -1072
  %223 = select i1 %222, i64 %221, i64 -1072
  %224 = add nsw i64 %223, 1199
  %polly.loop_guard273.not = icmp sgt i64 %220, %224
  br i1 %polly.loop_guard273.not, label %polly.loop_exit265, label %polly.loop_header270

polly.loop_header250:                             ; preds = %polly.loop_header228.split, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %212, %polly.loop_header228.split ]
  %225 = add nuw nsw i64 %polly.indvar253, %154
  %polly.access.mul.call1257 = mul nsw i64 %225, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %97, %polly.access.mul.call1257
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %215
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_header250.1

polly.loop_header270:                             ; preds = %polly.loop_header263.preheader, %polly.loop_exit280
  %indvar1720 = phi i64 [ %indvar.next1721, %polly.loop_exit280 ], [ 0, %polly.loop_header263.preheader ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit280 ], [ %207, %polly.loop_header263.preheader ]
  %polly.indvar274 = phi i64 [ %polly.indvar_next275, %polly.loop_exit280 ], [ %220, %polly.loop_header263.preheader ]
  %226 = add i64 %161, %indvar1720
  %smin1736 = call i64 @llvm.smin.i64(i64 %226, i64 63)
  %227 = add nsw i64 %smin1736, 1
  %228 = mul nuw nsw i64 %indvar1720, 9600
  %229 = add i64 %168, %228
  %scevgep1722 = getelementptr i8, i8* %call, i64 %229
  %230 = add i64 %169, %228
  %scevgep1723 = getelementptr i8, i8* %call, i64 %230
  %231 = add i64 %171, %indvar1720
  %smin1724 = call i64 @llvm.smin.i64(i64 %231, i64 63)
  %232 = shl nsw i64 %smin1724, 3
  %scevgep1725 = getelementptr i8, i8* %scevgep1723, i64 %232
  %scevgep1727 = getelementptr i8, i8* %scevgep1726, i64 %232
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 63)
  %233 = add nsw i64 %polly.indvar274, %210
  %polly.loop_guard2811206 = icmp sgt i64 %233, -1
  br i1 %polly.loop_guard2811206, label %polly.loop_header278.preheader, label %polly.loop_exit280

polly.loop_header278.preheader:                   ; preds = %polly.loop_header270
  %234 = add nuw nsw i64 %polly.indvar274, %209
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %233
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %polly.access.Packed_MemRef_call1299 = getelementptr double, double* %Packed_MemRef_call1, i64 %233
  %_p_scalar_300 = load double, double* %polly.access.Packed_MemRef_call1299, align 8
  %235 = mul i64 %234, 9600
  %min.iters.check1737 = icmp ult i64 %227, 4
  br i1 %min.iters.check1737, label %polly.loop_header278.preheader1752, label %vector.memcheck1718

vector.memcheck1718:                              ; preds = %polly.loop_header278.preheader
  %bound01728 = icmp ult i8* %scevgep1722, %scevgep1727
  %bound11729 = icmp ult i8* %malloccall, %scevgep1725
  %found.conflict1730 = and i1 %bound01728, %bound11729
  br i1 %found.conflict1730, label %polly.loop_header278.preheader1752, label %vector.ph1738

vector.ph1738:                                    ; preds = %vector.memcheck1718
  %n.vec1740 = and i64 %227, -4
  %broadcast.splatinsert1746 = insertelement <4 x double> poison, double %_p_scalar_292, i32 0
  %broadcast.splat1747 = shufflevector <4 x double> %broadcast.splatinsert1746, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1749 = insertelement <4 x double> poison, double %_p_scalar_300, i32 0
  %broadcast.splat1750 = shufflevector <4 x double> %broadcast.splatinsert1749, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1734

vector.body1734:                                  ; preds = %vector.body1734, %vector.ph1738
  %index1741 = phi i64 [ 0, %vector.ph1738 ], [ %index.next1742, %vector.body1734 ]
  %236 = add nuw nsw i64 %index1741, %154
  %237 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1741
  %238 = bitcast double* %237 to <4 x double>*
  %wide.load1745 = load <4 x double>, <4 x double>* %238, align 8, !alias.scope !84
  %239 = fmul fast <4 x double> %broadcast.splat1747, %wide.load1745
  %240 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1741
  %241 = bitcast double* %240 to <4 x double>*
  %wide.load1748 = load <4 x double>, <4 x double>* %241, align 8
  %242 = fmul fast <4 x double> %broadcast.splat1750, %wide.load1748
  %243 = shl i64 %236, 3
  %244 = add i64 %243, %235
  %245 = getelementptr i8, i8* %call, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1751 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !87, !noalias !89
  %247 = fadd fast <4 x double> %242, %239
  %248 = fmul fast <4 x double> %247, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %249 = fadd fast <4 x double> %248, %wide.load1751
  %250 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %249, <4 x double>* %250, align 8, !alias.scope !87, !noalias !89
  %index.next1742 = add i64 %index1741, 4
  %251 = icmp eq i64 %index.next1742, %n.vec1740
  br i1 %251, label %middle.block1732, label %vector.body1734, !llvm.loop !90

middle.block1732:                                 ; preds = %vector.body1734
  %cmp.n1744 = icmp eq i64 %227, %n.vec1740
  br i1 %cmp.n1744, label %polly.loop_exit280, label %polly.loop_header278.preheader1752

polly.loop_header278.preheader1752:               ; preds = %vector.memcheck1718, %polly.loop_header278.preheader, %middle.block1732
  %polly.indvar282.ph = phi i64 [ 0, %vector.memcheck1718 ], [ 0, %polly.loop_header278.preheader ], [ %n.vec1740, %middle.block1732 ]
  br label %polly.loop_header278

polly.loop_exit280:                               ; preds = %polly.loop_header278, %middle.block1732, %polly.loop_header270
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %polly.loop_cond276.not.not = icmp slt i64 %polly.indvar274, %224
  %indvars.iv.next1109 = add i64 %indvars.iv1108, 1
  %indvar.next1721 = add i64 %indvar1720, 1
  br i1 %polly.loop_cond276.not.not, label %polly.loop_header270, label %polly.loop_header270.1

polly.loop_header278:                             ; preds = %polly.loop_header278.preheader1752, %polly.loop_header278
  %polly.indvar282 = phi i64 [ %polly.indvar_next283, %polly.loop_header278 ], [ %polly.indvar282.ph, %polly.loop_header278.preheader1752 ]
  %252 = add nuw nsw i64 %polly.indvar282, %154
  %polly.access.Packed_MemRef_call1287 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar282
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call1287, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_292, %_p_scalar_288
  %polly.access.Packed_MemRef_call2295 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar282
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call2295, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_300, %_p_scalar_296
  %253 = shl i64 %252, 3
  %254 = add i64 %253, %235
  %scevgep301 = getelementptr i8, i8* %call, i64 %254
  %scevgep301302 = bitcast i8* %scevgep301 to double*
  %_p_scalar_303 = load double, double* %scevgep301302, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_303
  store double %p_add42.i118, double* %scevgep301302, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283 = add nuw nsw i64 %polly.indvar282, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar282, %smin
  br i1 %exitcond1110.not, label %polly.loop_exit280, label %polly.loop_header278, !llvm.loop !91

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall310 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1459 = phi i64 [ %indvar.next1460, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %255 = add i64 %indvar1459, 1
  %256 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %256
  %min.iters.check1461 = icmp ult i64 %255, 4
  br i1 %min.iters.check1461, label %polly.loop_header400.preheader, label %vector.ph1462

vector.ph1462:                                    ; preds = %polly.loop_header394
  %n.vec1464 = and i64 %255, -4
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1462
  %index1465 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1466, %vector.body1458 ]
  %257 = shl nuw nsw i64 %index1465, 3
  %258 = getelementptr i8, i8* %scevgep406, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  %wide.load1469 = load <4 x double>, <4 x double>* %259, align 8, !alias.scope !92, !noalias !94
  %260 = fmul fast <4 x double> %wide.load1469, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %261 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %260, <4 x double>* %261, align 8, !alias.scope !92, !noalias !94
  %index.next1466 = add i64 %index1465, 4
  %262 = icmp eq i64 %index.next1466, %n.vec1464
  br i1 %262, label %middle.block1456, label %vector.body1458, !llvm.loop !99

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1468 = icmp eq i64 %255, %n.vec1464
  br i1 %cmp.n1468, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1456
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1464, %middle.block1456 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1456
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1460 = add i64 %indvar1459, 1
  br i1 %exitcond1142.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  %scevgep1502 = getelementptr i8, i8* %malloccall308, i64 19200
  %scevgep1503 = getelementptr i8, i8* %malloccall308, i64 19208
  %scevgep1537 = getelementptr i8, i8* %malloccall308, i64 9600
  %scevgep1538 = getelementptr i8, i8* %malloccall308, i64 9608
  %scevgep1572 = getelementptr i8, i8* %malloccall308, i64 8
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %263 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %263
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1141.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !100

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %264 = shl nsw i64 %polly.indvar413, 2
  %265 = or i64 %264, 1
  %266 = or i64 %264, 2
  %267 = or i64 %264, 3
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit441
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next414, 250
  br i1 %exitcond1140.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit441, %polly.loop_header410
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit441 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %322, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %268 = shl nuw nsw i64 %polly.indvar419, 6
  %269 = shl nuw nsw i64 %polly.indvar419, 6
  %270 = and i64 %269, 9223372036854775680
  %271 = sub nsw i64 %268, %270
  %272 = mul nsw i64 %polly.indvar419, -64
  %273 = add i64 %272, %270
  %274 = shl nuw nsw i64 %polly.indvar419, 9
  %275 = shl nuw nsw i64 %polly.indvar419, 6
  %276 = shl nuw nsw i64 %polly.indvar419, 6
  %277 = and i64 %276, 9223372036854775680
  %278 = sub nsw i64 %275, %277
  %279 = or i64 %274, 8
  %280 = mul nsw i64 %polly.indvar419, -64
  %281 = add i64 %280, %277
  %282 = shl nuw nsw i64 %polly.indvar419, 6
  %283 = shl nuw nsw i64 %polly.indvar419, 6
  %284 = and i64 %283, 9223372036854775680
  %285 = sub nsw i64 %282, %284
  %286 = mul nsw i64 %polly.indvar419, -64
  %287 = add i64 %286, %284
  %288 = shl nuw nsw i64 %polly.indvar419, 9
  %289 = shl nuw nsw i64 %polly.indvar419, 6
  %290 = shl nuw nsw i64 %polly.indvar419, 6
  %291 = and i64 %290, 9223372036854775680
  %292 = sub nsw i64 %289, %291
  %293 = or i64 %288, 8
  %294 = mul nsw i64 %polly.indvar419, -64
  %295 = add i64 %294, %291
  %296 = shl nuw nsw i64 %polly.indvar419, 6
  %297 = shl nuw nsw i64 %polly.indvar419, 6
  %298 = and i64 %297, 9223372036854775680
  %299 = sub nsw i64 %296, %298
  %300 = mul nsw i64 %polly.indvar419, -64
  %301 = add i64 %300, %298
  %302 = shl nuw nsw i64 %polly.indvar419, 9
  %303 = shl nuw nsw i64 %polly.indvar419, 6
  %304 = shl nuw nsw i64 %polly.indvar419, 6
  %305 = and i64 %304, 9223372036854775680
  %306 = sub nsw i64 %303, %305
  %307 = or i64 %302, 8
  %308 = mul nsw i64 %polly.indvar419, -64
  %309 = add i64 %308, %305
  %310 = shl nuw nsw i64 %polly.indvar419, 6
  %311 = shl nuw nsw i64 %polly.indvar419, 6
  %312 = and i64 %311, 9223372036854775680
  %313 = sub nsw i64 %310, %312
  %314 = mul nsw i64 %polly.indvar419, -64
  %315 = add i64 %314, %312
  %316 = lshr i64 %polly.indvar419, 1
  %317 = shl nuw nsw i64 %316, 7
  %318 = sub nsw i64 %indvars.iv1124, %317
  %319 = add i64 %indvars.iv1129, %317
  %320 = mul nsw i64 %polly.indvar419, -64
  %321 = shl nsw i64 %polly.indvar419, 6
  br label %polly.loop_header428

polly.loop_exit441:                               ; preds = %polly.loop_exit482
  %322 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -64
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 64
  %indvars.iv.next1130 = add nsw i64 %indvars.iv1129, -64
  %exitcond1139.not = icmp eq i64 %322, 19
  br i1 %exitcond1139.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header416
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %323 = add nuw nsw i64 %polly.indvar431, %321
  %polly.access.mul.call2435 = mul nuw nsw i64 %323, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %264, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !96, !noalias !101
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar431
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1117
  br i1 %exitcond1119.not, label %polly.loop_header428.1, label %polly.loop_header428

polly.loop_header439:                             ; preds = %polly.loop_exit482, %polly.loop_exit430.3
  %indvar1473 = phi i64 [ %indvar.next1474, %polly.loop_exit482 ], [ 0, %polly.loop_exit430.3 ]
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit482 ], [ %319, %polly.loop_exit430.3 ]
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit482 ], [ %318, %polly.loop_exit430.3 ]
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit482 ], [ %316, %polly.loop_exit430.3 ]
  %324 = mul nsw i64 %indvar1473, -128
  %325 = add i64 %271, %324
  %smax1581 = call i64 @llvm.smax.i64(i64 %325, i64 0)
  %326 = shl nuw nsw i64 %indvar1473, 7
  %327 = add i64 %273, %326
  %328 = add i64 %smax1581, %327
  %329 = mul nsw i64 %indvar1473, -128
  %330 = add i64 %278, %329
  %smax1565 = call i64 @llvm.smax.i64(i64 %330, i64 0)
  %331 = shl nuw nsw i64 %indvar1473, 7
  %332 = add i64 %277, %331
  %333 = add i64 %smax1565, %332
  %334 = mul nsw i64 %333, 9600
  %335 = add i64 %274, %334
  %336 = add i64 %279, %334
  %337 = add i64 %281, %331
  %338 = add i64 %smax1565, %337
  %339 = mul nsw i64 %indvar1473, -128
  %340 = add i64 %285, %339
  %smax1547 = call i64 @llvm.smax.i64(i64 %340, i64 0)
  %341 = shl nuw nsw i64 %indvar1473, 7
  %342 = add i64 %287, %341
  %343 = add i64 %smax1547, %342
  %344 = mul nsw i64 %indvar1473, -128
  %345 = add i64 %292, %344
  %smax1530 = call i64 @llvm.smax.i64(i64 %345, i64 0)
  %346 = shl nuw nsw i64 %indvar1473, 7
  %347 = add i64 %291, %346
  %348 = add i64 %smax1530, %347
  %349 = mul nsw i64 %348, 9600
  %350 = add i64 %288, %349
  %351 = add i64 %293, %349
  %352 = add i64 %295, %346
  %353 = add i64 %smax1530, %352
  %354 = mul nsw i64 %indvar1473, -128
  %355 = add i64 %299, %354
  %smax1512 = call i64 @llvm.smax.i64(i64 %355, i64 0)
  %356 = shl nuw nsw i64 %indvar1473, 7
  %357 = add i64 %301, %356
  %358 = add i64 %smax1512, %357
  %359 = mul nsw i64 %indvar1473, -128
  %360 = add i64 %306, %359
  %smax1495 = call i64 @llvm.smax.i64(i64 %360, i64 0)
  %361 = shl nuw nsw i64 %indvar1473, 7
  %362 = add i64 %305, %361
  %363 = add i64 %smax1495, %362
  %364 = mul nsw i64 %363, 9600
  %365 = add i64 %302, %364
  %366 = add i64 %307, %364
  %367 = add i64 %309, %361
  %368 = add i64 %smax1495, %367
  %369 = mul nsw i64 %indvar1473, -128
  %370 = add i64 %313, %369
  %smax1475 = call i64 @llvm.smax.i64(i64 %370, i64 0)
  %371 = shl nuw nsw i64 %indvar1473, 7
  %372 = add i64 %315, %371
  %373 = add i64 %smax1475, %372
  %smax1128 = call i64 @llvm.smax.i64(i64 %indvars.iv1126, i64 0)
  %374 = add i64 %smax1128, %indvars.iv1131
  %375 = shl nuw nsw i64 %polly.indvar442, 1
  %.not.not944 = icmp ugt i64 %375, %polly.indvar419
  %376 = shl nsw i64 %polly.indvar442, 7
  %377 = add nsw i64 %376, %320
  %378 = icmp sgt i64 %377, 0
  %379 = select i1 %378, i64 %377, i64 0
  %380 = add nsw i64 %377, 127
  %381 = icmp slt i64 %777, %380
  %382 = select i1 %381, i64 %777, i64 %380
  %polly.loop_guard469.not = icmp sgt i64 %379, %382
  br i1 %.not.not944, label %polly.loop_header455.us, label %polly.loop_header439.split

polly.loop_header455.us:                          ; preds = %polly.loop_header439, %polly.loop_header455.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header455.us ], [ 0, %polly.loop_header439 ]
  %383 = add nuw nsw i64 %polly.indvar458.us, %321
  %polly.access.mul.call1462.us = mul nuw nsw i64 %383, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %264, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar458.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next459.us, 64
  br i1 %exitcond1122.not, label %polly.merge452.loopexit.us, label %polly.loop_header455.us

polly.loop_header466.us:                          ; preds = %polly.merge452.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %379, %polly.merge452.loopexit.us ]
  %384 = add nuw nsw i64 %polly.indvar470.us, %321
  %polly.access.mul.call1474.us = mul nsw i64 %384, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %264, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1309479.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar470.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1309479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %382
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_header455.us.1.preheader

polly.merge452.loopexit.us:                       ; preds = %polly.loop_header455.us
  br i1 %polly.loop_guard469.not, label %polly.loop_header455.us.1.preheader, label %polly.loop_header466.us

polly.loop_header455.us.1.preheader:              ; preds = %polly.loop_header466.us, %polly.merge452.loopexit.us
  br label %polly.loop_header455.us.1

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466

polly.loop_exit482:                               ; preds = %polly.loop_exit497.3, %polly.loop_header480.preheader
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %indvars.iv.next1127 = add i64 %indvars.iv1126, -128
  %indvars.iv.next1132 = add i64 %indvars.iv1131, 128
  %exitcond1138.not = icmp eq i64 %polly.indvar_next443, 10
  %indvar.next1474 = add i64 %indvar1473, 1
  br i1 %exitcond1138.not, label %polly.loop_exit441, label %polly.loop_header439

polly.loop_header480.preheader:                   ; preds = %polly.loop_header466.3, %polly.loop_header466.us.3, %polly.merge452.loopexit.us.3, %polly.loop_header439.split
  %385 = sub nsw i64 %321, %376
  %386 = icmp sgt i64 %385, 0
  %387 = select i1 %386, i64 %385, i64 0
  %388 = mul nsw i64 %polly.indvar442, -128
  %389 = icmp slt i64 %388, -1072
  %390 = select i1 %389, i64 %388, i64 -1072
  %391 = add nsw i64 %390, 1199
  %polly.loop_guard490.not = icmp sgt i64 %387, %391
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header487

polly.loop_header466:                             ; preds = %polly.loop_header439.split, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %379, %polly.loop_header439.split ]
  %392 = add nuw nsw i64 %polly.indvar470, %321
  %polly.access.mul.call1474 = mul nsw i64 %392, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %264, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1309479 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar470
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1309479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %382
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_header466.1

polly.loop_header487:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit497
  %indvar1566 = phi i64 [ %indvar.next1567, %polly.loop_exit497 ], [ 0, %polly.loop_header480.preheader ]
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit497 ], [ %374, %polly.loop_header480.preheader ]
  %polly.indvar491 = phi i64 [ %polly.indvar_next492, %polly.loop_exit497 ], [ %387, %polly.loop_header480.preheader ]
  %393 = add i64 %328, %indvar1566
  %smin1582 = call i64 @llvm.smin.i64(i64 %393, i64 63)
  %394 = add nsw i64 %smin1582, 1
  %395 = mul nuw nsw i64 %indvar1566, 9600
  %396 = add i64 %335, %395
  %scevgep1568 = getelementptr i8, i8* %call, i64 %396
  %397 = add i64 %336, %395
  %scevgep1569 = getelementptr i8, i8* %call, i64 %397
  %398 = add i64 %338, %indvar1566
  %smin1570 = call i64 @llvm.smin.i64(i64 %398, i64 63)
  %399 = shl nsw i64 %smin1570, 3
  %scevgep1571 = getelementptr i8, i8* %scevgep1569, i64 %399
  %scevgep1573 = getelementptr i8, i8* %scevgep1572, i64 %399
  %smin1135 = call i64 @llvm.smin.i64(i64 %indvars.iv1133, i64 63)
  %400 = add nsw i64 %polly.indvar491, %377
  %polly.loop_guard4981210 = icmp sgt i64 %400, -1
  br i1 %polly.loop_guard4981210, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %401 = add nuw nsw i64 %polly.indvar491, %376
  %polly.access.Packed_MemRef_call2311508 = getelementptr double, double* %Packed_MemRef_call2311, i64 %400
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2311508, align 8
  %polly.access.Packed_MemRef_call1309516 = getelementptr double, double* %Packed_MemRef_call1309, i64 %400
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1309516, align 8
  %402 = mul i64 %401, 9600
  %min.iters.check1583 = icmp ult i64 %394, 4
  br i1 %min.iters.check1583, label %polly.loop_header495.preheader1755, label %vector.memcheck1564

vector.memcheck1564:                              ; preds = %polly.loop_header495.preheader
  %bound01574 = icmp ult i8* %scevgep1568, %scevgep1573
  %bound11575 = icmp ult i8* %malloccall308, %scevgep1571
  %found.conflict1576 = and i1 %bound01574, %bound11575
  br i1 %found.conflict1576, label %polly.loop_header495.preheader1755, label %vector.ph1584

vector.ph1584:                                    ; preds = %vector.memcheck1564
  %n.vec1586 = and i64 %394, -4
  %broadcast.splatinsert1592 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1593 = shufflevector <4 x double> %broadcast.splatinsert1592, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1595 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1596 = shufflevector <4 x double> %broadcast.splatinsert1595, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1580

vector.body1580:                                  ; preds = %vector.body1580, %vector.ph1584
  %index1587 = phi i64 [ 0, %vector.ph1584 ], [ %index.next1588, %vector.body1580 ]
  %403 = add nuw nsw i64 %index1587, %321
  %404 = getelementptr double, double* %Packed_MemRef_call1309, i64 %index1587
  %405 = bitcast double* %404 to <4 x double>*
  %wide.load1591 = load <4 x double>, <4 x double>* %405, align 8, !alias.scope !103
  %406 = fmul fast <4 x double> %broadcast.splat1593, %wide.load1591
  %407 = getelementptr double, double* %Packed_MemRef_call2311, i64 %index1587
  %408 = bitcast double* %407 to <4 x double>*
  %wide.load1594 = load <4 x double>, <4 x double>* %408, align 8
  %409 = fmul fast <4 x double> %broadcast.splat1596, %wide.load1594
  %410 = shl i64 %403, 3
  %411 = add i64 %410, %402
  %412 = getelementptr i8, i8* %call, i64 %411
  %413 = bitcast i8* %412 to <4 x double>*
  %wide.load1597 = load <4 x double>, <4 x double>* %413, align 8, !alias.scope !106, !noalias !108
  %414 = fadd fast <4 x double> %409, %406
  %415 = fmul fast <4 x double> %414, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %416 = fadd fast <4 x double> %415, %wide.load1597
  %417 = bitcast i8* %412 to <4 x double>*
  store <4 x double> %416, <4 x double>* %417, align 8, !alias.scope !106, !noalias !108
  %index.next1588 = add i64 %index1587, 4
  %418 = icmp eq i64 %index.next1588, %n.vec1586
  br i1 %418, label %middle.block1578, label %vector.body1580, !llvm.loop !109

middle.block1578:                                 ; preds = %vector.body1580
  %cmp.n1590 = icmp eq i64 %394, %n.vec1586
  br i1 %cmp.n1590, label %polly.loop_exit497, label %polly.loop_header495.preheader1755

polly.loop_header495.preheader1755:               ; preds = %vector.memcheck1564, %polly.loop_header495.preheader, %middle.block1578
  %polly.indvar499.ph = phi i64 [ 0, %vector.memcheck1564 ], [ 0, %polly.loop_header495.preheader ], [ %n.vec1586, %middle.block1578 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1578, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %391
  %indvars.iv.next1134 = add i64 %indvars.iv1133, 1
  %indvar.next1567 = add i64 %indvar1566, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_header487.1

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1755, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1755 ]
  %419 = add nuw nsw i64 %polly.indvar499, %321
  %polly.access.Packed_MemRef_call1309504 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar499
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1309504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2311512 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar499
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2311512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %420 = shl i64 %419, 3
  %421 = add i64 %420, %402
  %scevgep518 = getelementptr i8, i8* %call, i64 %421
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_520
  store double %p_add42.i79, double* %scevgep518519, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar499, %smin1135
  br i1 %exitcond1136.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !110

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
  %422 = add i64 %indvar, 1
  %423 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %423
  %min.iters.check1307 = icmp ult i64 %422, 4
  br i1 %min.iters.check1307, label %polly.loop_header617.preheader, label %vector.ph1308

vector.ph1308:                                    ; preds = %polly.loop_header611
  %n.vec1310 = and i64 %422, -4
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1312, %vector.body1306 ]
  %424 = shl nuw nsw i64 %index1311, 3
  %425 = getelementptr i8, i8* %scevgep623, i64 %424
  %426 = bitcast i8* %425 to <4 x double>*
  %wide.load1315 = load <4 x double>, <4 x double>* %426, align 8, !alias.scope !111, !noalias !113
  %427 = fmul fast <4 x double> %wide.load1315, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %428 = bitcast i8* %425 to <4 x double>*
  store <4 x double> %427, <4 x double>* %428, align 8, !alias.scope !111, !noalias !113
  %index.next1312 = add i64 %index1311, 4
  %429 = icmp eq i64 %index.next1312, %n.vec1310
  br i1 %429, label %middle.block1304, label %vector.body1306, !llvm.loop !118

middle.block1304:                                 ; preds = %vector.body1306
  %cmp.n1314 = icmp eq i64 %422, %n.vec1310
  br i1 %cmp.n1314, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1304
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1310, %middle.block1304 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1304
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1168.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1168.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  %scevgep1348 = getelementptr i8, i8* %malloccall525, i64 19200
  %scevgep1349 = getelementptr i8, i8* %malloccall525, i64 19208
  %scevgep1383 = getelementptr i8, i8* %malloccall525, i64 9600
  %scevgep1384 = getelementptr i8, i8* %malloccall525, i64 9608
  %scevgep1418 = getelementptr i8, i8* %malloccall525, i64 8
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %430 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %430
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !111, !noalias !113
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1167.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !119

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %431 = shl nsw i64 %polly.indvar630, 2
  %432 = or i64 %431, 1
  %433 = or i64 %431, 2
  %434 = or i64 %431, 3
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar_next631, 250
  br i1 %exitcond1166.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %489, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %435 = shl nuw nsw i64 %polly.indvar636, 6
  %436 = shl nuw nsw i64 %polly.indvar636, 6
  %437 = and i64 %436, 9223372036854775680
  %438 = sub nsw i64 %435, %437
  %439 = mul nsw i64 %polly.indvar636, -64
  %440 = add i64 %439, %437
  %441 = shl nuw nsw i64 %polly.indvar636, 9
  %442 = shl nuw nsw i64 %polly.indvar636, 6
  %443 = shl nuw nsw i64 %polly.indvar636, 6
  %444 = and i64 %443, 9223372036854775680
  %445 = sub nsw i64 %442, %444
  %446 = or i64 %441, 8
  %447 = mul nsw i64 %polly.indvar636, -64
  %448 = add i64 %447, %444
  %449 = shl nuw nsw i64 %polly.indvar636, 6
  %450 = shl nuw nsw i64 %polly.indvar636, 6
  %451 = and i64 %450, 9223372036854775680
  %452 = sub nsw i64 %449, %451
  %453 = mul nsw i64 %polly.indvar636, -64
  %454 = add i64 %453, %451
  %455 = shl nuw nsw i64 %polly.indvar636, 9
  %456 = shl nuw nsw i64 %polly.indvar636, 6
  %457 = shl nuw nsw i64 %polly.indvar636, 6
  %458 = and i64 %457, 9223372036854775680
  %459 = sub nsw i64 %456, %458
  %460 = or i64 %455, 8
  %461 = mul nsw i64 %polly.indvar636, -64
  %462 = add i64 %461, %458
  %463 = shl nuw nsw i64 %polly.indvar636, 6
  %464 = shl nuw nsw i64 %polly.indvar636, 6
  %465 = and i64 %464, 9223372036854775680
  %466 = sub nsw i64 %463, %465
  %467 = mul nsw i64 %polly.indvar636, -64
  %468 = add i64 %467, %465
  %469 = shl nuw nsw i64 %polly.indvar636, 9
  %470 = shl nuw nsw i64 %polly.indvar636, 6
  %471 = shl nuw nsw i64 %polly.indvar636, 6
  %472 = and i64 %471, 9223372036854775680
  %473 = sub nsw i64 %470, %472
  %474 = or i64 %469, 8
  %475 = mul nsw i64 %polly.indvar636, -64
  %476 = add i64 %475, %472
  %477 = shl nuw nsw i64 %polly.indvar636, 6
  %478 = shl nuw nsw i64 %polly.indvar636, 6
  %479 = and i64 %478, 9223372036854775680
  %480 = sub nsw i64 %477, %479
  %481 = mul nsw i64 %polly.indvar636, -64
  %482 = add i64 %481, %479
  %483 = lshr i64 %polly.indvar636, 1
  %484 = shl nuw nsw i64 %483, 7
  %485 = sub nsw i64 %indvars.iv1150, %484
  %486 = add i64 %indvars.iv1155, %484
  %487 = mul nsw i64 %polly.indvar636, -64
  %488 = shl nsw i64 %polly.indvar636, 6
  br label %polly.loop_header645

polly.loop_exit658:                               ; preds = %polly.loop_exit699
  %489 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1144 = add nsw i64 %indvars.iv1143, -64
  %indvars.iv.next1151 = add nuw nsw i64 %indvars.iv1150, 64
  %indvars.iv.next1156 = add nsw i64 %indvars.iv1155, -64
  %exitcond1165.not = icmp eq i64 %489, 19
  br i1 %exitcond1165.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header633
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %490 = add nuw nsw i64 %polly.indvar648, %488
  %polly.access.mul.call2652 = mul nuw nsw i64 %490, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %431, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !115, !noalias !120
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar648
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1145.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1143
  br i1 %exitcond1145.not, label %polly.loop_header645.1, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit699, %polly.loop_exit647.3
  %indvar1319 = phi i64 [ %indvar.next1320, %polly.loop_exit699 ], [ 0, %polly.loop_exit647.3 ]
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit699 ], [ %486, %polly.loop_exit647.3 ]
  %indvars.iv1152 = phi i64 [ %indvars.iv.next1153, %polly.loop_exit699 ], [ %485, %polly.loop_exit647.3 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit699 ], [ %483, %polly.loop_exit647.3 ]
  %491 = mul nsw i64 %indvar1319, -128
  %492 = add i64 %438, %491
  %smax1427 = call i64 @llvm.smax.i64(i64 %492, i64 0)
  %493 = shl nuw nsw i64 %indvar1319, 7
  %494 = add i64 %440, %493
  %495 = add i64 %smax1427, %494
  %496 = mul nsw i64 %indvar1319, -128
  %497 = add i64 %445, %496
  %smax1411 = call i64 @llvm.smax.i64(i64 %497, i64 0)
  %498 = shl nuw nsw i64 %indvar1319, 7
  %499 = add i64 %444, %498
  %500 = add i64 %smax1411, %499
  %501 = mul nsw i64 %500, 9600
  %502 = add i64 %441, %501
  %503 = add i64 %446, %501
  %504 = add i64 %448, %498
  %505 = add i64 %smax1411, %504
  %506 = mul nsw i64 %indvar1319, -128
  %507 = add i64 %452, %506
  %smax1393 = call i64 @llvm.smax.i64(i64 %507, i64 0)
  %508 = shl nuw nsw i64 %indvar1319, 7
  %509 = add i64 %454, %508
  %510 = add i64 %smax1393, %509
  %511 = mul nsw i64 %indvar1319, -128
  %512 = add i64 %459, %511
  %smax1376 = call i64 @llvm.smax.i64(i64 %512, i64 0)
  %513 = shl nuw nsw i64 %indvar1319, 7
  %514 = add i64 %458, %513
  %515 = add i64 %smax1376, %514
  %516 = mul nsw i64 %515, 9600
  %517 = add i64 %455, %516
  %518 = add i64 %460, %516
  %519 = add i64 %462, %513
  %520 = add i64 %smax1376, %519
  %521 = mul nsw i64 %indvar1319, -128
  %522 = add i64 %466, %521
  %smax1358 = call i64 @llvm.smax.i64(i64 %522, i64 0)
  %523 = shl nuw nsw i64 %indvar1319, 7
  %524 = add i64 %468, %523
  %525 = add i64 %smax1358, %524
  %526 = mul nsw i64 %indvar1319, -128
  %527 = add i64 %473, %526
  %smax1341 = call i64 @llvm.smax.i64(i64 %527, i64 0)
  %528 = shl nuw nsw i64 %indvar1319, 7
  %529 = add i64 %472, %528
  %530 = add i64 %smax1341, %529
  %531 = mul nsw i64 %530, 9600
  %532 = add i64 %469, %531
  %533 = add i64 %474, %531
  %534 = add i64 %476, %528
  %535 = add i64 %smax1341, %534
  %536 = mul nsw i64 %indvar1319, -128
  %537 = add i64 %480, %536
  %smax1321 = call i64 @llvm.smax.i64(i64 %537, i64 0)
  %538 = shl nuw nsw i64 %indvar1319, 7
  %539 = add i64 %482, %538
  %540 = add i64 %smax1321, %539
  %smax1154 = call i64 @llvm.smax.i64(i64 %indvars.iv1152, i64 0)
  %541 = add i64 %smax1154, %indvars.iv1157
  %542 = shl nuw nsw i64 %polly.indvar659, 1
  %.not.not945 = icmp ugt i64 %542, %polly.indvar636
  %543 = shl nsw i64 %polly.indvar659, 7
  %544 = add nsw i64 %543, %487
  %545 = icmp sgt i64 %544, 0
  %546 = select i1 %545, i64 %544, i64 0
  %547 = add nsw i64 %544, 127
  %548 = icmp slt i64 %875, %547
  %549 = select i1 %548, i64 %875, i64 %547
  %polly.loop_guard686.not = icmp sgt i64 %546, %549
  br i1 %.not.not945, label %polly.loop_header672.us, label %polly.loop_header656.split

polly.loop_header672.us:                          ; preds = %polly.loop_header656, %polly.loop_header672.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.loop_header672.us ], [ 0, %polly.loop_header656 ]
  %550 = add nuw nsw i64 %polly.indvar675.us, %488
  %polly.access.mul.call1679.us = mul nuw nsw i64 %550, 1000
  %polly.access.add.call1680.us = add nuw nsw i64 %431, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar675.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next676.us = add nuw nsw i64 %polly.indvar675.us, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar_next676.us, 64
  br i1 %exitcond1148.not, label %polly.merge669.loopexit.us, label %polly.loop_header672.us

polly.loop_header683.us:                          ; preds = %polly.merge669.loopexit.us, %polly.loop_header683.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header683.us ], [ %546, %polly.merge669.loopexit.us ]
  %551 = add nuw nsw i64 %polly.indvar687.us, %488
  %polly.access.mul.call1691.us = mul nsw i64 %551, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %431, %polly.access.mul.call1691.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526696.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar687.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1526696.us, align 8
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %polly.loop_cond689.not.not.us = icmp slt i64 %polly.indvar687.us, %549
  br i1 %polly.loop_cond689.not.not.us, label %polly.loop_header683.us, label %polly.loop_header672.us.1.preheader

polly.merge669.loopexit.us:                       ; preds = %polly.loop_header672.us
  br i1 %polly.loop_guard686.not, label %polly.loop_header672.us.1.preheader, label %polly.loop_header683.us

polly.loop_header672.us.1.preheader:              ; preds = %polly.loop_header683.us, %polly.merge669.loopexit.us
  br label %polly.loop_header672.us.1

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header683

polly.loop_exit699:                               ; preds = %polly.loop_exit714.3, %polly.loop_header697.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %indvars.iv.next1153 = add i64 %indvars.iv1152, -128
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 128
  %exitcond1164.not = icmp eq i64 %polly.indvar_next660, 10
  %indvar.next1320 = add i64 %indvar1319, 1
  br i1 %exitcond1164.not, label %polly.loop_exit658, label %polly.loop_header656

polly.loop_header697.preheader:                   ; preds = %polly.loop_header683.3, %polly.loop_header683.us.3, %polly.merge669.loopexit.us.3, %polly.loop_header656.split
  %552 = sub nsw i64 %488, %543
  %553 = icmp sgt i64 %552, 0
  %554 = select i1 %553, i64 %552, i64 0
  %555 = mul nsw i64 %polly.indvar659, -128
  %556 = icmp slt i64 %555, -1072
  %557 = select i1 %556, i64 %555, i64 -1072
  %558 = add nsw i64 %557, 1199
  %polly.loop_guard707.not = icmp sgt i64 %554, %558
  br i1 %polly.loop_guard707.not, label %polly.loop_exit699, label %polly.loop_header704

polly.loop_header683:                             ; preds = %polly.loop_header656.split, %polly.loop_header683
  %polly.indvar687 = phi i64 [ %polly.indvar_next688, %polly.loop_header683 ], [ %546, %polly.loop_header656.split ]
  %559 = add nuw nsw i64 %polly.indvar687, %488
  %polly.access.mul.call1691 = mul nsw i64 %559, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %431, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526696 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar687
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1526696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %polly.loop_cond689.not.not = icmp slt i64 %polly.indvar687, %549
  br i1 %polly.loop_cond689.not.not, label %polly.loop_header683, label %polly.loop_header683.1

polly.loop_header704:                             ; preds = %polly.loop_header697.preheader, %polly.loop_exit714
  %indvar1412 = phi i64 [ %indvar.next1413, %polly.loop_exit714 ], [ 0, %polly.loop_header697.preheader ]
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %polly.loop_exit714 ], [ %541, %polly.loop_header697.preheader ]
  %polly.indvar708 = phi i64 [ %polly.indvar_next709, %polly.loop_exit714 ], [ %554, %polly.loop_header697.preheader ]
  %560 = add i64 %495, %indvar1412
  %smin1428 = call i64 @llvm.smin.i64(i64 %560, i64 63)
  %561 = add nsw i64 %smin1428, 1
  %562 = mul nuw nsw i64 %indvar1412, 9600
  %563 = add i64 %502, %562
  %scevgep1414 = getelementptr i8, i8* %call, i64 %563
  %564 = add i64 %503, %562
  %scevgep1415 = getelementptr i8, i8* %call, i64 %564
  %565 = add i64 %505, %indvar1412
  %smin1416 = call i64 @llvm.smin.i64(i64 %565, i64 63)
  %566 = shl nsw i64 %smin1416, 3
  %scevgep1417 = getelementptr i8, i8* %scevgep1415, i64 %566
  %scevgep1419 = getelementptr i8, i8* %scevgep1418, i64 %566
  %smin1161 = call i64 @llvm.smin.i64(i64 %indvars.iv1159, i64 63)
  %567 = add nsw i64 %polly.indvar708, %544
  %polly.loop_guard7151214 = icmp sgt i64 %567, -1
  br i1 %polly.loop_guard7151214, label %polly.loop_header712.preheader, label %polly.loop_exit714

polly.loop_header712.preheader:                   ; preds = %polly.loop_header704
  %568 = add nuw nsw i64 %polly.indvar708, %543
  %polly.access.Packed_MemRef_call2528725 = getelementptr double, double* %Packed_MemRef_call2528, i64 %567
  %_p_scalar_726 = load double, double* %polly.access.Packed_MemRef_call2528725, align 8
  %polly.access.Packed_MemRef_call1526733 = getelementptr double, double* %Packed_MemRef_call1526, i64 %567
  %_p_scalar_734 = load double, double* %polly.access.Packed_MemRef_call1526733, align 8
  %569 = mul i64 %568, 9600
  %min.iters.check1429 = icmp ult i64 %561, 4
  br i1 %min.iters.check1429, label %polly.loop_header712.preheader1758, label %vector.memcheck1410

vector.memcheck1410:                              ; preds = %polly.loop_header712.preheader
  %bound01420 = icmp ult i8* %scevgep1414, %scevgep1419
  %bound11421 = icmp ult i8* %malloccall525, %scevgep1417
  %found.conflict1422 = and i1 %bound01420, %bound11421
  br i1 %found.conflict1422, label %polly.loop_header712.preheader1758, label %vector.ph1430

vector.ph1430:                                    ; preds = %vector.memcheck1410
  %n.vec1432 = and i64 %561, -4
  %broadcast.splatinsert1438 = insertelement <4 x double> poison, double %_p_scalar_726, i32 0
  %broadcast.splat1439 = shufflevector <4 x double> %broadcast.splatinsert1438, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1441 = insertelement <4 x double> poison, double %_p_scalar_734, i32 0
  %broadcast.splat1442 = shufflevector <4 x double> %broadcast.splatinsert1441, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1426

vector.body1426:                                  ; preds = %vector.body1426, %vector.ph1430
  %index1433 = phi i64 [ 0, %vector.ph1430 ], [ %index.next1434, %vector.body1426 ]
  %570 = add nuw nsw i64 %index1433, %488
  %571 = getelementptr double, double* %Packed_MemRef_call1526, i64 %index1433
  %572 = bitcast double* %571 to <4 x double>*
  %wide.load1437 = load <4 x double>, <4 x double>* %572, align 8, !alias.scope !122
  %573 = fmul fast <4 x double> %broadcast.splat1439, %wide.load1437
  %574 = getelementptr double, double* %Packed_MemRef_call2528, i64 %index1433
  %575 = bitcast double* %574 to <4 x double>*
  %wide.load1440 = load <4 x double>, <4 x double>* %575, align 8
  %576 = fmul fast <4 x double> %broadcast.splat1442, %wide.load1440
  %577 = shl i64 %570, 3
  %578 = add i64 %577, %569
  %579 = getelementptr i8, i8* %call, i64 %578
  %580 = bitcast i8* %579 to <4 x double>*
  %wide.load1443 = load <4 x double>, <4 x double>* %580, align 8, !alias.scope !125, !noalias !127
  %581 = fadd fast <4 x double> %576, %573
  %582 = fmul fast <4 x double> %581, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %583 = fadd fast <4 x double> %582, %wide.load1443
  %584 = bitcast i8* %579 to <4 x double>*
  store <4 x double> %583, <4 x double>* %584, align 8, !alias.scope !125, !noalias !127
  %index.next1434 = add i64 %index1433, 4
  %585 = icmp eq i64 %index.next1434, %n.vec1432
  br i1 %585, label %middle.block1424, label %vector.body1426, !llvm.loop !128

middle.block1424:                                 ; preds = %vector.body1426
  %cmp.n1436 = icmp eq i64 %561, %n.vec1432
  br i1 %cmp.n1436, label %polly.loop_exit714, label %polly.loop_header712.preheader1758

polly.loop_header712.preheader1758:               ; preds = %vector.memcheck1410, %polly.loop_header712.preheader, %middle.block1424
  %polly.indvar716.ph = phi i64 [ 0, %vector.memcheck1410 ], [ 0, %polly.loop_header712.preheader ], [ %n.vec1432, %middle.block1424 ]
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_header712, %middle.block1424, %polly.loop_header704
  %polly.indvar_next709 = add nuw nsw i64 %polly.indvar708, 1
  %polly.loop_cond710.not.not = icmp slt i64 %polly.indvar708, %558
  %indvars.iv.next1160 = add i64 %indvars.iv1159, 1
  %indvar.next1413 = add i64 %indvar1412, 1
  br i1 %polly.loop_cond710.not.not, label %polly.loop_header704, label %polly.loop_header704.1

polly.loop_header712:                             ; preds = %polly.loop_header712.preheader1758, %polly.loop_header712
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_header712 ], [ %polly.indvar716.ph, %polly.loop_header712.preheader1758 ]
  %586 = add nuw nsw i64 %polly.indvar716, %488
  %polly.access.Packed_MemRef_call1526721 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar716
  %_p_scalar_722 = load double, double* %polly.access.Packed_MemRef_call1526721, align 8
  %p_mul27.i = fmul fast double %_p_scalar_726, %_p_scalar_722
  %polly.access.Packed_MemRef_call2528729 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar716
  %_p_scalar_730 = load double, double* %polly.access.Packed_MemRef_call2528729, align 8
  %p_mul37.i = fmul fast double %_p_scalar_734, %_p_scalar_730
  %587 = shl i64 %586, 3
  %588 = add i64 %587, %569
  %scevgep735 = getelementptr i8, i8* %call, i64 %588
  %scevgep735736 = bitcast i8* %scevgep735 to double*
  %_p_scalar_737 = load double, double* %scevgep735736, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_737
  store double %p_add42.i, double* %scevgep735736, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar716, %smin1161
  br i1 %exitcond1162.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !129

polly.loop_header864:                             ; preds = %entry, %polly.loop_exit872
  %indvars.iv1193 = phi i64 [ %indvars.iv.next1194, %polly.loop_exit872 ], [ 0, %entry ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %entry ]
  %smin1195 = call i64 @llvm.smin.i64(i64 %indvars.iv1193, i64 -1168)
  %589 = shl nsw i64 %polly.indvar867, 5
  %590 = add nsw i64 %smin1195, 1199
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1194 = add nsw i64 %indvars.iv1193, -32
  %exitcond1198.not = icmp eq i64 %polly.indvar_next868, 38
  br i1 %exitcond1198.not, label %polly.loop_header891, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %indvars.iv1189 = phi i64 [ %indvars.iv.next1190, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %591 = mul nsw i64 %polly.indvar873, -32
  %smin1245 = call i64 @llvm.smin.i64(i64 %591, i64 -1168)
  %592 = add nsw i64 %smin1245, 1200
  %smin1191 = call i64 @llvm.smin.i64(i64 %indvars.iv1189, i64 -1168)
  %593 = shl nsw i64 %polly.indvar873, 5
  %594 = add nsw i64 %smin1191, 1199
  br label %polly.loop_header876

polly.loop_exit878:                               ; preds = %polly.loop_exit884
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %indvars.iv.next1190 = add nsw i64 %indvars.iv1189, -32
  %exitcond1197.not = icmp eq i64 %polly.indvar_next874, 38
  br i1 %exitcond1197.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_exit884, %polly.loop_header870
  %polly.indvar879 = phi i64 [ 0, %polly.loop_header870 ], [ %polly.indvar_next880, %polly.loop_exit884 ]
  %595 = add nuw nsw i64 %polly.indvar879, %589
  %596 = trunc i64 %595 to i32
  %597 = mul nuw nsw i64 %595, 9600
  %min.iters.check = icmp eq i64 %592, 0
  br i1 %min.iters.check, label %polly.loop_header882, label %vector.ph1246

vector.ph1246:                                    ; preds = %polly.loop_header876
  %broadcast.splatinsert1253 = insertelement <4 x i64> poison, i64 %593, i32 0
  %broadcast.splat1254 = shufflevector <4 x i64> %broadcast.splatinsert1253, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1255 = insertelement <4 x i32> poison, i32 %596, i32 0
  %broadcast.splat1256 = shufflevector <4 x i32> %broadcast.splatinsert1255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1246
  %index1247 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1248, %vector.body1244 ]
  %vec.ind1251 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1246 ], [ %vec.ind.next1252, %vector.body1244 ]
  %598 = add nuw nsw <4 x i64> %vec.ind1251, %broadcast.splat1254
  %599 = trunc <4 x i64> %598 to <4 x i32>
  %600 = mul <4 x i32> %broadcast.splat1256, %599
  %601 = add <4 x i32> %600, <i32 3, i32 3, i32 3, i32 3>
  %602 = urem <4 x i32> %601, <i32 1200, i32 1200, i32 1200, i32 1200>
  %603 = sitofp <4 x i32> %602 to <4 x double>
  %604 = fmul fast <4 x double> %603, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %605 = extractelement <4 x i64> %598, i32 0
  %606 = shl i64 %605, 3
  %607 = add nuw nsw i64 %606, %597
  %608 = getelementptr i8, i8* %call, i64 %607
  %609 = bitcast i8* %608 to <4 x double>*
  store <4 x double> %604, <4 x double>* %609, align 8, !alias.scope !130, !noalias !132
  %index.next1248 = add i64 %index1247, 4
  %vec.ind.next1252 = add <4 x i64> %vec.ind1251, <i64 4, i64 4, i64 4, i64 4>
  %610 = icmp eq i64 %index.next1248, %592
  br i1 %610, label %polly.loop_exit884, label %vector.body1244, !llvm.loop !135

polly.loop_exit884:                               ; preds = %vector.body1244, %polly.loop_header882
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1196.not = icmp eq i64 %polly.indvar879, %590
  br i1 %exitcond1196.not, label %polly.loop_exit878, label %polly.loop_header876

polly.loop_header882:                             ; preds = %polly.loop_header876, %polly.loop_header882
  %polly.indvar885 = phi i64 [ %polly.indvar_next886, %polly.loop_header882 ], [ 0, %polly.loop_header876 ]
  %611 = add nuw nsw i64 %polly.indvar885, %593
  %612 = trunc i64 %611 to i32
  %613 = mul i32 %612, %596
  %614 = add i32 %613, 3
  %615 = urem i32 %614, 1200
  %p_conv31.i = sitofp i32 %615 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %616 = shl i64 %611, 3
  %617 = add nuw nsw i64 %616, %597
  %scevgep888 = getelementptr i8, i8* %call, i64 %617
  %scevgep888889 = bitcast i8* %scevgep888 to double*
  store double %p_div33.i, double* %scevgep888889, align 8, !alias.scope !130, !noalias !132
  %polly.indvar_next886 = add nuw nsw i64 %polly.indvar885, 1
  %exitcond1192.not = icmp eq i64 %polly.indvar885, %594
  br i1 %exitcond1192.not, label %polly.loop_exit884, label %polly.loop_header882, !llvm.loop !136

polly.loop_header891:                             ; preds = %polly.loop_exit872, %polly.loop_exit899
  %indvars.iv1183 = phi i64 [ %indvars.iv.next1184, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %smin1185 = call i64 @llvm.smin.i64(i64 %indvars.iv1183, i64 -1168)
  %618 = shl nsw i64 %polly.indvar894, 5
  %619 = add nsw i64 %smin1185, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, -32
  %exitcond1188.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1188.not, label %polly.loop_header917, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1179 = phi i64 [ %indvars.iv.next1180, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %620 = mul nsw i64 %polly.indvar900, -32
  %smin1260 = call i64 @llvm.smin.i64(i64 %620, i64 -968)
  %621 = add nsw i64 %smin1260, 1000
  %smin1181 = call i64 @llvm.smin.i64(i64 %indvars.iv1179, i64 -968)
  %622 = shl nsw i64 %polly.indvar900, 5
  %623 = add nsw i64 %smin1181, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1180 = add nsw i64 %indvars.iv1179, -32
  %exitcond1187.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1187.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %624 = add nuw nsw i64 %polly.indvar906, %618
  %625 = trunc i64 %624 to i32
  %626 = mul nuw nsw i64 %624, 8000
  %min.iters.check1261 = icmp eq i64 %621, 0
  br i1 %min.iters.check1261, label %polly.loop_header909, label %vector.ph1262

vector.ph1262:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1271 = insertelement <4 x i64> poison, i64 %622, i32 0
  %broadcast.splat1272 = shufflevector <4 x i64> %broadcast.splatinsert1271, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1273 = insertelement <4 x i32> poison, i32 %625, i32 0
  %broadcast.splat1274 = shufflevector <4 x i32> %broadcast.splatinsert1273, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1262
  %index1265 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1266, %vector.body1259 ]
  %vec.ind1269 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1262 ], [ %vec.ind.next1270, %vector.body1259 ]
  %627 = add nuw nsw <4 x i64> %vec.ind1269, %broadcast.splat1272
  %628 = trunc <4 x i64> %627 to <4 x i32>
  %629 = mul <4 x i32> %broadcast.splat1274, %628
  %630 = add <4 x i32> %629, <i32 2, i32 2, i32 2, i32 2>
  %631 = urem <4 x i32> %630, <i32 1000, i32 1000, i32 1000, i32 1000>
  %632 = sitofp <4 x i32> %631 to <4 x double>
  %633 = fmul fast <4 x double> %632, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %634 = extractelement <4 x i64> %627, i32 0
  %635 = shl i64 %634, 3
  %636 = add nuw nsw i64 %635, %626
  %637 = getelementptr i8, i8* %call2, i64 %636
  %638 = bitcast i8* %637 to <4 x double>*
  store <4 x double> %633, <4 x double>* %638, align 8, !alias.scope !134, !noalias !137
  %index.next1266 = add i64 %index1265, 4
  %vec.ind.next1270 = add <4 x i64> %vec.ind1269, <i64 4, i64 4, i64 4, i64 4>
  %639 = icmp eq i64 %index.next1266, %621
  br i1 %639, label %polly.loop_exit911, label %vector.body1259, !llvm.loop !138

polly.loop_exit911:                               ; preds = %vector.body1259, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar906, %619
  br i1 %exitcond1186.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %640 = add nuw nsw i64 %polly.indvar912, %622
  %641 = trunc i64 %640 to i32
  %642 = mul i32 %641, %625
  %643 = add i32 %642, 2
  %644 = urem i32 %643, 1000
  %p_conv10.i = sitofp i32 %644 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %645 = shl i64 %640, 3
  %646 = add nuw nsw i64 %645, %626
  %scevgep915 = getelementptr i8, i8* %call2, i64 %646
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div12.i, double* %scevgep915916, align 8, !alias.scope !134, !noalias !137
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1182.not = icmp eq i64 %polly.indvar912, %623
  br i1 %exitcond1182.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !139

polly.loop_header917:                             ; preds = %polly.loop_exit899, %polly.loop_exit925
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %smin1175 = call i64 @llvm.smin.i64(i64 %indvars.iv1173, i64 -1168)
  %647 = shl nsw i64 %polly.indvar920, 5
  %648 = add nsw i64 %smin1175, 1199
  br label %polly.loop_header923

polly.loop_exit925:                               ; preds = %polly.loop_exit931
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %indvars.iv.next1174 = add nsw i64 %indvars.iv1173, -32
  %exitcond1178.not = icmp eq i64 %polly.indvar_next921, 38
  br i1 %exitcond1178.not, label %init_array.exit, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_exit931, %polly.loop_header917
  %indvars.iv1169 = phi i64 [ %indvars.iv.next1170, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %649 = mul nsw i64 %polly.indvar926, -32
  %smin1278 = call i64 @llvm.smin.i64(i64 %649, i64 -968)
  %650 = add nsw i64 %smin1278, 1000
  %smin1171 = call i64 @llvm.smin.i64(i64 %indvars.iv1169, i64 -968)
  %651 = shl nsw i64 %polly.indvar926, 5
  %652 = add nsw i64 %smin1171, 999
  br label %polly.loop_header929

polly.loop_exit931:                               ; preds = %polly.loop_exit937
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %indvars.iv.next1170 = add nsw i64 %indvars.iv1169, -32
  %exitcond1177.not = icmp eq i64 %polly.indvar_next927, 32
  br i1 %exitcond1177.not, label %polly.loop_exit925, label %polly.loop_header923

polly.loop_header929:                             ; preds = %polly.loop_exit937, %polly.loop_header923
  %polly.indvar932 = phi i64 [ 0, %polly.loop_header923 ], [ %polly.indvar_next933, %polly.loop_exit937 ]
  %653 = add nuw nsw i64 %polly.indvar932, %647
  %654 = trunc i64 %653 to i32
  %655 = mul nuw nsw i64 %653, 8000
  %min.iters.check1279 = icmp eq i64 %650, 0
  br i1 %min.iters.check1279, label %polly.loop_header935, label %vector.ph1280

vector.ph1280:                                    ; preds = %polly.loop_header929
  %broadcast.splatinsert1289 = insertelement <4 x i64> poison, i64 %651, i32 0
  %broadcast.splat1290 = shufflevector <4 x i64> %broadcast.splatinsert1289, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1291 = insertelement <4 x i32> poison, i32 %654, i32 0
  %broadcast.splat1292 = shufflevector <4 x i32> %broadcast.splatinsert1291, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1277 ]
  %vec.ind1287 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1280 ], [ %vec.ind.next1288, %vector.body1277 ]
  %656 = add nuw nsw <4 x i64> %vec.ind1287, %broadcast.splat1290
  %657 = trunc <4 x i64> %656 to <4 x i32>
  %658 = mul <4 x i32> %broadcast.splat1292, %657
  %659 = add <4 x i32> %658, <i32 1, i32 1, i32 1, i32 1>
  %660 = urem <4 x i32> %659, <i32 1200, i32 1200, i32 1200, i32 1200>
  %661 = sitofp <4 x i32> %660 to <4 x double>
  %662 = fmul fast <4 x double> %661, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %663 = extractelement <4 x i64> %656, i32 0
  %664 = shl i64 %663, 3
  %665 = add nuw nsw i64 %664, %655
  %666 = getelementptr i8, i8* %call1, i64 %665
  %667 = bitcast i8* %666 to <4 x double>*
  store <4 x double> %662, <4 x double>* %667, align 8, !alias.scope !133, !noalias !140
  %index.next1284 = add i64 %index1283, 4
  %vec.ind.next1288 = add <4 x i64> %vec.ind1287, <i64 4, i64 4, i64 4, i64 4>
  %668 = icmp eq i64 %index.next1284, %650
  br i1 %668, label %polly.loop_exit937, label %vector.body1277, !llvm.loop !141

polly.loop_exit937:                               ; preds = %vector.body1277, %polly.loop_header935
  %polly.indvar_next933 = add nuw nsw i64 %polly.indvar932, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar932, %648
  br i1 %exitcond1176.not, label %polly.loop_exit931, label %polly.loop_header929

polly.loop_header935:                             ; preds = %polly.loop_header929, %polly.loop_header935
  %polly.indvar938 = phi i64 [ %polly.indvar_next939, %polly.loop_header935 ], [ 0, %polly.loop_header929 ]
  %669 = add nuw nsw i64 %polly.indvar938, %651
  %670 = trunc i64 %669 to i32
  %671 = mul i32 %670, %654
  %672 = add i32 %671, 1
  %673 = urem i32 %672, 1200
  %p_conv.i = sitofp i32 %673 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %674 = shl i64 %669, 3
  %675 = add nuw nsw i64 %674, %655
  %scevgep942 = getelementptr i8, i8* %call1, i64 %675
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div.i, double* %scevgep942943, align 8, !alias.scope !133, !noalias !140
  %polly.indvar_next939 = add nuw nsw i64 %polly.indvar938, 1
  %exitcond1172.not = icmp eq i64 %polly.indvar938, %652
  br i1 %exitcond1172.not, label %polly.loop_exit937, label %polly.loop_header935, !llvm.loop !142

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %676 = add nuw nsw i64 %polly.indvar221.1, %154
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %676, 1000
  %polly.access.add.call2226.1 = add nuw nsw i64 %98, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, 1200
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header218.2, label %polly.loop_header218.1

polly.loop_header218.2:                           ; preds = %polly.loop_header218.1, %polly.loop_header218.2
  %polly.indvar221.2 = phi i64 [ %polly.indvar_next222.2, %polly.loop_header218.2 ], [ 0, %polly.loop_header218.1 ]
  %677 = add nuw nsw i64 %polly.indvar221.2, %154
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %677, 1000
  %polly.access.add.call2226.2 = add nuw nsw i64 %99, %polly.access.mul.call2225.2
  %polly.access.call2227.2 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.2
  %polly.access.call2227.load.2 = load double, double* %polly.access.call2227.2, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar221.2, 2400
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2227.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next222.2 = add nuw nsw i64 %polly.indvar221.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next222.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header218.3, label %polly.loop_header218.2

polly.loop_header218.3:                           ; preds = %polly.loop_header218.2, %polly.loop_header218.3
  %polly.indvar221.3 = phi i64 [ %polly.indvar_next222.3, %polly.loop_header218.3 ], [ 0, %polly.loop_header218.2 ]
  %678 = add nuw nsw i64 %polly.indvar221.3, %154
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %678, 1000
  %polly.access.add.call2226.3 = add nuw nsw i64 %100, %polly.access.mul.call2225.3
  %polly.access.call2227.3 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.3
  %polly.access.call2227.load.3 = load double, double* %polly.access.call2227.3, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar221.3, 3600
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2227.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next222.3 = add nuw nsw i64 %polly.indvar221.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next222.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit220.3, label %polly.loop_header218.3

polly.loop_exit220.3:                             ; preds = %polly.loop_header218.3
  %679 = add nsw i64 %153, 1199
  br label %polly.loop_header228

polly.loop_header250.1:                           ; preds = %polly.loop_header250, %polly.loop_header250.1
  %polly.indvar253.1 = phi i64 [ %polly.indvar_next254.1, %polly.loop_header250.1 ], [ %212, %polly.loop_header250 ]
  %680 = add nuw nsw i64 %polly.indvar253.1, %154
  %polly.access.mul.call1257.1 = mul nsw i64 %680, 1000
  %polly.access.add.call1258.1 = add nuw nsw i64 %98, %polly.access.mul.call1257.1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.1 = add nuw nsw i64 %polly.indvar253.1, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %polly.loop_cond255.not.not.1 = icmp slt i64 %polly.indvar253.1, %215
  br i1 %polly.loop_cond255.not.not.1, label %polly.loop_header250.1, label %polly.loop_header250.2

polly.loop_header250.2:                           ; preds = %polly.loop_header250.1, %polly.loop_header250.2
  %polly.indvar253.2 = phi i64 [ %polly.indvar_next254.2, %polly.loop_header250.2 ], [ %212, %polly.loop_header250.1 ]
  %681 = add nuw nsw i64 %polly.indvar253.2, %154
  %polly.access.mul.call1257.2 = mul nsw i64 %681, 1000
  %polly.access.add.call1258.2 = add nuw nsw i64 %99, %polly.access.mul.call1257.2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.2 = add nuw nsw i64 %polly.indvar253.2, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.indvar_next254.2 = add nuw nsw i64 %polly.indvar253.2, 1
  %polly.loop_cond255.not.not.2 = icmp slt i64 %polly.indvar253.2, %215
  br i1 %polly.loop_cond255.not.not.2, label %polly.loop_header250.2, label %polly.loop_header250.3

polly.loop_header250.3:                           ; preds = %polly.loop_header250.2, %polly.loop_header250.3
  %polly.indvar253.3 = phi i64 [ %polly.indvar_next254.3, %polly.loop_header250.3 ], [ %212, %polly.loop_header250.2 ]
  %682 = add nuw nsw i64 %polly.indvar253.3, %154
  %polly.access.mul.call1257.3 = mul nsw i64 %682, 1000
  %polly.access.add.call1258.3 = add nuw nsw i64 %100, %polly.access.mul.call1257.3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.3 = add nuw nsw i64 %polly.indvar253.3, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %polly.indvar_next254.3 = add nuw nsw i64 %polly.indvar253.3, 1
  %polly.loop_cond255.not.not.3 = icmp slt i64 %polly.indvar253.3, %215
  br i1 %polly.loop_cond255.not.not.3, label %polly.loop_header250.3, label %polly.loop_header263.preheader

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1.preheader, %polly.loop_header240.us.1
  %polly.indvar243.us.1 = phi i64 [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ], [ 0, %polly.loop_header240.us.1.preheader ]
  %683 = add nuw nsw i64 %polly.indvar243.us.1, %154
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %683, 1000
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1
  %exitcond1098.1.not = icmp eq i64 %polly.indvar_next244.us.1, 64
  br i1 %exitcond1098.1.not, label %polly.merge.loopexit.us.1, label %polly.loop_header240.us.1

polly.merge.loopexit.us.1:                        ; preds = %polly.loop_header240.us.1
  br i1 %polly.loop_guard.not, label %polly.loop_header240.us.2.preheader, label %polly.loop_header250.us.1

polly.loop_header250.us.1:                        ; preds = %polly.merge.loopexit.us.1, %polly.loop_header250.us.1
  %polly.indvar253.us.1 = phi i64 [ %polly.indvar_next254.us.1, %polly.loop_header250.us.1 ], [ %212, %polly.merge.loopexit.us.1 ]
  %684 = add nuw nsw i64 %polly.indvar253.us.1, %154
  %polly.access.mul.call1257.us.1 = mul nsw i64 %684, 1000
  %polly.access.add.call1258.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1257.us.1
  %polly.access.call1259.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us.1
  %polly.access.call1259.load.us.1 = load double, double* %polly.access.call1259.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1200
  %polly.access.Packed_MemRef_call1262.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.1
  store double %polly.access.call1259.load.us.1, double* %polly.access.Packed_MemRef_call1262.us.1, align 8
  %polly.indvar_next254.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1
  %polly.loop_cond255.not.not.us.1 = icmp slt i64 %polly.indvar253.us.1, %215
  br i1 %polly.loop_cond255.not.not.us.1, label %polly.loop_header250.us.1, label %polly.loop_header240.us.2.preheader

polly.loop_header240.us.2.preheader:              ; preds = %polly.loop_header250.us.1, %polly.merge.loopexit.us.1
  br label %polly.loop_header240.us.2

polly.loop_header240.us.2:                        ; preds = %polly.loop_header240.us.2.preheader, %polly.loop_header240.us.2
  %polly.indvar243.us.2 = phi i64 [ %polly.indvar_next244.us.2, %polly.loop_header240.us.2 ], [ 0, %polly.loop_header240.us.2.preheader ]
  %685 = add nuw nsw i64 %polly.indvar243.us.2, %154
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %685, 1000
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar243.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next244.us.2 = add nuw nsw i64 %polly.indvar243.us.2, 1
  %exitcond1098.2.not = icmp eq i64 %polly.indvar_next244.us.2, 64
  br i1 %exitcond1098.2.not, label %polly.merge.loopexit.us.2, label %polly.loop_header240.us.2

polly.merge.loopexit.us.2:                        ; preds = %polly.loop_header240.us.2
  br i1 %polly.loop_guard.not, label %polly.loop_header240.us.3.preheader, label %polly.loop_header250.us.2

polly.loop_header250.us.2:                        ; preds = %polly.merge.loopexit.us.2, %polly.loop_header250.us.2
  %polly.indvar253.us.2 = phi i64 [ %polly.indvar_next254.us.2, %polly.loop_header250.us.2 ], [ %212, %polly.merge.loopexit.us.2 ]
  %686 = add nuw nsw i64 %polly.indvar253.us.2, %154
  %polly.access.mul.call1257.us.2 = mul nsw i64 %686, 1000
  %polly.access.add.call1258.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1257.us.2
  %polly.access.call1259.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us.2
  %polly.access.call1259.load.us.2 = load double, double* %polly.access.call1259.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 2400
  %polly.access.Packed_MemRef_call1262.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.2
  store double %polly.access.call1259.load.us.2, double* %polly.access.Packed_MemRef_call1262.us.2, align 8
  %polly.indvar_next254.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 1
  %polly.loop_cond255.not.not.us.2 = icmp slt i64 %polly.indvar253.us.2, %215
  br i1 %polly.loop_cond255.not.not.us.2, label %polly.loop_header250.us.2, label %polly.loop_header240.us.3.preheader

polly.loop_header240.us.3.preheader:              ; preds = %polly.loop_header250.us.2, %polly.merge.loopexit.us.2
  br label %polly.loop_header240.us.3

polly.loop_header240.us.3:                        ; preds = %polly.loop_header240.us.3.preheader, %polly.loop_header240.us.3
  %polly.indvar243.us.3 = phi i64 [ %polly.indvar_next244.us.3, %polly.loop_header240.us.3 ], [ 0, %polly.loop_header240.us.3.preheader ]
  %687 = add nuw nsw i64 %polly.indvar243.us.3, %154
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %687, 1000
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar243.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next244.us.3 = add nuw nsw i64 %polly.indvar243.us.3, 1
  %exitcond1098.3.not = icmp eq i64 %polly.indvar_next244.us.3, 64
  br i1 %exitcond1098.3.not, label %polly.merge.loopexit.us.3, label %polly.loop_header240.us.3

polly.merge.loopexit.us.3:                        ; preds = %polly.loop_header240.us.3
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header250.us.3

polly.loop_header250.us.3:                        ; preds = %polly.merge.loopexit.us.3, %polly.loop_header250.us.3
  %polly.indvar253.us.3 = phi i64 [ %polly.indvar_next254.us.3, %polly.loop_header250.us.3 ], [ %212, %polly.merge.loopexit.us.3 ]
  %688 = add nuw nsw i64 %polly.indvar253.us.3, %154
  %polly.access.mul.call1257.us.3 = mul nsw i64 %688, 1000
  %polly.access.add.call1258.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1257.us.3
  %polly.access.call1259.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us.3
  %polly.access.call1259.load.us.3 = load double, double* %polly.access.call1259.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 3600
  %polly.access.Packed_MemRef_call1262.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.3
  store double %polly.access.call1259.load.us.3, double* %polly.access.Packed_MemRef_call1262.us.3, align 8
  %polly.indvar_next254.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 1
  %polly.loop_cond255.not.not.us.3 = icmp slt i64 %polly.indvar253.us.3, %215
  br i1 %polly.loop_cond255.not.not.us.3, label %polly.loop_header250.us.3, label %polly.loop_header263.preheader

polly.loop_header270.1:                           ; preds = %polly.loop_exit280, %polly.loop_exit280.1
  %indvar1685 = phi i64 [ %indvar.next1686, %polly.loop_exit280.1 ], [ 0, %polly.loop_exit280 ]
  %indvars.iv1108.1 = phi i64 [ %indvars.iv.next1109.1, %polly.loop_exit280.1 ], [ %207, %polly.loop_exit280 ]
  %polly.indvar274.1 = phi i64 [ %polly.indvar_next275.1, %polly.loop_exit280.1 ], [ %220, %polly.loop_exit280 ]
  %689 = add i64 %176, %indvar1685
  %smin1702 = call i64 @llvm.smin.i64(i64 %689, i64 63)
  %690 = add nsw i64 %smin1702, 1
  %691 = mul nuw nsw i64 %indvar1685, 9600
  %692 = add i64 %183, %691
  %scevgep1687 = getelementptr i8, i8* %call, i64 %692
  %693 = add i64 %184, %691
  %scevgep1688 = getelementptr i8, i8* %call, i64 %693
  %694 = add i64 %186, %indvar1685
  %smin1689 = call i64 @llvm.smin.i64(i64 %694, i64 63)
  %695 = shl nsw i64 %smin1689, 3
  %scevgep1690 = getelementptr i8, i8* %scevgep1688, i64 %695
  %scevgep1693 = getelementptr i8, i8* %scevgep1692, i64 %695
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1108.1, i64 63)
  %696 = add nsw i64 %polly.indvar274.1, %210
  %polly.loop_guard281.11207 = icmp sgt i64 %696, -1
  br i1 %polly.loop_guard281.11207, label %polly.loop_header278.preheader.1, label %polly.loop_exit280.1

polly.loop_header278.preheader.1:                 ; preds = %polly.loop_header270.1
  %697 = add nuw nsw i64 %polly.indvar274.1, %209
  %polly.access.add.Packed_MemRef_call2290.1 = add nuw nsw i64 %696, 1200
  %polly.access.Packed_MemRef_call2291.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.1
  %_p_scalar_292.1 = load double, double* %polly.access.Packed_MemRef_call2291.1, align 8
  %polly.access.Packed_MemRef_call1299.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.1
  %_p_scalar_300.1 = load double, double* %polly.access.Packed_MemRef_call1299.1, align 8
  %698 = mul i64 %697, 9600
  %min.iters.check1703 = icmp ult i64 %690, 4
  br i1 %min.iters.check1703, label %polly.loop_header278.1.preheader, label %vector.memcheck1683

vector.memcheck1683:                              ; preds = %polly.loop_header278.preheader.1
  %bound01694 = icmp ult i8* %scevgep1687, %scevgep1693
  %bound11695 = icmp ult i8* %scevgep1691, %scevgep1690
  %found.conflict1696 = and i1 %bound01694, %bound11695
  br i1 %found.conflict1696, label %polly.loop_header278.1.preheader, label %vector.ph1704

vector.ph1704:                                    ; preds = %vector.memcheck1683
  %n.vec1706 = and i64 %690, -4
  %broadcast.splatinsert1712 = insertelement <4 x double> poison, double %_p_scalar_292.1, i32 0
  %broadcast.splat1713 = shufflevector <4 x double> %broadcast.splatinsert1712, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1715 = insertelement <4 x double> poison, double %_p_scalar_300.1, i32 0
  %broadcast.splat1716 = shufflevector <4 x double> %broadcast.splatinsert1715, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1700

vector.body1700:                                  ; preds = %vector.body1700, %vector.ph1704
  %index1707 = phi i64 [ 0, %vector.ph1704 ], [ %index.next1708, %vector.body1700 ]
  %699 = add nuw nsw i64 %index1707, %154
  %700 = add nuw nsw i64 %index1707, 1200
  %701 = getelementptr double, double* %Packed_MemRef_call1, i64 %700
  %702 = bitcast double* %701 to <4 x double>*
  %wide.load1711 = load <4 x double>, <4 x double>* %702, align 8, !alias.scope !143
  %703 = fmul fast <4 x double> %broadcast.splat1713, %wide.load1711
  %704 = getelementptr double, double* %Packed_MemRef_call2, i64 %700
  %705 = bitcast double* %704 to <4 x double>*
  %wide.load1714 = load <4 x double>, <4 x double>* %705, align 8
  %706 = fmul fast <4 x double> %broadcast.splat1716, %wide.load1714
  %707 = shl i64 %699, 3
  %708 = add i64 %707, %698
  %709 = getelementptr i8, i8* %call, i64 %708
  %710 = bitcast i8* %709 to <4 x double>*
  %wide.load1717 = load <4 x double>, <4 x double>* %710, align 8, !alias.scope !146, !noalias !148
  %711 = fadd fast <4 x double> %706, %703
  %712 = fmul fast <4 x double> %711, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %713 = fadd fast <4 x double> %712, %wide.load1717
  %714 = bitcast i8* %709 to <4 x double>*
  store <4 x double> %713, <4 x double>* %714, align 8, !alias.scope !146, !noalias !148
  %index.next1708 = add i64 %index1707, 4
  %715 = icmp eq i64 %index.next1708, %n.vec1706
  br i1 %715, label %middle.block1698, label %vector.body1700, !llvm.loop !149

middle.block1698:                                 ; preds = %vector.body1700
  %cmp.n1710 = icmp eq i64 %690, %n.vec1706
  br i1 %cmp.n1710, label %polly.loop_exit280.1, label %polly.loop_header278.1.preheader

polly.loop_header278.1.preheader:                 ; preds = %vector.memcheck1683, %polly.loop_header278.preheader.1, %middle.block1698
  %polly.indvar282.1.ph = phi i64 [ 0, %vector.memcheck1683 ], [ 0, %polly.loop_header278.preheader.1 ], [ %n.vec1706, %middle.block1698 ]
  br label %polly.loop_header278.1

polly.loop_header278.1:                           ; preds = %polly.loop_header278.1.preheader, %polly.loop_header278.1
  %polly.indvar282.1 = phi i64 [ %polly.indvar_next283.1, %polly.loop_header278.1 ], [ %polly.indvar282.1.ph, %polly.loop_header278.1.preheader ]
  %716 = add nuw nsw i64 %polly.indvar282.1, %154
  %polly.access.add.Packed_MemRef_call1286.1 = add nuw nsw i64 %polly.indvar282.1, 1200
  %polly.access.Packed_MemRef_call1287.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.1
  %_p_scalar_288.1 = load double, double* %polly.access.Packed_MemRef_call1287.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_292.1, %_p_scalar_288.1
  %polly.access.Packed_MemRef_call2295.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.1
  %_p_scalar_296.1 = load double, double* %polly.access.Packed_MemRef_call2295.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_300.1, %_p_scalar_296.1
  %717 = shl i64 %716, 3
  %718 = add i64 %717, %698
  %scevgep301.1 = getelementptr i8, i8* %call, i64 %718
  %scevgep301302.1 = bitcast i8* %scevgep301.1 to double*
  %_p_scalar_303.1 = load double, double* %scevgep301302.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_303.1
  store double %p_add42.i118.1, double* %scevgep301302.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283.1 = add nuw nsw i64 %polly.indvar282.1, 1
  %exitcond1110.1.not = icmp eq i64 %polly.indvar282.1, %smin.1
  br i1 %exitcond1110.1.not, label %polly.loop_exit280.1, label %polly.loop_header278.1, !llvm.loop !150

polly.loop_exit280.1:                             ; preds = %polly.loop_header278.1, %middle.block1698, %polly.loop_header270.1
  %polly.indvar_next275.1 = add nuw nsw i64 %polly.indvar274.1, 1
  %polly.loop_cond276.not.not.1 = icmp slt i64 %polly.indvar274.1, %224
  %indvars.iv.next1109.1 = add i64 %indvars.iv1108.1, 1
  %indvar.next1686 = add i64 %indvar1685, 1
  br i1 %polly.loop_cond276.not.not.1, label %polly.loop_header270.1, label %polly.loop_header270.2

polly.loop_header270.2:                           ; preds = %polly.loop_exit280.1, %polly.loop_exit280.2
  %indvar1650 = phi i64 [ %indvar.next1651, %polly.loop_exit280.2 ], [ 0, %polly.loop_exit280.1 ]
  %indvars.iv1108.2 = phi i64 [ %indvars.iv.next1109.2, %polly.loop_exit280.2 ], [ %207, %polly.loop_exit280.1 ]
  %polly.indvar274.2 = phi i64 [ %polly.indvar_next275.2, %polly.loop_exit280.2 ], [ %220, %polly.loop_exit280.1 ]
  %719 = add i64 %191, %indvar1650
  %smin1667 = call i64 @llvm.smin.i64(i64 %719, i64 63)
  %720 = add nsw i64 %smin1667, 1
  %721 = mul nuw nsw i64 %indvar1650, 9600
  %722 = add i64 %198, %721
  %scevgep1652 = getelementptr i8, i8* %call, i64 %722
  %723 = add i64 %199, %721
  %scevgep1653 = getelementptr i8, i8* %call, i64 %723
  %724 = add i64 %201, %indvar1650
  %smin1654 = call i64 @llvm.smin.i64(i64 %724, i64 63)
  %725 = shl nsw i64 %smin1654, 3
  %scevgep1655 = getelementptr i8, i8* %scevgep1653, i64 %725
  %scevgep1658 = getelementptr i8, i8* %scevgep1657, i64 %725
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1108.2, i64 63)
  %726 = add nsw i64 %polly.indvar274.2, %210
  %polly.loop_guard281.21208 = icmp sgt i64 %726, -1
  br i1 %polly.loop_guard281.21208, label %polly.loop_header278.preheader.2, label %polly.loop_exit280.2

polly.loop_header278.preheader.2:                 ; preds = %polly.loop_header270.2
  %727 = add nuw nsw i64 %polly.indvar274.2, %209
  %polly.access.add.Packed_MemRef_call2290.2 = add nuw nsw i64 %726, 2400
  %polly.access.Packed_MemRef_call2291.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.2
  %_p_scalar_292.2 = load double, double* %polly.access.Packed_MemRef_call2291.2, align 8
  %polly.access.Packed_MemRef_call1299.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.2
  %_p_scalar_300.2 = load double, double* %polly.access.Packed_MemRef_call1299.2, align 8
  %728 = mul i64 %727, 9600
  %min.iters.check1668 = icmp ult i64 %720, 4
  br i1 %min.iters.check1668, label %polly.loop_header278.2.preheader, label %vector.memcheck1648

vector.memcheck1648:                              ; preds = %polly.loop_header278.preheader.2
  %bound01659 = icmp ult i8* %scevgep1652, %scevgep1658
  %bound11660 = icmp ult i8* %scevgep1656, %scevgep1655
  %found.conflict1661 = and i1 %bound01659, %bound11660
  br i1 %found.conflict1661, label %polly.loop_header278.2.preheader, label %vector.ph1669

vector.ph1669:                                    ; preds = %vector.memcheck1648
  %n.vec1671 = and i64 %720, -4
  %broadcast.splatinsert1677 = insertelement <4 x double> poison, double %_p_scalar_292.2, i32 0
  %broadcast.splat1678 = shufflevector <4 x double> %broadcast.splatinsert1677, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1680 = insertelement <4 x double> poison, double %_p_scalar_300.2, i32 0
  %broadcast.splat1681 = shufflevector <4 x double> %broadcast.splatinsert1680, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1665

vector.body1665:                                  ; preds = %vector.body1665, %vector.ph1669
  %index1672 = phi i64 [ 0, %vector.ph1669 ], [ %index.next1673, %vector.body1665 ]
  %729 = add nuw nsw i64 %index1672, %154
  %730 = add nuw nsw i64 %index1672, 2400
  %731 = getelementptr double, double* %Packed_MemRef_call1, i64 %730
  %732 = bitcast double* %731 to <4 x double>*
  %wide.load1676 = load <4 x double>, <4 x double>* %732, align 8, !alias.scope !151
  %733 = fmul fast <4 x double> %broadcast.splat1678, %wide.load1676
  %734 = getelementptr double, double* %Packed_MemRef_call2, i64 %730
  %735 = bitcast double* %734 to <4 x double>*
  %wide.load1679 = load <4 x double>, <4 x double>* %735, align 8
  %736 = fmul fast <4 x double> %broadcast.splat1681, %wide.load1679
  %737 = shl i64 %729, 3
  %738 = add i64 %737, %728
  %739 = getelementptr i8, i8* %call, i64 %738
  %740 = bitcast i8* %739 to <4 x double>*
  %wide.load1682 = load <4 x double>, <4 x double>* %740, align 8, !alias.scope !154, !noalias !156
  %741 = fadd fast <4 x double> %736, %733
  %742 = fmul fast <4 x double> %741, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %743 = fadd fast <4 x double> %742, %wide.load1682
  %744 = bitcast i8* %739 to <4 x double>*
  store <4 x double> %743, <4 x double>* %744, align 8, !alias.scope !154, !noalias !156
  %index.next1673 = add i64 %index1672, 4
  %745 = icmp eq i64 %index.next1673, %n.vec1671
  br i1 %745, label %middle.block1663, label %vector.body1665, !llvm.loop !157

middle.block1663:                                 ; preds = %vector.body1665
  %cmp.n1675 = icmp eq i64 %720, %n.vec1671
  br i1 %cmp.n1675, label %polly.loop_exit280.2, label %polly.loop_header278.2.preheader

polly.loop_header278.2.preheader:                 ; preds = %vector.memcheck1648, %polly.loop_header278.preheader.2, %middle.block1663
  %polly.indvar282.2.ph = phi i64 [ 0, %vector.memcheck1648 ], [ 0, %polly.loop_header278.preheader.2 ], [ %n.vec1671, %middle.block1663 ]
  br label %polly.loop_header278.2

polly.loop_header278.2:                           ; preds = %polly.loop_header278.2.preheader, %polly.loop_header278.2
  %polly.indvar282.2 = phi i64 [ %polly.indvar_next283.2, %polly.loop_header278.2 ], [ %polly.indvar282.2.ph, %polly.loop_header278.2.preheader ]
  %746 = add nuw nsw i64 %polly.indvar282.2, %154
  %polly.access.add.Packed_MemRef_call1286.2 = add nuw nsw i64 %polly.indvar282.2, 2400
  %polly.access.Packed_MemRef_call1287.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.2
  %_p_scalar_288.2 = load double, double* %polly.access.Packed_MemRef_call1287.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_292.2, %_p_scalar_288.2
  %polly.access.Packed_MemRef_call2295.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.2
  %_p_scalar_296.2 = load double, double* %polly.access.Packed_MemRef_call2295.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_300.2, %_p_scalar_296.2
  %747 = shl i64 %746, 3
  %748 = add i64 %747, %728
  %scevgep301.2 = getelementptr i8, i8* %call, i64 %748
  %scevgep301302.2 = bitcast i8* %scevgep301.2 to double*
  %_p_scalar_303.2 = load double, double* %scevgep301302.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_303.2
  store double %p_add42.i118.2, double* %scevgep301302.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283.2 = add nuw nsw i64 %polly.indvar282.2, 1
  %exitcond1110.2.not = icmp eq i64 %polly.indvar282.2, %smin.2
  br i1 %exitcond1110.2.not, label %polly.loop_exit280.2, label %polly.loop_header278.2, !llvm.loop !158

polly.loop_exit280.2:                             ; preds = %polly.loop_header278.2, %middle.block1663, %polly.loop_header270.2
  %polly.indvar_next275.2 = add nuw nsw i64 %polly.indvar274.2, 1
  %polly.loop_cond276.not.not.2 = icmp slt i64 %polly.indvar274.2, %224
  %indvars.iv.next1109.2 = add i64 %indvars.iv1108.2, 1
  %indvar.next1651 = add i64 %indvar1650, 1
  br i1 %polly.loop_cond276.not.not.2, label %polly.loop_header270.2, label %polly.loop_header270.3

polly.loop_header270.3:                           ; preds = %polly.loop_exit280.2, %polly.loop_exit280.3
  %indvar1630 = phi i64 [ %indvar.next1631, %polly.loop_exit280.3 ], [ 0, %polly.loop_exit280.2 ]
  %indvars.iv1108.3 = phi i64 [ %indvars.iv.next1109.3, %polly.loop_exit280.3 ], [ %207, %polly.loop_exit280.2 ]
  %polly.indvar274.3 = phi i64 [ %polly.indvar_next275.3, %polly.loop_exit280.3 ], [ %220, %polly.loop_exit280.2 ]
  %749 = add i64 %206, %indvar1630
  %smin1632 = call i64 @llvm.smin.i64(i64 %749, i64 63)
  %750 = add nsw i64 %smin1632, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1108.3, i64 63)
  %751 = add nsw i64 %polly.indvar274.3, %210
  %polly.loop_guard281.31209 = icmp sgt i64 %751, -1
  br i1 %polly.loop_guard281.31209, label %polly.loop_header278.preheader.3, label %polly.loop_exit280.3

polly.loop_header278.preheader.3:                 ; preds = %polly.loop_header270.3
  %752 = add nuw nsw i64 %polly.indvar274.3, %209
  %polly.access.add.Packed_MemRef_call2290.3 = add nuw nsw i64 %751, 3600
  %polly.access.Packed_MemRef_call2291.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.3
  %_p_scalar_292.3 = load double, double* %polly.access.Packed_MemRef_call2291.3, align 8
  %polly.access.Packed_MemRef_call1299.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.3
  %_p_scalar_300.3 = load double, double* %polly.access.Packed_MemRef_call1299.3, align 8
  %753 = mul i64 %752, 9600
  %min.iters.check1633 = icmp ult i64 %750, 4
  br i1 %min.iters.check1633, label %polly.loop_header278.3.preheader, label %vector.ph1634

vector.ph1634:                                    ; preds = %polly.loop_header278.preheader.3
  %n.vec1636 = and i64 %750, -4
  %broadcast.splatinsert1642 = insertelement <4 x double> poison, double %_p_scalar_292.3, i32 0
  %broadcast.splat1643 = shufflevector <4 x double> %broadcast.splatinsert1642, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1645 = insertelement <4 x double> poison, double %_p_scalar_300.3, i32 0
  %broadcast.splat1646 = shufflevector <4 x double> %broadcast.splatinsert1645, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1626

vector.body1626:                                  ; preds = %vector.body1626, %vector.ph1634
  %index1637 = phi i64 [ 0, %vector.ph1634 ], [ %index.next1638, %vector.body1626 ]
  %754 = add nuw nsw i64 %index1637, %154
  %755 = add nuw nsw i64 %index1637, 3600
  %756 = getelementptr double, double* %Packed_MemRef_call1, i64 %755
  %757 = bitcast double* %756 to <4 x double>*
  %wide.load1641 = load <4 x double>, <4 x double>* %757, align 8
  %758 = fmul fast <4 x double> %broadcast.splat1643, %wide.load1641
  %759 = getelementptr double, double* %Packed_MemRef_call2, i64 %755
  %760 = bitcast double* %759 to <4 x double>*
  %wide.load1644 = load <4 x double>, <4 x double>* %760, align 8
  %761 = fmul fast <4 x double> %broadcast.splat1646, %wide.load1644
  %762 = shl i64 %754, 3
  %763 = add i64 %762, %753
  %764 = getelementptr i8, i8* %call, i64 %763
  %765 = bitcast i8* %764 to <4 x double>*
  %wide.load1647 = load <4 x double>, <4 x double>* %765, align 8, !alias.scope !72, !noalias !74
  %766 = fadd fast <4 x double> %761, %758
  %767 = fmul fast <4 x double> %766, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %768 = fadd fast <4 x double> %767, %wide.load1647
  %769 = bitcast i8* %764 to <4 x double>*
  store <4 x double> %768, <4 x double>* %769, align 8, !alias.scope !72, !noalias !74
  %index.next1638 = add i64 %index1637, 4
  %770 = icmp eq i64 %index.next1638, %n.vec1636
  br i1 %770, label %middle.block1624, label %vector.body1626, !llvm.loop !159

middle.block1624:                                 ; preds = %vector.body1626
  %cmp.n1640 = icmp eq i64 %750, %n.vec1636
  br i1 %cmp.n1640, label %polly.loop_exit280.3, label %polly.loop_header278.3.preheader

polly.loop_header278.3.preheader:                 ; preds = %polly.loop_header278.preheader.3, %middle.block1624
  %polly.indvar282.3.ph = phi i64 [ 0, %polly.loop_header278.preheader.3 ], [ %n.vec1636, %middle.block1624 ]
  br label %polly.loop_header278.3

polly.loop_header278.3:                           ; preds = %polly.loop_header278.3.preheader, %polly.loop_header278.3
  %polly.indvar282.3 = phi i64 [ %polly.indvar_next283.3, %polly.loop_header278.3 ], [ %polly.indvar282.3.ph, %polly.loop_header278.3.preheader ]
  %771 = add nuw nsw i64 %polly.indvar282.3, %154
  %polly.access.add.Packed_MemRef_call1286.3 = add nuw nsw i64 %polly.indvar282.3, 3600
  %polly.access.Packed_MemRef_call1287.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.3
  %_p_scalar_288.3 = load double, double* %polly.access.Packed_MemRef_call1287.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_292.3, %_p_scalar_288.3
  %polly.access.Packed_MemRef_call2295.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.3
  %_p_scalar_296.3 = load double, double* %polly.access.Packed_MemRef_call2295.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_300.3, %_p_scalar_296.3
  %772 = shl i64 %771, 3
  %773 = add i64 %772, %753
  %scevgep301.3 = getelementptr i8, i8* %call, i64 %773
  %scevgep301302.3 = bitcast i8* %scevgep301.3 to double*
  %_p_scalar_303.3 = load double, double* %scevgep301302.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_303.3
  store double %p_add42.i118.3, double* %scevgep301302.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283.3 = add nuw nsw i64 %polly.indvar282.3, 1
  %exitcond1110.3.not = icmp eq i64 %polly.indvar282.3, %smin.3
  br i1 %exitcond1110.3.not, label %polly.loop_exit280.3, label %polly.loop_header278.3, !llvm.loop !160

polly.loop_exit280.3:                             ; preds = %polly.loop_header278.3, %middle.block1624, %polly.loop_header270.3
  %polly.indvar_next275.3 = add nuw nsw i64 %polly.indvar274.3, 1
  %polly.loop_cond276.not.not.3 = icmp slt i64 %polly.indvar274.3, %224
  %indvars.iv.next1109.3 = add i64 %indvars.iv1108.3, 1
  %indvar.next1631 = add i64 %indvar1630, 1
  br i1 %polly.loop_cond276.not.not.3, label %polly.loop_header270.3, label %polly.loop_exit265

polly.loop_header428.1:                           ; preds = %polly.loop_header428, %polly.loop_header428.1
  %polly.indvar431.1 = phi i64 [ %polly.indvar_next432.1, %polly.loop_header428.1 ], [ 0, %polly.loop_header428 ]
  %774 = add nuw nsw i64 %polly.indvar431.1, %321
  %polly.access.mul.call2435.1 = mul nuw nsw i64 %774, 1000
  %polly.access.add.call2436.1 = add nuw nsw i64 %265, %polly.access.mul.call2435.1
  %polly.access.call2437.1 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.1
  %polly.access.call2437.load.1 = load double, double* %polly.access.call2437.1, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2311.1 = add nuw nsw i64 %polly.indvar431.1, 1200
  %polly.access.Packed_MemRef_call2311.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.1
  store double %polly.access.call2437.load.1, double* %polly.access.Packed_MemRef_call2311.1, align 8
  %polly.indvar_next432.1 = add nuw nsw i64 %polly.indvar431.1, 1
  %exitcond1119.1.not = icmp eq i64 %polly.indvar_next432.1, %indvars.iv1117
  br i1 %exitcond1119.1.not, label %polly.loop_header428.2, label %polly.loop_header428.1

polly.loop_header428.2:                           ; preds = %polly.loop_header428.1, %polly.loop_header428.2
  %polly.indvar431.2 = phi i64 [ %polly.indvar_next432.2, %polly.loop_header428.2 ], [ 0, %polly.loop_header428.1 ]
  %775 = add nuw nsw i64 %polly.indvar431.2, %321
  %polly.access.mul.call2435.2 = mul nuw nsw i64 %775, 1000
  %polly.access.add.call2436.2 = add nuw nsw i64 %266, %polly.access.mul.call2435.2
  %polly.access.call2437.2 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.2
  %polly.access.call2437.load.2 = load double, double* %polly.access.call2437.2, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2311.2 = add nuw nsw i64 %polly.indvar431.2, 2400
  %polly.access.Packed_MemRef_call2311.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.2
  store double %polly.access.call2437.load.2, double* %polly.access.Packed_MemRef_call2311.2, align 8
  %polly.indvar_next432.2 = add nuw nsw i64 %polly.indvar431.2, 1
  %exitcond1119.2.not = icmp eq i64 %polly.indvar_next432.2, %indvars.iv1117
  br i1 %exitcond1119.2.not, label %polly.loop_header428.3, label %polly.loop_header428.2

polly.loop_header428.3:                           ; preds = %polly.loop_header428.2, %polly.loop_header428.3
  %polly.indvar431.3 = phi i64 [ %polly.indvar_next432.3, %polly.loop_header428.3 ], [ 0, %polly.loop_header428.2 ]
  %776 = add nuw nsw i64 %polly.indvar431.3, %321
  %polly.access.mul.call2435.3 = mul nuw nsw i64 %776, 1000
  %polly.access.add.call2436.3 = add nuw nsw i64 %267, %polly.access.mul.call2435.3
  %polly.access.call2437.3 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.3
  %polly.access.call2437.load.3 = load double, double* %polly.access.call2437.3, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2311.3 = add nuw nsw i64 %polly.indvar431.3, 3600
  %polly.access.Packed_MemRef_call2311.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.3
  store double %polly.access.call2437.load.3, double* %polly.access.Packed_MemRef_call2311.3, align 8
  %polly.indvar_next432.3 = add nuw nsw i64 %polly.indvar431.3, 1
  %exitcond1119.3.not = icmp eq i64 %polly.indvar_next432.3, %indvars.iv1117
  br i1 %exitcond1119.3.not, label %polly.loop_exit430.3, label %polly.loop_header428.3

polly.loop_exit430.3:                             ; preds = %polly.loop_header428.3
  %777 = add nsw i64 %320, 1199
  br label %polly.loop_header439

polly.loop_header466.1:                           ; preds = %polly.loop_header466, %polly.loop_header466.1
  %polly.indvar470.1 = phi i64 [ %polly.indvar_next471.1, %polly.loop_header466.1 ], [ %379, %polly.loop_header466 ]
  %778 = add nuw nsw i64 %polly.indvar470.1, %321
  %polly.access.mul.call1474.1 = mul nsw i64 %778, 1000
  %polly.access.add.call1475.1 = add nuw nsw i64 %265, %polly.access.mul.call1474.1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309478.1 = add nuw nsw i64 %polly.indvar470.1, 1200
  %polly.access.Packed_MemRef_call1309479.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1309479.1, align 8
  %polly.indvar_next471.1 = add nuw nsw i64 %polly.indvar470.1, 1
  %polly.loop_cond472.not.not.1 = icmp slt i64 %polly.indvar470.1, %382
  br i1 %polly.loop_cond472.not.not.1, label %polly.loop_header466.1, label %polly.loop_header466.2

polly.loop_header466.2:                           ; preds = %polly.loop_header466.1, %polly.loop_header466.2
  %polly.indvar470.2 = phi i64 [ %polly.indvar_next471.2, %polly.loop_header466.2 ], [ %379, %polly.loop_header466.1 ]
  %779 = add nuw nsw i64 %polly.indvar470.2, %321
  %polly.access.mul.call1474.2 = mul nsw i64 %779, 1000
  %polly.access.add.call1475.2 = add nuw nsw i64 %266, %polly.access.mul.call1474.2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309478.2 = add nuw nsw i64 %polly.indvar470.2, 2400
  %polly.access.Packed_MemRef_call1309479.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1309479.2, align 8
  %polly.indvar_next471.2 = add nuw nsw i64 %polly.indvar470.2, 1
  %polly.loop_cond472.not.not.2 = icmp slt i64 %polly.indvar470.2, %382
  br i1 %polly.loop_cond472.not.not.2, label %polly.loop_header466.2, label %polly.loop_header466.3

polly.loop_header466.3:                           ; preds = %polly.loop_header466.2, %polly.loop_header466.3
  %polly.indvar470.3 = phi i64 [ %polly.indvar_next471.3, %polly.loop_header466.3 ], [ %379, %polly.loop_header466.2 ]
  %780 = add nuw nsw i64 %polly.indvar470.3, %321
  %polly.access.mul.call1474.3 = mul nsw i64 %780, 1000
  %polly.access.add.call1475.3 = add nuw nsw i64 %267, %polly.access.mul.call1474.3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309478.3 = add nuw nsw i64 %polly.indvar470.3, 3600
  %polly.access.Packed_MemRef_call1309479.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1309479.3, align 8
  %polly.indvar_next471.3 = add nuw nsw i64 %polly.indvar470.3, 1
  %polly.loop_cond472.not.not.3 = icmp slt i64 %polly.indvar470.3, %382
  br i1 %polly.loop_cond472.not.not.3, label %polly.loop_header466.3, label %polly.loop_header480.preheader

polly.loop_header455.us.1:                        ; preds = %polly.loop_header455.us.1.preheader, %polly.loop_header455.us.1
  %polly.indvar458.us.1 = phi i64 [ %polly.indvar_next459.us.1, %polly.loop_header455.us.1 ], [ 0, %polly.loop_header455.us.1.preheader ]
  %781 = add nuw nsw i64 %polly.indvar458.us.1, %321
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %781, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %265, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309.us.1 = add nuw nsw i64 %polly.indvar458.us.1, 1200
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1309.us.1, align 8
  %polly.indvar_next459.us.1 = add nuw nsw i64 %polly.indvar458.us.1, 1
  %exitcond1122.1.not = icmp eq i64 %polly.indvar_next459.us.1, 64
  br i1 %exitcond1122.1.not, label %polly.merge452.loopexit.us.1, label %polly.loop_header455.us.1

polly.merge452.loopexit.us.1:                     ; preds = %polly.loop_header455.us.1
  br i1 %polly.loop_guard469.not, label %polly.loop_header455.us.2.preheader, label %polly.loop_header466.us.1

polly.loop_header466.us.1:                        ; preds = %polly.merge452.loopexit.us.1, %polly.loop_header466.us.1
  %polly.indvar470.us.1 = phi i64 [ %polly.indvar_next471.us.1, %polly.loop_header466.us.1 ], [ %379, %polly.merge452.loopexit.us.1 ]
  %782 = add nuw nsw i64 %polly.indvar470.us.1, %321
  %polly.access.mul.call1474.us.1 = mul nsw i64 %782, 1000
  %polly.access.add.call1475.us.1 = add nuw nsw i64 %265, %polly.access.mul.call1474.us.1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309478.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1200
  %polly.access.Packed_MemRef_call1309479.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1309479.us.1, align 8
  %polly.indvar_next471.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1
  %polly.loop_cond472.not.not.us.1 = icmp slt i64 %polly.indvar470.us.1, %382
  br i1 %polly.loop_cond472.not.not.us.1, label %polly.loop_header466.us.1, label %polly.loop_header455.us.2.preheader

polly.loop_header455.us.2.preheader:              ; preds = %polly.loop_header466.us.1, %polly.merge452.loopexit.us.1
  br label %polly.loop_header455.us.2

polly.loop_header455.us.2:                        ; preds = %polly.loop_header455.us.2.preheader, %polly.loop_header455.us.2
  %polly.indvar458.us.2 = phi i64 [ %polly.indvar_next459.us.2, %polly.loop_header455.us.2 ], [ 0, %polly.loop_header455.us.2.preheader ]
  %783 = add nuw nsw i64 %polly.indvar458.us.2, %321
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %783, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %266, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309.us.2 = add nuw nsw i64 %polly.indvar458.us.2, 2400
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1309.us.2, align 8
  %polly.indvar_next459.us.2 = add nuw nsw i64 %polly.indvar458.us.2, 1
  %exitcond1122.2.not = icmp eq i64 %polly.indvar_next459.us.2, 64
  br i1 %exitcond1122.2.not, label %polly.merge452.loopexit.us.2, label %polly.loop_header455.us.2

polly.merge452.loopexit.us.2:                     ; preds = %polly.loop_header455.us.2
  br i1 %polly.loop_guard469.not, label %polly.loop_header455.us.3.preheader, label %polly.loop_header466.us.2

polly.loop_header466.us.2:                        ; preds = %polly.merge452.loopexit.us.2, %polly.loop_header466.us.2
  %polly.indvar470.us.2 = phi i64 [ %polly.indvar_next471.us.2, %polly.loop_header466.us.2 ], [ %379, %polly.merge452.loopexit.us.2 ]
  %784 = add nuw nsw i64 %polly.indvar470.us.2, %321
  %polly.access.mul.call1474.us.2 = mul nsw i64 %784, 1000
  %polly.access.add.call1475.us.2 = add nuw nsw i64 %266, %polly.access.mul.call1474.us.2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309478.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 2400
  %polly.access.Packed_MemRef_call1309479.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1309479.us.2, align 8
  %polly.indvar_next471.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 1
  %polly.loop_cond472.not.not.us.2 = icmp slt i64 %polly.indvar470.us.2, %382
  br i1 %polly.loop_cond472.not.not.us.2, label %polly.loop_header466.us.2, label %polly.loop_header455.us.3.preheader

polly.loop_header455.us.3.preheader:              ; preds = %polly.loop_header466.us.2, %polly.merge452.loopexit.us.2
  br label %polly.loop_header455.us.3

polly.loop_header455.us.3:                        ; preds = %polly.loop_header455.us.3.preheader, %polly.loop_header455.us.3
  %polly.indvar458.us.3 = phi i64 [ %polly.indvar_next459.us.3, %polly.loop_header455.us.3 ], [ 0, %polly.loop_header455.us.3.preheader ]
  %785 = add nuw nsw i64 %polly.indvar458.us.3, %321
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %785, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %267, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309.us.3 = add nuw nsw i64 %polly.indvar458.us.3, 3600
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1309.us.3, align 8
  %polly.indvar_next459.us.3 = add nuw nsw i64 %polly.indvar458.us.3, 1
  %exitcond1122.3.not = icmp eq i64 %polly.indvar_next459.us.3, 64
  br i1 %exitcond1122.3.not, label %polly.merge452.loopexit.us.3, label %polly.loop_header455.us.3

polly.merge452.loopexit.us.3:                     ; preds = %polly.loop_header455.us.3
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466.us.3

polly.loop_header466.us.3:                        ; preds = %polly.merge452.loopexit.us.3, %polly.loop_header466.us.3
  %polly.indvar470.us.3 = phi i64 [ %polly.indvar_next471.us.3, %polly.loop_header466.us.3 ], [ %379, %polly.merge452.loopexit.us.3 ]
  %786 = add nuw nsw i64 %polly.indvar470.us.3, %321
  %polly.access.mul.call1474.us.3 = mul nsw i64 %786, 1000
  %polly.access.add.call1475.us.3 = add nuw nsw i64 %267, %polly.access.mul.call1474.us.3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309478.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 3600
  %polly.access.Packed_MemRef_call1309479.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1309479.us.3, align 8
  %polly.indvar_next471.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 1
  %polly.loop_cond472.not.not.us.3 = icmp slt i64 %polly.indvar470.us.3, %382
  br i1 %polly.loop_cond472.not.not.us.3, label %polly.loop_header466.us.3, label %polly.loop_header480.preheader

polly.loop_header487.1:                           ; preds = %polly.loop_exit497, %polly.loop_exit497.1
  %indvar1531 = phi i64 [ %indvar.next1532, %polly.loop_exit497.1 ], [ 0, %polly.loop_exit497 ]
  %indvars.iv1133.1 = phi i64 [ %indvars.iv.next1134.1, %polly.loop_exit497.1 ], [ %374, %polly.loop_exit497 ]
  %polly.indvar491.1 = phi i64 [ %polly.indvar_next492.1, %polly.loop_exit497.1 ], [ %387, %polly.loop_exit497 ]
  %787 = add i64 %343, %indvar1531
  %smin1548 = call i64 @llvm.smin.i64(i64 %787, i64 63)
  %788 = add nsw i64 %smin1548, 1
  %789 = mul nuw nsw i64 %indvar1531, 9600
  %790 = add i64 %350, %789
  %scevgep1533 = getelementptr i8, i8* %call, i64 %790
  %791 = add i64 %351, %789
  %scevgep1534 = getelementptr i8, i8* %call, i64 %791
  %792 = add i64 %353, %indvar1531
  %smin1535 = call i64 @llvm.smin.i64(i64 %792, i64 63)
  %793 = shl nsw i64 %smin1535, 3
  %scevgep1536 = getelementptr i8, i8* %scevgep1534, i64 %793
  %scevgep1539 = getelementptr i8, i8* %scevgep1538, i64 %793
  %smin1135.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1133.1, i64 63)
  %794 = add nsw i64 %polly.indvar491.1, %377
  %polly.loop_guard498.11211 = icmp sgt i64 %794, -1
  br i1 %polly.loop_guard498.11211, label %polly.loop_header495.preheader.1, label %polly.loop_exit497.1

polly.loop_header495.preheader.1:                 ; preds = %polly.loop_header487.1
  %795 = add nuw nsw i64 %polly.indvar491.1, %376
  %polly.access.add.Packed_MemRef_call2311507.1 = add nuw nsw i64 %794, 1200
  %polly.access.Packed_MemRef_call2311508.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.1
  %_p_scalar_509.1 = load double, double* %polly.access.Packed_MemRef_call2311508.1, align 8
  %polly.access.Packed_MemRef_call1309516.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.1
  %_p_scalar_517.1 = load double, double* %polly.access.Packed_MemRef_call1309516.1, align 8
  %796 = mul i64 %795, 9600
  %min.iters.check1549 = icmp ult i64 %788, 4
  br i1 %min.iters.check1549, label %polly.loop_header495.1.preheader, label %vector.memcheck1529

vector.memcheck1529:                              ; preds = %polly.loop_header495.preheader.1
  %bound01540 = icmp ult i8* %scevgep1533, %scevgep1539
  %bound11541 = icmp ult i8* %scevgep1537, %scevgep1536
  %found.conflict1542 = and i1 %bound01540, %bound11541
  br i1 %found.conflict1542, label %polly.loop_header495.1.preheader, label %vector.ph1550

vector.ph1550:                                    ; preds = %vector.memcheck1529
  %n.vec1552 = and i64 %788, -4
  %broadcast.splatinsert1558 = insertelement <4 x double> poison, double %_p_scalar_509.1, i32 0
  %broadcast.splat1559 = shufflevector <4 x double> %broadcast.splatinsert1558, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1561 = insertelement <4 x double> poison, double %_p_scalar_517.1, i32 0
  %broadcast.splat1562 = shufflevector <4 x double> %broadcast.splatinsert1561, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1546

vector.body1546:                                  ; preds = %vector.body1546, %vector.ph1550
  %index1553 = phi i64 [ 0, %vector.ph1550 ], [ %index.next1554, %vector.body1546 ]
  %797 = add nuw nsw i64 %index1553, %321
  %798 = add nuw nsw i64 %index1553, 1200
  %799 = getelementptr double, double* %Packed_MemRef_call1309, i64 %798
  %800 = bitcast double* %799 to <4 x double>*
  %wide.load1557 = load <4 x double>, <4 x double>* %800, align 8, !alias.scope !161
  %801 = fmul fast <4 x double> %broadcast.splat1559, %wide.load1557
  %802 = getelementptr double, double* %Packed_MemRef_call2311, i64 %798
  %803 = bitcast double* %802 to <4 x double>*
  %wide.load1560 = load <4 x double>, <4 x double>* %803, align 8
  %804 = fmul fast <4 x double> %broadcast.splat1562, %wide.load1560
  %805 = shl i64 %797, 3
  %806 = add i64 %805, %796
  %807 = getelementptr i8, i8* %call, i64 %806
  %808 = bitcast i8* %807 to <4 x double>*
  %wide.load1563 = load <4 x double>, <4 x double>* %808, align 8, !alias.scope !164, !noalias !166
  %809 = fadd fast <4 x double> %804, %801
  %810 = fmul fast <4 x double> %809, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %811 = fadd fast <4 x double> %810, %wide.load1563
  %812 = bitcast i8* %807 to <4 x double>*
  store <4 x double> %811, <4 x double>* %812, align 8, !alias.scope !164, !noalias !166
  %index.next1554 = add i64 %index1553, 4
  %813 = icmp eq i64 %index.next1554, %n.vec1552
  br i1 %813, label %middle.block1544, label %vector.body1546, !llvm.loop !167

middle.block1544:                                 ; preds = %vector.body1546
  %cmp.n1556 = icmp eq i64 %788, %n.vec1552
  br i1 %cmp.n1556, label %polly.loop_exit497.1, label %polly.loop_header495.1.preheader

polly.loop_header495.1.preheader:                 ; preds = %vector.memcheck1529, %polly.loop_header495.preheader.1, %middle.block1544
  %polly.indvar499.1.ph = phi i64 [ 0, %vector.memcheck1529 ], [ 0, %polly.loop_header495.preheader.1 ], [ %n.vec1552, %middle.block1544 ]
  br label %polly.loop_header495.1

polly.loop_header495.1:                           ; preds = %polly.loop_header495.1.preheader, %polly.loop_header495.1
  %polly.indvar499.1 = phi i64 [ %polly.indvar_next500.1, %polly.loop_header495.1 ], [ %polly.indvar499.1.ph, %polly.loop_header495.1.preheader ]
  %814 = add nuw nsw i64 %polly.indvar499.1, %321
  %polly.access.add.Packed_MemRef_call1309503.1 = add nuw nsw i64 %polly.indvar499.1, 1200
  %polly.access.Packed_MemRef_call1309504.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.1
  %_p_scalar_505.1 = load double, double* %polly.access.Packed_MemRef_call1309504.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_509.1, %_p_scalar_505.1
  %polly.access.Packed_MemRef_call2311512.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.1
  %_p_scalar_513.1 = load double, double* %polly.access.Packed_MemRef_call2311512.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_517.1, %_p_scalar_513.1
  %815 = shl i64 %814, 3
  %816 = add i64 %815, %796
  %scevgep518.1 = getelementptr i8, i8* %call, i64 %816
  %scevgep518519.1 = bitcast i8* %scevgep518.1 to double*
  %_p_scalar_520.1 = load double, double* %scevgep518519.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_520.1
  store double %p_add42.i79.1, double* %scevgep518519.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.1 = add nuw nsw i64 %polly.indvar499.1, 1
  %exitcond1136.1.not = icmp eq i64 %polly.indvar499.1, %smin1135.1
  br i1 %exitcond1136.1.not, label %polly.loop_exit497.1, label %polly.loop_header495.1, !llvm.loop !168

polly.loop_exit497.1:                             ; preds = %polly.loop_header495.1, %middle.block1544, %polly.loop_header487.1
  %polly.indvar_next492.1 = add nuw nsw i64 %polly.indvar491.1, 1
  %polly.loop_cond493.not.not.1 = icmp slt i64 %polly.indvar491.1, %391
  %indvars.iv.next1134.1 = add i64 %indvars.iv1133.1, 1
  %indvar.next1532 = add i64 %indvar1531, 1
  br i1 %polly.loop_cond493.not.not.1, label %polly.loop_header487.1, label %polly.loop_header487.2

polly.loop_header487.2:                           ; preds = %polly.loop_exit497.1, %polly.loop_exit497.2
  %indvar1496 = phi i64 [ %indvar.next1497, %polly.loop_exit497.2 ], [ 0, %polly.loop_exit497.1 ]
  %indvars.iv1133.2 = phi i64 [ %indvars.iv.next1134.2, %polly.loop_exit497.2 ], [ %374, %polly.loop_exit497.1 ]
  %polly.indvar491.2 = phi i64 [ %polly.indvar_next492.2, %polly.loop_exit497.2 ], [ %387, %polly.loop_exit497.1 ]
  %817 = add i64 %358, %indvar1496
  %smin1513 = call i64 @llvm.smin.i64(i64 %817, i64 63)
  %818 = add nsw i64 %smin1513, 1
  %819 = mul nuw nsw i64 %indvar1496, 9600
  %820 = add i64 %365, %819
  %scevgep1498 = getelementptr i8, i8* %call, i64 %820
  %821 = add i64 %366, %819
  %scevgep1499 = getelementptr i8, i8* %call, i64 %821
  %822 = add i64 %368, %indvar1496
  %smin1500 = call i64 @llvm.smin.i64(i64 %822, i64 63)
  %823 = shl nsw i64 %smin1500, 3
  %scevgep1501 = getelementptr i8, i8* %scevgep1499, i64 %823
  %scevgep1504 = getelementptr i8, i8* %scevgep1503, i64 %823
  %smin1135.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1133.2, i64 63)
  %824 = add nsw i64 %polly.indvar491.2, %377
  %polly.loop_guard498.21212 = icmp sgt i64 %824, -1
  br i1 %polly.loop_guard498.21212, label %polly.loop_header495.preheader.2, label %polly.loop_exit497.2

polly.loop_header495.preheader.2:                 ; preds = %polly.loop_header487.2
  %825 = add nuw nsw i64 %polly.indvar491.2, %376
  %polly.access.add.Packed_MemRef_call2311507.2 = add nuw nsw i64 %824, 2400
  %polly.access.Packed_MemRef_call2311508.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.2
  %_p_scalar_509.2 = load double, double* %polly.access.Packed_MemRef_call2311508.2, align 8
  %polly.access.Packed_MemRef_call1309516.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.2
  %_p_scalar_517.2 = load double, double* %polly.access.Packed_MemRef_call1309516.2, align 8
  %826 = mul i64 %825, 9600
  %min.iters.check1514 = icmp ult i64 %818, 4
  br i1 %min.iters.check1514, label %polly.loop_header495.2.preheader, label %vector.memcheck1494

vector.memcheck1494:                              ; preds = %polly.loop_header495.preheader.2
  %bound01505 = icmp ult i8* %scevgep1498, %scevgep1504
  %bound11506 = icmp ult i8* %scevgep1502, %scevgep1501
  %found.conflict1507 = and i1 %bound01505, %bound11506
  br i1 %found.conflict1507, label %polly.loop_header495.2.preheader, label %vector.ph1515

vector.ph1515:                                    ; preds = %vector.memcheck1494
  %n.vec1517 = and i64 %818, -4
  %broadcast.splatinsert1523 = insertelement <4 x double> poison, double %_p_scalar_509.2, i32 0
  %broadcast.splat1524 = shufflevector <4 x double> %broadcast.splatinsert1523, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1526 = insertelement <4 x double> poison, double %_p_scalar_517.2, i32 0
  %broadcast.splat1527 = shufflevector <4 x double> %broadcast.splatinsert1526, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1511

vector.body1511:                                  ; preds = %vector.body1511, %vector.ph1515
  %index1518 = phi i64 [ 0, %vector.ph1515 ], [ %index.next1519, %vector.body1511 ]
  %827 = add nuw nsw i64 %index1518, %321
  %828 = add nuw nsw i64 %index1518, 2400
  %829 = getelementptr double, double* %Packed_MemRef_call1309, i64 %828
  %830 = bitcast double* %829 to <4 x double>*
  %wide.load1522 = load <4 x double>, <4 x double>* %830, align 8, !alias.scope !169
  %831 = fmul fast <4 x double> %broadcast.splat1524, %wide.load1522
  %832 = getelementptr double, double* %Packed_MemRef_call2311, i64 %828
  %833 = bitcast double* %832 to <4 x double>*
  %wide.load1525 = load <4 x double>, <4 x double>* %833, align 8
  %834 = fmul fast <4 x double> %broadcast.splat1527, %wide.load1525
  %835 = shl i64 %827, 3
  %836 = add i64 %835, %826
  %837 = getelementptr i8, i8* %call, i64 %836
  %838 = bitcast i8* %837 to <4 x double>*
  %wide.load1528 = load <4 x double>, <4 x double>* %838, align 8, !alias.scope !172, !noalias !174
  %839 = fadd fast <4 x double> %834, %831
  %840 = fmul fast <4 x double> %839, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %841 = fadd fast <4 x double> %840, %wide.load1528
  %842 = bitcast i8* %837 to <4 x double>*
  store <4 x double> %841, <4 x double>* %842, align 8, !alias.scope !172, !noalias !174
  %index.next1519 = add i64 %index1518, 4
  %843 = icmp eq i64 %index.next1519, %n.vec1517
  br i1 %843, label %middle.block1509, label %vector.body1511, !llvm.loop !175

middle.block1509:                                 ; preds = %vector.body1511
  %cmp.n1521 = icmp eq i64 %818, %n.vec1517
  br i1 %cmp.n1521, label %polly.loop_exit497.2, label %polly.loop_header495.2.preheader

polly.loop_header495.2.preheader:                 ; preds = %vector.memcheck1494, %polly.loop_header495.preheader.2, %middle.block1509
  %polly.indvar499.2.ph = phi i64 [ 0, %vector.memcheck1494 ], [ 0, %polly.loop_header495.preheader.2 ], [ %n.vec1517, %middle.block1509 ]
  br label %polly.loop_header495.2

polly.loop_header495.2:                           ; preds = %polly.loop_header495.2.preheader, %polly.loop_header495.2
  %polly.indvar499.2 = phi i64 [ %polly.indvar_next500.2, %polly.loop_header495.2 ], [ %polly.indvar499.2.ph, %polly.loop_header495.2.preheader ]
  %844 = add nuw nsw i64 %polly.indvar499.2, %321
  %polly.access.add.Packed_MemRef_call1309503.2 = add nuw nsw i64 %polly.indvar499.2, 2400
  %polly.access.Packed_MemRef_call1309504.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.2
  %_p_scalar_505.2 = load double, double* %polly.access.Packed_MemRef_call1309504.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_509.2, %_p_scalar_505.2
  %polly.access.Packed_MemRef_call2311512.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.2
  %_p_scalar_513.2 = load double, double* %polly.access.Packed_MemRef_call2311512.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_517.2, %_p_scalar_513.2
  %845 = shl i64 %844, 3
  %846 = add i64 %845, %826
  %scevgep518.2 = getelementptr i8, i8* %call, i64 %846
  %scevgep518519.2 = bitcast i8* %scevgep518.2 to double*
  %_p_scalar_520.2 = load double, double* %scevgep518519.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_520.2
  store double %p_add42.i79.2, double* %scevgep518519.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.2 = add nuw nsw i64 %polly.indvar499.2, 1
  %exitcond1136.2.not = icmp eq i64 %polly.indvar499.2, %smin1135.2
  br i1 %exitcond1136.2.not, label %polly.loop_exit497.2, label %polly.loop_header495.2, !llvm.loop !176

polly.loop_exit497.2:                             ; preds = %polly.loop_header495.2, %middle.block1509, %polly.loop_header487.2
  %polly.indvar_next492.2 = add nuw nsw i64 %polly.indvar491.2, 1
  %polly.loop_cond493.not.not.2 = icmp slt i64 %polly.indvar491.2, %391
  %indvars.iv.next1134.2 = add i64 %indvars.iv1133.2, 1
  %indvar.next1497 = add i64 %indvar1496, 1
  br i1 %polly.loop_cond493.not.not.2, label %polly.loop_header487.2, label %polly.loop_header487.3

polly.loop_header487.3:                           ; preds = %polly.loop_exit497.2, %polly.loop_exit497.3
  %indvar1476 = phi i64 [ %indvar.next1477, %polly.loop_exit497.3 ], [ 0, %polly.loop_exit497.2 ]
  %indvars.iv1133.3 = phi i64 [ %indvars.iv.next1134.3, %polly.loop_exit497.3 ], [ %374, %polly.loop_exit497.2 ]
  %polly.indvar491.3 = phi i64 [ %polly.indvar_next492.3, %polly.loop_exit497.3 ], [ %387, %polly.loop_exit497.2 ]
  %847 = add i64 %373, %indvar1476
  %smin1478 = call i64 @llvm.smin.i64(i64 %847, i64 63)
  %848 = add nsw i64 %smin1478, 1
  %smin1135.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1133.3, i64 63)
  %849 = add nsw i64 %polly.indvar491.3, %377
  %polly.loop_guard498.31213 = icmp sgt i64 %849, -1
  br i1 %polly.loop_guard498.31213, label %polly.loop_header495.preheader.3, label %polly.loop_exit497.3

polly.loop_header495.preheader.3:                 ; preds = %polly.loop_header487.3
  %850 = add nuw nsw i64 %polly.indvar491.3, %376
  %polly.access.add.Packed_MemRef_call2311507.3 = add nuw nsw i64 %849, 3600
  %polly.access.Packed_MemRef_call2311508.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.3
  %_p_scalar_509.3 = load double, double* %polly.access.Packed_MemRef_call2311508.3, align 8
  %polly.access.Packed_MemRef_call1309516.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.3
  %_p_scalar_517.3 = load double, double* %polly.access.Packed_MemRef_call1309516.3, align 8
  %851 = mul i64 %850, 9600
  %min.iters.check1479 = icmp ult i64 %848, 4
  br i1 %min.iters.check1479, label %polly.loop_header495.3.preheader, label %vector.ph1480

vector.ph1480:                                    ; preds = %polly.loop_header495.preheader.3
  %n.vec1482 = and i64 %848, -4
  %broadcast.splatinsert1488 = insertelement <4 x double> poison, double %_p_scalar_509.3, i32 0
  %broadcast.splat1489 = shufflevector <4 x double> %broadcast.splatinsert1488, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1491 = insertelement <4 x double> poison, double %_p_scalar_517.3, i32 0
  %broadcast.splat1492 = shufflevector <4 x double> %broadcast.splatinsert1491, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1472

vector.body1472:                                  ; preds = %vector.body1472, %vector.ph1480
  %index1483 = phi i64 [ 0, %vector.ph1480 ], [ %index.next1484, %vector.body1472 ]
  %852 = add nuw nsw i64 %index1483, %321
  %853 = add nuw nsw i64 %index1483, 3600
  %854 = getelementptr double, double* %Packed_MemRef_call1309, i64 %853
  %855 = bitcast double* %854 to <4 x double>*
  %wide.load1487 = load <4 x double>, <4 x double>* %855, align 8
  %856 = fmul fast <4 x double> %broadcast.splat1489, %wide.load1487
  %857 = getelementptr double, double* %Packed_MemRef_call2311, i64 %853
  %858 = bitcast double* %857 to <4 x double>*
  %wide.load1490 = load <4 x double>, <4 x double>* %858, align 8
  %859 = fmul fast <4 x double> %broadcast.splat1492, %wide.load1490
  %860 = shl i64 %852, 3
  %861 = add i64 %860, %851
  %862 = getelementptr i8, i8* %call, i64 %861
  %863 = bitcast i8* %862 to <4 x double>*
  %wide.load1493 = load <4 x double>, <4 x double>* %863, align 8, !alias.scope !92, !noalias !94
  %864 = fadd fast <4 x double> %859, %856
  %865 = fmul fast <4 x double> %864, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %866 = fadd fast <4 x double> %865, %wide.load1493
  %867 = bitcast i8* %862 to <4 x double>*
  store <4 x double> %866, <4 x double>* %867, align 8, !alias.scope !92, !noalias !94
  %index.next1484 = add i64 %index1483, 4
  %868 = icmp eq i64 %index.next1484, %n.vec1482
  br i1 %868, label %middle.block1470, label %vector.body1472, !llvm.loop !177

middle.block1470:                                 ; preds = %vector.body1472
  %cmp.n1486 = icmp eq i64 %848, %n.vec1482
  br i1 %cmp.n1486, label %polly.loop_exit497.3, label %polly.loop_header495.3.preheader

polly.loop_header495.3.preheader:                 ; preds = %polly.loop_header495.preheader.3, %middle.block1470
  %polly.indvar499.3.ph = phi i64 [ 0, %polly.loop_header495.preheader.3 ], [ %n.vec1482, %middle.block1470 ]
  br label %polly.loop_header495.3

polly.loop_header495.3:                           ; preds = %polly.loop_header495.3.preheader, %polly.loop_header495.3
  %polly.indvar499.3 = phi i64 [ %polly.indvar_next500.3, %polly.loop_header495.3 ], [ %polly.indvar499.3.ph, %polly.loop_header495.3.preheader ]
  %869 = add nuw nsw i64 %polly.indvar499.3, %321
  %polly.access.add.Packed_MemRef_call1309503.3 = add nuw nsw i64 %polly.indvar499.3, 3600
  %polly.access.Packed_MemRef_call1309504.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.3
  %_p_scalar_505.3 = load double, double* %polly.access.Packed_MemRef_call1309504.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_509.3, %_p_scalar_505.3
  %polly.access.Packed_MemRef_call2311512.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.3
  %_p_scalar_513.3 = load double, double* %polly.access.Packed_MemRef_call2311512.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_517.3, %_p_scalar_513.3
  %870 = shl i64 %869, 3
  %871 = add i64 %870, %851
  %scevgep518.3 = getelementptr i8, i8* %call, i64 %871
  %scevgep518519.3 = bitcast i8* %scevgep518.3 to double*
  %_p_scalar_520.3 = load double, double* %scevgep518519.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_520.3
  store double %p_add42.i79.3, double* %scevgep518519.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.3 = add nuw nsw i64 %polly.indvar499.3, 1
  %exitcond1136.3.not = icmp eq i64 %polly.indvar499.3, %smin1135.3
  br i1 %exitcond1136.3.not, label %polly.loop_exit497.3, label %polly.loop_header495.3, !llvm.loop !178

polly.loop_exit497.3:                             ; preds = %polly.loop_header495.3, %middle.block1470, %polly.loop_header487.3
  %polly.indvar_next492.3 = add nuw nsw i64 %polly.indvar491.3, 1
  %polly.loop_cond493.not.not.3 = icmp slt i64 %polly.indvar491.3, %391
  %indvars.iv.next1134.3 = add i64 %indvars.iv1133.3, 1
  %indvar.next1477 = add i64 %indvar1476, 1
  br i1 %polly.loop_cond493.not.not.3, label %polly.loop_header487.3, label %polly.loop_exit482

polly.loop_header645.1:                           ; preds = %polly.loop_header645, %polly.loop_header645.1
  %polly.indvar648.1 = phi i64 [ %polly.indvar_next649.1, %polly.loop_header645.1 ], [ 0, %polly.loop_header645 ]
  %872 = add nuw nsw i64 %polly.indvar648.1, %488
  %polly.access.mul.call2652.1 = mul nuw nsw i64 %872, 1000
  %polly.access.add.call2653.1 = add nuw nsw i64 %432, %polly.access.mul.call2652.1
  %polly.access.call2654.1 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.1
  %polly.access.call2654.load.1 = load double, double* %polly.access.call2654.1, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.1 = add nuw nsw i64 %polly.indvar648.1, 1200
  %polly.access.Packed_MemRef_call2528.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.1
  store double %polly.access.call2654.load.1, double* %polly.access.Packed_MemRef_call2528.1, align 8
  %polly.indvar_next649.1 = add nuw nsw i64 %polly.indvar648.1, 1
  %exitcond1145.1.not = icmp eq i64 %polly.indvar_next649.1, %indvars.iv1143
  br i1 %exitcond1145.1.not, label %polly.loop_header645.2, label %polly.loop_header645.1

polly.loop_header645.2:                           ; preds = %polly.loop_header645.1, %polly.loop_header645.2
  %polly.indvar648.2 = phi i64 [ %polly.indvar_next649.2, %polly.loop_header645.2 ], [ 0, %polly.loop_header645.1 ]
  %873 = add nuw nsw i64 %polly.indvar648.2, %488
  %polly.access.mul.call2652.2 = mul nuw nsw i64 %873, 1000
  %polly.access.add.call2653.2 = add nuw nsw i64 %433, %polly.access.mul.call2652.2
  %polly.access.call2654.2 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.2
  %polly.access.call2654.load.2 = load double, double* %polly.access.call2654.2, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.2 = add nuw nsw i64 %polly.indvar648.2, 2400
  %polly.access.Packed_MemRef_call2528.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.2
  store double %polly.access.call2654.load.2, double* %polly.access.Packed_MemRef_call2528.2, align 8
  %polly.indvar_next649.2 = add nuw nsw i64 %polly.indvar648.2, 1
  %exitcond1145.2.not = icmp eq i64 %polly.indvar_next649.2, %indvars.iv1143
  br i1 %exitcond1145.2.not, label %polly.loop_header645.3, label %polly.loop_header645.2

polly.loop_header645.3:                           ; preds = %polly.loop_header645.2, %polly.loop_header645.3
  %polly.indvar648.3 = phi i64 [ %polly.indvar_next649.3, %polly.loop_header645.3 ], [ 0, %polly.loop_header645.2 ]
  %874 = add nuw nsw i64 %polly.indvar648.3, %488
  %polly.access.mul.call2652.3 = mul nuw nsw i64 %874, 1000
  %polly.access.add.call2653.3 = add nuw nsw i64 %434, %polly.access.mul.call2652.3
  %polly.access.call2654.3 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.3
  %polly.access.call2654.load.3 = load double, double* %polly.access.call2654.3, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.3 = add nuw nsw i64 %polly.indvar648.3, 3600
  %polly.access.Packed_MemRef_call2528.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.3
  store double %polly.access.call2654.load.3, double* %polly.access.Packed_MemRef_call2528.3, align 8
  %polly.indvar_next649.3 = add nuw nsw i64 %polly.indvar648.3, 1
  %exitcond1145.3.not = icmp eq i64 %polly.indvar_next649.3, %indvars.iv1143
  br i1 %exitcond1145.3.not, label %polly.loop_exit647.3, label %polly.loop_header645.3

polly.loop_exit647.3:                             ; preds = %polly.loop_header645.3
  %875 = add nsw i64 %487, 1199
  br label %polly.loop_header656

polly.loop_header683.1:                           ; preds = %polly.loop_header683, %polly.loop_header683.1
  %polly.indvar687.1 = phi i64 [ %polly.indvar_next688.1, %polly.loop_header683.1 ], [ %546, %polly.loop_header683 ]
  %876 = add nuw nsw i64 %polly.indvar687.1, %488
  %polly.access.mul.call1691.1 = mul nsw i64 %876, 1000
  %polly.access.add.call1692.1 = add nuw nsw i64 %432, %polly.access.mul.call1691.1
  %polly.access.call1693.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.1
  %polly.access.call1693.load.1 = load double, double* %polly.access.call1693.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526695.1 = add nuw nsw i64 %polly.indvar687.1, 1200
  %polly.access.Packed_MemRef_call1526696.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.1
  store double %polly.access.call1693.load.1, double* %polly.access.Packed_MemRef_call1526696.1, align 8
  %polly.indvar_next688.1 = add nuw nsw i64 %polly.indvar687.1, 1
  %polly.loop_cond689.not.not.1 = icmp slt i64 %polly.indvar687.1, %549
  br i1 %polly.loop_cond689.not.not.1, label %polly.loop_header683.1, label %polly.loop_header683.2

polly.loop_header683.2:                           ; preds = %polly.loop_header683.1, %polly.loop_header683.2
  %polly.indvar687.2 = phi i64 [ %polly.indvar_next688.2, %polly.loop_header683.2 ], [ %546, %polly.loop_header683.1 ]
  %877 = add nuw nsw i64 %polly.indvar687.2, %488
  %polly.access.mul.call1691.2 = mul nsw i64 %877, 1000
  %polly.access.add.call1692.2 = add nuw nsw i64 %433, %polly.access.mul.call1691.2
  %polly.access.call1693.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.2
  %polly.access.call1693.load.2 = load double, double* %polly.access.call1693.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526695.2 = add nuw nsw i64 %polly.indvar687.2, 2400
  %polly.access.Packed_MemRef_call1526696.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.2
  store double %polly.access.call1693.load.2, double* %polly.access.Packed_MemRef_call1526696.2, align 8
  %polly.indvar_next688.2 = add nuw nsw i64 %polly.indvar687.2, 1
  %polly.loop_cond689.not.not.2 = icmp slt i64 %polly.indvar687.2, %549
  br i1 %polly.loop_cond689.not.not.2, label %polly.loop_header683.2, label %polly.loop_header683.3

polly.loop_header683.3:                           ; preds = %polly.loop_header683.2, %polly.loop_header683.3
  %polly.indvar687.3 = phi i64 [ %polly.indvar_next688.3, %polly.loop_header683.3 ], [ %546, %polly.loop_header683.2 ]
  %878 = add nuw nsw i64 %polly.indvar687.3, %488
  %polly.access.mul.call1691.3 = mul nsw i64 %878, 1000
  %polly.access.add.call1692.3 = add nuw nsw i64 %434, %polly.access.mul.call1691.3
  %polly.access.call1693.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.3
  %polly.access.call1693.load.3 = load double, double* %polly.access.call1693.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526695.3 = add nuw nsw i64 %polly.indvar687.3, 3600
  %polly.access.Packed_MemRef_call1526696.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.3
  store double %polly.access.call1693.load.3, double* %polly.access.Packed_MemRef_call1526696.3, align 8
  %polly.indvar_next688.3 = add nuw nsw i64 %polly.indvar687.3, 1
  %polly.loop_cond689.not.not.3 = icmp slt i64 %polly.indvar687.3, %549
  br i1 %polly.loop_cond689.not.not.3, label %polly.loop_header683.3, label %polly.loop_header697.preheader

polly.loop_header672.us.1:                        ; preds = %polly.loop_header672.us.1.preheader, %polly.loop_header672.us.1
  %polly.indvar675.us.1 = phi i64 [ %polly.indvar_next676.us.1, %polly.loop_header672.us.1 ], [ 0, %polly.loop_header672.us.1.preheader ]
  %879 = add nuw nsw i64 %polly.indvar675.us.1, %488
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %879, 1000
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %432, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.1 = add nuw nsw i64 %polly.indvar675.us.1, 1200
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.indvar_next676.us.1 = add nuw nsw i64 %polly.indvar675.us.1, 1
  %exitcond1148.1.not = icmp eq i64 %polly.indvar_next676.us.1, 64
  br i1 %exitcond1148.1.not, label %polly.merge669.loopexit.us.1, label %polly.loop_header672.us.1

polly.merge669.loopexit.us.1:                     ; preds = %polly.loop_header672.us.1
  br i1 %polly.loop_guard686.not, label %polly.loop_header672.us.2.preheader, label %polly.loop_header683.us.1

polly.loop_header683.us.1:                        ; preds = %polly.merge669.loopexit.us.1, %polly.loop_header683.us.1
  %polly.indvar687.us.1 = phi i64 [ %polly.indvar_next688.us.1, %polly.loop_header683.us.1 ], [ %546, %polly.merge669.loopexit.us.1 ]
  %880 = add nuw nsw i64 %polly.indvar687.us.1, %488
  %polly.access.mul.call1691.us.1 = mul nsw i64 %880, 1000
  %polly.access.add.call1692.us.1 = add nuw nsw i64 %432, %polly.access.mul.call1691.us.1
  %polly.access.call1693.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us.1
  %polly.access.call1693.load.us.1 = load double, double* %polly.access.call1693.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526695.us.1 = add nuw nsw i64 %polly.indvar687.us.1, 1200
  %polly.access.Packed_MemRef_call1526696.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us.1
  store double %polly.access.call1693.load.us.1, double* %polly.access.Packed_MemRef_call1526696.us.1, align 8
  %polly.indvar_next688.us.1 = add nuw nsw i64 %polly.indvar687.us.1, 1
  %polly.loop_cond689.not.not.us.1 = icmp slt i64 %polly.indvar687.us.1, %549
  br i1 %polly.loop_cond689.not.not.us.1, label %polly.loop_header683.us.1, label %polly.loop_header672.us.2.preheader

polly.loop_header672.us.2.preheader:              ; preds = %polly.loop_header683.us.1, %polly.merge669.loopexit.us.1
  br label %polly.loop_header672.us.2

polly.loop_header672.us.2:                        ; preds = %polly.loop_header672.us.2.preheader, %polly.loop_header672.us.2
  %polly.indvar675.us.2 = phi i64 [ %polly.indvar_next676.us.2, %polly.loop_header672.us.2 ], [ 0, %polly.loop_header672.us.2.preheader ]
  %881 = add nuw nsw i64 %polly.indvar675.us.2, %488
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %881, 1000
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %433, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.2 = add nuw nsw i64 %polly.indvar675.us.2, 2400
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.indvar_next676.us.2 = add nuw nsw i64 %polly.indvar675.us.2, 1
  %exitcond1148.2.not = icmp eq i64 %polly.indvar_next676.us.2, 64
  br i1 %exitcond1148.2.not, label %polly.merge669.loopexit.us.2, label %polly.loop_header672.us.2

polly.merge669.loopexit.us.2:                     ; preds = %polly.loop_header672.us.2
  br i1 %polly.loop_guard686.not, label %polly.loop_header672.us.3.preheader, label %polly.loop_header683.us.2

polly.loop_header683.us.2:                        ; preds = %polly.merge669.loopexit.us.2, %polly.loop_header683.us.2
  %polly.indvar687.us.2 = phi i64 [ %polly.indvar_next688.us.2, %polly.loop_header683.us.2 ], [ %546, %polly.merge669.loopexit.us.2 ]
  %882 = add nuw nsw i64 %polly.indvar687.us.2, %488
  %polly.access.mul.call1691.us.2 = mul nsw i64 %882, 1000
  %polly.access.add.call1692.us.2 = add nuw nsw i64 %433, %polly.access.mul.call1691.us.2
  %polly.access.call1693.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us.2
  %polly.access.call1693.load.us.2 = load double, double* %polly.access.call1693.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526695.us.2 = add nuw nsw i64 %polly.indvar687.us.2, 2400
  %polly.access.Packed_MemRef_call1526696.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us.2
  store double %polly.access.call1693.load.us.2, double* %polly.access.Packed_MemRef_call1526696.us.2, align 8
  %polly.indvar_next688.us.2 = add nuw nsw i64 %polly.indvar687.us.2, 1
  %polly.loop_cond689.not.not.us.2 = icmp slt i64 %polly.indvar687.us.2, %549
  br i1 %polly.loop_cond689.not.not.us.2, label %polly.loop_header683.us.2, label %polly.loop_header672.us.3.preheader

polly.loop_header672.us.3.preheader:              ; preds = %polly.loop_header683.us.2, %polly.merge669.loopexit.us.2
  br label %polly.loop_header672.us.3

polly.loop_header672.us.3:                        ; preds = %polly.loop_header672.us.3.preheader, %polly.loop_header672.us.3
  %polly.indvar675.us.3 = phi i64 [ %polly.indvar_next676.us.3, %polly.loop_header672.us.3 ], [ 0, %polly.loop_header672.us.3.preheader ]
  %883 = add nuw nsw i64 %polly.indvar675.us.3, %488
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %883, 1000
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %434, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.3 = add nuw nsw i64 %polly.indvar675.us.3, 3600
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  %polly.indvar_next676.us.3 = add nuw nsw i64 %polly.indvar675.us.3, 1
  %exitcond1148.3.not = icmp eq i64 %polly.indvar_next676.us.3, 64
  br i1 %exitcond1148.3.not, label %polly.merge669.loopexit.us.3, label %polly.loop_header672.us.3

polly.merge669.loopexit.us.3:                     ; preds = %polly.loop_header672.us.3
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header683.us.3

polly.loop_header683.us.3:                        ; preds = %polly.merge669.loopexit.us.3, %polly.loop_header683.us.3
  %polly.indvar687.us.3 = phi i64 [ %polly.indvar_next688.us.3, %polly.loop_header683.us.3 ], [ %546, %polly.merge669.loopexit.us.3 ]
  %884 = add nuw nsw i64 %polly.indvar687.us.3, %488
  %polly.access.mul.call1691.us.3 = mul nsw i64 %884, 1000
  %polly.access.add.call1692.us.3 = add nuw nsw i64 %434, %polly.access.mul.call1691.us.3
  %polly.access.call1693.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us.3
  %polly.access.call1693.load.us.3 = load double, double* %polly.access.call1693.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526695.us.3 = add nuw nsw i64 %polly.indvar687.us.3, 3600
  %polly.access.Packed_MemRef_call1526696.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us.3
  store double %polly.access.call1693.load.us.3, double* %polly.access.Packed_MemRef_call1526696.us.3, align 8
  %polly.indvar_next688.us.3 = add nuw nsw i64 %polly.indvar687.us.3, 1
  %polly.loop_cond689.not.not.us.3 = icmp slt i64 %polly.indvar687.us.3, %549
  br i1 %polly.loop_cond689.not.not.us.3, label %polly.loop_header683.us.3, label %polly.loop_header697.preheader

polly.loop_header704.1:                           ; preds = %polly.loop_exit714, %polly.loop_exit714.1
  %indvar1377 = phi i64 [ %indvar.next1378, %polly.loop_exit714.1 ], [ 0, %polly.loop_exit714 ]
  %indvars.iv1159.1 = phi i64 [ %indvars.iv.next1160.1, %polly.loop_exit714.1 ], [ %541, %polly.loop_exit714 ]
  %polly.indvar708.1 = phi i64 [ %polly.indvar_next709.1, %polly.loop_exit714.1 ], [ %554, %polly.loop_exit714 ]
  %885 = add i64 %510, %indvar1377
  %smin1394 = call i64 @llvm.smin.i64(i64 %885, i64 63)
  %886 = add nsw i64 %smin1394, 1
  %887 = mul nuw nsw i64 %indvar1377, 9600
  %888 = add i64 %517, %887
  %scevgep1379 = getelementptr i8, i8* %call, i64 %888
  %889 = add i64 %518, %887
  %scevgep1380 = getelementptr i8, i8* %call, i64 %889
  %890 = add i64 %520, %indvar1377
  %smin1381 = call i64 @llvm.smin.i64(i64 %890, i64 63)
  %891 = shl nsw i64 %smin1381, 3
  %scevgep1382 = getelementptr i8, i8* %scevgep1380, i64 %891
  %scevgep1385 = getelementptr i8, i8* %scevgep1384, i64 %891
  %smin1161.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1159.1, i64 63)
  %892 = add nsw i64 %polly.indvar708.1, %544
  %polly.loop_guard715.11215 = icmp sgt i64 %892, -1
  br i1 %polly.loop_guard715.11215, label %polly.loop_header712.preheader.1, label %polly.loop_exit714.1

polly.loop_header712.preheader.1:                 ; preds = %polly.loop_header704.1
  %893 = add nuw nsw i64 %polly.indvar708.1, %543
  %polly.access.add.Packed_MemRef_call2528724.1 = add nuw nsw i64 %892, 1200
  %polly.access.Packed_MemRef_call2528725.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.1
  %_p_scalar_726.1 = load double, double* %polly.access.Packed_MemRef_call2528725.1, align 8
  %polly.access.Packed_MemRef_call1526733.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.1
  %_p_scalar_734.1 = load double, double* %polly.access.Packed_MemRef_call1526733.1, align 8
  %894 = mul i64 %893, 9600
  %min.iters.check1395 = icmp ult i64 %886, 4
  br i1 %min.iters.check1395, label %polly.loop_header712.1.preheader, label %vector.memcheck1375

vector.memcheck1375:                              ; preds = %polly.loop_header712.preheader.1
  %bound01386 = icmp ult i8* %scevgep1379, %scevgep1385
  %bound11387 = icmp ult i8* %scevgep1383, %scevgep1382
  %found.conflict1388 = and i1 %bound01386, %bound11387
  br i1 %found.conflict1388, label %polly.loop_header712.1.preheader, label %vector.ph1396

vector.ph1396:                                    ; preds = %vector.memcheck1375
  %n.vec1398 = and i64 %886, -4
  %broadcast.splatinsert1404 = insertelement <4 x double> poison, double %_p_scalar_726.1, i32 0
  %broadcast.splat1405 = shufflevector <4 x double> %broadcast.splatinsert1404, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1407 = insertelement <4 x double> poison, double %_p_scalar_734.1, i32 0
  %broadcast.splat1408 = shufflevector <4 x double> %broadcast.splatinsert1407, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1392

vector.body1392:                                  ; preds = %vector.body1392, %vector.ph1396
  %index1399 = phi i64 [ 0, %vector.ph1396 ], [ %index.next1400, %vector.body1392 ]
  %895 = add nuw nsw i64 %index1399, %488
  %896 = add nuw nsw i64 %index1399, 1200
  %897 = getelementptr double, double* %Packed_MemRef_call1526, i64 %896
  %898 = bitcast double* %897 to <4 x double>*
  %wide.load1403 = load <4 x double>, <4 x double>* %898, align 8, !alias.scope !179
  %899 = fmul fast <4 x double> %broadcast.splat1405, %wide.load1403
  %900 = getelementptr double, double* %Packed_MemRef_call2528, i64 %896
  %901 = bitcast double* %900 to <4 x double>*
  %wide.load1406 = load <4 x double>, <4 x double>* %901, align 8
  %902 = fmul fast <4 x double> %broadcast.splat1408, %wide.load1406
  %903 = shl i64 %895, 3
  %904 = add i64 %903, %894
  %905 = getelementptr i8, i8* %call, i64 %904
  %906 = bitcast i8* %905 to <4 x double>*
  %wide.load1409 = load <4 x double>, <4 x double>* %906, align 8, !alias.scope !182, !noalias !184
  %907 = fadd fast <4 x double> %902, %899
  %908 = fmul fast <4 x double> %907, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %909 = fadd fast <4 x double> %908, %wide.load1409
  %910 = bitcast i8* %905 to <4 x double>*
  store <4 x double> %909, <4 x double>* %910, align 8, !alias.scope !182, !noalias !184
  %index.next1400 = add i64 %index1399, 4
  %911 = icmp eq i64 %index.next1400, %n.vec1398
  br i1 %911, label %middle.block1390, label %vector.body1392, !llvm.loop !185

middle.block1390:                                 ; preds = %vector.body1392
  %cmp.n1402 = icmp eq i64 %886, %n.vec1398
  br i1 %cmp.n1402, label %polly.loop_exit714.1, label %polly.loop_header712.1.preheader

polly.loop_header712.1.preheader:                 ; preds = %vector.memcheck1375, %polly.loop_header712.preheader.1, %middle.block1390
  %polly.indvar716.1.ph = phi i64 [ 0, %vector.memcheck1375 ], [ 0, %polly.loop_header712.preheader.1 ], [ %n.vec1398, %middle.block1390 ]
  br label %polly.loop_header712.1

polly.loop_header712.1:                           ; preds = %polly.loop_header712.1.preheader, %polly.loop_header712.1
  %polly.indvar716.1 = phi i64 [ %polly.indvar_next717.1, %polly.loop_header712.1 ], [ %polly.indvar716.1.ph, %polly.loop_header712.1.preheader ]
  %912 = add nuw nsw i64 %polly.indvar716.1, %488
  %polly.access.add.Packed_MemRef_call1526720.1 = add nuw nsw i64 %polly.indvar716.1, 1200
  %polly.access.Packed_MemRef_call1526721.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.1
  %_p_scalar_722.1 = load double, double* %polly.access.Packed_MemRef_call1526721.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_726.1, %_p_scalar_722.1
  %polly.access.Packed_MemRef_call2528729.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.1
  %_p_scalar_730.1 = load double, double* %polly.access.Packed_MemRef_call2528729.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_734.1, %_p_scalar_730.1
  %913 = shl i64 %912, 3
  %914 = add i64 %913, %894
  %scevgep735.1 = getelementptr i8, i8* %call, i64 %914
  %scevgep735736.1 = bitcast i8* %scevgep735.1 to double*
  %_p_scalar_737.1 = load double, double* %scevgep735736.1, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_737.1
  store double %p_add42.i.1, double* %scevgep735736.1, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next717.1 = add nuw nsw i64 %polly.indvar716.1, 1
  %exitcond1162.1.not = icmp eq i64 %polly.indvar716.1, %smin1161.1
  br i1 %exitcond1162.1.not, label %polly.loop_exit714.1, label %polly.loop_header712.1, !llvm.loop !186

polly.loop_exit714.1:                             ; preds = %polly.loop_header712.1, %middle.block1390, %polly.loop_header704.1
  %polly.indvar_next709.1 = add nuw nsw i64 %polly.indvar708.1, 1
  %polly.loop_cond710.not.not.1 = icmp slt i64 %polly.indvar708.1, %558
  %indvars.iv.next1160.1 = add i64 %indvars.iv1159.1, 1
  %indvar.next1378 = add i64 %indvar1377, 1
  br i1 %polly.loop_cond710.not.not.1, label %polly.loop_header704.1, label %polly.loop_header704.2

polly.loop_header704.2:                           ; preds = %polly.loop_exit714.1, %polly.loop_exit714.2
  %indvar1342 = phi i64 [ %indvar.next1343, %polly.loop_exit714.2 ], [ 0, %polly.loop_exit714.1 ]
  %indvars.iv1159.2 = phi i64 [ %indvars.iv.next1160.2, %polly.loop_exit714.2 ], [ %541, %polly.loop_exit714.1 ]
  %polly.indvar708.2 = phi i64 [ %polly.indvar_next709.2, %polly.loop_exit714.2 ], [ %554, %polly.loop_exit714.1 ]
  %915 = add i64 %525, %indvar1342
  %smin1359 = call i64 @llvm.smin.i64(i64 %915, i64 63)
  %916 = add nsw i64 %smin1359, 1
  %917 = mul nuw nsw i64 %indvar1342, 9600
  %918 = add i64 %532, %917
  %scevgep1344 = getelementptr i8, i8* %call, i64 %918
  %919 = add i64 %533, %917
  %scevgep1345 = getelementptr i8, i8* %call, i64 %919
  %920 = add i64 %535, %indvar1342
  %smin1346 = call i64 @llvm.smin.i64(i64 %920, i64 63)
  %921 = shl nsw i64 %smin1346, 3
  %scevgep1347 = getelementptr i8, i8* %scevgep1345, i64 %921
  %scevgep1350 = getelementptr i8, i8* %scevgep1349, i64 %921
  %smin1161.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1159.2, i64 63)
  %922 = add nsw i64 %polly.indvar708.2, %544
  %polly.loop_guard715.21216 = icmp sgt i64 %922, -1
  br i1 %polly.loop_guard715.21216, label %polly.loop_header712.preheader.2, label %polly.loop_exit714.2

polly.loop_header712.preheader.2:                 ; preds = %polly.loop_header704.2
  %923 = add nuw nsw i64 %polly.indvar708.2, %543
  %polly.access.add.Packed_MemRef_call2528724.2 = add nuw nsw i64 %922, 2400
  %polly.access.Packed_MemRef_call2528725.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.2
  %_p_scalar_726.2 = load double, double* %polly.access.Packed_MemRef_call2528725.2, align 8
  %polly.access.Packed_MemRef_call1526733.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.2
  %_p_scalar_734.2 = load double, double* %polly.access.Packed_MemRef_call1526733.2, align 8
  %924 = mul i64 %923, 9600
  %min.iters.check1360 = icmp ult i64 %916, 4
  br i1 %min.iters.check1360, label %polly.loop_header712.2.preheader, label %vector.memcheck1340

vector.memcheck1340:                              ; preds = %polly.loop_header712.preheader.2
  %bound01351 = icmp ult i8* %scevgep1344, %scevgep1350
  %bound11352 = icmp ult i8* %scevgep1348, %scevgep1347
  %found.conflict1353 = and i1 %bound01351, %bound11352
  br i1 %found.conflict1353, label %polly.loop_header712.2.preheader, label %vector.ph1361

vector.ph1361:                                    ; preds = %vector.memcheck1340
  %n.vec1363 = and i64 %916, -4
  %broadcast.splatinsert1369 = insertelement <4 x double> poison, double %_p_scalar_726.2, i32 0
  %broadcast.splat1370 = shufflevector <4 x double> %broadcast.splatinsert1369, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1372 = insertelement <4 x double> poison, double %_p_scalar_734.2, i32 0
  %broadcast.splat1373 = shufflevector <4 x double> %broadcast.splatinsert1372, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1361
  %index1364 = phi i64 [ 0, %vector.ph1361 ], [ %index.next1365, %vector.body1357 ]
  %925 = add nuw nsw i64 %index1364, %488
  %926 = add nuw nsw i64 %index1364, 2400
  %927 = getelementptr double, double* %Packed_MemRef_call1526, i64 %926
  %928 = bitcast double* %927 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %928, align 8, !alias.scope !187
  %929 = fmul fast <4 x double> %broadcast.splat1370, %wide.load1368
  %930 = getelementptr double, double* %Packed_MemRef_call2528, i64 %926
  %931 = bitcast double* %930 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %931, align 8
  %932 = fmul fast <4 x double> %broadcast.splat1373, %wide.load1371
  %933 = shl i64 %925, 3
  %934 = add i64 %933, %924
  %935 = getelementptr i8, i8* %call, i64 %934
  %936 = bitcast i8* %935 to <4 x double>*
  %wide.load1374 = load <4 x double>, <4 x double>* %936, align 8, !alias.scope !190, !noalias !192
  %937 = fadd fast <4 x double> %932, %929
  %938 = fmul fast <4 x double> %937, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %939 = fadd fast <4 x double> %938, %wide.load1374
  %940 = bitcast i8* %935 to <4 x double>*
  store <4 x double> %939, <4 x double>* %940, align 8, !alias.scope !190, !noalias !192
  %index.next1365 = add i64 %index1364, 4
  %941 = icmp eq i64 %index.next1365, %n.vec1363
  br i1 %941, label %middle.block1355, label %vector.body1357, !llvm.loop !193

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1367 = icmp eq i64 %916, %n.vec1363
  br i1 %cmp.n1367, label %polly.loop_exit714.2, label %polly.loop_header712.2.preheader

polly.loop_header712.2.preheader:                 ; preds = %vector.memcheck1340, %polly.loop_header712.preheader.2, %middle.block1355
  %polly.indvar716.2.ph = phi i64 [ 0, %vector.memcheck1340 ], [ 0, %polly.loop_header712.preheader.2 ], [ %n.vec1363, %middle.block1355 ]
  br label %polly.loop_header712.2

polly.loop_header712.2:                           ; preds = %polly.loop_header712.2.preheader, %polly.loop_header712.2
  %polly.indvar716.2 = phi i64 [ %polly.indvar_next717.2, %polly.loop_header712.2 ], [ %polly.indvar716.2.ph, %polly.loop_header712.2.preheader ]
  %942 = add nuw nsw i64 %polly.indvar716.2, %488
  %polly.access.add.Packed_MemRef_call1526720.2 = add nuw nsw i64 %polly.indvar716.2, 2400
  %polly.access.Packed_MemRef_call1526721.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.2
  %_p_scalar_722.2 = load double, double* %polly.access.Packed_MemRef_call1526721.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_726.2, %_p_scalar_722.2
  %polly.access.Packed_MemRef_call2528729.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.2
  %_p_scalar_730.2 = load double, double* %polly.access.Packed_MemRef_call2528729.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_734.2, %_p_scalar_730.2
  %943 = shl i64 %942, 3
  %944 = add i64 %943, %924
  %scevgep735.2 = getelementptr i8, i8* %call, i64 %944
  %scevgep735736.2 = bitcast i8* %scevgep735.2 to double*
  %_p_scalar_737.2 = load double, double* %scevgep735736.2, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_737.2
  store double %p_add42.i.2, double* %scevgep735736.2, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next717.2 = add nuw nsw i64 %polly.indvar716.2, 1
  %exitcond1162.2.not = icmp eq i64 %polly.indvar716.2, %smin1161.2
  br i1 %exitcond1162.2.not, label %polly.loop_exit714.2, label %polly.loop_header712.2, !llvm.loop !194

polly.loop_exit714.2:                             ; preds = %polly.loop_header712.2, %middle.block1355, %polly.loop_header704.2
  %polly.indvar_next709.2 = add nuw nsw i64 %polly.indvar708.2, 1
  %polly.loop_cond710.not.not.2 = icmp slt i64 %polly.indvar708.2, %558
  %indvars.iv.next1160.2 = add i64 %indvars.iv1159.2, 1
  %indvar.next1343 = add i64 %indvar1342, 1
  br i1 %polly.loop_cond710.not.not.2, label %polly.loop_header704.2, label %polly.loop_header704.3

polly.loop_header704.3:                           ; preds = %polly.loop_exit714.2, %polly.loop_exit714.3
  %indvar1322 = phi i64 [ %indvar.next1323, %polly.loop_exit714.3 ], [ 0, %polly.loop_exit714.2 ]
  %indvars.iv1159.3 = phi i64 [ %indvars.iv.next1160.3, %polly.loop_exit714.3 ], [ %541, %polly.loop_exit714.2 ]
  %polly.indvar708.3 = phi i64 [ %polly.indvar_next709.3, %polly.loop_exit714.3 ], [ %554, %polly.loop_exit714.2 ]
  %945 = add i64 %540, %indvar1322
  %smin1324 = call i64 @llvm.smin.i64(i64 %945, i64 63)
  %946 = add nsw i64 %smin1324, 1
  %smin1161.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1159.3, i64 63)
  %947 = add nsw i64 %polly.indvar708.3, %544
  %polly.loop_guard715.31217 = icmp sgt i64 %947, -1
  br i1 %polly.loop_guard715.31217, label %polly.loop_header712.preheader.3, label %polly.loop_exit714.3

polly.loop_header712.preheader.3:                 ; preds = %polly.loop_header704.3
  %948 = add nuw nsw i64 %polly.indvar708.3, %543
  %polly.access.add.Packed_MemRef_call2528724.3 = add nuw nsw i64 %947, 3600
  %polly.access.Packed_MemRef_call2528725.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.3
  %_p_scalar_726.3 = load double, double* %polly.access.Packed_MemRef_call2528725.3, align 8
  %polly.access.Packed_MemRef_call1526733.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.3
  %_p_scalar_734.3 = load double, double* %polly.access.Packed_MemRef_call1526733.3, align 8
  %949 = mul i64 %948, 9600
  %min.iters.check1325 = icmp ult i64 %946, 4
  br i1 %min.iters.check1325, label %polly.loop_header712.3.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %polly.loop_header712.preheader.3
  %n.vec1328 = and i64 %946, -4
  %broadcast.splatinsert1334 = insertelement <4 x double> poison, double %_p_scalar_726.3, i32 0
  %broadcast.splat1335 = shufflevector <4 x double> %broadcast.splatinsert1334, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_734.3, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1318 ]
  %950 = add nuw nsw i64 %index1329, %488
  %951 = add nuw nsw i64 %index1329, 3600
  %952 = getelementptr double, double* %Packed_MemRef_call1526, i64 %951
  %953 = bitcast double* %952 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %953, align 8
  %954 = fmul fast <4 x double> %broadcast.splat1335, %wide.load1333
  %955 = getelementptr double, double* %Packed_MemRef_call2528, i64 %951
  %956 = bitcast double* %955 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %956, align 8
  %957 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %958 = shl i64 %950, 3
  %959 = add i64 %958, %949
  %960 = getelementptr i8, i8* %call, i64 %959
  %961 = bitcast i8* %960 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %961, align 8, !alias.scope !111, !noalias !113
  %962 = fadd fast <4 x double> %957, %954
  %963 = fmul fast <4 x double> %962, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %964 = fadd fast <4 x double> %963, %wide.load1339
  %965 = bitcast i8* %960 to <4 x double>*
  store <4 x double> %964, <4 x double>* %965, align 8, !alias.scope !111, !noalias !113
  %index.next1330 = add i64 %index1329, 4
  %966 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %966, label %middle.block1316, label %vector.body1318, !llvm.loop !195

middle.block1316:                                 ; preds = %vector.body1318
  %cmp.n1332 = icmp eq i64 %946, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit714.3, label %polly.loop_header712.3.preheader

polly.loop_header712.3.preheader:                 ; preds = %polly.loop_header712.preheader.3, %middle.block1316
  %polly.indvar716.3.ph = phi i64 [ 0, %polly.loop_header712.preheader.3 ], [ %n.vec1328, %middle.block1316 ]
  br label %polly.loop_header712.3

polly.loop_header712.3:                           ; preds = %polly.loop_header712.3.preheader, %polly.loop_header712.3
  %polly.indvar716.3 = phi i64 [ %polly.indvar_next717.3, %polly.loop_header712.3 ], [ %polly.indvar716.3.ph, %polly.loop_header712.3.preheader ]
  %967 = add nuw nsw i64 %polly.indvar716.3, %488
  %polly.access.add.Packed_MemRef_call1526720.3 = add nuw nsw i64 %polly.indvar716.3, 3600
  %polly.access.Packed_MemRef_call1526721.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.3
  %_p_scalar_722.3 = load double, double* %polly.access.Packed_MemRef_call1526721.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_726.3, %_p_scalar_722.3
  %polly.access.Packed_MemRef_call2528729.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.3
  %_p_scalar_730.3 = load double, double* %polly.access.Packed_MemRef_call2528729.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_734.3, %_p_scalar_730.3
  %968 = shl i64 %967, 3
  %969 = add i64 %968, %949
  %scevgep735.3 = getelementptr i8, i8* %call, i64 %969
  %scevgep735736.3 = bitcast i8* %scevgep735.3 to double*
  %_p_scalar_737.3 = load double, double* %scevgep735736.3, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_737.3
  store double %p_add42.i.3, double* %scevgep735736.3, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next717.3 = add nuw nsw i64 %polly.indvar716.3, 1
  %exitcond1162.3.not = icmp eq i64 %polly.indvar716.3, %smin1161.3
  br i1 %exitcond1162.3.not, label %polly.loop_exit714.3, label %polly.loop_header712.3, !llvm.loop !196

polly.loop_exit714.3:                             ; preds = %polly.loop_header712.3, %middle.block1316, %polly.loop_header704.3
  %polly.indvar_next709.3 = add nuw nsw i64 %polly.indvar708.3, 1
  %polly.loop_cond710.not.not.3 = icmp slt i64 %polly.indvar708.3, %558
  %indvars.iv.next1160.3 = add i64 %indvars.iv1159.3, 1
  %indvar.next1323 = add i64 %indvar1322, 1
  br i1 %polly.loop_cond710.not.not.3, label %polly.loop_header704.3, label %polly.loop_exit699
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
