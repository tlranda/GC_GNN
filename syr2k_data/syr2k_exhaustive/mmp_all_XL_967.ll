; ModuleID = 'syr2k_exhaustive/mmp_all_XL_967.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_967.c"
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
  %call927 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1779 = bitcast i8* %call1 to double*
  %polly.access.call1788 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2789 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1788, %call2
  %polly.access.call2808 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2808, %call1
  %2 = or i1 %0, %1
  %polly.access.call828 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call828, %call2
  %4 = icmp ule i8* %polly.access.call2808, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call828, %call1
  %8 = icmp ule i8* %polly.access.call1788, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header901, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1167 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1166 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1165 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1164 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1164, %scevgep1167
  %bound1 = icmp ult i8* %scevgep1166, %scevgep1165
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
  br i1 %exitcond18.not.i, label %vector.ph1171, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1171:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1178 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1179 = shufflevector <4 x i64> %broadcast.splatinsert1178, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %vector.ph1171
  %index1172 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1173, %vector.body1170 ]
  %vec.ind1176 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1171 ], [ %vec.ind.next1177, %vector.body1170 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1176, %broadcast.splat1179
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call927, i64 %indvars.iv7.i, i64 %index1172
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1177 = add <4 x i64> %vec.ind1176, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1173, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1170, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1170
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1171, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit962
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start548, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1234 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1234, label %for.body3.i46.preheader1392, label %vector.ph1235

vector.ph1235:                                    ; preds = %for.body3.i46.preheader
  %n.vec1237 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1235
  %index1238 = phi i64 [ 0, %vector.ph1235 ], [ %index.next1239, %vector.body1233 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call927, i64 %indvars.iv21.i, i64 %index1238
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1239 = add i64 %index1238, 4
  %46 = icmp eq i64 %index.next1239, %n.vec1237
  br i1 %46, label %middle.block1231, label %vector.body1233, !llvm.loop !18

middle.block1231:                                 ; preds = %vector.body1233
  %cmp.n1241 = icmp eq i64 %indvars.iv21.i, %n.vec1237
  br i1 %cmp.n1241, label %for.inc6.i, label %for.body3.i46.preheader1392

for.body3.i46.preheader1392:                      ; preds = %for.body3.i46.preheader, %middle.block1231
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1237, %middle.block1231 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1392, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1392 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call927, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1231, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call927, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting549
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start319, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1281 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1281, label %for.body3.i60.preheader1387, label %vector.ph1282

vector.ph1282:                                    ; preds = %for.body3.i60.preheader
  %n.vec1284 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %vector.ph1282
  %index1285 = phi i64 [ 0, %vector.ph1282 ], [ %index.next1286, %vector.body1280 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call927, i64 %indvars.iv21.i52, i64 %index1285
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1289, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1286 = add i64 %index1285, 4
  %57 = icmp eq i64 %index.next1286, %n.vec1284
  br i1 %57, label %middle.block1278, label %vector.body1280, !llvm.loop !64

middle.block1278:                                 ; preds = %vector.body1280
  %cmp.n1288 = icmp eq i64 %indvars.iv21.i52, %n.vec1284
  br i1 %cmp.n1288, label %for.inc6.i63, label %for.body3.i60.preheader1387

for.body3.i60.preheader1387:                      ; preds = %for.body3.i60.preheader, %middle.block1278
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1284, %middle.block1278 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1387, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1387 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call927, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1278, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call927, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting320
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1331 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1331, label %for.body3.i99.preheader1382, label %vector.ph1332

vector.ph1332:                                    ; preds = %for.body3.i99.preheader
  %n.vec1334 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1332
  %index1335 = phi i64 [ 0, %vector.ph1332 ], [ %index.next1336, %vector.body1330 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call927, i64 %indvars.iv21.i91, i64 %index1335
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1339, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1336 = add i64 %index1335, 4
  %68 = icmp eq i64 %index.next1336, %n.vec1334
  br i1 %68, label %middle.block1328, label %vector.body1330, !llvm.loop !66

middle.block1328:                                 ; preds = %vector.body1330
  %cmp.n1338 = icmp eq i64 %indvars.iv21.i91, %n.vec1334
  br i1 %cmp.n1338, label %for.inc6.i102, label %for.body3.i99.preheader1382

for.body3.i99.preheader1382:                      ; preds = %for.body3.i99.preheader, %middle.block1328
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1334, %middle.block1328 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1382, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1382 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call927, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1328, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call927, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call927, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1343 = phi i64 [ %indvar.next1344, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1343, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1345 = icmp ult i64 %88, 4
  br i1 %min.iters.check1345, label %polly.loop_header192.preheader, label %vector.ph1346

vector.ph1346:                                    ; preds = %polly.loop_header
  %n.vec1348 = and i64 %88, -4
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1346
  %index1349 = phi i64 [ 0, %vector.ph1346 ], [ %index.next1350, %vector.body1342 ]
  %90 = shl nuw nsw i64 %index1349, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1353 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1353, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1350 = add i64 %index1349, 4
  %95 = icmp eq i64 %index.next1350, %n.vec1348
  br i1 %95, label %middle.block1340, label %vector.body1342, !llvm.loop !79

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1352 = icmp eq i64 %88, %n.vec1348
  br i1 %cmp.n1352, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1340
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1348, %middle.block1340 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1340
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1344 = add i64 %indvar1343, 1
  br i1 %exitcond1035.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1034.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1034.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1024 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1025, %polly.loop_exit224 ]
  %indvars.iv1020 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1021, %polly.loop_exit224 ]
  %indvars.iv1012 = phi i64 [ 80, %polly.loop_header200.preheader ], [ %indvars.iv.next1013, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = shl nuw nsw i64 %polly.indvar203, 4
  %98 = mul nsw i64 %polly.indvar203, -16
  %99 = shl nsw i64 %polly.indvar203, 8
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %100 = mul nsw i64 %polly.indvar203, -256
  %101 = mul nuw nsw i64 %polly.indvar203, 3
  %102 = shl nsw i64 %polly.indvar203, 4
  %103 = or i64 %102, 1
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit280
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, -16
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 16
  %indvars.iv.next1025 = add nsw i64 %indvars.iv1024, -16
  %exitcond1033.not = icmp eq i64 %polly.indvar_next204, 5
  br i1 %exitcond1033.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1009.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %104 = add nuw nsw i64 %polly.indvar215, %99
  %polly.access.mul.call2219 = mul nuw nsw i64 %104, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2789, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit280, %polly.loop_exit208
  %indvar1357 = phi i64 [ %indvar.next1358, %polly.loop_exit280 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1026 = phi i64 [ %indvars.iv.next1027, %polly.loop_exit280 ], [ %indvars.iv1024, %polly.loop_exit208 ]
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %polly.loop_exit280 ], [ %indvars.iv1020, %polly.loop_exit208 ]
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit280 ], [ %indvars.iv1012, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit280 ], [ %101, %polly.loop_exit208 ]
  %105 = mul nsw i64 %indvar1357, -80
  %106 = add i64 %97, %105
  %smax1359 = call i64 @llvm.smax.i64(i64 %106, i64 0)
  %107 = mul nuw nsw i64 %indvar1357, 80
  %108 = add i64 %98, %107
  %109 = add i64 %smax1359, %108
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1022, i64 0)
  %110 = add i64 %smax, %indvars.iv1026
  %111 = mul nuw nsw i64 %polly.indvar225, 5
  %.not = icmp ult i64 %111, %103
  br i1 %.not, label %polly.loop_header259, label %polly.loop_header228.preheader

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %112 = mul nuw nsw i64 %polly.indvar225, 80
  %113 = add nsw i64 %112, %100
  %114 = add nsw i64 %113, -1
  %.inv = icmp sgt i64 %113, 255
  %115 = select i1 %.inv, i64 255, i64 %114
  %polly.loop_guard = icmp sgt i64 %115, -1
  %116 = add nsw i64 %113, 79
  br i1 %polly.loop_guard, label %polly.loop_header228.us, label %polly.loop_header228

polly.loop_header228.us:                          ; preds = %polly.loop_header228.preheader, %polly.loop_exit247.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit247.us ], [ 0, %polly.loop_header228.preheader ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %117 = add nuw nsw i64 %polly.indvar237.us, %99
  %polly.access.mul.call1241.us = mul nuw nsw i64 %117, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw i64 %polly.indvar237.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar237.us, %115
  br i1 %exitcond1011.not, label %polly.loop_header245.us, label %polly.loop_header234.us

polly.loop_header245.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header245.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header245.us ], [ %113, %polly.loop_header234.us ]
  %118 = add nsw i64 %polly.indvar249.us, %99
  %polly.access.mul.call1253.us = mul nuw nsw i64 %118, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us = add nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %polly.indvar_next250.us = add nsw i64 %polly.indvar249.us, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next250.us, %indvars.iv1014
  br i1 %exitcond1016.not, label %polly.loop_exit247.us, label %polly.loop_header245.us

polly.loop_exit247.us:                            ; preds = %polly.loop_header245.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1017.not, label %polly.loop_preheader279, label %polly.loop_header228.us

polly.loop_exit280:                               ; preds = %polly.loop_exit286
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1015 = add nuw nsw i64 %indvars.iv1014, 80
  %indvars.iv.next1023 = add nsw i64 %indvars.iv1022, -80
  %indvars.iv.next1027 = add nsw i64 %indvars.iv1026, 80
  %exitcond1032.not = icmp eq i64 %polly.indvar_next226, 15
  %indvar.next1358 = add i64 %indvar1357, 1
  br i1 %exitcond1032.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit247
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit247 ], [ 0, %polly.loop_header228.preheader ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1010.not, label %polly.loop_preheader279, label %polly.loop_header228

polly.loop_header245:                             ; preds = %polly.loop_header228, %polly.loop_header245
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_header245 ], [ %113, %polly.loop_header228 ]
  %119 = add nsw i64 %polly.indvar249, %99
  %polly.access.mul.call1253 = mul nuw nsw i64 %119, 1000
  %polly.access.add.call1254 = add nuw nsw i64 %polly.access.mul.call1253, %polly.indvar231
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257 = add nsw i64 %polly.indvar249, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next250 = add nsw i64 %polly.indvar249, 1
  %polly.loop_cond251.not.not = icmp slt i64 %polly.indvar249, %116
  br i1 %polly.loop_cond251.not.not, label %polly.loop_header245, label %polly.loop_exit247

