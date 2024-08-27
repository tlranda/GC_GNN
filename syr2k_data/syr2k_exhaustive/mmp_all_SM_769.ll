; ModuleID = 'syr2k_exhaustive/mmp_all_SM_769.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_769.c"
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
  br i1 %57, label %middle.block1309, label %vector.body1311, !llvm.loop !64

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

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
  br i1 %68, label %middle.block1356, label %vector.body1358, !llvm.loop !66

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall136 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
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
  %wide.load1381 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1381, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1378 = add i64 %index1377, 4
  %95 = icmp eq i64 %index.next1378, %n.vec1376
  br i1 %95, label %middle.block1368, label %vector.body1370, !llvm.loop !79

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
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1099.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 20
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next204, 50
  br i1 %exitcond1098.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = mul nsw i64 %polly.indvar209, -256
  %99 = shl nsw i64 %polly.indvar209, 8
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %100 = add nsw i64 %98, 1199
  %101 = shl nsw i64 %polly.indvar209, 2
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, -256
  %exitcond1097.not = icmp eq i64 %polly.indvar_next210, 5
  br i1 %exitcond1097.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %102 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next216, 20
  br i1 %exitcond1080.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %103 = add nuw nsw i64 %polly.indvar221, %99
  %polly.access.mul.call2225 = mul nuw nsw i64 %103, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %102, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1385 = phi i64 [ %indvar.next1386, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit267 ], [ %indvars.iv1089, %polly.loop_exit214 ]
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %101, %polly.loop_exit214 ]
  %104 = shl nuw nsw i64 %indvar1385, 6
  %smin1093 = call i64 @llvm.smin.i64(i64 %indvars.iv1091, i64 -1136)
  %105 = add nsw i64 %smin1093, 1199
  %smax = call i64 @llvm.smax.i64(i64 %105, i64 0)
  %106 = shl nsw i64 %polly.indvar231, 6
  %107 = add nsw i64 %106, %98
  %108 = add nsw i64 %107, -1
  %.inv = icmp ugt i64 %107, 255
  %109 = select i1 %.inv, i64 255, i64 %108
  %polly.loop_guard = icmp sgt i64 %109, -1
  %110 = or i64 %107, 63
  %111 = icmp ult i64 %100, %110
  %112 = select i1 %111, i64 %100, i64 %110
  %polly.loop_guard254.not = icmp ugt i64 %107, %112
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %113 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %114 = add nuw nsw i64 %polly.indvar243.us, %99
  %polly.access.mul.call1247.us = mul nuw nsw i64 %114, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %113, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar243.us, %109
  br i1 %exitcond1082.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %107, %polly.loop_exit242.loopexit.us ]
  %115 = add nuw nsw i64 %polly.indvar255.us, %99
  %polly.access.mul.call1259.us = mul nuw nsw i64 %115, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %113, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp ult i64 %polly.indvar255.us, %112
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_exit253.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next238.us, 20
  br i1 %exitcond1083.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 64
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -64
  %exitcond1096.not = icmp eq i64 %polly.indvar_next232, 19
  %indvar.next1386 = add i64 %indvar1385, 1
  br i1 %exitcond1096.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228.split ]
  %116 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next238, 20
  br i1 %exitcond1081.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.loop_header228.split
  %117 = mul nsw i64 %polly.indvar231, -64
  %polly.loop_guard2751187 = icmp sgt i64 %117, -1200
  br i1 %polly.loop_guard2751187, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1285.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header265.us, %polly.loop_exit281.us
  %indvars.iv1086 = phi i64 [ %indvars.iv1084, %polly.loop_header265.us ], [ %indvars.iv.next1087, %polly.loop_exit281.us ]
  %polly.indvar276.us = phi i64 [ 0, %polly.loop_header265.us ], [ %polly.indvar_next277.us, %polly.loop_exit281.us ]
  %118 = add i64 %104, %polly.indvar276.us
  %smin1387 = call i64 @llvm.smin.i64(i64 %118, i64 255)
  %119 = add nuw nsw i64 %smin1387, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1086, i64 255)
  %120 = add nuw nsw i64 %polly.indvar276.us, %107
  %121 = add nuw nsw i64 %polly.indvar276.us, %106
  %polly.access.add.Packed_MemRef_call2290.us = add nuw nsw i64 %120, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %122 = mul nuw nsw i64 %121, 9600
  %min.iters.check1388 = icmp ult i64 %smin1387, 3
  br i1 %min.iters.check1388, label %polly.loop_header279.us.preheader, label %vector.ph1389

vector.ph1389:                                    ; preds = %polly.loop_header272.us
  %n.vec1391 = and i64 %119, -4
  %broadcast.splatinsert1397 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1398 = shufflevector <4 x double> %broadcast.splatinsert1397, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1400 = insertelement <4 x double> poison, double %_p_scalar_300.us, i32 0
  %broadcast.splat1401 = shufflevector <4 x double> %broadcast.splatinsert1400, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %vector.ph1389
  %index1392 = phi i64 [ 0, %vector.ph1389 ], [ %index.next1393, %vector.body1384 ]
  %123 = add nuw nsw i64 %index1392, %99
  %124 = add nuw nsw i64 %index1392, %polly.access.mul.Packed_MemRef_call1285.us
  %125 = getelementptr double, double* %Packed_MemRef_call1, i64 %124
  %126 = bitcast double* %125 to <4 x double>*
  %wide.load1396 = load <4 x double>, <4 x double>* %126, align 8
  %127 = fmul fast <4 x double> %broadcast.splat1398, %wide.load1396
  %128 = getelementptr double, double* %Packed_MemRef_call2, i64 %124
  %129 = bitcast double* %128 to <4 x double>*
  %wide.load1399 = load <4 x double>, <4 x double>* %129, align 8
  %130 = fmul fast <4 x double> %broadcast.splat1401, %wide.load1399
  %131 = shl i64 %123, 3
  %132 = add nuw nsw i64 %131, %122
  %133 = getelementptr i8, i8* %call, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1402 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !72, !noalias !74
  %135 = fadd fast <4 x double> %130, %127
  %136 = fmul fast <4 x double> %135, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %137 = fadd fast <4 x double> %136, %wide.load1402
  %138 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !72, !noalias !74
  %index.next1393 = add i64 %index1392, 4
  %139 = icmp eq i64 %index.next1393, %n.vec1391
  br i1 %139, label %middle.block1382, label %vector.body1384, !llvm.loop !84

middle.block1382:                                 ; preds = %vector.body1384
  %cmp.n1395 = icmp eq i64 %119, %n.vec1391
  br i1 %cmp.n1395, label %polly.loop_exit281.us, label %polly.loop_header279.us.preheader

polly.loop_header279.us.preheader:                ; preds = %polly.loop_header272.us, %middle.block1382
  %polly.indvar282.us.ph = phi i64 [ 0, %polly.loop_header272.us ], [ %n.vec1391, %middle.block1382 ]
  br label %polly.loop_header279.us

