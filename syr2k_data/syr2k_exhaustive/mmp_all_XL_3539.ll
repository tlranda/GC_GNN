; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3539.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3539.c"
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
  %call876 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1728 = bitcast i8* %call1 to double*
  %polly.access.call1737 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1737, %call2
  %polly.access.call2757 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2757, %call1
  %2 = or i1 %0, %1
  %polly.access.call777 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call777, %call2
  %4 = icmp ule i8* %polly.access.call2757, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call777, %call1
  %8 = icmp ule i8* %polly.access.call1737, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header850, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1239 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1238 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1237 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1236 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1236, %scevgep1239
  %bound1 = icmp ult i8* %scevgep1238, %scevgep1237
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
  br i1 %exitcond18.not.i, label %vector.ph1243, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1243:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1250 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1251 = shufflevector <4 x i64> %broadcast.splatinsert1250, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1243
  %index1244 = phi i64 [ 0, %vector.ph1243 ], [ %index.next1245, %vector.body1242 ]
  %vec.ind1248 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1243 ], [ %vec.ind.next1249, %vector.body1242 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1248, %broadcast.splat1251
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv7.i, i64 %index1244
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1245 = add i64 %index1244, 4
  %vec.ind.next1249 = add <4 x i64> %vec.ind1248, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1245, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1242, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1242
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1243, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit911
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start514, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1305 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1305, label %for.body3.i46.preheader1382, label %vector.ph1306

vector.ph1306:                                    ; preds = %for.body3.i46.preheader
  %n.vec1308 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1306
  %index1309 = phi i64 [ 0, %vector.ph1306 ], [ %index.next1310, %vector.body1304 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i, i64 %index1309
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1310 = add i64 %index1309, 4
  %46 = icmp eq i64 %index.next1310, %n.vec1308
  br i1 %46, label %middle.block1302, label %vector.body1304, !llvm.loop !18

middle.block1302:                                 ; preds = %vector.body1304
  %cmp.n1312 = icmp eq i64 %indvars.iv21.i, %n.vec1308
  br i1 %cmp.n1312, label %for.inc6.i, label %for.body3.i46.preheader1382

for.body3.i46.preheader1382:                      ; preds = %for.body3.i46.preheader, %middle.block1302
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1308, %middle.block1302 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1382, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1382 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1302, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !22

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting515
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1328 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1328, label %for.body3.i60.preheader1380, label %vector.ph1329

vector.ph1329:                                    ; preds = %for.body3.i60.preheader
  %n.vec1331 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %vector.ph1329
  %index1332 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1333, %vector.body1327 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i52, i64 %index1332
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1336, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1333 = add i64 %index1332, 4
  %57 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %57, label %middle.block1325, label %vector.body1327, !llvm.loop !60

middle.block1325:                                 ; preds = %vector.body1327
  %cmp.n1335 = icmp eq i64 %indvars.iv21.i52, %n.vec1331
  br i1 %cmp.n1335, label %for.inc6.i63, label %for.body3.i60.preheader1380

for.body3.i60.preheader1380:                      ; preds = %for.body3.i60.preheader, %middle.block1325
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1331, %middle.block1325 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1380, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1380 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1325, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !22

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting303
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1354 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1354, label %for.body3.i99.preheader1378, label %vector.ph1355

vector.ph1355:                                    ; preds = %for.body3.i99.preheader
  %n.vec1357 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1353

vector.body1353:                                  ; preds = %vector.body1353, %vector.ph1355
  %index1358 = phi i64 [ 0, %vector.ph1355 ], [ %index.next1359, %vector.body1353 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i91, i64 %index1358
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1362 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1362, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1359 = add i64 %index1358, 4
  %68 = icmp eq i64 %index.next1359, %n.vec1357
  br i1 %68, label %middle.block1351, label %vector.body1353, !llvm.loop !62

middle.block1351:                                 ; preds = %vector.body1353
  %cmp.n1361 = icmp eq i64 %indvars.iv21.i91, %n.vec1357
  br i1 %cmp.n1361, label %for.inc6.i102, label %for.body3.i99.preheader1378

for.body3.i99.preheader1378:                      ; preds = %for.body3.i99.preheader, %middle.block1351
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1357, %middle.block1351 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1378, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1378 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1351, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !22

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

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
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1366 = phi i64 [ %indvar.next1367, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1366, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1368 = icmp ult i64 %88, 4
  br i1 %min.iters.check1368, label %polly.loop_header191.preheader, label %vector.ph1369

vector.ph1369:                                    ; preds = %polly.loop_header
  %n.vec1371 = and i64 %88, -4
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %vector.ph1369
  %index1372 = phi i64 [ 0, %vector.ph1369 ], [ %index.next1373, %vector.body1365 ]
  %90 = shl nuw nsw i64 %index1372, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1376 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1376, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1373 = add i64 %index1372, 4
  %95 = icmp eq i64 %index.next1373, %n.vec1371
  br i1 %95, label %middle.block1363, label %vector.body1365, !llvm.loop !74

middle.block1363:                                 ; preds = %vector.body1365
  %cmp.n1375 = icmp eq i64 %88, %n.vec1371
  br i1 %cmp.n1375, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1363
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1371, %middle.block1363 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1363
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1367 = add i64 %indvar1366, 1
  br i1 %exitcond1126.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1125.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv1102 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1103, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin1121 = call i64 @llvm.smin.i64(i64 %indvars.iv1102, i64 -984)
  %97 = add nsw i64 %smin1121, 1000
  %98 = shl nsw i64 %polly.indvar202, 4
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next1103 = add nsw i64 %indvars.iv1102, -16
  %exitcond1124.not = icmp eq i64 %polly.indvar_next203, 63
  br i1 %exitcond1124.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 79, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = lshr i64 %polly.indvar208, 2
  %100 = add nuw i64 %polly.indvar208, %99
  %101 = mul nuw nsw i64 %100, 80
  %102 = sub i64 %indvars.iv1108, %101
  %103 = add i64 %indvars.iv1113, %101
  %104 = add i64 %indvars.iv, %101
  %105 = mul nuw nsw i64 %polly.indvar208, 5
  %106 = mul nsw i64 %polly.indvar208, -100
  %107 = mul nuw nsw i64 %polly.indvar208, 100
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit263
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 100
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -100
  %exitcond1123.not = icmp eq i64 %polly.indvar_next209, 12
  br i1 %exitcond1123.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit263, %polly.loop_header205
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit263 ], [ %103, %polly.loop_header205 ]
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit263 ], [ %102, %polly.loop_header205 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit263 ], [ %104, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit263 ], [ %100, %polly.loop_header205 ]
  %smax1112 = call i64 @llvm.smax.i64(i64 %indvars.iv1110, i64 0)
  %108 = add i64 %smax1112, %indvars.iv1115
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1100, i64 0)
  %109 = shl nsw i64 %polly.indvar214, 2
  %.not.not = icmp ugt i64 %109, %105
  %110 = mul nuw nsw i64 %polly.indvar214, 80
  %111 = add nsw i64 %110, %106
  %112 = icmp sgt i64 %111, 100
  %113 = select i1 %112, i64 %111, i64 100
  %114 = add nsw i64 %111, 79
  %polly.loop_guard.not = icmp sgt i64 %113, %114
  br i1 %.not.not, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %115 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %116 = add nuw nsw i64 %polly.indvar226.us, %107
  %polly.access.mul.call1230.us = mul nuw nsw i64 %116, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.access.mul.call1230.us, %115
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next227.us, 100
  br i1 %exitcond1105.not, label %polly.loop_exit225.us, label %polly.loop_header223.us

polly.loop_exit225.us:                            ; preds = %polly.loop_header223.us
  br i1 %polly.loop_guard.not, label %polly.merge.us, label %polly.loop_header233.us

polly.loop_header233.us:                          ; preds = %polly.loop_exit225.us, %polly.loop_header233.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header233.us ], [ %113, %polly.loop_exit225.us ]
  %117 = add nuw nsw i64 %polly.indvar236.us, %107
  %polly.access.mul.call1240.us = mul nsw i64 %117, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %polly.access.mul.call1240.us, %115
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1244.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %polly.loop_cond238.not.not.us = icmp slt i64 %polly.indvar236.us, %114
  br i1 %polly.loop_cond238.not.not.us, label %polly.loop_header233.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header233.us, %polly.loop_exit225.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond1107.not, label %polly.loop_header261.preheader, label %polly.loop_header217.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  %polly.loop_guard250 = icmp sgt i64 %111, -80
  br i1 %polly.loop_guard250, label %polly.loop_header217.us946, label %polly.loop_header261.preheader

