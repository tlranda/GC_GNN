; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1274.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1274.c"
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
  br i1 %min.iters.check1268, label %for.body3.i46.preheader1408, label %vector.ph1269

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
  br i1 %cmp.n1275, label %for.inc6.i, label %for.body3.i46.preheader1408

for.body3.i46.preheader1408:                      ; preds = %for.body3.i46.preheader, %middle.block1265
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1271, %middle.block1265 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1408, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1408 ]
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
  %min.iters.check1312 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1312, label %for.body3.i60.preheader1406, label %vector.ph1313

vector.ph1313:                                    ; preds = %for.body3.i60.preheader
  %n.vec1315 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %vector.ph1313
  %index1316 = phi i64 [ 0, %vector.ph1313 ], [ %index.next1317, %vector.body1311 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i52, i64 %index1316
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1320 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1320, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1317 = add i64 %index1316, 4
  %57 = icmp eq i64 %index.next1317, %n.vec1315
  br i1 %57, label %middle.block1309, label %vector.body1311, !llvm.loop !63

middle.block1309:                                 ; preds = %vector.body1311
  %cmp.n1319 = icmp eq i64 %indvars.iv21.i52, %n.vec1315
  br i1 %cmp.n1319, label %for.inc6.i63, label %for.body3.i60.preheader1406

for.body3.i60.preheader1406:                      ; preds = %for.body3.i60.preheader, %middle.block1309
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1315, %middle.block1309 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1406, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1406 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1309, %for.cond1.preheader.i54
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
  %min.iters.check1359 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1359, label %for.body3.i99.preheader1404, label %vector.ph1360

vector.ph1360:                                    ; preds = %for.body3.i99.preheader
  %n.vec1362 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1358

vector.body1358:                                  ; preds = %vector.body1358, %vector.ph1360
  %index1363 = phi i64 [ 0, %vector.ph1360 ], [ %index.next1364, %vector.body1358 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i91, i64 %index1363
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1367 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1367, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1364 = add i64 %index1363, 4
  %68 = icmp eq i64 %index.next1364, %n.vec1362
  br i1 %68, label %middle.block1356, label %vector.body1358, !llvm.loop !65

middle.block1356:                                 ; preds = %vector.body1358
  %cmp.n1366 = icmp eq i64 %indvars.iv21.i91, %n.vec1362
  br i1 %cmp.n1366, label %for.inc6.i102, label %for.body3.i99.preheader1404

for.body3.i99.preheader1404:                      ; preds = %for.body3.i99.preheader, %middle.block1356
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1362, %middle.block1356 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1404, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1404 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1356, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall136 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1371 = phi i64 [ %indvar.next1372, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1371, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1373 = icmp ult i64 %88, 4
  br i1 %min.iters.check1373, label %polly.loop_header192.preheader, label %vector.ph1374

vector.ph1374:                                    ; preds = %polly.loop_header
  %n.vec1376 = and i64 %88, -4
  br label %vector.body1370

vector.body1370:                                  ; preds = %vector.body1370, %vector.ph1374
  %index1377 = phi i64 [ 0, %vector.ph1374 ], [ %index.next1378, %vector.body1370 ]
  %90 = shl nuw nsw i64 %index1377, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1381 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1381, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1378 = add i64 %index1377, 4
  %95 = icmp eq i64 %index.next1378, %n.vec1376
  br i1 %95, label %middle.block1368, label %vector.body1370, !llvm.loop !78

middle.block1368:                                 ; preds = %vector.body1370
  %cmp.n1380 = icmp eq i64 %88, %n.vec1376
  br i1 %cmp.n1380, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1368
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1376, %middle.block1368 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1368
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1372 = add i64 %indvar1371, 1
  br i1 %exitcond1100.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1099.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1099.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 50
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next204, 20
  br i1 %exitcond1098.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = mul nsw i64 %polly.indvar209, -128
  %99 = shl nsw i64 %polly.indvar209, 7
  br label %polly.loop_header212

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, -128
  %exitcond1097.not = icmp eq i64 %polly.indvar_next210, 10
  br i1 %exitcond1097.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %100 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next216, 50
  br i1 %exitcond1080.not, label %polly.loop_header228.preheader, label %polly.loop_header212

polly.loop_header228.preheader:                   ; preds = %polly.loop_exit220
  %101 = add nsw i64 %98, 1199
  br label %polly.loop_header228

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %102 = add nuw nsw i64 %polly.indvar221, %99
  %polly.access.mul.call2225 = mul nuw nsw i64 %102, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %100, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit267
  %indvar1385 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1386, %polly.loop_exit267 ]
  %indvars.iv1091 = phi i64 [ %indvars.iv1089, %polly.loop_header228.preheader ], [ %indvars.iv.next1092, %polly.loop_exit267 ]
  %indvars.iv1084 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvars.iv.next1085, %polly.loop_exit267 ]
  %polly.indvar231 = phi i64 [ %polly.indvar209, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit267 ]
  %103 = shl nuw nsw i64 %indvar1385, 7
  %smin1093 = call i64 @llvm.smin.i64(i64 %indvars.iv1091, i64 -1072)
  %104 = add nsw i64 %smin1093, 1199
  %smax = call i64 @llvm.smax.i64(i64 %104, i64 0)
  %105 = shl nsw i64 %polly.indvar231, 7
  %106 = add nsw i64 %105, %98
  %.inv.not = icmp eq i64 %106, 0
  %107 = or i64 %106, 127
  %108 = icmp ult i64 %101, %107
  %109 = select i1 %108, i64 %101, i64 %107
  %polly.loop_guard254.not = icmp ugt i64 %106, %109
  br i1 %.inv.not, label %polly.loop_header228.split, label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %110 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %111 = add nuw nsw i64 %polly.indvar243.us, %99
  %polly.access.mul.call1247.us = mul nuw nsw i64 %111, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %110, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next244.us, 128
  br i1 %exitcond1082.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %106, %polly.loop_exit242.loopexit.us ]
  %112 = add nuw nsw i64 %polly.indvar255.us, %99
  %polly.access.mul.call1259.us = mul nuw nsw i64 %112, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %110, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp ult i64 %polly.indvar255.us, %109
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_exit253.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next238.us, 50
  br i1 %exitcond1083.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 128
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -128
  %exitcond1096.not = icmp eq i64 %polly.indvar_next232, 10
  %indvar.next1386 = add i64 %indvar1385, 1
  br i1 %exitcond1096.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228.split ]
  %113 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next238, 50
  br i1 %exitcond1081.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253.us, %polly.loop_exit253, %polly.loop_header228.split
  %114 = mul nsw i64 %polly.indvar231, -128
  %polly.loop_guard2751187 = icmp sgt i64 %114, -1200
  br i1 %polly.loop_guard2751187, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1285.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header265.us, %polly.loop_exit281.us
  %indvars.iv1086 = phi i64 [ %indvars.iv1084, %polly.loop_header265.us ], [ %indvars.iv.next1087, %polly.loop_exit281.us ]
  %polly.indvar276.us = phi i64 [ 0, %polly.loop_header265.us ], [ %polly.indvar_next277.us, %polly.loop_exit281.us ]
  %115 = add i64 %103, %polly.indvar276.us
  %smin1387 = call i64 @llvm.smin.i64(i64 %115, i64 127)
  %116 = add nuw nsw i64 %smin1387, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1086, i64 127)
  %117 = add nuw nsw i64 %polly.indvar276.us, %106
  %118 = add nuw nsw i64 %polly.indvar276.us, %105
  %polly.access.add.Packed_MemRef_call2290.us = add nuw nsw i64 %117, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %119 = mul nuw nsw i64 %118, 9600
  %min.iters.check1388 = icmp ult i64 %smin1387, 3
  br i1 %min.iters.check1388, label %polly.loop_header279.us.preheader, label %vector.ph1389

