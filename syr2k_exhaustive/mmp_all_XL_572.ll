; ModuleID = 'syr2k_exhaustive/mmp_all_XL_572.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_572.c"
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
  %scevgep1223 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1222 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1221 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1220 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1220, %scevgep1223
  %bound1 = icmp ult i8* %scevgep1222, %scevgep1221
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
  br i1 %exitcond18.not.i, label %vector.ph1227, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1227:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1234 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1235 = shufflevector <4 x i64> %broadcast.splatinsert1234, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1227
  %index1228 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1227 ], [ %vec.ind.next1233, %vector.body1226 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1232, %broadcast.splat1235
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv7.i, i64 %index1228
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1233 = add <4 x i64> %vec.ind1232, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1229, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1226, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1226
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1227, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit925
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1290 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1290, label %for.body3.i46.preheader1445, label %vector.ph1291

vector.ph1291:                                    ; preds = %for.body3.i46.preheader
  %n.vec1293 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1291
  %index1294 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1295, %vector.body1289 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %index1294
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1295 = add i64 %index1294, 4
  %46 = icmp eq i64 %index.next1295, %n.vec1293
  br i1 %46, label %middle.block1287, label %vector.body1289, !llvm.loop !18

middle.block1287:                                 ; preds = %vector.body1289
  %cmp.n1297 = icmp eq i64 %indvars.iv21.i, %n.vec1293
  br i1 %cmp.n1297, label %for.inc6.i, label %for.body3.i46.preheader1445

for.body3.i46.preheader1445:                      ; preds = %for.body3.i46.preheader, %middle.block1287
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1293, %middle.block1287 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1445, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1445 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1287, %for.cond1.preheader.i45
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
  %min.iters.check1337 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1337, label %for.body3.i60.preheader1441, label %vector.ph1338

vector.ph1338:                                    ; preds = %for.body3.i60.preheader
  %n.vec1340 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1336

vector.body1336:                                  ; preds = %vector.body1336, %vector.ph1338
  %index1341 = phi i64 [ 0, %vector.ph1338 ], [ %index.next1342, %vector.body1336 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %index1341
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1345 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1345, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1342 = add i64 %index1341, 4
  %57 = icmp eq i64 %index.next1342, %n.vec1340
  br i1 %57, label %middle.block1334, label %vector.body1336, !llvm.loop !64

middle.block1334:                                 ; preds = %vector.body1336
  %cmp.n1344 = icmp eq i64 %indvars.iv21.i52, %n.vec1340
  br i1 %cmp.n1344, label %for.inc6.i63, label %for.body3.i60.preheader1441

for.body3.i60.preheader1441:                      ; preds = %for.body3.i60.preheader, %middle.block1334
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1340, %middle.block1334 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1441, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1441 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1334, %for.cond1.preheader.i54
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
  %min.iters.check1387 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1387, label %for.body3.i99.preheader1437, label %vector.ph1388

vector.ph1388:                                    ; preds = %for.body3.i99.preheader
  %n.vec1390 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1386

vector.body1386:                                  ; preds = %vector.body1386, %vector.ph1388
  %index1391 = phi i64 [ 0, %vector.ph1388 ], [ %index.next1392, %vector.body1386 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %index1391
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1395, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1392 = add i64 %index1391, 4
  %68 = icmp eq i64 %index.next1392, %n.vec1390
  br i1 %68, label %middle.block1384, label %vector.body1386, !llvm.loop !66

middle.block1384:                                 ; preds = %vector.body1386
  %cmp.n1394 = icmp eq i64 %indvars.iv21.i91, %n.vec1390
  br i1 %cmp.n1394, label %for.inc6.i102, label %for.body3.i99.preheader1437

for.body3.i99.preheader1437:                      ; preds = %for.body3.i99.preheader, %middle.block1384
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1390, %middle.block1384 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1437, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1437 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1384, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall136 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1399 = phi i64 [ %indvar.next1400, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1399, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1401 = icmp ult i64 %88, 4
  br i1 %min.iters.check1401, label %polly.loop_header192.preheader, label %vector.ph1402

vector.ph1402:                                    ; preds = %polly.loop_header
  %n.vec1404 = and i64 %88, -4
  br label %vector.body1398

vector.body1398:                                  ; preds = %vector.body1398, %vector.ph1402
  %index1405 = phi i64 [ 0, %vector.ph1402 ], [ %index.next1406, %vector.body1398 ]
  %90 = shl nuw nsw i64 %index1405, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1409 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1409, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1406 = add i64 %index1405, 4
  %95 = icmp eq i64 %index.next1406, %n.vec1404
  br i1 %95, label %middle.block1396, label %vector.body1398, !llvm.loop !79

middle.block1396:                                 ; preds = %vector.body1398
  %cmp.n1408 = icmp eq i64 %88, %n.vec1404
  br i1 %cmp.n1408, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1396
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1404, %middle.block1396 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1396
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1400 = add i64 %indvar1399, 1
  br i1 %exitcond1116.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1115.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1115.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 100
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next204, 10
  br i1 %exitcond1114.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %114, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = shl nuw nsw i64 %polly.indvar209, 2
  %99 = shl nuw nsw i64 %polly.indvar209, 2
  %100 = and i64 %99, 9223372036854775776
  %101 = sub nsw i64 %98, %100
  %102 = mul nsw i64 %polly.indvar209, -4
  %103 = add i64 %102, %100
  %104 = lshr i64 %polly.indvar209, 3
  %105 = shl nuw nsw i64 %104, 5
  %106 = sub nsw i64 %indvars.iv1100, %105
  %107 = add i64 %indvars.iv1104, %105
  %108 = mul nsw i64 %polly.indvar209, -4
  %109 = shl nsw i64 %polly.indvar209, 2
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %110 = add nsw i64 %108, 1199
  %polly.access.mul.call1247.us = mul nsw i64 %polly.indvar209, 4000
  %111 = or i64 %109, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %109, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %112, 1000
  %113 = or i64 %109, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %113, 1000
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %114 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next1101 = add nuw nsw i64 %indvars.iv1100, 4
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -4
  %exitcond1113.not = icmp eq i64 %114, 300
  br i1 %exitcond1113.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %115 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next216, 100
  br i1 %exitcond1096.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %116 = add nuw nsw i64 %polly.indvar221, %109
  %polly.access.mul.call2225 = mul nuw nsw i64 %116, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %115, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit265, %polly.loop_exit214
  %indvar1413 = phi i64 [ %indvar.next1414, %polly.loop_exit265 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit265 ], [ %107, %polly.loop_exit214 ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit265 ], [ %106, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit265 ], [ %104, %polly.loop_exit214 ]
  %117 = mul nsw i64 %indvar1413, -32
  %118 = add i64 %101, %117
  %smax1415 = call i64 @llvm.smax.i64(i64 %118, i64 0)
  %119 = shl nuw nsw i64 %indvar1413, 5
  %120 = add i64 %103, %119
  %121 = add i64 %smax1415, %120
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1102, i64 0)
  %122 = add i64 %smax, %indvars.iv1106
  %123 = shl nsw i64 %polly.indvar231, 3
  %.not.not = icmp ugt i64 %123, %polly.indvar209
  %124 = shl nsw i64 %polly.indvar231, 5
  %125 = add nsw i64 %124, %108
  %126 = icmp sgt i64 %125, 0
  %127 = select i1 %126, i64 %125, i64 0
  %128 = add nsw i64 %125, 31
  %129 = icmp slt i64 %110, %128
  %130 = select i1 %129, i64 %110, i64 %128
  %polly.loop_guard.not = icmp sgt i64 %127, %130
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit252.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit252.us ], [ 0, %polly.loop_header228 ]
  %131 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  %polly.access.add.call1248.us = add nuw nsw i64 %131, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %131, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %131, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %131, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit252.us, label %polly.loop_header250.us

polly.loop_header250.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header250.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %127, %polly.loop_header234.us ]
  %132 = add nuw nsw i64 %polly.indvar253.us, %109
  %polly.access.mul.call1257.us = mul nsw i64 %132, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %131, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %130
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.loop_exit252.us

polly.loop_exit252.us:                            ; preds = %polly.loop_header250.us, %polly.loop_header234.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next238.us, 100
  br i1 %exitcond1099.not, label %polly.loop_header263.preheader, label %polly.loop_header234.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_exit265:                               ; preds = %polly.loop_exit272, %polly.loop_header263.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1103 = add i64 %indvars.iv1102, -32
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 32
  %exitcond1112.not = icmp eq i64 %polly.indvar_next232, 38
  %indvar.next1414 = add i64 %indvar1413, 1
  br i1 %exitcond1112.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit252
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit252 ], [ 0, %polly.loop_header228.split ]
  %133 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next238, 100
  br i1 %exitcond1097.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.loop_exit252, %polly.loop_exit252.us, %polly.loop_header228.split
  %134 = sub nsw i64 %109, %124
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %137 = mul nsw i64 %polly.indvar231, -32
  %138 = icmp slt i64 %137, -1168
  %139 = select i1 %138, i64 %137, i64 -1168
  %140 = add nsw i64 %139, 1199
  %polly.loop_guard273.not = icmp sgt i64 %136, %140
  br i1 %polly.loop_guard273.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header250:                             ; preds = %polly.loop_header234, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %127, %polly.loop_header234 ]
  %141 = add nuw nsw i64 %polly.indvar253, %109
  %polly.access.mul.call1257 = mul nsw i64 %141, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %133, %polly.access.mul.call1257
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %130
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_exit252

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_exit272
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_exit272 ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1285 = mul nuw nsw i64 %polly.indvar266, 1200
  br label %polly.loop_header270