polly.loop_header279.us:                          ; preds = %polly.loop_header279.us.preheader, %polly.loop_header279.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header279.us ], [ %polly.indvar282.us.ph, %polly.loop_header279.us.preheader ]
  %140 = add nuw nsw i64 %polly.indvar282.us, %99
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar282.us, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_300.us, %_p_scalar_296.us
  %141 = shl i64 %140, 3
  %142 = add nuw nsw i64 %141, %122
  %scevgep301.us = getelementptr i8, i8* %call, i64 %142
  %scevgep301302.us = bitcast i8* %scevgep301.us to double*
  %_p_scalar_303.us = load double, double* %scevgep301302.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_303.us
  store double %p_add42.i118.us, double* %scevgep301302.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar282.us, %smin
  br i1 %exitcond1088.not, label %polly.loop_exit281.us, label %polly.loop_header279.us, !llvm.loop !85

polly.loop_exit281.us:                            ; preds = %polly.loop_header279.us, %middle.block1382
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar276.us, %smax
  br i1 %exitcond1094.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_exit281.us
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next269.us, 20
  br i1 %exitcond1095.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %107, %polly.loop_header234 ]
  %143 = add nuw nsw i64 %polly.indvar255, %99
  %polly.access.mul.call1259 = mul nuw nsw i64 %143, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %116, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp ult i64 %polly.indvar255, %112
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall310 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1324 = phi i64 [ %indvar.next1325, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %144 = add i64 %indvar1324, 1
  %145 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1326 = icmp ult i64 %144, 4
  br i1 %min.iters.check1326, label %polly.loop_header400.preheader, label %vector.ph1327

vector.ph1327:                                    ; preds = %polly.loop_header394
  %n.vec1329 = and i64 %144, -4
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1327
  %index1330 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1331, %vector.body1323 ]
  %146 = shl nuw nsw i64 %index1330, 3
  %147 = getelementptr i8, i8* %scevgep406, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !86, !noalias !88
  %149 = fmul fast <4 x double> %wide.load1334, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !86, !noalias !88
  %index.next1331 = add i64 %index1330, 4
  %151 = icmp eq i64 %index.next1331, %n.vec1329
  br i1 %151, label %middle.block1321, label %vector.body1323, !llvm.loop !93

middle.block1321:                                 ; preds = %vector.body1323
  %cmp.n1333 = icmp eq i64 %144, %n.vec1329
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
  %152 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %152
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1125.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !94

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %153 = mul nuw nsw i64 %polly.indvar413, 20
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit440
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next414, 50
  br i1 %exitcond1124.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit440, %polly.loop_header410
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit440 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %154 = mul nsw i64 %polly.indvar419, -256
  %155 = shl nsw i64 %polly.indvar419, 8
  br label %polly.loop_header422

polly.loop_exit424:                               ; preds = %polly.loop_exit430
  %156 = add nsw i64 %154, 1199
  %157 = shl nsw i64 %polly.indvar419, 2
  br label %polly.loop_header438

polly.loop_exit440:                               ; preds = %polly.loop_exit479
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -256
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -256
  %exitcond1123.not = icmp eq i64 %polly.indvar_next420, 5
  br i1 %exitcond1123.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_exit430, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_exit430 ]
  %158 = add nuw nsw i64 %polly.indvar425, %153
  %polly.access.mul.Packed_MemRef_call2311 = mul nuw nsw i64 %polly.indvar425, 1200
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_header428
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next426, 20
  br i1 %exitcond1104.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %159 = add nuw nsw i64 %polly.indvar431, %155
  %polly.access.mul.call2435 = mul nuw nsw i64 %159, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %158, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2311 = add nuw nsw i64 %polly.indvar431, %polly.access.mul.Packed_MemRef_call2311
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1101
  br i1 %exitcond1103.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header438:                             ; preds = %polly.loop_exit479, %polly.loop_exit424
  %indvar1338 = phi i64 [ %indvar.next1339, %polly.loop_exit479 ], [ 0, %polly.loop_exit424 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit479 ], [ %indvars.iv1114, %polly.loop_exit424 ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit479 ], [ 0, %polly.loop_exit424 ]
  %polly.indvar441 = phi i64 [ %polly.indvar_next442, %polly.loop_exit479 ], [ %157, %polly.loop_exit424 ]
  %160 = shl nuw nsw i64 %indvar1338, 6
  %smin1118 = call i64 @llvm.smin.i64(i64 %indvars.iv1116, i64 -1136)
  %161 = add nsw i64 %smin1118, 1199
  %smax1119 = call i64 @llvm.smax.i64(i64 %161, i64 0)
  %162 = shl nsw i64 %polly.indvar441, 6
  %163 = add nsw i64 %162, %154
  %164 = add nsw i64 %163, -1
  %.inv934 = icmp ugt i64 %163, 255
  %165 = select i1 %.inv934, i64 255, i64 %164
  %polly.loop_guard454 = icmp sgt i64 %165, -1
  %166 = or i64 %163, 63
  %167 = icmp ult i64 %156, %166
  %168 = select i1 %167, i64 %156, i64 %166
  %polly.loop_guard466.not = icmp ugt i64 %163, %168
  br i1 %polly.loop_guard454, label %polly.loop_header444.us, label %polly.loop_header438.split

polly.loop_header444.us:                          ; preds = %polly.loop_header438, %polly.loop_exit465.us
  %polly.indvar447.us = phi i64 [ %polly.indvar_next448.us, %polly.loop_exit465.us ], [ 0, %polly.loop_header438 ]
  %169 = add nuw nsw i64 %polly.indvar447.us, %153
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar447.us, 1200
  br label %polly.loop_header451.us

polly.loop_header451.us:                          ; preds = %polly.loop_header444.us, %polly.loop_header451.us
  %polly.indvar455.us = phi i64 [ %polly.indvar_next456.us, %polly.loop_header451.us ], [ 0, %polly.loop_header444.us ]
  %170 = add nuw nsw i64 %polly.indvar455.us, %155
  %polly.access.mul.call1459.us = mul nuw nsw i64 %170, 1000
  %polly.access.add.call1460.us = add nuw nsw i64 %169, %polly.access.mul.call1459.us
  %polly.access.call1461.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us
  %polly.access.call1461.load.us = load double, double* %polly.access.call1461.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us = add nuw nsw i64 %polly.indvar455.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us
  store double %polly.access.call1461.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.indvar_next456.us = add nuw i64 %polly.indvar455.us, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar455.us, %165
  br i1 %exitcond1106.not, label %polly.loop_exit453.loopexit.us, label %polly.loop_header451.us

