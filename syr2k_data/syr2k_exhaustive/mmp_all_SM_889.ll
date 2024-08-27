; ModuleID = 'syr2k_exhaustive/mmp_all_SM_889.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_889.c"
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
  %scevgep1212 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1211 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1210 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1209 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1209, %scevgep1212
  %bound1 = icmp ult i8* %scevgep1211, %scevgep1210
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
  br i1 %exitcond18.not.i, label %vector.ph1216, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1216:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1223 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1224 = shufflevector <4 x i64> %broadcast.splatinsert1223, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1216
  %index1217 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1218, %vector.body1215 ]
  %vec.ind1221 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1216 ], [ %vec.ind.next1222, %vector.body1215 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1221, %broadcast.splat1224
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv7.i, i64 %index1217
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1218 = add i64 %index1217, 4
  %vec.ind.next1222 = add <4 x i64> %vec.ind1221, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1218, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1215, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1215
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1216, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit929
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start527, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1279 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1279, label %for.body3.i46.preheader1428, label %vector.ph1280

vector.ph1280:                                    ; preds = %for.body3.i46.preheader
  %n.vec1282 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1278 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i, i64 %index1283
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1284 = add i64 %index1283, 4
  %46 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %46, label %middle.block1276, label %vector.body1278, !llvm.loop !18

middle.block1276:                                 ; preds = %vector.body1278
  %cmp.n1286 = icmp eq i64 %indvars.iv21.i, %n.vec1282
  br i1 %cmp.n1286, label %for.inc6.i, label %for.body3.i46.preheader1428

for.body3.i46.preheader1428:                      ; preds = %for.body3.i46.preheader, %middle.block1276
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1282, %middle.block1276 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1428, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1428 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1276, %for.cond1.preheader.i45
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
  %min.iters.check1326 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1326, label %for.body3.i60.preheader1426, label %vector.ph1327

vector.ph1327:                                    ; preds = %for.body3.i60.preheader
  %n.vec1329 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1327
  %index1330 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1331, %vector.body1325 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i52, i64 %index1330
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1334, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1331 = add i64 %index1330, 4
  %57 = icmp eq i64 %index.next1331, %n.vec1329
  br i1 %57, label %middle.block1323, label %vector.body1325, !llvm.loop !64

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1333 = icmp eq i64 %indvars.iv21.i52, %n.vec1329
  br i1 %cmp.n1333, label %for.inc6.i63, label %for.body3.i60.preheader1426

for.body3.i60.preheader1426:                      ; preds = %for.body3.i60.preheader, %middle.block1323
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1329, %middle.block1323 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1426, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1426 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1323, %for.cond1.preheader.i54
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
  %min.iters.check1376 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1376, label %for.body3.i99.preheader1424, label %vector.ph1377

vector.ph1377:                                    ; preds = %for.body3.i99.preheader
  %n.vec1379 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1375

vector.body1375:                                  ; preds = %vector.body1375, %vector.ph1377
  %index1380 = phi i64 [ 0, %vector.ph1377 ], [ %index.next1381, %vector.body1375 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i91, i64 %index1380
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1384 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1384, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1381 = add i64 %index1380, 4
  %68 = icmp eq i64 %index.next1381, %n.vec1379
  br i1 %68, label %middle.block1373, label %vector.body1375, !llvm.loop !66

middle.block1373:                                 ; preds = %vector.body1375
  %cmp.n1383 = icmp eq i64 %indvars.iv21.i91, %n.vec1379
  br i1 %cmp.n1383, label %for.inc6.i102, label %for.body3.i99.preheader1424

for.body3.i99.preheader1424:                      ; preds = %for.body3.i99.preheader, %middle.block1373
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1379, %middle.block1373 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1424, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1424 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1373, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall136 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1388 = phi i64 [ %indvar.next1389, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1388, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1390 = icmp ult i64 %88, 4
  br i1 %min.iters.check1390, label %polly.loop_header192.preheader, label %vector.ph1391

vector.ph1391:                                    ; preds = %polly.loop_header
  %n.vec1393 = and i64 %88, -4
  br label %vector.body1387

vector.body1387:                                  ; preds = %vector.body1387, %vector.ph1391
  %index1394 = phi i64 [ 0, %vector.ph1391 ], [ %index.next1395, %vector.body1387 ]
  %90 = shl nuw nsw i64 %index1394, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1398, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1395 = add i64 %index1394, 4
  %95 = icmp eq i64 %index.next1395, %n.vec1393
  br i1 %95, label %middle.block1385, label %vector.body1387, !llvm.loop !79

middle.block1385:                                 ; preds = %vector.body1387
  %cmp.n1397 = icmp eq i64 %88, %n.vec1393
  br i1 %cmp.n1397, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1385
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1393, %middle.block1385 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1385
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1389 = add i64 %indvar1388, 1
  br i1 %exitcond1109.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1108.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1108.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 20
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next204, 50
  br i1 %exitcond1107.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit230 ], [ 4, %polly.loop_header200 ]
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = mul nsw i64 %polly.indvar209, -32
  %99 = shl nuw nsw i64 %polly.indvar209, 1
  %100 = add nuw i64 %99, 4
  %101 = udiv i64 %100, 5
  %102 = mul nuw nsw i64 %101, 80
  %103 = add i64 %98, %102
  %104 = shl nuw nsw i64 %polly.indvar209, 5
  %105 = sub nsw i64 %104, %102
  %106 = udiv i64 %indvars.iv1094, 5
  %107 = mul nuw nsw i64 %106, 80
  %108 = add i64 %indvars.iv1092, %107
  %109 = sub nsw i64 %indvars.iv1098, %107
  %110 = shl nsw i64 %polly.indvar209, 7
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %111 = mul nsw i64 %polly.indvar209, -128
  %112 = shl nuw nsw i64 %polly.indvar209, 1
  %113 = add nuw nsw i64 %112, 4
  %pexp.p_div_q = udiv i64 %113, 5
  %114 = sub nsw i64 %112, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %114, 15
  br i1 %polly.loop_guard, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_exit230:                               ; preds = %polly.loop_exit269, %polly.loop_exit214
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -32
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 2
  %indvars.iv.next1099 = add nuw nsw i64 %indvars.iv1098, 32
  %exitcond1106.not = icmp eq i64 %polly.indvar_next210, 10
  br i1 %exitcond1106.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %115 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next216, 20
  br i1 %exitcond1088.not, label %polly.loop_exit214, label %polly.loop_header212

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
  %indvar1402 = phi i64 [ %indvar.next1403, %polly.loop_exit269 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit269 ], [ %109, %polly.loop_exit214 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit269 ], [ %108, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit269 ], [ %114, %polly.loop_exit214 ]
  %117 = mul nsw i64 %indvar1402, -80
  %118 = add i64 %103, %117
  %smax1404 = call i64 @llvm.smax.i64(i64 %118, i64 0)
  %119 = mul nuw nsw i64 %indvar1402, 80
  %120 = add i64 %105, %119
  %121 = add i64 %smax1404, %120
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1096, i64 0)
  %122 = add i64 %smax, %indvars.iv1100
  %123 = mul nsw i64 %polly.indvar231, 80
  %124 = add nsw i64 %123, %111
  %125 = add nsw i64 %124, -1
  %.inv = icmp sgt i64 %124, 127
  %126 = select i1 %.inv, i64 127, i64 %125
  %polly.loop_guard244 = icmp sgt i64 %126, -1
  %127 = icmp sgt i64 %124, 0
  %128 = select i1 %127, i64 %124, i64 0
  %129 = add nsw i64 %124, 79
  %polly.loop_guard256.not = icmp sgt i64 %128, %129
  br i1 %polly.loop_guard244, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit255.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit255.us ], [ 0, %polly.loop_header228 ]
  %130 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header241.us

polly.loop_header241.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header234.us ]
  %131 = add nuw nsw i64 %polly.indvar245.us, %110
  %polly.access.mul.call1249.us = mul nuw nsw i64 %131, 1000
  %polly.access.add.call1250.us = add nuw nsw i64 %130, %polly.access.mul.call1249.us
  %polly.access.call1251.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1250.us
  %polly.access.call1251.load.us = load double, double* %polly.access.call1251.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar245.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1251.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next246.us = add nuw i64 %polly.indvar245.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar245.us, %126
  br i1 %exitcond1090.not, label %polly.loop_exit243.loopexit.us, label %polly.loop_header241.us

polly.loop_header253.us:                          ; preds = %polly.loop_exit243.loopexit.us, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ %128, %polly.loop_exit243.loopexit.us ]
  %132 = add nuw nsw i64 %polly.indvar257.us, %110
  %polly.access.mul.call1261.us = mul nsw i64 %132, 1000
  %polly.access.add.call1262.us = add nuw nsw i64 %130, %polly.access.mul.call1261.us
  %polly.access.call1263.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1262.us
  %polly.access.call1263.load.us = load double, double* %polly.access.call1263.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1265.us = add nuw nsw i64 %polly.indvar257.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  store double %polly.access.call1263.load.us, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %polly.loop_cond259.not.not.us = icmp slt i64 %polly.indvar257.us, %129
  br i1 %polly.loop_cond259.not.not.us, label %polly.loop_header253.us, label %polly.loop_exit255.us

