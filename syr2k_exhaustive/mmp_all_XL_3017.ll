; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3017.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3017.c"
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
  %call864 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1716 = bitcast i8* %call1 to double*
  %polly.access.call1725 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1725, %call2
  %polly.access.call2745 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2745, %call1
  %2 = or i1 %0, %1
  %polly.access.call765 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call765, %call2
  %4 = icmp ule i8* %polly.access.call2745, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call765, %call1
  %8 = icmp ule i8* %polly.access.call1725, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header838, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1200 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1199 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1198 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1197 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1197, %scevgep1200
  %bound1 = icmp ult i8* %scevgep1199, %scevgep1198
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
  br i1 %exitcond18.not.i, label %vector.ph1204, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1204:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1211 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1212 = shufflevector <4 x i64> %broadcast.splatinsert1211, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1204
  %index1205 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1204 ], [ %vec.ind.next1210, %vector.body1203 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1209, %broadcast.splat1212
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv7.i, i64 %index1205
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1206, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1203, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1203
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1204, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit899
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start506, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1267 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1267, label %for.body3.i46.preheader1344, label %vector.ph1268

vector.ph1268:                                    ; preds = %for.body3.i46.preheader
  %n.vec1270 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %vector.ph1268
  %index1271 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1272, %vector.body1266 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %index1271
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1272 = add i64 %index1271, 4
  %46 = icmp eq i64 %index.next1272, %n.vec1270
  br i1 %46, label %middle.block1264, label %vector.body1266, !llvm.loop !18

middle.block1264:                                 ; preds = %vector.body1266
  %cmp.n1274 = icmp eq i64 %indvars.iv21.i, %n.vec1270
  br i1 %cmp.n1274, label %for.inc6.i, label %for.body3.i46.preheader1344

for.body3.i46.preheader1344:                      ; preds = %for.body3.i46.preheader, %middle.block1264
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1270, %middle.block1264 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1344, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1344 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1264, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting507
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1290 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1290, label %for.body3.i60.preheader1342, label %vector.ph1291

vector.ph1291:                                    ; preds = %for.body3.i60.preheader
  %n.vec1293 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1291
  %index1294 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1295, %vector.body1289 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %index1294
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1298 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1298, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1295 = add i64 %index1294, 4
  %57 = icmp eq i64 %index.next1295, %n.vec1293
  br i1 %57, label %middle.block1287, label %vector.body1289, !llvm.loop !60

middle.block1287:                                 ; preds = %vector.body1289
  %cmp.n1297 = icmp eq i64 %indvars.iv21.i52, %n.vec1293
  br i1 %cmp.n1297, label %for.inc6.i63, label %for.body3.i60.preheader1342

for.body3.i60.preheader1342:                      ; preds = %for.body3.i60.preheader, %middle.block1287
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1293, %middle.block1287 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1342, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1342 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1287, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting299
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1316 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1316, label %for.body3.i99.preheader1340, label %vector.ph1317

vector.ph1317:                                    ; preds = %for.body3.i99.preheader
  %n.vec1319 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1315

vector.body1315:                                  ; preds = %vector.body1315, %vector.ph1317
  %index1320 = phi i64 [ 0, %vector.ph1317 ], [ %index.next1321, %vector.body1315 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %index1320
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1324, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1321 = add i64 %index1320, 4
  %68 = icmp eq i64 %index.next1321, %n.vec1319
  br i1 %68, label %middle.block1313, label %vector.body1315, !llvm.loop !62

middle.block1313:                                 ; preds = %vector.body1315
  %cmp.n1323 = icmp eq i64 %indvars.iv21.i91, %n.vec1319
  br i1 %cmp.n1323, label %for.inc6.i102, label %for.body3.i99.preheader1340

for.body3.i99.preheader1340:                      ; preds = %for.body3.i99.preheader, %middle.block1313
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1319, %middle.block1313 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1340, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1340 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1313, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1328 = phi i64 [ %indvar.next1329, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1328, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1330 = icmp ult i64 %88, 4
  br i1 %min.iters.check1330, label %polly.loop_header191.preheader, label %vector.ph1331

vector.ph1331:                                    ; preds = %polly.loop_header
  %n.vec1333 = and i64 %88, -4
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %vector.ph1331
  %index1334 = phi i64 [ 0, %vector.ph1331 ], [ %index.next1335, %vector.body1327 ]
  %90 = shl nuw nsw i64 %index1334, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1338 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1338, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1335 = add i64 %index1334, 4
  %95 = icmp eq i64 %index.next1335, %n.vec1333
  br i1 %95, label %middle.block1325, label %vector.body1327, !llvm.loop !74

middle.block1325:                                 ; preds = %vector.body1327
  %cmp.n1337 = icmp eq i64 %88, %n.vec1333
  br i1 %cmp.n1337, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1325
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1333, %middle.block1325 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1325
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1329 = add i64 %indvar1328, 1
  br i1 %exitcond1099.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1098.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1098.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv1089 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1090, %polly.loop_exit207 ]
  %indvars.iv1084 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1085, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 15, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar202, 2
  %98 = add nuw i64 %polly.indvar202, %97
  %99 = shl nuw nsw i64 %98, 4
  %100 = sub i64 %indvars.iv1084, %99
  %101 = add i64 %indvars.iv1089, %99
  %102 = add i64 %indvars.iv, %99
  %103 = mul nuw nsw i64 %polly.indvar202, 5
  %104 = mul nsw i64 %polly.indvar202, -20
  %105 = mul nuw nsw i64 %polly.indvar202, 20
  %polly.access.mul.call1224.us = mul nuw i64 %polly.indvar202, 20000
  %106 = or i64 %105, 1
  %polly.access.mul.call1224.us.1 = mul nuw nsw i64 %106, 1000
  %107 = or i64 %105, 2
  %polly.access.mul.call1224.us.2 = mul nuw nsw i64 %107, 1000
  %108 = or i64 %105, 3
  %polly.access.mul.call1224.us.3 = mul nuw nsw i64 %108, 1000
  %109 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.4 = add i64 %109, 4000
  %110 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.5 = add i64 %110, 5000
  %111 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.6 = add i64 %111, 6000
  %112 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.7 = add i64 %112, 7000
  %113 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.8 = add i64 %113, 8000
  %114 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.9 = add i64 %114, 9000
  %115 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.10 = add i64 %115, 10000
  %116 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.11 = add i64 %116, 11000
  %117 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.12 = add i64 %117, 12000
  %118 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.13 = add i64 %118, 13000
  %119 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.14 = add i64 %119, 14000
  %120 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.15 = add i64 %120, 15000
  %121 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.16 = add i64 %121, 16000
  %122 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.17 = add i64 %122, 17000
  %123 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.18 = add i64 %123, 18000
  %124 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.19 = add i64 %124, 19000
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit257
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 20
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, -20
  %exitcond1097.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond1097.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit257, %polly.loop_header199
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit257 ], [ %101, %polly.loop_header199 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit257 ], [ %100, %polly.loop_header199 ]
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit257 ], [ %102, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit257 ], [ %98, %polly.loop_header199 ]
  %smax1088 = call i64 @llvm.smax.i64(i64 %indvars.iv1086, i64 0)
  %125 = add i64 %smax1088, %indvars.iv1091
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1079, i64 0)
  %126 = shl nsw i64 %polly.indvar208, 2
  %.not.not = icmp ugt i64 %126, %103
  %127 = shl nsw i64 %polly.indvar208, 4
  %128 = add nsw i64 %127, %104
  %129 = icmp sgt i64 %128, 20
  %130 = select i1 %129, i64 %128, i64 20
  %131 = add nsw i64 %128, 15
  %polly.loop_guard.not = icmp sgt i64 %130, %131
  br i1 %.not.not, label %polly.loop_header211.us, label %polly.loop_header205.split

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.merge.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.merge.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1225.us.1 = add nuw nsw i64 %polly.access.mul.call1224.us.1, %polly.indvar214.us
  %polly.access.call1226.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.1
  %polly.access.call1226.load.us.1 = load double, double* %polly.access.call1226.us.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1226.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1225.us.2 = add nuw nsw i64 %polly.access.mul.call1224.us.2, %polly.indvar214.us
  %polly.access.call1226.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.2
  %polly.access.call1226.load.us.2 = load double, double* %polly.access.call1226.us.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1226.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1225.us.3 = add nuw nsw i64 %polly.access.mul.call1224.us.3, %polly.indvar214.us
  %polly.access.call1226.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.3
  %polly.access.call1226.load.us.3 = load double, double* %polly.access.call1226.us.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1226.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1225.us.4 = add nuw nsw i64 %polly.access.mul.call1224.us.4, %polly.indvar214.us
  %polly.access.call1226.us.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.4
  %polly.access.call1226.load.us.4 = load double, double* %polly.access.call1226.us.4, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1226.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1225.us.5 = add nuw nsw i64 %polly.access.mul.call1224.us.5, %polly.indvar214.us
  %polly.access.call1226.us.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.5
  %polly.access.call1226.load.us.5 = load double, double* %polly.access.call1226.us.5, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1226.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1225.us.6 = add nuw nsw i64 %polly.access.mul.call1224.us.6, %polly.indvar214.us
  %polly.access.call1226.us.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.6
  %polly.access.call1226.load.us.6 = load double, double* %polly.access.call1226.us.6, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1226.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1225.us.7 = add nuw nsw i64 %polly.access.mul.call1224.us.7, %polly.indvar214.us
  %polly.access.call1226.us.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.7
  %polly.access.call1226.load.us.7 = load double, double* %polly.access.call1226.us.7, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1226.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  %polly.access.add.call1225.us.8 = add nuw nsw i64 %polly.access.mul.call1224.us.8, %polly.indvar214.us
  %polly.access.call1226.us.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.8
  %polly.access.call1226.load.us.8 = load double, double* %polly.access.call1226.us.8, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 8
  %polly.access.Packed_MemRef_call1.us.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.8
  store double %polly.access.call1226.load.us.8, double* %polly.access.Packed_MemRef_call1.us.8, align 8
  %polly.access.add.call1225.us.9 = add nuw nsw i64 %polly.access.mul.call1224.us.9, %polly.indvar214.us
  %polly.access.call1226.us.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.9
  %polly.access.call1226.load.us.9 = load double, double* %polly.access.call1226.us.9, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 9
  %polly.access.Packed_MemRef_call1.us.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.9
  store double %polly.access.call1226.load.us.9, double* %polly.access.Packed_MemRef_call1.us.9, align 8
  %polly.access.add.call1225.us.10 = add nuw nsw i64 %polly.access.mul.call1224.us.10, %polly.indvar214.us
  %polly.access.call1226.us.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.10
  %polly.access.call1226.load.us.10 = load double, double* %polly.access.call1226.us.10, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 10
  %polly.access.Packed_MemRef_call1.us.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.10
  store double %polly.access.call1226.load.us.10, double* %polly.access.Packed_MemRef_call1.us.10, align 8
  %polly.access.add.call1225.us.11 = add nuw nsw i64 %polly.access.mul.call1224.us.11, %polly.indvar214.us
  %polly.access.call1226.us.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.11
  %polly.access.call1226.load.us.11 = load double, double* %polly.access.call1226.us.11, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 11
  %polly.access.Packed_MemRef_call1.us.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.11
  store double %polly.access.call1226.load.us.11, double* %polly.access.Packed_MemRef_call1.us.11, align 8
  %polly.access.add.call1225.us.12 = add nuw nsw i64 %polly.access.mul.call1224.us.12, %polly.indvar214.us
  %polly.access.call1226.us.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.12
  %polly.access.call1226.load.us.12 = load double, double* %polly.access.call1226.us.12, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 12
  %polly.access.Packed_MemRef_call1.us.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.12
  store double %polly.access.call1226.load.us.12, double* %polly.access.Packed_MemRef_call1.us.12, align 8
  %polly.access.add.call1225.us.13 = add nuw nsw i64 %polly.access.mul.call1224.us.13, %polly.indvar214.us
  %polly.access.call1226.us.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.13
  %polly.access.call1226.load.us.13 = load double, double* %polly.access.call1226.us.13, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 13
  %polly.access.Packed_MemRef_call1.us.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.13
  store double %polly.access.call1226.load.us.13, double* %polly.access.Packed_MemRef_call1.us.13, align 8
  %polly.access.add.call1225.us.14 = add nuw nsw i64 %polly.access.mul.call1224.us.14, %polly.indvar214.us
  %polly.access.call1226.us.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.14
  %polly.access.call1226.load.us.14 = load double, double* %polly.access.call1226.us.14, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 14
  %polly.access.Packed_MemRef_call1.us.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.14
  store double %polly.access.call1226.load.us.14, double* %polly.access.Packed_MemRef_call1.us.14, align 8
  %polly.access.add.call1225.us.15 = add nuw nsw i64 %polly.access.mul.call1224.us.15, %polly.indvar214.us
  %polly.access.call1226.us.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.15
  %polly.access.call1226.load.us.15 = load double, double* %polly.access.call1226.us.15, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 15
  %polly.access.Packed_MemRef_call1.us.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.15
  store double %polly.access.call1226.load.us.15, double* %polly.access.Packed_MemRef_call1.us.15, align 8
  %polly.access.add.call1225.us.16 = add nuw nsw i64 %polly.access.mul.call1224.us.16, %polly.indvar214.us
  %polly.access.call1226.us.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.16
  %polly.access.call1226.load.us.16 = load double, double* %polly.access.call1226.us.16, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 16
  %polly.access.Packed_MemRef_call1.us.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.16
  store double %polly.access.call1226.load.us.16, double* %polly.access.Packed_MemRef_call1.us.16, align 8
  %polly.access.add.call1225.us.17 = add nuw nsw i64 %polly.access.mul.call1224.us.17, %polly.indvar214.us
  %polly.access.call1226.us.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.17
  %polly.access.call1226.load.us.17 = load double, double* %polly.access.call1226.us.17, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 17
  %polly.access.Packed_MemRef_call1.us.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.17
  store double %polly.access.call1226.load.us.17, double* %polly.access.Packed_MemRef_call1.us.17, align 8
  %polly.access.add.call1225.us.18 = add nuw nsw i64 %polly.access.mul.call1224.us.18, %polly.indvar214.us
  %polly.access.call1226.us.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.18
  %polly.access.call1226.load.us.18 = load double, double* %polly.access.call1226.us.18, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 18
  %polly.access.Packed_MemRef_call1.us.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.18
  store double %polly.access.call1226.load.us.18, double* %polly.access.Packed_MemRef_call1.us.18, align 8
  %polly.access.add.call1225.us.19 = add nuw nsw i64 %polly.access.mul.call1224.us.19, %polly.indvar214.us
  %polly.access.call1226.us.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us.19
  %polly.access.call1226.load.us.19 = load double, double* %polly.access.call1226.us.19, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 19
  %polly.access.Packed_MemRef_call1.us.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.19
  store double %polly.access.call1226.load.us.19, double* %polly.access.Packed_MemRef_call1.us.19, align 8
  br i1 %polly.loop_guard.not, label %polly.merge.us, label %polly.loop_header227.us