polly.loop_header463.us:                          ; preds = %polly.loop_exit453.loopexit.us, %polly.loop_header463.us
  %polly.indvar467.us = phi i64 [ %polly.indvar_next468.us, %polly.loop_header463.us ], [ %163, %polly.loop_exit453.loopexit.us ]
  %171 = add nuw nsw i64 %polly.indvar467.us, %155
  %polly.access.mul.call1471.us = mul nuw nsw i64 %171, 1000
  %polly.access.add.call1472.us = add nuw nsw i64 %169, %polly.access.mul.call1471.us
  %polly.access.call1473.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us
  %polly.access.call1473.load.us = load double, double* %polly.access.call1473.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309475.us = add nuw nsw i64 %polly.indvar467.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309476.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us
  store double %polly.access.call1473.load.us, double* %polly.access.Packed_MemRef_call1309476.us, align 8
  %polly.indvar_next468.us = add nuw nsw i64 %polly.indvar467.us, 1
  %polly.loop_cond469.not.not.us = icmp ult i64 %polly.indvar467.us, %168
  br i1 %polly.loop_cond469.not.not.us, label %polly.loop_header463.us, label %polly.loop_exit465.us

polly.loop_exit465.us:                            ; preds = %polly.loop_header463.us, %polly.loop_exit453.loopexit.us
  %polly.indvar_next448.us = add nuw nsw i64 %polly.indvar447.us, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next448.us, 20
  br i1 %exitcond1107.not, label %polly.loop_header477.preheader, label %polly.loop_header444.us

polly.loop_exit453.loopexit.us:                   ; preds = %polly.loop_header451.us
  br i1 %polly.loop_guard466.not, label %polly.loop_exit465.us, label %polly.loop_header463.us

polly.loop_header438.split:                       ; preds = %polly.loop_header438
  br i1 %polly.loop_guard466.not, label %polly.loop_header477.preheader, label %polly.loop_header444

polly.loop_exit479:                               ; preds = %polly.loop_exit486.loopexit.us, %polly.loop_header477.preheader
  %polly.indvar_next442 = add nuw nsw i64 %polly.indvar441, 1
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 64
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -64
  %exitcond1122.not = icmp eq i64 %polly.indvar_next442, 19
  %indvar.next1339 = add i64 %indvar1338, 1
  br i1 %exitcond1122.not, label %polly.loop_exit440, label %polly.loop_header438

polly.loop_header444:                             ; preds = %polly.loop_header438.split, %polly.loop_exit465
  %polly.indvar447 = phi i64 [ %polly.indvar_next448, %polly.loop_exit465 ], [ 0, %polly.loop_header438.split ]
  %172 = add nuw nsw i64 %polly.indvar447, %153
  %polly.access.mul.Packed_MemRef_call1309474 = mul nuw nsw i64 %polly.indvar447, 1200
  br label %polly.loop_header463

polly.loop_exit465:                               ; preds = %polly.loop_header463
  %polly.indvar_next448 = add nuw nsw i64 %polly.indvar447, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next448, 20
  br i1 %exitcond1105.not, label %polly.loop_header477.preheader, label %polly.loop_header444

polly.loop_header477.preheader:                   ; preds = %polly.loop_exit465, %polly.loop_exit465.us, %polly.loop_header438.split
  %173 = mul nsw i64 %polly.indvar441, -64
  %polly.loop_guard4871188 = icmp sgt i64 %173, -1200
  br i1 %polly.loop_guard4871188, label %polly.loop_header477.us, label %polly.loop_exit479

polly.loop_header477.us:                          ; preds = %polly.loop_header477.preheader, %polly.loop_exit486.loopexit.us
  %polly.indvar480.us = phi i64 [ %polly.indvar_next481.us, %polly.loop_exit486.loopexit.us ], [ 0, %polly.loop_header477.preheader ]
  %polly.access.mul.Packed_MemRef_call1309497.us = mul nuw nsw i64 %polly.indvar480.us, 1200
  br label %polly.loop_header484.us

polly.loop_header484.us:                          ; preds = %polly.loop_header477.us, %polly.loop_exit493.us
  %indvars.iv1110 = phi i64 [ %indvars.iv1108, %polly.loop_header477.us ], [ %indvars.iv.next1111, %polly.loop_exit493.us ]
  %polly.indvar488.us = phi i64 [ 0, %polly.loop_header477.us ], [ %polly.indvar_next489.us, %polly.loop_exit493.us ]
  %174 = add i64 %160, %polly.indvar488.us
  %smin1340 = call i64 @llvm.smin.i64(i64 %174, i64 255)
  %175 = add nuw nsw i64 %smin1340, 1
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 255)
  %176 = add nuw nsw i64 %polly.indvar488.us, %163
  %177 = add nuw nsw i64 %polly.indvar488.us, %162
  %polly.access.add.Packed_MemRef_call2311502.us = add nuw nsw i64 %176, %polly.access.mul.Packed_MemRef_call1309497.us
  %polly.access.Packed_MemRef_call2311503.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call2311503.us, align 8
  %polly.access.Packed_MemRef_call1309511.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us
  %_p_scalar_512.us = load double, double* %polly.access.Packed_MemRef_call1309511.us, align 8
  %178 = mul nuw nsw i64 %177, 9600
  %min.iters.check1341 = icmp ult i64 %smin1340, 3
  br i1 %min.iters.check1341, label %polly.loop_header491.us.preheader, label %vector.ph1342

vector.ph1342:                                    ; preds = %polly.loop_header484.us
  %n.vec1344 = and i64 %175, -4
  %broadcast.splatinsert1350 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1351 = shufflevector <4 x double> %broadcast.splatinsert1350, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1353 = insertelement <4 x double> poison, double %_p_scalar_512.us, i32 0
  %broadcast.splat1354 = shufflevector <4 x double> %broadcast.splatinsert1353, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1342
  %index1345 = phi i64 [ 0, %vector.ph1342 ], [ %index.next1346, %vector.body1337 ]
  %179 = add nuw nsw i64 %index1345, %155
  %180 = add nuw nsw i64 %index1345, %polly.access.mul.Packed_MemRef_call1309497.us
  %181 = getelementptr double, double* %Packed_MemRef_call1309, i64 %180
  %182 = bitcast double* %181 to <4 x double>*
  %wide.load1349 = load <4 x double>, <4 x double>* %182, align 8
  %183 = fmul fast <4 x double> %broadcast.splat1351, %wide.load1349
  %184 = getelementptr double, double* %Packed_MemRef_call2311, i64 %180
  %185 = bitcast double* %184 to <4 x double>*
  %wide.load1352 = load <4 x double>, <4 x double>* %185, align 8
  %186 = fmul fast <4 x double> %broadcast.splat1354, %wide.load1352
  %187 = shl i64 %179, 3
  %188 = add nuw nsw i64 %187, %178
  %189 = getelementptr i8, i8* %call, i64 %188
  %190 = bitcast i8* %189 to <4 x double>*
  %wide.load1355 = load <4 x double>, <4 x double>* %190, align 8, !alias.scope !86, !noalias !88
  %191 = fadd fast <4 x double> %186, %183
  %192 = fmul fast <4 x double> %191, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %193 = fadd fast <4 x double> %192, %wide.load1355
  %194 = bitcast i8* %189 to <4 x double>*
  store <4 x double> %193, <4 x double>* %194, align 8, !alias.scope !86, !noalias !88
  %index.next1346 = add i64 %index1345, 4
  %195 = icmp eq i64 %index.next1346, %n.vec1344
  br i1 %195, label %middle.block1335, label %vector.body1337, !llvm.loop !97

