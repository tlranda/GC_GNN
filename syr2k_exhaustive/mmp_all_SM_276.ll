; ModuleID = 'syr2k_exhaustive/mmp_all_SM_276.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_276.c"
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
  %scevgep1211 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1210 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1209 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1208 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1208, %scevgep1211
  %bound1 = icmp ult i8* %scevgep1210, %scevgep1209
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
  br i1 %exitcond18.not.i, label %vector.ph1215, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1215:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1222 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1223 = shufflevector <4 x i64> %broadcast.splatinsert1222, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %vector.ph1215
  %index1216 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1217, %vector.body1214 ]
  %vec.ind1220 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1215 ], [ %vec.ind.next1221, %vector.body1214 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1220, %broadcast.splat1223
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv7.i, i64 %index1216
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1221 = add <4 x i64> %vec.ind1220, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1217, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1214, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1214
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1215, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit925
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1278 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1278, label %for.body3.i46.preheader1427, label %vector.ph1279

vector.ph1279:                                    ; preds = %for.body3.i46.preheader
  %n.vec1281 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1277 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %index1282
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1283 = add i64 %index1282, 4
  %46 = icmp eq i64 %index.next1283, %n.vec1281
  br i1 %46, label %middle.block1275, label %vector.body1277, !llvm.loop !18

middle.block1275:                                 ; preds = %vector.body1277
  %cmp.n1285 = icmp eq i64 %indvars.iv21.i, %n.vec1281
  br i1 %cmp.n1285, label %for.inc6.i, label %for.body3.i46.preheader1427

for.body3.i46.preheader1427:                      ; preds = %for.body3.i46.preheader, %middle.block1275
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1281, %middle.block1275 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1427, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1427 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1275, %for.cond1.preheader.i45
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
  %min.iters.check1325 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1325, label %for.body3.i60.preheader1425, label %vector.ph1326

vector.ph1326:                                    ; preds = %for.body3.i60.preheader
  %n.vec1328 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1324 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %index1329
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1333, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1330 = add i64 %index1329, 4
  %57 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %57, label %middle.block1322, label %vector.body1324, !llvm.loop !64

middle.block1322:                                 ; preds = %vector.body1324
  %cmp.n1332 = icmp eq i64 %indvars.iv21.i52, %n.vec1328
  br i1 %cmp.n1332, label %for.inc6.i63, label %for.body3.i60.preheader1425

for.body3.i60.preheader1425:                      ; preds = %for.body3.i60.preheader, %middle.block1322
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1328, %middle.block1322 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1425, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1425 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1322, %for.cond1.preheader.i54
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
  %min.iters.check1375 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1375, label %for.body3.i99.preheader1423, label %vector.ph1376

vector.ph1376:                                    ; preds = %for.body3.i99.preheader
  %n.vec1378 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1376
  %index1379 = phi i64 [ 0, %vector.ph1376 ], [ %index.next1380, %vector.body1374 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %index1379
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1383, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1380 = add i64 %index1379, 4
  %68 = icmp eq i64 %index.next1380, %n.vec1378
  br i1 %68, label %middle.block1372, label %vector.body1374, !llvm.loop !66

middle.block1372:                                 ; preds = %vector.body1374
  %cmp.n1382 = icmp eq i64 %indvars.iv21.i91, %n.vec1378
  br i1 %cmp.n1382, label %for.inc6.i102, label %for.body3.i99.preheader1423

for.body3.i99.preheader1423:                      ; preds = %for.body3.i99.preheader, %middle.block1372
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1378, %middle.block1372 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1423, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1423 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1372, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall136 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1387 = phi i64 [ %indvar.next1388, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1387, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1389 = icmp ult i64 %88, 4
  br i1 %min.iters.check1389, label %polly.loop_header192.preheader, label %vector.ph1390

vector.ph1390:                                    ; preds = %polly.loop_header
  %n.vec1392 = and i64 %88, -4
  br label %vector.body1386

vector.body1386:                                  ; preds = %vector.body1386, %vector.ph1390
  %index1393 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1394, %vector.body1386 ]
  %90 = shl nuw nsw i64 %index1393, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1397, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1394 = add i64 %index1393, 4
  %95 = icmp eq i64 %index.next1394, %n.vec1392
  br i1 %95, label %middle.block1384, label %vector.body1386, !llvm.loop !79

middle.block1384:                                 ; preds = %vector.body1386
  %cmp.n1396 = icmp eq i64 %88, %n.vec1392
  br i1 %cmp.n1396, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1384
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1392, %middle.block1384 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1384
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1388 = add i64 %indvar1387, 1
  br i1 %exitcond1110.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1109.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1109.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 20
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next204, 50
  br i1 %exitcond1108.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %117, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = shl nuw nsw i64 %polly.indvar209, 3
  %99 = shl nuw nsw i64 %polly.indvar209, 3
  %100 = and i64 %99, 9223372036854775792
  %101 = sub nsw i64 %98, %100
  %102 = mul nsw i64 %polly.indvar209, -8
  %103 = add i64 %102, %100
  %104 = lshr i64 %polly.indvar209, 1
  %105 = shl nuw nsw i64 %104, 4
  %106 = sub nsw i64 %indvars.iv1094, %105
  %107 = add i64 %indvars.iv1098, %105
  %108 = shl nsw i64 %polly.indvar209, 3
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %109 = mul nsw i64 %polly.indvar209, -8
  %polly.access.mul.call1247.us = mul nsw i64 %polly.indvar209, 8000
  %110 = or i64 %108, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %108, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %108, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %112, 1000
  %113 = or i64 %108, 4
  %polly.access.mul.call1247.us.4 = mul nuw nsw i64 %113, 1000
  %114 = or i64 %108, 5
  %polly.access.mul.call1247.us.5 = mul nuw nsw i64 %114, 1000
  %115 = or i64 %108, 6
  %polly.access.mul.call1247.us.6 = mul nuw nsw i64 %115, 1000
  %116 = or i64 %108, 7
  %polly.access.mul.call1247.us.7 = mul nuw nsw i64 %116, 1000
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %117 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 8
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -8
  %exitcond1107.not = icmp eq i64 %117, 150
  br i1 %exitcond1107.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %118 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next216, 20
  br i1 %exitcond1090.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %119 = add nuw nsw i64 %polly.indvar221, %108
  %polly.access.mul.call2225 = mul nuw nsw i64 %119, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %118, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit265, %polly.loop_exit214
  %indvar1401 = phi i64 [ %indvar.next1402, %polly.loop_exit265 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit265 ], [ %107, %polly.loop_exit214 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit265 ], [ %106, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit265 ], [ %104, %polly.loop_exit214 ]
  %120 = mul nsw i64 %indvar1401, -16
  %121 = add i64 %101, %120
  %smax1403 = call i64 @llvm.smax.i64(i64 %121, i64 0)
  %122 = shl nuw nsw i64 %indvar1401, 4
  %123 = add i64 %103, %122
  %124 = add i64 %smax1403, %123
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1096, i64 0)
  %125 = add i64 %smax, %indvars.iv1100
  %126 = shl nuw nsw i64 %polly.indvar231, 1
  %.not.not = icmp ugt i64 %126, %polly.indvar209
  %127 = shl nsw i64 %polly.indvar231, 4
  %128 = add nsw i64 %127, %109
  %129 = icmp sgt i64 %128, 0
  %130 = select i1 %129, i64 %128, i64 0
  %131 = add nsw i64 %128, 15
  %polly.loop_guard.not = icmp sgt i64 %130, %131
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit252.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit252.us ], [ 0, %polly.loop_header228 ]
  %132 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  %polly.access.add.call1248.us = add nuw nsw i64 %132, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %132, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %132, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %132, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1248.us.4 = add nuw nsw i64 %132, %polly.access.mul.call1247.us.4
  %polly.access.call1249.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.4
  %polly.access.call1249.load.us.4 = load double, double* %polly.access.call1249.us.4, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1249.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1248.us.5 = add nuw nsw i64 %132, %polly.access.mul.call1247.us.5
  %polly.access.call1249.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.5
  %polly.access.call1249.load.us.5 = load double, double* %polly.access.call1249.us.5, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1249.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1248.us.6 = add nuw nsw i64 %132, %polly.access.mul.call1247.us.6
  %polly.access.call1249.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.6
  %polly.access.call1249.load.us.6 = load double, double* %polly.access.call1249.us.6, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1249.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1248.us.7 = add nuw nsw i64 %132, %polly.access.mul.call1247.us.7
  %polly.access.call1249.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.7
  %polly.access.call1249.load.us.7 = load double, double* %polly.access.call1249.us.7, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1249.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit252.us, label %polly.loop_header250.us

