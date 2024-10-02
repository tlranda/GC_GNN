; ModuleID = 'syr2k_exhaustive/mmp_all_SM_760.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_760.c"
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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall136 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
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
  %97 = mul nuw nsw i64 %polly.indvar203, 20
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next204, 50
  br i1 %exitcond1114.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %118, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = shl nuw nsw i64 %polly.indvar209, 3
  %99 = shl nuw nsw i64 %polly.indvar209, 3
  %100 = and i64 %99, 9223372036854775744
  %101 = sub nsw i64 %98, %100
  %102 = mul nsw i64 %polly.indvar209, -8
  %103 = add i64 %102, %100
  %104 = lshr i64 %polly.indvar209, 3
  %105 = shl nuw nsw i64 %104, 6
  %106 = sub nsw i64 %indvars.iv1100, %105
  %107 = add i64 %indvars.iv1104, %105
  %108 = mul nsw i64 %polly.indvar209, -8
  %109 = shl nsw i64 %polly.indvar209, 3
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %110 = add nsw i64 %108, 1199
  %polly.access.mul.call1247.us = mul nsw i64 %polly.indvar209, 8000
  %111 = or i64 %109, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %109, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %112, 1000
  %113 = or i64 %109, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %113, 1000
  %114 = or i64 %109, 4
  %polly.access.mul.call1247.us.4 = mul nuw nsw i64 %114, 1000
  %115 = or i64 %109, 5
  %polly.access.mul.call1247.us.5 = mul nuw nsw i64 %115, 1000
  %116 = or i64 %109, 6
  %polly.access.mul.call1247.us.6 = mul nuw nsw i64 %116, 1000
  %117 = or i64 %109, 7
  %polly.access.mul.call1247.us.7 = mul nuw nsw i64 %117, 1000
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %118 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next1101 = add nuw nsw i64 %indvars.iv1100, 8
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -8
  %exitcond1113.not = icmp eq i64 %118, 150
  br i1 %exitcond1113.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %119 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next216, 20
  br i1 %exitcond1096.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %120 = add nuw nsw i64 %polly.indvar221, %109
  %polly.access.mul.call2225 = mul nuw nsw i64 %120, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %119, %polly.access.mul.call2225
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
  %121 = mul nsw i64 %indvar1413, -64
  %122 = add i64 %101, %121
  %smax1415 = call i64 @llvm.smax.i64(i64 %122, i64 0)
  %123 = shl nuw nsw i64 %indvar1413, 6
  %124 = add i64 %103, %123
  %125 = add i64 %smax1415, %124
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1102, i64 0)
  %126 = add i64 %smax, %indvars.iv1106
  %127 = shl nsw i64 %polly.indvar231, 3
  %.not.not = icmp ugt i64 %127, %polly.indvar209
  %128 = shl nsw i64 %polly.indvar231, 6
  %129 = add nsw i64 %128, %108
  %130 = icmp sgt i64 %129, 0
  %131 = select i1 %130, i64 %129, i64 0
  %132 = add nsw i64 %129, 63
  %133 = icmp slt i64 %110, %132
  %134 = select i1 %133, i64 %110, i64 %132
  %polly.loop_guard.not = icmp sgt i64 %131, %134
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit252.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit252.us ], [ 0, %polly.loop_header228 ]
  %135 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  %polly.access.add.call1248.us = add nuw nsw i64 %135, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %135, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %135, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %135, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1248.us.4 = add nuw nsw i64 %135, %polly.access.mul.call1247.us.4
  %polly.access.call1249.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.4
  %polly.access.call1249.load.us.4 = load double, double* %polly.access.call1249.us.4, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1249.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1248.us.5 = add nuw nsw i64 %135, %polly.access.mul.call1247.us.5
  %polly.access.call1249.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.5
  %polly.access.call1249.load.us.5 = load double, double* %polly.access.call1249.us.5, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1249.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1248.us.6 = add nuw nsw i64 %135, %polly.access.mul.call1247.us.6
  %polly.access.call1249.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.6
  %polly.access.call1249.load.us.6 = load double, double* %polly.access.call1249.us.6, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1249.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1248.us.7 = add nuw nsw i64 %135, %polly.access.mul.call1247.us.7
  %polly.access.call1249.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.7
  %polly.access.call1249.load.us.7 = load double, double* %polly.access.call1249.us.7, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1249.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit252.us, label %polly.loop_header250.us

polly.loop_header250.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header250.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %131, %polly.loop_header234.us ]
  %136 = add nuw nsw i64 %polly.indvar253.us, %109
  %polly.access.mul.call1257.us = mul nsw i64 %136, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %135, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %134
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.loop_exit252.us

polly.loop_exit252.us:                            ; preds = %polly.loop_header250.us, %polly.loop_header234.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next238.us, 20
  br i1 %exitcond1099.not, label %polly.loop_header263.preheader, label %polly.loop_header234.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_exit265:                               ; preds = %polly.loop_exit272, %polly.loop_header263.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1103 = add i64 %indvars.iv1102, -64
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 64
  %exitcond1112.not = icmp eq i64 %polly.indvar_next232, 19
  %indvar.next1414 = add i64 %indvar1413, 1
  br i1 %exitcond1112.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit252
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit252 ], [ 0, %polly.loop_header228.split ]
  %137 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next238, 20
  br i1 %exitcond1097.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.loop_exit252, %polly.loop_exit252.us, %polly.loop_header228.split
  %138 = sub nsw i64 %109, %128
  %139 = icmp sgt i64 %138, 0
  %140 = select i1 %139, i64 %138, i64 0
  %141 = mul nsw i64 %polly.indvar231, -64
  %142 = icmp slt i64 %141, -1136
  %143 = select i1 %142, i64 %141, i64 -1136
  %144 = add nsw i64 %143, 1199
  %polly.loop_guard273.not = icmp sgt i64 %140, %144
  br i1 %polly.loop_guard273.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header250:                             ; preds = %polly.loop_header234, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %131, %polly.loop_header234 ]
  %145 = add nuw nsw i64 %polly.indvar253, %109
  %polly.access.mul.call1257 = mul nsw i64 %145, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %137, %polly.access.mul.call1257
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %134
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_exit252

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_exit272
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_exit272 ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1285 = mul nuw nsw i64 %polly.indvar266, 1200
  br label %polly.loop_header270

polly.loop_exit272:                               ; preds = %polly.loop_exit280
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next267, 20
  br i1 %exitcond1111.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header270:                             ; preds = %polly.loop_header263, %polly.loop_exit280
  %indvar1416 = phi i64 [ 0, %polly.loop_header263 ], [ %indvar.next1417, %polly.loop_exit280 ]
  %indvars.iv1108 = phi i64 [ %126, %polly.loop_header263 ], [ %indvars.iv.next1109, %polly.loop_exit280 ]
  %polly.indvar274 = phi i64 [ %140, %polly.loop_header263 ], [ %polly.indvar_next275, %polly.loop_exit280 ]
  %146 = add i64 %125, %indvar1416
  %smin1418 = call i64 @llvm.smin.i64(i64 %146, i64 7)
  %147 = add nsw i64 %smin1418, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 7)
  %148 = add nsw i64 %polly.indvar274, %129
  %polly.loop_guard2811206 = icmp sgt i64 %148, -1
  br i1 %polly.loop_guard2811206, label %polly.loop_header278.preheader, label %polly.loop_exit280