middle.block1335:                                 ; preds = %vector.body1337
  %cmp.n1348 = icmp eq i64 %175, %n.vec1344
  br i1 %cmp.n1348, label %polly.loop_exit493.us, label %polly.loop_header491.us.preheader

polly.loop_header491.us.preheader:                ; preds = %polly.loop_header484.us, %middle.block1335
  %polly.indvar494.us.ph = phi i64 [ 0, %polly.loop_header484.us ], [ %n.vec1344, %middle.block1335 ]
  br label %polly.loop_header491.us

polly.loop_header491.us:                          ; preds = %polly.loop_header491.us.preheader, %polly.loop_header491.us
  %polly.indvar494.us = phi i64 [ %polly.indvar_next495.us, %polly.loop_header491.us ], [ %polly.indvar494.us.ph, %polly.loop_header491.us.preheader ]
  %196 = add nuw nsw i64 %polly.indvar494.us, %155
  %polly.access.add.Packed_MemRef_call1309498.us = add nuw nsw i64 %polly.indvar494.us, %polly.access.mul.Packed_MemRef_call1309497.us
  %polly.access.Packed_MemRef_call1309499.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1309499.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %polly.access.Packed_MemRef_call2311507.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us
  %_p_scalar_508.us = load double, double* %polly.access.Packed_MemRef_call2311507.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_512.us, %_p_scalar_508.us
  %197 = shl i64 %196, 3
  %198 = add nuw nsw i64 %197, %178
  %scevgep513.us = getelementptr i8, i8* %call, i64 %198
  %scevgep513514.us = bitcast i8* %scevgep513.us to double*
  %_p_scalar_515.us = load double, double* %scevgep513514.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_515.us
  store double %p_add42.i79.us, double* %scevgep513514.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next495.us = add nuw nsw i64 %polly.indvar494.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar494.us, %smin1112
  br i1 %exitcond1113.not, label %polly.loop_exit493.us, label %polly.loop_header491.us, !llvm.loop !98

polly.loop_exit493.us:                            ; preds = %polly.loop_header491.us, %middle.block1335
  %polly.indvar_next489.us = add nuw nsw i64 %polly.indvar488.us, 1
  %indvars.iv.next1111 = add nuw nsw i64 %indvars.iv1110, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar488.us, %smax1119
  br i1 %exitcond1120.not, label %polly.loop_exit486.loopexit.us, label %polly.loop_header484.us

polly.loop_exit486.loopexit.us:                   ; preds = %polly.loop_exit493.us
  %polly.indvar_next481.us = add nuw nsw i64 %polly.indvar480.us, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next481.us, 20
  br i1 %exitcond1121.not, label %polly.loop_exit479, label %polly.loop_header477.us

polly.loop_header463:                             ; preds = %polly.loop_header444, %polly.loop_header463
  %polly.indvar467 = phi i64 [ %polly.indvar_next468, %polly.loop_header463 ], [ %163, %polly.loop_header444 ]
  %199 = add nuw nsw i64 %polly.indvar467, %155
  %polly.access.mul.call1471 = mul nuw nsw i64 %199, 1000
  %polly.access.add.call1472 = add nuw nsw i64 %172, %polly.access.mul.call1471
  %polly.access.call1473 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472
  %polly.access.call1473.load = load double, double* %polly.access.call1473, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309475 = add nuw nsw i64 %polly.indvar467, %polly.access.mul.Packed_MemRef_call1309474
  %polly.access.Packed_MemRef_call1309476 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475
  store double %polly.access.call1473.load, double* %polly.access.Packed_MemRef_call1309476, align 8
  %polly.indvar_next468 = add nuw nsw i64 %polly.indvar467, 1
  %polly.loop_cond469.not.not = icmp ult i64 %polly.indvar467, %168
  br i1 %polly.loop_cond469.not.not, label %polly.loop_header463, label %polly.loop_exit465

polly.start518:                                   ; preds = %init_array.exit
  %malloccall520 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall522 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header606

polly.exiting519:                                 ; preds = %polly.loop_exit630
  tail call void @free(i8* %malloccall520)
  tail call void @free(i8* %malloccall522)
  br label %kernel_syr2k.exit

polly.loop_header606:                             ; preds = %polly.loop_exit614, %polly.start518
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit614 ], [ 0, %polly.start518 ]
  %polly.indvar609 = phi i64 [ %polly.indvar_next610, %polly.loop_exit614 ], [ 1, %polly.start518 ]
  %200 = add i64 %indvar, 1
  %201 = mul nuw nsw i64 %polly.indvar609, 9600
  %scevgep618 = getelementptr i8, i8* %call, i64 %201
  %min.iters.check1279 = icmp ult i64 %200, 4
  br i1 %min.iters.check1279, label %polly.loop_header612.preheader, label %vector.ph1280

vector.ph1280:                                    ; preds = %polly.loop_header606
  %n.vec1282 = and i64 %200, -4
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1278 ]
  %202 = shl nuw nsw i64 %index1283, 3
  %203 = getelementptr i8, i8* %scevgep618, i64 %202
  %204 = bitcast i8* %203 to <4 x double>*
  %wide.load1287 = load <4 x double>, <4 x double>* %204, align 8, !alias.scope !99, !noalias !101
  %205 = fmul fast <4 x double> %wide.load1287, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %206 = bitcast i8* %203 to <4 x double>*
  store <4 x double> %205, <4 x double>* %206, align 8, !alias.scope !99, !noalias !101
  %index.next1284 = add i64 %index1283, 4
  %207 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %207, label %middle.block1276, label %vector.body1278, !llvm.loop !106

middle.block1276:                                 ; preds = %vector.body1278
  %cmp.n1286 = icmp eq i64 %200, %n.vec1282
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
  %208 = shl nuw nsw i64 %polly.indvar615, 3
  %scevgep619 = getelementptr i8, i8* %scevgep618, i64 %208
  %scevgep619620 = bitcast i8* %scevgep619 to double*
  %_p_scalar_621 = load double, double* %scevgep619620, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_621, 1.200000e+00
  store double %p_mul.i, double* %scevgep619620, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar_next616, %polly.indvar609
  br i1 %exitcond1151.not, label %polly.loop_exit614, label %polly.loop_header612, !llvm.loop !107

