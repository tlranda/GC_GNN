; ModuleID = 'syr2k_exhaustive/mmp_all_XL_821.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_821.c"
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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv7.i, i64 %index1217
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit923
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1279 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1279, label %for.body3.i46.preheader1434, label %vector.ph1280

vector.ph1280:                                    ; preds = %for.body3.i46.preheader
  %n.vec1282 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1278 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %index1283
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
  br i1 %cmp.n1286, label %for.inc6.i, label %for.body3.i46.preheader1434

for.body3.i46.preheader1434:                      ; preds = %for.body3.i46.preheader, %middle.block1276
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1282, %middle.block1276 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1434, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1434 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %min.iters.check1326 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1326, label %for.body3.i60.preheader1430, label %vector.ph1327

vector.ph1327:                                    ; preds = %for.body3.i60.preheader
  %n.vec1329 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1327
  %index1330 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1331, %vector.body1325 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %index1330
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
  br i1 %cmp.n1333, label %for.inc6.i63, label %for.body3.i60.preheader1430

for.body3.i60.preheader1430:                      ; preds = %for.body3.i60.preheader, %middle.block1323
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1329, %middle.block1323 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1430, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1430 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %min.iters.check1376 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1376, label %for.body3.i99.preheader1426, label %vector.ph1377

vector.ph1377:                                    ; preds = %for.body3.i99.preheader
  %n.vec1379 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1375

vector.body1375:                                  ; preds = %vector.body1375, %vector.ph1377
  %index1380 = phi i64 [ 0, %vector.ph1377 ], [ %index.next1381, %vector.body1375 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %index1380
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
  br i1 %cmp.n1383, label %for.inc6.i102, label %for.body3.i99.preheader1426

for.body3.i99.preheader1426:                      ; preds = %for.body3.i99.preheader, %middle.block1373
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1379, %middle.block1373 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1426, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1426 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall136 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
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
  %exitcond1107.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1389 = add i64 %indvar1388, 1
  br i1 %exitcond1107.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1106.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1106.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 100
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next204, 10
  br i1 %exitcond1105.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = mul nuw nsw i64 %polly.indvar209, 80
  %99 = lshr i64 %polly.indvar209, 2
  %100 = add nuw i64 %polly.indvar209, %99
  %101 = shl nuw nsw i64 %100, 6
  %102 = sub i64 %98, %101
  %103 = mul nsw i64 %polly.indvar209, -80
  %104 = add i64 %103, %101
  %105 = lshr i64 %polly.indvar209, 2
  %106 = add nuw i64 %polly.indvar209, %105
  %107 = shl nuw nsw i64 %106, 6
  %108 = sub i64 %indvars.iv1092, %107
  %109 = add i64 %indvars.iv1096, %107
  %110 = mul nsw i64 %polly.indvar209, -80
  %111 = mul nuw nsw i64 %polly.indvar209, 80
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %112 = add nsw i64 %110, 1199
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 80
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, -80
  %exitcond1104.not = icmp eq i64 %polly.indvar_next210, 15
  br i1 %exitcond1104.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %113 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next216, 100
  br i1 %exitcond1088.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %114 = add nuw nsw i64 %polly.indvar221, %111
  %polly.access.mul.call2225 = mul nuw nsw i64 %114, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %113, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1402 = phi i64 [ %indvar.next1403, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit267 ], [ %109, %polly.loop_exit214 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit267 ], [ %108, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %106, %polly.loop_exit214 ]
  %115 = mul nsw i64 %indvar1402, -64
  %116 = add i64 %102, %115
  %smax1404 = call i64 @llvm.smax.i64(i64 %116, i64 0)
  %117 = shl nuw nsw i64 %indvar1402, 6
  %118 = add i64 %104, %117
  %119 = add i64 %smax1404, %118
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1094, i64 0)
  %120 = add i64 %smax, %indvars.iv1098
  %121 = shl nsw i64 %polly.indvar231, 6
  %122 = add nsw i64 %121, %110
  %123 = add nsw i64 %122, -1
  %.inv = icmp sgt i64 %122, 79
  %124 = select i1 %.inv, i64 79, i64 %123
  %polly.loop_guard = icmp sgt i64 %124, -1
  %125 = icmp sgt i64 %122, 0
  %126 = select i1 %125, i64 %122, i64 0
  %127 = add nsw i64 %122, 63
  %128 = icmp slt i64 %112, %127
  %129 = select i1 %128, i64 %112, i64 %127
  %polly.loop_guard254.not = icmp sgt i64 %126, %129
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %130 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %131 = add nuw nsw i64 %polly.indvar243.us, %111
  %polly.access.mul.call1247.us = mul nuw nsw i64 %131, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %130, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar243.us, %124
  br i1 %exitcond1090.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %126, %polly.loop_exit242.loopexit.us ]
  %132 = add nuw nsw i64 %polly.indvar255.us, %111
  %polly.access.mul.call1259.us = mul nsw i64 %132, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %130, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %129
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_exit253.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next238.us, 100
  br i1 %exitcond1091.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_exit267:                               ; preds = %polly.loop_exit274, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 18
  %indvars.iv.next1095 = add i64 %indvars.iv1094, -64
  %indvars.iv.next1099 = add i64 %indvars.iv1098, 64
  %indvar.next1403 = add i64 %indvar1402, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228.split ]
  %133 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next238, 100
  br i1 %exitcond1089.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.loop_header228.split
  %134 = sub nsw i64 %111, %121
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %137 = mul nsw i64 %polly.indvar231, -64
  %138 = icmp slt i64 %137, -1136
  %139 = select i1 %138, i64 %137, i64 -1136
  %140 = add nsw i64 %139, 1199
  %polly.loop_guard275.not = icmp sgt i64 %136, %140
  br i1 %polly.loop_guard275.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %126, %polly.loop_header234 ]
  %141 = add nuw nsw i64 %polly.indvar255, %111
  %polly.access.mul.call1259 = mul nsw i64 %141, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %133, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %129
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.loop_header265:                             ; preds = %polly.loop_header265.preheader, %polly.loop_exit274
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit274 ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1287 = mul nuw nsw i64 %polly.indvar268, 1200
  br label %polly.loop_header272

