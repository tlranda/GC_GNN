; ModuleID = 'syr2k_exhaustive/mmp_all_XL_980.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_980.c"
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
  %scevgep1220 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1219 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1218 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1217 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1217, %scevgep1220
  %bound1 = icmp ult i8* %scevgep1219, %scevgep1218
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
  br i1 %exitcond18.not.i, label %vector.ph1224, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1224:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1231 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1232 = shufflevector <4 x i64> %broadcast.splatinsert1231, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1224
  %index1225 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1226, %vector.body1223 ]
  %vec.ind1229 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1224 ], [ %vec.ind.next1230, %vector.body1223 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1229, %broadcast.splat1232
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv7.i, i64 %index1225
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1230 = add <4 x i64> %vec.ind1229, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1226, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1223, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1223
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1224, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit925
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1287 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1287, label %for.body3.i46.preheader1442, label %vector.ph1288

vector.ph1288:                                    ; preds = %for.body3.i46.preheader
  %n.vec1290 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %vector.ph1288
  %index1291 = phi i64 [ 0, %vector.ph1288 ], [ %index.next1292, %vector.body1286 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %index1291
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1292 = add i64 %index1291, 4
  %46 = icmp eq i64 %index.next1292, %n.vec1290
  br i1 %46, label %middle.block1284, label %vector.body1286, !llvm.loop !18

middle.block1284:                                 ; preds = %vector.body1286
  %cmp.n1294 = icmp eq i64 %indvars.iv21.i, %n.vec1290
  br i1 %cmp.n1294, label %for.inc6.i, label %for.body3.i46.preheader1442

for.body3.i46.preheader1442:                      ; preds = %for.body3.i46.preheader, %middle.block1284
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1290, %middle.block1284 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1442, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1442 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1284, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

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
  %min.iters.check1334 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1334, label %for.body3.i60.preheader1438, label %vector.ph1335

vector.ph1335:                                    ; preds = %for.body3.i60.preheader
  %n.vec1337 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1333

vector.body1333:                                  ; preds = %vector.body1333, %vector.ph1335
  %index1338 = phi i64 [ 0, %vector.ph1335 ], [ %index.next1339, %vector.body1333 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %index1338
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1342, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1339 = add i64 %index1338, 4
  %57 = icmp eq i64 %index.next1339, %n.vec1337
  br i1 %57, label %middle.block1331, label %vector.body1333, !llvm.loop !63

middle.block1331:                                 ; preds = %vector.body1333
  %cmp.n1341 = icmp eq i64 %indvars.iv21.i52, %n.vec1337
  br i1 %cmp.n1341, label %for.inc6.i63, label %for.body3.i60.preheader1438

for.body3.i60.preheader1438:                      ; preds = %for.body3.i60.preheader, %middle.block1331
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1337, %middle.block1331 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1438, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1438 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1331, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

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
  %min.iters.check1384 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1384, label %for.body3.i99.preheader1434, label %vector.ph1385

vector.ph1385:                                    ; preds = %for.body3.i99.preheader
  %n.vec1387 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1383

vector.body1383:                                  ; preds = %vector.body1383, %vector.ph1385
  %index1388 = phi i64 [ 0, %vector.ph1385 ], [ %index.next1389, %vector.body1383 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %index1388
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1392 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1392, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1389 = add i64 %index1388, 4
  %68 = icmp eq i64 %index.next1389, %n.vec1387
  br i1 %68, label %middle.block1381, label %vector.body1383, !llvm.loop !65

middle.block1381:                                 ; preds = %vector.body1383
  %cmp.n1391 = icmp eq i64 %indvars.iv21.i91, %n.vec1387
  br i1 %cmp.n1391, label %for.inc6.i102, label %for.body3.i99.preheader1434

for.body3.i99.preheader1434:                      ; preds = %for.body3.i99.preheader, %middle.block1381
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1387, %middle.block1381 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1434, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1434 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1381, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(76800) i8* @malloc(i64 76800) #6
  %malloccall136 = tail call dereferenceable_or_null(76800) i8* @malloc(i64 76800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1396 = phi i64 [ %indvar.next1397, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1396, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1398 = icmp ult i64 %88, 4
  br i1 %min.iters.check1398, label %polly.loop_header192.preheader, label %vector.ph1399

vector.ph1399:                                    ; preds = %polly.loop_header
  %n.vec1401 = and i64 %88, -4
  br label %vector.body1395

vector.body1395:                                  ; preds = %vector.body1395, %vector.ph1399
  %index1402 = phi i64 [ 0, %vector.ph1399 ], [ %index.next1403, %vector.body1395 ]
  %90 = shl nuw nsw i64 %index1402, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1406 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1406, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1403 = add i64 %index1402, 4
  %95 = icmp eq i64 %index.next1403, %n.vec1401
  br i1 %95, label %middle.block1393, label %vector.body1395, !llvm.loop !78

middle.block1393:                                 ; preds = %vector.body1395
  %cmp.n1405 = icmp eq i64 %88, %n.vec1401
  br i1 %cmp.n1405, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1393
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1401, %middle.block1393 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1393
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1397 = add i64 %indvar1396, 1
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
  %97 = shl nsw i64 %polly.indvar203, 3
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  %101 = or i64 %97, 4
  %102 = or i64 %97, 5
  %103 = or i64 %97, 6
  %104 = or i64 %97, 7
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next204, 125
  br i1 %exitcond1113.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %117, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %105 = shl nuw nsw i64 %polly.indvar209, 3
  %106 = udiv i64 %polly.indvar209, 12
  %107 = mul nuw nsw i64 %106, 96
  %108 = sub nsw i64 %105, %107
  %109 = mul nsw i64 %polly.indvar209, -8
  %110 = add i64 %109, %107
  %111 = udiv i64 %polly.indvar209, 12
  %112 = mul nuw nsw i64 %111, 96
  %113 = sub nsw i64 %indvars.iv1100, %112
  %114 = add i64 %indvars.iv1104, %112
  %115 = mul nsw i64 %polly.indvar209, -8
  %116 = shl nsw i64 %polly.indvar209, 3
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %117 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next1101 = add nuw nsw i64 %indvars.iv1100, 8
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -8
  %exitcond1112.not = icmp eq i64 %117, 150
  br i1 %exitcond1112.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %118 = add nuw nsw i64 %polly.indvar221, %116
  %polly.access.mul.call2225 = mul nuw nsw i64 %118, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %97, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit265, %polly.loop_exit220.7
  %indvar1410 = phi i64 [ %indvar.next1411, %polly.loop_exit265 ], [ 0, %polly.loop_exit220.7 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit265 ], [ %114, %polly.loop_exit220.7 ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit265 ], [ %113, %polly.loop_exit220.7 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit265 ], [ %111, %polly.loop_exit220.7 ]
  %119 = mul nsw i64 %indvar1410, -96
  %120 = add i64 %108, %119
  %smax1412 = call i64 @llvm.smax.i64(i64 %120, i64 0)
  %121 = mul nuw nsw i64 %indvar1410, 96
  %122 = add i64 %110, %121
  %123 = add i64 %smax1412, %122
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1102, i64 0)
  %124 = add i64 %smax, %indvars.iv1106
  %125 = mul nuw nsw i64 %polly.indvar231, 12
  %.not.not = icmp ugt i64 %125, %polly.indvar209
  %126 = mul nuw nsw i64 %polly.indvar231, 96
  %127 = add nsw i64 %126, %115
  %128 = icmp sgt i64 %127, 0
  %129 = select i1 %128, i64 %127, i64 0
  %130 = add nsw i64 %127, 95
  %131 = icmp slt i64 %422, %130
  %132 = select i1 %131, i64 %422, i64 %130
  %polly.loop_guard.not = icmp sgt i64 %129, %132
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit252.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit252.us ], [ 0, %polly.loop_header228 ]
  %133 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  %polly.access.add.call1248.us = add nuw nsw i64 %133, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1248.us.4 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.4
  %polly.access.call1249.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.4
  %polly.access.call1249.load.us.4 = load double, double* %polly.access.call1249.us.4, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1249.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1248.us.5 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.5
  %polly.access.call1249.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.5
  %polly.access.call1249.load.us.5 = load double, double* %polly.access.call1249.us.5, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1249.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1248.us.6 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.6
  %polly.access.call1249.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.6
  %polly.access.call1249.load.us.6 = load double, double* %polly.access.call1249.us.6, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1249.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1248.us.7 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.7
  %polly.access.call1249.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.7
  %polly.access.call1249.load.us.7 = load double, double* %polly.access.call1249.us.7, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1249.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit252.us, label %polly.loop_header250.us

polly.loop_header250.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header250.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %129, %polly.loop_header234.us ]
  %134 = add nuw nsw i64 %polly.indvar253.us, %116
  %polly.access.mul.call1257.us = mul nsw i64 %134, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %133, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %132
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.loop_exit252.us

polly.loop_exit252.us:                            ; preds = %polly.loop_header250.us, %polly.loop_header234.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next238.us, 8
  br i1 %exitcond1099.not, label %polly.loop_header263.preheader, label %polly.loop_header234.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header250

polly.loop_exit265:                               ; preds = %polly.loop_exit272, %polly.loop_header263.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 12
  %indvars.iv.next1103 = add i64 %indvars.iv1102, -96
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 96
  %indvar.next1411 = add i64 %indvar1410, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header263.preheader:                   ; preds = %polly.loop_header250.7, %polly.loop_exit252.us, %polly.loop_header228.split
  %135 = sub nsw i64 %116, %126
  %136 = icmp sgt i64 %135, 0
  %137 = select i1 %136, i64 %135, i64 0
  %138 = mul nsw i64 %polly.indvar231, -96
  %139 = icmp slt i64 %138, -1104
  %140 = select i1 %139, i64 %138, i64 -1104
  %141 = add nsw i64 %140, 1199
  %polly.loop_guard273.not = icmp sgt i64 %137, %141
  br i1 %polly.loop_guard273.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header250:                             ; preds = %polly.loop_header228.split, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %129, %polly.loop_header228.split ]
  %142 = add nuw nsw i64 %polly.indvar253, %116
  %polly.access.mul.call1257 = mul nsw i64 %142, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %97, %polly.access.mul.call1257
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %132
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_header250.1

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_exit272
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_exit272 ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1285 = mul nuw nsw i64 %polly.indvar266, 1200
  br label %polly.loop_header270

polly.loop_exit272:                               ; preds = %polly.loop_exit280
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next267, 8
  br i1 %exitcond1111.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header270:                             ; preds = %polly.loop_header263, %polly.loop_exit280
  %indvar1413 = phi i64 [ 0, %polly.loop_header263 ], [ %indvar.next1414, %polly.loop_exit280 ]
  %indvars.iv1108 = phi i64 [ %124, %polly.loop_header263 ], [ %indvars.iv.next1109, %polly.loop_exit280 ]
  %polly.indvar274 = phi i64 [ %137, %polly.loop_header263 ], [ %polly.indvar_next275, %polly.loop_exit280 ]
  %143 = add i64 %123, %indvar1413
  %smin1415 = call i64 @llvm.smin.i64(i64 %143, i64 7)
  %144 = add nsw i64 %smin1415, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 7)
  %145 = add nsw i64 %polly.indvar274, %127
  %polly.loop_guard2811203 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard2811203, label %polly.loop_header278.preheader, label %polly.loop_exit280

polly.loop_header278.preheader:                   ; preds = %polly.loop_header270
  %146 = add nuw nsw i64 %polly.indvar274, %126
  %polly.access.add.Packed_MemRef_call2290 = add nsw i64 %145, %polly.access.mul.Packed_MemRef_call1285
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %polly.access.Packed_MemRef_call1299 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290
  %_p_scalar_300 = load double, double* %polly.access.Packed_MemRef_call1299, align 8
  %147 = mul i64 %146, 9600
  %min.iters.check1416 = icmp ult i64 %144, 4
  br i1 %min.iters.check1416, label %polly.loop_header278.preheader1431, label %vector.ph1417

vector.ph1417:                                    ; preds = %polly.loop_header278.preheader
  %n.vec1419 = and i64 %144, -4
  %broadcast.splatinsert1425 = insertelement <4 x double> poison, double %_p_scalar_292, i32 0
  %broadcast.splat1426 = shufflevector <4 x double> %broadcast.splatinsert1425, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1428 = insertelement <4 x double> poison, double %_p_scalar_300, i32 0
  %broadcast.splat1429 = shufflevector <4 x double> %broadcast.splatinsert1428, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1409

vector.body1409:                                  ; preds = %vector.body1409, %vector.ph1417
  %index1420 = phi i64 [ 0, %vector.ph1417 ], [ %index.next1421, %vector.body1409 ]
  %148 = add nuw nsw i64 %index1420, %116
  %149 = add nuw nsw i64 %index1420, %polly.access.mul.Packed_MemRef_call1285
  %150 = getelementptr double, double* %Packed_MemRef_call1, i64 %149
  %151 = bitcast double* %150 to <4 x double>*
  %wide.load1424 = load <4 x double>, <4 x double>* %151, align 8
  %152 = fmul fast <4 x double> %broadcast.splat1426, %wide.load1424
  %153 = getelementptr double, double* %Packed_MemRef_call2, i64 %149
  %154 = bitcast double* %153 to <4 x double>*
  %wide.load1427 = load <4 x double>, <4 x double>* %154, align 8
  %155 = fmul fast <4 x double> %broadcast.splat1429, %wide.load1427
  %156 = shl i64 %148, 3
  %157 = add i64 %156, %147
  %158 = getelementptr i8, i8* %call, i64 %157
  %159 = bitcast i8* %158 to <4 x double>*
  %wide.load1430 = load <4 x double>, <4 x double>* %159, align 8, !alias.scope !71, !noalias !73
  %160 = fadd fast <4 x double> %155, %152
  %161 = fmul fast <4 x double> %160, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %162 = fadd fast <4 x double> %161, %wide.load1430
  %163 = bitcast i8* %158 to <4 x double>*
  store <4 x double> %162, <4 x double>* %163, align 8, !alias.scope !71, !noalias !73
  %index.next1421 = add i64 %index1420, 4
  %164 = icmp eq i64 %index.next1421, %n.vec1419
  br i1 %164, label %middle.block1407, label %vector.body1409, !llvm.loop !83

middle.block1407:                                 ; preds = %vector.body1409
  %cmp.n1423 = icmp eq i64 %144, %n.vec1419
  br i1 %cmp.n1423, label %polly.loop_exit280, label %polly.loop_header278.preheader1431

polly.loop_header278.preheader1431:               ; preds = %polly.loop_header278.preheader, %middle.block1407
  %polly.indvar282.ph = phi i64 [ 0, %polly.loop_header278.preheader ], [ %n.vec1419, %middle.block1407 ]
  br label %polly.loop_header278

polly.loop_exit280:                               ; preds = %polly.loop_header278, %middle.block1407, %polly.loop_header270
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %polly.loop_cond276.not.not = icmp slt i64 %polly.indvar274, %141
  %indvars.iv.next1109 = add i64 %indvars.iv1108, 1
  %indvar.next1414 = add i64 %indvar1413, 1
  br i1 %polly.loop_cond276.not.not, label %polly.loop_header270, label %polly.loop_exit272

polly.loop_header278:                             ; preds = %polly.loop_header278.preheader1431, %polly.loop_header278
  %polly.indvar282 = phi i64 [ %polly.indvar_next283, %polly.loop_header278 ], [ %polly.indvar282.ph, %polly.loop_header278.preheader1431 ]
  %165 = add nuw nsw i64 %polly.indvar282, %116
  %polly.access.add.Packed_MemRef_call1286 = add nuw nsw i64 %polly.indvar282, %polly.access.mul.Packed_MemRef_call1285
  %polly.access.Packed_MemRef_call1287 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call1287, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_292, %_p_scalar_288
  %polly.access.Packed_MemRef_call2295 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call2295, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_300, %_p_scalar_296
  %166 = shl i64 %165, 3
  %167 = add i64 %166, %147
  %scevgep301 = getelementptr i8, i8* %call, i64 %167
  %scevgep301302 = bitcast i8* %scevgep301 to double*
  %_p_scalar_303 = load double, double* %scevgep301302, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_303
  store double %p_add42.i118, double* %scevgep301302, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283 = add nuw nsw i64 %polly.indvar282, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar282, %smin
  br i1 %exitcond1110.not, label %polly.loop_exit280, label %polly.loop_header278, !llvm.loop !84

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(76800) i8* @malloc(i64 76800) #6
  %malloccall310 = tail call dereferenceable_or_null(76800) i8* @malloc(i64 76800) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1346 = phi i64 [ %indvar.next1347, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %168 = add i64 %indvar1346, 1
  %169 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %169
  %min.iters.check1348 = icmp ult i64 %168, 4
  br i1 %min.iters.check1348, label %polly.loop_header400.preheader, label %vector.ph1349

vector.ph1349:                                    ; preds = %polly.loop_header394
  %n.vec1351 = and i64 %168, -4
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %vector.ph1349
  %index1352 = phi i64 [ 0, %vector.ph1349 ], [ %index.next1353, %vector.body1345 ]
  %170 = shl nuw nsw i64 %index1352, 3
  %171 = getelementptr i8, i8* %scevgep406, i64 %170
  %172 = bitcast i8* %171 to <4 x double>*
  %wide.load1356 = load <4 x double>, <4 x double>* %172, align 8, !alias.scope !85, !noalias !87
  %173 = fmul fast <4 x double> %wide.load1356, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %174 = bitcast i8* %171 to <4 x double>*
  store <4 x double> %173, <4 x double>* %174, align 8, !alias.scope !85, !noalias !87
  %index.next1353 = add i64 %index1352, 4
  %175 = icmp eq i64 %index.next1353, %n.vec1351
  br i1 %175, label %middle.block1343, label %vector.body1345, !llvm.loop !92

middle.block1343:                                 ; preds = %vector.body1345
  %cmp.n1355 = icmp eq i64 %168, %n.vec1351
  br i1 %cmp.n1355, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1343
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1351, %middle.block1343 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1343
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1347 = add i64 %indvar1346, 1
  br i1 %exitcond1140.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %176 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %176
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1139.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !93

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %177 = shl nsw i64 %polly.indvar413, 3
  %178 = or i64 %177, 1
  %179 = or i64 %177, 2
  %180 = or i64 %177, 3
  %181 = or i64 %177, 4
  %182 = or i64 %177, 5
  %183 = or i64 %177, 6
  %184 = or i64 %177, 7
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit441
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar_next414, 125
  br i1 %exitcond1138.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit441, %polly.loop_header410
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit441 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %197, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %185 = shl nuw nsw i64 %polly.indvar419, 3
  %186 = udiv i64 %polly.indvar419, 12
  %187 = mul nuw nsw i64 %186, 96
  %188 = sub nsw i64 %185, %187
  %189 = mul nsw i64 %polly.indvar419, -8
  %190 = add i64 %189, %187
  %191 = udiv i64 %polly.indvar419, 12
  %192 = mul nuw nsw i64 %191, 96
  %193 = sub nsw i64 %indvars.iv1123, %192
  %194 = add i64 %indvars.iv1128, %192
  %195 = mul nsw i64 %polly.indvar419, -8
  %196 = shl nsw i64 %polly.indvar419, 3
  br label %polly.loop_header428

polly.loop_exit441:                               ; preds = %polly.loop_exit482
  %197 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -8
  %indvars.iv.next1124 = add nuw nsw i64 %indvars.iv1123, 8
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -8
  %exitcond1137.not = icmp eq i64 %197, 150
  br i1 %exitcond1137.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header416
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %198 = add nuw nsw i64 %polly.indvar431, %196
  %polly.access.mul.call2435 = mul nuw nsw i64 %198, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %177, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !89, !noalias !94
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar431
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1116
  br i1 %exitcond1118.not, label %polly.loop_header428.1, label %polly.loop_header428

polly.loop_header439:                             ; preds = %polly.loop_exit482, %polly.loop_exit430.7
  %indvar1360 = phi i64 [ %indvar.next1361, %polly.loop_exit482 ], [ 0, %polly.loop_exit430.7 ]
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit482 ], [ %194, %polly.loop_exit430.7 ]
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %polly.loop_exit482 ], [ %193, %polly.loop_exit430.7 ]
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit482 ], [ %191, %polly.loop_exit430.7 ]
  %199 = mul nsw i64 %indvar1360, -96
  %200 = add i64 %188, %199
  %smax1362 = call i64 @llvm.smax.i64(i64 %200, i64 0)
  %201 = mul nuw nsw i64 %indvar1360, 96
  %202 = add i64 %190, %201
  %203 = add i64 %smax1362, %202
  %smax1127 = call i64 @llvm.smax.i64(i64 %indvars.iv1125, i64 0)
  %204 = add i64 %smax1127, %indvars.iv1130
  %205 = mul nuw nsw i64 %polly.indvar442, 12
  %.not.not944 = icmp ugt i64 %205, %polly.indvar419
  %206 = mul nuw nsw i64 %polly.indvar442, 96
  %207 = add nsw i64 %206, %195
  %208 = icmp sgt i64 %207, 0
  %209 = select i1 %208, i64 %207, i64 0
  %210 = add nsw i64 %207, 95
  %211 = icmp slt i64 %444, %210
  %212 = select i1 %211, i64 %444, i64 %210
  %polly.loop_guard469.not = icmp sgt i64 %209, %212
  br i1 %.not.not944, label %polly.loop_header445.us, label %polly.loop_header439.split