polly.loop_header259:                             ; preds = %polly.loop_header222, %polly.loop_exit267
  %polly.indvar262 = phi i64 [ %polly.indvar_next263, %polly.loop_exit267 ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1275 = mul nuw nsw i64 %polly.indvar262, 1200
  br label %polly.loop_header265

polly.loop_exit267:                               ; preds = %polly.loop_header265
  %polly.indvar_next263 = add nuw nsw i64 %polly.indvar262, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next263, 1000
  br i1 %exitcond1019.not, label %polly.loop_preheader279.loopexit, label %polly.loop_header259

polly.loop_header265:                             ; preds = %polly.loop_header265, %polly.loop_header259
  %polly.indvar268 = phi i64 [ 0, %polly.loop_header259 ], [ %polly.indvar_next269, %polly.loop_header265 ]
  %120 = add nuw nsw i64 %polly.indvar268, %99
  %polly.access.mul.call1272 = mul nuw nsw i64 %120, 1000
  %polly.access.add.call1273 = add nuw nsw i64 %polly.access.mul.call1272, %polly.indvar262
  %polly.access.call1274 = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1273
  %polly.access.call1274.load = load double, double* %polly.access.call1274, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1276 = add nuw nsw i64 %polly.indvar268, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276
  store double %polly.access.call1274.load, double* %polly.access.Packed_MemRef_call1277, align 8
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next269, %indvars.iv1012
  br i1 %exitcond1018.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header278:                             ; preds = %polly.loop_exit286, %polly.loop_preheader279
  %polly.indvar281 = phi i64 [ 0, %polly.loop_preheader279 ], [ %polly.indvar_next282, %polly.loop_exit286 ]
  %polly.access.mul.Packed_MemRef_call1298 = mul nuw nsw i64 %polly.indvar281, 1200
  br label %polly.loop_header284

polly.loop_exit286:                               ; preds = %polly.loop_exit293
  %polly.indvar_next282 = add nuw nsw i64 %polly.indvar281, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next282, 1000
  br i1 %exitcond1031.not, label %polly.loop_exit280, label %polly.loop_header278

polly.loop_preheader279.loopexit:                 ; preds = %polly.loop_exit267
  %.pre1142 = mul nuw nsw i64 %polly.indvar225, 80
  br label %polly.loop_preheader279

polly.loop_preheader279:                          ; preds = %polly.loop_exit247, %polly.loop_exit247.us, %polly.loop_preheader279.loopexit
  %.pre-phi1143 = phi i64 [ %.pre1142, %polly.loop_preheader279.loopexit ], [ %112, %polly.loop_exit247.us ], [ %112, %polly.loop_exit247 ]
  %121 = sub nsw i64 %99, %.pre-phi1143
  %122 = icmp sgt i64 %121, 0
  %123 = select i1 %122, i64 %121, i64 0
  br label %polly.loop_header278

polly.loop_header284:                             ; preds = %polly.loop_exit293, %polly.loop_header278
  %indvar1360 = phi i64 [ %indvar.next1361, %polly.loop_exit293 ], [ 0, %polly.loop_header278 ]
  %indvars.iv1028 = phi i64 [ %indvars.iv.next1029, %polly.loop_exit293 ], [ %110, %polly.loop_header278 ]
  %polly.indvar287 = phi i64 [ %polly.indvar_next288, %polly.loop_exit293 ], [ %123, %polly.loop_header278 ]
  %124 = add i64 %109, %indvar1360
  %smin1362 = call i64 @llvm.smin.i64(i64 %124, i64 255)
  %125 = add nsw i64 %smin1362, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1028, i64 255)
  %126 = add nuw i64 %polly.indvar287, %.pre-phi1143
  %127 = add i64 %126, %100
  %polly.loop_guard2941144 = icmp sgt i64 %127, -1
  br i1 %polly.loop_guard2941144, label %polly.loop_header291.preheader, label %polly.loop_exit293

polly.loop_header291.preheader:                   ; preds = %polly.loop_header284
  %polly.access.add.Packed_MemRef_call2303 = add nsw i64 %polly.access.mul.Packed_MemRef_call1298, %127
  %polly.access.Packed_MemRef_call2304 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2303
  %_p_scalar_305 = load double, double* %polly.access.Packed_MemRef_call2304, align 8
  %polly.access.Packed_MemRef_call1312 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2303
  %_p_scalar_313 = load double, double* %polly.access.Packed_MemRef_call1312, align 8
  %128 = mul i64 %126, 9600
  %min.iters.check1363 = icmp ult i64 %125, 4
  br i1 %min.iters.check1363, label %polly.loop_header291.preheader1378, label %vector.ph1364

vector.ph1364:                                    ; preds = %polly.loop_header291.preheader
  %n.vec1366 = and i64 %125, -4
  %broadcast.splatinsert1372 = insertelement <4 x double> poison, double %_p_scalar_305, i32 0
  %broadcast.splat1373 = shufflevector <4 x double> %broadcast.splatinsert1372, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1375 = insertelement <4 x double> poison, double %_p_scalar_313, i32 0
  %broadcast.splat1376 = shufflevector <4 x double> %broadcast.splatinsert1375, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1368, %vector.body1356 ]
  %129 = add nuw nsw i64 %index1367, %99
  %130 = add nuw nsw i64 %index1367, %polly.access.mul.Packed_MemRef_call1298
  %131 = getelementptr double, double* %Packed_MemRef_call1, i64 %130
  %132 = bitcast double* %131 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %132, align 8
  %133 = fmul fast <4 x double> %broadcast.splat1373, %wide.load1371
  %134 = getelementptr double, double* %Packed_MemRef_call2, i64 %130
  %135 = bitcast double* %134 to <4 x double>*
  %wide.load1374 = load <4 x double>, <4 x double>* %135, align 8
  %136 = fmul fast <4 x double> %broadcast.splat1376, %wide.load1374
  %137 = shl i64 %129, 3
  %138 = add i64 %137, %128
  %139 = getelementptr i8, i8* %call, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1377 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !72, !noalias !74
  %141 = fadd fast <4 x double> %136, %133
  %142 = fmul fast <4 x double> %141, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %143 = fadd fast <4 x double> %142, %wide.load1377
  %144 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %143, <4 x double>* %144, align 8, !alias.scope !72, !noalias !74
  %index.next1368 = add i64 %index1367, 4
  %145 = icmp eq i64 %index.next1368, %n.vec1366
  br i1 %145, label %middle.block1354, label %vector.body1356, !llvm.loop !84

middle.block1354:                                 ; preds = %vector.body1356
  %cmp.n1370 = icmp eq i64 %125, %n.vec1366
  br i1 %cmp.n1370, label %polly.loop_exit293, label %polly.loop_header291.preheader1378

polly.loop_header291.preheader1378:               ; preds = %polly.loop_header291.preheader, %middle.block1354
  %polly.indvar295.ph = phi i64 [ 0, %polly.loop_header291.preheader ], [ %n.vec1366, %middle.block1354 ]
  br label %polly.loop_header291

polly.loop_exit293:                               ; preds = %polly.loop_header291, %middle.block1354, %polly.loop_header284
  %polly.indvar_next288 = add nuw nsw i64 %polly.indvar287, 1
  %polly.loop_cond289 = icmp ult i64 %polly.indvar287, 79
  %indvars.iv.next1029 = add i64 %indvars.iv1028, 1
  %indvar.next1361 = add i64 %indvar1360, 1
  br i1 %polly.loop_cond289, label %polly.loop_header284, label %polly.loop_exit286

polly.loop_header291:                             ; preds = %polly.loop_header291.preheader1378, %polly.loop_header291
  %polly.indvar295 = phi i64 [ %polly.indvar_next296, %polly.loop_header291 ], [ %polly.indvar295.ph, %polly.loop_header291.preheader1378 ]
  %146 = add nuw nsw i64 %polly.indvar295, %99
  %polly.access.add.Packed_MemRef_call1299 = add nuw nsw i64 %polly.indvar295, %polly.access.mul.Packed_MemRef_call1298
  %polly.access.Packed_MemRef_call1300 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1299
  %_p_scalar_301 = load double, double* %polly.access.Packed_MemRef_call1300, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_305, %_p_scalar_301
  %polly.access.Packed_MemRef_call2308 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1299
  %_p_scalar_309 = load double, double* %polly.access.Packed_MemRef_call2308, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_313, %_p_scalar_309
  %147 = shl i64 %146, 3
  %148 = add i64 %147, %128
  %scevgep314 = getelementptr i8, i8* %call, i64 %148
  %scevgep314315 = bitcast i8* %scevgep314 to double*
  %_p_scalar_316 = load double, double* %scevgep314315, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_316
  store double %p_add42.i118, double* %scevgep314315, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next296 = add nuw nsw i64 %polly.indvar295, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar295, %smin
  br i1 %exitcond1030.not, label %polly.loop_exit293, label %polly.loop_header291, !llvm.loop !85

polly.start319:                                   ; preds = %kernel_syr2k.exit
  %malloccall321 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall323 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header407

polly.exiting320:                                 ; preds = %polly.loop_exit447
  tail call void @free(i8* %malloccall321)
  tail call void @free(i8* %malloccall323)
  br label %kernel_syr2k.exit90

polly.loop_header407:                             ; preds = %polly.loop_exit415, %polly.start319
  %indvar1293 = phi i64 [ %indvar.next1294, %polly.loop_exit415 ], [ 0, %polly.start319 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit415 ], [ 1, %polly.start319 ]
  %149 = add i64 %indvar1293, 1
  %150 = mul nuw nsw i64 %polly.indvar410, 9600
  %scevgep419 = getelementptr i8, i8* %call, i64 %150
  %min.iters.check1295 = icmp ult i64 %149, 4
  br i1 %min.iters.check1295, label %polly.loop_header413.preheader, label %vector.ph1296

