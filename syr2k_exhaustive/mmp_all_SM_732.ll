; ModuleID = 'syr2k_exhaustive/mmp_all_SM_732.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_732.c"
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
  br i1 %57, label %middle.block1401, label %vector.body1403, !llvm.loop !63

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

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
  br i1 %68, label %middle.block1540, label %vector.body1542, !llvm.loop !65

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load1565 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1565, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1562 = add i64 %index1561, 4
  %95 = icmp eq i64 %index.next1562, %n.vec1560
  br i1 %95, label %middle.block1552, label %vector.body1554, !llvm.loop !78

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
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1099.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

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
  %101 = mul nuw nsw i64 %polly.indvar209, 614912
  %102 = or i64 %101, 8
  %103 = mul nuw nsw i64 %polly.indvar209, 614912
  %104 = or i64 %103, 8
  %105 = mul nuw nsw i64 %polly.indvar209, 614912
  %106 = or i64 %105, 8
  %107 = mul nsw i64 %polly.indvar209, -64
  %108 = shl nsw i64 %polly.indvar209, 6
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, -64
  %exitcond1097.not = icmp eq i64 %polly.indvar_next210, 19
  br i1 %exitcond1097.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %109 = add nuw nsw i64 %polly.indvar221, %108
  %polly.access.mul.call2225 = mul nuw nsw i64 %109, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %97, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit220.3, %polly.loop_exit267
  %indvar1569 = phi i64 [ 0, %polly.loop_exit220.3 ], [ %indvar.next1570, %polly.loop_exit267 ]
  %indvars.iv1091 = phi i64 [ %indvars.iv1089, %polly.loop_exit220.3 ], [ %indvars.iv.next1092, %polly.loop_exit267 ]
  %indvars.iv1084 = phi i64 [ 0, %polly.loop_exit220.3 ], [ %indvars.iv.next1085, %polly.loop_exit267 ]
  %polly.indvar231 = phi i64 [ %polly.indvar209, %polly.loop_exit220.3 ], [ %polly.indvar_next232, %polly.loop_exit267 ]
  %110 = shl nuw nsw i64 %indvar1569, 6
  %111 = mul nuw nsw i64 %indvar1569, 614400
  %112 = add i64 %101, %111
  %113 = add i64 %102, %111
  %114 = shl nuw nsw i64 %indvar1569, 6
  %115 = shl nuw nsw i64 %indvar1569, 6
  %116 = mul nuw nsw i64 %indvar1569, 614400
  %117 = add i64 %103, %116
  %118 = add i64 %104, %116
  %119 = shl nuw nsw i64 %indvar1569, 6
  %120 = shl nuw nsw i64 %indvar1569, 6
  %121 = mul nuw nsw i64 %indvar1569, 614400
  %122 = add i64 %105, %121
  %123 = add i64 %106, %121
  %124 = shl nuw nsw i64 %indvar1569, 6
  %125 = shl nuw nsw i64 %indvar1569, 6
  %smin1093 = call i64 @llvm.smin.i64(i64 %indvars.iv1091, i64 -1136)
  %126 = add nsw i64 %smin1093, 1199
  %smax = call i64 @llvm.smax.i64(i64 %126, i64 0)
  %127 = shl nsw i64 %polly.indvar231, 6
  %128 = add nsw i64 %127, %107
  %.inv.not = icmp eq i64 %128, 0
  %129 = or i64 %128, 63
  %130 = icmp ult i64 %409, %129
  %131 = select i1 %130, i64 %409, i64 %129
  %polly.loop_guard254.not = icmp ugt i64 %128, %131
  br i1 %.inv.not, label %polly.loop_header228.split, label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header228, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header228 ]
  %132 = add nuw nsw i64 %polly.indvar243.us, %108
  %polly.access.mul.call1247.us = mul nuw nsw i64 %132, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %97, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar243.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next244.us, 64
  br i1 %exitcond1082.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %128, %polly.loop_exit242.loopexit.us ]
  %133 = add nuw nsw i64 %polly.indvar255.us, %108
  %polly.access.mul.call1259.us = mul nuw nsw i64 %133, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %97, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp ult i64 %polly.indvar255.us, %131
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_header240.us.1.preheader

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.1.preheader, label %polly.loop_header251.us

polly.loop_header240.us.1.preheader:              ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  br label %polly.loop_header240.us.1

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251

polly.loop_exit267:                               ; preds = %polly.loop_exit281.us.3, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 64
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -64
  %exitcond1096.not = icmp eq i64 %polly.indvar_next232, 19
  %indvar.next1570 = add i64 %indvar1569, 1
  br i1 %exitcond1096.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header265.preheader:                   ; preds = %polly.loop_header251.us.3, %polly.loop_header251.3, %polly.loop_exit242.loopexit.us.3, %polly.loop_header228.split
  %134 = mul nsw i64 %polly.indvar231, -64
  %polly.loop_guard2751187 = icmp sgt i64 %134, -1200
  br i1 %polly.loop_guard2751187, label %polly.loop_header272.us, label %polly.loop_exit267

polly.loop_header272.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit281.us
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit281.us ], [ %indvars.iv1084, %polly.loop_header265.preheader ]
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_exit281.us ], [ 0, %polly.loop_header265.preheader ]
  %135 = add i64 %110, %polly.indvar276.us
  %smin1663 = call i64 @llvm.smin.i64(i64 %135, i64 63)
  %136 = add nuw nsw i64 %smin1663, 1
  %137 = mul nuw nsw i64 %polly.indvar276.us, 9600
  %138 = add i64 %114, %polly.indvar276.us
  %smin1652 = call i64 @llvm.smin.i64(i64 %138, i64 63)
  %139 = shl nuw nsw i64 %smin1652, 3
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1086, i64 63)
  %140 = add nuw nsw i64 %polly.indvar276.us, %128
  %141 = add nuw nsw i64 %polly.indvar276.us, %127
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %140
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1, i64 %140
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %142 = mul nuw nsw i64 %141, 9600
  %min.iters.check1664 = icmp ult i64 %smin1663, 3
  br i1 %min.iters.check1664, label %polly.loop_header279.us.preheader, label %vector.memcheck1649

vector.memcheck1649:                              ; preds = %polly.loop_header272.us
  %scevgep1655 = getelementptr i8, i8* %scevgep1654, i64 %139
  %143 = add i64 %113, %137
  %scevgep1651 = getelementptr i8, i8* %call, i64 %143
  %scevgep1653 = getelementptr i8, i8* %scevgep1651, i64 %139
  %144 = add i64 %112, %137
  %scevgep1650 = getelementptr i8, i8* %call, i64 %144
  %bound01656 = icmp ult i8* %scevgep1650, %scevgep1655
  %bound11657 = icmp ult i8* %malloccall, %scevgep1653
  %found.conflict1658 = and i1 %bound01656, %bound11657
  br i1 %found.conflict1658, label %polly.loop_header279.us.preheader, label %vector.ph1665

vector.ph1665:                                    ; preds = %vector.memcheck1649
  %n.vec1667 = and i64 %136, -4
  %broadcast.splatinsert1673 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1674 = shufflevector <4 x double> %broadcast.splatinsert1673, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1676 = insertelement <4 x double> poison, double %_p_scalar_300.us, i32 0
  %broadcast.splat1677 = shufflevector <4 x double> %broadcast.splatinsert1676, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1662

vector.body1662:                                  ; preds = %vector.body1662, %vector.ph1665
  %index1668 = phi i64 [ 0, %vector.ph1665 ], [ %index.next1669, %vector.body1662 ]
  %145 = add nuw nsw i64 %index1668, %108
  %146 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1668
  %147 = bitcast double* %146 to <4 x double>*
  %wide.load1672 = load <4 x double>, <4 x double>* %147, align 8, !alias.scope !83
  %148 = fmul fast <4 x double> %broadcast.splat1674, %wide.load1672
  %149 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1668
  %150 = bitcast double* %149 to <4 x double>*
  %wide.load1675 = load <4 x double>, <4 x double>* %150, align 8
  %151 = fmul fast <4 x double> %broadcast.splat1677, %wide.load1675
  %152 = shl i64 %145, 3
  %153 = add nuw nsw i64 %152, %142
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  %wide.load1678 = load <4 x double>, <4 x double>* %155, align 8, !alias.scope !86, !noalias !88
  %156 = fadd fast <4 x double> %151, %148
  %157 = fmul fast <4 x double> %156, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %158 = fadd fast <4 x double> %157, %wide.load1678
  %159 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %158, <4 x double>* %159, align 8, !alias.scope !86, !noalias !88
  %index.next1669 = add i64 %index1668, 4
  %160 = icmp eq i64 %index.next1669, %n.vec1667
  br i1 %160, label %middle.block1660, label %vector.body1662, !llvm.loop !89

middle.block1660:                                 ; preds = %vector.body1662
  %cmp.n1671 = icmp eq i64 %136, %n.vec1667
  br i1 %cmp.n1671, label %polly.loop_exit281.us, label %polly.loop_header279.us.preheader

polly.loop_header279.us.preheader:                ; preds = %vector.memcheck1649, %polly.loop_header272.us, %middle.block1660
  %polly.indvar282.us.ph = phi i64 [ 0, %vector.memcheck1649 ], [ 0, %polly.loop_header272.us ], [ %n.vec1667, %middle.block1660 ]
  br label %polly.loop_header279.us

polly.loop_header279.us:                          ; preds = %polly.loop_header279.us.preheader, %polly.loop_header279.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header279.us ], [ %polly.indvar282.us.ph, %polly.loop_header279.us.preheader ]
  %161 = add nuw nsw i64 %polly.indvar282.us, %108
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar282.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar282.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_300.us, %_p_scalar_296.us
  %162 = shl i64 %161, 3
  %163 = add nuw nsw i64 %162, %142
  %scevgep301.us = getelementptr i8, i8* %call, i64 %163
  %scevgep301302.us = bitcast i8* %scevgep301.us to double*
  %_p_scalar_303.us = load double, double* %scevgep301302.us, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_303.us
  store double %p_add42.i118.us, double* %scevgep301302.us, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar282.us, %smin
  br i1 %exitcond1088.not, label %polly.loop_exit281.us, label %polly.loop_header279.us, !llvm.loop !90

polly.loop_exit281.us:                            ; preds = %polly.loop_header279.us, %middle.block1660
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar276.us, %smax
  br i1 %exitcond1094.not, label %polly.loop_header272.us.1, label %polly.loop_header272.us

polly.loop_header251:                             ; preds = %polly.loop_header228.split, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ 0, %polly.loop_header228.split ]
  %164 = add nuw nsw i64 %polly.indvar255, %108
  %polly.access.mul.call1259 = mul nuw nsw i64 %164, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %97, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp ult i64 %polly.indvar255, %131
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
  %165 = add i64 %indvar1416, 1
  %166 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %166
  %min.iters.check1418 = icmp ult i64 %165, 4
  br i1 %min.iters.check1418, label %polly.loop_header400.preheader, label %vector.ph1419

vector.ph1419:                                    ; preds = %polly.loop_header394
  %n.vec1421 = and i64 %165, -4
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %vector.ph1419
  %index1422 = phi i64 [ 0, %vector.ph1419 ], [ %index.next1423, %vector.body1415 ]
  %167 = shl nuw nsw i64 %index1422, 3
  %168 = getelementptr i8, i8* %scevgep406, i64 %167
  %169 = bitcast i8* %168 to <4 x double>*
  %wide.load1426 = load <4 x double>, <4 x double>* %169, align 8, !alias.scope !91, !noalias !93
  %170 = fmul fast <4 x double> %wide.load1426, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %171 = bitcast i8* %168 to <4 x double>*
  store <4 x double> %170, <4 x double>* %171, align 8, !alias.scope !91, !noalias !93
  %index.next1423 = add i64 %index1422, 4
  %172 = icmp eq i64 %index.next1423, %n.vec1421
  br i1 %172, label %middle.block1413, label %vector.body1415, !llvm.loop !98

middle.block1413:                                 ; preds = %vector.body1415
  %cmp.n1425 = icmp eq i64 %165, %n.vec1421
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
  %173 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %173
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !91, !noalias !93
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1125.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !99

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %174 = shl nsw i64 %polly.indvar413, 2
  %175 = or i64 %174, 1
  %176 = or i64 %174, 2
  %177 = or i64 %174, 3
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit440
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next414, 250
  br i1 %exitcond1124.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit440, %polly.loop_header410
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit440 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %178 = mul nuw nsw i64 %polly.indvar419, 614912
  %179 = or i64 %178, 8
  %180 = mul nuw nsw i64 %polly.indvar419, 614912
  %181 = or i64 %180, 8
  %182 = mul nuw nsw i64 %polly.indvar419, 614912
  %183 = or i64 %182, 8
  %184 = mul nsw i64 %polly.indvar419, -64
  %185 = shl nsw i64 %polly.indvar419, 6
  br label %polly.loop_header428

polly.loop_exit440:                               ; preds = %polly.loop_exit479
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -64
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -64
  %exitcond1123.not = icmp eq i64 %polly.indvar_next420, 19
  br i1 %exitcond1123.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header416
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %186 = add nuw nsw i64 %polly.indvar431, %185
  %polly.access.mul.call2435 = mul nuw nsw i64 %186, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %174, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !95, !noalias !100
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar431
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1101
  br i1 %exitcond1103.not, label %polly.loop_header428.1, label %polly.loop_header428

polly.loop_header438:                             ; preds = %polly.loop_exit430.3, %polly.loop_exit479
  %indvar1430 = phi i64 [ 0, %polly.loop_exit430.3 ], [ %indvar.next1431, %polly.loop_exit479 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv1114, %polly.loop_exit430.3 ], [ %indvars.iv.next1117, %polly.loop_exit479 ]
  %indvars.iv1108 = phi i64 [ 0, %polly.loop_exit430.3 ], [ %indvars.iv.next1109, %polly.loop_exit479 ]
  %polly.indvar441 = phi i64 [ %polly.indvar419, %polly.loop_exit430.3 ], [ %polly.indvar_next442, %polly.loop_exit479 ]
  %187 = shl nuw nsw i64 %indvar1430, 6
  %188 = mul nuw nsw i64 %indvar1430, 614400
  %189 = add i64 %178, %188
  %190 = add i64 %179, %188
  %191 = shl nuw nsw i64 %indvar1430, 6
  %192 = shl nuw nsw i64 %indvar1430, 6
  %193 = mul nuw nsw i64 %indvar1430, 614400
  %194 = add i64 %180, %193
  %195 = add i64 %181, %193
  %196 = shl nuw nsw i64 %indvar1430, 6
  %197 = shl nuw nsw i64 %indvar1430, 6
  %198 = mul nuw nsw i64 %indvar1430, 614400
  %199 = add i64 %182, %198
  %200 = add i64 %183, %198
  %201 = shl nuw nsw i64 %indvar1430, 6
  %202 = shl nuw nsw i64 %indvar1430, 6
  %smin1118 = call i64 @llvm.smin.i64(i64 %indvars.iv1116, i64 -1136)
  %203 = add nsw i64 %smin1118, 1199
  %smax1119 = call i64 @llvm.smax.i64(i64 %203, i64 0)
  %204 = shl nsw i64 %polly.indvar441, 6
  %205 = add nsw i64 %204, %184
  %.inv934.not = icmp eq i64 %205, 0
  %206 = or i64 %205, 63
  %207 = icmp ult i64 %507, %206
  %208 = select i1 %207, i64 %507, i64 %206
  %polly.loop_guard466.not = icmp ugt i64 %205, %208
  br i1 %.inv934.not, label %polly.loop_header438.split, label %polly.loop_header451.us

polly.loop_header451.us:                          ; preds = %polly.loop_header438, %polly.loop_header451.us
  %polly.indvar455.us = phi i64 [ %polly.indvar_next456.us, %polly.loop_header451.us ], [ 0, %polly.loop_header438 ]
  %209 = add nuw nsw i64 %polly.indvar455.us, %185
  %polly.access.mul.call1459.us = mul nuw nsw i64 %209, 1000
  %polly.access.add.call1460.us = add nuw nsw i64 %174, %polly.access.mul.call1459.us
  %polly.access.call1461.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us
  %polly.access.call1461.load.us = load double, double* %polly.access.call1461.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar455.us
  store double %polly.access.call1461.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.indvar_next456.us = add nuw i64 %polly.indvar455.us, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next456.us, 64
  br i1 %exitcond1106.not, label %polly.loop_exit453.loopexit.us, label %polly.loop_header451.us

polly.loop_header463.us:                          ; preds = %polly.loop_exit453.loopexit.us, %polly.loop_header463.us
  %polly.indvar467.us = phi i64 [ %polly.indvar_next468.us, %polly.loop_header463.us ], [ %205, %polly.loop_exit453.loopexit.us ]
  %210 = add nuw nsw i64 %polly.indvar467.us, %185
  %polly.access.mul.call1471.us = mul nuw nsw i64 %210, 1000
  %polly.access.add.call1472.us = add nuw nsw i64 %174, %polly.access.mul.call1471.us
  %polly.access.call1473.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us
  %polly.access.call1473.load.us = load double, double* %polly.access.call1473.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1309476.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar467.us
  store double %polly.access.call1473.load.us, double* %polly.access.Packed_MemRef_call1309476.us, align 8
  %polly.indvar_next468.us = add nuw nsw i64 %polly.indvar467.us, 1
  %polly.loop_cond469.not.not.us = icmp ult i64 %polly.indvar467.us, %208
  br i1 %polly.loop_cond469.not.not.us, label %polly.loop_header463.us, label %polly.loop_header451.us.1.preheader

polly.loop_exit453.loopexit.us:                   ; preds = %polly.loop_header451.us
  br i1 %polly.loop_guard466.not, label %polly.loop_header451.us.1.preheader, label %polly.loop_header463.us

polly.loop_header451.us.1.preheader:              ; preds = %polly.loop_header463.us, %polly.loop_exit453.loopexit.us
  br label %polly.loop_header451.us.1

polly.loop_header438.split:                       ; preds = %polly.loop_header438
  br i1 %polly.loop_guard466.not, label %polly.loop_header477.preheader, label %polly.loop_header463

polly.loop_exit479:                               ; preds = %polly.loop_exit493.us.3, %polly.loop_header477.preheader
  %polly.indvar_next442 = add nuw nsw i64 %polly.indvar441, 1
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 64
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -64
  %exitcond1122.not = icmp eq i64 %polly.indvar_next442, 19
  %indvar.next1431 = add i64 %indvar1430, 1
  br i1 %exitcond1122.not, label %polly.loop_exit440, label %polly.loop_header438

polly.loop_header477.preheader:                   ; preds = %polly.loop_header463.us.3, %polly.loop_header463.3, %polly.loop_exit453.loopexit.us.3, %polly.loop_header438.split
  %211 = mul nsw i64 %polly.indvar441, -64
  %polly.loop_guard4871188 = icmp sgt i64 %211, -1200
  br i1 %polly.loop_guard4871188, label %polly.loop_header484.us, label %polly.loop_exit479

polly.loop_header484.us:                          ; preds = %polly.loop_header477.preheader, %polly.loop_exit493.us
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit493.us ], [ %indvars.iv1108, %polly.loop_header477.preheader ]
  %polly.indvar488.us = phi i64 [ %polly.indvar_next489.us, %polly.loop_exit493.us ], [ 0, %polly.loop_header477.preheader ]
  %212 = add i64 %187, %polly.indvar488.us
  %smin1524 = call i64 @llvm.smin.i64(i64 %212, i64 63)
  %213 = add nuw nsw i64 %smin1524, 1
  %214 = mul nuw nsw i64 %polly.indvar488.us, 9600
  %215 = add i64 %191, %polly.indvar488.us
  %smin1513 = call i64 @llvm.smin.i64(i64 %215, i64 63)
  %216 = shl nuw nsw i64 %smin1513, 3
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 63)
  %217 = add nuw nsw i64 %polly.indvar488.us, %205
  %218 = add nuw nsw i64 %polly.indvar488.us, %204
  %polly.access.Packed_MemRef_call2311503.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %217
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call2311503.us, align 8
  %polly.access.Packed_MemRef_call1309511.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %217
  %_p_scalar_512.us = load double, double* %polly.access.Packed_MemRef_call1309511.us, align 8
  %219 = mul nuw nsw i64 %218, 9600
  %min.iters.check1525 = icmp ult i64 %smin1524, 3
  br i1 %min.iters.check1525, label %polly.loop_header491.us.preheader, label %vector.memcheck1510

vector.memcheck1510:                              ; preds = %polly.loop_header484.us
  %scevgep1516 = getelementptr i8, i8* %scevgep1515, i64 %216
  %220 = add i64 %190, %214
  %scevgep1512 = getelementptr i8, i8* %call, i64 %220
  %scevgep1514 = getelementptr i8, i8* %scevgep1512, i64 %216
  %221 = add i64 %189, %214
  %scevgep1511 = getelementptr i8, i8* %call, i64 %221
  %bound01517 = icmp ult i8* %scevgep1511, %scevgep1516
  %bound11518 = icmp ult i8* %malloccall308, %scevgep1514
  %found.conflict1519 = and i1 %bound01517, %bound11518
  br i1 %found.conflict1519, label %polly.loop_header491.us.preheader, label %vector.ph1526