vector.ph1389:                                    ; preds = %polly.loop_header272.us
  %n.vec1391 = and i64 %116, -4
  %broadcast.splatinsert1397 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1398 = shufflevector <4 x double> %broadcast.splatinsert1397, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1400 = insertelement <4 x double> poison, double %_p_scalar_300.us, i32 0
  %broadcast.splat1401 = shufflevector <4 x double> %broadcast.splatinsert1400, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %vector.ph1389
  %index1392 = phi i64 [ 0, %vector.ph1389 ], [ %index.next1393, %vector.body1384 ]
  %120 = add nuw nsw i64 %index1392, %99
  %121 = add nuw nsw i64 %index1392, %polly.access.mul.Packed_MemRef_call1285.us
  %122 = getelementptr double, double* %Packed_MemRef_call1, i64 %121
  %123 = bitcast double* %122 to <4 x double>*
  %wide.load1396 = load <4 x double>, <4 x double>* %123, align 8
  %124 = fmul fast <4 x double> %broadcast.splat1398, %wide.load1396
  %125 = getelementptr double, double* %Packed_MemRef_call2, i64 %121
  %126 = bitcast double* %125 to <4 x double>*
  %wide.load1399 = load <4 x double>, <4 x double>* %126, align 8
  %127 = fmul fast <4 x double> %broadcast.splat1401, %wide.load1399
  %128 = shl i64 %120, 3
  %129 = add nuw nsw i64 %128, %119
  %130 = getelementptr i8, i8* %call, i64 %129
  %131 = bitcast i8* %130 to <4 x double>*
  %wide.load1402 = load <4 x double>, <4 x double>* %131, align 8, !alias.scope !71, !noalias !73
  %132 = fadd fast <4 x double> %127, %124
  %133 = fmul fast <4 x double> %132, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %134 = fadd fast <4 x double> %133, %wide.load1402
  %135 = bitcast i8* %130 to <4 x double>*
  store <4 x double> %134, <4 x double>* %135, align 8, !alias.scope !71, !noalias !73
  %index.next1393 = add i64 %index1392, 4
  %136 = icmp eq i64 %index.next1393, %n.vec1391
  br i1 %136, label %middle.block1382, label %vector.body1384, !llvm.loop !83

middle.block1382:                                 ; preds = %vector.body1384
  %cmp.n1395 = icmp eq i64 %116, %n.vec1391
  br i1 %cmp.n1395, label %polly.loop_exit281.us, label %polly.loop_header279.us.preheader

polly.loop_header279.us.preheader:                ; preds = %polly.loop_header272.us, %middle.block1382
  %polly.indvar282.us.ph = phi i64 [ 0, %polly.loop_header272.us ], [ %n.vec1391, %middle.block1382 ]
  br label %polly.loop_header279.us

polly.loop_header279.us:                          ; preds = %polly.loop_header279.us.preheader, %polly.loop_header279.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header279.us ], [ %polly.indvar282.us.ph, %polly.loop_header279.us.preheader ]
  %137 = add nuw nsw i64 %polly.indvar282.us, %99
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar282.us, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_300.us, %_p_scalar_296.us
  %138 = shl i64 %137, 3
  %139 = add nuw nsw i64 %138, %119
  %scevgep301.us = getelementptr i8, i8* %call, i64 %139
  %scevgep301302.us = bitcast i8* %scevgep301.us to double*
  %_p_scalar_303.us = load double, double* %scevgep301302.us, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_303.us
  store double %p_add42.i118.us, double* %scevgep301302.us, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar282.us, %smin
  br i1 %exitcond1088.not, label %polly.loop_exit281.us, label %polly.loop_header279.us, !llvm.loop !84

polly.loop_exit281.us:                            ; preds = %polly.loop_header279.us, %middle.block1382
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar276.us, %smax
  br i1 %exitcond1094.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_exit281.us
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next269.us, 50
  br i1 %exitcond1095.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %106, %polly.loop_header234 ]
  %140 = add nuw nsw i64 %polly.indvar255, %99
  %polly.access.mul.call1259 = mul nuw nsw i64 %140, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %113, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp ult i64 %polly.indvar255, %109
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall310 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1324 = phi i64 [ %indvar.next1325, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %141 = add i64 %indvar1324, 1
  %142 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %142
  %min.iters.check1326 = icmp ult i64 %141, 4
  br i1 %min.iters.check1326, label %polly.loop_header400.preheader, label %vector.ph1327

vector.ph1327:                                    ; preds = %polly.loop_header394
  %n.vec1329 = and i64 %141, -4
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1327
  %index1330 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1331, %vector.body1323 ]
  %143 = shl nuw nsw i64 %index1330, 3
  %144 = getelementptr i8, i8* %scevgep406, i64 %143
  %145 = bitcast i8* %144 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %145, align 8, !alias.scope !85, !noalias !87
  %146 = fmul fast <4 x double> %wide.load1334, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %147 = bitcast i8* %144 to <4 x double>*
  store <4 x double> %146, <4 x double>* %147, align 8, !alias.scope !85, !noalias !87
  %index.next1331 = add i64 %index1330, 4
  %148 = icmp eq i64 %index.next1331, %n.vec1329
  br i1 %148, label %middle.block1321, label %vector.body1323, !llvm.loop !92

middle.block1321:                                 ; preds = %vector.body1323
  %cmp.n1333 = icmp eq i64 %141, %n.vec1329
  br i1 %cmp.n1333, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1321
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1329, %middle.block1321 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1321
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1325 = add i64 %indvar1324, 1
  br i1 %exitcond1126.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %149 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %149
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1125.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !93

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %150 = mul nuw nsw i64 %polly.indvar413, 50
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit440
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next414, 20
  br i1 %exitcond1124.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit440, %polly.loop_header410
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit440 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %151 = mul nsw i64 %polly.indvar419, -128
  %152 = shl nsw i64 %polly.indvar419, 7
  br label %polly.loop_header422

polly.loop_exit440:                               ; preds = %polly.loop_exit479
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -128
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -128
  %exitcond1123.not = icmp eq i64 %polly.indvar_next420, 10
  br i1 %exitcond1123.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_exit430, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_exit430 ]
  %153 = add nuw nsw i64 %polly.indvar425, %150
  %polly.access.mul.Packed_MemRef_call2311 = mul nuw nsw i64 %polly.indvar425, 1200
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_header428
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next426, 50
  br i1 %exitcond1104.not, label %polly.loop_header438.preheader, label %polly.loop_header422

polly.loop_header438.preheader:                   ; preds = %polly.loop_exit430
  %154 = add nsw i64 %151, 1199
  br label %polly.loop_header438

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %155 = add nuw nsw i64 %polly.indvar431, %152
  %polly.access.mul.call2435 = mul nuw nsw i64 %155, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %153, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311 = add nuw nsw i64 %polly.indvar431, %polly.access.mul.Packed_MemRef_call2311
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1101
  br i1 %exitcond1103.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header438:                             ; preds = %polly.loop_header438.preheader, %polly.loop_exit479
  %indvar1338 = phi i64 [ 0, %polly.loop_header438.preheader ], [ %indvar.next1339, %polly.loop_exit479 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv1114, %polly.loop_header438.preheader ], [ %indvars.iv.next1117, %polly.loop_exit479 ]
  %indvars.iv1108 = phi i64 [ 0, %polly.loop_header438.preheader ], [ %indvars.iv.next1109, %polly.loop_exit479 ]
  %polly.indvar441 = phi i64 [ %polly.indvar419, %polly.loop_header438.preheader ], [ %polly.indvar_next442, %polly.loop_exit479 ]
  %156 = shl nuw nsw i64 %indvar1338, 7
  %smin1118 = call i64 @llvm.smin.i64(i64 %indvars.iv1116, i64 -1072)
  %157 = add nsw i64 %smin1118, 1199
  %smax1119 = call i64 @llvm.smax.i64(i64 %157, i64 0)
  %158 = shl nsw i64 %polly.indvar441, 7
  %159 = add nsw i64 %158, %151
  %.inv934.not = icmp eq i64 %159, 0
  %160 = or i64 %159, 127
  %161 = icmp ult i64 %154, %160
  %162 = select i1 %161, i64 %154, i64 %160
  %polly.loop_guard466.not = icmp ugt i64 %159, %162
  br i1 %.inv934.not, label %polly.loop_header438.split, label %polly.loop_header444.us