polly.loop_exit274:                               ; preds = %polly.loop_exit282
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next269, 100
  br i1 %exitcond1103.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header272:                             ; preds = %polly.loop_header265, %polly.loop_exit282
  %indvar1405 = phi i64 [ 0, %polly.loop_header265 ], [ %indvar.next1406, %polly.loop_exit282 ]
  %indvars.iv1100 = phi i64 [ %120, %polly.loop_header265 ], [ %indvars.iv.next1101, %polly.loop_exit282 ]
  %polly.indvar276 = phi i64 [ %136, %polly.loop_header265 ], [ %polly.indvar_next277, %polly.loop_exit282 ]
  %142 = add i64 %119, %indvar1405
  %smin1407 = call i64 @llvm.smin.i64(i64 %142, i64 79)
  %143 = add nsw i64 %smin1407, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1100, i64 79)
  %144 = add nsw i64 %polly.indvar276, %122
  %polly.loop_guard2831195 = icmp sgt i64 %144, -1
  br i1 %polly.loop_guard2831195, label %polly.loop_header280.preheader, label %polly.loop_exit282

polly.loop_header280.preheader:                   ; preds = %polly.loop_header272
  %145 = add nuw nsw i64 %polly.indvar276, %121
  %polly.access.add.Packed_MemRef_call2292 = add nsw i64 %144, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call2293 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call2293, align 8
  %polly.access.Packed_MemRef_call1301 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292
  %_p_scalar_302 = load double, double* %polly.access.Packed_MemRef_call1301, align 8
  %146 = mul i64 %145, 9600
  %min.iters.check1408 = icmp ult i64 %143, 4
  br i1 %min.iters.check1408, label %polly.loop_header280.preheader1423, label %vector.ph1409

vector.ph1409:                                    ; preds = %polly.loop_header280.preheader
  %n.vec1411 = and i64 %143, -4
  %broadcast.splatinsert1417 = insertelement <4 x double> poison, double %_p_scalar_294, i32 0
  %broadcast.splat1418 = shufflevector <4 x double> %broadcast.splatinsert1417, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1420 = insertelement <4 x double> poison, double %_p_scalar_302, i32 0
  %broadcast.splat1421 = shufflevector <4 x double> %broadcast.splatinsert1420, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1401

vector.body1401:                                  ; preds = %vector.body1401, %vector.ph1409
  %index1412 = phi i64 [ 0, %vector.ph1409 ], [ %index.next1413, %vector.body1401 ]
  %147 = add nuw nsw i64 %index1412, %111
  %148 = add nuw nsw i64 %index1412, %polly.access.mul.Packed_MemRef_call1287
  %149 = getelementptr double, double* %Packed_MemRef_call1, i64 %148
  %150 = bitcast double* %149 to <4 x double>*
  %wide.load1416 = load <4 x double>, <4 x double>* %150, align 8
  %151 = fmul fast <4 x double> %broadcast.splat1418, %wide.load1416
  %152 = getelementptr double, double* %Packed_MemRef_call2, i64 %148
  %153 = bitcast double* %152 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %153, align 8
  %154 = fmul fast <4 x double> %broadcast.splat1421, %wide.load1419
  %155 = shl i64 %147, 3
  %156 = add i64 %155, %146
  %157 = getelementptr i8, i8* %call, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1422 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !72, !noalias !74
  %159 = fadd fast <4 x double> %154, %151
  %160 = fmul fast <4 x double> %159, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %161 = fadd fast <4 x double> %160, %wide.load1422
  %162 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !72, !noalias !74
  %index.next1413 = add i64 %index1412, 4
  %163 = icmp eq i64 %index.next1413, %n.vec1411
  br i1 %163, label %middle.block1399, label %vector.body1401, !llvm.loop !84

middle.block1399:                                 ; preds = %vector.body1401
  %cmp.n1415 = icmp eq i64 %143, %n.vec1411
  br i1 %cmp.n1415, label %polly.loop_exit282, label %polly.loop_header280.preheader1423

polly.loop_header280.preheader1423:               ; preds = %polly.loop_header280.preheader, %middle.block1399
  %polly.indvar284.ph = phi i64 [ 0, %polly.loop_header280.preheader ], [ %n.vec1411, %middle.block1399 ]
  br label %polly.loop_header280

polly.loop_exit282:                               ; preds = %polly.loop_header280, %middle.block1399, %polly.loop_header272
  %polly.indvar_next277 = add nuw nsw i64 %polly.indvar276, 1
  %polly.loop_cond278.not.not = icmp slt i64 %polly.indvar276, %140
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 1
  %indvar.next1406 = add i64 %indvar1405, 1
  br i1 %polly.loop_cond278.not.not, label %polly.loop_header272, label %polly.loop_exit274

polly.loop_header280:                             ; preds = %polly.loop_header280.preheader1423, %polly.loop_header280
  %polly.indvar284 = phi i64 [ %polly.indvar_next285, %polly.loop_header280 ], [ %polly.indvar284.ph, %polly.loop_header280.preheader1423 ]
  %164 = add nuw nsw i64 %polly.indvar284, %111
  %polly.access.add.Packed_MemRef_call1288 = add nuw nsw i64 %polly.indvar284, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_294, %_p_scalar_290
  %polly.access.Packed_MemRef_call2297 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_298 = load double, double* %polly.access.Packed_MemRef_call2297, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_302, %_p_scalar_298
  %165 = shl i64 %164, 3
  %166 = add i64 %165, %146
  %scevgep303 = getelementptr i8, i8* %call, i64 %166
  %scevgep303304 = bitcast i8* %scevgep303 to double*
  %_p_scalar_305 = load double, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_305
  store double %p_add42.i118, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285 = add nuw nsw i64 %polly.indvar284, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar284, %smin
  br i1 %exitcond1102.not, label %polly.loop_exit282, label %polly.loop_header280, !llvm.loop !85

polly.start308:                                   ; preds = %kernel_syr2k.exit
  %malloccall310 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall312 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header396