polly.loop_header227.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header227.us
  %polly.indvar230.us = phi i64 [ %polly.indvar_next231.us, %polly.loop_header227.us ], [ %130, %polly.loop_header211.us ]
  %132 = add nuw nsw i64 %polly.indvar230.us, %105
  %polly.access.mul.call1234.us = mul nsw i64 %132, 1000
  %polly.access.add.call1235.us = add nuw nsw i64 %polly.access.mul.call1234.us, %polly.indvar214.us
  %polly.access.call1236.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1235.us
  %polly.access.call1236.load.us = load double, double* %polly.access.call1236.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1238.us = add nuw nsw i64 %polly.indvar230.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1239.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238.us
  store double %polly.access.call1236.load.us, double* %polly.access.Packed_MemRef_call1239.us, align 8
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %polly.loop_cond232.not.not.us = icmp slt i64 %polly.indvar230.us, %131
  br i1 %polly.loop_cond232.not.not.us, label %polly.loop_header227.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header227.us, %polly.loop_header211.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond1083.not, label %polly.loop_header255.preheader, label %polly.loop_header211.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  %polly.loop_guard244 = icmp sgt i64 %128, -16
  br i1 %polly.loop_guard244, label %polly.loop_header211.us928, label %polly.loop_header255.preheader

polly.loop_header211.us928:                       ; preds = %polly.loop_header205.split, %polly.merge.loopexit920.us973
  %polly.indvar214.us929 = phi i64 [ %polly.indvar_next215.us965, %polly.merge.loopexit920.us973 ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1252.us972 = mul nuw nsw i64 %polly.indvar214.us929, 1200
  br label %polly.loop_header241.us931

polly.loop_header241.us931:                       ; preds = %polly.loop_header211.us928, %polly.loop_header241.us931
  %polly.indvar245.us932 = phi i64 [ %polly.indvar_next246.us939, %polly.loop_header241.us931 ], [ 0, %polly.loop_header211.us928 ]
  %133 = add nuw nsw i64 %polly.indvar245.us932, %105
  %polly.access.mul.call1249.us933 = mul nuw nsw i64 %133, 1000
  %polly.access.add.call1250.us934 = add nuw nsw i64 %polly.access.mul.call1249.us933, %polly.indvar214.us929
  %polly.access.call1251.us935 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1250.us934
  %polly.access.call1251.load.us936 = load double, double* %polly.access.call1251.us935, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1253.us937 = add nuw nsw i64 %polly.indvar245.us932, %polly.access.mul.Packed_MemRef_call1252.us972
  %polly.access.Packed_MemRef_call1254.us938 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1253.us937
  store double %polly.access.call1251.load.us936, double* %polly.access.Packed_MemRef_call1254.us938, align 8
  %polly.indvar_next246.us939 = add nuw nsw i64 %polly.indvar245.us932, 1
  %exitcond.not = icmp eq i64 %polly.indvar245.us932, %smax
  br i1 %exitcond.not, label %polly.merge.loopexit920.us973, label %polly.loop_header241.us931

polly.merge.loopexit920.us973:                    ; preds = %polly.loop_header241.us931
  %polly.indvar_next215.us965 = add nuw nsw i64 %polly.indvar214.us929, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next215.us965, 1000
  br i1 %exitcond1081.not, label %polly.loop_header255.preheader, label %polly.loop_header211.us928

polly.loop_exit257:                               ; preds = %polly.loop_exit264.loopexit.us, %polly.loop_header255.preheader
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %polly.loop_cond210 = icmp ult i64 %polly.indvar208, 74
  %indvars.iv.next1080 = add i64 %indvars.iv1079, 16
  %indvars.iv.next1087 = add i64 %indvars.iv1086, -16
  %indvars.iv.next1092 = add i64 %indvars.iv1091, 16
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_exit207

polly.loop_header255.preheader:                   ; preds = %polly.merge.loopexit920.us973, %polly.merge.us, %polly.loop_header205.split
  %134 = sub nsw i64 %105, %127
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %polly.loop_guard265 = icmp slt i64 %136, 16
  br i1 %polly.loop_guard265, label %polly.loop_header255.us, label %polly.loop_exit257

polly.loop_header255.us:                          ; preds = %polly.loop_header255.preheader, %polly.loop_exit264.loopexit.us
  %polly.indvar258.us = phi i64 [ %polly.indvar_next259.us, %polly.loop_exit264.loopexit.us ], [ 0, %polly.loop_header255.preheader ]
  %137 = shl nuw nsw i64 %polly.indvar258.us, 3
  %scevgep281.us = getelementptr i8, i8* %call2, i64 %137
  %polly.access.mul.Packed_MemRef_call1277.us = mul nuw nsw i64 %polly.indvar258.us, 1200
  br label %polly.loop_header262.us

polly.loop_header262.us:                          ; preds = %polly.loop_exit272.us, %polly.loop_header255.us
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit272.us ], [ %125, %polly.loop_header255.us ]
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.us ], [ %136, %polly.loop_header255.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 19)
  %138 = add nuw i64 %polly.indvar266.us, %127
  %139 = add i64 %138, %104
  %polly.loop_guard273.us1186 = icmp sgt i64 %139, -1
  br i1 %polly.loop_guard273.us1186, label %polly.loop_header270.preheader.us, label %polly.loop_exit272.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.preheader.us, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ 0, %polly.loop_header270.preheader.us ]
  %140 = add nuw nsw i64 %polly.indvar274.us, %105
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar274.us, %polly.access.mul.Packed_MemRef_call1277.us
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %141 = mul nuw nsw i64 %140, 8000
  %scevgep286.us = getelementptr i8, i8* %scevgep281.us, i64 %141
  %scevgep286287.us = bitcast i8* %scevgep286.us to double*
  %_p_scalar_288.us = load double, double* %scevgep286287.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %142 = shl i64 %140, 3
  %143 = add i64 %142, %145
  %scevgep293.us = getelementptr i8, i8* %call, i64 %143
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar274.us, %smin
  br i1 %exitcond1095.not, label %polly.loop_exit272.us, label %polly.loop_header270.us

polly.loop_exit272.us:                            ; preds = %polly.loop_header270.us, %polly.loop_header262.us
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %polly.loop_cond268.us = icmp ult i64 %polly.indvar266.us, 15
  %indvars.iv.next1094 = add i64 %indvars.iv1093, 1
  br i1 %polly.loop_cond268.us, label %polly.loop_header262.us, label %polly.loop_exit264.loopexit.us

