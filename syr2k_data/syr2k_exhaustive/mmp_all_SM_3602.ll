; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3602.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3602.c"
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
  %call882 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1734 = bitcast i8* %call1 to double*
  %polly.access.call1743 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1743, %call2
  %polly.access.call2763 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2763, %call1
  %2 = or i1 %0, %1
  %polly.access.call783 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call783, %call2
  %4 = icmp ule i8* %polly.access.call2763, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call783, %call1
  %8 = icmp ule i8* %polly.access.call1743, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header856, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1236 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1235 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1234 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1233 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1233, %scevgep1236
  %bound1 = icmp ult i8* %scevgep1235, %scevgep1234
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
  br i1 %exitcond18.not.i, label %vector.ph1240, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1240:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1247 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1248 = shufflevector <4 x i64> %broadcast.splatinsert1247, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1240
  %index1241 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1242, %vector.body1239 ]
  %vec.ind1245 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1240 ], [ %vec.ind.next1246, %vector.body1239 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1245, %broadcast.splat1248
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv7.i, i64 %index1241
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1242 = add i64 %index1241, 4
  %vec.ind.next1246 = add <4 x i64> %vec.ind1245, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1242, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1239, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1239
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1240, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit917
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start518, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1303 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1303, label %for.body3.i46.preheader1380, label %vector.ph1304

vector.ph1304:                                    ; preds = %for.body3.i46.preheader
  %n.vec1306 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %vector.ph1304
  %index1307 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1308, %vector.body1302 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i, i64 %index1307
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1308 = add i64 %index1307, 4
  %46 = icmp eq i64 %index.next1308, %n.vec1306
  br i1 %46, label %middle.block1300, label %vector.body1302, !llvm.loop !18

middle.block1300:                                 ; preds = %vector.body1302
  %cmp.n1310 = icmp eq i64 %indvars.iv21.i, %n.vec1306
  br i1 %cmp.n1310, label %for.inc6.i, label %for.body3.i46.preheader1380

for.body3.i46.preheader1380:                      ; preds = %for.body3.i46.preheader, %middle.block1300
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1306, %middle.block1300 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1380, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1380 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1300, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting519
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start304, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1326 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1326, label %for.body3.i60.preheader1378, label %vector.ph1327

vector.ph1327:                                    ; preds = %for.body3.i60.preheader
  %n.vec1329 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1327
  %index1330 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1331, %vector.body1325 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i52, i64 %index1330
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1334, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1331 = add i64 %index1330, 4
  %57 = icmp eq i64 %index.next1331, %n.vec1329
  br i1 %57, label %middle.block1323, label %vector.body1325, !llvm.loop !60

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1333 = icmp eq i64 %indvars.iv21.i52, %n.vec1329
  br i1 %cmp.n1333, label %for.inc6.i63, label %for.body3.i60.preheader1378

for.body3.i60.preheader1378:                      ; preds = %for.body3.i60.preheader, %middle.block1323
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1329, %middle.block1323 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1378, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1378 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting305
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1352 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1352, label %for.body3.i99.preheader1376, label %vector.ph1353

vector.ph1353:                                    ; preds = %for.body3.i99.preheader
  %n.vec1355 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1351

vector.body1351:                                  ; preds = %vector.body1351, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1357, %vector.body1351 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i91, i64 %index1356
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1360, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1357 = add i64 %index1356, 4
  %68 = icmp eq i64 %index.next1357, %n.vec1355
  br i1 %68, label %middle.block1349, label %vector.body1351, !llvm.loop !62

middle.block1349:                                 ; preds = %vector.body1351
  %cmp.n1359 = icmp eq i64 %indvars.iv21.i91, %n.vec1355
  br i1 %cmp.n1359, label %for.inc6.i102, label %for.body3.i99.preheader1376

for.body3.i99.preheader1376:                      ; preds = %for.body3.i99.preheader, %middle.block1349
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1355, %middle.block1349 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1376, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1376 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1349, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1364 = phi i64 [ %indvar.next1365, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1364, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1366 = icmp ult i64 %88, 4
  br i1 %min.iters.check1366, label %polly.loop_header191.preheader, label %vector.ph1367

vector.ph1367:                                    ; preds = %polly.loop_header
  %n.vec1369 = and i64 %88, -4
  br label %vector.body1363

vector.body1363:                                  ; preds = %vector.body1363, %vector.ph1367
  %index1370 = phi i64 [ 0, %vector.ph1367 ], [ %index.next1371, %vector.body1363 ]
  %90 = shl nuw nsw i64 %index1370, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1374 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1374, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1371 = add i64 %index1370, 4
  %95 = icmp eq i64 %index.next1371, %n.vec1369
  br i1 %95, label %middle.block1361, label %vector.body1363, !llvm.loop !74

middle.block1361:                                 ; preds = %vector.body1363
  %cmp.n1373 = icmp eq i64 %88, %n.vec1369
  br i1 %cmp.n1373, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1361
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1369, %middle.block1361 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1361
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1365 = add i64 %indvar1364, 1
  br i1 %exitcond1129.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1128.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1128.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond1127.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit213 ], [ 7, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 79, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = lshr i64 %indvars.iv1106, 3
  %99 = mul nuw nsw i64 %98, 80
  %100 = mul nuw nsw i64 %polly.indvar208, 3
  %101 = add nuw nsw i64 %100, 7
  %pexp.p_div_q = lshr i64 %101, 3
  %102 = sub nsw i64 %polly.indvar208, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %102, 15
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %103 = sub nsw i64 %indvars.iv, %99
  %104 = sub nsw i64 %indvars.iv1118, %99
  %105 = add i64 %indvars.iv1113, %99
  %106 = mul nuw nsw i64 %polly.indvar208, 5
  %107 = mul nsw i64 %polly.indvar208, -50
  %108 = mul nuw nsw i64 %polly.indvar208, 50
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit265, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 30
  %indvars.iv.next1107 = add nuw nsw i64 %indvars.iv1106, 3
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -30
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 30
  %exitcond1126.not = icmp eq i64 %polly.indvar_next209, 24
  br i1 %exitcond1126.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit265
  %indvars.iv1120 = phi i64 [ %104, %polly.loop_header211.preheader ], [ %indvars.iv.next1121, %polly.loop_exit265 ]
  %indvars.iv1115 = phi i64 [ %105, %polly.loop_header211.preheader ], [ %indvars.iv.next1116, %polly.loop_exit265 ]
  %indvars.iv1108 = phi i64 [ %103, %polly.loop_header211.preheader ], [ %indvars.iv.next1109, %polly.loop_exit265 ]
  %polly.indvar214 = phi i64 [ %102, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit265 ]
  %smax1117 = call i64 @llvm.smax.i64(i64 %indvars.iv1115, i64 0)
  %109 = add i64 %smax1117, %indvars.iv1120
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1108, i64 0)
  %110 = shl nsw i64 %polly.indvar214, 3
  %.not.not = icmp sgt i64 %110, %106
  %111 = mul nsw i64 %polly.indvar214, 80
  %112 = add nsw i64 %111, %107
  %113 = icmp sgt i64 %112, 50
  %114 = select i1 %113, i64 %112, i64 50
  %115 = add nsw i64 %112, 79
  %polly.loop_guard237.not = icmp sgt i64 %114, %115
  br i1 %.not.not, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %116 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %117 = add nuw nsw i64 %polly.indvar226.us, %108
  %polly.access.mul.call1230.us = mul nuw nsw i64 %117, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.access.mul.call1230.us, %116
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next227.us, 50
  br i1 %exitcond1111.not, label %polly.loop_exit225.us, label %polly.loop_header223.us

polly.loop_exit225.us:                            ; preds = %polly.loop_header223.us
  br i1 %polly.loop_guard237.not, label %polly.merge.us, label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_exit225.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %114, %polly.loop_exit225.us ]
  %118 = add nuw nsw i64 %polly.indvar238.us, %108
  %polly.access.mul.call1242.us = mul nsw i64 %118, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %polly.access.mul.call1242.us, %116
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1246.us = add nuw nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nuw nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.not.not.us = icmp slt i64 %polly.indvar238.us, %115
  br i1 %polly.loop_cond240.not.not.us, label %polly.loop_header234.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header234.us, %polly.loop_exit225.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next221.us, 100
  br i1 %exitcond1112.not, label %polly.loop_header263.preheader, label %polly.loop_header217.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  %polly.loop_guard252 = icmp sgt i64 %112, -80
  br i1 %polly.loop_guard252, label %polly.loop_header217.us952, label %polly.loop_header263.preheader

