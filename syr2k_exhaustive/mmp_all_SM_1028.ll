; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1028.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1028.c"
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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv7.i, i64 %index1229
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit929
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start527, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1291 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1291, label %for.body3.i46.preheader1446, label %vector.ph1292

vector.ph1292:                                    ; preds = %for.body3.i46.preheader
  %n.vec1294 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1292
  %index1295 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1296, %vector.body1290 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i, i64 %index1295
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
  br i1 %cmp.n1298, label %for.inc6.i, label %for.body3.i46.preheader1446

for.body3.i46.preheader1446:                      ; preds = %for.body3.i46.preheader, %middle.block1288
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1294, %middle.block1288 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1446, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1446 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

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
  %min.iters.check1338 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1338, label %for.body3.i60.preheader1442, label %vector.ph1339

vector.ph1339:                                    ; preds = %for.body3.i60.preheader
  %n.vec1341 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1339
  %index1342 = phi i64 [ 0, %vector.ph1339 ], [ %index.next1343, %vector.body1337 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i52, i64 %index1342
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1346 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1346, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1343 = add i64 %index1342, 4
  %57 = icmp eq i64 %index.next1343, %n.vec1341
  br i1 %57, label %middle.block1335, label %vector.body1337, !llvm.loop !63

middle.block1335:                                 ; preds = %vector.body1337
  %cmp.n1345 = icmp eq i64 %indvars.iv21.i52, %n.vec1341
  br i1 %cmp.n1345, label %for.inc6.i63, label %for.body3.i60.preheader1442

for.body3.i60.preheader1442:                      ; preds = %for.body3.i60.preheader, %middle.block1335
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1341, %middle.block1335 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1442, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1442 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1335, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

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
  %min.iters.check1388 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1388, label %for.body3.i99.preheader1438, label %vector.ph1389

vector.ph1389:                                    ; preds = %for.body3.i99.preheader
  %n.vec1391 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1387

vector.body1387:                                  ; preds = %vector.body1387, %vector.ph1389
  %index1392 = phi i64 [ 0, %vector.ph1389 ], [ %index.next1393, %vector.body1387 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i91, i64 %index1392
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1396 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1396, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1393 = add i64 %index1392, 4
  %68 = icmp eq i64 %index.next1393, %n.vec1391
  br i1 %68, label %middle.block1385, label %vector.body1387, !llvm.loop !65

middle.block1385:                                 ; preds = %vector.body1387
  %cmp.n1395 = icmp eq i64 %indvars.iv21.i91, %n.vec1391
  br i1 %cmp.n1395, label %for.inc6.i102, label %for.body3.i99.preheader1438

for.body3.i99.preheader1438:                      ; preds = %for.body3.i99.preheader, %middle.block1385
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1391, %middle.block1385 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1438, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1438 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1385, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1400 = phi i64 [ %indvar.next1401, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1400, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1402 = icmp ult i64 %88, 4
  br i1 %min.iters.check1402, label %polly.loop_header192.preheader, label %vector.ph1403

vector.ph1403:                                    ; preds = %polly.loop_header
  %n.vec1405 = and i64 %88, -4
  br label %vector.body1399

vector.body1399:                                  ; preds = %vector.body1399, %vector.ph1403
  %index1406 = phi i64 [ 0, %vector.ph1403 ], [ %index.next1407, %vector.body1399 ]
  %90 = shl nuw nsw i64 %index1406, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1410 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1410, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1407 = add i64 %index1406, 4
  %95 = icmp eq i64 %index.next1407, %n.vec1405
  br i1 %95, label %middle.block1397, label %vector.body1399, !llvm.loop !78

middle.block1397:                                 ; preds = %vector.body1399
  %cmp.n1409 = icmp eq i64 %88, %n.vec1405
  br i1 %cmp.n1409, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1397
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1405, %middle.block1397 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1397
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1401 = add i64 %indvar1400, 1
  br i1 %exitcond1115.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1114.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1114.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 50
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next204, 20
  br i1 %exitcond1113.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit230 ], [ 47, %polly.loop_header200 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = mul nsw i64 %polly.indvar209, -46
  %99 = mul nuw nsw i64 %polly.indvar209, 23
  %100 = add nuw i64 %99, 47
  %101 = udiv i64 %100, 48
  %102 = mul nuw nsw i64 %101, 96
  %103 = add i64 %98, %102
  %104 = mul nuw nsw i64 %polly.indvar209, 46
  %105 = sub nsw i64 %104, %102
  %106 = udiv i64 %indvars.iv1100, 48
  %107 = mul nuw nsw i64 %106, 96
  %108 = add i64 %indvars.iv1098, %107
  %109 = sub nsw i64 %indvars.iv1104, %107
  %110 = mul nsw i64 %polly.indvar209, -50
  %111 = mul nuw nsw i64 %polly.indvar209, 50
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %112 = add nsw i64 %110, 1199
  %113 = mul nuw nsw i64 %polly.indvar209, 23
  %114 = add nuw nsw i64 %113, 47
  %pexp.p_div_q = udiv i64 %114, 48
  %115 = sub nsw i64 %polly.indvar209, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %115, 13
  br i1 %polly.loop_guard, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_exit230:                               ; preds = %polly.loop_exit269, %polly.loop_exit214
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -46
  %indvars.iv.next1101 = add nuw nsw i64 %indvars.iv1100, 23
  %indvars.iv.next1105 = add nuw nsw i64 %indvars.iv1104, 46
  %exitcond1112.not = icmp eq i64 %polly.indvar_next210, 24
  br i1 %exitcond1112.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %116 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next216, 50
  br i1 %exitcond1094.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %117 = add nuw nsw i64 %polly.indvar221, %111
  %polly.access.mul.call2225 = mul nuw nsw i64 %117, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %116, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2756, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit214, %polly.loop_exit269
  %indvar1414 = phi i64 [ %indvar.next1415, %polly.loop_exit269 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit269 ], [ %109, %polly.loop_exit214 ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit269 ], [ %108, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit269 ], [ %115, %polly.loop_exit214 ]
  %118 = mul nsw i64 %indvar1414, -96
  %119 = add i64 %103, %118
  %smax1416 = call i64 @llvm.smax.i64(i64 %119, i64 0)
  %120 = mul nuw nsw i64 %indvar1414, 96
  %121 = add i64 %105, %120
  %122 = add i64 %smax1416, %121
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1102, i64 0)
  %123 = add i64 %smax, %indvars.iv1106
  %124 = mul nsw i64 %polly.indvar231, 96
  %125 = add nsw i64 %124, %110
  %126 = add nsw i64 %125, -1
  %.inv = icmp sgt i64 %125, 49
  %127 = select i1 %.inv, i64 49, i64 %126
  %polly.loop_guard244 = icmp sgt i64 %127, -1
  %128 = icmp sgt i64 %125, 0
  %129 = select i1 %128, i64 %125, i64 0
  %130 = add nsw i64 %125, 95
  %131 = icmp slt i64 %112, %130
  %132 = select i1 %131, i64 %112, i64 %130
  %polly.loop_guard256.not = icmp sgt i64 %129, %132
  br i1 %polly.loop_guard244, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit255.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit255.us ], [ 0, %polly.loop_header228 ]
  %133 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header241.us

polly.loop_header241.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header234.us ]
  %134 = add nuw nsw i64 %polly.indvar245.us, %111
  %polly.access.mul.call1249.us = mul nuw nsw i64 %134, 1000
  %polly.access.add.call1250.us = add nuw nsw i64 %133, %polly.access.mul.call1249.us
  %polly.access.call1251.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1250.us
  %polly.access.call1251.load.us = load double, double* %polly.access.call1251.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar245.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1251.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next246.us = add nuw i64 %polly.indvar245.us, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar245.us, %127
  br i1 %exitcond1096.not, label %polly.loop_exit243.loopexit.us, label %polly.loop_header241.us

polly.loop_header253.us:                          ; preds = %polly.loop_exit243.loopexit.us, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ %129, %polly.loop_exit243.loopexit.us ]
  %135 = add nuw nsw i64 %polly.indvar257.us, %111
  %polly.access.mul.call1261.us = mul nsw i64 %135, 1000
  %polly.access.add.call1262.us = add nuw nsw i64 %133, %polly.access.mul.call1261.us
  %polly.access.call1263.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1262.us
  %polly.access.call1263.load.us = load double, double* %polly.access.call1263.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1265.us = add nuw nsw i64 %polly.indvar257.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  store double %polly.access.call1263.load.us, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %polly.loop_cond259.not.not.us = icmp slt i64 %polly.indvar257.us, %132
  br i1 %polly.loop_cond259.not.not.us, label %polly.loop_header253.us, label %polly.loop_exit255.us

polly.loop_exit255.us:                            ; preds = %polly.loop_header253.us, %polly.loop_exit243.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next238.us, 50
  br i1 %exitcond1097.not, label %polly.loop_header267.preheader, label %polly.loop_header234.us

polly.loop_exit243.loopexit.us:                   ; preds = %polly.loop_header241.us
  br i1 %polly.loop_guard256.not, label %polly.loop_exit255.us, label %polly.loop_header253.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard256.not, label %polly.loop_header267.preheader, label %polly.loop_header234

polly.loop_exit269:                               ; preds = %polly.loop_exit276, %polly.loop_header267.preheader
  %polly.indvar_next232 = add nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp slt i64 %polly.indvar231, 12
  %indvars.iv.next1103 = add i64 %indvars.iv1102, -96
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 96
  %indvar.next1415 = add i64 %indvar1414, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit255
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit255 ], [ 0, %polly.loop_header228.split ]
  %136 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header253