polly.loop_header270.preheader.us:                ; preds = %polly.loop_header262.us
  %144 = mul i64 %138, 8000
  %scevgep282.us = getelementptr i8, i8* %scevgep281.us, i64 %144
  %scevgep282283.us = bitcast i8* %scevgep282.us to double*
  %_p_scalar_284.us = load double, double* %scevgep282283.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1290.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1277.us, %139
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %145 = mul i64 %138, 9600
  br label %polly.loop_header270.us

polly.loop_exit264.loopexit.us:                   ; preds = %polly.loop_exit272.us
  %polly.indvar_next259.us = add nuw nsw i64 %polly.indvar258.us, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next259.us, 1000
  br i1 %exitcond1096.not, label %polly.loop_exit257, label %polly.loop_header255.us

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header384

polly.exiting299:                                 ; preds = %polly.loop_exit409
  tail call void @free(i8* %malloccall300)
  br label %kernel_syr2k.exit90

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.start298
  %indvar1302 = phi i64 [ %indvar.next1303, %polly.loop_exit392 ], [ 0, %polly.start298 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 1, %polly.start298 ]
  %146 = add i64 %indvar1302, 1
  %147 = mul nuw nsw i64 %polly.indvar387, 9600
  %scevgep396 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check1304 = icmp ult i64 %146, 4
  br i1 %min.iters.check1304, label %polly.loop_header390.preheader, label %vector.ph1305

vector.ph1305:                                    ; preds = %polly.loop_header384
  %n.vec1307 = and i64 %146, -4
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1305
  %index1308 = phi i64 [ 0, %vector.ph1305 ], [ %index.next1309, %vector.body1301 ]
  %148 = shl nuw nsw i64 %index1308, 3
  %149 = getelementptr i8, i8* %scevgep396, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load1312 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !79, !noalias !81
  %151 = fmul fast <4 x double> %wide.load1312, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !79, !noalias !81
  %index.next1309 = add i64 %index1308, 4
  %153 = icmp eq i64 %index.next1309, %n.vec1307
  br i1 %153, label %middle.block1299, label %vector.body1301, !llvm.loop !85

middle.block1299:                                 ; preds = %vector.body1301
  %cmp.n1311 = icmp eq i64 %146, %n.vec1307
  br i1 %cmp.n1311, label %polly.loop_exit392, label %polly.loop_header390.preheader

polly.loop_header390.preheader:                   ; preds = %polly.loop_header384, %middle.block1299
  %polly.indvar393.ph = phi i64 [ 0, %polly.loop_header384 ], [ %n.vec1307, %middle.block1299 ]
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390, %middle.block1299
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next388, 1200
  %indvar.next1303 = add i64 %indvar1302, 1
  br i1 %exitcond1125.not, label %polly.loop_header400.preheader, label %polly.loop_header384

polly.loop_header400.preheader:                   ; preds = %polly.loop_exit392
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  br label %polly.loop_header400

polly.loop_header390:                             ; preds = %polly.loop_header390.preheader, %polly.loop_header390
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_header390 ], [ %polly.indvar393.ph, %polly.loop_header390.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar393, 3
  %scevgep397 = getelementptr i8, i8* %scevgep396, i64 %154
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_399, 1.200000e+00
  store double %p_mul.i57, double* %scevgep397398, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next394, %polly.indvar387
  br i1 %exitcond1124.not, label %polly.loop_exit392, label %polly.loop_header390, !llvm.loop !86

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit409
  %indvars.iv1114 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %indvars.iv.next1115, %polly.loop_exit409 ]
  %indvars.iv1109 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %indvars.iv.next1110, %polly.loop_exit409 ]
  %indvars.iv1100 = phi i64 [ 15, %polly.loop_header400.preheader ], [ %indvars.iv.next1101, %polly.loop_exit409 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %polly.indvar_next404, %polly.loop_exit409 ]
  %155 = lshr i64 %polly.indvar403, 2
  %156 = add nuw i64 %polly.indvar403, %155
  %157 = shl nuw nsw i64 %156, 4
  %158 = sub i64 %indvars.iv1109, %157
  %159 = add i64 %indvars.iv1114, %157
  %160 = add i64 %indvars.iv1100, %157
  %161 = mul nuw nsw i64 %polly.indvar403, 5
  %162 = mul nsw i64 %polly.indvar403, -20
  %163 = mul nuw nsw i64 %polly.indvar403, 20
  %polly.access.mul.call1430.us = mul nuw i64 %polly.indvar403, 20000
  %164 = or i64 %163, 1
  %polly.access.mul.call1430.us.1 = mul nuw nsw i64 %164, 1000
  %165 = or i64 %163, 2
  %polly.access.mul.call1430.us.2 = mul nuw nsw i64 %165, 1000
  %166 = or i64 %163, 3
  %polly.access.mul.call1430.us.3 = mul nuw nsw i64 %166, 1000
  %167 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.4 = add i64 %167, 4000
  %168 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.5 = add i64 %168, 5000
  %169 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.6 = add i64 %169, 6000
  %170 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.7 = add i64 %170, 7000
  %171 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.8 = add i64 %171, 8000
  %172 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.9 = add i64 %172, 9000
  %173 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.10 = add i64 %173, 10000
  %174 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.11 = add i64 %174, 11000
  %175 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.12 = add i64 %175, 12000
  %176 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.13 = add i64 %176, 13000
  %177 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.14 = add i64 %177, 14000
  %178 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.15 = add i64 %178, 15000
  %179 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.16 = add i64 %179, 16000
  %180 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.17 = add i64 %180, 17000
  %181 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.18 = add i64 %181, 18000
  %182 = mul i64 %polly.indvar403, 20000
  %polly.access.mul.call1430.us.19 = add i64 %182, 19000
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit465
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next1101 = add nsw i64 %indvars.iv1100, -20
  %indvars.iv.next1110 = add nuw nsw i64 %indvars.iv1109, 20
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -20
  %exitcond1123.not = icmp eq i64 %polly.indvar_next404, 60
  br i1 %exitcond1123.not, label %polly.exiting299, label %polly.loop_header400

polly.loop_header407:                             ; preds = %polly.loop_exit465, %polly.loop_header400
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit465 ], [ %159, %polly.loop_header400 ]
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit465 ], [ %158, %polly.loop_header400 ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit465 ], [ %160, %polly.loop_header400 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit465 ], [ %156, %polly.loop_header400 ]
  %smax1113 = call i64 @llvm.smax.i64(i64 %indvars.iv1111, i64 0)
  %183 = add i64 %smax1113, %indvars.iv1116
  %smax1104 = call i64 @llvm.smax.i64(i64 %indvars.iv1102, i64 0)
  %184 = shl nsw i64 %polly.indvar410, 2
  %.not.not918 = icmp ugt i64 %184, %161
  %185 = shl nsw i64 %polly.indvar410, 4
  %186 = add nsw i64 %185, %162
  %187 = icmp sgt i64 %186, 20
  %188 = select i1 %187, i64 %186, i64 20
  %189 = add nsw i64 %186, 15
  %polly.loop_guard437.not = icmp sgt i64 %188, %189
  br i1 %.not.not918, label %polly.loop_header413.us, label %polly.loop_header407.split