polly.loop_exit272:                               ; preds = %polly.loop_exit280
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next267, 100
  br i1 %exitcond1111.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header270:                             ; preds = %polly.loop_header263, %polly.loop_exit280
  %indvar1416 = phi i64 [ 0, %polly.loop_header263 ], [ %indvar.next1417, %polly.loop_exit280 ]
  %indvars.iv1108 = phi i64 [ %122, %polly.loop_header263 ], [ %indvars.iv.next1109, %polly.loop_exit280 ]
  %polly.indvar274 = phi i64 [ %136, %polly.loop_header263 ], [ %polly.indvar_next275, %polly.loop_exit280 ]
  %142 = add i64 %121, %indvar1416
  %smin1418 = call i64 @llvm.smin.i64(i64 %142, i64 3)
  %143 = add nsw i64 %smin1418, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 3)
  %144 = add nsw i64 %polly.indvar274, %125
  %polly.loop_guard2811206 = icmp sgt i64 %144, -1
  br i1 %polly.loop_guard2811206, label %polly.loop_header278.preheader, label %polly.loop_exit280

polly.loop_header278.preheader:                   ; preds = %polly.loop_header270
  %145 = add nuw nsw i64 %polly.indvar274, %124
  %polly.access.add.Packed_MemRef_call2290 = add nsw i64 %144, %polly.access.mul.Packed_MemRef_call1285
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %polly.access.Packed_MemRef_call1299 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290
  %_p_scalar_300 = load double, double* %polly.access.Packed_MemRef_call1299, align 8
  %146 = mul i64 %145, 9600
  %min.iters.check1419 = icmp ult i64 %143, 4
  br i1 %min.iters.check1419, label %polly.loop_header278.preheader1434, label %vector.ph1420

vector.ph1420:                                    ; preds = %polly.loop_header278.preheader
  %n.vec1422 = and i64 %143, -4
  %broadcast.splatinsert1428 = insertelement <4 x double> poison, double %_p_scalar_292, i32 0
  %broadcast.splat1429 = shufflevector <4 x double> %broadcast.splatinsert1428, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1431 = insertelement <4 x double> poison, double %_p_scalar_300, i32 0
  %broadcast.splat1432 = shufflevector <4 x double> %broadcast.splatinsert1431, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1412

vector.body1412:                                  ; preds = %vector.body1412, %vector.ph1420
  %index1423 = phi i64 [ 0, %vector.ph1420 ], [ %index.next1424, %vector.body1412 ]
  %147 = add nuw nsw i64 %index1423, %109
  %148 = add nuw nsw i64 %index1423, %polly.access.mul.Packed_MemRef_call1285
  %149 = getelementptr double, double* %Packed_MemRef_call1, i64 %148
  %150 = bitcast double* %149 to <4 x double>*
  %wide.load1427 = load <4 x double>, <4 x double>* %150, align 8
  %151 = fmul fast <4 x double> %broadcast.splat1429, %wide.load1427
  %152 = getelementptr double, double* %Packed_MemRef_call2, i64 %148
  %153 = bitcast double* %152 to <4 x double>*
  %wide.load1430 = load <4 x double>, <4 x double>* %153, align 8
  %154 = fmul fast <4 x double> %broadcast.splat1432, %wide.load1430
  %155 = shl i64 %147, 3
  %156 = add i64 %155, %146
  %157 = getelementptr i8, i8* %call, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1433 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !72, !noalias !74
  %159 = fadd fast <4 x double> %154, %151
  %160 = fmul fast <4 x double> %159, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %161 = fadd fast <4 x double> %160, %wide.load1433
  %162 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !72, !noalias !74
  %index.next1424 = add i64 %index1423, 4
  %163 = icmp eq i64 %index.next1424, %n.vec1422
  br i1 %163, label %middle.block1410, label %vector.body1412, !llvm.loop !84

middle.block1410:                                 ; preds = %vector.body1412
  %cmp.n1426 = icmp eq i64 %143, %n.vec1422
  br i1 %cmp.n1426, label %polly.loop_exit280, label %polly.loop_header278.preheader1434

polly.loop_header278.preheader1434:               ; preds = %polly.loop_header278.preheader, %middle.block1410
  %polly.indvar282.ph = phi i64 [ 0, %polly.loop_header278.preheader ], [ %n.vec1422, %middle.block1410 ]
  br label %polly.loop_header278

