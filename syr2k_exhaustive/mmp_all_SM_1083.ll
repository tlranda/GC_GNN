; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1083.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1083.c"
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
  %polly.access.cast.call2738 = bitcast i8* %call2 to double*
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
  %scevgep1197 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1196 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1195 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1194 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1194, %scevgep1197
  %bound1 = icmp ult i8* %scevgep1196, %scevgep1195
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
  br i1 %exitcond18.not.i, label %vector.ph1201, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1201:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1208 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1209 = shufflevector <4 x i64> %broadcast.splatinsert1208, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1201
  %index1202 = phi i64 [ 0, %vector.ph1201 ], [ %index.next1203, %vector.body1200 ]
  %vec.ind1206 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1201 ], [ %vec.ind.next1207, %vector.body1200 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1206, %broadcast.splat1209
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv7.i, i64 %index1202
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1207 = add <4 x i64> %vec.ind1206, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1203, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1200, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1200
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1201, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit911
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start515, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1264 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1264, label %for.body3.i46.preheader1419, label %vector.ph1265

vector.ph1265:                                    ; preds = %for.body3.i46.preheader
  %n.vec1267 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1265
  %index1268 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1269, %vector.body1263 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i, i64 %index1268
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1269 = add i64 %index1268, 4
  %46 = icmp eq i64 %index.next1269, %n.vec1267
  br i1 %46, label %middle.block1261, label %vector.body1263, !llvm.loop !18

middle.block1261:                                 ; preds = %vector.body1263
  %cmp.n1271 = icmp eq i64 %indvars.iv21.i, %n.vec1267
  br i1 %cmp.n1271, label %for.inc6.i, label %for.body3.i46.preheader1419

for.body3.i46.preheader1419:                      ; preds = %for.body3.i46.preheader, %middle.block1261
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1267, %middle.block1261 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1419, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1419 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1261, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting516
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start304, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1311 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1311, label %for.body3.i60.preheader1415, label %vector.ph1312

vector.ph1312:                                    ; preds = %for.body3.i60.preheader
  %n.vec1314 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1312
  %index1315 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1316, %vector.body1310 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i52, i64 %index1315
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1319, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1316 = add i64 %index1315, 4
  %57 = icmp eq i64 %index.next1316, %n.vec1314
  br i1 %57, label %middle.block1308, label %vector.body1310, !llvm.loop !64

middle.block1308:                                 ; preds = %vector.body1310
  %cmp.n1318 = icmp eq i64 %indvars.iv21.i52, %n.vec1314
  br i1 %cmp.n1318, label %for.inc6.i63, label %for.body3.i60.preheader1415

for.body3.i60.preheader1415:                      ; preds = %for.body3.i60.preheader, %middle.block1308
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1314, %middle.block1308 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1415, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1415 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1308, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1361 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1361, label %for.body3.i99.preheader1411, label %vector.ph1362

vector.ph1362:                                    ; preds = %for.body3.i99.preheader
  %n.vec1364 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1360

vector.body1360:                                  ; preds = %vector.body1360, %vector.ph1362
  %index1365 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1366, %vector.body1360 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i91, i64 %index1365
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1369 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1369, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1366 = add i64 %index1365, 4
  %68 = icmp eq i64 %index.next1366, %n.vec1364
  br i1 %68, label %middle.block1358, label %vector.body1360, !llvm.loop !66

middle.block1358:                                 ; preds = %vector.body1360
  %cmp.n1368 = icmp eq i64 %indvars.iv21.i91, %n.vec1364
  br i1 %cmp.n1368, label %for.inc6.i102, label %for.body3.i99.preheader1411

for.body3.i99.preheader1411:                      ; preds = %for.body3.i99.preheader, %middle.block1358
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1364, %middle.block1358 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1411, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1411 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1358, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1373 = phi i64 [ %indvar.next1374, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1373, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1375 = icmp ult i64 %88, 4
  br i1 %min.iters.check1375, label %polly.loop_header192.preheader, label %vector.ph1376

vector.ph1376:                                    ; preds = %polly.loop_header
  %n.vec1378 = and i64 %88, -4
  br label %vector.body1372

vector.body1372:                                  ; preds = %vector.body1372, %vector.ph1376
  %index1379 = phi i64 [ 0, %vector.ph1376 ], [ %index.next1380, %vector.body1372 ]
  %90 = shl nuw nsw i64 %index1379, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1383, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1380 = add i64 %index1379, 4
  %95 = icmp eq i64 %index.next1380, %n.vec1378
  br i1 %95, label %middle.block1370, label %vector.body1372, !llvm.loop !79

middle.block1370:                                 ; preds = %vector.body1372
  %cmp.n1382 = icmp eq i64 %88, %n.vec1378
  br i1 %cmp.n1382, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1370
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1378, %middle.block1370 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1370
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1374 = add i64 %indvar1373, 1
  br i1 %exitcond1090.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1089.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1089.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1080 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1081, %polly.loop_exit224 ]
  %indvars.iv1076 = phi i64 [ 47, %polly.loop_header200.preheader ], [ %indvars.iv.next1077, %polly.loop_exit224 ]
  %indvars.iv1074 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1075, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = mul nsw i64 %polly.indvar203, -46
  %98 = mul nuw nsw i64 %polly.indvar203, 23
  %99 = add nuw i64 %98, 47
  %100 = udiv i64 %99, 48
  %101 = mul nuw nsw i64 %100, 96
  %102 = add i64 %97, %101
  %103 = mul nuw nsw i64 %polly.indvar203, 46
  %104 = sub nsw i64 %103, %101
  %105 = udiv i64 %indvars.iv1076, 48
  %106 = mul nuw nsw i64 %105, 96
  %107 = add i64 %indvars.iv1074, %106
  %108 = sub nsw i64 %indvars.iv1080, %106
  %109 = mul nsw i64 %polly.indvar203, -50
  %110 = mul nuw nsw i64 %polly.indvar203, 50
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %111 = add nsw i64 %109, 1199
  %112 = mul nuw nsw i64 %polly.indvar203, 23
  %113 = add nuw nsw i64 %112, 47
  %pexp.p_div_q = udiv i64 %113, 48
  %114 = sub nsw i64 %polly.indvar203, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %114, 13
  br i1 %polly.loop_guard, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_exit224:                               ; preds = %polly.loop_exit263, %polly.loop_exit208
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -46
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 23
  %indvars.iv.next1081 = add nuw nsw i64 %indvars.iv1080, 46
  %exitcond1088.not = icmp eq i64 %polly.indvar_next204, 24
  br i1 %exitcond1088.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1070.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %115 = add nuw nsw i64 %polly.indvar215, %110
  %polly.access.mul.call2219 = mul nuw nsw i64 %115, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit208, %polly.loop_exit263
  %indvar1387 = phi i64 [ %indvar.next1388, %polly.loop_exit263 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit263 ], [ %108, %polly.loop_exit208 ]
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit263 ], [ %107, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit263 ], [ %114, %polly.loop_exit208 ]
  %116 = mul nsw i64 %indvar1387, -96
  %117 = add i64 %102, %116
  %smax1389 = call i64 @llvm.smax.i64(i64 %117, i64 0)
  %118 = mul nuw nsw i64 %indvar1387, 96
  %119 = add i64 %104, %118
  %120 = add i64 %smax1389, %119
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1078, i64 0)
  %121 = add i64 %smax, %indvars.iv1082
  %122 = mul nsw i64 %polly.indvar225, 96
  %123 = add nsw i64 %122, %109
  %124 = add nsw i64 %123, -1
  %.inv = icmp sgt i64 %123, 49
  %125 = select i1 %.inv, i64 49, i64 %124
  %polly.loop_guard238 = icmp sgt i64 %125, -1
  %126 = icmp sgt i64 %123, 0
  %127 = select i1 %126, i64 %123, i64 0
  %128 = add nsw i64 %123, 95
  %129 = icmp slt i64 %111, %128
  %130 = select i1 %129, i64 %111, i64 %128
  %polly.loop_guard250.not = icmp sgt i64 %127, %130
  br i1 %polly.loop_guard238, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit249.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit249.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header235.us

polly.loop_header235.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header235.us
  %polly.indvar239.us = phi i64 [ %polly.indvar_next240.us, %polly.loop_header235.us ], [ 0, %polly.loop_header228.us ]
  %131 = add nuw nsw i64 %polly.indvar239.us, %110
  %polly.access.mul.call1243.us = mul nuw nsw i64 %131, 1000
  %polly.access.add.call1244.us = add nuw nsw i64 %polly.access.mul.call1243.us, %polly.indvar231.us
  %polly.access.call1245.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1244.us
  %polly.access.call1245.load.us = load double, double* %polly.access.call1245.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar239.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1245.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next240.us = add nuw i64 %polly.indvar239.us, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar239.us, %125
  br i1 %exitcond1072.not, label %polly.loop_exit237.loopexit.us, label %polly.loop_header235.us

polly.loop_header247.us:                          ; preds = %polly.loop_exit237.loopexit.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ %127, %polly.loop_exit237.loopexit.us ]
  %132 = add nuw nsw i64 %polly.indvar251.us, %110
  %polly.access.mul.call1255.us = mul nsw i64 %132, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %polly.access.mul.call1255.us, %polly.indvar231.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1259.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1260.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1260.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %polly.loop_cond253.not.not.us = icmp slt i64 %polly.indvar251.us, %130
  br i1 %polly.loop_cond253.not.not.us, label %polly.loop_header247.us, label %polly.loop_exit249.us