polly.loop_header278.preheader:                   ; preds = %polly.loop_header270
  %149 = add nuw nsw i64 %polly.indvar274, %128
  %polly.access.add.Packed_MemRef_call2290 = add nsw i64 %148, %polly.access.mul.Packed_MemRef_call1285
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %polly.access.Packed_MemRef_call1299 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290
  %_p_scalar_300 = load double, double* %polly.access.Packed_MemRef_call1299, align 8
  %150 = mul i64 %149, 9600
  %min.iters.check1419 = icmp ult i64 %147, 4
  br i1 %min.iters.check1419, label %polly.loop_header278.preheader1434, label %vector.ph1420

vector.ph1420:                                    ; preds = %polly.loop_header278.preheader
  %n.vec1422 = and i64 %147, -4
  %broadcast.splatinsert1428 = insertelement <4 x double> poison, double %_p_scalar_292, i32 0
  %broadcast.splat1429 = shufflevector <4 x double> %broadcast.splatinsert1428, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1431 = insertelement <4 x double> poison, double %_p_scalar_300, i32 0
  %broadcast.splat1432 = shufflevector <4 x double> %broadcast.splatinsert1431, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1412

vector.body1412:                                  ; preds = %vector.body1412, %vector.ph1420
  %index1423 = phi i64 [ 0, %vector.ph1420 ], [ %index.next1424, %vector.body1412 ]
  %151 = add nuw nsw i64 %index1423, %109
  %152 = add nuw nsw i64 %index1423, %polly.access.mul.Packed_MemRef_call1285
  %153 = getelementptr double, double* %Packed_MemRef_call1, i64 %152
  %154 = bitcast double* %153 to <4 x double>*
  %wide.load1427 = load <4 x double>, <4 x double>* %154, align 8
  %155 = fmul fast <4 x double> %broadcast.splat1429, %wide.load1427
  %156 = getelementptr double, double* %Packed_MemRef_call2, i64 %152
  %157 = bitcast double* %156 to <4 x double>*
  %wide.load1430 = load <4 x double>, <4 x double>* %157, align 8
  %158 = fmul fast <4 x double> %broadcast.splat1432, %wide.load1430
  %159 = shl i64 %151, 3
  %160 = add i64 %159, %150
  %161 = getelementptr i8, i8* %call, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1433 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !72, !noalias !74
  %163 = fadd fast <4 x double> %158, %155
  %164 = fmul fast <4 x double> %163, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %165 = fadd fast <4 x double> %164, %wide.load1433
  %166 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !72, !noalias !74
  %index.next1424 = add i64 %index1423, 4
  %167 = icmp eq i64 %index.next1424, %n.vec1422
  br i1 %167, label %middle.block1410, label %vector.body1412, !llvm.loop !84

middle.block1410:                                 ; preds = %vector.body1412
  %cmp.n1426 = icmp eq i64 %147, %n.vec1422
  br i1 %cmp.n1426, label %polly.loop_exit280, label %polly.loop_header278.preheader1434

polly.loop_header278.preheader1434:               ; preds = %polly.loop_header278.preheader, %middle.block1410
  %polly.indvar282.ph = phi i64 [ 0, %polly.loop_header278.preheader ], [ %n.vec1422, %middle.block1410 ]
  br label %polly.loop_header278

polly.loop_exit280:                               ; preds = %polly.loop_header278, %middle.block1410, %polly.loop_header270
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %polly.loop_cond276.not.not = icmp slt i64 %polly.indvar274, %144
  %indvars.iv.next1109 = add i64 %indvars.iv1108, 1
  %indvar.next1417 = add i64 %indvar1416, 1
  br i1 %polly.loop_cond276.not.not, label %polly.loop_header270, label %polly.loop_exit272

polly.loop_header278:                             ; preds = %polly.loop_header278.preheader1434, %polly.loop_header278
  %polly.indvar282 = phi i64 [ %polly.indvar_next283, %polly.loop_header278 ], [ %polly.indvar282.ph, %polly.loop_header278.preheader1434 ]
  %168 = add nuw nsw i64 %polly.indvar282, %109
  %polly.access.add.Packed_MemRef_call1286 = add nuw nsw i64 %polly.indvar282, %polly.access.mul.Packed_MemRef_call1285
  %polly.access.Packed_MemRef_call1287 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call1287, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_292, %_p_scalar_288
  %polly.access.Packed_MemRef_call2295 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call2295, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_300, %_p_scalar_296
  %169 = shl i64 %168, 3
  %170 = add i64 %169, %150
  %scevgep301 = getelementptr i8, i8* %call, i64 %170
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
  %malloccall308 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall310 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1349 = phi i64 [ %indvar.next1350, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %171 = add i64 %indvar1349, 1
  %172 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %172
  %min.iters.check1351 = icmp ult i64 %171, 4
  br i1 %min.iters.check1351, label %polly.loop_header400.preheader, label %vector.ph1352

vector.ph1352:                                    ; preds = %polly.loop_header394
  %n.vec1354 = and i64 %171, -4
  br label %vector.body1348

vector.body1348:                                  ; preds = %vector.body1348, %vector.ph1352
  %index1355 = phi i64 [ 0, %vector.ph1352 ], [ %index.next1356, %vector.body1348 ]
  %173 = shl nuw nsw i64 %index1355, 3
  %174 = getelementptr i8, i8* %scevgep406, i64 %173
  %175 = bitcast i8* %174 to <4 x double>*
  %wide.load1359 = load <4 x double>, <4 x double>* %175, align 8, !alias.scope !86, !noalias !88
  %176 = fmul fast <4 x double> %wide.load1359, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %177 = bitcast i8* %174 to <4 x double>*
  store <4 x double> %176, <4 x double>* %177, align 8, !alias.scope !86, !noalias !88
  %index.next1356 = add i64 %index1355, 4
  %178 = icmp eq i64 %index.next1356, %n.vec1354
  br i1 %178, label %middle.block1346, label %vector.body1348, !llvm.loop !93

middle.block1346:                                 ; preds = %vector.body1348
  %cmp.n1358 = icmp eq i64 %171, %n.vec1354
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
  %179 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %179
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1141.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !94

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %180 = mul nuw nsw i64 %polly.indvar413, 20
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit441
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next414, 50
  br i1 %exitcond1140.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit441, %polly.loop_header410
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit441 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %201, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %181 = shl nuw nsw i64 %polly.indvar419, 3
  %182 = shl nuw nsw i64 %polly.indvar419, 3
  %183 = and i64 %182, 9223372036854775744
  %184 = sub nsw i64 %181, %183
  %185 = mul nsw i64 %polly.indvar419, -8
  %186 = add i64 %185, %183
  %187 = lshr i64 %polly.indvar419, 3
  %188 = shl nuw nsw i64 %187, 6
  %189 = sub nsw i64 %indvars.iv1124, %188
  %190 = add i64 %indvars.iv1129, %188
  %191 = mul nsw i64 %polly.indvar419, -8
  %192 = shl nsw i64 %polly.indvar419, 3
  br label %polly.loop_header422

polly.loop_exit424:                               ; preds = %polly.loop_exit430
  %193 = add nsw i64 %191, 1199
  %polly.access.mul.call1462.us = mul nsw i64 %polly.indvar419, 8000
  %194 = or i64 %192, 1
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %194, 1000
  %195 = or i64 %192, 2
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %195, 1000
  %196 = or i64 %192, 3
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %196, 1000
  %197 = or i64 %192, 4
  %polly.access.mul.call1462.us.4 = mul nuw nsw i64 %197, 1000
  %198 = or i64 %192, 5
  %polly.access.mul.call1462.us.5 = mul nuw nsw i64 %198, 1000
  %199 = or i64 %192, 6
  %polly.access.mul.call1462.us.6 = mul nuw nsw i64 %199, 1000
  %200 = or i64 %192, 7
  %polly.access.mul.call1462.us.7 = mul nuw nsw i64 %200, 1000
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit482
  %201 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -8
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 8
  %indvars.iv.next1130 = add nsw i64 %indvars.iv1129, -8
  %exitcond1139.not = icmp eq i64 %201, 150
  br i1 %exitcond1139.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_exit430, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_exit430 ]
  %202 = add nuw nsw i64 %polly.indvar425, %180
  %polly.access.mul.Packed_MemRef_call2311 = mul nuw nsw i64 %polly.indvar425, 1200
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_header428
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next426, 20
  br i1 %exitcond1120.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %203 = add nuw nsw i64 %polly.indvar431, %192
  %polly.access.mul.call2435 = mul nuw nsw i64 %203, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %202, %polly.access.mul.call2435
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
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit482 ], [ %190, %polly.loop_exit424 ]
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit482 ], [ %189, %polly.loop_exit424 ]
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit482 ], [ %187, %polly.loop_exit424 ]
  %204 = mul nsw i64 %indvar1363, -64
  %205 = add i64 %184, %204
  %smax1365 = call i64 @llvm.smax.i64(i64 %205, i64 0)
  %206 = shl nuw nsw i64 %indvar1363, 6
  %207 = add i64 %186, %206
  %208 = add i64 %smax1365, %207
  %smax1128 = call i64 @llvm.smax.i64(i64 %indvars.iv1126, i64 0)
  %209 = add i64 %smax1128, %indvars.iv1131
  %210 = shl nsw i64 %polly.indvar442, 3
  %.not.not944 = icmp ugt i64 %210, %polly.indvar419
  %211 = shl nsw i64 %polly.indvar442, 6
  %212 = add nsw i64 %211, %191
  %213 = icmp sgt i64 %212, 0
  %214 = select i1 %213, i64 %212, i64 0
  %215 = add nsw i64 %212, 63
  %216 = icmp slt i64 %193, %215
  %217 = select i1 %216, i64 %193, i64 %215
  %polly.loop_guard469.not = icmp sgt i64 %214, %217
  br i1 %.not.not944, label %polly.loop_header445.us, label %polly.loop_header439.split