polly.loop_header217.us952:                       ; preds = %polly.loop_header211.split, %polly.merge.loopexit938.us998
  %polly.indvar220.us953 = phi i64 [ %polly.indvar_next221.us990, %polly.merge.loopexit938.us998 ], [ 0, %polly.loop_header211.split ]
  %119 = add nuw nsw i64 %polly.indvar220.us953, %97
  %polly.access.mul.Packed_MemRef_call1260.us997 = mul nuw nsw i64 %polly.indvar220.us953, 1200
  br label %polly.loop_header249.us955

polly.loop_header249.us955:                       ; preds = %polly.loop_header217.us952, %polly.loop_header249.us955
  %polly.indvar253.us956 = phi i64 [ %polly.indvar_next254.us963, %polly.loop_header249.us955 ], [ 0, %polly.loop_header217.us952 ]
  %120 = add nuw nsw i64 %polly.indvar253.us956, %108
  %polly.access.mul.call1257.us957 = mul nuw nsw i64 %120, 1000
  %polly.access.add.call1258.us958 = add nuw nsw i64 %119, %polly.access.mul.call1257.us957
  %polly.access.call1259.us959 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1258.us958
  %polly.access.call1259.load.us960 = load double, double* %polly.access.call1259.us959, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1261.us961 = add nuw nsw i64 %polly.indvar253.us956, %polly.access.mul.Packed_MemRef_call1260.us997
  %polly.access.Packed_MemRef_call1262.us962 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us961
  store double %polly.access.call1259.load.us960, double* %polly.access.Packed_MemRef_call1262.us962, align 8
  %polly.indvar_next254.us963 = add nuw nsw i64 %polly.indvar253.us956, 1
  %exitcond.not = icmp eq i64 %polly.indvar253.us956, %smax
  br i1 %exitcond.not, label %polly.merge.loopexit938.us998, label %polly.loop_header249.us955

polly.merge.loopexit938.us998:                    ; preds = %polly.loop_header249.us955
  %polly.indvar_next221.us990 = add nuw nsw i64 %polly.indvar220.us953, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next221.us990, 100
  br i1 %exitcond1110.not, label %polly.loop_header263.preheader, label %polly.loop_header217.us952

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header263.preheader
  %polly.indvar_next215 = add nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp slt i64 %polly.indvar214, 14
  %indvars.iv.next1109 = add i64 %indvars.iv1108, 80
  %indvars.iv.next1116 = add i64 %indvars.iv1115, -80
  %indvars.iv.next1121 = add i64 %indvars.iv1120, 80
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header263.preheader:                   ; preds = %polly.merge.loopexit938.us998, %polly.merge.us, %polly.loop_header211.split
  %121 = sub nsw i64 %108, %111
  %122 = icmp sgt i64 %121, 0
  %123 = select i1 %122, i64 %121, i64 0
  %polly.loop_guard273 = icmp slt i64 %123, 80
  br i1 %polly.loop_guard273, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %124 = add nuw nsw i64 %polly.indvar266.us, %97
  %polly.access.mul.Packed_MemRef_call1285.us = mul nuw nsw i64 %polly.indvar266.us, 1200
  %125 = shl i64 %124, 3
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header263.us, %polly.loop_exit280.us
  %indvars.iv1122 = phi i64 [ %109, %polly.loop_header263.us ], [ %indvars.iv.next1123, %polly.loop_exit280.us ]
  %polly.indvar274.us = phi i64 [ %123, %polly.loop_header263.us ], [ %polly.indvar_next275.us, %polly.loop_exit280.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 49)
  %126 = add i64 %polly.indvar274.us, %111
  %127 = add i64 %126, %107
  %polly.loop_guard281.us1222 = icmp sgt i64 %127, -1
  br i1 %polly.loop_guard281.us1222, label %polly.loop_header278.preheader.us, label %polly.loop_exit280.us

polly.loop_header278.us:                          ; preds = %polly.loop_header278.preheader.us, %polly.loop_header278.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header278.us ], [ 0, %polly.loop_header278.preheader.us ]
  %128 = add nuw nsw i64 %polly.indvar282.us, %108
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar282.us, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_291.us, %_p_scalar_288.us
  %129 = mul nuw nsw i64 %128, 8000
  %130 = add nuw nsw i64 %129, %125
  %scevgep292.us = getelementptr i8, i8* %call2, i64 %130
  %scevgep292293.us = bitcast i8* %scevgep292.us to double*
  %_p_scalar_294.us = load double, double* %scevgep292293.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_298.us, %_p_scalar_294.us
  %131 = shl i64 %128, 3
  %132 = add i64 %131, %135
  %scevgep299.us = getelementptr i8, i8* %call, i64 %132
  %scevgep299300.us = bitcast i8* %scevgep299.us to double*
  %_p_scalar_301.us = load double, double* %scevgep299300.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_301.us
  store double %p_add42.i118.us, double* %scevgep299300.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar282.us, %smin
  br i1 %exitcond1124.not, label %polly.loop_exit280.us, label %polly.loop_header278.us

polly.loop_exit280.us:                            ; preds = %polly.loop_header278.us, %polly.loop_header270.us
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %polly.loop_cond276.us = icmp ult i64 %polly.indvar274.us, 79
  %indvars.iv.next1123 = add i64 %indvars.iv1122, 1
  br i1 %polly.loop_cond276.us, label %polly.loop_header270.us, label %polly.loop_exit272.loopexit.us

polly.loop_header278.preheader.us:                ; preds = %polly.loop_header270.us
  %133 = mul i64 %126, 8000
  %134 = add i64 %133, %125
  %scevgep289.us = getelementptr i8, i8* %call2, i64 %134
  %scevgep289290.us = bitcast i8* %scevgep289.us to double*
  %_p_scalar_291.us = load double, double* %scevgep289290.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1296.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1285.us, %127
  %polly.access.Packed_MemRef_call1297.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1296.us
  %_p_scalar_298.us = load double, double* %polly.access.Packed_MemRef_call1297.us, align 8
  %135 = mul i64 %126, 9600
  br label %polly.loop_header278.us

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_exit280.us
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next267.us, 100
  br i1 %exitcond1125.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.start304:                                   ; preds = %kernel_syr2k.exit
  %malloccall306 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header390

polly.exiting305:                                 ; preds = %polly.loop_exit414
  tail call void @free(i8* %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start304
  %indvar1338 = phi i64 [ %indvar.next1339, %polly.loop_exit398 ], [ 0, %polly.start304 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start304 ]
  %136 = add i64 %indvar1338, 1
  %137 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1340 = icmp ult i64 %136, 4
  br i1 %min.iters.check1340, label %polly.loop_header396.preheader, label %vector.ph1341

vector.ph1341:                                    ; preds = %polly.loop_header390
  %n.vec1343 = and i64 %136, -4
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1341
  %index1344 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1345, %vector.body1337 ]
  %138 = shl nuw nsw i64 %index1344, 3
  %139 = getelementptr i8, i8* %scevgep402, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !79, !noalias !81
  %141 = fmul fast <4 x double> %wide.load1348, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !79, !noalias !81
  %index.next1345 = add i64 %index1344, 4
  %143 = icmp eq i64 %index.next1345, %n.vec1343
  br i1 %143, label %middle.block1335, label %vector.body1337, !llvm.loop !85