polly.loop_header445.us:                          ; preds = %polly.loop_header439, %polly.loop_exit468.us
  %polly.indvar448.us = phi i64 [ %polly.indvar_next449.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header439 ]
  %213 = add nuw nsw i64 %polly.indvar448.us, %177
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar448.us, 1200
  %polly.access.add.call1463.us = add nuw nsw i64 %213, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.mul.Packed_MemRef_call1309.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %213, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 1
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1309.us.1, align 8
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %213, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 2
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1309.us.2, align 8
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %213, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 3
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1309.us.3, align 8
  %polly.access.add.call1463.us.4 = add nuw nsw i64 %213, %polly.access.mul.call1462.us.4
  %polly.access.call1464.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.4
  %polly.access.call1464.load.us.4 = load double, double* %polly.access.call1464.us.4, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 4
  %polly.access.Packed_MemRef_call1309.us.4 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.4
  store double %polly.access.call1464.load.us.4, double* %polly.access.Packed_MemRef_call1309.us.4, align 8
  %polly.access.add.call1463.us.5 = add nuw nsw i64 %213, %polly.access.mul.call1462.us.5
  %polly.access.call1464.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.5
  %polly.access.call1464.load.us.5 = load double, double* %polly.access.call1464.us.5, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 5
  %polly.access.Packed_MemRef_call1309.us.5 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.5
  store double %polly.access.call1464.load.us.5, double* %polly.access.Packed_MemRef_call1309.us.5, align 8
  %polly.access.add.call1463.us.6 = add nuw nsw i64 %213, %polly.access.mul.call1462.us.6
  %polly.access.call1464.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.6
  %polly.access.call1464.load.us.6 = load double, double* %polly.access.call1464.us.6, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 6
  %polly.access.Packed_MemRef_call1309.us.6 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.6
  store double %polly.access.call1464.load.us.6, double* %polly.access.Packed_MemRef_call1309.us.6, align 8
  %polly.access.add.call1463.us.7 = add nuw nsw i64 %213, %polly.access.mul.call1462.us.7
  %polly.access.call1464.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.7
  %polly.access.call1464.load.us.7 = load double, double* %polly.access.call1464.us.7, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 7
  %polly.access.Packed_MemRef_call1309.us.7 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.7
  store double %polly.access.call1464.load.us.7, double* %polly.access.Packed_MemRef_call1309.us.7, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header466.us:                          ; preds = %polly.loop_header445.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %209, %polly.loop_header445.us ]
  %214 = add nuw nsw i64 %polly.indvar470.us, %196
  %polly.access.mul.call1474.us = mul nsw i64 %214, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %213, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309479.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1309479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %212
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_header445.us
  %polly.indvar_next449.us = add nuw nsw i64 %polly.indvar448.us, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next449.us, 8
  br i1 %exitcond1122.not, label %polly.loop_header480.preheader, label %polly.loop_header445.us

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466

polly.loop_exit482:                               ; preds = %polly.loop_exit489, %polly.loop_header480.preheader
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %polly.loop_cond444 = icmp ult i64 %polly.indvar442, 12
  %indvars.iv.next1126 = add i64 %indvars.iv1125, -96
  %indvars.iv.next1131 = add i64 %indvars.iv1130, 96
  %indvar.next1361 = add i64 %indvar1360, 1
  br i1 %polly.loop_cond444, label %polly.loop_header439, label %polly.loop_exit441

polly.loop_header480.preheader:                   ; preds = %polly.loop_header466.7, %polly.loop_exit468.us, %polly.loop_header439.split
  %215 = sub nsw i64 %196, %206
  %216 = icmp sgt i64 %215, 0
  %217 = select i1 %216, i64 %215, i64 0
  %218 = mul nsw i64 %polly.indvar442, -96
  %219 = icmp slt i64 %218, -1104
  %220 = select i1 %219, i64 %218, i64 -1104
  %221 = add nsw i64 %220, 1199
  %polly.loop_guard490.not = icmp sgt i64 %217, %221
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header466:                             ; preds = %polly.loop_header439.split, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %209, %polly.loop_header439.split ]
  %222 = add nuw nsw i64 %polly.indvar470, %196
  %polly.access.mul.call1474 = mul nsw i64 %222, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %177, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !88, !noalias !95
  %polly.access.Packed_MemRef_call1309479 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar470
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1309479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %212
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_header466.1

