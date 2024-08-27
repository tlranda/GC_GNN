; ModuleID = 'syr2k_exhaustive/mmp_all_XL_494.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_494.c"
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
  %call880 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1732 = bitcast i8* %call1 to double*
  %polly.access.call1741 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2742 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1741, %call2
  %polly.access.call2761 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2761, %call1
  %2 = or i1 %0, %1
  %polly.access.call781 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call781, %call2
  %4 = icmp ule i8* %polly.access.call2761, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call781, %call1
  %8 = icmp ule i8* %polly.access.call1741, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header854, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1201 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1200 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1199 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1198 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1198, %scevgep1201
  %bound1 = icmp ult i8* %scevgep1200, %scevgep1199
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
  br i1 %exitcond18.not.i, label %vector.ph1205, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1205:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1212 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1213 = shufflevector <4 x i64> %broadcast.splatinsert1212, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %vector.ph1205
  %index1206 = phi i64 [ 0, %vector.ph1205 ], [ %index.next1207, %vector.body1204 ]
  %vec.ind1210 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1205 ], [ %vec.ind.next1211, %vector.body1204 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1210, %broadcast.splat1213
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv7.i, i64 %index1206
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1207 = add i64 %index1206, 4
  %vec.ind.next1211 = add <4 x i64> %vec.ind1210, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1207, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1204, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1204
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1205, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit915
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start518, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1268 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1268, label %for.body3.i46.preheader1684, label %vector.ph1269

vector.ph1269:                                    ; preds = %for.body3.i46.preheader
  %n.vec1271 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1269
  %index1272 = phi i64 [ 0, %vector.ph1269 ], [ %index.next1273, %vector.body1267 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i, i64 %index1272
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1273 = add i64 %index1272, 4
  %46 = icmp eq i64 %index.next1273, %n.vec1271
  br i1 %46, label %middle.block1265, label %vector.body1267, !llvm.loop !18

middle.block1265:                                 ; preds = %vector.body1267
  %cmp.n1275 = icmp eq i64 %indvars.iv21.i, %n.vec1271
  br i1 %cmp.n1275, label %for.inc6.i, label %for.body3.i46.preheader1684

for.body3.i46.preheader1684:                      ; preds = %for.body3.i46.preheader, %middle.block1265
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1271, %middle.block1265 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1684, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1684 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1265, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting519
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start306, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1404 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1404, label %for.body3.i60.preheader1682, label %vector.ph1405

vector.ph1405:                                    ; preds = %for.body3.i60.preheader
  %n.vec1407 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1403

vector.body1403:                                  ; preds = %vector.body1403, %vector.ph1405
  %index1408 = phi i64 [ 0, %vector.ph1405 ], [ %index.next1409, %vector.body1403 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i52, i64 %index1408
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1412 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1412, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1409 = add i64 %index1408, 4
  %57 = icmp eq i64 %index.next1409, %n.vec1407
  br i1 %57, label %middle.block1401, label %vector.body1403, !llvm.loop !64

middle.block1401:                                 ; preds = %vector.body1403
  %cmp.n1411 = icmp eq i64 %indvars.iv21.i52, %n.vec1407
  br i1 %cmp.n1411, label %for.inc6.i63, label %for.body3.i60.preheader1682

for.body3.i60.preheader1682:                      ; preds = %for.body3.i60.preheader, %middle.block1401
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1407, %middle.block1401 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1682, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1682 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1401, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1543 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1543, label %for.body3.i99.preheader1680, label %vector.ph1544

vector.ph1544:                                    ; preds = %for.body3.i99.preheader
  %n.vec1546 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1542

vector.body1542:                                  ; preds = %vector.body1542, %vector.ph1544
  %index1547 = phi i64 [ 0, %vector.ph1544 ], [ %index.next1548, %vector.body1542 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i91, i64 %index1547
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1551 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1551, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1548 = add i64 %index1547, 4
  %68 = icmp eq i64 %index.next1548, %n.vec1546
  br i1 %68, label %middle.block1540, label %vector.body1542, !llvm.loop !66

middle.block1540:                                 ; preds = %vector.body1542
  %cmp.n1550 = icmp eq i64 %indvars.iv21.i91, %n.vec1546
  br i1 %cmp.n1550, label %for.inc6.i102, label %for.body3.i99.preheader1680

for.body3.i99.preheader1680:                      ; preds = %for.body3.i99.preheader, %middle.block1540
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1546, %middle.block1540 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1680, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1680 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1540, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1555 = phi i64 [ %indvar.next1556, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1555, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1557 = icmp ult i64 %88, 4
  br i1 %min.iters.check1557, label %polly.loop_header192.preheader, label %vector.ph1558

vector.ph1558:                                    ; preds = %polly.loop_header
  %n.vec1560 = and i64 %88, -4
  br label %vector.body1554

vector.body1554:                                  ; preds = %vector.body1554, %vector.ph1558
  %index1561 = phi i64 [ 0, %vector.ph1558 ], [ %index.next1562, %vector.body1554 ]
  %90 = shl nuw nsw i64 %index1561, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1565 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1565, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1562 = add i64 %index1561, 4
  %95 = icmp eq i64 %index.next1562, %n.vec1560
  br i1 %95, label %middle.block1552, label %vector.body1554, !llvm.loop !79

middle.block1552:                                 ; preds = %vector.body1554
  %cmp.n1564 = icmp eq i64 %88, %n.vec1560
  br i1 %cmp.n1564, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1552
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1560, %middle.block1552 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1552
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1556 = add i64 %indvar1555, 1
  br i1 %exitcond1100.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  %scevgep1592 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1593 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1623 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1624 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1654 = getelementptr i8, i8* %malloccall, i64 8
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
  %exitcond1099.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1099.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = shl nsw i64 %polly.indvar203, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next204, 250
  br i1 %exitcond1098.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %101 = mul nuw nsw i64 %polly.indvar209, 2459648
  %102 = or i64 %101, 8
  %103 = mul nuw nsw i64 %polly.indvar209, 2459648
  %104 = or i64 %103, 8
  %105 = mul nuw nsw i64 %polly.indvar209, 2459648
  %106 = or i64 %105, 8
  %107 = mul nsw i64 %polly.indvar209, -256
  %108 = shl nsw i64 %polly.indvar209, 8
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, -256
  %exitcond1097.not = icmp eq i64 %polly.indvar_next210, 5
  br i1 %exitcond1097.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %109 = add nuw nsw i64 %polly.indvar221, %108
  %polly.access.mul.call2225 = mul nuw nsw i64 %109, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %97, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit220.3
  %indvar1569 = phi i64 [ %indvar.next1570, %polly.loop_exit267 ], [ 0, %polly.loop_exit220.3 ]
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit267 ], [ %indvars.iv1089, %polly.loop_exit220.3 ]
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit267 ], [ 0, %polly.loop_exit220.3 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %416, %polly.loop_exit220.3 ]
  %110 = shl nuw nsw i64 %indvar1569, 5
  %111 = mul nuw nsw i64 %indvar1569, 307200
  %112 = add i64 %101, %111
  %113 = add i64 %102, %111
  %114 = shl nuw nsw i64 %indvar1569, 5
  %115 = shl nuw nsw i64 %indvar1569, 5
  %116 = mul nuw nsw i64 %indvar1569, 307200
  %117 = add i64 %103, %116
  %118 = add i64 %104, %116
  %119 = shl nuw nsw i64 %indvar1569, 5
  %120 = shl nuw nsw i64 %indvar1569, 5
  %121 = mul nuw nsw i64 %indvar1569, 307200
  %122 = add i64 %105, %121
  %123 = add i64 %106, %121
  %124 = shl nuw nsw i64 %indvar1569, 5
  %125 = shl nuw nsw i64 %indvar1569, 5
  %smin1093 = call i64 @llvm.smin.i64(i64 %indvars.iv1091, i64 -1168)
  %126 = add nsw i64 %smin1093, 1199
  %smax = call i64 @llvm.smax.i64(i64 %126, i64 0)
  %127 = shl nsw i64 %polly.indvar231, 5
  %128 = add nsw i64 %127, %107
  %129 = add nsw i64 %128, -1
  %.inv = icmp ugt i64 %128, 255
  %130 = select i1 %.inv, i64 255, i64 %129
  %polly.loop_guard = icmp sgt i64 %130, -1
  %131 = or i64 %128, 31
  %132 = icmp ult i64 %415, %131
  %133 = select i1 %132, i64 %415, i64 %131
  %polly.loop_guard254.not = icmp ugt i64 %128, %133
  br i1 %polly.loop_guard, label %polly.loop_header240.us, label %polly.loop_header228.split

polly.loop_header240.us:                          ; preds = %polly.loop_header228, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header228 ]
  %134 = add nuw nsw i64 %polly.indvar243.us, %108
  %polly.access.mul.call1247.us = mul nuw nsw i64 %134, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %97, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar243.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar243.us, %130
  br i1 %exitcond1082.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %128, %polly.loop_exit242.loopexit.us ]
  %135 = add nuw nsw i64 %polly.indvar255.us, %108
  %polly.access.mul.call1259.us = mul nuw nsw i64 %135, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %97, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp ult i64 %polly.indvar255.us, %133
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_header240.us.1.preheader

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.1.preheader, label %polly.loop_header251.us

polly.loop_header240.us.1.preheader:              ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  br label %polly.loop_header240.us.1

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251

polly.loop_exit267:                               ; preds = %polly.loop_exit281.us.3, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 32
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -32
  %exitcond1096.not = icmp eq i64 %polly.indvar_next232, 38
  %indvar.next1570 = add i64 %indvar1569, 1
  br i1 %exitcond1096.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header265.preheader:                   ; preds = %polly.loop_header251.3, %polly.loop_header251.us.3, %polly.loop_exit242.loopexit.us.3, %polly.loop_header228.split
  %136 = mul nsw i64 %polly.indvar231, -32
  %polly.loop_guard2751187 = icmp sgt i64 %136, -1200
  br i1 %polly.loop_guard2751187, label %polly.loop_header272.us, label %polly.loop_exit267

polly.loop_header272.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit281.us
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit281.us ], [ %indvars.iv1084, %polly.loop_header265.preheader ]
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_exit281.us ], [ 0, %polly.loop_header265.preheader ]
  %137 = add i64 %110, %polly.indvar276.us
  %smin1663 = call i64 @llvm.smin.i64(i64 %137, i64 255)
  %138 = add nuw nsw i64 %smin1663, 1
  %139 = mul nuw nsw i64 %polly.indvar276.us, 9600
  %140 = add i64 %114, %polly.indvar276.us
  %smin1652 = call i64 @llvm.smin.i64(i64 %140, i64 255)
  %141 = shl nuw nsw i64 %smin1652, 3
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1086, i64 255)
  %142 = add nuw nsw i64 %polly.indvar276.us, %128
  %143 = add nuw nsw i64 %polly.indvar276.us, %127
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %142
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1, i64 %142
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %144 = mul nuw nsw i64 %143, 9600
  %min.iters.check1664 = icmp ult i64 %smin1663, 3
  br i1 %min.iters.check1664, label %polly.loop_header279.us.preheader, label %vector.memcheck1649

vector.memcheck1649:                              ; preds = %polly.loop_header272.us
  %scevgep1655 = getelementptr i8, i8* %scevgep1654, i64 %141
  %145 = add i64 %113, %139
  %scevgep1651 = getelementptr i8, i8* %call, i64 %145
  %scevgep1653 = getelementptr i8, i8* %scevgep1651, i64 %141
  %146 = add i64 %112, %139
  %scevgep1650 = getelementptr i8, i8* %call, i64 %146
  %bound01656 = icmp ult i8* %scevgep1650, %scevgep1655
  %bound11657 = icmp ult i8* %malloccall, %scevgep1653
  %found.conflict1658 = and i1 %bound01656, %bound11657
  br i1 %found.conflict1658, label %polly.loop_header279.us.preheader, label %vector.ph1665

vector.ph1665:                                    ; preds = %vector.memcheck1649
  %n.vec1667 = and i64 %138, -4
  %broadcast.splatinsert1673 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1674 = shufflevector <4 x double> %broadcast.splatinsert1673, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1676 = insertelement <4 x double> poison, double %_p_scalar_300.us, i32 0
  %broadcast.splat1677 = shufflevector <4 x double> %broadcast.splatinsert1676, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1662

vector.body1662:                                  ; preds = %vector.body1662, %vector.ph1665
  %index1668 = phi i64 [ 0, %vector.ph1665 ], [ %index.next1669, %vector.body1662 ]
  %147 = add nuw nsw i64 %index1668, %108
  %148 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1668
  %149 = bitcast double* %148 to <4 x double>*
  %wide.load1672 = load <4 x double>, <4 x double>* %149, align 8, !alias.scope !84
  %150 = fmul fast <4 x double> %broadcast.splat1674, %wide.load1672
  %151 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1668
  %152 = bitcast double* %151 to <4 x double>*
  %wide.load1675 = load <4 x double>, <4 x double>* %152, align 8
  %153 = fmul fast <4 x double> %broadcast.splat1677, %wide.load1675
  %154 = shl i64 %147, 3
  %155 = add nuw nsw i64 %154, %144
  %156 = getelementptr i8, i8* %call, i64 %155
  %157 = bitcast i8* %156 to <4 x double>*
  %wide.load1678 = load <4 x double>, <4 x double>* %157, align 8, !alias.scope !87, !noalias !89
  %158 = fadd fast <4 x double> %153, %150
  %159 = fmul fast <4 x double> %158, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %160 = fadd fast <4 x double> %159, %wide.load1678
  %161 = bitcast i8* %156 to <4 x double>*
  store <4 x double> %160, <4 x double>* %161, align 8, !alias.scope !87, !noalias !89
  %index.next1669 = add i64 %index1668, 4
  %162 = icmp eq i64 %index.next1669, %n.vec1667
  br i1 %162, label %middle.block1660, label %vector.body1662, !llvm.loop !90

middle.block1660:                                 ; preds = %vector.body1662
  %cmp.n1671 = icmp eq i64 %138, %n.vec1667
  br i1 %cmp.n1671, label %polly.loop_exit281.us, label %polly.loop_header279.us.preheader

polly.loop_header279.us.preheader:                ; preds = %vector.memcheck1649, %polly.loop_header272.us, %middle.block1660
  %polly.indvar282.us.ph = phi i64 [ 0, %vector.memcheck1649 ], [ 0, %polly.loop_header272.us ], [ %n.vec1667, %middle.block1660 ]
  br label %polly.loop_header279.us

polly.loop_header279.us:                          ; preds = %polly.loop_header279.us.preheader, %polly.loop_header279.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header279.us ], [ %polly.indvar282.us.ph, %polly.loop_header279.us.preheader ]
  %163 = add nuw nsw i64 %polly.indvar282.us, %108
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar282.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar282.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_300.us, %_p_scalar_296.us
  %164 = shl i64 %163, 3
  %165 = add nuw nsw i64 %164, %144
  %scevgep301.us = getelementptr i8, i8* %call, i64 %165
  %scevgep301302.us = bitcast i8* %scevgep301.us to double*
  %_p_scalar_303.us = load double, double* %scevgep301302.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_303.us
  store double %p_add42.i118.us, double* %scevgep301302.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar282.us, %smin
  br i1 %exitcond1088.not, label %polly.loop_exit281.us, label %polly.loop_header279.us, !llvm.loop !91

polly.loop_exit281.us:                            ; preds = %polly.loop_header279.us, %middle.block1660
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar276.us, %smax
  br i1 %exitcond1094.not, label %polly.loop_header272.us.1, label %polly.loop_header272.us

polly.loop_header251:                             ; preds = %polly.loop_header228.split, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %128, %polly.loop_header228.split ]
  %166 = add nuw nsw i64 %polly.indvar255, %108
  %polly.access.mul.call1259 = mul nuw nsw i64 %166, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %97, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp ult i64 %polly.indvar255, %133
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_header251.1

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall310 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1416 = phi i64 [ %indvar.next1417, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %167 = add i64 %indvar1416, 1
  %168 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %168
  %min.iters.check1418 = icmp ult i64 %167, 4
  br i1 %min.iters.check1418, label %polly.loop_header400.preheader, label %vector.ph1419

vector.ph1419:                                    ; preds = %polly.loop_header394
  %n.vec1421 = and i64 %167, -4
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %vector.ph1419
  %index1422 = phi i64 [ 0, %vector.ph1419 ], [ %index.next1423, %vector.body1415 ]
  %169 = shl nuw nsw i64 %index1422, 3
  %170 = getelementptr i8, i8* %scevgep406, i64 %169
  %171 = bitcast i8* %170 to <4 x double>*
  %wide.load1426 = load <4 x double>, <4 x double>* %171, align 8, !alias.scope !92, !noalias !94
  %172 = fmul fast <4 x double> %wide.load1426, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %173 = bitcast i8* %170 to <4 x double>*
  store <4 x double> %172, <4 x double>* %173, align 8, !alias.scope !92, !noalias !94
  %index.next1423 = add i64 %index1422, 4
  %174 = icmp eq i64 %index.next1423, %n.vec1421
  br i1 %174, label %middle.block1413, label %vector.body1415, !llvm.loop !99

middle.block1413:                                 ; preds = %vector.body1415
  %cmp.n1425 = icmp eq i64 %167, %n.vec1421
  br i1 %cmp.n1425, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1413
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1421, %middle.block1413 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1413
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1417 = add i64 %indvar1416, 1
  br i1 %exitcond1126.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  %scevgep1453 = getelementptr i8, i8* %malloccall308, i64 19200
  %scevgep1454 = getelementptr i8, i8* %malloccall308, i64 19208
  %scevgep1484 = getelementptr i8, i8* %malloccall308, i64 9600
  %scevgep1485 = getelementptr i8, i8* %malloccall308, i64 9608
  %scevgep1515 = getelementptr i8, i8* %malloccall308, i64 8
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %175 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %175
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1125.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !100

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %176 = shl nsw i64 %polly.indvar413, 2
  %177 = or i64 %176, 1
  %178 = or i64 %176, 2
  %179 = or i64 %176, 3
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit440
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next414, 250
  br i1 %exitcond1124.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit440, %polly.loop_header410
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit440 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %180 = mul nuw nsw i64 %polly.indvar419, 2459648
  %181 = or i64 %180, 8
  %182 = mul nuw nsw i64 %polly.indvar419, 2459648
  %183 = or i64 %182, 8
  %184 = mul nuw nsw i64 %polly.indvar419, 2459648
  %185 = or i64 %184, 8
  %186 = mul nsw i64 %polly.indvar419, -256
  %187 = shl nsw i64 %polly.indvar419, 8
  br label %polly.loop_header428

polly.loop_exit440:                               ; preds = %polly.loop_exit479
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -256
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -256
  %exitcond1123.not = icmp eq i64 %polly.indvar_next420, 5
  br i1 %exitcond1123.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header416
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %188 = add nuw nsw i64 %polly.indvar431, %187
  %polly.access.mul.call2435 = mul nuw nsw i64 %188, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %176, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !96, !noalias !101
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar431
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1101
  br i1 %exitcond1103.not, label %polly.loop_header428.1, label %polly.loop_header428

polly.loop_header438:                             ; preds = %polly.loop_exit479, %polly.loop_exit430.3
  %indvar1430 = phi i64 [ %indvar.next1431, %polly.loop_exit479 ], [ 0, %polly.loop_exit430.3 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit479 ], [ %indvars.iv1114, %polly.loop_exit430.3 ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit479 ], [ 0, %polly.loop_exit430.3 ]
  %polly.indvar441 = phi i64 [ %polly.indvar_next442, %polly.loop_exit479 ], [ %515, %polly.loop_exit430.3 ]
  %189 = shl nuw nsw i64 %indvar1430, 5
  %190 = mul nuw nsw i64 %indvar1430, 307200
  %191 = add i64 %180, %190
  %192 = add i64 %181, %190
  %193 = shl nuw nsw i64 %indvar1430, 5
  %194 = shl nuw nsw i64 %indvar1430, 5
  %195 = mul nuw nsw i64 %indvar1430, 307200
  %196 = add i64 %182, %195
  %197 = add i64 %183, %195
  %198 = shl nuw nsw i64 %indvar1430, 5
  %199 = shl nuw nsw i64 %indvar1430, 5
  %200 = mul nuw nsw i64 %indvar1430, 307200
  %201 = add i64 %184, %200
  %202 = add i64 %185, %200
  %203 = shl nuw nsw i64 %indvar1430, 5
  %204 = shl nuw nsw i64 %indvar1430, 5
  %smin1118 = call i64 @llvm.smin.i64(i64 %indvars.iv1116, i64 -1168)
  %205 = add nsw i64 %smin1118, 1199
  %smax1119 = call i64 @llvm.smax.i64(i64 %205, i64 0)
  %206 = shl nsw i64 %polly.indvar441, 5
  %207 = add nsw i64 %206, %186
  %208 = add nsw i64 %207, -1
  %.inv934 = icmp ugt i64 %207, 255
  %209 = select i1 %.inv934, i64 255, i64 %208
  %polly.loop_guard454 = icmp sgt i64 %209, -1
  %210 = or i64 %207, 31
  %211 = icmp ult i64 %514, %210
  %212 = select i1 %211, i64 %514, i64 %210
  %polly.loop_guard466.not = icmp ugt i64 %207, %212
  br i1 %polly.loop_guard454, label %polly.loop_header451.us, label %polly.loop_header438.split

polly.loop_header451.us:                          ; preds = %polly.loop_header438, %polly.loop_header451.us
  %polly.indvar455.us = phi i64 [ %polly.indvar_next456.us, %polly.loop_header451.us ], [ 0, %polly.loop_header438 ]
  %213 = add nuw nsw i64 %polly.indvar455.us, %187
  %polly.access.mul.call1459.us = mul nuw nsw i64 %213, 1000
  %polly.access.add.call1460.us = add nuw nsw i64 %176, %polly.access.mul.call1459.us
  %polly.access.call1461.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us
  %polly.access.call1461.load.us = load double, double* %polly.access.call1461.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar455.us
  store double %polly.access.call1461.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.indvar_next456.us = add nuw i64 %polly.indvar455.us, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar455.us, %209
  br i1 %exitcond1106.not, label %polly.loop_exit453.loopexit.us, label %polly.loop_header451.us

polly.loop_header463.us:                          ; preds = %polly.loop_exit453.loopexit.us, %polly.loop_header463.us
  %polly.indvar467.us = phi i64 [ %polly.indvar_next468.us, %polly.loop_header463.us ], [ %207, %polly.loop_exit453.loopexit.us ]
  %214 = add nuw nsw i64 %polly.indvar467.us, %187
  %polly.access.mul.call1471.us = mul nuw nsw i64 %214, 1000
  %polly.access.add.call1472.us = add nuw nsw i64 %176, %polly.access.mul.call1471.us
  %polly.access.call1473.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us
  %polly.access.call1473.load.us = load double, double* %polly.access.call1473.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1309476.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar467.us
  store double %polly.access.call1473.load.us, double* %polly.access.Packed_MemRef_call1309476.us, align 8
  %polly.indvar_next468.us = add nuw nsw i64 %polly.indvar467.us, 1
  %polly.loop_cond469.not.not.us = icmp ult i64 %polly.indvar467.us, %212
  br i1 %polly.loop_cond469.not.not.us, label %polly.loop_header463.us, label %polly.loop_header451.us.1.preheader

polly.loop_exit453.loopexit.us:                   ; preds = %polly.loop_header451.us
  br i1 %polly.loop_guard466.not, label %polly.loop_header451.us.1.preheader, label %polly.loop_header463.us

polly.loop_header451.us.1.preheader:              ; preds = %polly.loop_header463.us, %polly.loop_exit453.loopexit.us
  br label %polly.loop_header451.us.1

polly.loop_header438.split:                       ; preds = %polly.loop_header438
  br i1 %polly.loop_guard466.not, label %polly.loop_header477.preheader, label %polly.loop_header463

polly.loop_exit479:                               ; preds = %polly.loop_exit493.us.3, %polly.loop_header477.preheader
  %polly.indvar_next442 = add nuw nsw i64 %polly.indvar441, 1
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 32
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -32
  %exitcond1122.not = icmp eq i64 %polly.indvar_next442, 38
  %indvar.next1431 = add i64 %indvar1430, 1
  br i1 %exitcond1122.not, label %polly.loop_exit440, label %polly.loop_header438

polly.loop_header477.preheader:                   ; preds = %polly.loop_header463.3, %polly.loop_header463.us.3, %polly.loop_exit453.loopexit.us.3, %polly.loop_header438.split
  %215 = mul nsw i64 %polly.indvar441, -32
  %polly.loop_guard4871188 = icmp sgt i64 %215, -1200
  br i1 %polly.loop_guard4871188, label %polly.loop_header484.us, label %polly.loop_exit479

polly.loop_header484.us:                          ; preds = %polly.loop_header477.preheader, %polly.loop_exit493.us
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit493.us ], [ %indvars.iv1108, %polly.loop_header477.preheader ]
  %polly.indvar488.us = phi i64 [ %polly.indvar_next489.us, %polly.loop_exit493.us ], [ 0, %polly.loop_header477.preheader ]
  %216 = add i64 %189, %polly.indvar488.us
  %smin1524 = call i64 @llvm.smin.i64(i64 %216, i64 255)
  %217 = add nuw nsw i64 %smin1524, 1
  %218 = mul nuw nsw i64 %polly.indvar488.us, 9600
  %219 = add i64 %193, %polly.indvar488.us
  %smin1513 = call i64 @llvm.smin.i64(i64 %219, i64 255)
  %220 = shl nuw nsw i64 %smin1513, 3
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 255)
  %221 = add nuw nsw i64 %polly.indvar488.us, %207
  %222 = add nuw nsw i64 %polly.indvar488.us, %206
  %polly.access.Packed_MemRef_call2311503.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %221
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call2311503.us, align 8
  %polly.access.Packed_MemRef_call1309511.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %221
  %_p_scalar_512.us = load double, double* %polly.access.Packed_MemRef_call1309511.us, align 8
  %223 = mul nuw nsw i64 %222, 9600
  %min.iters.check1525 = icmp ult i64 %smin1524, 3
  br i1 %min.iters.check1525, label %polly.loop_header491.us.preheader, label %vector.memcheck1510