vector.ph1526:                                    ; preds = %vector.memcheck1510
  %n.vec1528 = and i64 %213, -4
  %broadcast.splatinsert1534 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1535 = shufflevector <4 x double> %broadcast.splatinsert1534, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1537 = insertelement <4 x double> poison, double %_p_scalar_512.us, i32 0
  %broadcast.splat1538 = shufflevector <4 x double> %broadcast.splatinsert1537, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1523

vector.body1523:                                  ; preds = %vector.body1523, %vector.ph1526
  %index1529 = phi i64 [ 0, %vector.ph1526 ], [ %index.next1530, %vector.body1523 ]
  %222 = add nuw nsw i64 %index1529, %185
  %223 = getelementptr double, double* %Packed_MemRef_call1309, i64 %index1529
  %224 = bitcast double* %223 to <4 x double>*
  %wide.load1533 = load <4 x double>, <4 x double>* %224, align 8, !alias.scope !102
  %225 = fmul fast <4 x double> %broadcast.splat1535, %wide.load1533
  %226 = getelementptr double, double* %Packed_MemRef_call2311, i64 %index1529
  %227 = bitcast double* %226 to <4 x double>*
  %wide.load1536 = load <4 x double>, <4 x double>* %227, align 8
  %228 = fmul fast <4 x double> %broadcast.splat1538, %wide.load1536
  %229 = shl i64 %222, 3
  %230 = add nuw nsw i64 %229, %219
  %231 = getelementptr i8, i8* %call, i64 %230
  %232 = bitcast i8* %231 to <4 x double>*
  %wide.load1539 = load <4 x double>, <4 x double>* %232, align 8, !alias.scope !105, !noalias !107
  %233 = fadd fast <4 x double> %228, %225
  %234 = fmul fast <4 x double> %233, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %235 = fadd fast <4 x double> %234, %wide.load1539
  %236 = bitcast i8* %231 to <4 x double>*
  store <4 x double> %235, <4 x double>* %236, align 8, !alias.scope !105, !noalias !107
  %index.next1530 = add i64 %index1529, 4
  %237 = icmp eq i64 %index.next1530, %n.vec1528
  br i1 %237, label %middle.block1521, label %vector.body1523, !llvm.loop !108

middle.block1521:                                 ; preds = %vector.body1523
  %cmp.n1532 = icmp eq i64 %213, %n.vec1528
  br i1 %cmp.n1532, label %polly.loop_exit493.us, label %polly.loop_header491.us.preheader

polly.loop_header491.us.preheader:                ; preds = %vector.memcheck1510, %polly.loop_header484.us, %middle.block1521
  %polly.indvar494.us.ph = phi i64 [ 0, %vector.memcheck1510 ], [ 0, %polly.loop_header484.us ], [ %n.vec1528, %middle.block1521 ]
  br label %polly.loop_header491.us

polly.loop_header491.us:                          ; preds = %polly.loop_header491.us.preheader, %polly.loop_header491.us
  %polly.indvar494.us = phi i64 [ %polly.indvar_next495.us, %polly.loop_header491.us ], [ %polly.indvar494.us.ph, %polly.loop_header491.us.preheader ]
  %238 = add nuw nsw i64 %polly.indvar494.us, %185
  %polly.access.Packed_MemRef_call1309499.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar494.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1309499.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %polly.access.Packed_MemRef_call2311507.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar494.us
  %_p_scalar_508.us = load double, double* %polly.access.Packed_MemRef_call2311507.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_512.us, %_p_scalar_508.us
  %239 = shl i64 %238, 3
  %240 = add nuw nsw i64 %239, %219
  %scevgep513.us = getelementptr i8, i8* %call, i64 %240
  %scevgep513514.us = bitcast i8* %scevgep513.us to double*
  %_p_scalar_515.us = load double, double* %scevgep513514.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_515.us
  store double %p_add42.i79.us, double* %scevgep513514.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next495.us = add nuw nsw i64 %polly.indvar494.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar494.us, %smin1112
  br i1 %exitcond1113.not, label %polly.loop_exit493.us, label %polly.loop_header491.us, !llvm.loop !109

polly.loop_exit493.us:                            ; preds = %polly.loop_header491.us, %middle.block1521
  %polly.indvar_next489.us = add nuw nsw i64 %polly.indvar488.us, 1
  %indvars.iv.next1111 = add nuw nsw i64 %indvars.iv1110, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar488.us, %smax1119
  br i1 %exitcond1120.not, label %polly.loop_header484.us.1, label %polly.loop_header484.us

polly.loop_header463:                             ; preds = %polly.loop_header438.split, %polly.loop_header463
  %polly.indvar467 = phi i64 [ %polly.indvar_next468, %polly.loop_header463 ], [ 0, %polly.loop_header438.split ]
  %241 = add nuw nsw i64 %polly.indvar467, %185
  %polly.access.mul.call1471 = mul nuw nsw i64 %241, 1000
  %polly.access.add.call1472 = add nuw nsw i64 %174, %polly.access.mul.call1471
  %polly.access.call1473 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472
  %polly.access.call1473.load = load double, double* %polly.access.call1473, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1309476 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar467
  store double %polly.access.call1473.load, double* %polly.access.Packed_MemRef_call1309476, align 8
  %polly.indvar_next468 = add nuw nsw i64 %polly.indvar467, 1
  %polly.loop_cond469.not.not = icmp ult i64 %polly.indvar467, %208
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
  %242 = add i64 %indvar, 1
  %243 = mul nuw nsw i64 %polly.indvar609, 9600
  %scevgep618 = getelementptr i8, i8* %call, i64 %243
  %min.iters.check1279 = icmp ult i64 %242, 4
  br i1 %min.iters.check1279, label %polly.loop_header612.preheader, label %vector.ph1280

vector.ph1280:                                    ; preds = %polly.loop_header606
  %n.vec1282 = and i64 %242, -4
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1278 ]
  %244 = shl nuw nsw i64 %index1283, 3
  %245 = getelementptr i8, i8* %scevgep618, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1287 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !110, !noalias !112
  %247 = fmul fast <4 x double> %wide.load1287, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %248 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %247, <4 x double>* %248, align 8, !alias.scope !110, !noalias !112
  %index.next1284 = add i64 %index1283, 4
  %249 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %249, label %middle.block1276, label %vector.body1278, !llvm.loop !117

middle.block1276:                                 ; preds = %vector.body1278
  %cmp.n1286 = icmp eq i64 %242, %n.vec1282
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
  %250 = shl nuw nsw i64 %polly.indvar615, 3
  %scevgep619 = getelementptr i8, i8* %scevgep618, i64 %250
  %scevgep619620 = bitcast i8* %scevgep619 to double*
  %_p_scalar_621 = load double, double* %scevgep619620, align 8, !alias.scope !110, !noalias !112
  %p_mul.i = fmul fast double %_p_scalar_621, 1.200000e+00
  store double %p_mul.i, double* %scevgep619620, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar_next616, %polly.indvar609
  br i1 %exitcond1151.not, label %polly.loop_exit614, label %polly.loop_header612, !llvm.loop !118

polly.loop_header622:                             ; preds = %polly.loop_header622.preheader, %polly.loop_exit630
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit630 ], [ 0, %polly.loop_header622.preheader ]
  %251 = shl nsw i64 %polly.indvar625, 2
  %252 = or i64 %251, 1
  %253 = or i64 %251, 2
  %254 = or i64 %251, 3
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit652
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar_next626, 250
  br i1 %exitcond1150.not, label %polly.exiting519, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_exit652, %polly.loop_header622
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit652 ], [ 1200, %polly.loop_header622 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %255 = mul nuw nsw i64 %polly.indvar631, 614912
  %256 = or i64 %255, 8
  %257 = mul nuw nsw i64 %polly.indvar631, 614912
  %258 = or i64 %257, 8
  %259 = mul nuw nsw i64 %polly.indvar631, 614912
  %260 = or i64 %259, 8
  %261 = mul nsw i64 %polly.indvar631, -64
  %262 = shl nsw i64 %polly.indvar631, 6
  br label %polly.loop_header640

polly.loop_exit652:                               ; preds = %polly.loop_exit691
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next1128 = add nsw i64 %indvars.iv1127, -64
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -64
  %exitcond1149.not = icmp eq i64 %polly.indvar_next632, 19
  br i1 %exitcond1149.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header640:                             ; preds = %polly.loop_header640, %polly.loop_header628
  %polly.indvar643 = phi i64 [ 0, %polly.loop_header628 ], [ %polly.indvar_next644, %polly.loop_header640 ]
  %263 = add nuw nsw i64 %polly.indvar643, %262
  %polly.access.mul.call2647 = mul nuw nsw i64 %263, 1000
  %polly.access.add.call2648 = add nuw nsw i64 %251, %polly.access.mul.call2647
  %polly.access.call2649 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648
  %polly.access.call2649.load = load double, double* %polly.access.call2649, align 8, !alias.scope !114, !noalias !119
  %polly.access.Packed_MemRef_call2523 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.indvar643
  store double %polly.access.call2649.load, double* %polly.access.Packed_MemRef_call2523, align 8
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next644, %indvars.iv1127
  br i1 %exitcond1129.not, label %polly.loop_header640.1, label %polly.loop_header640

polly.loop_header650:                             ; preds = %polly.loop_exit642.3, %polly.loop_exit691
  %indvar1291 = phi i64 [ 0, %polly.loop_exit642.3 ], [ %indvar.next1292, %polly.loop_exit691 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv1140, %polly.loop_exit642.3 ], [ %indvars.iv.next1143, %polly.loop_exit691 ]
  %indvars.iv1134 = phi i64 [ 0, %polly.loop_exit642.3 ], [ %indvars.iv.next1135, %polly.loop_exit691 ]
  %polly.indvar653 = phi i64 [ %polly.indvar631, %polly.loop_exit642.3 ], [ %polly.indvar_next654, %polly.loop_exit691 ]
  %264 = shl nuw nsw i64 %indvar1291, 6
  %265 = mul nuw nsw i64 %indvar1291, 614400
  %266 = add i64 %255, %265
  %267 = add i64 %256, %265
  %268 = shl nuw nsw i64 %indvar1291, 6
  %269 = shl nuw nsw i64 %indvar1291, 6
  %270 = mul nuw nsw i64 %indvar1291, 614400
  %271 = add i64 %257, %270
  %272 = add i64 %258, %270
  %273 = shl nuw nsw i64 %indvar1291, 6
  %274 = shl nuw nsw i64 %indvar1291, 6
  %275 = mul nuw nsw i64 %indvar1291, 614400
  %276 = add i64 %259, %275
  %277 = add i64 %260, %275
  %278 = shl nuw nsw i64 %indvar1291, 6
  %279 = shl nuw nsw i64 %indvar1291, 6
  %smin1144 = call i64 @llvm.smin.i64(i64 %indvars.iv1142, i64 -1136)
  %280 = add nsw i64 %smin1144, 1199
  %smax1145 = call i64 @llvm.smax.i64(i64 %280, i64 0)
  %281 = shl nsw i64 %polly.indvar653, 6
  %282 = add nsw i64 %281, %261
  %.inv935.not = icmp eq i64 %282, 0
  %283 = or i64 %282, 63
  %284 = icmp ult i64 %605, %283
  %285 = select i1 %284, i64 %605, i64 %283
  %polly.loop_guard678.not = icmp ugt i64 %282, %285
  br i1 %.inv935.not, label %polly.loop_header650.split, label %polly.loop_header663.us

polly.loop_header663.us:                          ; preds = %polly.loop_header650, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header650 ]
  %286 = add nuw nsw i64 %polly.indvar667.us, %262
  %polly.access.mul.call1671.us = mul nuw nsw i64 %286, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %251, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !113, !noalias !120
  %polly.access.Packed_MemRef_call1521.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar667.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1521.us, align 8
  %polly.indvar_next668.us = add nuw i64 %polly.indvar667.us, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next668.us, 64
  br i1 %exitcond1132.not, label %polly.loop_exit665.loopexit.us, label %polly.loop_header663.us

polly.loop_header675.us:                          ; preds = %polly.loop_exit665.loopexit.us, %polly.loop_header675.us
  %polly.indvar679.us = phi i64 [ %polly.indvar_next680.us, %polly.loop_header675.us ], [ %282, %polly.loop_exit665.loopexit.us ]
  %287 = add nuw nsw i64 %polly.indvar679.us, %262
  %polly.access.mul.call1683.us = mul nuw nsw i64 %287, 1000
  %polly.access.add.call1684.us = add nuw nsw i64 %251, %polly.access.mul.call1683.us
  %polly.access.call1685.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us
  %polly.access.call1685.load.us = load double, double* %polly.access.call1685.us, align 8, !alias.scope !113, !noalias !120
  %polly.access.Packed_MemRef_call1521688.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar679.us
  store double %polly.access.call1685.load.us, double* %polly.access.Packed_MemRef_call1521688.us, align 8
  %polly.indvar_next680.us = add nuw nsw i64 %polly.indvar679.us, 1
  %polly.loop_cond681.not.not.us = icmp ult i64 %polly.indvar679.us, %285
  br i1 %polly.loop_cond681.not.not.us, label %polly.loop_header675.us, label %polly.loop_header663.us.1.preheader

polly.loop_exit665.loopexit.us:                   ; preds = %polly.loop_header663.us
  br i1 %polly.loop_guard678.not, label %polly.loop_header663.us.1.preheader, label %polly.loop_header675.us

polly.loop_header663.us.1.preheader:              ; preds = %polly.loop_header675.us, %polly.loop_exit665.loopexit.us
  br label %polly.loop_header663.us.1

polly.loop_header650.split:                       ; preds = %polly.loop_header650
  br i1 %polly.loop_guard678.not, label %polly.loop_header689.preheader, label %polly.loop_header675

polly.loop_exit691:                               ; preds = %polly.loop_exit705.us.3, %polly.loop_header689.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %indvars.iv.next1135 = add nuw nsw i64 %indvars.iv1134, 64
  %indvars.iv.next1143 = add nsw i64 %indvars.iv1142, -64
  %exitcond1148.not = icmp eq i64 %polly.indvar_next654, 19
  %indvar.next1292 = add i64 %indvar1291, 1
  br i1 %exitcond1148.not, label %polly.loop_exit652, label %polly.loop_header650

polly.loop_header689.preheader:                   ; preds = %polly.loop_header675.us.3, %polly.loop_header675.3, %polly.loop_exit665.loopexit.us.3, %polly.loop_header650.split
  %288 = mul nsw i64 %polly.indvar653, -64
  %polly.loop_guard6991189 = icmp sgt i64 %288, -1200
  br i1 %polly.loop_guard6991189, label %polly.loop_header696.us, label %polly.loop_exit691

polly.loop_header696.us:                          ; preds = %polly.loop_header689.preheader, %polly.loop_exit705.us
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %polly.loop_exit705.us ], [ %indvars.iv1134, %polly.loop_header689.preheader ]
  %polly.indvar700.us = phi i64 [ %polly.indvar_next701.us, %polly.loop_exit705.us ], [ 0, %polly.loop_header689.preheader ]
  %289 = add i64 %264, %polly.indvar700.us
  %smin1385 = call i64 @llvm.smin.i64(i64 %289, i64 63)
  %290 = add nuw nsw i64 %smin1385, 1
  %291 = mul nuw nsw i64 %polly.indvar700.us, 9600
  %292 = add i64 %268, %polly.indvar700.us
  %smin1374 = call i64 @llvm.smin.i64(i64 %292, i64 63)
  %293 = shl nuw nsw i64 %smin1374, 3
  %smin1138 = call i64 @llvm.smin.i64(i64 %indvars.iv1136, i64 63)
  %294 = add nuw nsw i64 %polly.indvar700.us, %282
  %295 = add nuw nsw i64 %polly.indvar700.us, %281
  %polly.access.Packed_MemRef_call2523715.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %294
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call2523715.us, align 8
  %polly.access.Packed_MemRef_call1521723.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %294
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call1521723.us, align 8
  %296 = mul nuw nsw i64 %295, 9600
  %min.iters.check1386 = icmp ult i64 %smin1385, 3
  br i1 %min.iters.check1386, label %polly.loop_header703.us.preheader, label %vector.memcheck1371

vector.memcheck1371:                              ; preds = %polly.loop_header696.us
  %scevgep1377 = getelementptr i8, i8* %scevgep1376, i64 %293
  %297 = add i64 %267, %291
  %scevgep1373 = getelementptr i8, i8* %call, i64 %297
  %scevgep1375 = getelementptr i8, i8* %scevgep1373, i64 %293
  %298 = add i64 %266, %291
  %scevgep1372 = getelementptr i8, i8* %call, i64 %298
  %bound01378 = icmp ult i8* %scevgep1372, %scevgep1377
  %bound11379 = icmp ult i8* %malloccall520, %scevgep1375
  %found.conflict1380 = and i1 %bound01378, %bound11379
  br i1 %found.conflict1380, label %polly.loop_header703.us.preheader, label %vector.ph1387

vector.ph1387:                                    ; preds = %vector.memcheck1371
  %n.vec1389 = and i64 %290, -4
  %broadcast.splatinsert1395 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1396 = shufflevector <4 x double> %broadcast.splatinsert1395, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1398 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1399 = shufflevector <4 x double> %broadcast.splatinsert1398, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %vector.ph1387
  %index1390 = phi i64 [ 0, %vector.ph1387 ], [ %index.next1391, %vector.body1384 ]
  %299 = add nuw nsw i64 %index1390, %262
  %300 = getelementptr double, double* %Packed_MemRef_call1521, i64 %index1390
  %301 = bitcast double* %300 to <4 x double>*
  %wide.load1394 = load <4 x double>, <4 x double>* %301, align 8, !alias.scope !121
  %302 = fmul fast <4 x double> %broadcast.splat1396, %wide.load1394
  %303 = getelementptr double, double* %Packed_MemRef_call2523, i64 %index1390
  %304 = bitcast double* %303 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %304, align 8
  %305 = fmul fast <4 x double> %broadcast.splat1399, %wide.load1397
  %306 = shl i64 %299, 3
  %307 = add nuw nsw i64 %306, %296
  %308 = getelementptr i8, i8* %call, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  %wide.load1400 = load <4 x double>, <4 x double>* %309, align 8, !alias.scope !124, !noalias !126
  %310 = fadd fast <4 x double> %305, %302
  %311 = fmul fast <4 x double> %310, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %312 = fadd fast <4 x double> %311, %wide.load1400
  %313 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %312, <4 x double>* %313, align 8, !alias.scope !124, !noalias !126
  %index.next1391 = add i64 %index1390, 4
  %314 = icmp eq i64 %index.next1391, %n.vec1389
  br i1 %314, label %middle.block1382, label %vector.body1384, !llvm.loop !127

middle.block1382:                                 ; preds = %vector.body1384
  %cmp.n1393 = icmp eq i64 %290, %n.vec1389
  br i1 %cmp.n1393, label %polly.loop_exit705.us, label %polly.loop_header703.us.preheader

polly.loop_header703.us.preheader:                ; preds = %vector.memcheck1371, %polly.loop_header696.us, %middle.block1382
  %polly.indvar706.us.ph = phi i64 [ 0, %vector.memcheck1371 ], [ 0, %polly.loop_header696.us ], [ %n.vec1389, %middle.block1382 ]
  br label %polly.loop_header703.us

polly.loop_header703.us:                          ; preds = %polly.loop_header703.us.preheader, %polly.loop_header703.us
  %polly.indvar706.us = phi i64 [ %polly.indvar_next707.us, %polly.loop_header703.us ], [ %polly.indvar706.us.ph, %polly.loop_header703.us.preheader ]
  %315 = add nuw nsw i64 %polly.indvar706.us, %262
  %polly.access.Packed_MemRef_call1521711.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar706.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call1521711.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %polly.access.Packed_MemRef_call2523719.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.indvar706.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call2523719.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %316 = shl i64 %315, 3
  %317 = add nuw nsw i64 %316, %296
  %scevgep725.us = getelementptr i8, i8* %call, i64 %317
  %scevgep725726.us = bitcast i8* %scevgep725.us to double*
  %_p_scalar_727.us = load double, double* %scevgep725726.us, align 8, !alias.scope !110, !noalias !112
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_727.us
  store double %p_add42.i.us, double* %scevgep725726.us, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next707.us = add nuw nsw i64 %polly.indvar706.us, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar706.us, %smin1138
  br i1 %exitcond1139.not, label %polly.loop_exit705.us, label %polly.loop_header703.us, !llvm.loop !128