polly.loop_exit255:                               ; preds = %polly.loop_header253
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next238, 50
  br i1 %exitcond1095.not, label %polly.loop_header267.preheader, label %polly.loop_header234

polly.loop_header267.preheader:                   ; preds = %polly.loop_exit255, %polly.loop_exit255.us, %polly.loop_header228.split
  %137 = sub nsw i64 %111, %124
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  %140 = mul nsw i64 %polly.indvar231, -96
  %141 = icmp slt i64 %140, -1104
  %142 = select i1 %141, i64 %140, i64 -1104
  %143 = add nsw i64 %142, 1199
  %polly.loop_guard277.not = icmp sgt i64 %139, %143
  br i1 %polly.loop_guard277.not, label %polly.loop_exit269, label %polly.loop_header267

polly.loop_header253:                             ; preds = %polly.loop_header234, %polly.loop_header253
  %polly.indvar257 = phi i64 [ %polly.indvar_next258, %polly.loop_header253 ], [ %129, %polly.loop_header234 ]
  %144 = add nuw nsw i64 %polly.indvar257, %111
  %polly.access.mul.call1261 = mul nsw i64 %144, 1000
  %polly.access.add.call1262 = add nuw nsw i64 %136, %polly.access.mul.call1261
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1262
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1265 = add nuw nsw i64 %polly.indvar257, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %polly.loop_cond259.not.not = icmp slt i64 %polly.indvar257, %132
  br i1 %polly.loop_cond259.not.not, label %polly.loop_header253, label %polly.loop_exit255

polly.loop_header267:                             ; preds = %polly.loop_header267.preheader, %polly.loop_exit276
  %polly.indvar270 = phi i64 [ %polly.indvar_next271, %polly.loop_exit276 ], [ 0, %polly.loop_header267.preheader ]
  %polly.access.mul.Packed_MemRef_call1289 = mul nuw nsw i64 %polly.indvar270, 1200
  br label %polly.loop_header274

polly.loop_exit276:                               ; preds = %polly.loop_exit284
  %polly.indvar_next271 = add nuw nsw i64 %polly.indvar270, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next271, 50
  br i1 %exitcond1111.not, label %polly.loop_exit269, label %polly.loop_header267

polly.loop_header274:                             ; preds = %polly.loop_header267, %polly.loop_exit284
  %indvar1417 = phi i64 [ 0, %polly.loop_header267 ], [ %indvar.next1418, %polly.loop_exit284 ]
  %indvars.iv1108 = phi i64 [ %123, %polly.loop_header267 ], [ %indvars.iv.next1109, %polly.loop_exit284 ]
  %polly.indvar278 = phi i64 [ %139, %polly.loop_header267 ], [ %polly.indvar_next279, %polly.loop_exit284 ]
  %145 = add i64 %122, %indvar1417
  %smin1419 = call i64 @llvm.smin.i64(i64 %145, i64 49)
  %146 = add nsw i64 %smin1419, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 49)
  %147 = add nsw i64 %polly.indvar278, %125
  %polly.loop_guard2851207 = icmp sgt i64 %147, -1
  br i1 %polly.loop_guard2851207, label %polly.loop_header282.preheader, label %polly.loop_exit284

polly.loop_header282.preheader:                   ; preds = %polly.loop_header274
  %148 = add nsw i64 %polly.indvar278, %124
  %polly.access.add.Packed_MemRef_call2294 = add nsw i64 %147, %polly.access.mul.Packed_MemRef_call1289
  %polly.access.Packed_MemRef_call2295 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2294
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call2295, align 8
  %polly.access.Packed_MemRef_call1303 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2294
  %_p_scalar_304 = load double, double* %polly.access.Packed_MemRef_call1303, align 8
  %149 = mul i64 %148, 9600
  %min.iters.check1420 = icmp ult i64 %146, 4
  br i1 %min.iters.check1420, label %polly.loop_header282.preheader1435, label %vector.ph1421

vector.ph1421:                                    ; preds = %polly.loop_header282.preheader
  %n.vec1423 = and i64 %146, -4
  %broadcast.splatinsert1429 = insertelement <4 x double> poison, double %_p_scalar_296, i32 0
  %broadcast.splat1430 = shufflevector <4 x double> %broadcast.splatinsert1429, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1432 = insertelement <4 x double> poison, double %_p_scalar_304, i32 0
  %broadcast.splat1433 = shufflevector <4 x double> %broadcast.splatinsert1432, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1413

vector.body1413:                                  ; preds = %vector.body1413, %vector.ph1421
  %index1424 = phi i64 [ 0, %vector.ph1421 ], [ %index.next1425, %vector.body1413 ]
  %150 = add nuw nsw i64 %index1424, %111
  %151 = add nuw nsw i64 %index1424, %polly.access.mul.Packed_MemRef_call1289
  %152 = getelementptr double, double* %Packed_MemRef_call1, i64 %151
  %153 = bitcast double* %152 to <4 x double>*
  %wide.load1428 = load <4 x double>, <4 x double>* %153, align 8
  %154 = fmul fast <4 x double> %broadcast.splat1430, %wide.load1428
  %155 = getelementptr double, double* %Packed_MemRef_call2, i64 %151
  %156 = bitcast double* %155 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %156, align 8
  %157 = fmul fast <4 x double> %broadcast.splat1433, %wide.load1431
  %158 = shl i64 %150, 3
  %159 = add i64 %158, %149
  %160 = getelementptr i8, i8* %call, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  %wide.load1434 = load <4 x double>, <4 x double>* %161, align 8, !alias.scope !71, !noalias !73
  %162 = fadd fast <4 x double> %157, %154
  %163 = fmul fast <4 x double> %162, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %164 = fadd fast <4 x double> %163, %wide.load1434
  %165 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %164, <4 x double>* %165, align 8, !alias.scope !71, !noalias !73
  %index.next1425 = add i64 %index1424, 4
  %166 = icmp eq i64 %index.next1425, %n.vec1423
  br i1 %166, label %middle.block1411, label %vector.body1413, !llvm.loop !83

middle.block1411:                                 ; preds = %vector.body1413
  %cmp.n1427 = icmp eq i64 %146, %n.vec1423
  br i1 %cmp.n1427, label %polly.loop_exit284, label %polly.loop_header282.preheader1435

polly.loop_header282.preheader1435:               ; preds = %polly.loop_header282.preheader, %middle.block1411
  %polly.indvar286.ph = phi i64 [ 0, %polly.loop_header282.preheader ], [ %n.vec1423, %middle.block1411 ]
  br label %polly.loop_header282

polly.loop_exit284:                               ; preds = %polly.loop_header282, %middle.block1411, %polly.loop_header274
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %polly.loop_cond280.not.not = icmp slt i64 %polly.indvar278, %143
  %indvars.iv.next1109 = add i64 %indvars.iv1108, 1
  %indvar.next1418 = add i64 %indvar1417, 1
  br i1 %polly.loop_cond280.not.not, label %polly.loop_header274, label %polly.loop_exit276

polly.loop_header282:                             ; preds = %polly.loop_header282.preheader1435, %polly.loop_header282
  %polly.indvar286 = phi i64 [ %polly.indvar_next287, %polly.loop_header282 ], [ %polly.indvar286.ph, %polly.loop_header282.preheader1435 ]
  %167 = add nuw nsw i64 %polly.indvar286, %111
  %polly.access.add.Packed_MemRef_call1290 = add nuw nsw i64 %polly.indvar286, %polly.access.mul.Packed_MemRef_call1289
  %polly.access.Packed_MemRef_call1291 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call1291, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %polly.access.Packed_MemRef_call2299 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1290
  %_p_scalar_300 = load double, double* %polly.access.Packed_MemRef_call2299, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_304, %_p_scalar_300
  %168 = shl i64 %167, 3
  %169 = add i64 %168, %149
  %scevgep305 = getelementptr i8, i8* %call, i64 %169
  %scevgep305306 = bitcast i8* %scevgep305 to double*
  %_p_scalar_307 = load double, double* %scevgep305306, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_307
  store double %p_add42.i118, double* %scevgep305306, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next287 = add nuw nsw i64 %polly.indvar286, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar286, %smin
  br i1 %exitcond1110.not, label %polly.loop_exit284, label %polly.loop_header282, !llvm.loop !84

polly.start310:                                   ; preds = %kernel_syr2k.exit
  %malloccall312 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall314 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header398

polly.exiting311:                                 ; preds = %polly.loop_exit422
  tail call void @free(i8* %malloccall312)
  tail call void @free(i8* %malloccall314)
  br label %kernel_syr2k.exit90

polly.loop_header398:                             ; preds = %polly.loop_exit406, %polly.start310
  %indvar1350 = phi i64 [ %indvar.next1351, %polly.loop_exit406 ], [ 0, %polly.start310 ]
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit406 ], [ 1, %polly.start310 ]
  %170 = add i64 %indvar1350, 1
  %171 = mul nuw nsw i64 %polly.indvar401, 9600
  %scevgep410 = getelementptr i8, i8* %call, i64 %171
  %min.iters.check1352 = icmp ult i64 %170, 4
  br i1 %min.iters.check1352, label %polly.loop_header404.preheader, label %vector.ph1353