polly.loop_header445.us:                          ; preds = %polly.loop_header439, %polly.loop_exit468.us
  %polly.indvar448.us = phi i64 [ %polly.indvar_next449.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header439 ]
  %218 = add nuw nsw i64 %polly.indvar448.us, %180
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar448.us, 1200
  %polly.access.add.call1463.us = add nuw nsw i64 %218, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.mul.Packed_MemRef_call1309.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %218, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 1
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1309.us.1, align 8
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %218, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 2
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1309.us.2, align 8
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %218, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 3
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1309.us.3, align 8
  %polly.access.add.call1463.us.4 = add nuw nsw i64 %218, %polly.access.mul.call1462.us.4
  %polly.access.call1464.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.4
  %polly.access.call1464.load.us.4 = load double, double* %polly.access.call1464.us.4, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 4
  %polly.access.Packed_MemRef_call1309.us.4 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.4
  store double %polly.access.call1464.load.us.4, double* %polly.access.Packed_MemRef_call1309.us.4, align 8
  %polly.access.add.call1463.us.5 = add nuw nsw i64 %218, %polly.access.mul.call1462.us.5
  %polly.access.call1464.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.5
  %polly.access.call1464.load.us.5 = load double, double* %polly.access.call1464.us.5, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 5
  %polly.access.Packed_MemRef_call1309.us.5 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.5
  store double %polly.access.call1464.load.us.5, double* %polly.access.Packed_MemRef_call1309.us.5, align 8
  %polly.access.add.call1463.us.6 = add nuw nsw i64 %218, %polly.access.mul.call1462.us.6
  %polly.access.call1464.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.6
  %polly.access.call1464.load.us.6 = load double, double* %polly.access.call1464.us.6, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 6
  %polly.access.Packed_MemRef_call1309.us.6 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.6
  store double %polly.access.call1464.load.us.6, double* %polly.access.Packed_MemRef_call1309.us.6, align 8
  %polly.access.add.call1463.us.7 = add nuw nsw i64 %218, %polly.access.mul.call1462.us.7
  %polly.access.call1464.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.7
  %polly.access.call1464.load.us.7 = load double, double* %polly.access.call1464.us.7, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 7
  %polly.access.Packed_MemRef_call1309.us.7 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.7
  store double %polly.access.call1464.load.us.7, double* %polly.access.Packed_MemRef_call1309.us.7, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header466.us:                          ; preds = %polly.loop_header445.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %214, %polly.loop_header445.us ]
  %219 = add nuw nsw i64 %polly.indvar470.us, %192
  %polly.access.mul.call1474.us = mul nsw i64 %219, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %218, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309479.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1309479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %217
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_header445.us
  %polly.indvar_next449.us = add nuw nsw i64 %polly.indvar448.us, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar_next449.us, 20
  br i1 %exitcond1123.not, label %polly.loop_header480.preheader, label %polly.loop_header445.us

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_exit482:                               ; preds = %polly.loop_exit489, %polly.loop_header480.preheader
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %indvars.iv.next1127 = add i64 %indvars.iv1126, -64
  %indvars.iv.next1132 = add i64 %indvars.iv1131, 64
  %exitcond1138.not = icmp eq i64 %polly.indvar_next443, 19
  %indvar.next1364 = add i64 %indvar1363, 1
  br i1 %exitcond1138.not, label %polly.loop_exit441, label %polly.loop_header439