vector.memcheck1510:                              ; preds = %polly.loop_header484.us
  %scevgep1516 = getelementptr i8, i8* %scevgep1515, i64 %220
  %224 = add i64 %192, %218
  %scevgep1512 = getelementptr i8, i8* %call, i64 %224
  %scevgep1514 = getelementptr i8, i8* %scevgep1512, i64 %220
  %225 = add i64 %191, %218
  %scevgep1511 = getelementptr i8, i8* %call, i64 %225
  %bound01517 = icmp ult i8* %scevgep1511, %scevgep1516
  %bound11518 = icmp ult i8* %malloccall308, %scevgep1514
  %found.conflict1519 = and i1 %bound01517, %bound11518
  br i1 %found.conflict1519, label %polly.loop_header491.us.preheader, label %vector.ph1526

vector.ph1526:                                    ; preds = %vector.memcheck1510
  %n.vec1528 = and i64 %217, -4
  %broadcast.splatinsert1534 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1535 = shufflevector <4 x double> %broadcast.splatinsert1534, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1537 = insertelement <4 x double> poison, double %_p_scalar_512.us, i32 0
  %broadcast.splat1538 = shufflevector <4 x double> %broadcast.splatinsert1537, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1523

vector.body1523:                                  ; preds = %vector.body1523, %vector.ph1526
  %index1529 = phi i64 [ 0, %vector.ph1526 ], [ %index.next1530, %vector.body1523 ]
  %226 = add nuw nsw i64 %index1529, %187
  %227 = getelementptr double, double* %Packed_MemRef_call1309, i64 %index1529
  %228 = bitcast double* %227 to <4 x double>*
  %wide.load1533 = load <4 x double>, <4 x double>* %228, align 8, !alias.scope !103
  %229 = fmul fast <4 x double> %broadcast.splat1535, %wide.load1533
  %230 = getelementptr double, double* %Packed_MemRef_call2311, i64 %index1529
  %231 = bitcast double* %230 to <4 x double>*
  %wide.load1536 = load <4 x double>, <4 x double>* %231, align 8
  %232 = fmul fast <4 x double> %broadcast.splat1538, %wide.load1536
  %233 = shl i64 %226, 3
  %234 = add nuw nsw i64 %233, %223
  %235 = getelementptr i8, i8* %call, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  %wide.load1539 = load <4 x double>, <4 x double>* %236, align 8, !alias.scope !106, !noalias !108
  %237 = fadd fast <4 x double> %232, %229
  %238 = fmul fast <4 x double> %237, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %239 = fadd fast <4 x double> %238, %wide.load1539
  %240 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %239, <4 x double>* %240, align 8, !alias.scope !106, !noalias !108
  %index.next1530 = add i64 %index1529, 4
  %241 = icmp eq i64 %index.next1530, %n.vec1528
  br i1 %241, label %middle.block1521, label %vector.body1523, !llvm.loop !109

middle.block1521:                                 ; preds = %vector.body1523
  %cmp.n1532 = icmp eq i64 %217, %n.vec1528
  br i1 %cmp.n1532, label %polly.loop_exit493.us, label %polly.loop_header491.us.preheader

polly.loop_header491.us.preheader:                ; preds = %vector.memcheck1510, %polly.loop_header484.us, %middle.block1521
  %polly.indvar494.us.ph = phi i64 [ 0, %vector.memcheck1510 ], [ 0, %polly.loop_header484.us ], [ %n.vec1528, %middle.block1521 ]
  br label %polly.loop_header491.us

polly.loop_header491.us:                          ; preds = %polly.loop_header491.us.preheader, %polly.loop_header491.us
  %polly.indvar494.us = phi i64 [ %polly.indvar_next495.us, %polly.loop_header491.us ], [ %polly.indvar494.us.ph, %polly.loop_header491.us.preheader ]
  %242 = add nuw nsw i64 %polly.indvar494.us, %187
  %polly.access.Packed_MemRef_call1309499.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar494.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1309499.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %polly.access.Packed_MemRef_call2311507.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar494.us
  %_p_scalar_508.us = load double, double* %polly.access.Packed_MemRef_call2311507.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_512.us, %_p_scalar_508.us
  %243 = shl i64 %242, 3
  %244 = add nuw nsw i64 %243, %223
  %scevgep513.us = getelementptr i8, i8* %call, i64 %244
  %scevgep513514.us = bitcast i8* %scevgep513.us to double*
  %_p_scalar_515.us = load double, double* %scevgep513514.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_515.us
  store double %p_add42.i79.us, double* %scevgep513514.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next495.us = add nuw nsw i64 %polly.indvar494.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar494.us, %smin1112
  br i1 %exitcond1113.not, label %polly.loop_exit493.us, label %polly.loop_header491.us, !llvm.loop !110

polly.loop_exit493.us:                            ; preds = %polly.loop_header491.us, %middle.block1521
  %polly.indvar_next489.us = add nuw nsw i64 %polly.indvar488.us, 1
  %indvars.iv.next1111 = add nuw nsw i64 %indvars.iv1110, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar488.us, %smax1119
  br i1 %exitcond1120.not, label %polly.loop_header484.us.1, label %polly.loop_header484.us

polly.loop_header463:                             ; preds = %polly.loop_header438.split, %polly.loop_header463
  %polly.indvar467 = phi i64 [ %polly.indvar_next468, %polly.loop_header463 ], [ %207, %polly.loop_header438.split ]
  %245 = add nuw nsw i64 %polly.indvar467, %187
  %polly.access.mul.call1471 = mul nuw nsw i64 %245, 1000
  %polly.access.add.call1472 = add nuw nsw i64 %176, %polly.access.mul.call1471
  %polly.access.call1473 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472
  %polly.access.call1473.load = load double, double* %polly.access.call1473, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1309476 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar467
  store double %polly.access.call1473.load, double* %polly.access.Packed_MemRef_call1309476, align 8
  %polly.indvar_next468 = add nuw nsw i64 %polly.indvar467, 1
  %polly.loop_cond469.not.not = icmp ult i64 %polly.indvar467, %212
  br i1 %polly.loop_cond469.not.not, label %polly.loop_header463, label %polly.loop_header463.1

polly.start518:                                   ; preds = %init_array.exit
  %malloccall520 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall522 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header606

polly.exiting519:                                 ; preds = %polly.loop_exit630
  tail call void @free(i8* %malloccall520)
  tail call void @free(i8* %malloccall522)
  br label %kernel_syr2k.exit

polly.loop_header606:                             ; preds = %polly.loop_exit614, %polly.start518
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit614 ], [ 0, %polly.start518 ]
  %polly.indvar609 = phi i64 [ %polly.indvar_next610, %polly.loop_exit614 ], [ 1, %polly.start518 ]
  %246 = add i64 %indvar, 1
  %247 = mul nuw nsw i64 %polly.indvar609, 9600
  %scevgep618 = getelementptr i8, i8* %call, i64 %247
  %min.iters.check1279 = icmp ult i64 %246, 4
  br i1 %min.iters.check1279, label %polly.loop_header612.preheader, label %vector.ph1280

vector.ph1280:                                    ; preds = %polly.loop_header606
  %n.vec1282 = and i64 %246, -4
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1278 ]
  %248 = shl nuw nsw i64 %index1283, 3
  %249 = getelementptr i8, i8* %scevgep618, i64 %248
  %250 = bitcast i8* %249 to <4 x double>*
  %wide.load1287 = load <4 x double>, <4 x double>* %250, align 8, !alias.scope !111, !noalias !113
  %251 = fmul fast <4 x double> %wide.load1287, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %252 = bitcast i8* %249 to <4 x double>*
  store <4 x double> %251, <4 x double>* %252, align 8, !alias.scope !111, !noalias !113
  %index.next1284 = add i64 %index1283, 4
  %253 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %253, label %middle.block1276, label %vector.body1278, !llvm.loop !118

middle.block1276:                                 ; preds = %vector.body1278
  %cmp.n1286 = icmp eq i64 %246, %n.vec1282
  br i1 %cmp.n1286, label %polly.loop_exit614, label %polly.loop_header612.preheader

polly.loop_header612.preheader:                   ; preds = %polly.loop_header606, %middle.block1276
  %polly.indvar615.ph = phi i64 [ 0, %polly.loop_header606 ], [ %n.vec1282, %middle.block1276 ]
  br label %polly.loop_header612

polly.loop_exit614:                               ; preds = %polly.loop_header612, %middle.block1276
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar_next610, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1152.not, label %polly.loop_header622.preheader, label %polly.loop_header606

polly.loop_header622.preheader:                   ; preds = %polly.loop_exit614
  %Packed_MemRef_call1521 = bitcast i8* %malloccall520 to double*
  %Packed_MemRef_call2523 = bitcast i8* %malloccall522 to double*
  %scevgep1314 = getelementptr i8, i8* %malloccall520, i64 19200
  %scevgep1315 = getelementptr i8, i8* %malloccall520, i64 19208
  %scevgep1345 = getelementptr i8, i8* %malloccall520, i64 9600
  %scevgep1346 = getelementptr i8, i8* %malloccall520, i64 9608
  %scevgep1376 = getelementptr i8, i8* %malloccall520, i64 8
  br label %polly.loop_header622

polly.loop_header612:                             ; preds = %polly.loop_header612.preheader, %polly.loop_header612
  %polly.indvar615 = phi i64 [ %polly.indvar_next616, %polly.loop_header612 ], [ %polly.indvar615.ph, %polly.loop_header612.preheader ]
  %254 = shl nuw nsw i64 %polly.indvar615, 3
  %scevgep619 = getelementptr i8, i8* %scevgep618, i64 %254
  %scevgep619620 = bitcast i8* %scevgep619 to double*
  %_p_scalar_621 = load double, double* %scevgep619620, align 8, !alias.scope !111, !noalias !113
  %p_mul.i = fmul fast double %_p_scalar_621, 1.200000e+00
  store double %p_mul.i, double* %scevgep619620, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar_next616, %polly.indvar609
  br i1 %exitcond1151.not, label %polly.loop_exit614, label %polly.loop_header612, !llvm.loop !119

polly.loop_header622:                             ; preds = %polly.loop_header622.preheader, %polly.loop_exit630
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit630 ], [ 0, %polly.loop_header622.preheader ]
  %255 = shl nsw i64 %polly.indvar625, 2
  %256 = or i64 %255, 1
  %257 = or i64 %255, 2
  %258 = or i64 %255, 3
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit652
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar_next626, 250
  br i1 %exitcond1150.not, label %polly.exiting519, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_exit652, %polly.loop_header622
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit652 ], [ 1200, %polly.loop_header622 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %259 = mul nuw nsw i64 %polly.indvar631, 2459648
  %260 = or i64 %259, 8
  %261 = mul nuw nsw i64 %polly.indvar631, 2459648
  %262 = or i64 %261, 8
  %263 = mul nuw nsw i64 %polly.indvar631, 2459648
  %264 = or i64 %263, 8
  %265 = mul nsw i64 %polly.indvar631, -256
  %266 = shl nsw i64 %polly.indvar631, 8
  br label %polly.loop_header640

polly.loop_exit652:                               ; preds = %polly.loop_exit691
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next1128 = add nsw i64 %indvars.iv1127, -256
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -256
  %exitcond1149.not = icmp eq i64 %polly.indvar_next632, 5
  br i1 %exitcond1149.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header640:                             ; preds = %polly.loop_header640, %polly.loop_header628
  %polly.indvar643 = phi i64 [ 0, %polly.loop_header628 ], [ %polly.indvar_next644, %polly.loop_header640 ]
  %267 = add nuw nsw i64 %polly.indvar643, %266
  %polly.access.mul.call2647 = mul nuw nsw i64 %267, 1000
  %polly.access.add.call2648 = add nuw nsw i64 %255, %polly.access.mul.call2647
  %polly.access.call2649 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648
  %polly.access.call2649.load = load double, double* %polly.access.call2649, align 8, !alias.scope !115, !noalias !120
  %polly.access.Packed_MemRef_call2523 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.indvar643
  store double %polly.access.call2649.load, double* %polly.access.Packed_MemRef_call2523, align 8
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next644, %indvars.iv1127
  br i1 %exitcond1129.not, label %polly.loop_header640.1, label %polly.loop_header640

polly.loop_header650:                             ; preds = %polly.loop_exit691, %polly.loop_exit642.3
  %indvar1291 = phi i64 [ %indvar.next1292, %polly.loop_exit691 ], [ 0, %polly.loop_exit642.3 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit691 ], [ %indvars.iv1140, %polly.loop_exit642.3 ]
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit691 ], [ 0, %polly.loop_exit642.3 ]
  %polly.indvar653 = phi i64 [ %polly.indvar_next654, %polly.loop_exit691 ], [ %614, %polly.loop_exit642.3 ]
  %268 = shl nuw nsw i64 %indvar1291, 5
  %269 = mul nuw nsw i64 %indvar1291, 307200
  %270 = add i64 %259, %269
  %271 = add i64 %260, %269
  %272 = shl nuw nsw i64 %indvar1291, 5
  %273 = shl nuw nsw i64 %indvar1291, 5
  %274 = mul nuw nsw i64 %indvar1291, 307200
  %275 = add i64 %261, %274
  %276 = add i64 %262, %274
  %277 = shl nuw nsw i64 %indvar1291, 5
  %278 = shl nuw nsw i64 %indvar1291, 5
  %279 = mul nuw nsw i64 %indvar1291, 307200
  %280 = add i64 %263, %279
  %281 = add i64 %264, %279
  %282 = shl nuw nsw i64 %indvar1291, 5
  %283 = shl nuw nsw i64 %indvar1291, 5
  %smin1144 = call i64 @llvm.smin.i64(i64 %indvars.iv1142, i64 -1168)
  %284 = add nsw i64 %smin1144, 1199
  %smax1145 = call i64 @llvm.smax.i64(i64 %284, i64 0)
  %285 = shl nsw i64 %polly.indvar653, 5
  %286 = add nsw i64 %285, %265
  %287 = add nsw i64 %286, -1
  %.inv935 = icmp ugt i64 %286, 255
  %288 = select i1 %.inv935, i64 255, i64 %287
  %polly.loop_guard666 = icmp sgt i64 %288, -1
  %289 = or i64 %286, 31
  %290 = icmp ult i64 %613, %289
  %291 = select i1 %290, i64 %613, i64 %289
  %polly.loop_guard678.not = icmp ugt i64 %286, %291
  br i1 %polly.loop_guard666, label %polly.loop_header663.us, label %polly.loop_header650.split

polly.loop_header663.us:                          ; preds = %polly.loop_header650, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header650 ]
  %292 = add nuw nsw i64 %polly.indvar667.us, %266
  %polly.access.mul.call1671.us = mul nuw nsw i64 %292, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %255, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1521.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar667.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1521.us, align 8
  %polly.indvar_next668.us = add nuw i64 %polly.indvar667.us, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar667.us, %288
  br i1 %exitcond1132.not, label %polly.loop_exit665.loopexit.us, label %polly.loop_header663.us

polly.loop_header675.us:                          ; preds = %polly.loop_exit665.loopexit.us, %polly.loop_header675.us
  %polly.indvar679.us = phi i64 [ %polly.indvar_next680.us, %polly.loop_header675.us ], [ %286, %polly.loop_exit665.loopexit.us ]
  %293 = add nuw nsw i64 %polly.indvar679.us, %266
  %polly.access.mul.call1683.us = mul nuw nsw i64 %293, 1000
  %polly.access.add.call1684.us = add nuw nsw i64 %255, %polly.access.mul.call1683.us
  %polly.access.call1685.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us
  %polly.access.call1685.load.us = load double, double* %polly.access.call1685.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1521688.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar679.us
  store double %polly.access.call1685.load.us, double* %polly.access.Packed_MemRef_call1521688.us, align 8
  %polly.indvar_next680.us = add nuw nsw i64 %polly.indvar679.us, 1
  %polly.loop_cond681.not.not.us = icmp ult i64 %polly.indvar679.us, %291
  br i1 %polly.loop_cond681.not.not.us, label %polly.loop_header675.us, label %polly.loop_header663.us.1.preheader

polly.loop_exit665.loopexit.us:                   ; preds = %polly.loop_header663.us
  br i1 %polly.loop_guard678.not, label %polly.loop_header663.us.1.preheader, label %polly.loop_header675.us

polly.loop_header663.us.1.preheader:              ; preds = %polly.loop_header675.us, %polly.loop_exit665.loopexit.us
  br label %polly.loop_header663.us.1

polly.loop_header650.split:                       ; preds = %polly.loop_header650
  br i1 %polly.loop_guard678.not, label %polly.loop_header689.preheader, label %polly.loop_header675