polly.loop_exit255.us:                            ; preds = %polly.loop_header253.us, %polly.loop_exit243.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next238.us, 20
  br i1 %exitcond1091.not, label %polly.loop_header267.preheader, label %polly.loop_header234.us

polly.loop_exit243.loopexit.us:                   ; preds = %polly.loop_header241.us
  br i1 %polly.loop_guard256.not, label %polly.loop_exit255.us, label %polly.loop_header253.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard256.not, label %polly.loop_header267.preheader, label %polly.loop_header234

polly.loop_exit269:                               ; preds = %polly.loop_exit276.loopexit.us, %polly.loop_header267.preheader
  %polly.indvar_next232 = add nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp slt i64 %polly.indvar231, 14
  %indvars.iv.next1097 = add i64 %indvars.iv1096, -80
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 80
  %indvar.next1403 = add i64 %indvar1402, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit255
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit255 ], [ 0, %polly.loop_header228.split ]
  %133 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header253

polly.loop_exit255:                               ; preds = %polly.loop_header253
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next238, 20
  br i1 %exitcond1089.not, label %polly.loop_header267.preheader, label %polly.loop_header234

polly.loop_header267.preheader:                   ; preds = %polly.loop_exit255, %polly.loop_exit255.us, %polly.loop_header228.split
  %134 = sub nsw i64 %110, %123
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %polly.loop_guard277 = icmp slt i64 %136, 80
  br i1 %polly.loop_guard277, label %polly.loop_header267.us, label %polly.loop_exit269

polly.loop_header267.us:                          ; preds = %polly.loop_header267.preheader, %polly.loop_exit276.loopexit.us
  %polly.indvar270.us = phi i64 [ %polly.indvar_next271.us, %polly.loop_exit276.loopexit.us ], [ 0, %polly.loop_header267.preheader ]
  %polly.access.mul.Packed_MemRef_call1289.us = mul nuw nsw i64 %polly.indvar270.us, 1200
  br label %polly.loop_header274.us

polly.loop_header274.us:                          ; preds = %polly.loop_header267.us, %polly.loop_exit284.us
  %indvar1405 = phi i64 [ 0, %polly.loop_header267.us ], [ %indvar.next1406, %polly.loop_exit284.us ]
  %indvars.iv1102 = phi i64 [ %122, %polly.loop_header267.us ], [ %indvars.iv.next1103, %polly.loop_exit284.us ]
  %polly.indvar278.us = phi i64 [ %136, %polly.loop_header267.us ], [ %polly.indvar_next279.us, %polly.loop_exit284.us ]
  %137 = add i64 %121, %indvar1405
  %smin1407 = call i64 @llvm.smin.i64(i64 %137, i64 127)
  %138 = add nsw i64 %smin1407, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1102, i64 127)
  %139 = add nsw i64 %polly.indvar278.us, %124
  %polly.loop_guard285.us1198 = icmp sgt i64 %139, -1
  br i1 %polly.loop_guard285.us1198, label %polly.loop_header282.preheader.us, label %polly.loop_exit284.us

polly.loop_header282.us:                          ; preds = %polly.loop_header282.us.preheader, %polly.loop_header282.us
  %polly.indvar286.us = phi i64 [ %polly.indvar_next287.us, %polly.loop_header282.us ], [ %polly.indvar286.us.ph, %polly.loop_header282.us.preheader ]
  %140 = add nuw nsw i64 %polly.indvar286.us, %110
  %polly.access.add.Packed_MemRef_call1290.us = add nuw nsw i64 %polly.indvar286.us, %polly.access.mul.Packed_MemRef_call1289.us
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %polly.access.Packed_MemRef_call2299.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call2299.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_304.us, %_p_scalar_300.us
  %141 = shl i64 %140, 3
  %142 = add i64 %141, %144
  %scevgep305.us = getelementptr i8, i8* %call, i64 %142
  %scevgep305306.us = bitcast i8* %scevgep305.us to double*
  %_p_scalar_307.us = load double, double* %scevgep305306.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_307.us
  store double %p_add42.i118.us, double* %scevgep305306.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next287.us = add nuw nsw i64 %polly.indvar286.us, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar286.us, %smin
  br i1 %exitcond1104.not, label %polly.loop_exit284.us, label %polly.loop_header282.us, !llvm.loop !84

polly.loop_exit284.us:                            ; preds = %polly.loop_header282.us, %middle.block1399, %polly.loop_header274.us
  %polly.indvar_next279.us = add nuw nsw i64 %polly.indvar278.us, 1
  %polly.loop_cond280.us = icmp ult i64 %polly.indvar278.us, 79
  %indvars.iv.next1103 = add i64 %indvars.iv1102, 1
  %indvar.next1406 = add i64 %indvar1405, 1
  br i1 %polly.loop_cond280.us, label %polly.loop_header274.us, label %polly.loop_exit276.loopexit.us

polly.loop_header282.preheader.us:                ; preds = %polly.loop_header274.us
  %143 = add nsw i64 %polly.indvar278.us, %123
  %polly.access.add.Packed_MemRef_call2294.us = add nsw i64 %139, %polly.access.mul.Packed_MemRef_call1289.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2294.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2294.us
  %_p_scalar_304.us = load double, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %144 = mul i64 %143, 9600
  %min.iters.check1408 = icmp ult i64 %138, 4
  br i1 %min.iters.check1408, label %polly.loop_header282.us.preheader, label %vector.ph1409

vector.ph1409:                                    ; preds = %polly.loop_header282.preheader.us
  %n.vec1411 = and i64 %138, -4
  %broadcast.splatinsert1417 = insertelement <4 x double> poison, double %_p_scalar_296.us, i32 0
  %broadcast.splat1418 = shufflevector <4 x double> %broadcast.splatinsert1417, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1420 = insertelement <4 x double> poison, double %_p_scalar_304.us, i32 0
  %broadcast.splat1421 = shufflevector <4 x double> %broadcast.splatinsert1420, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1401

vector.body1401:                                  ; preds = %vector.body1401, %vector.ph1409
  %index1412 = phi i64 [ 0, %vector.ph1409 ], [ %index.next1413, %vector.body1401 ]
  %145 = add nuw nsw i64 %index1412, %110
  %146 = add nuw nsw i64 %index1412, %polly.access.mul.Packed_MemRef_call1289.us
  %147 = getelementptr double, double* %Packed_MemRef_call1, i64 %146
  %148 = bitcast double* %147 to <4 x double>*
  %wide.load1416 = load <4 x double>, <4 x double>* %148, align 8
  %149 = fmul fast <4 x double> %broadcast.splat1418, %wide.load1416
  %150 = getelementptr double, double* %Packed_MemRef_call2, i64 %146
  %151 = bitcast double* %150 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %151, align 8
  %152 = fmul fast <4 x double> %broadcast.splat1421, %wide.load1419
  %153 = shl i64 %145, 3
  %154 = add i64 %153, %144
  %155 = getelementptr i8, i8* %call, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1422 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !72, !noalias !74
  %157 = fadd fast <4 x double> %152, %149
  %158 = fmul fast <4 x double> %157, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %159 = fadd fast <4 x double> %158, %wide.load1422
  %160 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !72, !noalias !74
  %index.next1413 = add i64 %index1412, 4
  %161 = icmp eq i64 %index.next1413, %n.vec1411
  br i1 %161, label %middle.block1399, label %vector.body1401, !llvm.loop !85

middle.block1399:                                 ; preds = %vector.body1401
  %cmp.n1415 = icmp eq i64 %138, %n.vec1411
  br i1 %cmp.n1415, label %polly.loop_exit284.us, label %polly.loop_header282.us.preheader

polly.loop_header282.us.preheader:                ; preds = %polly.loop_header282.preheader.us, %middle.block1399
  %polly.indvar286.us.ph = phi i64 [ 0, %polly.loop_header282.preheader.us ], [ %n.vec1411, %middle.block1399 ]
  br label %polly.loop_header282.us

polly.loop_exit276.loopexit.us:                   ; preds = %polly.loop_exit284.us
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next271.us, 20
  br i1 %exitcond1105.not, label %polly.loop_exit269, label %polly.loop_header267.us

polly.loop_header253:                             ; preds = %polly.loop_header234, %polly.loop_header253
  %polly.indvar257 = phi i64 [ %polly.indvar_next258, %polly.loop_header253 ], [ %128, %polly.loop_header234 ]
  %162 = add nuw nsw i64 %polly.indvar257, %110
  %polly.access.mul.call1261 = mul nsw i64 %162, 1000
  %polly.access.add.call1262 = add nuw nsw i64 %133, %polly.access.mul.call1261
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1262
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1265 = add nuw nsw i64 %polly.indvar257, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %polly.loop_cond259.not.not = icmp slt i64 %polly.indvar257, %129
  br i1 %polly.loop_cond259.not.not, label %polly.loop_header253, label %polly.loop_exit255

polly.start310:                                   ; preds = %kernel_syr2k.exit
  %malloccall312 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall314 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header398

polly.exiting311:                                 ; preds = %polly.loop_exit422
  tail call void @free(i8* %malloccall312)
  tail call void @free(i8* %malloccall314)
  br label %kernel_syr2k.exit90