polly.loop_exit249.us:                            ; preds = %polly.loop_header247.us, %polly.loop_exit237.loopexit.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1073.not, label %polly.loop_header261.preheader, label %polly.loop_header228.us

polly.loop_exit237.loopexit.us:                   ; preds = %polly.loop_header235.us
  br i1 %polly.loop_guard250.not, label %polly.loop_exit249.us, label %polly.loop_header247.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  br i1 %polly.loop_guard250.not, label %polly.loop_header261.preheader, label %polly.loop_header228

polly.loop_exit263:                               ; preds = %polly.loop_exit270, %polly.loop_header261.preheader
  %polly.indvar_next226 = add nsw i64 %polly.indvar225, 1
  %polly.loop_cond227 = icmp slt i64 %polly.indvar225, 12
  %indvars.iv.next1079 = add i64 %indvars.iv1078, -96
  %indvars.iv.next1083 = add i64 %indvars.iv1082, 96
  %indvar.next1388 = add i64 %indvar1387, 1
  br i1 %polly.loop_cond227, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.loop_exit249
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit249 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1258 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header247

polly.loop_exit249:                               ; preds = %polly.loop_header247
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1071.not, label %polly.loop_header261.preheader, label %polly.loop_header228

polly.loop_header261.preheader:                   ; preds = %polly.loop_exit249, %polly.loop_exit249.us, %polly.loop_header222.split
  %133 = sub nsw i64 %110, %122
  %134 = icmp sgt i64 %133, 0
  %135 = select i1 %134, i64 %133, i64 0
  %136 = mul nsw i64 %polly.indvar225, -96
  %137 = icmp slt i64 %136, -1104
  %138 = select i1 %137, i64 %136, i64 -1104
  %139 = add nsw i64 %138, 1199
  %polly.loop_guard271.not = icmp sgt i64 %135, %139
  br i1 %polly.loop_guard271.not, label %polly.loop_exit263, label %polly.loop_header261

polly.loop_header247:                             ; preds = %polly.loop_header228, %polly.loop_header247
  %polly.indvar251 = phi i64 [ %polly.indvar_next252, %polly.loop_header247 ], [ %127, %polly.loop_header228 ]
  %140 = add nuw nsw i64 %polly.indvar251, %110
  %polly.access.mul.call1255 = mul nsw i64 %140, 1000
  %polly.access.add.call1256 = add nuw nsw i64 %polly.access.mul.call1255, %polly.indvar231
  %polly.access.call1257 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1256
  %polly.access.call1257.load = load double, double* %polly.access.call1257, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1259 = add nuw nsw i64 %polly.indvar251, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1260 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259
  store double %polly.access.call1257.load, double* %polly.access.Packed_MemRef_call1260, align 8
  %polly.indvar_next252 = add nuw nsw i64 %polly.indvar251, 1
  %polly.loop_cond253.not.not = icmp slt i64 %polly.indvar251, %130
  br i1 %polly.loop_cond253.not.not, label %polly.loop_header247, label %polly.loop_exit249

polly.loop_header261:                             ; preds = %polly.loop_header261.preheader, %polly.loop_exit270
  %polly.indvar264 = phi i64 [ %polly.indvar_next265, %polly.loop_exit270 ], [ 0, %polly.loop_header261.preheader ]
  %polly.access.mul.Packed_MemRef_call1283 = mul nuw nsw i64 %polly.indvar264, 1200
  br label %polly.loop_header268

polly.loop_exit270:                               ; preds = %polly.loop_exit278
  %polly.indvar_next265 = add nuw nsw i64 %polly.indvar264, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next265, 1000
  br i1 %exitcond1087.not, label %polly.loop_exit263, label %polly.loop_header261

polly.loop_header268:                             ; preds = %polly.loop_header261, %polly.loop_exit278
  %indvar1390 = phi i64 [ 0, %polly.loop_header261 ], [ %indvar.next1391, %polly.loop_exit278 ]
  %indvars.iv1084 = phi i64 [ %121, %polly.loop_header261 ], [ %indvars.iv.next1085, %polly.loop_exit278 ]
  %polly.indvar272 = phi i64 [ %135, %polly.loop_header261 ], [ %polly.indvar_next273, %polly.loop_exit278 ]
  %141 = add i64 %120, %indvar1390
  %smin1392 = call i64 @llvm.smin.i64(i64 %141, i64 49)
  %142 = add nsw i64 %smin1392, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1084, i64 49)
  %143 = add nsw i64 %polly.indvar272, %123
  %polly.loop_guard2791180 = icmp sgt i64 %143, -1
  br i1 %polly.loop_guard2791180, label %polly.loop_header276.preheader, label %polly.loop_exit278

polly.loop_header276.preheader:                   ; preds = %polly.loop_header268
  %144 = add nsw i64 %polly.indvar272, %122
  %polly.access.add.Packed_MemRef_call2288 = add nsw i64 %143, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call2289 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call2289, align 8
  %polly.access.Packed_MemRef_call1297 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288
  %_p_scalar_298 = load double, double* %polly.access.Packed_MemRef_call1297, align 8
  %145 = mul i64 %144, 9600
  %min.iters.check1393 = icmp ult i64 %142, 4
  br i1 %min.iters.check1393, label %polly.loop_header276.preheader1408, label %vector.ph1394

vector.ph1394:                                    ; preds = %polly.loop_header276.preheader
  %n.vec1396 = and i64 %142, -4
  %broadcast.splatinsert1402 = insertelement <4 x double> poison, double %_p_scalar_290, i32 0
  %broadcast.splat1403 = shufflevector <4 x double> %broadcast.splatinsert1402, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1405 = insertelement <4 x double> poison, double %_p_scalar_298, i32 0
  %broadcast.splat1406 = shufflevector <4 x double> %broadcast.splatinsert1405, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1386

vector.body1386:                                  ; preds = %vector.body1386, %vector.ph1394
  %index1397 = phi i64 [ 0, %vector.ph1394 ], [ %index.next1398, %vector.body1386 ]
  %146 = add nuw nsw i64 %index1397, %110
  %147 = add nuw nsw i64 %index1397, %polly.access.mul.Packed_MemRef_call1283
  %148 = getelementptr double, double* %Packed_MemRef_call1, i64 %147
  %149 = bitcast double* %148 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %149, align 8
  %150 = fmul fast <4 x double> %broadcast.splat1403, %wide.load1401
  %151 = getelementptr double, double* %Packed_MemRef_call2, i64 %147
  %152 = bitcast double* %151 to <4 x double>*
  %wide.load1404 = load <4 x double>, <4 x double>* %152, align 8
  %153 = fmul fast <4 x double> %broadcast.splat1406, %wide.load1404
  %154 = shl i64 %146, 3
  %155 = add i64 %154, %145
  %156 = getelementptr i8, i8* %call, i64 %155
  %157 = bitcast i8* %156 to <4 x double>*
  %wide.load1407 = load <4 x double>, <4 x double>* %157, align 8, !alias.scope !72, !noalias !74
  %158 = fadd fast <4 x double> %153, %150
  %159 = fmul fast <4 x double> %158, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %160 = fadd fast <4 x double> %159, %wide.load1407
  %161 = bitcast i8* %156 to <4 x double>*
  store <4 x double> %160, <4 x double>* %161, align 8, !alias.scope !72, !noalias !74
  %index.next1398 = add i64 %index1397, 4
  %162 = icmp eq i64 %index.next1398, %n.vec1396
  br i1 %162, label %middle.block1384, label %vector.body1386, !llvm.loop !84

middle.block1384:                                 ; preds = %vector.body1386
  %cmp.n1400 = icmp eq i64 %142, %n.vec1396
  br i1 %cmp.n1400, label %polly.loop_exit278, label %polly.loop_header276.preheader1408

polly.loop_header276.preheader1408:               ; preds = %polly.loop_header276.preheader, %middle.block1384
  %polly.indvar280.ph = phi i64 [ 0, %polly.loop_header276.preheader ], [ %n.vec1396, %middle.block1384 ]
  br label %polly.loop_header276

polly.loop_exit278:                               ; preds = %polly.loop_header276, %middle.block1384, %polly.loop_header268
  %polly.indvar_next273 = add nuw nsw i64 %polly.indvar272, 1
  %polly.loop_cond274.not.not = icmp slt i64 %polly.indvar272, %139
  %indvars.iv.next1085 = add i64 %indvars.iv1084, 1
  %indvar.next1391 = add i64 %indvar1390, 1
  br i1 %polly.loop_cond274.not.not, label %polly.loop_header268, label %polly.loop_exit270