middle.block1335:                                 ; preds = %vector.body1337
  %cmp.n1347 = icmp eq i64 %136, %n.vec1343
  br i1 %cmp.n1347, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1335
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1343, %middle.block1335 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1335
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1339 = add i64 %indvar1338, 1
  br i1 %exitcond1158.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %144
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1157.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !86

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit414 ], [ 0, %polly.loop_header406.preheader ]
  %145 = mul nuw nsw i64 %polly.indvar409, 100
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_exit422
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar_next410, 10
  br i1 %exitcond1156.not, label %polly.exiting305, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_exit422, %polly.loop_header406
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit422 ], [ 0, %polly.loop_header406 ]
  %indvars.iv1141 = phi i64 [ %indvars.iv.next1142, %polly.loop_exit422 ], [ 0, %polly.loop_header406 ]
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit422 ], [ 7, %polly.loop_header406 ]
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit422 ], [ 79, %polly.loop_header406 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit422 ], [ 0, %polly.loop_header406 ]
  %146 = lshr i64 %indvars.iv1132, 3
  %147 = mul nuw nsw i64 %146, 80
  %148 = mul nuw nsw i64 %polly.indvar415, 3
  %149 = add nuw nsw i64 %148, 7
  %pexp.p_div_q418 = lshr i64 %149, 3
  %150 = sub nsw i64 %polly.indvar415, %pexp.p_div_q418
  %polly.loop_guard423 = icmp slt i64 %150, 15
  br i1 %polly.loop_guard423, label %polly.loop_header420.preheader, label %polly.loop_exit422

polly.loop_header420.preheader:                   ; preds = %polly.loop_header412
  %151 = sub nsw i64 %indvars.iv1130, %147
  %152 = sub nsw i64 %indvars.iv1146, %147
  %153 = add i64 %indvars.iv1141, %147
  %154 = mul nuw nsw i64 %polly.indvar415, 5
  %155 = mul nsw i64 %polly.indvar415, -50
  %156 = mul nuw nsw i64 %polly.indvar415, 50
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit479, %polly.loop_header412
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next1131 = add nuw nsw i64 %indvars.iv1130, 30
  %indvars.iv.next1133 = add nuw nsw i64 %indvars.iv1132, 3
  %indvars.iv.next1142 = add nsw i64 %indvars.iv1141, -30
  %indvars.iv.next1147 = add nuw nsw i64 %indvars.iv1146, 30
  %exitcond1155.not = icmp eq i64 %polly.indvar_next416, 24
  br i1 %exitcond1155.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header420:                             ; preds = %polly.loop_header420.preheader, %polly.loop_exit479
  %indvars.iv1148 = phi i64 [ %152, %polly.loop_header420.preheader ], [ %indvars.iv.next1149, %polly.loop_exit479 ]
  %indvars.iv1143 = phi i64 [ %153, %polly.loop_header420.preheader ], [ %indvars.iv.next1144, %polly.loop_exit479 ]
  %indvars.iv1134 = phi i64 [ %151, %polly.loop_header420.preheader ], [ %indvars.iv.next1135, %polly.loop_exit479 ]
  %polly.indvar424 = phi i64 [ %150, %polly.loop_header420.preheader ], [ %polly.indvar_next425, %polly.loop_exit479 ]
  %smax1145 = call i64 @llvm.smax.i64(i64 %indvars.iv1143, i64 0)
  %157 = add i64 %smax1145, %indvars.iv1148
  %smax1136 = call i64 @llvm.smax.i64(i64 %indvars.iv1134, i64 0)
  %158 = shl nsw i64 %polly.indvar424, 3
  %.not.not936 = icmp sgt i64 %158, %154
  %159 = mul nsw i64 %polly.indvar424, 80
  %160 = add nsw i64 %159, %155
  %161 = icmp sgt i64 %160, 50
  %162 = select i1 %161, i64 %160, i64 50
  %163 = add nsw i64 %160, 79
  %polly.loop_guard451.not = icmp sgt i64 %162, %163
  br i1 %.not.not936, label %polly.loop_header427.us, label %polly.loop_header420.split

polly.loop_header427.us:                          ; preds = %polly.loop_header420, %polly.merge434.us
  %polly.indvar430.us = phi i64 [ %polly.indvar_next431.us, %polly.merge434.us ], [ 0, %polly.loop_header420 ]
  %164 = add nuw nsw i64 %polly.indvar430.us, %145
  %polly.access.mul.Packed_MemRef_call1307.us = mul nuw nsw i64 %polly.indvar430.us, 1200
  br label %polly.loop_header437.us

polly.loop_header437.us:                          ; preds = %polly.loop_header427.us, %polly.loop_header437.us
  %polly.indvar440.us = phi i64 [ %polly.indvar_next441.us, %polly.loop_header437.us ], [ 0, %polly.loop_header427.us ]
  %165 = add nuw nsw i64 %polly.indvar440.us, %156
  %polly.access.mul.call1444.us = mul nuw nsw i64 %165, 1000
  %polly.access.add.call1445.us = add nuw nsw i64 %polly.access.mul.call1444.us, %164
  %polly.access.call1446.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1445.us
  %polly.access.call1446.load.us = load double, double* %polly.access.call1446.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1307.us = add nuw nsw i64 %polly.indvar440.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307.us
  store double %polly.access.call1446.load.us, double* %polly.access.Packed_MemRef_call1307.us, align 8
  %polly.indvar_next441.us = add nuw nsw i64 %polly.indvar440.us, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next441.us, 50
  br i1 %exitcond1139.not, label %polly.loop_exit439.us, label %polly.loop_header437.us

polly.loop_exit439.us:                            ; preds = %polly.loop_header437.us
  br i1 %polly.loop_guard451.not, label %polly.merge434.us, label %polly.loop_header448.us

polly.loop_header448.us:                          ; preds = %polly.loop_exit439.us, %polly.loop_header448.us
  %polly.indvar452.us = phi i64 [ %polly.indvar_next453.us, %polly.loop_header448.us ], [ %162, %polly.loop_exit439.us ]
  %166 = add nuw nsw i64 %polly.indvar452.us, %156
  %polly.access.mul.call1456.us = mul nsw i64 %166, 1000
  %polly.access.add.call1457.us = add nuw nsw i64 %polly.access.mul.call1456.us, %164
  %polly.access.call1458.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1457.us
  %polly.access.call1458.load.us = load double, double* %polly.access.call1458.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1307460.us = add nuw nsw i64 %polly.indvar452.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307461.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307460.us
  store double %polly.access.call1458.load.us, double* %polly.access.Packed_MemRef_call1307461.us, align 8
  %polly.indvar_next453.us = add nuw nsw i64 %polly.indvar452.us, 1
  %polly.loop_cond454.not.not.us = icmp slt i64 %polly.indvar452.us, %163
  br i1 %polly.loop_cond454.not.not.us, label %polly.loop_header448.us, label %polly.merge434.us

polly.merge434.us:                                ; preds = %polly.loop_header448.us, %polly.loop_exit439.us
  %polly.indvar_next431.us = add nuw nsw i64 %polly.indvar430.us, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next431.us, 100
  br i1 %exitcond1140.not, label %polly.loop_header477.preheader, label %polly.loop_header427.us

polly.loop_header420.split:                       ; preds = %polly.loop_header420
  %polly.loop_guard466 = icmp sgt i64 %160, -80
  br i1 %polly.loop_guard466, label %polly.loop_header427.us999, label %polly.loop_header477.preheader

polly.loop_header427.us999:                       ; preds = %polly.loop_header420.split, %polly.merge434.loopexit939.us1045
  %polly.indvar430.us1000 = phi i64 [ %polly.indvar_next431.us1037, %polly.merge434.loopexit939.us1045 ], [ 0, %polly.loop_header420.split ]
  %167 = add nuw nsw i64 %polly.indvar430.us1000, %145
  %polly.access.mul.Packed_MemRef_call1307474.us1044 = mul nuw nsw i64 %polly.indvar430.us1000, 1200
  br label %polly.loop_header463.us1002