polly.loop_exit705.us:                            ; preds = %polly.loop_header703.us, %middle.block1382
  %polly.indvar_next701.us = add nuw nsw i64 %polly.indvar700.us, 1
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar700.us, %smax1145
  br i1 %exitcond1146.not, label %polly.loop_header696.us.1, label %polly.loop_header696.us

polly.loop_header675:                             ; preds = %polly.loop_header650.split, %polly.loop_header675
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_header675 ], [ 0, %polly.loop_header650.split ]
  %318 = add nuw nsw i64 %polly.indvar679, %262
  %polly.access.mul.call1683 = mul nuw nsw i64 %318, 1000
  %polly.access.add.call1684 = add nuw nsw i64 %251, %polly.access.mul.call1683
  %polly.access.call1685 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684
  %polly.access.call1685.load = load double, double* %polly.access.call1685, align 8, !alias.scope !113, !noalias !120
  %polly.access.Packed_MemRef_call1521688 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar679
  store double %polly.access.call1685.load, double* %polly.access.Packed_MemRef_call1521688, align 8
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %polly.loop_cond681.not.not = icmp ult i64 %polly.indvar679, %285
  br i1 %polly.loop_cond681.not.not, label %polly.loop_header675, label %polly.loop_header675.1

polly.loop_header854:                             ; preds = %entry, %polly.loop_exit862
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit862 ], [ 0, %entry ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %entry ]
  %smin1179 = call i64 @llvm.smin.i64(i64 %indvars.iv1177, i64 -1168)
  %319 = shl nsw i64 %polly.indvar857, 5
  %320 = add nsw i64 %smin1179, 1199
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next858, 38
  br i1 %exitcond1182.not, label %polly.loop_header881, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit868 ], [ 0, %polly.loop_header854 ]
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_exit868 ], [ 0, %polly.loop_header854 ]
  %321 = mul nsw i64 %polly.indvar863, -32
  %smin1217 = call i64 @llvm.smin.i64(i64 %321, i64 -1168)
  %322 = add nsw i64 %smin1217, 1200
  %smin1175 = call i64 @llvm.smin.i64(i64 %indvars.iv1173, i64 -1168)
  %323 = shl nsw i64 %polly.indvar863, 5
  %324 = add nsw i64 %smin1175, 1199
  br label %polly.loop_header866

polly.loop_exit868:                               ; preds = %polly.loop_exit874
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %indvars.iv.next1174 = add nsw i64 %indvars.iv1173, -32
  %exitcond1181.not = icmp eq i64 %polly.indvar_next864, 38
  br i1 %exitcond1181.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_exit874, %polly.loop_header860
  %polly.indvar869 = phi i64 [ 0, %polly.loop_header860 ], [ %polly.indvar_next870, %polly.loop_exit874 ]
  %325 = add nuw nsw i64 %polly.indvar869, %319
  %326 = trunc i64 %325 to i32
  %327 = mul nuw nsw i64 %325, 9600
  %min.iters.check = icmp eq i64 %322, 0
  br i1 %min.iters.check, label %polly.loop_header872, label %vector.ph1218

vector.ph1218:                                    ; preds = %polly.loop_header866
  %broadcast.splatinsert1225 = insertelement <4 x i64> poison, i64 %323, i32 0
  %broadcast.splat1226 = shufflevector <4 x i64> %broadcast.splatinsert1225, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1227 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1228 = shufflevector <4 x i32> %broadcast.splatinsert1227, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %vector.ph1218
  %index1219 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1220, %vector.body1216 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1218 ], [ %vec.ind.next1224, %vector.body1216 ]
  %328 = add nuw nsw <4 x i64> %vec.ind1223, %broadcast.splat1226
  %329 = trunc <4 x i64> %328 to <4 x i32>
  %330 = mul <4 x i32> %broadcast.splat1228, %329
  %331 = add <4 x i32> %330, <i32 3, i32 3, i32 3, i32 3>
  %332 = urem <4 x i32> %331, <i32 1200, i32 1200, i32 1200, i32 1200>
  %333 = sitofp <4 x i32> %332 to <4 x double>
  %334 = fmul fast <4 x double> %333, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %335 = extractelement <4 x i64> %328, i32 0
  %336 = shl i64 %335, 3
  %337 = add nuw nsw i64 %336, %327
  %338 = getelementptr i8, i8* %call, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %334, <4 x double>* %339, align 8, !alias.scope !129, !noalias !131
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %340 = icmp eq i64 %index.next1220, %322
  br i1 %340, label %polly.loop_exit874, label %vector.body1216, !llvm.loop !134

polly.loop_exit874:                               ; preds = %vector.body1216, %polly.loop_header872
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar869, %320
  br i1 %exitcond1180.not, label %polly.loop_exit868, label %polly.loop_header866

polly.loop_header872:                             ; preds = %polly.loop_header866, %polly.loop_header872
  %polly.indvar875 = phi i64 [ %polly.indvar_next876, %polly.loop_header872 ], [ 0, %polly.loop_header866 ]
  %341 = add nuw nsw i64 %polly.indvar875, %323
  %342 = trunc i64 %341 to i32
  %343 = mul i32 %342, %326
  %344 = add i32 %343, 3
  %345 = urem i32 %344, 1200
  %p_conv31.i = sitofp i32 %345 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %346 = shl i64 %341, 3
  %347 = add nuw nsw i64 %346, %327
  %scevgep878 = getelementptr i8, i8* %call, i64 %347
  %scevgep878879 = bitcast i8* %scevgep878 to double*
  store double %p_div33.i, double* %scevgep878879, align 8, !alias.scope !129, !noalias !131
  %polly.indvar_next876 = add nuw nsw i64 %polly.indvar875, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar875, %324
  br i1 %exitcond1176.not, label %polly.loop_exit874, label %polly.loop_header872, !llvm.loop !135

polly.loop_header881:                             ; preds = %polly.loop_exit862, %polly.loop_exit889
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %polly.loop_exit889 ], [ 0, %polly.loop_exit862 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_exit862 ]
  %smin1169 = call i64 @llvm.smin.i64(i64 %indvars.iv1167, i64 -1168)
  %348 = shl nsw i64 %polly.indvar884, 5
  %349 = add nsw i64 %smin1169, 1199
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1168 = add nsw i64 %indvars.iv1167, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next885, 38
  br i1 %exitcond1172.not, label %polly.loop_header907, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %350 = mul nsw i64 %polly.indvar890, -32
  %smin1232 = call i64 @llvm.smin.i64(i64 %350, i64 -968)
  %351 = add nsw i64 %smin1232, 1000
  %smin1165 = call i64 @llvm.smin.i64(i64 %indvars.iv1163, i64 -968)
  %352 = shl nsw i64 %polly.indvar890, 5
  %353 = add nsw i64 %smin1165, 999
  br label %polly.loop_header893

polly.loop_exit895:                               ; preds = %polly.loop_exit901
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %indvars.iv.next1164 = add nsw i64 %indvars.iv1163, -32
  %exitcond1171.not = icmp eq i64 %polly.indvar_next891, 32
  br i1 %exitcond1171.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_exit901, %polly.loop_header887
  %polly.indvar896 = phi i64 [ 0, %polly.loop_header887 ], [ %polly.indvar_next897, %polly.loop_exit901 ]
  %354 = add nuw nsw i64 %polly.indvar896, %348
  %355 = trunc i64 %354 to i32
  %356 = mul nuw nsw i64 %354, 8000
  %min.iters.check1233 = icmp eq i64 %351, 0
  br i1 %min.iters.check1233, label %polly.loop_header899, label %vector.ph1234

vector.ph1234:                                    ; preds = %polly.loop_header893
  %broadcast.splatinsert1243 = insertelement <4 x i64> poison, i64 %352, i32 0
  %broadcast.splat1244 = shufflevector <4 x i64> %broadcast.splatinsert1243, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1245 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1246 = shufflevector <4 x i32> %broadcast.splatinsert1245, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1231 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1234 ], [ %vec.ind.next1242, %vector.body1231 ]
  %357 = add nuw nsw <4 x i64> %vec.ind1241, %broadcast.splat1244
  %358 = trunc <4 x i64> %357 to <4 x i32>
  %359 = mul <4 x i32> %broadcast.splat1246, %358
  %360 = add <4 x i32> %359, <i32 2, i32 2, i32 2, i32 2>
  %361 = urem <4 x i32> %360, <i32 1000, i32 1000, i32 1000, i32 1000>
  %362 = sitofp <4 x i32> %361 to <4 x double>
  %363 = fmul fast <4 x double> %362, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %364 = extractelement <4 x i64> %357, i32 0
  %365 = shl i64 %364, 3
  %366 = add nuw nsw i64 %365, %356
  %367 = getelementptr i8, i8* %call2, i64 %366
  %368 = bitcast i8* %367 to <4 x double>*
  store <4 x double> %363, <4 x double>* %368, align 8, !alias.scope !133, !noalias !136
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %369 = icmp eq i64 %index.next1238, %351
  br i1 %369, label %polly.loop_exit901, label %vector.body1231, !llvm.loop !137

polly.loop_exit901:                               ; preds = %vector.body1231, %polly.loop_header899
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar896, %349
  br i1 %exitcond1170.not, label %polly.loop_exit895, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_header893, %polly.loop_header899
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_header899 ], [ 0, %polly.loop_header893 ]
  %370 = add nuw nsw i64 %polly.indvar902, %352
  %371 = trunc i64 %370 to i32
  %372 = mul i32 %371, %355
  %373 = add i32 %372, 2
  %374 = urem i32 %373, 1000
  %p_conv10.i = sitofp i32 %374 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %375 = shl i64 %370, 3
  %376 = add nuw nsw i64 %375, %356
  %scevgep905 = getelementptr i8, i8* %call2, i64 %376
  %scevgep905906 = bitcast i8* %scevgep905 to double*
  store double %p_div12.i, double* %scevgep905906, align 8, !alias.scope !133, !noalias !136
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar902, %353
  br i1 %exitcond1166.not, label %polly.loop_exit901, label %polly.loop_header899, !llvm.loop !138

polly.loop_header907:                             ; preds = %polly.loop_exit889, %polly.loop_exit915
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit915 ], [ 0, %polly.loop_exit889 ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_exit889 ]
  %smin1159 = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 -1168)
  %377 = shl nsw i64 %polly.indvar910, 5
  %378 = add nsw i64 %smin1159, 1199
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1158 = add nsw i64 %indvars.iv1157, -32
  %exitcond1162.not = icmp eq i64 %polly.indvar_next911, 38
  br i1 %exitcond1162.not, label %init_array.exit, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %379 = mul nsw i64 %polly.indvar916, -32
  %smin1250 = call i64 @llvm.smin.i64(i64 %379, i64 -968)
  %380 = add nsw i64 %smin1250, 1000
  %smin1155 = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 -968)
  %381 = shl nsw i64 %polly.indvar916, 5
  %382 = add nsw i64 %smin1155, 999
  br label %polly.loop_header919

polly.loop_exit921:                               ; preds = %polly.loop_exit927
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -32
  %exitcond1161.not = icmp eq i64 %polly.indvar_next917, 32
  br i1 %exitcond1161.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_exit927, %polly.loop_header913
  %polly.indvar922 = phi i64 [ 0, %polly.loop_header913 ], [ %polly.indvar_next923, %polly.loop_exit927 ]
  %383 = add nuw nsw i64 %polly.indvar922, %377
  %384 = trunc i64 %383 to i32
  %385 = mul nuw nsw i64 %383, 8000
  %min.iters.check1251 = icmp eq i64 %380, 0
  br i1 %min.iters.check1251, label %polly.loop_header925, label %vector.ph1252

vector.ph1252:                                    ; preds = %polly.loop_header919
  %broadcast.splatinsert1261 = insertelement <4 x i64> poison, i64 %381, i32 0
  %broadcast.splat1262 = shufflevector <4 x i64> %broadcast.splatinsert1261, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1263 = insertelement <4 x i32> poison, i32 %384, i32 0
  %broadcast.splat1264 = shufflevector <4 x i32> %broadcast.splatinsert1263, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1249 ]
  %vec.ind1259 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1252 ], [ %vec.ind.next1260, %vector.body1249 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1259, %broadcast.splat1262
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1264, %387
  %389 = add <4 x i32> %388, <i32 1, i32 1, i32 1, i32 1>
  %390 = urem <4 x i32> %389, <i32 1200, i32 1200, i32 1200, i32 1200>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %385
  %396 = getelementptr i8, i8* %call1, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !132, !noalias !139
  %index.next1256 = add i64 %index1255, 4
  %vec.ind.next1260 = add <4 x i64> %vec.ind1259, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1256, %380
  br i1 %398, label %polly.loop_exit927, label %vector.body1249, !llvm.loop !140

polly.loop_exit927:                               ; preds = %vector.body1249, %polly.loop_header925
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar922, %378
  br i1 %exitcond1160.not, label %polly.loop_exit921, label %polly.loop_header919

polly.loop_header925:                             ; preds = %polly.loop_header919, %polly.loop_header925
  %polly.indvar928 = phi i64 [ %polly.indvar_next929, %polly.loop_header925 ], [ 0, %polly.loop_header919 ]
  %399 = add nuw nsw i64 %polly.indvar928, %381
  %400 = trunc i64 %399 to i32
  %401 = mul i32 %400, %384
  %402 = add i32 %401, 1
  %403 = urem i32 %402, 1200
  %p_conv.i = sitofp i32 %403 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %404 = shl i64 %399, 3
  %405 = add nuw nsw i64 %404, %385
  %scevgep932 = getelementptr i8, i8* %call1, i64 %405
  %scevgep932933 = bitcast i8* %scevgep932 to double*
  store double %p_div.i, double* %scevgep932933, align 8, !alias.scope !132, !noalias !139
  %polly.indvar_next929 = add nuw nsw i64 %polly.indvar928, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar928, %382
  br i1 %exitcond1156.not, label %polly.loop_exit927, label %polly.loop_header925, !llvm.loop !141

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %406 = add nuw nsw i64 %polly.indvar221.1, %108
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %406, 1000
  %polly.access.add.call2226.1 = add nuw nsw i64 %98, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, 1200
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header218.2, label %polly.loop_header218.1

polly.loop_header218.2:                           ; preds = %polly.loop_header218.1, %polly.loop_header218.2
  %polly.indvar221.2 = phi i64 [ %polly.indvar_next222.2, %polly.loop_header218.2 ], [ 0, %polly.loop_header218.1 ]
  %407 = add nuw nsw i64 %polly.indvar221.2, %108
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %407, 1000
  %polly.access.add.call2226.2 = add nuw nsw i64 %99, %polly.access.mul.call2225.2
  %polly.access.call2227.2 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226.2
  %polly.access.call2227.load.2 = load double, double* %polly.access.call2227.2, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar221.2, 2400
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2227.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next222.2 = add nuw nsw i64 %polly.indvar221.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next222.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header218.3, label %polly.loop_header218.2

polly.loop_header218.3:                           ; preds = %polly.loop_header218.2, %polly.loop_header218.3
  %polly.indvar221.3 = phi i64 [ %polly.indvar_next222.3, %polly.loop_header218.3 ], [ 0, %polly.loop_header218.2 ]
  %408 = add nuw nsw i64 %polly.indvar221.3, %108
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %408, 1000
  %polly.access.add.call2226.3 = add nuw nsw i64 %100, %polly.access.mul.call2225.3
  %polly.access.call2227.3 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226.3
  %polly.access.call2227.load.3 = load double, double* %polly.access.call2227.3, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar221.3, 3600
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2227.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next222.3 = add nuw nsw i64 %polly.indvar221.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next222.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit220.3, label %polly.loop_header218.3

polly.loop_exit220.3:                             ; preds = %polly.loop_header218.3
  %409 = add nsw i64 %107, 1199
  br label %polly.loop_header228

polly.loop_header251.1:                           ; preds = %polly.loop_header251, %polly.loop_header251.1
  %polly.indvar255.1 = phi i64 [ %polly.indvar_next256.1, %polly.loop_header251.1 ], [ %128, %polly.loop_header251 ]
  %410 = add nuw nsw i64 %polly.indvar255.1, %108
  %polly.access.mul.call1259.1 = mul nuw nsw i64 %410, 1000
  %polly.access.add.call1260.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar255.1, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.indvar_next256.1 = add nuw nsw i64 %polly.indvar255.1, 1
  %polly.loop_cond257.not.not.1 = icmp ult i64 %polly.indvar255.1, %131
  br i1 %polly.loop_cond257.not.not.1, label %polly.loop_header251.1, label %polly.loop_header251.2

polly.loop_header251.2:                           ; preds = %polly.loop_header251.1, %polly.loop_header251.2
  %polly.indvar255.2 = phi i64 [ %polly.indvar_next256.2, %polly.loop_header251.2 ], [ %128, %polly.loop_header251.1 ]
  %411 = add nuw nsw i64 %polly.indvar255.2, %108
  %polly.access.mul.call1259.2 = mul nuw nsw i64 %411, 1000
  %polly.access.add.call1260.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.indvar255.2, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.indvar_next256.2 = add nuw nsw i64 %polly.indvar255.2, 1
  %polly.loop_cond257.not.not.2 = icmp ult i64 %polly.indvar255.2, %131
  br i1 %polly.loop_cond257.not.not.2, label %polly.loop_header251.2, label %polly.loop_header251.3

polly.loop_header251.3:                           ; preds = %polly.loop_header251.2, %polly.loop_header251.3
  %polly.indvar255.3 = phi i64 [ %polly.indvar_next256.3, %polly.loop_header251.3 ], [ %128, %polly.loop_header251.2 ]
  %412 = add nuw nsw i64 %polly.indvar255.3, %108
  %polly.access.mul.call1259.3 = mul nuw nsw i64 %412, 1000
  %polly.access.add.call1260.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.indvar255.3, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  %polly.indvar_next256.3 = add nuw nsw i64 %polly.indvar255.3, 1
  %polly.loop_cond257.not.not.3 = icmp ult i64 %polly.indvar255.3, %131
  br i1 %polly.loop_cond257.not.not.3, label %polly.loop_header251.3, label %polly.loop_header265.preheader

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1.preheader, %polly.loop_header240.us.1
  %polly.indvar243.us.1 = phi i64 [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ], [ 0, %polly.loop_header240.us.1.preheader ]
  %413 = add nuw nsw i64 %polly.indvar243.us.1, %108
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %413, 1000
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw i64 %polly.indvar243.us.1, 1
  %exitcond1082.1.not = icmp eq i64 %polly.indvar_next244.us.1, 64
  br i1 %exitcond1082.1.not, label %polly.loop_exit242.loopexit.us.1, label %polly.loop_header240.us.1

polly.loop_exit242.loopexit.us.1:                 ; preds = %polly.loop_header240.us.1
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.2.preheader, label %polly.loop_header251.us.1

polly.loop_header251.us.1:                        ; preds = %polly.loop_exit242.loopexit.us.1, %polly.loop_header251.us.1
  %polly.indvar255.us.1 = phi i64 [ %polly.indvar_next256.us.1, %polly.loop_header251.us.1 ], [ %128, %polly.loop_exit242.loopexit.us.1 ]
  %414 = add nuw nsw i64 %polly.indvar255.us.1, %108
  %polly.access.mul.call1259.us.1 = mul nuw nsw i64 %414, 1000
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %polly.indvar_next256.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1
  %polly.loop_cond257.not.not.us.1 = icmp ult i64 %polly.indvar255.us.1, %131
  br i1 %polly.loop_cond257.not.not.us.1, label %polly.loop_header251.us.1, label %polly.loop_header240.us.2.preheader

polly.loop_header240.us.2.preheader:              ; preds = %polly.loop_header251.us.1, %polly.loop_exit242.loopexit.us.1
  br label %polly.loop_header240.us.2

polly.loop_header240.us.2:                        ; preds = %polly.loop_header240.us.2.preheader, %polly.loop_header240.us.2
  %polly.indvar243.us.2 = phi i64 [ %polly.indvar_next244.us.2, %polly.loop_header240.us.2 ], [ 0, %polly.loop_header240.us.2.preheader ]
  %415 = add nuw nsw i64 %polly.indvar243.us.2, %108
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %415, 1000
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar243.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next244.us.2 = add nuw i64 %polly.indvar243.us.2, 1
  %exitcond1082.2.not = icmp eq i64 %polly.indvar_next244.us.2, 64
  br i1 %exitcond1082.2.not, label %polly.loop_exit242.loopexit.us.2, label %polly.loop_header240.us.2

polly.loop_exit242.loopexit.us.2:                 ; preds = %polly.loop_header240.us.2
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.3.preheader, label %polly.loop_header251.us.2

polly.loop_header251.us.2:                        ; preds = %polly.loop_exit242.loopexit.us.2, %polly.loop_header251.us.2
  %polly.indvar255.us.2 = phi i64 [ %polly.indvar_next256.us.2, %polly.loop_header251.us.2 ], [ %128, %polly.loop_exit242.loopexit.us.2 ]
  %416 = add nuw nsw i64 %polly.indvar255.us.2, %108
  %polly.access.mul.call1259.us.2 = mul nuw nsw i64 %416, 1000
  %polly.access.add.call1260.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.us.2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %polly.indvar_next256.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 1
  %polly.loop_cond257.not.not.us.2 = icmp ult i64 %polly.indvar255.us.2, %131
  br i1 %polly.loop_cond257.not.not.us.2, label %polly.loop_header251.us.2, label %polly.loop_header240.us.3.preheader

polly.loop_header240.us.3.preheader:              ; preds = %polly.loop_header251.us.2, %polly.loop_exit242.loopexit.us.2
  br label %polly.loop_header240.us.3

polly.loop_header240.us.3:                        ; preds = %polly.loop_header240.us.3.preheader, %polly.loop_header240.us.3
  %polly.indvar243.us.3 = phi i64 [ %polly.indvar_next244.us.3, %polly.loop_header240.us.3 ], [ 0, %polly.loop_header240.us.3.preheader ]
  %417 = add nuw nsw i64 %polly.indvar243.us.3, %108
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %417, 1000
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar243.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next244.us.3 = add nuw i64 %polly.indvar243.us.3, 1
  %exitcond1082.3.not = icmp eq i64 %polly.indvar_next244.us.3, 64
  br i1 %exitcond1082.3.not, label %polly.loop_exit242.loopexit.us.3, label %polly.loop_header240.us.3

polly.loop_exit242.loopexit.us.3:                 ; preds = %polly.loop_header240.us.3
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251.us.3

polly.loop_header251.us.3:                        ; preds = %polly.loop_exit242.loopexit.us.3, %polly.loop_header251.us.3
  %polly.indvar255.us.3 = phi i64 [ %polly.indvar_next256.us.3, %polly.loop_header251.us.3 ], [ %128, %polly.loop_exit242.loopexit.us.3 ]
  %418 = add nuw nsw i64 %polly.indvar255.us.3, %108
  %polly.access.mul.call1259.us.3 = mul nuw nsw i64 %418, 1000
  %polly.access.add.call1260.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.us.3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  %polly.indvar_next256.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 1
  %polly.loop_cond257.not.not.us.3 = icmp ult i64 %polly.indvar255.us.3, %131
  br i1 %polly.loop_cond257.not.not.us.3, label %polly.loop_header251.us.3, label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_exit281.us, %polly.loop_exit281.us.1
  %indvars.iv1086.1 = phi i64 [ %indvars.iv.next1087.1, %polly.loop_exit281.us.1 ], [ %indvars.iv1084, %polly.loop_exit281.us ]
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_exit281.us.1 ], [ 0, %polly.loop_exit281.us ]
  %419 = add i64 %115, %polly.indvar276.us.1
  %smin1633 = call i64 @llvm.smin.i64(i64 %419, i64 63)
  %420 = add nuw nsw i64 %smin1633, 1
  %421 = mul nuw nsw i64 %polly.indvar276.us.1, 9600
  %422 = add i64 %119, %polly.indvar276.us.1
  %smin1621 = call i64 @llvm.smin.i64(i64 %422, i64 63)
  %423 = shl nuw nsw i64 %smin1621, 3
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1086.1, i64 63)
  %424 = add nuw nsw i64 %polly.indvar276.us.1, %128
  %425 = add nuw nsw i64 %polly.indvar276.us.1, %127
  %polly.access.add.Packed_MemRef_call2290.us.1 = add nuw nsw i64 %424, 1200
  %polly.access.Packed_MemRef_call2291.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call2291.us.1, align 8
  %polly.access.Packed_MemRef_call1299.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_300.us.1 = load double, double* %polly.access.Packed_MemRef_call1299.us.1, align 8
  %426 = mul nuw nsw i64 %425, 9600
  %min.iters.check1634 = icmp ult i64 %smin1633, 3
  br i1 %min.iters.check1634, label %polly.loop_header279.us.1.preheader, label %vector.memcheck1618