polly.loop_exit691:                               ; preds = %polly.loop_exit705.us.3, %polly.loop_header689.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %indvars.iv.next1135 = add nuw nsw i64 %indvars.iv1134, 32
  %indvars.iv.next1143 = add nsw i64 %indvars.iv1142, -32
  %exitcond1148.not = icmp eq i64 %polly.indvar_next654, 38
  %indvar.next1292 = add i64 %indvar1291, 1
  br i1 %exitcond1148.not, label %polly.loop_exit652, label %polly.loop_header650

polly.loop_header689.preheader:                   ; preds = %polly.loop_header675.3, %polly.loop_header675.us.3, %polly.loop_exit665.loopexit.us.3, %polly.loop_header650.split
  %294 = mul nsw i64 %polly.indvar653, -32
  %polly.loop_guard6991189 = icmp sgt i64 %294, -1200
  br i1 %polly.loop_guard6991189, label %polly.loop_header696.us, label %polly.loop_exit691

polly.loop_header696.us:                          ; preds = %polly.loop_header689.preheader, %polly.loop_exit705.us
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %polly.loop_exit705.us ], [ %indvars.iv1134, %polly.loop_header689.preheader ]
  %polly.indvar700.us = phi i64 [ %polly.indvar_next701.us, %polly.loop_exit705.us ], [ 0, %polly.loop_header689.preheader ]
  %295 = add i64 %268, %polly.indvar700.us
  %smin1385 = call i64 @llvm.smin.i64(i64 %295, i64 255)
  %296 = add nuw nsw i64 %smin1385, 1
  %297 = mul nuw nsw i64 %polly.indvar700.us, 9600
  %298 = add i64 %272, %polly.indvar700.us
  %smin1374 = call i64 @llvm.smin.i64(i64 %298, i64 255)
  %299 = shl nuw nsw i64 %smin1374, 3
  %smin1138 = call i64 @llvm.smin.i64(i64 %indvars.iv1136, i64 255)
  %300 = add nuw nsw i64 %polly.indvar700.us, %286
  %301 = add nuw nsw i64 %polly.indvar700.us, %285
  %polly.access.Packed_MemRef_call2523715.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %300
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call2523715.us, align 8
  %polly.access.Packed_MemRef_call1521723.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %300
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call1521723.us, align 8
  %302 = mul nuw nsw i64 %301, 9600
  %min.iters.check1386 = icmp ult i64 %smin1385, 3
  br i1 %min.iters.check1386, label %polly.loop_header703.us.preheader, label %vector.memcheck1371

vector.memcheck1371:                              ; preds = %polly.loop_header696.us
  %scevgep1377 = getelementptr i8, i8* %scevgep1376, i64 %299
  %303 = add i64 %271, %297
  %scevgep1373 = getelementptr i8, i8* %call, i64 %303
  %scevgep1375 = getelementptr i8, i8* %scevgep1373, i64 %299
  %304 = add i64 %270, %297
  %scevgep1372 = getelementptr i8, i8* %call, i64 %304
  %bound01378 = icmp ult i8* %scevgep1372, %scevgep1377
  %bound11379 = icmp ult i8* %malloccall520, %scevgep1375
  %found.conflict1380 = and i1 %bound01378, %bound11379
  br i1 %found.conflict1380, label %polly.loop_header703.us.preheader, label %vector.ph1387

vector.ph1387:                                    ; preds = %vector.memcheck1371
  %n.vec1389 = and i64 %296, -4
  %broadcast.splatinsert1395 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1396 = shufflevector <4 x double> %broadcast.splatinsert1395, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1398 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1399 = shufflevector <4 x double> %broadcast.splatinsert1398, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %vector.ph1387
  %index1390 = phi i64 [ 0, %vector.ph1387 ], [ %index.next1391, %vector.body1384 ]
  %305 = add nuw nsw i64 %index1390, %266
  %306 = getelementptr double, double* %Packed_MemRef_call1521, i64 %index1390
  %307 = bitcast double* %306 to <4 x double>*
  %wide.load1394 = load <4 x double>, <4 x double>* %307, align 8, !alias.scope !122
  %308 = fmul fast <4 x double> %broadcast.splat1396, %wide.load1394
  %309 = getelementptr double, double* %Packed_MemRef_call2523, i64 %index1390
  %310 = bitcast double* %309 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %310, align 8
  %311 = fmul fast <4 x double> %broadcast.splat1399, %wide.load1397
  %312 = shl i64 %305, 3
  %313 = add nuw nsw i64 %312, %302
  %314 = getelementptr i8, i8* %call, i64 %313
  %315 = bitcast i8* %314 to <4 x double>*
  %wide.load1400 = load <4 x double>, <4 x double>* %315, align 8, !alias.scope !125, !noalias !127
  %316 = fadd fast <4 x double> %311, %308
  %317 = fmul fast <4 x double> %316, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %318 = fadd fast <4 x double> %317, %wide.load1400
  %319 = bitcast i8* %314 to <4 x double>*
  store <4 x double> %318, <4 x double>* %319, align 8, !alias.scope !125, !noalias !127
  %index.next1391 = add i64 %index1390, 4
  %320 = icmp eq i64 %index.next1391, %n.vec1389
  br i1 %320, label %middle.block1382, label %vector.body1384, !llvm.loop !128

middle.block1382:                                 ; preds = %vector.body1384
  %cmp.n1393 = icmp eq i64 %296, %n.vec1389
  br i1 %cmp.n1393, label %polly.loop_exit705.us, label %polly.loop_header703.us.preheader

polly.loop_header703.us.preheader:                ; preds = %vector.memcheck1371, %polly.loop_header696.us, %middle.block1382
  %polly.indvar706.us.ph = phi i64 [ 0, %vector.memcheck1371 ], [ 0, %polly.loop_header696.us ], [ %n.vec1389, %middle.block1382 ]
  br label %polly.loop_header703.us

polly.loop_header703.us:                          ; preds = %polly.loop_header703.us.preheader, %polly.loop_header703.us
  %polly.indvar706.us = phi i64 [ %polly.indvar_next707.us, %polly.loop_header703.us ], [ %polly.indvar706.us.ph, %polly.loop_header703.us.preheader ]
  %321 = add nuw nsw i64 %polly.indvar706.us, %266
  %polly.access.Packed_MemRef_call1521711.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar706.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call1521711.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %polly.access.Packed_MemRef_call2523719.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.indvar706.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call2523719.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %322 = shl i64 %321, 3
  %323 = add nuw nsw i64 %322, %302
  %scevgep725.us = getelementptr i8, i8* %call, i64 %323
  %scevgep725726.us = bitcast i8* %scevgep725.us to double*
  %_p_scalar_727.us = load double, double* %scevgep725726.us, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_727.us
  store double %p_add42.i.us, double* %scevgep725726.us, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next707.us = add nuw nsw i64 %polly.indvar706.us, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar706.us, %smin1138
  br i1 %exitcond1139.not, label %polly.loop_exit705.us, label %polly.loop_header703.us, !llvm.loop !129

polly.loop_exit705.us:                            ; preds = %polly.loop_header703.us, %middle.block1382
  %polly.indvar_next701.us = add nuw nsw i64 %polly.indvar700.us, 1
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar700.us, %smax1145
  br i1 %exitcond1146.not, label %polly.loop_header696.us.1, label %polly.loop_header696.us

polly.loop_header675:                             ; preds = %polly.loop_header650.split, %polly.loop_header675
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_header675 ], [ %286, %polly.loop_header650.split ]
  %324 = add nuw nsw i64 %polly.indvar679, %266
  %polly.access.mul.call1683 = mul nuw nsw i64 %324, 1000
  %polly.access.add.call1684 = add nuw nsw i64 %255, %polly.access.mul.call1683
  %polly.access.call1685 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684
  %polly.access.call1685.load = load double, double* %polly.access.call1685, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1521688 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar679
  store double %polly.access.call1685.load, double* %polly.access.Packed_MemRef_call1521688, align 8
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %polly.loop_cond681.not.not = icmp ult i64 %polly.indvar679, %291
  br i1 %polly.loop_cond681.not.not, label %polly.loop_header675, label %polly.loop_header675.1

polly.loop_header854:                             ; preds = %entry, %polly.loop_exit862
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit862 ], [ 0, %entry ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %entry ]
  %smin1179 = call i64 @llvm.smin.i64(i64 %indvars.iv1177, i64 -1168)
  %325 = shl nsw i64 %polly.indvar857, 5
  %326 = add nsw i64 %smin1179, 1199
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next858, 38
  br i1 %exitcond1182.not, label %polly.loop_header881, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit868 ], [ 0, %polly.loop_header854 ]
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_exit868 ], [ 0, %polly.loop_header854 ]
  %327 = mul nsw i64 %polly.indvar863, -32
  %smin1217 = call i64 @llvm.smin.i64(i64 %327, i64 -1168)
  %328 = add nsw i64 %smin1217, 1200
  %smin1175 = call i64 @llvm.smin.i64(i64 %indvars.iv1173, i64 -1168)
  %329 = shl nsw i64 %polly.indvar863, 5
  %330 = add nsw i64 %smin1175, 1199
  br label %polly.loop_header866

polly.loop_exit868:                               ; preds = %polly.loop_exit874
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %indvars.iv.next1174 = add nsw i64 %indvars.iv1173, -32
  %exitcond1181.not = icmp eq i64 %polly.indvar_next864, 38
  br i1 %exitcond1181.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_exit874, %polly.loop_header860
  %polly.indvar869 = phi i64 [ 0, %polly.loop_header860 ], [ %polly.indvar_next870, %polly.loop_exit874 ]
  %331 = add nuw nsw i64 %polly.indvar869, %325
  %332 = trunc i64 %331 to i32
  %333 = mul nuw nsw i64 %331, 9600
  %min.iters.check = icmp eq i64 %328, 0
  br i1 %min.iters.check, label %polly.loop_header872, label %vector.ph1218

vector.ph1218:                                    ; preds = %polly.loop_header866
  %broadcast.splatinsert1225 = insertelement <4 x i64> poison, i64 %329, i32 0
  %broadcast.splat1226 = shufflevector <4 x i64> %broadcast.splatinsert1225, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1227 = insertelement <4 x i32> poison, i32 %332, i32 0
  %broadcast.splat1228 = shufflevector <4 x i32> %broadcast.splatinsert1227, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %vector.ph1218
  %index1219 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1220, %vector.body1216 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1218 ], [ %vec.ind.next1224, %vector.body1216 ]
  %334 = add nuw nsw <4 x i64> %vec.ind1223, %broadcast.splat1226
  %335 = trunc <4 x i64> %334 to <4 x i32>
  %336 = mul <4 x i32> %broadcast.splat1228, %335
  %337 = add <4 x i32> %336, <i32 3, i32 3, i32 3, i32 3>
  %338 = urem <4 x i32> %337, <i32 1200, i32 1200, i32 1200, i32 1200>
  %339 = sitofp <4 x i32> %338 to <4 x double>
  %340 = fmul fast <4 x double> %339, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %341 = extractelement <4 x i64> %334, i32 0
  %342 = shl i64 %341, 3
  %343 = add nuw nsw i64 %342, %333
  %344 = getelementptr i8, i8* %call, i64 %343
  %345 = bitcast i8* %344 to <4 x double>*
  store <4 x double> %340, <4 x double>* %345, align 8, !alias.scope !130, !noalias !132
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %346 = icmp eq i64 %index.next1220, %328
  br i1 %346, label %polly.loop_exit874, label %vector.body1216, !llvm.loop !135

polly.loop_exit874:                               ; preds = %vector.body1216, %polly.loop_header872
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar869, %326
  br i1 %exitcond1180.not, label %polly.loop_exit868, label %polly.loop_header866

polly.loop_header872:                             ; preds = %polly.loop_header866, %polly.loop_header872
  %polly.indvar875 = phi i64 [ %polly.indvar_next876, %polly.loop_header872 ], [ 0, %polly.loop_header866 ]
  %347 = add nuw nsw i64 %polly.indvar875, %329
  %348 = trunc i64 %347 to i32
  %349 = mul i32 %348, %332
  %350 = add i32 %349, 3
  %351 = urem i32 %350, 1200
  %p_conv31.i = sitofp i32 %351 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %352 = shl i64 %347, 3
  %353 = add nuw nsw i64 %352, %333
  %scevgep878 = getelementptr i8, i8* %call, i64 %353
  %scevgep878879 = bitcast i8* %scevgep878 to double*
  store double %p_div33.i, double* %scevgep878879, align 8, !alias.scope !130, !noalias !132
  %polly.indvar_next876 = add nuw nsw i64 %polly.indvar875, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar875, %330
  br i1 %exitcond1176.not, label %polly.loop_exit874, label %polly.loop_header872, !llvm.loop !136

polly.loop_header881:                             ; preds = %polly.loop_exit862, %polly.loop_exit889
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %polly.loop_exit889 ], [ 0, %polly.loop_exit862 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_exit862 ]
  %smin1169 = call i64 @llvm.smin.i64(i64 %indvars.iv1167, i64 -1168)
  %354 = shl nsw i64 %polly.indvar884, 5
  %355 = add nsw i64 %smin1169, 1199
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1168 = add nsw i64 %indvars.iv1167, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next885, 38
  br i1 %exitcond1172.not, label %polly.loop_header907, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %356 = mul nsw i64 %polly.indvar890, -32
  %smin1232 = call i64 @llvm.smin.i64(i64 %356, i64 -968)
  %357 = add nsw i64 %smin1232, 1000
  %smin1165 = call i64 @llvm.smin.i64(i64 %indvars.iv1163, i64 -968)
  %358 = shl nsw i64 %polly.indvar890, 5
  %359 = add nsw i64 %smin1165, 999
  br label %polly.loop_header893

polly.loop_exit895:                               ; preds = %polly.loop_exit901
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %indvars.iv.next1164 = add nsw i64 %indvars.iv1163, -32
  %exitcond1171.not = icmp eq i64 %polly.indvar_next891, 32
  br i1 %exitcond1171.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_exit901, %polly.loop_header887
  %polly.indvar896 = phi i64 [ 0, %polly.loop_header887 ], [ %polly.indvar_next897, %polly.loop_exit901 ]
  %360 = add nuw nsw i64 %polly.indvar896, %354
  %361 = trunc i64 %360 to i32
  %362 = mul nuw nsw i64 %360, 8000
  %min.iters.check1233 = icmp eq i64 %357, 0
  br i1 %min.iters.check1233, label %polly.loop_header899, label %vector.ph1234

vector.ph1234:                                    ; preds = %polly.loop_header893
  %broadcast.splatinsert1243 = insertelement <4 x i64> poison, i64 %358, i32 0
  %broadcast.splat1244 = shufflevector <4 x i64> %broadcast.splatinsert1243, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1245 = insertelement <4 x i32> poison, i32 %361, i32 0
  %broadcast.splat1246 = shufflevector <4 x i32> %broadcast.splatinsert1245, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1231 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1234 ], [ %vec.ind.next1242, %vector.body1231 ]
  %363 = add nuw nsw <4 x i64> %vec.ind1241, %broadcast.splat1244
  %364 = trunc <4 x i64> %363 to <4 x i32>
  %365 = mul <4 x i32> %broadcast.splat1246, %364
  %366 = add <4 x i32> %365, <i32 2, i32 2, i32 2, i32 2>
  %367 = urem <4 x i32> %366, <i32 1000, i32 1000, i32 1000, i32 1000>
  %368 = sitofp <4 x i32> %367 to <4 x double>
  %369 = fmul fast <4 x double> %368, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %370 = extractelement <4 x i64> %363, i32 0
  %371 = shl i64 %370, 3
  %372 = add nuw nsw i64 %371, %362
  %373 = getelementptr i8, i8* %call2, i64 %372
  %374 = bitcast i8* %373 to <4 x double>*
  store <4 x double> %369, <4 x double>* %374, align 8, !alias.scope !134, !noalias !137
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %375 = icmp eq i64 %index.next1238, %357
  br i1 %375, label %polly.loop_exit901, label %vector.body1231, !llvm.loop !138

polly.loop_exit901:                               ; preds = %vector.body1231, %polly.loop_header899
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar896, %355
  br i1 %exitcond1170.not, label %polly.loop_exit895, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_header893, %polly.loop_header899
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_header899 ], [ 0, %polly.loop_header893 ]
  %376 = add nuw nsw i64 %polly.indvar902, %358
  %377 = trunc i64 %376 to i32
  %378 = mul i32 %377, %361
  %379 = add i32 %378, 2
  %380 = urem i32 %379, 1000
  %p_conv10.i = sitofp i32 %380 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %381 = shl i64 %376, 3
  %382 = add nuw nsw i64 %381, %362
  %scevgep905 = getelementptr i8, i8* %call2, i64 %382
  %scevgep905906 = bitcast i8* %scevgep905 to double*
  store double %p_div12.i, double* %scevgep905906, align 8, !alias.scope !134, !noalias !137
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar902, %359
  br i1 %exitcond1166.not, label %polly.loop_exit901, label %polly.loop_header899, !llvm.loop !139

polly.loop_header907:                             ; preds = %polly.loop_exit889, %polly.loop_exit915
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit915 ], [ 0, %polly.loop_exit889 ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_exit889 ]
  %smin1159 = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 -1168)
  %383 = shl nsw i64 %polly.indvar910, 5
  %384 = add nsw i64 %smin1159, 1199
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1158 = add nsw i64 %indvars.iv1157, -32
  %exitcond1162.not = icmp eq i64 %polly.indvar_next911, 38
  br i1 %exitcond1162.not, label %init_array.exit, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %385 = mul nsw i64 %polly.indvar916, -32
  %smin1250 = call i64 @llvm.smin.i64(i64 %385, i64 -968)
  %386 = add nsw i64 %smin1250, 1000
  %smin1155 = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 -968)
  %387 = shl nsw i64 %polly.indvar916, 5
  %388 = add nsw i64 %smin1155, 999
  br label %polly.loop_header919

polly.loop_exit921:                               ; preds = %polly.loop_exit927
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -32
  %exitcond1161.not = icmp eq i64 %polly.indvar_next917, 32
  br i1 %exitcond1161.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_exit927, %polly.loop_header913
  %polly.indvar922 = phi i64 [ 0, %polly.loop_header913 ], [ %polly.indvar_next923, %polly.loop_exit927 ]
  %389 = add nuw nsw i64 %polly.indvar922, %383
  %390 = trunc i64 %389 to i32
  %391 = mul nuw nsw i64 %389, 8000
  %min.iters.check1251 = icmp eq i64 %386, 0
  br i1 %min.iters.check1251, label %polly.loop_header925, label %vector.ph1252

vector.ph1252:                                    ; preds = %polly.loop_header919
  %broadcast.splatinsert1261 = insertelement <4 x i64> poison, i64 %387, i32 0
  %broadcast.splat1262 = shufflevector <4 x i64> %broadcast.splatinsert1261, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1263 = insertelement <4 x i32> poison, i32 %390, i32 0
  %broadcast.splat1264 = shufflevector <4 x i32> %broadcast.splatinsert1263, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1249 ]
  %vec.ind1259 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1252 ], [ %vec.ind.next1260, %vector.body1249 ]
  %392 = add nuw nsw <4 x i64> %vec.ind1259, %broadcast.splat1262
  %393 = trunc <4 x i64> %392 to <4 x i32>
  %394 = mul <4 x i32> %broadcast.splat1264, %393
  %395 = add <4 x i32> %394, <i32 1, i32 1, i32 1, i32 1>
  %396 = urem <4 x i32> %395, <i32 1200, i32 1200, i32 1200, i32 1200>
  %397 = sitofp <4 x i32> %396 to <4 x double>
  %398 = fmul fast <4 x double> %397, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %399 = extractelement <4 x i64> %392, i32 0
  %400 = shl i64 %399, 3
  %401 = add nuw nsw i64 %400, %391
  %402 = getelementptr i8, i8* %call1, i64 %401
  %403 = bitcast i8* %402 to <4 x double>*
  store <4 x double> %398, <4 x double>* %403, align 8, !alias.scope !133, !noalias !140
  %index.next1256 = add i64 %index1255, 4
  %vec.ind.next1260 = add <4 x i64> %vec.ind1259, <i64 4, i64 4, i64 4, i64 4>
  %404 = icmp eq i64 %index.next1256, %386
  br i1 %404, label %polly.loop_exit927, label %vector.body1249, !llvm.loop !141

polly.loop_exit927:                               ; preds = %vector.body1249, %polly.loop_header925
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar922, %384
  br i1 %exitcond1160.not, label %polly.loop_exit921, label %polly.loop_header919

polly.loop_header925:                             ; preds = %polly.loop_header919, %polly.loop_header925
  %polly.indvar928 = phi i64 [ %polly.indvar_next929, %polly.loop_header925 ], [ 0, %polly.loop_header919 ]
  %405 = add nuw nsw i64 %polly.indvar928, %387
  %406 = trunc i64 %405 to i32
  %407 = mul i32 %406, %390
  %408 = add i32 %407, 1
  %409 = urem i32 %408, 1200
  %p_conv.i = sitofp i32 %409 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %410 = shl i64 %405, 3
  %411 = add nuw nsw i64 %410, %391
  %scevgep932 = getelementptr i8, i8* %call1, i64 %411
  %scevgep932933 = bitcast i8* %scevgep932 to double*
  store double %p_div.i, double* %scevgep932933, align 8, !alias.scope !133, !noalias !140
  %polly.indvar_next929 = add nuw nsw i64 %polly.indvar928, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar928, %388
  br i1 %exitcond1156.not, label %polly.loop_exit927, label %polly.loop_header925, !llvm.loop !142

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %412 = add nuw nsw i64 %polly.indvar221.1, %108
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %412, 1000
  %polly.access.add.call2226.1 = add nuw nsw i64 %98, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, 1200
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header218.2, label %polly.loop_header218.1