polly.loop_header398:                             ; preds = %polly.loop_exit406, %polly.start310
  %indvar1338 = phi i64 [ %indvar.next1339, %polly.loop_exit406 ], [ 0, %polly.start310 ]
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit406 ], [ 1, %polly.start310 ]
  %163 = add i64 %indvar1338, 1
  %164 = mul nuw nsw i64 %polly.indvar401, 9600
  %scevgep410 = getelementptr i8, i8* %call, i64 %164
  %min.iters.check1340 = icmp ult i64 %163, 4
  br i1 %min.iters.check1340, label %polly.loop_header404.preheader, label %vector.ph1341

vector.ph1341:                                    ; preds = %polly.loop_header398
  %n.vec1343 = and i64 %163, -4
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1341
  %index1344 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1345, %vector.body1337 ]
  %165 = shl nuw nsw i64 %index1344, 3
  %166 = getelementptr i8, i8* %scevgep410, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %167, align 8, !alias.scope !86, !noalias !88
  %168 = fmul fast <4 x double> %wide.load1348, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %169 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %168, <4 x double>* %169, align 8, !alias.scope !86, !noalias !88
  %index.next1345 = add i64 %index1344, 4
  %170 = icmp eq i64 %index.next1345, %n.vec1343
  br i1 %170, label %middle.block1335, label %vector.body1337, !llvm.loop !93

middle.block1335:                                 ; preds = %vector.body1337
  %cmp.n1347 = icmp eq i64 %163, %n.vec1343
  br i1 %cmp.n1347, label %polly.loop_exit406, label %polly.loop_header404.preheader

polly.loop_header404.preheader:                   ; preds = %polly.loop_header398, %middle.block1335
  %polly.indvar407.ph = phi i64 [ 0, %polly.loop_header398 ], [ %n.vec1343, %middle.block1335 ]
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_header404, %middle.block1335
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next402, 1200
  %indvar.next1339 = add i64 %indvar1338, 1
  br i1 %exitcond1136.not, label %polly.loop_header414.preheader, label %polly.loop_header398

polly.loop_header414.preheader:                   ; preds = %polly.loop_exit406
  %Packed_MemRef_call1313 = bitcast i8* %malloccall312 to double*
  %Packed_MemRef_call2315 = bitcast i8* %malloccall314 to double*
  br label %polly.loop_header414

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_header404
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_header404 ], [ %polly.indvar407.ph, %polly.loop_header404.preheader ]
  %171 = shl nuw nsw i64 %polly.indvar407, 3
  %scevgep411 = getelementptr i8, i8* %scevgep410, i64 %171
  %scevgep411412 = bitcast i8* %scevgep411 to double*
  %_p_scalar_413 = load double, double* %scevgep411412, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_413, 1.200000e+00
  store double %p_mul.i57, double* %scevgep411412, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next408, %polly.indvar401
  br i1 %exitcond1135.not, label %polly.loop_exit406, label %polly.loop_header404, !llvm.loop !94

polly.loop_header414:                             ; preds = %polly.loop_header414.preheader, %polly.loop_exit422
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit422 ], [ 0, %polly.loop_header414.preheader ]
  %172 = mul nuw nsw i64 %polly.indvar417, 20
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit446
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next418, 50
  br i1 %exitcond1134.not, label %polly.exiting311, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit446, %polly.loop_header414
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit446 ], [ 4, %polly.loop_header414 ]
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit446 ], [ 1200, %polly.loop_header414 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %173 = mul nsw i64 %polly.indvar423, -32
  %174 = shl nuw nsw i64 %polly.indvar423, 1
  %175 = add nuw i64 %174, 4
  %176 = udiv i64 %175, 5
  %177 = mul nuw nsw i64 %176, 80
  %178 = add i64 %173, %177
  %179 = shl nuw nsw i64 %polly.indvar423, 5
  %180 = sub nsw i64 %179, %177
  %181 = udiv i64 %indvars.iv1119, 5
  %182 = mul nuw nsw i64 %181, 80
  %183 = add i64 %indvars.iv1117, %182
  %184 = sub nsw i64 %indvars.iv1124, %182
  %185 = shl nsw i64 %polly.indvar423, 7
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit434
  %186 = mul nsw i64 %polly.indvar423, -128
  %187 = shl nuw nsw i64 %polly.indvar423, 1
  %188 = add nuw nsw i64 %187, 4
  %pexp.p_div_q442 = udiv i64 %188, 5
  %189 = sub nsw i64 %187, %pexp.p_div_q442
  %polly.loop_guard447 = icmp slt i64 %189, 15
  br i1 %polly.loop_guard447, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_exit446:                               ; preds = %polly.loop_exit486, %polly.loop_exit428
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -128
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -32
  %indvars.iv.next1120 = add nuw nsw i64 %indvars.iv1119, 2
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next424, 10
  br i1 %exitcond1133.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit434, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit434 ]
  %190 = add nuw nsw i64 %polly.indvar429, %172
  %polly.access.mul.Packed_MemRef_call2315 = mul nuw nsw i64 %polly.indvar429, 1200
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_header432
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next430, 20
  br i1 %exitcond1113.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_header432, %polly.loop_header426
  %polly.indvar435 = phi i64 [ 0, %polly.loop_header426 ], [ %polly.indvar_next436, %polly.loop_header432 ]
  %191 = add nuw nsw i64 %polly.indvar435, %185
  %polly.access.mul.call2439 = mul nuw nsw i64 %191, 1000
  %polly.access.add.call2440 = add nuw nsw i64 %190, %polly.access.mul.call2439
  %polly.access.call2441 = getelementptr double, double* %polly.access.cast.call2756, i64 %polly.access.add.call2440
  %polly.access.call2441.load = load double, double* %polly.access.call2441, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2315 = add nuw nsw i64 %polly.indvar435, %polly.access.mul.Packed_MemRef_call2315
  %polly.access.Packed_MemRef_call2315 = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call2315
  store double %polly.access.call2441.load, double* %polly.access.Packed_MemRef_call2315, align 8
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next436, %indvars.iv1110
  br i1 %exitcond1112.not, label %polly.loop_exit434, label %polly.loop_header432

polly.loop_header444:                             ; preds = %polly.loop_exit428, %polly.loop_exit486
  %indvar1352 = phi i64 [ %indvar.next1353, %polly.loop_exit486 ], [ 0, %polly.loop_exit428 ]
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit486 ], [ %184, %polly.loop_exit428 ]
  %indvars.iv1121 = phi i64 [ %indvars.iv.next1122, %polly.loop_exit486 ], [ %183, %polly.loop_exit428 ]
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit486 ], [ %189, %polly.loop_exit428 ]
  %192 = mul nsw i64 %indvar1352, -80
  %193 = add i64 %178, %192
  %smax1354 = call i64 @llvm.smax.i64(i64 %193, i64 0)
  %194 = mul nuw nsw i64 %indvar1352, 80
  %195 = add i64 %180, %194
  %196 = add i64 %smax1354, %195
  %smax1123 = call i64 @llvm.smax.i64(i64 %indvars.iv1121, i64 0)
  %197 = add i64 %smax1123, %indvars.iv1126
  %198 = mul nsw i64 %polly.indvar448, 80
  %199 = add nsw i64 %198, %186
  %200 = add nsw i64 %199, -1
  %.inv948 = icmp sgt i64 %199, 127
  %201 = select i1 %.inv948, i64 127, i64 %200
  %polly.loop_guard461 = icmp sgt i64 %201, -1
  %202 = icmp sgt i64 %199, 0
  %203 = select i1 %202, i64 %199, i64 0
  %204 = add nsw i64 %199, 79
  %polly.loop_guard473.not = icmp sgt i64 %203, %204
  br i1 %polly.loop_guard461, label %polly.loop_header451.us, label %polly.loop_header444.split

polly.loop_header451.us:                          ; preds = %polly.loop_header444, %polly.loop_exit472.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_exit472.us ], [ 0, %polly.loop_header444 ]
  %205 = add nuw nsw i64 %polly.indvar454.us, %172
  %polly.access.mul.Packed_MemRef_call1313.us = mul nuw nsw i64 %polly.indvar454.us, 1200
  br label %polly.loop_header458.us

polly.loop_header458.us:                          ; preds = %polly.loop_header451.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header451.us ]
  %206 = add nuw nsw i64 %polly.indvar462.us, %185
  %polly.access.mul.call1466.us = mul nuw nsw i64 %206, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %205, %polly.access.mul.call1466.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1313.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1313.us
  %polly.access.Packed_MemRef_call1313.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1313.us, align 8
  %polly.indvar_next463.us = add nuw i64 %polly.indvar462.us, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar462.us, %201
  br i1 %exitcond1115.not, label %polly.loop_exit460.loopexit.us, label %polly.loop_header458.us

polly.loop_header470.us:                          ; preds = %polly.loop_exit460.loopexit.us, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ %203, %polly.loop_exit460.loopexit.us ]
  %207 = add nuw nsw i64 %polly.indvar474.us, %185
  %polly.access.mul.call1478.us = mul nsw i64 %207, 1000
  %polly.access.add.call1479.us = add nuw nsw i64 %205, %polly.access.mul.call1478.us
  %polly.access.call1480.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1479.us
  %polly.access.call1480.load.us = load double, double* %polly.access.call1480.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1313482.us = add nuw nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1313.us
  %polly.access.Packed_MemRef_call1313483.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313482.us
  store double %polly.access.call1480.load.us, double* %polly.access.Packed_MemRef_call1313483.us, align 8
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %polly.loop_cond476.not.not.us = icmp slt i64 %polly.indvar474.us, %204
  br i1 %polly.loop_cond476.not.not.us, label %polly.loop_header470.us, label %polly.loop_exit472.us