polly.loop_header445:                             ; preds = %polly.loop_header439.split, %polly.loop_exit468
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit468 ], [ 0, %polly.loop_header439.split ]
  %220 = add nuw nsw i64 %polly.indvar448, %180
  %polly.access.mul.Packed_MemRef_call1309477 = mul nuw nsw i64 %polly.indvar448, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next449, 20
  br i1 %exitcond1121.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header439.split
  %221 = sub nsw i64 %192, %211
  %222 = icmp sgt i64 %221, 0
  %223 = select i1 %222, i64 %221, i64 0
  %224 = mul nsw i64 %polly.indvar442, -64
  %225 = icmp slt i64 %224, -1136
  %226 = select i1 %225, i64 %224, i64 -1136
  %227 = add nsw i64 %226, 1199
  %polly.loop_guard490.not = icmp sgt i64 %223, %227
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header466:                             ; preds = %polly.loop_header445, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %214, %polly.loop_header445 ]
  %228 = add nuw nsw i64 %polly.indvar470, %192
  %polly.access.mul.call1474 = mul nsw i64 %228, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %220, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1309477
  %polly.access.Packed_MemRef_call1309479 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1309479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %217
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.loop_header480:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit489
  %polly.indvar483 = phi i64 [ %polly.indvar_next484, %polly.loop_exit489 ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1309502 = mul nuw nsw i64 %polly.indvar483, 1200
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_exit497
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next484, 20
  br i1 %exitcond1137.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header487:                             ; preds = %polly.loop_header480, %polly.loop_exit497
  %indvar1366 = phi i64 [ 0, %polly.loop_header480 ], [ %indvar.next1367, %polly.loop_exit497 ]
  %indvars.iv1133 = phi i64 [ %209, %polly.loop_header480 ], [ %indvars.iv.next1134, %polly.loop_exit497 ]
  %polly.indvar491 = phi i64 [ %223, %polly.loop_header480 ], [ %polly.indvar_next492, %polly.loop_exit497 ]
  %229 = add i64 %208, %indvar1366
  %smin1368 = call i64 @llvm.smin.i64(i64 %229, i64 7)
  %230 = add nsw i64 %smin1368, 1
  %smin1135 = call i64 @llvm.smin.i64(i64 %indvars.iv1133, i64 7)
  %231 = add nsw i64 %polly.indvar491, %212
  %polly.loop_guard4981207 = icmp sgt i64 %231, -1
  br i1 %polly.loop_guard4981207, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %232 = add nuw nsw i64 %polly.indvar491, %211
  %polly.access.add.Packed_MemRef_call2311507 = add nsw i64 %231, %polly.access.mul.Packed_MemRef_call1309502
  %polly.access.Packed_MemRef_call2311508 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2311508, align 8
  %polly.access.Packed_MemRef_call1309516 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1309516, align 8
  %233 = mul i64 %232, 9600
  %min.iters.check1369 = icmp ult i64 %230, 4
  br i1 %min.iters.check1369, label %polly.loop_header495.preheader1438, label %vector.ph1370

vector.ph1370:                                    ; preds = %polly.loop_header495.preheader
  %n.vec1372 = and i64 %230, -4
  %broadcast.splatinsert1378 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1379 = shufflevector <4 x double> %broadcast.splatinsert1378, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1381 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1382 = shufflevector <4 x double> %broadcast.splatinsert1381, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1362

vector.body1362:                                  ; preds = %vector.body1362, %vector.ph1370
  %index1373 = phi i64 [ 0, %vector.ph1370 ], [ %index.next1374, %vector.body1362 ]
  %234 = add nuw nsw i64 %index1373, %192
  %235 = add nuw nsw i64 %index1373, %polly.access.mul.Packed_MemRef_call1309502
  %236 = getelementptr double, double* %Packed_MemRef_call1309, i64 %235
  %237 = bitcast double* %236 to <4 x double>*
  %wide.load1377 = load <4 x double>, <4 x double>* %237, align 8
  %238 = fmul fast <4 x double> %broadcast.splat1379, %wide.load1377
  %239 = getelementptr double, double* %Packed_MemRef_call2311, i64 %235
  %240 = bitcast double* %239 to <4 x double>*
  %wide.load1380 = load <4 x double>, <4 x double>* %240, align 8
  %241 = fmul fast <4 x double> %broadcast.splat1382, %wide.load1380
  %242 = shl i64 %234, 3
  %243 = add i64 %242, %233
  %244 = getelementptr i8, i8* %call, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %245, align 8, !alias.scope !86, !noalias !88
  %246 = fadd fast <4 x double> %241, %238
  %247 = fmul fast <4 x double> %246, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %248 = fadd fast <4 x double> %247, %wide.load1383
  %249 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %248, <4 x double>* %249, align 8, !alias.scope !86, !noalias !88
  %index.next1374 = add i64 %index1373, 4
  %250 = icmp eq i64 %index.next1374, %n.vec1372
  br i1 %250, label %middle.block1360, label %vector.body1362, !llvm.loop !97

middle.block1360:                                 ; preds = %vector.body1362
  %cmp.n1376 = icmp eq i64 %230, %n.vec1372
  br i1 %cmp.n1376, label %polly.loop_exit497, label %polly.loop_header495.preheader1438

polly.loop_header495.preheader1438:               ; preds = %polly.loop_header495.preheader, %middle.block1360
  %polly.indvar499.ph = phi i64 [ 0, %polly.loop_header495.preheader ], [ %n.vec1372, %middle.block1360 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1360, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %227
  %indvars.iv.next1134 = add i64 %indvars.iv1133, 1
  %indvar.next1367 = add i64 %indvar1366, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_exit489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1438, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1438 ]
  %251 = add nuw nsw i64 %polly.indvar499, %192
  %polly.access.add.Packed_MemRef_call1309503 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1309502
  %polly.access.Packed_MemRef_call1309504 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1309504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2311512 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2311512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %252 = shl i64 %251, 3
  %253 = add i64 %252, %233
  %scevgep518 = getelementptr i8, i8* %call, i64 %253
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
  %254 = add i64 %indvar, 1
  %255 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %255
  %min.iters.check1301 = icmp ult i64 %254, 4
  br i1 %min.iters.check1301, label %polly.loop_header617.preheader, label %vector.ph1302

vector.ph1302:                                    ; preds = %polly.loop_header611
  %n.vec1304 = and i64 %254, -4
  br label %vector.body1300

vector.body1300:                                  ; preds = %vector.body1300, %vector.ph1302
  %index1305 = phi i64 [ 0, %vector.ph1302 ], [ %index.next1306, %vector.body1300 ]
  %256 = shl nuw nsw i64 %index1305, 3
  %257 = getelementptr i8, i8* %scevgep623, i64 %256
  %258 = bitcast i8* %257 to <4 x double>*
  %wide.load1309 = load <4 x double>, <4 x double>* %258, align 8, !alias.scope !99, !noalias !101
  %259 = fmul fast <4 x double> %wide.load1309, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %260 = bitcast i8* %257 to <4 x double>*
  store <4 x double> %259, <4 x double>* %260, align 8, !alias.scope !99, !noalias !101
  %index.next1306 = add i64 %index1305, 4
  %261 = icmp eq i64 %index.next1306, %n.vec1304
  br i1 %261, label %middle.block1298, label %vector.body1300, !llvm.loop !106

middle.block1298:                                 ; preds = %vector.body1300
  %cmp.n1308 = icmp eq i64 %254, %n.vec1304
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
  %262 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %262
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1167.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %263 = mul nuw nsw i64 %polly.indvar630, 20
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar_next631, 50
  br i1 %exitcond1166.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %284, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %264 = shl nuw nsw i64 %polly.indvar636, 3
  %265 = shl nuw nsw i64 %polly.indvar636, 3
  %266 = and i64 %265, 9223372036854775744
  %267 = sub nsw i64 %264, %266
  %268 = mul nsw i64 %polly.indvar636, -8
  %269 = add i64 %268, %266
  %270 = lshr i64 %polly.indvar636, 3
  %271 = shl nuw nsw i64 %270, 6
  %272 = sub nsw i64 %indvars.iv1150, %271
  %273 = add i64 %indvars.iv1155, %271
  %274 = mul nsw i64 %polly.indvar636, -8
  %275 = shl nsw i64 %polly.indvar636, 3
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %276 = add nsw i64 %274, 1199
  %polly.access.mul.call1679.us = mul nsw i64 %polly.indvar636, 8000
  %277 = or i64 %275, 1
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %277, 1000
  %278 = or i64 %275, 2
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %278, 1000
  %279 = or i64 %275, 3
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %279, 1000
  %280 = or i64 %275, 4
  %polly.access.mul.call1679.us.4 = mul nuw nsw i64 %280, 1000
  %281 = or i64 %275, 5
  %polly.access.mul.call1679.us.5 = mul nuw nsw i64 %281, 1000
  %282 = or i64 %275, 6
  %polly.access.mul.call1679.us.6 = mul nuw nsw i64 %282, 1000
  %283 = or i64 %275, 7
  %polly.access.mul.call1679.us.7 = mul nuw nsw i64 %283, 1000
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit699
  %284 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1144 = add nsw i64 %indvars.iv1143, -8
  %indvars.iv.next1151 = add nuw nsw i64 %indvars.iv1150, 8
  %indvars.iv.next1156 = add nsw i64 %indvars.iv1155, -8
  %exitcond1165.not = icmp eq i64 %284, 150
  br i1 %exitcond1165.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %285 = add nuw nsw i64 %polly.indvar642, %263
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar_next643, 20
  br i1 %exitcond1146.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %286 = add nuw nsw i64 %polly.indvar648, %275
  %polly.access.mul.call2652 = mul nuw nsw i64 %286, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %285, %polly.access.mul.call2652
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
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit699 ], [ %273, %polly.loop_exit641 ]
  %indvars.iv1152 = phi i64 [ %indvars.iv.next1153, %polly.loop_exit699 ], [ %272, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit699 ], [ %270, %polly.loop_exit641 ]
  %287 = mul nsw i64 %indvar1313, -64
  %288 = add i64 %267, %287
  %smax1315 = call i64 @llvm.smax.i64(i64 %288, i64 0)
  %289 = shl nuw nsw i64 %indvar1313, 6
  %290 = add i64 %269, %289
  %291 = add i64 %smax1315, %290
  %smax1154 = call i64 @llvm.smax.i64(i64 %indvars.iv1152, i64 0)
  %292 = add i64 %smax1154, %indvars.iv1157
  %293 = shl nsw i64 %polly.indvar659, 3
  %.not.not945 = icmp ugt i64 %293, %polly.indvar636
  %294 = shl nsw i64 %polly.indvar659, 6
  %295 = add nsw i64 %294, %274
  %296 = icmp sgt i64 %295, 0
  %297 = select i1 %296, i64 %295, i64 0
  %298 = add nsw i64 %295, 63
  %299 = icmp slt i64 %276, %298
  %300 = select i1 %299, i64 %276, i64 %298
  %polly.loop_guard686.not = icmp sgt i64 %297, %300
  br i1 %.not.not945, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit685.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit685.us ], [ 0, %polly.loop_header656 ]
  %301 = add nuw nsw i64 %polly.indvar665.us, %263
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  %polly.access.add.call1680.us = add nuw nsw i64 %301, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.mul.Packed_MemRef_call1526.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %301, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 1
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %301, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 2
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %301, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 3
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  %polly.access.add.call1680.us.4 = add nuw nsw i64 %301, %polly.access.mul.call1679.us.4
  %polly.access.call1681.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.4
  %polly.access.call1681.load.us.4 = load double, double* %polly.access.call1681.us.4, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 4
  %polly.access.Packed_MemRef_call1526.us.4 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.4
  store double %polly.access.call1681.load.us.4, double* %polly.access.Packed_MemRef_call1526.us.4, align 8
  %polly.access.add.call1680.us.5 = add nuw nsw i64 %301, %polly.access.mul.call1679.us.5
  %polly.access.call1681.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.5
  %polly.access.call1681.load.us.5 = load double, double* %polly.access.call1681.us.5, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 5
  %polly.access.Packed_MemRef_call1526.us.5 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.5
  store double %polly.access.call1681.load.us.5, double* %polly.access.Packed_MemRef_call1526.us.5, align 8
  %polly.access.add.call1680.us.6 = add nuw nsw i64 %301, %polly.access.mul.call1679.us.6
  %polly.access.call1681.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.6
  %polly.access.call1681.load.us.6 = load double, double* %polly.access.call1681.us.6, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 6
  %polly.access.Packed_MemRef_call1526.us.6 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.6
  store double %polly.access.call1681.load.us.6, double* %polly.access.Packed_MemRef_call1526.us.6, align 8
  %polly.access.add.call1680.us.7 = add nuw nsw i64 %301, %polly.access.mul.call1679.us.7
  %polly.access.call1681.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.7
  %polly.access.call1681.load.us.7 = load double, double* %polly.access.call1681.us.7, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 7
  %polly.access.Packed_MemRef_call1526.us.7 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.7
  store double %polly.access.call1681.load.us.7, double* %polly.access.Packed_MemRef_call1526.us.7, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_exit685.us, label %polly.loop_header683.us