polly.loop_header218.2:                           ; preds = %polly.loop_header218.1, %polly.loop_header218.2
  %polly.indvar221.2 = phi i64 [ %polly.indvar_next222.2, %polly.loop_header218.2 ], [ 0, %polly.loop_header218.1 ]
  %413 = add nuw nsw i64 %polly.indvar221.2, %108
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %413, 1000
  %polly.access.add.call2226.2 = add nuw nsw i64 %99, %polly.access.mul.call2225.2
  %polly.access.call2227.2 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226.2
  %polly.access.call2227.load.2 = load double, double* %polly.access.call2227.2, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar221.2, 2400
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2227.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next222.2 = add nuw nsw i64 %polly.indvar221.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next222.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header218.3, label %polly.loop_header218.2

polly.loop_header218.3:                           ; preds = %polly.loop_header218.2, %polly.loop_header218.3
  %polly.indvar221.3 = phi i64 [ %polly.indvar_next222.3, %polly.loop_header218.3 ], [ 0, %polly.loop_header218.2 ]
  %414 = add nuw nsw i64 %polly.indvar221.3, %108
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %414, 1000
  %polly.access.add.call2226.3 = add nuw nsw i64 %100, %polly.access.mul.call2225.3
  %polly.access.call2227.3 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226.3
  %polly.access.call2227.load.3 = load double, double* %polly.access.call2227.3, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar221.3, 3600
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2227.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next222.3 = add nuw nsw i64 %polly.indvar221.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next222.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit220.3, label %polly.loop_header218.3

polly.loop_exit220.3:                             ; preds = %polly.loop_header218.3
  %415 = add nsw i64 %107, 1199
  %416 = shl nsw i64 %polly.indvar209, 3
  br label %polly.loop_header228

polly.loop_header251.1:                           ; preds = %polly.loop_header251, %polly.loop_header251.1
  %polly.indvar255.1 = phi i64 [ %polly.indvar_next256.1, %polly.loop_header251.1 ], [ %128, %polly.loop_header251 ]
  %417 = add nuw nsw i64 %polly.indvar255.1, %108
  %polly.access.mul.call1259.1 = mul nuw nsw i64 %417, 1000
  %polly.access.add.call1260.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar255.1, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.indvar_next256.1 = add nuw nsw i64 %polly.indvar255.1, 1
  %polly.loop_cond257.not.not.1 = icmp ult i64 %polly.indvar255.1, %133
  br i1 %polly.loop_cond257.not.not.1, label %polly.loop_header251.1, label %polly.loop_header251.2

polly.loop_header251.2:                           ; preds = %polly.loop_header251.1, %polly.loop_header251.2
  %polly.indvar255.2 = phi i64 [ %polly.indvar_next256.2, %polly.loop_header251.2 ], [ %128, %polly.loop_header251.1 ]
  %418 = add nuw nsw i64 %polly.indvar255.2, %108
  %polly.access.mul.call1259.2 = mul nuw nsw i64 %418, 1000
  %polly.access.add.call1260.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.indvar255.2, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.indvar_next256.2 = add nuw nsw i64 %polly.indvar255.2, 1
  %polly.loop_cond257.not.not.2 = icmp ult i64 %polly.indvar255.2, %133
  br i1 %polly.loop_cond257.not.not.2, label %polly.loop_header251.2, label %polly.loop_header251.3

polly.loop_header251.3:                           ; preds = %polly.loop_header251.2, %polly.loop_header251.3
  %polly.indvar255.3 = phi i64 [ %polly.indvar_next256.3, %polly.loop_header251.3 ], [ %128, %polly.loop_header251.2 ]
  %419 = add nuw nsw i64 %polly.indvar255.3, %108
  %polly.access.mul.call1259.3 = mul nuw nsw i64 %419, 1000
  %polly.access.add.call1260.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.indvar255.3, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  %polly.indvar_next256.3 = add nuw nsw i64 %polly.indvar255.3, 1
  %polly.loop_cond257.not.not.3 = icmp ult i64 %polly.indvar255.3, %133
  br i1 %polly.loop_cond257.not.not.3, label %polly.loop_header251.3, label %polly.loop_header265.preheader

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1.preheader, %polly.loop_header240.us.1
  %polly.indvar243.us.1 = phi i64 [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ], [ 0, %polly.loop_header240.us.1.preheader ]
  %420 = add nuw nsw i64 %polly.indvar243.us.1, %108
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %420, 1000
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw i64 %polly.indvar243.us.1, 1
  %exitcond1082.1.not = icmp eq i64 %polly.indvar243.us.1, %130
  br i1 %exitcond1082.1.not, label %polly.loop_exit242.loopexit.us.1, label %polly.loop_header240.us.1

polly.loop_exit242.loopexit.us.1:                 ; preds = %polly.loop_header240.us.1
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.2.preheader, label %polly.loop_header251.us.1

polly.loop_header251.us.1:                        ; preds = %polly.loop_exit242.loopexit.us.1, %polly.loop_header251.us.1
  %polly.indvar255.us.1 = phi i64 [ %polly.indvar_next256.us.1, %polly.loop_header251.us.1 ], [ %128, %polly.loop_exit242.loopexit.us.1 ]
  %421 = add nuw nsw i64 %polly.indvar255.us.1, %108
  %polly.access.mul.call1259.us.1 = mul nuw nsw i64 %421, 1000
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %polly.indvar_next256.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1
  %polly.loop_cond257.not.not.us.1 = icmp ult i64 %polly.indvar255.us.1, %133
  br i1 %polly.loop_cond257.not.not.us.1, label %polly.loop_header251.us.1, label %polly.loop_header240.us.2.preheader

polly.loop_header240.us.2.preheader:              ; preds = %polly.loop_header251.us.1, %polly.loop_exit242.loopexit.us.1
  br label %polly.loop_header240.us.2

polly.loop_header240.us.2:                        ; preds = %polly.loop_header240.us.2.preheader, %polly.loop_header240.us.2
  %polly.indvar243.us.2 = phi i64 [ %polly.indvar_next244.us.2, %polly.loop_header240.us.2 ], [ 0, %polly.loop_header240.us.2.preheader ]
  %422 = add nuw nsw i64 %polly.indvar243.us.2, %108
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %422, 1000
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar243.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next244.us.2 = add nuw i64 %polly.indvar243.us.2, 1
  %exitcond1082.2.not = icmp eq i64 %polly.indvar243.us.2, %130
  br i1 %exitcond1082.2.not, label %polly.loop_exit242.loopexit.us.2, label %polly.loop_header240.us.2

polly.loop_exit242.loopexit.us.2:                 ; preds = %polly.loop_header240.us.2
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.3.preheader, label %polly.loop_header251.us.2

polly.loop_header251.us.2:                        ; preds = %polly.loop_exit242.loopexit.us.2, %polly.loop_header251.us.2
  %polly.indvar255.us.2 = phi i64 [ %polly.indvar_next256.us.2, %polly.loop_header251.us.2 ], [ %128, %polly.loop_exit242.loopexit.us.2 ]
  %423 = add nuw nsw i64 %polly.indvar255.us.2, %108
  %polly.access.mul.call1259.us.2 = mul nuw nsw i64 %423, 1000
  %polly.access.add.call1260.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.us.2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %polly.indvar_next256.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 1
  %polly.loop_cond257.not.not.us.2 = icmp ult i64 %polly.indvar255.us.2, %133
  br i1 %polly.loop_cond257.not.not.us.2, label %polly.loop_header251.us.2, label %polly.loop_header240.us.3.preheader

polly.loop_header240.us.3.preheader:              ; preds = %polly.loop_header251.us.2, %polly.loop_exit242.loopexit.us.2
  br label %polly.loop_header240.us.3

polly.loop_header240.us.3:                        ; preds = %polly.loop_header240.us.3.preheader, %polly.loop_header240.us.3
  %polly.indvar243.us.3 = phi i64 [ %polly.indvar_next244.us.3, %polly.loop_header240.us.3 ], [ 0, %polly.loop_header240.us.3.preheader ]
  %424 = add nuw nsw i64 %polly.indvar243.us.3, %108
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %424, 1000
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar243.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next244.us.3 = add nuw i64 %polly.indvar243.us.3, 1
  %exitcond1082.3.not = icmp eq i64 %polly.indvar243.us.3, %130
  br i1 %exitcond1082.3.not, label %polly.loop_exit242.loopexit.us.3, label %polly.loop_header240.us.3

polly.loop_exit242.loopexit.us.3:                 ; preds = %polly.loop_header240.us.3
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251.us.3

polly.loop_header251.us.3:                        ; preds = %polly.loop_exit242.loopexit.us.3, %polly.loop_header251.us.3
  %polly.indvar255.us.3 = phi i64 [ %polly.indvar_next256.us.3, %polly.loop_header251.us.3 ], [ %128, %polly.loop_exit242.loopexit.us.3 ]
  %425 = add nuw nsw i64 %polly.indvar255.us.3, %108
  %polly.access.mul.call1259.us.3 = mul nuw nsw i64 %425, 1000
  %polly.access.add.call1260.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.us.3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  %polly.indvar_next256.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 1
  %polly.loop_cond257.not.not.us.3 = icmp ult i64 %polly.indvar255.us.3, %133
  br i1 %polly.loop_cond257.not.not.us.3, label %polly.loop_header251.us.3, label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_exit281.us, %polly.loop_exit281.us.1
  %indvars.iv1086.1 = phi i64 [ %indvars.iv.next1087.1, %polly.loop_exit281.us.1 ], [ %indvars.iv1084, %polly.loop_exit281.us ]
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_exit281.us.1 ], [ 0, %polly.loop_exit281.us ]
  %426 = add i64 %115, %polly.indvar276.us.1
  %smin1633 = call i64 @llvm.smin.i64(i64 %426, i64 255)
  %427 = add nuw nsw i64 %smin1633, 1
  %428 = mul nuw nsw i64 %polly.indvar276.us.1, 9600
  %429 = add i64 %119, %polly.indvar276.us.1
  %smin1621 = call i64 @llvm.smin.i64(i64 %429, i64 255)
  %430 = shl nuw nsw i64 %smin1621, 3
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1086.1, i64 255)
  %431 = add nuw nsw i64 %polly.indvar276.us.1, %128
  %432 = add nuw nsw i64 %polly.indvar276.us.1, %127
  %polly.access.add.Packed_MemRef_call2290.us.1 = add nuw nsw i64 %431, 1200
  %polly.access.Packed_MemRef_call2291.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call2291.us.1, align 8
  %polly.access.Packed_MemRef_call1299.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_300.us.1 = load double, double* %polly.access.Packed_MemRef_call1299.us.1, align 8
  %433 = mul nuw nsw i64 %432, 9600
  %min.iters.check1634 = icmp ult i64 %smin1633, 3
  br i1 %min.iters.check1634, label %polly.loop_header279.us.1.preheader, label %vector.memcheck1618

vector.memcheck1618:                              ; preds = %polly.loop_header272.us.1
  %scevgep1625 = getelementptr i8, i8* %scevgep1624, i64 %430
  %434 = add i64 %118, %428
  %scevgep1620 = getelementptr i8, i8* %call, i64 %434
  %scevgep1622 = getelementptr i8, i8* %scevgep1620, i64 %430
  %435 = add i64 %117, %428
  %scevgep1619 = getelementptr i8, i8* %call, i64 %435
  %bound01626 = icmp ult i8* %scevgep1619, %scevgep1625
  %bound11627 = icmp ult i8* %scevgep1623, %scevgep1622
  %found.conflict1628 = and i1 %bound01626, %bound11627
  br i1 %found.conflict1628, label %polly.loop_header279.us.1.preheader, label %vector.ph1635

vector.ph1635:                                    ; preds = %vector.memcheck1618
  %n.vec1637 = and i64 %427, -4
  %broadcast.splatinsert1643 = insertelement <4 x double> poison, double %_p_scalar_292.us.1, i32 0
  %broadcast.splat1644 = shufflevector <4 x double> %broadcast.splatinsert1643, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1646 = insertelement <4 x double> poison, double %_p_scalar_300.us.1, i32 0
  %broadcast.splat1647 = shufflevector <4 x double> %broadcast.splatinsert1646, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1632

vector.body1632:                                  ; preds = %vector.body1632, %vector.ph1635
  %index1638 = phi i64 [ 0, %vector.ph1635 ], [ %index.next1639, %vector.body1632 ]
  %436 = add nuw nsw i64 %index1638, %108
  %437 = add nuw nsw i64 %index1638, 1200
  %438 = getelementptr double, double* %Packed_MemRef_call1, i64 %437
  %439 = bitcast double* %438 to <4 x double>*
  %wide.load1642 = load <4 x double>, <4 x double>* %439, align 8, !alias.scope !143
  %440 = fmul fast <4 x double> %broadcast.splat1644, %wide.load1642
  %441 = getelementptr double, double* %Packed_MemRef_call2, i64 %437
  %442 = bitcast double* %441 to <4 x double>*
  %wide.load1645 = load <4 x double>, <4 x double>* %442, align 8
  %443 = fmul fast <4 x double> %broadcast.splat1647, %wide.load1645
  %444 = shl i64 %436, 3
  %445 = add nuw nsw i64 %444, %433
  %446 = getelementptr i8, i8* %call, i64 %445
  %447 = bitcast i8* %446 to <4 x double>*
  %wide.load1648 = load <4 x double>, <4 x double>* %447, align 8, !alias.scope !146, !noalias !148
  %448 = fadd fast <4 x double> %443, %440
  %449 = fmul fast <4 x double> %448, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %450 = fadd fast <4 x double> %449, %wide.load1648
  %451 = bitcast i8* %446 to <4 x double>*
  store <4 x double> %450, <4 x double>* %451, align 8, !alias.scope !146, !noalias !148
  %index.next1639 = add i64 %index1638, 4
  %452 = icmp eq i64 %index.next1639, %n.vec1637
  br i1 %452, label %middle.block1630, label %vector.body1632, !llvm.loop !149

middle.block1630:                                 ; preds = %vector.body1632
  %cmp.n1641 = icmp eq i64 %427, %n.vec1637
  br i1 %cmp.n1641, label %polly.loop_exit281.us.1, label %polly.loop_header279.us.1.preheader

polly.loop_header279.us.1.preheader:              ; preds = %vector.memcheck1618, %polly.loop_header272.us.1, %middle.block1630
  %polly.indvar282.us.1.ph = phi i64 [ 0, %vector.memcheck1618 ], [ 0, %polly.loop_header272.us.1 ], [ %n.vec1637, %middle.block1630 ]
  br label %polly.loop_header279.us.1

polly.loop_header279.us.1:                        ; preds = %polly.loop_header279.us.1.preheader, %polly.loop_header279.us.1
  %polly.indvar282.us.1 = phi i64 [ %polly.indvar_next283.us.1, %polly.loop_header279.us.1 ], [ %polly.indvar282.us.1.ph, %polly.loop_header279.us.1.preheader ]
  %453 = add nuw nsw i64 %polly.indvar282.us.1, %108
  %polly.access.add.Packed_MemRef_call1286.us.1 = add nuw nsw i64 %polly.indvar282.us.1, 1200
  %polly.access.Packed_MemRef_call1287.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call1287.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_292.us.1, %_p_scalar_288.us.1
  %polly.access.Packed_MemRef_call2295.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  %_p_scalar_296.us.1 = load double, double* %polly.access.Packed_MemRef_call2295.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_300.us.1, %_p_scalar_296.us.1
  %454 = shl i64 %453, 3
  %455 = add nuw nsw i64 %454, %433
  %scevgep301.us.1 = getelementptr i8, i8* %call, i64 %455
  %scevgep301302.us.1 = bitcast i8* %scevgep301.us.1 to double*
  %_p_scalar_303.us.1 = load double, double* %scevgep301302.us.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_303.us.1
  store double %p_add42.i118.us.1, double* %scevgep301302.us.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283.us.1 = add nuw nsw i64 %polly.indvar282.us.1, 1
  %exitcond1088.1.not = icmp eq i64 %polly.indvar282.us.1, %smin.1
  br i1 %exitcond1088.1.not, label %polly.loop_exit281.us.1, label %polly.loop_header279.us.1, !llvm.loop !150

polly.loop_exit281.us.1:                          ; preds = %polly.loop_header279.us.1, %middle.block1630
  %polly.indvar_next277.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1
  %indvars.iv.next1087.1 = add nuw nsw i64 %indvars.iv1086.1, 1
  %exitcond1094.1.not = icmp eq i64 %polly.indvar276.us.1, %smax
  br i1 %exitcond1094.1.not, label %polly.loop_header272.us.2, label %polly.loop_header272.us.1

polly.loop_header272.us.2:                        ; preds = %polly.loop_exit281.us.1, %polly.loop_exit281.us.2
  %indvars.iv1086.2 = phi i64 [ %indvars.iv.next1087.2, %polly.loop_exit281.us.2 ], [ %indvars.iv1084, %polly.loop_exit281.us.1 ]
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_exit281.us.2 ], [ 0, %polly.loop_exit281.us.1 ]
  %456 = add i64 %120, %polly.indvar276.us.2
  %smin1602 = call i64 @llvm.smin.i64(i64 %456, i64 255)
  %457 = add nuw nsw i64 %smin1602, 1
  %458 = mul nuw nsw i64 %polly.indvar276.us.2, 9600
  %459 = add i64 %124, %polly.indvar276.us.2
  %smin1590 = call i64 @llvm.smin.i64(i64 %459, i64 255)
  %460 = shl nuw nsw i64 %smin1590, 3
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1086.2, i64 255)
  %461 = add nuw nsw i64 %polly.indvar276.us.2, %128
  %462 = add nuw nsw i64 %polly.indvar276.us.2, %127
  %polly.access.add.Packed_MemRef_call2290.us.2 = add nuw nsw i64 %461, 2400
  %polly.access.Packed_MemRef_call2291.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call2291.us.2, align 8
  %polly.access.Packed_MemRef_call1299.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_300.us.2 = load double, double* %polly.access.Packed_MemRef_call1299.us.2, align 8
  %463 = mul nuw nsw i64 %462, 9600
  %min.iters.check1603 = icmp ult i64 %smin1602, 3
  br i1 %min.iters.check1603, label %polly.loop_header279.us.2.preheader, label %vector.memcheck1587

vector.memcheck1587:                              ; preds = %polly.loop_header272.us.2
  %scevgep1594 = getelementptr i8, i8* %scevgep1593, i64 %460
  %464 = add i64 %123, %458
  %scevgep1589 = getelementptr i8, i8* %call, i64 %464
  %scevgep1591 = getelementptr i8, i8* %scevgep1589, i64 %460
  %465 = add i64 %122, %458
  %scevgep1588 = getelementptr i8, i8* %call, i64 %465
  %bound01595 = icmp ult i8* %scevgep1588, %scevgep1594
  %bound11596 = icmp ult i8* %scevgep1592, %scevgep1591
  %found.conflict1597 = and i1 %bound01595, %bound11596
  br i1 %found.conflict1597, label %polly.loop_header279.us.2.preheader, label %vector.ph1604

vector.ph1604:                                    ; preds = %vector.memcheck1587
  %n.vec1606 = and i64 %457, -4
  %broadcast.splatinsert1612 = insertelement <4 x double> poison, double %_p_scalar_292.us.2, i32 0
  %broadcast.splat1613 = shufflevector <4 x double> %broadcast.splatinsert1612, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1615 = insertelement <4 x double> poison, double %_p_scalar_300.us.2, i32 0
  %broadcast.splat1616 = shufflevector <4 x double> %broadcast.splatinsert1615, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1601

vector.body1601:                                  ; preds = %vector.body1601, %vector.ph1604
  %index1607 = phi i64 [ 0, %vector.ph1604 ], [ %index.next1608, %vector.body1601 ]
  %466 = add nuw nsw i64 %index1607, %108
  %467 = add nuw nsw i64 %index1607, 2400
  %468 = getelementptr double, double* %Packed_MemRef_call1, i64 %467
  %469 = bitcast double* %468 to <4 x double>*
  %wide.load1611 = load <4 x double>, <4 x double>* %469, align 8, !alias.scope !151
  %470 = fmul fast <4 x double> %broadcast.splat1613, %wide.load1611
  %471 = getelementptr double, double* %Packed_MemRef_call2, i64 %467
  %472 = bitcast double* %471 to <4 x double>*
  %wide.load1614 = load <4 x double>, <4 x double>* %472, align 8
  %473 = fmul fast <4 x double> %broadcast.splat1616, %wide.load1614
  %474 = shl i64 %466, 3
  %475 = add nuw nsw i64 %474, %463
  %476 = getelementptr i8, i8* %call, i64 %475
  %477 = bitcast i8* %476 to <4 x double>*
  %wide.load1617 = load <4 x double>, <4 x double>* %477, align 8, !alias.scope !154, !noalias !156
  %478 = fadd fast <4 x double> %473, %470
  %479 = fmul fast <4 x double> %478, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %480 = fadd fast <4 x double> %479, %wide.load1617
  %481 = bitcast i8* %476 to <4 x double>*
  store <4 x double> %480, <4 x double>* %481, align 8, !alias.scope !154, !noalias !156
  %index.next1608 = add i64 %index1607, 4
  %482 = icmp eq i64 %index.next1608, %n.vec1606
  br i1 %482, label %middle.block1599, label %vector.body1601, !llvm.loop !157