polly.exiting309:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall310)
  tail call void @free(i8* %malloccall312)
  br label %kernel_syr2k.exit90

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.start308
  %indvar1338 = phi i64 [ %indvar.next1339, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %167 = add i64 %indvar1338, 1
  %168 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %168
  %min.iters.check1340 = icmp ult i64 %167, 4
  br i1 %min.iters.check1340, label %polly.loop_header402.preheader, label %vector.ph1341

vector.ph1341:                                    ; preds = %polly.loop_header396
  %n.vec1343 = and i64 %167, -4
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1341
  %index1344 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1345, %vector.body1337 ]
  %169 = shl nuw nsw i64 %index1344, 3
  %170 = getelementptr i8, i8* %scevgep408, i64 %169
  %171 = bitcast i8* %170 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %171, align 8, !alias.scope !86, !noalias !88
  %172 = fmul fast <4 x double> %wide.load1348, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %173 = bitcast i8* %170 to <4 x double>*
  store <4 x double> %172, <4 x double>* %173, align 8, !alias.scope !86, !noalias !88
  %index.next1345 = add i64 %index1344, 4
  %174 = icmp eq i64 %index.next1345, %n.vec1343
  br i1 %174, label %middle.block1335, label %vector.body1337, !llvm.loop !93

middle.block1335:                                 ; preds = %vector.body1337
  %cmp.n1347 = icmp eq i64 %167, %n.vec1343
  br i1 %cmp.n1347, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header396, %middle.block1335
  %polly.indvar405.ph = phi i64 [ 0, %polly.loop_header396 ], [ %n.vec1343, %middle.block1335 ]
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402, %middle.block1335
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next400, 1200
  %indvar.next1339 = add i64 %indvar1338, 1
  br i1 %exitcond1132.not, label %polly.loop_header412.preheader, label %polly.loop_header396

polly.loop_header412.preheader:                   ; preds = %polly.loop_exit404
  %Packed_MemRef_call1311 = bitcast i8* %malloccall310 to double*
  %Packed_MemRef_call2313 = bitcast i8* %malloccall312 to double*
  br label %polly.loop_header412

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_header402
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_header402 ], [ %polly.indvar405.ph, %polly.loop_header402.preheader ]
  %175 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %175
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1131.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !94

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_header412.preheader ]
  %176 = mul nuw nsw i64 %polly.indvar415, 100
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next416, 10
  br i1 %exitcond1130.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %177 = mul nuw nsw i64 %polly.indvar421, 80
  %178 = lshr i64 %polly.indvar421, 2
  %179 = add nuw i64 %polly.indvar421, %178
  %180 = shl nuw nsw i64 %179, 6
  %181 = sub i64 %177, %180
  %182 = mul nsw i64 %polly.indvar421, -80
  %183 = add i64 %182, %180
  %184 = lshr i64 %polly.indvar421, 2
  %185 = add nuw i64 %polly.indvar421, %184
  %186 = shl nuw nsw i64 %185, 6
  %187 = sub i64 %indvars.iv1115, %186
  %188 = add i64 %indvars.iv1120, %186
  %189 = mul nsw i64 %polly.indvar421, -80
  %190 = mul nuw nsw i64 %polly.indvar421, 80
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %191 = add nsw i64 %189, 1199
  br label %polly.loop_header441

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -80
  %indvars.iv.next1116 = add nuw nsw i64 %indvars.iv1115, 80
  %indvars.iv.next1121 = add nsw i64 %indvars.iv1120, -80
  %exitcond1129.not = icmp eq i64 %polly.indvar_next422, 15
  br i1 %exitcond1129.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %192 = add nuw nsw i64 %polly.indvar427, %176
  %polly.access.mul.Packed_MemRef_call2313 = mul nuw nsw i64 %polly.indvar427, 1200
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_header430
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next428, 100
  br i1 %exitcond1111.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header424
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header424 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %193 = add nuw nsw i64 %polly.indvar433, %190
  %polly.access.mul.call2437 = mul nuw nsw i64 %193, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %192, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2313 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call2313
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1108
  br i1 %exitcond1110.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit426
  %indvar1352 = phi i64 [ %indvar.next1353, %polly.loop_exit482 ], [ 0, %polly.loop_exit426 ]
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit482 ], [ %188, %polly.loop_exit426 ]
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit482 ], [ %187, %polly.loop_exit426 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %185, %polly.loop_exit426 ]
  %194 = mul nsw i64 %indvar1352, -64
  %195 = add i64 %181, %194
  %smax1354 = call i64 @llvm.smax.i64(i64 %195, i64 0)
  %196 = shl nuw nsw i64 %indvar1352, 6
  %197 = add i64 %183, %196
  %198 = add i64 %smax1354, %197
  %smax1119 = call i64 @llvm.smax.i64(i64 %indvars.iv1117, i64 0)
  %199 = add i64 %smax1119, %indvars.iv1122
  %200 = shl nsw i64 %polly.indvar444, 6
  %201 = add nsw i64 %200, %189
  %202 = add nsw i64 %201, -1
  %.inv942 = icmp sgt i64 %201, 79
  %203 = select i1 %.inv942, i64 79, i64 %202
  %polly.loop_guard457 = icmp sgt i64 %203, -1
  %204 = icmp sgt i64 %201, 0
  %205 = select i1 %204, i64 %201, i64 0
  %206 = add nsw i64 %201, 63
  %207 = icmp slt i64 %191, %206
  %208 = select i1 %207, i64 %191, i64 %206
  %polly.loop_guard469.not = icmp sgt i64 %205, %208
  br i1 %polly.loop_guard457, label %polly.loop_header447.us, label %polly.loop_header441.split