polly.loop_exit472.us:                            ; preds = %polly.loop_header470.us, %polly.loop_exit460.loopexit.us
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next455.us, 20
  br i1 %exitcond1116.not, label %polly.loop_header484.preheader, label %polly.loop_header451.us

polly.loop_exit460.loopexit.us:                   ; preds = %polly.loop_header458.us
  br i1 %polly.loop_guard473.not, label %polly.loop_exit472.us, label %polly.loop_header470.us

polly.loop_header444.split:                       ; preds = %polly.loop_header444
  br i1 %polly.loop_guard473.not, label %polly.loop_header484.preheader, label %polly.loop_header451

polly.loop_exit486:                               ; preds = %polly.loop_exit493.loopexit.us, %polly.loop_header484.preheader
  %polly.indvar_next449 = add nsw i64 %polly.indvar448, 1
  %polly.loop_cond450 = icmp slt i64 %polly.indvar448, 14
  %indvars.iv.next1122 = add i64 %indvars.iv1121, -80
  %indvars.iv.next1127 = add i64 %indvars.iv1126, 80
  %indvar.next1353 = add i64 %indvar1352, 1
  br i1 %polly.loop_cond450, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header451:                             ; preds = %polly.loop_header444.split, %polly.loop_exit472
  %polly.indvar454 = phi i64 [ %polly.indvar_next455, %polly.loop_exit472 ], [ 0, %polly.loop_header444.split ]
  %208 = add nuw nsw i64 %polly.indvar454, %172
  %polly.access.mul.Packed_MemRef_call1313481 = mul nuw nsw i64 %polly.indvar454, 1200
  br label %polly.loop_header470

polly.loop_exit472:                               ; preds = %polly.loop_header470
  %polly.indvar_next455 = add nuw nsw i64 %polly.indvar454, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next455, 20
  br i1 %exitcond1114.not, label %polly.loop_header484.preheader, label %polly.loop_header451

polly.loop_header484.preheader:                   ; preds = %polly.loop_exit472, %polly.loop_exit472.us, %polly.loop_header444.split
  %209 = sub nsw i64 %185, %198
  %210 = icmp sgt i64 %209, 0
  %211 = select i1 %210, i64 %209, i64 0
  %polly.loop_guard494 = icmp slt i64 %211, 80
  br i1 %polly.loop_guard494, label %polly.loop_header484.us, label %polly.loop_exit486

polly.loop_header484.us:                          ; preds = %polly.loop_header484.preheader, %polly.loop_exit493.loopexit.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_exit493.loopexit.us ], [ 0, %polly.loop_header484.preheader ]
  %polly.access.mul.Packed_MemRef_call1313506.us = mul nuw nsw i64 %polly.indvar487.us, 1200
  br label %polly.loop_header491.us

polly.loop_header491.us:                          ; preds = %polly.loop_header484.us, %polly.loop_exit501.us
  %indvar1355 = phi i64 [ 0, %polly.loop_header484.us ], [ %indvar.next1356, %polly.loop_exit501.us ]
  %indvars.iv1128 = phi i64 [ %197, %polly.loop_header484.us ], [ %indvars.iv.next1129, %polly.loop_exit501.us ]
  %polly.indvar495.us = phi i64 [ %211, %polly.loop_header484.us ], [ %polly.indvar_next496.us, %polly.loop_exit501.us ]
  %212 = add i64 %196, %indvar1355
  %smin1357 = call i64 @llvm.smin.i64(i64 %212, i64 127)
  %213 = add nsw i64 %smin1357, 1
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 127)
  %214 = add nsw i64 %polly.indvar495.us, %199
  %polly.loop_guard502.us1199 = icmp sgt i64 %214, -1
  br i1 %polly.loop_guard502.us1199, label %polly.loop_header499.preheader.us, label %polly.loop_exit501.us

polly.loop_header499.us:                          ; preds = %polly.loop_header499.us.preheader, %polly.loop_header499.us
  %polly.indvar503.us = phi i64 [ %polly.indvar_next504.us, %polly.loop_header499.us ], [ %polly.indvar503.us.ph, %polly.loop_header499.us.preheader ]
  %215 = add nuw nsw i64 %polly.indvar503.us, %185
  %polly.access.add.Packed_MemRef_call1313507.us = add nuw nsw i64 %polly.indvar503.us, %polly.access.mul.Packed_MemRef_call1313506.us
  %polly.access.Packed_MemRef_call1313508.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313507.us
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call1313508.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_513.us, %_p_scalar_509.us
  %polly.access.Packed_MemRef_call2315516.us = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call1313507.us
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call2315516.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_521.us, %_p_scalar_517.us
  %216 = shl i64 %215, 3
  %217 = add i64 %216, %219
  %scevgep522.us = getelementptr i8, i8* %call, i64 %217
  %scevgep522523.us = bitcast i8* %scevgep522.us to double*
  %_p_scalar_524.us = load double, double* %scevgep522523.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_524.us
  store double %p_add42.i79.us, double* %scevgep522523.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next504.us = add nuw nsw i64 %polly.indvar503.us, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar503.us, %smin1130
  br i1 %exitcond1131.not, label %polly.loop_exit501.us, label %polly.loop_header499.us, !llvm.loop !97

polly.loop_exit501.us:                            ; preds = %polly.loop_header499.us, %middle.block1349, %polly.loop_header491.us
  %polly.indvar_next496.us = add nuw nsw i64 %polly.indvar495.us, 1
  %polly.loop_cond497.us = icmp ult i64 %polly.indvar495.us, 79
  %indvars.iv.next1129 = add i64 %indvars.iv1128, 1
  %indvar.next1356 = add i64 %indvar1355, 1
  br i1 %polly.loop_cond497.us, label %polly.loop_header491.us, label %polly.loop_exit493.loopexit.us

polly.loop_header499.preheader.us:                ; preds = %polly.loop_header491.us
  %218 = add nsw i64 %polly.indvar495.us, %198
  %polly.access.add.Packed_MemRef_call2315511.us = add nsw i64 %214, %polly.access.mul.Packed_MemRef_call1313506.us
  %polly.access.Packed_MemRef_call2315512.us = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call2315511.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2315512.us, align 8
  %polly.access.Packed_MemRef_call1313520.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call2315511.us
  %_p_scalar_521.us = load double, double* %polly.access.Packed_MemRef_call1313520.us, align 8
  %219 = mul i64 %218, 9600
  %min.iters.check1358 = icmp ult i64 %213, 4
  br i1 %min.iters.check1358, label %polly.loop_header499.us.preheader, label %vector.ph1359

vector.ph1359:                                    ; preds = %polly.loop_header499.preheader.us
  %n.vec1361 = and i64 %213, -4
  %broadcast.splatinsert1367 = insertelement <4 x double> poison, double %_p_scalar_513.us, i32 0
  %broadcast.splat1368 = shufflevector <4 x double> %broadcast.splatinsert1367, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1370 = insertelement <4 x double> poison, double %_p_scalar_521.us, i32 0
  %broadcast.splat1371 = shufflevector <4 x double> %broadcast.splatinsert1370, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1351

vector.body1351:                                  ; preds = %vector.body1351, %vector.ph1359
  %index1362 = phi i64 [ 0, %vector.ph1359 ], [ %index.next1363, %vector.body1351 ]
  %220 = add nuw nsw i64 %index1362, %185
  %221 = add nuw nsw i64 %index1362, %polly.access.mul.Packed_MemRef_call1313506.us
  %222 = getelementptr double, double* %Packed_MemRef_call1313, i64 %221
  %223 = bitcast double* %222 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %223, align 8
  %224 = fmul fast <4 x double> %broadcast.splat1368, %wide.load1366
  %225 = getelementptr double, double* %Packed_MemRef_call2315, i64 %221
  %226 = bitcast double* %225 to <4 x double>*
  %wide.load1369 = load <4 x double>, <4 x double>* %226, align 8
  %227 = fmul fast <4 x double> %broadcast.splat1371, %wide.load1369
  %228 = shl i64 %220, 3
  %229 = add i64 %228, %219
  %230 = getelementptr i8, i8* %call, i64 %229
  %231 = bitcast i8* %230 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %231, align 8, !alias.scope !86, !noalias !88
  %232 = fadd fast <4 x double> %227, %224
  %233 = fmul fast <4 x double> %232, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %234 = fadd fast <4 x double> %233, %wide.load1372
  %235 = bitcast i8* %230 to <4 x double>*
  store <4 x double> %234, <4 x double>* %235, align 8, !alias.scope !86, !noalias !88
  %index.next1363 = add i64 %index1362, 4
  %236 = icmp eq i64 %index.next1363, %n.vec1361
  br i1 %236, label %middle.block1349, label %vector.body1351, !llvm.loop !98

middle.block1349:                                 ; preds = %vector.body1351
  %cmp.n1365 = icmp eq i64 %213, %n.vec1361
  br i1 %cmp.n1365, label %polly.loop_exit501.us, label %polly.loop_header499.us.preheader