polly.loop_header444.us:                          ; preds = %polly.loop_header438, %polly.loop_exit465.us
  %polly.indvar447.us = phi i64 [ %polly.indvar_next448.us, %polly.loop_exit465.us ], [ 0, %polly.loop_header438 ]
  %163 = add nuw nsw i64 %polly.indvar447.us, %150
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar447.us, 1200
  br label %polly.loop_header451.us

polly.loop_header451.us:                          ; preds = %polly.loop_header444.us, %polly.loop_header451.us
  %polly.indvar455.us = phi i64 [ %polly.indvar_next456.us, %polly.loop_header451.us ], [ 0, %polly.loop_header444.us ]
  %164 = add nuw nsw i64 %polly.indvar455.us, %152
  %polly.access.mul.call1459.us = mul nuw nsw i64 %164, 1000
  %polly.access.add.call1460.us = add nuw nsw i64 %163, %polly.access.mul.call1459.us
  %polly.access.call1461.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us
  %polly.access.call1461.load.us = load double, double* %polly.access.call1461.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309.us = add nuw nsw i64 %polly.indvar455.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us
  store double %polly.access.call1461.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.indvar_next456.us = add nuw i64 %polly.indvar455.us, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next456.us, 128
  br i1 %exitcond1106.not, label %polly.loop_exit453.loopexit.us, label %polly.loop_header451.us

polly.loop_header463.us:                          ; preds = %polly.loop_exit453.loopexit.us, %polly.loop_header463.us
  %polly.indvar467.us = phi i64 [ %polly.indvar_next468.us, %polly.loop_header463.us ], [ %159, %polly.loop_exit453.loopexit.us ]
  %165 = add nuw nsw i64 %polly.indvar467.us, %152
  %polly.access.mul.call1471.us = mul nuw nsw i64 %165, 1000
  %polly.access.add.call1472.us = add nuw nsw i64 %163, %polly.access.mul.call1471.us
  %polly.access.call1473.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us
  %polly.access.call1473.load.us = load double, double* %polly.access.call1473.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309475.us = add nuw nsw i64 %polly.indvar467.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309476.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us
  store double %polly.access.call1473.load.us, double* %polly.access.Packed_MemRef_call1309476.us, align 8
  %polly.indvar_next468.us = add nuw nsw i64 %polly.indvar467.us, 1
  %polly.loop_cond469.not.not.us = icmp ult i64 %polly.indvar467.us, %162
  br i1 %polly.loop_cond469.not.not.us, label %polly.loop_header463.us, label %polly.loop_exit465.us

polly.loop_exit465.us:                            ; preds = %polly.loop_header463.us, %polly.loop_exit453.loopexit.us
  %polly.indvar_next448.us = add nuw nsw i64 %polly.indvar447.us, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next448.us, 50
  br i1 %exitcond1107.not, label %polly.loop_header477.preheader, label %polly.loop_header444.us

polly.loop_exit453.loopexit.us:                   ; preds = %polly.loop_header451.us
  br i1 %polly.loop_guard466.not, label %polly.loop_exit465.us, label %polly.loop_header463.us

polly.loop_header438.split:                       ; preds = %polly.loop_header438
  br i1 %polly.loop_guard466.not, label %polly.loop_header477.preheader, label %polly.loop_header444

polly.loop_exit479:                               ; preds = %polly.loop_exit486.loopexit.us, %polly.loop_header477.preheader
  %polly.indvar_next442 = add nuw nsw i64 %polly.indvar441, 1
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 128
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -128
  %exitcond1122.not = icmp eq i64 %polly.indvar_next442, 10
  %indvar.next1339 = add i64 %indvar1338, 1
  br i1 %exitcond1122.not, label %polly.loop_exit440, label %polly.loop_header438

polly.loop_header444:                             ; preds = %polly.loop_header438.split, %polly.loop_exit465
  %polly.indvar447 = phi i64 [ %polly.indvar_next448, %polly.loop_exit465 ], [ 0, %polly.loop_header438.split ]
  %166 = add nuw nsw i64 %polly.indvar447, %150
  %polly.access.mul.Packed_MemRef_call1309474 = mul nuw nsw i64 %polly.indvar447, 1200
  br label %polly.loop_header463

polly.loop_exit465:                               ; preds = %polly.loop_header463
  %polly.indvar_next448 = add nuw nsw i64 %polly.indvar447, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next448, 50
  br i1 %exitcond1105.not, label %polly.loop_header477.preheader, label %polly.loop_header444

polly.loop_header477.preheader:                   ; preds = %polly.loop_exit465.us, %polly.loop_exit465, %polly.loop_header438.split
  %167 = mul nsw i64 %polly.indvar441, -128
  %polly.loop_guard4871188 = icmp sgt i64 %167, -1200
  br i1 %polly.loop_guard4871188, label %polly.loop_header477.us, label %polly.loop_exit479

polly.loop_header477.us:                          ; preds = %polly.loop_header477.preheader, %polly.loop_exit486.loopexit.us
  %polly.indvar480.us = phi i64 [ %polly.indvar_next481.us, %polly.loop_exit486.loopexit.us ], [ 0, %polly.loop_header477.preheader ]
  %polly.access.mul.Packed_MemRef_call1309497.us = mul nuw nsw i64 %polly.indvar480.us, 1200
  br label %polly.loop_header484.us

polly.loop_header484.us:                          ; preds = %polly.loop_header477.us, %polly.loop_exit493.us
  %indvars.iv1110 = phi i64 [ %indvars.iv1108, %polly.loop_header477.us ], [ %indvars.iv.next1111, %polly.loop_exit493.us ]
  %polly.indvar488.us = phi i64 [ 0, %polly.loop_header477.us ], [ %polly.indvar_next489.us, %polly.loop_exit493.us ]
  %168 = add i64 %156, %polly.indvar488.us
  %smin1340 = call i64 @llvm.smin.i64(i64 %168, i64 127)
  %169 = add nuw nsw i64 %smin1340, 1
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 127)
  %170 = add nuw nsw i64 %polly.indvar488.us, %159
  %171 = add nuw nsw i64 %polly.indvar488.us, %158
  %polly.access.add.Packed_MemRef_call2311502.us = add nuw nsw i64 %170, %polly.access.mul.Packed_MemRef_call1309497.us
  %polly.access.Packed_MemRef_call2311503.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call2311503.us, align 8
  %polly.access.Packed_MemRef_call1309511.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us
  %_p_scalar_512.us = load double, double* %polly.access.Packed_MemRef_call1309511.us, align 8
  %172 = mul nuw nsw i64 %171, 9600
  %min.iters.check1341 = icmp ult i64 %smin1340, 3
  br i1 %min.iters.check1341, label %polly.loop_header491.us.preheader, label %vector.ph1342