vector.ph1353:                                    ; preds = %polly.loop_header398
  %n.vec1355 = and i64 %170, -4
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1357, %vector.body1349 ]
  %172 = shl nuw nsw i64 %index1356, 3
  %173 = getelementptr i8, i8* %scevgep410, i64 %172
  %174 = bitcast i8* %173 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %174, align 8, !alias.scope !85, !noalias !87
  %175 = fmul fast <4 x double> %wide.load1360, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %176 = bitcast i8* %173 to <4 x double>*
  store <4 x double> %175, <4 x double>* %176, align 8, !alias.scope !85, !noalias !87
  %index.next1357 = add i64 %index1356, 4
  %177 = icmp eq i64 %index.next1357, %n.vec1355
  br i1 %177, label %middle.block1347, label %vector.body1349, !llvm.loop !92

middle.block1347:                                 ; preds = %vector.body1349
  %cmp.n1359 = icmp eq i64 %170, %n.vec1355
  br i1 %cmp.n1359, label %polly.loop_exit406, label %polly.loop_header404.preheader

polly.loop_header404.preheader:                   ; preds = %polly.loop_header398, %middle.block1347
  %polly.indvar407.ph = phi i64 [ 0, %polly.loop_header398 ], [ %n.vec1355, %middle.block1347 ]
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_header404, %middle.block1347
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar_next402, 1200
  %indvar.next1351 = add i64 %indvar1350, 1
  br i1 %exitcond1142.not, label %polly.loop_header414.preheader, label %polly.loop_header398

polly.loop_header414.preheader:                   ; preds = %polly.loop_exit406
  %Packed_MemRef_call1313 = bitcast i8* %malloccall312 to double*
  %Packed_MemRef_call2315 = bitcast i8* %malloccall314 to double*
  br label %polly.loop_header414

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_header404
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_header404 ], [ %polly.indvar407.ph, %polly.loop_header404.preheader ]
  %178 = shl nuw nsw i64 %polly.indvar407, 3
  %scevgep411 = getelementptr i8, i8* %scevgep410, i64 %178
  %scevgep411412 = bitcast i8* %scevgep411 to double*
  %_p_scalar_413 = load double, double* %scevgep411412, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_413, 1.200000e+00
  store double %p_mul.i57, double* %scevgep411412, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next408, %polly.indvar401
  br i1 %exitcond1141.not, label %polly.loop_exit406, label %polly.loop_header404, !llvm.loop !93

polly.loop_header414:                             ; preds = %polly.loop_header414.preheader, %polly.loop_exit422
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit422 ], [ 0, %polly.loop_header414.preheader ]
  %179 = mul nuw nsw i64 %polly.indvar417, 50
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit446
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next418, 20
  br i1 %exitcond1140.not, label %polly.exiting311, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit446, %polly.loop_header414
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %polly.loop_exit446 ], [ 47, %polly.loop_header414 ]
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit446 ], [ 1200, %polly.loop_header414 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %180 = mul nsw i64 %polly.indvar423, -46
  %181 = mul nuw nsw i64 %polly.indvar423, 23
  %182 = add nuw i64 %181, 47
  %183 = udiv i64 %182, 48
  %184 = mul nuw nsw i64 %183, 96
  %185 = add i64 %180, %184
  %186 = mul nuw nsw i64 %polly.indvar423, 46
  %187 = sub nsw i64 %186, %184
  %188 = udiv i64 %indvars.iv1125, 48
  %189 = mul nuw nsw i64 %188, 96
  %190 = add i64 %indvars.iv1123, %189
  %191 = sub nsw i64 %indvars.iv1130, %189
  %192 = mul nsw i64 %polly.indvar423, -50
  %193 = mul nuw nsw i64 %polly.indvar423, 50
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit434
  %194 = add nsw i64 %192, 1199
  %195 = mul nuw nsw i64 %polly.indvar423, 23
  %196 = add nuw nsw i64 %195, 47
  %pexp.p_div_q442 = udiv i64 %196, 48
  %197 = sub nsw i64 %polly.indvar423, %pexp.p_div_q442
  %polly.loop_guard447 = icmp slt i64 %197, 13
  br i1 %polly.loop_guard447, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_exit446:                               ; preds = %polly.loop_exit486, %polly.loop_exit428
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -50
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, -46
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 23
  %indvars.iv.next1131 = add nuw nsw i64 %indvars.iv1130, 46
  %exitcond1139.not = icmp eq i64 %polly.indvar_next424, 24
  br i1 %exitcond1139.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit434, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit434 ]
  %198 = add nuw nsw i64 %polly.indvar429, %179
  %polly.access.mul.Packed_MemRef_call2315 = mul nuw nsw i64 %polly.indvar429, 1200
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_header432
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next430, 50
  br i1 %exitcond1119.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_header432, %polly.loop_header426
  %polly.indvar435 = phi i64 [ 0, %polly.loop_header426 ], [ %polly.indvar_next436, %polly.loop_header432 ]
  %199 = add nuw nsw i64 %polly.indvar435, %193
  %polly.access.mul.call2439 = mul nuw nsw i64 %199, 1000
  %polly.access.add.call2440 = add nuw nsw i64 %198, %polly.access.mul.call2439
  %polly.access.call2441 = getelementptr double, double* %polly.access.cast.call2756, i64 %polly.access.add.call2440
  %polly.access.call2441.load = load double, double* %polly.access.call2441, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2315 = add nuw nsw i64 %polly.indvar435, %polly.access.mul.Packed_MemRef_call2315
  %polly.access.Packed_MemRef_call2315 = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call2315
  store double %polly.access.call2441.load, double* %polly.access.Packed_MemRef_call2315, align 8
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next436, %indvars.iv1116
  br i1 %exitcond1118.not, label %polly.loop_exit434, label %polly.loop_header432

polly.loop_header444:                             ; preds = %polly.loop_exit428, %polly.loop_exit486
  %indvar1364 = phi i64 [ %indvar.next1365, %polly.loop_exit486 ], [ 0, %polly.loop_exit428 ]
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit486 ], [ %191, %polly.loop_exit428 ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit486 ], [ %190, %polly.loop_exit428 ]
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit486 ], [ %197, %polly.loop_exit428 ]
  %200 = mul nsw i64 %indvar1364, -96
  %201 = add i64 %185, %200
  %smax1366 = call i64 @llvm.smax.i64(i64 %201, i64 0)
  %202 = mul nuw nsw i64 %indvar1364, 96
  %203 = add i64 %187, %202
  %204 = add i64 %smax1366, %203
  %smax1129 = call i64 @llvm.smax.i64(i64 %indvars.iv1127, i64 0)
  %205 = add i64 %smax1129, %indvars.iv1132
  %206 = mul nsw i64 %polly.indvar448, 96
  %207 = add nsw i64 %206, %192
  %208 = add nsw i64 %207, -1
  %.inv948 = icmp sgt i64 %207, 49
  %209 = select i1 %.inv948, i64 49, i64 %208
  %polly.loop_guard461 = icmp sgt i64 %209, -1
  %210 = icmp sgt i64 %207, 0
  %211 = select i1 %210, i64 %207, i64 0
  %212 = add nsw i64 %207, 95
  %213 = icmp slt i64 %194, %212
  %214 = select i1 %213, i64 %194, i64 %212
  %polly.loop_guard473.not = icmp sgt i64 %211, %214
  br i1 %polly.loop_guard461, label %polly.loop_header451.us, label %polly.loop_header444.split

polly.loop_header451.us:                          ; preds = %polly.loop_header444, %polly.loop_exit472.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_exit472.us ], [ 0, %polly.loop_header444 ]
  %215 = add nuw nsw i64 %polly.indvar454.us, %179
  %polly.access.mul.Packed_MemRef_call1313.us = mul nuw nsw i64 %polly.indvar454.us, 1200
  br label %polly.loop_header458.us

polly.loop_header458.us:                          ; preds = %polly.loop_header451.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header451.us ]
  %216 = add nuw nsw i64 %polly.indvar462.us, %193
  %polly.access.mul.call1466.us = mul nuw nsw i64 %216, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %215, %polly.access.mul.call1466.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1313.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1313.us
  %polly.access.Packed_MemRef_call1313.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1313.us, align 8
  %polly.indvar_next463.us = add nuw i64 %polly.indvar462.us, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar462.us, %209
  br i1 %exitcond1121.not, label %polly.loop_exit460.loopexit.us, label %polly.loop_header458.us

polly.loop_header470.us:                          ; preds = %polly.loop_exit460.loopexit.us, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ %211, %polly.loop_exit460.loopexit.us ]
  %217 = add nuw nsw i64 %polly.indvar474.us, %193
  %polly.access.mul.call1478.us = mul nsw i64 %217, 1000
  %polly.access.add.call1479.us = add nuw nsw i64 %215, %polly.access.mul.call1478.us
  %polly.access.call1480.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1479.us
  %polly.access.call1480.load.us = load double, double* %polly.access.call1480.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1313482.us = add nuw nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1313.us
  %polly.access.Packed_MemRef_call1313483.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313482.us
  store double %polly.access.call1480.load.us, double* %polly.access.Packed_MemRef_call1313483.us, align 8
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %polly.loop_cond476.not.not.us = icmp slt i64 %polly.indvar474.us, %214
  br i1 %polly.loop_cond476.not.not.us, label %polly.loop_header470.us, label %polly.loop_exit472.us

polly.loop_exit472.us:                            ; preds = %polly.loop_header470.us, %polly.loop_exit460.loopexit.us
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next455.us, 50
  br i1 %exitcond1122.not, label %polly.loop_header484.preheader, label %polly.loop_header451.us

polly.loop_exit460.loopexit.us:                   ; preds = %polly.loop_header458.us
  br i1 %polly.loop_guard473.not, label %polly.loop_exit472.us, label %polly.loop_header470.us