polly.loop_header683.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header683.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header683.us ], [ %297, %polly.loop_header662.us ]
  %302 = add nuw nsw i64 %polly.indvar687.us, %275
  %polly.access.mul.call1691.us = mul nsw i64 %302, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %301, %polly.access.mul.call1691.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695.us = add nuw nsw i64 %polly.indvar687.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526696.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1526696.us, align 8
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %polly.loop_cond689.not.not.us = icmp slt i64 %polly.indvar687.us, %300
  br i1 %polly.loop_cond689.not.not.us, label %polly.loop_header683.us, label %polly.loop_exit685.us

polly.loop_exit685.us:                            ; preds = %polly.loop_header683.us, %polly.loop_header662.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar_next666.us, 20
  br i1 %exitcond1149.not, label %polly.loop_header697.preheader, label %polly.loop_header662.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_exit699:                               ; preds = %polly.loop_exit706, %polly.loop_header697.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %indvars.iv.next1153 = add i64 %indvars.iv1152, -64
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 64
  %exitcond1164.not = icmp eq i64 %polly.indvar_next660, 19
  %indvar.next1314 = add i64 %indvar1313, 1
  br i1 %exitcond1164.not, label %polly.loop_exit658, label %polly.loop_header656

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit685
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit685 ], [ 0, %polly.loop_header656.split ]
  %303 = add nuw nsw i64 %polly.indvar665, %263
  %polly.access.mul.Packed_MemRef_call1526694 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header683