polly.loop_header217.us946:                       ; preds = %polly.loop_header211.split, %polly.merge.loopexit932.us992
  %polly.indvar220.us947 = phi i64 [ %polly.indvar_next221.us984, %polly.merge.loopexit932.us992 ], [ 0, %polly.loop_header211.split ]
  %118 = add nuw nsw i64 %polly.indvar220.us947, %98
  %polly.access.mul.Packed_MemRef_call1258.us991 = mul nuw nsw i64 %polly.indvar220.us947, 1200
  br label %polly.loop_header247.us949

polly.loop_header247.us949:                       ; preds = %polly.loop_header217.us946, %polly.loop_header247.us949
  %polly.indvar251.us950 = phi i64 [ %polly.indvar_next252.us957, %polly.loop_header247.us949 ], [ 0, %polly.loop_header217.us946 ]
  %119 = add nuw nsw i64 %polly.indvar251.us950, %107
  %polly.access.mul.call1255.us951 = mul nuw nsw i64 %119, 1000
  %polly.access.add.call1256.us952 = add nuw nsw i64 %118, %polly.access.mul.call1255.us951
  %polly.access.call1257.us953 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1256.us952
  %polly.access.call1257.load.us954 = load double, double* %polly.access.call1257.us953, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1259.us955 = add nuw nsw i64 %polly.indvar251.us950, %polly.access.mul.Packed_MemRef_call1258.us991
  %polly.access.Packed_MemRef_call1260.us956 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.us955
  store double %polly.access.call1257.load.us954, double* %polly.access.Packed_MemRef_call1260.us956, align 8
  %polly.indvar_next252.us957 = add nuw nsw i64 %polly.indvar251.us950, 1
  %exitcond.not = icmp eq i64 %polly.indvar251.us950, %smax
  br i1 %exitcond.not, label %polly.merge.loopexit932.us992, label %polly.loop_header247.us949

polly.merge.loopexit932.us992:                    ; preds = %polly.loop_header247.us949
  %polly.indvar_next221.us984 = add nuw nsw i64 %polly.indvar220.us947, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next221.us984, %97
  br i1 %exitcond1104.not, label %polly.loop_header261.preheader, label %polly.loop_header217.us946

polly.loop_exit263:                               ; preds = %polly.loop_exit270.loopexit.us, %polly.loop_header261.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 14
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 80
  %indvars.iv.next1111 = add i64 %indvars.iv1110, -80
  %indvars.iv.next1116 = add i64 %indvars.iv1115, 80
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header261.preheader:                   ; preds = %polly.merge.loopexit932.us992, %polly.merge.us, %polly.loop_header211.split
  %120 = sub nsw i64 %107, %110
  %121 = icmp sgt i64 %120, 0
  %122 = select i1 %121, i64 %120, i64 0
  %polly.loop_guard271 = icmp slt i64 %122, 80
  br i1 %polly.loop_guard271, label %polly.loop_header261.us, label %polly.loop_exit263

polly.loop_header261.us:                          ; preds = %polly.loop_header261.preheader, %polly.loop_exit270.loopexit.us
  %polly.indvar264.us = phi i64 [ %polly.indvar_next265.us, %polly.loop_exit270.loopexit.us ], [ 0, %polly.loop_header261.preheader ]
  %123 = add nuw nsw i64 %polly.indvar264.us, %98
  %polly.access.mul.Packed_MemRef_call1283.us = mul nuw nsw i64 %polly.indvar264.us, 1200
  %124 = shl i64 %123, 3
  br label %polly.loop_header268.us

polly.loop_header268.us:                          ; preds = %polly.loop_header261.us, %polly.loop_exit278.us
  %indvars.iv1117 = phi i64 [ %108, %polly.loop_header261.us ], [ %indvars.iv.next1118, %polly.loop_exit278.us ]
  %polly.indvar272.us = phi i64 [ %122, %polly.loop_header261.us ], [ %polly.indvar_next273.us, %polly.loop_exit278.us ]
  %smin1119 = call i64 @llvm.smin.i64(i64 %indvars.iv1117, i64 99)
  %125 = add nuw i64 %polly.indvar272.us, %110
  %126 = add i64 %125, %106
  %polly.loop_guard279.us1225 = icmp sgt i64 %126, -1
  br i1 %polly.loop_guard279.us1225, label %polly.loop_header276.preheader.us, label %polly.loop_exit278.us

polly.loop_header276.us:                          ; preds = %polly.loop_header276.preheader.us, %polly.loop_header276.us
  %polly.indvar280.us = phi i64 [ %polly.indvar_next281.us, %polly.loop_header276.us ], [ 0, %polly.loop_header276.preheader.us ]
  %127 = add nuw nsw i64 %polly.indvar280.us, %107
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar280.us, %polly.access.mul.Packed_MemRef_call1283.us
  %polly.access.Packed_MemRef_call1285.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call1285.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_289.us, %_p_scalar_286.us
  %128 = mul nuw nsw i64 %127, 8000
  %129 = add nuw nsw i64 %128, %124
  %scevgep290.us = getelementptr i8, i8* %call2, i64 %129
  %scevgep290291.us = bitcast i8* %scevgep290.us to double*
  %_p_scalar_292.us = load double, double* %scevgep290291.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %130 = shl i64 %127, 3
  %131 = add i64 %130, %134
  %scevgep297.us = getelementptr i8, i8* %call, i64 %131
  %scevgep297298.us = bitcast i8* %scevgep297.us to double*
  %_p_scalar_299.us = load double, double* %scevgep297298.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_299.us
  store double %p_add42.i118.us, double* %scevgep297298.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next281.us = add nuw nsw i64 %polly.indvar280.us, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar280.us, %smin1119
  br i1 %exitcond1120.not, label %polly.loop_exit278.us, label %polly.loop_header276.us

polly.loop_exit278.us:                            ; preds = %polly.loop_header276.us, %polly.loop_header268.us
  %polly.indvar_next273.us = add nuw nsw i64 %polly.indvar272.us, 1
  %polly.loop_cond274.us = icmp ult i64 %polly.indvar272.us, 79
  %indvars.iv.next1118 = add i64 %indvars.iv1117, 1
  br i1 %polly.loop_cond274.us, label %polly.loop_header268.us, label %polly.loop_exit270.loopexit.us

polly.loop_header276.preheader.us:                ; preds = %polly.loop_header268.us
  %132 = mul i64 %125, 8000
  %133 = add i64 %132, %124
  %scevgep287.us = getelementptr i8, i8* %call2, i64 %133
  %scevgep287288.us = bitcast i8* %scevgep287.us to double*
  %_p_scalar_289.us = load double, double* %scevgep287288.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1294.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1283.us, %126
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %134 = mul i64 %125, 9600
  br label %polly.loop_header276.us

polly.loop_exit270.loopexit.us:                   ; preds = %polly.loop_exit278.us
  %polly.indvar_next265.us = add nuw nsw i64 %polly.indvar264.us, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next265.us, %97
  br i1 %exitcond1122.not, label %polly.loop_exit263, label %polly.loop_header261.us

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header388