polly.loop_header622:                             ; preds = %polly.loop_header622.preheader, %polly.loop_exit630
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit630 ], [ 0, %polly.loop_header622.preheader ]
  %209 = mul nuw nsw i64 %polly.indvar625, 20
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit652
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar_next626, 50
  br i1 %exitcond1150.not, label %polly.exiting519, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_exit652, %polly.loop_header622
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit652 ], [ 1200, %polly.loop_header622 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %210 = mul nsw i64 %polly.indvar631, -256
  %211 = shl nsw i64 %polly.indvar631, 8
  br label %polly.loop_header634

polly.loop_exit636:                               ; preds = %polly.loop_exit642
  %212 = add nsw i64 %210, 1199
  %213 = shl nsw i64 %polly.indvar631, 2
  br label %polly.loop_header650

polly.loop_exit652:                               ; preds = %polly.loop_exit691
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next1128 = add nsw i64 %indvars.iv1127, -256
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -256
  %exitcond1149.not = icmp eq i64 %polly.indvar_next632, 5
  br i1 %exitcond1149.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header634:                             ; preds = %polly.loop_exit642, %polly.loop_header628
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header628 ], [ %polly.indvar_next638, %polly.loop_exit642 ]
  %214 = add nuw nsw i64 %polly.indvar637, %209
  %polly.access.mul.Packed_MemRef_call2523 = mul nuw nsw i64 %polly.indvar637, 1200
  br label %polly.loop_header640

polly.loop_exit642:                               ; preds = %polly.loop_header640
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next638, 20
  br i1 %exitcond1130.not, label %polly.loop_exit636, label %polly.loop_header634

polly.loop_header640:                             ; preds = %polly.loop_header640, %polly.loop_header634
  %polly.indvar643 = phi i64 [ 0, %polly.loop_header634 ], [ %polly.indvar_next644, %polly.loop_header640 ]
  %215 = add nuw nsw i64 %polly.indvar643, %211
  %polly.access.mul.call2647 = mul nuw nsw i64 %215, 1000
  %polly.access.add.call2648 = add nuw nsw i64 %214, %polly.access.mul.call2647
  %polly.access.call2649 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648
  %polly.access.call2649.load = load double, double* %polly.access.call2649, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2523 = add nuw nsw i64 %polly.indvar643, %polly.access.mul.Packed_MemRef_call2523
  %polly.access.Packed_MemRef_call2523 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523
  store double %polly.access.call2649.load, double* %polly.access.Packed_MemRef_call2523, align 8
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next644, %indvars.iv1127
  br i1 %exitcond1129.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header650:                             ; preds = %polly.loop_exit691, %polly.loop_exit636
  %indvar1291 = phi i64 [ %indvar.next1292, %polly.loop_exit691 ], [ 0, %polly.loop_exit636 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit691 ], [ %indvars.iv1140, %polly.loop_exit636 ]
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit691 ], [ 0, %polly.loop_exit636 ]
  %polly.indvar653 = phi i64 [ %polly.indvar_next654, %polly.loop_exit691 ], [ %213, %polly.loop_exit636 ]
  %216 = shl nuw nsw i64 %indvar1291, 6
  %smin1144 = call i64 @llvm.smin.i64(i64 %indvars.iv1142, i64 -1136)
  %217 = add nsw i64 %smin1144, 1199
  %smax1145 = call i64 @llvm.smax.i64(i64 %217, i64 0)
  %218 = shl nsw i64 %polly.indvar653, 6
  %219 = add nsw i64 %218, %210
  %220 = add nsw i64 %219, -1
  %.inv935 = icmp ugt i64 %219, 255
  %221 = select i1 %.inv935, i64 255, i64 %220
  %polly.loop_guard666 = icmp sgt i64 %221, -1
  %222 = or i64 %219, 63
  %223 = icmp ult i64 %212, %222
  %224 = select i1 %223, i64 %212, i64 %222
  %polly.loop_guard678.not = icmp ugt i64 %219, %224
  br i1 %polly.loop_guard666, label %polly.loop_header656.us, label %polly.loop_header650.split

polly.loop_header656.us:                          ; preds = %polly.loop_header650, %polly.loop_exit677.us
  %polly.indvar659.us = phi i64 [ %polly.indvar_next660.us, %polly.loop_exit677.us ], [ 0, %polly.loop_header650 ]
  %225 = add nuw nsw i64 %polly.indvar659.us, %209
  %polly.access.mul.Packed_MemRef_call1521.us = mul nuw nsw i64 %polly.indvar659.us, 1200
  br label %polly.loop_header663.us

polly.loop_header663.us:                          ; preds = %polly.loop_header656.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header656.us ]
  %226 = add nuw nsw i64 %polly.indvar667.us, %211
  %polly.access.mul.call1671.us = mul nuw nsw i64 %226, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %225, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1521.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1521.us, align 8
  %polly.indvar_next668.us = add nuw i64 %polly.indvar667.us, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar667.us, %221
  br i1 %exitcond1132.not, label %polly.loop_exit665.loopexit.us, label %polly.loop_header663.us

polly.loop_header675.us:                          ; preds = %polly.loop_exit665.loopexit.us, %polly.loop_header675.us
  %polly.indvar679.us = phi i64 [ %polly.indvar_next680.us, %polly.loop_header675.us ], [ %219, %polly.loop_exit665.loopexit.us ]
  %227 = add nuw nsw i64 %polly.indvar679.us, %211
  %polly.access.mul.call1683.us = mul nuw nsw i64 %227, 1000
  %polly.access.add.call1684.us = add nuw nsw i64 %225, %polly.access.mul.call1683.us
  %polly.access.call1685.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us
  %polly.access.call1685.load.us = load double, double* %polly.access.call1685.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1521687.us = add nuw nsw i64 %polly.indvar679.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521688.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us
  store double %polly.access.call1685.load.us, double* %polly.access.Packed_MemRef_call1521688.us, align 8
  %polly.indvar_next680.us = add nuw nsw i64 %polly.indvar679.us, 1
  %polly.loop_cond681.not.not.us = icmp ult i64 %polly.indvar679.us, %224
  br i1 %polly.loop_cond681.not.not.us, label %polly.loop_header675.us, label %polly.loop_exit677.us

polly.loop_exit677.us:                            ; preds = %polly.loop_header675.us, %polly.loop_exit665.loopexit.us
  %polly.indvar_next660.us = add nuw nsw i64 %polly.indvar659.us, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next660.us, 20
  br i1 %exitcond1133.not, label %polly.loop_header689.preheader, label %polly.loop_header656.us

polly.loop_exit665.loopexit.us:                   ; preds = %polly.loop_header663.us
  br i1 %polly.loop_guard678.not, label %polly.loop_exit677.us, label %polly.loop_header675.us

polly.loop_header650.split:                       ; preds = %polly.loop_header650
  br i1 %polly.loop_guard678.not, label %polly.loop_header689.preheader, label %polly.loop_header656

polly.loop_exit691:                               ; preds = %polly.loop_exit698.loopexit.us, %polly.loop_header689.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %indvars.iv.next1135 = add nuw nsw i64 %indvars.iv1134, 64
  %indvars.iv.next1143 = add nsw i64 %indvars.iv1142, -64
  %exitcond1148.not = icmp eq i64 %polly.indvar_next654, 19
  %indvar.next1292 = add i64 %indvar1291, 1
  br i1 %exitcond1148.not, label %polly.loop_exit652, label %polly.loop_header650