polly.loop_header480:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit489
  %polly.indvar483 = phi i64 [ %polly.indvar_next484, %polly.loop_exit489 ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1309502 = mul nuw nsw i64 %polly.indvar483, 1200
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_exit497
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next484, 8
  br i1 %exitcond1136.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header487:                             ; preds = %polly.loop_header480, %polly.loop_exit497
  %indvar1363 = phi i64 [ 0, %polly.loop_header480 ], [ %indvar.next1364, %polly.loop_exit497 ]
  %indvars.iv1132 = phi i64 [ %204, %polly.loop_header480 ], [ %indvars.iv.next1133, %polly.loop_exit497 ]
  %polly.indvar491 = phi i64 [ %217, %polly.loop_header480 ], [ %polly.indvar_next492, %polly.loop_exit497 ]
  %223 = add i64 %203, %indvar1363
  %smin1365 = call i64 @llvm.smin.i64(i64 %223, i64 7)
  %224 = add nsw i64 %smin1365, 1
  %smin1134 = call i64 @llvm.smin.i64(i64 %indvars.iv1132, i64 7)
  %225 = add nsw i64 %polly.indvar491, %207
  %polly.loop_guard4981204 = icmp sgt i64 %225, -1
  br i1 %polly.loop_guard4981204, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %226 = add nuw nsw i64 %polly.indvar491, %206
  %polly.access.add.Packed_MemRef_call2311507 = add nsw i64 %225, %polly.access.mul.Packed_MemRef_call1309502
  %polly.access.Packed_MemRef_call2311508 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2311508, align 8
  %polly.access.Packed_MemRef_call1309516 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1309516, align 8
  %227 = mul i64 %226, 9600
  %min.iters.check1366 = icmp ult i64 %224, 4
  br i1 %min.iters.check1366, label %polly.loop_header495.preheader1435, label %vector.ph1367

vector.ph1367:                                    ; preds = %polly.loop_header495.preheader
  %n.vec1369 = and i64 %224, -4
  %broadcast.splatinsert1375 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1376 = shufflevector <4 x double> %broadcast.splatinsert1375, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1378 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1379 = shufflevector <4 x double> %broadcast.splatinsert1378, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1359

vector.body1359:                                  ; preds = %vector.body1359, %vector.ph1367
  %index1370 = phi i64 [ 0, %vector.ph1367 ], [ %index.next1371, %vector.body1359 ]
  %228 = add nuw nsw i64 %index1370, %196
  %229 = add nuw nsw i64 %index1370, %polly.access.mul.Packed_MemRef_call1309502
  %230 = getelementptr double, double* %Packed_MemRef_call1309, i64 %229
  %231 = bitcast double* %230 to <4 x double>*
  %wide.load1374 = load <4 x double>, <4 x double>* %231, align 8
  %232 = fmul fast <4 x double> %broadcast.splat1376, %wide.load1374
  %233 = getelementptr double, double* %Packed_MemRef_call2311, i64 %229
  %234 = bitcast double* %233 to <4 x double>*
  %wide.load1377 = load <4 x double>, <4 x double>* %234, align 8
  %235 = fmul fast <4 x double> %broadcast.splat1379, %wide.load1377
  %236 = shl i64 %228, 3
  %237 = add i64 %236, %227
  %238 = getelementptr i8, i8* %call, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  %wide.load1380 = load <4 x double>, <4 x double>* %239, align 8, !alias.scope !85, !noalias !87
  %240 = fadd fast <4 x double> %235, %232
  %241 = fmul fast <4 x double> %240, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %242 = fadd fast <4 x double> %241, %wide.load1380
  %243 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %242, <4 x double>* %243, align 8, !alias.scope !85, !noalias !87
  %index.next1371 = add i64 %index1370, 4
  %244 = icmp eq i64 %index.next1371, %n.vec1369
  br i1 %244, label %middle.block1357, label %vector.body1359, !llvm.loop !96

middle.block1357:                                 ; preds = %vector.body1359
  %cmp.n1373 = icmp eq i64 %224, %n.vec1369
  br i1 %cmp.n1373, label %polly.loop_exit497, label %polly.loop_header495.preheader1435

polly.loop_header495.preheader1435:               ; preds = %polly.loop_header495.preheader, %middle.block1357
  %polly.indvar499.ph = phi i64 [ 0, %polly.loop_header495.preheader ], [ %n.vec1369, %middle.block1357 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1357, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %221
  %indvars.iv.next1133 = add i64 %indvars.iv1132, 1
  %indvar.next1364 = add i64 %indvar1363, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_exit489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1435, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1435 ]
  %245 = add nuw nsw i64 %polly.indvar499, %196
  %polly.access.add.Packed_MemRef_call1309503 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1309502
  %polly.access.Packed_MemRef_call1309504 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1309504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2311512 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2311512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %246 = shl i64 %245, 3
  %247 = add i64 %246, %227
  %scevgep518 = getelementptr i8, i8* %call, i64 %247
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_520
  store double %p_add42.i79, double* %scevgep518519, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar499, %smin1134
  br i1 %exitcond1135.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !97

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(76800) i8* @malloc(i64 76800) #6
  %malloccall527 = tail call dereferenceable_or_null(76800) i8* @malloc(i64 76800) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %248 = add i64 %indvar, 1
  %249 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %249
  %min.iters.check1298 = icmp ult i64 %248, 4
  br i1 %min.iters.check1298, label %polly.loop_header617.preheader, label %vector.ph1299

vector.ph1299:                                    ; preds = %polly.loop_header611
  %n.vec1301 = and i64 %248, -4
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1303, %vector.body1297 ]
  %250 = shl nuw nsw i64 %index1302, 3
  %251 = getelementptr i8, i8* %scevgep623, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %252, align 8, !alias.scope !98, !noalias !100
  %253 = fmul fast <4 x double> %wide.load1306, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %254 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %253, <4 x double>* %254, align 8, !alias.scope !98, !noalias !100
  %index.next1303 = add i64 %index1302, 4
  %255 = icmp eq i64 %index.next1303, %n.vec1301
  br i1 %255, label %middle.block1295, label %vector.body1297, !llvm.loop !105

middle.block1295:                                 ; preds = %vector.body1297
  %cmp.n1305 = icmp eq i64 %248, %n.vec1301
  br i1 %cmp.n1305, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1295
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1301, %middle.block1295 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1295
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1165.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %256 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %256
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !98, !noalias !100
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1164.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1164.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !106

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %257 = shl nsw i64 %polly.indvar630, 3
  %258 = or i64 %257, 1
  %259 = or i64 %257, 2
  %260 = or i64 %257, 3
  %261 = or i64 %257, 4
  %262 = or i64 %257, 5
  %263 = or i64 %257, 6
  %264 = or i64 %257, 7
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next631, 125
  br i1 %exitcond1163.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1141 = phi i64 [ %indvars.iv.next1142, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %277, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %265 = shl nuw nsw i64 %polly.indvar636, 3
  %266 = udiv i64 %polly.indvar636, 12
  %267 = mul nuw nsw i64 %266, 96
  %268 = sub nsw i64 %265, %267
  %269 = mul nsw i64 %polly.indvar636, -8
  %270 = add i64 %269, %267
  %271 = udiv i64 %polly.indvar636, 12
  %272 = mul nuw nsw i64 %271, 96
  %273 = sub nsw i64 %indvars.iv1148, %272
  %274 = add i64 %indvars.iv1153, %272
  %275 = mul nsw i64 %polly.indvar636, -8
  %276 = shl nsw i64 %polly.indvar636, 3
  br label %polly.loop_header645

polly.loop_exit658:                               ; preds = %polly.loop_exit699
  %277 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1142 = add nsw i64 %indvars.iv1141, -8
  %indvars.iv.next1149 = add nuw nsw i64 %indvars.iv1148, 8
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -8
  %exitcond1162.not = icmp eq i64 %277, 150
  br i1 %exitcond1162.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header633
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %278 = add nuw nsw i64 %polly.indvar648, %276
  %polly.access.mul.call2652 = mul nuw nsw i64 %278, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %257, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !102, !noalias !107
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar648
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1141
  br i1 %exitcond1143.not, label %polly.loop_header645.1, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit699, %polly.loop_exit647.7
  %indvar1310 = phi i64 [ %indvar.next1311, %polly.loop_exit699 ], [ 0, %polly.loop_exit647.7 ]
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit699 ], [ %274, %polly.loop_exit647.7 ]
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit699 ], [ %273, %polly.loop_exit647.7 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit699 ], [ %271, %polly.loop_exit647.7 ]
  %279 = mul nsw i64 %indvar1310, -96
  %280 = add i64 %268, %279
  %smax1312 = call i64 @llvm.smax.i64(i64 %280, i64 0)
  %281 = mul nuw nsw i64 %indvar1310, 96
  %282 = add i64 %270, %281
  %283 = add i64 %smax1312, %282
  %smax1152 = call i64 @llvm.smax.i64(i64 %indvars.iv1150, i64 0)
  %284 = add i64 %smax1152, %indvars.iv1155
  %285 = mul nuw nsw i64 %polly.indvar659, 12
  %.not.not945 = icmp ugt i64 %285, %polly.indvar636
  %286 = mul nuw nsw i64 %polly.indvar659, 96
  %287 = add nsw i64 %286, %275
  %288 = icmp sgt i64 %287, 0
  %289 = select i1 %288, i64 %287, i64 0
  %290 = add nsw i64 %287, 95
  %291 = icmp slt i64 %466, %290
  %292 = select i1 %291, i64 %466, i64 %290
  %polly.loop_guard686.not = icmp sgt i64 %289, %292
  br i1 %.not.not945, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit685.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit685.us ], [ 0, %polly.loop_header656 ]
  %293 = add nuw nsw i64 %polly.indvar665.us, %257
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  %polly.access.add.call1680.us = add nuw nsw i64 %293, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.mul.Packed_MemRef_call1526.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %293, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 1
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %293, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 2
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %293, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 3
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  %polly.access.add.call1680.us.4 = add nuw nsw i64 %293, %polly.access.mul.call1679.us.4
  %polly.access.call1681.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.4
  %polly.access.call1681.load.us.4 = load double, double* %polly.access.call1681.us.4, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 4
  %polly.access.Packed_MemRef_call1526.us.4 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.4
  store double %polly.access.call1681.load.us.4, double* %polly.access.Packed_MemRef_call1526.us.4, align 8
  %polly.access.add.call1680.us.5 = add nuw nsw i64 %293, %polly.access.mul.call1679.us.5
  %polly.access.call1681.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.5
  %polly.access.call1681.load.us.5 = load double, double* %polly.access.call1681.us.5, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 5
  %polly.access.Packed_MemRef_call1526.us.5 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.5
  store double %polly.access.call1681.load.us.5, double* %polly.access.Packed_MemRef_call1526.us.5, align 8
  %polly.access.add.call1680.us.6 = add nuw nsw i64 %293, %polly.access.mul.call1679.us.6
  %polly.access.call1681.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.6
  %polly.access.call1681.load.us.6 = load double, double* %polly.access.call1681.us.6, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 6
  %polly.access.Packed_MemRef_call1526.us.6 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.6
  store double %polly.access.call1681.load.us.6, double* %polly.access.Packed_MemRef_call1526.us.6, align 8
  %polly.access.add.call1680.us.7 = add nuw nsw i64 %293, %polly.access.mul.call1679.us.7
  %polly.access.call1681.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.7
  %polly.access.call1681.load.us.7 = load double, double* %polly.access.call1681.us.7, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 7
  %polly.access.Packed_MemRef_call1526.us.7 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.7
  store double %polly.access.call1681.load.us.7, double* %polly.access.Packed_MemRef_call1526.us.7, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_exit685.us, label %polly.loop_header683.us

polly.loop_header683.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header683.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header683.us ], [ %289, %polly.loop_header662.us ]
  %294 = add nuw nsw i64 %polly.indvar687.us, %276
  %polly.access.mul.call1691.us = mul nsw i64 %294, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %293, %polly.access.mul.call1691.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.us = add nuw nsw i64 %polly.indvar687.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526696.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1526696.us, align 8
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %polly.loop_cond689.not.not.us = icmp slt i64 %polly.indvar687.us, %292
  br i1 %polly.loop_cond689.not.not.us, label %polly.loop_header683.us, label %polly.loop_exit685.us

polly.loop_exit685.us:                            ; preds = %polly.loop_header683.us, %polly.loop_header662.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next666.us, 8
  br i1 %exitcond1147.not, label %polly.loop_header697.preheader, label %polly.loop_header662.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header683

polly.loop_exit699:                               ; preds = %polly.loop_exit706, %polly.loop_header697.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp ult i64 %polly.indvar659, 12
  %indvars.iv.next1151 = add i64 %indvars.iv1150, -96
  %indvars.iv.next1156 = add i64 %indvars.iv1155, 96
  %indvar.next1311 = add i64 %indvar1310, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header697.preheader:                   ; preds = %polly.loop_header683.7, %polly.loop_exit685.us, %polly.loop_header656.split
  %295 = sub nsw i64 %276, %286
  %296 = icmp sgt i64 %295, 0
  %297 = select i1 %296, i64 %295, i64 0
  %298 = mul nsw i64 %polly.indvar659, -96
  %299 = icmp slt i64 %298, -1104
  %300 = select i1 %299, i64 %298, i64 -1104
  %301 = add nsw i64 %300, 1199
  %polly.loop_guard707.not = icmp sgt i64 %297, %301
  br i1 %polly.loop_guard707.not, label %polly.loop_exit699, label %polly.loop_header697

polly.loop_header683:                             ; preds = %polly.loop_header656.split, %polly.loop_header683
  %polly.indvar687 = phi i64 [ %polly.indvar_next688, %polly.loop_header683 ], [ %289, %polly.loop_header656.split ]
  %302 = add nuw nsw i64 %polly.indvar687, %276
  %polly.access.mul.call1691 = mul nsw i64 %302, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %257, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !101, !noalias !108
  %polly.access.Packed_MemRef_call1526696 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar687
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1526696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %polly.loop_cond689.not.not = icmp slt i64 %polly.indvar687, %292
  br i1 %polly.loop_cond689.not.not, label %polly.loop_header683, label %polly.loop_header683.1

polly.loop_header697:                             ; preds = %polly.loop_header697.preheader, %polly.loop_exit706
  %polly.indvar700 = phi i64 [ %polly.indvar_next701, %polly.loop_exit706 ], [ 0, %polly.loop_header697.preheader ]
  %polly.access.mul.Packed_MemRef_call1526719 = mul nuw nsw i64 %polly.indvar700, 1200
  br label %polly.loop_header704

polly.loop_exit706:                               ; preds = %polly.loop_exit714
  %polly.indvar_next701 = add nuw nsw i64 %polly.indvar700, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next701, 8
  br i1 %exitcond1161.not, label %polly.loop_exit699, label %polly.loop_header697

polly.loop_header704:                             ; preds = %polly.loop_header697, %polly.loop_exit714
  %indvar1313 = phi i64 [ 0, %polly.loop_header697 ], [ %indvar.next1314, %polly.loop_exit714 ]
  %indvars.iv1157 = phi i64 [ %284, %polly.loop_header697 ], [ %indvars.iv.next1158, %polly.loop_exit714 ]
  %polly.indvar708 = phi i64 [ %297, %polly.loop_header697 ], [ %polly.indvar_next709, %polly.loop_exit714 ]
  %303 = add i64 %283, %indvar1313
  %smin1315 = call i64 @llvm.smin.i64(i64 %303, i64 7)
  %304 = add nsw i64 %smin1315, 1
  %smin1159 = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 7)
  %305 = add nsw i64 %polly.indvar708, %287
  %polly.loop_guard7151205 = icmp sgt i64 %305, -1
  br i1 %polly.loop_guard7151205, label %polly.loop_header712.preheader, label %polly.loop_exit714