polly.loop_header276:                             ; preds = %polly.loop_header276.preheader1408, %polly.loop_header276
  %polly.indvar280 = phi i64 [ %polly.indvar_next281, %polly.loop_header276 ], [ %polly.indvar280.ph, %polly.loop_header276.preheader1408 ]
  %163 = add nuw nsw i64 %polly.indvar280, %110
  %polly.access.add.Packed_MemRef_call1284 = add nuw nsw i64 %polly.indvar280, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1285 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284
  %_p_scalar_286 = load double, double* %polly.access.Packed_MemRef_call1285, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_290, %_p_scalar_286
  %polly.access.Packed_MemRef_call2293 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1284
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call2293, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_298, %_p_scalar_294
  %164 = shl i64 %163, 3
  %165 = add i64 %164, %145
  %scevgep299 = getelementptr i8, i8* %call, i64 %165
  %scevgep299300 = bitcast i8* %scevgep299 to double*
  %_p_scalar_301 = load double, double* %scevgep299300, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_301
  store double %p_add42.i118, double* %scevgep299300, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next281 = add nuw nsw i64 %polly.indvar280, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar280, %smin
  br i1 %exitcond1086.not, label %polly.loop_exit278, label %polly.loop_header276, !llvm.loop !85

polly.start304:                                   ; preds = %kernel_syr2k.exit
  %malloccall306 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall308 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header392

polly.exiting305:                                 ; preds = %polly.loop_exit434
  tail call void @free(i8* %malloccall306)
  tail call void @free(i8* %malloccall308)
  br label %kernel_syr2k.exit90

polly.loop_header392:                             ; preds = %polly.loop_exit400, %polly.start304
  %indvar1323 = phi i64 [ %indvar.next1324, %polly.loop_exit400 ], [ 0, %polly.start304 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit400 ], [ 1, %polly.start304 ]
  %166 = add i64 %indvar1323, 1
  %167 = mul nuw nsw i64 %polly.indvar395, 9600
  %scevgep404 = getelementptr i8, i8* %call, i64 %167
  %min.iters.check1325 = icmp ult i64 %166, 4
  br i1 %min.iters.check1325, label %polly.loop_header398.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %polly.loop_header392
  %n.vec1328 = and i64 %166, -4
  br label %vector.body1322

vector.body1322:                                  ; preds = %vector.body1322, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1322 ]
  %168 = shl nuw nsw i64 %index1329, 3
  %169 = getelementptr i8, i8* %scevgep404, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %170, align 8, !alias.scope !86, !noalias !88
  %171 = fmul fast <4 x double> %wide.load1333, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %172 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %171, <4 x double>* %172, align 8, !alias.scope !86, !noalias !88
  %index.next1330 = add i64 %index1329, 4
  %173 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %173, label %middle.block1320, label %vector.body1322, !llvm.loop !93

middle.block1320:                                 ; preds = %vector.body1322
  %cmp.n1332 = icmp eq i64 %166, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit400, label %polly.loop_header398.preheader

polly.loop_header398.preheader:                   ; preds = %polly.loop_header392, %middle.block1320
  %polly.indvar401.ph = phi i64 [ 0, %polly.loop_header392 ], [ %n.vec1328, %middle.block1320 ]
  br label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_header398, %middle.block1320
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next396, 1200
  %indvar.next1324 = add i64 %indvar1323, 1
  br i1 %exitcond1116.not, label %polly.loop_header408.preheader, label %polly.loop_header392

polly.loop_header408.preheader:                   ; preds = %polly.loop_exit400
  %Packed_MemRef_call1307 = bitcast i8* %malloccall306 to double*
  %Packed_MemRef_call2309 = bitcast i8* %malloccall308 to double*
  br label %polly.loop_header408

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_header398
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_header398 ], [ %polly.indvar401.ph, %polly.loop_header398.preheader ]
  %174 = shl nuw nsw i64 %polly.indvar401, 3
  %scevgep405 = getelementptr i8, i8* %scevgep404, i64 %174
  %scevgep405406 = bitcast i8* %scevgep405 to double*
  %_p_scalar_407 = load double, double* %scevgep405406, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_407, 1.200000e+00
  store double %p_mul.i57, double* %scevgep405406, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next402, %polly.indvar395
  br i1 %exitcond1115.not, label %polly.loop_exit400, label %polly.loop_header398, !llvm.loop !94

polly.loop_header408:                             ; preds = %polly.loop_header408.preheader, %polly.loop_exit434
  %indvars.iv1105 = phi i64 [ 0, %polly.loop_header408.preheader ], [ %indvars.iv.next1106, %polly.loop_exit434 ]
  %indvars.iv1100 = phi i64 [ 47, %polly.loop_header408.preheader ], [ %indvars.iv.next1101, %polly.loop_exit434 ]
  %indvars.iv1098 = phi i64 [ 0, %polly.loop_header408.preheader ], [ %indvars.iv.next1099, %polly.loop_exit434 ]
  %indvars.iv1091 = phi i64 [ 1200, %polly.loop_header408.preheader ], [ %indvars.iv.next1092, %polly.loop_exit434 ]
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header408.preheader ], [ %polly.indvar_next412, %polly.loop_exit434 ]
  %175 = mul nsw i64 %polly.indvar411, -46
  %176 = mul nuw nsw i64 %polly.indvar411, 23
  %177 = add nuw i64 %176, 47
  %178 = udiv i64 %177, 48
  %179 = mul nuw nsw i64 %178, 96
  %180 = add i64 %175, %179
  %181 = mul nuw nsw i64 %polly.indvar411, 46
  %182 = sub nsw i64 %181, %179
  %183 = udiv i64 %indvars.iv1100, 48
  %184 = mul nuw nsw i64 %183, 96
  %185 = add i64 %indvars.iv1098, %184
  %186 = sub nsw i64 %indvars.iv1105, %184
  %187 = mul nsw i64 %polly.indvar411, -50
  %188 = mul nuw nsw i64 %polly.indvar411, 50
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_exit422
  %189 = add nsw i64 %187, 1199
  %190 = mul nuw nsw i64 %polly.indvar411, 23
  %191 = add nuw nsw i64 %190, 47
  %pexp.p_div_q430 = udiv i64 %191, 48
  %192 = sub nsw i64 %polly.indvar411, %pexp.p_div_q430
  %polly.loop_guard435 = icmp slt i64 %192, 13
  br i1 %polly.loop_guard435, label %polly.loop_header432, label %polly.loop_exit434

polly.loop_exit434:                               ; preds = %polly.loop_exit474, %polly.loop_exit416
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -50
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -46
  %indvars.iv.next1101 = add nuw nsw i64 %indvars.iv1100, 23
  %indvars.iv.next1106 = add nuw nsw i64 %indvars.iv1105, 46
  %exitcond1114.not = icmp eq i64 %polly.indvar_next412, 24
  br i1 %exitcond1114.not, label %polly.exiting305, label %polly.loop_header408

polly.loop_header414:                             ; preds = %polly.loop_exit422, %polly.loop_header408
  %polly.indvar417 = phi i64 [ 0, %polly.loop_header408 ], [ %polly.indvar_next418, %polly.loop_exit422 ]
  %polly.access.mul.Packed_MemRef_call2309 = mul nuw nsw i64 %polly.indvar417, 1200
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_header420
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next418, 1000
  br i1 %exitcond1094.not, label %polly.loop_exit416, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_header420, %polly.loop_header414
  %polly.indvar423 = phi i64 [ 0, %polly.loop_header414 ], [ %polly.indvar_next424, %polly.loop_header420 ]
  %193 = add nuw nsw i64 %polly.indvar423, %188
  %polly.access.mul.call2427 = mul nuw nsw i64 %193, 1000
  %polly.access.add.call2428 = add nuw nsw i64 %polly.access.mul.call2427, %polly.indvar417
  %polly.access.call2429 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2428
  %polly.access.call2429.load = load double, double* %polly.access.call2429, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2309 = add nuw nsw i64 %polly.indvar423, %polly.access.mul.Packed_MemRef_call2309
  %polly.access.Packed_MemRef_call2309 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309
  store double %polly.access.call2429.load, double* %polly.access.Packed_MemRef_call2309, align 8
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next424, %indvars.iv1091
  br i1 %exitcond1093.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header432:                             ; preds = %polly.loop_exit416, %polly.loop_exit474
  %indvar1337 = phi i64 [ %indvar.next1338, %polly.loop_exit474 ], [ 0, %polly.loop_exit416 ]
  %indvars.iv1107 = phi i64 [ %indvars.iv.next1108, %polly.loop_exit474 ], [ %186, %polly.loop_exit416 ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit474 ], [ %185, %polly.loop_exit416 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit474 ], [ %192, %polly.loop_exit416 ]
  %194 = mul nsw i64 %indvar1337, -96
  %195 = add i64 %180, %194
  %smax1339 = call i64 @llvm.smax.i64(i64 %195, i64 0)
  %196 = mul nuw nsw i64 %indvar1337, 96
  %197 = add i64 %182, %196
  %198 = add i64 %smax1339, %197
  %smax1104 = call i64 @llvm.smax.i64(i64 %indvars.iv1102, i64 0)
  %199 = add i64 %smax1104, %indvars.iv1107
  %200 = mul nsw i64 %polly.indvar436, 96
  %201 = add nsw i64 %200, %187
  %202 = add nsw i64 %201, -1
  %.inv930 = icmp sgt i64 %201, 49
  %203 = select i1 %.inv930, i64 49, i64 %202
  %polly.loop_guard449 = icmp sgt i64 %203, -1
  %204 = icmp sgt i64 %201, 0
  %205 = select i1 %204, i64 %201, i64 0
  %206 = add nsw i64 %201, 95
  %207 = icmp slt i64 %189, %206
  %208 = select i1 %207, i64 %189, i64 %206
  %polly.loop_guard461.not = icmp sgt i64 %205, %208
  br i1 %polly.loop_guard449, label %polly.loop_header439.us, label %polly.loop_header432.split