polly.loop_header250.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header250.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %130, %polly.loop_header234.us ]
  %133 = add nuw nsw i64 %polly.indvar253.us, %108
  %polly.access.mul.call1257.us = mul nsw i64 %133, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %132, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %131
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.loop_exit252.us

polly.loop_exit252.us:                            ; preds = %polly.loop_header250.us, %polly.loop_header234.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next238.us, 20
  br i1 %exitcond1093.not, label %polly.loop_header263.preheader, label %polly.loop_header234.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header263.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1097 = add i64 %indvars.iv1096, -16
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 16
  %exitcond1106.not = icmp eq i64 %polly.indvar_next232, 75
  %indvar.next1402 = add i64 %indvar1401, 1
  br i1 %exitcond1106.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit252
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit252 ], [ 0, %polly.loop_header228.split ]
  %134 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next238, 20
  br i1 %exitcond1091.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.loop_exit252, %polly.loop_exit252.us, %polly.loop_header228.split
  %135 = sub nsw i64 %108, %127
  %136 = icmp sgt i64 %135, 0
  %137 = select i1 %136, i64 %135, i64 0
  %polly.loop_guard273 = icmp slt i64 %137, 16
  br i1 %polly.loop_guard273, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1285.us = mul nuw nsw i64 %polly.indvar266.us, 1200
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header263.us, %polly.loop_exit280.us
  %indvar1404 = phi i64 [ 0, %polly.loop_header263.us ], [ %indvar.next1405, %polly.loop_exit280.us ]
  %indvars.iv1102 = phi i64 [ %125, %polly.loop_header263.us ], [ %indvars.iv.next1103, %polly.loop_exit280.us ]
  %polly.indvar274.us = phi i64 [ %137, %polly.loop_header263.us ], [ %polly.indvar_next275.us, %polly.loop_exit280.us ]
  %138 = add i64 %124, %indvar1404
  %smin1406 = call i64 @llvm.smin.i64(i64 %138, i64 7)
  %139 = add nsw i64 %smin1406, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1102, i64 7)
  %140 = add nsw i64 %polly.indvar274.us, %128
  %polly.loop_guard281.us1197 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard281.us1197, label %polly.loop_header278.preheader.us, label %polly.loop_exit280.us

polly.loop_header278.us:                          ; preds = %polly.loop_header278.us.preheader, %polly.loop_header278.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header278.us ], [ %polly.indvar282.us.ph, %polly.loop_header278.us.preheader ]
  %141 = add nuw nsw i64 %polly.indvar282.us, %108
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar282.us, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_300.us, %_p_scalar_296.us
  %142 = shl i64 %141, 3
  %143 = add i64 %142, %145
  %scevgep301.us = getelementptr i8, i8* %call, i64 %143
  %scevgep301302.us = bitcast i8* %scevgep301.us to double*
  %_p_scalar_303.us = load double, double* %scevgep301302.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_303.us
  store double %p_add42.i118.us, double* %scevgep301302.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar282.us, %smin
  br i1 %exitcond1104.not, label %polly.loop_exit280.us, label %polly.loop_header278.us, !llvm.loop !84

polly.loop_exit280.us:                            ; preds = %polly.loop_header278.us, %middle.block1398, %polly.loop_header270.us
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %polly.loop_cond276.us = icmp ult i64 %polly.indvar274.us, 15
  %indvars.iv.next1103 = add i64 %indvars.iv1102, 1
  %indvar.next1405 = add i64 %indvar1404, 1
  br i1 %polly.loop_cond276.us, label %polly.loop_header270.us, label %polly.loop_exit272.loopexit.us

polly.loop_header278.preheader.us:                ; preds = %polly.loop_header270.us
  %144 = add nuw nsw i64 %polly.indvar274.us, %127
  %polly.access.add.Packed_MemRef_call2290.us = add nsw i64 %140, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %145 = mul i64 %144, 9600
  %min.iters.check1407 = icmp ult i64 %139, 4
  br i1 %min.iters.check1407, label %polly.loop_header278.us.preheader, label %vector.ph1408

vector.ph1408:                                    ; preds = %polly.loop_header278.preheader.us
  %n.vec1410 = and i64 %139, -4
  %broadcast.splatinsert1416 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1417 = shufflevector <4 x double> %broadcast.splatinsert1416, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1419 = insertelement <4 x double> poison, double %_p_scalar_300.us, i32 0
  %broadcast.splat1420 = shufflevector <4 x double> %broadcast.splatinsert1419, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1400

vector.body1400:                                  ; preds = %vector.body1400, %vector.ph1408
  %index1411 = phi i64 [ 0, %vector.ph1408 ], [ %index.next1412, %vector.body1400 ]
  %146 = add nuw nsw i64 %index1411, %108
  %147 = add nuw nsw i64 %index1411, %polly.access.mul.Packed_MemRef_call1285.us
  %148 = getelementptr double, double* %Packed_MemRef_call1, i64 %147
  %149 = bitcast double* %148 to <4 x double>*
  %wide.load1415 = load <4 x double>, <4 x double>* %149, align 8
  %150 = fmul fast <4 x double> %broadcast.splat1417, %wide.load1415
  %151 = getelementptr double, double* %Packed_MemRef_call2, i64 %147
  %152 = bitcast double* %151 to <4 x double>*
  %wide.load1418 = load <4 x double>, <4 x double>* %152, align 8
  %153 = fmul fast <4 x double> %broadcast.splat1420, %wide.load1418
  %154 = shl i64 %146, 3
  %155 = add i64 %154, %145
  %156 = getelementptr i8, i8* %call, i64 %155
  %157 = bitcast i8* %156 to <4 x double>*
  %wide.load1421 = load <4 x double>, <4 x double>* %157, align 8, !alias.scope !72, !noalias !74
  %158 = fadd fast <4 x double> %153, %150
  %159 = fmul fast <4 x double> %158, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %160 = fadd fast <4 x double> %159, %wide.load1421
  %161 = bitcast i8* %156 to <4 x double>*
  store <4 x double> %160, <4 x double>* %161, align 8, !alias.scope !72, !noalias !74
  %index.next1412 = add i64 %index1411, 4
  %162 = icmp eq i64 %index.next1412, %n.vec1410
  br i1 %162, label %middle.block1398, label %vector.body1400, !llvm.loop !85

middle.block1398:                                 ; preds = %vector.body1400
  %cmp.n1414 = icmp eq i64 %139, %n.vec1410
  br i1 %cmp.n1414, label %polly.loop_exit280.us, label %polly.loop_header278.us.preheader