polly.loop_header463.us1002:                      ; preds = %polly.loop_header427.us999, %polly.loop_header463.us1002
  %polly.indvar467.us1003 = phi i64 [ %polly.indvar_next468.us1010, %polly.loop_header463.us1002 ], [ 0, %polly.loop_header427.us999 ]
  %168 = add nuw nsw i64 %polly.indvar467.us1003, %156
  %polly.access.mul.call1471.us1004 = mul nuw nsw i64 %168, 1000
  %polly.access.add.call1472.us1005 = add nuw nsw i64 %167, %polly.access.mul.call1471.us1004
  %polly.access.call1473.us1006 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1472.us1005
  %polly.access.call1473.load.us1007 = load double, double* %polly.access.call1473.us1006, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1307475.us1008 = add nuw nsw i64 %polly.indvar467.us1003, %polly.access.mul.Packed_MemRef_call1307474.us1044
  %polly.access.Packed_MemRef_call1307476.us1009 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307475.us1008
  store double %polly.access.call1473.load.us1007, double* %polly.access.Packed_MemRef_call1307476.us1009, align 8
  %polly.indvar_next468.us1010 = add nuw nsw i64 %polly.indvar467.us1003, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar467.us1003, %smax1136
  br i1 %exitcond1137.not, label %polly.merge434.loopexit939.us1045, label %polly.loop_header463.us1002

polly.merge434.loopexit939.us1045:                ; preds = %polly.loop_header463.us1002
  %polly.indvar_next431.us1037 = add nuw nsw i64 %polly.indvar430.us1000, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar_next431.us1037, 100
  br i1 %exitcond1138.not, label %polly.loop_header477.preheader, label %polly.loop_header427.us999

polly.loop_exit479:                               ; preds = %polly.loop_exit486.loopexit.us, %polly.loop_header477.preheader
  %polly.indvar_next425 = add nsw i64 %polly.indvar424, 1
  %polly.loop_cond426 = icmp slt i64 %polly.indvar424, 14
  %indvars.iv.next1135 = add i64 %indvars.iv1134, 80
  %indvars.iv.next1144 = add i64 %indvars.iv1143, -80
  %indvars.iv.next1149 = add i64 %indvars.iv1148, 80
  br i1 %polly.loop_cond426, label %polly.loop_header420, label %polly.loop_exit422

polly.loop_header477.preheader:                   ; preds = %polly.merge434.loopexit939.us1045, %polly.merge434.us, %polly.loop_header420.split
  %169 = sub nsw i64 %156, %159
  %170 = icmp sgt i64 %169, 0
  %171 = select i1 %170, i64 %169, i64 0
  %polly.loop_guard487 = icmp slt i64 %171, 80
  br i1 %polly.loop_guard487, label %polly.loop_header477.us, label %polly.loop_exit479

polly.loop_header477.us:                          ; preds = %polly.loop_header477.preheader, %polly.loop_exit486.loopexit.us
  %polly.indvar480.us = phi i64 [ %polly.indvar_next481.us, %polly.loop_exit486.loopexit.us ], [ 0, %polly.loop_header477.preheader ]
  %172 = add nuw nsw i64 %polly.indvar480.us, %145
  %polly.access.mul.Packed_MemRef_call1307499.us = mul nuw nsw i64 %polly.indvar480.us, 1200
  %173 = shl i64 %172, 3
  br label %polly.loop_header484.us

polly.loop_header484.us:                          ; preds = %polly.loop_header477.us, %polly.loop_exit494.us
  %indvars.iv1150 = phi i64 [ %157, %polly.loop_header477.us ], [ %indvars.iv.next1151, %polly.loop_exit494.us ]
  %polly.indvar488.us = phi i64 [ %171, %polly.loop_header477.us ], [ %polly.indvar_next489.us, %polly.loop_exit494.us ]
  %smin1152 = call i64 @llvm.smin.i64(i64 %indvars.iv1150, i64 49)
  %174 = add i64 %polly.indvar488.us, %159
  %175 = add i64 %174, %155
  %polly.loop_guard495.us1223 = icmp sgt i64 %175, -1
  br i1 %polly.loop_guard495.us1223, label %polly.loop_header492.preheader.us, label %polly.loop_exit494.us

polly.loop_header492.us:                          ; preds = %polly.loop_header492.preheader.us, %polly.loop_header492.us
  %polly.indvar496.us = phi i64 [ %polly.indvar_next497.us, %polly.loop_header492.us ], [ 0, %polly.loop_header492.preheader.us ]
  %176 = add nuw nsw i64 %polly.indvar496.us, %156
  %polly.access.add.Packed_MemRef_call1307500.us = add nuw nsw i64 %polly.indvar496.us, %polly.access.mul.Packed_MemRef_call1307499.us
  %polly.access.Packed_MemRef_call1307501.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307500.us
  %_p_scalar_502.us = load double, double* %polly.access.Packed_MemRef_call1307501.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_505.us, %_p_scalar_502.us
  %177 = mul nuw nsw i64 %176, 8000
  %178 = add nuw nsw i64 %177, %173
  %scevgep506.us = getelementptr i8, i8* %call2, i64 %178
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_512.us, %_p_scalar_508.us
  %179 = shl i64 %176, 3
  %180 = add i64 %179, %183
  %scevgep513.us = getelementptr i8, i8* %call, i64 %180
  %scevgep513514.us = bitcast i8* %scevgep513.us to double*
  %_p_scalar_515.us = load double, double* %scevgep513514.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_515.us
  store double %p_add42.i79.us, double* %scevgep513514.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next497.us = add nuw nsw i64 %polly.indvar496.us, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar496.us, %smin1152
  br i1 %exitcond1153.not, label %polly.loop_exit494.us, label %polly.loop_header492.us

polly.loop_exit494.us:                            ; preds = %polly.loop_header492.us, %polly.loop_header484.us
  %polly.indvar_next489.us = add nuw nsw i64 %polly.indvar488.us, 1
  %polly.loop_cond490.us = icmp ult i64 %polly.indvar488.us, 79
  %indvars.iv.next1151 = add i64 %indvars.iv1150, 1
  br i1 %polly.loop_cond490.us, label %polly.loop_header484.us, label %polly.loop_exit486.loopexit.us

polly.loop_header492.preheader.us:                ; preds = %polly.loop_header484.us
  %181 = mul i64 %174, 8000
  %182 = add i64 %181, %173
  %scevgep503.us = getelementptr i8, i8* %call2, i64 %182
  %scevgep503504.us = bitcast i8* %scevgep503.us to double*
  %_p_scalar_505.us = load double, double* %scevgep503504.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1307510.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1307499.us, %175
  %polly.access.Packed_MemRef_call1307511.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307510.us
  %_p_scalar_512.us = load double, double* %polly.access.Packed_MemRef_call1307511.us, align 8
  %183 = mul i64 %174, 9600
  br label %polly.loop_header492.us

polly.loop_exit486.loopexit.us:                   ; preds = %polly.loop_exit494.us
  %polly.indvar_next481.us = add nuw nsw i64 %polly.indvar480.us, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar_next481.us, 100
  br i1 %exitcond1154.not, label %polly.loop_exit479, label %polly.loop_header477.us

polly.start518:                                   ; preds = %init_array.exit
  %malloccall520 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header604

polly.exiting519:                                 ; preds = %polly.loop_exit628
  tail call void @free(i8* %malloccall520)
  br label %kernel_syr2k.exit

polly.loop_header604:                             ; preds = %polly.loop_exit612, %polly.start518
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit612 ], [ 0, %polly.start518 ]
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_exit612 ], [ 1, %polly.start518 ]
  %184 = add i64 %indvar, 1
  %185 = mul nuw nsw i64 %polly.indvar607, 9600
  %scevgep616 = getelementptr i8, i8* %call, i64 %185
  %min.iters.check1314 = icmp ult i64 %184, 4
  br i1 %min.iters.check1314, label %polly.loop_header610.preheader, label %vector.ph1315