vector.memcheck1618:                              ; preds = %polly.loop_header272.us.1
  %scevgep1625 = getelementptr i8, i8* %scevgep1624, i64 %423
  %427 = add i64 %118, %421
  %scevgep1620 = getelementptr i8, i8* %call, i64 %427
  %scevgep1622 = getelementptr i8, i8* %scevgep1620, i64 %423
  %428 = add i64 %117, %421
  %scevgep1619 = getelementptr i8, i8* %call, i64 %428
  %bound01626 = icmp ult i8* %scevgep1619, %scevgep1625
  %bound11627 = icmp ult i8* %scevgep1623, %scevgep1622
  %found.conflict1628 = and i1 %bound01626, %bound11627
  br i1 %found.conflict1628, label %polly.loop_header279.us.1.preheader, label %vector.ph1635

vector.ph1635:                                    ; preds = %vector.memcheck1618
  %n.vec1637 = and i64 %420, -4
  %broadcast.splatinsert1643 = insertelement <4 x double> poison, double %_p_scalar_292.us.1, i32 0
  %broadcast.splat1644 = shufflevector <4 x double> %broadcast.splatinsert1643, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1646 = insertelement <4 x double> poison, double %_p_scalar_300.us.1, i32 0
  %broadcast.splat1647 = shufflevector <4 x double> %broadcast.splatinsert1646, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1632

vector.body1632:                                  ; preds = %vector.body1632, %vector.ph1635
  %index1638 = phi i64 [ 0, %vector.ph1635 ], [ %index.next1639, %vector.body1632 ]
  %429 = add nuw nsw i64 %index1638, %108
  %430 = add nuw nsw i64 %index1638, 1200
  %431 = getelementptr double, double* %Packed_MemRef_call1, i64 %430
  %432 = bitcast double* %431 to <4 x double>*
  %wide.load1642 = load <4 x double>, <4 x double>* %432, align 8, !alias.scope !142
  %433 = fmul fast <4 x double> %broadcast.splat1644, %wide.load1642
  %434 = getelementptr double, double* %Packed_MemRef_call2, i64 %430
  %435 = bitcast double* %434 to <4 x double>*
  %wide.load1645 = load <4 x double>, <4 x double>* %435, align 8
  %436 = fmul fast <4 x double> %broadcast.splat1647, %wide.load1645
  %437 = shl i64 %429, 3
  %438 = add nuw nsw i64 %437, %426
  %439 = getelementptr i8, i8* %call, i64 %438
  %440 = bitcast i8* %439 to <4 x double>*
  %wide.load1648 = load <4 x double>, <4 x double>* %440, align 8, !alias.scope !145, !noalias !147
  %441 = fadd fast <4 x double> %436, %433
  %442 = fmul fast <4 x double> %441, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %443 = fadd fast <4 x double> %442, %wide.load1648
  %444 = bitcast i8* %439 to <4 x double>*
  store <4 x double> %443, <4 x double>* %444, align 8, !alias.scope !145, !noalias !147
  %index.next1639 = add i64 %index1638, 4
  %445 = icmp eq i64 %index.next1639, %n.vec1637
  br i1 %445, label %middle.block1630, label %vector.body1632, !llvm.loop !148

middle.block1630:                                 ; preds = %vector.body1632
  %cmp.n1641 = icmp eq i64 %420, %n.vec1637
  br i1 %cmp.n1641, label %polly.loop_exit281.us.1, label %polly.loop_header279.us.1.preheader

polly.loop_header279.us.1.preheader:              ; preds = %vector.memcheck1618, %polly.loop_header272.us.1, %middle.block1630
  %polly.indvar282.us.1.ph = phi i64 [ 0, %vector.memcheck1618 ], [ 0, %polly.loop_header272.us.1 ], [ %n.vec1637, %middle.block1630 ]
  br label %polly.loop_header279.us.1

polly.loop_header279.us.1:                        ; preds = %polly.loop_header279.us.1.preheader, %polly.loop_header279.us.1
  %polly.indvar282.us.1 = phi i64 [ %polly.indvar_next283.us.1, %polly.loop_header279.us.1 ], [ %polly.indvar282.us.1.ph, %polly.loop_header279.us.1.preheader ]
  %446 = add nuw nsw i64 %polly.indvar282.us.1, %108
  %polly.access.add.Packed_MemRef_call1286.us.1 = add nuw nsw i64 %polly.indvar282.us.1, 1200
  %polly.access.Packed_MemRef_call1287.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call1287.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_292.us.1, %_p_scalar_288.us.1
  %polly.access.Packed_MemRef_call2295.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  %_p_scalar_296.us.1 = load double, double* %polly.access.Packed_MemRef_call2295.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_300.us.1, %_p_scalar_296.us.1
  %447 = shl i64 %446, 3
  %448 = add nuw nsw i64 %447, %426
  %scevgep301.us.1 = getelementptr i8, i8* %call, i64 %448
  %scevgep301302.us.1 = bitcast i8* %scevgep301.us.1 to double*
  %_p_scalar_303.us.1 = load double, double* %scevgep301302.us.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_303.us.1
  store double %p_add42.i118.us.1, double* %scevgep301302.us.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us.1 = add nuw nsw i64 %polly.indvar282.us.1, 1
  %exitcond1088.1.not = icmp eq i64 %polly.indvar282.us.1, %smin.1
  br i1 %exitcond1088.1.not, label %polly.loop_exit281.us.1, label %polly.loop_header279.us.1, !llvm.loop !149

polly.loop_exit281.us.1:                          ; preds = %polly.loop_header279.us.1, %middle.block1630
  %polly.indvar_next277.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1
  %indvars.iv.next1087.1 = add nuw nsw i64 %indvars.iv1086.1, 1
  %exitcond1094.1.not = icmp eq i64 %polly.indvar276.us.1, %smax
  br i1 %exitcond1094.1.not, label %polly.loop_header272.us.2, label %polly.loop_header272.us.1

polly.loop_header272.us.2:                        ; preds = %polly.loop_exit281.us.1, %polly.loop_exit281.us.2
  %indvars.iv1086.2 = phi i64 [ %indvars.iv.next1087.2, %polly.loop_exit281.us.2 ], [ %indvars.iv1084, %polly.loop_exit281.us.1 ]
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_exit281.us.2 ], [ 0, %polly.loop_exit281.us.1 ]
  %449 = add i64 %120, %polly.indvar276.us.2
  %smin1602 = call i64 @llvm.smin.i64(i64 %449, i64 63)
  %450 = add nuw nsw i64 %smin1602, 1
  %451 = mul nuw nsw i64 %polly.indvar276.us.2, 9600
  %452 = add i64 %124, %polly.indvar276.us.2
  %smin1590 = call i64 @llvm.smin.i64(i64 %452, i64 63)
  %453 = shl nuw nsw i64 %smin1590, 3
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1086.2, i64 63)
  %454 = add nuw nsw i64 %polly.indvar276.us.2, %128
  %455 = add nuw nsw i64 %polly.indvar276.us.2, %127
  %polly.access.add.Packed_MemRef_call2290.us.2 = add nuw nsw i64 %454, 2400
  %polly.access.Packed_MemRef_call2291.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call2291.us.2, align 8
  %polly.access.Packed_MemRef_call1299.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_300.us.2 = load double, double* %polly.access.Packed_MemRef_call1299.us.2, align 8
  %456 = mul nuw nsw i64 %455, 9600
  %min.iters.check1603 = icmp ult i64 %smin1602, 3
  br i1 %min.iters.check1603, label %polly.loop_header279.us.2.preheader, label %vector.memcheck1587

vector.memcheck1587:                              ; preds = %polly.loop_header272.us.2
  %scevgep1594 = getelementptr i8, i8* %scevgep1593, i64 %453
  %457 = add i64 %123, %451
  %scevgep1589 = getelementptr i8, i8* %call, i64 %457
  %scevgep1591 = getelementptr i8, i8* %scevgep1589, i64 %453
  %458 = add i64 %122, %451
  %scevgep1588 = getelementptr i8, i8* %call, i64 %458
  %bound01595 = icmp ult i8* %scevgep1588, %scevgep1594
  %bound11596 = icmp ult i8* %scevgep1592, %scevgep1591
  %found.conflict1597 = and i1 %bound01595, %bound11596
  br i1 %found.conflict1597, label %polly.loop_header279.us.2.preheader, label %vector.ph1604

vector.ph1604:                                    ; preds = %vector.memcheck1587
  %n.vec1606 = and i64 %450, -4
  %broadcast.splatinsert1612 = insertelement <4 x double> poison, double %_p_scalar_292.us.2, i32 0
  %broadcast.splat1613 = shufflevector <4 x double> %broadcast.splatinsert1612, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1615 = insertelement <4 x double> poison, double %_p_scalar_300.us.2, i32 0
  %broadcast.splat1616 = shufflevector <4 x double> %broadcast.splatinsert1615, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1601

vector.body1601:                                  ; preds = %vector.body1601, %vector.ph1604
  %index1607 = phi i64 [ 0, %vector.ph1604 ], [ %index.next1608, %vector.body1601 ]
  %459 = add nuw nsw i64 %index1607, %108
  %460 = add nuw nsw i64 %index1607, 2400
  %461 = getelementptr double, double* %Packed_MemRef_call1, i64 %460
  %462 = bitcast double* %461 to <4 x double>*
  %wide.load1611 = load <4 x double>, <4 x double>* %462, align 8, !alias.scope !150
  %463 = fmul fast <4 x double> %broadcast.splat1613, %wide.load1611
  %464 = getelementptr double, double* %Packed_MemRef_call2, i64 %460
  %465 = bitcast double* %464 to <4 x double>*
  %wide.load1614 = load <4 x double>, <4 x double>* %465, align 8
  %466 = fmul fast <4 x double> %broadcast.splat1616, %wide.load1614
  %467 = shl i64 %459, 3
  %468 = add nuw nsw i64 %467, %456
  %469 = getelementptr i8, i8* %call, i64 %468
  %470 = bitcast i8* %469 to <4 x double>*
  %wide.load1617 = load <4 x double>, <4 x double>* %470, align 8, !alias.scope !153, !noalias !155
  %471 = fadd fast <4 x double> %466, %463
  %472 = fmul fast <4 x double> %471, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %473 = fadd fast <4 x double> %472, %wide.load1617
  %474 = bitcast i8* %469 to <4 x double>*
  store <4 x double> %473, <4 x double>* %474, align 8, !alias.scope !153, !noalias !155
  %index.next1608 = add i64 %index1607, 4
  %475 = icmp eq i64 %index.next1608, %n.vec1606
  br i1 %475, label %middle.block1599, label %vector.body1601, !llvm.loop !156

middle.block1599:                                 ; preds = %vector.body1601
  %cmp.n1610 = icmp eq i64 %450, %n.vec1606
  br i1 %cmp.n1610, label %polly.loop_exit281.us.2, label %polly.loop_header279.us.2.preheader

polly.loop_header279.us.2.preheader:              ; preds = %vector.memcheck1587, %polly.loop_header272.us.2, %middle.block1599
  %polly.indvar282.us.2.ph = phi i64 [ 0, %vector.memcheck1587 ], [ 0, %polly.loop_header272.us.2 ], [ %n.vec1606, %middle.block1599 ]
  br label %polly.loop_header279.us.2

polly.loop_header279.us.2:                        ; preds = %polly.loop_header279.us.2.preheader, %polly.loop_header279.us.2
  %polly.indvar282.us.2 = phi i64 [ %polly.indvar_next283.us.2, %polly.loop_header279.us.2 ], [ %polly.indvar282.us.2.ph, %polly.loop_header279.us.2.preheader ]
  %476 = add nuw nsw i64 %polly.indvar282.us.2, %108
  %polly.access.add.Packed_MemRef_call1286.us.2 = add nuw nsw i64 %polly.indvar282.us.2, 2400
  %polly.access.Packed_MemRef_call1287.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call1287.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_292.us.2, %_p_scalar_288.us.2
  %polly.access.Packed_MemRef_call2295.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  %_p_scalar_296.us.2 = load double, double* %polly.access.Packed_MemRef_call2295.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_300.us.2, %_p_scalar_296.us.2
  %477 = shl i64 %476, 3
  %478 = add nuw nsw i64 %477, %456
  %scevgep301.us.2 = getelementptr i8, i8* %call, i64 %478
  %scevgep301302.us.2 = bitcast i8* %scevgep301.us.2 to double*
  %_p_scalar_303.us.2 = load double, double* %scevgep301302.us.2, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_303.us.2
  store double %p_add42.i118.us.2, double* %scevgep301302.us.2, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us.2 = add nuw nsw i64 %polly.indvar282.us.2, 1
  %exitcond1088.2.not = icmp eq i64 %polly.indvar282.us.2, %smin.2
  br i1 %exitcond1088.2.not, label %polly.loop_exit281.us.2, label %polly.loop_header279.us.2, !llvm.loop !157

polly.loop_exit281.us.2:                          ; preds = %polly.loop_header279.us.2, %middle.block1599
  %polly.indvar_next277.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 1
  %indvars.iv.next1087.2 = add nuw nsw i64 %indvars.iv1086.2, 1
  %exitcond1094.2.not = icmp eq i64 %polly.indvar276.us.2, %smax
  br i1 %exitcond1094.2.not, label %polly.loop_header272.us.3, label %polly.loop_header272.us.2

polly.loop_header272.us.3:                        ; preds = %polly.loop_exit281.us.2, %polly.loop_exit281.us.3
  %indvars.iv1086.3 = phi i64 [ %indvars.iv.next1087.3, %polly.loop_exit281.us.3 ], [ %indvars.iv1084, %polly.loop_exit281.us.2 ]
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_exit281.us.3 ], [ 0, %polly.loop_exit281.us.2 ]
  %479 = add i64 %125, %polly.indvar276.us.3
  %smin1571 = call i64 @llvm.smin.i64(i64 %479, i64 63)
  %480 = add nuw nsw i64 %smin1571, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1086.3, i64 63)
  %481 = add nuw nsw i64 %polly.indvar276.us.3, %128
  %482 = add nuw nsw i64 %polly.indvar276.us.3, %127
  %polly.access.add.Packed_MemRef_call2290.us.3 = add nuw nsw i64 %481, 3600
  %polly.access.Packed_MemRef_call2291.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call2291.us.3, align 8
  %polly.access.Packed_MemRef_call1299.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_300.us.3 = load double, double* %polly.access.Packed_MemRef_call1299.us.3, align 8
  %483 = mul nuw nsw i64 %482, 9600
  %min.iters.check1572 = icmp ult i64 %smin1571, 3
  br i1 %min.iters.check1572, label %polly.loop_header279.us.3.preheader, label %vector.ph1573

vector.ph1573:                                    ; preds = %polly.loop_header272.us.3
  %n.vec1575 = and i64 %480, -4
  %broadcast.splatinsert1581 = insertelement <4 x double> poison, double %_p_scalar_292.us.3, i32 0
  %broadcast.splat1582 = shufflevector <4 x double> %broadcast.splatinsert1581, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1584 = insertelement <4 x double> poison, double %_p_scalar_300.us.3, i32 0
  %broadcast.splat1585 = shufflevector <4 x double> %broadcast.splatinsert1584, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1568

vector.body1568:                                  ; preds = %vector.body1568, %vector.ph1573
  %index1576 = phi i64 [ 0, %vector.ph1573 ], [ %index.next1577, %vector.body1568 ]
  %484 = add nuw nsw i64 %index1576, %108
  %485 = add nuw nsw i64 %index1576, 3600
  %486 = getelementptr double, double* %Packed_MemRef_call1, i64 %485
  %487 = bitcast double* %486 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %487, align 8
  %488 = fmul fast <4 x double> %broadcast.splat1582, %wide.load1580
  %489 = getelementptr double, double* %Packed_MemRef_call2, i64 %485
  %490 = bitcast double* %489 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %490, align 8
  %491 = fmul fast <4 x double> %broadcast.splat1585, %wide.load1583
  %492 = shl i64 %484, 3
  %493 = add nuw nsw i64 %492, %483
  %494 = getelementptr i8, i8* %call, i64 %493
  %495 = bitcast i8* %494 to <4 x double>*
  %wide.load1586 = load <4 x double>, <4 x double>* %495, align 8, !alias.scope !71, !noalias !73
  %496 = fadd fast <4 x double> %491, %488
  %497 = fmul fast <4 x double> %496, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %498 = fadd fast <4 x double> %497, %wide.load1586
  %499 = bitcast i8* %494 to <4 x double>*
  store <4 x double> %498, <4 x double>* %499, align 8, !alias.scope !71, !noalias !73
  %index.next1577 = add i64 %index1576, 4
  %500 = icmp eq i64 %index.next1577, %n.vec1575
  br i1 %500, label %middle.block1566, label %vector.body1568, !llvm.loop !158

middle.block1566:                                 ; preds = %vector.body1568
  %cmp.n1579 = icmp eq i64 %480, %n.vec1575
  br i1 %cmp.n1579, label %polly.loop_exit281.us.3, label %polly.loop_header279.us.3.preheader