polly.loop_header439.us:                          ; preds = %polly.loop_header432, %polly.loop_exit460.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.loop_exit460.us ], [ 0, %polly.loop_header432 ]
  %polly.access.mul.Packed_MemRef_call1307.us = mul nuw nsw i64 %polly.indvar442.us, 1200
  br label %polly.loop_header446.us

polly.loop_header446.us:                          ; preds = %polly.loop_header439.us, %polly.loop_header446.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_header446.us ], [ 0, %polly.loop_header439.us ]
  %209 = add nuw nsw i64 %polly.indvar450.us, %188
  %polly.access.mul.call1454.us = mul nuw nsw i64 %209, 1000
  %polly.access.add.call1455.us = add nuw nsw i64 %polly.access.mul.call1454.us, %polly.indvar442.us
  %polly.access.call1456.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1455.us
  %polly.access.call1456.load.us = load double, double* %polly.access.call1456.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1307.us = add nuw nsw i64 %polly.indvar450.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307.us
  store double %polly.access.call1456.load.us, double* %polly.access.Packed_MemRef_call1307.us, align 8
  %polly.indvar_next451.us = add nuw i64 %polly.indvar450.us, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar450.us, %203
  br i1 %exitcond1096.not, label %polly.loop_exit448.loopexit.us, label %polly.loop_header446.us

polly.loop_header458.us:                          ; preds = %polly.loop_exit448.loopexit.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ %205, %polly.loop_exit448.loopexit.us ]
  %210 = add nuw nsw i64 %polly.indvar462.us, %188
  %polly.access.mul.call1466.us = mul nsw i64 %210, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %polly.access.mul.call1466.us, %polly.indvar442.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1307470.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307471.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307470.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1307471.us, align 8
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %polly.loop_cond464.not.not.us = icmp slt i64 %polly.indvar462.us, %208
  br i1 %polly.loop_cond464.not.not.us, label %polly.loop_header458.us, label %polly.loop_exit460.us

polly.loop_exit460.us:                            ; preds = %polly.loop_header458.us, %polly.loop_exit448.loopexit.us
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next443.us, 1000
  br i1 %exitcond1097.not, label %polly.loop_header472.preheader, label %polly.loop_header439.us

polly.loop_exit448.loopexit.us:                   ; preds = %polly.loop_header446.us
  br i1 %polly.loop_guard461.not, label %polly.loop_exit460.us, label %polly.loop_header458.us

polly.loop_header432.split:                       ; preds = %polly.loop_header432
  br i1 %polly.loop_guard461.not, label %polly.loop_header472.preheader, label %polly.loop_header439

polly.loop_exit474:                               ; preds = %polly.loop_exit481, %polly.loop_header472.preheader
  %polly.indvar_next437 = add nsw i64 %polly.indvar436, 1
  %polly.loop_cond438 = icmp slt i64 %polly.indvar436, 12
  %indvars.iv.next1103 = add i64 %indvars.iv1102, -96
  %indvars.iv.next1108 = add i64 %indvars.iv1107, 96
  %indvar.next1338 = add i64 %indvar1337, 1
  br i1 %polly.loop_cond438, label %polly.loop_header432, label %polly.loop_exit434

polly.loop_header439:                             ; preds = %polly.loop_header432.split, %polly.loop_exit460
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit460 ], [ 0, %polly.loop_header432.split ]
  %polly.access.mul.Packed_MemRef_call1307469 = mul nuw nsw i64 %polly.indvar442, 1200
  br label %polly.loop_header458

polly.loop_exit460:                               ; preds = %polly.loop_header458
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next443, 1000
  br i1 %exitcond1095.not, label %polly.loop_header472.preheader, label %polly.loop_header439

polly.loop_header472.preheader:                   ; preds = %polly.loop_exit460, %polly.loop_exit460.us, %polly.loop_header432.split
  %211 = sub nsw i64 %188, %200
  %212 = icmp sgt i64 %211, 0
  %213 = select i1 %212, i64 %211, i64 0
  %214 = mul nsw i64 %polly.indvar436, -96
  %215 = icmp slt i64 %214, -1104
  %216 = select i1 %215, i64 %214, i64 -1104
  %217 = add nsw i64 %216, 1199
  %polly.loop_guard482.not = icmp sgt i64 %213, %217
  br i1 %polly.loop_guard482.not, label %polly.loop_exit474, label %polly.loop_header472

polly.loop_header458:                             ; preds = %polly.loop_header439, %polly.loop_header458
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.loop_header458 ], [ %205, %polly.loop_header439 ]
  %218 = add nuw nsw i64 %polly.indvar462, %188
  %polly.access.mul.call1466 = mul nsw i64 %218, 1000
  %polly.access.add.call1467 = add nuw nsw i64 %polly.access.mul.call1466, %polly.indvar442
  %polly.access.call1468 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1467
  %polly.access.call1468.load = load double, double* %polly.access.call1468, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1307470 = add nuw nsw i64 %polly.indvar462, %polly.access.mul.Packed_MemRef_call1307469
  %polly.access.Packed_MemRef_call1307471 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307470
  store double %polly.access.call1468.load, double* %polly.access.Packed_MemRef_call1307471, align 8
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %polly.loop_cond464.not.not = icmp slt i64 %polly.indvar462, %208
  br i1 %polly.loop_cond464.not.not, label %polly.loop_header458, label %polly.loop_exit460

polly.loop_header472:                             ; preds = %polly.loop_header472.preheader, %polly.loop_exit481
  %polly.indvar475 = phi i64 [ %polly.indvar_next476, %polly.loop_exit481 ], [ 0, %polly.loop_header472.preheader ]
  %polly.access.mul.Packed_MemRef_call1307494 = mul nuw nsw i64 %polly.indvar475, 1200
  br label %polly.loop_header479

polly.loop_exit481:                               ; preds = %polly.loop_exit489
  %polly.indvar_next476 = add nuw nsw i64 %polly.indvar475, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next476, 1000
  br i1 %exitcond1113.not, label %polly.loop_exit474, label %polly.loop_header472

polly.loop_header479:                             ; preds = %polly.loop_header472, %polly.loop_exit489
  %indvar1340 = phi i64 [ 0, %polly.loop_header472 ], [ %indvar.next1341, %polly.loop_exit489 ]
  %indvars.iv1109 = phi i64 [ %199, %polly.loop_header472 ], [ %indvars.iv.next1110, %polly.loop_exit489 ]
  %polly.indvar483 = phi i64 [ %213, %polly.loop_header472 ], [ %polly.indvar_next484, %polly.loop_exit489 ]
  %219 = add i64 %198, %indvar1340
  %smin1342 = call i64 @llvm.smin.i64(i64 %219, i64 49)
  %220 = add nsw i64 %smin1342, 1
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 49)
  %221 = add nsw i64 %polly.indvar483, %201
  %polly.loop_guard4901181 = icmp sgt i64 %221, -1
  br i1 %polly.loop_guard4901181, label %polly.loop_header487.preheader, label %polly.loop_exit489

polly.loop_header487.preheader:                   ; preds = %polly.loop_header479
  %222 = add nsw i64 %polly.indvar483, %200
  %polly.access.add.Packed_MemRef_call2309499 = add nsw i64 %221, %polly.access.mul.Packed_MemRef_call1307494
  %polly.access.Packed_MemRef_call2309500 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309499
  %_p_scalar_501 = load double, double* %polly.access.Packed_MemRef_call2309500, align 8
  %polly.access.Packed_MemRef_call1307508 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309499
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call1307508, align 8
  %223 = mul i64 %222, 9600
  %min.iters.check1343 = icmp ult i64 %220, 4
  br i1 %min.iters.check1343, label %polly.loop_header487.preheader1412, label %vector.ph1344

vector.ph1344:                                    ; preds = %polly.loop_header487.preheader
  %n.vec1346 = and i64 %220, -4
  %broadcast.splatinsert1352 = insertelement <4 x double> poison, double %_p_scalar_501, i32 0
  %broadcast.splat1353 = shufflevector <4 x double> %broadcast.splatinsert1352, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1355 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1356 = shufflevector <4 x double> %broadcast.splatinsert1355, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1336

vector.body1336:                                  ; preds = %vector.body1336, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1336 ]
  %224 = add nuw nsw i64 %index1347, %188
  %225 = add nuw nsw i64 %index1347, %polly.access.mul.Packed_MemRef_call1307494
  %226 = getelementptr double, double* %Packed_MemRef_call1307, i64 %225
  %227 = bitcast double* %226 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %227, align 8
  %228 = fmul fast <4 x double> %broadcast.splat1353, %wide.load1351
  %229 = getelementptr double, double* %Packed_MemRef_call2309, i64 %225
  %230 = bitcast double* %229 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %230, align 8
  %231 = fmul fast <4 x double> %broadcast.splat1356, %wide.load1354
  %232 = shl i64 %224, 3
  %233 = add i64 %232, %223
  %234 = getelementptr i8, i8* %call, i64 %233
  %235 = bitcast i8* %234 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %235, align 8, !alias.scope !86, !noalias !88
  %236 = fadd fast <4 x double> %231, %228
  %237 = fmul fast <4 x double> %236, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %238 = fadd fast <4 x double> %237, %wide.load1357
  %239 = bitcast i8* %234 to <4 x double>*
  store <4 x double> %238, <4 x double>* %239, align 8, !alias.scope !86, !noalias !88
  %index.next1348 = add i64 %index1347, 4
  %240 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %240, label %middle.block1334, label %vector.body1336, !llvm.loop !97