polly.exiting303:                                 ; preds = %polly.loop_exit412
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start302
  %indvar1340 = phi i64 [ %indvar.next1341, %polly.loop_exit396 ], [ 0, %polly.start302 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start302 ]
  %135 = add i64 %indvar1340, 1
  %136 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %136
  %min.iters.check1342 = icmp ult i64 %135, 4
  br i1 %min.iters.check1342, label %polly.loop_header394.preheader, label %vector.ph1343

vector.ph1343:                                    ; preds = %polly.loop_header388
  %n.vec1345 = and i64 %135, -4
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %vector.ph1343
  %index1346 = phi i64 [ 0, %vector.ph1343 ], [ %index.next1347, %vector.body1339 ]
  %137 = shl nuw nsw i64 %index1346, 3
  %138 = getelementptr i8, i8* %scevgep400, i64 %137
  %139 = bitcast i8* %138 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %139, align 8, !alias.scope !79, !noalias !81
  %140 = fmul fast <4 x double> %wide.load1350, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %141 = bitcast i8* %138 to <4 x double>*
  store <4 x double> %140, <4 x double>* %141, align 8, !alias.scope !79, !noalias !81
  %index.next1347 = add i64 %index1346, 4
  %142 = icmp eq i64 %index.next1347, %n.vec1345
  br i1 %142, label %middle.block1337, label %vector.body1339, !llvm.loop !85

middle.block1337:                                 ; preds = %vector.body1339
  %cmp.n1349 = icmp eq i64 %135, %n.vec1345
  br i1 %cmp.n1349, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1337
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1345, %middle.block1337 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1337
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1341 = add i64 %indvar1340, 1
  br i1 %exitcond1158.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %143 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %143
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1157.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !86

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %indvars.iv1133 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %indvars.iv.next1134, %polly.loop_exit412 ]
  %polly.indvar407 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %polly.indvar_next408, %polly.loop_exit412 ]
  %smin1153 = call i64 @llvm.smin.i64(i64 %indvars.iv1133, i64 -984)
  %144 = add nsw i64 %smin1153, 1000
  %145 = shl nsw i64 %polly.indvar407, 4
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit419
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -16
  %exitcond1156.not = icmp eq i64 %polly.indvar_next408, 63
  br i1 %exitcond1156.not, label %polly.exiting303, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_exit419, %polly.loop_header404
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit419 ], [ 79, %polly.loop_header404 ]
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %146 = lshr i64 %polly.indvar413, 2
  %147 = add nuw i64 %polly.indvar413, %146
  %148 = mul nuw nsw i64 %147, 80
  %149 = sub i64 %indvars.iv1140, %148
  %150 = add i64 %indvars.iv1145, %148
  %151 = add i64 %indvars.iv1127, %148
  %152 = mul nuw nsw i64 %polly.indvar413, 5
  %153 = mul nsw i64 %polly.indvar413, -100
  %154 = mul nuw nsw i64 %polly.indvar413, 100
  br label %polly.loop_header417

polly.loop_exit419:                               ; preds = %polly.loop_exit475
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %indvars.iv.next1128 = add nsw i64 %indvars.iv1127, -100
  %indvars.iv.next1141 = add nuw nsw i64 %indvars.iv1140, 100
  %indvars.iv.next1146 = add nsw i64 %indvars.iv1145, -100
  %exitcond1155.not = icmp eq i64 %polly.indvar_next414, 12
  br i1 %exitcond1155.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header417:                             ; preds = %polly.loop_exit475, %polly.loop_header410
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit475 ], [ %150, %polly.loop_header410 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit475 ], [ %149, %polly.loop_header410 ]
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit475 ], [ %151, %polly.loop_header410 ]
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_exit475 ], [ %147, %polly.loop_header410 ]
  %smax1144 = call i64 @llvm.smax.i64(i64 %indvars.iv1142, i64 0)
  %155 = add i64 %smax1144, %indvars.iv1147
  %smax1131 = call i64 @llvm.smax.i64(i64 %indvars.iv1129, i64 0)
  %156 = shl nsw i64 %polly.indvar420, 2
  %.not.not930 = icmp ugt i64 %156, %152
  %157 = mul nuw nsw i64 %polly.indvar420, 80
  %158 = add nsw i64 %157, %153
  %159 = icmp sgt i64 %158, 100
  %160 = select i1 %159, i64 %158, i64 100
  %161 = add nsw i64 %158, 79
  %polly.loop_guard447.not = icmp sgt i64 %160, %161
  br i1 %.not.not930, label %polly.loop_header423.us, label %polly.loop_header417.split

polly.loop_header423.us:                          ; preds = %polly.loop_header417, %polly.merge430.us
  %polly.indvar426.us = phi i64 [ %polly.indvar_next427.us, %polly.merge430.us ], [ 0, %polly.loop_header417 ]
  %162 = add nuw nsw i64 %polly.indvar426.us, %145
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar426.us, 1200
  br label %polly.loop_header433.us

polly.loop_header433.us:                          ; preds = %polly.loop_header423.us, %polly.loop_header433.us
  %polly.indvar436.us = phi i64 [ %polly.indvar_next437.us, %polly.loop_header433.us ], [ 0, %polly.loop_header423.us ]
  %163 = add nuw nsw i64 %polly.indvar436.us, %154
  %polly.access.mul.call1440.us = mul nuw nsw i64 %163, 1000
  %polly.access.add.call1441.us = add nuw nsw i64 %polly.access.mul.call1440.us, %162
  %polly.access.call1442.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us
  %polly.access.call1442.load.us = load double, double* %polly.access.call1442.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar436.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1442.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next437.us, 100
  br i1 %exitcond1137.not, label %polly.loop_exit435.us, label %polly.loop_header433.us

polly.loop_exit435.us:                            ; preds = %polly.loop_header433.us
  br i1 %polly.loop_guard447.not, label %polly.merge430.us, label %polly.loop_header444.us

polly.loop_header444.us:                          ; preds = %polly.loop_exit435.us, %polly.loop_header444.us
  %polly.indvar448.us = phi i64 [ %polly.indvar_next449.us, %polly.loop_header444.us ], [ %160, %polly.loop_exit435.us ]
  %164 = add nuw nsw i64 %polly.indvar448.us, %154
  %polly.access.mul.call1452.us = mul nsw i64 %164, 1000
  %polly.access.add.call1453.us = add nuw nsw i64 %polly.access.mul.call1452.us, %162
  %polly.access.call1454.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1453.us
  %polly.access.call1454.load.us = load double, double* %polly.access.call1454.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305456.us = add nuw nsw i64 %polly.indvar448.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305457.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305456.us
  store double %polly.access.call1454.load.us, double* %polly.access.Packed_MemRef_call1305457.us, align 8
  %polly.indvar_next449.us = add nuw nsw i64 %polly.indvar448.us, 1
  %polly.loop_cond450.not.not.us = icmp slt i64 %polly.indvar448.us, %161
  br i1 %polly.loop_cond450.not.not.us, label %polly.loop_header444.us, label %polly.merge430.us

polly.merge430.us:                                ; preds = %polly.loop_header444.us, %polly.loop_exit435.us
  %polly.indvar_next427.us = add nuw nsw i64 %polly.indvar426.us, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next427.us, %144
  br i1 %exitcond1139.not, label %polly.loop_header473.preheader, label %polly.loop_header423.us

polly.loop_header417.split:                       ; preds = %polly.loop_header417
  %polly.loop_guard462 = icmp sgt i64 %158, -80
  br i1 %polly.loop_guard462, label %polly.loop_header423.us993, label %polly.loop_header473.preheader

polly.loop_header423.us993:                       ; preds = %polly.loop_header417.split, %polly.merge430.loopexit933.us1039
  %polly.indvar426.us994 = phi i64 [ %polly.indvar_next427.us1031, %polly.merge430.loopexit933.us1039 ], [ 0, %polly.loop_header417.split ]
  %165 = add nuw nsw i64 %polly.indvar426.us994, %145
  %polly.access.mul.Packed_MemRef_call1305470.us1038 = mul nuw nsw i64 %polly.indvar426.us994, 1200
  br label %polly.loop_header459.us996