vector.ph1315:                                    ; preds = %polly.loop_header604
  %n.vec1317 = and i64 %184, -4
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1319, %vector.body1313 ]
  %186 = shl nuw nsw i64 %index1318, 3
  %187 = getelementptr i8, i8* %scevgep616, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %188, align 8, !alias.scope !89, !noalias !91
  %189 = fmul fast <4 x double> %wide.load1322, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %190 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %189, <4 x double>* %190, align 8, !alias.scope !89, !noalias !91
  %index.next1319 = add i64 %index1318, 4
  %191 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %191, label %middle.block1311, label %vector.body1313, !llvm.loop !95

middle.block1311:                                 ; preds = %vector.body1313
  %cmp.n1321 = icmp eq i64 %184, %n.vec1317
  br i1 %cmp.n1321, label %polly.loop_exit612, label %polly.loop_header610.preheader

polly.loop_header610.preheader:                   ; preds = %polly.loop_header604, %middle.block1311
  %polly.indvar613.ph = phi i64 [ 0, %polly.loop_header604 ], [ %n.vec1317, %middle.block1311 ]
  br label %polly.loop_header610

polly.loop_exit612:                               ; preds = %polly.loop_header610, %middle.block1311
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1187.not = icmp eq i64 %polly.indvar_next608, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1187.not, label %polly.loop_header620.preheader, label %polly.loop_header604

polly.loop_header620.preheader:                   ; preds = %polly.loop_exit612
  %Packed_MemRef_call1521 = bitcast i8* %malloccall520 to double*
  br label %polly.loop_header620

polly.loop_header610:                             ; preds = %polly.loop_header610.preheader, %polly.loop_header610
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.loop_header610 ], [ %polly.indvar613.ph, %polly.loop_header610.preheader ]
  %192 = shl nuw nsw i64 %polly.indvar613, 3
  %scevgep617 = getelementptr i8, i8* %scevgep616, i64 %192
  %scevgep617618 = bitcast i8* %scevgep617 to double*
  %_p_scalar_619 = load double, double* %scevgep617618, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_619, 1.200000e+00
  store double %p_mul.i, double* %scevgep617618, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar_next614, %polly.indvar607
  br i1 %exitcond1186.not, label %polly.loop_exit612, label %polly.loop_header610, !llvm.loop !96

polly.loop_header620:                             ; preds = %polly.loop_header620.preheader, %polly.loop_exit628
  %polly.indvar623 = phi i64 [ %polly.indvar_next624, %polly.loop_exit628 ], [ 0, %polly.loop_header620.preheader ]
  %193 = mul nuw nsw i64 %polly.indvar623, 100
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_exit636
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar_next624, 10
  br i1 %exitcond1185.not, label %polly.exiting519, label %polly.loop_header620

polly.loop_header626:                             ; preds = %polly.loop_exit636, %polly.loop_header620
  %indvars.iv1175 = phi i64 [ %indvars.iv.next1176, %polly.loop_exit636 ], [ 0, %polly.loop_header620 ]
  %indvars.iv1170 = phi i64 [ %indvars.iv.next1171, %polly.loop_exit636 ], [ 0, %polly.loop_header620 ]
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %polly.loop_exit636 ], [ 7, %polly.loop_header620 ]
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %polly.loop_exit636 ], [ 79, %polly.loop_header620 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit636 ], [ 0, %polly.loop_header620 ]
  %194 = lshr i64 %indvars.iv1161, 3
  %195 = mul nuw nsw i64 %194, 80
  %196 = mul nuw nsw i64 %polly.indvar629, 3
  %197 = add nuw nsw i64 %196, 7
  %pexp.p_div_q632 = lshr i64 %197, 3
  %198 = sub nsw i64 %polly.indvar629, %pexp.p_div_q632
  %polly.loop_guard637 = icmp slt i64 %198, 15
  br i1 %polly.loop_guard637, label %polly.loop_header634.preheader, label %polly.loop_exit636

polly.loop_header634.preheader:                   ; preds = %polly.loop_header626
  %199 = sub nsw i64 %indvars.iv1159, %195
  %200 = sub nsw i64 %indvars.iv1175, %195
  %201 = add i64 %indvars.iv1170, %195
  %202 = mul nuw nsw i64 %polly.indvar629, 5
  %203 = mul nsw i64 %polly.indvar629, -50
  %204 = mul nuw nsw i64 %polly.indvar629, 50
  br label %polly.loop_header634

polly.loop_exit636:                               ; preds = %polly.loop_exit693, %polly.loop_header626
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next1160 = add nuw nsw i64 %indvars.iv1159, 30
  %indvars.iv.next1162 = add nuw nsw i64 %indvars.iv1161, 3
  %indvars.iv.next1171 = add nsw i64 %indvars.iv1170, -30
  %indvars.iv.next1176 = add nuw nsw i64 %indvars.iv1175, 30
  %exitcond1184.not = icmp eq i64 %polly.indvar_next630, 24
  br i1 %exitcond1184.not, label %polly.loop_exit628, label %polly.loop_header626

polly.loop_header634:                             ; preds = %polly.loop_header634.preheader, %polly.loop_exit693
  %indvars.iv1177 = phi i64 [ %200, %polly.loop_header634.preheader ], [ %indvars.iv.next1178, %polly.loop_exit693 ]
  %indvars.iv1172 = phi i64 [ %201, %polly.loop_header634.preheader ], [ %indvars.iv.next1173, %polly.loop_exit693 ]
  %indvars.iv1163 = phi i64 [ %199, %polly.loop_header634.preheader ], [ %indvars.iv.next1164, %polly.loop_exit693 ]
  %polly.indvar638 = phi i64 [ %198, %polly.loop_header634.preheader ], [ %polly.indvar_next639, %polly.loop_exit693 ]
  %smax1174 = call i64 @llvm.smax.i64(i64 %indvars.iv1172, i64 0)
  %205 = add i64 %smax1174, %indvars.iv1177
  %smax1165 = call i64 @llvm.smax.i64(i64 %indvars.iv1163, i64 0)
  %206 = shl nsw i64 %polly.indvar638, 3
  %.not.not937 = icmp sgt i64 %206, %202
  %207 = mul nsw i64 %polly.indvar638, 80
  %208 = add nsw i64 %207, %203
  %209 = icmp sgt i64 %208, 50
  %210 = select i1 %209, i64 %208, i64 50
  %211 = add nsw i64 %208, 79
  %polly.loop_guard665.not = icmp sgt i64 %210, %211
  br i1 %.not.not937, label %polly.loop_header641.us, label %polly.loop_header634.split

polly.loop_header641.us:                          ; preds = %polly.loop_header634, %polly.merge648.us
  %polly.indvar644.us = phi i64 [ %polly.indvar_next645.us, %polly.merge648.us ], [ 0, %polly.loop_header634 ]
  %212 = add nuw nsw i64 %polly.indvar644.us, %193
  %polly.access.mul.Packed_MemRef_call1521.us = mul nuw nsw i64 %polly.indvar644.us, 1200
  br label %polly.loop_header651.us

polly.loop_header651.us:                          ; preds = %polly.loop_header641.us, %polly.loop_header651.us
  %polly.indvar654.us = phi i64 [ %polly.indvar_next655.us, %polly.loop_header651.us ], [ 0, %polly.loop_header641.us ]
  %213 = add nuw nsw i64 %polly.indvar654.us, %204
  %polly.access.mul.call1658.us = mul nuw nsw i64 %213, 1000
  %polly.access.add.call1659.us = add nuw nsw i64 %polly.access.mul.call1658.us, %212
  %polly.access.call1660.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1659.us
  %polly.access.call1660.load.us = load double, double* %polly.access.call1660.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1521.us = add nuw nsw i64 %polly.indvar654.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us
  store double %polly.access.call1660.load.us, double* %polly.access.Packed_MemRef_call1521.us, align 8
  %polly.indvar_next655.us = add nuw nsw i64 %polly.indvar654.us, 1
  %exitcond1168.not = icmp eq i64 %polly.indvar_next655.us, 50
  br i1 %exitcond1168.not, label %polly.loop_exit653.us, label %polly.loop_header651.us