vector.ph1296:                                    ; preds = %polly.loop_header407
  %n.vec1298 = and i64 %149, -4
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %vector.ph1296
  %index1299 = phi i64 [ 0, %vector.ph1296 ], [ %index.next1300, %vector.body1292 ]
  %151 = shl nuw nsw i64 %index1299, 3
  %152 = getelementptr i8, i8* %scevgep419, i64 %151
  %153 = bitcast i8* %152 to <4 x double>*
  %wide.load1303 = load <4 x double>, <4 x double>* %153, align 8, !alias.scope !86, !noalias !88
  %154 = fmul fast <4 x double> %wide.load1303, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %155 = bitcast i8* %152 to <4 x double>*
  store <4 x double> %154, <4 x double>* %155, align 8, !alias.scope !86, !noalias !88
  %index.next1300 = add i64 %index1299, 4
  %156 = icmp eq i64 %index.next1300, %n.vec1298
  br i1 %156, label %middle.block1290, label %vector.body1292, !llvm.loop !93

middle.block1290:                                 ; preds = %vector.body1292
  %cmp.n1302 = icmp eq i64 %149, %n.vec1298
  br i1 %cmp.n1302, label %polly.loop_exit415, label %polly.loop_header413.preheader

polly.loop_header413.preheader:                   ; preds = %polly.loop_header407, %middle.block1290
  %polly.indvar416.ph = phi i64 [ 0, %polly.loop_header407 ], [ %n.vec1298, %middle.block1290 ]
  br label %polly.loop_header413

polly.loop_exit415:                               ; preds = %polly.loop_header413, %middle.block1290
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next411, 1200
  %indvar.next1294 = add i64 %indvar1293, 1
  br i1 %exitcond1067.not, label %polly.loop_header423.preheader, label %polly.loop_header407

polly.loop_header423.preheader:                   ; preds = %polly.loop_exit415
  %Packed_MemRef_call1322 = bitcast i8* %malloccall321 to double*
  %Packed_MemRef_call2324 = bitcast i8* %malloccall323 to double*
  br label %polly.loop_header423

polly.loop_header413:                             ; preds = %polly.loop_header413.preheader, %polly.loop_header413
  %polly.indvar416 = phi i64 [ %polly.indvar_next417, %polly.loop_header413 ], [ %polly.indvar416.ph, %polly.loop_header413.preheader ]
  %157 = shl nuw nsw i64 %polly.indvar416, 3
  %scevgep420 = getelementptr i8, i8* %scevgep419, i64 %157
  %scevgep420421 = bitcast i8* %scevgep420 to double*
  %_p_scalar_422 = load double, double* %scevgep420421, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_422, 1.200000e+00
  store double %p_mul.i57, double* %scevgep420421, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next417 = add nuw nsw i64 %polly.indvar416, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next417, %polly.indvar410
  br i1 %exitcond1066.not, label %polly.loop_exit415, label %polly.loop_header413, !llvm.loop !94

polly.loop_header423:                             ; preds = %polly.loop_header423.preheader, %polly.loop_exit447
  %indvars.iv1055 = phi i64 [ 0, %polly.loop_header423.preheader ], [ %indvars.iv.next1056, %polly.loop_exit447 ]
  %indvars.iv1050 = phi i64 [ 0, %polly.loop_header423.preheader ], [ %indvars.iv.next1051, %polly.loop_exit447 ]
  %indvars.iv1042 = phi i64 [ 80, %polly.loop_header423.preheader ], [ %indvars.iv.next1043, %polly.loop_exit447 ]
  %indvars.iv1036 = phi i64 [ 1200, %polly.loop_header423.preheader ], [ %indvars.iv.next1037, %polly.loop_exit447 ]
  %polly.indvar426 = phi i64 [ 0, %polly.loop_header423.preheader ], [ %polly.indvar_next427, %polly.loop_exit447 ]
  %158 = shl nuw nsw i64 %polly.indvar426, 4
  %159 = mul nsw i64 %polly.indvar426, -16
  %160 = shl nsw i64 %polly.indvar426, 8
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_exit437
  %161 = mul nsw i64 %polly.indvar426, -256
  %162 = mul nuw nsw i64 %polly.indvar426, 3
  %163 = shl nsw i64 %polly.indvar426, 4
  %164 = or i64 %163, 1
  br label %polly.loop_header445

polly.loop_exit447:                               ; preds = %polly.loop_exit509
  %polly.indvar_next427 = add nuw nsw i64 %polly.indvar426, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -256
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -16
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, 16
  %indvars.iv.next1056 = add nsw i64 %indvars.iv1055, -16
  %exitcond1065.not = icmp eq i64 %polly.indvar_next427, 5
  br i1 %exitcond1065.not, label %polly.exiting320, label %polly.loop_header423

polly.loop_header429:                             ; preds = %polly.loop_exit437, %polly.loop_header423
  %polly.indvar432 = phi i64 [ 0, %polly.loop_header423 ], [ %polly.indvar_next433, %polly.loop_exit437 ]
  %polly.access.mul.Packed_MemRef_call2324 = mul nuw nsw i64 %polly.indvar432, 1200
  br label %polly.loop_header435

polly.loop_exit437:                               ; preds = %polly.loop_header435
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next433, 1000
  br i1 %exitcond1039.not, label %polly.loop_exit431, label %polly.loop_header429

polly.loop_header435:                             ; preds = %polly.loop_header435, %polly.loop_header429
  %polly.indvar438 = phi i64 [ 0, %polly.loop_header429 ], [ %polly.indvar_next439, %polly.loop_header435 ]
  %165 = add nuw nsw i64 %polly.indvar438, %160
  %polly.access.mul.call2442 = mul nuw nsw i64 %165, 1000
  %polly.access.add.call2443 = add nuw nsw i64 %polly.access.mul.call2442, %polly.indvar432
  %polly.access.call2444 = getelementptr double, double* %polly.access.cast.call2789, i64 %polly.access.add.call2443
  %polly.access.call2444.load = load double, double* %polly.access.call2444, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2324 = add nuw nsw i64 %polly.indvar438, %polly.access.mul.Packed_MemRef_call2324
  %polly.access.Packed_MemRef_call2324 = getelementptr double, double* %Packed_MemRef_call2324, i64 %polly.access.add.Packed_MemRef_call2324
  store double %polly.access.call2444.load, double* %polly.access.Packed_MemRef_call2324, align 8
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next439, %indvars.iv1036
  br i1 %exitcond1038.not, label %polly.loop_exit437, label %polly.loop_header435

polly.loop_header445:                             ; preds = %polly.loop_exit509, %polly.loop_exit431
  %indvar1307 = phi i64 [ %indvar.next1308, %polly.loop_exit509 ], [ 0, %polly.loop_exit431 ]
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit509 ], [ %indvars.iv1055, %polly.loop_exit431 ]
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %polly.loop_exit509 ], [ %indvars.iv1050, %polly.loop_exit431 ]
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit509 ], [ %indvars.iv1042, %polly.loop_exit431 ]
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit509 ], [ %162, %polly.loop_exit431 ]
  %166 = mul nsw i64 %indvar1307, -80
  %167 = add i64 %158, %166
  %smax1309 = call i64 @llvm.smax.i64(i64 %167, i64 0)
  %168 = mul nuw nsw i64 %indvar1307, 80
  %169 = add i64 %159, %168
  %170 = add i64 %smax1309, %169
  %smax1054 = call i64 @llvm.smax.i64(i64 %indvars.iv1052, i64 0)
  %171 = add i64 %smax1054, %indvars.iv1057
  %172 = mul nuw nsw i64 %polly.indvar448, 5
  %.not981 = icmp ult i64 %172, %164
  br i1 %.not981, label %polly.loop_header488, label %polly.loop_header455.preheader

polly.loop_header455.preheader:                   ; preds = %polly.loop_header445
  %173 = mul nuw nsw i64 %polly.indvar448, 80
  %174 = add nsw i64 %173, %161
  %175 = add nsw i64 %174, -1
  %.inv982 = icmp sgt i64 %174, 255
  %176 = select i1 %.inv982, i64 255, i64 %175
  %polly.loop_guard465 = icmp sgt i64 %176, -1
  %177 = add nsw i64 %174, 79
  br i1 %polly.loop_guard465, label %polly.loop_header455.us, label %polly.loop_header455

polly.loop_header455.us:                          ; preds = %polly.loop_header455.preheader, %polly.loop_exit476.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_exit476.us ], [ 0, %polly.loop_header455.preheader ]
  %polly.access.mul.Packed_MemRef_call1322.us = mul nuw nsw i64 %polly.indvar458.us, 1200
  br label %polly.loop_header462.us

polly.loop_header462.us:                          ; preds = %polly.loop_header455.us, %polly.loop_header462.us
  %polly.indvar466.us = phi i64 [ %polly.indvar_next467.us, %polly.loop_header462.us ], [ 0, %polly.loop_header455.us ]
  %178 = add nuw nsw i64 %polly.indvar466.us, %160
  %polly.access.mul.call1470.us = mul nuw nsw i64 %178, 1000
  %polly.access.add.call1471.us = add nuw nsw i64 %polly.access.mul.call1470.us, %polly.indvar458.us
  %polly.access.call1472.us = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1471.us
  %polly.access.call1472.load.us = load double, double* %polly.access.call1472.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1322.us = add nuw nsw i64 %polly.indvar466.us, %polly.access.mul.Packed_MemRef_call1322.us
  %polly.access.Packed_MemRef_call1322.us = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322.us
  store double %polly.access.call1472.load.us, double* %polly.access.Packed_MemRef_call1322.us, align 8
  %polly.indvar_next467.us = add nuw i64 %polly.indvar466.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar466.us, %176
  br i1 %exitcond1041.not, label %polly.loop_header474.us, label %polly.loop_header462.us

polly.loop_header474.us:                          ; preds = %polly.loop_header462.us, %polly.loop_header474.us
  %polly.indvar478.us = phi i64 [ %polly.indvar_next479.us, %polly.loop_header474.us ], [ %174, %polly.loop_header462.us ]
  %179 = add nsw i64 %polly.indvar478.us, %160
  %polly.access.mul.call1482.us = mul nuw nsw i64 %179, 1000
  %polly.access.add.call1483.us = add nuw nsw i64 %polly.access.mul.call1482.us, %polly.indvar458.us
  %polly.access.call1484.us = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1483.us
  %polly.access.call1484.load.us = load double, double* %polly.access.call1484.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1322486.us = add nsw i64 %polly.indvar478.us, %polly.access.mul.Packed_MemRef_call1322.us
  %polly.access.Packed_MemRef_call1322487.us = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322486.us
  store double %polly.access.call1484.load.us, double* %polly.access.Packed_MemRef_call1322487.us, align 8
  %polly.indvar_next479.us = add nsw i64 %polly.indvar478.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next479.us, %indvars.iv1044
  br i1 %exitcond1046.not, label %polly.loop_exit476.us, label %polly.loop_header474.us