polly.loop_header444.split:                       ; preds = %polly.loop_header444
  br i1 %polly.loop_guard473.not, label %polly.loop_header484.preheader, label %polly.loop_header451

polly.loop_exit486:                               ; preds = %polly.loop_exit493, %polly.loop_header484.preheader
  %polly.indvar_next449 = add nsw i64 %polly.indvar448, 1
  %polly.loop_cond450 = icmp slt i64 %polly.indvar448, 12
  %indvars.iv.next1128 = add i64 %indvars.iv1127, -96
  %indvars.iv.next1133 = add i64 %indvars.iv1132, 96
  %indvar.next1365 = add i64 %indvar1364, 1
  br i1 %polly.loop_cond450, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header451:                             ; preds = %polly.loop_header444.split, %polly.loop_exit472
  %polly.indvar454 = phi i64 [ %polly.indvar_next455, %polly.loop_exit472 ], [ 0, %polly.loop_header444.split ]
  %218 = add nuw nsw i64 %polly.indvar454, %179
  %polly.access.mul.Packed_MemRef_call1313481 = mul nuw nsw i64 %polly.indvar454, 1200
  br label %polly.loop_header470

polly.loop_exit472:                               ; preds = %polly.loop_header470
  %polly.indvar_next455 = add nuw nsw i64 %polly.indvar454, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next455, 50
  br i1 %exitcond1120.not, label %polly.loop_header484.preheader, label %polly.loop_header451

polly.loop_header484.preheader:                   ; preds = %polly.loop_exit472, %polly.loop_exit472.us, %polly.loop_header444.split
  %219 = sub nsw i64 %193, %206
  %220 = icmp sgt i64 %219, 0
  %221 = select i1 %220, i64 %219, i64 0
  %222 = mul nsw i64 %polly.indvar448, -96
  %223 = icmp slt i64 %222, -1104
  %224 = select i1 %223, i64 %222, i64 -1104
  %225 = add nsw i64 %224, 1199
  %polly.loop_guard494.not = icmp sgt i64 %221, %225
  br i1 %polly.loop_guard494.not, label %polly.loop_exit486, label %polly.loop_header484

polly.loop_header470:                             ; preds = %polly.loop_header451, %polly.loop_header470
  %polly.indvar474 = phi i64 [ %polly.indvar_next475, %polly.loop_header470 ], [ %211, %polly.loop_header451 ]
  %226 = add nuw nsw i64 %polly.indvar474, %193
  %polly.access.mul.call1478 = mul nsw i64 %226, 1000
  %polly.access.add.call1479 = add nuw nsw i64 %218, %polly.access.mul.call1478
  %polly.access.call1480 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1479
  %polly.access.call1480.load = load double, double* %polly.access.call1480, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1313482 = add nuw nsw i64 %polly.indvar474, %polly.access.mul.Packed_MemRef_call1313481
  %polly.access.Packed_MemRef_call1313483 = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313482
  store double %polly.access.call1480.load, double* %polly.access.Packed_MemRef_call1313483, align 8
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %polly.loop_cond476.not.not = icmp slt i64 %polly.indvar474, %214
  br i1 %polly.loop_cond476.not.not, label %polly.loop_header470, label %polly.loop_exit472

polly.loop_header484:                             ; preds = %polly.loop_header484.preheader, %polly.loop_exit493
  %polly.indvar487 = phi i64 [ %polly.indvar_next488, %polly.loop_exit493 ], [ 0, %polly.loop_header484.preheader ]
  %polly.access.mul.Packed_MemRef_call1313506 = mul nuw nsw i64 %polly.indvar487, 1200
  br label %polly.loop_header491

polly.loop_exit493:                               ; preds = %polly.loop_exit501
  %polly.indvar_next488 = add nuw nsw i64 %polly.indvar487, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar_next488, 50
  br i1 %exitcond1138.not, label %polly.loop_exit486, label %polly.loop_header484

polly.loop_header491:                             ; preds = %polly.loop_header484, %polly.loop_exit501
  %indvar1367 = phi i64 [ 0, %polly.loop_header484 ], [ %indvar.next1368, %polly.loop_exit501 ]
  %indvars.iv1134 = phi i64 [ %205, %polly.loop_header484 ], [ %indvars.iv.next1135, %polly.loop_exit501 ]
  %polly.indvar495 = phi i64 [ %221, %polly.loop_header484 ], [ %polly.indvar_next496, %polly.loop_exit501 ]
  %227 = add i64 %204, %indvar1367
  %smin1369 = call i64 @llvm.smin.i64(i64 %227, i64 49)
  %228 = add nsw i64 %smin1369, 1
  %smin1136 = call i64 @llvm.smin.i64(i64 %indvars.iv1134, i64 49)
  %229 = add nsw i64 %polly.indvar495, %207
  %polly.loop_guard5021208 = icmp sgt i64 %229, -1
  br i1 %polly.loop_guard5021208, label %polly.loop_header499.preheader, label %polly.loop_exit501

polly.loop_header499.preheader:                   ; preds = %polly.loop_header491
  %230 = add nsw i64 %polly.indvar495, %206
  %polly.access.add.Packed_MemRef_call2315511 = add nsw i64 %229, %polly.access.mul.Packed_MemRef_call1313506
  %polly.access.Packed_MemRef_call2315512 = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call2315511
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2315512, align 8
  %polly.access.Packed_MemRef_call1313520 = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call2315511
  %_p_scalar_521 = load double, double* %polly.access.Packed_MemRef_call1313520, align 8
  %231 = mul i64 %230, 9600
  %min.iters.check1370 = icmp ult i64 %228, 4
  br i1 %min.iters.check1370, label %polly.loop_header499.preheader1439, label %vector.ph1371

vector.ph1371:                                    ; preds = %polly.loop_header499.preheader
  %n.vec1373 = and i64 %228, -4
  %broadcast.splatinsert1379 = insertelement <4 x double> poison, double %_p_scalar_513, i32 0
  %broadcast.splat1380 = shufflevector <4 x double> %broadcast.splatinsert1379, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1382 = insertelement <4 x double> poison, double %_p_scalar_521, i32 0
  %broadcast.splat1383 = shufflevector <4 x double> %broadcast.splatinsert1382, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1363

vector.body1363:                                  ; preds = %vector.body1363, %vector.ph1371
  %index1374 = phi i64 [ 0, %vector.ph1371 ], [ %index.next1375, %vector.body1363 ]
  %232 = add nuw nsw i64 %index1374, %193
  %233 = add nuw nsw i64 %index1374, %polly.access.mul.Packed_MemRef_call1313506
  %234 = getelementptr double, double* %Packed_MemRef_call1313, i64 %233
  %235 = bitcast double* %234 to <4 x double>*
  %wide.load1378 = load <4 x double>, <4 x double>* %235, align 8
  %236 = fmul fast <4 x double> %broadcast.splat1380, %wide.load1378
  %237 = getelementptr double, double* %Packed_MemRef_call2315, i64 %233
  %238 = bitcast double* %237 to <4 x double>*
  %wide.load1381 = load <4 x double>, <4 x double>* %238, align 8
  %239 = fmul fast <4 x double> %broadcast.splat1383, %wide.load1381
  %240 = shl i64 %232, 3
  %241 = add i64 %240, %231
  %242 = getelementptr i8, i8* %call, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  %wide.load1384 = load <4 x double>, <4 x double>* %243, align 8, !alias.scope !85, !noalias !87
  %244 = fadd fast <4 x double> %239, %236
  %245 = fmul fast <4 x double> %244, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %246 = fadd fast <4 x double> %245, %wide.load1384
  %247 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %246, <4 x double>* %247, align 8, !alias.scope !85, !noalias !87
  %index.next1375 = add i64 %index1374, 4
  %248 = icmp eq i64 %index.next1375, %n.vec1373
  br i1 %248, label %middle.block1361, label %vector.body1363, !llvm.loop !96

middle.block1361:                                 ; preds = %vector.body1363
  %cmp.n1377 = icmp eq i64 %228, %n.vec1373
  br i1 %cmp.n1377, label %polly.loop_exit501, label %polly.loop_header499.preheader1439

polly.loop_header499.preheader1439:               ; preds = %polly.loop_header499.preheader, %middle.block1361
  %polly.indvar503.ph = phi i64 [ 0, %polly.loop_header499.preheader ], [ %n.vec1373, %middle.block1361 ]
  br label %polly.loop_header499

polly.loop_exit501:                               ; preds = %polly.loop_header499, %middle.block1361, %polly.loop_header491
  %polly.indvar_next496 = add nuw nsw i64 %polly.indvar495, 1
  %polly.loop_cond497.not.not = icmp slt i64 %polly.indvar495, %225
  %indvars.iv.next1135 = add i64 %indvars.iv1134, 1
  %indvar.next1368 = add i64 %indvar1367, 1
  br i1 %polly.loop_cond497.not.not, label %polly.loop_header491, label %polly.loop_exit493

polly.loop_header499:                             ; preds = %polly.loop_header499.preheader1439, %polly.loop_header499
  %polly.indvar503 = phi i64 [ %polly.indvar_next504, %polly.loop_header499 ], [ %polly.indvar503.ph, %polly.loop_header499.preheader1439 ]
  %249 = add nuw nsw i64 %polly.indvar503, %193
  %polly.access.add.Packed_MemRef_call1313507 = add nuw nsw i64 %polly.indvar503, %polly.access.mul.Packed_MemRef_call1313506
  %polly.access.Packed_MemRef_call1313508 = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313507
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call1313508, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_513, %_p_scalar_509
  %polly.access.Packed_MemRef_call2315516 = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call1313507
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call2315516, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_521, %_p_scalar_517
  %250 = shl i64 %249, 3
  %251 = add i64 %250, %231
  %scevgep522 = getelementptr i8, i8* %call, i64 %251
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_524
  store double %p_add42.i79, double* %scevgep522523, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next504 = add nuw nsw i64 %polly.indvar503, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar503, %smin1136
  br i1 %exitcond1137.not, label %polly.loop_exit501, label %polly.loop_header499, !llvm.loop !97