vector.ph1342:                                    ; preds = %polly.loop_header484.us
  %n.vec1344 = and i64 %169, -4
  %broadcast.splatinsert1350 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1351 = shufflevector <4 x double> %broadcast.splatinsert1350, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1353 = insertelement <4 x double> poison, double %_p_scalar_512.us, i32 0
  %broadcast.splat1354 = shufflevector <4 x double> %broadcast.splatinsert1353, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1342
  %index1345 = phi i64 [ 0, %vector.ph1342 ], [ %index.next1346, %vector.body1337 ]
  %173 = add nuw nsw i64 %index1345, %152
  %174 = add nuw nsw i64 %index1345, %polly.access.mul.Packed_MemRef_call1309497.us
  %175 = getelementptr double, double* %Packed_MemRef_call1309, i64 %174
  %176 = bitcast double* %175 to <4 x double>*
  %wide.load1349 = load <4 x double>, <4 x double>* %176, align 8
  %177 = fmul fast <4 x double> %broadcast.splat1351, %wide.load1349
  %178 = getelementptr double, double* %Packed_MemRef_call2311, i64 %174
  %179 = bitcast double* %178 to <4 x double>*
  %wide.load1352 = load <4 x double>, <4 x double>* %179, align 8
  %180 = fmul fast <4 x double> %broadcast.splat1354, %wide.load1352
  %181 = shl i64 %173, 3
  %182 = add nuw nsw i64 %181, %172
  %183 = getelementptr i8, i8* %call, i64 %182
  %184 = bitcast i8* %183 to <4 x double>*
  %wide.load1355 = load <4 x double>, <4 x double>* %184, align 8, !alias.scope !85, !noalias !87
  %185 = fadd fast <4 x double> %180, %177
  %186 = fmul fast <4 x double> %185, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %187 = fadd fast <4 x double> %186, %wide.load1355
  %188 = bitcast i8* %183 to <4 x double>*
  store <4 x double> %187, <4 x double>* %188, align 8, !alias.scope !85, !noalias !87
  %index.next1346 = add i64 %index1345, 4
  %189 = icmp eq i64 %index.next1346, %n.vec1344
  br i1 %189, label %middle.block1335, label %vector.body1337, !llvm.loop !96

middle.block1335:                                 ; preds = %vector.body1337
  %cmp.n1348 = icmp eq i64 %169, %n.vec1344
  br i1 %cmp.n1348, label %polly.loop_exit493.us, label %polly.loop_header491.us.preheader

polly.loop_header491.us.preheader:                ; preds = %polly.loop_header484.us, %middle.block1335
  %polly.indvar494.us.ph = phi i64 [ 0, %polly.loop_header484.us ], [ %n.vec1344, %middle.block1335 ]
  br label %polly.loop_header491.us

polly.loop_header491.us:                          ; preds = %polly.loop_header491.us.preheader, %polly.loop_header491.us
  %polly.indvar494.us = phi i64 [ %polly.indvar_next495.us, %polly.loop_header491.us ], [ %polly.indvar494.us.ph, %polly.loop_header491.us.preheader ]
  %190 = add nuw nsw i64 %polly.indvar494.us, %152
  %polly.access.add.Packed_MemRef_call1309498.us = add nuw nsw i64 %polly.indvar494.us, %polly.access.mul.Packed_MemRef_call1309497.us
  %polly.access.Packed_MemRef_call1309499.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1309499.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %polly.access.Packed_MemRef_call2311507.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us
  %_p_scalar_508.us = load double, double* %polly.access.Packed_MemRef_call2311507.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_512.us, %_p_scalar_508.us
  %191 = shl i64 %190, 3
  %192 = add nuw nsw i64 %191, %172
  %scevgep513.us = getelementptr i8, i8* %call, i64 %192
  %scevgep513514.us = bitcast i8* %scevgep513.us to double*
  %_p_scalar_515.us = load double, double* %scevgep513514.us, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_515.us
  store double %p_add42.i79.us, double* %scevgep513514.us, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next495.us = add nuw nsw i64 %polly.indvar494.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar494.us, %smin1112
  br i1 %exitcond1113.not, label %polly.loop_exit493.us, label %polly.loop_header491.us, !llvm.loop !97

polly.loop_exit493.us:                            ; preds = %polly.loop_header491.us, %middle.block1335
  %polly.indvar_next489.us = add nuw nsw i64 %polly.indvar488.us, 1
  %indvars.iv.next1111 = add nuw nsw i64 %indvars.iv1110, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar488.us, %smax1119
  br i1 %exitcond1120.not, label %polly.loop_exit486.loopexit.us, label %polly.loop_header484.us

polly.loop_exit486.loopexit.us:                   ; preds = %polly.loop_exit493.us
  %polly.indvar_next481.us = add nuw nsw i64 %polly.indvar480.us, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next481.us, 50
  br i1 %exitcond1121.not, label %polly.loop_exit479, label %polly.loop_header477.us

polly.loop_header463:                             ; preds = %polly.loop_header444, %polly.loop_header463
  %polly.indvar467 = phi i64 [ %polly.indvar_next468, %polly.loop_header463 ], [ %159, %polly.loop_header444 ]
  %193 = add nuw nsw i64 %polly.indvar467, %152
  %polly.access.mul.call1471 = mul nuw nsw i64 %193, 1000
  %polly.access.add.call1472 = add nuw nsw i64 %166, %polly.access.mul.call1471
  %polly.access.call1473 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472
  %polly.access.call1473.load = load double, double* %polly.access.call1473, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309475 = add nuw nsw i64 %polly.indvar467, %polly.access.mul.Packed_MemRef_call1309474
  %polly.access.Packed_MemRef_call1309476 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475
  store double %polly.access.call1473.load, double* %polly.access.Packed_MemRef_call1309476, align 8
  %polly.indvar_next468 = add nuw nsw i64 %polly.indvar467, 1
  %polly.loop_cond469.not.not = icmp ult i64 %polly.indvar467, %162
  br i1 %polly.loop_cond469.not.not, label %polly.loop_header463, label %polly.loop_exit465

polly.start518:                                   ; preds = %init_array.exit
  %malloccall520 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall522 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header606

polly.exiting519:                                 ; preds = %polly.loop_exit630
  tail call void @free(i8* %malloccall520)
  tail call void @free(i8* %malloccall522)
  br label %kernel_syr2k.exit

polly.loop_header606:                             ; preds = %polly.loop_exit614, %polly.start518
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit614 ], [ 0, %polly.start518 ]
  %polly.indvar609 = phi i64 [ %polly.indvar_next610, %polly.loop_exit614 ], [ 1, %polly.start518 ]
  %194 = add i64 %indvar, 1
  %195 = mul nuw nsw i64 %polly.indvar609, 9600
  %scevgep618 = getelementptr i8, i8* %call, i64 %195
  %min.iters.check1279 = icmp ult i64 %194, 4
  br i1 %min.iters.check1279, label %polly.loop_header612.preheader, label %vector.ph1280

vector.ph1280:                                    ; preds = %polly.loop_header606
  %n.vec1282 = and i64 %194, -4
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1278 ]
  %196 = shl nuw nsw i64 %index1283, 3
  %197 = getelementptr i8, i8* %scevgep618, i64 %196
  %198 = bitcast i8* %197 to <4 x double>*
  %wide.load1287 = load <4 x double>, <4 x double>* %198, align 8, !alias.scope !98, !noalias !100
  %199 = fmul fast <4 x double> %wide.load1287, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %200 = bitcast i8* %197 to <4 x double>*
  store <4 x double> %199, <4 x double>* %200, align 8, !alias.scope !98, !noalias !100
  %index.next1284 = add i64 %index1283, 4
  %201 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %201, label %middle.block1276, label %vector.body1278, !llvm.loop !105