polly.loop_header499.us.preheader:                ; preds = %polly.loop_header499.preheader.us, %middle.block1349
  %polly.indvar503.us.ph = phi i64 [ 0, %polly.loop_header499.preheader.us ], [ %n.vec1361, %middle.block1349 ]
  br label %polly.loop_header499.us

polly.loop_exit493.loopexit.us:                   ; preds = %polly.loop_exit501.us
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next488.us, 20
  br i1 %exitcond1132.not, label %polly.loop_exit486, label %polly.loop_header484.us

polly.loop_header470:                             ; preds = %polly.loop_header451, %polly.loop_header470
  %polly.indvar474 = phi i64 [ %polly.indvar_next475, %polly.loop_header470 ], [ %203, %polly.loop_header451 ]
  %237 = add nuw nsw i64 %polly.indvar474, %185
  %polly.access.mul.call1478 = mul nsw i64 %237, 1000
  %polly.access.add.call1479 = add nuw nsw i64 %208, %polly.access.mul.call1478
  %polly.access.call1480 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1479
  %polly.access.call1480.load = load double, double* %polly.access.call1480, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1313482 = add nuw nsw i64 %polly.indvar474, %polly.access.mul.Packed_MemRef_call1313481
  %polly.access.Packed_MemRef_call1313483 = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313482
  store double %polly.access.call1480.load, double* %polly.access.Packed_MemRef_call1313483, align 8
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %polly.loop_cond476.not.not = icmp slt i64 %polly.indvar474, %204
  br i1 %polly.loop_cond476.not.not, label %polly.loop_header470, label %polly.loop_exit472

polly.start527:                                   ; preds = %init_array.exit
  %malloccall529 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall531 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header615

polly.exiting528:                                 ; preds = %polly.loop_exit639
  tail call void @free(i8* %malloccall529)
  tail call void @free(i8* %malloccall531)
  br label %kernel_syr2k.exit

polly.loop_header615:                             ; preds = %polly.loop_exit623, %polly.start527
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit623 ], [ 0, %polly.start527 ]
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 1, %polly.start527 ]
  %238 = add i64 %indvar, 1
  %239 = mul nuw nsw i64 %polly.indvar618, 9600
  %scevgep627 = getelementptr i8, i8* %call, i64 %239
  %min.iters.check1290 = icmp ult i64 %238, 4
  br i1 %min.iters.check1290, label %polly.loop_header621.preheader, label %vector.ph1291

vector.ph1291:                                    ; preds = %polly.loop_header615
  %n.vec1293 = and i64 %238, -4
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1291
  %index1294 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1295, %vector.body1289 ]
  %240 = shl nuw nsw i64 %index1294, 3
  %241 = getelementptr i8, i8* %scevgep627, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  %wide.load1298 = load <4 x double>, <4 x double>* %242, align 8, !alias.scope !99, !noalias !101
  %243 = fmul fast <4 x double> %wide.load1298, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %244 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %243, <4 x double>* %244, align 8, !alias.scope !99, !noalias !101
  %index.next1295 = add i64 %index1294, 4
  %245 = icmp eq i64 %index.next1295, %n.vec1293
  br i1 %245, label %middle.block1287, label %vector.body1289, !llvm.loop !106

middle.block1287:                                 ; preds = %vector.body1289
  %cmp.n1297 = icmp eq i64 %238, %n.vec1293
  br i1 %cmp.n1297, label %polly.loop_exit623, label %polly.loop_header621.preheader

polly.loop_header621.preheader:                   ; preds = %polly.loop_header615, %middle.block1287
  %polly.indvar624.ph = phi i64 [ 0, %polly.loop_header615 ], [ %n.vec1293, %middle.block1287 ]
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621, %middle.block1287
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next619, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1163.not, label %polly.loop_header631.preheader, label %polly.loop_header615

polly.loop_header631.preheader:                   ; preds = %polly.loop_exit623
  %Packed_MemRef_call1530 = bitcast i8* %malloccall529 to double*
  %Packed_MemRef_call2532 = bitcast i8* %malloccall531 to double*
  br label %polly.loop_header631

polly.loop_header621:                             ; preds = %polly.loop_header621.preheader, %polly.loop_header621
  %polly.indvar624 = phi i64 [ %polly.indvar_next625, %polly.loop_header621 ], [ %polly.indvar624.ph, %polly.loop_header621.preheader ]
  %246 = shl nuw nsw i64 %polly.indvar624, 3
  %scevgep628 = getelementptr i8, i8* %scevgep627, i64 %246
  %scevgep628629 = bitcast i8* %scevgep628 to double*
  %_p_scalar_630 = load double, double* %scevgep628629, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_630, 1.200000e+00
  store double %p_mul.i, double* %scevgep628629, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar_next625, %polly.indvar618
  br i1 %exitcond1162.not, label %polly.loop_exit623, label %polly.loop_header621, !llvm.loop !107

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit639
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %247 = mul nuw nsw i64 %polly.indvar634, 20
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit663
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next635, 50
  br i1 %exitcond1161.not, label %polly.exiting528, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit663, %polly.loop_header631
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit663 ], [ 4, %polly.loop_header631 ]
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit663 ], [ 1200, %polly.loop_header631 ]
  %polly.indvar640 = phi i64 [ %polly.indvar_next641, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %248 = mul nsw i64 %polly.indvar640, -32
  %249 = shl nuw nsw i64 %polly.indvar640, 1
  %250 = add nuw i64 %249, 4
  %251 = udiv i64 %250, 5
  %252 = mul nuw nsw i64 %251, 80
  %253 = add i64 %248, %252
  %254 = shl nuw nsw i64 %polly.indvar640, 5
  %255 = sub nsw i64 %254, %252
  %256 = udiv i64 %indvars.iv1146, 5
  %257 = mul nuw nsw i64 %256, 80
  %258 = add i64 %indvars.iv1144, %257
  %259 = sub nsw i64 %indvars.iv1151, %257
  %260 = shl nsw i64 %polly.indvar640, 7
  br label %polly.loop_header643

polly.loop_exit645:                               ; preds = %polly.loop_exit651
  %261 = mul nsw i64 %polly.indvar640, -128
  %262 = shl nuw nsw i64 %polly.indvar640, 1
  %263 = add nuw nsw i64 %262, 4
  %pexp.p_div_q659 = udiv i64 %263, 5
  %264 = sub nsw i64 %262, %pexp.p_div_q659
  %polly.loop_guard664 = icmp slt i64 %264, 15
  br i1 %polly.loop_guard664, label %polly.loop_header661, label %polly.loop_exit663

polly.loop_exit663:                               ; preds = %polly.loop_exit703, %polly.loop_exit645
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, -128
  %indvars.iv.next1145 = add nsw i64 %indvars.iv1144, -32
  %indvars.iv.next1147 = add nuw nsw i64 %indvars.iv1146, 2
  %indvars.iv.next1152 = add nuw nsw i64 %indvars.iv1151, 32
  %exitcond1160.not = icmp eq i64 %polly.indvar_next641, 10
  br i1 %exitcond1160.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header643:                             ; preds = %polly.loop_exit651, %polly.loop_header637
  %polly.indvar646 = phi i64 [ 0, %polly.loop_header637 ], [ %polly.indvar_next647, %polly.loop_exit651 ]
  %265 = add nuw nsw i64 %polly.indvar646, %247
  %polly.access.mul.Packed_MemRef_call2532 = mul nuw nsw i64 %polly.indvar646, 1200
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_header649
  %polly.indvar_next647 = add nuw nsw i64 %polly.indvar646, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next647, 20
  br i1 %exitcond1140.not, label %polly.loop_exit645, label %polly.loop_header643

polly.loop_header649:                             ; preds = %polly.loop_header649, %polly.loop_header643
  %polly.indvar652 = phi i64 [ 0, %polly.loop_header643 ], [ %polly.indvar_next653, %polly.loop_header649 ]
  %266 = add nuw nsw i64 %polly.indvar652, %260
  %polly.access.mul.call2656 = mul nuw nsw i64 %266, 1000
  %polly.access.add.call2657 = add nuw nsw i64 %265, %polly.access.mul.call2656
  %polly.access.call2658 = getelementptr double, double* %polly.access.cast.call2756, i64 %polly.access.add.call2657
  %polly.access.call2658.load = load double, double* %polly.access.call2658, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2532 = add nuw nsw i64 %polly.indvar652, %polly.access.mul.Packed_MemRef_call2532
  %polly.access.Packed_MemRef_call2532 = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call2532
  store double %polly.access.call2658.load, double* %polly.access.Packed_MemRef_call2532, align 8
  %polly.indvar_next653 = add nuw nsw i64 %polly.indvar652, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next653, %indvars.iv1137
  br i1 %exitcond1139.not, label %polly.loop_exit651, label %polly.loop_header649

polly.loop_header661:                             ; preds = %polly.loop_exit645, %polly.loop_exit703
  %indvar1302 = phi i64 [ %indvar.next1303, %polly.loop_exit703 ], [ 0, %polly.loop_exit645 ]
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit703 ], [ %259, %polly.loop_exit645 ]
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit703 ], [ %258, %polly.loop_exit645 ]
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit703 ], [ %264, %polly.loop_exit645 ]
  %267 = mul nsw i64 %indvar1302, -80
  %268 = add i64 %253, %267
  %smax1304 = call i64 @llvm.smax.i64(i64 %268, i64 0)
  %269 = mul nuw nsw i64 %indvar1302, 80
  %270 = add i64 %255, %269
  %271 = add i64 %smax1304, %270
  %smax1150 = call i64 @llvm.smax.i64(i64 %indvars.iv1148, i64 0)
  %272 = add i64 %smax1150, %indvars.iv1153
  %273 = mul nsw i64 %polly.indvar665, 80
  %274 = add nsw i64 %273, %261
  %275 = add nsw i64 %274, -1
  %.inv949 = icmp sgt i64 %274, 127
  %276 = select i1 %.inv949, i64 127, i64 %275
  %polly.loop_guard678 = icmp sgt i64 %276, -1
  %277 = icmp sgt i64 %274, 0
  %278 = select i1 %277, i64 %274, i64 0
  %279 = add nsw i64 %274, 79
  %polly.loop_guard690.not = icmp sgt i64 %278, %279
  br i1 %polly.loop_guard678, label %polly.loop_header668.us, label %polly.loop_header661.split