polly.loop_header712.preheader:                   ; preds = %polly.loop_header704
  %306 = add nuw nsw i64 %polly.indvar708, %286
  %polly.access.add.Packed_MemRef_call2528724 = add nsw i64 %305, %polly.access.mul.Packed_MemRef_call1526719
  %polly.access.Packed_MemRef_call2528725 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724
  %_p_scalar_726 = load double, double* %polly.access.Packed_MemRef_call2528725, align 8
  %polly.access.Packed_MemRef_call1526733 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724
  %_p_scalar_734 = load double, double* %polly.access.Packed_MemRef_call1526733, align 8
  %307 = mul i64 %306, 9600
  %min.iters.check1316 = icmp ult i64 %304, 4
  br i1 %min.iters.check1316, label %polly.loop_header712.preheader1439, label %vector.ph1317

vector.ph1317:                                    ; preds = %polly.loop_header712.preheader
  %n.vec1319 = and i64 %304, -4
  %broadcast.splatinsert1325 = insertelement <4 x double> poison, double %_p_scalar_726, i32 0
  %broadcast.splat1326 = shufflevector <4 x double> %broadcast.splatinsert1325, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1328 = insertelement <4 x double> poison, double %_p_scalar_734, i32 0
  %broadcast.splat1329 = shufflevector <4 x double> %broadcast.splatinsert1328, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1309

vector.body1309:                                  ; preds = %vector.body1309, %vector.ph1317
  %index1320 = phi i64 [ 0, %vector.ph1317 ], [ %index.next1321, %vector.body1309 ]
  %308 = add nuw nsw i64 %index1320, %276
  %309 = add nuw nsw i64 %index1320, %polly.access.mul.Packed_MemRef_call1526719
  %310 = getelementptr double, double* %Packed_MemRef_call1526, i64 %309
  %311 = bitcast double* %310 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %311, align 8
  %312 = fmul fast <4 x double> %broadcast.splat1326, %wide.load1324
  %313 = getelementptr double, double* %Packed_MemRef_call2528, i64 %309
  %314 = bitcast double* %313 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %314, align 8
  %315 = fmul fast <4 x double> %broadcast.splat1329, %wide.load1327
  %316 = shl i64 %308, 3
  %317 = add i64 %316, %307
  %318 = getelementptr i8, i8* %call, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  %wide.load1330 = load <4 x double>, <4 x double>* %319, align 8, !alias.scope !98, !noalias !100
  %320 = fadd fast <4 x double> %315, %312
  %321 = fmul fast <4 x double> %320, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %322 = fadd fast <4 x double> %321, %wide.load1330
  %323 = bitcast i8* %318 to <4 x double>*
  store <4 x double> %322, <4 x double>* %323, align 8, !alias.scope !98, !noalias !100
  %index.next1321 = add i64 %index1320, 4
  %324 = icmp eq i64 %index.next1321, %n.vec1319
  br i1 %324, label %middle.block1307, label %vector.body1309, !llvm.loop !109

middle.block1307:                                 ; preds = %vector.body1309
  %cmp.n1323 = icmp eq i64 %304, %n.vec1319
  br i1 %cmp.n1323, label %polly.loop_exit714, label %polly.loop_header712.preheader1439

polly.loop_header712.preheader1439:               ; preds = %polly.loop_header712.preheader, %middle.block1307
  %polly.indvar716.ph = phi i64 [ 0, %polly.loop_header712.preheader ], [ %n.vec1319, %middle.block1307 ]
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_header712, %middle.block1307, %polly.loop_header704
  %polly.indvar_next709 = add nuw nsw i64 %polly.indvar708, 1
  %polly.loop_cond710.not.not = icmp slt i64 %polly.indvar708, %301
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 1
  %indvar.next1314 = add i64 %indvar1313, 1
  br i1 %polly.loop_cond710.not.not, label %polly.loop_header704, label %polly.loop_exit706

polly.loop_header712:                             ; preds = %polly.loop_header712.preheader1439, %polly.loop_header712
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_header712 ], [ %polly.indvar716.ph, %polly.loop_header712.preheader1439 ]
  %325 = add nuw nsw i64 %polly.indvar716, %276
  %polly.access.add.Packed_MemRef_call1526720 = add nuw nsw i64 %polly.indvar716, %polly.access.mul.Packed_MemRef_call1526719
  %polly.access.Packed_MemRef_call1526721 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720
  %_p_scalar_722 = load double, double* %polly.access.Packed_MemRef_call1526721, align 8
  %p_mul27.i = fmul fast double %_p_scalar_726, %_p_scalar_722
  %polly.access.Packed_MemRef_call2528729 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720
  %_p_scalar_730 = load double, double* %polly.access.Packed_MemRef_call2528729, align 8
  %p_mul37.i = fmul fast double %_p_scalar_734, %_p_scalar_730
  %326 = shl i64 %325, 3
  %327 = add i64 %326, %307
  %scevgep735 = getelementptr i8, i8* %call, i64 %327
  %scevgep735736 = bitcast i8* %scevgep735 to double*
  %_p_scalar_737 = load double, double* %scevgep735736, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_737
  store double %p_add42.i, double* %scevgep735736, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar716, %smin1159
  br i1 %exitcond1160.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !110

polly.loop_header864:                             ; preds = %entry, %polly.loop_exit872
  %indvars.iv1190 = phi i64 [ %indvars.iv.next1191, %polly.loop_exit872 ], [ 0, %entry ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %entry ]
  %smin1192 = call i64 @llvm.smin.i64(i64 %indvars.iv1190, i64 -1168)
  %328 = shl nsw i64 %polly.indvar867, 5
  %329 = add nsw i64 %smin1192, 1199
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1191 = add nsw i64 %indvars.iv1190, -32
  %exitcond1195.not = icmp eq i64 %polly.indvar_next868, 38
  br i1 %exitcond1195.not, label %polly.loop_header891, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %indvars.iv1186 = phi i64 [ %indvars.iv.next1187, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %330 = mul nsw i64 %polly.indvar873, -32
  %smin1236 = call i64 @llvm.smin.i64(i64 %330, i64 -1168)
  %331 = add nsw i64 %smin1236, 1200
  %smin1188 = call i64 @llvm.smin.i64(i64 %indvars.iv1186, i64 -1168)
  %332 = shl nsw i64 %polly.indvar873, 5
  %333 = add nsw i64 %smin1188, 1199
  br label %polly.loop_header876

polly.loop_exit878:                               ; preds = %polly.loop_exit884
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %indvars.iv.next1187 = add nsw i64 %indvars.iv1186, -32
  %exitcond1194.not = icmp eq i64 %polly.indvar_next874, 38
  br i1 %exitcond1194.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_exit884, %polly.loop_header870
  %polly.indvar879 = phi i64 [ 0, %polly.loop_header870 ], [ %polly.indvar_next880, %polly.loop_exit884 ]
  %334 = add nuw nsw i64 %polly.indvar879, %328
  %335 = trunc i64 %334 to i32
  %336 = mul nuw nsw i64 %334, 9600
  %min.iters.check = icmp eq i64 %331, 0
  br i1 %min.iters.check, label %polly.loop_header882, label %vector.ph1237

vector.ph1237:                                    ; preds = %polly.loop_header876
  %broadcast.splatinsert1244 = insertelement <4 x i64> poison, i64 %332, i32 0
  %broadcast.splat1245 = shufflevector <4 x i64> %broadcast.splatinsert1244, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1246 = insertelement <4 x i32> poison, i32 %335, i32 0
  %broadcast.splat1247 = shufflevector <4 x i32> %broadcast.splatinsert1246, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %vector.ph1237
  %index1238 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1239, %vector.body1235 ]
  %vec.ind1242 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1237 ], [ %vec.ind.next1243, %vector.body1235 ]
  %337 = add nuw nsw <4 x i64> %vec.ind1242, %broadcast.splat1245
  %338 = trunc <4 x i64> %337 to <4 x i32>
  %339 = mul <4 x i32> %broadcast.splat1247, %338
  %340 = add <4 x i32> %339, <i32 3, i32 3, i32 3, i32 3>
  %341 = urem <4 x i32> %340, <i32 1200, i32 1200, i32 1200, i32 1200>
  %342 = sitofp <4 x i32> %341 to <4 x double>
  %343 = fmul fast <4 x double> %342, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %344 = extractelement <4 x i64> %337, i32 0
  %345 = shl i64 %344, 3
  %346 = add nuw nsw i64 %345, %336
  %347 = getelementptr i8, i8* %call, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %343, <4 x double>* %348, align 8, !alias.scope !111, !noalias !113
  %index.next1239 = add i64 %index1238, 4
  %vec.ind.next1243 = add <4 x i64> %vec.ind1242, <i64 4, i64 4, i64 4, i64 4>
  %349 = icmp eq i64 %index.next1239, %331
  br i1 %349, label %polly.loop_exit884, label %vector.body1235, !llvm.loop !116

polly.loop_exit884:                               ; preds = %vector.body1235, %polly.loop_header882
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1193.not = icmp eq i64 %polly.indvar879, %329
  br i1 %exitcond1193.not, label %polly.loop_exit878, label %polly.loop_header876

polly.loop_header882:                             ; preds = %polly.loop_header876, %polly.loop_header882
  %polly.indvar885 = phi i64 [ %polly.indvar_next886, %polly.loop_header882 ], [ 0, %polly.loop_header876 ]
  %350 = add nuw nsw i64 %polly.indvar885, %332
  %351 = trunc i64 %350 to i32
  %352 = mul i32 %351, %335
  %353 = add i32 %352, 3
  %354 = urem i32 %353, 1200
  %p_conv31.i = sitofp i32 %354 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %355 = shl i64 %350, 3
  %356 = add nuw nsw i64 %355, %336
  %scevgep888 = getelementptr i8, i8* %call, i64 %356
  %scevgep888889 = bitcast i8* %scevgep888 to double*
  store double %p_div33.i, double* %scevgep888889, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next886 = add nuw nsw i64 %polly.indvar885, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar885, %333
  br i1 %exitcond1189.not, label %polly.loop_exit884, label %polly.loop_header882, !llvm.loop !117

polly.loop_header891:                             ; preds = %polly.loop_exit872, %polly.loop_exit899
  %indvars.iv1180 = phi i64 [ %indvars.iv.next1181, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %smin1182 = call i64 @llvm.smin.i64(i64 %indvars.iv1180, i64 -1168)
  %357 = shl nsw i64 %polly.indvar894, 5
  %358 = add nsw i64 %smin1182, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1181 = add nsw i64 %indvars.iv1180, -32
  %exitcond1185.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1185.not, label %polly.loop_header917, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1176 = phi i64 [ %indvars.iv.next1177, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %359 = mul nsw i64 %polly.indvar900, -32
  %smin1251 = call i64 @llvm.smin.i64(i64 %359, i64 -968)
  %360 = add nsw i64 %smin1251, 1000
  %smin1178 = call i64 @llvm.smin.i64(i64 %indvars.iv1176, i64 -968)
  %361 = shl nsw i64 %polly.indvar900, 5
  %362 = add nsw i64 %smin1178, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1177 = add nsw i64 %indvars.iv1176, -32
  %exitcond1184.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1184.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %363 = add nuw nsw i64 %polly.indvar906, %357
  %364 = trunc i64 %363 to i32
  %365 = mul nuw nsw i64 %363, 8000
  %min.iters.check1252 = icmp eq i64 %360, 0
  br i1 %min.iters.check1252, label %polly.loop_header909, label %vector.ph1253

vector.ph1253:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1262 = insertelement <4 x i64> poison, i64 %361, i32 0
  %broadcast.splat1263 = shufflevector <4 x i64> %broadcast.splatinsert1262, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1264 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1265 = shufflevector <4 x i32> %broadcast.splatinsert1264, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1257, %vector.body1250 ]
  %vec.ind1260 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1253 ], [ %vec.ind.next1261, %vector.body1250 ]
  %366 = add nuw nsw <4 x i64> %vec.ind1260, %broadcast.splat1263
  %367 = trunc <4 x i64> %366 to <4 x i32>
  %368 = mul <4 x i32> %broadcast.splat1265, %367
  %369 = add <4 x i32> %368, <i32 2, i32 2, i32 2, i32 2>
  %370 = urem <4 x i32> %369, <i32 1000, i32 1000, i32 1000, i32 1000>
  %371 = sitofp <4 x i32> %370 to <4 x double>
  %372 = fmul fast <4 x double> %371, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %373 = extractelement <4 x i64> %366, i32 0
  %374 = shl i64 %373, 3
  %375 = add nuw nsw i64 %374, %365
  %376 = getelementptr i8, i8* %call2, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %372, <4 x double>* %377, align 8, !alias.scope !115, !noalias !118
  %index.next1257 = add i64 %index1256, 4
  %vec.ind.next1261 = add <4 x i64> %vec.ind1260, <i64 4, i64 4, i64 4, i64 4>
  %378 = icmp eq i64 %index.next1257, %360
  br i1 %378, label %polly.loop_exit911, label %vector.body1250, !llvm.loop !119