polly.loop_exit280:                               ; preds = %polly.loop_header278, %middle.block1410, %polly.loop_header270
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %polly.loop_cond276.not.not = icmp slt i64 %polly.indvar274, %140
  %indvars.iv.next1109 = add i64 %indvars.iv1108, 1
  %indvar.next1417 = add i64 %indvar1416, 1
  br i1 %polly.loop_cond276.not.not, label %polly.loop_header270, label %polly.loop_exit272

polly.loop_header278:                             ; preds = %polly.loop_header278.preheader1434, %polly.loop_header278
  %polly.indvar282 = phi i64 [ %polly.indvar_next283, %polly.loop_header278 ], [ %polly.indvar282.ph, %polly.loop_header278.preheader1434 ]
  %164 = add nuw nsw i64 %polly.indvar282, %109
  %polly.access.add.Packed_MemRef_call1286 = add nuw nsw i64 %polly.indvar282, %polly.access.mul.Packed_MemRef_call1285
  %polly.access.Packed_MemRef_call1287 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call1287, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_292, %_p_scalar_288
  %polly.access.Packed_MemRef_call2295 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call2295, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_300, %_p_scalar_296
  %165 = shl i64 %164, 3
  %166 = add i64 %165, %146
  %scevgep301 = getelementptr i8, i8* %call, i64 %166
  %scevgep301302 = bitcast i8* %scevgep301 to double*
  %_p_scalar_303 = load double, double* %scevgep301302, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_303
  store double %p_add42.i118, double* %scevgep301302, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283 = add nuw nsw i64 %polly.indvar282, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar282, %smin
  br i1 %exitcond1110.not, label %polly.loop_exit280, label %polly.loop_header278, !llvm.loop !85

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall310 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1349 = phi i64 [ %indvar.next1350, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %167 = add i64 %indvar1349, 1
  %168 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %168
  %min.iters.check1351 = icmp ult i64 %167, 4
  br i1 %min.iters.check1351, label %polly.loop_header400.preheader, label %vector.ph1352

vector.ph1352:                                    ; preds = %polly.loop_header394
  %n.vec1354 = and i64 %167, -4
  br label %vector.body1348

vector.body1348:                                  ; preds = %vector.body1348, %vector.ph1352
  %index1355 = phi i64 [ 0, %vector.ph1352 ], [ %index.next1356, %vector.body1348 ]
  %169 = shl nuw nsw i64 %index1355, 3
  %170 = getelementptr i8, i8* %scevgep406, i64 %169
  %171 = bitcast i8* %170 to <4 x double>*
  %wide.load1359 = load <4 x double>, <4 x double>* %171, align 8, !alias.scope !86, !noalias !88
  %172 = fmul fast <4 x double> %wide.load1359, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %173 = bitcast i8* %170 to <4 x double>*
  store <4 x double> %172, <4 x double>* %173, align 8, !alias.scope !86, !noalias !88
  %index.next1356 = add i64 %index1355, 4
  %174 = icmp eq i64 %index.next1356, %n.vec1354
  br i1 %174, label %middle.block1346, label %vector.body1348, !llvm.loop !93

middle.block1346:                                 ; preds = %vector.body1348
  %cmp.n1358 = icmp eq i64 %167, %n.vec1354
  br i1 %cmp.n1358, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1346
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1354, %middle.block1346 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1346
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1350 = add i64 %indvar1349, 1
  br i1 %exitcond1142.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %175 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %175
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1141.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !94

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %176 = mul nuw nsw i64 %polly.indvar413, 100
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit441
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next414, 10
  br i1 %exitcond1140.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit441, %polly.loop_header410
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit441 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %193, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %177 = shl nuw nsw i64 %polly.indvar419, 2
  %178 = shl nuw nsw i64 %polly.indvar419, 2
  %179 = and i64 %178, 9223372036854775776
  %180 = sub nsw i64 %177, %179
  %181 = mul nsw i64 %polly.indvar419, -4
  %182 = add i64 %181, %179
  %183 = lshr i64 %polly.indvar419, 3
  %184 = shl nuw nsw i64 %183, 5
  %185 = sub nsw i64 %indvars.iv1124, %184
  %186 = add i64 %indvars.iv1129, %184
  %187 = mul nsw i64 %polly.indvar419, -4
  %188 = shl nsw i64 %polly.indvar419, 2
  br label %polly.loop_header422

polly.loop_exit424:                               ; preds = %polly.loop_exit430
  %189 = add nsw i64 %187, 1199
  %polly.access.mul.call1462.us = mul nsw i64 %polly.indvar419, 4000
  %190 = or i64 %188, 1
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %190, 1000
  %191 = or i64 %188, 2
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %191, 1000
  %192 = or i64 %188, 3
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %192, 1000
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit482
  %193 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -4
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 4
  %indvars.iv.next1130 = add nsw i64 %indvars.iv1129, -4
  %exitcond1139.not = icmp eq i64 %193, 300
  br i1 %exitcond1139.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_exit430, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_exit430 ]
  %194 = add nuw nsw i64 %polly.indvar425, %176
  %polly.access.mul.Packed_MemRef_call2311 = mul nuw nsw i64 %polly.indvar425, 1200
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_header428
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next426, 100
  br i1 %exitcond1120.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %195 = add nuw nsw i64 %polly.indvar431, %188
  %polly.access.mul.call2435 = mul nuw nsw i64 %195, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %194, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2311 = add nuw nsw i64 %polly.indvar431, %polly.access.mul.Packed_MemRef_call2311
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1117
  br i1 %exitcond1119.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header439:                             ; preds = %polly.loop_exit482, %polly.loop_exit424
  %indvar1363 = phi i64 [ %indvar.next1364, %polly.loop_exit482 ], [ 0, %polly.loop_exit424 ]
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit482 ], [ %186, %polly.loop_exit424 ]
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit482 ], [ %185, %polly.loop_exit424 ]
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit482 ], [ %183, %polly.loop_exit424 ]
  %196 = mul nsw i64 %indvar1363, -32
  %197 = add i64 %180, %196
  %smax1365 = call i64 @llvm.smax.i64(i64 %197, i64 0)
  %198 = shl nuw nsw i64 %indvar1363, 5
  %199 = add i64 %182, %198
  %200 = add i64 %smax1365, %199
  %smax1128 = call i64 @llvm.smax.i64(i64 %indvars.iv1126, i64 0)
  %201 = add i64 %smax1128, %indvars.iv1131
  %202 = shl nsw i64 %polly.indvar442, 3
  %.not.not944 = icmp ugt i64 %202, %polly.indvar419
  %203 = shl nsw i64 %polly.indvar442, 5
  %204 = add nsw i64 %203, %187
  %205 = icmp sgt i64 %204, 0
  %206 = select i1 %205, i64 %204, i64 0
  %207 = add nsw i64 %204, 31
  %208 = icmp slt i64 %189, %207
  %209 = select i1 %208, i64 %189, i64 %207
  %polly.loop_guard469.not = icmp sgt i64 %206, %209
  br i1 %.not.not944, label %polly.loop_header445.us, label %polly.loop_header439.split