polly.loop_header278.us.preheader:                ; preds = %polly.loop_header278.preheader.us, %middle.block1398
  %polly.indvar282.us.ph = phi i64 [ 0, %polly.loop_header278.preheader.us ], [ %n.vec1410, %middle.block1398 ]
  br label %polly.loop_header278.us

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_exit280.us
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next267.us, 20
  br i1 %exitcond1105.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.loop_header250:                             ; preds = %polly.loop_header234, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %130, %polly.loop_header234 ]
  %163 = add nuw nsw i64 %polly.indvar253, %108
  %polly.access.mul.call1257 = mul nsw i64 %163, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %134, %polly.access.mul.call1257
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %131
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_exit252

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall310 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1337 = phi i64 [ %indvar.next1338, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %164 = add i64 %indvar1337, 1
  %165 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %165
  %min.iters.check1339 = icmp ult i64 %164, 4
  br i1 %min.iters.check1339, label %polly.loop_header400.preheader, label %vector.ph1340

vector.ph1340:                                    ; preds = %polly.loop_header394
  %n.vec1342 = and i64 %164, -4
  br label %vector.body1336

vector.body1336:                                  ; preds = %vector.body1336, %vector.ph1340
  %index1343 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1344, %vector.body1336 ]
  %166 = shl nuw nsw i64 %index1343, 3
  %167 = getelementptr i8, i8* %scevgep406, i64 %166
  %168 = bitcast i8* %167 to <4 x double>*
  %wide.load1347 = load <4 x double>, <4 x double>* %168, align 8, !alias.scope !86, !noalias !88
  %169 = fmul fast <4 x double> %wide.load1347, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %170 = bitcast i8* %167 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !86, !noalias !88
  %index.next1344 = add i64 %index1343, 4
  %171 = icmp eq i64 %index.next1344, %n.vec1342
  br i1 %171, label %middle.block1334, label %vector.body1336, !llvm.loop !93

middle.block1334:                                 ; preds = %vector.body1336
  %cmp.n1346 = icmp eq i64 %164, %n.vec1342
  br i1 %cmp.n1346, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1334
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1342, %middle.block1334 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1334
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1338 = add i64 %indvar1337, 1
  br i1 %exitcond1136.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %172 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %172
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1135.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !94

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %173 = mul nuw nsw i64 %polly.indvar413, 20
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit441
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next414, 50
  br i1 %exitcond1134.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit441, %polly.loop_header410
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit441 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %193, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %174 = shl nuw nsw i64 %polly.indvar419, 3
  %175 = shl nuw nsw i64 %polly.indvar419, 3
  %176 = and i64 %175, 9223372036854775792
  %177 = sub nsw i64 %174, %176
  %178 = mul nsw i64 %polly.indvar419, -8
  %179 = add i64 %178, %176
  %180 = lshr i64 %polly.indvar419, 1
  %181 = shl nuw nsw i64 %180, 4
  %182 = sub nsw i64 %indvars.iv1118, %181
  %183 = add i64 %indvars.iv1123, %181
  %184 = shl nsw i64 %polly.indvar419, 3
  br label %polly.loop_header422

polly.loop_exit424:                               ; preds = %polly.loop_exit430
  %185 = mul nsw i64 %polly.indvar419, -8
  %polly.access.mul.call1462.us = mul nsw i64 %polly.indvar419, 8000
  %186 = or i64 %184, 1
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %186, 1000
  %187 = or i64 %184, 2
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %187, 1000
  %188 = or i64 %184, 3
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %188, 1000
  %189 = or i64 %184, 4
  %polly.access.mul.call1462.us.4 = mul nuw nsw i64 %189, 1000
  %190 = or i64 %184, 5
  %polly.access.mul.call1462.us.5 = mul nuw nsw i64 %190, 1000
  %191 = or i64 %184, 6
  %polly.access.mul.call1462.us.6 = mul nuw nsw i64 %191, 1000
  %192 = or i64 %184, 7
  %polly.access.mul.call1462.us.7 = mul nuw nsw i64 %192, 1000
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit482
  %193 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -8
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 8
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, -8
  %exitcond1133.not = icmp eq i64 %193, 150
  br i1 %exitcond1133.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_exit430, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_exit430 ]
  %194 = add nuw nsw i64 %polly.indvar425, %173
  %polly.access.mul.Packed_MemRef_call2311 = mul nuw nsw i64 %polly.indvar425, 1200
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_header428
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next426, 20
  br i1 %exitcond1114.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %195 = add nuw nsw i64 %polly.indvar431, %184
  %polly.access.mul.call2435 = mul nuw nsw i64 %195, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %194, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2311 = add nuw nsw i64 %polly.indvar431, %polly.access.mul.Packed_MemRef_call2311
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1111
  br i1 %exitcond1113.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header439:                             ; preds = %polly.loop_exit482, %polly.loop_exit424
  %indvar1351 = phi i64 [ %indvar.next1352, %polly.loop_exit482 ], [ 0, %polly.loop_exit424 ]
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %polly.loop_exit482 ], [ %183, %polly.loop_exit424 ]
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit482 ], [ %182, %polly.loop_exit424 ]
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit482 ], [ %180, %polly.loop_exit424 ]
  %196 = mul nsw i64 %indvar1351, -16
  %197 = add i64 %177, %196
  %smax1353 = call i64 @llvm.smax.i64(i64 %197, i64 0)
  %198 = shl nuw nsw i64 %indvar1351, 4
  %199 = add i64 %179, %198
  %200 = add i64 %smax1353, %199
  %smax1122 = call i64 @llvm.smax.i64(i64 %indvars.iv1120, i64 0)
  %201 = add i64 %smax1122, %indvars.iv1125
  %202 = shl nuw nsw i64 %polly.indvar442, 1
  %.not.not944 = icmp ugt i64 %202, %polly.indvar419
  %203 = shl nsw i64 %polly.indvar442, 4
  %204 = add nsw i64 %203, %185
  %205 = icmp sgt i64 %204, 0
  %206 = select i1 %205, i64 %204, i64 0
  %207 = add nsw i64 %204, 15
  %polly.loop_guard469.not = icmp sgt i64 %206, %207
  br i1 %.not.not944, label %polly.loop_header445.us, label %polly.loop_header439.split

polly.loop_header445.us:                          ; preds = %polly.loop_header439, %polly.loop_exit468.us
  %polly.indvar448.us = phi i64 [ %polly.indvar_next449.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header439 ]
  %208 = add nuw nsw i64 %polly.indvar448.us, %173
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar448.us, 1200
  %polly.access.add.call1463.us = add nuw nsw i64 %208, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.mul.Packed_MemRef_call1309.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %208, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 1
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1309.us.1, align 8
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %208, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 2
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1309.us.2, align 8
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %208, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 3
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1309.us.3, align 8
  %polly.access.add.call1463.us.4 = add nuw nsw i64 %208, %polly.access.mul.call1462.us.4
  %polly.access.call1464.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.4
  %polly.access.call1464.load.us.4 = load double, double* %polly.access.call1464.us.4, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 4
  %polly.access.Packed_MemRef_call1309.us.4 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.4
  store double %polly.access.call1464.load.us.4, double* %polly.access.Packed_MemRef_call1309.us.4, align 8
  %polly.access.add.call1463.us.5 = add nuw nsw i64 %208, %polly.access.mul.call1462.us.5
  %polly.access.call1464.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.5
  %polly.access.call1464.load.us.5 = load double, double* %polly.access.call1464.us.5, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 5
  %polly.access.Packed_MemRef_call1309.us.5 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.5
  store double %polly.access.call1464.load.us.5, double* %polly.access.Packed_MemRef_call1309.us.5, align 8
  %polly.access.add.call1463.us.6 = add nuw nsw i64 %208, %polly.access.mul.call1462.us.6
  %polly.access.call1464.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.6
  %polly.access.call1464.load.us.6 = load double, double* %polly.access.call1464.us.6, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 6
  %polly.access.Packed_MemRef_call1309.us.6 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.6
  store double %polly.access.call1464.load.us.6, double* %polly.access.Packed_MemRef_call1309.us.6, align 8
  %polly.access.add.call1463.us.7 = add nuw nsw i64 %208, %polly.access.mul.call1462.us.7
  %polly.access.call1464.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.7
  %polly.access.call1464.load.us.7 = load double, double* %polly.access.call1464.us.7, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 7
  %polly.access.Packed_MemRef_call1309.us.7 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.7
  store double %polly.access.call1464.load.us.7, double* %polly.access.Packed_MemRef_call1309.us.7, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header466.us:                          ; preds = %polly.loop_header445.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %206, %polly.loop_header445.us ]
  %209 = add nuw nsw i64 %polly.indvar470.us, %184
  %polly.access.mul.call1474.us = mul nsw i64 %209, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %208, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309479.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1309479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %207
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_header445.us
  %polly.indvar_next449.us = add nuw nsw i64 %polly.indvar448.us, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next449.us, 20
  br i1 %exitcond1117.not, label %polly.loop_header480.preheader, label %polly.loop_header445.us

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_exit482:                               ; preds = %polly.loop_exit489.loopexit.us, %polly.loop_header480.preheader
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %indvars.iv.next1121 = add i64 %indvars.iv1120, -16
  %indvars.iv.next1126 = add i64 %indvars.iv1125, 16
  %exitcond1132.not = icmp eq i64 %polly.indvar_next443, 75
  %indvar.next1352 = add i64 %indvar1351, 1
  br i1 %exitcond1132.not, label %polly.loop_exit441, label %polly.loop_header439