polly.loop_exit911:                               ; preds = %vector.body1250, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1183.not = icmp eq i64 %polly.indvar906, %358
  br i1 %exitcond1183.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %379 = add nuw nsw i64 %polly.indvar912, %361
  %380 = trunc i64 %379 to i32
  %381 = mul i32 %380, %364
  %382 = add i32 %381, 2
  %383 = urem i32 %382, 1000
  %p_conv10.i = sitofp i32 %383 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %384 = shl i64 %379, 3
  %385 = add nuw nsw i64 %384, %365
  %scevgep915 = getelementptr i8, i8* %call2, i64 %385
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div12.i, double* %scevgep915916, align 8, !alias.scope !115, !noalias !118
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1179.not = icmp eq i64 %polly.indvar912, %362
  br i1 %exitcond1179.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !120

polly.loop_header917:                             ; preds = %polly.loop_exit899, %polly.loop_exit925
  %indvars.iv1170 = phi i64 [ %indvars.iv.next1171, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %smin1172 = call i64 @llvm.smin.i64(i64 %indvars.iv1170, i64 -1168)
  %386 = shl nsw i64 %polly.indvar920, 5
  %387 = add nsw i64 %smin1172, 1199
  br label %polly.loop_header923

polly.loop_exit925:                               ; preds = %polly.loop_exit931
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %indvars.iv.next1171 = add nsw i64 %indvars.iv1170, -32
  %exitcond1175.not = icmp eq i64 %polly.indvar_next921, 38
  br i1 %exitcond1175.not, label %init_array.exit, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_exit931, %polly.loop_header917
  %indvars.iv1166 = phi i64 [ %indvars.iv.next1167, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %388 = mul nsw i64 %polly.indvar926, -32
  %smin1269 = call i64 @llvm.smin.i64(i64 %388, i64 -968)
  %389 = add nsw i64 %smin1269, 1000
  %smin1168 = call i64 @llvm.smin.i64(i64 %indvars.iv1166, i64 -968)
  %390 = shl nsw i64 %polly.indvar926, 5
  %391 = add nsw i64 %smin1168, 999
  br label %polly.loop_header929

polly.loop_exit931:                               ; preds = %polly.loop_exit937
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %indvars.iv.next1167 = add nsw i64 %indvars.iv1166, -32
  %exitcond1174.not = icmp eq i64 %polly.indvar_next927, 32
  br i1 %exitcond1174.not, label %polly.loop_exit925, label %polly.loop_header923

polly.loop_header929:                             ; preds = %polly.loop_exit937, %polly.loop_header923
  %polly.indvar932 = phi i64 [ 0, %polly.loop_header923 ], [ %polly.indvar_next933, %polly.loop_exit937 ]
  %392 = add nuw nsw i64 %polly.indvar932, %386
  %393 = trunc i64 %392 to i32
  %394 = mul nuw nsw i64 %392, 8000
  %min.iters.check1270 = icmp eq i64 %389, 0
  br i1 %min.iters.check1270, label %polly.loop_header935, label %vector.ph1271

vector.ph1271:                                    ; preds = %polly.loop_header929
  %broadcast.splatinsert1280 = insertelement <4 x i64> poison, i64 %390, i32 0
  %broadcast.splat1281 = shufflevector <4 x i64> %broadcast.splatinsert1280, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1282 = insertelement <4 x i32> poison, i32 %393, i32 0
  %broadcast.splat1283 = shufflevector <4 x i32> %broadcast.splatinsert1282, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1268 ]
  %vec.ind1278 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1271 ], [ %vec.ind.next1279, %vector.body1268 ]
  %395 = add nuw nsw <4 x i64> %vec.ind1278, %broadcast.splat1281
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat1283, %396
  %398 = add <4 x i32> %397, <i32 1, i32 1, i32 1, i32 1>
  %399 = urem <4 x i32> %398, <i32 1200, i32 1200, i32 1200, i32 1200>
  %400 = sitofp <4 x i32> %399 to <4 x double>
  %401 = fmul fast <4 x double> %400, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %402 = extractelement <4 x i64> %395, i32 0
  %403 = shl i64 %402, 3
  %404 = add nuw nsw i64 %403, %394
  %405 = getelementptr i8, i8* %call1, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %401, <4 x double>* %406, align 8, !alias.scope !114, !noalias !121
  %index.next1275 = add i64 %index1274, 4
  %vec.ind.next1279 = add <4 x i64> %vec.ind1278, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next1275, %389
  br i1 %407, label %polly.loop_exit937, label %vector.body1268, !llvm.loop !122

polly.loop_exit937:                               ; preds = %vector.body1268, %polly.loop_header935
  %polly.indvar_next933 = add nuw nsw i64 %polly.indvar932, 1
  %exitcond1173.not = icmp eq i64 %polly.indvar932, %387
  br i1 %exitcond1173.not, label %polly.loop_exit931, label %polly.loop_header929

polly.loop_header935:                             ; preds = %polly.loop_header929, %polly.loop_header935
  %polly.indvar938 = phi i64 [ %polly.indvar_next939, %polly.loop_header935 ], [ 0, %polly.loop_header929 ]
  %408 = add nuw nsw i64 %polly.indvar938, %390
  %409 = trunc i64 %408 to i32
  %410 = mul i32 %409, %393
  %411 = add i32 %410, 1
  %412 = urem i32 %411, 1200
  %p_conv.i = sitofp i32 %412 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %413 = shl i64 %408, 3
  %414 = add nuw nsw i64 %413, %394
  %scevgep942 = getelementptr i8, i8* %call1, i64 %414
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div.i, double* %scevgep942943, align 8, !alias.scope !114, !noalias !121
  %polly.indvar_next939 = add nuw nsw i64 %polly.indvar938, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar938, %391
  br i1 %exitcond1169.not, label %polly.loop_exit937, label %polly.loop_header935, !llvm.loop !123

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %415 = add nuw nsw i64 %polly.indvar221.1, %116
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %415, 1000
  %polly.access.add.call2226.1 = add nuw nsw i64 %98, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, 1200
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header218.2, label %polly.loop_header218.1

polly.loop_header218.2:                           ; preds = %polly.loop_header218.1, %polly.loop_header218.2
  %polly.indvar221.2 = phi i64 [ %polly.indvar_next222.2, %polly.loop_header218.2 ], [ 0, %polly.loop_header218.1 ]
  %416 = add nuw nsw i64 %polly.indvar221.2, %116
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %416, 1000
  %polly.access.add.call2226.2 = add nuw nsw i64 %99, %polly.access.mul.call2225.2
  %polly.access.call2227.2 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.2
  %polly.access.call2227.load.2 = load double, double* %polly.access.call2227.2, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar221.2, 2400
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2227.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next222.2 = add nuw nsw i64 %polly.indvar221.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next222.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header218.3, label %polly.loop_header218.2

polly.loop_header218.3:                           ; preds = %polly.loop_header218.2, %polly.loop_header218.3
  %polly.indvar221.3 = phi i64 [ %polly.indvar_next222.3, %polly.loop_header218.3 ], [ 0, %polly.loop_header218.2 ]
  %417 = add nuw nsw i64 %polly.indvar221.3, %116
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %417, 1000
  %polly.access.add.call2226.3 = add nuw nsw i64 %100, %polly.access.mul.call2225.3
  %polly.access.call2227.3 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.3
  %polly.access.call2227.load.3 = load double, double* %polly.access.call2227.3, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar221.3, 3600
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2227.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next222.3 = add nuw nsw i64 %polly.indvar221.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next222.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_header218.4, label %polly.loop_header218.3

polly.loop_header218.4:                           ; preds = %polly.loop_header218.3, %polly.loop_header218.4
  %polly.indvar221.4 = phi i64 [ %polly.indvar_next222.4, %polly.loop_header218.4 ], [ 0, %polly.loop_header218.3 ]
  %418 = add nuw nsw i64 %polly.indvar221.4, %116
  %polly.access.mul.call2225.4 = mul nuw nsw i64 %418, 1000
  %polly.access.add.call2226.4 = add nuw nsw i64 %101, %polly.access.mul.call2225.4
  %polly.access.call2227.4 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.4
  %polly.access.call2227.load.4 = load double, double* %polly.access.call2227.4, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.4 = add nuw nsw i64 %polly.indvar221.4, 4800
  %polly.access.Packed_MemRef_call2.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.4
  store double %polly.access.call2227.load.4, double* %polly.access.Packed_MemRef_call2.4, align 8
  %polly.indvar_next222.4 = add nuw nsw i64 %polly.indvar221.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar_next222.4, %indvars.iv
  br i1 %exitcond.4.not, label %polly.loop_header218.5, label %polly.loop_header218.4

polly.loop_header218.5:                           ; preds = %polly.loop_header218.4, %polly.loop_header218.5
  %polly.indvar221.5 = phi i64 [ %polly.indvar_next222.5, %polly.loop_header218.5 ], [ 0, %polly.loop_header218.4 ]
  %419 = add nuw nsw i64 %polly.indvar221.5, %116
  %polly.access.mul.call2225.5 = mul nuw nsw i64 %419, 1000
  %polly.access.add.call2226.5 = add nuw nsw i64 %102, %polly.access.mul.call2225.5
  %polly.access.call2227.5 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.5
  %polly.access.call2227.load.5 = load double, double* %polly.access.call2227.5, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.5 = add nuw nsw i64 %polly.indvar221.5, 6000
  %polly.access.Packed_MemRef_call2.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.5
  store double %polly.access.call2227.load.5, double* %polly.access.Packed_MemRef_call2.5, align 8
  %polly.indvar_next222.5 = add nuw nsw i64 %polly.indvar221.5, 1
  %exitcond.5.not = icmp eq i64 %polly.indvar_next222.5, %indvars.iv
  br i1 %exitcond.5.not, label %polly.loop_header218.6, label %polly.loop_header218.5

polly.loop_header218.6:                           ; preds = %polly.loop_header218.5, %polly.loop_header218.6
  %polly.indvar221.6 = phi i64 [ %polly.indvar_next222.6, %polly.loop_header218.6 ], [ 0, %polly.loop_header218.5 ]
  %420 = add nuw nsw i64 %polly.indvar221.6, %116
  %polly.access.mul.call2225.6 = mul nuw nsw i64 %420, 1000
  %polly.access.add.call2226.6 = add nuw nsw i64 %103, %polly.access.mul.call2225.6
  %polly.access.call2227.6 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.6
  %polly.access.call2227.load.6 = load double, double* %polly.access.call2227.6, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.6 = add nuw nsw i64 %polly.indvar221.6, 7200
  %polly.access.Packed_MemRef_call2.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.6
  store double %polly.access.call2227.load.6, double* %polly.access.Packed_MemRef_call2.6, align 8
  %polly.indvar_next222.6 = add nuw nsw i64 %polly.indvar221.6, 1
  %exitcond.6.not = icmp eq i64 %polly.indvar_next222.6, %indvars.iv
  br i1 %exitcond.6.not, label %polly.loop_header218.7, label %polly.loop_header218.6

polly.loop_header218.7:                           ; preds = %polly.loop_header218.6, %polly.loop_header218.7
  %polly.indvar221.7 = phi i64 [ %polly.indvar_next222.7, %polly.loop_header218.7 ], [ 0, %polly.loop_header218.6 ]
  %421 = add nuw nsw i64 %polly.indvar221.7, %116
  %polly.access.mul.call2225.7 = mul nuw nsw i64 %421, 1000
  %polly.access.add.call2226.7 = add nuw nsw i64 %104, %polly.access.mul.call2225.7
  %polly.access.call2227.7 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.7
  %polly.access.call2227.load.7 = load double, double* %polly.access.call2227.7, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.7 = add nuw nsw i64 %polly.indvar221.7, 8400
  %polly.access.Packed_MemRef_call2.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.7
  store double %polly.access.call2227.load.7, double* %polly.access.Packed_MemRef_call2.7, align 8
  %polly.indvar_next222.7 = add nuw nsw i64 %polly.indvar221.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar_next222.7, %indvars.iv
  br i1 %exitcond.7.not, label %polly.loop_exit220.7, label %polly.loop_header218.7

polly.loop_exit220.7:                             ; preds = %polly.loop_header218.7
  %422 = add nsw i64 %115, 1199
  %polly.access.mul.call1247.us = mul nsw i64 %polly.indvar209, 8000
  %423 = or i64 %116, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %423, 1000
  %424 = or i64 %116, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %424, 1000
  %425 = or i64 %116, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %425, 1000
  %426 = or i64 %116, 4
  %polly.access.mul.call1247.us.4 = mul nuw nsw i64 %426, 1000
  %427 = or i64 %116, 5
  %polly.access.mul.call1247.us.5 = mul nuw nsw i64 %427, 1000
  %428 = or i64 %116, 6
  %polly.access.mul.call1247.us.6 = mul nuw nsw i64 %428, 1000
  %429 = or i64 %116, 7
  %polly.access.mul.call1247.us.7 = mul nuw nsw i64 %429, 1000
  br label %polly.loop_header228

polly.loop_header250.1:                           ; preds = %polly.loop_header250, %polly.loop_header250.1
  %polly.indvar253.1 = phi i64 [ %polly.indvar_next254.1, %polly.loop_header250.1 ], [ %129, %polly.loop_header250 ]
  %430 = add nuw nsw i64 %polly.indvar253.1, %116
  %polly.access.mul.call1257.1 = mul nsw i64 %430, 1000
  %polly.access.add.call1258.1 = add nuw nsw i64 %98, %polly.access.mul.call1257.1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.1 = add nuw nsw i64 %polly.indvar253.1, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %polly.loop_cond255.not.not.1 = icmp slt i64 %polly.indvar253.1, %132
  br i1 %polly.loop_cond255.not.not.1, label %polly.loop_header250.1, label %polly.loop_header250.2