polly.loop_exit653.us:                            ; preds = %polly.loop_header651.us
  br i1 %polly.loop_guard665.not, label %polly.merge648.us, label %polly.loop_header662.us

polly.loop_header662.us:                          ; preds = %polly.loop_exit653.us, %polly.loop_header662.us
  %polly.indvar666.us = phi i64 [ %polly.indvar_next667.us, %polly.loop_header662.us ], [ %210, %polly.loop_exit653.us ]
  %214 = add nuw nsw i64 %polly.indvar666.us, %204
  %polly.access.mul.call1670.us = mul nsw i64 %214, 1000
  %polly.access.add.call1671.us = add nuw nsw i64 %polly.access.mul.call1670.us, %212
  %polly.access.call1672.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1671.us
  %polly.access.call1672.load.us = load double, double* %polly.access.call1672.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1521674.us = add nuw nsw i64 %polly.indvar666.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521675.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521674.us
  store double %polly.access.call1672.load.us, double* %polly.access.Packed_MemRef_call1521675.us, align 8
  %polly.indvar_next667.us = add nuw nsw i64 %polly.indvar666.us, 1
  %polly.loop_cond668.not.not.us = icmp slt i64 %polly.indvar666.us, %211
  br i1 %polly.loop_cond668.not.not.us, label %polly.loop_header662.us, label %polly.merge648.us

polly.merge648.us:                                ; preds = %polly.loop_header662.us, %polly.loop_exit653.us
  %polly.indvar_next645.us = add nuw nsw i64 %polly.indvar644.us, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar_next645.us, 100
  br i1 %exitcond1169.not, label %polly.loop_header691.preheader, label %polly.loop_header641.us

polly.loop_header634.split:                       ; preds = %polly.loop_header634
  %polly.loop_guard680 = icmp sgt i64 %208, -80
  br i1 %polly.loop_guard680, label %polly.loop_header641.us1046, label %polly.loop_header691.preheader

polly.loop_header641.us1046:                      ; preds = %polly.loop_header634.split, %polly.merge648.loopexit940.us1092
  %polly.indvar644.us1047 = phi i64 [ %polly.indvar_next645.us1084, %polly.merge648.loopexit940.us1092 ], [ 0, %polly.loop_header634.split ]
  %215 = add nuw nsw i64 %polly.indvar644.us1047, %193
  %polly.access.mul.Packed_MemRef_call1521688.us1091 = mul nuw nsw i64 %polly.indvar644.us1047, 1200
  br label %polly.loop_header677.us1049

polly.loop_header677.us1049:                      ; preds = %polly.loop_header641.us1046, %polly.loop_header677.us1049
  %polly.indvar681.us1050 = phi i64 [ %polly.indvar_next682.us1057, %polly.loop_header677.us1049 ], [ 0, %polly.loop_header641.us1046 ]
  %216 = add nuw nsw i64 %polly.indvar681.us1050, %204
  %polly.access.mul.call1685.us1051 = mul nuw nsw i64 %216, 1000
  %polly.access.add.call1686.us1052 = add nuw nsw i64 %215, %polly.access.mul.call1685.us1051
  %polly.access.call1687.us1053 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1686.us1052
  %polly.access.call1687.load.us1054 = load double, double* %polly.access.call1687.us1053, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1521689.us1055 = add nuw nsw i64 %polly.indvar681.us1050, %polly.access.mul.Packed_MemRef_call1521688.us1091
  %polly.access.Packed_MemRef_call1521690.us1056 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521689.us1055
  store double %polly.access.call1687.load.us1054, double* %polly.access.Packed_MemRef_call1521690.us1056, align 8
  %polly.indvar_next682.us1057 = add nuw nsw i64 %polly.indvar681.us1050, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar681.us1050, %smax1165
  br i1 %exitcond1166.not, label %polly.merge648.loopexit940.us1092, label %polly.loop_header677.us1049

polly.merge648.loopexit940.us1092:                ; preds = %polly.loop_header677.us1049
  %polly.indvar_next645.us1084 = add nuw nsw i64 %polly.indvar644.us1047, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar_next645.us1084, 100
  br i1 %exitcond1167.not, label %polly.loop_header691.preheader, label %polly.loop_header641.us1046

polly.loop_exit693:                               ; preds = %polly.loop_exit700.loopexit.us, %polly.loop_header691.preheader
  %polly.indvar_next639 = add nsw i64 %polly.indvar638, 1
  %polly.loop_cond640 = icmp slt i64 %polly.indvar638, 14
  %indvars.iv.next1164 = add i64 %indvars.iv1163, 80
  %indvars.iv.next1173 = add i64 %indvars.iv1172, -80
  %indvars.iv.next1178 = add i64 %indvars.iv1177, 80
  br i1 %polly.loop_cond640, label %polly.loop_header634, label %polly.loop_exit636

polly.loop_header691.preheader:                   ; preds = %polly.merge648.loopexit940.us1092, %polly.merge648.us, %polly.loop_header634.split
  %217 = sub nsw i64 %204, %207
  %218 = icmp sgt i64 %217, 0
  %219 = select i1 %218, i64 %217, i64 0
  %polly.loop_guard701 = icmp slt i64 %219, 80
  br i1 %polly.loop_guard701, label %polly.loop_header691.us, label %polly.loop_exit693

polly.loop_header691.us:                          ; preds = %polly.loop_header691.preheader, %polly.loop_exit700.loopexit.us
  %polly.indvar694.us = phi i64 [ %polly.indvar_next695.us, %polly.loop_exit700.loopexit.us ], [ 0, %polly.loop_header691.preheader ]
  %220 = add nuw nsw i64 %polly.indvar694.us, %193
  %polly.access.mul.Packed_MemRef_call1521713.us = mul nuw nsw i64 %polly.indvar694.us, 1200
  %221 = shl i64 %220, 3
  br label %polly.loop_header698.us

polly.loop_header698.us:                          ; preds = %polly.loop_header691.us, %polly.loop_exit708.us
  %indvars.iv1179 = phi i64 [ %205, %polly.loop_header691.us ], [ %indvars.iv.next1180, %polly.loop_exit708.us ]
  %polly.indvar702.us = phi i64 [ %219, %polly.loop_header691.us ], [ %polly.indvar_next703.us, %polly.loop_exit708.us ]
  %smin1181 = call i64 @llvm.smin.i64(i64 %indvars.iv1179, i64 49)
  %222 = add i64 %polly.indvar702.us, %207
  %223 = add i64 %222, %203
  %polly.loop_guard709.us1224 = icmp sgt i64 %223, -1
  br i1 %polly.loop_guard709.us1224, label %polly.loop_header706.preheader.us, label %polly.loop_exit708.us

polly.loop_header706.us:                          ; preds = %polly.loop_header706.preheader.us, %polly.loop_header706.us
  %polly.indvar710.us = phi i64 [ %polly.indvar_next711.us, %polly.loop_header706.us ], [ 0, %polly.loop_header706.preheader.us ]
  %224 = add nuw nsw i64 %polly.indvar710.us, %204
  %polly.access.add.Packed_MemRef_call1521714.us = add nuw nsw i64 %polly.indvar710.us, %polly.access.mul.Packed_MemRef_call1521713.us
  %polly.access.Packed_MemRef_call1521715.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521714.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1521715.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_719.us, %_p_scalar_716.us
  %225 = mul nuw nsw i64 %224, 8000
  %226 = add nuw nsw i64 %225, %221
  %scevgep720.us = getelementptr i8, i8* %call2, i64 %226
  %scevgep720721.us = bitcast i8* %scevgep720.us to double*
  %_p_scalar_722.us = load double, double* %scevgep720721.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_726.us, %_p_scalar_722.us
  %227 = shl i64 %224, 3
  %228 = add i64 %227, %231
  %scevgep727.us = getelementptr i8, i8* %call, i64 %228
  %scevgep727728.us = bitcast i8* %scevgep727.us to double*
  %_p_scalar_729.us = load double, double* %scevgep727728.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_729.us
  store double %p_add42.i.us, double* %scevgep727728.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next711.us = add nuw nsw i64 %polly.indvar710.us, 1
  %exitcond1182.not = icmp eq i64 %polly.indvar710.us, %smin1181
  br i1 %exitcond1182.not, label %polly.loop_exit708.us, label %polly.loop_header706.us