polly.loop_header656:                             ; preds = %polly.loop_header650.split, %polly.loop_exit677
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit677 ], [ 0, %polly.loop_header650.split ]
  %228 = add nuw nsw i64 %polly.indvar659, %209
  %polly.access.mul.Packed_MemRef_call1521686 = mul nuw nsw i64 %polly.indvar659, 1200
  br label %polly.loop_header675

polly.loop_exit677:                               ; preds = %polly.loop_header675
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar_next660, 20
  br i1 %exitcond1131.not, label %polly.loop_header689.preheader, label %polly.loop_header656

polly.loop_header689.preheader:                   ; preds = %polly.loop_exit677, %polly.loop_exit677.us, %polly.loop_header650.split
  %229 = mul nsw i64 %polly.indvar653, -64
  %polly.loop_guard6991189 = icmp sgt i64 %229, -1200
  br i1 %polly.loop_guard6991189, label %polly.loop_header689.us, label %polly.loop_exit691

polly.loop_header689.us:                          ; preds = %polly.loop_header689.preheader, %polly.loop_exit698.loopexit.us
  %polly.indvar692.us = phi i64 [ %polly.indvar_next693.us, %polly.loop_exit698.loopexit.us ], [ 0, %polly.loop_header689.preheader ]
  %polly.access.mul.Packed_MemRef_call1521709.us = mul nuw nsw i64 %polly.indvar692.us, 1200
  br label %polly.loop_header696.us

polly.loop_header696.us:                          ; preds = %polly.loop_header689.us, %polly.loop_exit705.us
  %indvars.iv1136 = phi i64 [ %indvars.iv1134, %polly.loop_header689.us ], [ %indvars.iv.next1137, %polly.loop_exit705.us ]
  %polly.indvar700.us = phi i64 [ 0, %polly.loop_header689.us ], [ %polly.indvar_next701.us, %polly.loop_exit705.us ]
  %230 = add i64 %216, %polly.indvar700.us
  %smin1293 = call i64 @llvm.smin.i64(i64 %230, i64 255)
  %231 = add nuw nsw i64 %smin1293, 1
  %smin1138 = call i64 @llvm.smin.i64(i64 %indvars.iv1136, i64 255)
  %232 = add nuw nsw i64 %polly.indvar700.us, %219
  %233 = add nuw nsw i64 %polly.indvar700.us, %218
  %polly.access.add.Packed_MemRef_call2523714.us = add nuw nsw i64 %232, %polly.access.mul.Packed_MemRef_call1521709.us
  %polly.access.Packed_MemRef_call2523715.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call2523715.us, align 8
  %polly.access.Packed_MemRef_call1521723.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call1521723.us, align 8
  %234 = mul nuw nsw i64 %233, 9600
  %min.iters.check1294 = icmp ult i64 %smin1293, 3
  br i1 %min.iters.check1294, label %polly.loop_header703.us.preheader, label %vector.ph1295

vector.ph1295:                                    ; preds = %polly.loop_header696.us
  %n.vec1297 = and i64 %231, -4
  %broadcast.splatinsert1303 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1304 = shufflevector <4 x double> %broadcast.splatinsert1303, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1306 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1307 = shufflevector <4 x double> %broadcast.splatinsert1306, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1295
  %index1298 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1299, %vector.body1290 ]
  %235 = add nuw nsw i64 %index1298, %211
  %236 = add nuw nsw i64 %index1298, %polly.access.mul.Packed_MemRef_call1521709.us
  %237 = getelementptr double, double* %Packed_MemRef_call1521, i64 %236
  %238 = bitcast double* %237 to <4 x double>*
  %wide.load1302 = load <4 x double>, <4 x double>* %238, align 8
  %239 = fmul fast <4 x double> %broadcast.splat1304, %wide.load1302
  %240 = getelementptr double, double* %Packed_MemRef_call2523, i64 %236
  %241 = bitcast double* %240 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %241, align 8
  %242 = fmul fast <4 x double> %broadcast.splat1307, %wide.load1305
  %243 = shl i64 %235, 3
  %244 = add nuw nsw i64 %243, %234
  %245 = getelementptr i8, i8* %call, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1308 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !99, !noalias !101
  %247 = fadd fast <4 x double> %242, %239
  %248 = fmul fast <4 x double> %247, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %249 = fadd fast <4 x double> %248, %wide.load1308
  %250 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %249, <4 x double>* %250, align 8, !alias.scope !99, !noalias !101
  %index.next1299 = add i64 %index1298, 4
  %251 = icmp eq i64 %index.next1299, %n.vec1297
  br i1 %251, label %middle.block1288, label %vector.body1290, !llvm.loop !110

middle.block1288:                                 ; preds = %vector.body1290
  %cmp.n1301 = icmp eq i64 %231, %n.vec1297
  br i1 %cmp.n1301, label %polly.loop_exit705.us, label %polly.loop_header703.us.preheader

polly.loop_header703.us.preheader:                ; preds = %polly.loop_header696.us, %middle.block1288
  %polly.indvar706.us.ph = phi i64 [ 0, %polly.loop_header696.us ], [ %n.vec1297, %middle.block1288 ]
  br label %polly.loop_header703.us

polly.loop_header703.us:                          ; preds = %polly.loop_header703.us.preheader, %polly.loop_header703.us
  %polly.indvar706.us = phi i64 [ %polly.indvar_next707.us, %polly.loop_header703.us ], [ %polly.indvar706.us.ph, %polly.loop_header703.us.preheader ]
  %252 = add nuw nsw i64 %polly.indvar706.us, %211
  %polly.access.add.Packed_MemRef_call1521710.us = add nuw nsw i64 %polly.indvar706.us, %polly.access.mul.Packed_MemRef_call1521709.us
  %polly.access.Packed_MemRef_call1521711.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call1521711.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %polly.access.Packed_MemRef_call2523719.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call2523719.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %253 = shl i64 %252, 3
  %254 = add nuw nsw i64 %253, %234
  %scevgep725.us = getelementptr i8, i8* %call, i64 %254
  %scevgep725726.us = bitcast i8* %scevgep725.us to double*
  %_p_scalar_727.us = load double, double* %scevgep725726.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_727.us
  store double %p_add42.i.us, double* %scevgep725726.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next707.us = add nuw nsw i64 %polly.indvar706.us, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar706.us, %smin1138
  br i1 %exitcond1139.not, label %polly.loop_exit705.us, label %polly.loop_header703.us, !llvm.loop !111

polly.loop_exit705.us:                            ; preds = %polly.loop_header703.us, %middle.block1288
  %polly.indvar_next701.us = add nuw nsw i64 %polly.indvar700.us, 1
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar700.us, %smax1145
  br i1 %exitcond1146.not, label %polly.loop_exit698.loopexit.us, label %polly.loop_header696.us

polly.loop_exit698.loopexit.us:                   ; preds = %polly.loop_exit705.us
  %polly.indvar_next693.us = add nuw nsw i64 %polly.indvar692.us, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next693.us, 20
  br i1 %exitcond1147.not, label %polly.loop_exit691, label %polly.loop_header689.us