polly.loop_header459.us996:                       ; preds = %polly.loop_header423.us993, %polly.loop_header459.us996
  %polly.indvar463.us997 = phi i64 [ %polly.indvar_next464.us1004, %polly.loop_header459.us996 ], [ 0, %polly.loop_header423.us993 ]
  %166 = add nuw nsw i64 %polly.indvar463.us997, %154
  %polly.access.mul.call1467.us998 = mul nuw nsw i64 %166, 1000
  %polly.access.add.call1468.us999 = add nuw nsw i64 %165, %polly.access.mul.call1467.us998
  %polly.access.call1469.us1000 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1468.us999
  %polly.access.call1469.load.us1001 = load double, double* %polly.access.call1469.us1000, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305471.us1002 = add nuw nsw i64 %polly.indvar463.us997, %polly.access.mul.Packed_MemRef_call1305470.us1038
  %polly.access.Packed_MemRef_call1305472.us1003 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305471.us1002
  store double %polly.access.call1469.load.us1001, double* %polly.access.Packed_MemRef_call1305472.us1003, align 8
  %polly.indvar_next464.us1004 = add nuw nsw i64 %polly.indvar463.us997, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar463.us997, %smax1131
  br i1 %exitcond1132.not, label %polly.merge430.loopexit933.us1039, label %polly.loop_header459.us996

polly.merge430.loopexit933.us1039:                ; preds = %polly.loop_header459.us996
  %polly.indvar_next427.us1031 = add nuw nsw i64 %polly.indvar426.us994, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next427.us1031, %144
  br i1 %exitcond1136.not, label %polly.loop_header473.preheader, label %polly.loop_header423.us993

polly.loop_exit475:                               ; preds = %polly.loop_exit482.loopexit.us, %polly.loop_header473.preheader
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %polly.loop_cond422 = icmp ult i64 %polly.indvar420, 14
  %indvars.iv.next1130 = add i64 %indvars.iv1129, 80
  %indvars.iv.next1143 = add i64 %indvars.iv1142, -80
  %indvars.iv.next1148 = add i64 %indvars.iv1147, 80
  br i1 %polly.loop_cond422, label %polly.loop_header417, label %polly.loop_exit419

polly.loop_header473.preheader:                   ; preds = %polly.merge430.loopexit933.us1039, %polly.merge430.us, %polly.loop_header417.split
  %167 = sub nsw i64 %154, %157
  %168 = icmp sgt i64 %167, 0
  %169 = select i1 %168, i64 %167, i64 0
  %polly.loop_guard483 = icmp slt i64 %169, 80
  br i1 %polly.loop_guard483, label %polly.loop_header473.us, label %polly.loop_exit475

polly.loop_header473.us:                          ; preds = %polly.loop_header473.preheader, %polly.loop_exit482.loopexit.us
  %polly.indvar476.us = phi i64 [ %polly.indvar_next477.us, %polly.loop_exit482.loopexit.us ], [ 0, %polly.loop_header473.preheader ]
  %170 = add nuw nsw i64 %polly.indvar476.us, %145
  %polly.access.mul.Packed_MemRef_call1305495.us = mul nuw nsw i64 %polly.indvar476.us, 1200
  %171 = shl i64 %170, 3
  br label %polly.loop_header480.us

polly.loop_header480.us:                          ; preds = %polly.loop_header473.us, %polly.loop_exit490.us
  %indvars.iv1149 = phi i64 [ %155, %polly.loop_header473.us ], [ %indvars.iv.next1150, %polly.loop_exit490.us ]
  %polly.indvar484.us = phi i64 [ %169, %polly.loop_header473.us ], [ %polly.indvar_next485.us, %polly.loop_exit490.us ]
  %smin1151 = call i64 @llvm.smin.i64(i64 %indvars.iv1149, i64 99)
  %172 = add nuw i64 %polly.indvar484.us, %157
  %173 = add i64 %172, %153
  %polly.loop_guard491.us1226 = icmp sgt i64 %173, -1
  br i1 %polly.loop_guard491.us1226, label %polly.loop_header488.preheader.us, label %polly.loop_exit490.us

polly.loop_header488.us:                          ; preds = %polly.loop_header488.preheader.us, %polly.loop_header488.us
  %polly.indvar492.us = phi i64 [ %polly.indvar_next493.us, %polly.loop_header488.us ], [ 0, %polly.loop_header488.preheader.us ]
  %174 = add nuw nsw i64 %polly.indvar492.us, %154
  %polly.access.add.Packed_MemRef_call1305496.us = add nuw nsw i64 %polly.indvar492.us, %polly.access.mul.Packed_MemRef_call1305495.us
  %polly.access.Packed_MemRef_call1305497.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305496.us
  %_p_scalar_498.us = load double, double* %polly.access.Packed_MemRef_call1305497.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_498.us
  %175 = mul nuw nsw i64 %174, 8000
  %176 = add nuw nsw i64 %175, %171
  %scevgep502.us = getelementptr i8, i8* %call2, i64 %176
  %scevgep502503.us = bitcast i8* %scevgep502.us to double*
  %_p_scalar_504.us = load double, double* %scevgep502503.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_508.us, %_p_scalar_504.us
  %177 = shl i64 %174, 3
  %178 = add i64 %177, %181
  %scevgep509.us = getelementptr i8, i8* %call, i64 %178
  %scevgep509510.us = bitcast i8* %scevgep509.us to double*
  %_p_scalar_511.us = load double, double* %scevgep509510.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_511.us
  store double %p_add42.i79.us, double* %scevgep509510.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next493.us = add nuw nsw i64 %polly.indvar492.us, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar492.us, %smin1151
  br i1 %exitcond1152.not, label %polly.loop_exit490.us, label %polly.loop_header488.us

polly.loop_exit490.us:                            ; preds = %polly.loop_header488.us, %polly.loop_header480.us
  %polly.indvar_next485.us = add nuw nsw i64 %polly.indvar484.us, 1
  %polly.loop_cond486.us = icmp ult i64 %polly.indvar484.us, 79
  %indvars.iv.next1150 = add i64 %indvars.iv1149, 1
  br i1 %polly.loop_cond486.us, label %polly.loop_header480.us, label %polly.loop_exit482.loopexit.us

polly.loop_header488.preheader.us:                ; preds = %polly.loop_header480.us
  %179 = mul i64 %172, 8000
  %180 = add i64 %179, %171
  %scevgep499.us = getelementptr i8, i8* %call2, i64 %180
  %scevgep499500.us = bitcast i8* %scevgep499.us to double*
  %_p_scalar_501.us = load double, double* %scevgep499500.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1305506.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1305495.us, %173
  %polly.access.Packed_MemRef_call1305507.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305506.us
  %_p_scalar_508.us = load double, double* %polly.access.Packed_MemRef_call1305507.us, align 8
  %181 = mul i64 %172, 9600
  br label %polly.loop_header488.us

polly.loop_exit482.loopexit.us:                   ; preds = %polly.loop_exit490.us
  %polly.indvar_next477.us = add nuw nsw i64 %polly.indvar476.us, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar_next477.us, %144
  br i1 %exitcond1154.not, label %polly.loop_exit475, label %polly.loop_header473.us

polly.start514:                                   ; preds = %init_array.exit
  %malloccall516 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header600

polly.exiting515:                                 ; preds = %polly.loop_exit624
  tail call void @free(i8* %malloccall516)
  br label %kernel_syr2k.exit