polly.loop_header413.us:                          ; preds = %polly.loop_header407, %polly.merge420.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.merge420.us ], [ 0, %polly.loop_header407 ]
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar416.us, 1200
  %polly.access.add.call1431.us = add nuw nsw i64 %polly.access.mul.call1430.us, %polly.indvar416.us
  %polly.access.call1432.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us
  %polly.access.call1432.load.us = load double, double* %polly.access.call1432.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.mul.Packed_MemRef_call1301.us
  store double %polly.access.call1432.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.access.add.call1431.us.1 = add nuw nsw i64 %polly.access.mul.call1430.us.1, %polly.indvar416.us
  %polly.access.call1432.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.1
  %polly.access.call1432.load.us.1 = load double, double* %polly.access.call1432.us.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 1
  %polly.access.Packed_MemRef_call1301.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.1
  store double %polly.access.call1432.load.us.1, double* %polly.access.Packed_MemRef_call1301.us.1, align 8
  %polly.access.add.call1431.us.2 = add nuw nsw i64 %polly.access.mul.call1430.us.2, %polly.indvar416.us
  %polly.access.call1432.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.2
  %polly.access.call1432.load.us.2 = load double, double* %polly.access.call1432.us.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 2
  %polly.access.Packed_MemRef_call1301.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.2
  store double %polly.access.call1432.load.us.2, double* %polly.access.Packed_MemRef_call1301.us.2, align 8
  %polly.access.add.call1431.us.3 = add nuw nsw i64 %polly.access.mul.call1430.us.3, %polly.indvar416.us
  %polly.access.call1432.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.3
  %polly.access.call1432.load.us.3 = load double, double* %polly.access.call1432.us.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 3
  %polly.access.Packed_MemRef_call1301.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.3
  store double %polly.access.call1432.load.us.3, double* %polly.access.Packed_MemRef_call1301.us.3, align 8
  %polly.access.add.call1431.us.4 = add nuw nsw i64 %polly.access.mul.call1430.us.4, %polly.indvar416.us
  %polly.access.call1432.us.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.4
  %polly.access.call1432.load.us.4 = load double, double* %polly.access.call1432.us.4, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 4
  %polly.access.Packed_MemRef_call1301.us.4 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.4
  store double %polly.access.call1432.load.us.4, double* %polly.access.Packed_MemRef_call1301.us.4, align 8
  %polly.access.add.call1431.us.5 = add nuw nsw i64 %polly.access.mul.call1430.us.5, %polly.indvar416.us
  %polly.access.call1432.us.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.5
  %polly.access.call1432.load.us.5 = load double, double* %polly.access.call1432.us.5, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 5
  %polly.access.Packed_MemRef_call1301.us.5 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.5
  store double %polly.access.call1432.load.us.5, double* %polly.access.Packed_MemRef_call1301.us.5, align 8
  %polly.access.add.call1431.us.6 = add nuw nsw i64 %polly.access.mul.call1430.us.6, %polly.indvar416.us
  %polly.access.call1432.us.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.6
  %polly.access.call1432.load.us.6 = load double, double* %polly.access.call1432.us.6, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 6
  %polly.access.Packed_MemRef_call1301.us.6 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.6
  store double %polly.access.call1432.load.us.6, double* %polly.access.Packed_MemRef_call1301.us.6, align 8
  %polly.access.add.call1431.us.7 = add nuw nsw i64 %polly.access.mul.call1430.us.7, %polly.indvar416.us
  %polly.access.call1432.us.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.7
  %polly.access.call1432.load.us.7 = load double, double* %polly.access.call1432.us.7, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 7
  %polly.access.Packed_MemRef_call1301.us.7 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.7
  store double %polly.access.call1432.load.us.7, double* %polly.access.Packed_MemRef_call1301.us.7, align 8
  %polly.access.add.call1431.us.8 = add nuw nsw i64 %polly.access.mul.call1430.us.8, %polly.indvar416.us
  %polly.access.call1432.us.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.8
  %polly.access.call1432.load.us.8 = load double, double* %polly.access.call1432.us.8, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 8
  %polly.access.Packed_MemRef_call1301.us.8 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.8
  store double %polly.access.call1432.load.us.8, double* %polly.access.Packed_MemRef_call1301.us.8, align 8
  %polly.access.add.call1431.us.9 = add nuw nsw i64 %polly.access.mul.call1430.us.9, %polly.indvar416.us
  %polly.access.call1432.us.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.9
  %polly.access.call1432.load.us.9 = load double, double* %polly.access.call1432.us.9, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 9
  %polly.access.Packed_MemRef_call1301.us.9 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.9
  store double %polly.access.call1432.load.us.9, double* %polly.access.Packed_MemRef_call1301.us.9, align 8
  %polly.access.add.call1431.us.10 = add nuw nsw i64 %polly.access.mul.call1430.us.10, %polly.indvar416.us
  %polly.access.call1432.us.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.10
  %polly.access.call1432.load.us.10 = load double, double* %polly.access.call1432.us.10, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 10
  %polly.access.Packed_MemRef_call1301.us.10 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.10
  store double %polly.access.call1432.load.us.10, double* %polly.access.Packed_MemRef_call1301.us.10, align 8
  %polly.access.add.call1431.us.11 = add nuw nsw i64 %polly.access.mul.call1430.us.11, %polly.indvar416.us
  %polly.access.call1432.us.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.11
  %polly.access.call1432.load.us.11 = load double, double* %polly.access.call1432.us.11, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 11
  %polly.access.Packed_MemRef_call1301.us.11 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.11
  store double %polly.access.call1432.load.us.11, double* %polly.access.Packed_MemRef_call1301.us.11, align 8
  %polly.access.add.call1431.us.12 = add nuw nsw i64 %polly.access.mul.call1430.us.12, %polly.indvar416.us
  %polly.access.call1432.us.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.12
  %polly.access.call1432.load.us.12 = load double, double* %polly.access.call1432.us.12, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 12
  %polly.access.Packed_MemRef_call1301.us.12 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.12
  store double %polly.access.call1432.load.us.12, double* %polly.access.Packed_MemRef_call1301.us.12, align 8
  %polly.access.add.call1431.us.13 = add nuw nsw i64 %polly.access.mul.call1430.us.13, %polly.indvar416.us
  %polly.access.call1432.us.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.13
  %polly.access.call1432.load.us.13 = load double, double* %polly.access.call1432.us.13, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 13
  %polly.access.Packed_MemRef_call1301.us.13 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.13
  store double %polly.access.call1432.load.us.13, double* %polly.access.Packed_MemRef_call1301.us.13, align 8
  %polly.access.add.call1431.us.14 = add nuw nsw i64 %polly.access.mul.call1430.us.14, %polly.indvar416.us
  %polly.access.call1432.us.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.14
  %polly.access.call1432.load.us.14 = load double, double* %polly.access.call1432.us.14, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 14
  %polly.access.Packed_MemRef_call1301.us.14 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.14
  store double %polly.access.call1432.load.us.14, double* %polly.access.Packed_MemRef_call1301.us.14, align 8
  %polly.access.add.call1431.us.15 = add nuw nsw i64 %polly.access.mul.call1430.us.15, %polly.indvar416.us
  %polly.access.call1432.us.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.15
  %polly.access.call1432.load.us.15 = load double, double* %polly.access.call1432.us.15, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1301.us, 15
  %polly.access.Packed_MemRef_call1301.us.15 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.15
  store double %polly.access.call1432.load.us.15, double* %polly.access.Packed_MemRef_call1301.us.15, align 8
  %polly.access.add.call1431.us.16 = add nuw nsw i64 %polly.access.mul.call1430.us.16, %polly.indvar416.us
  %polly.access.call1432.us.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.16
  %polly.access.call1432.load.us.16 = load double, double* %polly.access.call1432.us.16, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1301.us, 16
  %polly.access.Packed_MemRef_call1301.us.16 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.16
  store double %polly.access.call1432.load.us.16, double* %polly.access.Packed_MemRef_call1301.us.16, align 8
  %polly.access.add.call1431.us.17 = add nuw nsw i64 %polly.access.mul.call1430.us.17, %polly.indvar416.us
  %polly.access.call1432.us.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.17
  %polly.access.call1432.load.us.17 = load double, double* %polly.access.call1432.us.17, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1301.us, 17
  %polly.access.Packed_MemRef_call1301.us.17 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.17
  store double %polly.access.call1432.load.us.17, double* %polly.access.Packed_MemRef_call1301.us.17, align 8
  %polly.access.add.call1431.us.18 = add nuw nsw i64 %polly.access.mul.call1430.us.18, %polly.indvar416.us
  %polly.access.call1432.us.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.18
  %polly.access.call1432.load.us.18 = load double, double* %polly.access.call1432.us.18, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1301.us, 18
  %polly.access.Packed_MemRef_call1301.us.18 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.18
  store double %polly.access.call1432.load.us.18, double* %polly.access.Packed_MemRef_call1301.us.18, align 8
  %polly.access.add.call1431.us.19 = add nuw nsw i64 %polly.access.mul.call1430.us.19, %polly.indvar416.us
  %polly.access.call1432.us.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us.19
  %polly.access.call1432.load.us.19 = load double, double* %polly.access.call1432.us.19, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1301.us, 19
  %polly.access.Packed_MemRef_call1301.us.19 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.19
  store double %polly.access.call1432.load.us.19, double* %polly.access.Packed_MemRef_call1301.us.19, align 8
  br i1 %polly.loop_guard437.not, label %polly.merge420.us, label %polly.loop_header434.us

polly.loop_header434.us:                          ; preds = %polly.loop_header413.us, %polly.loop_header434.us
  %polly.indvar438.us = phi i64 [ %polly.indvar_next439.us, %polly.loop_header434.us ], [ %188, %polly.loop_header413.us ]
  %190 = add nuw nsw i64 %polly.indvar438.us, %163
  %polly.access.mul.call1442.us = mul nsw i64 %190, 1000
  %polly.access.add.call1443.us = add nuw nsw i64 %polly.access.mul.call1442.us, %polly.indvar416.us
  %polly.access.call1444.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1443.us
  %polly.access.call1444.load.us = load double, double* %polly.access.call1444.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301446.us = add nuw nsw i64 %polly.indvar438.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301447.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301446.us
  store double %polly.access.call1444.load.us, double* %polly.access.Packed_MemRef_call1301447.us, align 8
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %polly.loop_cond440.not.not.us = icmp slt i64 %polly.indvar438.us, %189
  br i1 %polly.loop_cond440.not.not.us, label %polly.loop_header434.us, label %polly.merge420.us

polly.merge420.us:                                ; preds = %polly.loop_header434.us, %polly.loop_header413.us
  %polly.indvar_next417.us = add nuw nsw i64 %polly.indvar416.us, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next417.us, 1000
  br i1 %exitcond1108.not, label %polly.loop_header463.preheader, label %polly.loop_header413.us

polly.loop_header407.split:                       ; preds = %polly.loop_header407
  %polly.loop_guard452 = icmp sgt i64 %186, -16
  br i1 %polly.loop_guard452, label %polly.loop_header413.us974, label %polly.loop_header463.preheader

polly.loop_header413.us974:                       ; preds = %polly.loop_header407.split, %polly.merge420.loopexit921.us1019
  %polly.indvar416.us975 = phi i64 [ %polly.indvar_next417.us1011, %polly.merge420.loopexit921.us1019 ], [ 0, %polly.loop_header407.split ]
  %polly.access.mul.Packed_MemRef_call1301460.us1018 = mul nuw nsw i64 %polly.indvar416.us975, 1200
  br label %polly.loop_header449.us977

polly.loop_header449.us977:                       ; preds = %polly.loop_header413.us974, %polly.loop_header449.us977
  %polly.indvar453.us978 = phi i64 [ %polly.indvar_next454.us985, %polly.loop_header449.us977 ], [ 0, %polly.loop_header413.us974 ]
  %191 = add nuw nsw i64 %polly.indvar453.us978, %163
  %polly.access.mul.call1457.us979 = mul nuw nsw i64 %191, 1000
  %polly.access.add.call1458.us980 = add nuw nsw i64 %polly.access.mul.call1457.us979, %polly.indvar416.us975
  %polly.access.call1459.us981 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us980
  %polly.access.call1459.load.us982 = load double, double* %polly.access.call1459.us981, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301461.us983 = add nuw nsw i64 %polly.indvar453.us978, %polly.access.mul.Packed_MemRef_call1301460.us1018
  %polly.access.Packed_MemRef_call1301462.us984 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461.us983
  store double %polly.access.call1459.load.us982, double* %polly.access.Packed_MemRef_call1301462.us984, align 8
  %polly.indvar_next454.us985 = add nuw nsw i64 %polly.indvar453.us978, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar453.us978, %smax1104
  br i1 %exitcond1105.not, label %polly.merge420.loopexit921.us1019, label %polly.loop_header449.us977

polly.merge420.loopexit921.us1019:                ; preds = %polly.loop_header449.us977
  %polly.indvar_next417.us1011 = add nuw nsw i64 %polly.indvar416.us975, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next417.us1011, 1000
  br i1 %exitcond1106.not, label %polly.loop_header463.preheader, label %polly.loop_header413.us974

polly.loop_exit465:                               ; preds = %polly.loop_exit472.loopexit.us, %polly.loop_header463.preheader
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %polly.loop_cond412 = icmp ult i64 %polly.indvar410, 74
  %indvars.iv.next1103 = add i64 %indvars.iv1102, 16
  %indvars.iv.next1112 = add i64 %indvars.iv1111, -16
  %indvars.iv.next1117 = add i64 %indvars.iv1116, 16
  br i1 %polly.loop_cond412, label %polly.loop_header407, label %polly.loop_exit409

polly.loop_header463.preheader:                   ; preds = %polly.merge420.loopexit921.us1019, %polly.merge420.us, %polly.loop_header407.split
  %192 = sub nsw i64 %163, %185
  %193 = icmp sgt i64 %192, 0
  %194 = select i1 %193, i64 %192, i64 0
  %polly.loop_guard473 = icmp slt i64 %194, 16
  br i1 %polly.loop_guard473, label %polly.loop_header463.us, label %polly.loop_exit465