polly.loop_header675:                             ; preds = %polly.loop_header656, %polly.loop_header675
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_header675 ], [ %219, %polly.loop_header656 ]
  %255 = add nuw nsw i64 %polly.indvar679, %211
  %polly.access.mul.call1683 = mul nuw nsw i64 %255, 1000
  %polly.access.add.call1684 = add nuw nsw i64 %228, %polly.access.mul.call1683
  %polly.access.call1685 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684
  %polly.access.call1685.load = load double, double* %polly.access.call1685, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1521687 = add nuw nsw i64 %polly.indvar679, %polly.access.mul.Packed_MemRef_call1521686
  %polly.access.Packed_MemRef_call1521688 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687
  store double %polly.access.call1685.load, double* %polly.access.Packed_MemRef_call1521688, align 8
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %polly.loop_cond681.not.not = icmp ult i64 %polly.indvar679, %224
  br i1 %polly.loop_cond681.not.not, label %polly.loop_header675, label %polly.loop_exit677

polly.loop_header854:                             ; preds = %entry, %polly.loop_exit862
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit862 ], [ 0, %entry ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %entry ]
  %smin1179 = call i64 @llvm.smin.i64(i64 %indvars.iv1177, i64 -1168)
  %256 = shl nsw i64 %polly.indvar857, 5
  %257 = add nsw i64 %smin1179, 1199
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next858, 38
  br i1 %exitcond1182.not, label %polly.loop_header881, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit868 ], [ 0, %polly.loop_header854 ]
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_exit868 ], [ 0, %polly.loop_header854 ]
  %258 = mul nsw i64 %polly.indvar863, -32
  %smin1217 = call i64 @llvm.smin.i64(i64 %258, i64 -1168)
  %259 = add nsw i64 %smin1217, 1200
  %smin1175 = call i64 @llvm.smin.i64(i64 %indvars.iv1173, i64 -1168)
  %260 = shl nsw i64 %polly.indvar863, 5
  %261 = add nsw i64 %smin1175, 1199
  br label %polly.loop_header866

polly.loop_exit868:                               ; preds = %polly.loop_exit874
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %indvars.iv.next1174 = add nsw i64 %indvars.iv1173, -32
  %exitcond1181.not = icmp eq i64 %polly.indvar_next864, 38
  br i1 %exitcond1181.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_exit874, %polly.loop_header860
  %polly.indvar869 = phi i64 [ 0, %polly.loop_header860 ], [ %polly.indvar_next870, %polly.loop_exit874 ]
  %262 = add nuw nsw i64 %polly.indvar869, %256
  %263 = trunc i64 %262 to i32
  %264 = mul nuw nsw i64 %262, 9600
  %min.iters.check = icmp eq i64 %259, 0
  br i1 %min.iters.check, label %polly.loop_header872, label %vector.ph1218

vector.ph1218:                                    ; preds = %polly.loop_header866
  %broadcast.splatinsert1225 = insertelement <4 x i64> poison, i64 %260, i32 0
  %broadcast.splat1226 = shufflevector <4 x i64> %broadcast.splatinsert1225, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1227 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1228 = shufflevector <4 x i32> %broadcast.splatinsert1227, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %vector.ph1218
  %index1219 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1220, %vector.body1216 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1218 ], [ %vec.ind.next1224, %vector.body1216 ]
  %265 = add nuw nsw <4 x i64> %vec.ind1223, %broadcast.splat1226
  %266 = trunc <4 x i64> %265 to <4 x i32>
  %267 = mul <4 x i32> %broadcast.splat1228, %266
  %268 = add <4 x i32> %267, <i32 3, i32 3, i32 3, i32 3>
  %269 = urem <4 x i32> %268, <i32 1200, i32 1200, i32 1200, i32 1200>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %272 = extractelement <4 x i64> %265, i32 0
  %273 = shl i64 %272, 3
  %274 = add nuw nsw i64 %273, %264
  %275 = getelementptr i8, i8* %call, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %271, <4 x double>* %276, align 8, !alias.scope !112, !noalias !114
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %277 = icmp eq i64 %index.next1220, %259
  br i1 %277, label %polly.loop_exit874, label %vector.body1216, !llvm.loop !117

polly.loop_exit874:                               ; preds = %vector.body1216, %polly.loop_header872
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar869, %257
  br i1 %exitcond1180.not, label %polly.loop_exit868, label %polly.loop_header866

polly.loop_header872:                             ; preds = %polly.loop_header866, %polly.loop_header872
  %polly.indvar875 = phi i64 [ %polly.indvar_next876, %polly.loop_header872 ], [ 0, %polly.loop_header866 ]
  %278 = add nuw nsw i64 %polly.indvar875, %260
  %279 = trunc i64 %278 to i32
  %280 = mul i32 %279, %263
  %281 = add i32 %280, 3
  %282 = urem i32 %281, 1200
  %p_conv31.i = sitofp i32 %282 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %283 = shl i64 %278, 3
  %284 = add nuw nsw i64 %283, %264
  %scevgep878 = getelementptr i8, i8* %call, i64 %284
  %scevgep878879 = bitcast i8* %scevgep878 to double*
  store double %p_div33.i, double* %scevgep878879, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next876 = add nuw nsw i64 %polly.indvar875, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar875, %261
  br i1 %exitcond1176.not, label %polly.loop_exit874, label %polly.loop_header872, !llvm.loop !118

polly.loop_header881:                             ; preds = %polly.loop_exit862, %polly.loop_exit889
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %polly.loop_exit889 ], [ 0, %polly.loop_exit862 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_exit862 ]
  %smin1169 = call i64 @llvm.smin.i64(i64 %indvars.iv1167, i64 -1168)
  %285 = shl nsw i64 %polly.indvar884, 5
  %286 = add nsw i64 %smin1169, 1199
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1168 = add nsw i64 %indvars.iv1167, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next885, 38
  br i1 %exitcond1172.not, label %polly.loop_header907, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %287 = mul nsw i64 %polly.indvar890, -32
  %smin1232 = call i64 @llvm.smin.i64(i64 %287, i64 -968)
  %288 = add nsw i64 %smin1232, 1000
  %smin1165 = call i64 @llvm.smin.i64(i64 %indvars.iv1163, i64 -968)
  %289 = shl nsw i64 %polly.indvar890, 5
  %290 = add nsw i64 %smin1165, 999
  br label %polly.loop_header893

polly.loop_exit895:                               ; preds = %polly.loop_exit901
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %indvars.iv.next1164 = add nsw i64 %indvars.iv1163, -32
  %exitcond1171.not = icmp eq i64 %polly.indvar_next891, 32
  br i1 %exitcond1171.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_exit901, %polly.loop_header887
  %polly.indvar896 = phi i64 [ 0, %polly.loop_header887 ], [ %polly.indvar_next897, %polly.loop_exit901 ]
  %291 = add nuw nsw i64 %polly.indvar896, %285
  %292 = trunc i64 %291 to i32
  %293 = mul nuw nsw i64 %291, 8000
  %min.iters.check1233 = icmp eq i64 %288, 0
  br i1 %min.iters.check1233, label %polly.loop_header899, label %vector.ph1234