polly.loop_header445:                             ; preds = %polly.loop_header439.split, %polly.loop_exit468
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit468 ], [ 0, %polly.loop_header439.split ]
  %210 = add nuw nsw i64 %polly.indvar448, %173
  %polly.access.mul.Packed_MemRef_call1309477 = mul nuw nsw i64 %polly.indvar448, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next449, 20
  br i1 %exitcond1115.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header439.split
  %211 = sub nsw i64 %184, %203
  %212 = icmp sgt i64 %211, 0
  %213 = select i1 %212, i64 %211, i64 0
  %polly.loop_guard490 = icmp slt i64 %213, 16
  br i1 %polly.loop_guard490, label %polly.loop_header480.us, label %polly.loop_exit482

polly.loop_header480.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit489.loopexit.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_exit489.loopexit.us ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1309502.us = mul nuw nsw i64 %polly.indvar483.us, 1200
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header480.us, %polly.loop_exit497.us
  %indvar1354 = phi i64 [ 0, %polly.loop_header480.us ], [ %indvar.next1355, %polly.loop_exit497.us ]
  %indvars.iv1127 = phi i64 [ %201, %polly.loop_header480.us ], [ %indvars.iv.next1128, %polly.loop_exit497.us ]
  %polly.indvar491.us = phi i64 [ %213, %polly.loop_header480.us ], [ %polly.indvar_next492.us, %polly.loop_exit497.us ]
  %214 = add i64 %200, %indvar1354
  %smin1356 = call i64 @llvm.smin.i64(i64 %214, i64 7)
  %215 = add nsw i64 %smin1356, 1
  %smin1129 = call i64 @llvm.smin.i64(i64 %indvars.iv1127, i64 7)
  %216 = add nsw i64 %polly.indvar491.us, %204
  %polly.loop_guard498.us1198 = icmp sgt i64 %216, -1
  br i1 %polly.loop_guard498.us1198, label %polly.loop_header495.preheader.us, label %polly.loop_exit497.us

polly.loop_header495.us:                          ; preds = %polly.loop_header495.us.preheader, %polly.loop_header495.us
  %polly.indvar499.us = phi i64 [ %polly.indvar_next500.us, %polly.loop_header495.us ], [ %polly.indvar499.us.ph, %polly.loop_header495.us.preheader ]
  %217 = add nuw nsw i64 %polly.indvar499.us, %184
  %polly.access.add.Packed_MemRef_call1309503.us = add nuw nsw i64 %polly.indvar499.us, %polly.access.mul.Packed_MemRef_call1309502.us
  %polly.access.Packed_MemRef_call1309504.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1309504.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %polly.access.Packed_MemRef_call2311512.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2311512.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_517.us, %_p_scalar_513.us
  %218 = shl i64 %217, 3
  %219 = add i64 %218, %221
  %scevgep518.us = getelementptr i8, i8* %call, i64 %219
  %scevgep518519.us = bitcast i8* %scevgep518.us to double*
  %_p_scalar_520.us = load double, double* %scevgep518519.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_520.us
  store double %p_add42.i79.us, double* %scevgep518519.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next500.us = add nuw nsw i64 %polly.indvar499.us, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar499.us, %smin1129
  br i1 %exitcond1130.not, label %polly.loop_exit497.us, label %polly.loop_header495.us, !llvm.loop !97

polly.loop_exit497.us:                            ; preds = %polly.loop_header495.us, %middle.block1348, %polly.loop_header487.us
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %polly.loop_cond493.us = icmp ult i64 %polly.indvar491.us, 15
  %indvars.iv.next1128 = add i64 %indvars.iv1127, 1
  %indvar.next1355 = add i64 %indvar1354, 1
  br i1 %polly.loop_cond493.us, label %polly.loop_header487.us, label %polly.loop_exit489.loopexit.us

polly.loop_header495.preheader.us:                ; preds = %polly.loop_header487.us
  %220 = add nuw nsw i64 %polly.indvar491.us, %203
  %polly.access.add.Packed_MemRef_call2311507.us = add nsw i64 %216, %polly.access.mul.Packed_MemRef_call1309502.us
  %polly.access.Packed_MemRef_call2311508.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.us
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call2311508.us, align 8
  %polly.access.Packed_MemRef_call1309516.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.us
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call1309516.us, align 8
  %221 = mul i64 %220, 9600
  %min.iters.check1357 = icmp ult i64 %215, 4
  br i1 %min.iters.check1357, label %polly.loop_header495.us.preheader, label %vector.ph1358

vector.ph1358:                                    ; preds = %polly.loop_header495.preheader.us
  %n.vec1360 = and i64 %215, -4
  %broadcast.splatinsert1366 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1367 = shufflevector <4 x double> %broadcast.splatinsert1366, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1369 = insertelement <4 x double> poison, double %_p_scalar_517.us, i32 0
  %broadcast.splat1370 = shufflevector <4 x double> %broadcast.splatinsert1369, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1350

vector.body1350:                                  ; preds = %vector.body1350, %vector.ph1358
  %index1361 = phi i64 [ 0, %vector.ph1358 ], [ %index.next1362, %vector.body1350 ]
  %222 = add nuw nsw i64 %index1361, %184
  %223 = add nuw nsw i64 %index1361, %polly.access.mul.Packed_MemRef_call1309502.us
  %224 = getelementptr double, double* %Packed_MemRef_call1309, i64 %223
  %225 = bitcast double* %224 to <4 x double>*
  %wide.load1365 = load <4 x double>, <4 x double>* %225, align 8
  %226 = fmul fast <4 x double> %broadcast.splat1367, %wide.load1365
  %227 = getelementptr double, double* %Packed_MemRef_call2311, i64 %223
  %228 = bitcast double* %227 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %228, align 8
  %229 = fmul fast <4 x double> %broadcast.splat1370, %wide.load1368
  %230 = shl i64 %222, 3
  %231 = add i64 %230, %221
  %232 = getelementptr i8, i8* %call, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %233, align 8, !alias.scope !86, !noalias !88
  %234 = fadd fast <4 x double> %229, %226
  %235 = fmul fast <4 x double> %234, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %236 = fadd fast <4 x double> %235, %wide.load1371
  %237 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %236, <4 x double>* %237, align 8, !alias.scope !86, !noalias !88
  %index.next1362 = add i64 %index1361, 4
  %238 = icmp eq i64 %index.next1362, %n.vec1360
  br i1 %238, label %middle.block1348, label %vector.body1350, !llvm.loop !98