polly.loop_header447.us:                          ; preds = %polly.loop_header441, %polly.loop_exit468.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header441 ]
  %209 = add nuw nsw i64 %polly.indvar450.us, %176
  %polly.access.mul.Packed_MemRef_call1311.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %210 = add nuw nsw i64 %polly.indvar458.us, %190
  %polly.access.mul.call1462.us = mul nuw nsw i64 %210, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %209, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar458.us, %203
  br i1 %exitcond1113.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %205, %polly.loop_exit456.loopexit.us ]
  %211 = add nuw nsw i64 %polly.indvar470.us, %190
  %polly.access.mul.call1474.us = mul nsw i64 %211, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %209, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %208
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next451.us, 100
  br i1 %exitcond1114.not, label %polly.loop_header480.preheader, label %polly.loop_header447.us

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_exit482:                               ; preds = %polly.loop_exit489, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp ult i64 %polly.indvar444, 18
  %indvars.iv.next1118 = add i64 %indvars.iv1117, -64
  %indvars.iv.next1123 = add i64 %indvars.iv1122, 64
  %indvar.next1353 = add i64 %indvar1352, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header447:                             ; preds = %polly.loop_header441.split, %polly.loop_exit468
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_exit468 ], [ 0, %polly.loop_header441.split ]
  %212 = add nuw nsw i64 %polly.indvar450, %176
  %polly.access.mul.Packed_MemRef_call1311477 = mul nuw nsw i64 %polly.indvar450, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next451, 100
  br i1 %exitcond1112.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header441.split
  %213 = sub nsw i64 %190, %200
  %214 = icmp sgt i64 %213, 0
  %215 = select i1 %214, i64 %213, i64 0
  %216 = mul nsw i64 %polly.indvar444, -64
  %217 = icmp slt i64 %216, -1136
  %218 = select i1 %217, i64 %216, i64 -1136
  %219 = add nsw i64 %218, 1199
  %polly.loop_guard490.not = icmp sgt i64 %215, %219
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header466:                             ; preds = %polly.loop_header447, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %205, %polly.loop_header447 ]
  %220 = add nuw nsw i64 %polly.indvar470, %190
  %polly.access.mul.call1474 = mul nsw i64 %220, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %212, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1311477
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %208
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.loop_header480:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit489
  %polly.indvar483 = phi i64 [ %polly.indvar_next484, %polly.loop_exit489 ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1311502 = mul nuw nsw i64 %polly.indvar483, 1200
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_exit497
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar_next484, 100
  br i1 %exitcond1128.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header487:                             ; preds = %polly.loop_header480, %polly.loop_exit497
  %indvar1355 = phi i64 [ 0, %polly.loop_header480 ], [ %indvar.next1356, %polly.loop_exit497 ]
  %indvars.iv1124 = phi i64 [ %199, %polly.loop_header480 ], [ %indvars.iv.next1125, %polly.loop_exit497 ]
  %polly.indvar491 = phi i64 [ %215, %polly.loop_header480 ], [ %polly.indvar_next492, %polly.loop_exit497 ]
  %221 = add i64 %198, %indvar1355
  %smin1357 = call i64 @llvm.smin.i64(i64 %221, i64 79)
  %222 = add nsw i64 %smin1357, 1
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 79)
  %223 = add nsw i64 %polly.indvar491, %201
  %polly.loop_guard4981196 = icmp sgt i64 %223, -1
  br i1 %polly.loop_guard4981196, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %224 = add nuw nsw i64 %polly.indvar491, %200
  %polly.access.add.Packed_MemRef_call2313507 = add nsw i64 %223, %polly.access.mul.Packed_MemRef_call1311502
  %polly.access.Packed_MemRef_call2313508 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2313508, align 8
  %polly.access.Packed_MemRef_call1311516 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1311516, align 8
  %225 = mul i64 %224, 9600
  %min.iters.check1358 = icmp ult i64 %222, 4
  br i1 %min.iters.check1358, label %polly.loop_header495.preheader1427, label %vector.ph1359

vector.ph1359:                                    ; preds = %polly.loop_header495.preheader
  %n.vec1361 = and i64 %222, -4
  %broadcast.splatinsert1367 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1368 = shufflevector <4 x double> %broadcast.splatinsert1367, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1370 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1371 = shufflevector <4 x double> %broadcast.splatinsert1370, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1351

vector.body1351:                                  ; preds = %vector.body1351, %vector.ph1359
  %index1362 = phi i64 [ 0, %vector.ph1359 ], [ %index.next1363, %vector.body1351 ]
  %226 = add nuw nsw i64 %index1362, %190
  %227 = add nuw nsw i64 %index1362, %polly.access.mul.Packed_MemRef_call1311502
  %228 = getelementptr double, double* %Packed_MemRef_call1311, i64 %227
  %229 = bitcast double* %228 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %229, align 8
  %230 = fmul fast <4 x double> %broadcast.splat1368, %wide.load1366
  %231 = getelementptr double, double* %Packed_MemRef_call2313, i64 %227
  %232 = bitcast double* %231 to <4 x double>*
  %wide.load1369 = load <4 x double>, <4 x double>* %232, align 8
  %233 = fmul fast <4 x double> %broadcast.splat1371, %wide.load1369
  %234 = shl i64 %226, 3
  %235 = add i64 %234, %225
  %236 = getelementptr i8, i8* %call, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %237, align 8, !alias.scope !86, !noalias !88
  %238 = fadd fast <4 x double> %233, %230
  %239 = fmul fast <4 x double> %238, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %240 = fadd fast <4 x double> %239, %wide.load1372
  %241 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %240, <4 x double>* %241, align 8, !alias.scope !86, !noalias !88
  %index.next1363 = add i64 %index1362, 4
  %242 = icmp eq i64 %index.next1363, %n.vec1361
  br i1 %242, label %middle.block1349, label %vector.body1351, !llvm.loop !97

middle.block1349:                                 ; preds = %vector.body1351
  %cmp.n1365 = icmp eq i64 %222, %n.vec1361
  br i1 %cmp.n1365, label %polly.loop_exit497, label %polly.loop_header495.preheader1427