polly.loop_header279.us.3.preheader:              ; preds = %polly.loop_header272.us.3, %middle.block1566
  %polly.indvar282.us.3.ph = phi i64 [ 0, %polly.loop_header272.us.3 ], [ %n.vec1575, %middle.block1566 ]
  br label %polly.loop_header279.us.3

polly.loop_header279.us.3:                        ; preds = %polly.loop_header279.us.3.preheader, %polly.loop_header279.us.3
  %polly.indvar282.us.3 = phi i64 [ %polly.indvar_next283.us.3, %polly.loop_header279.us.3 ], [ %polly.indvar282.us.3.ph, %polly.loop_header279.us.3.preheader ]
  %501 = add nuw nsw i64 %polly.indvar282.us.3, %108
  %polly.access.add.Packed_MemRef_call1286.us.3 = add nuw nsw i64 %polly.indvar282.us.3, 3600
  %polly.access.Packed_MemRef_call1287.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call1287.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_292.us.3, %_p_scalar_288.us.3
  %polly.access.Packed_MemRef_call2295.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  %_p_scalar_296.us.3 = load double, double* %polly.access.Packed_MemRef_call2295.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_300.us.3, %_p_scalar_296.us.3
  %502 = shl i64 %501, 3
  %503 = add nuw nsw i64 %502, %483
  %scevgep301.us.3 = getelementptr i8, i8* %call, i64 %503
  %scevgep301302.us.3 = bitcast i8* %scevgep301.us.3 to double*
  %_p_scalar_303.us.3 = load double, double* %scevgep301302.us.3, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_303.us.3
  store double %p_add42.i118.us.3, double* %scevgep301302.us.3, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us.3 = add nuw nsw i64 %polly.indvar282.us.3, 1
  %exitcond1088.3.not = icmp eq i64 %polly.indvar282.us.3, %smin.3
  br i1 %exitcond1088.3.not, label %polly.loop_exit281.us.3, label %polly.loop_header279.us.3, !llvm.loop !159

polly.loop_exit281.us.3:                          ; preds = %polly.loop_header279.us.3, %middle.block1566
  %polly.indvar_next277.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 1
  %indvars.iv.next1087.3 = add nuw nsw i64 %indvars.iv1086.3, 1
  %exitcond1094.3.not = icmp eq i64 %polly.indvar276.us.3, %smax
  br i1 %exitcond1094.3.not, label %polly.loop_exit267, label %polly.loop_header272.us.3

polly.loop_header428.1:                           ; preds = %polly.loop_header428, %polly.loop_header428.1
  %polly.indvar431.1 = phi i64 [ %polly.indvar_next432.1, %polly.loop_header428.1 ], [ 0, %polly.loop_header428 ]
  %504 = add nuw nsw i64 %polly.indvar431.1, %185
  %polly.access.mul.call2435.1 = mul nuw nsw i64 %504, 1000
  %polly.access.add.call2436.1 = add nuw nsw i64 %175, %polly.access.mul.call2435.1
  %polly.access.call2437.1 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436.1
  %polly.access.call2437.load.1 = load double, double* %polly.access.call2437.1, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2311.1 = add nuw nsw i64 %polly.indvar431.1, 1200
  %polly.access.Packed_MemRef_call2311.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.1
  store double %polly.access.call2437.load.1, double* %polly.access.Packed_MemRef_call2311.1, align 8
  %polly.indvar_next432.1 = add nuw nsw i64 %polly.indvar431.1, 1
  %exitcond1103.1.not = icmp eq i64 %polly.indvar_next432.1, %indvars.iv1101
  br i1 %exitcond1103.1.not, label %polly.loop_header428.2, label %polly.loop_header428.1

polly.loop_header428.2:                           ; preds = %polly.loop_header428.1, %polly.loop_header428.2
  %polly.indvar431.2 = phi i64 [ %polly.indvar_next432.2, %polly.loop_header428.2 ], [ 0, %polly.loop_header428.1 ]
  %505 = add nuw nsw i64 %polly.indvar431.2, %185
  %polly.access.mul.call2435.2 = mul nuw nsw i64 %505, 1000
  %polly.access.add.call2436.2 = add nuw nsw i64 %176, %polly.access.mul.call2435.2
  %polly.access.call2437.2 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436.2
  %polly.access.call2437.load.2 = load double, double* %polly.access.call2437.2, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2311.2 = add nuw nsw i64 %polly.indvar431.2, 2400
  %polly.access.Packed_MemRef_call2311.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.2
  store double %polly.access.call2437.load.2, double* %polly.access.Packed_MemRef_call2311.2, align 8
  %polly.indvar_next432.2 = add nuw nsw i64 %polly.indvar431.2, 1
  %exitcond1103.2.not = icmp eq i64 %polly.indvar_next432.2, %indvars.iv1101
  br i1 %exitcond1103.2.not, label %polly.loop_header428.3, label %polly.loop_header428.2

polly.loop_header428.3:                           ; preds = %polly.loop_header428.2, %polly.loop_header428.3
  %polly.indvar431.3 = phi i64 [ %polly.indvar_next432.3, %polly.loop_header428.3 ], [ 0, %polly.loop_header428.2 ]
  %506 = add nuw nsw i64 %polly.indvar431.3, %185
  %polly.access.mul.call2435.3 = mul nuw nsw i64 %506, 1000
  %polly.access.add.call2436.3 = add nuw nsw i64 %177, %polly.access.mul.call2435.3
  %polly.access.call2437.3 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436.3
  %polly.access.call2437.load.3 = load double, double* %polly.access.call2437.3, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2311.3 = add nuw nsw i64 %polly.indvar431.3, 3600
  %polly.access.Packed_MemRef_call2311.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.3
  store double %polly.access.call2437.load.3, double* %polly.access.Packed_MemRef_call2311.3, align 8
  %polly.indvar_next432.3 = add nuw nsw i64 %polly.indvar431.3, 1
  %exitcond1103.3.not = icmp eq i64 %polly.indvar_next432.3, %indvars.iv1101
  br i1 %exitcond1103.3.not, label %polly.loop_exit430.3, label %polly.loop_header428.3

polly.loop_exit430.3:                             ; preds = %polly.loop_header428.3
  %507 = add nsw i64 %184, 1199
  br label %polly.loop_header438

polly.loop_header463.1:                           ; preds = %polly.loop_header463, %polly.loop_header463.1
  %polly.indvar467.1 = phi i64 [ %polly.indvar_next468.1, %polly.loop_header463.1 ], [ %205, %polly.loop_header463 ]
  %508 = add nuw nsw i64 %polly.indvar467.1, %185
  %polly.access.mul.call1471.1 = mul nuw nsw i64 %508, 1000
  %polly.access.add.call1472.1 = add nuw nsw i64 %175, %polly.access.mul.call1471.1
  %polly.access.call1473.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.1
  %polly.access.call1473.load.1 = load double, double* %polly.access.call1473.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.1 = add nuw nsw i64 %polly.indvar467.1, 1200
  %polly.access.Packed_MemRef_call1309476.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.1
  store double %polly.access.call1473.load.1, double* %polly.access.Packed_MemRef_call1309476.1, align 8
  %polly.indvar_next468.1 = add nuw nsw i64 %polly.indvar467.1, 1
  %polly.loop_cond469.not.not.1 = icmp ult i64 %polly.indvar467.1, %208
  br i1 %polly.loop_cond469.not.not.1, label %polly.loop_header463.1, label %polly.loop_header463.2

polly.loop_header463.2:                           ; preds = %polly.loop_header463.1, %polly.loop_header463.2
  %polly.indvar467.2 = phi i64 [ %polly.indvar_next468.2, %polly.loop_header463.2 ], [ %205, %polly.loop_header463.1 ]
  %509 = add nuw nsw i64 %polly.indvar467.2, %185
  %polly.access.mul.call1471.2 = mul nuw nsw i64 %509, 1000
  %polly.access.add.call1472.2 = add nuw nsw i64 %176, %polly.access.mul.call1471.2
  %polly.access.call1473.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.2
  %polly.access.call1473.load.2 = load double, double* %polly.access.call1473.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.2 = add nuw nsw i64 %polly.indvar467.2, 2400
  %polly.access.Packed_MemRef_call1309476.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.2
  store double %polly.access.call1473.load.2, double* %polly.access.Packed_MemRef_call1309476.2, align 8
  %polly.indvar_next468.2 = add nuw nsw i64 %polly.indvar467.2, 1
  %polly.loop_cond469.not.not.2 = icmp ult i64 %polly.indvar467.2, %208
  br i1 %polly.loop_cond469.not.not.2, label %polly.loop_header463.2, label %polly.loop_header463.3

polly.loop_header463.3:                           ; preds = %polly.loop_header463.2, %polly.loop_header463.3
  %polly.indvar467.3 = phi i64 [ %polly.indvar_next468.3, %polly.loop_header463.3 ], [ %205, %polly.loop_header463.2 ]
  %510 = add nuw nsw i64 %polly.indvar467.3, %185
  %polly.access.mul.call1471.3 = mul nuw nsw i64 %510, 1000
  %polly.access.add.call1472.3 = add nuw nsw i64 %177, %polly.access.mul.call1471.3
  %polly.access.call1473.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.3
  %polly.access.call1473.load.3 = load double, double* %polly.access.call1473.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.3 = add nuw nsw i64 %polly.indvar467.3, 3600
  %polly.access.Packed_MemRef_call1309476.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.3
  store double %polly.access.call1473.load.3, double* %polly.access.Packed_MemRef_call1309476.3, align 8
  %polly.indvar_next468.3 = add nuw nsw i64 %polly.indvar467.3, 1
  %polly.loop_cond469.not.not.3 = icmp ult i64 %polly.indvar467.3, %208
  br i1 %polly.loop_cond469.not.not.3, label %polly.loop_header463.3, label %polly.loop_header477.preheader

polly.loop_header451.us.1:                        ; preds = %polly.loop_header451.us.1.preheader, %polly.loop_header451.us.1
  %polly.indvar455.us.1 = phi i64 [ %polly.indvar_next456.us.1, %polly.loop_header451.us.1 ], [ 0, %polly.loop_header451.us.1.preheader ]
  %511 = add nuw nsw i64 %polly.indvar455.us.1, %185
  %polly.access.mul.call1459.us.1 = mul nuw nsw i64 %511, 1000
  %polly.access.add.call1460.us.1 = add nuw nsw i64 %175, %polly.access.mul.call1459.us.1
  %polly.access.call1461.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us.1
  %polly.access.call1461.load.us.1 = load double, double* %polly.access.call1461.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309.us.1 = add nuw nsw i64 %polly.indvar455.us.1, 1200
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.1
  store double %polly.access.call1461.load.us.1, double* %polly.access.Packed_MemRef_call1309.us.1, align 8
  %polly.indvar_next456.us.1 = add nuw i64 %polly.indvar455.us.1, 1
  %exitcond1106.1.not = icmp eq i64 %polly.indvar_next456.us.1, 64
  br i1 %exitcond1106.1.not, label %polly.loop_exit453.loopexit.us.1, label %polly.loop_header451.us.1

polly.loop_exit453.loopexit.us.1:                 ; preds = %polly.loop_header451.us.1
  br i1 %polly.loop_guard466.not, label %polly.loop_header451.us.2.preheader, label %polly.loop_header463.us.1

polly.loop_header463.us.1:                        ; preds = %polly.loop_exit453.loopexit.us.1, %polly.loop_header463.us.1
  %polly.indvar467.us.1 = phi i64 [ %polly.indvar_next468.us.1, %polly.loop_header463.us.1 ], [ %205, %polly.loop_exit453.loopexit.us.1 ]
  %512 = add nuw nsw i64 %polly.indvar467.us.1, %185
  %polly.access.mul.call1471.us.1 = mul nuw nsw i64 %512, 1000
  %polly.access.add.call1472.us.1 = add nuw nsw i64 %175, %polly.access.mul.call1471.us.1
  %polly.access.call1473.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us.1
  %polly.access.call1473.load.us.1 = load double, double* %polly.access.call1473.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.us.1 = add nuw nsw i64 %polly.indvar467.us.1, 1200
  %polly.access.Packed_MemRef_call1309476.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us.1
  store double %polly.access.call1473.load.us.1, double* %polly.access.Packed_MemRef_call1309476.us.1, align 8
  %polly.indvar_next468.us.1 = add nuw nsw i64 %polly.indvar467.us.1, 1
  %polly.loop_cond469.not.not.us.1 = icmp ult i64 %polly.indvar467.us.1, %208
  br i1 %polly.loop_cond469.not.not.us.1, label %polly.loop_header463.us.1, label %polly.loop_header451.us.2.preheader

polly.loop_header451.us.2.preheader:              ; preds = %polly.loop_header463.us.1, %polly.loop_exit453.loopexit.us.1
  br label %polly.loop_header451.us.2

polly.loop_header451.us.2:                        ; preds = %polly.loop_header451.us.2.preheader, %polly.loop_header451.us.2
  %polly.indvar455.us.2 = phi i64 [ %polly.indvar_next456.us.2, %polly.loop_header451.us.2 ], [ 0, %polly.loop_header451.us.2.preheader ]
  %513 = add nuw nsw i64 %polly.indvar455.us.2, %185
  %polly.access.mul.call1459.us.2 = mul nuw nsw i64 %513, 1000
  %polly.access.add.call1460.us.2 = add nuw nsw i64 %176, %polly.access.mul.call1459.us.2
  %polly.access.call1461.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us.2
  %polly.access.call1461.load.us.2 = load double, double* %polly.access.call1461.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309.us.2 = add nuw nsw i64 %polly.indvar455.us.2, 2400
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.2
  store double %polly.access.call1461.load.us.2, double* %polly.access.Packed_MemRef_call1309.us.2, align 8
  %polly.indvar_next456.us.2 = add nuw i64 %polly.indvar455.us.2, 1
  %exitcond1106.2.not = icmp eq i64 %polly.indvar_next456.us.2, 64
  br i1 %exitcond1106.2.not, label %polly.loop_exit453.loopexit.us.2, label %polly.loop_header451.us.2

polly.loop_exit453.loopexit.us.2:                 ; preds = %polly.loop_header451.us.2
  br i1 %polly.loop_guard466.not, label %polly.loop_header451.us.3.preheader, label %polly.loop_header463.us.2

polly.loop_header463.us.2:                        ; preds = %polly.loop_exit453.loopexit.us.2, %polly.loop_header463.us.2
  %polly.indvar467.us.2 = phi i64 [ %polly.indvar_next468.us.2, %polly.loop_header463.us.2 ], [ %205, %polly.loop_exit453.loopexit.us.2 ]
  %514 = add nuw nsw i64 %polly.indvar467.us.2, %185
  %polly.access.mul.call1471.us.2 = mul nuw nsw i64 %514, 1000
  %polly.access.add.call1472.us.2 = add nuw nsw i64 %176, %polly.access.mul.call1471.us.2
  %polly.access.call1473.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us.2
  %polly.access.call1473.load.us.2 = load double, double* %polly.access.call1473.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.us.2 = add nuw nsw i64 %polly.indvar467.us.2, 2400
  %polly.access.Packed_MemRef_call1309476.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us.2
  store double %polly.access.call1473.load.us.2, double* %polly.access.Packed_MemRef_call1309476.us.2, align 8
  %polly.indvar_next468.us.2 = add nuw nsw i64 %polly.indvar467.us.2, 1
  %polly.loop_cond469.not.not.us.2 = icmp ult i64 %polly.indvar467.us.2, %208
  br i1 %polly.loop_cond469.not.not.us.2, label %polly.loop_header463.us.2, label %polly.loop_header451.us.3.preheader

polly.loop_header451.us.3.preheader:              ; preds = %polly.loop_header463.us.2, %polly.loop_exit453.loopexit.us.2
  br label %polly.loop_header451.us.3

polly.loop_header451.us.3:                        ; preds = %polly.loop_header451.us.3.preheader, %polly.loop_header451.us.3
  %polly.indvar455.us.3 = phi i64 [ %polly.indvar_next456.us.3, %polly.loop_header451.us.3 ], [ 0, %polly.loop_header451.us.3.preheader ]
  %515 = add nuw nsw i64 %polly.indvar455.us.3, %185
  %polly.access.mul.call1459.us.3 = mul nuw nsw i64 %515, 1000
  %polly.access.add.call1460.us.3 = add nuw nsw i64 %177, %polly.access.mul.call1459.us.3
  %polly.access.call1461.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us.3
  %polly.access.call1461.load.us.3 = load double, double* %polly.access.call1461.us.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309.us.3 = add nuw nsw i64 %polly.indvar455.us.3, 3600
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.3
  store double %polly.access.call1461.load.us.3, double* %polly.access.Packed_MemRef_call1309.us.3, align 8
  %polly.indvar_next456.us.3 = add nuw i64 %polly.indvar455.us.3, 1
  %exitcond1106.3.not = icmp eq i64 %polly.indvar_next456.us.3, 64
  br i1 %exitcond1106.3.not, label %polly.loop_exit453.loopexit.us.3, label %polly.loop_header451.us.3

polly.loop_exit453.loopexit.us.3:                 ; preds = %polly.loop_header451.us.3
  br i1 %polly.loop_guard466.not, label %polly.loop_header477.preheader, label %polly.loop_header463.us.3

polly.loop_header463.us.3:                        ; preds = %polly.loop_exit453.loopexit.us.3, %polly.loop_header463.us.3
  %polly.indvar467.us.3 = phi i64 [ %polly.indvar_next468.us.3, %polly.loop_header463.us.3 ], [ %205, %polly.loop_exit453.loopexit.us.3 ]
  %516 = add nuw nsw i64 %polly.indvar467.us.3, %185
  %polly.access.mul.call1471.us.3 = mul nuw nsw i64 %516, 1000
  %polly.access.add.call1472.us.3 = add nuw nsw i64 %177, %polly.access.mul.call1471.us.3
  %polly.access.call1473.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us.3
  %polly.access.call1473.load.us.3 = load double, double* %polly.access.call1473.us.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.us.3 = add nuw nsw i64 %polly.indvar467.us.3, 3600
  %polly.access.Packed_MemRef_call1309476.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us.3
  store double %polly.access.call1473.load.us.3, double* %polly.access.Packed_MemRef_call1309476.us.3, align 8
  %polly.indvar_next468.us.3 = add nuw nsw i64 %polly.indvar467.us.3, 1
  %polly.loop_cond469.not.not.us.3 = icmp ult i64 %polly.indvar467.us.3, %208
  br i1 %polly.loop_cond469.not.not.us.3, label %polly.loop_header463.us.3, label %polly.loop_header477.preheader

polly.loop_header484.us.1:                        ; preds = %polly.loop_exit493.us, %polly.loop_exit493.us.1
  %indvars.iv1110.1 = phi i64 [ %indvars.iv.next1111.1, %polly.loop_exit493.us.1 ], [ %indvars.iv1108, %polly.loop_exit493.us ]
  %polly.indvar488.us.1 = phi i64 [ %polly.indvar_next489.us.1, %polly.loop_exit493.us.1 ], [ 0, %polly.loop_exit493.us ]
  %517 = add i64 %192, %polly.indvar488.us.1
  %smin1494 = call i64 @llvm.smin.i64(i64 %517, i64 63)
  %518 = add nuw nsw i64 %smin1494, 1
  %519 = mul nuw nsw i64 %polly.indvar488.us.1, 9600
  %520 = add i64 %196, %polly.indvar488.us.1
  %smin1482 = call i64 @llvm.smin.i64(i64 %520, i64 63)
  %521 = shl nuw nsw i64 %smin1482, 3
  %smin1112.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1110.1, i64 63)
  %522 = add nuw nsw i64 %polly.indvar488.us.1, %205
  %523 = add nuw nsw i64 %polly.indvar488.us.1, %204
  %polly.access.add.Packed_MemRef_call2311502.us.1 = add nuw nsw i64 %522, 1200
  %polly.access.Packed_MemRef_call2311503.us.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us.1
  %_p_scalar_504.us.1 = load double, double* %polly.access.Packed_MemRef_call2311503.us.1, align 8
  %polly.access.Packed_MemRef_call1309511.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us.1
  %_p_scalar_512.us.1 = load double, double* %polly.access.Packed_MemRef_call1309511.us.1, align 8
  %524 = mul nuw nsw i64 %523, 9600
  %min.iters.check1495 = icmp ult i64 %smin1494, 3
  br i1 %min.iters.check1495, label %polly.loop_header491.us.1.preheader, label %vector.memcheck1479