polly.loop_exit685:                               ; preds = %polly.loop_header683
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next666, 20
  br i1 %exitcond1147.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_header697.preheader:                   ; preds = %polly.loop_exit685, %polly.loop_exit685.us, %polly.loop_header656.split
  %304 = sub nsw i64 %275, %294
  %305 = icmp sgt i64 %304, 0
  %306 = select i1 %305, i64 %304, i64 0
  %307 = mul nsw i64 %polly.indvar659, -64
  %308 = icmp slt i64 %307, -1136
  %309 = select i1 %308, i64 %307, i64 -1136
  %310 = add nsw i64 %309, 1199
  %polly.loop_guard707.not = icmp sgt i64 %306, %310
  br i1 %polly.loop_guard707.not, label %polly.loop_exit699, label %polly.loop_header697

polly.loop_header683:                             ; preds = %polly.loop_header662, %polly.loop_header683
  %polly.indvar687 = phi i64 [ %polly.indvar_next688, %polly.loop_header683 ], [ %297, %polly.loop_header662 ]
  %311 = add nuw nsw i64 %polly.indvar687, %275
  %polly.access.mul.call1691 = mul nsw i64 %311, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %303, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695 = add nuw nsw i64 %polly.indvar687, %polly.access.mul.Packed_MemRef_call1526694
  %polly.access.Packed_MemRef_call1526696 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1526696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %polly.loop_cond689.not.not = icmp slt i64 %polly.indvar687, %300
  br i1 %polly.loop_cond689.not.not, label %polly.loop_header683, label %polly.loop_exit685

polly.loop_header697:                             ; preds = %polly.loop_header697.preheader, %polly.loop_exit706
  %polly.indvar700 = phi i64 [ %polly.indvar_next701, %polly.loop_exit706 ], [ 0, %polly.loop_header697.preheader ]
  %polly.access.mul.Packed_MemRef_call1526719 = mul nuw nsw i64 %polly.indvar700, 1200
  br label %polly.loop_header704

polly.loop_exit706:                               ; preds = %polly.loop_exit714
  %polly.indvar_next701 = add nuw nsw i64 %polly.indvar700, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next701, 20
  br i1 %exitcond1163.not, label %polly.loop_exit699, label %polly.loop_header697

polly.loop_header704:                             ; preds = %polly.loop_header697, %polly.loop_exit714
  %indvar1316 = phi i64 [ 0, %polly.loop_header697 ], [ %indvar.next1317, %polly.loop_exit714 ]
  %indvars.iv1159 = phi i64 [ %292, %polly.loop_header697 ], [ %indvars.iv.next1160, %polly.loop_exit714 ]
  %polly.indvar708 = phi i64 [ %306, %polly.loop_header697 ], [ %polly.indvar_next709, %polly.loop_exit714 ]
  %312 = add i64 %291, %indvar1316
  %smin1318 = call i64 @llvm.smin.i64(i64 %312, i64 7)
  %313 = add nsw i64 %smin1318, 1
  %smin1161 = call i64 @llvm.smin.i64(i64 %indvars.iv1159, i64 7)
  %314 = add nsw i64 %polly.indvar708, %295
  %polly.loop_guard7151208 = icmp sgt i64 %314, -1
  br i1 %polly.loop_guard7151208, label %polly.loop_header712.preheader, label %polly.loop_exit714

polly.loop_header712.preheader:                   ; preds = %polly.loop_header704
  %315 = add nuw nsw i64 %polly.indvar708, %294
  %polly.access.add.Packed_MemRef_call2528724 = add nsw i64 %314, %polly.access.mul.Packed_MemRef_call1526719
  %polly.access.Packed_MemRef_call2528725 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724
  %_p_scalar_726 = load double, double* %polly.access.Packed_MemRef_call2528725, align 8
  %polly.access.Packed_MemRef_call1526733 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724
  %_p_scalar_734 = load double, double* %polly.access.Packed_MemRef_call1526733, align 8
  %316 = mul i64 %315, 9600
  %min.iters.check1319 = icmp ult i64 %313, 4
  br i1 %min.iters.check1319, label %polly.loop_header712.preheader1442, label %vector.ph1320

vector.ph1320:                                    ; preds = %polly.loop_header712.preheader
  %n.vec1322 = and i64 %313, -4
  %broadcast.splatinsert1328 = insertelement <4 x double> poison, double %_p_scalar_726, i32 0
  %broadcast.splat1329 = shufflevector <4 x double> %broadcast.splatinsert1328, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1331 = insertelement <4 x double> poison, double %_p_scalar_734, i32 0
  %broadcast.splat1332 = shufflevector <4 x double> %broadcast.splatinsert1331, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1320
  %index1323 = phi i64 [ 0, %vector.ph1320 ], [ %index.next1324, %vector.body1312 ]
  %317 = add nuw nsw i64 %index1323, %275
  %318 = add nuw nsw i64 %index1323, %polly.access.mul.Packed_MemRef_call1526719
  %319 = getelementptr double, double* %Packed_MemRef_call1526, i64 %318
  %320 = bitcast double* %319 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %320, align 8
  %321 = fmul fast <4 x double> %broadcast.splat1329, %wide.load1327
  %322 = getelementptr double, double* %Packed_MemRef_call2528, i64 %318
  %323 = bitcast double* %322 to <4 x double>*
  %wide.load1330 = load <4 x double>, <4 x double>* %323, align 8
  %324 = fmul fast <4 x double> %broadcast.splat1332, %wide.load1330
  %325 = shl i64 %317, 3
  %326 = add i64 %325, %316
  %327 = getelementptr i8, i8* %call, i64 %326
  %328 = bitcast i8* %327 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %328, align 8, !alias.scope !99, !noalias !101
  %329 = fadd fast <4 x double> %324, %321
  %330 = fmul fast <4 x double> %329, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %331 = fadd fast <4 x double> %330, %wide.load1333
  %332 = bitcast i8* %327 to <4 x double>*
  store <4 x double> %331, <4 x double>* %332, align 8, !alias.scope !99, !noalias !101
  %index.next1324 = add i64 %index1323, 4
  %333 = icmp eq i64 %index.next1324, %n.vec1322
  br i1 %333, label %middle.block1310, label %vector.body1312, !llvm.loop !110

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1326 = icmp eq i64 %313, %n.vec1322
  br i1 %cmp.n1326, label %polly.loop_exit714, label %polly.loop_header712.preheader1442

polly.loop_header712.preheader1442:               ; preds = %polly.loop_header712.preheader, %middle.block1310
  %polly.indvar716.ph = phi i64 [ 0, %polly.loop_header712.preheader ], [ %n.vec1322, %middle.block1310 ]
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_header712, %middle.block1310, %polly.loop_header704
  %polly.indvar_next709 = add nuw nsw i64 %polly.indvar708, 1
  %polly.loop_cond710.not.not = icmp slt i64 %polly.indvar708, %310
  %indvars.iv.next1160 = add i64 %indvars.iv1159, 1
  %indvar.next1317 = add i64 %indvar1316, 1
  br i1 %polly.loop_cond710.not.not, label %polly.loop_header704, label %polly.loop_exit706