polly.loop_header445.us:                          ; preds = %polly.loop_header439, %polly.loop_exit468.us
  %polly.indvar448.us = phi i64 [ %polly.indvar_next449.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header439 ]
  %210 = add nuw nsw i64 %polly.indvar448.us, %176
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar448.us, 1200
  %polly.access.add.call1463.us = add nuw nsw i64 %210, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.mul.Packed_MemRef_call1309.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %210, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 1
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1309.us.1, align 8
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %210, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 2
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1309.us.2, align 8
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %210, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 3
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1309.us.3, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header466.us:                          ; preds = %polly.loop_header445.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %206, %polly.loop_header445.us ]
  %211 = add nuw nsw i64 %polly.indvar470.us, %188
  %polly.access.mul.call1474.us = mul nsw i64 %211, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %210, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309479.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1309479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %209
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_header445.us
  %polly.indvar_next449.us = add nuw nsw i64 %polly.indvar448.us, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar_next449.us, 100
  br i1 %exitcond1123.not, label %polly.loop_header480.preheader, label %polly.loop_header445.us

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_exit482:                               ; preds = %polly.loop_exit489, %polly.loop_header480.preheader
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %indvars.iv.next1127 = add i64 %indvars.iv1126, -32
  %indvars.iv.next1132 = add i64 %indvars.iv1131, 32
  %exitcond1138.not = icmp eq i64 %polly.indvar_next443, 38
  %indvar.next1364 = add i64 %indvar1363, 1
  br i1 %exitcond1138.not, label %polly.loop_exit441, label %polly.loop_header439