polly.loop_header463.us:                          ; preds = %polly.loop_header463.preheader, %polly.loop_exit472.loopexit.us
  %polly.indvar466.us = phi i64 [ %polly.indvar_next467.us, %polly.loop_exit472.loopexit.us ], [ 0, %polly.loop_header463.preheader ]
  %195 = shl nuw nsw i64 %polly.indvar466.us, 3
  %scevgep489.us = getelementptr i8, i8* %call2, i64 %195
  %polly.access.mul.Packed_MemRef_call1301485.us = mul nuw nsw i64 %polly.indvar466.us, 1200
  br label %polly.loop_header470.us

polly.loop_header470.us:                          ; preds = %polly.loop_exit480.us, %polly.loop_header463.us
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit480.us ], [ %183, %polly.loop_header463.us ]
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_exit480.us ], [ %194, %polly.loop_header463.us ]
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1118, i64 19)
  %196 = add nuw i64 %polly.indvar474.us, %185
  %197 = add i64 %196, %162
  %polly.loop_guard481.us1187 = icmp sgt i64 %197, -1
  br i1 %polly.loop_guard481.us1187, label %polly.loop_header478.preheader.us, label %polly.loop_exit480.us

polly.loop_header478.us:                          ; preds = %polly.loop_header478.preheader.us, %polly.loop_header478.us
  %polly.indvar482.us = phi i64 [ %polly.indvar_next483.us, %polly.loop_header478.us ], [ 0, %polly.loop_header478.preheader.us ]
  %198 = add nuw nsw i64 %polly.indvar482.us, %163
  %polly.access.add.Packed_MemRef_call1301486.us = add nuw nsw i64 %polly.indvar482.us, %polly.access.mul.Packed_MemRef_call1301485.us
  %polly.access.Packed_MemRef_call1301487.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call1301487.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %199 = mul nuw nsw i64 %198, 8000
  %scevgep494.us = getelementptr i8, i8* %scevgep489.us, i64 %199
  %scevgep494495.us = bitcast i8* %scevgep494.us to double*
  %_p_scalar_496.us = load double, double* %scevgep494495.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_500.us, %_p_scalar_496.us
  %200 = shl i64 %198, 3
  %201 = add i64 %200, %203
  %scevgep501.us = getelementptr i8, i8* %call, i64 %201
  %scevgep501502.us = bitcast i8* %scevgep501.us to double*
  %_p_scalar_503.us = load double, double* %scevgep501502.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_503.us
  store double %p_add42.i79.us, double* %scevgep501502.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next483.us = add nuw nsw i64 %polly.indvar482.us, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar482.us, %smin1120
  br i1 %exitcond1121.not, label %polly.loop_exit480.us, label %polly.loop_header478.us

polly.loop_exit480.us:                            ; preds = %polly.loop_header478.us, %polly.loop_header470.us
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %polly.loop_cond476.us = icmp ult i64 %polly.indvar474.us, 15
  %indvars.iv.next1119 = add i64 %indvars.iv1118, 1
  br i1 %polly.loop_cond476.us, label %polly.loop_header470.us, label %polly.loop_exit472.loopexit.us

polly.loop_header478.preheader.us:                ; preds = %polly.loop_header470.us
  %202 = mul i64 %196, 8000
  %scevgep490.us = getelementptr i8, i8* %scevgep489.us, i64 %202
  %scevgep490491.us = bitcast i8* %scevgep490.us to double*
  %_p_scalar_492.us = load double, double* %scevgep490491.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1301498.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301485.us, %197
  %polly.access.Packed_MemRef_call1301499.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1301499.us, align 8
  %203 = mul i64 %196, 9600
  br label %polly.loop_header478.us

polly.loop_exit472.loopexit.us:                   ; preds = %polly.loop_exit480.us
  %polly.indvar_next467.us = add nuw nsw i64 %polly.indvar466.us, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next467.us, 1000
  br i1 %exitcond1122.not, label %polly.loop_exit465, label %polly.loop_header463.us

polly.start506:                                   ; preds = %init_array.exit
  %malloccall508 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header592

polly.exiting507:                                 ; preds = %polly.loop_exit617
  tail call void @free(i8* %malloccall508)
  br label %kernel_syr2k.exit

polly.loop_header592:                             ; preds = %polly.loop_exit600, %polly.start506
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit600 ], [ 0, %polly.start506 ]
  %polly.indvar595 = phi i64 [ %polly.indvar_next596, %polly.loop_exit600 ], [ 1, %polly.start506 ]
  %204 = add i64 %indvar, 1
  %205 = mul nuw nsw i64 %polly.indvar595, 9600
  %scevgep604 = getelementptr i8, i8* %call, i64 %205
  %min.iters.check1278 = icmp ult i64 %204, 4
  br i1 %min.iters.check1278, label %polly.loop_header598.preheader, label %vector.ph1279

vector.ph1279:                                    ; preds = %polly.loop_header592
  %n.vec1281 = and i64 %204, -4
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1277 ]
  %206 = shl nuw nsw i64 %index1282, 3
  %207 = getelementptr i8, i8* %scevgep604, i64 %206
  %208 = bitcast i8* %207 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %208, align 8, !alias.scope !89, !noalias !91
  %209 = fmul fast <4 x double> %wide.load1286, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %210 = bitcast i8* %207 to <4 x double>*
  store <4 x double> %209, <4 x double>* %210, align 8, !alias.scope !89, !noalias !91
  %index.next1283 = add i64 %index1282, 4
  %211 = icmp eq i64 %index.next1283, %n.vec1281
  br i1 %211, label %middle.block1275, label %vector.body1277, !llvm.loop !95

middle.block1275:                                 ; preds = %vector.body1277
  %cmp.n1285 = icmp eq i64 %204, %n.vec1281
  br i1 %cmp.n1285, label %polly.loop_exit600, label %polly.loop_header598.preheader

polly.loop_header598.preheader:                   ; preds = %polly.loop_header592, %middle.block1275
  %polly.indvar601.ph = phi i64 [ 0, %polly.loop_header592 ], [ %n.vec1281, %middle.block1275 ]
  br label %polly.loop_header598

polly.loop_exit600:                               ; preds = %polly.loop_header598, %middle.block1275
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar_next596, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1151.not, label %polly.loop_header608.preheader, label %polly.loop_header592

polly.loop_header608.preheader:                   ; preds = %polly.loop_exit600
  %Packed_MemRef_call1509 = bitcast i8* %malloccall508 to double*
  br label %polly.loop_header608

polly.loop_header598:                             ; preds = %polly.loop_header598.preheader, %polly.loop_header598
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_header598 ], [ %polly.indvar601.ph, %polly.loop_header598.preheader ]
  %212 = shl nuw nsw i64 %polly.indvar601, 3
  %scevgep605 = getelementptr i8, i8* %scevgep604, i64 %212
  %scevgep605606 = bitcast i8* %scevgep605 to double*
  %_p_scalar_607 = load double, double* %scevgep605606, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_607, 1.200000e+00
  store double %p_mul.i, double* %scevgep605606, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar_next602, %polly.indvar595
  br i1 %exitcond1150.not, label %polly.loop_exit600, label %polly.loop_header598, !llvm.loop !96

polly.loop_header608:                             ; preds = %polly.loop_header608.preheader, %polly.loop_exit617
  %indvars.iv1140 = phi i64 [ 0, %polly.loop_header608.preheader ], [ %indvars.iv.next1141, %polly.loop_exit617 ]
  %indvars.iv1135 = phi i64 [ 0, %polly.loop_header608.preheader ], [ %indvars.iv.next1136, %polly.loop_exit617 ]
  %indvars.iv1126 = phi i64 [ 15, %polly.loop_header608.preheader ], [ %indvars.iv.next1127, %polly.loop_exit617 ]
  %polly.indvar611 = phi i64 [ 0, %polly.loop_header608.preheader ], [ %polly.indvar_next612, %polly.loop_exit617 ]
  %213 = lshr i64 %polly.indvar611, 2
  %214 = add nuw i64 %polly.indvar611, %213
  %215 = shl nuw nsw i64 %214, 4
  %216 = sub i64 %indvars.iv1135, %215
  %217 = add i64 %indvars.iv1140, %215
  %218 = add i64 %indvars.iv1126, %215
  %219 = mul nuw nsw i64 %polly.indvar611, 5
  %220 = mul nsw i64 %polly.indvar611, -20
  %221 = mul nuw nsw i64 %polly.indvar611, 20
  %polly.access.mul.call1638.us = mul nuw i64 %polly.indvar611, 20000
  %222 = or i64 %221, 1
  %polly.access.mul.call1638.us.1 = mul nuw nsw i64 %222, 1000
  %223 = or i64 %221, 2
  %polly.access.mul.call1638.us.2 = mul nuw nsw i64 %223, 1000
  %224 = or i64 %221, 3
  %polly.access.mul.call1638.us.3 = mul nuw nsw i64 %224, 1000
  %225 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.4 = add i64 %225, 4000
  %226 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.5 = add i64 %226, 5000
  %227 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.6 = add i64 %227, 6000
  %228 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.7 = add i64 %228, 7000
  %229 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.8 = add i64 %229, 8000
  %230 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.9 = add i64 %230, 9000
  %231 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.10 = add i64 %231, 10000
  %232 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.11 = add i64 %232, 11000
  %233 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.12 = add i64 %233, 12000
  %234 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.13 = add i64 %234, 13000
  %235 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.14 = add i64 %235, 14000
  %236 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.15 = add i64 %236, 15000
  %237 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.16 = add i64 %237, 16000
  %238 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.17 = add i64 %238, 17000
  %239 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.18 = add i64 %239, 18000
  %240 = mul i64 %polly.indvar611, 20000
  %polly.access.mul.call1638.us.19 = add i64 %240, 19000
  br label %polly.loop_header615

polly.loop_exit617:                               ; preds = %polly.loop_exit673
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %indvars.iv.next1127 = add nsw i64 %indvars.iv1126, -20
  %indvars.iv.next1136 = add nuw nsw i64 %indvars.iv1135, 20
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -20
  %exitcond1149.not = icmp eq i64 %polly.indvar_next612, 60
  br i1 %exitcond1149.not, label %polly.exiting507, label %polly.loop_header608