middle.block1334:                                 ; preds = %vector.body1336
  %cmp.n1350 = icmp eq i64 %220, %n.vec1346
  br i1 %cmp.n1350, label %polly.loop_exit489, label %polly.loop_header487.preheader1412

polly.loop_header487.preheader1412:               ; preds = %polly.loop_header487.preheader, %middle.block1334
  %polly.indvar491.ph = phi i64 [ 0, %polly.loop_header487.preheader ], [ %n.vec1346, %middle.block1334 ]
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_header487, %middle.block1334, %polly.loop_header479
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %polly.loop_cond485.not.not = icmp slt i64 %polly.indvar483, %217
  %indvars.iv.next1110 = add i64 %indvars.iv1109, 1
  %indvar.next1341 = add i64 %indvar1340, 1
  br i1 %polly.loop_cond485.not.not, label %polly.loop_header479, label %polly.loop_exit481

polly.loop_header487:                             ; preds = %polly.loop_header487.preheader1412, %polly.loop_header487
  %polly.indvar491 = phi i64 [ %polly.indvar_next492, %polly.loop_header487 ], [ %polly.indvar491.ph, %polly.loop_header487.preheader1412 ]
  %241 = add nuw nsw i64 %polly.indvar491, %188
  %polly.access.add.Packed_MemRef_call1307495 = add nuw nsw i64 %polly.indvar491, %polly.access.mul.Packed_MemRef_call1307494
  %polly.access.Packed_MemRef_call1307496 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307495
  %_p_scalar_497 = load double, double* %polly.access.Packed_MemRef_call1307496, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_501, %_p_scalar_497
  %polly.access.Packed_MemRef_call2309504 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call1307495
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call2309504, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %242 = shl i64 %241, 3
  %243 = add i64 %242, %223
  %scevgep510 = getelementptr i8, i8* %call, i64 %243
  %scevgep510511 = bitcast i8* %scevgep510 to double*
  %_p_scalar_512 = load double, double* %scevgep510511, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_512
  store double %p_add42.i79, double* %scevgep510511, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar491, %smin1111
  br i1 %exitcond1112.not, label %polly.loop_exit489, label %polly.loop_header487, !llvm.loop !98

polly.start515:                                   ; preds = %init_array.exit
  %malloccall517 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall519 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header603

polly.exiting516:                                 ; preds = %polly.loop_exit645
  tail call void @free(i8* %malloccall517)
  tail call void @free(i8* %malloccall519)
  br label %kernel_syr2k.exit

polly.loop_header603:                             ; preds = %polly.loop_exit611, %polly.start515
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit611 ], [ 0, %polly.start515 ]
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_exit611 ], [ 1, %polly.start515 ]
  %244 = add i64 %indvar, 1
  %245 = mul nuw nsw i64 %polly.indvar606, 9600
  %scevgep615 = getelementptr i8, i8* %call, i64 %245
  %min.iters.check1275 = icmp ult i64 %244, 4
  br i1 %min.iters.check1275, label %polly.loop_header609.preheader, label %vector.ph1276

vector.ph1276:                                    ; preds = %polly.loop_header603
  %n.vec1278 = and i64 %244, -4
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1276
  %index1279 = phi i64 [ 0, %vector.ph1276 ], [ %index.next1280, %vector.body1274 ]
  %246 = shl nuw nsw i64 %index1279, 3
  %247 = getelementptr i8, i8* %scevgep615, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  %wide.load1283 = load <4 x double>, <4 x double>* %248, align 8, !alias.scope !99, !noalias !101
  %249 = fmul fast <4 x double> %wide.load1283, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %250 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %249, <4 x double>* %250, align 8, !alias.scope !99, !noalias !101
  %index.next1280 = add i64 %index1279, 4
  %251 = icmp eq i64 %index.next1280, %n.vec1278
  br i1 %251, label %middle.block1272, label %vector.body1274, !llvm.loop !106

middle.block1272:                                 ; preds = %vector.body1274
  %cmp.n1282 = icmp eq i64 %244, %n.vec1278
  br i1 %cmp.n1282, label %polly.loop_exit611, label %polly.loop_header609.preheader

polly.loop_header609.preheader:                   ; preds = %polly.loop_header603, %middle.block1272
  %polly.indvar612.ph = phi i64 [ 0, %polly.loop_header603 ], [ %n.vec1278, %middle.block1272 ]
  br label %polly.loop_header609

polly.loop_exit611:                               ; preds = %polly.loop_header609, %middle.block1272
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar_next607, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1142.not, label %polly.loop_header619.preheader, label %polly.loop_header603

polly.loop_header619.preheader:                   ; preds = %polly.loop_exit611
  %Packed_MemRef_call1518 = bitcast i8* %malloccall517 to double*
  %Packed_MemRef_call2520 = bitcast i8* %malloccall519 to double*
  br label %polly.loop_header619

polly.loop_header609:                             ; preds = %polly.loop_header609.preheader, %polly.loop_header609
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header609 ], [ %polly.indvar612.ph, %polly.loop_header609.preheader ]
  %252 = shl nuw nsw i64 %polly.indvar612, 3
  %scevgep616 = getelementptr i8, i8* %scevgep615, i64 %252
  %scevgep616617 = bitcast i8* %scevgep616 to double*
  %_p_scalar_618 = load double, double* %scevgep616617, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_618, 1.200000e+00
  store double %p_mul.i, double* %scevgep616617, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next613, %polly.indvar606
  br i1 %exitcond1141.not, label %polly.loop_exit611, label %polly.loop_header609, !llvm.loop !107

polly.loop_header619:                             ; preds = %polly.loop_header619.preheader, %polly.loop_exit645
  %indvars.iv1131 = phi i64 [ 0, %polly.loop_header619.preheader ], [ %indvars.iv.next1132, %polly.loop_exit645 ]
  %indvars.iv1126 = phi i64 [ 47, %polly.loop_header619.preheader ], [ %indvars.iv.next1127, %polly.loop_exit645 ]
  %indvars.iv1124 = phi i64 [ 0, %polly.loop_header619.preheader ], [ %indvars.iv.next1125, %polly.loop_exit645 ]
  %indvars.iv1117 = phi i64 [ 1200, %polly.loop_header619.preheader ], [ %indvars.iv.next1118, %polly.loop_exit645 ]
  %polly.indvar622 = phi i64 [ 0, %polly.loop_header619.preheader ], [ %polly.indvar_next623, %polly.loop_exit645 ]
  %253 = mul nsw i64 %polly.indvar622, -46
  %254 = mul nuw nsw i64 %polly.indvar622, 23
  %255 = add nuw i64 %254, 47
  %256 = udiv i64 %255, 48
  %257 = mul nuw nsw i64 %256, 96
  %258 = add i64 %253, %257
  %259 = mul nuw nsw i64 %polly.indvar622, 46
  %260 = sub nsw i64 %259, %257
  %261 = udiv i64 %indvars.iv1126, 48
  %262 = mul nuw nsw i64 %261, 96
  %263 = add i64 %indvars.iv1124, %262
  %264 = sub nsw i64 %indvars.iv1131, %262
  %265 = mul nsw i64 %polly.indvar622, -50
  %266 = mul nuw nsw i64 %polly.indvar622, 50
  br label %polly.loop_header625

polly.loop_exit627:                               ; preds = %polly.loop_exit633
  %267 = add nsw i64 %265, 1199
  %268 = mul nuw nsw i64 %polly.indvar622, 23
  %269 = add nuw nsw i64 %268, 47
  %pexp.p_div_q641 = udiv i64 %269, 48
  %270 = sub nsw i64 %polly.indvar622, %pexp.p_div_q641
  %polly.loop_guard646 = icmp slt i64 %270, 13
  br i1 %polly.loop_guard646, label %polly.loop_header643, label %polly.loop_exit645

polly.loop_exit645:                               ; preds = %polly.loop_exit685, %polly.loop_exit627
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -50
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -46
  %indvars.iv.next1127 = add nuw nsw i64 %indvars.iv1126, 23
  %indvars.iv.next1132 = add nuw nsw i64 %indvars.iv1131, 46
  %exitcond1140.not = icmp eq i64 %polly.indvar_next623, 24
  br i1 %exitcond1140.not, label %polly.exiting516, label %polly.loop_header619

polly.loop_header625:                             ; preds = %polly.loop_exit633, %polly.loop_header619
  %polly.indvar628 = phi i64 [ 0, %polly.loop_header619 ], [ %polly.indvar_next629, %polly.loop_exit633 ]
  %polly.access.mul.Packed_MemRef_call2520 = mul nuw nsw i64 %polly.indvar628, 1200
  br label %polly.loop_header631

polly.loop_exit633:                               ; preds = %polly.loop_header631
  %polly.indvar_next629 = add nuw nsw i64 %polly.indvar628, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next629, 1000
  br i1 %exitcond1120.not, label %polly.loop_exit627, label %polly.loop_header625