polly.loop_exit708.us:                            ; preds = %polly.loop_header706.us, %polly.loop_header698.us
  %polly.indvar_next703.us = add nuw nsw i64 %polly.indvar702.us, 1
  %polly.loop_cond704.us = icmp ult i64 %polly.indvar702.us, 79
  %indvars.iv.next1180 = add i64 %indvars.iv1179, 1
  br i1 %polly.loop_cond704.us, label %polly.loop_header698.us, label %polly.loop_exit700.loopexit.us

polly.loop_header706.preheader.us:                ; preds = %polly.loop_header698.us
  %229 = mul i64 %222, 8000
  %230 = add i64 %229, %221
  %scevgep717.us = getelementptr i8, i8* %call2, i64 %230
  %scevgep717718.us = bitcast i8* %scevgep717.us to double*
  %_p_scalar_719.us = load double, double* %scevgep717718.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1521724.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1521713.us, %223
  %polly.access.Packed_MemRef_call1521725.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521724.us
  %_p_scalar_726.us = load double, double* %polly.access.Packed_MemRef_call1521725.us, align 8
  %231 = mul i64 %222, 9600
  br label %polly.loop_header706.us

polly.loop_exit700.loopexit.us:                   ; preds = %polly.loop_exit708.us
  %polly.indvar_next695.us = add nuw nsw i64 %polly.indvar694.us, 1
  %exitcond1183.not = icmp eq i64 %polly.indvar_next695.us, 100
  br i1 %exitcond1183.not, label %polly.loop_exit693, label %polly.loop_header691.us

polly.loop_header856:                             ; preds = %entry, %polly.loop_exit864
  %indvars.iv1212 = phi i64 [ %indvars.iv.next1213, %polly.loop_exit864 ], [ 0, %entry ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %entry ]
  %smin1214 = call i64 @llvm.smin.i64(i64 %indvars.iv1212, i64 -1168)
  %232 = shl nsw i64 %polly.indvar859, 5
  %233 = add nsw i64 %smin1214, 1199
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1213 = add nsw i64 %indvars.iv1212, -32
  %exitcond1217.not = icmp eq i64 %polly.indvar_next860, 38
  br i1 %exitcond1217.not, label %polly.loop_header883, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %indvars.iv1208 = phi i64 [ %indvars.iv.next1209, %polly.loop_exit870 ], [ 0, %polly.loop_header856 ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %polly.loop_header856 ]
  %234 = mul nsw i64 %polly.indvar865, -32
  %smin1252 = call i64 @llvm.smin.i64(i64 %234, i64 -1168)
  %235 = add nsw i64 %smin1252, 1200
  %smin1210 = call i64 @llvm.smin.i64(i64 %indvars.iv1208, i64 -1168)
  %236 = shl nsw i64 %polly.indvar865, 5
  %237 = add nsw i64 %smin1210, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1209 = add nsw i64 %indvars.iv1208, -32
  %exitcond1216.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1216.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %polly.indvar871 = phi i64 [ 0, %polly.loop_header862 ], [ %polly.indvar_next872, %polly.loop_exit876 ]
  %238 = add nuw nsw i64 %polly.indvar871, %232
  %239 = trunc i64 %238 to i32
  %240 = mul nuw nsw i64 %238, 9600
  %min.iters.check = icmp eq i64 %235, 0
  br i1 %min.iters.check, label %polly.loop_header874, label %vector.ph1253

vector.ph1253:                                    ; preds = %polly.loop_header868
  %broadcast.splatinsert1260 = insertelement <4 x i64> poison, i64 %236, i32 0
  %broadcast.splat1261 = shufflevector <4 x i64> %broadcast.splatinsert1260, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1253
  %index1254 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1255, %vector.body1251 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1253 ], [ %vec.ind.next1259, %vector.body1251 ]
  %241 = add nuw nsw <4 x i64> %vec.ind1258, %broadcast.splat1261
  %242 = trunc <4 x i64> %241 to <4 x i32>
  %243 = mul <4 x i32> %broadcast.splat1263, %242
  %244 = add <4 x i32> %243, <i32 3, i32 3, i32 3, i32 3>
  %245 = urem <4 x i32> %244, <i32 1200, i32 1200, i32 1200, i32 1200>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %248 = extractelement <4 x i64> %241, i32 0
  %249 = shl i64 %248, 3
  %250 = add nuw nsw i64 %249, %240
  %251 = getelementptr i8, i8* %call, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %247, <4 x double>* %252, align 8, !alias.scope !99, !noalias !101
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %253 = icmp eq i64 %index.next1255, %235
  br i1 %253, label %polly.loop_exit876, label %vector.body1251, !llvm.loop !104

polly.loop_exit876:                               ; preds = %vector.body1251, %polly.loop_header874
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1215.not = icmp eq i64 %polly.indvar871, %233
  br i1 %exitcond1215.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_header868, %polly.loop_header874
  %polly.indvar877 = phi i64 [ %polly.indvar_next878, %polly.loop_header874 ], [ 0, %polly.loop_header868 ]
  %254 = add nuw nsw i64 %polly.indvar877, %236
  %255 = trunc i64 %254 to i32
  %256 = mul i32 %255, %239
  %257 = add i32 %256, 3
  %258 = urem i32 %257, 1200
  %p_conv31.i = sitofp i32 %258 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %259 = shl i64 %254, 3
  %260 = add nuw nsw i64 %259, %240
  %scevgep880 = getelementptr i8, i8* %call, i64 %260
  %scevgep880881 = bitcast i8* %scevgep880 to double*
  store double %p_div33.i, double* %scevgep880881, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1211.not = icmp eq i64 %polly.indvar877, %237
  br i1 %exitcond1211.not, label %polly.loop_exit876, label %polly.loop_header874, !llvm.loop !105

polly.loop_header883:                             ; preds = %polly.loop_exit864, %polly.loop_exit891
  %indvars.iv1202 = phi i64 [ %indvars.iv.next1203, %polly.loop_exit891 ], [ 0, %polly.loop_exit864 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_exit864 ]
  %smin1204 = call i64 @llvm.smin.i64(i64 %indvars.iv1202, i64 -1168)
  %261 = shl nsw i64 %polly.indvar886, 5
  %262 = add nsw i64 %smin1204, 1199
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next1203 = add nsw i64 %indvars.iv1202, -32
  %exitcond1207.not = icmp eq i64 %polly.indvar_next887, 38
  br i1 %exitcond1207.not, label %polly.loop_header909, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %indvars.iv1198 = phi i64 [ %indvars.iv.next1199, %polly.loop_exit897 ], [ 0, %polly.loop_header883 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_header883 ]
  %263 = mul nsw i64 %polly.indvar892, -32
  %smin1267 = call i64 @llvm.smin.i64(i64 %263, i64 -968)
  %264 = add nsw i64 %smin1267, 1000
  %smin1200 = call i64 @llvm.smin.i64(i64 %indvars.iv1198, i64 -968)
  %265 = shl nsw i64 %polly.indvar892, 5
  %266 = add nsw i64 %smin1200, 999
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1199 = add nsw i64 %indvars.iv1198, -32
  %exitcond1206.not = icmp eq i64 %polly.indvar_next893, 32
  br i1 %exitcond1206.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %polly.indvar898 = phi i64 [ 0, %polly.loop_header889 ], [ %polly.indvar_next899, %polly.loop_exit903 ]
  %267 = add nuw nsw i64 %polly.indvar898, %261
  %268 = trunc i64 %267 to i32
  %269 = mul nuw nsw i64 %267, 8000
  %min.iters.check1268 = icmp eq i64 %264, 0
  br i1 %min.iters.check1268, label %polly.loop_header901, label %vector.ph1269