polly.loop_header445:                             ; preds = %polly.loop_header439.split, %polly.loop_exit468
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit468 ], [ 0, %polly.loop_header439.split ]
  %212 = add nuw nsw i64 %polly.indvar448, %176
  %polly.access.mul.Packed_MemRef_call1309477 = mul nuw nsw i64 %polly.indvar448, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next449, 100
  br i1 %exitcond1121.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header439.split
  %213 = sub nsw i64 %188, %203
  %214 = icmp sgt i64 %213, 0
  %215 = select i1 %214, i64 %213, i64 0
  %216 = mul nsw i64 %polly.indvar442, -32
  %217 = icmp slt i64 %216, -1168
  %218 = select i1 %217, i64 %216, i64 -1168
  %219 = add nsw i64 %218, 1199
  %polly.loop_guard490.not = icmp sgt i64 %215, %219
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header466:                             ; preds = %polly.loop_header445, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %206, %polly.loop_header445 ]
  %220 = add nuw nsw i64 %polly.indvar470, %188
  %polly.access.mul.call1474 = mul nsw i64 %220, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %212, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1309477
  %polly.access.Packed_MemRef_call1309479 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1309479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %209
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.loop_header480:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit489
  %polly.indvar483 = phi i64 [ %polly.indvar_next484, %polly.loop_exit489 ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1309502 = mul nuw nsw i64 %polly.indvar483, 1200
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_exit497
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next484, 100
  br i1 %exitcond1137.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header487:                             ; preds = %polly.loop_header480, %polly.loop_exit497
  %indvar1366 = phi i64 [ 0, %polly.loop_header480 ], [ %indvar.next1367, %polly.loop_exit497 ]
  %indvars.iv1133 = phi i64 [ %201, %polly.loop_header480 ], [ %indvars.iv.next1134, %polly.loop_exit497 ]
  %polly.indvar491 = phi i64 [ %215, %polly.loop_header480 ], [ %polly.indvar_next492, %polly.loop_exit497 ]
  %221 = add i64 %200, %indvar1366
  %smin1368 = call i64 @llvm.smin.i64(i64 %221, i64 3)
  %222 = add nsw i64 %smin1368, 1
  %smin1135 = call i64 @llvm.smin.i64(i64 %indvars.iv1133, i64 3)
  %223 = add nsw i64 %polly.indvar491, %204
  %polly.loop_guard4981207 = icmp sgt i64 %223, -1
  br i1 %polly.loop_guard4981207, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %224 = add nuw nsw i64 %polly.indvar491, %203
  %polly.access.add.Packed_MemRef_call2311507 = add nsw i64 %223, %polly.access.mul.Packed_MemRef_call1309502
  %polly.access.Packed_MemRef_call2311508 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2311508, align 8
  %polly.access.Packed_MemRef_call1309516 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1309516, align 8
  %225 = mul i64 %224, 9600
  %min.iters.check1369 = icmp ult i64 %222, 4
  br i1 %min.iters.check1369, label %polly.loop_header495.preheader1438, label %vector.ph1370

vector.ph1370:                                    ; preds = %polly.loop_header495.preheader
  %n.vec1372 = and i64 %222, -4
  %broadcast.splatinsert1378 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1379 = shufflevector <4 x double> %broadcast.splatinsert1378, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1381 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1382 = shufflevector <4 x double> %broadcast.splatinsert1381, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1362

vector.body1362:                                  ; preds = %vector.body1362, %vector.ph1370
  %index1373 = phi i64 [ 0, %vector.ph1370 ], [ %index.next1374, %vector.body1362 ]
  %226 = add nuw nsw i64 %index1373, %188
  %227 = add nuw nsw i64 %index1373, %polly.access.mul.Packed_MemRef_call1309502
  %228 = getelementptr double, double* %Packed_MemRef_call1309, i64 %227
  %229 = bitcast double* %228 to <4 x double>*
  %wide.load1377 = load <4 x double>, <4 x double>* %229, align 8
  %230 = fmul fast <4 x double> %broadcast.splat1379, %wide.load1377
  %231 = getelementptr double, double* %Packed_MemRef_call2311, i64 %227
  %232 = bitcast double* %231 to <4 x double>*
  %wide.load1380 = load <4 x double>, <4 x double>* %232, align 8
  %233 = fmul fast <4 x double> %broadcast.splat1382, %wide.load1380
  %234 = shl i64 %226, 3
  %235 = add i64 %234, %225
  %236 = getelementptr i8, i8* %call, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %237, align 8, !alias.scope !86, !noalias !88
  %238 = fadd fast <4 x double> %233, %230
  %239 = fmul fast <4 x double> %238, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %240 = fadd fast <4 x double> %239, %wide.load1383
  %241 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %240, <4 x double>* %241, align 8, !alias.scope !86, !noalias !88
  %index.next1374 = add i64 %index1373, 4
  %242 = icmp eq i64 %index.next1374, %n.vec1372
  br i1 %242, label %middle.block1360, label %vector.body1362, !llvm.loop !97

middle.block1360:                                 ; preds = %vector.body1362
  %cmp.n1376 = icmp eq i64 %222, %n.vec1372
  br i1 %cmp.n1376, label %polly.loop_exit497, label %polly.loop_header495.preheader1438

polly.loop_header495.preheader1438:               ; preds = %polly.loop_header495.preheader, %middle.block1360
  %polly.indvar499.ph = phi i64 [ 0, %polly.loop_header495.preheader ], [ %n.vec1372, %middle.block1360 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1360, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %219
  %indvars.iv.next1134 = add i64 %indvars.iv1133, 1
  %indvar.next1367 = add i64 %indvar1366, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_exit489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1438, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1438 ]
  %243 = add nuw nsw i64 %polly.indvar499, %188
  %polly.access.add.Packed_MemRef_call1309503 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1309502
  %polly.access.Packed_MemRef_call1309504 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1309504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2311512 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2311512, align 8
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
  %exitcond1136.not = icmp eq i64 %polly.indvar499, %smin1135
  br i1 %exitcond1136.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !98

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
  %min.iters.check1301 = icmp ult i64 %246, 4
  br i1 %min.iters.check1301, label %polly.loop_header617.preheader, label %vector.ph1302

vector.ph1302:                                    ; preds = %polly.loop_header611
  %n.vec1304 = and i64 %246, -4
  br label %vector.body1300

vector.body1300:                                  ; preds = %vector.body1300, %vector.ph1302
  %index1305 = phi i64 [ 0, %vector.ph1302 ], [ %index.next1306, %vector.body1300 ]
  %248 = shl nuw nsw i64 %index1305, 3
  %249 = getelementptr i8, i8* %scevgep623, i64 %248
  %250 = bitcast i8* %249 to <4 x double>*
  %wide.load1309 = load <4 x double>, <4 x double>* %250, align 8, !alias.scope !99, !noalias !101
  %251 = fmul fast <4 x double> %wide.load1309, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %252 = bitcast i8* %249 to <4 x double>*
  store <4 x double> %251, <4 x double>* %252, align 8, !alias.scope !99, !noalias !101
  %index.next1306 = add i64 %index1305, 4
  %253 = icmp eq i64 %index.next1306, %n.vec1304
  br i1 %253, label %middle.block1298, label %vector.body1300, !llvm.loop !106

middle.block1298:                                 ; preds = %vector.body1300
  %cmp.n1308 = icmp eq i64 %246, %n.vec1304
  br i1 %cmp.n1308, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1298
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1304, %middle.block1298 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1298
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1168.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1168.not, label %polly.loop_header627.preheader, label %polly.loop_header611

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
  %exitcond1167.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1167.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %255 = mul nuw nsw i64 %polly.indvar630, 100
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar_next631, 10
  br i1 %exitcond1166.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %272, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %256 = shl nuw nsw i64 %polly.indvar636, 2
  %257 = shl nuw nsw i64 %polly.indvar636, 2
  %258 = and i64 %257, 9223372036854775776
  %259 = sub nsw i64 %256, %258
  %260 = mul nsw i64 %polly.indvar636, -4
  %261 = add i64 %260, %258
  %262 = lshr i64 %polly.indvar636, 3
  %263 = shl nuw nsw i64 %262, 5
  %264 = sub nsw i64 %indvars.iv1150, %263
  %265 = add i64 %indvars.iv1155, %263
  %266 = mul nsw i64 %polly.indvar636, -4
  %267 = shl nsw i64 %polly.indvar636, 2
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %268 = add nsw i64 %266, 1199
  %polly.access.mul.call1679.us = mul nsw i64 %polly.indvar636, 4000
  %269 = or i64 %267, 1
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %269, 1000
  %270 = or i64 %267, 2
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %270, 1000
  %271 = or i64 %267, 3
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %271, 1000
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit699
  %272 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1144 = add nsw i64 %indvars.iv1143, -4
  %indvars.iv.next1151 = add nuw nsw i64 %indvars.iv1150, 4
  %indvars.iv.next1156 = add nsw i64 %indvars.iv1155, -4
  %exitcond1165.not = icmp eq i64 %272, 300
  br i1 %exitcond1165.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %273 = add nuw nsw i64 %polly.indvar642, %255
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar_next643, 100
  br i1 %exitcond1146.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %274 = add nuw nsw i64 %polly.indvar648, %267
  %polly.access.mul.call2652 = mul nuw nsw i64 %274, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %273, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1145.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1143
  br i1 %exitcond1145.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit699, %polly.loop_exit641
  %indvar1313 = phi i64 [ %indvar.next1314, %polly.loop_exit699 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit699 ], [ %265, %polly.loop_exit641 ]
  %indvars.iv1152 = phi i64 [ %indvars.iv.next1153, %polly.loop_exit699 ], [ %264, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit699 ], [ %262, %polly.loop_exit641 ]
  %275 = mul nsw i64 %indvar1313, -32
  %276 = add i64 %259, %275
  %smax1315 = call i64 @llvm.smax.i64(i64 %276, i64 0)
  %277 = shl nuw nsw i64 %indvar1313, 5
  %278 = add i64 %261, %277
  %279 = add i64 %smax1315, %278
  %smax1154 = call i64 @llvm.smax.i64(i64 %indvars.iv1152, i64 0)
  %280 = add i64 %smax1154, %indvars.iv1157
  %281 = shl nsw i64 %polly.indvar659, 3
  %.not.not945 = icmp ugt i64 %281, %polly.indvar636
  %282 = shl nsw i64 %polly.indvar659, 5
  %283 = add nsw i64 %282, %266
  %284 = icmp sgt i64 %283, 0
  %285 = select i1 %284, i64 %283, i64 0
  %286 = add nsw i64 %283, 31
  %287 = icmp slt i64 %268, %286
  %288 = select i1 %287, i64 %268, i64 %286
  %polly.loop_guard686.not = icmp sgt i64 %285, %288
  br i1 %.not.not945, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit685.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit685.us ], [ 0, %polly.loop_header656 ]
  %289 = add nuw nsw i64 %polly.indvar665.us, %255
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  %polly.access.add.call1680.us = add nuw nsw i64 %289, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.mul.Packed_MemRef_call1526.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %289, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 1
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %289, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 2
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %289, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 3
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_exit685.us, label %polly.loop_header683.us

polly.loop_header683.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header683.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header683.us ], [ %285, %polly.loop_header662.us ]
  %290 = add nuw nsw i64 %polly.indvar687.us, %267
  %polly.access.mul.call1691.us = mul nsw i64 %290, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %289, %polly.access.mul.call1691.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695.us = add nuw nsw i64 %polly.indvar687.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526696.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1526696.us, align 8
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %polly.loop_cond689.not.not.us = icmp slt i64 %polly.indvar687.us, %288
  br i1 %polly.loop_cond689.not.not.us, label %polly.loop_header683.us, label %polly.loop_exit685.us

polly.loop_exit685.us:                            ; preds = %polly.loop_header683.us, %polly.loop_header662.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar_next666.us, 100
  br i1 %exitcond1149.not, label %polly.loop_header697.preheader, label %polly.loop_header662.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_exit699:                               ; preds = %polly.loop_exit706, %polly.loop_header697.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %indvars.iv.next1153 = add i64 %indvars.iv1152, -32
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 32
  %exitcond1164.not = icmp eq i64 %polly.indvar_next660, 38
  %indvar.next1314 = add i64 %indvar1313, 1
  br i1 %exitcond1164.not, label %polly.loop_exit658, label %polly.loop_header656

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit685
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit685 ], [ 0, %polly.loop_header656.split ]
  %291 = add nuw nsw i64 %polly.indvar665, %255
  %polly.access.mul.Packed_MemRef_call1526694 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header683