polly.loop_header631:                             ; preds = %polly.loop_header631, %polly.loop_header625
  %polly.indvar634 = phi i64 [ 0, %polly.loop_header625 ], [ %polly.indvar_next635, %polly.loop_header631 ]
  %271 = add nuw nsw i64 %polly.indvar634, %266
  %polly.access.mul.call2638 = mul nuw nsw i64 %271, 1000
  %polly.access.add.call2639 = add nuw nsw i64 %polly.access.mul.call2638, %polly.indvar628
  %polly.access.call2640 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2639
  %polly.access.call2640.load = load double, double* %polly.access.call2640, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2520 = add nuw nsw i64 %polly.indvar634, %polly.access.mul.Packed_MemRef_call2520
  %polly.access.Packed_MemRef_call2520 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520
  store double %polly.access.call2640.load, double* %polly.access.Packed_MemRef_call2520, align 8
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next635, %indvars.iv1117
  br i1 %exitcond1119.not, label %polly.loop_exit633, label %polly.loop_header631

polly.loop_header643:                             ; preds = %polly.loop_exit627, %polly.loop_exit685
  %indvar1287 = phi i64 [ %indvar.next1288, %polly.loop_exit685 ], [ 0, %polly.loop_exit627 ]
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit685 ], [ %264, %polly.loop_exit627 ]
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit685 ], [ %263, %polly.loop_exit627 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit685 ], [ %270, %polly.loop_exit627 ]
  %272 = mul nsw i64 %indvar1287, -96
  %273 = add i64 %258, %272
  %smax1289 = call i64 @llvm.smax.i64(i64 %273, i64 0)
  %274 = mul nuw nsw i64 %indvar1287, 96
  %275 = add i64 %260, %274
  %276 = add i64 %smax1289, %275
  %smax1130 = call i64 @llvm.smax.i64(i64 %indvars.iv1128, i64 0)
  %277 = add i64 %smax1130, %indvars.iv1133
  %278 = mul nsw i64 %polly.indvar647, 96
  %279 = add nsw i64 %278, %265
  %280 = add nsw i64 %279, -1
  %.inv931 = icmp sgt i64 %279, 49
  %281 = select i1 %.inv931, i64 49, i64 %280
  %polly.loop_guard660 = icmp sgt i64 %281, -1
  %282 = icmp sgt i64 %279, 0
  %283 = select i1 %282, i64 %279, i64 0
  %284 = add nsw i64 %279, 95
  %285 = icmp slt i64 %267, %284
  %286 = select i1 %285, i64 %267, i64 %284
  %polly.loop_guard672.not = icmp sgt i64 %283, %286
  br i1 %polly.loop_guard660, label %polly.loop_header650.us, label %polly.loop_header643.split

polly.loop_header650.us:                          ; preds = %polly.loop_header643, %polly.loop_exit671.us
  %polly.indvar653.us = phi i64 [ %polly.indvar_next654.us, %polly.loop_exit671.us ], [ 0, %polly.loop_header643 ]
  %polly.access.mul.Packed_MemRef_call1518.us = mul nuw nsw i64 %polly.indvar653.us, 1200
  br label %polly.loop_header657.us

polly.loop_header657.us:                          ; preds = %polly.loop_header650.us, %polly.loop_header657.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.loop_header657.us ], [ 0, %polly.loop_header650.us ]
  %287 = add nuw nsw i64 %polly.indvar661.us, %266
  %polly.access.mul.call1665.us = mul nuw nsw i64 %287, 1000
  %polly.access.add.call1666.us = add nuw nsw i64 %polly.access.mul.call1665.us, %polly.indvar653.us
  %polly.access.call1667.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1666.us
  %polly.access.call1667.load.us = load double, double* %polly.access.call1667.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1518.us = add nuw nsw i64 %polly.indvar661.us, %polly.access.mul.Packed_MemRef_call1518.us
  %polly.access.Packed_MemRef_call1518.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us
  store double %polly.access.call1667.load.us, double* %polly.access.Packed_MemRef_call1518.us, align 8
  %polly.indvar_next662.us = add nuw i64 %polly.indvar661.us, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar661.us, %281
  br i1 %exitcond1122.not, label %polly.loop_exit659.loopexit.us, label %polly.loop_header657.us

polly.loop_header669.us:                          ; preds = %polly.loop_exit659.loopexit.us, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ %283, %polly.loop_exit659.loopexit.us ]
  %288 = add nuw nsw i64 %polly.indvar673.us, %266
  %polly.access.mul.call1677.us = mul nsw i64 %288, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %polly.access.mul.call1677.us, %polly.indvar653.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1518681.us = add nuw nsw i64 %polly.indvar673.us, %polly.access.mul.Packed_MemRef_call1518.us
  %polly.access.Packed_MemRef_call1518682.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518681.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1518682.us, align 8
  %polly.indvar_next674.us = add nuw nsw i64 %polly.indvar673.us, 1
  %polly.loop_cond675.not.not.us = icmp slt i64 %polly.indvar673.us, %286
  br i1 %polly.loop_cond675.not.not.us, label %polly.loop_header669.us, label %polly.loop_exit671.us

polly.loop_exit671.us:                            ; preds = %polly.loop_header669.us, %polly.loop_exit659.loopexit.us
  %polly.indvar_next654.us = add nuw nsw i64 %polly.indvar653.us, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar_next654.us, 1000
  br i1 %exitcond1123.not, label %polly.loop_header683.preheader, label %polly.loop_header650.us

polly.loop_exit659.loopexit.us:                   ; preds = %polly.loop_header657.us
  br i1 %polly.loop_guard672.not, label %polly.loop_exit671.us, label %polly.loop_header669.us

polly.loop_header643.split:                       ; preds = %polly.loop_header643
  br i1 %polly.loop_guard672.not, label %polly.loop_header683.preheader, label %polly.loop_header650

polly.loop_exit685:                               ; preds = %polly.loop_exit692, %polly.loop_header683.preheader
  %polly.indvar_next648 = add nsw i64 %polly.indvar647, 1
  %polly.loop_cond649 = icmp slt i64 %polly.indvar647, 12
  %indvars.iv.next1129 = add i64 %indvars.iv1128, -96
  %indvars.iv.next1134 = add i64 %indvars.iv1133, 96
  %indvar.next1288 = add i64 %indvar1287, 1
  br i1 %polly.loop_cond649, label %polly.loop_header643, label %polly.loop_exit645

polly.loop_header650:                             ; preds = %polly.loop_header643.split, %polly.loop_exit671
  %polly.indvar653 = phi i64 [ %polly.indvar_next654, %polly.loop_exit671 ], [ 0, %polly.loop_header643.split ]
  %polly.access.mul.Packed_MemRef_call1518680 = mul nuw nsw i64 %polly.indvar653, 1200
  br label %polly.loop_header669

polly.loop_exit671:                               ; preds = %polly.loop_header669
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next654, 1000
  br i1 %exitcond1121.not, label %polly.loop_header683.preheader, label %polly.loop_header650

polly.loop_header683.preheader:                   ; preds = %polly.loop_exit671, %polly.loop_exit671.us, %polly.loop_header643.split
  %289 = sub nsw i64 %266, %278
  %290 = icmp sgt i64 %289, 0
  %291 = select i1 %290, i64 %289, i64 0
  %292 = mul nsw i64 %polly.indvar647, -96
  %293 = icmp slt i64 %292, -1104
  %294 = select i1 %293, i64 %292, i64 -1104
  %295 = add nsw i64 %294, 1199
  %polly.loop_guard693.not = icmp sgt i64 %291, %295
  br i1 %polly.loop_guard693.not, label %polly.loop_exit685, label %polly.loop_header683

polly.loop_header669:                             ; preds = %polly.loop_header650, %polly.loop_header669
  %polly.indvar673 = phi i64 [ %polly.indvar_next674, %polly.loop_header669 ], [ %283, %polly.loop_header650 ]
  %296 = add nuw nsw i64 %polly.indvar673, %266
  %polly.access.mul.call1677 = mul nsw i64 %296, 1000
  %polly.access.add.call1678 = add nuw nsw i64 %polly.access.mul.call1677, %polly.indvar653
  %polly.access.call1679 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1678
  %polly.access.call1679.load = load double, double* %polly.access.call1679, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1518681 = add nuw nsw i64 %polly.indvar673, %polly.access.mul.Packed_MemRef_call1518680
  %polly.access.Packed_MemRef_call1518682 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518681
  store double %polly.access.call1679.load, double* %polly.access.Packed_MemRef_call1518682, align 8
  %polly.indvar_next674 = add nuw nsw i64 %polly.indvar673, 1
  %polly.loop_cond675.not.not = icmp slt i64 %polly.indvar673, %286
  br i1 %polly.loop_cond675.not.not, label %polly.loop_header669, label %polly.loop_exit671

polly.loop_header683:                             ; preds = %polly.loop_header683.preheader, %polly.loop_exit692
  %polly.indvar686 = phi i64 [ %polly.indvar_next687, %polly.loop_exit692 ], [ 0, %polly.loop_header683.preheader ]
  %polly.access.mul.Packed_MemRef_call1518705 = mul nuw nsw i64 %polly.indvar686, 1200
  br label %polly.loop_header690

polly.loop_exit692:                               ; preds = %polly.loop_exit700
  %polly.indvar_next687 = add nuw nsw i64 %polly.indvar686, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next687, 1000
  br i1 %exitcond1139.not, label %polly.loop_exit685, label %polly.loop_header683