middle.block1599:                                 ; preds = %vector.body1601
  %cmp.n1610 = icmp eq i64 %457, %n.vec1606
  br i1 %cmp.n1610, label %polly.loop_exit281.us.2, label %polly.loop_header279.us.2.preheader

polly.loop_header279.us.2.preheader:              ; preds = %vector.memcheck1587, %polly.loop_header272.us.2, %middle.block1599
  %polly.indvar282.us.2.ph = phi i64 [ 0, %vector.memcheck1587 ], [ 0, %polly.loop_header272.us.2 ], [ %n.vec1606, %middle.block1599 ]
  br label %polly.loop_header279.us.2

polly.loop_header279.us.2:                        ; preds = %polly.loop_header279.us.2.preheader, %polly.loop_header279.us.2
  %polly.indvar282.us.2 = phi i64 [ %polly.indvar_next283.us.2, %polly.loop_header279.us.2 ], [ %polly.indvar282.us.2.ph, %polly.loop_header279.us.2.preheader ]
  %483 = add nuw nsw i64 %polly.indvar282.us.2, %108
  %polly.access.add.Packed_MemRef_call1286.us.2 = add nuw nsw i64 %polly.indvar282.us.2, 2400
  %polly.access.Packed_MemRef_call1287.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call1287.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_292.us.2, %_p_scalar_288.us.2
  %polly.access.Packed_MemRef_call2295.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  %_p_scalar_296.us.2 = load double, double* %polly.access.Packed_MemRef_call2295.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_300.us.2, %_p_scalar_296.us.2
  %484 = shl i64 %483, 3
  %485 = add nuw nsw i64 %484, %463
  %scevgep301.us.2 = getelementptr i8, i8* %call, i64 %485
  %scevgep301302.us.2 = bitcast i8* %scevgep301.us.2 to double*
  %_p_scalar_303.us.2 = load double, double* %scevgep301302.us.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_303.us.2
  store double %p_add42.i118.us.2, double* %scevgep301302.us.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283.us.2 = add nuw nsw i64 %polly.indvar282.us.2, 1
  %exitcond1088.2.not = icmp eq i64 %polly.indvar282.us.2, %smin.2
  br i1 %exitcond1088.2.not, label %polly.loop_exit281.us.2, label %polly.loop_header279.us.2, !llvm.loop !158

polly.loop_exit281.us.2:                          ; preds = %polly.loop_header279.us.2, %middle.block1599
  %polly.indvar_next277.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 1
  %indvars.iv.next1087.2 = add nuw nsw i64 %indvars.iv1086.2, 1
  %exitcond1094.2.not = icmp eq i64 %polly.indvar276.us.2, %smax
  br i1 %exitcond1094.2.not, label %polly.loop_header272.us.3, label %polly.loop_header272.us.2

polly.loop_header272.us.3:                        ; preds = %polly.loop_exit281.us.2, %polly.loop_exit281.us.3
  %indvars.iv1086.3 = phi i64 [ %indvars.iv.next1087.3, %polly.loop_exit281.us.3 ], [ %indvars.iv1084, %polly.loop_exit281.us.2 ]
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_exit281.us.3 ], [ 0, %polly.loop_exit281.us.2 ]
  %486 = add i64 %125, %polly.indvar276.us.3
  %smin1571 = call i64 @llvm.smin.i64(i64 %486, i64 255)
  %487 = add nuw nsw i64 %smin1571, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1086.3, i64 255)
  %488 = add nuw nsw i64 %polly.indvar276.us.3, %128
  %489 = add nuw nsw i64 %polly.indvar276.us.3, %127
  %polly.access.add.Packed_MemRef_call2290.us.3 = add nuw nsw i64 %488, 3600
  %polly.access.Packed_MemRef_call2291.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call2291.us.3, align 8
  %polly.access.Packed_MemRef_call1299.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_300.us.3 = load double, double* %polly.access.Packed_MemRef_call1299.us.3, align 8
  %490 = mul nuw nsw i64 %489, 9600
  %min.iters.check1572 = icmp ult i64 %smin1571, 3
  br i1 %min.iters.check1572, label %polly.loop_header279.us.3.preheader, label %vector.ph1573

vector.ph1573:                                    ; preds = %polly.loop_header272.us.3
  %n.vec1575 = and i64 %487, -4
  %broadcast.splatinsert1581 = insertelement <4 x double> poison, double %_p_scalar_292.us.3, i32 0
  %broadcast.splat1582 = shufflevector <4 x double> %broadcast.splatinsert1581, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1584 = insertelement <4 x double> poison, double %_p_scalar_300.us.3, i32 0
  %broadcast.splat1585 = shufflevector <4 x double> %broadcast.splatinsert1584, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1568

vector.body1568:                                  ; preds = %vector.body1568, %vector.ph1573
  %index1576 = phi i64 [ 0, %vector.ph1573 ], [ %index.next1577, %vector.body1568 ]
  %491 = add nuw nsw i64 %index1576, %108
  %492 = add nuw nsw i64 %index1576, 3600
  %493 = getelementptr double, double* %Packed_MemRef_call1, i64 %492
  %494 = bitcast double* %493 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %494, align 8
  %495 = fmul fast <4 x double> %broadcast.splat1582, %wide.load1580
  %496 = getelementptr double, double* %Packed_MemRef_call2, i64 %492
  %497 = bitcast double* %496 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %497, align 8
  %498 = fmul fast <4 x double> %broadcast.splat1585, %wide.load1583
  %499 = shl i64 %491, 3
  %500 = add nuw nsw i64 %499, %490
  %501 = getelementptr i8, i8* %call, i64 %500
  %502 = bitcast i8* %501 to <4 x double>*
  %wide.load1586 = load <4 x double>, <4 x double>* %502, align 8, !alias.scope !72, !noalias !74
  %503 = fadd fast <4 x double> %498, %495
  %504 = fmul fast <4 x double> %503, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %505 = fadd fast <4 x double> %504, %wide.load1586
  %506 = bitcast i8* %501 to <4 x double>*
  store <4 x double> %505, <4 x double>* %506, align 8, !alias.scope !72, !noalias !74
  %index.next1577 = add i64 %index1576, 4
  %507 = icmp eq i64 %index.next1577, %n.vec1575
  br i1 %507, label %middle.block1566, label %vector.body1568, !llvm.loop !159

middle.block1566:                                 ; preds = %vector.body1568
  %cmp.n1579 = icmp eq i64 %487, %n.vec1575
  br i1 %cmp.n1579, label %polly.loop_exit281.us.3, label %polly.loop_header279.us.3.preheader

polly.loop_header279.us.3.preheader:              ; preds = %polly.loop_header272.us.3, %middle.block1566
  %polly.indvar282.us.3.ph = phi i64 [ 0, %polly.loop_header272.us.3 ], [ %n.vec1575, %middle.block1566 ]
  br label %polly.loop_header279.us.3

polly.loop_header279.us.3:                        ; preds = %polly.loop_header279.us.3.preheader, %polly.loop_header279.us.3
  %polly.indvar282.us.3 = phi i64 [ %polly.indvar_next283.us.3, %polly.loop_header279.us.3 ], [ %polly.indvar282.us.3.ph, %polly.loop_header279.us.3.preheader ]
  %508 = add nuw nsw i64 %polly.indvar282.us.3, %108
  %polly.access.add.Packed_MemRef_call1286.us.3 = add nuw nsw i64 %polly.indvar282.us.3, 3600
  %polly.access.Packed_MemRef_call1287.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call1287.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_292.us.3, %_p_scalar_288.us.3
  %polly.access.Packed_MemRef_call2295.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  %_p_scalar_296.us.3 = load double, double* %polly.access.Packed_MemRef_call2295.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_300.us.3, %_p_scalar_296.us.3
  %509 = shl i64 %508, 3
  %510 = add nuw nsw i64 %509, %490
  %scevgep301.us.3 = getelementptr i8, i8* %call, i64 %510
  %scevgep301302.us.3 = bitcast i8* %scevgep301.us.3 to double*
  %_p_scalar_303.us.3 = load double, double* %scevgep301302.us.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_303.us.3
  store double %p_add42.i118.us.3, double* %scevgep301302.us.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283.us.3 = add nuw nsw i64 %polly.indvar282.us.3, 1
  %exitcond1088.3.not = icmp eq i64 %polly.indvar282.us.3, %smin.3
  br i1 %exitcond1088.3.not, label %polly.loop_exit281.us.3, label %polly.loop_header279.us.3, !llvm.loop !160

polly.loop_exit281.us.3:                          ; preds = %polly.loop_header279.us.3, %middle.block1566
  %polly.indvar_next277.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 1
  %indvars.iv.next1087.3 = add nuw nsw i64 %indvars.iv1086.3, 1
  %exitcond1094.3.not = icmp eq i64 %polly.indvar276.us.3, %smax
  br i1 %exitcond1094.3.not, label %polly.loop_exit267, label %polly.loop_header272.us.3

polly.loop_header428.1:                           ; preds = %polly.loop_header428, %polly.loop_header428.1
  %polly.indvar431.1 = phi i64 [ %polly.indvar_next432.1, %polly.loop_header428.1 ], [ 0, %polly.loop_header428 ]
  %511 = add nuw nsw i64 %polly.indvar431.1, %187
  %polly.access.mul.call2435.1 = mul nuw nsw i64 %511, 1000
  %polly.access.add.call2436.1 = add nuw nsw i64 %177, %polly.access.mul.call2435.1
  %polly.access.call2437.1 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436.1
  %polly.access.call2437.load.1 = load double, double* %polly.access.call2437.1, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2311.1 = add nuw nsw i64 %polly.indvar431.1, 1200
  %polly.access.Packed_MemRef_call2311.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.1
  store double %polly.access.call2437.load.1, double* %polly.access.Packed_MemRef_call2311.1, align 8
  %polly.indvar_next432.1 = add nuw nsw i64 %polly.indvar431.1, 1
  %exitcond1103.1.not = icmp eq i64 %polly.indvar_next432.1, %indvars.iv1101
  br i1 %exitcond1103.1.not, label %polly.loop_header428.2, label %polly.loop_header428.1

polly.loop_header428.2:                           ; preds = %polly.loop_header428.1, %polly.loop_header428.2
  %polly.indvar431.2 = phi i64 [ %polly.indvar_next432.2, %polly.loop_header428.2 ], [ 0, %polly.loop_header428.1 ]
  %512 = add nuw nsw i64 %polly.indvar431.2, %187
  %polly.access.mul.call2435.2 = mul nuw nsw i64 %512, 1000
  %polly.access.add.call2436.2 = add nuw nsw i64 %178, %polly.access.mul.call2435.2
  %polly.access.call2437.2 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436.2
  %polly.access.call2437.load.2 = load double, double* %polly.access.call2437.2, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2311.2 = add nuw nsw i64 %polly.indvar431.2, 2400
  %polly.access.Packed_MemRef_call2311.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.2
  store double %polly.access.call2437.load.2, double* %polly.access.Packed_MemRef_call2311.2, align 8
  %polly.indvar_next432.2 = add nuw nsw i64 %polly.indvar431.2, 1
  %exitcond1103.2.not = icmp eq i64 %polly.indvar_next432.2, %indvars.iv1101
  br i1 %exitcond1103.2.not, label %polly.loop_header428.3, label %polly.loop_header428.2

polly.loop_header428.3:                           ; preds = %polly.loop_header428.2, %polly.loop_header428.3
  %polly.indvar431.3 = phi i64 [ %polly.indvar_next432.3, %polly.loop_header428.3 ], [ 0, %polly.loop_header428.2 ]
  %513 = add nuw nsw i64 %polly.indvar431.3, %187
  %polly.access.mul.call2435.3 = mul nuw nsw i64 %513, 1000
  %polly.access.add.call2436.3 = add nuw nsw i64 %179, %polly.access.mul.call2435.3
  %polly.access.call2437.3 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436.3
  %polly.access.call2437.load.3 = load double, double* %polly.access.call2437.3, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2311.3 = add nuw nsw i64 %polly.indvar431.3, 3600
  %polly.access.Packed_MemRef_call2311.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.3
  store double %polly.access.call2437.load.3, double* %polly.access.Packed_MemRef_call2311.3, align 8
  %polly.indvar_next432.3 = add nuw nsw i64 %polly.indvar431.3, 1
  %exitcond1103.3.not = icmp eq i64 %polly.indvar_next432.3, %indvars.iv1101
  br i1 %exitcond1103.3.not, label %polly.loop_exit430.3, label %polly.loop_header428.3

polly.loop_exit430.3:                             ; preds = %polly.loop_header428.3
  %514 = add nsw i64 %186, 1199
  %515 = shl nsw i64 %polly.indvar419, 3
  br label %polly.loop_header438

polly.loop_header463.1:                           ; preds = %polly.loop_header463, %polly.loop_header463.1
  %polly.indvar467.1 = phi i64 [ %polly.indvar_next468.1, %polly.loop_header463.1 ], [ %207, %polly.loop_header463 ]
  %516 = add nuw nsw i64 %polly.indvar467.1, %187
  %polly.access.mul.call1471.1 = mul nuw nsw i64 %516, 1000
  %polly.access.add.call1472.1 = add nuw nsw i64 %177, %polly.access.mul.call1471.1
  %polly.access.call1473.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.1
  %polly.access.call1473.load.1 = load double, double* %polly.access.call1473.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309475.1 = add nuw nsw i64 %polly.indvar467.1, 1200
  %polly.access.Packed_MemRef_call1309476.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.1
  store double %polly.access.call1473.load.1, double* %polly.access.Packed_MemRef_call1309476.1, align 8
  %polly.indvar_next468.1 = add nuw nsw i64 %polly.indvar467.1, 1
  %polly.loop_cond469.not.not.1 = icmp ult i64 %polly.indvar467.1, %212
  br i1 %polly.loop_cond469.not.not.1, label %polly.loop_header463.1, label %polly.loop_header463.2

polly.loop_header463.2:                           ; preds = %polly.loop_header463.1, %polly.loop_header463.2
  %polly.indvar467.2 = phi i64 [ %polly.indvar_next468.2, %polly.loop_header463.2 ], [ %207, %polly.loop_header463.1 ]
  %517 = add nuw nsw i64 %polly.indvar467.2, %187
  %polly.access.mul.call1471.2 = mul nuw nsw i64 %517, 1000
  %polly.access.add.call1472.2 = add nuw nsw i64 %178, %polly.access.mul.call1471.2
  %polly.access.call1473.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.2
  %polly.access.call1473.load.2 = load double, double* %polly.access.call1473.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309475.2 = add nuw nsw i64 %polly.indvar467.2, 2400
  %polly.access.Packed_MemRef_call1309476.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.2
  store double %polly.access.call1473.load.2, double* %polly.access.Packed_MemRef_call1309476.2, align 8
  %polly.indvar_next468.2 = add nuw nsw i64 %polly.indvar467.2, 1
  %polly.loop_cond469.not.not.2 = icmp ult i64 %polly.indvar467.2, %212
  br i1 %polly.loop_cond469.not.not.2, label %polly.loop_header463.2, label %polly.loop_header463.3

polly.loop_header463.3:                           ; preds = %polly.loop_header463.2, %polly.loop_header463.3
  %polly.indvar467.3 = phi i64 [ %polly.indvar_next468.3, %polly.loop_header463.3 ], [ %207, %polly.loop_header463.2 ]
  %518 = add nuw nsw i64 %polly.indvar467.3, %187
  %polly.access.mul.call1471.3 = mul nuw nsw i64 %518, 1000
  %polly.access.add.call1472.3 = add nuw nsw i64 %179, %polly.access.mul.call1471.3
  %polly.access.call1473.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.3
  %polly.access.call1473.load.3 = load double, double* %polly.access.call1473.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309475.3 = add nuw nsw i64 %polly.indvar467.3, 3600
  %polly.access.Packed_MemRef_call1309476.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.3
  store double %polly.access.call1473.load.3, double* %polly.access.Packed_MemRef_call1309476.3, align 8
  %polly.indvar_next468.3 = add nuw nsw i64 %polly.indvar467.3, 1
  %polly.loop_cond469.not.not.3 = icmp ult i64 %polly.indvar467.3, %212
  br i1 %polly.loop_cond469.not.not.3, label %polly.loop_header463.3, label %polly.loop_header477.preheader

polly.loop_header451.us.1:                        ; preds = %polly.loop_header451.us.1.preheader, %polly.loop_header451.us.1
  %polly.indvar455.us.1 = phi i64 [ %polly.indvar_next456.us.1, %polly.loop_header451.us.1 ], [ 0, %polly.loop_header451.us.1.preheader ]
  %519 = add nuw nsw i64 %polly.indvar455.us.1, %187
  %polly.access.mul.call1459.us.1 = mul nuw nsw i64 %519, 1000
  %polly.access.add.call1460.us.1 = add nuw nsw i64 %177, %polly.access.mul.call1459.us.1
  %polly.access.call1461.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us.1
  %polly.access.call1461.load.us.1 = load double, double* %polly.access.call1461.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309.us.1 = add nuw nsw i64 %polly.indvar455.us.1, 1200
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.1
  store double %polly.access.call1461.load.us.1, double* %polly.access.Packed_MemRef_call1309.us.1, align 8
  %polly.indvar_next456.us.1 = add nuw i64 %polly.indvar455.us.1, 1
  %exitcond1106.1.not = icmp eq i64 %polly.indvar455.us.1, %209
  br i1 %exitcond1106.1.not, label %polly.loop_exit453.loopexit.us.1, label %polly.loop_header451.us.1

polly.loop_exit453.loopexit.us.1:                 ; preds = %polly.loop_header451.us.1
  br i1 %polly.loop_guard466.not, label %polly.loop_header451.us.2.preheader, label %polly.loop_header463.us.1

polly.loop_header463.us.1:                        ; preds = %polly.loop_exit453.loopexit.us.1, %polly.loop_header463.us.1
  %polly.indvar467.us.1 = phi i64 [ %polly.indvar_next468.us.1, %polly.loop_header463.us.1 ], [ %207, %polly.loop_exit453.loopexit.us.1 ]
  %520 = add nuw nsw i64 %polly.indvar467.us.1, %187
  %polly.access.mul.call1471.us.1 = mul nuw nsw i64 %520, 1000
  %polly.access.add.call1472.us.1 = add nuw nsw i64 %177, %polly.access.mul.call1471.us.1
  %polly.access.call1473.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us.1
  %polly.access.call1473.load.us.1 = load double, double* %polly.access.call1473.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309475.us.1 = add nuw nsw i64 %polly.indvar467.us.1, 1200
  %polly.access.Packed_MemRef_call1309476.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us.1
  store double %polly.access.call1473.load.us.1, double* %polly.access.Packed_MemRef_call1309476.us.1, align 8
  %polly.indvar_next468.us.1 = add nuw nsw i64 %polly.indvar467.us.1, 1
  %polly.loop_cond469.not.not.us.1 = icmp ult i64 %polly.indvar467.us.1, %212
  br i1 %polly.loop_cond469.not.not.us.1, label %polly.loop_header463.us.1, label %polly.loop_header451.us.2.preheader

polly.loop_header451.us.2.preheader:              ; preds = %polly.loop_header463.us.1, %polly.loop_exit453.loopexit.us.1
  br label %polly.loop_header451.us.2

polly.loop_header451.us.2:                        ; preds = %polly.loop_header451.us.2.preheader, %polly.loop_header451.us.2
  %polly.indvar455.us.2 = phi i64 [ %polly.indvar_next456.us.2, %polly.loop_header451.us.2 ], [ 0, %polly.loop_header451.us.2.preheader ]
  %521 = add nuw nsw i64 %polly.indvar455.us.2, %187
  %polly.access.mul.call1459.us.2 = mul nuw nsw i64 %521, 1000
  %polly.access.add.call1460.us.2 = add nuw nsw i64 %178, %polly.access.mul.call1459.us.2
  %polly.access.call1461.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us.2
  %polly.access.call1461.load.us.2 = load double, double* %polly.access.call1461.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309.us.2 = add nuw nsw i64 %polly.indvar455.us.2, 2400
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.2
  store double %polly.access.call1461.load.us.2, double* %polly.access.Packed_MemRef_call1309.us.2, align 8
  %polly.indvar_next456.us.2 = add nuw i64 %polly.indvar455.us.2, 1
  %exitcond1106.2.not = icmp eq i64 %polly.indvar455.us.2, %209
  br i1 %exitcond1106.2.not, label %polly.loop_exit453.loopexit.us.2, label %polly.loop_header451.us.2

polly.loop_exit453.loopexit.us.2:                 ; preds = %polly.loop_header451.us.2
  br i1 %polly.loop_guard466.not, label %polly.loop_header451.us.3.preheader, label %polly.loop_header463.us.2