polly.loop_header250.2:                           ; preds = %polly.loop_header250.1, %polly.loop_header250.2
  %polly.indvar253.2 = phi i64 [ %polly.indvar_next254.2, %polly.loop_header250.2 ], [ %129, %polly.loop_header250.1 ]
  %431 = add nuw nsw i64 %polly.indvar253.2, %116
  %polly.access.mul.call1257.2 = mul nsw i64 %431, 1000
  %polly.access.add.call1258.2 = add nuw nsw i64 %99, %polly.access.mul.call1257.2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.2 = add nuw nsw i64 %polly.indvar253.2, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.indvar_next254.2 = add nuw nsw i64 %polly.indvar253.2, 1
  %polly.loop_cond255.not.not.2 = icmp slt i64 %polly.indvar253.2, %132
  br i1 %polly.loop_cond255.not.not.2, label %polly.loop_header250.2, label %polly.loop_header250.3

polly.loop_header250.3:                           ; preds = %polly.loop_header250.2, %polly.loop_header250.3
  %polly.indvar253.3 = phi i64 [ %polly.indvar_next254.3, %polly.loop_header250.3 ], [ %129, %polly.loop_header250.2 ]
  %432 = add nuw nsw i64 %polly.indvar253.3, %116
  %polly.access.mul.call1257.3 = mul nsw i64 %432, 1000
  %polly.access.add.call1258.3 = add nuw nsw i64 %100, %polly.access.mul.call1257.3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.3 = add nuw nsw i64 %polly.indvar253.3, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %polly.indvar_next254.3 = add nuw nsw i64 %polly.indvar253.3, 1
  %polly.loop_cond255.not.not.3 = icmp slt i64 %polly.indvar253.3, %132
  br i1 %polly.loop_cond255.not.not.3, label %polly.loop_header250.3, label %polly.loop_header250.4

polly.loop_header250.4:                           ; preds = %polly.loop_header250.3, %polly.loop_header250.4
  %polly.indvar253.4 = phi i64 [ %polly.indvar_next254.4, %polly.loop_header250.4 ], [ %129, %polly.loop_header250.3 ]
  %433 = add nuw nsw i64 %polly.indvar253.4, %116
  %polly.access.mul.call1257.4 = mul nsw i64 %433, 1000
  %polly.access.add.call1258.4 = add nuw nsw i64 %101, %polly.access.mul.call1257.4
  %polly.access.call1259.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.4
  %polly.access.call1259.load.4 = load double, double* %polly.access.call1259.4, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.4 = add nuw nsw i64 %polly.indvar253.4, 4800
  %polly.access.Packed_MemRef_call1262.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.4
  store double %polly.access.call1259.load.4, double* %polly.access.Packed_MemRef_call1262.4, align 8
  %polly.indvar_next254.4 = add nuw nsw i64 %polly.indvar253.4, 1
  %polly.loop_cond255.not.not.4 = icmp slt i64 %polly.indvar253.4, %132
  br i1 %polly.loop_cond255.not.not.4, label %polly.loop_header250.4, label %polly.loop_header250.5

polly.loop_header250.5:                           ; preds = %polly.loop_header250.4, %polly.loop_header250.5
  %polly.indvar253.5 = phi i64 [ %polly.indvar_next254.5, %polly.loop_header250.5 ], [ %129, %polly.loop_header250.4 ]
  %434 = add nuw nsw i64 %polly.indvar253.5, %116
  %polly.access.mul.call1257.5 = mul nsw i64 %434, 1000
  %polly.access.add.call1258.5 = add nuw nsw i64 %102, %polly.access.mul.call1257.5
  %polly.access.call1259.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.5
  %polly.access.call1259.load.5 = load double, double* %polly.access.call1259.5, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.5 = add nuw nsw i64 %polly.indvar253.5, 6000
  %polly.access.Packed_MemRef_call1262.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.5
  store double %polly.access.call1259.load.5, double* %polly.access.Packed_MemRef_call1262.5, align 8
  %polly.indvar_next254.5 = add nuw nsw i64 %polly.indvar253.5, 1
  %polly.loop_cond255.not.not.5 = icmp slt i64 %polly.indvar253.5, %132
  br i1 %polly.loop_cond255.not.not.5, label %polly.loop_header250.5, label %polly.loop_header250.6

polly.loop_header250.6:                           ; preds = %polly.loop_header250.5, %polly.loop_header250.6
  %polly.indvar253.6 = phi i64 [ %polly.indvar_next254.6, %polly.loop_header250.6 ], [ %129, %polly.loop_header250.5 ]
  %435 = add nuw nsw i64 %polly.indvar253.6, %116
  %polly.access.mul.call1257.6 = mul nsw i64 %435, 1000
  %polly.access.add.call1258.6 = add nuw nsw i64 %103, %polly.access.mul.call1257.6
  %polly.access.call1259.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.6
  %polly.access.call1259.load.6 = load double, double* %polly.access.call1259.6, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.6 = add nuw nsw i64 %polly.indvar253.6, 7200
  %polly.access.Packed_MemRef_call1262.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.6
  store double %polly.access.call1259.load.6, double* %polly.access.Packed_MemRef_call1262.6, align 8
  %polly.indvar_next254.6 = add nuw nsw i64 %polly.indvar253.6, 1
  %polly.loop_cond255.not.not.6 = icmp slt i64 %polly.indvar253.6, %132
  br i1 %polly.loop_cond255.not.not.6, label %polly.loop_header250.6, label %polly.loop_header250.7

polly.loop_header250.7:                           ; preds = %polly.loop_header250.6, %polly.loop_header250.7
  %polly.indvar253.7 = phi i64 [ %polly.indvar_next254.7, %polly.loop_header250.7 ], [ %129, %polly.loop_header250.6 ]
  %436 = add nuw nsw i64 %polly.indvar253.7, %116
  %polly.access.mul.call1257.7 = mul nsw i64 %436, 1000
  %polly.access.add.call1258.7 = add nuw nsw i64 %104, %polly.access.mul.call1257.7
  %polly.access.call1259.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.7
  %polly.access.call1259.load.7 = load double, double* %polly.access.call1259.7, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.7 = add nuw nsw i64 %polly.indvar253.7, 8400
  %polly.access.Packed_MemRef_call1262.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.7
  store double %polly.access.call1259.load.7, double* %polly.access.Packed_MemRef_call1262.7, align 8
  %polly.indvar_next254.7 = add nuw nsw i64 %polly.indvar253.7, 1
  %polly.loop_cond255.not.not.7 = icmp slt i64 %polly.indvar253.7, %132
  br i1 %polly.loop_cond255.not.not.7, label %polly.loop_header250.7, label %polly.loop_header263.preheader

polly.loop_header428.1:                           ; preds = %polly.loop_header428, %polly.loop_header428.1
  %polly.indvar431.1 = phi i64 [ %polly.indvar_next432.1, %polly.loop_header428.1 ], [ 0, %polly.loop_header428 ]
  %437 = add nuw nsw i64 %polly.indvar431.1, %196
  %polly.access.mul.call2435.1 = mul nuw nsw i64 %437, 1000
  %polly.access.add.call2436.1 = add nuw nsw i64 %178, %polly.access.mul.call2435.1
  %polly.access.call2437.1 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.1
  %polly.access.call2437.load.1 = load double, double* %polly.access.call2437.1, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.1 = add nuw nsw i64 %polly.indvar431.1, 1200
  %polly.access.Packed_MemRef_call2311.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.1
  store double %polly.access.call2437.load.1, double* %polly.access.Packed_MemRef_call2311.1, align 8
  %polly.indvar_next432.1 = add nuw nsw i64 %polly.indvar431.1, 1
  %exitcond1118.1.not = icmp eq i64 %polly.indvar_next432.1, %indvars.iv1116
  br i1 %exitcond1118.1.not, label %polly.loop_header428.2, label %polly.loop_header428.1

polly.loop_header428.2:                           ; preds = %polly.loop_header428.1, %polly.loop_header428.2
  %polly.indvar431.2 = phi i64 [ %polly.indvar_next432.2, %polly.loop_header428.2 ], [ 0, %polly.loop_header428.1 ]
  %438 = add nuw nsw i64 %polly.indvar431.2, %196
  %polly.access.mul.call2435.2 = mul nuw nsw i64 %438, 1000
  %polly.access.add.call2436.2 = add nuw nsw i64 %179, %polly.access.mul.call2435.2
  %polly.access.call2437.2 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.2
  %polly.access.call2437.load.2 = load double, double* %polly.access.call2437.2, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.2 = add nuw nsw i64 %polly.indvar431.2, 2400
  %polly.access.Packed_MemRef_call2311.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.2
  store double %polly.access.call2437.load.2, double* %polly.access.Packed_MemRef_call2311.2, align 8
  %polly.indvar_next432.2 = add nuw nsw i64 %polly.indvar431.2, 1
  %exitcond1118.2.not = icmp eq i64 %polly.indvar_next432.2, %indvars.iv1116
  br i1 %exitcond1118.2.not, label %polly.loop_header428.3, label %polly.loop_header428.2

polly.loop_header428.3:                           ; preds = %polly.loop_header428.2, %polly.loop_header428.3
  %polly.indvar431.3 = phi i64 [ %polly.indvar_next432.3, %polly.loop_header428.3 ], [ 0, %polly.loop_header428.2 ]
  %439 = add nuw nsw i64 %polly.indvar431.3, %196
  %polly.access.mul.call2435.3 = mul nuw nsw i64 %439, 1000
  %polly.access.add.call2436.3 = add nuw nsw i64 %180, %polly.access.mul.call2435.3
  %polly.access.call2437.3 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.3
  %polly.access.call2437.load.3 = load double, double* %polly.access.call2437.3, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.3 = add nuw nsw i64 %polly.indvar431.3, 3600
  %polly.access.Packed_MemRef_call2311.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.3
  store double %polly.access.call2437.load.3, double* %polly.access.Packed_MemRef_call2311.3, align 8
  %polly.indvar_next432.3 = add nuw nsw i64 %polly.indvar431.3, 1
  %exitcond1118.3.not = icmp eq i64 %polly.indvar_next432.3, %indvars.iv1116
  br i1 %exitcond1118.3.not, label %polly.loop_header428.4, label %polly.loop_header428.3

polly.loop_header428.4:                           ; preds = %polly.loop_header428.3, %polly.loop_header428.4
  %polly.indvar431.4 = phi i64 [ %polly.indvar_next432.4, %polly.loop_header428.4 ], [ 0, %polly.loop_header428.3 ]
  %440 = add nuw nsw i64 %polly.indvar431.4, %196
  %polly.access.mul.call2435.4 = mul nuw nsw i64 %440, 1000
  %polly.access.add.call2436.4 = add nuw nsw i64 %181, %polly.access.mul.call2435.4
  %polly.access.call2437.4 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.4
  %polly.access.call2437.load.4 = load double, double* %polly.access.call2437.4, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.4 = add nuw nsw i64 %polly.indvar431.4, 4800
  %polly.access.Packed_MemRef_call2311.4 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.4
  store double %polly.access.call2437.load.4, double* %polly.access.Packed_MemRef_call2311.4, align 8
  %polly.indvar_next432.4 = add nuw nsw i64 %polly.indvar431.4, 1
  %exitcond1118.4.not = icmp eq i64 %polly.indvar_next432.4, %indvars.iv1116
  br i1 %exitcond1118.4.not, label %polly.loop_header428.5, label %polly.loop_header428.4

polly.loop_header428.5:                           ; preds = %polly.loop_header428.4, %polly.loop_header428.5
  %polly.indvar431.5 = phi i64 [ %polly.indvar_next432.5, %polly.loop_header428.5 ], [ 0, %polly.loop_header428.4 ]
  %441 = add nuw nsw i64 %polly.indvar431.5, %196
  %polly.access.mul.call2435.5 = mul nuw nsw i64 %441, 1000
  %polly.access.add.call2436.5 = add nuw nsw i64 %182, %polly.access.mul.call2435.5
  %polly.access.call2437.5 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.5
  %polly.access.call2437.load.5 = load double, double* %polly.access.call2437.5, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.5 = add nuw nsw i64 %polly.indvar431.5, 6000
  %polly.access.Packed_MemRef_call2311.5 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.5
  store double %polly.access.call2437.load.5, double* %polly.access.Packed_MemRef_call2311.5, align 8
  %polly.indvar_next432.5 = add nuw nsw i64 %polly.indvar431.5, 1
  %exitcond1118.5.not = icmp eq i64 %polly.indvar_next432.5, %indvars.iv1116
  br i1 %exitcond1118.5.not, label %polly.loop_header428.6, label %polly.loop_header428.5

polly.loop_header428.6:                           ; preds = %polly.loop_header428.5, %polly.loop_header428.6
  %polly.indvar431.6 = phi i64 [ %polly.indvar_next432.6, %polly.loop_header428.6 ], [ 0, %polly.loop_header428.5 ]
  %442 = add nuw nsw i64 %polly.indvar431.6, %196
  %polly.access.mul.call2435.6 = mul nuw nsw i64 %442, 1000
  %polly.access.add.call2436.6 = add nuw nsw i64 %183, %polly.access.mul.call2435.6
  %polly.access.call2437.6 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.6
  %polly.access.call2437.load.6 = load double, double* %polly.access.call2437.6, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.6 = add nuw nsw i64 %polly.indvar431.6, 7200
  %polly.access.Packed_MemRef_call2311.6 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.6
  store double %polly.access.call2437.load.6, double* %polly.access.Packed_MemRef_call2311.6, align 8
  %polly.indvar_next432.6 = add nuw nsw i64 %polly.indvar431.6, 1
  %exitcond1118.6.not = icmp eq i64 %polly.indvar_next432.6, %indvars.iv1116
  br i1 %exitcond1118.6.not, label %polly.loop_header428.7, label %polly.loop_header428.6