polly.loop_exit476.us:                            ; preds = %polly.loop_header474.us
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next459.us, 1000
  br i1 %exitcond1047.not, label %polly.loop_preheader508, label %polly.loop_header455.us

polly.loop_exit509:                               ; preds = %polly.loop_exit515
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 80
  %indvars.iv.next1053 = add nsw i64 %indvars.iv1052, -80
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, 80
  %exitcond1064.not = icmp eq i64 %polly.indvar_next449, 15
  %indvar.next1308 = add i64 %indvar1307, 1
  br i1 %exitcond1064.not, label %polly.loop_exit447, label %polly.loop_header445

polly.loop_header455:                             ; preds = %polly.loop_header455.preheader, %polly.loop_exit476
  %polly.indvar458 = phi i64 [ %polly.indvar_next459, %polly.loop_exit476 ], [ 0, %polly.loop_header455.preheader ]
  %polly.access.mul.Packed_MemRef_call1322485 = mul nuw nsw i64 %polly.indvar458, 1200
  br label %polly.loop_header474

polly.loop_exit476:                               ; preds = %polly.loop_header474
  %polly.indvar_next459 = add nuw nsw i64 %polly.indvar458, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next459, 1000
  br i1 %exitcond1040.not, label %polly.loop_preheader508, label %polly.loop_header455

polly.loop_header474:                             ; preds = %polly.loop_header455, %polly.loop_header474
  %polly.indvar478 = phi i64 [ %polly.indvar_next479, %polly.loop_header474 ], [ %174, %polly.loop_header455 ]
  %180 = add nsw i64 %polly.indvar478, %160
  %polly.access.mul.call1482 = mul nuw nsw i64 %180, 1000
  %polly.access.add.call1483 = add nuw nsw i64 %polly.access.mul.call1482, %polly.indvar458
  %polly.access.call1484 = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1483
  %polly.access.call1484.load = load double, double* %polly.access.call1484, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1322486 = add nsw i64 %polly.indvar478, %polly.access.mul.Packed_MemRef_call1322485
  %polly.access.Packed_MemRef_call1322487 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322486
  store double %polly.access.call1484.load, double* %polly.access.Packed_MemRef_call1322487, align 8
  %polly.indvar_next479 = add nsw i64 %polly.indvar478, 1
  %polly.loop_cond480.not.not = icmp slt i64 %polly.indvar478, %177
  br i1 %polly.loop_cond480.not.not, label %polly.loop_header474, label %polly.loop_exit476

polly.loop_header488:                             ; preds = %polly.loop_header445, %polly.loop_exit496
  %polly.indvar491 = phi i64 [ %polly.indvar_next492, %polly.loop_exit496 ], [ 0, %polly.loop_header445 ]
  %polly.access.mul.Packed_MemRef_call1322504 = mul nuw nsw i64 %polly.indvar491, 1200
  br label %polly.loop_header494

polly.loop_exit496:                               ; preds = %polly.loop_header494
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next492, 1000
  br i1 %exitcond1049.not, label %polly.loop_preheader508.loopexit, label %polly.loop_header488

polly.loop_header494:                             ; preds = %polly.loop_header494, %polly.loop_header488
  %polly.indvar497 = phi i64 [ 0, %polly.loop_header488 ], [ %polly.indvar_next498, %polly.loop_header494 ]
  %181 = add nuw nsw i64 %polly.indvar497, %160
  %polly.access.mul.call1501 = mul nuw nsw i64 %181, 1000
  %polly.access.add.call1502 = add nuw nsw i64 %polly.access.mul.call1501, %polly.indvar491
  %polly.access.call1503 = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1502
  %polly.access.call1503.load = load double, double* %polly.access.call1503, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1322505 = add nuw nsw i64 %polly.indvar497, %polly.access.mul.Packed_MemRef_call1322504
  %polly.access.Packed_MemRef_call1322506 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322505
  store double %polly.access.call1503.load, double* %polly.access.Packed_MemRef_call1322506, align 8
  %polly.indvar_next498 = add nuw nsw i64 %polly.indvar497, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next498, %indvars.iv1042
  br i1 %exitcond1048.not, label %polly.loop_exit496, label %polly.loop_header494

polly.loop_header507:                             ; preds = %polly.loop_exit515, %polly.loop_preheader508
  %polly.indvar510 = phi i64 [ 0, %polly.loop_preheader508 ], [ %polly.indvar_next511, %polly.loop_exit515 ]
  %polly.access.mul.Packed_MemRef_call1322527 = mul nuw nsw i64 %polly.indvar510, 1200
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit522
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next511, 1000
  br i1 %exitcond1063.not, label %polly.loop_exit509, label %polly.loop_header507

polly.loop_preheader508.loopexit:                 ; preds = %polly.loop_exit496
  %.pre1140 = mul nuw nsw i64 %polly.indvar448, 80
  br label %polly.loop_preheader508

polly.loop_preheader508:                          ; preds = %polly.loop_exit476, %polly.loop_exit476.us, %polly.loop_preheader508.loopexit
  %.pre-phi1141 = phi i64 [ %.pre1140, %polly.loop_preheader508.loopexit ], [ %173, %polly.loop_exit476.us ], [ %173, %polly.loop_exit476 ]
  %182 = sub nsw i64 %160, %.pre-phi1141
  %183 = icmp sgt i64 %182, 0
  %184 = select i1 %183, i64 %182, i64 0
  br label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit522, %polly.loop_header507
  %indvar1310 = phi i64 [ %indvar.next1311, %polly.loop_exit522 ], [ 0, %polly.loop_header507 ]
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit522 ], [ %171, %polly.loop_header507 ]
  %polly.indvar516 = phi i64 [ %polly.indvar_next517, %polly.loop_exit522 ], [ %184, %polly.loop_header507 ]
  %185 = add i64 %170, %indvar1310
  %smin1312 = call i64 @llvm.smin.i64(i64 %185, i64 255)
  %186 = add nsw i64 %smin1312, 1
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 255)
  %187 = add nuw i64 %polly.indvar516, %.pre-phi1141
  %188 = add i64 %187, %161
  %polly.loop_guard5231145 = icmp sgt i64 %188, -1
  br i1 %polly.loop_guard5231145, label %polly.loop_header520.preheader, label %polly.loop_exit522

polly.loop_header520.preheader:                   ; preds = %polly.loop_header513
  %polly.access.add.Packed_MemRef_call2324532 = add nsw i64 %polly.access.mul.Packed_MemRef_call1322527, %188
  %polly.access.Packed_MemRef_call2324533 = getelementptr double, double* %Packed_MemRef_call2324, i64 %polly.access.add.Packed_MemRef_call2324532
  %_p_scalar_534 = load double, double* %polly.access.Packed_MemRef_call2324533, align 8
  %polly.access.Packed_MemRef_call1322541 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call2324532
  %_p_scalar_542 = load double, double* %polly.access.Packed_MemRef_call1322541, align 8
  %189 = mul i64 %187, 9600
  %min.iters.check1313 = icmp ult i64 %186, 4
  br i1 %min.iters.check1313, label %polly.loop_header520.preheader1383, label %vector.ph1314

vector.ph1314:                                    ; preds = %polly.loop_header520.preheader
  %n.vec1316 = and i64 %186, -4
  %broadcast.splatinsert1322 = insertelement <4 x double> poison, double %_p_scalar_534, i32 0
  %broadcast.splat1323 = shufflevector <4 x double> %broadcast.splatinsert1322, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1325 = insertelement <4 x double> poison, double %_p_scalar_542, i32 0
  %broadcast.splat1326 = shufflevector <4 x double> %broadcast.splatinsert1325, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1306 ]
  %190 = add nuw nsw i64 %index1317, %160
  %191 = add nuw nsw i64 %index1317, %polly.access.mul.Packed_MemRef_call1322527
  %192 = getelementptr double, double* %Packed_MemRef_call1322, i64 %191
  %193 = bitcast double* %192 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %193, align 8
  %194 = fmul fast <4 x double> %broadcast.splat1323, %wide.load1321
  %195 = getelementptr double, double* %Packed_MemRef_call2324, i64 %191
  %196 = bitcast double* %195 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %196, align 8
  %197 = fmul fast <4 x double> %broadcast.splat1326, %wide.load1324
  %198 = shl i64 %190, 3
  %199 = add i64 %198, %189
  %200 = getelementptr i8, i8* %call, i64 %199
  %201 = bitcast i8* %200 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %201, align 8, !alias.scope !86, !noalias !88
  %202 = fadd fast <4 x double> %197, %194
  %203 = fmul fast <4 x double> %202, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %204 = fadd fast <4 x double> %203, %wide.load1327
  %205 = bitcast i8* %200 to <4 x double>*
  store <4 x double> %204, <4 x double>* %205, align 8, !alias.scope !86, !noalias !88
  %index.next1318 = add i64 %index1317, 4
  %206 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %206, label %middle.block1304, label %vector.body1306, !llvm.loop !97

middle.block1304:                                 ; preds = %vector.body1306
  %cmp.n1320 = icmp eq i64 %186, %n.vec1316
  br i1 %cmp.n1320, label %polly.loop_exit522, label %polly.loop_header520.preheader1383

polly.loop_header520.preheader1383:               ; preds = %polly.loop_header520.preheader, %middle.block1304
  %polly.indvar524.ph = phi i64 [ 0, %polly.loop_header520.preheader ], [ %n.vec1316, %middle.block1304 ]
  br label %polly.loop_header520

polly.loop_exit522:                               ; preds = %polly.loop_header520, %middle.block1304, %polly.loop_header513
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %polly.loop_cond518 = icmp ult i64 %polly.indvar516, 79
  %indvars.iv.next1060 = add i64 %indvars.iv1059, 1
  %indvar.next1311 = add i64 %indvar1310, 1
  br i1 %polly.loop_cond518, label %polly.loop_header513, label %polly.loop_exit515