middle.block1276:                                 ; preds = %vector.body1278
  %cmp.n1286 = icmp eq i64 %194, %n.vec1282
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
  br label %polly.loop_header622

polly.loop_header612:                             ; preds = %polly.loop_header612.preheader, %polly.loop_header612
  %polly.indvar615 = phi i64 [ %polly.indvar_next616, %polly.loop_header612 ], [ %polly.indvar615.ph, %polly.loop_header612.preheader ]
  %202 = shl nuw nsw i64 %polly.indvar615, 3
  %scevgep619 = getelementptr i8, i8* %scevgep618, i64 %202
  %scevgep619620 = bitcast i8* %scevgep619 to double*
  %_p_scalar_621 = load double, double* %scevgep619620, align 8, !alias.scope !98, !noalias !100
  %p_mul.i = fmul fast double %_p_scalar_621, 1.200000e+00
  store double %p_mul.i, double* %scevgep619620, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar_next616, %polly.indvar609
  br i1 %exitcond1151.not, label %polly.loop_exit614, label %polly.loop_header612, !llvm.loop !106

polly.loop_header622:                             ; preds = %polly.loop_header622.preheader, %polly.loop_exit630
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit630 ], [ 0, %polly.loop_header622.preheader ]
  %203 = mul nuw nsw i64 %polly.indvar625, 50
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit652
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar_next626, 20
  br i1 %exitcond1150.not, label %polly.exiting519, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_exit652, %polly.loop_header622
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit652 ], [ 1200, %polly.loop_header622 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %204 = mul nsw i64 %polly.indvar631, -128
  %205 = shl nsw i64 %polly.indvar631, 7
  br label %polly.loop_header634

polly.loop_exit652:                               ; preds = %polly.loop_exit691
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next1128 = add nsw i64 %indvars.iv1127, -128
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -128
  %exitcond1149.not = icmp eq i64 %polly.indvar_next632, 10
  br i1 %exitcond1149.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header634:                             ; preds = %polly.loop_exit642, %polly.loop_header628
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header628 ], [ %polly.indvar_next638, %polly.loop_exit642 ]
  %206 = add nuw nsw i64 %polly.indvar637, %203
  %polly.access.mul.Packed_MemRef_call2523 = mul nuw nsw i64 %polly.indvar637, 1200
  br label %polly.loop_header640

polly.loop_exit642:                               ; preds = %polly.loop_header640
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next638, 50
  br i1 %exitcond1130.not, label %polly.loop_header650.preheader, label %polly.loop_header634

polly.loop_header650.preheader:                   ; preds = %polly.loop_exit642
  %207 = add nsw i64 %204, 1199
  br label %polly.loop_header650

polly.loop_header640:                             ; preds = %polly.loop_header640, %polly.loop_header634
  %polly.indvar643 = phi i64 [ 0, %polly.loop_header634 ], [ %polly.indvar_next644, %polly.loop_header640 ]
  %208 = add nuw nsw i64 %polly.indvar643, %205
  %polly.access.mul.call2647 = mul nuw nsw i64 %208, 1000
  %polly.access.add.call2648 = add nuw nsw i64 %206, %polly.access.mul.call2647
  %polly.access.call2649 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648
  %polly.access.call2649.load = load double, double* %polly.access.call2649, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2523 = add nuw nsw i64 %polly.indvar643, %polly.access.mul.Packed_MemRef_call2523
  %polly.access.Packed_MemRef_call2523 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523
  store double %polly.access.call2649.load, double* %polly.access.Packed_MemRef_call2523, align 8
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next644, %indvars.iv1127
  br i1 %exitcond1129.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header650:                             ; preds = %polly.loop_header650.preheader, %polly.loop_exit691
  %indvar1291 = phi i64 [ 0, %polly.loop_header650.preheader ], [ %indvar.next1292, %polly.loop_exit691 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv1140, %polly.loop_header650.preheader ], [ %indvars.iv.next1143, %polly.loop_exit691 ]
  %indvars.iv1134 = phi i64 [ 0, %polly.loop_header650.preheader ], [ %indvars.iv.next1135, %polly.loop_exit691 ]
  %polly.indvar653 = phi i64 [ %polly.indvar631, %polly.loop_header650.preheader ], [ %polly.indvar_next654, %polly.loop_exit691 ]
  %209 = shl nuw nsw i64 %indvar1291, 7
  %smin1144 = call i64 @llvm.smin.i64(i64 %indvars.iv1142, i64 -1072)
  %210 = add nsw i64 %smin1144, 1199
  %smax1145 = call i64 @llvm.smax.i64(i64 %210, i64 0)
  %211 = shl nsw i64 %polly.indvar653, 7
  %212 = add nsw i64 %211, %204
  %.inv935.not = icmp eq i64 %212, 0
  %213 = or i64 %212, 127
  %214 = icmp ult i64 %207, %213
  %215 = select i1 %214, i64 %207, i64 %213
  %polly.loop_guard678.not = icmp ugt i64 %212, %215
  br i1 %.inv935.not, label %polly.loop_header650.split, label %polly.loop_header656.us

polly.loop_header656.us:                          ; preds = %polly.loop_header650, %polly.loop_exit677.us
  %polly.indvar659.us = phi i64 [ %polly.indvar_next660.us, %polly.loop_exit677.us ], [ 0, %polly.loop_header650 ]
  %216 = add nuw nsw i64 %polly.indvar659.us, %203
  %polly.access.mul.Packed_MemRef_call1521.us = mul nuw nsw i64 %polly.indvar659.us, 1200
  br label %polly.loop_header663.us

polly.loop_header663.us:                          ; preds = %polly.loop_header656.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header656.us ]
  %217 = add nuw nsw i64 %polly.indvar667.us, %205
  %polly.access.mul.call1671.us = mul nuw nsw i64 %217, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %216, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1521.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1521.us, align 8
  %polly.indvar_next668.us = add nuw i64 %polly.indvar667.us, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next668.us, 128
  br i1 %exitcond1132.not, label %polly.loop_exit665.loopexit.us, label %polly.loop_header663.us

polly.loop_header675.us:                          ; preds = %polly.loop_exit665.loopexit.us, %polly.loop_header675.us
  %polly.indvar679.us = phi i64 [ %polly.indvar_next680.us, %polly.loop_header675.us ], [ %212, %polly.loop_exit665.loopexit.us ]
  %218 = add nuw nsw i64 %polly.indvar679.us, %205
  %polly.access.mul.call1683.us = mul nuw nsw i64 %218, 1000
  %polly.access.add.call1684.us = add nuw nsw i64 %216, %polly.access.mul.call1683.us
  %polly.access.call1685.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us
  %polly.access.call1685.load.us = load double, double* %polly.access.call1685.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1521687.us = add nuw nsw i64 %polly.indvar679.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521688.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us
  store double %polly.access.call1685.load.us, double* %polly.access.Packed_MemRef_call1521688.us, align 8
  %polly.indvar_next680.us = add nuw nsw i64 %polly.indvar679.us, 1
  %polly.loop_cond681.not.not.us = icmp ult i64 %polly.indvar679.us, %215
  br i1 %polly.loop_cond681.not.not.us, label %polly.loop_header675.us, label %polly.loop_exit677.us

polly.loop_exit677.us:                            ; preds = %polly.loop_header675.us, %polly.loop_exit665.loopexit.us
  %polly.indvar_next660.us = add nuw nsw i64 %polly.indvar659.us, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next660.us, 50
  br i1 %exitcond1133.not, label %polly.loop_header689.preheader, label %polly.loop_header656.us