polly.start527:                                   ; preds = %init_array.exit
  %malloccall529 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall531 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header615

polly.exiting528:                                 ; preds = %polly.loop_exit639
  tail call void @free(i8* %malloccall529)
  tail call void @free(i8* %malloccall531)
  br label %kernel_syr2k.exit

polly.loop_header615:                             ; preds = %polly.loop_exit623, %polly.start527
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit623 ], [ 0, %polly.start527 ]
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 1, %polly.start527 ]
  %252 = add i64 %indvar, 1
  %253 = mul nuw nsw i64 %polly.indvar618, 9600
  %scevgep627 = getelementptr i8, i8* %call, i64 %253
  %min.iters.check1302 = icmp ult i64 %252, 4
  br i1 %min.iters.check1302, label %polly.loop_header621.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %polly.loop_header615
  %n.vec1305 = and i64 %252, -4
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1301 ]
  %254 = shl nuw nsw i64 %index1306, 3
  %255 = getelementptr i8, i8* %scevgep627, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %256, align 8, !alias.scope !98, !noalias !100
  %257 = fmul fast <4 x double> %wide.load1310, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %258 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %257, <4 x double>* %258, align 8, !alias.scope !98, !noalias !100
  %index.next1307 = add i64 %index1306, 4
  %259 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %259, label %middle.block1299, label %vector.body1301, !llvm.loop !105

middle.block1299:                                 ; preds = %vector.body1301
  %cmp.n1309 = icmp eq i64 %252, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit623, label %polly.loop_header621.preheader

polly.loop_header621.preheader:                   ; preds = %polly.loop_header615, %middle.block1299
  %polly.indvar624.ph = phi i64 [ 0, %polly.loop_header615 ], [ %n.vec1305, %middle.block1299 ]
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621, %middle.block1299
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar_next619, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1169.not, label %polly.loop_header631.preheader, label %polly.loop_header615

polly.loop_header631.preheader:                   ; preds = %polly.loop_exit623
  %Packed_MemRef_call1530 = bitcast i8* %malloccall529 to double*
  %Packed_MemRef_call2532 = bitcast i8* %malloccall531 to double*
  br label %polly.loop_header631

polly.loop_header621:                             ; preds = %polly.loop_header621.preheader, %polly.loop_header621
  %polly.indvar624 = phi i64 [ %polly.indvar_next625, %polly.loop_header621 ], [ %polly.indvar624.ph, %polly.loop_header621.preheader ]
  %260 = shl nuw nsw i64 %polly.indvar624, 3
  %scevgep628 = getelementptr i8, i8* %scevgep627, i64 %260
  %scevgep628629 = bitcast i8* %scevgep628 to double*
  %_p_scalar_630 = load double, double* %scevgep628629, align 8, !alias.scope !98, !noalias !100
  %p_mul.i = fmul fast double %_p_scalar_630, 1.200000e+00
  store double %p_mul.i, double* %scevgep628629, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1168.not = icmp eq i64 %polly.indvar_next625, %polly.indvar618
  br i1 %exitcond1168.not, label %polly.loop_exit623, label %polly.loop_header621, !llvm.loop !106

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit639
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %261 = mul nuw nsw i64 %polly.indvar634, 50
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit663
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar_next635, 20
  br i1 %exitcond1167.not, label %polly.exiting528, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit663, %polly.loop_header631
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %indvars.iv1152 = phi i64 [ %indvars.iv.next1153, %polly.loop_exit663 ], [ 47, %polly.loop_header631 ]
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %polly.loop_exit663 ], [ 1200, %polly.loop_header631 ]
  %polly.indvar640 = phi i64 [ %polly.indvar_next641, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %262 = mul nsw i64 %polly.indvar640, -46
  %263 = mul nuw nsw i64 %polly.indvar640, 23
  %264 = add nuw i64 %263, 47
  %265 = udiv i64 %264, 48
  %266 = mul nuw nsw i64 %265, 96
  %267 = add i64 %262, %266
  %268 = mul nuw nsw i64 %polly.indvar640, 46
  %269 = sub nsw i64 %268, %266
  %270 = udiv i64 %indvars.iv1152, 48
  %271 = mul nuw nsw i64 %270, 96
  %272 = add i64 %indvars.iv1150, %271
  %273 = sub nsw i64 %indvars.iv1157, %271
  %274 = mul nsw i64 %polly.indvar640, -50
  %275 = mul nuw nsw i64 %polly.indvar640, 50
  br label %polly.loop_header643

polly.loop_exit645:                               ; preds = %polly.loop_exit651
  %276 = add nsw i64 %274, 1199
  %277 = mul nuw nsw i64 %polly.indvar640, 23
  %278 = add nuw nsw i64 %277, 47
  %pexp.p_div_q659 = udiv i64 %278, 48
  %279 = sub nsw i64 %polly.indvar640, %pexp.p_div_q659
  %polly.loop_guard664 = icmp slt i64 %279, 13
  br i1 %polly.loop_guard664, label %polly.loop_header661, label %polly.loop_exit663

polly.loop_exit663:                               ; preds = %polly.loop_exit703, %polly.loop_exit645
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %indvars.iv.next1144 = add nsw i64 %indvars.iv1143, -50
  %indvars.iv.next1151 = add nsw i64 %indvars.iv1150, -46
  %indvars.iv.next1153 = add nuw nsw i64 %indvars.iv1152, 23
  %indvars.iv.next1158 = add nuw nsw i64 %indvars.iv1157, 46
  %exitcond1166.not = icmp eq i64 %polly.indvar_next641, 24
  br i1 %exitcond1166.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header643:                             ; preds = %polly.loop_exit651, %polly.loop_header637
  %polly.indvar646 = phi i64 [ 0, %polly.loop_header637 ], [ %polly.indvar_next647, %polly.loop_exit651 ]
  %280 = add nuw nsw i64 %polly.indvar646, %261
  %polly.access.mul.Packed_MemRef_call2532 = mul nuw nsw i64 %polly.indvar646, 1200
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_header649
  %polly.indvar_next647 = add nuw nsw i64 %polly.indvar646, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar_next647, 50
  br i1 %exitcond1146.not, label %polly.loop_exit645, label %polly.loop_header643

polly.loop_header649:                             ; preds = %polly.loop_header649, %polly.loop_header643
  %polly.indvar652 = phi i64 [ 0, %polly.loop_header643 ], [ %polly.indvar_next653, %polly.loop_header649 ]
  %281 = add nuw nsw i64 %polly.indvar652, %275
  %polly.access.mul.call2656 = mul nuw nsw i64 %281, 1000
  %polly.access.add.call2657 = add nuw nsw i64 %280, %polly.access.mul.call2656
  %polly.access.call2658 = getelementptr double, double* %polly.access.cast.call2756, i64 %polly.access.add.call2657
  %polly.access.call2658.load = load double, double* %polly.access.call2658, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2532 = add nuw nsw i64 %polly.indvar652, %polly.access.mul.Packed_MemRef_call2532
  %polly.access.Packed_MemRef_call2532 = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call2532
  store double %polly.access.call2658.load, double* %polly.access.Packed_MemRef_call2532, align 8
  %polly.indvar_next653 = add nuw nsw i64 %polly.indvar652, 1
  %exitcond1145.not = icmp eq i64 %polly.indvar_next653, %indvars.iv1143
  br i1 %exitcond1145.not, label %polly.loop_exit651, label %polly.loop_header649

polly.loop_header661:                             ; preds = %polly.loop_exit645, %polly.loop_exit703
  %indvar1314 = phi i64 [ %indvar.next1315, %polly.loop_exit703 ], [ 0, %polly.loop_exit645 ]
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %polly.loop_exit703 ], [ %273, %polly.loop_exit645 ]
  %indvars.iv1154 = phi i64 [ %indvars.iv.next1155, %polly.loop_exit703 ], [ %272, %polly.loop_exit645 ]
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit703 ], [ %279, %polly.loop_exit645 ]
  %282 = mul nsw i64 %indvar1314, -96
  %283 = add i64 %267, %282
  %smax1316 = call i64 @llvm.smax.i64(i64 %283, i64 0)
  %284 = mul nuw nsw i64 %indvar1314, 96
  %285 = add i64 %269, %284
  %286 = add i64 %smax1316, %285
  %smax1156 = call i64 @llvm.smax.i64(i64 %indvars.iv1154, i64 0)
  %287 = add i64 %smax1156, %indvars.iv1159
  %288 = mul nsw i64 %polly.indvar665, 96
  %289 = add nsw i64 %288, %274
  %290 = add nsw i64 %289, -1
  %.inv949 = icmp sgt i64 %289, 49
  %291 = select i1 %.inv949, i64 49, i64 %290
  %polly.loop_guard678 = icmp sgt i64 %291, -1
  %292 = icmp sgt i64 %289, 0
  %293 = select i1 %292, i64 %289, i64 0
  %294 = add nsw i64 %289, 95
  %295 = icmp slt i64 %276, %294
  %296 = select i1 %295, i64 %276, i64 %294
  %polly.loop_guard690.not = icmp sgt i64 %293, %296
  br i1 %polly.loop_guard678, label %polly.loop_header668.us, label %polly.loop_header661.split