polly.loop_header520:                             ; preds = %polly.loop_header520.preheader1383, %polly.loop_header520
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_header520 ], [ %polly.indvar524.ph, %polly.loop_header520.preheader1383 ]
  %207 = add nuw nsw i64 %polly.indvar524, %160
  %polly.access.add.Packed_MemRef_call1322528 = add nuw nsw i64 %polly.indvar524, %polly.access.mul.Packed_MemRef_call1322527
  %polly.access.Packed_MemRef_call1322529 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322528
  %_p_scalar_530 = load double, double* %polly.access.Packed_MemRef_call1322529, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_534, %_p_scalar_530
  %polly.access.Packed_MemRef_call2324537 = getelementptr double, double* %Packed_MemRef_call2324, i64 %polly.access.add.Packed_MemRef_call1322528
  %_p_scalar_538 = load double, double* %polly.access.Packed_MemRef_call2324537, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_542, %_p_scalar_538
  %208 = shl i64 %207, 3
  %209 = add i64 %208, %189
  %scevgep543 = getelementptr i8, i8* %call, i64 %209
  %scevgep543544 = bitcast i8* %scevgep543 to double*
  %_p_scalar_545 = load double, double* %scevgep543544, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_545
  store double %p_add42.i79, double* %scevgep543544, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar524, %smin1061
  br i1 %exitcond1062.not, label %polly.loop_exit522, label %polly.loop_header520, !llvm.loop !98

polly.start548:                                   ; preds = %init_array.exit
  %malloccall550 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall552 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header636

polly.exiting549:                                 ; preds = %polly.loop_exit676
  tail call void @free(i8* %malloccall550)
  tail call void @free(i8* %malloccall552)
  br label %kernel_syr2k.exit

polly.loop_header636:                             ; preds = %polly.loop_exit644, %polly.start548
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit644 ], [ 0, %polly.start548 ]
  %polly.indvar639 = phi i64 [ %polly.indvar_next640, %polly.loop_exit644 ], [ 1, %polly.start548 ]
  %210 = add i64 %indvar, 1
  %211 = mul nuw nsw i64 %polly.indvar639, 9600
  %scevgep648 = getelementptr i8, i8* %call, i64 %211
  %min.iters.check1245 = icmp ult i64 %210, 4
  br i1 %min.iters.check1245, label %polly.loop_header642.preheader, label %vector.ph1246

vector.ph1246:                                    ; preds = %polly.loop_header636
  %n.vec1248 = and i64 %210, -4
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1246
  %index1249 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1250, %vector.body1244 ]
  %212 = shl nuw nsw i64 %index1249, 3
  %213 = getelementptr i8, i8* %scevgep648, i64 %212
  %214 = bitcast i8* %213 to <4 x double>*
  %wide.load1253 = load <4 x double>, <4 x double>* %214, align 8, !alias.scope !99, !noalias !101
  %215 = fmul fast <4 x double> %wide.load1253, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %216 = bitcast i8* %213 to <4 x double>*
  store <4 x double> %215, <4 x double>* %216, align 8, !alias.scope !99, !noalias !101
  %index.next1250 = add i64 %index1249, 4
  %217 = icmp eq i64 %index.next1250, %n.vec1248
  br i1 %217, label %middle.block1242, label %vector.body1244, !llvm.loop !106

middle.block1242:                                 ; preds = %vector.body1244
  %cmp.n1252 = icmp eq i64 %210, %n.vec1248
  br i1 %cmp.n1252, label %polly.loop_exit644, label %polly.loop_header642.preheader

polly.loop_header642.preheader:                   ; preds = %polly.loop_header636, %middle.block1242
  %polly.indvar645.ph = phi i64 [ 0, %polly.loop_header636 ], [ %n.vec1248, %middle.block1242 ]
  br label %polly.loop_header642

polly.loop_exit644:                               ; preds = %polly.loop_header642, %middle.block1242
  %polly.indvar_next640 = add nuw nsw i64 %polly.indvar639, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next640, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1099.not, label %polly.loop_header652.preheader, label %polly.loop_header636

polly.loop_header652.preheader:                   ; preds = %polly.loop_exit644
  %Packed_MemRef_call1551 = bitcast i8* %malloccall550 to double*
  %Packed_MemRef_call2553 = bitcast i8* %malloccall552 to double*
  br label %polly.loop_header652

polly.loop_header642:                             ; preds = %polly.loop_header642.preheader, %polly.loop_header642
  %polly.indvar645 = phi i64 [ %polly.indvar_next646, %polly.loop_header642 ], [ %polly.indvar645.ph, %polly.loop_header642.preheader ]
  %218 = shl nuw nsw i64 %polly.indvar645, 3
  %scevgep649 = getelementptr i8, i8* %scevgep648, i64 %218
  %scevgep649650 = bitcast i8* %scevgep649 to double*
  %_p_scalar_651 = load double, double* %scevgep649650, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_651, 1.200000e+00
  store double %p_mul.i, double* %scevgep649650, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next646 = add nuw nsw i64 %polly.indvar645, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next646, %polly.indvar639
  br i1 %exitcond1098.not, label %polly.loop_exit644, label %polly.loop_header642, !llvm.loop !107

polly.loop_header652:                             ; preds = %polly.loop_header652.preheader, %polly.loop_exit676
  %indvars.iv1087 = phi i64 [ 0, %polly.loop_header652.preheader ], [ %indvars.iv.next1088, %polly.loop_exit676 ]
  %indvars.iv1082 = phi i64 [ 0, %polly.loop_header652.preheader ], [ %indvars.iv.next1083, %polly.loop_exit676 ]
  %indvars.iv1074 = phi i64 [ 80, %polly.loop_header652.preheader ], [ %indvars.iv.next1075, %polly.loop_exit676 ]
  %indvars.iv1068 = phi i64 [ 1200, %polly.loop_header652.preheader ], [ %indvars.iv.next1069, %polly.loop_exit676 ]
  %polly.indvar655 = phi i64 [ 0, %polly.loop_header652.preheader ], [ %polly.indvar_next656, %polly.loop_exit676 ]
  %219 = shl nuw nsw i64 %polly.indvar655, 4
  %220 = mul nsw i64 %polly.indvar655, -16
  %221 = shl nsw i64 %polly.indvar655, 8
  br label %polly.loop_header658

polly.loop_exit660:                               ; preds = %polly.loop_exit666
  %222 = mul nsw i64 %polly.indvar655, -256
  %223 = mul nuw nsw i64 %polly.indvar655, 3
  %224 = shl nsw i64 %polly.indvar655, 4
  %225 = or i64 %224, 1
  br label %polly.loop_header674

polly.loop_exit676:                               ; preds = %polly.loop_exit738
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -256
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -16
  %indvars.iv.next1083 = add nuw nsw i64 %indvars.iv1082, 16
  %indvars.iv.next1088 = add nsw i64 %indvars.iv1087, -16
  %exitcond1097.not = icmp eq i64 %polly.indvar_next656, 5
  br i1 %exitcond1097.not, label %polly.exiting549, label %polly.loop_header652

polly.loop_header658:                             ; preds = %polly.loop_exit666, %polly.loop_header652
  %polly.indvar661 = phi i64 [ 0, %polly.loop_header652 ], [ %polly.indvar_next662, %polly.loop_exit666 ]
  %polly.access.mul.Packed_MemRef_call2553 = mul nuw nsw i64 %polly.indvar661, 1200
  br label %polly.loop_header664

polly.loop_exit666:                               ; preds = %polly.loop_header664
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next662, 1000
  br i1 %exitcond1071.not, label %polly.loop_exit660, label %polly.loop_header658

polly.loop_header664:                             ; preds = %polly.loop_header664, %polly.loop_header658
  %polly.indvar667 = phi i64 [ 0, %polly.loop_header658 ], [ %polly.indvar_next668, %polly.loop_header664 ]
  %226 = add nuw nsw i64 %polly.indvar667, %221
  %polly.access.mul.call2671 = mul nuw nsw i64 %226, 1000
  %polly.access.add.call2672 = add nuw nsw i64 %polly.access.mul.call2671, %polly.indvar661
  %polly.access.call2673 = getelementptr double, double* %polly.access.cast.call2789, i64 %polly.access.add.call2672
  %polly.access.call2673.load = load double, double* %polly.access.call2673, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2553 = add nuw nsw i64 %polly.indvar667, %polly.access.mul.Packed_MemRef_call2553
  %polly.access.Packed_MemRef_call2553 = getelementptr double, double* %Packed_MemRef_call2553, i64 %polly.access.add.Packed_MemRef_call2553
  store double %polly.access.call2673.load, double* %polly.access.Packed_MemRef_call2553, align 8
  %polly.indvar_next668 = add nuw nsw i64 %polly.indvar667, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next668, %indvars.iv1068
  br i1 %exitcond1070.not, label %polly.loop_exit666, label %polly.loop_header664

polly.loop_header674:                             ; preds = %polly.loop_exit738, %polly.loop_exit660
  %indvar1257 = phi i64 [ %indvar.next1258, %polly.loop_exit738 ], [ 0, %polly.loop_exit660 ]
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit738 ], [ %indvars.iv1087, %polly.loop_exit660 ]
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit738 ], [ %indvars.iv1082, %polly.loop_exit660 ]
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit738 ], [ %indvars.iv1074, %polly.loop_exit660 ]
  %polly.indvar677 = phi i64 [ %polly.indvar_next678, %polly.loop_exit738 ], [ %223, %polly.loop_exit660 ]
  %227 = mul nsw i64 %indvar1257, -80
  %228 = add i64 %219, %227
  %smax1259 = call i64 @llvm.smax.i64(i64 %228, i64 0)
  %229 = mul nuw nsw i64 %indvar1257, 80
  %230 = add i64 %220, %229
  %231 = add i64 %smax1259, %230
  %smax1086 = call i64 @llvm.smax.i64(i64 %indvars.iv1084, i64 0)
  %232 = add i64 %smax1086, %indvars.iv1089
  %233 = mul nuw nsw i64 %polly.indvar677, 5
  %.not983 = icmp ult i64 %233, %225
  br i1 %.not983, label %polly.loop_header717, label %polly.loop_header684.preheader