polly.loop_header463.us.2:                        ; preds = %polly.loop_exit453.loopexit.us.2, %polly.loop_header463.us.2
  %polly.indvar467.us.2 = phi i64 [ %polly.indvar_next468.us.2, %polly.loop_header463.us.2 ], [ %207, %polly.loop_exit453.loopexit.us.2 ]
  %522 = add nuw nsw i64 %polly.indvar467.us.2, %187
  %polly.access.mul.call1471.us.2 = mul nuw nsw i64 %522, 1000
  %polly.access.add.call1472.us.2 = add nuw nsw i64 %178, %polly.access.mul.call1471.us.2
  %polly.access.call1473.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us.2
  %polly.access.call1473.load.us.2 = load double, double* %polly.access.call1473.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309475.us.2 = add nuw nsw i64 %polly.indvar467.us.2, 2400
  %polly.access.Packed_MemRef_call1309476.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us.2
  store double %polly.access.call1473.load.us.2, double* %polly.access.Packed_MemRef_call1309476.us.2, align 8
  %polly.indvar_next468.us.2 = add nuw nsw i64 %polly.indvar467.us.2, 1
  %polly.loop_cond469.not.not.us.2 = icmp ult i64 %polly.indvar467.us.2, %212
  br i1 %polly.loop_cond469.not.not.us.2, label %polly.loop_header463.us.2, label %polly.loop_header451.us.3.preheader

polly.loop_header451.us.3.preheader:              ; preds = %polly.loop_header463.us.2, %polly.loop_exit453.loopexit.us.2
  br label %polly.loop_header451.us.3

polly.loop_header451.us.3:                        ; preds = %polly.loop_header451.us.3.preheader, %polly.loop_header451.us.3
  %polly.indvar455.us.3 = phi i64 [ %polly.indvar_next456.us.3, %polly.loop_header451.us.3 ], [ 0, %polly.loop_header451.us.3.preheader ]
  %523 = add nuw nsw i64 %polly.indvar455.us.3, %187
  %polly.access.mul.call1459.us.3 = mul nuw nsw i64 %523, 1000
  %polly.access.add.call1460.us.3 = add nuw nsw i64 %179, %polly.access.mul.call1459.us.3
  %polly.access.call1461.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us.3
  %polly.access.call1461.load.us.3 = load double, double* %polly.access.call1461.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309.us.3 = add nuw nsw i64 %polly.indvar455.us.3, 3600
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.3
  store double %polly.access.call1461.load.us.3, double* %polly.access.Packed_MemRef_call1309.us.3, align 8
  %polly.indvar_next456.us.3 = add nuw i64 %polly.indvar455.us.3, 1
  %exitcond1106.3.not = icmp eq i64 %polly.indvar455.us.3, %209
  br i1 %exitcond1106.3.not, label %polly.loop_exit453.loopexit.us.3, label %polly.loop_header451.us.3

polly.loop_exit453.loopexit.us.3:                 ; preds = %polly.loop_header451.us.3
  br i1 %polly.loop_guard466.not, label %polly.loop_header477.preheader, label %polly.loop_header463.us.3

polly.loop_header463.us.3:                        ; preds = %polly.loop_exit453.loopexit.us.3, %polly.loop_header463.us.3
  %polly.indvar467.us.3 = phi i64 [ %polly.indvar_next468.us.3, %polly.loop_header463.us.3 ], [ %207, %polly.loop_exit453.loopexit.us.3 ]
  %524 = add nuw nsw i64 %polly.indvar467.us.3, %187
  %polly.access.mul.call1471.us.3 = mul nuw nsw i64 %524, 1000
  %polly.access.add.call1472.us.3 = add nuw nsw i64 %179, %polly.access.mul.call1471.us.3
  %polly.access.call1473.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us.3
  %polly.access.call1473.load.us.3 = load double, double* %polly.access.call1473.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1309475.us.3 = add nuw nsw i64 %polly.indvar467.us.3, 3600
  %polly.access.Packed_MemRef_call1309476.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us.3
  store double %polly.access.call1473.load.us.3, double* %polly.access.Packed_MemRef_call1309476.us.3, align 8
  %polly.indvar_next468.us.3 = add nuw nsw i64 %polly.indvar467.us.3, 1
  %polly.loop_cond469.not.not.us.3 = icmp ult i64 %polly.indvar467.us.3, %212
  br i1 %polly.loop_cond469.not.not.us.3, label %polly.loop_header463.us.3, label %polly.loop_header477.preheader

polly.loop_header484.us.1:                        ; preds = %polly.loop_exit493.us, %polly.loop_exit493.us.1
  %indvars.iv1110.1 = phi i64 [ %indvars.iv.next1111.1, %polly.loop_exit493.us.1 ], [ %indvars.iv1108, %polly.loop_exit493.us ]
  %polly.indvar488.us.1 = phi i64 [ %polly.indvar_next489.us.1, %polly.loop_exit493.us.1 ], [ 0, %polly.loop_exit493.us ]
  %525 = add i64 %194, %polly.indvar488.us.1
  %smin1494 = call i64 @llvm.smin.i64(i64 %525, i64 255)
  %526 = add nuw nsw i64 %smin1494, 1
  %527 = mul nuw nsw i64 %polly.indvar488.us.1, 9600
  %528 = add i64 %198, %polly.indvar488.us.1
  %smin1482 = call i64 @llvm.smin.i64(i64 %528, i64 255)
  %529 = shl nuw nsw i64 %smin1482, 3
  %smin1112.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1110.1, i64 255)
  %530 = add nuw nsw i64 %polly.indvar488.us.1, %207
  %531 = add nuw nsw i64 %polly.indvar488.us.1, %206
  %polly.access.add.Packed_MemRef_call2311502.us.1 = add nuw nsw i64 %530, 1200
  %polly.access.Packed_MemRef_call2311503.us.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us.1
  %_p_scalar_504.us.1 = load double, double* %polly.access.Packed_MemRef_call2311503.us.1, align 8
  %polly.access.Packed_MemRef_call1309511.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us.1
  %_p_scalar_512.us.1 = load double, double* %polly.access.Packed_MemRef_call1309511.us.1, align 8
  %532 = mul nuw nsw i64 %531, 9600
  %min.iters.check1495 = icmp ult i64 %smin1494, 3
  br i1 %min.iters.check1495, label %polly.loop_header491.us.1.preheader, label %vector.memcheck1479

vector.memcheck1479:                              ; preds = %polly.loop_header484.us.1
  %scevgep1486 = getelementptr i8, i8* %scevgep1485, i64 %529
  %533 = add i64 %197, %527
  %scevgep1481 = getelementptr i8, i8* %call, i64 %533
  %scevgep1483 = getelementptr i8, i8* %scevgep1481, i64 %529
  %534 = add i64 %196, %527
  %scevgep1480 = getelementptr i8, i8* %call, i64 %534
  %bound01487 = icmp ult i8* %scevgep1480, %scevgep1486
  %bound11488 = icmp ult i8* %scevgep1484, %scevgep1483
  %found.conflict1489 = and i1 %bound01487, %bound11488
  br i1 %found.conflict1489, label %polly.loop_header491.us.1.preheader, label %vector.ph1496

vector.ph1496:                                    ; preds = %vector.memcheck1479
  %n.vec1498 = and i64 %526, -4
  %broadcast.splatinsert1504 = insertelement <4 x double> poison, double %_p_scalar_504.us.1, i32 0
  %broadcast.splat1505 = shufflevector <4 x double> %broadcast.splatinsert1504, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1507 = insertelement <4 x double> poison, double %_p_scalar_512.us.1, i32 0
  %broadcast.splat1508 = shufflevector <4 x double> %broadcast.splatinsert1507, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1493

vector.body1493:                                  ; preds = %vector.body1493, %vector.ph1496
  %index1499 = phi i64 [ 0, %vector.ph1496 ], [ %index.next1500, %vector.body1493 ]
  %535 = add nuw nsw i64 %index1499, %187
  %536 = add nuw nsw i64 %index1499, 1200
  %537 = getelementptr double, double* %Packed_MemRef_call1309, i64 %536
  %538 = bitcast double* %537 to <4 x double>*
  %wide.load1503 = load <4 x double>, <4 x double>* %538, align 8, !alias.scope !161
  %539 = fmul fast <4 x double> %broadcast.splat1505, %wide.load1503
  %540 = getelementptr double, double* %Packed_MemRef_call2311, i64 %536
  %541 = bitcast double* %540 to <4 x double>*
  %wide.load1506 = load <4 x double>, <4 x double>* %541, align 8
  %542 = fmul fast <4 x double> %broadcast.splat1508, %wide.load1506
  %543 = shl i64 %535, 3
  %544 = add nuw nsw i64 %543, %532
  %545 = getelementptr i8, i8* %call, i64 %544
  %546 = bitcast i8* %545 to <4 x double>*
  %wide.load1509 = load <4 x double>, <4 x double>* %546, align 8, !alias.scope !164, !noalias !166
  %547 = fadd fast <4 x double> %542, %539
  %548 = fmul fast <4 x double> %547, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %549 = fadd fast <4 x double> %548, %wide.load1509
  %550 = bitcast i8* %545 to <4 x double>*
  store <4 x double> %549, <4 x double>* %550, align 8, !alias.scope !164, !noalias !166
  %index.next1500 = add i64 %index1499, 4
  %551 = icmp eq i64 %index.next1500, %n.vec1498
  br i1 %551, label %middle.block1491, label %vector.body1493, !llvm.loop !167

middle.block1491:                                 ; preds = %vector.body1493
  %cmp.n1502 = icmp eq i64 %526, %n.vec1498
  br i1 %cmp.n1502, label %polly.loop_exit493.us.1, label %polly.loop_header491.us.1.preheader

polly.loop_header491.us.1.preheader:              ; preds = %vector.memcheck1479, %polly.loop_header484.us.1, %middle.block1491
  %polly.indvar494.us.1.ph = phi i64 [ 0, %vector.memcheck1479 ], [ 0, %polly.loop_header484.us.1 ], [ %n.vec1498, %middle.block1491 ]
  br label %polly.loop_header491.us.1

polly.loop_header491.us.1:                        ; preds = %polly.loop_header491.us.1.preheader, %polly.loop_header491.us.1
  %polly.indvar494.us.1 = phi i64 [ %polly.indvar_next495.us.1, %polly.loop_header491.us.1 ], [ %polly.indvar494.us.1.ph, %polly.loop_header491.us.1.preheader ]
  %552 = add nuw nsw i64 %polly.indvar494.us.1, %187
  %polly.access.add.Packed_MemRef_call1309498.us.1 = add nuw nsw i64 %polly.indvar494.us.1, 1200
  %polly.access.Packed_MemRef_call1309499.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us.1
  %_p_scalar_500.us.1 = load double, double* %polly.access.Packed_MemRef_call1309499.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_504.us.1, %_p_scalar_500.us.1
  %polly.access.Packed_MemRef_call2311507.us.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us.1
  %_p_scalar_508.us.1 = load double, double* %polly.access.Packed_MemRef_call2311507.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_512.us.1, %_p_scalar_508.us.1
  %553 = shl i64 %552, 3
  %554 = add nuw nsw i64 %553, %532
  %scevgep513.us.1 = getelementptr i8, i8* %call, i64 %554
  %scevgep513514.us.1 = bitcast i8* %scevgep513.us.1 to double*
  %_p_scalar_515.us.1 = load double, double* %scevgep513514.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_515.us.1
  store double %p_add42.i79.us.1, double* %scevgep513514.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next495.us.1 = add nuw nsw i64 %polly.indvar494.us.1, 1
  %exitcond1113.1.not = icmp eq i64 %polly.indvar494.us.1, %smin1112.1
  br i1 %exitcond1113.1.not, label %polly.loop_exit493.us.1, label %polly.loop_header491.us.1, !llvm.loop !168

polly.loop_exit493.us.1:                          ; preds = %polly.loop_header491.us.1, %middle.block1491
  %polly.indvar_next489.us.1 = add nuw nsw i64 %polly.indvar488.us.1, 1
  %indvars.iv.next1111.1 = add nuw nsw i64 %indvars.iv1110.1, 1
  %exitcond1120.1.not = icmp eq i64 %polly.indvar488.us.1, %smax1119
  br i1 %exitcond1120.1.not, label %polly.loop_header484.us.2, label %polly.loop_header484.us.1

polly.loop_header484.us.2:                        ; preds = %polly.loop_exit493.us.1, %polly.loop_exit493.us.2
  %indvars.iv1110.2 = phi i64 [ %indvars.iv.next1111.2, %polly.loop_exit493.us.2 ], [ %indvars.iv1108, %polly.loop_exit493.us.1 ]
  %polly.indvar488.us.2 = phi i64 [ %polly.indvar_next489.us.2, %polly.loop_exit493.us.2 ], [ 0, %polly.loop_exit493.us.1 ]
  %555 = add i64 %199, %polly.indvar488.us.2
  %smin1463 = call i64 @llvm.smin.i64(i64 %555, i64 255)
  %556 = add nuw nsw i64 %smin1463, 1
  %557 = mul nuw nsw i64 %polly.indvar488.us.2, 9600
  %558 = add i64 %203, %polly.indvar488.us.2
  %smin1451 = call i64 @llvm.smin.i64(i64 %558, i64 255)
  %559 = shl nuw nsw i64 %smin1451, 3
  %smin1112.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1110.2, i64 255)
  %560 = add nuw nsw i64 %polly.indvar488.us.2, %207
  %561 = add nuw nsw i64 %polly.indvar488.us.2, %206
  %polly.access.add.Packed_MemRef_call2311502.us.2 = add nuw nsw i64 %560, 2400
  %polly.access.Packed_MemRef_call2311503.us.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us.2
  %_p_scalar_504.us.2 = load double, double* %polly.access.Packed_MemRef_call2311503.us.2, align 8
  %polly.access.Packed_MemRef_call1309511.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us.2
  %_p_scalar_512.us.2 = load double, double* %polly.access.Packed_MemRef_call1309511.us.2, align 8
  %562 = mul nuw nsw i64 %561, 9600
  %min.iters.check1464 = icmp ult i64 %smin1463, 3
  br i1 %min.iters.check1464, label %polly.loop_header491.us.2.preheader, label %vector.memcheck1448

vector.memcheck1448:                              ; preds = %polly.loop_header484.us.2
  %scevgep1455 = getelementptr i8, i8* %scevgep1454, i64 %559
  %563 = add i64 %202, %557
  %scevgep1450 = getelementptr i8, i8* %call, i64 %563
  %scevgep1452 = getelementptr i8, i8* %scevgep1450, i64 %559
  %564 = add i64 %201, %557
  %scevgep1449 = getelementptr i8, i8* %call, i64 %564
  %bound01456 = icmp ult i8* %scevgep1449, %scevgep1455
  %bound11457 = icmp ult i8* %scevgep1453, %scevgep1452
  %found.conflict1458 = and i1 %bound01456, %bound11457
  br i1 %found.conflict1458, label %polly.loop_header491.us.2.preheader, label %vector.ph1465

vector.ph1465:                                    ; preds = %vector.memcheck1448
  %n.vec1467 = and i64 %556, -4
  %broadcast.splatinsert1473 = insertelement <4 x double> poison, double %_p_scalar_504.us.2, i32 0
  %broadcast.splat1474 = shufflevector <4 x double> %broadcast.splatinsert1473, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1476 = insertelement <4 x double> poison, double %_p_scalar_512.us.2, i32 0
  %broadcast.splat1477 = shufflevector <4 x double> %broadcast.splatinsert1476, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1462

vector.body1462:                                  ; preds = %vector.body1462, %vector.ph1465
  %index1468 = phi i64 [ 0, %vector.ph1465 ], [ %index.next1469, %vector.body1462 ]
  %565 = add nuw nsw i64 %index1468, %187
  %566 = add nuw nsw i64 %index1468, 2400
  %567 = getelementptr double, double* %Packed_MemRef_call1309, i64 %566
  %568 = bitcast double* %567 to <4 x double>*
  %wide.load1472 = load <4 x double>, <4 x double>* %568, align 8, !alias.scope !169
  %569 = fmul fast <4 x double> %broadcast.splat1474, %wide.load1472
  %570 = getelementptr double, double* %Packed_MemRef_call2311, i64 %566
  %571 = bitcast double* %570 to <4 x double>*
  %wide.load1475 = load <4 x double>, <4 x double>* %571, align 8
  %572 = fmul fast <4 x double> %broadcast.splat1477, %wide.load1475
  %573 = shl i64 %565, 3
  %574 = add nuw nsw i64 %573, %562
  %575 = getelementptr i8, i8* %call, i64 %574
  %576 = bitcast i8* %575 to <4 x double>*
  %wide.load1478 = load <4 x double>, <4 x double>* %576, align 8, !alias.scope !172, !noalias !174
  %577 = fadd fast <4 x double> %572, %569
  %578 = fmul fast <4 x double> %577, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %579 = fadd fast <4 x double> %578, %wide.load1478
  %580 = bitcast i8* %575 to <4 x double>*
  store <4 x double> %579, <4 x double>* %580, align 8, !alias.scope !172, !noalias !174
  %index.next1469 = add i64 %index1468, 4
  %581 = icmp eq i64 %index.next1469, %n.vec1467
  br i1 %581, label %middle.block1460, label %vector.body1462, !llvm.loop !175

middle.block1460:                                 ; preds = %vector.body1462
  %cmp.n1471 = icmp eq i64 %556, %n.vec1467
  br i1 %cmp.n1471, label %polly.loop_exit493.us.2, label %polly.loop_header491.us.2.preheader

polly.loop_header491.us.2.preheader:              ; preds = %vector.memcheck1448, %polly.loop_header484.us.2, %middle.block1460
  %polly.indvar494.us.2.ph = phi i64 [ 0, %vector.memcheck1448 ], [ 0, %polly.loop_header484.us.2 ], [ %n.vec1467, %middle.block1460 ]
  br label %polly.loop_header491.us.2

polly.loop_header491.us.2:                        ; preds = %polly.loop_header491.us.2.preheader, %polly.loop_header491.us.2
  %polly.indvar494.us.2 = phi i64 [ %polly.indvar_next495.us.2, %polly.loop_header491.us.2 ], [ %polly.indvar494.us.2.ph, %polly.loop_header491.us.2.preheader ]
  %582 = add nuw nsw i64 %polly.indvar494.us.2, %187
  %polly.access.add.Packed_MemRef_call1309498.us.2 = add nuw nsw i64 %polly.indvar494.us.2, 2400
  %polly.access.Packed_MemRef_call1309499.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us.2
  %_p_scalar_500.us.2 = load double, double* %polly.access.Packed_MemRef_call1309499.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_504.us.2, %_p_scalar_500.us.2
  %polly.access.Packed_MemRef_call2311507.us.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us.2
  %_p_scalar_508.us.2 = load double, double* %polly.access.Packed_MemRef_call2311507.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_512.us.2, %_p_scalar_508.us.2
  %583 = shl i64 %582, 3
  %584 = add nuw nsw i64 %583, %562
  %scevgep513.us.2 = getelementptr i8, i8* %call, i64 %584
  %scevgep513514.us.2 = bitcast i8* %scevgep513.us.2 to double*
  %_p_scalar_515.us.2 = load double, double* %scevgep513514.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_515.us.2
  store double %p_add42.i79.us.2, double* %scevgep513514.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next495.us.2 = add nuw nsw i64 %polly.indvar494.us.2, 1
  %exitcond1113.2.not = icmp eq i64 %polly.indvar494.us.2, %smin1112.2
  br i1 %exitcond1113.2.not, label %polly.loop_exit493.us.2, label %polly.loop_header491.us.2, !llvm.loop !176

polly.loop_exit493.us.2:                          ; preds = %polly.loop_header491.us.2, %middle.block1460
  %polly.indvar_next489.us.2 = add nuw nsw i64 %polly.indvar488.us.2, 1
  %indvars.iv.next1111.2 = add nuw nsw i64 %indvars.iv1110.2, 1
  %exitcond1120.2.not = icmp eq i64 %polly.indvar488.us.2, %smax1119
  br i1 %exitcond1120.2.not, label %polly.loop_header484.us.3, label %polly.loop_header484.us.2

polly.loop_header484.us.3:                        ; preds = %polly.loop_exit493.us.2, %polly.loop_exit493.us.3
  %indvars.iv1110.3 = phi i64 [ %indvars.iv.next1111.3, %polly.loop_exit493.us.3 ], [ %indvars.iv1108, %polly.loop_exit493.us.2 ]
  %polly.indvar488.us.3 = phi i64 [ %polly.indvar_next489.us.3, %polly.loop_exit493.us.3 ], [ 0, %polly.loop_exit493.us.2 ]
  %585 = add i64 %204, %polly.indvar488.us.3
  %smin1432 = call i64 @llvm.smin.i64(i64 %585, i64 255)
  %586 = add nuw nsw i64 %smin1432, 1
  %smin1112.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1110.3, i64 255)
  %587 = add nuw nsw i64 %polly.indvar488.us.3, %207
  %588 = add nuw nsw i64 %polly.indvar488.us.3, %206
  %polly.access.add.Packed_MemRef_call2311502.us.3 = add nuw nsw i64 %587, 3600
  %polly.access.Packed_MemRef_call2311503.us.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us.3
  %_p_scalar_504.us.3 = load double, double* %polly.access.Packed_MemRef_call2311503.us.3, align 8
  %polly.access.Packed_MemRef_call1309511.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us.3
  %_p_scalar_512.us.3 = load double, double* %polly.access.Packed_MemRef_call1309511.us.3, align 8
  %589 = mul nuw nsw i64 %588, 9600
  %min.iters.check1433 = icmp ult i64 %smin1432, 3
  br i1 %min.iters.check1433, label %polly.loop_header491.us.3.preheader, label %vector.ph1434