polly.loop_header668.us:                          ; preds = %polly.loop_header661, %polly.loop_exit689.us
  %polly.indvar671.us = phi i64 [ %polly.indvar_next672.us, %polly.loop_exit689.us ], [ 0, %polly.loop_header661 ]
  %297 = add nuw nsw i64 %polly.indvar671.us, %261
  %polly.access.mul.Packed_MemRef_call1530.us = mul nuw nsw i64 %polly.indvar671.us, 1200
  br label %polly.loop_header675.us

polly.loop_header675.us:                          ; preds = %polly.loop_header668.us, %polly.loop_header675.us
  %polly.indvar679.us = phi i64 [ %polly.indvar_next680.us, %polly.loop_header675.us ], [ 0, %polly.loop_header668.us ]
  %298 = add nuw nsw i64 %polly.indvar679.us, %275
  %polly.access.mul.call1683.us = mul nuw nsw i64 %298, 1000
  %polly.access.add.call1684.us = add nuw nsw i64 %297, %polly.access.mul.call1683.us
  %polly.access.call1685.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1684.us
  %polly.access.call1685.load.us = load double, double* %polly.access.call1685.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1530.us = add nuw nsw i64 %polly.indvar679.us, %polly.access.mul.Packed_MemRef_call1530.us
  %polly.access.Packed_MemRef_call1530.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530.us
  store double %polly.access.call1685.load.us, double* %polly.access.Packed_MemRef_call1530.us, align 8
  %polly.indvar_next680.us = add nuw i64 %polly.indvar679.us, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar679.us, %291
  br i1 %exitcond1148.not, label %polly.loop_exit677.loopexit.us, label %polly.loop_header675.us

polly.loop_header687.us:                          ; preds = %polly.loop_exit677.loopexit.us, %polly.loop_header687.us
  %polly.indvar691.us = phi i64 [ %polly.indvar_next692.us, %polly.loop_header687.us ], [ %293, %polly.loop_exit677.loopexit.us ]
  %299 = add nuw nsw i64 %polly.indvar691.us, %275
  %polly.access.mul.call1695.us = mul nsw i64 %299, 1000
  %polly.access.add.call1696.us = add nuw nsw i64 %297, %polly.access.mul.call1695.us
  %polly.access.call1697.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1696.us
  %polly.access.call1697.load.us = load double, double* %polly.access.call1697.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1530699.us = add nuw nsw i64 %polly.indvar691.us, %polly.access.mul.Packed_MemRef_call1530.us
  %polly.access.Packed_MemRef_call1530700.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530699.us
  store double %polly.access.call1697.load.us, double* %polly.access.Packed_MemRef_call1530700.us, align 8
  %polly.indvar_next692.us = add nuw nsw i64 %polly.indvar691.us, 1
  %polly.loop_cond693.not.not.us = icmp slt i64 %polly.indvar691.us, %296
  br i1 %polly.loop_cond693.not.not.us, label %polly.loop_header687.us, label %polly.loop_exit689.us

polly.loop_exit689.us:                            ; preds = %polly.loop_header687.us, %polly.loop_exit677.loopexit.us
  %polly.indvar_next672.us = add nuw nsw i64 %polly.indvar671.us, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar_next672.us, 50
  br i1 %exitcond1149.not, label %polly.loop_header701.preheader, label %polly.loop_header668.us

polly.loop_exit677.loopexit.us:                   ; preds = %polly.loop_header675.us
  br i1 %polly.loop_guard690.not, label %polly.loop_exit689.us, label %polly.loop_header687.us

polly.loop_header661.split:                       ; preds = %polly.loop_header661
  br i1 %polly.loop_guard690.not, label %polly.loop_header701.preheader, label %polly.loop_header668

polly.loop_exit703:                               ; preds = %polly.loop_exit710, %polly.loop_header701.preheader
  %polly.indvar_next666 = add nsw i64 %polly.indvar665, 1
  %polly.loop_cond667 = icmp slt i64 %polly.indvar665, 12
  %indvars.iv.next1155 = add i64 %indvars.iv1154, -96
  %indvars.iv.next1160 = add i64 %indvars.iv1159, 96
  %indvar.next1315 = add i64 %indvar1314, 1
  br i1 %polly.loop_cond667, label %polly.loop_header661, label %polly.loop_exit663

polly.loop_header668:                             ; preds = %polly.loop_header661.split, %polly.loop_exit689
  %polly.indvar671 = phi i64 [ %polly.indvar_next672, %polly.loop_exit689 ], [ 0, %polly.loop_header661.split ]
  %300 = add nuw nsw i64 %polly.indvar671, %261
  %polly.access.mul.Packed_MemRef_call1530698 = mul nuw nsw i64 %polly.indvar671, 1200
  br label %polly.loop_header687

polly.loop_exit689:                               ; preds = %polly.loop_header687
  %polly.indvar_next672 = add nuw nsw i64 %polly.indvar671, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next672, 50
  br i1 %exitcond1147.not, label %polly.loop_header701.preheader, label %polly.loop_header668

polly.loop_header701.preheader:                   ; preds = %polly.loop_exit689, %polly.loop_exit689.us, %polly.loop_header661.split
  %301 = sub nsw i64 %275, %288
  %302 = icmp sgt i64 %301, 0
  %303 = select i1 %302, i64 %301, i64 0
  %304 = mul nsw i64 %polly.indvar665, -96
  %305 = icmp slt i64 %304, -1104
  %306 = select i1 %305, i64 %304, i64 -1104
  %307 = add nsw i64 %306, 1199
  %polly.loop_guard711.not = icmp sgt i64 %303, %307
  br i1 %polly.loop_guard711.not, label %polly.loop_exit703, label %polly.loop_header701

polly.loop_header687:                             ; preds = %polly.loop_header668, %polly.loop_header687
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_header687 ], [ %293, %polly.loop_header668 ]
  %308 = add nuw nsw i64 %polly.indvar691, %275
  %polly.access.mul.call1695 = mul nsw i64 %308, 1000
  %polly.access.add.call1696 = add nuw nsw i64 %300, %polly.access.mul.call1695
  %polly.access.call1697 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1696
  %polly.access.call1697.load = load double, double* %polly.access.call1697, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1530699 = add nuw nsw i64 %polly.indvar691, %polly.access.mul.Packed_MemRef_call1530698
  %polly.access.Packed_MemRef_call1530700 = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530699
  store double %polly.access.call1697.load, double* %polly.access.Packed_MemRef_call1530700, align 8
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %polly.loop_cond693.not.not = icmp slt i64 %polly.indvar691, %296
  br i1 %polly.loop_cond693.not.not, label %polly.loop_header687, label %polly.loop_exit689

polly.loop_header701:                             ; preds = %polly.loop_header701.preheader, %polly.loop_exit710
  %polly.indvar704 = phi i64 [ %polly.indvar_next705, %polly.loop_exit710 ], [ 0, %polly.loop_header701.preheader ]
  %polly.access.mul.Packed_MemRef_call1530723 = mul nuw nsw i64 %polly.indvar704, 1200
  br label %polly.loop_header708

polly.loop_exit710:                               ; preds = %polly.loop_exit718
  %polly.indvar_next705 = add nuw nsw i64 %polly.indvar704, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar_next705, 50
  br i1 %exitcond1165.not, label %polly.loop_exit703, label %polly.loop_header701

polly.loop_header708:                             ; preds = %polly.loop_header701, %polly.loop_exit718
  %indvar1317 = phi i64 [ 0, %polly.loop_header701 ], [ %indvar.next1318, %polly.loop_exit718 ]
  %indvars.iv1161 = phi i64 [ %287, %polly.loop_header701 ], [ %indvars.iv.next1162, %polly.loop_exit718 ]
  %polly.indvar712 = phi i64 [ %303, %polly.loop_header701 ], [ %polly.indvar_next713, %polly.loop_exit718 ]
  %309 = add i64 %286, %indvar1317
  %smin1319 = call i64 @llvm.smin.i64(i64 %309, i64 49)
  %310 = add nsw i64 %smin1319, 1
  %smin1163 = call i64 @llvm.smin.i64(i64 %indvars.iv1161, i64 49)
  %311 = add nsw i64 %polly.indvar712, %289
  %polly.loop_guard7191209 = icmp sgt i64 %311, -1
  br i1 %polly.loop_guard7191209, label %polly.loop_header716.preheader, label %polly.loop_exit718

polly.loop_header716.preheader:                   ; preds = %polly.loop_header708
  %312 = add nsw i64 %polly.indvar712, %288
  %polly.access.add.Packed_MemRef_call2532728 = add nsw i64 %311, %polly.access.mul.Packed_MemRef_call1530723
  %polly.access.Packed_MemRef_call2532729 = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call2532728
  %_p_scalar_730 = load double, double* %polly.access.Packed_MemRef_call2532729, align 8
  %polly.access.Packed_MemRef_call1530737 = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call2532728
  %_p_scalar_738 = load double, double* %polly.access.Packed_MemRef_call1530737, align 8
  %313 = mul i64 %312, 9600
  %min.iters.check1320 = icmp ult i64 %310, 4
  br i1 %min.iters.check1320, label %polly.loop_header716.preheader1443, label %vector.ph1321