polly.loop_header684.preheader:                   ; preds = %polly.loop_header674
  %234 = mul nuw nsw i64 %polly.indvar677, 80
  %235 = add nsw i64 %234, %222
  %236 = add nsw i64 %235, -1
  %.inv984 = icmp sgt i64 %235, 255
  %237 = select i1 %.inv984, i64 255, i64 %236
  %polly.loop_guard694 = icmp sgt i64 %237, -1
  %238 = add nsw i64 %235, 79
  br i1 %polly.loop_guard694, label %polly.loop_header684.us, label %polly.loop_header684

polly.loop_header684.us:                          ; preds = %polly.loop_header684.preheader, %polly.loop_exit705.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_exit705.us ], [ 0, %polly.loop_header684.preheader ]
  %polly.access.mul.Packed_MemRef_call1551.us = mul nuw nsw i64 %polly.indvar687.us, 1200
  br label %polly.loop_header691.us

polly.loop_header691.us:                          ; preds = %polly.loop_header684.us, %polly.loop_header691.us
  %polly.indvar695.us = phi i64 [ %polly.indvar_next696.us, %polly.loop_header691.us ], [ 0, %polly.loop_header684.us ]
  %239 = add nuw nsw i64 %polly.indvar695.us, %221
  %polly.access.mul.call1699.us = mul nuw nsw i64 %239, 1000
  %polly.access.add.call1700.us = add nuw nsw i64 %polly.access.mul.call1699.us, %polly.indvar687.us
  %polly.access.call1701.us = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1700.us
  %polly.access.call1701.load.us = load double, double* %polly.access.call1701.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1551.us = add nuw nsw i64 %polly.indvar695.us, %polly.access.mul.Packed_MemRef_call1551.us
  %polly.access.Packed_MemRef_call1551.us = getelementptr double, double* %Packed_MemRef_call1551, i64 %polly.access.add.Packed_MemRef_call1551.us
  store double %polly.access.call1701.load.us, double* %polly.access.Packed_MemRef_call1551.us, align 8
  %polly.indvar_next696.us = add nuw i64 %polly.indvar695.us, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar695.us, %237
  br i1 %exitcond1073.not, label %polly.loop_header703.us, label %polly.loop_header691.us

polly.loop_header703.us:                          ; preds = %polly.loop_header691.us, %polly.loop_header703.us
  %polly.indvar707.us = phi i64 [ %polly.indvar_next708.us, %polly.loop_header703.us ], [ %235, %polly.loop_header691.us ]
  %240 = add nsw i64 %polly.indvar707.us, %221
  %polly.access.mul.call1711.us = mul nuw nsw i64 %240, 1000
  %polly.access.add.call1712.us = add nuw nsw i64 %polly.access.mul.call1711.us, %polly.indvar687.us
  %polly.access.call1713.us = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1712.us
  %polly.access.call1713.load.us = load double, double* %polly.access.call1713.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1551715.us = add nsw i64 %polly.indvar707.us, %polly.access.mul.Packed_MemRef_call1551.us
  %polly.access.Packed_MemRef_call1551716.us = getelementptr double, double* %Packed_MemRef_call1551, i64 %polly.access.add.Packed_MemRef_call1551715.us
  store double %polly.access.call1713.load.us, double* %polly.access.Packed_MemRef_call1551716.us, align 8
  %polly.indvar_next708.us = add nsw i64 %polly.indvar707.us, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next708.us, %indvars.iv1076
  br i1 %exitcond1078.not, label %polly.loop_exit705.us, label %polly.loop_header703.us

polly.loop_exit705.us:                            ; preds = %polly.loop_header703.us
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next688.us, 1000
  br i1 %exitcond1079.not, label %polly.loop_preheader737, label %polly.loop_header684.us

polly.loop_exit738:                               ; preds = %polly.loop_exit744
  %polly.indvar_next678 = add nuw nsw i64 %polly.indvar677, 1
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 80
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -80
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, 80
  %exitcond1096.not = icmp eq i64 %polly.indvar_next678, 15
  %indvar.next1258 = add i64 %indvar1257, 1
  br i1 %exitcond1096.not, label %polly.loop_exit676, label %polly.loop_header674

polly.loop_header684:                             ; preds = %polly.loop_header684.preheader, %polly.loop_exit705
  %polly.indvar687 = phi i64 [ %polly.indvar_next688, %polly.loop_exit705 ], [ 0, %polly.loop_header684.preheader ]
  %polly.access.mul.Packed_MemRef_call1551714 = mul nuw nsw i64 %polly.indvar687, 1200
  br label %polly.loop_header703

polly.loop_exit705:                               ; preds = %polly.loop_header703
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next688, 1000
  br i1 %exitcond1072.not, label %polly.loop_preheader737, label %polly.loop_header684

polly.loop_header703:                             ; preds = %polly.loop_header684, %polly.loop_header703
  %polly.indvar707 = phi i64 [ %polly.indvar_next708, %polly.loop_header703 ], [ %235, %polly.loop_header684 ]
  %241 = add nsw i64 %polly.indvar707, %221
  %polly.access.mul.call1711 = mul nuw nsw i64 %241, 1000
  %polly.access.add.call1712 = add nuw nsw i64 %polly.access.mul.call1711, %polly.indvar687
  %polly.access.call1713 = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1712
  %polly.access.call1713.load = load double, double* %polly.access.call1713, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1551715 = add nsw i64 %polly.indvar707, %polly.access.mul.Packed_MemRef_call1551714
  %polly.access.Packed_MemRef_call1551716 = getelementptr double, double* %Packed_MemRef_call1551, i64 %polly.access.add.Packed_MemRef_call1551715
  store double %polly.access.call1713.load, double* %polly.access.Packed_MemRef_call1551716, align 8
  %polly.indvar_next708 = add nsw i64 %polly.indvar707, 1
  %polly.loop_cond709.not.not = icmp slt i64 %polly.indvar707, %238
  br i1 %polly.loop_cond709.not.not, label %polly.loop_header703, label %polly.loop_exit705

polly.loop_header717:                             ; preds = %polly.loop_header674, %polly.loop_exit725
  %polly.indvar720 = phi i64 [ %polly.indvar_next721, %polly.loop_exit725 ], [ 0, %polly.loop_header674 ]
  %polly.access.mul.Packed_MemRef_call1551733 = mul nuw nsw i64 %polly.indvar720, 1200
  br label %polly.loop_header723

polly.loop_exit725:                               ; preds = %polly.loop_header723
  %polly.indvar_next721 = add nuw nsw i64 %polly.indvar720, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next721, 1000
  br i1 %exitcond1081.not, label %polly.loop_preheader737.loopexit, label %polly.loop_header717

polly.loop_header723:                             ; preds = %polly.loop_header723, %polly.loop_header717
  %polly.indvar726 = phi i64 [ 0, %polly.loop_header717 ], [ %polly.indvar_next727, %polly.loop_header723 ]
  %242 = add nuw nsw i64 %polly.indvar726, %221
  %polly.access.mul.call1730 = mul nuw nsw i64 %242, 1000
  %polly.access.add.call1731 = add nuw nsw i64 %polly.access.mul.call1730, %polly.indvar720
  %polly.access.call1732 = getelementptr double, double* %polly.access.cast.call1779, i64 %polly.access.add.call1731
  %polly.access.call1732.load = load double, double* %polly.access.call1732, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1551734 = add nuw nsw i64 %polly.indvar726, %polly.access.mul.Packed_MemRef_call1551733
  %polly.access.Packed_MemRef_call1551735 = getelementptr double, double* %Packed_MemRef_call1551, i64 %polly.access.add.Packed_MemRef_call1551734
  store double %polly.access.call1732.load, double* %polly.access.Packed_MemRef_call1551735, align 8
  %polly.indvar_next727 = add nuw nsw i64 %polly.indvar726, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next727, %indvars.iv1074
  br i1 %exitcond1080.not, label %polly.loop_exit725, label %polly.loop_header723

polly.loop_header736:                             ; preds = %polly.loop_exit744, %polly.loop_preheader737
  %polly.indvar739 = phi i64 [ 0, %polly.loop_preheader737 ], [ %polly.indvar_next740, %polly.loop_exit744 ]
  %polly.access.mul.Packed_MemRef_call1551756 = mul nuw nsw i64 %polly.indvar739, 1200
  br label %polly.loop_header742

polly.loop_exit744:                               ; preds = %polly.loop_exit751
  %polly.indvar_next740 = add nuw nsw i64 %polly.indvar739, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next740, 1000
  br i1 %exitcond1095.not, label %polly.loop_exit738, label %polly.loop_header736

polly.loop_preheader737.loopexit:                 ; preds = %polly.loop_exit725
  %.pre = mul nuw nsw i64 %polly.indvar677, 80
  br label %polly.loop_preheader737

polly.loop_preheader737:                          ; preds = %polly.loop_exit705, %polly.loop_exit705.us, %polly.loop_preheader737.loopexit
  %.pre-phi = phi i64 [ %.pre, %polly.loop_preheader737.loopexit ], [ %234, %polly.loop_exit705.us ], [ %234, %polly.loop_exit705 ]
  %243 = sub nsw i64 %221, %.pre-phi
  %244 = icmp sgt i64 %243, 0
  %245 = select i1 %244, i64 %243, i64 0
  br label %polly.loop_header736

polly.loop_header742:                             ; preds = %polly.loop_exit751, %polly.loop_header736
  %indvar1260 = phi i64 [ %indvar.next1261, %polly.loop_exit751 ], [ 0, %polly.loop_header736 ]
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit751 ], [ %232, %polly.loop_header736 ]
  %polly.indvar745 = phi i64 [ %polly.indvar_next746, %polly.loop_exit751 ], [ %245, %polly.loop_header736 ]
  %246 = add i64 %231, %indvar1260
  %smin1262 = call i64 @llvm.smin.i64(i64 %246, i64 255)
  %247 = add nsw i64 %smin1262, 1
  %smin1093 = call i64 @llvm.smin.i64(i64 %indvars.iv1091, i64 255)
  %248 = add nuw i64 %polly.indvar745, %.pre-phi
  %249 = add i64 %248, %222
  %polly.loop_guard7521146 = icmp sgt i64 %249, -1
  br i1 %polly.loop_guard7521146, label %polly.loop_header749.preheader, label %polly.loop_exit751