polly.loop_header428.7:                           ; preds = %polly.loop_header428.6, %polly.loop_header428.7
  %polly.indvar431.7 = phi i64 [ %polly.indvar_next432.7, %polly.loop_header428.7 ], [ 0, %polly.loop_header428.6 ]
  %443 = add nuw nsw i64 %polly.indvar431.7, %196
  %polly.access.mul.call2435.7 = mul nuw nsw i64 %443, 1000
  %polly.access.add.call2436.7 = add nuw nsw i64 %184, %polly.access.mul.call2435.7
  %polly.access.call2437.7 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.7
  %polly.access.call2437.load.7 = load double, double* %polly.access.call2437.7, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.7 = add nuw nsw i64 %polly.indvar431.7, 8400
  %polly.access.Packed_MemRef_call2311.7 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.7
  store double %polly.access.call2437.load.7, double* %polly.access.Packed_MemRef_call2311.7, align 8
  %polly.indvar_next432.7 = add nuw nsw i64 %polly.indvar431.7, 1
  %exitcond1118.7.not = icmp eq i64 %polly.indvar_next432.7, %indvars.iv1116
  br i1 %exitcond1118.7.not, label %polly.loop_exit430.7, label %polly.loop_header428.7

polly.loop_exit430.7:                             ; preds = %polly.loop_header428.7
  %444 = add nsw i64 %195, 1199
  %polly.access.mul.call1462.us = mul nsw i64 %polly.indvar419, 8000
  %445 = or i64 %196, 1
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %445, 1000
  %446 = or i64 %196, 2
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %446, 1000
  %447 = or i64 %196, 3
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %447, 1000
  %448 = or i64 %196, 4
  %polly.access.mul.call1462.us.4 = mul nuw nsw i64 %448, 1000
  %449 = or i64 %196, 5
  %polly.access.mul.call1462.us.5 = mul nuw nsw i64 %449, 1000
  %450 = or i64 %196, 6
  %polly.access.mul.call1462.us.6 = mul nuw nsw i64 %450, 1000
  %451 = or i64 %196, 7
  %polly.access.mul.call1462.us.7 = mul nuw nsw i64 %451, 1000
  br label %polly.loop_header439

polly.loop_header466.1:                           ; preds = %polly.loop_header466, %polly.loop_header466.1
  %polly.indvar470.1 = phi i64 [ %polly.indvar_next471.1, %polly.loop_header466.1 ], [ %209, %polly.loop_header466 ]
  %452 = add nuw nsw i64 %polly.indvar470.1, %196
  %polly.access.mul.call1474.1 = mul nsw i64 %452, 1000
  %polly.access.add.call1475.1 = add nuw nsw i64 %178, %polly.access.mul.call1474.1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.1 = add nuw nsw i64 %polly.indvar470.1, 1200
  %polly.access.Packed_MemRef_call1309479.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1309479.1, align 8
  %polly.indvar_next471.1 = add nuw nsw i64 %polly.indvar470.1, 1
  %polly.loop_cond472.not.not.1 = icmp slt i64 %polly.indvar470.1, %212
  br i1 %polly.loop_cond472.not.not.1, label %polly.loop_header466.1, label %polly.loop_header466.2

polly.loop_header466.2:                           ; preds = %polly.loop_header466.1, %polly.loop_header466.2
  %polly.indvar470.2 = phi i64 [ %polly.indvar_next471.2, %polly.loop_header466.2 ], [ %209, %polly.loop_header466.1 ]
  %453 = add nuw nsw i64 %polly.indvar470.2, %196
  %polly.access.mul.call1474.2 = mul nsw i64 %453, 1000
  %polly.access.add.call1475.2 = add nuw nsw i64 %179, %polly.access.mul.call1474.2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.2 = add nuw nsw i64 %polly.indvar470.2, 2400
  %polly.access.Packed_MemRef_call1309479.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1309479.2, align 8
  %polly.indvar_next471.2 = add nuw nsw i64 %polly.indvar470.2, 1
  %polly.loop_cond472.not.not.2 = icmp slt i64 %polly.indvar470.2, %212
  br i1 %polly.loop_cond472.not.not.2, label %polly.loop_header466.2, label %polly.loop_header466.3

polly.loop_header466.3:                           ; preds = %polly.loop_header466.2, %polly.loop_header466.3
  %polly.indvar470.3 = phi i64 [ %polly.indvar_next471.3, %polly.loop_header466.3 ], [ %209, %polly.loop_header466.2 ]
  %454 = add nuw nsw i64 %polly.indvar470.3, %196
  %polly.access.mul.call1474.3 = mul nsw i64 %454, 1000
  %polly.access.add.call1475.3 = add nuw nsw i64 %180, %polly.access.mul.call1474.3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.3 = add nuw nsw i64 %polly.indvar470.3, 3600
  %polly.access.Packed_MemRef_call1309479.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1309479.3, align 8
  %polly.indvar_next471.3 = add nuw nsw i64 %polly.indvar470.3, 1
  %polly.loop_cond472.not.not.3 = icmp slt i64 %polly.indvar470.3, %212
  br i1 %polly.loop_cond472.not.not.3, label %polly.loop_header466.3, label %polly.loop_header466.4

polly.loop_header466.4:                           ; preds = %polly.loop_header466.3, %polly.loop_header466.4
  %polly.indvar470.4 = phi i64 [ %polly.indvar_next471.4, %polly.loop_header466.4 ], [ %209, %polly.loop_header466.3 ]
  %455 = add nuw nsw i64 %polly.indvar470.4, %196
  %polly.access.mul.call1474.4 = mul nsw i64 %455, 1000
  %polly.access.add.call1475.4 = add nuw nsw i64 %181, %polly.access.mul.call1474.4
  %polly.access.call1476.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.4
  %polly.access.call1476.load.4 = load double, double* %polly.access.call1476.4, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.4 = add nuw nsw i64 %polly.indvar470.4, 4800
  %polly.access.Packed_MemRef_call1309479.4 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.4
  store double %polly.access.call1476.load.4, double* %polly.access.Packed_MemRef_call1309479.4, align 8
  %polly.indvar_next471.4 = add nuw nsw i64 %polly.indvar470.4, 1
  %polly.loop_cond472.not.not.4 = icmp slt i64 %polly.indvar470.4, %212
  br i1 %polly.loop_cond472.not.not.4, label %polly.loop_header466.4, label %polly.loop_header466.5

polly.loop_header466.5:                           ; preds = %polly.loop_header466.4, %polly.loop_header466.5
  %polly.indvar470.5 = phi i64 [ %polly.indvar_next471.5, %polly.loop_header466.5 ], [ %209, %polly.loop_header466.4 ]
  %456 = add nuw nsw i64 %polly.indvar470.5, %196
  %polly.access.mul.call1474.5 = mul nsw i64 %456, 1000
  %polly.access.add.call1475.5 = add nuw nsw i64 %182, %polly.access.mul.call1474.5
  %polly.access.call1476.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.5
  %polly.access.call1476.load.5 = load double, double* %polly.access.call1476.5, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.5 = add nuw nsw i64 %polly.indvar470.5, 6000
  %polly.access.Packed_MemRef_call1309479.5 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.5
  store double %polly.access.call1476.load.5, double* %polly.access.Packed_MemRef_call1309479.5, align 8
  %polly.indvar_next471.5 = add nuw nsw i64 %polly.indvar470.5, 1
  %polly.loop_cond472.not.not.5 = icmp slt i64 %polly.indvar470.5, %212
  br i1 %polly.loop_cond472.not.not.5, label %polly.loop_header466.5, label %polly.loop_header466.6

polly.loop_header466.6:                           ; preds = %polly.loop_header466.5, %polly.loop_header466.6
  %polly.indvar470.6 = phi i64 [ %polly.indvar_next471.6, %polly.loop_header466.6 ], [ %209, %polly.loop_header466.5 ]
  %457 = add nuw nsw i64 %polly.indvar470.6, %196
  %polly.access.mul.call1474.6 = mul nsw i64 %457, 1000
  %polly.access.add.call1475.6 = add nuw nsw i64 %183, %polly.access.mul.call1474.6
  %polly.access.call1476.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.6
  %polly.access.call1476.load.6 = load double, double* %polly.access.call1476.6, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.6 = add nuw nsw i64 %polly.indvar470.6, 7200
  %polly.access.Packed_MemRef_call1309479.6 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.6
  store double %polly.access.call1476.load.6, double* %polly.access.Packed_MemRef_call1309479.6, align 8
  %polly.indvar_next471.6 = add nuw nsw i64 %polly.indvar470.6, 1
  %polly.loop_cond472.not.not.6 = icmp slt i64 %polly.indvar470.6, %212
  br i1 %polly.loop_cond472.not.not.6, label %polly.loop_header466.6, label %polly.loop_header466.7

polly.loop_header466.7:                           ; preds = %polly.loop_header466.6, %polly.loop_header466.7
  %polly.indvar470.7 = phi i64 [ %polly.indvar_next471.7, %polly.loop_header466.7 ], [ %209, %polly.loop_header466.6 ]
  %458 = add nuw nsw i64 %polly.indvar470.7, %196
  %polly.access.mul.call1474.7 = mul nsw i64 %458, 1000
  %polly.access.add.call1475.7 = add nuw nsw i64 %184, %polly.access.mul.call1474.7
  %polly.access.call1476.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.7
  %polly.access.call1476.load.7 = load double, double* %polly.access.call1476.7, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.7 = add nuw nsw i64 %polly.indvar470.7, 8400
  %polly.access.Packed_MemRef_call1309479.7 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.7
  store double %polly.access.call1476.load.7, double* %polly.access.Packed_MemRef_call1309479.7, align 8
  %polly.indvar_next471.7 = add nuw nsw i64 %polly.indvar470.7, 1
  %polly.loop_cond472.not.not.7 = icmp slt i64 %polly.indvar470.7, %212
  br i1 %polly.loop_cond472.not.not.7, label %polly.loop_header466.7, label %polly.loop_header480.preheader

polly.loop_header645.1:                           ; preds = %polly.loop_header645, %polly.loop_header645.1
  %polly.indvar648.1 = phi i64 [ %polly.indvar_next649.1, %polly.loop_header645.1 ], [ 0, %polly.loop_header645 ]
  %459 = add nuw nsw i64 %polly.indvar648.1, %276
  %polly.access.mul.call2652.1 = mul nuw nsw i64 %459, 1000
  %polly.access.add.call2653.1 = add nuw nsw i64 %258, %polly.access.mul.call2652.1
  %polly.access.call2654.1 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.1
  %polly.access.call2654.load.1 = load double, double* %polly.access.call2654.1, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.1 = add nuw nsw i64 %polly.indvar648.1, 1200
  %polly.access.Packed_MemRef_call2528.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.1
  store double %polly.access.call2654.load.1, double* %polly.access.Packed_MemRef_call2528.1, align 8
  %polly.indvar_next649.1 = add nuw nsw i64 %polly.indvar648.1, 1
  %exitcond1143.1.not = icmp eq i64 %polly.indvar_next649.1, %indvars.iv1141
  br i1 %exitcond1143.1.not, label %polly.loop_header645.2, label %polly.loop_header645.1

polly.loop_header645.2:                           ; preds = %polly.loop_header645.1, %polly.loop_header645.2
  %polly.indvar648.2 = phi i64 [ %polly.indvar_next649.2, %polly.loop_header645.2 ], [ 0, %polly.loop_header645.1 ]
  %460 = add nuw nsw i64 %polly.indvar648.2, %276
  %polly.access.mul.call2652.2 = mul nuw nsw i64 %460, 1000
  %polly.access.add.call2653.2 = add nuw nsw i64 %259, %polly.access.mul.call2652.2
  %polly.access.call2654.2 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.2
  %polly.access.call2654.load.2 = load double, double* %polly.access.call2654.2, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.2 = add nuw nsw i64 %polly.indvar648.2, 2400
  %polly.access.Packed_MemRef_call2528.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.2
  store double %polly.access.call2654.load.2, double* %polly.access.Packed_MemRef_call2528.2, align 8
  %polly.indvar_next649.2 = add nuw nsw i64 %polly.indvar648.2, 1
  %exitcond1143.2.not = icmp eq i64 %polly.indvar_next649.2, %indvars.iv1141
  br i1 %exitcond1143.2.not, label %polly.loop_header645.3, label %polly.loop_header645.2

polly.loop_header645.3:                           ; preds = %polly.loop_header645.2, %polly.loop_header645.3
  %polly.indvar648.3 = phi i64 [ %polly.indvar_next649.3, %polly.loop_header645.3 ], [ 0, %polly.loop_header645.2 ]
  %461 = add nuw nsw i64 %polly.indvar648.3, %276
  %polly.access.mul.call2652.3 = mul nuw nsw i64 %461, 1000
  %polly.access.add.call2653.3 = add nuw nsw i64 %260, %polly.access.mul.call2652.3
  %polly.access.call2654.3 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.3
  %polly.access.call2654.load.3 = load double, double* %polly.access.call2654.3, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.3 = add nuw nsw i64 %polly.indvar648.3, 3600
  %polly.access.Packed_MemRef_call2528.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.3
  store double %polly.access.call2654.load.3, double* %polly.access.Packed_MemRef_call2528.3, align 8
  %polly.indvar_next649.3 = add nuw nsw i64 %polly.indvar648.3, 1
  %exitcond1143.3.not = icmp eq i64 %polly.indvar_next649.3, %indvars.iv1141
  br i1 %exitcond1143.3.not, label %polly.loop_header645.4, label %polly.loop_header645.3