polly.loop_header600:                             ; preds = %polly.loop_exit608, %polly.start514
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit608 ], [ 0, %polly.start514 ]
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_exit608 ], [ 1, %polly.start514 ]
  %182 = add i64 %indvar, 1
  %183 = mul nuw nsw i64 %polly.indvar603, 9600
  %scevgep612 = getelementptr i8, i8* %call, i64 %183
  %min.iters.check1316 = icmp ult i64 %182, 4
  br i1 %min.iters.check1316, label %polly.loop_header606.preheader, label %vector.ph1317

vector.ph1317:                                    ; preds = %polly.loop_header600
  %n.vec1319 = and i64 %182, -4
  br label %vector.body1315

vector.body1315:                                  ; preds = %vector.body1315, %vector.ph1317
  %index1320 = phi i64 [ 0, %vector.ph1317 ], [ %index.next1321, %vector.body1315 ]
  %184 = shl nuw nsw i64 %index1320, 3
  %185 = getelementptr i8, i8* %scevgep612, i64 %184
  %186 = bitcast i8* %185 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %186, align 8, !alias.scope !89, !noalias !91
  %187 = fmul fast <4 x double> %wide.load1324, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %188 = bitcast i8* %185 to <4 x double>*
  store <4 x double> %187, <4 x double>* %188, align 8, !alias.scope !89, !noalias !91
  %index.next1321 = add i64 %index1320, 4
  %189 = icmp eq i64 %index.next1321, %n.vec1319
  br i1 %189, label %middle.block1313, label %vector.body1315, !llvm.loop !95

middle.block1313:                                 ; preds = %vector.body1315
  %cmp.n1323 = icmp eq i64 %182, %n.vec1319
  br i1 %cmp.n1323, label %polly.loop_exit608, label %polly.loop_header606.preheader

polly.loop_header606.preheader:                   ; preds = %polly.loop_header600, %middle.block1313
  %polly.indvar609.ph = phi i64 [ 0, %polly.loop_header600 ], [ %n.vec1319, %middle.block1313 ]
  br label %polly.loop_header606

polly.loop_exit608:                               ; preds = %polly.loop_header606, %middle.block1313
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond1190.not = icmp eq i64 %polly.indvar_next604, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1190.not, label %polly.loop_header616.preheader, label %polly.loop_header600

polly.loop_header616.preheader:                   ; preds = %polly.loop_exit608
  %Packed_MemRef_call1517 = bitcast i8* %malloccall516 to double*
  br label %polly.loop_header616

polly.loop_header606:                             ; preds = %polly.loop_header606.preheader, %polly.loop_header606
  %polly.indvar609 = phi i64 [ %polly.indvar_next610, %polly.loop_header606 ], [ %polly.indvar609.ph, %polly.loop_header606.preheader ]
  %190 = shl nuw nsw i64 %polly.indvar609, 3
  %scevgep613 = getelementptr i8, i8* %scevgep612, i64 %190
  %scevgep613614 = bitcast i8* %scevgep613 to double*
  %_p_scalar_615 = load double, double* %scevgep613614, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_615, 1.200000e+00
  store double %p_mul.i, double* %scevgep613614, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar_next610, %polly.indvar603
  br i1 %exitcond1189.not, label %polly.loop_exit608, label %polly.loop_header606, !llvm.loop !96

polly.loop_header616:                             ; preds = %polly.loop_header616.preheader, %polly.loop_exit624
  %indvars.iv1165 = phi i64 [ 0, %polly.loop_header616.preheader ], [ %indvars.iv.next1166, %polly.loop_exit624 ]
  %polly.indvar619 = phi i64 [ 0, %polly.loop_header616.preheader ], [ %polly.indvar_next620, %polly.loop_exit624 ]
  %smin1185 = call i64 @llvm.smin.i64(i64 %indvars.iv1165, i64 -984)
  %191 = add nsw i64 %smin1185, 1000
  %192 = shl nsw i64 %polly.indvar619, 4
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_exit631
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %indvars.iv.next1166 = add nsw i64 %indvars.iv1165, -16
  %exitcond1188.not = icmp eq i64 %polly.indvar_next620, 63
  br i1 %exitcond1188.not, label %polly.exiting515, label %polly.loop_header616

polly.loop_header622:                             ; preds = %polly.loop_exit631, %polly.loop_header616
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %polly.loop_exit631 ], [ 79, %polly.loop_header616 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %193 = lshr i64 %polly.indvar625, 2
  %194 = add nuw i64 %polly.indvar625, %193
  %195 = mul nuw nsw i64 %194, 80
  %196 = sub i64 %indvars.iv1172, %195
  %197 = add i64 %indvars.iv1177, %195
  %198 = add i64 %indvars.iv1159, %195
  %199 = mul nuw nsw i64 %polly.indvar625, 5
  %200 = mul nsw i64 %polly.indvar625, -100
  %201 = mul nuw nsw i64 %polly.indvar625, 100
  br label %polly.loop_header629

polly.loop_exit631:                               ; preds = %polly.loop_exit687
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next1160 = add nsw i64 %indvars.iv1159, -100
  %indvars.iv.next1173 = add nuw nsw i64 %indvars.iv1172, 100
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -100
  %exitcond1187.not = icmp eq i64 %polly.indvar_next626, 12
  br i1 %exitcond1187.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header629:                             ; preds = %polly.loop_exit687, %polly.loop_header622
  %indvars.iv1179 = phi i64 [ %indvars.iv.next1180, %polly.loop_exit687 ], [ %197, %polly.loop_header622 ]
  %indvars.iv1174 = phi i64 [ %indvars.iv.next1175, %polly.loop_exit687 ], [ %196, %polly.loop_header622 ]
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %polly.loop_exit687 ], [ %198, %polly.loop_header622 ]
  %polly.indvar632 = phi i64 [ %polly.indvar_next633, %polly.loop_exit687 ], [ %194, %polly.loop_header622 ]
  %smax1176 = call i64 @llvm.smax.i64(i64 %indvars.iv1174, i64 0)
  %202 = add i64 %smax1176, %indvars.iv1179
  %smax1163 = call i64 @llvm.smax.i64(i64 %indvars.iv1161, i64 0)
  %203 = shl nsw i64 %polly.indvar632, 2
  %.not.not931 = icmp ugt i64 %203, %199
  %204 = mul nuw nsw i64 %polly.indvar632, 80
  %205 = add nsw i64 %204, %200
  %206 = icmp sgt i64 %205, 100
  %207 = select i1 %206, i64 %205, i64 100
  %208 = add nsw i64 %205, 79
  %polly.loop_guard659.not = icmp sgt i64 %207, %208
  br i1 %.not.not931, label %polly.loop_header635.us, label %polly.loop_header629.split

polly.loop_header635.us:                          ; preds = %polly.loop_header629, %polly.merge642.us
  %polly.indvar638.us = phi i64 [ %polly.indvar_next639.us, %polly.merge642.us ], [ 0, %polly.loop_header629 ]
  %209 = add nuw nsw i64 %polly.indvar638.us, %192
  %polly.access.mul.Packed_MemRef_call1517.us = mul nuw nsw i64 %polly.indvar638.us, 1200
  br label %polly.loop_header645.us

polly.loop_header645.us:                          ; preds = %polly.loop_header635.us, %polly.loop_header645.us
  %polly.indvar648.us = phi i64 [ %polly.indvar_next649.us, %polly.loop_header645.us ], [ 0, %polly.loop_header635.us ]
  %210 = add nuw nsw i64 %polly.indvar648.us, %201
  %polly.access.mul.call1652.us = mul nuw nsw i64 %210, 1000
  %polly.access.add.call1653.us = add nuw nsw i64 %polly.access.mul.call1652.us, %209
  %polly.access.call1654.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us
  %polly.access.call1654.load.us = load double, double* %polly.access.call1654.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.us = add nuw nsw i64 %polly.indvar648.us, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us
  store double %polly.access.call1654.load.us, double* %polly.access.Packed_MemRef_call1517.us, align 8
  %polly.indvar_next649.us = add nuw nsw i64 %polly.indvar648.us, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar_next649.us, 100
  br i1 %exitcond1169.not, label %polly.loop_exit647.us, label %polly.loop_header645.us