polly.loop_header749.preheader:                   ; preds = %polly.loop_header742
  %polly.access.add.Packed_MemRef_call2553761 = add nsw i64 %polly.access.mul.Packed_MemRef_call1551756, %249
  %polly.access.Packed_MemRef_call2553762 = getelementptr double, double* %Packed_MemRef_call2553, i64 %polly.access.add.Packed_MemRef_call2553761
  %_p_scalar_763 = load double, double* %polly.access.Packed_MemRef_call2553762, align 8
  %polly.access.Packed_MemRef_call1551770 = getelementptr double, double* %Packed_MemRef_call1551, i64 %polly.access.add.Packed_MemRef_call2553761
  %_p_scalar_771 = load double, double* %polly.access.Packed_MemRef_call1551770, align 8
  %250 = mul i64 %248, 9600
  %min.iters.check1263 = icmp ult i64 %247, 4
  br i1 %min.iters.check1263, label %polly.loop_header749.preheader1388, label %vector.ph1264

vector.ph1264:                                    ; preds = %polly.loop_header749.preheader
  %n.vec1266 = and i64 %247, -4
  %broadcast.splatinsert1272 = insertelement <4 x double> poison, double %_p_scalar_763, i32 0
  %broadcast.splat1273 = shufflevector <4 x double> %broadcast.splatinsert1272, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1275 = insertelement <4 x double> poison, double %_p_scalar_771, i32 0
  %broadcast.splat1276 = shufflevector <4 x double> %broadcast.splatinsert1275, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %vector.ph1264
  %index1267 = phi i64 [ 0, %vector.ph1264 ], [ %index.next1268, %vector.body1256 ]
  %251 = add nuw nsw i64 %index1267, %221
  %252 = add nuw nsw i64 %index1267, %polly.access.mul.Packed_MemRef_call1551756
  %253 = getelementptr double, double* %Packed_MemRef_call1551, i64 %252
  %254 = bitcast double* %253 to <4 x double>*
  %wide.load1271 = load <4 x double>, <4 x double>* %254, align 8
  %255 = fmul fast <4 x double> %broadcast.splat1273, %wide.load1271
  %256 = getelementptr double, double* %Packed_MemRef_call2553, i64 %252
  %257 = bitcast double* %256 to <4 x double>*
  %wide.load1274 = load <4 x double>, <4 x double>* %257, align 8
  %258 = fmul fast <4 x double> %broadcast.splat1276, %wide.load1274
  %259 = shl i64 %251, 3
  %260 = add i64 %259, %250
  %261 = getelementptr i8, i8* %call, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  %wide.load1277 = load <4 x double>, <4 x double>* %262, align 8, !alias.scope !99, !noalias !101
  %263 = fadd fast <4 x double> %258, %255
  %264 = fmul fast <4 x double> %263, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %265 = fadd fast <4 x double> %264, %wide.load1277
  %266 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %265, <4 x double>* %266, align 8, !alias.scope !99, !noalias !101
  %index.next1268 = add i64 %index1267, 4
  %267 = icmp eq i64 %index.next1268, %n.vec1266
  br i1 %267, label %middle.block1254, label %vector.body1256, !llvm.loop !110

middle.block1254:                                 ; preds = %vector.body1256
  %cmp.n1270 = icmp eq i64 %247, %n.vec1266
  br i1 %cmp.n1270, label %polly.loop_exit751, label %polly.loop_header749.preheader1388

polly.loop_header749.preheader1388:               ; preds = %polly.loop_header749.preheader, %middle.block1254
  %polly.indvar753.ph = phi i64 [ 0, %polly.loop_header749.preheader ], [ %n.vec1266, %middle.block1254 ]
  br label %polly.loop_header749

polly.loop_exit751:                               ; preds = %polly.loop_header749, %middle.block1254, %polly.loop_header742
  %polly.indvar_next746 = add nuw nsw i64 %polly.indvar745, 1
  %polly.loop_cond747 = icmp ult i64 %polly.indvar745, 79
  %indvars.iv.next1092 = add i64 %indvars.iv1091, 1
  %indvar.next1261 = add i64 %indvar1260, 1
  br i1 %polly.loop_cond747, label %polly.loop_header742, label %polly.loop_exit744

polly.loop_header749:                             ; preds = %polly.loop_header749.preheader1388, %polly.loop_header749
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_header749 ], [ %polly.indvar753.ph, %polly.loop_header749.preheader1388 ]
  %268 = add nuw nsw i64 %polly.indvar753, %221
  %polly.access.add.Packed_MemRef_call1551757 = add nuw nsw i64 %polly.indvar753, %polly.access.mul.Packed_MemRef_call1551756
  %polly.access.Packed_MemRef_call1551758 = getelementptr double, double* %Packed_MemRef_call1551, i64 %polly.access.add.Packed_MemRef_call1551757
  %_p_scalar_759 = load double, double* %polly.access.Packed_MemRef_call1551758, align 8
  %p_mul27.i = fmul fast double %_p_scalar_763, %_p_scalar_759
  %polly.access.Packed_MemRef_call2553766 = getelementptr double, double* %Packed_MemRef_call2553, i64 %polly.access.add.Packed_MemRef_call1551757
  %_p_scalar_767 = load double, double* %polly.access.Packed_MemRef_call2553766, align 8
  %p_mul37.i = fmul fast double %_p_scalar_771, %_p_scalar_767
  %269 = shl i64 %268, 3
  %270 = add i64 %269, %250
  %scevgep772 = getelementptr i8, i8* %call, i64 %270
  %scevgep772773 = bitcast i8* %scevgep772 to double*
  %_p_scalar_774 = load double, double* %scevgep772773, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_774
  store double %p_add42.i, double* %scevgep772773, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar753, %smin1093
  br i1 %exitcond1094.not, label %polly.loop_exit751, label %polly.loop_header749, !llvm.loop !111

polly.loop_header901:                             ; preds = %entry, %polly.loop_exit909
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit909 ], [ 0, %entry ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %entry ]
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -1168)
  %271 = shl nsw i64 %polly.indvar904, 5
  %272 = add nsw i64 %smin1126, 1199
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1129.not = icmp eq i64 %polly.indvar_next905, 38
  br i1 %exitcond1129.not, label %polly.loop_header928, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %273 = mul nsw i64 %polly.indvar910, -32
  %smin1183 = call i64 @llvm.smin.i64(i64 %273, i64 -1168)
  %274 = add nsw i64 %smin1183, 1200
  %smin1122 = call i64 @llvm.smin.i64(i64 %indvars.iv1120, i64 -1168)
  %275 = shl nsw i64 %polly.indvar910, 5
  %276 = add nsw i64 %smin1122, 1199
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1121 = add nsw i64 %indvars.iv1120, -32
  %exitcond1128.not = icmp eq i64 %polly.indvar_next911, 38
  br i1 %exitcond1128.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %polly.indvar916 = phi i64 [ 0, %polly.loop_header907 ], [ %polly.indvar_next917, %polly.loop_exit921 ]
  %277 = add nuw nsw i64 %polly.indvar916, %271
  %278 = trunc i64 %277 to i32
  %279 = mul nuw nsw i64 %277, 9600
  %min.iters.check = icmp eq i64 %274, 0
  br i1 %min.iters.check, label %polly.loop_header919, label %vector.ph1184

vector.ph1184:                                    ; preds = %polly.loop_header913
  %broadcast.splatinsert1191 = insertelement <4 x i64> poison, i64 %275, i32 0
  %broadcast.splat1192 = shufflevector <4 x i64> %broadcast.splatinsert1191, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %278, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %vector.ph1184
  %index1185 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1186, %vector.body1182 ]
  %vec.ind1189 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1184 ], [ %vec.ind.next1190, %vector.body1182 ]
  %280 = add nuw nsw <4 x i64> %vec.ind1189, %broadcast.splat1192
  %281 = trunc <4 x i64> %280 to <4 x i32>
  %282 = mul <4 x i32> %broadcast.splat1194, %281
  %283 = add <4 x i32> %282, <i32 3, i32 3, i32 3, i32 3>
  %284 = urem <4 x i32> %283, <i32 1200, i32 1200, i32 1200, i32 1200>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %287 = extractelement <4 x i64> %280, i32 0
  %288 = shl i64 %287, 3
  %289 = add nuw nsw i64 %288, %279
  %290 = getelementptr i8, i8* %call, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %286, <4 x double>* %291, align 8, !alias.scope !112, !noalias !114
  %index.next1186 = add i64 %index1185, 4
  %vec.ind.next1190 = add <4 x i64> %vec.ind1189, <i64 4, i64 4, i64 4, i64 4>
  %292 = icmp eq i64 %index.next1186, %274
  br i1 %292, label %polly.loop_exit921, label %vector.body1182, !llvm.loop !117

polly.loop_exit921:                               ; preds = %vector.body1182, %polly.loop_header919
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar916, %272
  br i1 %exitcond1127.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_header913, %polly.loop_header919
  %polly.indvar922 = phi i64 [ %polly.indvar_next923, %polly.loop_header919 ], [ 0, %polly.loop_header913 ]
  %293 = add nuw nsw i64 %polly.indvar922, %275
  %294 = trunc i64 %293 to i32
  %295 = mul i32 %294, %278
  %296 = add i32 %295, 3
  %297 = urem i32 %296, 1200
  %p_conv31.i = sitofp i32 %297 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %298 = shl i64 %293, 3
  %299 = add nuw nsw i64 %298, %279
  %scevgep925 = getelementptr i8, i8* %call, i64 %299
  %scevgep925926 = bitcast i8* %scevgep925 to double*
  store double %p_div33.i, double* %scevgep925926, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar922, %276
  br i1 %exitcond1123.not, label %polly.loop_exit921, label %polly.loop_header919, !llvm.loop !118

polly.loop_header928:                             ; preds = %polly.loop_exit909, %polly.loop_exit936
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit936 ], [ 0, %polly.loop_exit909 ]
  %polly.indvar931 = phi i64 [ %polly.indvar_next932, %polly.loop_exit936 ], [ 0, %polly.loop_exit909 ]
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 -1168)
  %300 = shl nsw i64 %polly.indvar931, 5
  %301 = add nsw i64 %smin1116, 1199
  br label %polly.loop_header934