polly.loop_exit685:                               ; preds = %polly.loop_header683
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next666, 100
  br i1 %exitcond1147.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_header697.preheader:                   ; preds = %polly.loop_exit685, %polly.loop_exit685.us, %polly.loop_header656.split
  %292 = sub nsw i64 %267, %282
  %293 = icmp sgt i64 %292, 0
  %294 = select i1 %293, i64 %292, i64 0
  %295 = mul nsw i64 %polly.indvar659, -32
  %296 = icmp slt i64 %295, -1168
  %297 = select i1 %296, i64 %295, i64 -1168
  %298 = add nsw i64 %297, 1199
  %polly.loop_guard707.not = icmp sgt i64 %294, %298
  br i1 %polly.loop_guard707.not, label %polly.loop_exit699, label %polly.loop_header697

polly.loop_header683:                             ; preds = %polly.loop_header662, %polly.loop_header683
  %polly.indvar687 = phi i64 [ %polly.indvar_next688, %polly.loop_header683 ], [ %285, %polly.loop_header662 ]
  %299 = add nuw nsw i64 %polly.indvar687, %267
  %polly.access.mul.call1691 = mul nsw i64 %299, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %291, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695 = add nuw nsw i64 %polly.indvar687, %polly.access.mul.Packed_MemRef_call1526694
  %polly.access.Packed_MemRef_call1526696 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1526696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %polly.loop_cond689.not.not = icmp slt i64 %polly.indvar687, %288
  br i1 %polly.loop_cond689.not.not, label %polly.loop_header683, label %polly.loop_exit685

polly.loop_header697:                             ; preds = %polly.loop_header697.preheader, %polly.loop_exit706
  %polly.indvar700 = phi i64 [ %polly.indvar_next701, %polly.loop_exit706 ], [ 0, %polly.loop_header697.preheader ]
  %polly.access.mul.Packed_MemRef_call1526719 = mul nuw nsw i64 %polly.indvar700, 1200
  br label %polly.loop_header704

polly.loop_exit706:                               ; preds = %polly.loop_exit714
  %polly.indvar_next701 = add nuw nsw i64 %polly.indvar700, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next701, 100
  br i1 %exitcond1163.not, label %polly.loop_exit699, label %polly.loop_header697

polly.loop_header704:                             ; preds = %polly.loop_header697, %polly.loop_exit714
  %indvar1316 = phi i64 [ 0, %polly.loop_header697 ], [ %indvar.next1317, %polly.loop_exit714 ]
  %indvars.iv1159 = phi i64 [ %280, %polly.loop_header697 ], [ %indvars.iv.next1160, %polly.loop_exit714 ]
  %polly.indvar708 = phi i64 [ %294, %polly.loop_header697 ], [ %polly.indvar_next709, %polly.loop_exit714 ]
  %300 = add i64 %279, %indvar1316
  %smin1318 = call i64 @llvm.smin.i64(i64 %300, i64 3)
  %301 = add nsw i64 %smin1318, 1
  %smin1161 = call i64 @llvm.smin.i64(i64 %indvars.iv1159, i64 3)
  %302 = add nsw i64 %polly.indvar708, %283
  %polly.loop_guard7151208 = icmp sgt i64 %302, -1
  br i1 %polly.loop_guard7151208, label %polly.loop_header712.preheader, label %polly.loop_exit714

polly.loop_header712.preheader:                   ; preds = %polly.loop_header704
  %303 = add nuw nsw i64 %polly.indvar708, %282
  %polly.access.add.Packed_MemRef_call2528724 = add nsw i64 %302, %polly.access.mul.Packed_MemRef_call1526719
  %polly.access.Packed_MemRef_call2528725 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724
  %_p_scalar_726 = load double, double* %polly.access.Packed_MemRef_call2528725, align 8
  %polly.access.Packed_MemRef_call1526733 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724
  %_p_scalar_734 = load double, double* %polly.access.Packed_MemRef_call1526733, align 8
  %304 = mul i64 %303, 9600
  %min.iters.check1319 = icmp ult i64 %301, 4
  br i1 %min.iters.check1319, label %polly.loop_header712.preheader1442, label %vector.ph1320

vector.ph1320:                                    ; preds = %polly.loop_header712.preheader
  %n.vec1322 = and i64 %301, -4
  %broadcast.splatinsert1328 = insertelement <4 x double> poison, double %_p_scalar_726, i32 0
  %broadcast.splat1329 = shufflevector <4 x double> %broadcast.splatinsert1328, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1331 = insertelement <4 x double> poison, double %_p_scalar_734, i32 0
  %broadcast.splat1332 = shufflevector <4 x double> %broadcast.splatinsert1331, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1320
  %index1323 = phi i64 [ 0, %vector.ph1320 ], [ %index.next1324, %vector.body1312 ]
  %305 = add nuw nsw i64 %index1323, %267
  %306 = add nuw nsw i64 %index1323, %polly.access.mul.Packed_MemRef_call1526719
  %307 = getelementptr double, double* %Packed_MemRef_call1526, i64 %306
  %308 = bitcast double* %307 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %308, align 8
  %309 = fmul fast <4 x double> %broadcast.splat1329, %wide.load1327
  %310 = getelementptr double, double* %Packed_MemRef_call2528, i64 %306
  %311 = bitcast double* %310 to <4 x double>*
  %wide.load1330 = load <4 x double>, <4 x double>* %311, align 8
  %312 = fmul fast <4 x double> %broadcast.splat1332, %wide.load1330
  %313 = shl i64 %305, 3
  %314 = add i64 %313, %304
  %315 = getelementptr i8, i8* %call, i64 %314
  %316 = bitcast i8* %315 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %316, align 8, !alias.scope !99, !noalias !101
  %317 = fadd fast <4 x double> %312, %309
  %318 = fmul fast <4 x double> %317, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %319 = fadd fast <4 x double> %318, %wide.load1333
  %320 = bitcast i8* %315 to <4 x double>*
  store <4 x double> %319, <4 x double>* %320, align 8, !alias.scope !99, !noalias !101
  %index.next1324 = add i64 %index1323, 4
  %321 = icmp eq i64 %index.next1324, %n.vec1322
  br i1 %321, label %middle.block1310, label %vector.body1312, !llvm.loop !110

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1326 = icmp eq i64 %301, %n.vec1322
  br i1 %cmp.n1326, label %polly.loop_exit714, label %polly.loop_header712.preheader1442

polly.loop_header712.preheader1442:               ; preds = %polly.loop_header712.preheader, %middle.block1310
  %polly.indvar716.ph = phi i64 [ 0, %polly.loop_header712.preheader ], [ %n.vec1322, %middle.block1310 ]
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_header712, %middle.block1310, %polly.loop_header704
  %polly.indvar_next709 = add nuw nsw i64 %polly.indvar708, 1
  %polly.loop_cond710.not.not = icmp slt i64 %polly.indvar708, %298
  %indvars.iv.next1160 = add i64 %indvars.iv1159, 1
  %indvar.next1317 = add i64 %indvar1316, 1
  br i1 %polly.loop_cond710.not.not, label %polly.loop_header704, label %polly.loop_exit706