polly.loop_header712:                             ; preds = %polly.loop_header712.preheader1442, %polly.loop_header712
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_header712 ], [ %polly.indvar716.ph, %polly.loop_header712.preheader1442 ]
  %334 = add nuw nsw i64 %polly.indvar716, %275
  %polly.access.add.Packed_MemRef_call1526720 = add nuw nsw i64 %polly.indvar716, %polly.access.mul.Packed_MemRef_call1526719
  %polly.access.Packed_MemRef_call1526721 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720
  %_p_scalar_722 = load double, double* %polly.access.Packed_MemRef_call1526721, align 8
  %p_mul27.i = fmul fast double %_p_scalar_726, %_p_scalar_722
  %polly.access.Packed_MemRef_call2528729 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720
  %_p_scalar_730 = load double, double* %polly.access.Packed_MemRef_call2528729, align 8
  %p_mul37.i = fmul fast double %_p_scalar_734, %_p_scalar_730
  %335 = shl i64 %334, 3
  %336 = add i64 %335, %316
  %scevgep735 = getelementptr i8, i8* %call, i64 %336
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
  %337 = shl nsw i64 %polly.indvar867, 5
  %338 = add nsw i64 %smin1195, 1199
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1194 = add nsw i64 %indvars.iv1193, -32
  %exitcond1198.not = icmp eq i64 %polly.indvar_next868, 38
  br i1 %exitcond1198.not, label %polly.loop_header891, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %indvars.iv1189 = phi i64 [ %indvars.iv.next1190, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %339 = mul nsw i64 %polly.indvar873, -32
  %smin1239 = call i64 @llvm.smin.i64(i64 %339, i64 -1168)
  %340 = add nsw i64 %smin1239, 1200
  %smin1191 = call i64 @llvm.smin.i64(i64 %indvars.iv1189, i64 -1168)
  %341 = shl nsw i64 %polly.indvar873, 5
  %342 = add nsw i64 %smin1191, 1199
  br label %polly.loop_header876

polly.loop_exit878:                               ; preds = %polly.loop_exit884
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %indvars.iv.next1190 = add nsw i64 %indvars.iv1189, -32
  %exitcond1197.not = icmp eq i64 %polly.indvar_next874, 38
  br i1 %exitcond1197.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_exit884, %polly.loop_header870
  %polly.indvar879 = phi i64 [ 0, %polly.loop_header870 ], [ %polly.indvar_next880, %polly.loop_exit884 ]
  %343 = add nuw nsw i64 %polly.indvar879, %337
  %344 = trunc i64 %343 to i32
  %345 = mul nuw nsw i64 %343, 9600
  %min.iters.check = icmp eq i64 %340, 0
  br i1 %min.iters.check, label %polly.loop_header882, label %vector.ph1240

vector.ph1240:                                    ; preds = %polly.loop_header876
  %broadcast.splatinsert1247 = insertelement <4 x i64> poison, i64 %341, i32 0
  %broadcast.splat1248 = shufflevector <4 x i64> %broadcast.splatinsert1247, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1249 = insertelement <4 x i32> poison, i32 %344, i32 0
  %broadcast.splat1250 = shufflevector <4 x i32> %broadcast.splatinsert1249, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %vector.ph1240
  %index1241 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1242, %vector.body1238 ]
  %vec.ind1245 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1240 ], [ %vec.ind.next1246, %vector.body1238 ]
  %346 = add nuw nsw <4 x i64> %vec.ind1245, %broadcast.splat1248
  %347 = trunc <4 x i64> %346 to <4 x i32>
  %348 = mul <4 x i32> %broadcast.splat1250, %347
  %349 = add <4 x i32> %348, <i32 3, i32 3, i32 3, i32 3>
  %350 = urem <4 x i32> %349, <i32 1200, i32 1200, i32 1200, i32 1200>
  %351 = sitofp <4 x i32> %350 to <4 x double>
  %352 = fmul fast <4 x double> %351, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %353 = extractelement <4 x i64> %346, i32 0
  %354 = shl i64 %353, 3
  %355 = add nuw nsw i64 %354, %345
  %356 = getelementptr i8, i8* %call, i64 %355
  %357 = bitcast i8* %356 to <4 x double>*
  store <4 x double> %352, <4 x double>* %357, align 8, !alias.scope !112, !noalias !114
  %index.next1242 = add i64 %index1241, 4
  %vec.ind.next1246 = add <4 x i64> %vec.ind1245, <i64 4, i64 4, i64 4, i64 4>
  %358 = icmp eq i64 %index.next1242, %340
  br i1 %358, label %polly.loop_exit884, label %vector.body1238, !llvm.loop !117

polly.loop_exit884:                               ; preds = %vector.body1238, %polly.loop_header882
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1196.not = icmp eq i64 %polly.indvar879, %338
  br i1 %exitcond1196.not, label %polly.loop_exit878, label %polly.loop_header876

polly.loop_header882:                             ; preds = %polly.loop_header876, %polly.loop_header882
  %polly.indvar885 = phi i64 [ %polly.indvar_next886, %polly.loop_header882 ], [ 0, %polly.loop_header876 ]
  %359 = add nuw nsw i64 %polly.indvar885, %341
  %360 = trunc i64 %359 to i32
  %361 = mul i32 %360, %344
  %362 = add i32 %361, 3
  %363 = urem i32 %362, 1200
  %p_conv31.i = sitofp i32 %363 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %364 = shl i64 %359, 3
  %365 = add nuw nsw i64 %364, %345
  %scevgep888 = getelementptr i8, i8* %call, i64 %365
  %scevgep888889 = bitcast i8* %scevgep888 to double*
  store double %p_div33.i, double* %scevgep888889, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next886 = add nuw nsw i64 %polly.indvar885, 1
  %exitcond1192.not = icmp eq i64 %polly.indvar885, %342
  br i1 %exitcond1192.not, label %polly.loop_exit884, label %polly.loop_header882, !llvm.loop !118