polly.loop_header615:                             ; preds = %polly.loop_exit673, %polly.loop_header608
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit673 ], [ %217, %polly.loop_header608 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit673 ], [ %216, %polly.loop_header608 ]
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit673 ], [ %218, %polly.loop_header608 ]
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit673 ], [ %214, %polly.loop_header608 ]
  %smax1139 = call i64 @llvm.smax.i64(i64 %indvars.iv1137, i64 0)
  %241 = add i64 %smax1139, %indvars.iv1142
  %smax1130 = call i64 @llvm.smax.i64(i64 %indvars.iv1128, i64 0)
  %242 = shl nsw i64 %polly.indvar618, 2
  %.not.not919 = icmp ugt i64 %242, %219
  %243 = shl nsw i64 %polly.indvar618, 4
  %244 = add nsw i64 %243, %220
  %245 = icmp sgt i64 %244, 20
  %246 = select i1 %245, i64 %244, i64 20
  %247 = add nsw i64 %244, 15
  %polly.loop_guard645.not = icmp sgt i64 %246, %247
  br i1 %.not.not919, label %polly.loop_header621.us, label %polly.loop_header615.split

polly.loop_header621.us:                          ; preds = %polly.loop_header615, %polly.merge628.us
  %polly.indvar624.us = phi i64 [ %polly.indvar_next625.us, %polly.merge628.us ], [ 0, %polly.loop_header615 ]
  %polly.access.mul.Packed_MemRef_call1509.us = mul nuw nsw i64 %polly.indvar624.us, 1200
  %polly.access.add.call1639.us = add nuw nsw i64 %polly.access.mul.call1638.us, %polly.indvar624.us
  %polly.access.call1640.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us
  %polly.access.call1640.load.us = load double, double* %polly.access.call1640.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.Packed_MemRef_call1509.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.mul.Packed_MemRef_call1509.us
  store double %polly.access.call1640.load.us, double* %polly.access.Packed_MemRef_call1509.us, align 8
  %polly.access.add.call1639.us.1 = add nuw nsw i64 %polly.access.mul.call1638.us.1, %polly.indvar624.us
  %polly.access.call1640.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.1
  %polly.access.call1640.load.us.1 = load double, double* %polly.access.call1640.us.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 1
  %polly.access.Packed_MemRef_call1509.us.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.1
  store double %polly.access.call1640.load.us.1, double* %polly.access.Packed_MemRef_call1509.us.1, align 8
  %polly.access.add.call1639.us.2 = add nuw nsw i64 %polly.access.mul.call1638.us.2, %polly.indvar624.us
  %polly.access.call1640.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.2
  %polly.access.call1640.load.us.2 = load double, double* %polly.access.call1640.us.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 2
  %polly.access.Packed_MemRef_call1509.us.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.2
  store double %polly.access.call1640.load.us.2, double* %polly.access.Packed_MemRef_call1509.us.2, align 8
  %polly.access.add.call1639.us.3 = add nuw nsw i64 %polly.access.mul.call1638.us.3, %polly.indvar624.us
  %polly.access.call1640.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.3
  %polly.access.call1640.load.us.3 = load double, double* %polly.access.call1640.us.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 3
  %polly.access.Packed_MemRef_call1509.us.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.3
  store double %polly.access.call1640.load.us.3, double* %polly.access.Packed_MemRef_call1509.us.3, align 8
  %polly.access.add.call1639.us.4 = add nuw nsw i64 %polly.access.mul.call1638.us.4, %polly.indvar624.us
  %polly.access.call1640.us.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.4
  %polly.access.call1640.load.us.4 = load double, double* %polly.access.call1640.us.4, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 4
  %polly.access.Packed_MemRef_call1509.us.4 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.4
  store double %polly.access.call1640.load.us.4, double* %polly.access.Packed_MemRef_call1509.us.4, align 8
  %polly.access.add.call1639.us.5 = add nuw nsw i64 %polly.access.mul.call1638.us.5, %polly.indvar624.us
  %polly.access.call1640.us.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.5
  %polly.access.call1640.load.us.5 = load double, double* %polly.access.call1640.us.5, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 5
  %polly.access.Packed_MemRef_call1509.us.5 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.5
  store double %polly.access.call1640.load.us.5, double* %polly.access.Packed_MemRef_call1509.us.5, align 8
  %polly.access.add.call1639.us.6 = add nuw nsw i64 %polly.access.mul.call1638.us.6, %polly.indvar624.us
  %polly.access.call1640.us.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.6
  %polly.access.call1640.load.us.6 = load double, double* %polly.access.call1640.us.6, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 6
  %polly.access.Packed_MemRef_call1509.us.6 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.6
  store double %polly.access.call1640.load.us.6, double* %polly.access.Packed_MemRef_call1509.us.6, align 8
  %polly.access.add.call1639.us.7 = add nuw nsw i64 %polly.access.mul.call1638.us.7, %polly.indvar624.us
  %polly.access.call1640.us.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.7
  %polly.access.call1640.load.us.7 = load double, double* %polly.access.call1640.us.7, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 7
  %polly.access.Packed_MemRef_call1509.us.7 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.7
  store double %polly.access.call1640.load.us.7, double* %polly.access.Packed_MemRef_call1509.us.7, align 8
  %polly.access.add.call1639.us.8 = add nuw nsw i64 %polly.access.mul.call1638.us.8, %polly.indvar624.us
  %polly.access.call1640.us.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.8
  %polly.access.call1640.load.us.8 = load double, double* %polly.access.call1640.us.8, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 8
  %polly.access.Packed_MemRef_call1509.us.8 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.8
  store double %polly.access.call1640.load.us.8, double* %polly.access.Packed_MemRef_call1509.us.8, align 8
  %polly.access.add.call1639.us.9 = add nuw nsw i64 %polly.access.mul.call1638.us.9, %polly.indvar624.us
  %polly.access.call1640.us.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.9
  %polly.access.call1640.load.us.9 = load double, double* %polly.access.call1640.us.9, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 9
  %polly.access.Packed_MemRef_call1509.us.9 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.9
  store double %polly.access.call1640.load.us.9, double* %polly.access.Packed_MemRef_call1509.us.9, align 8
  %polly.access.add.call1639.us.10 = add nuw nsw i64 %polly.access.mul.call1638.us.10, %polly.indvar624.us
  %polly.access.call1640.us.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.10
  %polly.access.call1640.load.us.10 = load double, double* %polly.access.call1640.us.10, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 10
  %polly.access.Packed_MemRef_call1509.us.10 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.10
  store double %polly.access.call1640.load.us.10, double* %polly.access.Packed_MemRef_call1509.us.10, align 8
  %polly.access.add.call1639.us.11 = add nuw nsw i64 %polly.access.mul.call1638.us.11, %polly.indvar624.us
  %polly.access.call1640.us.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.11
  %polly.access.call1640.load.us.11 = load double, double* %polly.access.call1640.us.11, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 11
  %polly.access.Packed_MemRef_call1509.us.11 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.11
  store double %polly.access.call1640.load.us.11, double* %polly.access.Packed_MemRef_call1509.us.11, align 8
  %polly.access.add.call1639.us.12 = add nuw nsw i64 %polly.access.mul.call1638.us.12, %polly.indvar624.us
  %polly.access.call1640.us.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.12
  %polly.access.call1640.load.us.12 = load double, double* %polly.access.call1640.us.12, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 12
  %polly.access.Packed_MemRef_call1509.us.12 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.12
  store double %polly.access.call1640.load.us.12, double* %polly.access.Packed_MemRef_call1509.us.12, align 8
  %polly.access.add.call1639.us.13 = add nuw nsw i64 %polly.access.mul.call1638.us.13, %polly.indvar624.us
  %polly.access.call1640.us.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.13
  %polly.access.call1640.load.us.13 = load double, double* %polly.access.call1640.us.13, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 13
  %polly.access.Packed_MemRef_call1509.us.13 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.13
  store double %polly.access.call1640.load.us.13, double* %polly.access.Packed_MemRef_call1509.us.13, align 8
  %polly.access.add.call1639.us.14 = add nuw nsw i64 %polly.access.mul.call1638.us.14, %polly.indvar624.us
  %polly.access.call1640.us.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.14
  %polly.access.call1640.load.us.14 = load double, double* %polly.access.call1640.us.14, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 14
  %polly.access.Packed_MemRef_call1509.us.14 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.14
  store double %polly.access.call1640.load.us.14, double* %polly.access.Packed_MemRef_call1509.us.14, align 8
  %polly.access.add.call1639.us.15 = add nuw nsw i64 %polly.access.mul.call1638.us.15, %polly.indvar624.us
  %polly.access.call1640.us.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.15
  %polly.access.call1640.load.us.15 = load double, double* %polly.access.call1640.us.15, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1509.us, 15
  %polly.access.Packed_MemRef_call1509.us.15 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.15
  store double %polly.access.call1640.load.us.15, double* %polly.access.Packed_MemRef_call1509.us.15, align 8
  %polly.access.add.call1639.us.16 = add nuw nsw i64 %polly.access.mul.call1638.us.16, %polly.indvar624.us
  %polly.access.call1640.us.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.16
  %polly.access.call1640.load.us.16 = load double, double* %polly.access.call1640.us.16, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1509.us, 16
  %polly.access.Packed_MemRef_call1509.us.16 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.16
  store double %polly.access.call1640.load.us.16, double* %polly.access.Packed_MemRef_call1509.us.16, align 8
  %polly.access.add.call1639.us.17 = add nuw nsw i64 %polly.access.mul.call1638.us.17, %polly.indvar624.us
  %polly.access.call1640.us.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.17
  %polly.access.call1640.load.us.17 = load double, double* %polly.access.call1640.us.17, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1509.us, 17
  %polly.access.Packed_MemRef_call1509.us.17 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.17
  store double %polly.access.call1640.load.us.17, double* %polly.access.Packed_MemRef_call1509.us.17, align 8
  %polly.access.add.call1639.us.18 = add nuw nsw i64 %polly.access.mul.call1638.us.18, %polly.indvar624.us
  %polly.access.call1640.us.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.18
  %polly.access.call1640.load.us.18 = load double, double* %polly.access.call1640.us.18, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1509.us, 18
  %polly.access.Packed_MemRef_call1509.us.18 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.18
  store double %polly.access.call1640.load.us.18, double* %polly.access.Packed_MemRef_call1509.us.18, align 8
  %polly.access.add.call1639.us.19 = add nuw nsw i64 %polly.access.mul.call1638.us.19, %polly.indvar624.us
  %polly.access.call1640.us.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us.19
  %polly.access.call1640.load.us.19 = load double, double* %polly.access.call1640.us.19, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1509.us, 19
  %polly.access.Packed_MemRef_call1509.us.19 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.19
  store double %polly.access.call1640.load.us.19, double* %polly.access.Packed_MemRef_call1509.us.19, align 8
  br i1 %polly.loop_guard645.not, label %polly.merge628.us, label %polly.loop_header642.us