polly.loop_header712:                             ; preds = %polly.loop_header712.preheader1442, %polly.loop_header712
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_header712 ], [ %polly.indvar716.ph, %polly.loop_header712.preheader1442 ]
  %322 = add nuw nsw i64 %polly.indvar716, %267
  %polly.access.add.Packed_MemRef_call1526720 = add nuw nsw i64 %polly.indvar716, %polly.access.mul.Packed_MemRef_call1526719
  %polly.access.Packed_MemRef_call1526721 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720
  %_p_scalar_722 = load double, double* %polly.access.Packed_MemRef_call1526721, align 8
  %p_mul27.i = fmul fast double %_p_scalar_726, %_p_scalar_722
  %polly.access.Packed_MemRef_call2528729 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720
  %_p_scalar_730 = load double, double* %polly.access.Packed_MemRef_call2528729, align 8
  %p_mul37.i = fmul fast double %_p_scalar_734, %_p_scalar_730
  %323 = shl i64 %322, 3
  %324 = add i64 %323, %304
  %scevgep735 = getelementptr i8, i8* %call, i64 %324
  %scevgep735736 = bitcast i8* %scevgep735 to double*
  %_p_scalar_737 = load double, double* %scevgep735736, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_737
  store double %p_add42.i, double* %scevgep735736, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar716, %smin1161
  br i1 %exitcond1162.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !111

polly.loop_header864:                             ; preds = %entry, %polly.loop_exit872
  %indvars.iv1193 = phi i64 [ %indvars.iv.next1194, %polly.loop_exit872 ], [ 0, %entry ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %entry ]
  %smin1195 = call i64 @llvm.smin.i64(i64 %indvars.iv1193, i64 -1168)
  %325 = shl nsw i64 %polly.indvar867, 5
  %326 = add nsw i64 %smin1195, 1199
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1194 = add nsw i64 %indvars.iv1193, -32
  %exitcond1198.not = icmp eq i64 %polly.indvar_next868, 38
  br i1 %exitcond1198.not, label %polly.loop_header891, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %indvars.iv1189 = phi i64 [ %indvars.iv.next1190, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %327 = mul nsw i64 %polly.indvar873, -32
  %smin1239 = call i64 @llvm.smin.i64(i64 %327, i64 -1168)
  %328 = add nsw i64 %smin1239, 1200
  %smin1191 = call i64 @llvm.smin.i64(i64 %indvars.iv1189, i64 -1168)
  %329 = shl nsw i64 %polly.indvar873, 5
  %330 = add nsw i64 %smin1191, 1199
  br label %polly.loop_header876

polly.loop_exit878:                               ; preds = %polly.loop_exit884
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %indvars.iv.next1190 = add nsw i64 %indvars.iv1189, -32
  %exitcond1197.not = icmp eq i64 %polly.indvar_next874, 38
  br i1 %exitcond1197.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_exit884, %polly.loop_header870
  %polly.indvar879 = phi i64 [ 0, %polly.loop_header870 ], [ %polly.indvar_next880, %polly.loop_exit884 ]
  %331 = add nuw nsw i64 %polly.indvar879, %325
  %332 = trunc i64 %331 to i32
  %333 = mul nuw nsw i64 %331, 9600
  %min.iters.check = icmp eq i64 %328, 0
  br i1 %min.iters.check, label %polly.loop_header882, label %vector.ph1240

vector.ph1240:                                    ; preds = %polly.loop_header876
  %broadcast.splatinsert1247 = insertelement <4 x i64> poison, i64 %329, i32 0
  %broadcast.splat1248 = shufflevector <4 x i64> %broadcast.splatinsert1247, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1249 = insertelement <4 x i32> poison, i32 %332, i32 0
  %broadcast.splat1250 = shufflevector <4 x i32> %broadcast.splatinsert1249, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %vector.ph1240
  %index1241 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1242, %vector.body1238 ]
  %vec.ind1245 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1240 ], [ %vec.ind.next1246, %vector.body1238 ]
  %334 = add nuw nsw <4 x i64> %vec.ind1245, %broadcast.splat1248
  %335 = trunc <4 x i64> %334 to <4 x i32>
  %336 = mul <4 x i32> %broadcast.splat1250, %335
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
  %index.next1242 = add i64 %index1241, 4
  %vec.ind.next1246 = add <4 x i64> %vec.ind1245, <i64 4, i64 4, i64 4, i64 4>
  %346 = icmp eq i64 %index.next1242, %328
  br i1 %346, label %polly.loop_exit884, label %vector.body1238, !llvm.loop !117

polly.loop_exit884:                               ; preds = %vector.body1238, %polly.loop_header882
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1196.not = icmp eq i64 %polly.indvar879, %326
  br i1 %exitcond1196.not, label %polly.loop_exit878, label %polly.loop_header876

polly.loop_header882:                             ; preds = %polly.loop_header876, %polly.loop_header882
  %polly.indvar885 = phi i64 [ %polly.indvar_next886, %polly.loop_header882 ], [ 0, %polly.loop_header876 ]
  %347 = add nuw nsw i64 %polly.indvar885, %329
  %348 = trunc i64 %347 to i32
  %349 = mul i32 %348, %332
  %350 = add i32 %349, 3
  %351 = urem i32 %350, 1200
  %p_conv31.i = sitofp i32 %351 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %352 = shl i64 %347, 3
  %353 = add nuw nsw i64 %352, %333
  %scevgep888 = getelementptr i8, i8* %call, i64 %353
  %scevgep888889 = bitcast i8* %scevgep888 to double*
  store double %p_div33.i, double* %scevgep888889, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next886 = add nuw nsw i64 %polly.indvar885, 1
  %exitcond1192.not = icmp eq i64 %polly.indvar885, %330
  br i1 %exitcond1192.not, label %polly.loop_exit884, label %polly.loop_header882, !llvm.loop !118