polly.loop_exit647.us:                            ; preds = %polly.loop_header645.us
  br i1 %polly.loop_guard659.not, label %polly.merge642.us, label %polly.loop_header656.us

polly.loop_header656.us:                          ; preds = %polly.loop_exit647.us, %polly.loop_header656.us
  %polly.indvar660.us = phi i64 [ %polly.indvar_next661.us, %polly.loop_header656.us ], [ %207, %polly.loop_exit647.us ]
  %211 = add nuw nsw i64 %polly.indvar660.us, %201
  %polly.access.mul.call1664.us = mul nsw i64 %211, 1000
  %polly.access.add.call1665.us = add nuw nsw i64 %polly.access.mul.call1664.us, %209
  %polly.access.call1666.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1665.us
  %polly.access.call1666.load.us = load double, double* %polly.access.call1666.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517668.us = add nuw nsw i64 %polly.indvar660.us, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517669.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517668.us
  store double %polly.access.call1666.load.us, double* %polly.access.Packed_MemRef_call1517669.us, align 8
  %polly.indvar_next661.us = add nuw nsw i64 %polly.indvar660.us, 1
  %polly.loop_cond662.not.not.us = icmp slt i64 %polly.indvar660.us, %208
  br i1 %polly.loop_cond662.not.not.us, label %polly.loop_header656.us, label %polly.merge642.us

polly.merge642.us:                                ; preds = %polly.loop_header656.us, %polly.loop_exit647.us
  %polly.indvar_next639.us = add nuw nsw i64 %polly.indvar638.us, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar_next639.us, %191
  br i1 %exitcond1171.not, label %polly.loop_header685.preheader, label %polly.loop_header635.us

polly.loop_header629.split:                       ; preds = %polly.loop_header629
  %polly.loop_guard674 = icmp sgt i64 %205, -80
  br i1 %polly.loop_guard674, label %polly.loop_header635.us1040, label %polly.loop_header685.preheader

polly.loop_header635.us1040:                      ; preds = %polly.loop_header629.split, %polly.merge642.loopexit934.us1086
  %polly.indvar638.us1041 = phi i64 [ %polly.indvar_next639.us1078, %polly.merge642.loopexit934.us1086 ], [ 0, %polly.loop_header629.split ]
  %212 = add nuw nsw i64 %polly.indvar638.us1041, %192
  %polly.access.mul.Packed_MemRef_call1517682.us1085 = mul nuw nsw i64 %polly.indvar638.us1041, 1200
  br label %polly.loop_header671.us1043

polly.loop_header671.us1043:                      ; preds = %polly.loop_header635.us1040, %polly.loop_header671.us1043
  %polly.indvar675.us1044 = phi i64 [ %polly.indvar_next676.us1051, %polly.loop_header671.us1043 ], [ 0, %polly.loop_header635.us1040 ]
  %213 = add nuw nsw i64 %polly.indvar675.us1044, %201
  %polly.access.mul.call1679.us1045 = mul nuw nsw i64 %213, 1000
  %polly.access.add.call1680.us1046 = add nuw nsw i64 %212, %polly.access.mul.call1679.us1045
  %polly.access.call1681.us1047 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1680.us1046
  %polly.access.call1681.load.us1048 = load double, double* %polly.access.call1681.us1047, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517683.us1049 = add nuw nsw i64 %polly.indvar675.us1044, %polly.access.mul.Packed_MemRef_call1517682.us1085
  %polly.access.Packed_MemRef_call1517684.us1050 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.us1049
  store double %polly.access.call1681.load.us1048, double* %polly.access.Packed_MemRef_call1517684.us1050, align 8
  %polly.indvar_next676.us1051 = add nuw nsw i64 %polly.indvar675.us1044, 1
  %exitcond1164.not = icmp eq i64 %polly.indvar675.us1044, %smax1163
  br i1 %exitcond1164.not, label %polly.merge642.loopexit934.us1086, label %polly.loop_header671.us1043

polly.merge642.loopexit934.us1086:                ; preds = %polly.loop_header671.us1043
  %polly.indvar_next639.us1078 = add nuw nsw i64 %polly.indvar638.us1041, 1
  %exitcond1168.not = icmp eq i64 %polly.indvar_next639.us1078, %191
  br i1 %exitcond1168.not, label %polly.loop_header685.preheader, label %polly.loop_header635.us1040

polly.loop_exit687:                               ; preds = %polly.loop_exit694.loopexit.us, %polly.loop_header685.preheader
  %polly.indvar_next633 = add nuw nsw i64 %polly.indvar632, 1
  %polly.loop_cond634 = icmp ult i64 %polly.indvar632, 14
  %indvars.iv.next1162 = add i64 %indvars.iv1161, 80
  %indvars.iv.next1175 = add i64 %indvars.iv1174, -80
  %indvars.iv.next1180 = add i64 %indvars.iv1179, 80
  br i1 %polly.loop_cond634, label %polly.loop_header629, label %polly.loop_exit631

polly.loop_header685.preheader:                   ; preds = %polly.merge642.loopexit934.us1086, %polly.merge642.us, %polly.loop_header629.split
  %214 = sub nsw i64 %201, %204
  %215 = icmp sgt i64 %214, 0
  %216 = select i1 %215, i64 %214, i64 0
  %polly.loop_guard695 = icmp slt i64 %216, 80
  br i1 %polly.loop_guard695, label %polly.loop_header685.us, label %polly.loop_exit687

polly.loop_header685.us:                          ; preds = %polly.loop_header685.preheader, %polly.loop_exit694.loopexit.us
  %polly.indvar688.us = phi i64 [ %polly.indvar_next689.us, %polly.loop_exit694.loopexit.us ], [ 0, %polly.loop_header685.preheader ]
  %217 = add nuw nsw i64 %polly.indvar688.us, %192
  %polly.access.mul.Packed_MemRef_call1517707.us = mul nuw nsw i64 %polly.indvar688.us, 1200
  %218 = shl i64 %217, 3
  br label %polly.loop_header692.us

polly.loop_header692.us:                          ; preds = %polly.loop_header685.us, %polly.loop_exit702.us
  %indvars.iv1181 = phi i64 [ %202, %polly.loop_header685.us ], [ %indvars.iv.next1182, %polly.loop_exit702.us ]
  %polly.indvar696.us = phi i64 [ %216, %polly.loop_header685.us ], [ %polly.indvar_next697.us, %polly.loop_exit702.us ]
  %smin1183 = call i64 @llvm.smin.i64(i64 %indvars.iv1181, i64 99)
  %219 = add nuw i64 %polly.indvar696.us, %204
  %220 = add i64 %219, %200
  %polly.loop_guard703.us1227 = icmp sgt i64 %220, -1
  br i1 %polly.loop_guard703.us1227, label %polly.loop_header700.preheader.us, label %polly.loop_exit702.us

polly.loop_header700.us:                          ; preds = %polly.loop_header700.preheader.us, %polly.loop_header700.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_header700.us ], [ 0, %polly.loop_header700.preheader.us ]
  %221 = add nuw nsw i64 %polly.indvar704.us, %201
  %polly.access.add.Packed_MemRef_call1517708.us = add nuw nsw i64 %polly.indvar704.us, %polly.access.mul.Packed_MemRef_call1517707.us
  %polly.access.Packed_MemRef_call1517709.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1517709.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_713.us, %_p_scalar_710.us
  %222 = mul nuw nsw i64 %221, 8000
  %223 = add nuw nsw i64 %222, %218
  %scevgep714.us = getelementptr i8, i8* %call2, i64 %223
  %scevgep714715.us = bitcast i8* %scevgep714.us to double*
  %_p_scalar_716.us = load double, double* %scevgep714715.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_720.us, %_p_scalar_716.us
  %224 = shl i64 %221, 3
  %225 = add i64 %224, %228
  %scevgep721.us = getelementptr i8, i8* %call, i64 %225
  %scevgep721722.us = bitcast i8* %scevgep721.us to double*
  %_p_scalar_723.us = load double, double* %scevgep721722.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_723.us
  store double %p_add42.i.us, double* %scevgep721722.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next705.us = add nuw nsw i64 %polly.indvar704.us, 1
  %exitcond1184.not = icmp eq i64 %polly.indvar704.us, %smin1183
  br i1 %exitcond1184.not, label %polly.loop_exit702.us, label %polly.loop_header700.us