polly.loop_header495.preheader1427:               ; preds = %polly.loop_header495.preheader, %middle.block1349
  %polly.indvar499.ph = phi i64 [ 0, %polly.loop_header495.preheader ], [ %n.vec1361, %middle.block1349 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1349, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %219
  %indvars.iv.next1125 = add i64 %indvars.iv1124, 1
  %indvar.next1356 = add i64 %indvar1355, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_exit489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1427, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1427 ]
  %243 = add nuw nsw i64 %polly.indvar499, %190
  %polly.access.add.Packed_MemRef_call1311503 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1311502
  %polly.access.Packed_MemRef_call1311504 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1311504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2313512 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2313512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %244 = shl i64 %243, 3
  %245 = add i64 %244, %225
  %scevgep518 = getelementptr i8, i8* %call, i64 %245
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_520
  store double %p_add42.i79, double* %scevgep518519, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar499, %smin1126
  br i1 %exitcond1127.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !98

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall527 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %246 = add i64 %indvar, 1
  %247 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %247
  %min.iters.check1290 = icmp ult i64 %246, 4
  br i1 %min.iters.check1290, label %polly.loop_header617.preheader, label %vector.ph1291

vector.ph1291:                                    ; preds = %polly.loop_header611
  %n.vec1293 = and i64 %246, -4
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1291
  %index1294 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1295, %vector.body1289 ]
  %248 = shl nuw nsw i64 %index1294, 3
  %249 = getelementptr i8, i8* %scevgep623, i64 %248
  %250 = bitcast i8* %249 to <4 x double>*
  %wide.load1298 = load <4 x double>, <4 x double>* %250, align 8, !alias.scope !99, !noalias !101
  %251 = fmul fast <4 x double> %wide.load1298, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %252 = bitcast i8* %249 to <4 x double>*
  store <4 x double> %251, <4 x double>* %252, align 8, !alias.scope !99, !noalias !101
  %index.next1295 = add i64 %index1294, 4
  %253 = icmp eq i64 %index.next1295, %n.vec1293
  br i1 %253, label %middle.block1287, label %vector.body1289, !llvm.loop !106

middle.block1287:                                 ; preds = %vector.body1289
  %cmp.n1297 = icmp eq i64 %246, %n.vec1293
  br i1 %cmp.n1297, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1287
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1293, %middle.block1287 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1287
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1157.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %254 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %254
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1156.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %255 = mul nuw nsw i64 %polly.indvar630, 100
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next631, 10
  br i1 %exitcond1155.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %256 = mul nuw nsw i64 %polly.indvar636, 80
  %257 = lshr i64 %polly.indvar636, 2
  %258 = add nuw i64 %polly.indvar636, %257
  %259 = shl nuw nsw i64 %258, 6
  %260 = sub i64 %256, %259
  %261 = mul nsw i64 %polly.indvar636, -80
  %262 = add i64 %261, %259
  %263 = lshr i64 %polly.indvar636, 2
  %264 = add nuw i64 %polly.indvar636, %263
  %265 = shl nuw nsw i64 %264, 6
  %266 = sub i64 %indvars.iv1140, %265
  %267 = add i64 %indvars.iv1145, %265
  %268 = mul nsw i64 %polly.indvar636, -80
  %269 = mul nuw nsw i64 %polly.indvar636, 80
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %270 = add nsw i64 %268, 1199
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -80
  %indvars.iv.next1141 = add nuw nsw i64 %indvars.iv1140, 80
  %indvars.iv.next1146 = add nsw i64 %indvars.iv1145, -80
  %exitcond1154.not = icmp eq i64 %polly.indvar_next637, 15
  br i1 %exitcond1154.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %271 = add nuw nsw i64 %polly.indvar642, %255
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next643, 100
  br i1 %exitcond1136.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %272 = add nuw nsw i64 %polly.indvar648, %269
  %polly.access.mul.call2652 = mul nuw nsw i64 %272, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %271, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1133
  br i1 %exitcond1135.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit641
  %indvar1302 = phi i64 [ %indvar.next1303, %polly.loop_exit697 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit697 ], [ %267, %polly.loop_exit641 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit697 ], [ %266, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %264, %polly.loop_exit641 ]
  %273 = mul nsw i64 %indvar1302, -64
  %274 = add i64 %260, %273
  %smax1304 = call i64 @llvm.smax.i64(i64 %274, i64 0)
  %275 = shl nuw nsw i64 %indvar1302, 6
  %276 = add i64 %262, %275
  %277 = add i64 %smax1304, %276
  %smax1144 = call i64 @llvm.smax.i64(i64 %indvars.iv1142, i64 0)
  %278 = add i64 %smax1144, %indvars.iv1147
  %279 = shl nsw i64 %polly.indvar659, 6
  %280 = add nsw i64 %279, %268
  %281 = add nsw i64 %280, -1
  %.inv943 = icmp sgt i64 %280, 79
  %282 = select i1 %.inv943, i64 79, i64 %281
  %polly.loop_guard672 = icmp sgt i64 %282, -1
  %283 = icmp sgt i64 %280, 0
  %284 = select i1 %283, i64 %280, i64 0
  %285 = add nsw i64 %280, 63
  %286 = icmp slt i64 %270, %285
  %287 = select i1 %286, i64 %270, i64 %285
  %polly.loop_guard684.not = icmp sgt i64 %284, %287
  br i1 %polly.loop_guard672, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit683.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit683.us ], [ 0, %polly.loop_header656 ]
  %288 = add nuw nsw i64 %polly.indvar665.us, %255
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  br label %polly.loop_header669.us

polly.loop_header669.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header662.us ]
  %289 = add nuw nsw i64 %polly.indvar673.us, %269
  %polly.access.mul.call1677.us = mul nuw nsw i64 %289, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %288, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us = add nuw nsw i64 %polly.indvar673.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar673.us, %282
  br i1 %exitcond1138.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %284, %polly.loop_exit671.loopexit.us ]
  %290 = add nuw nsw i64 %polly.indvar685.us, %269
  %polly.access.mul.call1689.us = mul nsw i64 %290, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %288, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693.us = add nuw nsw i64 %polly.indvar685.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %287
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_exit683.us

polly.loop_exit683.us:                            ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next666.us, 100
  br i1 %exitcond1139.not, label %polly.loop_header695.preheader, label %polly.loop_header662.us

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_exit683.us, label %polly.loop_header681.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_exit697:                               ; preds = %polly.loop_exit704, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp ult i64 %polly.indvar659, 18
  %indvars.iv.next1143 = add i64 %indvars.iv1142, -64
  %indvars.iv.next1148 = add i64 %indvars.iv1147, 64
  %indvar.next1303 = add i64 %indvar1302, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit683
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit683 ], [ 0, %polly.loop_header656.split ]
  %291 = add nuw nsw i64 %polly.indvar665, %255
  %polly.access.mul.Packed_MemRef_call1526692 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header681