polly.loop_header690:                             ; preds = %polly.loop_header683, %polly.loop_exit700
  %indvar1290 = phi i64 [ 0, %polly.loop_header683 ], [ %indvar.next1291, %polly.loop_exit700 ]
  %indvars.iv1135 = phi i64 [ %277, %polly.loop_header683 ], [ %indvars.iv.next1136, %polly.loop_exit700 ]
  %polly.indvar694 = phi i64 [ %291, %polly.loop_header683 ], [ %polly.indvar_next695, %polly.loop_exit700 ]
  %297 = add i64 %276, %indvar1290
  %smin1292 = call i64 @llvm.smin.i64(i64 %297, i64 49)
  %298 = add nsw i64 %smin1292, 1
  %smin1137 = call i64 @llvm.smin.i64(i64 %indvars.iv1135, i64 49)
  %299 = add nsw i64 %polly.indvar694, %279
  %polly.loop_guard7011182 = icmp sgt i64 %299, -1
  br i1 %polly.loop_guard7011182, label %polly.loop_header698.preheader, label %polly.loop_exit700

polly.loop_header698.preheader:                   ; preds = %polly.loop_header690
  %300 = add nsw i64 %polly.indvar694, %278
  %polly.access.add.Packed_MemRef_call2520710 = add nsw i64 %299, %polly.access.mul.Packed_MemRef_call1518705
  %polly.access.Packed_MemRef_call2520711 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520710
  %_p_scalar_712 = load double, double* %polly.access.Packed_MemRef_call2520711, align 8
  %polly.access.Packed_MemRef_call1518719 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call2520710
  %_p_scalar_720 = load double, double* %polly.access.Packed_MemRef_call1518719, align 8
  %301 = mul i64 %300, 9600
  %min.iters.check1293 = icmp ult i64 %298, 4
  br i1 %min.iters.check1293, label %polly.loop_header698.preheader1416, label %vector.ph1294

vector.ph1294:                                    ; preds = %polly.loop_header698.preheader
  %n.vec1296 = and i64 %298, -4
  %broadcast.splatinsert1302 = insertelement <4 x double> poison, double %_p_scalar_712, i32 0
  %broadcast.splat1303 = shufflevector <4 x double> %broadcast.splatinsert1302, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1305 = insertelement <4 x double> poison, double %_p_scalar_720, i32 0
  %broadcast.splat1306 = shufflevector <4 x double> %broadcast.splatinsert1305, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %vector.ph1294
  %index1297 = phi i64 [ 0, %vector.ph1294 ], [ %index.next1298, %vector.body1286 ]
  %302 = add nuw nsw i64 %index1297, %266
  %303 = add nuw nsw i64 %index1297, %polly.access.mul.Packed_MemRef_call1518705
  %304 = getelementptr double, double* %Packed_MemRef_call1518, i64 %303
  %305 = bitcast double* %304 to <4 x double>*
  %wide.load1301 = load <4 x double>, <4 x double>* %305, align 8
  %306 = fmul fast <4 x double> %broadcast.splat1303, %wide.load1301
  %307 = getelementptr double, double* %Packed_MemRef_call2520, i64 %303
  %308 = bitcast double* %307 to <4 x double>*
  %wide.load1304 = load <4 x double>, <4 x double>* %308, align 8
  %309 = fmul fast <4 x double> %broadcast.splat1306, %wide.load1304
  %310 = shl i64 %302, 3
  %311 = add i64 %310, %301
  %312 = getelementptr i8, i8* %call, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  %wide.load1307 = load <4 x double>, <4 x double>* %313, align 8, !alias.scope !99, !noalias !101
  %314 = fadd fast <4 x double> %309, %306
  %315 = fmul fast <4 x double> %314, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %316 = fadd fast <4 x double> %315, %wide.load1307
  %317 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %316, <4 x double>* %317, align 8, !alias.scope !99, !noalias !101
  %index.next1298 = add i64 %index1297, 4
  %318 = icmp eq i64 %index.next1298, %n.vec1296
  br i1 %318, label %middle.block1284, label %vector.body1286, !llvm.loop !110

middle.block1284:                                 ; preds = %vector.body1286
  %cmp.n1300 = icmp eq i64 %298, %n.vec1296
  br i1 %cmp.n1300, label %polly.loop_exit700, label %polly.loop_header698.preheader1416

polly.loop_header698.preheader1416:               ; preds = %polly.loop_header698.preheader, %middle.block1284
  %polly.indvar702.ph = phi i64 [ 0, %polly.loop_header698.preheader ], [ %n.vec1296, %middle.block1284 ]
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_header698, %middle.block1284, %polly.loop_header690
  %polly.indvar_next695 = add nuw nsw i64 %polly.indvar694, 1
  %polly.loop_cond696.not.not = icmp slt i64 %polly.indvar694, %295
  %indvars.iv.next1136 = add i64 %indvars.iv1135, 1
  %indvar.next1291 = add i64 %indvar1290, 1
  br i1 %polly.loop_cond696.not.not, label %polly.loop_header690, label %polly.loop_exit692

polly.loop_header698:                             ; preds = %polly.loop_header698.preheader1416, %polly.loop_header698
  %polly.indvar702 = phi i64 [ %polly.indvar_next703, %polly.loop_header698 ], [ %polly.indvar702.ph, %polly.loop_header698.preheader1416 ]
  %319 = add nuw nsw i64 %polly.indvar702, %266
  %polly.access.add.Packed_MemRef_call1518706 = add nuw nsw i64 %polly.indvar702, %polly.access.mul.Packed_MemRef_call1518705
  %polly.access.Packed_MemRef_call1518707 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518706
  %_p_scalar_708 = load double, double* %polly.access.Packed_MemRef_call1518707, align 8
  %p_mul27.i = fmul fast double %_p_scalar_712, %_p_scalar_708
  %polly.access.Packed_MemRef_call2520715 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call1518706
  %_p_scalar_716 = load double, double* %polly.access.Packed_MemRef_call2520715, align 8
  %p_mul37.i = fmul fast double %_p_scalar_720, %_p_scalar_716
  %320 = shl i64 %319, 3
  %321 = add i64 %320, %301
  %scevgep721 = getelementptr i8, i8* %call, i64 %321
  %scevgep721722 = bitcast i8* %scevgep721 to double*
  %_p_scalar_723 = load double, double* %scevgep721722, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_723
  store double %p_add42.i, double* %scevgep721722, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next703 = add nuw nsw i64 %polly.indvar702, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar702, %smin1137
  br i1 %exitcond1138.not, label %polly.loop_exit700, label %polly.loop_header698, !llvm.loop !111

polly.loop_header850:                             ; preds = %entry, %polly.loop_exit858
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %polly.loop_exit858 ], [ 0, %entry ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %entry ]
  %smin1169 = call i64 @llvm.smin.i64(i64 %indvars.iv1167, i64 -1168)
  %322 = shl nsw i64 %polly.indvar853, 5
  %323 = add nsw i64 %smin1169, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1168 = add nsw i64 %indvars.iv1167, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1172.not, label %polly.loop_header877, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %324 = mul nsw i64 %polly.indvar859, -32
  %smin1213 = call i64 @llvm.smin.i64(i64 %324, i64 -1168)
  %325 = add nsw i64 %smin1213, 1200
  %smin1165 = call i64 @llvm.smin.i64(i64 %indvars.iv1163, i64 -1168)
  %326 = shl nsw i64 %polly.indvar859, 5
  %327 = add nsw i64 %smin1165, 1199
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1164 = add nsw i64 %indvars.iv1163, -32
  %exitcond1171.not = icmp eq i64 %polly.indvar_next860, 38
  br i1 %exitcond1171.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %polly.indvar865 = phi i64 [ 0, %polly.loop_header856 ], [ %polly.indvar_next866, %polly.loop_exit870 ]
  %328 = add nuw nsw i64 %polly.indvar865, %322
  %329 = trunc i64 %328 to i32
  %330 = mul nuw nsw i64 %328, 9600
  %min.iters.check = icmp eq i64 %325, 0
  br i1 %min.iters.check, label %polly.loop_header868, label %vector.ph1214

vector.ph1214:                                    ; preds = %polly.loop_header862
  %broadcast.splatinsert1221 = insertelement <4 x i64> poison, i64 %326, i32 0
  %broadcast.splat1222 = shufflevector <4 x i64> %broadcast.splatinsert1221, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1223 = insertelement <4 x i32> poison, i32 %329, i32 0
  %broadcast.splat1224 = shufflevector <4 x i32> %broadcast.splatinsert1223, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1214
  %index1215 = phi i64 [ 0, %vector.ph1214 ], [ %index.next1216, %vector.body1212 ]
  %vec.ind1219 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1214 ], [ %vec.ind.next1220, %vector.body1212 ]
  %331 = add nuw nsw <4 x i64> %vec.ind1219, %broadcast.splat1222
  %332 = trunc <4 x i64> %331 to <4 x i32>
  %333 = mul <4 x i32> %broadcast.splat1224, %332
  %334 = add <4 x i32> %333, <i32 3, i32 3, i32 3, i32 3>
  %335 = urem <4 x i32> %334, <i32 1200, i32 1200, i32 1200, i32 1200>
  %336 = sitofp <4 x i32> %335 to <4 x double>
  %337 = fmul fast <4 x double> %336, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %338 = extractelement <4 x i64> %331, i32 0
  %339 = shl i64 %338, 3
  %340 = add nuw nsw i64 %339, %330
  %341 = getelementptr i8, i8* %call, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %337, <4 x double>* %342, align 8, !alias.scope !112, !noalias !114
  %index.next1216 = add i64 %index1215, 4
  %vec.ind.next1220 = add <4 x i64> %vec.ind1219, <i64 4, i64 4, i64 4, i64 4>
  %343 = icmp eq i64 %index.next1216, %325
  br i1 %343, label %polly.loop_exit870, label %vector.body1212, !llvm.loop !117