polly.loop_header891:                             ; preds = %polly.loop_exit872, %polly.loop_exit899
  %indvars.iv1183 = phi i64 [ %indvars.iv.next1184, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %smin1185 = call i64 @llvm.smin.i64(i64 %indvars.iv1183, i64 -1168)
  %366 = shl nsw i64 %polly.indvar894, 5
  %367 = add nsw i64 %smin1185, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, -32
  %exitcond1188.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1188.not, label %polly.loop_header917, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1179 = phi i64 [ %indvars.iv.next1180, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %368 = mul nsw i64 %polly.indvar900, -32
  %smin1254 = call i64 @llvm.smin.i64(i64 %368, i64 -968)
  %369 = add nsw i64 %smin1254, 1000
  %smin1181 = call i64 @llvm.smin.i64(i64 %indvars.iv1179, i64 -968)
  %370 = shl nsw i64 %polly.indvar900, 5
  %371 = add nsw i64 %smin1181, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1180 = add nsw i64 %indvars.iv1179, -32
  %exitcond1187.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1187.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %372 = add nuw nsw i64 %polly.indvar906, %366
  %373 = trunc i64 %372 to i32
  %374 = mul nuw nsw i64 %372, 8000
  %min.iters.check1255 = icmp eq i64 %369, 0
  br i1 %min.iters.check1255, label %polly.loop_header909, label %vector.ph1256

vector.ph1256:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1265 = insertelement <4 x i64> poison, i64 %370, i32 0
  %broadcast.splat1266 = shufflevector <4 x i64> %broadcast.splatinsert1265, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1267 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat1268 = shufflevector <4 x i32> %broadcast.splatinsert1267, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %vector.ph1256
  %index1259 = phi i64 [ 0, %vector.ph1256 ], [ %index.next1260, %vector.body1253 ]
  %vec.ind1263 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1256 ], [ %vec.ind.next1264, %vector.body1253 ]
  %375 = add nuw nsw <4 x i64> %vec.ind1263, %broadcast.splat1266
  %376 = trunc <4 x i64> %375 to <4 x i32>
  %377 = mul <4 x i32> %broadcast.splat1268, %376
  %378 = add <4 x i32> %377, <i32 2, i32 2, i32 2, i32 2>
  %379 = urem <4 x i32> %378, <i32 1000, i32 1000, i32 1000, i32 1000>
  %380 = sitofp <4 x i32> %379 to <4 x double>
  %381 = fmul fast <4 x double> %380, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %382 = extractelement <4 x i64> %375, i32 0
  %383 = shl i64 %382, 3
  %384 = add nuw nsw i64 %383, %374
  %385 = getelementptr i8, i8* %call2, i64 %384
  %386 = bitcast i8* %385 to <4 x double>*
  store <4 x double> %381, <4 x double>* %386, align 8, !alias.scope !116, !noalias !119
  %index.next1260 = add i64 %index1259, 4
  %vec.ind.next1264 = add <4 x i64> %vec.ind1263, <i64 4, i64 4, i64 4, i64 4>
  %387 = icmp eq i64 %index.next1260, %369
  br i1 %387, label %polly.loop_exit911, label %vector.body1253, !llvm.loop !120

polly.loop_exit911:                               ; preds = %vector.body1253, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar906, %367
  br i1 %exitcond1186.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %388 = add nuw nsw i64 %polly.indvar912, %370
  %389 = trunc i64 %388 to i32
  %390 = mul i32 %389, %373
  %391 = add i32 %390, 2
  %392 = urem i32 %391, 1000
  %p_conv10.i = sitofp i32 %392 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %393 = shl i64 %388, 3
  %394 = add nuw nsw i64 %393, %374
  %scevgep915 = getelementptr i8, i8* %call2, i64 %394
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div12.i, double* %scevgep915916, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1182.not = icmp eq i64 %polly.indvar912, %371
  br i1 %exitcond1182.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !121

polly.loop_header917:                             ; preds = %polly.loop_exit899, %polly.loop_exit925
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %smin1175 = call i64 @llvm.smin.i64(i64 %indvars.iv1173, i64 -1168)
  %395 = shl nsw i64 %polly.indvar920, 5
  %396 = add nsw i64 %smin1175, 1199
  br label %polly.loop_header923

polly.loop_exit925:                               ; preds = %polly.loop_exit931
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %indvars.iv.next1174 = add nsw i64 %indvars.iv1173, -32
  %exitcond1178.not = icmp eq i64 %polly.indvar_next921, 38
  br i1 %exitcond1178.not, label %init_array.exit, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_exit931, %polly.loop_header917
  %indvars.iv1169 = phi i64 [ %indvars.iv.next1170, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %397 = mul nsw i64 %polly.indvar926, -32
  %smin1272 = call i64 @llvm.smin.i64(i64 %397, i64 -968)
  %398 = add nsw i64 %smin1272, 1000
  %smin1171 = call i64 @llvm.smin.i64(i64 %indvars.iv1169, i64 -968)
  %399 = shl nsw i64 %polly.indvar926, 5
  %400 = add nsw i64 %smin1171, 999
  br label %polly.loop_header929

polly.loop_exit931:                               ; preds = %polly.loop_exit937
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %indvars.iv.next1170 = add nsw i64 %indvars.iv1169, -32
  %exitcond1177.not = icmp eq i64 %polly.indvar_next927, 32
  br i1 %exitcond1177.not, label %polly.loop_exit925, label %polly.loop_header923

polly.loop_header929:                             ; preds = %polly.loop_exit937, %polly.loop_header923
  %polly.indvar932 = phi i64 [ 0, %polly.loop_header923 ], [ %polly.indvar_next933, %polly.loop_exit937 ]
  %401 = add nuw nsw i64 %polly.indvar932, %395
  %402 = trunc i64 %401 to i32
  %403 = mul nuw nsw i64 %401, 8000
  %min.iters.check1273 = icmp eq i64 %398, 0
  br i1 %min.iters.check1273, label %polly.loop_header935, label %vector.ph1274

vector.ph1274:                                    ; preds = %polly.loop_header929
  %broadcast.splatinsert1283 = insertelement <4 x i64> poison, i64 %399, i32 0
  %broadcast.splat1284 = shufflevector <4 x i64> %broadcast.splatinsert1283, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1285 = insertelement <4 x i32> poison, i32 %402, i32 0
  %broadcast.splat1286 = shufflevector <4 x i32> %broadcast.splatinsert1285, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1274
  %index1277 = phi i64 [ 0, %vector.ph1274 ], [ %index.next1278, %vector.body1271 ]
  %vec.ind1281 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1274 ], [ %vec.ind.next1282, %vector.body1271 ]
  %404 = add nuw nsw <4 x i64> %vec.ind1281, %broadcast.splat1284
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat1286, %405
  %407 = add <4 x i32> %406, <i32 1, i32 1, i32 1, i32 1>
  %408 = urem <4 x i32> %407, <i32 1200, i32 1200, i32 1200, i32 1200>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add nuw nsw i64 %412, %403
  %414 = getelementptr i8, i8* %call1, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !115, !noalias !122
  %index.next1278 = add i64 %index1277, 4
  %vec.ind.next1282 = add <4 x i64> %vec.ind1281, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next1278, %398
  br i1 %416, label %polly.loop_exit937, label %vector.body1271, !llvm.loop !123

polly.loop_exit937:                               ; preds = %vector.body1271, %polly.loop_header935
  %polly.indvar_next933 = add nuw nsw i64 %polly.indvar932, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar932, %396
  br i1 %exitcond1176.not, label %polly.loop_exit931, label %polly.loop_header929

polly.loop_header935:                             ; preds = %polly.loop_header929, %polly.loop_header935
  %polly.indvar938 = phi i64 [ %polly.indvar_next939, %polly.loop_header935 ], [ 0, %polly.loop_header929 ]
  %417 = add nuw nsw i64 %polly.indvar938, %399
  %418 = trunc i64 %417 to i32
  %419 = mul i32 %418, %402
  %420 = add i32 %419, 1
  %421 = urem i32 %420, 1200
  %p_conv.i = sitofp i32 %421 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %422 = shl i64 %417, 3
  %423 = add nuw nsw i64 %422, %403
  %scevgep942 = getelementptr i8, i8* %call1, i64 %423
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div.i, double* %scevgep942943, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next939 = add nuw nsw i64 %polly.indvar938, 1
  %exitcond1172.not = icmp eq i64 %polly.indvar938, %400
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