polly.loop_exit702.us:                            ; preds = %polly.loop_header700.us, %polly.loop_header692.us
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %polly.loop_cond698.us = icmp ult i64 %polly.indvar696.us, 79
  %indvars.iv.next1182 = add i64 %indvars.iv1181, 1
  br i1 %polly.loop_cond698.us, label %polly.loop_header692.us, label %polly.loop_exit694.loopexit.us

polly.loop_header700.preheader.us:                ; preds = %polly.loop_header692.us
  %226 = mul i64 %219, 8000
  %227 = add i64 %226, %218
  %scevgep711.us = getelementptr i8, i8* %call2, i64 %227
  %scevgep711712.us = bitcast i8* %scevgep711.us to double*
  %_p_scalar_713.us = load double, double* %scevgep711712.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1517718.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1517707.us, %220
  %polly.access.Packed_MemRef_call1517719.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517718.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call1517719.us, align 8
  %228 = mul i64 %219, 9600
  br label %polly.loop_header700.us

polly.loop_exit694.loopexit.us:                   ; preds = %polly.loop_exit702.us
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar_next689.us, %191
  br i1 %exitcond1186.not, label %polly.loop_exit687, label %polly.loop_header685.us

polly.loop_header850:                             ; preds = %entry, %polly.loop_exit858
  %indvars.iv1215 = phi i64 [ %indvars.iv.next1216, %polly.loop_exit858 ], [ 0, %entry ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %entry ]
  %smin1217 = call i64 @llvm.smin.i64(i64 %indvars.iv1215, i64 -1168)
  %229 = shl nsw i64 %polly.indvar853, 5
  %230 = add nsw i64 %smin1217, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1216 = add nsw i64 %indvars.iv1215, -32
  %exitcond1220.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1220.not, label %polly.loop_header877, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %indvars.iv1211 = phi i64 [ %indvars.iv.next1212, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %231 = mul nsw i64 %polly.indvar859, -32
  %smin = call i64 @llvm.smin.i64(i64 %231, i64 -1168)
  %232 = add nsw i64 %smin, 1200
  %smin1213 = call i64 @llvm.smin.i64(i64 %indvars.iv1211, i64 -1168)
  %233 = shl nsw i64 %polly.indvar859, 5
  %234 = add nsw i64 %smin1213, 1199
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1212 = add nsw i64 %indvars.iv1211, -32
  %exitcond1219.not = icmp eq i64 %polly.indvar_next860, 38
  br i1 %exitcond1219.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %polly.indvar865 = phi i64 [ 0, %polly.loop_header856 ], [ %polly.indvar_next866, %polly.loop_exit870 ]
  %235 = add nuw nsw i64 %polly.indvar865, %229
  %236 = trunc i64 %235 to i32
  %237 = mul nuw nsw i64 %235, 9600
  %min.iters.check = icmp eq i64 %232, 0
  br i1 %min.iters.check, label %polly.loop_header868, label %vector.ph1255

vector.ph1255:                                    ; preds = %polly.loop_header862
  %broadcast.splatinsert1262 = insertelement <4 x i64> poison, i64 %233, i32 0
  %broadcast.splat1263 = shufflevector <4 x i64> %broadcast.splatinsert1262, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1264 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1265 = shufflevector <4 x i32> %broadcast.splatinsert1264, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1255
  %index1256 = phi i64 [ 0, %vector.ph1255 ], [ %index.next1257, %vector.body1254 ]
  %vec.ind1260 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1255 ], [ %vec.ind.next1261, %vector.body1254 ]
  %238 = add nuw nsw <4 x i64> %vec.ind1260, %broadcast.splat1263
  %239 = trunc <4 x i64> %238 to <4 x i32>
  %240 = mul <4 x i32> %broadcast.splat1265, %239
  %241 = add <4 x i32> %240, <i32 3, i32 3, i32 3, i32 3>
  %242 = urem <4 x i32> %241, <i32 1200, i32 1200, i32 1200, i32 1200>
  %243 = sitofp <4 x i32> %242 to <4 x double>
  %244 = fmul fast <4 x double> %243, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %245 = extractelement <4 x i64> %238, i32 0
  %246 = shl i64 %245, 3
  %247 = add nuw nsw i64 %246, %237
  %248 = getelementptr i8, i8* %call, i64 %247
  %249 = bitcast i8* %248 to <4 x double>*
  store <4 x double> %244, <4 x double>* %249, align 8, !alias.scope !99, !noalias !101
  %index.next1257 = add i64 %index1256, 4
  %vec.ind.next1261 = add <4 x i64> %vec.ind1260, <i64 4, i64 4, i64 4, i64 4>
  %250 = icmp eq i64 %index.next1257, %232
  br i1 %250, label %polly.loop_exit870, label %vector.body1254, !llvm.loop !104

polly.loop_exit870:                               ; preds = %vector.body1254, %polly.loop_header868
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1218.not = icmp eq i64 %polly.indvar865, %230
  br i1 %exitcond1218.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_header862, %polly.loop_header868
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_header868 ], [ 0, %polly.loop_header862 ]
  %251 = add nuw nsw i64 %polly.indvar871, %233
  %252 = trunc i64 %251 to i32
  %253 = mul i32 %252, %236
  %254 = add i32 %253, 3
  %255 = urem i32 %254, 1200
  %p_conv31.i = sitofp i32 %255 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %256 = shl i64 %251, 3
  %257 = add nuw nsw i64 %256, %237
  %scevgep874 = getelementptr i8, i8* %call, i64 %257
  %scevgep874875 = bitcast i8* %scevgep874 to double*
  store double %p_div33.i, double* %scevgep874875, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1214.not = icmp eq i64 %polly.indvar871, %234
  br i1 %exitcond1214.not, label %polly.loop_exit870, label %polly.loop_header868, !llvm.loop !105