vector.ph1269:                                    ; preds = %polly.loop_header895
  %broadcast.splatinsert1278 = insertelement <4 x i64> poison, i64 %265, i32 0
  %broadcast.splat1279 = shufflevector <4 x i64> %broadcast.splatinsert1278, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1280 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1281 = shufflevector <4 x i32> %broadcast.splatinsert1280, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %vector.ph1269
  %index1272 = phi i64 [ 0, %vector.ph1269 ], [ %index.next1273, %vector.body1266 ]
  %vec.ind1276 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1269 ], [ %vec.ind.next1277, %vector.body1266 ]
  %270 = add nuw nsw <4 x i64> %vec.ind1276, %broadcast.splat1279
  %271 = trunc <4 x i64> %270 to <4 x i32>
  %272 = mul <4 x i32> %broadcast.splat1281, %271
  %273 = add <4 x i32> %272, <i32 2, i32 2, i32 2, i32 2>
  %274 = urem <4 x i32> %273, <i32 1000, i32 1000, i32 1000, i32 1000>
  %275 = sitofp <4 x i32> %274 to <4 x double>
  %276 = fmul fast <4 x double> %275, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %277 = extractelement <4 x i64> %270, i32 0
  %278 = shl i64 %277, 3
  %279 = add nuw nsw i64 %278, %269
  %280 = getelementptr i8, i8* %call2, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %276, <4 x double>* %281, align 8, !alias.scope !103, !noalias !106
  %index.next1273 = add i64 %index1272, 4
  %vec.ind.next1277 = add <4 x i64> %vec.ind1276, <i64 4, i64 4, i64 4, i64 4>
  %282 = icmp eq i64 %index.next1273, %264
  br i1 %282, label %polly.loop_exit903, label %vector.body1266, !llvm.loop !107

polly.loop_exit903:                               ; preds = %vector.body1266, %polly.loop_header901
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond1205.not = icmp eq i64 %polly.indvar898, %262
  br i1 %exitcond1205.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_header895, %polly.loop_header901
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_header901 ], [ 0, %polly.loop_header895 ]
  %283 = add nuw nsw i64 %polly.indvar904, %265
  %284 = trunc i64 %283 to i32
  %285 = mul i32 %284, %268
  %286 = add i32 %285, 2
  %287 = urem i32 %286, 1000
  %p_conv10.i = sitofp i32 %287 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %288 = shl i64 %283, 3
  %289 = add nuw nsw i64 %288, %269
  %scevgep907 = getelementptr i8, i8* %call2, i64 %289
  %scevgep907908 = bitcast i8* %scevgep907 to double*
  store double %p_div12.i, double* %scevgep907908, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1201.not = icmp eq i64 %polly.indvar904, %266
  br i1 %exitcond1201.not, label %polly.loop_exit903, label %polly.loop_header901, !llvm.loop !108

polly.loop_header909:                             ; preds = %polly.loop_exit891, %polly.loop_exit917
  %indvars.iv1192 = phi i64 [ %indvars.iv.next1193, %polly.loop_exit917 ], [ 0, %polly.loop_exit891 ]
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %polly.loop_exit891 ]
  %smin1194 = call i64 @llvm.smin.i64(i64 %indvars.iv1192, i64 -1168)
  %290 = shl nsw i64 %polly.indvar912, 5
  %291 = add nsw i64 %smin1194, 1199
  br label %polly.loop_header915

polly.loop_exit917:                               ; preds = %polly.loop_exit923
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %indvars.iv.next1193 = add nsw i64 %indvars.iv1192, -32
  %exitcond1197.not = icmp eq i64 %polly.indvar_next913, 38
  br i1 %exitcond1197.not, label %init_array.exit, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_exit923, %polly.loop_header909
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %polly.loop_exit923 ], [ 0, %polly.loop_header909 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_header909 ]
  %292 = mul nsw i64 %polly.indvar918, -32
  %smin1285 = call i64 @llvm.smin.i64(i64 %292, i64 -968)
  %293 = add nsw i64 %smin1285, 1000
  %smin1190 = call i64 @llvm.smin.i64(i64 %indvars.iv1188, i64 -968)
  %294 = shl nsw i64 %polly.indvar918, 5
  %295 = add nsw i64 %smin1190, 999
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1189 = add nsw i64 %indvars.iv1188, -32
  %exitcond1196.not = icmp eq i64 %polly.indvar_next919, 32
  br i1 %exitcond1196.not, label %polly.loop_exit917, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %polly.indvar924 = phi i64 [ 0, %polly.loop_header915 ], [ %polly.indvar_next925, %polly.loop_exit929 ]
  %296 = add nuw nsw i64 %polly.indvar924, %290
  %297 = trunc i64 %296 to i32
  %298 = mul nuw nsw i64 %296, 8000
  %min.iters.check1286 = icmp eq i64 %293, 0
  br i1 %min.iters.check1286, label %polly.loop_header927, label %vector.ph1287

vector.ph1287:                                    ; preds = %polly.loop_header921
  %broadcast.splatinsert1296 = insertelement <4 x i64> poison, i64 %294, i32 0
  %broadcast.splat1297 = shufflevector <4 x i64> %broadcast.splatinsert1296, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1298 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1299 = shufflevector <4 x i32> %broadcast.splatinsert1298, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.body1284, %vector.ph1287
  %index1290 = phi i64 [ 0, %vector.ph1287 ], [ %index.next1291, %vector.body1284 ]
  %vec.ind1294 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1287 ], [ %vec.ind.next1295, %vector.body1284 ]
  %299 = add nuw nsw <4 x i64> %vec.ind1294, %broadcast.splat1297
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = mul <4 x i32> %broadcast.splat1299, %300
  %302 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  %303 = urem <4 x i32> %302, <i32 1200, i32 1200, i32 1200, i32 1200>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %306 = extractelement <4 x i64> %299, i32 0
  %307 = shl i64 %306, 3
  %308 = add nuw nsw i64 %307, %298
  %309 = getelementptr i8, i8* %call1, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %305, <4 x double>* %310, align 8, !alias.scope !102, !noalias !109
  %index.next1291 = add i64 %index1290, 4
  %vec.ind.next1295 = add <4 x i64> %vec.ind1294, <i64 4, i64 4, i64 4, i64 4>
  %311 = icmp eq i64 %index.next1291, %293
  br i1 %311, label %polly.loop_exit929, label %vector.body1284, !llvm.loop !110

polly.loop_exit929:                               ; preds = %vector.body1284, %polly.loop_header927
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1195.not = icmp eq i64 %polly.indvar924, %291
  br i1 %exitcond1195.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_header921, %polly.loop_header927
  %polly.indvar930 = phi i64 [ %polly.indvar_next931, %polly.loop_header927 ], [ 0, %polly.loop_header921 ]
  %312 = add nuw nsw i64 %polly.indvar930, %294
  %313 = trunc i64 %312 to i32
  %314 = mul i32 %313, %297
  %315 = add i32 %314, 1
  %316 = urem i32 %315, 1200
  %p_conv.i = sitofp i32 %316 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %317 = shl i64 %312, 3
  %318 = add nuw nsw i64 %317, %298
  %scevgep934 = getelementptr i8, i8* %call1, i64 %318
  %scevgep934935 = bitcast i8* %scevgep934 to double*
  store double %p_div.i, double* %scevgep934935, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1191.not = icmp eq i64 %polly.indvar930, %295
  br i1 %exitcond1191.not, label %polly.loop_exit929, label %polly.loop_header927, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 100}
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