vector.memcheck1479:                              ; preds = %polly.loop_header484.us.1
  %scevgep1486 = getelementptr i8, i8* %scevgep1485, i64 %521
  %525 = add i64 %195, %519
  %scevgep1481 = getelementptr i8, i8* %call, i64 %525
  %scevgep1483 = getelementptr i8, i8* %scevgep1481, i64 %521
  %526 = add i64 %194, %519
  %scevgep1480 = getelementptr i8, i8* %call, i64 %526
  %bound01487 = icmp ult i8* %scevgep1480, %scevgep1486
  %bound11488 = icmp ult i8* %scevgep1484, %scevgep1483
  %found.conflict1489 = and i1 %bound01487, %bound11488
  br i1 %found.conflict1489, label %polly.loop_header491.us.1.preheader, label %vector.ph1496

vector.ph1496:                                    ; preds = %vector.memcheck1479
  %n.vec1498 = and i64 %518, -4
  %broadcast.splatinsert1504 = insertelement <4 x double> poison, double %_p_scalar_504.us.1, i32 0
  %broadcast.splat1505 = shufflevector <4 x double> %broadcast.splatinsert1504, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1507 = insertelement <4 x double> poison, double %_p_scalar_512.us.1, i32 0
  %broadcast.splat1508 = shufflevector <4 x double> %broadcast.splatinsert1507, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1493

vector.body1493:                                  ; preds = %vector.body1493, %vector.ph1496
  %index1499 = phi i64 [ 0, %vector.ph1496 ], [ %index.next1500, %vector.body1493 ]
  %527 = add nuw nsw i64 %index1499, %185
  %528 = add nuw nsw i64 %index1499, 1200
  %529 = getelementptr double, double* %Packed_MemRef_call1309, i64 %528
  %530 = bitcast double* %529 to <4 x double>*
  %wide.load1503 = load <4 x double>, <4 x double>* %530, align 8, !alias.scope !160
  %531 = fmul fast <4 x double> %broadcast.splat1505, %wide.load1503
  %532 = getelementptr double, double* %Packed_MemRef_call2311, i64 %528
  %533 = bitcast double* %532 to <4 x double>*
  %wide.load1506 = load <4 x double>, <4 x double>* %533, align 8
  %534 = fmul fast <4 x double> %broadcast.splat1508, %wide.load1506
  %535 = shl i64 %527, 3
  %536 = add nuw nsw i64 %535, %524
  %537 = getelementptr i8, i8* %call, i64 %536
  %538 = bitcast i8* %537 to <4 x double>*
  %wide.load1509 = load <4 x double>, <4 x double>* %538, align 8, !alias.scope !163, !noalias !165
  %539 = fadd fast <4 x double> %534, %531
  %540 = fmul fast <4 x double> %539, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %541 = fadd fast <4 x double> %540, %wide.load1509
  %542 = bitcast i8* %537 to <4 x double>*
  store <4 x double> %541, <4 x double>* %542, align 8, !alias.scope !163, !noalias !165
  %index.next1500 = add i64 %index1499, 4
  %543 = icmp eq i64 %index.next1500, %n.vec1498
  br i1 %543, label %middle.block1491, label %vector.body1493, !llvm.loop !166

middle.block1491:                                 ; preds = %vector.body1493
  %cmp.n1502 = icmp eq i64 %518, %n.vec1498
  br i1 %cmp.n1502, label %polly.loop_exit493.us.1, label %polly.loop_header491.us.1.preheader

polly.loop_header491.us.1.preheader:              ; preds = %vector.memcheck1479, %polly.loop_header484.us.1, %middle.block1491
  %polly.indvar494.us.1.ph = phi i64 [ 0, %vector.memcheck1479 ], [ 0, %polly.loop_header484.us.1 ], [ %n.vec1498, %middle.block1491 ]
  br label %polly.loop_header491.us.1

polly.loop_header491.us.1:                        ; preds = %polly.loop_header491.us.1.preheader, %polly.loop_header491.us.1
  %polly.indvar494.us.1 = phi i64 [ %polly.indvar_next495.us.1, %polly.loop_header491.us.1 ], [ %polly.indvar494.us.1.ph, %polly.loop_header491.us.1.preheader ]
  %544 = add nuw nsw i64 %polly.indvar494.us.1, %185
  %polly.access.add.Packed_MemRef_call1309498.us.1 = add nuw nsw i64 %polly.indvar494.us.1, 1200
  %polly.access.Packed_MemRef_call1309499.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us.1
  %_p_scalar_500.us.1 = load double, double* %polly.access.Packed_MemRef_call1309499.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_504.us.1, %_p_scalar_500.us.1
  %polly.access.Packed_MemRef_call2311507.us.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us.1
  %_p_scalar_508.us.1 = load double, double* %polly.access.Packed_MemRef_call2311507.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_512.us.1, %_p_scalar_508.us.1
  %545 = shl i64 %544, 3
  %546 = add nuw nsw i64 %545, %524
  %scevgep513.us.1 = getelementptr i8, i8* %call, i64 %546
  %scevgep513514.us.1 = bitcast i8* %scevgep513.us.1 to double*
  %_p_scalar_515.us.1 = load double, double* %scevgep513514.us.1, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_515.us.1
  store double %p_add42.i79.us.1, double* %scevgep513514.us.1, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next495.us.1 = add nuw nsw i64 %polly.indvar494.us.1, 1
  %exitcond1113.1.not = icmp eq i64 %polly.indvar494.us.1, %smin1112.1
  br i1 %exitcond1113.1.not, label %polly.loop_exit493.us.1, label %polly.loop_header491.us.1, !llvm.loop !167

polly.loop_exit493.us.1:                          ; preds = %polly.loop_header491.us.1, %middle.block1491
  %polly.indvar_next489.us.1 = add nuw nsw i64 %polly.indvar488.us.1, 1
  %indvars.iv.next1111.1 = add nuw nsw i64 %indvars.iv1110.1, 1
  %exitcond1120.1.not = icmp eq i64 %polly.indvar488.us.1, %smax1119
  br i1 %exitcond1120.1.not, label %polly.loop_header484.us.2, label %polly.loop_header484.us.1

polly.loop_header484.us.2:                        ; preds = %polly.loop_exit493.us.1, %polly.loop_exit493.us.2
  %indvars.iv1110.2 = phi i64 [ %indvars.iv.next1111.2, %polly.loop_exit493.us.2 ], [ %indvars.iv1108, %polly.loop_exit493.us.1 ]
  %polly.indvar488.us.2 = phi i64 [ %polly.indvar_next489.us.2, %polly.loop_exit493.us.2 ], [ 0, %polly.loop_exit493.us.1 ]
  %547 = add i64 %197, %polly.indvar488.us.2
  %smin1463 = call i64 @llvm.smin.i64(i64 %547, i64 63)
  %548 = add nuw nsw i64 %smin1463, 1
  %549 = mul nuw nsw i64 %polly.indvar488.us.2, 9600
  %550 = add i64 %201, %polly.indvar488.us.2
  %smin1451 = call i64 @llvm.smin.i64(i64 %550, i64 63)
  %551 = shl nuw nsw i64 %smin1451, 3
  %smin1112.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1110.2, i64 63)
  %552 = add nuw nsw i64 %polly.indvar488.us.2, %205
  %553 = add nuw nsw i64 %polly.indvar488.us.2, %204
  %polly.access.add.Packed_MemRef_call2311502.us.2 = add nuw nsw i64 %552, 2400
  %polly.access.Packed_MemRef_call2311503.us.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us.2
  %_p_scalar_504.us.2 = load double, double* %polly.access.Packed_MemRef_call2311503.us.2, align 8
  %polly.access.Packed_MemRef_call1309511.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us.2
  %_p_scalar_512.us.2 = load double, double* %polly.access.Packed_MemRef_call1309511.us.2, align 8
  %554 = mul nuw nsw i64 %553, 9600
  %min.iters.check1464 = icmp ult i64 %smin1463, 3
  br i1 %min.iters.check1464, label %polly.loop_header491.us.2.preheader, label %vector.memcheck1448

vector.memcheck1448:                              ; preds = %polly.loop_header484.us.2
  %scevgep1455 = getelementptr i8, i8* %scevgep1454, i64 %551
  %555 = add i64 %200, %549
  %scevgep1450 = getelementptr i8, i8* %call, i64 %555
  %scevgep1452 = getelementptr i8, i8* %scevgep1450, i64 %551
  %556 = add i64 %199, %549
  %scevgep1449 = getelementptr i8, i8* %call, i64 %556
  %bound01456 = icmp ult i8* %scevgep1449, %scevgep1455
  %bound11457 = icmp ult i8* %scevgep1453, %scevgep1452
  %found.conflict1458 = and i1 %bound01456, %bound11457
  br i1 %found.conflict1458, label %polly.loop_header491.us.2.preheader, label %vector.ph1465

vector.ph1465:                                    ; preds = %vector.memcheck1448
  %n.vec1467 = and i64 %548, -4
  %broadcast.splatinsert1473 = insertelement <4 x double> poison, double %_p_scalar_504.us.2, i32 0
  %broadcast.splat1474 = shufflevector <4 x double> %broadcast.splatinsert1473, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1476 = insertelement <4 x double> poison, double %_p_scalar_512.us.2, i32 0
  %broadcast.splat1477 = shufflevector <4 x double> %broadcast.splatinsert1476, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1462

vector.body1462:                                  ; preds = %vector.body1462, %vector.ph1465
  %index1468 = phi i64 [ 0, %vector.ph1465 ], [ %index.next1469, %vector.body1462 ]
  %557 = add nuw nsw i64 %index1468, %185
  %558 = add nuw nsw i64 %index1468, 2400
  %559 = getelementptr double, double* %Packed_MemRef_call1309, i64 %558
  %560 = bitcast double* %559 to <4 x double>*
  %wide.load1472 = load <4 x double>, <4 x double>* %560, align 8, !alias.scope !168
  %561 = fmul fast <4 x double> %broadcast.splat1474, %wide.load1472
  %562 = getelementptr double, double* %Packed_MemRef_call2311, i64 %558
  %563 = bitcast double* %562 to <4 x double>*
  %wide.load1475 = load <4 x double>, <4 x double>* %563, align 8
  %564 = fmul fast <4 x double> %broadcast.splat1477, %wide.load1475
  %565 = shl i64 %557, 3
  %566 = add nuw nsw i64 %565, %554
  %567 = getelementptr i8, i8* %call, i64 %566
  %568 = bitcast i8* %567 to <4 x double>*
  %wide.load1478 = load <4 x double>, <4 x double>* %568, align 8, !alias.scope !171, !noalias !173
  %569 = fadd fast <4 x double> %564, %561
  %570 = fmul fast <4 x double> %569, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %571 = fadd fast <4 x double> %570, %wide.load1478
  %572 = bitcast i8* %567 to <4 x double>*
  store <4 x double> %571, <4 x double>* %572, align 8, !alias.scope !171, !noalias !173
  %index.next1469 = add i64 %index1468, 4
  %573 = icmp eq i64 %index.next1469, %n.vec1467
  br i1 %573, label %middle.block1460, label %vector.body1462, !llvm.loop !174

middle.block1460:                                 ; preds = %vector.body1462
  %cmp.n1471 = icmp eq i64 %548, %n.vec1467
  br i1 %cmp.n1471, label %polly.loop_exit493.us.2, label %polly.loop_header491.us.2.preheader

polly.loop_header491.us.2.preheader:              ; preds = %vector.memcheck1448, %polly.loop_header484.us.2, %middle.block1460
  %polly.indvar494.us.2.ph = phi i64 [ 0, %vector.memcheck1448 ], [ 0, %polly.loop_header484.us.2 ], [ %n.vec1467, %middle.block1460 ]
  br label %polly.loop_header491.us.2

polly.loop_header491.us.2:                        ; preds = %polly.loop_header491.us.2.preheader, %polly.loop_header491.us.2
  %polly.indvar494.us.2 = phi i64 [ %polly.indvar_next495.us.2, %polly.loop_header491.us.2 ], [ %polly.indvar494.us.2.ph, %polly.loop_header491.us.2.preheader ]
  %574 = add nuw nsw i64 %polly.indvar494.us.2, %185
  %polly.access.add.Packed_MemRef_call1309498.us.2 = add nuw nsw i64 %polly.indvar494.us.2, 2400
  %polly.access.Packed_MemRef_call1309499.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us.2
  %_p_scalar_500.us.2 = load double, double* %polly.access.Packed_MemRef_call1309499.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_504.us.2, %_p_scalar_500.us.2
  %polly.access.Packed_MemRef_call2311507.us.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us.2
  %_p_scalar_508.us.2 = load double, double* %polly.access.Packed_MemRef_call2311507.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_512.us.2, %_p_scalar_508.us.2
  %575 = shl i64 %574, 3
  %576 = add nuw nsw i64 %575, %554
  %scevgep513.us.2 = getelementptr i8, i8* %call, i64 %576
  %scevgep513514.us.2 = bitcast i8* %scevgep513.us.2 to double*
  %_p_scalar_515.us.2 = load double, double* %scevgep513514.us.2, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_515.us.2
  store double %p_add42.i79.us.2, double* %scevgep513514.us.2, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next495.us.2 = add nuw nsw i64 %polly.indvar494.us.2, 1
  %exitcond1113.2.not = icmp eq i64 %polly.indvar494.us.2, %smin1112.2
  br i1 %exitcond1113.2.not, label %polly.loop_exit493.us.2, label %polly.loop_header491.us.2, !llvm.loop !175

polly.loop_exit493.us.2:                          ; preds = %polly.loop_header491.us.2, %middle.block1460
  %polly.indvar_next489.us.2 = add nuw nsw i64 %polly.indvar488.us.2, 1
  %indvars.iv.next1111.2 = add nuw nsw i64 %indvars.iv1110.2, 1
  %exitcond1120.2.not = icmp eq i64 %polly.indvar488.us.2, %smax1119
  br i1 %exitcond1120.2.not, label %polly.loop_header484.us.3, label %polly.loop_header484.us.2

polly.loop_header484.us.3:                        ; preds = %polly.loop_exit493.us.2, %polly.loop_exit493.us.3
  %indvars.iv1110.3 = phi i64 [ %indvars.iv.next1111.3, %polly.loop_exit493.us.3 ], [ %indvars.iv1108, %polly.loop_exit493.us.2 ]
  %polly.indvar488.us.3 = phi i64 [ %polly.indvar_next489.us.3, %polly.loop_exit493.us.3 ], [ 0, %polly.loop_exit493.us.2 ]
  %577 = add i64 %202, %polly.indvar488.us.3
  %smin1432 = call i64 @llvm.smin.i64(i64 %577, i64 63)
  %578 = add nuw nsw i64 %smin1432, 1
  %smin1112.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1110.3, i64 63)
  %579 = add nuw nsw i64 %polly.indvar488.us.3, %205
  %580 = add nuw nsw i64 %polly.indvar488.us.3, %204
  %polly.access.add.Packed_MemRef_call2311502.us.3 = add nuw nsw i64 %579, 3600
  %polly.access.Packed_MemRef_call2311503.us.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us.3
  %_p_scalar_504.us.3 = load double, double* %polly.access.Packed_MemRef_call2311503.us.3, align 8
  %polly.access.Packed_MemRef_call1309511.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us.3
  %_p_scalar_512.us.3 = load double, double* %polly.access.Packed_MemRef_call1309511.us.3, align 8
  %581 = mul nuw nsw i64 %580, 9600
  %min.iters.check1433 = icmp ult i64 %smin1432, 3
  br i1 %min.iters.check1433, label %polly.loop_header491.us.3.preheader, label %vector.ph1434

vector.ph1434:                                    ; preds = %polly.loop_header484.us.3
  %n.vec1436 = and i64 %578, -4
  %broadcast.splatinsert1442 = insertelement <4 x double> poison, double %_p_scalar_504.us.3, i32 0
  %broadcast.splat1443 = shufflevector <4 x double> %broadcast.splatinsert1442, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1445 = insertelement <4 x double> poison, double %_p_scalar_512.us.3, i32 0
  %broadcast.splat1446 = shufflevector <4 x double> %broadcast.splatinsert1445, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1429

vector.body1429:                                  ; preds = %vector.body1429, %vector.ph1434
  %index1437 = phi i64 [ 0, %vector.ph1434 ], [ %index.next1438, %vector.body1429 ]
  %582 = add nuw nsw i64 %index1437, %185
  %583 = add nuw nsw i64 %index1437, 3600
  %584 = getelementptr double, double* %Packed_MemRef_call1309, i64 %583
  %585 = bitcast double* %584 to <4 x double>*
  %wide.load1441 = load <4 x double>, <4 x double>* %585, align 8
  %586 = fmul fast <4 x double> %broadcast.splat1443, %wide.load1441
  %587 = getelementptr double, double* %Packed_MemRef_call2311, i64 %583
  %588 = bitcast double* %587 to <4 x double>*
  %wide.load1444 = load <4 x double>, <4 x double>* %588, align 8
  %589 = fmul fast <4 x double> %broadcast.splat1446, %wide.load1444
  %590 = shl i64 %582, 3
  %591 = add nuw nsw i64 %590, %581
  %592 = getelementptr i8, i8* %call, i64 %591
  %593 = bitcast i8* %592 to <4 x double>*
  %wide.load1447 = load <4 x double>, <4 x double>* %593, align 8, !alias.scope !91, !noalias !93
  %594 = fadd fast <4 x double> %589, %586
  %595 = fmul fast <4 x double> %594, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %596 = fadd fast <4 x double> %595, %wide.load1447
  %597 = bitcast i8* %592 to <4 x double>*
  store <4 x double> %596, <4 x double>* %597, align 8, !alias.scope !91, !noalias !93
  %index.next1438 = add i64 %index1437, 4
  %598 = icmp eq i64 %index.next1438, %n.vec1436
  br i1 %598, label %middle.block1427, label %vector.body1429, !llvm.loop !176

middle.block1427:                                 ; preds = %vector.body1429
  %cmp.n1440 = icmp eq i64 %578, %n.vec1436
  br i1 %cmp.n1440, label %polly.loop_exit493.us.3, label %polly.loop_header491.us.3.preheader

polly.loop_header491.us.3.preheader:              ; preds = %polly.loop_header484.us.3, %middle.block1427
  %polly.indvar494.us.3.ph = phi i64 [ 0, %polly.loop_header484.us.3 ], [ %n.vec1436, %middle.block1427 ]
  br label %polly.loop_header491.us.3

polly.loop_header491.us.3:                        ; preds = %polly.loop_header491.us.3.preheader, %polly.loop_header491.us.3
  %polly.indvar494.us.3 = phi i64 [ %polly.indvar_next495.us.3, %polly.loop_header491.us.3 ], [ %polly.indvar494.us.3.ph, %polly.loop_header491.us.3.preheader ]
  %599 = add nuw nsw i64 %polly.indvar494.us.3, %185
  %polly.access.add.Packed_MemRef_call1309498.us.3 = add nuw nsw i64 %polly.indvar494.us.3, 3600
  %polly.access.Packed_MemRef_call1309499.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us.3
  %_p_scalar_500.us.3 = load double, double* %polly.access.Packed_MemRef_call1309499.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_504.us.3, %_p_scalar_500.us.3
  %polly.access.Packed_MemRef_call2311507.us.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us.3
  %_p_scalar_508.us.3 = load double, double* %polly.access.Packed_MemRef_call2311507.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_512.us.3, %_p_scalar_508.us.3
  %600 = shl i64 %599, 3
  %601 = add nuw nsw i64 %600, %581
  %scevgep513.us.3 = getelementptr i8, i8* %call, i64 %601
  %scevgep513514.us.3 = bitcast i8* %scevgep513.us.3 to double*
  %_p_scalar_515.us.3 = load double, double* %scevgep513514.us.3, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_515.us.3
  store double %p_add42.i79.us.3, double* %scevgep513514.us.3, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next495.us.3 = add nuw nsw i64 %polly.indvar494.us.3, 1
  %exitcond1113.3.not = icmp eq i64 %polly.indvar494.us.3, %smin1112.3
  br i1 %exitcond1113.3.not, label %polly.loop_exit493.us.3, label %polly.loop_header491.us.3, !llvm.loop !177

polly.loop_exit493.us.3:                          ; preds = %polly.loop_header491.us.3, %middle.block1427
  %polly.indvar_next489.us.3 = add nuw nsw i64 %polly.indvar488.us.3, 1
  %indvars.iv.next1111.3 = add nuw nsw i64 %indvars.iv1110.3, 1
  %exitcond1120.3.not = icmp eq i64 %polly.indvar488.us.3, %smax1119
  br i1 %exitcond1120.3.not, label %polly.loop_exit479, label %polly.loop_header484.us.3