polly.loop_header642.us:                          ; preds = %polly.loop_header621.us, %polly.loop_header642.us
  %polly.indvar646.us = phi i64 [ %polly.indvar_next647.us, %polly.loop_header642.us ], [ %246, %polly.loop_header621.us ]
  %248 = add nuw nsw i64 %polly.indvar646.us, %221
  %polly.access.mul.call1650.us = mul nsw i64 %248, 1000
  %polly.access.add.call1651.us = add nuw nsw i64 %polly.access.mul.call1650.us, %polly.indvar624.us
  %polly.access.call1652.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1651.us
  %polly.access.call1652.load.us = load double, double* %polly.access.call1652.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509654.us = add nuw nsw i64 %polly.indvar646.us, %polly.access.mul.Packed_MemRef_call1509.us
  %polly.access.Packed_MemRef_call1509655.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509654.us
  store double %polly.access.call1652.load.us, double* %polly.access.Packed_MemRef_call1509655.us, align 8
  %polly.indvar_next647.us = add nuw nsw i64 %polly.indvar646.us, 1
  %polly.loop_cond648.not.not.us = icmp slt i64 %polly.indvar646.us, %247
  br i1 %polly.loop_cond648.not.not.us, label %polly.loop_header642.us, label %polly.merge628.us

polly.merge628.us:                                ; preds = %polly.loop_header642.us, %polly.loop_header621.us
  %polly.indvar_next625.us = add nuw nsw i64 %polly.indvar624.us, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next625.us, 1000
  br i1 %exitcond1134.not, label %polly.loop_header671.preheader, label %polly.loop_header621.us

polly.loop_header615.split:                       ; preds = %polly.loop_header615
  %polly.loop_guard660 = icmp sgt i64 %244, -16
  br i1 %polly.loop_guard660, label %polly.loop_header621.us1020, label %polly.loop_header671.preheader

polly.loop_header621.us1020:                      ; preds = %polly.loop_header615.split, %polly.merge628.loopexit922.us1065
  %polly.indvar624.us1021 = phi i64 [ %polly.indvar_next625.us1057, %polly.merge628.loopexit922.us1065 ], [ 0, %polly.loop_header615.split ]
  %polly.access.mul.Packed_MemRef_call1509668.us1064 = mul nuw nsw i64 %polly.indvar624.us1021, 1200
  br label %polly.loop_header657.us1023

polly.loop_header657.us1023:                      ; preds = %polly.loop_header621.us1020, %polly.loop_header657.us1023
  %polly.indvar661.us1024 = phi i64 [ %polly.indvar_next662.us1031, %polly.loop_header657.us1023 ], [ 0, %polly.loop_header621.us1020 ]
  %249 = add nuw nsw i64 %polly.indvar661.us1024, %221
  %polly.access.mul.call1665.us1025 = mul nuw nsw i64 %249, 1000
  %polly.access.add.call1666.us1026 = add nuw nsw i64 %polly.access.mul.call1665.us1025, %polly.indvar624.us1021
  %polly.access.call1667.us1027 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us1026
  %polly.access.call1667.load.us1028 = load double, double* %polly.access.call1667.us1027, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509669.us1029 = add nuw nsw i64 %polly.indvar661.us1024, %polly.access.mul.Packed_MemRef_call1509668.us1064
  %polly.access.Packed_MemRef_call1509670.us1030 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509669.us1029
  store double %polly.access.call1667.load.us1028, double* %polly.access.Packed_MemRef_call1509670.us1030, align 8
  %polly.indvar_next662.us1031 = add nuw nsw i64 %polly.indvar661.us1024, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar661.us1024, %smax1130
  br i1 %exitcond1131.not, label %polly.merge628.loopexit922.us1065, label %polly.loop_header657.us1023

polly.merge628.loopexit922.us1065:                ; preds = %polly.loop_header657.us1023
  %polly.indvar_next625.us1057 = add nuw nsw i64 %polly.indvar624.us1021, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next625.us1057, 1000
  br i1 %exitcond1132.not, label %polly.loop_header671.preheader, label %polly.loop_header621.us1020

polly.loop_exit673:                               ; preds = %polly.loop_exit680.loopexit.us, %polly.loop_header671.preheader
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %polly.loop_cond620 = icmp ult i64 %polly.indvar618, 74
  %indvars.iv.next1129 = add i64 %indvars.iv1128, 16
  %indvars.iv.next1138 = add i64 %indvars.iv1137, -16
  %indvars.iv.next1143 = add i64 %indvars.iv1142, 16
  br i1 %polly.loop_cond620, label %polly.loop_header615, label %polly.loop_exit617

polly.loop_header671.preheader:                   ; preds = %polly.merge628.loopexit922.us1065, %polly.merge628.us, %polly.loop_header615.split
  %250 = sub nsw i64 %221, %243
  %251 = icmp sgt i64 %250, 0
  %252 = select i1 %251, i64 %250, i64 0
  %polly.loop_guard681 = icmp slt i64 %252, 16
  br i1 %polly.loop_guard681, label %polly.loop_header671.us, label %polly.loop_exit673

polly.loop_header671.us:                          ; preds = %polly.loop_header671.preheader, %polly.loop_exit680.loopexit.us
  %polly.indvar674.us = phi i64 [ %polly.indvar_next675.us, %polly.loop_exit680.loopexit.us ], [ 0, %polly.loop_header671.preheader ]
  %253 = shl nuw nsw i64 %polly.indvar674.us, 3
  %scevgep697.us = getelementptr i8, i8* %call2, i64 %253
  %polly.access.mul.Packed_MemRef_call1509693.us = mul nuw nsw i64 %polly.indvar674.us, 1200
  br label %polly.loop_header678.us

polly.loop_header678.us:                          ; preds = %polly.loop_exit688.us, %polly.loop_header671.us
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit688.us ], [ %241, %polly.loop_header671.us ]
  %polly.indvar682.us = phi i64 [ %polly.indvar_next683.us, %polly.loop_exit688.us ], [ %252, %polly.loop_header671.us ]
  %smin1146 = call i64 @llvm.smin.i64(i64 %indvars.iv1144, i64 19)
  %254 = add nuw i64 %polly.indvar682.us, %243
  %255 = add i64 %254, %220
  %polly.loop_guard689.us1188 = icmp sgt i64 %255, -1
  br i1 %polly.loop_guard689.us1188, label %polly.loop_header686.preheader.us, label %polly.loop_exit688.us

polly.loop_header686.us:                          ; preds = %polly.loop_header686.preheader.us, %polly.loop_header686.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_header686.us ], [ 0, %polly.loop_header686.preheader.us ]
  %256 = add nuw nsw i64 %polly.indvar690.us, %221
  %polly.access.add.Packed_MemRef_call1509694.us = add nuw nsw i64 %polly.indvar690.us, %polly.access.mul.Packed_MemRef_call1509693.us
  %polly.access.Packed_MemRef_call1509695.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1509695.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_700.us, %_p_scalar_696.us
  %257 = mul nuw nsw i64 %256, 8000
  %scevgep702.us = getelementptr i8, i8* %scevgep697.us, i64 %257
  %scevgep702703.us = bitcast i8* %scevgep702.us to double*
  %_p_scalar_704.us = load double, double* %scevgep702703.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %258 = shl i64 %256, 3
  %259 = add i64 %258, %261
  %scevgep709.us = getelementptr i8, i8* %call, i64 %259
  %scevgep709710.us = bitcast i8* %scevgep709.us to double*
  %_p_scalar_711.us = load double, double* %scevgep709710.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_711.us
  store double %p_add42.i.us, double* %scevgep709710.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar690.us, %smin1146
  br i1 %exitcond1147.not, label %polly.loop_exit688.us, label %polly.loop_header686.us

polly.loop_exit688.us:                            ; preds = %polly.loop_header686.us, %polly.loop_header678.us
  %polly.indvar_next683.us = add nuw nsw i64 %polly.indvar682.us, 1
  %polly.loop_cond684.us = icmp ult i64 %polly.indvar682.us, 15
  %indvars.iv.next1145 = add i64 %indvars.iv1144, 1
  br i1 %polly.loop_cond684.us, label %polly.loop_header678.us, label %polly.loop_exit680.loopexit.us

polly.loop_header686.preheader.us:                ; preds = %polly.loop_header678.us
  %260 = mul i64 %254, 8000
  %scevgep698.us = getelementptr i8, i8* %scevgep697.us, i64 %260
  %scevgep698699.us = bitcast i8* %scevgep698.us to double*
  %_p_scalar_700.us = load double, double* %scevgep698699.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1509706.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1509693.us, %255
  %polly.access.Packed_MemRef_call1509707.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call1509707.us, align 8
  %261 = mul i64 %254, 9600
  br label %polly.loop_header686.us

polly.loop_exit680.loopexit.us:                   ; preds = %polly.loop_exit688.us
  %polly.indvar_next675.us = add nuw nsw i64 %polly.indvar674.us, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar_next675.us, 1000
  br i1 %exitcond1148.not, label %polly.loop_exit673, label %polly.loop_header671.us

polly.loop_header838:                             ; preds = %entry, %polly.loop_exit846
  %indvars.iv1176 = phi i64 [ %indvars.iv.next1177, %polly.loop_exit846 ], [ 0, %entry ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %entry ]
  %smin1178 = call i64 @llvm.smin.i64(i64 %indvars.iv1176, i64 -1168)
  %262 = shl nsw i64 %polly.indvar841, 5
  %263 = add nsw i64 %smin1178, 1199
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1177 = add nsw i64 %indvars.iv1176, -32
  %exitcond1181.not = icmp eq i64 %polly.indvar_next842, 38
  br i1 %exitcond1181.not, label %polly.loop_header865, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %264 = mul nsw i64 %polly.indvar847, -32
  %smin1216 = call i64 @llvm.smin.i64(i64 %264, i64 -1168)
  %265 = add nsw i64 %smin1216, 1200
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1172, i64 -1168)
  %266 = shl nsw i64 %polly.indvar847, 5
  %267 = add nsw i64 %smin1174, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1173 = add nsw i64 %indvars.iv1172, -32
  %exitcond1180.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1180.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %polly.indvar853 = phi i64 [ 0, %polly.loop_header844 ], [ %polly.indvar_next854, %polly.loop_exit858 ]
  %268 = add nuw nsw i64 %polly.indvar853, %262
  %269 = trunc i64 %268 to i32
  %270 = mul nuw nsw i64 %268, 9600
  %min.iters.check = icmp eq i64 %265, 0
  br i1 %min.iters.check, label %polly.loop_header856, label %vector.ph1217