middle.block1348:                                 ; preds = %vector.body1350
  %cmp.n1364 = icmp eq i64 %215, %n.vec1360
  br i1 %cmp.n1364, label %polly.loop_exit497.us, label %polly.loop_header495.us.preheader

polly.loop_header495.us.preheader:                ; preds = %polly.loop_header495.preheader.us, %middle.block1348
  %polly.indvar499.us.ph = phi i64 [ 0, %polly.loop_header495.preheader.us ], [ %n.vec1360, %middle.block1348 ]
  br label %polly.loop_header495.us

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_exit497.us
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar_next484.us, 20
  br i1 %exitcond1131.not, label %polly.loop_exit482, label %polly.loop_header480.us

polly.loop_header466:                             ; preds = %polly.loop_header445, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %206, %polly.loop_header445 ]
  %239 = add nuw nsw i64 %polly.indvar470, %184
  %polly.access.mul.call1474 = mul nsw i64 %239, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %210, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1309477
  %polly.access.Packed_MemRef_call1309479 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1309479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %207
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall527 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %240 = add i64 %indvar, 1
  %241 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %241
  %min.iters.check1289 = icmp ult i64 %240, 4
  br i1 %min.iters.check1289, label %polly.loop_header617.preheader, label %vector.ph1290

vector.ph1290:                                    ; preds = %polly.loop_header611
  %n.vec1292 = and i64 %240, -4
  br label %vector.body1288

vector.body1288:                                  ; preds = %vector.body1288, %vector.ph1290
  %index1293 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1294, %vector.body1288 ]
  %242 = shl nuw nsw i64 %index1293, 3
  %243 = getelementptr i8, i8* %scevgep623, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  %wide.load1297 = load <4 x double>, <4 x double>* %244, align 8, !alias.scope !99, !noalias !101
  %245 = fmul fast <4 x double> %wide.load1297, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %246 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %245, <4 x double>* %246, align 8, !alias.scope !99, !noalias !101
  %index.next1294 = add i64 %index1293, 4
  %247 = icmp eq i64 %index.next1294, %n.vec1292
  br i1 %247, label %middle.block1286, label %vector.body1288, !llvm.loop !106

middle.block1286:                                 ; preds = %vector.body1288
  %cmp.n1296 = icmp eq i64 %240, %n.vec1292
  br i1 %cmp.n1296, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1286
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1292, %middle.block1286 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1286
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1162.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %248 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %248
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1161.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %249 = mul nuw nsw i64 %polly.indvar630, 20
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar_next631, 50
  br i1 %exitcond1160.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %269, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %250 = shl nuw nsw i64 %polly.indvar636, 3
  %251 = shl nuw nsw i64 %polly.indvar636, 3
  %252 = and i64 %251, 9223372036854775792
  %253 = sub nsw i64 %250, %252
  %254 = mul nsw i64 %polly.indvar636, -8
  %255 = add i64 %254, %252
  %256 = lshr i64 %polly.indvar636, 1
  %257 = shl nuw nsw i64 %256, 4
  %258 = sub nsw i64 %indvars.iv1144, %257
  %259 = add i64 %indvars.iv1149, %257
  %260 = shl nsw i64 %polly.indvar636, 3
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %261 = mul nsw i64 %polly.indvar636, -8
  %polly.access.mul.call1679.us = mul nsw i64 %polly.indvar636, 8000
  %262 = or i64 %260, 1
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %262, 1000
  %263 = or i64 %260, 2
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %263, 1000
  %264 = or i64 %260, 3
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %264, 1000
  %265 = or i64 %260, 4
  %polly.access.mul.call1679.us.4 = mul nuw nsw i64 %265, 1000
  %266 = or i64 %260, 5
  %polly.access.mul.call1679.us.5 = mul nuw nsw i64 %266, 1000
  %267 = or i64 %260, 6
  %polly.access.mul.call1679.us.6 = mul nuw nsw i64 %267, 1000
  %268 = or i64 %260, 7
  %polly.access.mul.call1679.us.7 = mul nuw nsw i64 %268, 1000
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit699
  %269 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, -8
  %indvars.iv.next1145 = add nuw nsw i64 %indvars.iv1144, 8
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, -8
  %exitcond1159.not = icmp eq i64 %269, 150
  br i1 %exitcond1159.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %270 = add nuw nsw i64 %polly.indvar642, %249
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next643, 20
  br i1 %exitcond1140.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %271 = add nuw nsw i64 %polly.indvar648, %260
  %polly.access.mul.call2652 = mul nuw nsw i64 %271, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %270, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1137
  br i1 %exitcond1139.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit699, %polly.loop_exit641
  %indvar1301 = phi i64 [ %indvar.next1302, %polly.loop_exit699 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit699 ], [ %259, %polly.loop_exit641 ]
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit699 ], [ %258, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit699 ], [ %256, %polly.loop_exit641 ]
  %272 = mul nsw i64 %indvar1301, -16
  %273 = add i64 %253, %272
  %smax1303 = call i64 @llvm.smax.i64(i64 %273, i64 0)
  %274 = shl nuw nsw i64 %indvar1301, 4
  %275 = add i64 %255, %274
  %276 = add i64 %smax1303, %275
  %smax1148 = call i64 @llvm.smax.i64(i64 %indvars.iv1146, i64 0)
  %277 = add i64 %smax1148, %indvars.iv1151
  %278 = shl nuw nsw i64 %polly.indvar659, 1
  %.not.not945 = icmp ugt i64 %278, %polly.indvar636
  %279 = shl nsw i64 %polly.indvar659, 4
  %280 = add nsw i64 %279, %261
  %281 = icmp sgt i64 %280, 0
  %282 = select i1 %281, i64 %280, i64 0
  %283 = add nsw i64 %280, 15
  %polly.loop_guard686.not = icmp sgt i64 %282, %283
  br i1 %.not.not945, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit685.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit685.us ], [ 0, %polly.loop_header656 ]
  %284 = add nuw nsw i64 %polly.indvar665.us, %249
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  %polly.access.add.call1680.us = add nuw nsw i64 %284, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.mul.Packed_MemRef_call1526.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %284, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 1
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %284, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 2
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %284, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 3
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  %polly.access.add.call1680.us.4 = add nuw nsw i64 %284, %polly.access.mul.call1679.us.4
  %polly.access.call1681.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.4
  %polly.access.call1681.load.us.4 = load double, double* %polly.access.call1681.us.4, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 4
  %polly.access.Packed_MemRef_call1526.us.4 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.4
  store double %polly.access.call1681.load.us.4, double* %polly.access.Packed_MemRef_call1526.us.4, align 8
  %polly.access.add.call1680.us.5 = add nuw nsw i64 %284, %polly.access.mul.call1679.us.5
  %polly.access.call1681.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.5
  %polly.access.call1681.load.us.5 = load double, double* %polly.access.call1681.us.5, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 5
  %polly.access.Packed_MemRef_call1526.us.5 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.5
  store double %polly.access.call1681.load.us.5, double* %polly.access.Packed_MemRef_call1526.us.5, align 8
  %polly.access.add.call1680.us.6 = add nuw nsw i64 %284, %polly.access.mul.call1679.us.6
  %polly.access.call1681.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.6
  %polly.access.call1681.load.us.6 = load double, double* %polly.access.call1681.us.6, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 6
  %polly.access.Packed_MemRef_call1526.us.6 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.6
  store double %polly.access.call1681.load.us.6, double* %polly.access.Packed_MemRef_call1526.us.6, align 8
  %polly.access.add.call1680.us.7 = add nuw nsw i64 %284, %polly.access.mul.call1679.us.7
  %polly.access.call1681.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.7
  %polly.access.call1681.load.us.7 = load double, double* %polly.access.call1681.us.7, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 7
  %polly.access.Packed_MemRef_call1526.us.7 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.7
  store double %polly.access.call1681.load.us.7, double* %polly.access.Packed_MemRef_call1526.us.7, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_exit685.us, label %polly.loop_header683.us