polly.loop_header668.us:                          ; preds = %polly.loop_header661, %polly.loop_exit689.us
  %polly.indvar671.us = phi i64 [ %polly.indvar_next672.us, %polly.loop_exit689.us ], [ 0, %polly.loop_header661 ]
  %280 = add nuw nsw i64 %polly.indvar671.us, %247
  %polly.access.mul.Packed_MemRef_call1530.us = mul nuw nsw i64 %polly.indvar671.us, 1200
  br label %polly.loop_header675.us

polly.loop_header675.us:                          ; preds = %polly.loop_header668.us, %polly.loop_header675.us
  %polly.indvar679.us = phi i64 [ %polly.indvar_next680.us, %polly.loop_header675.us ], [ 0, %polly.loop_header668.us ]
  %281 = add nuw nsw i64 %polly.indvar679.us, %260
  %polly.access.mul.call1683.us = mul nuw nsw i64 %281, 1000
  %polly.access.add.call1684.us = add nuw nsw i64 %280, %polly.access.mul.call1683.us
  %polly.access.call1685.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1684.us
  %polly.access.call1685.load.us = load double, double* %polly.access.call1685.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1530.us = add nuw nsw i64 %polly.indvar679.us, %polly.access.mul.Packed_MemRef_call1530.us
  %polly.access.Packed_MemRef_call1530.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530.us
  store double %polly.access.call1685.load.us, double* %polly.access.Packed_MemRef_call1530.us, align 8
  %polly.indvar_next680.us = add nuw i64 %polly.indvar679.us, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar679.us, %276
  br i1 %exitcond1142.not, label %polly.loop_exit677.loopexit.us, label %polly.loop_header675.us

polly.loop_header687.us:                          ; preds = %polly.loop_exit677.loopexit.us, %polly.loop_header687.us
  %polly.indvar691.us = phi i64 [ %polly.indvar_next692.us, %polly.loop_header687.us ], [ %278, %polly.loop_exit677.loopexit.us ]
  %282 = add nuw nsw i64 %polly.indvar691.us, %260
  %polly.access.mul.call1695.us = mul nsw i64 %282, 1000
  %polly.access.add.call1696.us = add nuw nsw i64 %280, %polly.access.mul.call1695.us
  %polly.access.call1697.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1696.us
  %polly.access.call1697.load.us = load double, double* %polly.access.call1697.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1530699.us = add nuw nsw i64 %polly.indvar691.us, %polly.access.mul.Packed_MemRef_call1530.us
  %polly.access.Packed_MemRef_call1530700.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530699.us
  store double %polly.access.call1697.load.us, double* %polly.access.Packed_MemRef_call1530700.us, align 8
  %polly.indvar_next692.us = add nuw nsw i64 %polly.indvar691.us, 1
  %polly.loop_cond693.not.not.us = icmp slt i64 %polly.indvar691.us, %279
  br i1 %polly.loop_cond693.not.not.us, label %polly.loop_header687.us, label %polly.loop_exit689.us

polly.loop_exit689.us:                            ; preds = %polly.loop_header687.us, %polly.loop_exit677.loopexit.us
  %polly.indvar_next672.us = add nuw nsw i64 %polly.indvar671.us, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar_next672.us, 20
  br i1 %exitcond1143.not, label %polly.loop_header701.preheader, label %polly.loop_header668.us

polly.loop_exit677.loopexit.us:                   ; preds = %polly.loop_header675.us
  br i1 %polly.loop_guard690.not, label %polly.loop_exit689.us, label %polly.loop_header687.us

polly.loop_header661.split:                       ; preds = %polly.loop_header661
  br i1 %polly.loop_guard690.not, label %polly.loop_header701.preheader, label %polly.loop_header668

polly.loop_exit703:                               ; preds = %polly.loop_exit710.loopexit.us, %polly.loop_header701.preheader
  %polly.indvar_next666 = add nsw i64 %polly.indvar665, 1
  %polly.loop_cond667 = icmp slt i64 %polly.indvar665, 14
  %indvars.iv.next1149 = add i64 %indvars.iv1148, -80
  %indvars.iv.next1154 = add i64 %indvars.iv1153, 80
  %indvar.next1303 = add i64 %indvar1302, 1
  br i1 %polly.loop_cond667, label %polly.loop_header661, label %polly.loop_exit663

polly.loop_header668:                             ; preds = %polly.loop_header661.split, %polly.loop_exit689
  %polly.indvar671 = phi i64 [ %polly.indvar_next672, %polly.loop_exit689 ], [ 0, %polly.loop_header661.split ]
  %283 = add nuw nsw i64 %polly.indvar671, %247
  %polly.access.mul.Packed_MemRef_call1530698 = mul nuw nsw i64 %polly.indvar671, 1200
  br label %polly.loop_header687

polly.loop_exit689:                               ; preds = %polly.loop_header687
  %polly.indvar_next672 = add nuw nsw i64 %polly.indvar671, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next672, 20
  br i1 %exitcond1141.not, label %polly.loop_header701.preheader, label %polly.loop_header668

polly.loop_header701.preheader:                   ; preds = %polly.loop_exit689, %polly.loop_exit689.us, %polly.loop_header661.split
  %284 = sub nsw i64 %260, %273
  %285 = icmp sgt i64 %284, 0
  %286 = select i1 %285, i64 %284, i64 0
  %polly.loop_guard711 = icmp slt i64 %286, 80
  br i1 %polly.loop_guard711, label %polly.loop_header701.us, label %polly.loop_exit703

polly.loop_header701.us:                          ; preds = %polly.loop_header701.preheader, %polly.loop_exit710.loopexit.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_exit710.loopexit.us ], [ 0, %polly.loop_header701.preheader ]
  %polly.access.mul.Packed_MemRef_call1530723.us = mul nuw nsw i64 %polly.indvar704.us, 1200
  br label %polly.loop_header708.us

polly.loop_header708.us:                          ; preds = %polly.loop_header701.us, %polly.loop_exit718.us
  %indvar1305 = phi i64 [ 0, %polly.loop_header701.us ], [ %indvar.next1306, %polly.loop_exit718.us ]
  %indvars.iv1155 = phi i64 [ %272, %polly.loop_header701.us ], [ %indvars.iv.next1156, %polly.loop_exit718.us ]
  %polly.indvar712.us = phi i64 [ %286, %polly.loop_header701.us ], [ %polly.indvar_next713.us, %polly.loop_exit718.us ]
  %287 = add i64 %271, %indvar1305
  %smin1307 = call i64 @llvm.smin.i64(i64 %287, i64 127)
  %288 = add nsw i64 %smin1307, 1
  %smin1157 = call i64 @llvm.smin.i64(i64 %indvars.iv1155, i64 127)
  %289 = add nsw i64 %polly.indvar712.us, %274
  %polly.loop_guard719.us1200 = icmp sgt i64 %289, -1
  br i1 %polly.loop_guard719.us1200, label %polly.loop_header716.preheader.us, label %polly.loop_exit718.us

polly.loop_header716.us:                          ; preds = %polly.loop_header716.us.preheader, %polly.loop_header716.us
  %polly.indvar720.us = phi i64 [ %polly.indvar_next721.us, %polly.loop_header716.us ], [ %polly.indvar720.us.ph, %polly.loop_header716.us.preheader ]
  %290 = add nuw nsw i64 %polly.indvar720.us, %260
  %polly.access.add.Packed_MemRef_call1530724.us = add nuw nsw i64 %polly.indvar720.us, %polly.access.mul.Packed_MemRef_call1530723.us
  %polly.access.Packed_MemRef_call1530725.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530724.us
  %_p_scalar_726.us = load double, double* %polly.access.Packed_MemRef_call1530725.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_730.us, %_p_scalar_726.us
  %polly.access.Packed_MemRef_call2532733.us = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call1530724.us
  %_p_scalar_734.us = load double, double* %polly.access.Packed_MemRef_call2532733.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_738.us, %_p_scalar_734.us
  %291 = shl i64 %290, 3
  %292 = add i64 %291, %294
  %scevgep739.us = getelementptr i8, i8* %call, i64 %292
  %scevgep739740.us = bitcast i8* %scevgep739.us to double*
  %_p_scalar_741.us = load double, double* %scevgep739740.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_741.us
  store double %p_add42.i.us, double* %scevgep739740.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next721.us = add nuw nsw i64 %polly.indvar720.us, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar720.us, %smin1157
  br i1 %exitcond1158.not, label %polly.loop_exit718.us, label %polly.loop_header716.us, !llvm.loop !110