polly.loop_header645.4:                           ; preds = %polly.loop_header645.3, %polly.loop_header645.4
  %polly.indvar648.4 = phi i64 [ %polly.indvar_next649.4, %polly.loop_header645.4 ], [ 0, %polly.loop_header645.3 ]
  %462 = add nuw nsw i64 %polly.indvar648.4, %276
  %polly.access.mul.call2652.4 = mul nuw nsw i64 %462, 1000
  %polly.access.add.call2653.4 = add nuw nsw i64 %261, %polly.access.mul.call2652.4
  %polly.access.call2654.4 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.4
  %polly.access.call2654.load.4 = load double, double* %polly.access.call2654.4, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.4 = add nuw nsw i64 %polly.indvar648.4, 4800
  %polly.access.Packed_MemRef_call2528.4 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.4
  store double %polly.access.call2654.load.4, double* %polly.access.Packed_MemRef_call2528.4, align 8
  %polly.indvar_next649.4 = add nuw nsw i64 %polly.indvar648.4, 1
  %exitcond1143.4.not = icmp eq i64 %polly.indvar_next649.4, %indvars.iv1141
  br i1 %exitcond1143.4.not, label %polly.loop_header645.5, label %polly.loop_header645.4

polly.loop_header645.5:                           ; preds = %polly.loop_header645.4, %polly.loop_header645.5
  %polly.indvar648.5 = phi i64 [ %polly.indvar_next649.5, %polly.loop_header645.5 ], [ 0, %polly.loop_header645.4 ]
  %463 = add nuw nsw i64 %polly.indvar648.5, %276
  %polly.access.mul.call2652.5 = mul nuw nsw i64 %463, 1000
  %polly.access.add.call2653.5 = add nuw nsw i64 %262, %polly.access.mul.call2652.5
  %polly.access.call2654.5 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.5
  %polly.access.call2654.load.5 = load double, double* %polly.access.call2654.5, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.5 = add nuw nsw i64 %polly.indvar648.5, 6000
  %polly.access.Packed_MemRef_call2528.5 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.5
  store double %polly.access.call2654.load.5, double* %polly.access.Packed_MemRef_call2528.5, align 8
  %polly.indvar_next649.5 = add nuw nsw i64 %polly.indvar648.5, 1
  %exitcond1143.5.not = icmp eq i64 %polly.indvar_next649.5, %indvars.iv1141
  br i1 %exitcond1143.5.not, label %polly.loop_header645.6, label %polly.loop_header645.5

polly.loop_header645.6:                           ; preds = %polly.loop_header645.5, %polly.loop_header645.6
  %polly.indvar648.6 = phi i64 [ %polly.indvar_next649.6, %polly.loop_header645.6 ], [ 0, %polly.loop_header645.5 ]
  %464 = add nuw nsw i64 %polly.indvar648.6, %276
  %polly.access.mul.call2652.6 = mul nuw nsw i64 %464, 1000
  %polly.access.add.call2653.6 = add nuw nsw i64 %263, %polly.access.mul.call2652.6
  %polly.access.call2654.6 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.6
  %polly.access.call2654.load.6 = load double, double* %polly.access.call2654.6, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.6 = add nuw nsw i64 %polly.indvar648.6, 7200
  %polly.access.Packed_MemRef_call2528.6 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.6
  store double %polly.access.call2654.load.6, double* %polly.access.Packed_MemRef_call2528.6, align 8
  %polly.indvar_next649.6 = add nuw nsw i64 %polly.indvar648.6, 1
  %exitcond1143.6.not = icmp eq i64 %polly.indvar_next649.6, %indvars.iv1141
  br i1 %exitcond1143.6.not, label %polly.loop_header645.7, label %polly.loop_header645.6

polly.loop_header645.7:                           ; preds = %polly.loop_header645.6, %polly.loop_header645.7
  %polly.indvar648.7 = phi i64 [ %polly.indvar_next649.7, %polly.loop_header645.7 ], [ 0, %polly.loop_header645.6 ]
  %465 = add nuw nsw i64 %polly.indvar648.7, %276
  %polly.access.mul.call2652.7 = mul nuw nsw i64 %465, 1000
  %polly.access.add.call2653.7 = add nuw nsw i64 %264, %polly.access.mul.call2652.7
  %polly.access.call2654.7 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.7
  %polly.access.call2654.load.7 = load double, double* %polly.access.call2654.7, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.7 = add nuw nsw i64 %polly.indvar648.7, 8400
  %polly.access.Packed_MemRef_call2528.7 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.7
  store double %polly.access.call2654.load.7, double* %polly.access.Packed_MemRef_call2528.7, align 8
  %polly.indvar_next649.7 = add nuw nsw i64 %polly.indvar648.7, 1
  %exitcond1143.7.not = icmp eq i64 %polly.indvar_next649.7, %indvars.iv1141
  br i1 %exitcond1143.7.not, label %polly.loop_exit647.7, label %polly.loop_header645.7

polly.loop_exit647.7:                             ; preds = %polly.loop_header645.7
  %466 = add nsw i64 %275, 1199
  %polly.access.mul.call1679.us = mul nsw i64 %polly.indvar636, 8000
  %467 = or i64 %276, 1
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %467, 1000
  %468 = or i64 %276, 2
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %468, 1000
  %469 = or i64 %276, 3
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %469, 1000
  %470 = or i64 %276, 4
  %polly.access.mul.call1679.us.4 = mul nuw nsw i64 %470, 1000
  %471 = or i64 %276, 5
  %polly.access.mul.call1679.us.5 = mul nuw nsw i64 %471, 1000
  %472 = or i64 %276, 6
  %polly.access.mul.call1679.us.6 = mul nuw nsw i64 %472, 1000
  %473 = or i64 %276, 7
  %polly.access.mul.call1679.us.7 = mul nuw nsw i64 %473, 1000
  br label %polly.loop_header656

polly.loop_header683.1:                           ; preds = %polly.loop_header683, %polly.loop_header683.1
  %polly.indvar687.1 = phi i64 [ %polly.indvar_next688.1, %polly.loop_header683.1 ], [ %289, %polly.loop_header683 ]
  %474 = add nuw nsw i64 %polly.indvar687.1, %276
  %polly.access.mul.call1691.1 = mul nsw i64 %474, 1000
  %polly.access.add.call1692.1 = add nuw nsw i64 %258, %polly.access.mul.call1691.1
  %polly.access.call1693.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.1
  %polly.access.call1693.load.1 = load double, double* %polly.access.call1693.1, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.1 = add nuw nsw i64 %polly.indvar687.1, 1200
  %polly.access.Packed_MemRef_call1526696.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.1
  store double %polly.access.call1693.load.1, double* %polly.access.Packed_MemRef_call1526696.1, align 8
  %polly.indvar_next688.1 = add nuw nsw i64 %polly.indvar687.1, 1
  %polly.loop_cond689.not.not.1 = icmp slt i64 %polly.indvar687.1, %292
  br i1 %polly.loop_cond689.not.not.1, label %polly.loop_header683.1, label %polly.loop_header683.2

polly.loop_header683.2:                           ; preds = %polly.loop_header683.1, %polly.loop_header683.2
  %polly.indvar687.2 = phi i64 [ %polly.indvar_next688.2, %polly.loop_header683.2 ], [ %289, %polly.loop_header683.1 ]
  %475 = add nuw nsw i64 %polly.indvar687.2, %276
  %polly.access.mul.call1691.2 = mul nsw i64 %475, 1000
  %polly.access.add.call1692.2 = add nuw nsw i64 %259, %polly.access.mul.call1691.2
  %polly.access.call1693.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.2
  %polly.access.call1693.load.2 = load double, double* %polly.access.call1693.2, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.2 = add nuw nsw i64 %polly.indvar687.2, 2400
  %polly.access.Packed_MemRef_call1526696.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.2
  store double %polly.access.call1693.load.2, double* %polly.access.Packed_MemRef_call1526696.2, align 8
  %polly.indvar_next688.2 = add nuw nsw i64 %polly.indvar687.2, 1
  %polly.loop_cond689.not.not.2 = icmp slt i64 %polly.indvar687.2, %292
  br i1 %polly.loop_cond689.not.not.2, label %polly.loop_header683.2, label %polly.loop_header683.3

polly.loop_header683.3:                           ; preds = %polly.loop_header683.2, %polly.loop_header683.3
  %polly.indvar687.3 = phi i64 [ %polly.indvar_next688.3, %polly.loop_header683.3 ], [ %289, %polly.loop_header683.2 ]
  %476 = add nuw nsw i64 %polly.indvar687.3, %276
  %polly.access.mul.call1691.3 = mul nsw i64 %476, 1000
  %polly.access.add.call1692.3 = add nuw nsw i64 %260, %polly.access.mul.call1691.3
  %polly.access.call1693.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.3
  %polly.access.call1693.load.3 = load double, double* %polly.access.call1693.3, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.3 = add nuw nsw i64 %polly.indvar687.3, 3600
  %polly.access.Packed_MemRef_call1526696.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.3
  store double %polly.access.call1693.load.3, double* %polly.access.Packed_MemRef_call1526696.3, align 8
  %polly.indvar_next688.3 = add nuw nsw i64 %polly.indvar687.3, 1
  %polly.loop_cond689.not.not.3 = icmp slt i64 %polly.indvar687.3, %292
  br i1 %polly.loop_cond689.not.not.3, label %polly.loop_header683.3, label %polly.loop_header683.4

polly.loop_header683.4:                           ; preds = %polly.loop_header683.3, %polly.loop_header683.4
  %polly.indvar687.4 = phi i64 [ %polly.indvar_next688.4, %polly.loop_header683.4 ], [ %289, %polly.loop_header683.3 ]
  %477 = add nuw nsw i64 %polly.indvar687.4, %276
  %polly.access.mul.call1691.4 = mul nsw i64 %477, 1000
  %polly.access.add.call1692.4 = add nuw nsw i64 %261, %polly.access.mul.call1691.4
  %polly.access.call1693.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.4
  %polly.access.call1693.load.4 = load double, double* %polly.access.call1693.4, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.4 = add nuw nsw i64 %polly.indvar687.4, 4800
  %polly.access.Packed_MemRef_call1526696.4 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.4
  store double %polly.access.call1693.load.4, double* %polly.access.Packed_MemRef_call1526696.4, align 8
  %polly.indvar_next688.4 = add nuw nsw i64 %polly.indvar687.4, 1
  %polly.loop_cond689.not.not.4 = icmp slt i64 %polly.indvar687.4, %292
  br i1 %polly.loop_cond689.not.not.4, label %polly.loop_header683.4, label %polly.loop_header683.5

polly.loop_header683.5:                           ; preds = %polly.loop_header683.4, %polly.loop_header683.5
  %polly.indvar687.5 = phi i64 [ %polly.indvar_next688.5, %polly.loop_header683.5 ], [ %289, %polly.loop_header683.4 ]
  %478 = add nuw nsw i64 %polly.indvar687.5, %276
  %polly.access.mul.call1691.5 = mul nsw i64 %478, 1000
  %polly.access.add.call1692.5 = add nuw nsw i64 %262, %polly.access.mul.call1691.5
  %polly.access.call1693.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.5
  %polly.access.call1693.load.5 = load double, double* %polly.access.call1693.5, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.5 = add nuw nsw i64 %polly.indvar687.5, 6000
  %polly.access.Packed_MemRef_call1526696.5 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.5
  store double %polly.access.call1693.load.5, double* %polly.access.Packed_MemRef_call1526696.5, align 8
  %polly.indvar_next688.5 = add nuw nsw i64 %polly.indvar687.5, 1
  %polly.loop_cond689.not.not.5 = icmp slt i64 %polly.indvar687.5, %292
  br i1 %polly.loop_cond689.not.not.5, label %polly.loop_header683.5, label %polly.loop_header683.6

polly.loop_header683.6:                           ; preds = %polly.loop_header683.5, %polly.loop_header683.6
  %polly.indvar687.6 = phi i64 [ %polly.indvar_next688.6, %polly.loop_header683.6 ], [ %289, %polly.loop_header683.5 ]
  %479 = add nuw nsw i64 %polly.indvar687.6, %276
  %polly.access.mul.call1691.6 = mul nsw i64 %479, 1000
  %polly.access.add.call1692.6 = add nuw nsw i64 %263, %polly.access.mul.call1691.6
  %polly.access.call1693.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.6
  %polly.access.call1693.load.6 = load double, double* %polly.access.call1693.6, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.6 = add nuw nsw i64 %polly.indvar687.6, 7200
  %polly.access.Packed_MemRef_call1526696.6 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.6
  store double %polly.access.call1693.load.6, double* %polly.access.Packed_MemRef_call1526696.6, align 8
  %polly.indvar_next688.6 = add nuw nsw i64 %polly.indvar687.6, 1
  %polly.loop_cond689.not.not.6 = icmp slt i64 %polly.indvar687.6, %292
  br i1 %polly.loop_cond689.not.not.6, label %polly.loop_header683.6, label %polly.loop_header683.7

polly.loop_header683.7:                           ; preds = %polly.loop_header683.6, %polly.loop_header683.7
  %polly.indvar687.7 = phi i64 [ %polly.indvar_next688.7, %polly.loop_header683.7 ], [ %289, %polly.loop_header683.6 ]
  %480 = add nuw nsw i64 %polly.indvar687.7, %276
  %polly.access.mul.call1691.7 = mul nsw i64 %480, 1000
  %polly.access.add.call1692.7 = add nuw nsw i64 %264, %polly.access.mul.call1691.7
  %polly.access.call1693.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.7
  %polly.access.call1693.load.7 = load double, double* %polly.access.call1693.7, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.7 = add nuw nsw i64 %polly.indvar687.7, 8400
  %polly.access.Packed_MemRef_call1526696.7 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.7
  store double %polly.access.call1693.load.7, double* %polly.access.Packed_MemRef_call1526696.7, align 8
  %polly.indvar_next688.7 = add nuw nsw i64 %polly.indvar687.7, 1
  %polly.loop_cond689.not.not.7 = icmp slt i64 %polly.indvar687.7, %292
  br i1 %polly.loop_cond689.not.not.7, label %polly.loop_header683.7, label %polly.loop_header697.preheader
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