vector.ph1234:                                    ; preds = %polly.loop_header893
  %broadcast.splatinsert1243 = insertelement <4 x i64> poison, i64 %289, i32 0
  %broadcast.splat1244 = shufflevector <4 x i64> %broadcast.splatinsert1243, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1245 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1246 = shufflevector <4 x i32> %broadcast.splatinsert1245, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1231 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1234 ], [ %vec.ind.next1242, %vector.body1231 ]
  %294 = add nuw nsw <4 x i64> %vec.ind1241, %broadcast.splat1244
  %295 = trunc <4 x i64> %294 to <4 x i32>
  %296 = mul <4 x i32> %broadcast.splat1246, %295
  %297 = add <4 x i32> %296, <i32 2, i32 2, i32 2, i32 2>
  %298 = urem <4 x i32> %297, <i32 1000, i32 1000, i32 1000, i32 1000>
  %299 = sitofp <4 x i32> %298 to <4 x double>
  %300 = fmul fast <4 x double> %299, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %301 = extractelement <4 x i64> %294, i32 0
  %302 = shl i64 %301, 3
  %303 = add nuw nsw i64 %302, %293
  %304 = getelementptr i8, i8* %call2, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %300, <4 x double>* %305, align 8, !alias.scope !116, !noalias !119
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %306 = icmp eq i64 %index.next1238, %288
  br i1 %306, label %polly.loop_exit901, label %vector.body1231, !llvm.loop !120

polly.loop_exit901:                               ; preds = %vector.body1231, %polly.loop_header899
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar896, %286
  br i1 %exitcond1170.not, label %polly.loop_exit895, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_header893, %polly.loop_header899
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_header899 ], [ 0, %polly.loop_header893 ]
  %307 = add nuw nsw i64 %polly.indvar902, %289
  %308 = trunc i64 %307 to i32
  %309 = mul i32 %308, %292
  %310 = add i32 %309, 2
  %311 = urem i32 %310, 1000
  %p_conv10.i = sitofp i32 %311 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %312 = shl i64 %307, 3
  %313 = add nuw nsw i64 %312, %293
  %scevgep905 = getelementptr i8, i8* %call2, i64 %313
  %scevgep905906 = bitcast i8* %scevgep905 to double*
  store double %p_div12.i, double* %scevgep905906, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar902, %290
  br i1 %exitcond1166.not, label %polly.loop_exit901, label %polly.loop_header899, !llvm.loop !121

polly.loop_header907:                             ; preds = %polly.loop_exit889, %polly.loop_exit915
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit915 ], [ 0, %polly.loop_exit889 ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_exit889 ]
  %smin1159 = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 -1168)
  %314 = shl nsw i64 %polly.indvar910, 5
  %315 = add nsw i64 %smin1159, 1199
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1158 = add nsw i64 %indvars.iv1157, -32
  %exitcond1162.not = icmp eq i64 %polly.indvar_next911, 38
  br i1 %exitcond1162.not, label %init_array.exit, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %316 = mul nsw i64 %polly.indvar916, -32
  %smin1250 = call i64 @llvm.smin.i64(i64 %316, i64 -968)
  %317 = add nsw i64 %smin1250, 1000
  %smin1155 = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 -968)
  %318 = shl nsw i64 %polly.indvar916, 5
  %319 = add nsw i64 %smin1155, 999
  br label %polly.loop_header919

polly.loop_exit921:                               ; preds = %polly.loop_exit927
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -32
  %exitcond1161.not = icmp eq i64 %polly.indvar_next917, 32
  br i1 %exitcond1161.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_exit927, %polly.loop_header913
  %polly.indvar922 = phi i64 [ 0, %polly.loop_header913 ], [ %polly.indvar_next923, %polly.loop_exit927 ]
  %320 = add nuw nsw i64 %polly.indvar922, %314
  %321 = trunc i64 %320 to i32
  %322 = mul nuw nsw i64 %320, 8000
  %min.iters.check1251 = icmp eq i64 %317, 0
  br i1 %min.iters.check1251, label %polly.loop_header925, label %vector.ph1252

vector.ph1252:                                    ; preds = %polly.loop_header919
  %broadcast.splatinsert1261 = insertelement <4 x i64> poison, i64 %318, i32 0
  %broadcast.splat1262 = shufflevector <4 x i64> %broadcast.splatinsert1261, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1263 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1264 = shufflevector <4 x i32> %broadcast.splatinsert1263, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1249 ]
  %vec.ind1259 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1252 ], [ %vec.ind.next1260, %vector.body1249 ]
  %323 = add nuw nsw <4 x i64> %vec.ind1259, %broadcast.splat1262
  %324 = trunc <4 x i64> %323 to <4 x i32>
  %325 = mul <4 x i32> %broadcast.splat1264, %324
  %326 = add <4 x i32> %325, <i32 1, i32 1, i32 1, i32 1>
  %327 = urem <4 x i32> %326, <i32 1200, i32 1200, i32 1200, i32 1200>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %330 = extractelement <4 x i64> %323, i32 0
  %331 = shl i64 %330, 3
  %332 = add nuw nsw i64 %331, %322
  %333 = getelementptr i8, i8* %call1, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %329, <4 x double>* %334, align 8, !alias.scope !115, !noalias !122
  %index.next1256 = add i64 %index1255, 4
  %vec.ind.next1260 = add <4 x i64> %vec.ind1259, <i64 4, i64 4, i64 4, i64 4>
  %335 = icmp eq i64 %index.next1256, %317
  br i1 %335, label %polly.loop_exit927, label %vector.body1249, !llvm.loop !123

polly.loop_exit927:                               ; preds = %vector.body1249, %polly.loop_header925
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar922, %315
  br i1 %exitcond1160.not, label %polly.loop_exit921, label %polly.loop_header919

polly.loop_header925:                             ; preds = %polly.loop_header919, %polly.loop_header925
  %polly.indvar928 = phi i64 [ %polly.indvar_next929, %polly.loop_header925 ], [ 0, %polly.loop_header919 ]
  %336 = add nuw nsw i64 %polly.indvar928, %318
  %337 = trunc i64 %336 to i32
  %338 = mul i32 %337, %321
  %339 = add i32 %338, 1
  %340 = urem i32 %339, 1200
  %p_conv.i = sitofp i32 %340 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %341 = shl i64 %336, 3
  %342 = add nuw nsw i64 %341, %322
  %scevgep932 = getelementptr i8, i8* %call1, i64 %342
  %scevgep932933 = bitcast i8* %scevgep932 to double*
  store double %p_div.i, double* %scevgep932933, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next929 = add nuw nsw i64 %polly.indvar928, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar928, %319
  br i1 %exitcond1156.not, label %polly.loop_exit927, label %polly.loop_header925, !llvm.loop !124
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
!47 = distinct !{!47, !12, !24, !48, !49, !50, !51, !52, !61}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.size", i32 64}
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