polly.loop_exit665.loopexit.us:                   ; preds = %polly.loop_header663.us
  br i1 %polly.loop_guard678.not, label %polly.loop_exit677.us, label %polly.loop_header675.us

polly.loop_header650.split:                       ; preds = %polly.loop_header650
  br i1 %polly.loop_guard678.not, label %polly.loop_header689.preheader, label %polly.loop_header656

polly.loop_exit691:                               ; preds = %polly.loop_exit698.loopexit.us, %polly.loop_header689.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %indvars.iv.next1135 = add nuw nsw i64 %indvars.iv1134, 128
  %indvars.iv.next1143 = add nsw i64 %indvars.iv1142, -128
  %exitcond1148.not = icmp eq i64 %polly.indvar_next654, 10
  %indvar.next1292 = add i64 %indvar1291, 1
  br i1 %exitcond1148.not, label %polly.loop_exit652, label %polly.loop_header650

polly.loop_header656:                             ; preds = %polly.loop_header650.split, %polly.loop_exit677
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit677 ], [ 0, %polly.loop_header650.split ]
  %219 = add nuw nsw i64 %polly.indvar659, %203
  %polly.access.mul.Packed_MemRef_call1521686 = mul nuw nsw i64 %polly.indvar659, 1200
  br label %polly.loop_header675

polly.loop_exit677:                               ; preds = %polly.loop_header675
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar_next660, 50
  br i1 %exitcond1131.not, label %polly.loop_header689.preheader, label %polly.loop_header656

polly.loop_header689.preheader:                   ; preds = %polly.loop_exit677.us, %polly.loop_exit677, %polly.loop_header650.split
  %220 = mul nsw i64 %polly.indvar653, -128
  %polly.loop_guard6991189 = icmp sgt i64 %220, -1200
  br i1 %polly.loop_guard6991189, label %polly.loop_header689.us, label %polly.loop_exit691

polly.loop_header689.us:                          ; preds = %polly.loop_header689.preheader, %polly.loop_exit698.loopexit.us
  %polly.indvar692.us = phi i64 [ %polly.indvar_next693.us, %polly.loop_exit698.loopexit.us ], [ 0, %polly.loop_header689.preheader ]
  %polly.access.mul.Packed_MemRef_call1521709.us = mul nuw nsw i64 %polly.indvar692.us, 1200
  br label %polly.loop_header696.us

polly.loop_header696.us:                          ; preds = %polly.loop_header689.us, %polly.loop_exit705.us
  %indvars.iv1136 = phi i64 [ %indvars.iv1134, %polly.loop_header689.us ], [ %indvars.iv.next1137, %polly.loop_exit705.us ]
  %polly.indvar700.us = phi i64 [ 0, %polly.loop_header689.us ], [ %polly.indvar_next701.us, %polly.loop_exit705.us ]
  %221 = add i64 %209, %polly.indvar700.us
  %smin1293 = call i64 @llvm.smin.i64(i64 %221, i64 127)
  %222 = add nuw nsw i64 %smin1293, 1
  %smin1138 = call i64 @llvm.smin.i64(i64 %indvars.iv1136, i64 127)
  %223 = add nuw nsw i64 %polly.indvar700.us, %212
  %224 = add nuw nsw i64 %polly.indvar700.us, %211
  %polly.access.add.Packed_MemRef_call2523714.us = add nuw nsw i64 %223, %polly.access.mul.Packed_MemRef_call1521709.us
  %polly.access.Packed_MemRef_call2523715.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call2523715.us, align 8
  %polly.access.Packed_MemRef_call1521723.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call1521723.us, align 8
  %225 = mul nuw nsw i64 %224, 9600
  %min.iters.check1294 = icmp ult i64 %smin1293, 3
  br i1 %min.iters.check1294, label %polly.loop_header703.us.preheader, label %vector.ph1295

vector.ph1295:                                    ; preds = %polly.loop_header696.us
  %n.vec1297 = and i64 %222, -4
  %broadcast.splatinsert1303 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1304 = shufflevector <4 x double> %broadcast.splatinsert1303, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1306 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1307 = shufflevector <4 x double> %broadcast.splatinsert1306, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1295
  %index1298 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1299, %vector.body1290 ]
  %226 = add nuw nsw i64 %index1298, %205
  %227 = add nuw nsw i64 %index1298, %polly.access.mul.Packed_MemRef_call1521709.us
  %228 = getelementptr double, double* %Packed_MemRef_call1521, i64 %227
  %229 = bitcast double* %228 to <4 x double>*
  %wide.load1302 = load <4 x double>, <4 x double>* %229, align 8
  %230 = fmul fast <4 x double> %broadcast.splat1304, %wide.load1302
  %231 = getelementptr double, double* %Packed_MemRef_call2523, i64 %227
  %232 = bitcast double* %231 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %232, align 8
  %233 = fmul fast <4 x double> %broadcast.splat1307, %wide.load1305
  %234 = shl i64 %226, 3
  %235 = add nuw nsw i64 %234, %225
  %236 = getelementptr i8, i8* %call, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  %wide.load1308 = load <4 x double>, <4 x double>* %237, align 8, !alias.scope !98, !noalias !100
  %238 = fadd fast <4 x double> %233, %230
  %239 = fmul fast <4 x double> %238, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %240 = fadd fast <4 x double> %239, %wide.load1308
  %241 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %240, <4 x double>* %241, align 8, !alias.scope !98, !noalias !100
  %index.next1299 = add i64 %index1298, 4
  %242 = icmp eq i64 %index.next1299, %n.vec1297
  br i1 %242, label %middle.block1288, label %vector.body1290, !llvm.loop !109

middle.block1288:                                 ; preds = %vector.body1290
  %cmp.n1301 = icmp eq i64 %222, %n.vec1297
  br i1 %cmp.n1301, label %polly.loop_exit705.us, label %polly.loop_header703.us.preheader

polly.loop_header703.us.preheader:                ; preds = %polly.loop_header696.us, %middle.block1288
  %polly.indvar706.us.ph = phi i64 [ 0, %polly.loop_header696.us ], [ %n.vec1297, %middle.block1288 ]
  br label %polly.loop_header703.us

polly.loop_header703.us:                          ; preds = %polly.loop_header703.us.preheader, %polly.loop_header703.us
  %polly.indvar706.us = phi i64 [ %polly.indvar_next707.us, %polly.loop_header703.us ], [ %polly.indvar706.us.ph, %polly.loop_header703.us.preheader ]
  %243 = add nuw nsw i64 %polly.indvar706.us, %205
  %polly.access.add.Packed_MemRef_call1521710.us = add nuw nsw i64 %polly.indvar706.us, %polly.access.mul.Packed_MemRef_call1521709.us
  %polly.access.Packed_MemRef_call1521711.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call1521711.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %polly.access.Packed_MemRef_call2523719.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call2523719.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %244 = shl i64 %243, 3
  %245 = add nuw nsw i64 %244, %225
  %scevgep725.us = getelementptr i8, i8* %call, i64 %245
  %scevgep725726.us = bitcast i8* %scevgep725.us to double*
  %_p_scalar_727.us = load double, double* %scevgep725726.us, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_727.us
  store double %p_add42.i.us, double* %scevgep725726.us, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next707.us = add nuw nsw i64 %polly.indvar706.us, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar706.us, %smin1138
  br i1 %exitcond1139.not, label %polly.loop_exit705.us, label %polly.loop_header703.us, !llvm.loop !110

polly.loop_exit705.us:                            ; preds = %polly.loop_header703.us, %middle.block1288
  %polly.indvar_next701.us = add nuw nsw i64 %polly.indvar700.us, 1
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar700.us, %smax1145
  br i1 %exitcond1146.not, label %polly.loop_exit698.loopexit.us, label %polly.loop_header696.us