polly.loop_exit718.us:                            ; preds = %polly.loop_header716.us, %middle.block1299, %polly.loop_header708.us
  %polly.indvar_next713.us = add nuw nsw i64 %polly.indvar712.us, 1
  %polly.loop_cond714.us = icmp ult i64 %polly.indvar712.us, 79
  %indvars.iv.next1156 = add i64 %indvars.iv1155, 1
  %indvar.next1306 = add i64 %indvar1305, 1
  br i1 %polly.loop_cond714.us, label %polly.loop_header708.us, label %polly.loop_exit710.loopexit.us

polly.loop_header716.preheader.us:                ; preds = %polly.loop_header708.us
  %293 = add nsw i64 %polly.indvar712.us, %273
  %polly.access.add.Packed_MemRef_call2532728.us = add nsw i64 %289, %polly.access.mul.Packed_MemRef_call1530723.us
  %polly.access.Packed_MemRef_call2532729.us = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call2532728.us
  %_p_scalar_730.us = load double, double* %polly.access.Packed_MemRef_call2532729.us, align 8
  %polly.access.Packed_MemRef_call1530737.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call2532728.us
  %_p_scalar_738.us = load double, double* %polly.access.Packed_MemRef_call1530737.us, align 8
  %294 = mul i64 %293, 9600
  %min.iters.check1308 = icmp ult i64 %288, 4
  br i1 %min.iters.check1308, label %polly.loop_header716.us.preheader, label %vector.ph1309

vector.ph1309:                                    ; preds = %polly.loop_header716.preheader.us
  %n.vec1311 = and i64 %288, -4
  %broadcast.splatinsert1317 = insertelement <4 x double> poison, double %_p_scalar_730.us, i32 0
  %broadcast.splat1318 = shufflevector <4 x double> %broadcast.splatinsert1317, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1320 = insertelement <4 x double> poison, double %_p_scalar_738.us, i32 0
  %broadcast.splat1321 = shufflevector <4 x double> %broadcast.splatinsert1320, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1309
  %index1312 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1313, %vector.body1301 ]
  %295 = add nuw nsw i64 %index1312, %260
  %296 = add nuw nsw i64 %index1312, %polly.access.mul.Packed_MemRef_call1530723.us
  %297 = getelementptr double, double* %Packed_MemRef_call1530, i64 %296
  %298 = bitcast double* %297 to <4 x double>*
  %wide.load1316 = load <4 x double>, <4 x double>* %298, align 8
  %299 = fmul fast <4 x double> %broadcast.splat1318, %wide.load1316
  %300 = getelementptr double, double* %Packed_MemRef_call2532, i64 %296
  %301 = bitcast double* %300 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %301, align 8
  %302 = fmul fast <4 x double> %broadcast.splat1321, %wide.load1319
  %303 = shl i64 %295, 3
  %304 = add i64 %303, %294
  %305 = getelementptr i8, i8* %call, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %306, align 8, !alias.scope !99, !noalias !101
  %307 = fadd fast <4 x double> %302, %299
  %308 = fmul fast <4 x double> %307, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %309 = fadd fast <4 x double> %308, %wide.load1322
  %310 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %309, <4 x double>* %310, align 8, !alias.scope !99, !noalias !101
  %index.next1313 = add i64 %index1312, 4
  %311 = icmp eq i64 %index.next1313, %n.vec1311
  br i1 %311, label %middle.block1299, label %vector.body1301, !llvm.loop !111

middle.block1299:                                 ; preds = %vector.body1301
  %cmp.n1315 = icmp eq i64 %288, %n.vec1311
  br i1 %cmp.n1315, label %polly.loop_exit718.us, label %polly.loop_header716.us.preheader

polly.loop_header716.us.preheader:                ; preds = %polly.loop_header716.preheader.us, %middle.block1299
  %polly.indvar720.us.ph = phi i64 [ 0, %polly.loop_header716.preheader.us ], [ %n.vec1311, %middle.block1299 ]
  br label %polly.loop_header716.us

polly.loop_exit710.loopexit.us:                   ; preds = %polly.loop_exit718.us
  %polly.indvar_next705.us = add nuw nsw i64 %polly.indvar704.us, 1
  %exitcond1159.not = icmp eq i64 %polly.indvar_next705.us, 20
  br i1 %exitcond1159.not, label %polly.loop_exit703, label %polly.loop_header701.us

polly.loop_header687:                             ; preds = %polly.loop_header668, %polly.loop_header687
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_header687 ], [ %278, %polly.loop_header668 ]
  %312 = add nuw nsw i64 %polly.indvar691, %260
  %polly.access.mul.call1695 = mul nsw i64 %312, 1000
  %polly.access.add.call1696 = add nuw nsw i64 %283, %polly.access.mul.call1695
  %polly.access.call1697 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1696
  %polly.access.call1697.load = load double, double* %polly.access.call1697, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1530699 = add nuw nsw i64 %polly.indvar691, %polly.access.mul.Packed_MemRef_call1530698
  %polly.access.Packed_MemRef_call1530700 = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530699
  store double %polly.access.call1697.load, double* %polly.access.Packed_MemRef_call1530700, align 8
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %polly.loop_cond693.not.not = icmp slt i64 %polly.indvar691, %279
  br i1 %polly.loop_cond693.not.not, label %polly.loop_header687, label %polly.loop_exit689

polly.loop_header868:                             ; preds = %entry, %polly.loop_exit876
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %polly.loop_exit876 ], [ 0, %entry ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %entry ]
  %smin1190 = call i64 @llvm.smin.i64(i64 %indvars.iv1188, i64 -1168)
  %313 = shl nsw i64 %polly.indvar871, 5
  %314 = add nsw i64 %smin1190, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1189 = add nsw i64 %indvars.iv1188, -32
  %exitcond1193.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1193.not, label %polly.loop_header895, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %indvars.iv1184 = phi i64 [ %indvars.iv.next1185, %polly.loop_exit882 ], [ 0, %polly.loop_header868 ]
  %polly.indvar877 = phi i64 [ %polly.indvar_next878, %polly.loop_exit882 ], [ 0, %polly.loop_header868 ]
  %315 = mul nsw i64 %polly.indvar877, -32
  %smin1228 = call i64 @llvm.smin.i64(i64 %315, i64 -1168)
  %316 = add nsw i64 %smin1228, 1200
  %smin1186 = call i64 @llvm.smin.i64(i64 %indvars.iv1184, i64 -1168)
  %317 = shl nsw i64 %polly.indvar877, 5
  %318 = add nsw i64 %smin1186, 1199
  br label %polly.loop_header880

polly.loop_exit882:                               ; preds = %polly.loop_exit888
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %indvars.iv.next1185 = add nsw i64 %indvars.iv1184, -32
  %exitcond1192.not = icmp eq i64 %polly.indvar_next878, 38
  br i1 %exitcond1192.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_exit888, %polly.loop_header874
  %polly.indvar883 = phi i64 [ 0, %polly.loop_header874 ], [ %polly.indvar_next884, %polly.loop_exit888 ]
  %319 = add nuw nsw i64 %polly.indvar883, %313
  %320 = trunc i64 %319 to i32
  %321 = mul nuw nsw i64 %319, 9600
  %min.iters.check = icmp eq i64 %316, 0
  br i1 %min.iters.check, label %polly.loop_header886, label %vector.ph1229

vector.ph1229:                                    ; preds = %polly.loop_header880
  %broadcast.splatinsert1236 = insertelement <4 x i64> poison, i64 %317, i32 0
  %broadcast.splat1237 = shufflevector <4 x i64> %broadcast.splatinsert1236, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1229
  %index1230 = phi i64 [ 0, %vector.ph1229 ], [ %index.next1231, %vector.body1227 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1229 ], [ %vec.ind.next1235, %vector.body1227 ]
  %322 = add nuw nsw <4 x i64> %vec.ind1234, %broadcast.splat1237
  %323 = trunc <4 x i64> %322 to <4 x i32>
  %324 = mul <4 x i32> %broadcast.splat1239, %323
  %325 = add <4 x i32> %324, <i32 3, i32 3, i32 3, i32 3>
  %326 = urem <4 x i32> %325, <i32 1200, i32 1200, i32 1200, i32 1200>
  %327 = sitofp <4 x i32> %326 to <4 x double>
  %328 = fmul fast <4 x double> %327, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %329 = extractelement <4 x i64> %322, i32 0
  %330 = shl i64 %329, 3
  %331 = add nuw nsw i64 %330, %321
  %332 = getelementptr i8, i8* %call, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %328, <4 x double>* %333, align 8, !alias.scope !112, !noalias !114
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %334 = icmp eq i64 %index.next1231, %316
  br i1 %334, label %polly.loop_exit888, label %vector.body1227, !llvm.loop !117

polly.loop_exit888:                               ; preds = %vector.body1227, %polly.loop_header886
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1191.not = icmp eq i64 %polly.indvar883, %314
  br i1 %exitcond1191.not, label %polly.loop_exit882, label %polly.loop_header880