polly.loop_header683.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header683.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header683.us ], [ %282, %polly.loop_header662.us ]
  %285 = add nuw nsw i64 %polly.indvar687.us, %260
  %polly.access.mul.call1691.us = mul nsw i64 %285, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %284, %polly.access.mul.call1691.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695.us = add nuw nsw i64 %polly.indvar687.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526696.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1526696.us, align 8
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %polly.loop_cond689.not.not.us = icmp slt i64 %polly.indvar687.us, %283
  br i1 %polly.loop_cond689.not.not.us, label %polly.loop_header683.us, label %polly.loop_exit685.us

polly.loop_exit685.us:                            ; preds = %polly.loop_header683.us, %polly.loop_header662.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar_next666.us, 20
  br i1 %exitcond1143.not, label %polly.loop_header697.preheader, label %polly.loop_header662.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_exit699:                               ; preds = %polly.loop_exit706.loopexit.us, %polly.loop_header697.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %indvars.iv.next1147 = add i64 %indvars.iv1146, -16
  %indvars.iv.next1152 = add i64 %indvars.iv1151, 16
  %exitcond1158.not = icmp eq i64 %polly.indvar_next660, 75
  %indvar.next1302 = add i64 %indvar1301, 1
  br i1 %exitcond1158.not, label %polly.loop_exit658, label %polly.loop_header656

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit685
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit685 ], [ 0, %polly.loop_header656.split ]
  %286 = add nuw nsw i64 %polly.indvar665, %249
  %polly.access.mul.Packed_MemRef_call1526694 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header683

polly.loop_exit685:                               ; preds = %polly.loop_header683
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next666, 20
  br i1 %exitcond1141.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_header697.preheader:                   ; preds = %polly.loop_exit685, %polly.loop_exit685.us, %polly.loop_header656.split
  %287 = sub nsw i64 %260, %279
  %288 = icmp sgt i64 %287, 0
  %289 = select i1 %288, i64 %287, i64 0
  %polly.loop_guard707 = icmp slt i64 %289, 16
  br i1 %polly.loop_guard707, label %polly.loop_header697.us, label %polly.loop_exit699

polly.loop_header697.us:                          ; preds = %polly.loop_header697.preheader, %polly.loop_exit706.loopexit.us
  %polly.indvar700.us = phi i64 [ %polly.indvar_next701.us, %polly.loop_exit706.loopexit.us ], [ 0, %polly.loop_header697.preheader ]
  %polly.access.mul.Packed_MemRef_call1526719.us = mul nuw nsw i64 %polly.indvar700.us, 1200
  br label %polly.loop_header704.us

polly.loop_header704.us:                          ; preds = %polly.loop_header697.us, %polly.loop_exit714.us
  %indvar1304 = phi i64 [ 0, %polly.loop_header697.us ], [ %indvar.next1305, %polly.loop_exit714.us ]
  %indvars.iv1153 = phi i64 [ %277, %polly.loop_header697.us ], [ %indvars.iv.next1154, %polly.loop_exit714.us ]
  %polly.indvar708.us = phi i64 [ %289, %polly.loop_header697.us ], [ %polly.indvar_next709.us, %polly.loop_exit714.us ]
  %290 = add i64 %276, %indvar1304
  %smin1306 = call i64 @llvm.smin.i64(i64 %290, i64 7)
  %291 = add nsw i64 %smin1306, 1
  %smin1155 = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 7)
  %292 = add nsw i64 %polly.indvar708.us, %280
  %polly.loop_guard715.us1199 = icmp sgt i64 %292, -1
  br i1 %polly.loop_guard715.us1199, label %polly.loop_header712.preheader.us, label %polly.loop_exit714.us

polly.loop_header712.us:                          ; preds = %polly.loop_header712.us.preheader, %polly.loop_header712.us
  %polly.indvar716.us = phi i64 [ %polly.indvar_next717.us, %polly.loop_header712.us ], [ %polly.indvar716.us.ph, %polly.loop_header712.us.preheader ]
  %293 = add nuw nsw i64 %polly.indvar716.us, %260
  %polly.access.add.Packed_MemRef_call1526720.us = add nuw nsw i64 %polly.indvar716.us, %polly.access.mul.Packed_MemRef_call1526719.us
  %polly.access.Packed_MemRef_call1526721.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.us
  %_p_scalar_722.us = load double, double* %polly.access.Packed_MemRef_call1526721.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_726.us, %_p_scalar_722.us
  %polly.access.Packed_MemRef_call2528729.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.us
  %_p_scalar_730.us = load double, double* %polly.access.Packed_MemRef_call2528729.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_734.us, %_p_scalar_730.us
  %294 = shl i64 %293, 3
  %295 = add i64 %294, %297
  %scevgep735.us = getelementptr i8, i8* %call, i64 %295
  %scevgep735736.us = bitcast i8* %scevgep735.us to double*
  %_p_scalar_737.us = load double, double* %scevgep735736.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_737.us
  store double %p_add42.i.us, double* %scevgep735736.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next717.us = add nuw nsw i64 %polly.indvar716.us, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar716.us, %smin1155
  br i1 %exitcond1156.not, label %polly.loop_exit714.us, label %polly.loop_header712.us, !llvm.loop !110

polly.loop_exit714.us:                            ; preds = %polly.loop_header712.us, %middle.block1298, %polly.loop_header704.us
  %polly.indvar_next709.us = add nuw nsw i64 %polly.indvar708.us, 1
  %polly.loop_cond710.us = icmp ult i64 %polly.indvar708.us, 15
  %indvars.iv.next1154 = add i64 %indvars.iv1153, 1
  %indvar.next1305 = add i64 %indvar1304, 1
  br i1 %polly.loop_cond710.us, label %polly.loop_header704.us, label %polly.loop_exit706.loopexit.us

polly.loop_header712.preheader.us:                ; preds = %polly.loop_header704.us
  %296 = add nuw nsw i64 %polly.indvar708.us, %279
  %polly.access.add.Packed_MemRef_call2528724.us = add nsw i64 %292, %polly.access.mul.Packed_MemRef_call1526719.us
  %polly.access.Packed_MemRef_call2528725.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.us
  %_p_scalar_726.us = load double, double* %polly.access.Packed_MemRef_call2528725.us, align 8
  %polly.access.Packed_MemRef_call1526733.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.us
  %_p_scalar_734.us = load double, double* %polly.access.Packed_MemRef_call1526733.us, align 8
  %297 = mul i64 %296, 9600
  %min.iters.check1307 = icmp ult i64 %291, 4
  br i1 %min.iters.check1307, label %polly.loop_header712.us.preheader, label %vector.ph1308

vector.ph1308:                                    ; preds = %polly.loop_header712.preheader.us
  %n.vec1310 = and i64 %291, -4
  %broadcast.splatinsert1316 = insertelement <4 x double> poison, double %_p_scalar_726.us, i32 0
  %broadcast.splat1317 = shufflevector <4 x double> %broadcast.splatinsert1316, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1319 = insertelement <4 x double> poison, double %_p_scalar_734.us, i32 0
  %broadcast.splat1320 = shufflevector <4 x double> %broadcast.splatinsert1319, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1300