polly.loop_header891:                             ; preds = %polly.loop_exit872, %polly.loop_exit899
  %indvars.iv1183 = phi i64 [ %indvars.iv.next1184, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %smin1185 = call i64 @llvm.smin.i64(i64 %indvars.iv1183, i64 -1168)
  %354 = shl nsw i64 %polly.indvar894, 5
  %355 = add nsw i64 %smin1185, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, -32
  %exitcond1188.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1188.not, label %polly.loop_header917, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1179 = phi i64 [ %indvars.iv.next1180, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %356 = mul nsw i64 %polly.indvar900, -32
  %smin1254 = call i64 @llvm.smin.i64(i64 %356, i64 -968)
  %357 = add nsw i64 %smin1254, 1000
  %smin1181 = call i64 @llvm.smin.i64(i64 %indvars.iv1179, i64 -968)
  %358 = shl nsw i64 %polly.indvar900, 5
  %359 = add nsw i64 %smin1181, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1180 = add nsw i64 %indvars.iv1179, -32
  %exitcond1187.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1187.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %360 = add nuw nsw i64 %polly.indvar906, %354
  %361 = trunc i64 %360 to i32
  %362 = mul nuw nsw i64 %360, 8000
  %min.iters.check1255 = icmp eq i64 %357, 0
  br i1 %min.iters.check1255, label %polly.loop_header909, label %vector.ph1256

vector.ph1256:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1265 = insertelement <4 x i64> poison, i64 %358, i32 0
  %broadcast.splat1266 = shufflevector <4 x i64> %broadcast.splatinsert1265, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1267 = insertelement <4 x i32> poison, i32 %361, i32 0
  %broadcast.splat1268 = shufflevector <4 x i32> %broadcast.splatinsert1267, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %vector.ph1256
  %index1259 = phi i64 [ 0, %vector.ph1256 ], [ %index.next1260, %vector.body1253 ]
  %vec.ind1263 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1256 ], [ %vec.ind.next1264, %vector.body1253 ]
  %363 = add nuw nsw <4 x i64> %vec.ind1263, %broadcast.splat1266
  %364 = trunc <4 x i64> %363 to <4 x i32>
  %365 = mul <4 x i32> %broadcast.splat1268, %364
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
  %index.next1260 = add i64 %index1259, 4
  %vec.ind.next1264 = add <4 x i64> %vec.ind1263, <i64 4, i64 4, i64 4, i64 4>
  %375 = icmp eq i64 %index.next1260, %357
  br i1 %375, label %polly.loop_exit911, label %vector.body1253, !llvm.loop !120

polly.loop_exit911:                               ; preds = %vector.body1253, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar906, %355
  br i1 %exitcond1186.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %376 = add nuw nsw i64 %polly.indvar912, %358
  %377 = trunc i64 %376 to i32
  %378 = mul i32 %377, %361
  %379 = add i32 %378, 2
  %380 = urem i32 %379, 1000
  %p_conv10.i = sitofp i32 %380 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %381 = shl i64 %376, 3
  %382 = add nuw nsw i64 %381, %362
  %scevgep915 = getelementptr i8, i8* %call2, i64 %382
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div12.i, double* %scevgep915916, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1182.not = icmp eq i64 %polly.indvar912, %359
  br i1 %exitcond1182.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !121

polly.loop_header917:                             ; preds = %polly.loop_exit899, %polly.loop_exit925
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %smin1175 = call i64 @llvm.smin.i64(i64 %indvars.iv1173, i64 -1168)
  %383 = shl nsw i64 %polly.indvar920, 5
  %384 = add nsw i64 %smin1175, 1199
  br label %polly.loop_header923

polly.loop_exit925:                               ; preds = %polly.loop_exit931
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %indvars.iv.next1174 = add nsw i64 %indvars.iv1173, -32
  %exitcond1178.not = icmp eq i64 %polly.indvar_next921, 38
  br i1 %exitcond1178.not, label %init_array.exit, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_exit931, %polly.loop_header917
  %indvars.iv1169 = phi i64 [ %indvars.iv.next1170, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %385 = mul nsw i64 %polly.indvar926, -32
  %smin1272 = call i64 @llvm.smin.i64(i64 %385, i64 -968)
  %386 = add nsw i64 %smin1272, 1000
  %smin1171 = call i64 @llvm.smin.i64(i64 %indvars.iv1169, i64 -968)
  %387 = shl nsw i64 %polly.indvar926, 5
  %388 = add nsw i64 %smin1171, 999
  br label %polly.loop_header929

polly.loop_exit931:                               ; preds = %polly.loop_exit937
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %indvars.iv.next1170 = add nsw i64 %indvars.iv1169, -32
  %exitcond1177.not = icmp eq i64 %polly.indvar_next927, 32
  br i1 %exitcond1177.not, label %polly.loop_exit925, label %polly.loop_header923

polly.loop_header929:                             ; preds = %polly.loop_exit937, %polly.loop_header923
  %polly.indvar932 = phi i64 [ 0, %polly.loop_header923 ], [ %polly.indvar_next933, %polly.loop_exit937 ]
  %389 = add nuw nsw i64 %polly.indvar932, %383
  %390 = trunc i64 %389 to i32
  %391 = mul nuw nsw i64 %389, 8000
  %min.iters.check1273 = icmp eq i64 %386, 0
  br i1 %min.iters.check1273, label %polly.loop_header935, label %vector.ph1274

vector.ph1274:                                    ; preds = %polly.loop_header929
  %broadcast.splatinsert1283 = insertelement <4 x i64> poison, i64 %387, i32 0
  %broadcast.splat1284 = shufflevector <4 x i64> %broadcast.splatinsert1283, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1285 = insertelement <4 x i32> poison, i32 %390, i32 0
  %broadcast.splat1286 = shufflevector <4 x i32> %broadcast.splatinsert1285, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1274
  %index1277 = phi i64 [ 0, %vector.ph1274 ], [ %index.next1278, %vector.body1271 ]
  %vec.ind1281 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1274 ], [ %vec.ind.next1282, %vector.body1271 ]
  %392 = add nuw nsw <4 x i64> %vec.ind1281, %broadcast.splat1284
  %393 = trunc <4 x i64> %392 to <4 x i32>
  %394 = mul <4 x i32> %broadcast.splat1286, %393
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
  %index.next1278 = add i64 %index1277, 4
  %vec.ind.next1282 = add <4 x i64> %vec.ind1281, <i64 4, i64 4, i64 4, i64 4>
  %404 = icmp eq i64 %index.next1278, %386
  br i1 %404, label %polly.loop_exit937, label %vector.body1271, !llvm.loop !123

polly.loop_exit937:                               ; preds = %vector.body1271, %polly.loop_header935
  %polly.indvar_next933 = add nuw nsw i64 %polly.indvar932, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar932, %384
  br i1 %exitcond1176.not, label %polly.loop_exit931, label %polly.loop_header929

polly.loop_header935:                             ; preds = %polly.loop_header929, %polly.loop_header935
  %polly.indvar938 = phi i64 [ %polly.indvar_next939, %polly.loop_header935 ], [ 0, %polly.loop_header929 ]
  %405 = add nuw nsw i64 %polly.indvar938, %387
  %406 = trunc i64 %405 to i32
  %407 = mul i32 %406, %390
  %408 = add i32 %407, 1
  %409 = urem i32 %408, 1200
  %p_conv.i = sitofp i32 %409 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %410 = shl i64 %405, 3
  %411 = add nuw nsw i64 %410, %391
  %scevgep942 = getelementptr i8, i8* %call1, i64 %411
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div.i, double* %scevgep942943, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next939 = add nuw nsw i64 %polly.indvar938, 1
  %exitcond1172.not = icmp eq i64 %polly.indvar938, %388
  br i1 %exitcond1172.not, label %polly.loop_exit937, label %polly.loop_header935, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 4}
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