polly.loop_header640.1:                           ; preds = %polly.loop_header640, %polly.loop_header640.1
  %polly.indvar643.1 = phi i64 [ %polly.indvar_next644.1, %polly.loop_header640.1 ], [ 0, %polly.loop_header640 ]
  %602 = add nuw nsw i64 %polly.indvar643.1, %262
  %polly.access.mul.call2647.1 = mul nuw nsw i64 %602, 1000
  %polly.access.add.call2648.1 = add nuw nsw i64 %252, %polly.access.mul.call2647.1
  %polly.access.call2649.1 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648.1
  %polly.access.call2649.load.1 = load double, double* %polly.access.call2649.1, align 8, !alias.scope !114, !noalias !119
  %polly.access.add.Packed_MemRef_call2523.1 = add nuw nsw i64 %polly.indvar643.1, 1200
  %polly.access.Packed_MemRef_call2523.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523.1
  store double %polly.access.call2649.load.1, double* %polly.access.Packed_MemRef_call2523.1, align 8
  %polly.indvar_next644.1 = add nuw nsw i64 %polly.indvar643.1, 1
  %exitcond1129.1.not = icmp eq i64 %polly.indvar_next644.1, %indvars.iv1127
  br i1 %exitcond1129.1.not, label %polly.loop_header640.2, label %polly.loop_header640.1

polly.loop_header640.2:                           ; preds = %polly.loop_header640.1, %polly.loop_header640.2
  %polly.indvar643.2 = phi i64 [ %polly.indvar_next644.2, %polly.loop_header640.2 ], [ 0, %polly.loop_header640.1 ]
  %603 = add nuw nsw i64 %polly.indvar643.2, %262
  %polly.access.mul.call2647.2 = mul nuw nsw i64 %603, 1000
  %polly.access.add.call2648.2 = add nuw nsw i64 %253, %polly.access.mul.call2647.2
  %polly.access.call2649.2 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648.2
  %polly.access.call2649.load.2 = load double, double* %polly.access.call2649.2, align 8, !alias.scope !114, !noalias !119
  %polly.access.add.Packed_MemRef_call2523.2 = add nuw nsw i64 %polly.indvar643.2, 2400
  %polly.access.Packed_MemRef_call2523.2 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523.2
  store double %polly.access.call2649.load.2, double* %polly.access.Packed_MemRef_call2523.2, align 8
  %polly.indvar_next644.2 = add nuw nsw i64 %polly.indvar643.2, 1
  %exitcond1129.2.not = icmp eq i64 %polly.indvar_next644.2, %indvars.iv1127
  br i1 %exitcond1129.2.not, label %polly.loop_header640.3, label %polly.loop_header640.2

polly.loop_header640.3:                           ; preds = %polly.loop_header640.2, %polly.loop_header640.3
  %polly.indvar643.3 = phi i64 [ %polly.indvar_next644.3, %polly.loop_header640.3 ], [ 0, %polly.loop_header640.2 ]
  %604 = add nuw nsw i64 %polly.indvar643.3, %262
  %polly.access.mul.call2647.3 = mul nuw nsw i64 %604, 1000
  %polly.access.add.call2648.3 = add nuw nsw i64 %254, %polly.access.mul.call2647.3
  %polly.access.call2649.3 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648.3
  %polly.access.call2649.load.3 = load double, double* %polly.access.call2649.3, align 8, !alias.scope !114, !noalias !119
  %polly.access.add.Packed_MemRef_call2523.3 = add nuw nsw i64 %polly.indvar643.3, 3600
  %polly.access.Packed_MemRef_call2523.3 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523.3
  store double %polly.access.call2649.load.3, double* %polly.access.Packed_MemRef_call2523.3, align 8
  %polly.indvar_next644.3 = add nuw nsw i64 %polly.indvar643.3, 1
  %exitcond1129.3.not = icmp eq i64 %polly.indvar_next644.3, %indvars.iv1127
  br i1 %exitcond1129.3.not, label %polly.loop_exit642.3, label %polly.loop_header640.3

polly.loop_exit642.3:                             ; preds = %polly.loop_header640.3
  %605 = add nsw i64 %261, 1199
  br label %polly.loop_header650

polly.loop_header675.1:                           ; preds = %polly.loop_header675, %polly.loop_header675.1
  %polly.indvar679.1 = phi i64 [ %polly.indvar_next680.1, %polly.loop_header675.1 ], [ %282, %polly.loop_header675 ]
  %606 = add nuw nsw i64 %polly.indvar679.1, %262
  %polly.access.mul.call1683.1 = mul nuw nsw i64 %606, 1000
  %polly.access.add.call1684.1 = add nuw nsw i64 %252, %polly.access.mul.call1683.1
  %polly.access.call1685.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.1
  %polly.access.call1685.load.1 = load double, double* %polly.access.call1685.1, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.1 = add nuw nsw i64 %polly.indvar679.1, 1200
  %polly.access.Packed_MemRef_call1521688.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.1
  store double %polly.access.call1685.load.1, double* %polly.access.Packed_MemRef_call1521688.1, align 8
  %polly.indvar_next680.1 = add nuw nsw i64 %polly.indvar679.1, 1
  %polly.loop_cond681.not.not.1 = icmp ult i64 %polly.indvar679.1, %285
  br i1 %polly.loop_cond681.not.not.1, label %polly.loop_header675.1, label %polly.loop_header675.2

polly.loop_header675.2:                           ; preds = %polly.loop_header675.1, %polly.loop_header675.2
  %polly.indvar679.2 = phi i64 [ %polly.indvar_next680.2, %polly.loop_header675.2 ], [ %282, %polly.loop_header675.1 ]
  %607 = add nuw nsw i64 %polly.indvar679.2, %262
  %polly.access.mul.call1683.2 = mul nuw nsw i64 %607, 1000
  %polly.access.add.call1684.2 = add nuw nsw i64 %253, %polly.access.mul.call1683.2
  %polly.access.call1685.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.2
  %polly.access.call1685.load.2 = load double, double* %polly.access.call1685.2, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.2 = add nuw nsw i64 %polly.indvar679.2, 2400
  %polly.access.Packed_MemRef_call1521688.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.2
  store double %polly.access.call1685.load.2, double* %polly.access.Packed_MemRef_call1521688.2, align 8
  %polly.indvar_next680.2 = add nuw nsw i64 %polly.indvar679.2, 1
  %polly.loop_cond681.not.not.2 = icmp ult i64 %polly.indvar679.2, %285
  br i1 %polly.loop_cond681.not.not.2, label %polly.loop_header675.2, label %polly.loop_header675.3

polly.loop_header675.3:                           ; preds = %polly.loop_header675.2, %polly.loop_header675.3
  %polly.indvar679.3 = phi i64 [ %polly.indvar_next680.3, %polly.loop_header675.3 ], [ %282, %polly.loop_header675.2 ]
  %608 = add nuw nsw i64 %polly.indvar679.3, %262
  %polly.access.mul.call1683.3 = mul nuw nsw i64 %608, 1000
  %polly.access.add.call1684.3 = add nuw nsw i64 %254, %polly.access.mul.call1683.3
  %polly.access.call1685.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.3
  %polly.access.call1685.load.3 = load double, double* %polly.access.call1685.3, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.3 = add nuw nsw i64 %polly.indvar679.3, 3600
  %polly.access.Packed_MemRef_call1521688.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.3
  store double %polly.access.call1685.load.3, double* %polly.access.Packed_MemRef_call1521688.3, align 8
  %polly.indvar_next680.3 = add nuw nsw i64 %polly.indvar679.3, 1
  %polly.loop_cond681.not.not.3 = icmp ult i64 %polly.indvar679.3, %285
  br i1 %polly.loop_cond681.not.not.3, label %polly.loop_header675.3, label %polly.loop_header689.preheader

polly.loop_header663.us.1:                        ; preds = %polly.loop_header663.us.1.preheader, %polly.loop_header663.us.1
  %polly.indvar667.us.1 = phi i64 [ %polly.indvar_next668.us.1, %polly.loop_header663.us.1 ], [ 0, %polly.loop_header663.us.1.preheader ]
  %609 = add nuw nsw i64 %polly.indvar667.us.1, %262
  %polly.access.mul.call1671.us.1 = mul nuw nsw i64 %609, 1000
  %polly.access.add.call1672.us.1 = add nuw nsw i64 %252, %polly.access.mul.call1671.us.1
  %polly.access.call1673.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us.1
  %polly.access.call1673.load.us.1 = load double, double* %polly.access.call1673.us.1, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521.us.1 = add nuw nsw i64 %polly.indvar667.us.1, 1200
  %polly.access.Packed_MemRef_call1521.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us.1
  store double %polly.access.call1673.load.us.1, double* %polly.access.Packed_MemRef_call1521.us.1, align 8
  %polly.indvar_next668.us.1 = add nuw i64 %polly.indvar667.us.1, 1
  %exitcond1132.1.not = icmp eq i64 %polly.indvar_next668.us.1, 64
  br i1 %exitcond1132.1.not, label %polly.loop_exit665.loopexit.us.1, label %polly.loop_header663.us.1

polly.loop_exit665.loopexit.us.1:                 ; preds = %polly.loop_header663.us.1
  br i1 %polly.loop_guard678.not, label %polly.loop_header663.us.2.preheader, label %polly.loop_header675.us.1

polly.loop_header675.us.1:                        ; preds = %polly.loop_exit665.loopexit.us.1, %polly.loop_header675.us.1
  %polly.indvar679.us.1 = phi i64 [ %polly.indvar_next680.us.1, %polly.loop_header675.us.1 ], [ %282, %polly.loop_exit665.loopexit.us.1 ]
  %610 = add nuw nsw i64 %polly.indvar679.us.1, %262
  %polly.access.mul.call1683.us.1 = mul nuw nsw i64 %610, 1000
  %polly.access.add.call1684.us.1 = add nuw nsw i64 %252, %polly.access.mul.call1683.us.1
  %polly.access.call1685.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us.1
  %polly.access.call1685.load.us.1 = load double, double* %polly.access.call1685.us.1, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.us.1 = add nuw nsw i64 %polly.indvar679.us.1, 1200
  %polly.access.Packed_MemRef_call1521688.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us.1
  store double %polly.access.call1685.load.us.1, double* %polly.access.Packed_MemRef_call1521688.us.1, align 8
  %polly.indvar_next680.us.1 = add nuw nsw i64 %polly.indvar679.us.1, 1
  %polly.loop_cond681.not.not.us.1 = icmp ult i64 %polly.indvar679.us.1, %285
  br i1 %polly.loop_cond681.not.not.us.1, label %polly.loop_header675.us.1, label %polly.loop_header663.us.2.preheader

polly.loop_header663.us.2.preheader:              ; preds = %polly.loop_header675.us.1, %polly.loop_exit665.loopexit.us.1
  br label %polly.loop_header663.us.2

polly.loop_header663.us.2:                        ; preds = %polly.loop_header663.us.2.preheader, %polly.loop_header663.us.2
  %polly.indvar667.us.2 = phi i64 [ %polly.indvar_next668.us.2, %polly.loop_header663.us.2 ], [ 0, %polly.loop_header663.us.2.preheader ]
  %611 = add nuw nsw i64 %polly.indvar667.us.2, %262
  %polly.access.mul.call1671.us.2 = mul nuw nsw i64 %611, 1000
  %polly.access.add.call1672.us.2 = add nuw nsw i64 %253, %polly.access.mul.call1671.us.2
  %polly.access.call1673.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us.2
  %polly.access.call1673.load.us.2 = load double, double* %polly.access.call1673.us.2, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521.us.2 = add nuw nsw i64 %polly.indvar667.us.2, 2400
  %polly.access.Packed_MemRef_call1521.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us.2
  store double %polly.access.call1673.load.us.2, double* %polly.access.Packed_MemRef_call1521.us.2, align 8
  %polly.indvar_next668.us.2 = add nuw i64 %polly.indvar667.us.2, 1
  %exitcond1132.2.not = icmp eq i64 %polly.indvar_next668.us.2, 64
  br i1 %exitcond1132.2.not, label %polly.loop_exit665.loopexit.us.2, label %polly.loop_header663.us.2

polly.loop_exit665.loopexit.us.2:                 ; preds = %polly.loop_header663.us.2
  br i1 %polly.loop_guard678.not, label %polly.loop_header663.us.3.preheader, label %polly.loop_header675.us.2

polly.loop_header675.us.2:                        ; preds = %polly.loop_exit665.loopexit.us.2, %polly.loop_header675.us.2
  %polly.indvar679.us.2 = phi i64 [ %polly.indvar_next680.us.2, %polly.loop_header675.us.2 ], [ %282, %polly.loop_exit665.loopexit.us.2 ]
  %612 = add nuw nsw i64 %polly.indvar679.us.2, %262
  %polly.access.mul.call1683.us.2 = mul nuw nsw i64 %612, 1000
  %polly.access.add.call1684.us.2 = add nuw nsw i64 %253, %polly.access.mul.call1683.us.2
  %polly.access.call1685.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us.2
  %polly.access.call1685.load.us.2 = load double, double* %polly.access.call1685.us.2, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.us.2 = add nuw nsw i64 %polly.indvar679.us.2, 2400
  %polly.access.Packed_MemRef_call1521688.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us.2
  store double %polly.access.call1685.load.us.2, double* %polly.access.Packed_MemRef_call1521688.us.2, align 8
  %polly.indvar_next680.us.2 = add nuw nsw i64 %polly.indvar679.us.2, 1
  %polly.loop_cond681.not.not.us.2 = icmp ult i64 %polly.indvar679.us.2, %285
  br i1 %polly.loop_cond681.not.not.us.2, label %polly.loop_header675.us.2, label %polly.loop_header663.us.3.preheader

polly.loop_header663.us.3.preheader:              ; preds = %polly.loop_header675.us.2, %polly.loop_exit665.loopexit.us.2
  br label %polly.loop_header663.us.3

polly.loop_header663.us.3:                        ; preds = %polly.loop_header663.us.3.preheader, %polly.loop_header663.us.3
  %polly.indvar667.us.3 = phi i64 [ %polly.indvar_next668.us.3, %polly.loop_header663.us.3 ], [ 0, %polly.loop_header663.us.3.preheader ]
  %613 = add nuw nsw i64 %polly.indvar667.us.3, %262
  %polly.access.mul.call1671.us.3 = mul nuw nsw i64 %613, 1000
  %polly.access.add.call1672.us.3 = add nuw nsw i64 %254, %polly.access.mul.call1671.us.3
  %polly.access.call1673.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us.3
  %polly.access.call1673.load.us.3 = load double, double* %polly.access.call1673.us.3, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521.us.3 = add nuw nsw i64 %polly.indvar667.us.3, 3600
  %polly.access.Packed_MemRef_call1521.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us.3
  store double %polly.access.call1673.load.us.3, double* %polly.access.Packed_MemRef_call1521.us.3, align 8
  %polly.indvar_next668.us.3 = add nuw i64 %polly.indvar667.us.3, 1
  %exitcond1132.3.not = icmp eq i64 %polly.indvar_next668.us.3, 64
  br i1 %exitcond1132.3.not, label %polly.loop_exit665.loopexit.us.3, label %polly.loop_header663.us.3

polly.loop_exit665.loopexit.us.3:                 ; preds = %polly.loop_header663.us.3
  br i1 %polly.loop_guard678.not, label %polly.loop_header689.preheader, label %polly.loop_header675.us.3

polly.loop_header675.us.3:                        ; preds = %polly.loop_exit665.loopexit.us.3, %polly.loop_header675.us.3
  %polly.indvar679.us.3 = phi i64 [ %polly.indvar_next680.us.3, %polly.loop_header675.us.3 ], [ %282, %polly.loop_exit665.loopexit.us.3 ]
  %614 = add nuw nsw i64 %polly.indvar679.us.3, %262
  %polly.access.mul.call1683.us.3 = mul nuw nsw i64 %614, 1000
  %polly.access.add.call1684.us.3 = add nuw nsw i64 %254, %polly.access.mul.call1683.us.3
  %polly.access.call1685.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us.3
  %polly.access.call1685.load.us.3 = load double, double* %polly.access.call1685.us.3, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.us.3 = add nuw nsw i64 %polly.indvar679.us.3, 3600
  %polly.access.Packed_MemRef_call1521688.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us.3
  store double %polly.access.call1685.load.us.3, double* %polly.access.Packed_MemRef_call1521688.us.3, align 8
  %polly.indvar_next680.us.3 = add nuw nsw i64 %polly.indvar679.us.3, 1
  %polly.loop_cond681.not.not.us.3 = icmp ult i64 %polly.indvar679.us.3, %285
  br i1 %polly.loop_cond681.not.not.us.3, label %polly.loop_header675.us.3, label %polly.loop_header689.preheader

polly.loop_header696.us.1:                        ; preds = %polly.loop_exit705.us, %polly.loop_exit705.us.1
  %indvars.iv1136.1 = phi i64 [ %indvars.iv.next1137.1, %polly.loop_exit705.us.1 ], [ %indvars.iv1134, %polly.loop_exit705.us ]
  %polly.indvar700.us.1 = phi i64 [ %polly.indvar_next701.us.1, %polly.loop_exit705.us.1 ], [ 0, %polly.loop_exit705.us ]
  %615 = add i64 %269, %polly.indvar700.us.1
  %smin1355 = call i64 @llvm.smin.i64(i64 %615, i64 63)
  %616 = add nuw nsw i64 %smin1355, 1
  %617 = mul nuw nsw i64 %polly.indvar700.us.1, 9600
  %618 = add i64 %273, %polly.indvar700.us.1
  %smin1343 = call i64 @llvm.smin.i64(i64 %618, i64 63)
  %619 = shl nuw nsw i64 %smin1343, 3
  %smin1138.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1136.1, i64 63)
  %620 = add nuw nsw i64 %polly.indvar700.us.1, %282
  %621 = add nuw nsw i64 %polly.indvar700.us.1, %281
  %polly.access.add.Packed_MemRef_call2523714.us.1 = add nuw nsw i64 %620, 1200
  %polly.access.Packed_MemRef_call2523715.us.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us.1
  %_p_scalar_716.us.1 = load double, double* %polly.access.Packed_MemRef_call2523715.us.1, align 8
  %polly.access.Packed_MemRef_call1521723.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us.1
  %_p_scalar_724.us.1 = load double, double* %polly.access.Packed_MemRef_call1521723.us.1, align 8
  %622 = mul nuw nsw i64 %621, 9600
  %min.iters.check1356 = icmp ult i64 %smin1355, 3
  br i1 %min.iters.check1356, label %polly.loop_header703.us.1.preheader, label %vector.memcheck1340

vector.memcheck1340:                              ; preds = %polly.loop_header696.us.1
  %scevgep1347 = getelementptr i8, i8* %scevgep1346, i64 %619
  %623 = add i64 %272, %617
  %scevgep1342 = getelementptr i8, i8* %call, i64 %623
  %scevgep1344 = getelementptr i8, i8* %scevgep1342, i64 %619
  %624 = add i64 %271, %617
  %scevgep1341 = getelementptr i8, i8* %call, i64 %624
  %bound01348 = icmp ult i8* %scevgep1341, %scevgep1347
  %bound11349 = icmp ult i8* %scevgep1345, %scevgep1344
  %found.conflict1350 = and i1 %bound01348, %bound11349
  br i1 %found.conflict1350, label %polly.loop_header703.us.1.preheader, label %vector.ph1357

vector.ph1357:                                    ; preds = %vector.memcheck1340
  %n.vec1359 = and i64 %616, -4
  %broadcast.splatinsert1365 = insertelement <4 x double> poison, double %_p_scalar_716.us.1, i32 0
  %broadcast.splat1366 = shufflevector <4 x double> %broadcast.splatinsert1365, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1368 = insertelement <4 x double> poison, double %_p_scalar_724.us.1, i32 0
  %broadcast.splat1369 = shufflevector <4 x double> %broadcast.splatinsert1368, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %vector.ph1357
  %index1360 = phi i64 [ 0, %vector.ph1357 ], [ %index.next1361, %vector.body1354 ]
  %625 = add nuw nsw i64 %index1360, %262
  %626 = add nuw nsw i64 %index1360, 1200
  %627 = getelementptr double, double* %Packed_MemRef_call1521, i64 %626
  %628 = bitcast double* %627 to <4 x double>*
  %wide.load1364 = load <4 x double>, <4 x double>* %628, align 8, !alias.scope !178
  %629 = fmul fast <4 x double> %broadcast.splat1366, %wide.load1364
  %630 = getelementptr double, double* %Packed_MemRef_call2523, i64 %626
  %631 = bitcast double* %630 to <4 x double>*
  %wide.load1367 = load <4 x double>, <4 x double>* %631, align 8
  %632 = fmul fast <4 x double> %broadcast.splat1369, %wide.load1367
  %633 = shl i64 %625, 3
  %634 = add nuw nsw i64 %633, %622
  %635 = getelementptr i8, i8* %call, i64 %634
  %636 = bitcast i8* %635 to <4 x double>*
  %wide.load1370 = load <4 x double>, <4 x double>* %636, align 8, !alias.scope !181, !noalias !183
  %637 = fadd fast <4 x double> %632, %629
  %638 = fmul fast <4 x double> %637, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %639 = fadd fast <4 x double> %638, %wide.load1370
  %640 = bitcast i8* %635 to <4 x double>*
  store <4 x double> %639, <4 x double>* %640, align 8, !alias.scope !181, !noalias !183
  %index.next1361 = add i64 %index1360, 4
  %641 = icmp eq i64 %index.next1361, %n.vec1359
  br i1 %641, label %middle.block1352, label %vector.body1354, !llvm.loop !184

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1363 = icmp eq i64 %616, %n.vec1359
  br i1 %cmp.n1363, label %polly.loop_exit705.us.1, label %polly.loop_header703.us.1.preheader