polly.loop_header886:                             ; preds = %polly.loop_header880, %polly.loop_header886
  %polly.indvar889 = phi i64 [ %polly.indvar_next890, %polly.loop_header886 ], [ 0, %polly.loop_header880 ]
  %335 = add nuw nsw i64 %polly.indvar889, %317
  %336 = trunc i64 %335 to i32
  %337 = mul i32 %336, %320
  %338 = add i32 %337, 3
  %339 = urem i32 %338, 1200
  %p_conv31.i = sitofp i32 %339 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %340 = shl i64 %335, 3
  %341 = add nuw nsw i64 %340, %321
  %scevgep892 = getelementptr i8, i8* %call, i64 %341
  %scevgep892893 = bitcast i8* %scevgep892 to double*
  store double %p_div33.i, double* %scevgep892893, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next890 = add nuw nsw i64 %polly.indvar889, 1
  %exitcond1187.not = icmp eq i64 %polly.indvar889, %318
  br i1 %exitcond1187.not, label %polly.loop_exit888, label %polly.loop_header886, !llvm.loop !118

polly.loop_header895:                             ; preds = %polly.loop_exit876, %polly.loop_exit903
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit903 ], [ 0, %polly.loop_exit876 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_exit876 ]
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 -1168)
  %342 = shl nsw i64 %polly.indvar898, 5
  %343 = add nsw i64 %smin1180, 1199
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -32
  %exitcond1183.not = icmp eq i64 %polly.indvar_next899, 38
  br i1 %exitcond1183.not, label %polly.loop_header921, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %indvars.iv1174 = phi i64 [ %indvars.iv.next1175, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %344 = mul nsw i64 %polly.indvar904, -32
  %smin1243 = call i64 @llvm.smin.i64(i64 %344, i64 -968)
  %345 = add nsw i64 %smin1243, 1000
  %smin1176 = call i64 @llvm.smin.i64(i64 %indvars.iv1174, i64 -968)
  %346 = shl nsw i64 %polly.indvar904, 5
  %347 = add nsw i64 %smin1176, 999
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1175 = add nsw i64 %indvars.iv1174, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next905, 32
  br i1 %exitcond1182.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %polly.indvar910 = phi i64 [ 0, %polly.loop_header901 ], [ %polly.indvar_next911, %polly.loop_exit915 ]
  %348 = add nuw nsw i64 %polly.indvar910, %342
  %349 = trunc i64 %348 to i32
  %350 = mul nuw nsw i64 %348, 8000
  %min.iters.check1244 = icmp eq i64 %345, 0
  br i1 %min.iters.check1244, label %polly.loop_header913, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header907
  %broadcast.splatinsert1254 = insertelement <4 x i64> poison, i64 %346, i32 0
  %broadcast.splat1255 = shufflevector <4 x i64> %broadcast.splatinsert1254, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1256 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat1257 = shufflevector <4 x i32> %broadcast.splatinsert1256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1242 ]
  %vec.ind1252 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1245 ], [ %vec.ind.next1253, %vector.body1242 ]
  %351 = add nuw nsw <4 x i64> %vec.ind1252, %broadcast.splat1255
  %352 = trunc <4 x i64> %351 to <4 x i32>
  %353 = mul <4 x i32> %broadcast.splat1257, %352
  %354 = add <4 x i32> %353, <i32 2, i32 2, i32 2, i32 2>
  %355 = urem <4 x i32> %354, <i32 1000, i32 1000, i32 1000, i32 1000>
  %356 = sitofp <4 x i32> %355 to <4 x double>
  %357 = fmul fast <4 x double> %356, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %358 = extractelement <4 x i64> %351, i32 0
  %359 = shl i64 %358, 3
  %360 = add nuw nsw i64 %359, %350
  %361 = getelementptr i8, i8* %call2, i64 %360
  %362 = bitcast i8* %361 to <4 x double>*
  store <4 x double> %357, <4 x double>* %362, align 8, !alias.scope !116, !noalias !119
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1253 = add <4 x i64> %vec.ind1252, <i64 4, i64 4, i64 4, i64 4>
  %363 = icmp eq i64 %index.next1249, %345
  br i1 %363, label %polly.loop_exit915, label %vector.body1242, !llvm.loop !120

polly.loop_exit915:                               ; preds = %vector.body1242, %polly.loop_header913
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar910, %343
  br i1 %exitcond1181.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_header907, %polly.loop_header913
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_header913 ], [ 0, %polly.loop_header907 ]
  %364 = add nuw nsw i64 %polly.indvar916, %346
  %365 = trunc i64 %364 to i32
  %366 = mul i32 %365, %349
  %367 = add i32 %366, 2
  %368 = urem i32 %367, 1000
  %p_conv10.i = sitofp i32 %368 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %369 = shl i64 %364, 3
  %370 = add nuw nsw i64 %369, %350
  %scevgep919 = getelementptr i8, i8* %call2, i64 %370
  %scevgep919920 = bitcast i8* %scevgep919 to double*
  store double %p_div12.i, double* %scevgep919920, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar916, %347
  br i1 %exitcond1177.not, label %polly.loop_exit915, label %polly.loop_header913, !llvm.loop !121

polly.loop_header921:                             ; preds = %polly.loop_exit903, %polly.loop_exit929
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit929 ], [ 0, %polly.loop_exit903 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_exit903 ]
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -1168)
  %371 = shl nsw i64 %polly.indvar924, 5
  %372 = add nsw i64 %smin1170, 1199
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1173.not = icmp eq i64 %polly.indvar_next925, 38
  br i1 %exitcond1173.not, label %init_array.exit, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %indvars.iv1164 = phi i64 [ %indvars.iv.next1165, %polly.loop_exit935 ], [ 0, %polly.loop_header921 ]
  %polly.indvar930 = phi i64 [ %polly.indvar_next931, %polly.loop_exit935 ], [ 0, %polly.loop_header921 ]
  %373 = mul nsw i64 %polly.indvar930, -32
  %smin1261 = call i64 @llvm.smin.i64(i64 %373, i64 -968)
  %374 = add nsw i64 %smin1261, 1000
  %smin1166 = call i64 @llvm.smin.i64(i64 %indvars.iv1164, i64 -968)
  %375 = shl nsw i64 %polly.indvar930, 5
  %376 = add nsw i64 %smin1166, 999
  br label %polly.loop_header933

polly.loop_exit935:                               ; preds = %polly.loop_exit941
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %indvars.iv.next1165 = add nsw i64 %indvars.iv1164, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next931, 32
  br i1 %exitcond1172.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_exit941, %polly.loop_header927
  %polly.indvar936 = phi i64 [ 0, %polly.loop_header927 ], [ %polly.indvar_next937, %polly.loop_exit941 ]
  %377 = add nuw nsw i64 %polly.indvar936, %371
  %378 = trunc i64 %377 to i32
  %379 = mul nuw nsw i64 %377, 8000
  %min.iters.check1262 = icmp eq i64 %374, 0
  br i1 %min.iters.check1262, label %polly.loop_header939, label %vector.ph1263

vector.ph1263:                                    ; preds = %polly.loop_header933
  %broadcast.splatinsert1272 = insertelement <4 x i64> poison, i64 %375, i32 0
  %broadcast.splat1273 = shufflevector <4 x i64> %broadcast.splatinsert1272, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %378, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1260 ]
  %vec.ind1270 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1263 ], [ %vec.ind.next1271, %vector.body1260 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1270, %broadcast.splat1273
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1275, %381
  %383 = add <4 x i32> %382, <i32 1, i32 1, i32 1, i32 1>
  %384 = urem <4 x i32> %383, <i32 1200, i32 1200, i32 1200, i32 1200>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %379
  %390 = getelementptr i8, i8* %call1, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !115, !noalias !122
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1271 = add <4 x i64> %vec.ind1270, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1267, %374
  br i1 %392, label %polly.loop_exit941, label %vector.body1260, !llvm.loop !123

polly.loop_exit941:                               ; preds = %vector.body1260, %polly.loop_header939
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar936, %372
  br i1 %exitcond1171.not, label %polly.loop_exit935, label %polly.loop_header933

polly.loop_header939:                             ; preds = %polly.loop_header933, %polly.loop_header939
  %polly.indvar942 = phi i64 [ %polly.indvar_next943, %polly.loop_header939 ], [ 0, %polly.loop_header933 ]
  %393 = add nuw nsw i64 %polly.indvar942, %375
  %394 = trunc i64 %393 to i32
  %395 = mul i32 %394, %378
  %396 = add i32 %395, 1
  %397 = urem i32 %396, 1200
  %p_conv.i = sitofp i32 %397 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %398 = shl i64 %393, 3
  %399 = add nuw nsw i64 %398, %379
  %scevgep946 = getelementptr i8, i8* %call1, i64 %399
  %scevgep946947 = bitcast i8* %scevgep946 to double*
  store double %p_div.i, double* %scevgep946947, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next943 = add nuw nsw i64 %polly.indvar942, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar942, %376
  br i1 %exitcond1167.not, label %polly.loop_exit941, label %polly.loop_header939, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 128}
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
!51 = !{!"llvm.loop.tile.size", i32 80}
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
!84 = distinct !{!84, !81, !13}
!85 = distinct !{!85, !13}
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
!97 = distinct !{!97, !81, !13}
!98 = distinct !{!98, !13}
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
!110 = distinct !{!110, !81, !13}
!111 = distinct !{!111, !13}
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