polly.loop_exit683:                               ; preds = %polly.loop_header681
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next666, 100
  br i1 %exitcond1137.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_header695.preheader:                   ; preds = %polly.loop_exit683, %polly.loop_exit683.us, %polly.loop_header656.split
  %292 = sub nsw i64 %269, %279
  %293 = icmp sgt i64 %292, 0
  %294 = select i1 %293, i64 %292, i64 0
  %295 = mul nsw i64 %polly.indvar659, -64
  %296 = icmp slt i64 %295, -1136
  %297 = select i1 %296, i64 %295, i64 -1136
  %298 = add nsw i64 %297, 1199
  %polly.loop_guard705.not = icmp sgt i64 %294, %298
  br i1 %polly.loop_guard705.not, label %polly.loop_exit697, label %polly.loop_header695

polly.loop_header681:                             ; preds = %polly.loop_header662, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %284, %polly.loop_header662 ]
  %299 = add nuw nsw i64 %polly.indvar685, %269
  %polly.access.mul.call1689 = mul nsw i64 %299, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %291, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693 = add nuw nsw i64 %polly.indvar685, %polly.access.mul.Packed_MemRef_call1526692
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %287
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_exit683

polly.loop_header695:                             ; preds = %polly.loop_header695.preheader, %polly.loop_exit704
  %polly.indvar698 = phi i64 [ %polly.indvar_next699, %polly.loop_exit704 ], [ 0, %polly.loop_header695.preheader ]
  %polly.access.mul.Packed_MemRef_call1526717 = mul nuw nsw i64 %polly.indvar698, 1200
  br label %polly.loop_header702

polly.loop_exit704:                               ; preds = %polly.loop_exit712
  %polly.indvar_next699 = add nuw nsw i64 %polly.indvar698, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar_next699, 100
  br i1 %exitcond1153.not, label %polly.loop_exit697, label %polly.loop_header695

polly.loop_header702:                             ; preds = %polly.loop_header695, %polly.loop_exit712
  %indvar1305 = phi i64 [ 0, %polly.loop_header695 ], [ %indvar.next1306, %polly.loop_exit712 ]
  %indvars.iv1149 = phi i64 [ %278, %polly.loop_header695 ], [ %indvars.iv.next1150, %polly.loop_exit712 ]
  %polly.indvar706 = phi i64 [ %294, %polly.loop_header695 ], [ %polly.indvar_next707, %polly.loop_exit712 ]
  %300 = add i64 %277, %indvar1305
  %smin1307 = call i64 @llvm.smin.i64(i64 %300, i64 79)
  %301 = add nsw i64 %smin1307, 1
  %smin1151 = call i64 @llvm.smin.i64(i64 %indvars.iv1149, i64 79)
  %302 = add nsw i64 %polly.indvar706, %280
  %polly.loop_guard7131197 = icmp sgt i64 %302, -1
  br i1 %polly.loop_guard7131197, label %polly.loop_header710.preheader, label %polly.loop_exit712

polly.loop_header710.preheader:                   ; preds = %polly.loop_header702
  %303 = add nuw nsw i64 %polly.indvar706, %279
  %polly.access.add.Packed_MemRef_call2528722 = add nsw i64 %302, %polly.access.mul.Packed_MemRef_call1526717
  %polly.access.Packed_MemRef_call2528723 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722
  %_p_scalar_724 = load double, double* %polly.access.Packed_MemRef_call2528723, align 8
  %polly.access.Packed_MemRef_call1526731 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722
  %_p_scalar_732 = load double, double* %polly.access.Packed_MemRef_call1526731, align 8
  %304 = mul i64 %303, 9600
  %min.iters.check1308 = icmp ult i64 %301, 4
  br i1 %min.iters.check1308, label %polly.loop_header710.preheader1431, label %vector.ph1309

vector.ph1309:                                    ; preds = %polly.loop_header710.preheader
  %n.vec1311 = and i64 %301, -4
  %broadcast.splatinsert1317 = insertelement <4 x double> poison, double %_p_scalar_724, i32 0
  %broadcast.splat1318 = shufflevector <4 x double> %broadcast.splatinsert1317, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1320 = insertelement <4 x double> poison, double %_p_scalar_732, i32 0
  %broadcast.splat1321 = shufflevector <4 x double> %broadcast.splatinsert1320, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1309
  %index1312 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1313, %vector.body1301 ]
  %305 = add nuw nsw i64 %index1312, %269
  %306 = add nuw nsw i64 %index1312, %polly.access.mul.Packed_MemRef_call1526717
  %307 = getelementptr double, double* %Packed_MemRef_call1526, i64 %306
  %308 = bitcast double* %307 to <4 x double>*
  %wide.load1316 = load <4 x double>, <4 x double>* %308, align 8
  %309 = fmul fast <4 x double> %broadcast.splat1318, %wide.load1316
  %310 = getelementptr double, double* %Packed_MemRef_call2528, i64 %306
  %311 = bitcast double* %310 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %311, align 8
  %312 = fmul fast <4 x double> %broadcast.splat1321, %wide.load1319
  %313 = shl i64 %305, 3
  %314 = add i64 %313, %304
  %315 = getelementptr i8, i8* %call, i64 %314
  %316 = bitcast i8* %315 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %316, align 8, !alias.scope !99, !noalias !101
  %317 = fadd fast <4 x double> %312, %309
  %318 = fmul fast <4 x double> %317, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %319 = fadd fast <4 x double> %318, %wide.load1322
  %320 = bitcast i8* %315 to <4 x double>*
  store <4 x double> %319, <4 x double>* %320, align 8, !alias.scope !99, !noalias !101
  %index.next1313 = add i64 %index1312, 4
  %321 = icmp eq i64 %index.next1313, %n.vec1311
  br i1 %321, label %middle.block1299, label %vector.body1301, !llvm.loop !110