polly.loop_header877:                             ; preds = %polly.loop_exit858, %polly.loop_exit885
  %indvars.iv1205 = phi i64 [ %indvars.iv.next1206, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %smin1207 = call i64 @llvm.smin.i64(i64 %indvars.iv1205, i64 -1168)
  %258 = shl nsw i64 %polly.indvar880, 5
  %259 = add nsw i64 %smin1207, 1199
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1206 = add nsw i64 %indvars.iv1205, -32
  %exitcond1210.not = icmp eq i64 %polly.indvar_next881, 38
  br i1 %exitcond1210.not, label %polly.loop_header903, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %indvars.iv1201 = phi i64 [ %indvars.iv.next1202, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %260 = mul nsw i64 %polly.indvar886, -32
  %smin1269 = call i64 @llvm.smin.i64(i64 %260, i64 -968)
  %261 = add nsw i64 %smin1269, 1000
  %smin1203 = call i64 @llvm.smin.i64(i64 %indvars.iv1201, i64 -968)
  %262 = shl nsw i64 %polly.indvar886, 5
  %263 = add nsw i64 %smin1203, 999
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next1202 = add nsw i64 %indvars.iv1201, -32
  %exitcond1209.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond1209.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %polly.indvar892 = phi i64 [ 0, %polly.loop_header883 ], [ %polly.indvar_next893, %polly.loop_exit897 ]
  %264 = add nuw nsw i64 %polly.indvar892, %258
  %265 = trunc i64 %264 to i32
  %266 = mul nuw nsw i64 %264, 8000
  %min.iters.check1270 = icmp eq i64 %261, 0
  br i1 %min.iters.check1270, label %polly.loop_header895, label %vector.ph1271

vector.ph1271:                                    ; preds = %polly.loop_header889
  %broadcast.splatinsert1280 = insertelement <4 x i64> poison, i64 %262, i32 0
  %broadcast.splat1281 = shufflevector <4 x i64> %broadcast.splatinsert1280, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1282 = insertelement <4 x i32> poison, i32 %265, i32 0
  %broadcast.splat1283 = shufflevector <4 x i32> %broadcast.splatinsert1282, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1268 ]
  %vec.ind1278 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1271 ], [ %vec.ind.next1279, %vector.body1268 ]
  %267 = add nuw nsw <4 x i64> %vec.ind1278, %broadcast.splat1281
  %268 = trunc <4 x i64> %267 to <4 x i32>
  %269 = mul <4 x i32> %broadcast.splat1283, %268
  %270 = add <4 x i32> %269, <i32 2, i32 2, i32 2, i32 2>
  %271 = urem <4 x i32> %270, <i32 1000, i32 1000, i32 1000, i32 1000>
  %272 = sitofp <4 x i32> %271 to <4 x double>
  %273 = fmul fast <4 x double> %272, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %274 = extractelement <4 x i64> %267, i32 0
  %275 = shl i64 %274, 3
  %276 = add nuw nsw i64 %275, %266
  %277 = getelementptr i8, i8* %call2, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %273, <4 x double>* %278, align 8, !alias.scope !103, !noalias !106
  %index.next1275 = add i64 %index1274, 4
  %vec.ind.next1279 = add <4 x i64> %vec.ind1278, <i64 4, i64 4, i64 4, i64 4>
  %279 = icmp eq i64 %index.next1275, %261
  br i1 %279, label %polly.loop_exit897, label %vector.body1268, !llvm.loop !107

polly.loop_exit897:                               ; preds = %vector.body1268, %polly.loop_header895
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1208.not = icmp eq i64 %polly.indvar892, %259
  br i1 %exitcond1208.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_header889, %polly.loop_header895
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_header895 ], [ 0, %polly.loop_header889 ]
  %280 = add nuw nsw i64 %polly.indvar898, %262
  %281 = trunc i64 %280 to i32
  %282 = mul i32 %281, %265
  %283 = add i32 %282, 2
  %284 = urem i32 %283, 1000
  %p_conv10.i = sitofp i32 %284 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %285 = shl i64 %280, 3
  %286 = add nuw nsw i64 %285, %266
  %scevgep901 = getelementptr i8, i8* %call2, i64 %286
  %scevgep901902 = bitcast i8* %scevgep901 to double*
  store double %p_div12.i, double* %scevgep901902, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond1204.not = icmp eq i64 %polly.indvar898, %263
  br i1 %exitcond1204.not, label %polly.loop_exit897, label %polly.loop_header895, !llvm.loop !108

polly.loop_header903:                             ; preds = %polly.loop_exit885, %polly.loop_exit911
  %indvars.iv1195 = phi i64 [ %indvars.iv.next1196, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %smin1197 = call i64 @llvm.smin.i64(i64 %indvars.iv1195, i64 -1168)
  %287 = shl nsw i64 %polly.indvar906, 5
  %288 = add nsw i64 %smin1197, 1199
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1196 = add nsw i64 %indvars.iv1195, -32
  %exitcond1200.not = icmp eq i64 %polly.indvar_next907, 38
  br i1 %exitcond1200.not, label %init_array.exit, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %indvars.iv1191 = phi i64 [ %indvars.iv.next1192, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %289 = mul nsw i64 %polly.indvar912, -32
  %smin1287 = call i64 @llvm.smin.i64(i64 %289, i64 -968)
  %290 = add nsw i64 %smin1287, 1000
  %smin1193 = call i64 @llvm.smin.i64(i64 %indvars.iv1191, i64 -968)
  %291 = shl nsw i64 %polly.indvar912, 5
  %292 = add nsw i64 %smin1193, 999
  br label %polly.loop_header915

polly.loop_exit917:                               ; preds = %polly.loop_exit923
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %indvars.iv.next1192 = add nsw i64 %indvars.iv1191, -32
  %exitcond1199.not = icmp eq i64 %polly.indvar_next913, 32
  br i1 %exitcond1199.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_exit923, %polly.loop_header909
  %polly.indvar918 = phi i64 [ 0, %polly.loop_header909 ], [ %polly.indvar_next919, %polly.loop_exit923 ]
  %293 = add nuw nsw i64 %polly.indvar918, %287
  %294 = trunc i64 %293 to i32
  %295 = mul nuw nsw i64 %293, 8000
  %min.iters.check1288 = icmp eq i64 %290, 0
  br i1 %min.iters.check1288, label %polly.loop_header921, label %vector.ph1289

vector.ph1289:                                    ; preds = %polly.loop_header915
  %broadcast.splatinsert1298 = insertelement <4 x i64> poison, i64 %291, i32 0
  %broadcast.splat1299 = shufflevector <4 x i64> %broadcast.splatinsert1298, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1300 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1301 = shufflevector <4 x i32> %broadcast.splatinsert1300, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %vector.ph1289
  %index1292 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1293, %vector.body1286 ]
  %vec.ind1296 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1289 ], [ %vec.ind.next1297, %vector.body1286 ]
  %296 = add nuw nsw <4 x i64> %vec.ind1296, %broadcast.splat1299
  %297 = trunc <4 x i64> %296 to <4 x i32>
  %298 = mul <4 x i32> %broadcast.splat1301, %297
  %299 = add <4 x i32> %298, <i32 1, i32 1, i32 1, i32 1>
  %300 = urem <4 x i32> %299, <i32 1200, i32 1200, i32 1200, i32 1200>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %303 = extractelement <4 x i64> %296, i32 0
  %304 = shl i64 %303, 3
  %305 = add nuw nsw i64 %304, %295
  %306 = getelementptr i8, i8* %call1, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  store <4 x double> %302, <4 x double>* %307, align 8, !alias.scope !102, !noalias !109
  %index.next1293 = add i64 %index1292, 4
  %vec.ind.next1297 = add <4 x i64> %vec.ind1296, <i64 4, i64 4, i64 4, i64 4>
  %308 = icmp eq i64 %index.next1293, %290
  br i1 %308, label %polly.loop_exit923, label %vector.body1286, !llvm.loop !110

polly.loop_exit923:                               ; preds = %vector.body1286, %polly.loop_header921
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1198.not = icmp eq i64 %polly.indvar918, %288
  br i1 %exitcond1198.not, label %polly.loop_exit917, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_header915, %polly.loop_header921
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_header921 ], [ 0, %polly.loop_header915 ]
  %309 = add nuw nsw i64 %polly.indvar924, %291
  %310 = trunc i64 %309 to i32
  %311 = mul i32 %310, %294
  %312 = add i32 %311, 1
  %313 = urem i32 %312, 1200
  %p_conv.i = sitofp i32 %313 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %314 = shl i64 %309, 3
  %315 = add nuw nsw i64 %314, %295
  %scevgep928 = getelementptr i8, i8* %call1, i64 %315
  %scevgep928929 = bitcast i8* %scevgep928 to double*
  store double %p_div.i, double* %scevgep928929, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1194.not = icmp eq i64 %polly.indvar924, %292
  br i1 %exitcond1194.not, label %polly.loop_exit923, label %polly.loop_header921, !llvm.loop !111
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 16}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !23, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 80}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !72, !73}
!78 = !{!68, !71, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !83, !84}
!88 = !{!79, !82, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !93, !94}
!98 = !{!89, !92, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !76, !13}
!106 = !{!102, !99}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !76, !13}
!109 = !{!103, !99}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !76, !13}