polly.loop_exit870:                               ; preds = %vector.body1212, %polly.loop_header868
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar865, %323
  br i1 %exitcond1170.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_header862, %polly.loop_header868
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_header868 ], [ 0, %polly.loop_header862 ]
  %344 = add nuw nsw i64 %polly.indvar871, %326
  %345 = trunc i64 %344 to i32
  %346 = mul i32 %345, %329
  %347 = add i32 %346, 3
  %348 = urem i32 %347, 1200
  %p_conv31.i = sitofp i32 %348 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %349 = shl i64 %344, 3
  %350 = add nuw nsw i64 %349, %330
  %scevgep874 = getelementptr i8, i8* %call, i64 %350
  %scevgep874875 = bitcast i8* %scevgep874 to double*
  store double %p_div33.i, double* %scevgep874875, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar871, %327
  br i1 %exitcond1166.not, label %polly.loop_exit870, label %polly.loop_header868, !llvm.loop !118

polly.loop_header877:                             ; preds = %polly.loop_exit858, %polly.loop_exit885
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %smin1159 = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 -1168)
  %351 = shl nsw i64 %polly.indvar880, 5
  %352 = add nsw i64 %smin1159, 1199
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1158 = add nsw i64 %indvars.iv1157, -32
  %exitcond1162.not = icmp eq i64 %polly.indvar_next881, 38
  br i1 %exitcond1162.not, label %polly.loop_header903, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %353 = mul nsw i64 %polly.indvar886, -32
  %smin1228 = call i64 @llvm.smin.i64(i64 %353, i64 -968)
  %354 = add nsw i64 %smin1228, 1000
  %smin1155 = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 -968)
  %355 = shl nsw i64 %polly.indvar886, 5
  %356 = add nsw i64 %smin1155, 999
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -32
  %exitcond1161.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond1161.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %polly.indvar892 = phi i64 [ 0, %polly.loop_header883 ], [ %polly.indvar_next893, %polly.loop_exit897 ]
  %357 = add nuw nsw i64 %polly.indvar892, %351
  %358 = trunc i64 %357 to i32
  %359 = mul nuw nsw i64 %357, 8000
  %min.iters.check1229 = icmp eq i64 %354, 0
  br i1 %min.iters.check1229, label %polly.loop_header895, label %vector.ph1230

vector.ph1230:                                    ; preds = %polly.loop_header889
  %broadcast.splatinsert1239 = insertelement <4 x i64> poison, i64 %355, i32 0
  %broadcast.splat1240 = shufflevector <4 x i64> %broadcast.splatinsert1239, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1241 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat1242 = shufflevector <4 x i32> %broadcast.splatinsert1241, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1234, %vector.body1227 ]
  %vec.ind1237 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1230 ], [ %vec.ind.next1238, %vector.body1227 ]
  %360 = add nuw nsw <4 x i64> %vec.ind1237, %broadcast.splat1240
  %361 = trunc <4 x i64> %360 to <4 x i32>
  %362 = mul <4 x i32> %broadcast.splat1242, %361
  %363 = add <4 x i32> %362, <i32 2, i32 2, i32 2, i32 2>
  %364 = urem <4 x i32> %363, <i32 1000, i32 1000, i32 1000, i32 1000>
  %365 = sitofp <4 x i32> %364 to <4 x double>
  %366 = fmul fast <4 x double> %365, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %367 = extractelement <4 x i64> %360, i32 0
  %368 = shl i64 %367, 3
  %369 = add nuw nsw i64 %368, %359
  %370 = getelementptr i8, i8* %call2, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %366, <4 x double>* %371, align 8, !alias.scope !116, !noalias !119
  %index.next1234 = add i64 %index1233, 4
  %vec.ind.next1238 = add <4 x i64> %vec.ind1237, <i64 4, i64 4, i64 4, i64 4>
  %372 = icmp eq i64 %index.next1234, %354
  br i1 %372, label %polly.loop_exit897, label %vector.body1227, !llvm.loop !120

polly.loop_exit897:                               ; preds = %vector.body1227, %polly.loop_header895
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar892, %352
  br i1 %exitcond1160.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_header889, %polly.loop_header895
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_header895 ], [ 0, %polly.loop_header889 ]
  %373 = add nuw nsw i64 %polly.indvar898, %355
  %374 = trunc i64 %373 to i32
  %375 = mul i32 %374, %358
  %376 = add i32 %375, 2
  %377 = urem i32 %376, 1000
  %p_conv10.i = sitofp i32 %377 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %378 = shl i64 %373, 3
  %379 = add nuw nsw i64 %378, %359
  %scevgep901 = getelementptr i8, i8* %call2, i64 %379
  %scevgep901902 = bitcast i8* %scevgep901 to double*
  store double %p_div12.i, double* %scevgep901902, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar898, %356
  br i1 %exitcond1156.not, label %polly.loop_exit897, label %polly.loop_header895, !llvm.loop !121

polly.loop_header903:                             ; preds = %polly.loop_exit885, %polly.loop_exit911
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %smin1149 = call i64 @llvm.smin.i64(i64 %indvars.iv1147, i64 -1168)
  %380 = shl nsw i64 %polly.indvar906, 5
  %381 = add nsw i64 %smin1149, 1199
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1148 = add nsw i64 %indvars.iv1147, -32
  %exitcond1152.not = icmp eq i64 %polly.indvar_next907, 38
  br i1 %exitcond1152.not, label %init_array.exit, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %382 = mul nsw i64 %polly.indvar912, -32
  %smin1246 = call i64 @llvm.smin.i64(i64 %382, i64 -968)
  %383 = add nsw i64 %smin1246, 1000
  %smin1145 = call i64 @llvm.smin.i64(i64 %indvars.iv1143, i64 -968)
  %384 = shl nsw i64 %polly.indvar912, 5
  %385 = add nsw i64 %smin1145, 999
  br label %polly.loop_header915

polly.loop_exit917:                               ; preds = %polly.loop_exit923
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %indvars.iv.next1144 = add nsw i64 %indvars.iv1143, -32
  %exitcond1151.not = icmp eq i64 %polly.indvar_next913, 32
  br i1 %exitcond1151.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_exit923, %polly.loop_header909
  %polly.indvar918 = phi i64 [ 0, %polly.loop_header909 ], [ %polly.indvar_next919, %polly.loop_exit923 ]
  %386 = add nuw nsw i64 %polly.indvar918, %380
  %387 = trunc i64 %386 to i32
  %388 = mul nuw nsw i64 %386, 8000
  %min.iters.check1247 = icmp eq i64 %383, 0
  br i1 %min.iters.check1247, label %polly.loop_header921, label %vector.ph1248

vector.ph1248:                                    ; preds = %polly.loop_header915
  %broadcast.splatinsert1257 = insertelement <4 x i64> poison, i64 %384, i32 0
  %broadcast.splat1258 = shufflevector <4 x i64> %broadcast.splatinsert1257, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1259 = insertelement <4 x i32> poison, i32 %387, i32 0
  %broadcast.splat1260 = shufflevector <4 x i32> %broadcast.splatinsert1259, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1245 ]
  %vec.ind1255 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1248 ], [ %vec.ind.next1256, %vector.body1245 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1255, %broadcast.splat1258
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1260, %390
  %392 = add <4 x i32> %391, <i32 1, i32 1, i32 1, i32 1>
  %393 = urem <4 x i32> %392, <i32 1200, i32 1200, i32 1200, i32 1200>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %388
  %399 = getelementptr i8, i8* %call1, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !115, !noalias !122
  %index.next1252 = add i64 %index1251, 4
  %vec.ind.next1256 = add <4 x i64> %vec.ind1255, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1252, %383
  br i1 %401, label %polly.loop_exit923, label %vector.body1245, !llvm.loop !123

polly.loop_exit923:                               ; preds = %vector.body1245, %polly.loop_header921
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar918, %381
  br i1 %exitcond1150.not, label %polly.loop_exit917, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_header915, %polly.loop_header921
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_header921 ], [ 0, %polly.loop_header915 ]
  %402 = add nuw nsw i64 %polly.indvar924, %384
  %403 = trunc i64 %402 to i32
  %404 = mul i32 %403, %387
  %405 = add i32 %404, 1
  %406 = urem i32 %405, 1200
  %p_conv.i = sitofp i32 %406 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %407 = shl i64 %402, 3
  %408 = add nuw nsw i64 %407, %388
  %scevgep928 = getelementptr i8, i8* %call1, i64 %408
  %scevgep928929 = bitcast i8* %scevgep928 to double*
  store double %p_div.i, double* %scevgep928929, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar924, %385
  br i1 %exitcond1146.not, label %polly.loop_exit923, label %polly.loop_header921, !llvm.loop !124
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
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
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
!51 = !{!"llvm.loop.tile.size", i32 96}
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