vector.ph1321:                                    ; preds = %polly.loop_header716.preheader
  %n.vec1323 = and i64 %310, -4
  %broadcast.splatinsert1329 = insertelement <4 x double> poison, double %_p_scalar_730, i32 0
  %broadcast.splat1330 = shufflevector <4 x double> %broadcast.splatinsert1329, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1332 = insertelement <4 x double> poison, double %_p_scalar_738, i32 0
  %broadcast.splat1333 = shufflevector <4 x double> %broadcast.splatinsert1332, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %vector.ph1321
  %index1324 = phi i64 [ 0, %vector.ph1321 ], [ %index.next1325, %vector.body1313 ]
  %314 = add nuw nsw i64 %index1324, %275
  %315 = add nuw nsw i64 %index1324, %polly.access.mul.Packed_MemRef_call1530723
  %316 = getelementptr double, double* %Packed_MemRef_call1530, i64 %315
  %317 = bitcast double* %316 to <4 x double>*
  %wide.load1328 = load <4 x double>, <4 x double>* %317, align 8
  %318 = fmul fast <4 x double> %broadcast.splat1330, %wide.load1328
  %319 = getelementptr double, double* %Packed_MemRef_call2532, i64 %315
  %320 = bitcast double* %319 to <4 x double>*
  %wide.load1331 = load <4 x double>, <4 x double>* %320, align 8
  %321 = fmul fast <4 x double> %broadcast.splat1333, %wide.load1331
  %322 = shl i64 %314, 3
  %323 = add i64 %322, %313
  %324 = getelementptr i8, i8* %call, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %325, align 8, !alias.scope !98, !noalias !100
  %326 = fadd fast <4 x double> %321, %318
  %327 = fmul fast <4 x double> %326, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %328 = fadd fast <4 x double> %327, %wide.load1334
  %329 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %328, <4 x double>* %329, align 8, !alias.scope !98, !noalias !100
  %index.next1325 = add i64 %index1324, 4
  %330 = icmp eq i64 %index.next1325, %n.vec1323
  br i1 %330, label %middle.block1311, label %vector.body1313, !llvm.loop !109

middle.block1311:                                 ; preds = %vector.body1313
  %cmp.n1327 = icmp eq i64 %310, %n.vec1323
  br i1 %cmp.n1327, label %polly.loop_exit718, label %polly.loop_header716.preheader1443

polly.loop_header716.preheader1443:               ; preds = %polly.loop_header716.preheader, %middle.block1311
  %polly.indvar720.ph = phi i64 [ 0, %polly.loop_header716.preheader ], [ %n.vec1323, %middle.block1311 ]
  br label %polly.loop_header716

polly.loop_exit718:                               ; preds = %polly.loop_header716, %middle.block1311, %polly.loop_header708
  %polly.indvar_next713 = add nuw nsw i64 %polly.indvar712, 1
  %polly.loop_cond714.not.not = icmp slt i64 %polly.indvar712, %307
  %indvars.iv.next1162 = add i64 %indvars.iv1161, 1
  %indvar.next1318 = add i64 %indvar1317, 1
  br i1 %polly.loop_cond714.not.not, label %polly.loop_header708, label %polly.loop_exit710

polly.loop_header716:                             ; preds = %polly.loop_header716.preheader1443, %polly.loop_header716
  %polly.indvar720 = phi i64 [ %polly.indvar_next721, %polly.loop_header716 ], [ %polly.indvar720.ph, %polly.loop_header716.preheader1443 ]
  %331 = add nuw nsw i64 %polly.indvar720, %275
  %polly.access.add.Packed_MemRef_call1530724 = add nuw nsw i64 %polly.indvar720, %polly.access.mul.Packed_MemRef_call1530723
  %polly.access.Packed_MemRef_call1530725 = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530724
  %_p_scalar_726 = load double, double* %polly.access.Packed_MemRef_call1530725, align 8
  %p_mul27.i = fmul fast double %_p_scalar_730, %_p_scalar_726
  %polly.access.Packed_MemRef_call2532733 = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call1530724
  %_p_scalar_734 = load double, double* %polly.access.Packed_MemRef_call2532733, align 8
  %p_mul37.i = fmul fast double %_p_scalar_738, %_p_scalar_734
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %313
  %scevgep739 = getelementptr i8, i8* %call, i64 %333
  %scevgep739740 = bitcast i8* %scevgep739 to double*
  %_p_scalar_741 = load double, double* %scevgep739740, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_741
  store double %p_add42.i, double* %scevgep739740, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next721 = add nuw nsw i64 %polly.indvar720, 1
  %exitcond1164.not = icmp eq i64 %polly.indvar720, %smin1163
  br i1 %exitcond1164.not, label %polly.loop_exit718, label %polly.loop_header716, !llvm.loop !110

polly.loop_header868:                             ; preds = %entry, %polly.loop_exit876
  %indvars.iv1194 = phi i64 [ %indvars.iv.next1195, %polly.loop_exit876 ], [ 0, %entry ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %entry ]
  %smin1196 = call i64 @llvm.smin.i64(i64 %indvars.iv1194, i64 -1168)
  %334 = shl nsw i64 %polly.indvar871, 5
  %335 = add nsw i64 %smin1196, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1195 = add nsw i64 %indvars.iv1194, -32
  %exitcond1199.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1199.not, label %polly.loop_header895, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %indvars.iv1190 = phi i64 [ %indvars.iv.next1191, %polly.loop_exit882 ], [ 0, %polly.loop_header868 ]
  %polly.indvar877 = phi i64 [ %polly.indvar_next878, %polly.loop_exit882 ], [ 0, %polly.loop_header868 ]
  %336 = mul nsw i64 %polly.indvar877, -32
  %smin1240 = call i64 @llvm.smin.i64(i64 %336, i64 -1168)
  %337 = add nsw i64 %smin1240, 1200
  %smin1192 = call i64 @llvm.smin.i64(i64 %indvars.iv1190, i64 -1168)
  %338 = shl nsw i64 %polly.indvar877, 5
  %339 = add nsw i64 %smin1192, 1199
  br label %polly.loop_header880

polly.loop_exit882:                               ; preds = %polly.loop_exit888
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %indvars.iv.next1191 = add nsw i64 %indvars.iv1190, -32
  %exitcond1198.not = icmp eq i64 %polly.indvar_next878, 38
  br i1 %exitcond1198.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_exit888, %polly.loop_header874
  %polly.indvar883 = phi i64 [ 0, %polly.loop_header874 ], [ %polly.indvar_next884, %polly.loop_exit888 ]
  %340 = add nuw nsw i64 %polly.indvar883, %334
  %341 = trunc i64 %340 to i32
  %342 = mul nuw nsw i64 %340, 9600
  %min.iters.check = icmp eq i64 %337, 0
  br i1 %min.iters.check, label %polly.loop_header886, label %vector.ph1241

vector.ph1241:                                    ; preds = %polly.loop_header880
  %broadcast.splatinsert1248 = insertelement <4 x i64> poison, i64 %338, i32 0
  %broadcast.splat1249 = shufflevector <4 x i64> %broadcast.splatinsert1248, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %341, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1241
  %index1242 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1243, %vector.body1239 ]
  %vec.ind1246 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1241 ], [ %vec.ind.next1247, %vector.body1239 ]
  %343 = add nuw nsw <4 x i64> %vec.ind1246, %broadcast.splat1249
  %344 = trunc <4 x i64> %343 to <4 x i32>
  %345 = mul <4 x i32> %broadcast.splat1251, %344
  %346 = add <4 x i32> %345, <i32 3, i32 3, i32 3, i32 3>
  %347 = urem <4 x i32> %346, <i32 1200, i32 1200, i32 1200, i32 1200>
  %348 = sitofp <4 x i32> %347 to <4 x double>
  %349 = fmul fast <4 x double> %348, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %350 = extractelement <4 x i64> %343, i32 0
  %351 = shl i64 %350, 3
  %352 = add nuw nsw i64 %351, %342
  %353 = getelementptr i8, i8* %call, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %349, <4 x double>* %354, align 8, !alias.scope !111, !noalias !113
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1247 = add <4 x i64> %vec.ind1246, <i64 4, i64 4, i64 4, i64 4>
  %355 = icmp eq i64 %index.next1243, %337
  br i1 %355, label %polly.loop_exit888, label %vector.body1239, !llvm.loop !116

polly.loop_exit888:                               ; preds = %vector.body1239, %polly.loop_header886
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1197.not = icmp eq i64 %polly.indvar883, %335
  br i1 %exitcond1197.not, label %polly.loop_exit882, label %polly.loop_header880

polly.loop_header886:                             ; preds = %polly.loop_header880, %polly.loop_header886
  %polly.indvar889 = phi i64 [ %polly.indvar_next890, %polly.loop_header886 ], [ 0, %polly.loop_header880 ]
  %356 = add nuw nsw i64 %polly.indvar889, %338
  %357 = trunc i64 %356 to i32
  %358 = mul i32 %357, %341
  %359 = add i32 %358, 3
  %360 = urem i32 %359, 1200
  %p_conv31.i = sitofp i32 %360 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %361 = shl i64 %356, 3
  %362 = add nuw nsw i64 %361, %342
  %scevgep892 = getelementptr i8, i8* %call, i64 %362
  %scevgep892893 = bitcast i8* %scevgep892 to double*
  store double %p_div33.i, double* %scevgep892893, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next890 = add nuw nsw i64 %polly.indvar889, 1
  %exitcond1193.not = icmp eq i64 %polly.indvar889, %339
  br i1 %exitcond1193.not, label %polly.loop_exit888, label %polly.loop_header886, !llvm.loop !117