vector.ph1217:                                    ; preds = %polly.loop_header850
  %broadcast.splatinsert1224 = insertelement <4 x i64> poison, i64 %266, i32 0
  %broadcast.splat1225 = shufflevector <4 x i64> %broadcast.splatinsert1224, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1226 = insertelement <4 x i32> poison, i32 %269, i32 0
  %broadcast.splat1227 = shufflevector <4 x i32> %broadcast.splatinsert1226, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1217
  %index1218 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1219, %vector.body1215 ]
  %vec.ind1222 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1217 ], [ %vec.ind.next1223, %vector.body1215 ]
  %271 = add nuw nsw <4 x i64> %vec.ind1222, %broadcast.splat1225
  %272 = trunc <4 x i64> %271 to <4 x i32>
  %273 = mul <4 x i32> %broadcast.splat1227, %272
  %274 = add <4 x i32> %273, <i32 3, i32 3, i32 3, i32 3>
  %275 = urem <4 x i32> %274, <i32 1200, i32 1200, i32 1200, i32 1200>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %278 = extractelement <4 x i64> %271, i32 0
  %279 = shl i64 %278, 3
  %280 = add nuw nsw i64 %279, %270
  %281 = getelementptr i8, i8* %call, i64 %280
  %282 = bitcast i8* %281 to <4 x double>*
  store <4 x double> %277, <4 x double>* %282, align 8, !alias.scope !99, !noalias !101
  %index.next1219 = add i64 %index1218, 4
  %vec.ind.next1223 = add <4 x i64> %vec.ind1222, <i64 4, i64 4, i64 4, i64 4>
  %283 = icmp eq i64 %index.next1219, %265
  br i1 %283, label %polly.loop_exit858, label %vector.body1215, !llvm.loop !104

polly.loop_exit858:                               ; preds = %vector.body1215, %polly.loop_header856
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1179.not = icmp eq i64 %polly.indvar853, %263
  br i1 %exitcond1179.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_header850, %polly.loop_header856
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_header856 ], [ 0, %polly.loop_header850 ]
  %284 = add nuw nsw i64 %polly.indvar859, %266
  %285 = trunc i64 %284 to i32
  %286 = mul i32 %285, %269
  %287 = add i32 %286, 3
  %288 = urem i32 %287, 1200
  %p_conv31.i = sitofp i32 %288 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %289 = shl i64 %284, 3
  %290 = add nuw nsw i64 %289, %270
  %scevgep862 = getelementptr i8, i8* %call, i64 %290
  %scevgep862863 = bitcast i8* %scevgep862 to double*
  store double %p_div33.i, double* %scevgep862863, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar859, %267
  br i1 %exitcond1175.not, label %polly.loop_exit858, label %polly.loop_header856, !llvm.loop !105

polly.loop_header865:                             ; preds = %polly.loop_exit846, %polly.loop_exit873
  %indvars.iv1166 = phi i64 [ %indvars.iv.next1167, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %polly.indvar868 = phi i64 [ %polly.indvar_next869, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %smin1168 = call i64 @llvm.smin.i64(i64 %indvars.iv1166, i64 -1168)
  %291 = shl nsw i64 %polly.indvar868, 5
  %292 = add nsw i64 %smin1168, 1199
  br label %polly.loop_header871

polly.loop_exit873:                               ; preds = %polly.loop_exit879
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %indvars.iv.next1167 = add nsw i64 %indvars.iv1166, -32
  %exitcond1171.not = icmp eq i64 %polly.indvar_next869, 38
  br i1 %exitcond1171.not, label %polly.loop_header891, label %polly.loop_header865

polly.loop_header871:                             ; preds = %polly.loop_exit879, %polly.loop_header865
  %indvars.iv1162 = phi i64 [ %indvars.iv.next1163, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %293 = mul nsw i64 %polly.indvar874, -32
  %smin1231 = call i64 @llvm.smin.i64(i64 %293, i64 -968)
  %294 = add nsw i64 %smin1231, 1000
  %smin1164 = call i64 @llvm.smin.i64(i64 %indvars.iv1162, i64 -968)
  %295 = shl nsw i64 %polly.indvar874, 5
  %296 = add nsw i64 %smin1164, 999
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1163 = add nsw i64 %indvars.iv1162, -32
  %exitcond1170.not = icmp eq i64 %polly.indvar_next875, 32
  br i1 %exitcond1170.not, label %polly.loop_exit873, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %polly.indvar880 = phi i64 [ 0, %polly.loop_header871 ], [ %polly.indvar_next881, %polly.loop_exit885 ]
  %297 = add nuw nsw i64 %polly.indvar880, %291
  %298 = trunc i64 %297 to i32
  %299 = mul nuw nsw i64 %297, 8000
  %min.iters.check1232 = icmp eq i64 %294, 0
  br i1 %min.iters.check1232, label %polly.loop_header883, label %vector.ph1233

vector.ph1233:                                    ; preds = %polly.loop_header877
  %broadcast.splatinsert1242 = insertelement <4 x i64> poison, i64 %295, i32 0
  %broadcast.splat1243 = shufflevector <4 x i64> %broadcast.splatinsert1242, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1244 = insertelement <4 x i32> poison, i32 %298, i32 0
  %broadcast.splat1245 = shufflevector <4 x i32> %broadcast.splatinsert1244, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1230 ]
  %vec.ind1240 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1233 ], [ %vec.ind.next1241, %vector.body1230 ]
  %300 = add nuw nsw <4 x i64> %vec.ind1240, %broadcast.splat1243
  %301 = trunc <4 x i64> %300 to <4 x i32>
  %302 = mul <4 x i32> %broadcast.splat1245, %301
  %303 = add <4 x i32> %302, <i32 2, i32 2, i32 2, i32 2>
  %304 = urem <4 x i32> %303, <i32 1000, i32 1000, i32 1000, i32 1000>
  %305 = sitofp <4 x i32> %304 to <4 x double>
  %306 = fmul fast <4 x double> %305, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %307 = extractelement <4 x i64> %300, i32 0
  %308 = shl i64 %307, 3
  %309 = add nuw nsw i64 %308, %299
  %310 = getelementptr i8, i8* %call2, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %306, <4 x double>* %311, align 8, !alias.scope !103, !noalias !106
  %index.next1237 = add i64 %index1236, 4
  %vec.ind.next1241 = add <4 x i64> %vec.ind1240, <i64 4, i64 4, i64 4, i64 4>
  %312 = icmp eq i64 %index.next1237, %294
  br i1 %312, label %polly.loop_exit885, label %vector.body1230, !llvm.loop !107

polly.loop_exit885:                               ; preds = %vector.body1230, %polly.loop_header883
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar880, %292
  br i1 %exitcond1169.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_header877, %polly.loop_header883
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_header883 ], [ 0, %polly.loop_header877 ]
  %313 = add nuw nsw i64 %polly.indvar886, %295
  %314 = trunc i64 %313 to i32
  %315 = mul i32 %314, %298
  %316 = add i32 %315, 2
  %317 = urem i32 %316, 1000
  %p_conv10.i = sitofp i32 %317 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %318 = shl i64 %313, 3
  %319 = add nuw nsw i64 %318, %299
  %scevgep889 = getelementptr i8, i8* %call2, i64 %319
  %scevgep889890 = bitcast i8* %scevgep889 to double*
  store double %p_div12.i, double* %scevgep889890, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar886, %296
  br i1 %exitcond1165.not, label %polly.loop_exit885, label %polly.loop_header883, !llvm.loop !108

polly.loop_header891:                             ; preds = %polly.loop_exit873, %polly.loop_exit899
  %indvars.iv1156 = phi i64 [ %indvars.iv.next1157, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %smin1158 = call i64 @llvm.smin.i64(i64 %indvars.iv1156, i64 -1168)
  %320 = shl nsw i64 %polly.indvar894, 5
  %321 = add nsw i64 %smin1158, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1157 = add nsw i64 %indvars.iv1156, -32
  %exitcond1161.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1161.not, label %init_array.exit, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1152 = phi i64 [ %indvars.iv.next1153, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %322 = mul nsw i64 %polly.indvar900, -32
  %smin1249 = call i64 @llvm.smin.i64(i64 %322, i64 -968)
  %323 = add nsw i64 %smin1249, 1000
  %smin1154 = call i64 @llvm.smin.i64(i64 %indvars.iv1152, i64 -968)
  %324 = shl nsw i64 %polly.indvar900, 5
  %325 = add nsw i64 %smin1154, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1153 = add nsw i64 %indvars.iv1152, -32
  %exitcond1160.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1160.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %326 = add nuw nsw i64 %polly.indvar906, %320
  %327 = trunc i64 %326 to i32
  %328 = mul nuw nsw i64 %326, 8000
  %min.iters.check1250 = icmp eq i64 %323, 0
  br i1 %min.iters.check1250, label %polly.loop_header909, label %vector.ph1251

vector.ph1251:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1260 = insertelement <4 x i64> poison, i64 %324, i32 0
  %broadcast.splat1261 = shufflevector <4 x i64> %broadcast.splatinsert1260, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %327, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1248 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1251 ], [ %vec.ind.next1259, %vector.body1248 ]
  %329 = add nuw nsw <4 x i64> %vec.ind1258, %broadcast.splat1261
  %330 = trunc <4 x i64> %329 to <4 x i32>
  %331 = mul <4 x i32> %broadcast.splat1263, %330
  %332 = add <4 x i32> %331, <i32 1, i32 1, i32 1, i32 1>
  %333 = urem <4 x i32> %332, <i32 1200, i32 1200, i32 1200, i32 1200>
  %334 = sitofp <4 x i32> %333 to <4 x double>
  %335 = fmul fast <4 x double> %334, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %336 = extractelement <4 x i64> %329, i32 0
  %337 = shl i64 %336, 3
  %338 = add nuw nsw i64 %337, %328
  %339 = getelementptr i8, i8* %call1, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %335, <4 x double>* %340, align 8, !alias.scope !102, !noalias !109
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %341 = icmp eq i64 %index.next1255, %323
  br i1 %341, label %polly.loop_exit911, label %vector.body1248, !llvm.loop !110

polly.loop_exit911:                               ; preds = %vector.body1248, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1159.not = icmp eq i64 %polly.indvar906, %321
  br i1 %exitcond1159.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %342 = add nuw nsw i64 %polly.indvar912, %324
  %343 = trunc i64 %342 to i32
  %344 = mul i32 %343, %327
  %345 = add i32 %344, 1
  %346 = urem i32 %345, 1200
  %p_conv.i = sitofp i32 %346 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %347 = shl i64 %342, 3
  %348 = add nuw nsw i64 %347, %328
  %scevgep916 = getelementptr i8, i8* %call1, i64 %348
  %scevgep916917 = bitcast i8* %scevgep916 to double*
  store double %p_div.i, double* %scevgep916917, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar912, %325
  br i1 %exitcond1155.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
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
!50 = !{!"llvm.loop.tile.size", i32 16}
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