middle.block1299:                                 ; preds = %vector.body1301
  %cmp.n1315 = icmp eq i64 %301, %n.vec1311
  br i1 %cmp.n1315, label %polly.loop_exit712, label %polly.loop_header710.preheader1431

polly.loop_header710.preheader1431:               ; preds = %polly.loop_header710.preheader, %middle.block1299
  %polly.indvar714.ph = phi i64 [ 0, %polly.loop_header710.preheader ], [ %n.vec1311, %middle.block1299 ]
  br label %polly.loop_header710

polly.loop_exit712:                               ; preds = %polly.loop_header710, %middle.block1299, %polly.loop_header702
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %polly.loop_cond708.not.not = icmp slt i64 %polly.indvar706, %298
  %indvars.iv.next1150 = add i64 %indvars.iv1149, 1
  %indvar.next1306 = add i64 %indvar1305, 1
  br i1 %polly.loop_cond708.not.not, label %polly.loop_header702, label %polly.loop_exit704

polly.loop_header710:                             ; preds = %polly.loop_header710.preheader1431, %polly.loop_header710
  %polly.indvar714 = phi i64 [ %polly.indvar_next715, %polly.loop_header710 ], [ %polly.indvar714.ph, %polly.loop_header710.preheader1431 ]
  %322 = add nuw nsw i64 %polly.indvar714, %269
  %polly.access.add.Packed_MemRef_call1526718 = add nuw nsw i64 %polly.indvar714, %polly.access.mul.Packed_MemRef_call1526717
  %polly.access.Packed_MemRef_call1526719 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718
  %_p_scalar_720 = load double, double* %polly.access.Packed_MemRef_call1526719, align 8
  %p_mul27.i = fmul fast double %_p_scalar_724, %_p_scalar_720
  %polly.access.Packed_MemRef_call2528727 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718
  %_p_scalar_728 = load double, double* %polly.access.Packed_MemRef_call2528727, align 8
  %p_mul37.i = fmul fast double %_p_scalar_732, %_p_scalar_728
  %323 = shl i64 %322, 3
  %324 = add i64 %323, %304
  %scevgep733 = getelementptr i8, i8* %call, i64 %324
  %scevgep733734 = bitcast i8* %scevgep733 to double*
  %_p_scalar_735 = load double, double* %scevgep733734, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_735
  store double %p_add42.i, double* %scevgep733734, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next715 = add nuw nsw i64 %polly.indvar714, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar714, %smin1151
  br i1 %exitcond1152.not, label %polly.loop_exit712, label %polly.loop_header710, !llvm.loop !111

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1182 = phi i64 [ %indvars.iv.next1183, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 -1168)
  %325 = shl nsw i64 %polly.indvar865, 5
  %326 = add nsw i64 %smin1184, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1183 = add nsw i64 %indvars.iv1182, -32
  %exitcond1187.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1187.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %327 = mul nsw i64 %polly.indvar871, -32
  %smin1228 = call i64 @llvm.smin.i64(i64 %327, i64 -1168)
  %328 = add nsw i64 %smin1228, 1200
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 -1168)
  %329 = shl nsw i64 %polly.indvar871, 5
  %330 = add nsw i64 %smin1180, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -32
  %exitcond1186.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1186.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %331 = add nuw nsw i64 %polly.indvar877, %325
  %332 = trunc i64 %331 to i32
  %333 = mul nuw nsw i64 %331, 9600
  %min.iters.check = icmp eq i64 %328, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1229

vector.ph1229:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1236 = insertelement <4 x i64> poison, i64 %329, i32 0
  %broadcast.splat1237 = shufflevector <4 x i64> %broadcast.splatinsert1236, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %332, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1229
  %index1230 = phi i64 [ 0, %vector.ph1229 ], [ %index.next1231, %vector.body1227 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1229 ], [ %vec.ind.next1235, %vector.body1227 ]
  %334 = add nuw nsw <4 x i64> %vec.ind1234, %broadcast.splat1237
  %335 = trunc <4 x i64> %334 to <4 x i32>
  %336 = mul <4 x i32> %broadcast.splat1239, %335
  %337 = add <4 x i32> %336, <i32 3, i32 3, i32 3, i32 3>
  %338 = urem <4 x i32> %337, <i32 1200, i32 1200, i32 1200, i32 1200>
  %339 = sitofp <4 x i32> %338 to <4 x double>
  %340 = fmul fast <4 x double> %339, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %341 = extractelement <4 x i64> %334, i32 0
  %342 = shl i64 %341, 3
  %343 = add nuw nsw i64 %342, %333
  %344 = getelementptr i8, i8* %call, i64 %343
  %345 = bitcast i8* %344 to <4 x double>*
  store <4 x double> %340, <4 x double>* %345, align 8, !alias.scope !112, !noalias !114
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %346 = icmp eq i64 %index.next1231, %328
  br i1 %346, label %polly.loop_exit882, label %vector.body1227, !llvm.loop !117