vector.ph1434:                                    ; preds = %polly.loop_header484.us.3
  %n.vec1436 = and i64 %586, -4
  %broadcast.splatinsert1442 = insertelement <4 x double> poison, double %_p_scalar_504.us.3, i32 0
  %broadcast.splat1443 = shufflevector <4 x double> %broadcast.splatinsert1442, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1445 = insertelement <4 x double> poison, double %_p_scalar_512.us.3, i32 0
  %broadcast.splat1446 = shufflevector <4 x double> %broadcast.splatinsert1445, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1429

vector.body1429:                                  ; preds = %vector.body1429, %vector.ph1434
  %index1437 = phi i64 [ 0, %vector.ph1434 ], [ %index.next1438, %vector.body1429 ]
  %590 = add nuw nsw i64 %index1437, %187
  %591 = add nuw nsw i64 %index1437, 3600
  %592 = getelementptr double, double* %Packed_MemRef_call1309, i64 %591
  %593 = bitcast double* %592 to <4 x double>*
  %wide.load1441 = load <4 x double>, <4 x double>* %593, align 8
  %594 = fmul fast <4 x double> %broadcast.splat1443, %wide.load1441
  %595 = getelementptr double, double* %Packed_MemRef_call2311, i64 %591
  %596 = bitcast double* %595 to <4 x double>*
  %wide.load1444 = load <4 x double>, <4 x double>* %596, align 8
  %597 = fmul fast <4 x double> %broadcast.splat1446, %wide.load1444
  %598 = shl i64 %590, 3
  %599 = add nuw nsw i64 %598, %589
  %600 = getelementptr i8, i8* %call, i64 %599
  %601 = bitcast i8* %600 to <4 x double>*
  %wide.load1447 = load <4 x double>, <4 x double>* %601, align 8, !alias.scope !92, !noalias !94
  %602 = fadd fast <4 x double> %597, %594
  %603 = fmul fast <4 x double> %602, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %604 = fadd fast <4 x double> %603, %wide.load1447
  %605 = bitcast i8* %600 to <4 x double>*
  store <4 x double> %604, <4 x double>* %605, align 8, !alias.scope !92, !noalias !94
  %index.next1438 = add i64 %index1437, 4
  %606 = icmp eq i64 %index.next1438, %n.vec1436
  br i1 %606, label %middle.block1427, label %vector.body1429, !llvm.loop !177

middle.block1427:                                 ; preds = %vector.body1429
  %cmp.n1440 = icmp eq i64 %586, %n.vec1436
  br i1 %cmp.n1440, label %polly.loop_exit493.us.3, label %polly.loop_header491.us.3.preheader

polly.loop_header491.us.3.preheader:              ; preds = %polly.loop_header484.us.3, %middle.block1427
  %polly.indvar494.us.3.ph = phi i64 [ 0, %polly.loop_header484.us.3 ], [ %n.vec1436, %middle.block1427 ]
  br label %polly.loop_header491.us.3

polly.loop_header491.us.3:                        ; preds = %polly.loop_header491.us.3.preheader, %polly.loop_header491.us.3
  %polly.indvar494.us.3 = phi i64 [ %polly.indvar_next495.us.3, %polly.loop_header491.us.3 ], [ %polly.indvar494.us.3.ph, %polly.loop_header491.us.3.preheader ]
  %607 = add nuw nsw i64 %polly.indvar494.us.3, %187
  %polly.access.add.Packed_MemRef_call1309498.us.3 = add nuw nsw i64 %polly.indvar494.us.3, 3600
  %polly.access.Packed_MemRef_call1309499.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us.3
  %_p_scalar_500.us.3 = load double, double* %polly.access.Packed_MemRef_call1309499.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_504.us.3, %_p_scalar_500.us.3
  %polly.access.Packed_MemRef_call2311507.us.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us.3
  %_p_scalar_508.us.3 = load double, double* %polly.access.Packed_MemRef_call2311507.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_512.us.3, %_p_scalar_508.us.3
  %608 = shl i64 %607, 3
  %609 = add nuw nsw i64 %608, %589
  %scevgep513.us.3 = getelementptr i8, i8* %call, i64 %609
  %scevgep513514.us.3 = bitcast i8* %scevgep513.us.3 to double*
  %_p_scalar_515.us.3 = load double, double* %scevgep513514.us.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_515.us.3
  store double %p_add42.i79.us.3, double* %scevgep513514.us.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next495.us.3 = add nuw nsw i64 %polly.indvar494.us.3, 1
  %exitcond1113.3.not = icmp eq i64 %polly.indvar494.us.3, %smin1112.3
  br i1 %exitcond1113.3.not, label %polly.loop_exit493.us.3, label %polly.loop_header491.us.3, !llvm.loop !178

polly.loop_exit493.us.3:                          ; preds = %polly.loop_header491.us.3, %middle.block1427
  %polly.indvar_next489.us.3 = add nuw nsw i64 %polly.indvar488.us.3, 1
  %indvars.iv.next1111.3 = add nuw nsw i64 %indvars.iv1110.3, 1
  %exitcond1120.3.not = icmp eq i64 %polly.indvar488.us.3, %smax1119
  br i1 %exitcond1120.3.not, label %polly.loop_exit479, label %polly.loop_header484.us.3

polly.loop_header640.1:                           ; preds = %polly.loop_header640, %polly.loop_header640.1
  %polly.indvar643.1 = phi i64 [ %polly.indvar_next644.1, %polly.loop_header640.1 ], [ 0, %polly.loop_header640 ]
  %610 = add nuw nsw i64 %polly.indvar643.1, %266
  %polly.access.mul.call2647.1 = mul nuw nsw i64 %610, 1000
  %polly.access.add.call2648.1 = add nuw nsw i64 %256, %polly.access.mul.call2647.1
  %polly.access.call2649.1 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648.1
  %polly.access.call2649.load.1 = load double, double* %polly.access.call2649.1, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2523.1 = add nuw nsw i64 %polly.indvar643.1, 1200
  %polly.access.Packed_MemRef_call2523.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523.1
  store double %polly.access.call2649.load.1, double* %polly.access.Packed_MemRef_call2523.1, align 8
  %polly.indvar_next644.1 = add nuw nsw i64 %polly.indvar643.1, 1
  %exitcond1129.1.not = icmp eq i64 %polly.indvar_next644.1, %indvars.iv1127
  br i1 %exitcond1129.1.not, label %polly.loop_header640.2, label %polly.loop_header640.1

polly.loop_header640.2:                           ; preds = %polly.loop_header640.1, %polly.loop_header640.2
  %polly.indvar643.2 = phi i64 [ %polly.indvar_next644.2, %polly.loop_header640.2 ], [ 0, %polly.loop_header640.1 ]
  %611 = add nuw nsw i64 %polly.indvar643.2, %266
  %polly.access.mul.call2647.2 = mul nuw nsw i64 %611, 1000
  %polly.access.add.call2648.2 = add nuw nsw i64 %257, %polly.access.mul.call2647.2
  %polly.access.call2649.2 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648.2
  %polly.access.call2649.load.2 = load double, double* %polly.access.call2649.2, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2523.2 = add nuw nsw i64 %polly.indvar643.2, 2400
  %polly.access.Packed_MemRef_call2523.2 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523.2
  store double %polly.access.call2649.load.2, double* %polly.access.Packed_MemRef_call2523.2, align 8
  %polly.indvar_next644.2 = add nuw nsw i64 %polly.indvar643.2, 1
  %exitcond1129.2.not = icmp eq i64 %polly.indvar_next644.2, %indvars.iv1127
  br i1 %exitcond1129.2.not, label %polly.loop_header640.3, label %polly.loop_header640.2

polly.loop_header640.3:                           ; preds = %polly.loop_header640.2, %polly.loop_header640.3
  %polly.indvar643.3 = phi i64 [ %polly.indvar_next644.3, %polly.loop_header640.3 ], [ 0, %polly.loop_header640.2 ]
  %612 = add nuw nsw i64 %polly.indvar643.3, %266
  %polly.access.mul.call2647.3 = mul nuw nsw i64 %612, 1000
  %polly.access.add.call2648.3 = add nuw nsw i64 %258, %polly.access.mul.call2647.3
  %polly.access.call2649.3 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648.3
  %polly.access.call2649.load.3 = load double, double* %polly.access.call2649.3, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2523.3 = add nuw nsw i64 %polly.indvar643.3, 3600
  %polly.access.Packed_MemRef_call2523.3 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523.3
  store double %polly.access.call2649.load.3, double* %polly.access.Packed_MemRef_call2523.3, align 8
  %polly.indvar_next644.3 = add nuw nsw i64 %polly.indvar643.3, 1
  %exitcond1129.3.not = icmp eq i64 %polly.indvar_next644.3, %indvars.iv1127
  br i1 %exitcond1129.3.not, label %polly.loop_exit642.3, label %polly.loop_header640.3

polly.loop_exit642.3:                             ; preds = %polly.loop_header640.3
  %613 = add nsw i64 %265, 1199
  %614 = shl nsw i64 %polly.indvar631, 3
  br label %polly.loop_header650

polly.loop_header675.1:                           ; preds = %polly.loop_header675, %polly.loop_header675.1
  %polly.indvar679.1 = phi i64 [ %polly.indvar_next680.1, %polly.loop_header675.1 ], [ %286, %polly.loop_header675 ]
  %615 = add nuw nsw i64 %polly.indvar679.1, %266
  %polly.access.mul.call1683.1 = mul nuw nsw i64 %615, 1000
  %polly.access.add.call1684.1 = add nuw nsw i64 %256, %polly.access.mul.call1683.1
  %polly.access.call1685.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.1
  %polly.access.call1685.load.1 = load double, double* %polly.access.call1685.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1521687.1 = add nuw nsw i64 %polly.indvar679.1, 1200
  %polly.access.Packed_MemRef_call1521688.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.1
  store double %polly.access.call1685.load.1, double* %polly.access.Packed_MemRef_call1521688.1, align 8
  %polly.indvar_next680.1 = add nuw nsw i64 %polly.indvar679.1, 1
  %polly.loop_cond681.not.not.1 = icmp ult i64 %polly.indvar679.1, %291
  br i1 %polly.loop_cond681.not.not.1, label %polly.loop_header675.1, label %polly.loop_header675.2

polly.loop_header675.2:                           ; preds = %polly.loop_header675.1, %polly.loop_header675.2
  %polly.indvar679.2 = phi i64 [ %polly.indvar_next680.2, %polly.loop_header675.2 ], [ %286, %polly.loop_header675.1 ]
  %616 = add nuw nsw i64 %polly.indvar679.2, %266
  %polly.access.mul.call1683.2 = mul nuw nsw i64 %616, 1000
  %polly.access.add.call1684.2 = add nuw nsw i64 %257, %polly.access.mul.call1683.2
  %polly.access.call1685.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.2
  %polly.access.call1685.load.2 = load double, double* %polly.access.call1685.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1521687.2 = add nuw nsw i64 %polly.indvar679.2, 2400
  %polly.access.Packed_MemRef_call1521688.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.2
  store double %polly.access.call1685.load.2, double* %polly.access.Packed_MemRef_call1521688.2, align 8
  %polly.indvar_next680.2 = add nuw nsw i64 %polly.indvar679.2, 1
  %polly.loop_cond681.not.not.2 = icmp ult i64 %polly.indvar679.2, %291
  br i1 %polly.loop_cond681.not.not.2, label %polly.loop_header675.2, label %polly.loop_header675.3

polly.loop_header675.3:                           ; preds = %polly.loop_header675.2, %polly.loop_header675.3
  %polly.indvar679.3 = phi i64 [ %polly.indvar_next680.3, %polly.loop_header675.3 ], [ %286, %polly.loop_header675.2 ]
  %617 = add nuw nsw i64 %polly.indvar679.3, %266
  %polly.access.mul.call1683.3 = mul nuw nsw i64 %617, 1000
  %polly.access.add.call1684.3 = add nuw nsw i64 %258, %polly.access.mul.call1683.3
  %polly.access.call1685.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.3
  %polly.access.call1685.load.3 = load double, double* %polly.access.call1685.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1521687.3 = add nuw nsw i64 %polly.indvar679.3, 3600
  %polly.access.Packed_MemRef_call1521688.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.3
  store double %polly.access.call1685.load.3, double* %polly.access.Packed_MemRef_call1521688.3, align 8
  %polly.indvar_next680.3 = add nuw nsw i64 %polly.indvar679.3, 1
  %polly.loop_cond681.not.not.3 = icmp ult i64 %polly.indvar679.3, %291
  br i1 %polly.loop_cond681.not.not.3, label %polly.loop_header675.3, label %polly.loop_header689.preheader

polly.loop_header663.us.1:                        ; preds = %polly.loop_header663.us.1.preheader, %polly.loop_header663.us.1
  %polly.indvar667.us.1 = phi i64 [ %polly.indvar_next668.us.1, %polly.loop_header663.us.1 ], [ 0, %polly.loop_header663.us.1.preheader ]
  %618 = add nuw nsw i64 %polly.indvar667.us.1, %266
  %polly.access.mul.call1671.us.1 = mul nuw nsw i64 %618, 1000
  %polly.access.add.call1672.us.1 = add nuw nsw i64 %256, %polly.access.mul.call1671.us.1
  %polly.access.call1673.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us.1
  %polly.access.call1673.load.us.1 = load double, double* %polly.access.call1673.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1521.us.1 = add nuw nsw i64 %polly.indvar667.us.1, 1200
  %polly.access.Packed_MemRef_call1521.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us.1
  store double %polly.access.call1673.load.us.1, double* %polly.access.Packed_MemRef_call1521.us.1, align 8
  %polly.indvar_next668.us.1 = add nuw i64 %polly.indvar667.us.1, 1
  %exitcond1132.1.not = icmp eq i64 %polly.indvar667.us.1, %288
  br i1 %exitcond1132.1.not, label %polly.loop_exit665.loopexit.us.1, label %polly.loop_header663.us.1

polly.loop_exit665.loopexit.us.1:                 ; preds = %polly.loop_header663.us.1
  br i1 %polly.loop_guard678.not, label %polly.loop_header663.us.2.preheader, label %polly.loop_header675.us.1

polly.loop_header675.us.1:                        ; preds = %polly.loop_exit665.loopexit.us.1, %polly.loop_header675.us.1
  %polly.indvar679.us.1 = phi i64 [ %polly.indvar_next680.us.1, %polly.loop_header675.us.1 ], [ %286, %polly.loop_exit665.loopexit.us.1 ]
  %619 = add nuw nsw i64 %polly.indvar679.us.1, %266
  %polly.access.mul.call1683.us.1 = mul nuw nsw i64 %619, 1000
  %polly.access.add.call1684.us.1 = add nuw nsw i64 %256, %polly.access.mul.call1683.us.1
  %polly.access.call1685.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us.1
  %polly.access.call1685.load.us.1 = load double, double* %polly.access.call1685.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1521687.us.1 = add nuw nsw i64 %polly.indvar679.us.1, 1200
  %polly.access.Packed_MemRef_call1521688.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us.1
  store double %polly.access.call1685.load.us.1, double* %polly.access.Packed_MemRef_call1521688.us.1, align 8
  %polly.indvar_next680.us.1 = add nuw nsw i64 %polly.indvar679.us.1, 1
  %polly.loop_cond681.not.not.us.1 = icmp ult i64 %polly.indvar679.us.1, %291
  br i1 %polly.loop_cond681.not.not.us.1, label %polly.loop_header675.us.1, label %polly.loop_header663.us.2.preheader

polly.loop_header663.us.2.preheader:              ; preds = %polly.loop_header675.us.1, %polly.loop_exit665.loopexit.us.1
  br label %polly.loop_header663.us.2

polly.loop_header663.us.2:                        ; preds = %polly.loop_header663.us.2.preheader, %polly.loop_header663.us.2
  %polly.indvar667.us.2 = phi i64 [ %polly.indvar_next668.us.2, %polly.loop_header663.us.2 ], [ 0, %polly.loop_header663.us.2.preheader ]
  %620 = add nuw nsw i64 %polly.indvar667.us.2, %266
  %polly.access.mul.call1671.us.2 = mul nuw nsw i64 %620, 1000
  %polly.access.add.call1672.us.2 = add nuw nsw i64 %257, %polly.access.mul.call1671.us.2
  %polly.access.call1673.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us.2
  %polly.access.call1673.load.us.2 = load double, double* %polly.access.call1673.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1521.us.2 = add nuw nsw i64 %polly.indvar667.us.2, 2400
  %polly.access.Packed_MemRef_call1521.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us.2
  store double %polly.access.call1673.load.us.2, double* %polly.access.Packed_MemRef_call1521.us.2, align 8
  %polly.indvar_next668.us.2 = add nuw i64 %polly.indvar667.us.2, 1
  %exitcond1132.2.not = icmp eq i64 %polly.indvar667.us.2, %288
  br i1 %exitcond1132.2.not, label %polly.loop_exit665.loopexit.us.2, label %polly.loop_header663.us.2

polly.loop_exit665.loopexit.us.2:                 ; preds = %polly.loop_header663.us.2
  br i1 %polly.loop_guard678.not, label %polly.loop_header663.us.3.preheader, label %polly.loop_header675.us.2

polly.loop_header675.us.2:                        ; preds = %polly.loop_exit665.loopexit.us.2, %polly.loop_header675.us.2
  %polly.indvar679.us.2 = phi i64 [ %polly.indvar_next680.us.2, %polly.loop_header675.us.2 ], [ %286, %polly.loop_exit665.loopexit.us.2 ]
  %621 = add nuw nsw i64 %polly.indvar679.us.2, %266
  %polly.access.mul.call1683.us.2 = mul nuw nsw i64 %621, 1000
  %polly.access.add.call1684.us.2 = add nuw nsw i64 %257, %polly.access.mul.call1683.us.2
  %polly.access.call1685.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us.2
  %polly.access.call1685.load.us.2 = load double, double* %polly.access.call1685.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1521687.us.2 = add nuw nsw i64 %polly.indvar679.us.2, 2400
  %polly.access.Packed_MemRef_call1521688.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us.2
  store double %polly.access.call1685.load.us.2, double* %polly.access.Packed_MemRef_call1521688.us.2, align 8
  %polly.indvar_next680.us.2 = add nuw nsw i64 %polly.indvar679.us.2, 1
  %polly.loop_cond681.not.not.us.2 = icmp ult i64 %polly.indvar679.us.2, %291
  br i1 %polly.loop_cond681.not.not.us.2, label %polly.loop_header675.us.2, label %polly.loop_header663.us.3.preheader

polly.loop_header663.us.3.preheader:              ; preds = %polly.loop_header675.us.2, %polly.loop_exit665.loopexit.us.2
  br label %polly.loop_header663.us.3

polly.loop_header663.us.3:                        ; preds = %polly.loop_header663.us.3.preheader, %polly.loop_header663.us.3
  %polly.indvar667.us.3 = phi i64 [ %polly.indvar_next668.us.3, %polly.loop_header663.us.3 ], [ 0, %polly.loop_header663.us.3.preheader ]
  %622 = add nuw nsw i64 %polly.indvar667.us.3, %266
  %polly.access.mul.call1671.us.3 = mul nuw nsw i64 %622, 1000
  %polly.access.add.call1672.us.3 = add nuw nsw i64 %258, %polly.access.mul.call1671.us.3
  %polly.access.call1673.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us.3
  %polly.access.call1673.load.us.3 = load double, double* %polly.access.call1673.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1521.us.3 = add nuw nsw i64 %polly.indvar667.us.3, 3600
  %polly.access.Packed_MemRef_call1521.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us.3
  store double %polly.access.call1673.load.us.3, double* %polly.access.Packed_MemRef_call1521.us.3, align 8
  %polly.indvar_next668.us.3 = add nuw i64 %polly.indvar667.us.3, 1
  %exitcond1132.3.not = icmp eq i64 %polly.indvar667.us.3, %288
  br i1 %exitcond1132.3.not, label %polly.loop_exit665.loopexit.us.3, label %polly.loop_header663.us.3

polly.loop_exit665.loopexit.us.3:                 ; preds = %polly.loop_header663.us.3
  br i1 %polly.loop_guard678.not, label %polly.loop_header689.preheader, label %polly.loop_header675.us.3

polly.loop_header675.us.3:                        ; preds = %polly.loop_exit665.loopexit.us.3, %polly.loop_header675.us.3
  %polly.indvar679.us.3 = phi i64 [ %polly.indvar_next680.us.3, %polly.loop_header675.us.3 ], [ %286, %polly.loop_exit665.loopexit.us.3 ]
  %623 = add nuw nsw i64 %polly.indvar679.us.3, %266
  %polly.access.mul.call1683.us.3 = mul nuw nsw i64 %623, 1000
  %polly.access.add.call1684.us.3 = add nuw nsw i64 %258, %polly.access.mul.call1683.us.3
  %polly.access.call1685.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us.3
  %polly.access.call1685.load.us.3 = load double, double* %polly.access.call1685.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1521687.us.3 = add nuw nsw i64 %polly.indvar679.us.3, 3600
  %polly.access.Packed_MemRef_call1521688.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us.3
  store double %polly.access.call1685.load.us.3, double* %polly.access.Packed_MemRef_call1521688.us.3, align 8
  %polly.indvar_next680.us.3 = add nuw nsw i64 %polly.indvar679.us.3, 1
  %polly.loop_cond681.not.not.us.3 = icmp ult i64 %polly.indvar679.us.3, %291
  br i1 %polly.loop_cond681.not.not.us.3, label %polly.loop_header675.us.3, label %polly.loop_header689.preheader