vector.body1300:                                  ; preds = %vector.body1300, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1312, %vector.body1300 ]
  %298 = add nuw nsw i64 %index1311, %260
  %299 = add nuw nsw i64 %index1311, %polly.access.mul.Packed_MemRef_call1526719.us
  %300 = getelementptr double, double* %Packed_MemRef_call1526, i64 %299
  %301 = bitcast double* %300 to <4 x double>*
  %wide.load1315 = load <4 x double>, <4 x double>* %301, align 8
  %302 = fmul fast <4 x double> %broadcast.splat1317, %wide.load1315
  %303 = getelementptr double, double* %Packed_MemRef_call2528, i64 %299
  %304 = bitcast double* %303 to <4 x double>*
  %wide.load1318 = load <4 x double>, <4 x double>* %304, align 8
  %305 = fmul fast <4 x double> %broadcast.splat1320, %wide.load1318
  %306 = shl i64 %298, 3
  %307 = add i64 %306, %297
  %308 = getelementptr i8, i8* %call, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %309, align 8, !alias.scope !99, !noalias !101
  %310 = fadd fast <4 x double> %305, %302
  %311 = fmul fast <4 x double> %310, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %312 = fadd fast <4 x double> %311, %wide.load1321
  %313 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %312, <4 x double>* %313, align 8, !alias.scope !99, !noalias !101
  %index.next1312 = add i64 %index1311, 4
  %314 = icmp eq i64 %index.next1312, %n.vec1310
  br i1 %314, label %middle.block1298, label %vector.body1300, !llvm.loop !111

middle.block1298:                                 ; preds = %vector.body1300
  %cmp.n1314 = icmp eq i64 %291, %n.vec1310
  br i1 %cmp.n1314, label %polly.loop_exit714.us, label %polly.loop_header712.us.preheader

polly.loop_header712.us.preheader:                ; preds = %polly.loop_header712.preheader.us, %middle.block1298
  %polly.indvar716.us.ph = phi i64 [ 0, %polly.loop_header712.preheader.us ], [ %n.vec1310, %middle.block1298 ]
  br label %polly.loop_header712.us

polly.loop_exit706.loopexit.us:                   ; preds = %polly.loop_exit714.us
  %polly.indvar_next701.us = add nuw nsw i64 %polly.indvar700.us, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next701.us, 20
  br i1 %exitcond1157.not, label %polly.loop_exit699, label %polly.loop_header697.us

polly.loop_header683:                             ; preds = %polly.loop_header662, %polly.loop_header683
  %polly.indvar687 = phi i64 [ %polly.indvar_next688, %polly.loop_header683 ], [ %282, %polly.loop_header662 ]
  %315 = add nuw nsw i64 %polly.indvar687, %260
  %polly.access.mul.call1691 = mul nsw i64 %315, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %286, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695 = add nuw nsw i64 %polly.indvar687, %polly.access.mul.Packed_MemRef_call1526694
  %polly.access.Packed_MemRef_call1526696 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1526696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %polly.loop_cond689.not.not = icmp slt i64 %polly.indvar687, %283
  br i1 %polly.loop_cond689.not.not, label %polly.loop_header683, label %polly.loop_exit685

polly.loop_header864:                             ; preds = %entry, %polly.loop_exit872
  %indvars.iv1187 = phi i64 [ %indvars.iv.next1188, %polly.loop_exit872 ], [ 0, %entry ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %entry ]
  %smin1189 = call i64 @llvm.smin.i64(i64 %indvars.iv1187, i64 -1168)
  %316 = shl nsw i64 %polly.indvar867, 5
  %317 = add nsw i64 %smin1189, 1199
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1188 = add nsw i64 %indvars.iv1187, -32
  %exitcond1192.not = icmp eq i64 %polly.indvar_next868, 38
  br i1 %exitcond1192.not, label %polly.loop_header891, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %indvars.iv1183 = phi i64 [ %indvars.iv.next1184, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %318 = mul nsw i64 %polly.indvar873, -32
  %smin1227 = call i64 @llvm.smin.i64(i64 %318, i64 -1168)
  %319 = add nsw i64 %smin1227, 1200
  %smin1185 = call i64 @llvm.smin.i64(i64 %indvars.iv1183, i64 -1168)
  %320 = shl nsw i64 %polly.indvar873, 5
  %321 = add nsw i64 %smin1185, 1199
  br label %polly.loop_header876

polly.loop_exit878:                               ; preds = %polly.loop_exit884
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, -32
  %exitcond1191.not = icmp eq i64 %polly.indvar_next874, 38
  br i1 %exitcond1191.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_exit884, %polly.loop_header870
  %polly.indvar879 = phi i64 [ 0, %polly.loop_header870 ], [ %polly.indvar_next880, %polly.loop_exit884 ]
  %322 = add nuw nsw i64 %polly.indvar879, %316
  %323 = trunc i64 %322 to i32
  %324 = mul nuw nsw i64 %322, 9600
  %min.iters.check = icmp eq i64 %319, 0
  br i1 %min.iters.check, label %polly.loop_header882, label %vector.ph1228

vector.ph1228:                                    ; preds = %polly.loop_header876
  %broadcast.splatinsert1235 = insertelement <4 x i64> poison, i64 %320, i32 0
  %broadcast.splat1236 = shufflevector <4 x i64> %broadcast.splatinsert1235, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1237 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1238 = shufflevector <4 x i32> %broadcast.splatinsert1237, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1228
  %index1229 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1230, %vector.body1226 ]
  %vec.ind1233 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1228 ], [ %vec.ind.next1234, %vector.body1226 ]
  %325 = add nuw nsw <4 x i64> %vec.ind1233, %broadcast.splat1236
  %326 = trunc <4 x i64> %325 to <4 x i32>
  %327 = mul <4 x i32> %broadcast.splat1238, %326
  %328 = add <4 x i32> %327, <i32 3, i32 3, i32 3, i32 3>
  %329 = urem <4 x i32> %328, <i32 1200, i32 1200, i32 1200, i32 1200>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %332 = extractelement <4 x i64> %325, i32 0
  %333 = shl i64 %332, 3
  %334 = add nuw nsw i64 %333, %324
  %335 = getelementptr i8, i8* %call, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %331, <4 x double>* %336, align 8, !alias.scope !112, !noalias !114
  %index.next1230 = add i64 %index1229, 4
  %vec.ind.next1234 = add <4 x i64> %vec.ind1233, <i64 4, i64 4, i64 4, i64 4>
  %337 = icmp eq i64 %index.next1230, %319
  br i1 %337, label %polly.loop_exit884, label %vector.body1226, !llvm.loop !117

polly.loop_exit884:                               ; preds = %vector.body1226, %polly.loop_header882
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1190.not = icmp eq i64 %polly.indvar879, %317
  br i1 %exitcond1190.not, label %polly.loop_exit878, label %polly.loop_header876

polly.loop_header882:                             ; preds = %polly.loop_header876, %polly.loop_header882
  %polly.indvar885 = phi i64 [ %polly.indvar_next886, %polly.loop_header882 ], [ 0, %polly.loop_header876 ]
  %338 = add nuw nsw i64 %polly.indvar885, %320
  %339 = trunc i64 %338 to i32
  %340 = mul i32 %339, %323
  %341 = add i32 %340, 3
  %342 = urem i32 %341, 1200
  %p_conv31.i = sitofp i32 %342 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %343 = shl i64 %338, 3
  %344 = add nuw nsw i64 %343, %324
  %scevgep888 = getelementptr i8, i8* %call, i64 %344
  %scevgep888889 = bitcast i8* %scevgep888 to double*
  store double %p_div33.i, double* %scevgep888889, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next886 = add nuw nsw i64 %polly.indvar885, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar885, %321
  br i1 %exitcond1186.not, label %polly.loop_exit884, label %polly.loop_header882, !llvm.loop !118