polly.loop_header703.us.1.preheader:              ; preds = %vector.memcheck1340, %polly.loop_header696.us.1, %middle.block1352
  %polly.indvar706.us.1.ph = phi i64 [ 0, %vector.memcheck1340 ], [ 0, %polly.loop_header696.us.1 ], [ %n.vec1359, %middle.block1352 ]
  br label %polly.loop_header703.us.1

polly.loop_header703.us.1:                        ; preds = %polly.loop_header703.us.1.preheader, %polly.loop_header703.us.1
  %polly.indvar706.us.1 = phi i64 [ %polly.indvar_next707.us.1, %polly.loop_header703.us.1 ], [ %polly.indvar706.us.1.ph, %polly.loop_header703.us.1.preheader ]
  %642 = add nuw nsw i64 %polly.indvar706.us.1, %262
  %polly.access.add.Packed_MemRef_call1521710.us.1 = add nuw nsw i64 %polly.indvar706.us.1, 1200
  %polly.access.Packed_MemRef_call1521711.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us.1
  %_p_scalar_712.us.1 = load double, double* %polly.access.Packed_MemRef_call1521711.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_716.us.1, %_p_scalar_712.us.1
  %polly.access.Packed_MemRef_call2523719.us.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us.1
  %_p_scalar_720.us.1 = load double, double* %polly.access.Packed_MemRef_call2523719.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_724.us.1, %_p_scalar_720.us.1
  %643 = shl i64 %642, 3
  %644 = add nuw nsw i64 %643, %622
  %scevgep725.us.1 = getelementptr i8, i8* %call, i64 %644
  %scevgep725726.us.1 = bitcast i8* %scevgep725.us.1 to double*
  %_p_scalar_727.us.1 = load double, double* %scevgep725726.us.1, align 8, !alias.scope !110, !noalias !112
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_727.us.1
  store double %p_add42.i.us.1, double* %scevgep725726.us.1, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next707.us.1 = add nuw nsw i64 %polly.indvar706.us.1, 1
  %exitcond1139.1.not = icmp eq i64 %polly.indvar706.us.1, %smin1138.1
  br i1 %exitcond1139.1.not, label %polly.loop_exit705.us.1, label %polly.loop_header703.us.1, !llvm.loop !185

polly.loop_exit705.us.1:                          ; preds = %polly.loop_header703.us.1, %middle.block1352
  %polly.indvar_next701.us.1 = add nuw nsw i64 %polly.indvar700.us.1, 1
  %indvars.iv.next1137.1 = add nuw nsw i64 %indvars.iv1136.1, 1
  %exitcond1146.1.not = icmp eq i64 %polly.indvar700.us.1, %smax1145
  br i1 %exitcond1146.1.not, label %polly.loop_header696.us.2, label %polly.loop_header696.us.1

polly.loop_header696.us.2:                        ; preds = %polly.loop_exit705.us.1, %polly.loop_exit705.us.2
  %indvars.iv1136.2 = phi i64 [ %indvars.iv.next1137.2, %polly.loop_exit705.us.2 ], [ %indvars.iv1134, %polly.loop_exit705.us.1 ]
  %polly.indvar700.us.2 = phi i64 [ %polly.indvar_next701.us.2, %polly.loop_exit705.us.2 ], [ 0, %polly.loop_exit705.us.1 ]
  %645 = add i64 %274, %polly.indvar700.us.2
  %smin1324 = call i64 @llvm.smin.i64(i64 %645, i64 63)
  %646 = add nuw nsw i64 %smin1324, 1
  %647 = mul nuw nsw i64 %polly.indvar700.us.2, 9600
  %648 = add i64 %278, %polly.indvar700.us.2
  %smin1312 = call i64 @llvm.smin.i64(i64 %648, i64 63)
  %649 = shl nuw nsw i64 %smin1312, 3
  %smin1138.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1136.2, i64 63)
  %650 = add nuw nsw i64 %polly.indvar700.us.2, %282
  %651 = add nuw nsw i64 %polly.indvar700.us.2, %281
  %polly.access.add.Packed_MemRef_call2523714.us.2 = add nuw nsw i64 %650, 2400
  %polly.access.Packed_MemRef_call2523715.us.2 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us.2
  %_p_scalar_716.us.2 = load double, double* %polly.access.Packed_MemRef_call2523715.us.2, align 8
  %polly.access.Packed_MemRef_call1521723.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us.2
  %_p_scalar_724.us.2 = load double, double* %polly.access.Packed_MemRef_call1521723.us.2, align 8
  %652 = mul nuw nsw i64 %651, 9600
  %min.iters.check1325 = icmp ult i64 %smin1324, 3
  br i1 %min.iters.check1325, label %polly.loop_header703.us.2.preheader, label %vector.memcheck1309

vector.memcheck1309:                              ; preds = %polly.loop_header696.us.2
  %scevgep1316 = getelementptr i8, i8* %scevgep1315, i64 %649
  %653 = add i64 %277, %647
  %scevgep1311 = getelementptr i8, i8* %call, i64 %653
  %scevgep1313 = getelementptr i8, i8* %scevgep1311, i64 %649
  %654 = add i64 %276, %647
  %scevgep1310 = getelementptr i8, i8* %call, i64 %654
  %bound01317 = icmp ult i8* %scevgep1310, %scevgep1316
  %bound11318 = icmp ult i8* %scevgep1314, %scevgep1313
  %found.conflict1319 = and i1 %bound01317, %bound11318
  br i1 %found.conflict1319, label %polly.loop_header703.us.2.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %vector.memcheck1309
  %n.vec1328 = and i64 %646, -4
  %broadcast.splatinsert1334 = insertelement <4 x double> poison, double %_p_scalar_716.us.2, i32 0
  %broadcast.splat1335 = shufflevector <4 x double> %broadcast.splatinsert1334, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_724.us.2, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1323 ]
  %655 = add nuw nsw i64 %index1329, %262
  %656 = add nuw nsw i64 %index1329, 2400
  %657 = getelementptr double, double* %Packed_MemRef_call1521, i64 %656
  %658 = bitcast double* %657 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %658, align 8, !alias.scope !186
  %659 = fmul fast <4 x double> %broadcast.splat1335, %wide.load1333
  %660 = getelementptr double, double* %Packed_MemRef_call2523, i64 %656
  %661 = bitcast double* %660 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %661, align 8
  %662 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %663 = shl i64 %655, 3
  %664 = add nuw nsw i64 %663, %652
  %665 = getelementptr i8, i8* %call, i64 %664
  %666 = bitcast i8* %665 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %666, align 8, !alias.scope !189, !noalias !191
  %667 = fadd fast <4 x double> %662, %659
  %668 = fmul fast <4 x double> %667, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %669 = fadd fast <4 x double> %668, %wide.load1339
  %670 = bitcast i8* %665 to <4 x double>*
  store <4 x double> %669, <4 x double>* %670, align 8, !alias.scope !189, !noalias !191
  %index.next1330 = add i64 %index1329, 4
  %671 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %671, label %middle.block1321, label %vector.body1323, !llvm.loop !192

middle.block1321:                                 ; preds = %vector.body1323
  %cmp.n1332 = icmp eq i64 %646, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit705.us.2, label %polly.loop_header703.us.2.preheader

polly.loop_header703.us.2.preheader:              ; preds = %vector.memcheck1309, %polly.loop_header696.us.2, %middle.block1321
  %polly.indvar706.us.2.ph = phi i64 [ 0, %vector.memcheck1309 ], [ 0, %polly.loop_header696.us.2 ], [ %n.vec1328, %middle.block1321 ]
  br label %polly.loop_header703.us.2

polly.loop_header703.us.2:                        ; preds = %polly.loop_header703.us.2.preheader, %polly.loop_header703.us.2
  %polly.indvar706.us.2 = phi i64 [ %polly.indvar_next707.us.2, %polly.loop_header703.us.2 ], [ %polly.indvar706.us.2.ph, %polly.loop_header703.us.2.preheader ]
  %672 = add nuw nsw i64 %polly.indvar706.us.2, %262
  %polly.access.add.Packed_MemRef_call1521710.us.2 = add nuw nsw i64 %polly.indvar706.us.2, 2400
  %polly.access.Packed_MemRef_call1521711.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us.2
  %_p_scalar_712.us.2 = load double, double* %polly.access.Packed_MemRef_call1521711.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_716.us.2, %_p_scalar_712.us.2
  %polly.access.Packed_MemRef_call2523719.us.2 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us.2
  %_p_scalar_720.us.2 = load double, double* %polly.access.Packed_MemRef_call2523719.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_724.us.2, %_p_scalar_720.us.2
  %673 = shl i64 %672, 3
  %674 = add nuw nsw i64 %673, %652
  %scevgep725.us.2 = getelementptr i8, i8* %call, i64 %674
  %scevgep725726.us.2 = bitcast i8* %scevgep725.us.2 to double*
  %_p_scalar_727.us.2 = load double, double* %scevgep725726.us.2, align 8, !alias.scope !110, !noalias !112
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_727.us.2
  store double %p_add42.i.us.2, double* %scevgep725726.us.2, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next707.us.2 = add nuw nsw i64 %polly.indvar706.us.2, 1
  %exitcond1139.2.not = icmp eq i64 %polly.indvar706.us.2, %smin1138.2
  br i1 %exitcond1139.2.not, label %polly.loop_exit705.us.2, label %polly.loop_header703.us.2, !llvm.loop !193

polly.loop_exit705.us.2:                          ; preds = %polly.loop_header703.us.2, %middle.block1321
  %polly.indvar_next701.us.2 = add nuw nsw i64 %polly.indvar700.us.2, 1
  %indvars.iv.next1137.2 = add nuw nsw i64 %indvars.iv1136.2, 1
  %exitcond1146.2.not = icmp eq i64 %polly.indvar700.us.2, %smax1145
  br i1 %exitcond1146.2.not, label %polly.loop_header696.us.3, label %polly.loop_header696.us.2

polly.loop_header696.us.3:                        ; preds = %polly.loop_exit705.us.2, %polly.loop_exit705.us.3
  %indvars.iv1136.3 = phi i64 [ %indvars.iv.next1137.3, %polly.loop_exit705.us.3 ], [ %indvars.iv1134, %polly.loop_exit705.us.2 ]
  %polly.indvar700.us.3 = phi i64 [ %polly.indvar_next701.us.3, %polly.loop_exit705.us.3 ], [ 0, %polly.loop_exit705.us.2 ]
  %675 = add i64 %279, %polly.indvar700.us.3
  %smin1293 = call i64 @llvm.smin.i64(i64 %675, i64 63)
  %676 = add nuw nsw i64 %smin1293, 1
  %smin1138.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1136.3, i64 63)
  %677 = add nuw nsw i64 %polly.indvar700.us.3, %282
  %678 = add nuw nsw i64 %polly.indvar700.us.3, %281
  %polly.access.add.Packed_MemRef_call2523714.us.3 = add nuw nsw i64 %677, 3600
  %polly.access.Packed_MemRef_call2523715.us.3 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us.3
  %_p_scalar_716.us.3 = load double, double* %polly.access.Packed_MemRef_call2523715.us.3, align 8
  %polly.access.Packed_MemRef_call1521723.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us.3
  %_p_scalar_724.us.3 = load double, double* %polly.access.Packed_MemRef_call1521723.us.3, align 8
  %679 = mul nuw nsw i64 %678, 9600
  %min.iters.check1294 = icmp ult i64 %smin1293, 3
  br i1 %min.iters.check1294, label %polly.loop_header703.us.3.preheader, label %vector.ph1295

vector.ph1295:                                    ; preds = %polly.loop_header696.us.3
  %n.vec1297 = and i64 %676, -4
  %broadcast.splatinsert1303 = insertelement <4 x double> poison, double %_p_scalar_716.us.3, i32 0
  %broadcast.splat1304 = shufflevector <4 x double> %broadcast.splatinsert1303, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1306 = insertelement <4 x double> poison, double %_p_scalar_724.us.3, i32 0
  %broadcast.splat1307 = shufflevector <4 x double> %broadcast.splatinsert1306, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1295
  %index1298 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1299, %vector.body1290 ]
  %680 = add nuw nsw i64 %index1298, %262
  %681 = add nuw nsw i64 %index1298, 3600
  %682 = getelementptr double, double* %Packed_MemRef_call1521, i64 %681
  %683 = bitcast double* %682 to <4 x double>*
  %wide.load1302 = load <4 x double>, <4 x double>* %683, align 8
  %684 = fmul fast <4 x double> %broadcast.splat1304, %wide.load1302
  %685 = getelementptr double, double* %Packed_MemRef_call2523, i64 %681
  %686 = bitcast double* %685 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %686, align 8
  %687 = fmul fast <4 x double> %broadcast.splat1307, %wide.load1305
  %688 = shl i64 %680, 3
  %689 = add nuw nsw i64 %688, %679
  %690 = getelementptr i8, i8* %call, i64 %689
  %691 = bitcast i8* %690 to <4 x double>*
  %wide.load1308 = load <4 x double>, <4 x double>* %691, align 8, !alias.scope !110, !noalias !112
  %692 = fadd fast <4 x double> %687, %684
  %693 = fmul fast <4 x double> %692, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %694 = fadd fast <4 x double> %693, %wide.load1308
  %695 = bitcast i8* %690 to <4 x double>*
  store <4 x double> %694, <4 x double>* %695, align 8, !alias.scope !110, !noalias !112
  %index.next1299 = add i64 %index1298, 4
  %696 = icmp eq i64 %index.next1299, %n.vec1297
  br i1 %696, label %middle.block1288, label %vector.body1290, !llvm.loop !194

middle.block1288:                                 ; preds = %vector.body1290
  %cmp.n1301 = icmp eq i64 %676, %n.vec1297
  br i1 %cmp.n1301, label %polly.loop_exit705.us.3, label %polly.loop_header703.us.3.preheader

polly.loop_header703.us.3.preheader:              ; preds = %polly.loop_header696.us.3, %middle.block1288
  %polly.indvar706.us.3.ph = phi i64 [ 0, %polly.loop_header696.us.3 ], [ %n.vec1297, %middle.block1288 ]
  br label %polly.loop_header703.us.3

polly.loop_header703.us.3:                        ; preds = %polly.loop_header703.us.3.preheader, %polly.loop_header703.us.3
  %polly.indvar706.us.3 = phi i64 [ %polly.indvar_next707.us.3, %polly.loop_header703.us.3 ], [ %polly.indvar706.us.3.ph, %polly.loop_header703.us.3.preheader ]
  %697 = add nuw nsw i64 %polly.indvar706.us.3, %262
  %polly.access.add.Packed_MemRef_call1521710.us.3 = add nuw nsw i64 %polly.indvar706.us.3, 3600
  %polly.access.Packed_MemRef_call1521711.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us.3
  %_p_scalar_712.us.3 = load double, double* %polly.access.Packed_MemRef_call1521711.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_716.us.3, %_p_scalar_712.us.3
  %polly.access.Packed_MemRef_call2523719.us.3 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us.3
  %_p_scalar_720.us.3 = load double, double* %polly.access.Packed_MemRef_call2523719.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_724.us.3, %_p_scalar_720.us.3
  %698 = shl i64 %697, 3
  %699 = add nuw nsw i64 %698, %679
  %scevgep725.us.3 = getelementptr i8, i8* %call, i64 %699
  %scevgep725726.us.3 = bitcast i8* %scevgep725.us.3 to double*
  %_p_scalar_727.us.3 = load double, double* %scevgep725726.us.3, align 8, !alias.scope !110, !noalias !112
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_727.us.3
  store double %p_add42.i.us.3, double* %scevgep725726.us.3, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next707.us.3 = add nuw nsw i64 %polly.indvar706.us.3, 1
  %exitcond1139.3.not = icmp eq i64 %polly.indvar706.us.3, %smin1138.3
  br i1 %exitcond1139.3.not, label %polly.loop_exit705.us.3, label %polly.loop_header703.us.3, !llvm.loop !195

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
!47 = distinct !{!47, !12, !24, !48, !49, !50, !26, !51, !60}
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
!83 = !{!84}
!84 = distinct !{!84, !85}
!85 = distinct !{!85, !"LVerDomain"}
!86 = !{!71, !72, !"polly.alias.scope.MemRef_call", !87}
!87 = distinct !{!87, !85}
!88 = !{!74, !75, !76, !77, !84}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !80, !13}
!100 = !{!91, !94, !96, !97}
!101 = !{!91, !95, !96, !97}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!91, !92, !"polly.alias.scope.MemRef_call", !106}
!106 = distinct !{!106, !104}
!107 = !{!94, !95, !96, !97, !103}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !111, !"polly.alias.scope.MemRef_call"}
!111 = distinct !{!111, !"polly.alias.scope.domain"}
!112 = !{!113, !114, !115, !116}
!113 = distinct !{!113, !111, !"polly.alias.scope.MemRef_call1"}
!114 = distinct !{!114, !111, !"polly.alias.scope.MemRef_call2"}
!115 = distinct !{!115, !111, !"polly.alias.scope.Packed_MemRef_call1"}
!116 = distinct !{!116, !111, !"polly.alias.scope.Packed_MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !80, !13}
!119 = !{!110, !113, !115, !116}
!120 = !{!110, !114, !115, !116}
!121 = !{!122}
!122 = distinct !{!122, !123}
!123 = distinct !{!123, !"LVerDomain"}
!124 = !{!110, !111, !"polly.alias.scope.MemRef_call", !125}
!125 = distinct !{!125, !123}
!126 = !{!113, !114, !115, !116, !122}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !130, !"polly.alias.scope.MemRef_call"}
!130 = distinct !{!130, !"polly.alias.scope.domain"}
!131 = !{!132, !133}
!132 = distinct !{!132, !130, !"polly.alias.scope.MemRef_call1"}
!133 = distinct !{!133, !130, !"polly.alias.scope.MemRef_call2"}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !80, !13}
!136 = !{!132, !129}
!137 = distinct !{!137, !13}
!138 = distinct !{!138, !80, !13}
!139 = !{!133, !129}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !80, !13}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!71, !72, !"polly.alias.scope.MemRef_call", !146}
!146 = distinct !{!146, !144}
!147 = !{!74, !75, !76, !77, !143}
!148 = distinct !{!148, !13}
!149 = distinct !{!149, !13}
!150 = !{!151}
!151 = distinct !{!151, !152}
!152 = distinct !{!152, !"LVerDomain"}
!153 = !{!71, !72, !"polly.alias.scope.MemRef_call", !154}
!154 = distinct !{!154, !152}
!155 = !{!74, !75, !76, !77, !151}
!156 = distinct !{!156, !13}
!157 = distinct !{!157, !13}
!158 = distinct !{!158, !13}
!159 = distinct !{!159, !80, !13}
!160 = !{!161}
!161 = distinct !{!161, !162}
!162 = distinct !{!162, !"LVerDomain"}
!163 = !{!91, !92, !"polly.alias.scope.MemRef_call", !164}
!164 = distinct !{!164, !162}
!165 = !{!94, !95, !96, !97, !161}
!166 = distinct !{!166, !13}
!167 = distinct !{!167, !13}
!168 = !{!169}
!169 = distinct !{!169, !170}
!170 = distinct !{!170, !"LVerDomain"}
!171 = !{!91, !92, !"polly.alias.scope.MemRef_call", !172}
!172 = distinct !{!172, !170}
!173 = !{!94, !95, !96, !97, !169}
!174 = distinct !{!174, !13}
!175 = distinct !{!175, !13}
!176 = distinct !{!176, !13}
!177 = distinct !{!177, !80, !13}
!178 = !{!179}
!179 = distinct !{!179, !180}
!180 = distinct !{!180, !"LVerDomain"}
!181 = !{!110, !111, !"polly.alias.scope.MemRef_call", !182}
!182 = distinct !{!182, !180}
!183 = !{!113, !114, !115, !116, !179}
!184 = distinct !{!184, !13}
!185 = distinct !{!185, !13}
!186 = !{!187}
!187 = distinct !{!187, !188}
!188 = distinct !{!188, !"LVerDomain"}
!189 = !{!110, !111, !"polly.alias.scope.MemRef_call", !190}
!190 = distinct !{!190, !188}
!191 = !{!113, !114, !115, !116, !187}
!192 = distinct !{!192, !13}
!193 = distinct !{!193, !13}
!194 = distinct !{!194, !13}
!195 = distinct !{!195, !80, !13}