polly.loop_header696.us.1:                        ; preds = %polly.loop_exit705.us, %polly.loop_exit705.us.1
  %indvars.iv1136.1 = phi i64 [ %indvars.iv.next1137.1, %polly.loop_exit705.us.1 ], [ %indvars.iv1134, %polly.loop_exit705.us ]
  %polly.indvar700.us.1 = phi i64 [ %polly.indvar_next701.us.1, %polly.loop_exit705.us.1 ], [ 0, %polly.loop_exit705.us ]
  %624 = add i64 %273, %polly.indvar700.us.1
  %smin1355 = call i64 @llvm.smin.i64(i64 %624, i64 255)
  %625 = add nuw nsw i64 %smin1355, 1
  %626 = mul nuw nsw i64 %polly.indvar700.us.1, 9600
  %627 = add i64 %277, %polly.indvar700.us.1
  %smin1343 = call i64 @llvm.smin.i64(i64 %627, i64 255)
  %628 = shl nuw nsw i64 %smin1343, 3
  %smin1138.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1136.1, i64 255)
  %629 = add nuw nsw i64 %polly.indvar700.us.1, %286
  %630 = add nuw nsw i64 %polly.indvar700.us.1, %285
  %polly.access.add.Packed_MemRef_call2523714.us.1 = add nuw nsw i64 %629, 1200
  %polly.access.Packed_MemRef_call2523715.us.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us.1
  %_p_scalar_716.us.1 = load double, double* %polly.access.Packed_MemRef_call2523715.us.1, align 8
  %polly.access.Packed_MemRef_call1521723.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us.1
  %_p_scalar_724.us.1 = load double, double* %polly.access.Packed_MemRef_call1521723.us.1, align 8
  %631 = mul nuw nsw i64 %630, 9600
  %min.iters.check1356 = icmp ult i64 %smin1355, 3
  br i1 %min.iters.check1356, label %polly.loop_header703.us.1.preheader, label %vector.memcheck1340

vector.memcheck1340:                              ; preds = %polly.loop_header696.us.1
  %scevgep1347 = getelementptr i8, i8* %scevgep1346, i64 %628
  %632 = add i64 %276, %626
  %scevgep1342 = getelementptr i8, i8* %call, i64 %632
  %scevgep1344 = getelementptr i8, i8* %scevgep1342, i64 %628
  %633 = add i64 %275, %626
  %scevgep1341 = getelementptr i8, i8* %call, i64 %633
  %bound01348 = icmp ult i8* %scevgep1341, %scevgep1347
  %bound11349 = icmp ult i8* %scevgep1345, %scevgep1344
  %found.conflict1350 = and i1 %bound01348, %bound11349
  br i1 %found.conflict1350, label %polly.loop_header703.us.1.preheader, label %vector.ph1357

vector.ph1357:                                    ; preds = %vector.memcheck1340
  %n.vec1359 = and i64 %625, -4
  %broadcast.splatinsert1365 = insertelement <4 x double> poison, double %_p_scalar_716.us.1, i32 0
  %broadcast.splat1366 = shufflevector <4 x double> %broadcast.splatinsert1365, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1368 = insertelement <4 x double> poison, double %_p_scalar_724.us.1, i32 0
  %broadcast.splat1369 = shufflevector <4 x double> %broadcast.splatinsert1368, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %vector.ph1357
  %index1360 = phi i64 [ 0, %vector.ph1357 ], [ %index.next1361, %vector.body1354 ]
  %634 = add nuw nsw i64 %index1360, %266
  %635 = add nuw nsw i64 %index1360, 1200
  %636 = getelementptr double, double* %Packed_MemRef_call1521, i64 %635
  %637 = bitcast double* %636 to <4 x double>*
  %wide.load1364 = load <4 x double>, <4 x double>* %637, align 8, !alias.scope !179
  %638 = fmul fast <4 x double> %broadcast.splat1366, %wide.load1364
  %639 = getelementptr double, double* %Packed_MemRef_call2523, i64 %635
  %640 = bitcast double* %639 to <4 x double>*
  %wide.load1367 = load <4 x double>, <4 x double>* %640, align 8
  %641 = fmul fast <4 x double> %broadcast.splat1369, %wide.load1367
  %642 = shl i64 %634, 3
  %643 = add nuw nsw i64 %642, %631
  %644 = getelementptr i8, i8* %call, i64 %643
  %645 = bitcast i8* %644 to <4 x double>*
  %wide.load1370 = load <4 x double>, <4 x double>* %645, align 8, !alias.scope !182, !noalias !184
  %646 = fadd fast <4 x double> %641, %638
  %647 = fmul fast <4 x double> %646, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %648 = fadd fast <4 x double> %647, %wide.load1370
  %649 = bitcast i8* %644 to <4 x double>*
  store <4 x double> %648, <4 x double>* %649, align 8, !alias.scope !182, !noalias !184
  %index.next1361 = add i64 %index1360, 4
  %650 = icmp eq i64 %index.next1361, %n.vec1359
  br i1 %650, label %middle.block1352, label %vector.body1354, !llvm.loop !185

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1363 = icmp eq i64 %625, %n.vec1359
  br i1 %cmp.n1363, label %polly.loop_exit705.us.1, label %polly.loop_header703.us.1.preheader

polly.loop_header703.us.1.preheader:              ; preds = %vector.memcheck1340, %polly.loop_header696.us.1, %middle.block1352
  %polly.indvar706.us.1.ph = phi i64 [ 0, %vector.memcheck1340 ], [ 0, %polly.loop_header696.us.1 ], [ %n.vec1359, %middle.block1352 ]
  br label %polly.loop_header703.us.1

polly.loop_header703.us.1:                        ; preds = %polly.loop_header703.us.1.preheader, %polly.loop_header703.us.1
  %polly.indvar706.us.1 = phi i64 [ %polly.indvar_next707.us.1, %polly.loop_header703.us.1 ], [ %polly.indvar706.us.1.ph, %polly.loop_header703.us.1.preheader ]
  %651 = add nuw nsw i64 %polly.indvar706.us.1, %266
  %polly.access.add.Packed_MemRef_call1521710.us.1 = add nuw nsw i64 %polly.indvar706.us.1, 1200
  %polly.access.Packed_MemRef_call1521711.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us.1
  %_p_scalar_712.us.1 = load double, double* %polly.access.Packed_MemRef_call1521711.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_716.us.1, %_p_scalar_712.us.1
  %polly.access.Packed_MemRef_call2523719.us.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us.1
  %_p_scalar_720.us.1 = load double, double* %polly.access.Packed_MemRef_call2523719.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_724.us.1, %_p_scalar_720.us.1
  %652 = shl i64 %651, 3
  %653 = add nuw nsw i64 %652, %631
  %scevgep725.us.1 = getelementptr i8, i8* %call, i64 %653
  %scevgep725726.us.1 = bitcast i8* %scevgep725.us.1 to double*
  %_p_scalar_727.us.1 = load double, double* %scevgep725726.us.1, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_727.us.1
  store double %p_add42.i.us.1, double* %scevgep725726.us.1, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next707.us.1 = add nuw nsw i64 %polly.indvar706.us.1, 1
  %exitcond1139.1.not = icmp eq i64 %polly.indvar706.us.1, %smin1138.1
  br i1 %exitcond1139.1.not, label %polly.loop_exit705.us.1, label %polly.loop_header703.us.1, !llvm.loop !186

polly.loop_exit705.us.1:                          ; preds = %polly.loop_header703.us.1, %middle.block1352
  %polly.indvar_next701.us.1 = add nuw nsw i64 %polly.indvar700.us.1, 1
  %indvars.iv.next1137.1 = add nuw nsw i64 %indvars.iv1136.1, 1
  %exitcond1146.1.not = icmp eq i64 %polly.indvar700.us.1, %smax1145
  br i1 %exitcond1146.1.not, label %polly.loop_header696.us.2, label %polly.loop_header696.us.1

polly.loop_header696.us.2:                        ; preds = %polly.loop_exit705.us.1, %polly.loop_exit705.us.2
  %indvars.iv1136.2 = phi i64 [ %indvars.iv.next1137.2, %polly.loop_exit705.us.2 ], [ %indvars.iv1134, %polly.loop_exit705.us.1 ]
  %polly.indvar700.us.2 = phi i64 [ %polly.indvar_next701.us.2, %polly.loop_exit705.us.2 ], [ 0, %polly.loop_exit705.us.1 ]
  %654 = add i64 %278, %polly.indvar700.us.2
  %smin1324 = call i64 @llvm.smin.i64(i64 %654, i64 255)
  %655 = add nuw nsw i64 %smin1324, 1
  %656 = mul nuw nsw i64 %polly.indvar700.us.2, 9600
  %657 = add i64 %282, %polly.indvar700.us.2
  %smin1312 = call i64 @llvm.smin.i64(i64 %657, i64 255)
  %658 = shl nuw nsw i64 %smin1312, 3
  %smin1138.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1136.2, i64 255)
  %659 = add nuw nsw i64 %polly.indvar700.us.2, %286
  %660 = add nuw nsw i64 %polly.indvar700.us.2, %285
  %polly.access.add.Packed_MemRef_call2523714.us.2 = add nuw nsw i64 %659, 2400
  %polly.access.Packed_MemRef_call2523715.us.2 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us.2
  %_p_scalar_716.us.2 = load double, double* %polly.access.Packed_MemRef_call2523715.us.2, align 8
  %polly.access.Packed_MemRef_call1521723.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us.2
  %_p_scalar_724.us.2 = load double, double* %polly.access.Packed_MemRef_call1521723.us.2, align 8
  %661 = mul nuw nsw i64 %660, 9600
  %min.iters.check1325 = icmp ult i64 %smin1324, 3
  br i1 %min.iters.check1325, label %polly.loop_header703.us.2.preheader, label %vector.memcheck1309

vector.memcheck1309:                              ; preds = %polly.loop_header696.us.2
  %scevgep1316 = getelementptr i8, i8* %scevgep1315, i64 %658
  %662 = add i64 %281, %656
  %scevgep1311 = getelementptr i8, i8* %call, i64 %662
  %scevgep1313 = getelementptr i8, i8* %scevgep1311, i64 %658
  %663 = add i64 %280, %656
  %scevgep1310 = getelementptr i8, i8* %call, i64 %663
  %bound01317 = icmp ult i8* %scevgep1310, %scevgep1316
  %bound11318 = icmp ult i8* %scevgep1314, %scevgep1313
  %found.conflict1319 = and i1 %bound01317, %bound11318
  br i1 %found.conflict1319, label %polly.loop_header703.us.2.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %vector.memcheck1309
  %n.vec1328 = and i64 %655, -4
  %broadcast.splatinsert1334 = insertelement <4 x double> poison, double %_p_scalar_716.us.2, i32 0
  %broadcast.splat1335 = shufflevector <4 x double> %broadcast.splatinsert1334, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_724.us.2, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1323 ]
  %664 = add nuw nsw i64 %index1329, %266
  %665 = add nuw nsw i64 %index1329, 2400
  %666 = getelementptr double, double* %Packed_MemRef_call1521, i64 %665
  %667 = bitcast double* %666 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %667, align 8, !alias.scope !187
  %668 = fmul fast <4 x double> %broadcast.splat1335, %wide.load1333
  %669 = getelementptr double, double* %Packed_MemRef_call2523, i64 %665
  %670 = bitcast double* %669 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %670, align 8
  %671 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %672 = shl i64 %664, 3
  %673 = add nuw nsw i64 %672, %661
  %674 = getelementptr i8, i8* %call, i64 %673
  %675 = bitcast i8* %674 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %675, align 8, !alias.scope !190, !noalias !192
  %676 = fadd fast <4 x double> %671, %668
  %677 = fmul fast <4 x double> %676, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %678 = fadd fast <4 x double> %677, %wide.load1339
  %679 = bitcast i8* %674 to <4 x double>*
  store <4 x double> %678, <4 x double>* %679, align 8, !alias.scope !190, !noalias !192
  %index.next1330 = add i64 %index1329, 4
  %680 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %680, label %middle.block1321, label %vector.body1323, !llvm.loop !193

middle.block1321:                                 ; preds = %vector.body1323
  %cmp.n1332 = icmp eq i64 %655, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit705.us.2, label %polly.loop_header703.us.2.preheader

polly.loop_header703.us.2.preheader:              ; preds = %vector.memcheck1309, %polly.loop_header696.us.2, %middle.block1321
  %polly.indvar706.us.2.ph = phi i64 [ 0, %vector.memcheck1309 ], [ 0, %polly.loop_header696.us.2 ], [ %n.vec1328, %middle.block1321 ]
  br label %polly.loop_header703.us.2

polly.loop_header703.us.2:                        ; preds = %polly.loop_header703.us.2.preheader, %polly.loop_header703.us.2
  %polly.indvar706.us.2 = phi i64 [ %polly.indvar_next707.us.2, %polly.loop_header703.us.2 ], [ %polly.indvar706.us.2.ph, %polly.loop_header703.us.2.preheader ]
  %681 = add nuw nsw i64 %polly.indvar706.us.2, %266
  %polly.access.add.Packed_MemRef_call1521710.us.2 = add nuw nsw i64 %polly.indvar706.us.2, 2400
  %polly.access.Packed_MemRef_call1521711.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us.2
  %_p_scalar_712.us.2 = load double, double* %polly.access.Packed_MemRef_call1521711.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_716.us.2, %_p_scalar_712.us.2
  %polly.access.Packed_MemRef_call2523719.us.2 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us.2
  %_p_scalar_720.us.2 = load double, double* %polly.access.Packed_MemRef_call2523719.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_724.us.2, %_p_scalar_720.us.2
  %682 = shl i64 %681, 3
  %683 = add nuw nsw i64 %682, %661
  %scevgep725.us.2 = getelementptr i8, i8* %call, i64 %683
  %scevgep725726.us.2 = bitcast i8* %scevgep725.us.2 to double*
  %_p_scalar_727.us.2 = load double, double* %scevgep725726.us.2, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_727.us.2
  store double %p_add42.i.us.2, double* %scevgep725726.us.2, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next707.us.2 = add nuw nsw i64 %polly.indvar706.us.2, 1
  %exitcond1139.2.not = icmp eq i64 %polly.indvar706.us.2, %smin1138.2
  br i1 %exitcond1139.2.not, label %polly.loop_exit705.us.2, label %polly.loop_header703.us.2, !llvm.loop !194

polly.loop_exit705.us.2:                          ; preds = %polly.loop_header703.us.2, %middle.block1321
  %polly.indvar_next701.us.2 = add nuw nsw i64 %polly.indvar700.us.2, 1
  %indvars.iv.next1137.2 = add nuw nsw i64 %indvars.iv1136.2, 1
  %exitcond1146.2.not = icmp eq i64 %polly.indvar700.us.2, %smax1145
  br i1 %exitcond1146.2.not, label %polly.loop_header696.us.3, label %polly.loop_header696.us.2

polly.loop_header696.us.3:                        ; preds = %polly.loop_exit705.us.2, %polly.loop_exit705.us.3
  %indvars.iv1136.3 = phi i64 [ %indvars.iv.next1137.3, %polly.loop_exit705.us.3 ], [ %indvars.iv1134, %polly.loop_exit705.us.2 ]
  %polly.indvar700.us.3 = phi i64 [ %polly.indvar_next701.us.3, %polly.loop_exit705.us.3 ], [ 0, %polly.loop_exit705.us.2 ]
  %684 = add i64 %283, %polly.indvar700.us.3
  %smin1293 = call i64 @llvm.smin.i64(i64 %684, i64 255)
  %685 = add nuw nsw i64 %smin1293, 1
  %smin1138.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1136.3, i64 255)
  %686 = add nuw nsw i64 %polly.indvar700.us.3, %286
  %687 = add nuw nsw i64 %polly.indvar700.us.3, %285
  %polly.access.add.Packed_MemRef_call2523714.us.3 = add nuw nsw i64 %686, 3600
  %polly.access.Packed_MemRef_call2523715.us.3 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us.3
  %_p_scalar_716.us.3 = load double, double* %polly.access.Packed_MemRef_call2523715.us.3, align 8
  %polly.access.Packed_MemRef_call1521723.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us.3
  %_p_scalar_724.us.3 = load double, double* %polly.access.Packed_MemRef_call1521723.us.3, align 8
  %688 = mul nuw nsw i64 %687, 9600
  %min.iters.check1294 = icmp ult i64 %smin1293, 3
  br i1 %min.iters.check1294, label %polly.loop_header703.us.3.preheader, label %vector.ph1295

vector.ph1295:                                    ; preds = %polly.loop_header696.us.3
  %n.vec1297 = and i64 %685, -4
  %broadcast.splatinsert1303 = insertelement <4 x double> poison, double %_p_scalar_716.us.3, i32 0
  %broadcast.splat1304 = shufflevector <4 x double> %broadcast.splatinsert1303, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1306 = insertelement <4 x double> poison, double %_p_scalar_724.us.3, i32 0
  %broadcast.splat1307 = shufflevector <4 x double> %broadcast.splatinsert1306, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1295
  %index1298 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1299, %vector.body1290 ]
  %689 = add nuw nsw i64 %index1298, %266
  %690 = add nuw nsw i64 %index1298, 3600
  %691 = getelementptr double, double* %Packed_MemRef_call1521, i64 %690
  %692 = bitcast double* %691 to <4 x double>*
  %wide.load1302 = load <4 x double>, <4 x double>* %692, align 8
  %693 = fmul fast <4 x double> %broadcast.splat1304, %wide.load1302
  %694 = getelementptr double, double* %Packed_MemRef_call2523, i64 %690
  %695 = bitcast double* %694 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %695, align 8
  %696 = fmul fast <4 x double> %broadcast.splat1307, %wide.load1305
  %697 = shl i64 %689, 3
  %698 = add nuw nsw i64 %697, %688
  %699 = getelementptr i8, i8* %call, i64 %698
  %700 = bitcast i8* %699 to <4 x double>*
  %wide.load1308 = load <4 x double>, <4 x double>* %700, align 8, !alias.scope !111, !noalias !113
  %701 = fadd fast <4 x double> %696, %693
  %702 = fmul fast <4 x double> %701, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %703 = fadd fast <4 x double> %702, %wide.load1308
  %704 = bitcast i8* %699 to <4 x double>*
  store <4 x double> %703, <4 x double>* %704, align 8, !alias.scope !111, !noalias !113
  %index.next1299 = add i64 %index1298, 4
  %705 = icmp eq i64 %index.next1299, %n.vec1297
  br i1 %705, label %middle.block1288, label %vector.body1290, !llvm.loop !195

middle.block1288:                                 ; preds = %vector.body1290
  %cmp.n1301 = icmp eq i64 %685, %n.vec1297
  br i1 %cmp.n1301, label %polly.loop_exit705.us.3, label %polly.loop_header703.us.3.preheader

polly.loop_header703.us.3.preheader:              ; preds = %polly.loop_header696.us.3, %middle.block1288
  %polly.indvar706.us.3.ph = phi i64 [ 0, %polly.loop_header696.us.3 ], [ %n.vec1297, %middle.block1288 ]
  br label %polly.loop_header703.us.3

polly.loop_header703.us.3:                        ; preds = %polly.loop_header703.us.3.preheader, %polly.loop_header703.us.3
  %polly.indvar706.us.3 = phi i64 [ %polly.indvar_next707.us.3, %polly.loop_header703.us.3 ], [ %polly.indvar706.us.3.ph, %polly.loop_header703.us.3.preheader ]
  %706 = add nuw nsw i64 %polly.indvar706.us.3, %266
  %polly.access.add.Packed_MemRef_call1521710.us.3 = add nuw nsw i64 %polly.indvar706.us.3, 3600
  %polly.access.Packed_MemRef_call1521711.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us.3
  %_p_scalar_712.us.3 = load double, double* %polly.access.Packed_MemRef_call1521711.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_716.us.3, %_p_scalar_712.us.3
  %polly.access.Packed_MemRef_call2523719.us.3 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us.3
  %_p_scalar_720.us.3 = load double, double* %polly.access.Packed_MemRef_call2523719.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_724.us.3, %_p_scalar_720.us.3
  %707 = shl i64 %706, 3
  %708 = add nuw nsw i64 %707, %688
  %scevgep725.us.3 = getelementptr i8, i8* %call, i64 %708
  %scevgep725726.us.3 = bitcast i8* %scevgep725.us.3 to double*
  %_p_scalar_727.us.3 = load double, double* %scevgep725726.us.3, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_727.us.3
  store double %p_add42.i.us.3, double* %scevgep725726.us.3, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next707.us.3 = add nuw nsw i64 %polly.indvar706.us.3, 1
  %exitcond1139.3.not = icmp eq i64 %polly.indvar706.us.3, %smin1138.3
  br i1 %exitcond1139.3.not, label %polly.loop_exit705.us.3, label %polly.loop_header703.us.3, !llvm.loop !196

polly.loop_exit705.us.3:                          ; preds = %polly.loop_header703.us.3, %middle.block1288
  %polly.indvar_next701.us.3 = add nuw nsw i64 %polly.indvar700.us.3, 1
  %indvars.iv.next1137.3 = add nuw nsw i64 %indvars.iv1136.3, 1
  %exitcond1146.3.not = icmp eq i64 %polly.indvar700.us.3, %smax1145
  br i1 %exitcond1146.3.not, label %polly.loop_exit691, label %polly.loop_header696.us.3
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
!51 = !{!"llvm.loop.tile.size", i32 32}
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