polly.loop_exit698.loopexit.us:                   ; preds = %polly.loop_exit705.us
  %polly.indvar_next693.us = add nuw nsw i64 %polly.indvar692.us, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next693.us, 50
  br i1 %exitcond1147.not, label %polly.loop_exit691, label %polly.loop_header689.us

polly.loop_header675:                             ; preds = %polly.loop_header656, %polly.loop_header675
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_header675 ], [ %212, %polly.loop_header656 ]
  %246 = add nuw nsw i64 %polly.indvar679, %205
  %polly.access.mul.call1683 = mul nuw nsw i64 %246, 1000
  %polly.access.add.call1684 = add nuw nsw i64 %219, %polly.access.mul.call1683
  %polly.access.call1685 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684
  %polly.access.call1685.load = load double, double* %polly.access.call1685, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1521687 = add nuw nsw i64 %polly.indvar679, %polly.access.mul.Packed_MemRef_call1521686
  %polly.access.Packed_MemRef_call1521688 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687
  store double %polly.access.call1685.load, double* %polly.access.Packed_MemRef_call1521688, align 8
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %polly.loop_cond681.not.not = icmp ult i64 %polly.indvar679, %215
  br i1 %polly.loop_cond681.not.not, label %polly.loop_header675, label %polly.loop_exit677

polly.loop_header854:                             ; preds = %entry, %polly.loop_exit862
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit862 ], [ 0, %entry ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %entry ]
  %smin1179 = call i64 @llvm.smin.i64(i64 %indvars.iv1177, i64 -1168)
  %247 = shl nsw i64 %polly.indvar857, 5
  %248 = add nsw i64 %smin1179, 1199
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next858, 38
  br i1 %exitcond1182.not, label %polly.loop_header881, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit868 ], [ 0, %polly.loop_header854 ]
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_exit868 ], [ 0, %polly.loop_header854 ]
  %249 = mul nsw i64 %polly.indvar863, -32
  %smin1217 = call i64 @llvm.smin.i64(i64 %249, i64 -1168)
  %250 = add nsw i64 %smin1217, 1200
  %smin1175 = call i64 @llvm.smin.i64(i64 %indvars.iv1173, i64 -1168)
  %251 = shl nsw i64 %polly.indvar863, 5
  %252 = add nsw i64 %smin1175, 1199
  br label %polly.loop_header866

polly.loop_exit868:                               ; preds = %polly.loop_exit874
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %indvars.iv.next1174 = add nsw i64 %indvars.iv1173, -32
  %exitcond1181.not = icmp eq i64 %polly.indvar_next864, 38
  br i1 %exitcond1181.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_exit874, %polly.loop_header860
  %polly.indvar869 = phi i64 [ 0, %polly.loop_header860 ], [ %polly.indvar_next870, %polly.loop_exit874 ]
  %253 = add nuw nsw i64 %polly.indvar869, %247
  %254 = trunc i64 %253 to i32
  %255 = mul nuw nsw i64 %253, 9600
  %min.iters.check = icmp eq i64 %250, 0
  br i1 %min.iters.check, label %polly.loop_header872, label %vector.ph1218

vector.ph1218:                                    ; preds = %polly.loop_header866
  %broadcast.splatinsert1225 = insertelement <4 x i64> poison, i64 %251, i32 0
  %broadcast.splat1226 = shufflevector <4 x i64> %broadcast.splatinsert1225, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1227 = insertelement <4 x i32> poison, i32 %254, i32 0
  %broadcast.splat1228 = shufflevector <4 x i32> %broadcast.splatinsert1227, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %vector.ph1218
  %index1219 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1220, %vector.body1216 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1218 ], [ %vec.ind.next1224, %vector.body1216 ]
  %256 = add nuw nsw <4 x i64> %vec.ind1223, %broadcast.splat1226
  %257 = trunc <4 x i64> %256 to <4 x i32>
  %258 = mul <4 x i32> %broadcast.splat1228, %257
  %259 = add <4 x i32> %258, <i32 3, i32 3, i32 3, i32 3>
  %260 = urem <4 x i32> %259, <i32 1200, i32 1200, i32 1200, i32 1200>
  %261 = sitofp <4 x i32> %260 to <4 x double>
  %262 = fmul fast <4 x double> %261, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %263 = extractelement <4 x i64> %256, i32 0
  %264 = shl i64 %263, 3
  %265 = add nuw nsw i64 %264, %255
  %266 = getelementptr i8, i8* %call, i64 %265
  %267 = bitcast i8* %266 to <4 x double>*
  store <4 x double> %262, <4 x double>* %267, align 8, !alias.scope !111, !noalias !113
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %268 = icmp eq i64 %index.next1220, %250
  br i1 %268, label %polly.loop_exit874, label %vector.body1216, !llvm.loop !116

polly.loop_exit874:                               ; preds = %vector.body1216, %polly.loop_header872
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar869, %248
  br i1 %exitcond1180.not, label %polly.loop_exit868, label %polly.loop_header866

polly.loop_header872:                             ; preds = %polly.loop_header866, %polly.loop_header872
  %polly.indvar875 = phi i64 [ %polly.indvar_next876, %polly.loop_header872 ], [ 0, %polly.loop_header866 ]
  %269 = add nuw nsw i64 %polly.indvar875, %251
  %270 = trunc i64 %269 to i32
  %271 = mul i32 %270, %254
  %272 = add i32 %271, 3
  %273 = urem i32 %272, 1200
  %p_conv31.i = sitofp i32 %273 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %274 = shl i64 %269, 3
  %275 = add nuw nsw i64 %274, %255
  %scevgep878 = getelementptr i8, i8* %call, i64 %275
  %scevgep878879 = bitcast i8* %scevgep878 to double*
  store double %p_div33.i, double* %scevgep878879, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next876 = add nuw nsw i64 %polly.indvar875, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar875, %252
  br i1 %exitcond1176.not, label %polly.loop_exit874, label %polly.loop_header872, !llvm.loop !117

polly.loop_header881:                             ; preds = %polly.loop_exit862, %polly.loop_exit889
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %polly.loop_exit889 ], [ 0, %polly.loop_exit862 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_exit862 ]
  %smin1169 = call i64 @llvm.smin.i64(i64 %indvars.iv1167, i64 -1168)
  %276 = shl nsw i64 %polly.indvar884, 5
  %277 = add nsw i64 %smin1169, 1199
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1168 = add nsw i64 %indvars.iv1167, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next885, 38
  br i1 %exitcond1172.not, label %polly.loop_header907, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %278 = mul nsw i64 %polly.indvar890, -32
  %smin1232 = call i64 @llvm.smin.i64(i64 %278, i64 -968)
  %279 = add nsw i64 %smin1232, 1000
  %smin1165 = call i64 @llvm.smin.i64(i64 %indvars.iv1163, i64 -968)
  %280 = shl nsw i64 %polly.indvar890, 5
  %281 = add nsw i64 %smin1165, 999
  br label %polly.loop_header893

polly.loop_exit895:                               ; preds = %polly.loop_exit901
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %indvars.iv.next1164 = add nsw i64 %indvars.iv1163, -32
  %exitcond1171.not = icmp eq i64 %polly.indvar_next891, 32
  br i1 %exitcond1171.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_exit901, %polly.loop_header887
  %polly.indvar896 = phi i64 [ 0, %polly.loop_header887 ], [ %polly.indvar_next897, %polly.loop_exit901 ]
  %282 = add nuw nsw i64 %polly.indvar896, %276
  %283 = trunc i64 %282 to i32
  %284 = mul nuw nsw i64 %282, 8000
  %min.iters.check1233 = icmp eq i64 %279, 0
  br i1 %min.iters.check1233, label %polly.loop_header899, label %vector.ph1234