polly.loop_header895:                             ; preds = %polly.loop_exit876, %polly.loop_exit903
  %indvars.iv1184 = phi i64 [ %indvars.iv.next1185, %polly.loop_exit903 ], [ 0, %polly.loop_exit876 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_exit876 ]
  %smin1186 = call i64 @llvm.smin.i64(i64 %indvars.iv1184, i64 -1168)
  %363 = shl nsw i64 %polly.indvar898, 5
  %364 = add nsw i64 %smin1186, 1199
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1185 = add nsw i64 %indvars.iv1184, -32
  %exitcond1189.not = icmp eq i64 %polly.indvar_next899, 38
  br i1 %exitcond1189.not, label %polly.loop_header921, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %indvars.iv1180 = phi i64 [ %indvars.iv.next1181, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %365 = mul nsw i64 %polly.indvar904, -32
  %smin1255 = call i64 @llvm.smin.i64(i64 %365, i64 -968)
  %366 = add nsw i64 %smin1255, 1000
  %smin1182 = call i64 @llvm.smin.i64(i64 %indvars.iv1180, i64 -968)
  %367 = shl nsw i64 %polly.indvar904, 5
  %368 = add nsw i64 %smin1182, 999
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1181 = add nsw i64 %indvars.iv1180, -32
  %exitcond1188.not = icmp eq i64 %polly.indvar_next905, 32
  br i1 %exitcond1188.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %polly.indvar910 = phi i64 [ 0, %polly.loop_header901 ], [ %polly.indvar_next911, %polly.loop_exit915 ]
  %369 = add nuw nsw i64 %polly.indvar910, %363
  %370 = trunc i64 %369 to i32
  %371 = mul nuw nsw i64 %369, 8000
  %min.iters.check1256 = icmp eq i64 %366, 0
  br i1 %min.iters.check1256, label %polly.loop_header913, label %vector.ph1257

vector.ph1257:                                    ; preds = %polly.loop_header907
  %broadcast.splatinsert1266 = insertelement <4 x i64> poison, i64 %367, i32 0
  %broadcast.splat1267 = shufflevector <4 x i64> %broadcast.splatinsert1266, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1254 ]
  %vec.ind1264 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1257 ], [ %vec.ind.next1265, %vector.body1254 ]
  %372 = add nuw nsw <4 x i64> %vec.ind1264, %broadcast.splat1267
  %373 = trunc <4 x i64> %372 to <4 x i32>
  %374 = mul <4 x i32> %broadcast.splat1269, %373
  %375 = add <4 x i32> %374, <i32 2, i32 2, i32 2, i32 2>
  %376 = urem <4 x i32> %375, <i32 1000, i32 1000, i32 1000, i32 1000>
  %377 = sitofp <4 x i32> %376 to <4 x double>
  %378 = fmul fast <4 x double> %377, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %379 = extractelement <4 x i64> %372, i32 0
  %380 = shl i64 %379, 3
  %381 = add nuw nsw i64 %380, %371
  %382 = getelementptr i8, i8* %call2, i64 %381
  %383 = bitcast i8* %382 to <4 x double>*
  store <4 x double> %378, <4 x double>* %383, align 8, !alias.scope !115, !noalias !118
  %index.next1261 = add i64 %index1260, 4
  %vec.ind.next1265 = add <4 x i64> %vec.ind1264, <i64 4, i64 4, i64 4, i64 4>
  %384 = icmp eq i64 %index.next1261, %366
  br i1 %384, label %polly.loop_exit915, label %vector.body1254, !llvm.loop !119

polly.loop_exit915:                               ; preds = %vector.body1254, %polly.loop_header913
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1187.not = icmp eq i64 %polly.indvar910, %364
  br i1 %exitcond1187.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_header907, %polly.loop_header913
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_header913 ], [ 0, %polly.loop_header907 ]
  %385 = add nuw nsw i64 %polly.indvar916, %367
  %386 = trunc i64 %385 to i32
  %387 = mul i32 %386, %370
  %388 = add i32 %387, 2
  %389 = urem i32 %388, 1000
  %p_conv10.i = sitofp i32 %389 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %390 = shl i64 %385, 3
  %391 = add nuw nsw i64 %390, %371
  %scevgep919 = getelementptr i8, i8* %call2, i64 %391
  %scevgep919920 = bitcast i8* %scevgep919 to double*
  store double %p_div12.i, double* %scevgep919920, align 8, !alias.scope !115, !noalias !118
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1183.not = icmp eq i64 %polly.indvar916, %368
  br i1 %exitcond1183.not, label %polly.loop_exit915, label %polly.loop_header913, !llvm.loop !120

polly.loop_header921:                             ; preds = %polly.loop_exit903, %polly.loop_exit929
  %indvars.iv1174 = phi i64 [ %indvars.iv.next1175, %polly.loop_exit929 ], [ 0, %polly.loop_exit903 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_exit903 ]
  %smin1176 = call i64 @llvm.smin.i64(i64 %indvars.iv1174, i64 -1168)
  %392 = shl nsw i64 %polly.indvar924, 5
  %393 = add nsw i64 %smin1176, 1199
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1175 = add nsw i64 %indvars.iv1174, -32
  %exitcond1179.not = icmp eq i64 %polly.indvar_next925, 38
  br i1 %exitcond1179.not, label %init_array.exit, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %indvars.iv1170 = phi i64 [ %indvars.iv.next1171, %polly.loop_exit935 ], [ 0, %polly.loop_header921 ]
  %polly.indvar930 = phi i64 [ %polly.indvar_next931, %polly.loop_exit935 ], [ 0, %polly.loop_header921 ]
  %394 = mul nsw i64 %polly.indvar930, -32
  %smin1273 = call i64 @llvm.smin.i64(i64 %394, i64 -968)
  %395 = add nsw i64 %smin1273, 1000
  %smin1172 = call i64 @llvm.smin.i64(i64 %indvars.iv1170, i64 -968)
  %396 = shl nsw i64 %polly.indvar930, 5
  %397 = add nsw i64 %smin1172, 999
  br label %polly.loop_header933

polly.loop_exit935:                               ; preds = %polly.loop_exit941
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %indvars.iv.next1171 = add nsw i64 %indvars.iv1170, -32
  %exitcond1178.not = icmp eq i64 %polly.indvar_next931, 32
  br i1 %exitcond1178.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_exit941, %polly.loop_header927
  %polly.indvar936 = phi i64 [ 0, %polly.loop_header927 ], [ %polly.indvar_next937, %polly.loop_exit941 ]
  %398 = add nuw nsw i64 %polly.indvar936, %392
  %399 = trunc i64 %398 to i32
  %400 = mul nuw nsw i64 %398, 8000
  %min.iters.check1274 = icmp eq i64 %395, 0
  br i1 %min.iters.check1274, label %polly.loop_header939, label %vector.ph1275

vector.ph1275:                                    ; preds = %polly.loop_header933
  %broadcast.splatinsert1284 = insertelement <4 x i64> poison, i64 %396, i32 0
  %broadcast.splat1285 = shufflevector <4 x i64> %broadcast.splatinsert1284, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %vector.ph1275
  %index1278 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1279, %vector.body1272 ]
  %vec.ind1282 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1275 ], [ %vec.ind.next1283, %vector.body1272 ]
  %401 = add nuw nsw <4 x i64> %vec.ind1282, %broadcast.splat1285
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat1287, %402
  %404 = add <4 x i32> %403, <i32 1, i32 1, i32 1, i32 1>
  %405 = urem <4 x i32> %404, <i32 1200, i32 1200, i32 1200, i32 1200>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %400
  %411 = getelementptr i8, i8* %call1, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !114, !noalias !121
  %index.next1279 = add i64 %index1278, 4
  %vec.ind.next1283 = add <4 x i64> %vec.ind1282, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next1279, %395
  br i1 %413, label %polly.loop_exit941, label %vector.body1272, !llvm.loop !122

polly.loop_exit941:                               ; preds = %vector.body1272, %polly.loop_header939
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar936, %393
  br i1 %exitcond1177.not, label %polly.loop_exit935, label %polly.loop_header933

polly.loop_header939:                             ; preds = %polly.loop_header933, %polly.loop_header939
  %polly.indvar942 = phi i64 [ %polly.indvar_next943, %polly.loop_header939 ], [ 0, %polly.loop_header933 ]
  %414 = add nuw nsw i64 %polly.indvar942, %396
  %415 = trunc i64 %414 to i32
  %416 = mul i32 %415, %399
  %417 = add i32 %416, 1
  %418 = urem i32 %417, 1200
  %p_conv.i = sitofp i32 %418 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %419 = shl i64 %414, 3
  %420 = add nuw nsw i64 %419, %400
  %scevgep946 = getelementptr i8, i8* %call1, i64 %420
  %scevgep946947 = bitcast i8* %scevgep946 to double*
  store double %p_div.i, double* %scevgep946947, align 8, !alias.scope !114, !noalias !121
  %polly.indvar_next943 = add nuw nsw i64 %polly.indvar942, 1
  %exitcond1173.not = icmp eq i64 %polly.indvar942, %397
  br i1 %exitcond1173.not, label %polly.loop_exit941, label %polly.loop_header939, !llvm.loop !123
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
!26 = !{!"llvm.loop.tile.size", i32 50}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !26, !35, !38}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !24, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !24, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !24, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !24, !47, !48, !49, !50, !51, !60}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 96}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !24, !53, !54, !55, !56, !57}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.interchange.followup_interchanged", !58}
!58 = distinct !{!58, !12, !24, !53, !43, !59, !45}
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