polly.loop_header891:                             ; preds = %polly.loop_exit872, %polly.loop_exit899
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %smin1179 = call i64 @llvm.smin.i64(i64 %indvars.iv1177, i64 -1168)
  %345 = shl nsw i64 %polly.indvar894, 5
  %346 = add nsw i64 %smin1179, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1182.not, label %polly.loop_header917, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %347 = mul nsw i64 %polly.indvar900, -32
  %smin1242 = call i64 @llvm.smin.i64(i64 %347, i64 -968)
  %348 = add nsw i64 %smin1242, 1000
  %smin1175 = call i64 @llvm.smin.i64(i64 %indvars.iv1173, i64 -968)
  %349 = shl nsw i64 %polly.indvar900, 5
  %350 = add nsw i64 %smin1175, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1174 = add nsw i64 %indvars.iv1173, -32
  %exitcond1181.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1181.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %351 = add nuw nsw i64 %polly.indvar906, %345
  %352 = trunc i64 %351 to i32
  %353 = mul nuw nsw i64 %351, 8000
  %min.iters.check1243 = icmp eq i64 %348, 0
  br i1 %min.iters.check1243, label %polly.loop_header909, label %vector.ph1244

vector.ph1244:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1253 = insertelement <4 x i64> poison, i64 %349, i32 0
  %broadcast.splat1254 = shufflevector <4 x i64> %broadcast.splatinsert1253, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1255 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1256 = shufflevector <4 x i32> %broadcast.splatinsert1255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %vector.ph1244
  %index1247 = phi i64 [ 0, %vector.ph1244 ], [ %index.next1248, %vector.body1241 ]
  %vec.ind1251 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1244 ], [ %vec.ind.next1252, %vector.body1241 ]
  %354 = add nuw nsw <4 x i64> %vec.ind1251, %broadcast.splat1254
  %355 = trunc <4 x i64> %354 to <4 x i32>
  %356 = mul <4 x i32> %broadcast.splat1256, %355
  %357 = add <4 x i32> %356, <i32 2, i32 2, i32 2, i32 2>
  %358 = urem <4 x i32> %357, <i32 1000, i32 1000, i32 1000, i32 1000>
  %359 = sitofp <4 x i32> %358 to <4 x double>
  %360 = fmul fast <4 x double> %359, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %361 = extractelement <4 x i64> %354, i32 0
  %362 = shl i64 %361, 3
  %363 = add nuw nsw i64 %362, %353
  %364 = getelementptr i8, i8* %call2, i64 %363
  %365 = bitcast i8* %364 to <4 x double>*
  store <4 x double> %360, <4 x double>* %365, align 8, !alias.scope !116, !noalias !119
  %index.next1248 = add i64 %index1247, 4
  %vec.ind.next1252 = add <4 x i64> %vec.ind1251, <i64 4, i64 4, i64 4, i64 4>
  %366 = icmp eq i64 %index.next1248, %348
  br i1 %366, label %polly.loop_exit911, label %vector.body1241, !llvm.loop !120

polly.loop_exit911:                               ; preds = %vector.body1241, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar906, %346
  br i1 %exitcond1180.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %367 = add nuw nsw i64 %polly.indvar912, %349
  %368 = trunc i64 %367 to i32
  %369 = mul i32 %368, %352
  %370 = add i32 %369, 2
  %371 = urem i32 %370, 1000
  %p_conv10.i = sitofp i32 %371 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %372 = shl i64 %367, 3
  %373 = add nuw nsw i64 %372, %353
  %scevgep915 = getelementptr i8, i8* %call2, i64 %373
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div12.i, double* %scevgep915916, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar912, %350
  br i1 %exitcond1176.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !121

polly.loop_header917:                             ; preds = %polly.loop_exit899, %polly.loop_exit925
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %smin1169 = call i64 @llvm.smin.i64(i64 %indvars.iv1167, i64 -1168)
  %374 = shl nsw i64 %polly.indvar920, 5
  %375 = add nsw i64 %smin1169, 1199
  br label %polly.loop_header923

polly.loop_exit925:                               ; preds = %polly.loop_exit931
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %indvars.iv.next1168 = add nsw i64 %indvars.iv1167, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next921, 38
  br i1 %exitcond1172.not, label %init_array.exit, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_exit931, %polly.loop_header917
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %376 = mul nsw i64 %polly.indvar926, -32
  %smin1260 = call i64 @llvm.smin.i64(i64 %376, i64 -968)
  %377 = add nsw i64 %smin1260, 1000
  %smin1165 = call i64 @llvm.smin.i64(i64 %indvars.iv1163, i64 -968)
  %378 = shl nsw i64 %polly.indvar926, 5
  %379 = add nsw i64 %smin1165, 999
  br label %polly.loop_header929

polly.loop_exit931:                               ; preds = %polly.loop_exit937
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %indvars.iv.next1164 = add nsw i64 %indvars.iv1163, -32
  %exitcond1171.not = icmp eq i64 %polly.indvar_next927, 32
  br i1 %exitcond1171.not, label %polly.loop_exit925, label %polly.loop_header923

polly.loop_header929:                             ; preds = %polly.loop_exit937, %polly.loop_header923
  %polly.indvar932 = phi i64 [ 0, %polly.loop_header923 ], [ %polly.indvar_next933, %polly.loop_exit937 ]
  %380 = add nuw nsw i64 %polly.indvar932, %374
  %381 = trunc i64 %380 to i32
  %382 = mul nuw nsw i64 %380, 8000
  %min.iters.check1261 = icmp eq i64 %377, 0
  br i1 %min.iters.check1261, label %polly.loop_header935, label %vector.ph1262

vector.ph1262:                                    ; preds = %polly.loop_header929
  %broadcast.splatinsert1271 = insertelement <4 x i64> poison, i64 %378, i32 0
  %broadcast.splat1272 = shufflevector <4 x i64> %broadcast.splatinsert1271, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1273 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat1274 = shufflevector <4 x i32> %broadcast.splatinsert1273, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1262
  %index1265 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1266, %vector.body1259 ]
  %vec.ind1269 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1262 ], [ %vec.ind.next1270, %vector.body1259 ]
  %383 = add nuw nsw <4 x i64> %vec.ind1269, %broadcast.splat1272
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat1274, %384
  %386 = add <4 x i32> %385, <i32 1, i32 1, i32 1, i32 1>
  %387 = urem <4 x i32> %386, <i32 1200, i32 1200, i32 1200, i32 1200>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %382
  %393 = getelementptr i8, i8* %call1, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !115, !noalias !122
  %index.next1266 = add i64 %index1265, 4
  %vec.ind.next1270 = add <4 x i64> %vec.ind1269, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next1266, %377
  br i1 %395, label %polly.loop_exit937, label %vector.body1259, !llvm.loop !123

polly.loop_exit937:                               ; preds = %vector.body1259, %polly.loop_header935
  %polly.indvar_next933 = add nuw nsw i64 %polly.indvar932, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar932, %375
  br i1 %exitcond1170.not, label %polly.loop_exit931, label %polly.loop_header929

polly.loop_header935:                             ; preds = %polly.loop_header929, %polly.loop_header935
  %polly.indvar938 = phi i64 [ %polly.indvar_next939, %polly.loop_header935 ], [ 0, %polly.loop_header929 ]
  %396 = add nuw nsw i64 %polly.indvar938, %378
  %397 = trunc i64 %396 to i32
  %398 = mul i32 %397, %381
  %399 = add i32 %398, 1
  %400 = urem i32 %399, 1200
  %p_conv.i = sitofp i32 %400 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %401 = shl i64 %396, 3
  %402 = add nuw nsw i64 %401, %382
  %scevgep942 = getelementptr i8, i8* %call1, i64 %402
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div.i, double* %scevgep942943, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next939 = add nuw nsw i64 %polly.indvar938, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar938, %379
  br i1 %exitcond1166.not, label %polly.loop_exit937, label %polly.loop_header935, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 8}
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
!51 = !{!"llvm.loop.tile.size", i32 16}
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