polly.loop_exit882:                               ; preds = %vector.body1227, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar877, %326
  br i1 %exitcond1185.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %347 = add nuw nsw i64 %polly.indvar883, %329
  %348 = trunc i64 %347 to i32
  %349 = mul i32 %348, %332
  %350 = add i32 %349, 3
  %351 = urem i32 %350, 1200
  %p_conv31.i = sitofp i32 %351 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %352 = shl i64 %347, 3
  %353 = add nuw nsw i64 %352, %333
  %scevgep886 = getelementptr i8, i8* %call, i64 %353
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar883, %330
  br i1 %exitcond1181.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !118

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1172, i64 -1168)
  %354 = shl nsw i64 %polly.indvar892, 5
  %355 = add nsw i64 %smin1174, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1173 = add nsw i64 %indvars.iv1172, -32
  %exitcond1177.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1177.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %356 = mul nsw i64 %polly.indvar898, -32
  %smin1243 = call i64 @llvm.smin.i64(i64 %356, i64 -968)
  %357 = add nsw i64 %smin1243, 1000
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -968)
  %358 = shl nsw i64 %polly.indvar898, 5
  %359 = add nsw i64 %smin1170, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1176.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1176.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %360 = add nuw nsw i64 %polly.indvar904, %354
  %361 = trunc i64 %360 to i32
  %362 = mul nuw nsw i64 %360, 8000
  %min.iters.check1244 = icmp eq i64 %357, 0
  br i1 %min.iters.check1244, label %polly.loop_header907, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1254 = insertelement <4 x i64> poison, i64 %358, i32 0
  %broadcast.splat1255 = shufflevector <4 x i64> %broadcast.splatinsert1254, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1256 = insertelement <4 x i32> poison, i32 %361, i32 0
  %broadcast.splat1257 = shufflevector <4 x i32> %broadcast.splatinsert1256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1242 ]
  %vec.ind1252 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1245 ], [ %vec.ind.next1253, %vector.body1242 ]
  %363 = add nuw nsw <4 x i64> %vec.ind1252, %broadcast.splat1255
  %364 = trunc <4 x i64> %363 to <4 x i32>
  %365 = mul <4 x i32> %broadcast.splat1257, %364
  %366 = add <4 x i32> %365, <i32 2, i32 2, i32 2, i32 2>
  %367 = urem <4 x i32> %366, <i32 1000, i32 1000, i32 1000, i32 1000>
  %368 = sitofp <4 x i32> %367 to <4 x double>
  %369 = fmul fast <4 x double> %368, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %370 = extractelement <4 x i64> %363, i32 0
  %371 = shl i64 %370, 3
  %372 = add nuw nsw i64 %371, %362
  %373 = getelementptr i8, i8* %call2, i64 %372
  %374 = bitcast i8* %373 to <4 x double>*
  store <4 x double> %369, <4 x double>* %374, align 8, !alias.scope !116, !noalias !119
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1253 = add <4 x i64> %vec.ind1252, <i64 4, i64 4, i64 4, i64 4>
  %375 = icmp eq i64 %index.next1249, %357
  br i1 %375, label %polly.loop_exit909, label %vector.body1242, !llvm.loop !120

polly.loop_exit909:                               ; preds = %vector.body1242, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar904, %355
  br i1 %exitcond1175.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %376 = add nuw nsw i64 %polly.indvar910, %358
  %377 = trunc i64 %376 to i32
  %378 = mul i32 %377, %361
  %379 = add i32 %378, 2
  %380 = urem i32 %379, 1000
  %p_conv10.i = sitofp i32 %380 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %381 = shl i64 %376, 3
  %382 = add nuw nsw i64 %381, %362
  %scevgep913 = getelementptr i8, i8* %call2, i64 %382
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar910, %359
  br i1 %exitcond1171.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !121

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1162 = phi i64 [ %indvars.iv.next1163, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1164 = call i64 @llvm.smin.i64(i64 %indvars.iv1162, i64 -1168)
  %383 = shl nsw i64 %polly.indvar918, 5
  %384 = add nsw i64 %smin1164, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1163 = add nsw i64 %indvars.iv1162, -32
  %exitcond1167.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1167.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1158 = phi i64 [ %indvars.iv.next1159, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %385 = mul nsw i64 %polly.indvar924, -32
  %smin1261 = call i64 @llvm.smin.i64(i64 %385, i64 -968)
  %386 = add nsw i64 %smin1261, 1000
  %smin1160 = call i64 @llvm.smin.i64(i64 %indvars.iv1158, i64 -968)
  %387 = shl nsw i64 %polly.indvar924, 5
  %388 = add nsw i64 %smin1160, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1159 = add nsw i64 %indvars.iv1158, -32
  %exitcond1166.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1166.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %389 = add nuw nsw i64 %polly.indvar930, %383
  %390 = trunc i64 %389 to i32
  %391 = mul nuw nsw i64 %389, 8000
  %min.iters.check1262 = icmp eq i64 %386, 0
  br i1 %min.iters.check1262, label %polly.loop_header933, label %vector.ph1263

vector.ph1263:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1272 = insertelement <4 x i64> poison, i64 %387, i32 0
  %broadcast.splat1273 = shufflevector <4 x i64> %broadcast.splatinsert1272, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %390, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1260 ]
  %vec.ind1270 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1263 ], [ %vec.ind.next1271, %vector.body1260 ]
  %392 = add nuw nsw <4 x i64> %vec.ind1270, %broadcast.splat1273
  %393 = trunc <4 x i64> %392 to <4 x i32>
  %394 = mul <4 x i32> %broadcast.splat1275, %393
  %395 = add <4 x i32> %394, <i32 1, i32 1, i32 1, i32 1>
  %396 = urem <4 x i32> %395, <i32 1200, i32 1200, i32 1200, i32 1200>
  %397 = sitofp <4 x i32> %396 to <4 x double>
  %398 = fmul fast <4 x double> %397, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %399 = extractelement <4 x i64> %392, i32 0
  %400 = shl i64 %399, 3
  %401 = add nuw nsw i64 %400, %391
  %402 = getelementptr i8, i8* %call1, i64 %401
  %403 = bitcast i8* %402 to <4 x double>*
  store <4 x double> %398, <4 x double>* %403, align 8, !alias.scope !115, !noalias !122
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1271 = add <4 x i64> %vec.ind1270, <i64 4, i64 4, i64 4, i64 4>
  %404 = icmp eq i64 %index.next1267, %386
  br i1 %404, label %polly.loop_exit935, label %vector.body1260, !llvm.loop !123

polly.loop_exit935:                               ; preds = %vector.body1260, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar930, %384
  br i1 %exitcond1165.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %405 = add nuw nsw i64 %polly.indvar936, %387
  %406 = trunc i64 %405 to i32
  %407 = mul i32 %406, %390
  %408 = add i32 %407, 1
  %409 = urem i32 %408, 1200
  %p_conv.i = sitofp i32 %409 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %410 = shl i64 %405, 3
  %411 = add nuw nsw i64 %410, %391
  %scevgep940 = getelementptr i8, i8* %call1, i64 %411
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar936, %388
  br i1 %exitcond1161.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 80}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 100}
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