vector.ph1234:                                    ; preds = %polly.loop_header893
  %broadcast.splatinsert1243 = insertelement <4 x i64> poison, i64 %280, i32 0
  %broadcast.splat1244 = shufflevector <4 x i64> %broadcast.splatinsert1243, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1245 = insertelement <4 x i32> poison, i32 %283, i32 0
  %broadcast.splat1246 = shufflevector <4 x i32> %broadcast.splatinsert1245, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1231 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1234 ], [ %vec.ind.next1242, %vector.body1231 ]
  %285 = add nuw nsw <4 x i64> %vec.ind1241, %broadcast.splat1244
  %286 = trunc <4 x i64> %285 to <4 x i32>
  %287 = mul <4 x i32> %broadcast.splat1246, %286
  %288 = add <4 x i32> %287, <i32 2, i32 2, i32 2, i32 2>
  %289 = urem <4 x i32> %288, <i32 1000, i32 1000, i32 1000, i32 1000>
  %290 = sitofp <4 x i32> %289 to <4 x double>
  %291 = fmul fast <4 x double> %290, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %292 = extractelement <4 x i64> %285, i32 0
  %293 = shl i64 %292, 3
  %294 = add nuw nsw i64 %293, %284
  %295 = getelementptr i8, i8* %call2, i64 %294
  %296 = bitcast i8* %295 to <4 x double>*
  store <4 x double> %291, <4 x double>* %296, align 8, !alias.scope !115, !noalias !118
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %297 = icmp eq i64 %index.next1238, %279
  br i1 %297, label %polly.loop_exit901, label %vector.body1231, !llvm.loop !119

polly.loop_exit901:                               ; preds = %vector.body1231, %polly.loop_header899
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar896, %277
  br i1 %exitcond1170.not, label %polly.loop_exit895, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_header893, %polly.loop_header899
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_header899 ], [ 0, %polly.loop_header893 ]
  %298 = add nuw nsw i64 %polly.indvar902, %280
  %299 = trunc i64 %298 to i32
  %300 = mul i32 %299, %283
  %301 = add i32 %300, 2
  %302 = urem i32 %301, 1000
  %p_conv10.i = sitofp i32 %302 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %303 = shl i64 %298, 3
  %304 = add nuw nsw i64 %303, %284
  %scevgep905 = getelementptr i8, i8* %call2, i64 %304
  %scevgep905906 = bitcast i8* %scevgep905 to double*
  store double %p_div12.i, double* %scevgep905906, align 8, !alias.scope !115, !noalias !118
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar902, %281
  br i1 %exitcond1166.not, label %polly.loop_exit901, label %polly.loop_header899, !llvm.loop !120

polly.loop_header907:                             ; preds = %polly.loop_exit889, %polly.loop_exit915
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit915 ], [ 0, %polly.loop_exit889 ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_exit889 ]
  %smin1159 = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 -1168)
  %305 = shl nsw i64 %polly.indvar910, 5
  %306 = add nsw i64 %smin1159, 1199
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1158 = add nsw i64 %indvars.iv1157, -32
  %exitcond1162.not = icmp eq i64 %polly.indvar_next911, 38
  br i1 %exitcond1162.not, label %init_array.exit, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %307 = mul nsw i64 %polly.indvar916, -32
  %smin1250 = call i64 @llvm.smin.i64(i64 %307, i64 -968)
  %308 = add nsw i64 %smin1250, 1000
  %smin1155 = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 -968)
  %309 = shl nsw i64 %polly.indvar916, 5
  %310 = add nsw i64 %smin1155, 999
  br label %polly.loop_header919

polly.loop_exit921:                               ; preds = %polly.loop_exit927
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -32
  %exitcond1161.not = icmp eq i64 %polly.indvar_next917, 32
  br i1 %exitcond1161.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_exit927, %polly.loop_header913
  %polly.indvar922 = phi i64 [ 0, %polly.loop_header913 ], [ %polly.indvar_next923, %polly.loop_exit927 ]
  %311 = add nuw nsw i64 %polly.indvar922, %305
  %312 = trunc i64 %311 to i32
  %313 = mul nuw nsw i64 %311, 8000
  %min.iters.check1251 = icmp eq i64 %308, 0
  br i1 %min.iters.check1251, label %polly.loop_header925, label %vector.ph1252

vector.ph1252:                                    ; preds = %polly.loop_header919
  %broadcast.splatinsert1261 = insertelement <4 x i64> poison, i64 %309, i32 0
  %broadcast.splat1262 = shufflevector <4 x i64> %broadcast.splatinsert1261, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1263 = insertelement <4 x i32> poison, i32 %312, i32 0
  %broadcast.splat1264 = shufflevector <4 x i32> %broadcast.splatinsert1263, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1249 ]
  %vec.ind1259 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1252 ], [ %vec.ind.next1260, %vector.body1249 ]
  %314 = add nuw nsw <4 x i64> %vec.ind1259, %broadcast.splat1262
  %315 = trunc <4 x i64> %314 to <4 x i32>
  %316 = mul <4 x i32> %broadcast.splat1264, %315
  %317 = add <4 x i32> %316, <i32 1, i32 1, i32 1, i32 1>
  %318 = urem <4 x i32> %317, <i32 1200, i32 1200, i32 1200, i32 1200>
  %319 = sitofp <4 x i32> %318 to <4 x double>
  %320 = fmul fast <4 x double> %319, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %321 = extractelement <4 x i64> %314, i32 0
  %322 = shl i64 %321, 3
  %323 = add nuw nsw i64 %322, %313
  %324 = getelementptr i8, i8* %call1, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %320, <4 x double>* %325, align 8, !alias.scope !114, !noalias !121
  %index.next1256 = add i64 %index1255, 4
  %vec.ind.next1260 = add <4 x i64> %vec.ind1259, <i64 4, i64 4, i64 4, i64 4>
  %326 = icmp eq i64 %index.next1256, %308
  br i1 %326, label %polly.loop_exit927, label %vector.body1249, !llvm.loop !122

polly.loop_exit927:                               ; preds = %vector.body1249, %polly.loop_header925
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar922, %306
  br i1 %exitcond1160.not, label %polly.loop_exit921, label %polly.loop_header919

polly.loop_header925:                             ; preds = %polly.loop_header919, %polly.loop_header925
  %polly.indvar928 = phi i64 [ %polly.indvar_next929, %polly.loop_header925 ], [ 0, %polly.loop_header919 ]
  %327 = add nuw nsw i64 %polly.indvar928, %309
  %328 = trunc i64 %327 to i32
  %329 = mul i32 %328, %312
  %330 = add i32 %329, 1
  %331 = urem i32 %330, 1200
  %p_conv.i = sitofp i32 %331 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %332 = shl i64 %327, 3
  %333 = add nuw nsw i64 %332, %313
  %scevgep932 = getelementptr i8, i8* %call1, i64 %333
  %scevgep932933 = bitcast i8* %scevgep932 to double*
  store double %p_div.i, double* %scevgep932933, align 8, !alias.scope !114, !noalias !121
  %polly.indvar_next929 = add nuw nsw i64 %polly.indvar928, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar928, %310
  br i1 %exitcond1156.not, label %polly.loop_exit927, label %polly.loop_header925, !llvm.loop !123
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
!26 = !{!"llvm.loop.tile.size", i32 128}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 50}
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
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !80, !13}
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
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !80, !13}
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
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !80, !13}
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