polly.loop_exit936:                               ; preds = %polly.loop_exit942
  %polly.indvar_next932 = add nuw nsw i64 %polly.indvar931, 1
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -32
  %exitcond1119.not = icmp eq i64 %polly.indvar_next932, 38
  br i1 %exitcond1119.not, label %polly.loop_header954, label %polly.loop_header928

polly.loop_header934:                             ; preds = %polly.loop_exit942, %polly.loop_header928
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit942 ], [ 0, %polly.loop_header928 ]
  %polly.indvar937 = phi i64 [ %polly.indvar_next938, %polly.loop_exit942 ], [ 0, %polly.loop_header928 ]
  %302 = mul nsw i64 %polly.indvar937, -32
  %smin1198 = call i64 @llvm.smin.i64(i64 %302, i64 -968)
  %303 = add nsw i64 %smin1198, 1000
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 -968)
  %304 = shl nsw i64 %polly.indvar937, 5
  %305 = add nsw i64 %smin1112, 999
  br label %polly.loop_header940

polly.loop_exit942:                               ; preds = %polly.loop_exit948
  %polly.indvar_next938 = add nuw nsw i64 %polly.indvar937, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next938, 32
  br i1 %exitcond1118.not, label %polly.loop_exit936, label %polly.loop_header934

polly.loop_header940:                             ; preds = %polly.loop_exit948, %polly.loop_header934
  %polly.indvar943 = phi i64 [ 0, %polly.loop_header934 ], [ %polly.indvar_next944, %polly.loop_exit948 ]
  %306 = add nuw nsw i64 %polly.indvar943, %300
  %307 = trunc i64 %306 to i32
  %308 = mul nuw nsw i64 %306, 8000
  %min.iters.check1199 = icmp eq i64 %303, 0
  br i1 %min.iters.check1199, label %polly.loop_header946, label %vector.ph1200

vector.ph1200:                                    ; preds = %polly.loop_header940
  %broadcast.splatinsert1209 = insertelement <4 x i64> poison, i64 %304, i32 0
  %broadcast.splat1210 = shufflevector <4 x i64> %broadcast.splatinsert1209, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %307, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1204, %vector.body1197 ]
  %vec.ind1207 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1200 ], [ %vec.ind.next1208, %vector.body1197 ]
  %309 = add nuw nsw <4 x i64> %vec.ind1207, %broadcast.splat1210
  %310 = trunc <4 x i64> %309 to <4 x i32>
  %311 = mul <4 x i32> %broadcast.splat1212, %310
  %312 = add <4 x i32> %311, <i32 2, i32 2, i32 2, i32 2>
  %313 = urem <4 x i32> %312, <i32 1000, i32 1000, i32 1000, i32 1000>
  %314 = sitofp <4 x i32> %313 to <4 x double>
  %315 = fmul fast <4 x double> %314, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %316 = extractelement <4 x i64> %309, i32 0
  %317 = shl i64 %316, 3
  %318 = add nuw nsw i64 %317, %308
  %319 = getelementptr i8, i8* %call2, i64 %318
  %320 = bitcast i8* %319 to <4 x double>*
  store <4 x double> %315, <4 x double>* %320, align 8, !alias.scope !116, !noalias !119
  %index.next1204 = add i64 %index1203, 4
  %vec.ind.next1208 = add <4 x i64> %vec.ind1207, <i64 4, i64 4, i64 4, i64 4>
  %321 = icmp eq i64 %index.next1204, %303
  br i1 %321, label %polly.loop_exit948, label %vector.body1197, !llvm.loop !120

polly.loop_exit948:                               ; preds = %vector.body1197, %polly.loop_header946
  %polly.indvar_next944 = add nuw nsw i64 %polly.indvar943, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar943, %301
  br i1 %exitcond1117.not, label %polly.loop_exit942, label %polly.loop_header940

polly.loop_header946:                             ; preds = %polly.loop_header940, %polly.loop_header946
  %polly.indvar949 = phi i64 [ %polly.indvar_next950, %polly.loop_header946 ], [ 0, %polly.loop_header940 ]
  %322 = add nuw nsw i64 %polly.indvar949, %304
  %323 = trunc i64 %322 to i32
  %324 = mul i32 %323, %307
  %325 = add i32 %324, 2
  %326 = urem i32 %325, 1000
  %p_conv10.i = sitofp i32 %326 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %327 = shl i64 %322, 3
  %328 = add nuw nsw i64 %327, %308
  %scevgep952 = getelementptr i8, i8* %call2, i64 %328
  %scevgep952953 = bitcast i8* %scevgep952 to double*
  store double %p_div12.i, double* %scevgep952953, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next950 = add nuw nsw i64 %polly.indvar949, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar949, %305
  br i1 %exitcond1113.not, label %polly.loop_exit948, label %polly.loop_header946, !llvm.loop !121

polly.loop_header954:                             ; preds = %polly.loop_exit936, %polly.loop_exit962
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit962 ], [ 0, %polly.loop_exit936 ]
  %polly.indvar957 = phi i64 [ %polly.indvar_next958, %polly.loop_exit962 ], [ 0, %polly.loop_exit936 ]
  %smin1106 = call i64 @llvm.smin.i64(i64 %indvars.iv1104, i64 -1168)
  %329 = shl nsw i64 %polly.indvar957, 5
  %330 = add nsw i64 %smin1106, 1199
  br label %polly.loop_header960

polly.loop_exit962:                               ; preds = %polly.loop_exit968
  %polly.indvar_next958 = add nuw nsw i64 %polly.indvar957, 1
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -32
  %exitcond1109.not = icmp eq i64 %polly.indvar_next958, 38
  br i1 %exitcond1109.not, label %init_array.exit, label %polly.loop_header954

polly.loop_header960:                             ; preds = %polly.loop_exit968, %polly.loop_header954
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit968 ], [ 0, %polly.loop_header954 ]
  %polly.indvar963 = phi i64 [ %polly.indvar_next964, %polly.loop_exit968 ], [ 0, %polly.loop_header954 ]
  %331 = mul nsw i64 %polly.indvar963, -32
  %smin1216 = call i64 @llvm.smin.i64(i64 %331, i64 -968)
  %332 = add nsw i64 %smin1216, 1000
  %smin1102 = call i64 @llvm.smin.i64(i64 %indvars.iv1100, i64 -968)
  %333 = shl nsw i64 %polly.indvar963, 5
  %334 = add nsw i64 %smin1102, 999
  br label %polly.loop_header966

polly.loop_exit968:                               ; preds = %polly.loop_exit974
  %polly.indvar_next964 = add nuw nsw i64 %polly.indvar963, 1
  %indvars.iv.next1101 = add nsw i64 %indvars.iv1100, -32
  %exitcond1108.not = icmp eq i64 %polly.indvar_next964, 32
  br i1 %exitcond1108.not, label %polly.loop_exit962, label %polly.loop_header960

polly.loop_header966:                             ; preds = %polly.loop_exit974, %polly.loop_header960
  %polly.indvar969 = phi i64 [ 0, %polly.loop_header960 ], [ %polly.indvar_next970, %polly.loop_exit974 ]
  %335 = add nuw nsw i64 %polly.indvar969, %329
  %336 = trunc i64 %335 to i32
  %337 = mul nuw nsw i64 %335, 8000
  %min.iters.check1217 = icmp eq i64 %332, 0
  br i1 %min.iters.check1217, label %polly.loop_header972, label %vector.ph1218

vector.ph1218:                                    ; preds = %polly.loop_header966
  %broadcast.splatinsert1227 = insertelement <4 x i64> poison, i64 %333, i32 0
  %broadcast.splat1228 = shufflevector <4 x i64> %broadcast.splatinsert1227, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1229 = insertelement <4 x i32> poison, i32 %336, i32 0
  %broadcast.splat1230 = shufflevector <4 x i32> %broadcast.splatinsert1229, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1218
  %index1221 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1222, %vector.body1215 ]
  %vec.ind1225 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1218 ], [ %vec.ind.next1226, %vector.body1215 ]
  %338 = add nuw nsw <4 x i64> %vec.ind1225, %broadcast.splat1228
  %339 = trunc <4 x i64> %338 to <4 x i32>
  %340 = mul <4 x i32> %broadcast.splat1230, %339
  %341 = add <4 x i32> %340, <i32 1, i32 1, i32 1, i32 1>
  %342 = urem <4 x i32> %341, <i32 1200, i32 1200, i32 1200, i32 1200>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %345 = extractelement <4 x i64> %338, i32 0
  %346 = shl i64 %345, 3
  %347 = add nuw nsw i64 %346, %337
  %348 = getelementptr i8, i8* %call1, i64 %347
  %349 = bitcast i8* %348 to <4 x double>*
  store <4 x double> %344, <4 x double>* %349, align 8, !alias.scope !115, !noalias !122
  %index.next1222 = add i64 %index1221, 4
  %vec.ind.next1226 = add <4 x i64> %vec.ind1225, <i64 4, i64 4, i64 4, i64 4>
  %350 = icmp eq i64 %index.next1222, %332
  br i1 %350, label %polly.loop_exit974, label %vector.body1215, !llvm.loop !123

polly.loop_exit974:                               ; preds = %vector.body1215, %polly.loop_header972
  %polly.indvar_next970 = add nuw nsw i64 %polly.indvar969, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar969, %330
  br i1 %exitcond1107.not, label %polly.loop_exit968, label %polly.loop_header966

polly.loop_header972:                             ; preds = %polly.loop_header966, %polly.loop_header972
  %polly.indvar975 = phi i64 [ %polly.indvar_next976, %polly.loop_header972 ], [ 0, %polly.loop_header966 ]
  %351 = add nuw nsw i64 %polly.indvar975, %333
  %352 = trunc i64 %351 to i32
  %353 = mul i32 %352, %336
  %354 = add i32 %353, 1
  %355 = urem i32 %354, 1200
  %p_conv.i = sitofp i32 %355 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %356 = shl i64 %351, 3
  %357 = add nuw nsw i64 %356, %337
  %scevgep979 = getelementptr i8, i8* %call1, i64 %357
  %scevgep979980 = bitcast i8* %scevgep979 to double*
  store double %p_div.i, double* %scevgep979980, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next976 = add nuw nsw i64 %polly.indvar975, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar975, %334
  br i1 %exitcond1103.not, label %polly.loop_exit974, label %polly.loop_header972, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 256}
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
