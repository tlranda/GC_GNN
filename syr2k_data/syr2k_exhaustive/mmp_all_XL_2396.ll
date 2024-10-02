; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2396.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2396.c"
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
  %call878 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1730 = bitcast i8* %call1 to double*
  %polly.access.call1739 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2740 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1739, %call2
  %polly.access.call2759 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2759, %call1
  %2 = or i1 %0, %1
  %polly.access.call779 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call779, %call2
  %4 = icmp ule i8* %polly.access.call2759, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call779, %call1
  %8 = icmp ule i8* %polly.access.call1739, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header852, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1172 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1171 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1170 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1169 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1169, %scevgep1172
  %bound1 = icmp ult i8* %scevgep1171, %scevgep1170
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
  br i1 %exitcond18.not.i, label %vector.ph1176, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1176:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1183 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1184 = shufflevector <4 x i64> %broadcast.splatinsert1183, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1176
  %index1177 = phi i64 [ 0, %vector.ph1176 ], [ %index.next1178, %vector.body1175 ]
  %vec.ind1181 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1176 ], [ %vec.ind.next1182, %vector.body1175 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1181, %broadcast.splat1184
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv7.i, i64 %index1177
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1178 = add i64 %index1177, 4
  %vec.ind.next1182 = add <4 x i64> %vec.ind1181, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1178, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1175, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1175
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1176, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit913
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start515, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1238 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1238, label %for.body3.i46.preheader1381, label %vector.ph1239

vector.ph1239:                                    ; preds = %for.body3.i46.preheader
  %n.vec1241 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %vector.ph1239
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1243, %vector.body1237 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i, i64 %index1242
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1243 = add i64 %index1242, 4
  %46 = icmp eq i64 %index.next1243, %n.vec1241
  br i1 %46, label %middle.block1235, label %vector.body1237, !llvm.loop !18

middle.block1235:                                 ; preds = %vector.body1237
  %cmp.n1245 = icmp eq i64 %indvars.iv21.i, %n.vec1241
  br i1 %cmp.n1245, label %for.inc6.i, label %for.body3.i46.preheader1381

for.body3.i46.preheader1381:                      ; preds = %for.body3.i46.preheader, %middle.block1235
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1241, %middle.block1235 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1381, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1381 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1235, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting516
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1283 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1283, label %for.body3.i60.preheader1379, label %vector.ph1284

vector.ph1284:                                    ; preds = %for.body3.i60.preheader
  %n.vec1286 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.body1282, %vector.ph1284
  %index1287 = phi i64 [ 0, %vector.ph1284 ], [ %index.next1288, %vector.body1282 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i52, i64 %index1287
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1291, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1288 = add i64 %index1287, 4
  %57 = icmp eq i64 %index.next1288, %n.vec1286
  br i1 %57, label %middle.block1280, label %vector.body1282, !llvm.loop !57

middle.block1280:                                 ; preds = %vector.body1282
  %cmp.n1290 = icmp eq i64 %indvars.iv21.i52, %n.vec1286
  br i1 %cmp.n1290, label %for.inc6.i63, label %for.body3.i60.preheader1379

for.body3.i60.preheader1379:                      ; preds = %for.body3.i60.preheader, %middle.block1280
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1286, %middle.block1280 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1379, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1379 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1280, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

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
  %min.iters.check1331 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1331, label %for.body3.i99.preheader1377, label %vector.ph1332

vector.ph1332:                                    ; preds = %for.body3.i99.preheader
  %n.vec1334 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1332
  %index1335 = phi i64 [ 0, %vector.ph1332 ], [ %index.next1336, %vector.body1330 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i91, i64 %index1335
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1339, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1336 = add i64 %index1335, 4
  %68 = icmp eq i64 %index.next1336, %n.vec1334
  br i1 %68, label %middle.block1328, label %vector.body1330, !llvm.loop !59

middle.block1328:                                 ; preds = %vector.body1330
  %cmp.n1338 = icmp eq i64 %indvars.iv21.i91, %n.vec1334
  br i1 %cmp.n1338, label %for.inc6.i102, label %for.body3.i99.preheader1377

for.body3.i99.preheader1377:                      ; preds = %for.body3.i99.preheader, %middle.block1328
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1334, %middle.block1328 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1377, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1377 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
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
  %wide.load1353 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1353, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1350 = add i64 %index1349, 4
  %95 = icmp eq i64 %index.next1350, %n.vec1348
  br i1 %95, label %middle.block1340, label %vector.body1342, !llvm.loop !72

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1352 = icmp eq i64 %88, %n.vec1348
  br i1 %cmp.n1352, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1340
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1348, %middle.block1340 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1340
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1344 = add i64 %indvar1343, 1
  br i1 %exitcond1069.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1068.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1067.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2740, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1066.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit224 ], [ 1, %polly.loop_exit208 ]
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %101, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -96
  %98 = mul nuw nsw i64 %polly.indvar219, 96
  %99 = lshr i64 %indvars.iv1061, 2
  %100 = sub nsw i64 %indvars.iv1061, %99
  %101 = add nuw nsw i64 %polly.indvar219, 1
  %pexp.p_div_q = lshr i64 %101, 2
  %polly.loop_guard.not = icmp ult i64 %polly.indvar219, %pexp.p_div_q
  %102 = mul nsw i64 %polly.indvar219, -96
  %103 = icmp slt i64 %102, -1104
  %104 = select i1 %103, i64 %102, i64 -1104
  %105 = add nsw i64 %104, 1199
  %106 = mul nuw nsw i64 %polly.indvar219, 96
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, 96
  %indvars.iv.next1062 = add nuw nsw i64 %indvars.iv1061, 1
  %exitcond1065.not = icmp eq i64 %101, 13
  br i1 %exitcond1065.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  br i1 %polly.loop_guard.not, label %polly.loop_exit230, label %polly.loop_header228.preheader

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %107 = mul nuw nsw i64 %polly.indvar225, 100
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit237, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next226, 10
  br i1 %exitcond1064.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit237
  %indvars.iv1052 = phi i64 [ %indvars.iv1050, %polly.loop_header228.preheader ], [ %indvars.iv.next1053, %polly.loop_exit237 ]
  %indvars.iv1048 = phi i64 [ %indvars.iv, %polly.loop_header228.preheader ], [ %indvars.iv.next1049, %polly.loop_exit237 ]
  %polly.indvar231 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit237 ]
  %108 = shl i64 %polly.indvar231, 7
  %109 = add i64 %97, %108
  %smax1357 = call i64 @llvm.smax.i64(i64 %109, i64 0)
  %110 = mul i64 %polly.indvar231, -128
  %111 = add i64 %98, %110
  %112 = add i64 %smax1357, %111
  %113 = shl nsw i64 %polly.indvar231, 7
  %114 = add nsw i64 %113, %102
  %115 = icmp sgt i64 %114, 0
  %116 = select i1 %115, i64 %114, i64 0
  %polly.loop_guard238.not = icmp sgt i64 %116, %105
  br i1 %polly.loop_guard238.not, label %polly.loop_exit237, label %polly.loop_header235.preheader

polly.loop_header235.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1048, i64 0)
  %117 = add i64 %smax, %indvars.iv1052
  %118 = sub nsw i64 %106, %113
  %119 = add nuw nsw i64 %113, 128
  br label %polly.loop_header235

polly.loop_exit237:                               ; preds = %polly.loop_exit269, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, 128
  %indvars.iv.next1053 = add nsw i64 %indvars.iv1052, -128
  %exitcond1063.not = icmp eq i64 %polly.indvar_next232, %100
  br i1 %exitcond1063.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header235:                             ; preds = %polly.loop_header235.preheader, %polly.loop_exit269
  %indvar1358 = phi i64 [ 0, %polly.loop_header235.preheader ], [ %indvar.next1359, %polly.loop_exit269 ]
  %indvars.iv1054 = phi i64 [ %117, %polly.loop_header235.preheader ], [ %indvars.iv.next1055, %polly.loop_exit269 ]
  %polly.indvar239 = phi i64 [ %116, %polly.loop_header235.preheader ], [ %polly.indvar_next240, %polly.loop_exit269 ]
  %120 = add i64 %112, %indvar1358
  %smin1360 = call i64 @llvm.smin.i64(i64 %120, i64 127)
  %121 = add nsw i64 %smin1360, 1
  %smin1058 = call i64 @llvm.smin.i64(i64 %indvars.iv1054, i64 127)
  %122 = add nsw i64 %polly.indvar239, %118
  %polly.loop_guard2521158 = icmp sgt i64 %122, -1
  %123 = add nuw nsw i64 %polly.indvar239, %106
  %.not = icmp ult i64 %123, %119
  %polly.access.mul.call1261 = mul nsw i64 %123, 1000
  %124 = add nuw i64 %polly.access.mul.call1261, %107
  br i1 %polly.loop_guard2521158, label %polly.loop_header242.us, label %polly.loop_header235.split

polly.loop_header242.us:                          ; preds = %polly.loop_header235, %polly.merge.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.merge.us ], [ 0, %polly.loop_header235 ]
  %125 = add nuw nsw i64 %polly.indvar245.us, %107
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar245.us, 1200
  br label %polly.loop_header249.us

polly.loop_header249.us:                          ; preds = %polly.loop_header242.us, %polly.loop_header249.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header249.us ], [ 0, %polly.loop_header242.us ]
  %126 = add nuw nsw i64 %polly.indvar253.us, %113
  %polly.access.mul.call1257.us = mul nuw nsw i64 %126, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %125, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar253.us, %smin1058
  br i1 %exitcond1056.not, label %polly.cond.loopexit.us, label %polly.loop_header249.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1262.us = add nuw nsw i64 %124, %polly.indvar245.us
  %polly.access.call1263.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us
  %polly.access.call1263.load.us = load double, double* %polly.access.call1263.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %122
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  store double %polly.access.call1263.load.us, double* %polly.access.Packed_MemRef_call1266.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next246.us, 100
  br i1 %exitcond1057.not, label %polly.loop_header267.preheader, label %polly.loop_header242.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header249.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header235.split:                       ; preds = %polly.loop_header235
  br i1 %.not, label %polly.loop_exit269, label %polly.loop_header242

polly.loop_exit269:                               ; preds = %polly.loop_exit276.loopexit.us, %polly.loop_header235.split, %polly.loop_header267.preheader
  %polly.indvar_next240 = add nuw nsw i64 %polly.indvar239, 1
  %polly.loop_cond241.not.not = icmp ult i64 %polly.indvar239, %105
  %indvars.iv.next1055 = add i64 %indvars.iv1054, 1
  %indvar.next1359 = add i64 %indvar1358, 1
  br i1 %polly.loop_cond241.not.not, label %polly.loop_header235, label %polly.loop_exit237

polly.loop_header242:                             ; preds = %polly.loop_header235.split, %polly.loop_header242
  %polly.indvar245 = phi i64 [ %polly.indvar_next246, %polly.loop_header242 ], [ 0, %polly.loop_header235.split ]
  %polly.access.add.call1262 = add nuw nsw i64 %124, %polly.indvar245
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar245, 1200
  %polly.access.add.Packed_MemRef_call1265 = add nsw i64 %polly.access.mul.Packed_MemRef_call1264, %122
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.indvar_next246 = add nuw nsw i64 %polly.indvar245, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next246, 100
  br i1 %exitcond.not, label %polly.loop_header267.preheader, label %polly.loop_header242

polly.loop_header267.preheader:                   ; preds = %polly.loop_header242, %polly.merge.us
  %127 = mul i64 %123, 9600
  br i1 %polly.loop_guard2521158, label %polly.loop_header267.us, label %polly.loop_exit269

polly.loop_header267.us:                          ; preds = %polly.loop_header267.preheader, %polly.loop_exit276.loopexit.us
  %polly.indvar270.us = phi i64 [ %polly.indvar_next271.us, %polly.loop_exit276.loopexit.us ], [ 0, %polly.loop_header267.preheader ]
  %polly.access.mul.Packed_MemRef_call1281.us = mul nuw nsw i64 %polly.indvar270.us, 1200
  %128 = add nuw nsw i64 %polly.indvar270.us, %107
  %polly.access.mul.Packed_MemRef_call2285.us = mul nuw nsw i64 %128, 1200
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us, %123
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %polly.access.add.Packed_MemRef_call1294.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1281.us, %122
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %min.iters.check1361 = icmp ult i64 %121, 4
  br i1 %min.iters.check1361, label %polly.loop_header274.us.preheader, label %vector.ph1362

vector.ph1362:                                    ; preds = %polly.loop_header267.us
  %n.vec1364 = and i64 %121, -4
  %broadcast.splatinsert1370 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1371 = shufflevector <4 x double> %broadcast.splatinsert1370, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1373 = insertelement <4 x double> poison, double %_p_scalar_296.us, i32 0
  %broadcast.splat1374 = shufflevector <4 x double> %broadcast.splatinsert1373, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %vector.ph1362
  %index1365 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1366, %vector.body1356 ]
  %129 = add nuw nsw i64 %index1365, %113
  %130 = add nuw nsw i64 %index1365, %polly.access.mul.Packed_MemRef_call1281.us
  %131 = getelementptr double, double* %Packed_MemRef_call1, i64 %130
  %132 = bitcast double* %131 to <4 x double>*
  %wide.load1369 = load <4 x double>, <4 x double>* %132, align 8
  %133 = fmul fast <4 x double> %broadcast.splat1371, %wide.load1369
  %134 = add nuw nsw i64 %129, %polly.access.mul.Packed_MemRef_call2285.us
  %135 = getelementptr double, double* %Packed_MemRef_call2, i64 %134
  %136 = bitcast double* %135 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %136, align 8
  %137 = fmul fast <4 x double> %broadcast.splat1374, %wide.load1372
  %138 = shl i64 %129, 3
  %139 = add i64 %138, %127
  %140 = getelementptr i8, i8* %call, i64 %139
  %141 = bitcast i8* %140 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %141, align 8, !alias.scope !65, !noalias !67
  %142 = fadd fast <4 x double> %137, %133
  %143 = fmul fast <4 x double> %142, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %144 = fadd fast <4 x double> %143, %wide.load1375
  %145 = bitcast i8* %140 to <4 x double>*
  store <4 x double> %144, <4 x double>* %145, align 8, !alias.scope !65, !noalias !67
  %index.next1366 = add i64 %index1365, 4
  %146 = icmp eq i64 %index.next1366, %n.vec1364
  br i1 %146, label %middle.block1354, label %vector.body1356, !llvm.loop !77

middle.block1354:                                 ; preds = %vector.body1356
  %cmp.n1368 = icmp eq i64 %121, %n.vec1364
  br i1 %cmp.n1368, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us.preheader

polly.loop_header274.us.preheader:                ; preds = %polly.loop_header267.us, %middle.block1354
  %polly.indvar278.us.ph = phi i64 [ 0, %polly.loop_header267.us ], [ %n.vec1364, %middle.block1354 ]
  br label %polly.loop_header274.us

polly.loop_header274.us:                          ; preds = %polly.loop_header274.us.preheader, %polly.loop_header274.us
  %polly.indvar278.us = phi i64 [ %polly.indvar_next279.us, %polly.loop_header274.us ], [ %polly.indvar278.us.ph, %polly.loop_header274.us.preheader ]
  %147 = add nuw nsw i64 %polly.indvar278.us, %113
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.indvar278.us, %polly.access.mul.Packed_MemRef_call1281.us
  %polly.access.Packed_MemRef_call1283.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call1283.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %polly.access.add.Packed_MemRef_call2290.us = add nuw nsw i64 %147, %polly.access.mul.Packed_MemRef_call2285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %148 = shl i64 %147, 3
  %149 = add i64 %148, %127
  %scevgep297.us = getelementptr i8, i8* %call, i64 %149
  %scevgep297298.us = bitcast i8* %scevgep297.us to double*
  %_p_scalar_299.us = load double, double* %scevgep297298.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_299.us
  store double %p_add42.i118.us, double* %scevgep297298.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us = add nuw nsw i64 %polly.indvar278.us, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar278.us, %smin1058
  br i1 %exitcond1059.not, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us, !llvm.loop !78

polly.loop_exit276.loopexit.us:                   ; preds = %polly.loop_header274.us, %middle.block1354
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next271.us, 100
  br i1 %exitcond1060.not, label %polly.loop_exit269, label %polly.loop_header267.us

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall306 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit430
  tail call void @free(i8* %malloccall304)
  tail call void @free(i8* %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1295 = phi i64 [ %indvar.next1296, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %150 = add i64 %indvar1295, 1
  %151 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1297 = icmp ult i64 %150, 4
  br i1 %min.iters.check1297, label %polly.loop_header396.preheader, label %vector.ph1298

vector.ph1298:                                    ; preds = %polly.loop_header390
  %n.vec1300 = and i64 %150, -4
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1302, %vector.body1294 ]
  %152 = shl nuw nsw i64 %index1301, 3
  %153 = getelementptr i8, i8* %scevgep402, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !79, !noalias !81
  %155 = fmul fast <4 x double> %wide.load1305, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !79, !noalias !81
  %index.next1302 = add i64 %index1301, 4
  %157 = icmp eq i64 %index.next1302, %n.vec1300
  br i1 %157, label %middle.block1292, label %vector.body1294, !llvm.loop !86

middle.block1292:                                 ; preds = %vector.body1294
  %cmp.n1304 = icmp eq i64 %150, %n.vec1300
  br i1 %cmp.n1304, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1292
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1300, %middle.block1292 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1292
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1296 = add i64 %indvar1295, 1
  br i1 %exitcond1096.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %158
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1095.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !87

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit414 ], [ 0, %polly.loop_header406.preheader ]
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar409, 1200
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_header412
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next410, 1000
  br i1 %exitcond1094.not, label %polly.loop_header422, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_header412, %polly.loop_header406
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next416, %polly.loop_header412 ]
  %polly.access.mul.call2419 = mul nuw nsw i64 %polly.indvar415, 1000
  %polly.access.add.call2420 = add nuw nsw i64 %polly.access.mul.call2419, %polly.indvar409
  %polly.access.call2421 = getelementptr double, double* %polly.access.cast.call2740, i64 %polly.access.add.call2420
  %polly.access.call2421.load = load double, double* %polly.access.call2421, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar415, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2421.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next416, 1200
  br i1 %exitcond1093.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header422:                             ; preds = %polly.loop_exit414, %polly.loop_exit430
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit430 ], [ 1, %polly.loop_exit414 ]
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit430 ], [ 0, %polly.loop_exit414 ]
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit430 ], [ 0, %polly.loop_exit414 ]
  %polly.indvar425 = phi i64 [ %163, %polly.loop_exit430 ], [ 0, %polly.loop_exit414 ]
  %159 = mul nsw i64 %polly.indvar425, -96
  %160 = mul nuw nsw i64 %polly.indvar425, 96
  %161 = lshr i64 %indvars.iv1088, 2
  %162 = sub nsw i64 %indvars.iv1088, %161
  %163 = add nuw nsw i64 %polly.indvar425, 1
  %pexp.p_div_q434 = lshr i64 %163, 2
  %polly.loop_guard439.not = icmp ult i64 %polly.indvar425, %pexp.p_div_q434
  %164 = mul nsw i64 %polly.indvar425, -96
  %165 = icmp slt i64 %164, -1104
  %166 = select i1 %165, i64 %164, i64 -1104
  %167 = add nsw i64 %166, 1199
  %168 = mul nuw nsw i64 %polly.indvar425, 96
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_exit438
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -96
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 96
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 1
  %exitcond1092.not = icmp eq i64 %163, 13
  br i1 %exitcond1092.not, label %polly.exiting303, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_exit438, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_exit438 ]
  br i1 %polly.loop_guard439.not, label %polly.loop_exit438, label %polly.loop_header436.preheader

polly.loop_header436.preheader:                   ; preds = %polly.loop_header428
  %169 = mul nuw nsw i64 %polly.indvar431, 100
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit446, %polly.loop_header428
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next432, 10
  br i1 %exitcond1091.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header436:                             ; preds = %polly.loop_header436.preheader, %polly.loop_exit446
  %indvars.iv1078 = phi i64 [ %indvars.iv1076, %polly.loop_header436.preheader ], [ %indvars.iv.next1079, %polly.loop_exit446 ]
  %indvars.iv1073 = phi i64 [ %indvars.iv1071, %polly.loop_header436.preheader ], [ %indvars.iv.next1074, %polly.loop_exit446 ]
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header436.preheader ], [ %polly.indvar_next441, %polly.loop_exit446 ]
  %170 = shl i64 %polly.indvar440, 7
  %171 = add i64 %159, %170
  %smax1309 = call i64 @llvm.smax.i64(i64 %171, i64 0)
  %172 = mul i64 %polly.indvar440, -128
  %173 = add i64 %160, %172
  %174 = add i64 %smax1309, %173
  %175 = shl nsw i64 %polly.indvar440, 7
  %176 = add nsw i64 %175, %164
  %177 = icmp sgt i64 %176, 0
  %178 = select i1 %177, i64 %176, i64 0
  %polly.loop_guard447.not = icmp sgt i64 %178, %167
  br i1 %polly.loop_guard447.not, label %polly.loop_exit446, label %polly.loop_header444.preheader

polly.loop_header444.preheader:                   ; preds = %polly.loop_header436
  %smax1075 = call i64 @llvm.smax.i64(i64 %indvars.iv1073, i64 0)
  %179 = add i64 %smax1075, %indvars.iv1078
  %180 = sub nsw i64 %168, %175
  %181 = add nuw nsw i64 %175, 128
  br label %polly.loop_header444

polly.loop_exit446:                               ; preds = %polly.loop_exit482, %polly.loop_header436
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, 128
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, -128
  %exitcond1090.not = icmp eq i64 %polly.indvar_next441, %162
  br i1 %exitcond1090.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header444:                             ; preds = %polly.loop_header444.preheader, %polly.loop_exit482
  %indvar1310 = phi i64 [ 0, %polly.loop_header444.preheader ], [ %indvar.next1311, %polly.loop_exit482 ]
  %indvars.iv1080 = phi i64 [ %179, %polly.loop_header444.preheader ], [ %indvars.iv.next1081, %polly.loop_exit482 ]
  %polly.indvar448 = phi i64 [ %178, %polly.loop_header444.preheader ], [ %polly.indvar_next449, %polly.loop_exit482 ]
  %182 = add i64 %174, %indvar1310
  %smin1312 = call i64 @llvm.smin.i64(i64 %182, i64 127)
  %183 = add nsw i64 %smin1312, 1
  %smin1085 = call i64 @llvm.smin.i64(i64 %indvars.iv1080, i64 127)
  %184 = add nsw i64 %polly.indvar448, %180
  %polly.loop_guard4611159 = icmp sgt i64 %184, -1
  %185 = add nuw nsw i64 %polly.indvar448, %168
  %.not932 = icmp ult i64 %185, %181
  %polly.access.mul.call1474 = mul nsw i64 %185, 1000
  %186 = add nuw i64 %polly.access.mul.call1474, %169
  br i1 %polly.loop_guard4611159, label %polly.loop_header451.us, label %polly.loop_header444.split

polly.loop_header451.us:                          ; preds = %polly.loop_header444, %polly.merge470.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.merge470.us ], [ 0, %polly.loop_header444 ]
  %187 = add nuw nsw i64 %polly.indvar454.us, %169
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar454.us, 1200
  br label %polly.loop_header458.us

polly.loop_header458.us:                          ; preds = %polly.loop_header451.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header451.us ]
  %188 = add nuw nsw i64 %polly.indvar462.us, %175
  %polly.access.mul.call1466.us = mul nuw nsw i64 %188, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %187, %polly.access.mul.call1466.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar462.us, %smin1085
  br i1 %exitcond1083.not, label %polly.cond469.loopexit.us, label %polly.loop_header458.us

polly.then471.us:                                 ; preds = %polly.cond469.loopexit.us
  %polly.access.add.call1475.us = add nuw nsw i64 %186, %polly.indvar454.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1305478.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1305.us, %184
  %polly.access.Packed_MemRef_call1305479.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1305479.us, align 8
  br label %polly.merge470.us

polly.merge470.us:                                ; preds = %polly.then471.us, %polly.cond469.loopexit.us
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next455.us, 100
  br i1 %exitcond1084.not, label %polly.loop_header480.preheader, label %polly.loop_header451.us

polly.cond469.loopexit.us:                        ; preds = %polly.loop_header458.us
  br i1 %.not932, label %polly.merge470.us, label %polly.then471.us

polly.loop_header444.split:                       ; preds = %polly.loop_header444
  br i1 %.not932, label %polly.loop_exit482, label %polly.loop_header451

polly.loop_exit482:                               ; preds = %polly.loop_exit489.loopexit.us, %polly.loop_header444.split, %polly.loop_header480.preheader
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %polly.loop_cond450.not.not = icmp ult i64 %polly.indvar448, %167
  %indvars.iv.next1081 = add i64 %indvars.iv1080, 1
  %indvar.next1311 = add i64 %indvar1310, 1
  br i1 %polly.loop_cond450.not.not, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header451:                             ; preds = %polly.loop_header444.split, %polly.loop_header451
  %polly.indvar454 = phi i64 [ %polly.indvar_next455, %polly.loop_header451 ], [ 0, %polly.loop_header444.split ]
  %polly.access.add.call1475 = add nuw nsw i64 %186, %polly.indvar454
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1305477 = mul nuw nsw i64 %polly.indvar454, 1200
  %polly.access.add.Packed_MemRef_call1305478 = add nsw i64 %polly.access.mul.Packed_MemRef_call1305477, %184
  %polly.access.Packed_MemRef_call1305479 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1305479, align 8
  %polly.indvar_next455 = add nuw nsw i64 %polly.indvar454, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next455, 100
  br i1 %exitcond1070.not, label %polly.loop_header480.preheader, label %polly.loop_header451

polly.loop_header480.preheader:                   ; preds = %polly.loop_header451, %polly.merge470.us
  %189 = mul i64 %185, 9600
  br i1 %polly.loop_guard4611159, label %polly.loop_header480.us, label %polly.loop_exit482

polly.loop_header480.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit489.loopexit.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_exit489.loopexit.us ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1305494.us = mul nuw nsw i64 %polly.indvar483.us, 1200
  %190 = add nuw nsw i64 %polly.indvar483.us, %169
  %polly.access.mul.Packed_MemRef_call2307498.us = mul nuw nsw i64 %190, 1200
  %polly.access.add.Packed_MemRef_call2307499.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us, %185
  %polly.access.Packed_MemRef_call2307500.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2307500.us, align 8
  %polly.access.add.Packed_MemRef_call1305507.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1305494.us, %184
  %polly.access.Packed_MemRef_call1305508.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call1305508.us, align 8
  %min.iters.check1313 = icmp ult i64 %183, 4
  br i1 %min.iters.check1313, label %polly.loop_header487.us.preheader, label %vector.ph1314

vector.ph1314:                                    ; preds = %polly.loop_header480.us
  %n.vec1316 = and i64 %183, -4
  %broadcast.splatinsert1322 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1323 = shufflevector <4 x double> %broadcast.splatinsert1322, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1325 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1326 = shufflevector <4 x double> %broadcast.splatinsert1325, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1308 ]
  %191 = add nuw nsw i64 %index1317, %175
  %192 = add nuw nsw i64 %index1317, %polly.access.mul.Packed_MemRef_call1305494.us
  %193 = getelementptr double, double* %Packed_MemRef_call1305, i64 %192
  %194 = bitcast double* %193 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %194, align 8
  %195 = fmul fast <4 x double> %broadcast.splat1323, %wide.load1321
  %196 = add nuw nsw i64 %191, %polly.access.mul.Packed_MemRef_call2307498.us
  %197 = getelementptr double, double* %Packed_MemRef_call2307, i64 %196
  %198 = bitcast double* %197 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %198, align 8
  %199 = fmul fast <4 x double> %broadcast.splat1326, %wide.load1324
  %200 = shl i64 %191, 3
  %201 = add i64 %200, %189
  %202 = getelementptr i8, i8* %call, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %203, align 8, !alias.scope !79, !noalias !81
  %204 = fadd fast <4 x double> %199, %195
  %205 = fmul fast <4 x double> %204, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %206 = fadd fast <4 x double> %205, %wide.load1327
  %207 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %206, <4 x double>* %207, align 8, !alias.scope !79, !noalias !81
  %index.next1318 = add i64 %index1317, 4
  %208 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %208, label %middle.block1306, label %vector.body1308, !llvm.loop !90

middle.block1306:                                 ; preds = %vector.body1308
  %cmp.n1320 = icmp eq i64 %183, %n.vec1316
  br i1 %cmp.n1320, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us.preheader

polly.loop_header487.us.preheader:                ; preds = %polly.loop_header480.us, %middle.block1306
  %polly.indvar491.us.ph = phi i64 [ 0, %polly.loop_header480.us ], [ %n.vec1316, %middle.block1306 ]
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header487.us.preheader, %polly.loop_header487.us
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_header487.us ], [ %polly.indvar491.us.ph, %polly.loop_header487.us.preheader ]
  %209 = add nuw nsw i64 %polly.indvar491.us, %175
  %polly.access.add.Packed_MemRef_call1305495.us = add nuw nsw i64 %polly.indvar491.us, %polly.access.mul.Packed_MemRef_call1305494.us
  %polly.access.Packed_MemRef_call1305496.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call1305496.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %polly.access.add.Packed_MemRef_call2307503.us = add nuw nsw i64 %209, %polly.access.mul.Packed_MemRef_call2307498.us
  %polly.access.Packed_MemRef_call2307504.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call2307504.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %210 = shl i64 %209, 3
  %211 = add i64 %210, %189
  %scevgep510.us = getelementptr i8, i8* %call, i64 %211
  %scevgep510511.us = bitcast i8* %scevgep510.us to double*
  %_p_scalar_512.us = load double, double* %scevgep510511.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_512.us
  store double %p_add42.i79.us, double* %scevgep510511.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar491.us, %smin1085
  br i1 %exitcond1086.not, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us, !llvm.loop !91

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_header487.us, %middle.block1306
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next484.us, 100
  br i1 %exitcond1087.not, label %polly.loop_exit482, label %polly.loop_header480.us

polly.start515:                                   ; preds = %init_array.exit
  %malloccall517 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall519 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header603

polly.exiting516:                                 ; preds = %polly.loop_exit643
  tail call void @free(i8* %malloccall517)
  tail call void @free(i8* %malloccall519)
  br label %kernel_syr2k.exit

polly.loop_header603:                             ; preds = %polly.loop_exit611, %polly.start515
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit611 ], [ 0, %polly.start515 ]
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_exit611 ], [ 1, %polly.start515 ]
  %212 = add i64 %indvar, 1
  %213 = mul nuw nsw i64 %polly.indvar606, 9600
  %scevgep615 = getelementptr i8, i8* %call, i64 %213
  %min.iters.check1249 = icmp ult i64 %212, 4
  br i1 %min.iters.check1249, label %polly.loop_header609.preheader, label %vector.ph1250

vector.ph1250:                                    ; preds = %polly.loop_header603
  %n.vec1252 = and i64 %212, -4
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1254, %vector.body1248 ]
  %214 = shl nuw nsw i64 %index1253, 3
  %215 = getelementptr i8, i8* %scevgep615, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  %wide.load1257 = load <4 x double>, <4 x double>* %216, align 8, !alias.scope !92, !noalias !94
  %217 = fmul fast <4 x double> %wide.load1257, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %218 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %217, <4 x double>* %218, align 8, !alias.scope !92, !noalias !94
  %index.next1254 = add i64 %index1253, 4
  %219 = icmp eq i64 %index.next1254, %n.vec1252
  br i1 %219, label %middle.block1246, label %vector.body1248, !llvm.loop !99

middle.block1246:                                 ; preds = %vector.body1248
  %cmp.n1256 = icmp eq i64 %212, %n.vec1252
  br i1 %cmp.n1256, label %polly.loop_exit611, label %polly.loop_header609.preheader

polly.loop_header609.preheader:                   ; preds = %polly.loop_header603, %middle.block1246
  %polly.indvar612.ph = phi i64 [ 0, %polly.loop_header603 ], [ %n.vec1252, %middle.block1246 ]
  br label %polly.loop_header609

polly.loop_exit611:                               ; preds = %polly.loop_header609, %middle.block1246
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar_next607, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1123.not, label %polly.loop_header619.preheader, label %polly.loop_header603

polly.loop_header619.preheader:                   ; preds = %polly.loop_exit611
  %Packed_MemRef_call1518 = bitcast i8* %malloccall517 to double*
  %Packed_MemRef_call2520 = bitcast i8* %malloccall519 to double*
  br label %polly.loop_header619

polly.loop_header609:                             ; preds = %polly.loop_header609.preheader, %polly.loop_header609
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header609 ], [ %polly.indvar612.ph, %polly.loop_header609.preheader ]
  %220 = shl nuw nsw i64 %polly.indvar612, 3
  %scevgep616 = getelementptr i8, i8* %scevgep615, i64 %220
  %scevgep616617 = bitcast i8* %scevgep616 to double*
  %_p_scalar_618 = load double, double* %scevgep616617, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_618, 1.200000e+00
  store double %p_mul.i, double* %scevgep616617, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next613, %polly.indvar606
  br i1 %exitcond1122.not, label %polly.loop_exit611, label %polly.loop_header609, !llvm.loop !100

polly.loop_header619:                             ; preds = %polly.loop_header619.preheader, %polly.loop_exit627
  %polly.indvar622 = phi i64 [ %polly.indvar_next623, %polly.loop_exit627 ], [ 0, %polly.loop_header619.preheader ]
  %polly.access.mul.Packed_MemRef_call2520 = mul nuw nsw i64 %polly.indvar622, 1200
  br label %polly.loop_header625

polly.loop_exit627:                               ; preds = %polly.loop_header625
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next623, 1000
  br i1 %exitcond1121.not, label %polly.loop_header635, label %polly.loop_header619

polly.loop_header625:                             ; preds = %polly.loop_header625, %polly.loop_header619
  %polly.indvar628 = phi i64 [ 0, %polly.loop_header619 ], [ %polly.indvar_next629, %polly.loop_header625 ]
  %polly.access.mul.call2632 = mul nuw nsw i64 %polly.indvar628, 1000
  %polly.access.add.call2633 = add nuw nsw i64 %polly.access.mul.call2632, %polly.indvar622
  %polly.access.call2634 = getelementptr double, double* %polly.access.cast.call2740, i64 %polly.access.add.call2633
  %polly.access.call2634.load = load double, double* %polly.access.call2634, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2520 = add nuw nsw i64 %polly.indvar628, %polly.access.mul.Packed_MemRef_call2520
  %polly.access.Packed_MemRef_call2520 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520
  store double %polly.access.call2634.load, double* %polly.access.Packed_MemRef_call2520, align 8
  %polly.indvar_next629 = add nuw nsw i64 %polly.indvar628, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next629, 1200
  br i1 %exitcond1120.not, label %polly.loop_exit627, label %polly.loop_header625

polly.loop_header635:                             ; preds = %polly.loop_exit627, %polly.loop_exit643
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit643 ], [ 1, %polly.loop_exit627 ]
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit643 ], [ 0, %polly.loop_exit627 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit643 ], [ 0, %polly.loop_exit627 ]
  %polly.indvar638 = phi i64 [ %225, %polly.loop_exit643 ], [ 0, %polly.loop_exit627 ]
  %221 = mul nsw i64 %polly.indvar638, -96
  %222 = mul nuw nsw i64 %polly.indvar638, 96
  %223 = lshr i64 %indvars.iv1115, 2
  %224 = sub nsw i64 %indvars.iv1115, %223
  %225 = add nuw nsw i64 %polly.indvar638, 1
  %pexp.p_div_q647 = lshr i64 %225, 2
  %polly.loop_guard652.not = icmp ult i64 %polly.indvar638, %pexp.p_div_q647
  %226 = mul nsw i64 %polly.indvar638, -96
  %227 = icmp slt i64 %226, -1104
  %228 = select i1 %227, i64 %226, i64 -1104
  %229 = add nsw i64 %228, 1199
  %230 = mul nuw nsw i64 %polly.indvar638, 96
  br label %polly.loop_header641

polly.loop_exit643:                               ; preds = %polly.loop_exit651
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -96
  %indvars.iv.next1104 = add nuw nsw i64 %indvars.iv1103, 96
  %indvars.iv.next1116 = add nuw nsw i64 %indvars.iv1115, 1
  %exitcond1119.not = icmp eq i64 %225, 13
  br i1 %exitcond1119.not, label %polly.exiting516, label %polly.loop_header635

polly.loop_header641:                             ; preds = %polly.loop_exit651, %polly.loop_header635
  %polly.indvar644 = phi i64 [ 0, %polly.loop_header635 ], [ %polly.indvar_next645, %polly.loop_exit651 ]
  br i1 %polly.loop_guard652.not, label %polly.loop_exit651, label %polly.loop_header649.preheader

polly.loop_header649.preheader:                   ; preds = %polly.loop_header641
  %231 = mul nuw nsw i64 %polly.indvar644, 100
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit659, %polly.loop_header641
  %polly.indvar_next645 = add nuw nsw i64 %polly.indvar644, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next645, 10
  br i1 %exitcond1118.not, label %polly.loop_exit643, label %polly.loop_header641

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit659
  %indvars.iv1105 = phi i64 [ %indvars.iv1103, %polly.loop_header649.preheader ], [ %indvars.iv.next1106, %polly.loop_exit659 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv1098, %polly.loop_header649.preheader ], [ %indvars.iv.next1101, %polly.loop_exit659 ]
  %polly.indvar653 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit659 ]
  %232 = shl i64 %polly.indvar653, 7
  %233 = add i64 %221, %232
  %smax1261 = call i64 @llvm.smax.i64(i64 %233, i64 0)
  %234 = mul i64 %polly.indvar653, -128
  %235 = add i64 %222, %234
  %236 = add i64 %smax1261, %235
  %237 = shl nsw i64 %polly.indvar653, 7
  %238 = add nsw i64 %237, %226
  %239 = icmp sgt i64 %238, 0
  %240 = select i1 %239, i64 %238, i64 0
  %polly.loop_guard660.not = icmp sgt i64 %240, %229
  br i1 %polly.loop_guard660.not, label %polly.loop_exit659, label %polly.loop_header657.preheader

polly.loop_header657.preheader:                   ; preds = %polly.loop_header649
  %smax1102 = call i64 @llvm.smax.i64(i64 %indvars.iv1100, i64 0)
  %241 = add i64 %smax1102, %indvars.iv1105
  %242 = sub nsw i64 %230, %237
  %243 = add nuw nsw i64 %237, 128
  br label %polly.loop_header657

polly.loop_exit659:                               ; preds = %polly.loop_exit695, %polly.loop_header649
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %indvars.iv.next1101 = add nsw i64 %indvars.iv1100, 128
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, -128
  %exitcond1117.not = icmp eq i64 %polly.indvar_next654, %224
  br i1 %exitcond1117.not, label %polly.loop_exit651, label %polly.loop_header649

polly.loop_header657:                             ; preds = %polly.loop_header657.preheader, %polly.loop_exit695
  %indvar1262 = phi i64 [ 0, %polly.loop_header657.preheader ], [ %indvar.next1263, %polly.loop_exit695 ]
  %indvars.iv1107 = phi i64 [ %241, %polly.loop_header657.preheader ], [ %indvars.iv.next1108, %polly.loop_exit695 ]
  %polly.indvar661 = phi i64 [ %240, %polly.loop_header657.preheader ], [ %polly.indvar_next662, %polly.loop_exit695 ]
  %244 = add i64 %236, %indvar1262
  %smin1264 = call i64 @llvm.smin.i64(i64 %244, i64 127)
  %245 = add nsw i64 %smin1264, 1
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1107, i64 127)
  %246 = add nsw i64 %polly.indvar661, %242
  %polly.loop_guard6741160 = icmp sgt i64 %246, -1
  %247 = add nuw nsw i64 %polly.indvar661, %230
  %.not933 = icmp ult i64 %247, %243
  %polly.access.mul.call1687 = mul nsw i64 %247, 1000
  %248 = add nuw i64 %polly.access.mul.call1687, %231
  br i1 %polly.loop_guard6741160, label %polly.loop_header664.us, label %polly.loop_header657.split

polly.loop_header664.us:                          ; preds = %polly.loop_header657, %polly.merge683.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.merge683.us ], [ 0, %polly.loop_header657 ]
  %249 = add nuw nsw i64 %polly.indvar667.us, %231
  %polly.access.mul.Packed_MemRef_call1518.us = mul nuw nsw i64 %polly.indvar667.us, 1200
  br label %polly.loop_header671.us

polly.loop_header671.us:                          ; preds = %polly.loop_header664.us, %polly.loop_header671.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.loop_header671.us ], [ 0, %polly.loop_header664.us ]
  %250 = add nuw nsw i64 %polly.indvar675.us, %237
  %polly.access.mul.call1679.us = mul nuw nsw i64 %250, 1000
  %polly.access.add.call1680.us = add nuw nsw i64 %249, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1518.us = add nuw nsw i64 %polly.indvar675.us, %polly.access.mul.Packed_MemRef_call1518.us
  %polly.access.Packed_MemRef_call1518.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1518.us, align 8
  %polly.indvar_next676.us = add nuw nsw i64 %polly.indvar675.us, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar675.us, %smin1112
  br i1 %exitcond1110.not, label %polly.cond682.loopexit.us, label %polly.loop_header671.us

polly.then684.us:                                 ; preds = %polly.cond682.loopexit.us
  %polly.access.add.call1688.us = add nuw nsw i64 %248, %polly.indvar667.us
  %polly.access.call1689.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us
  %polly.access.call1689.load.us = load double, double* %polly.access.call1689.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1518691.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1518.us, %246
  %polly.access.Packed_MemRef_call1518692.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us
  store double %polly.access.call1689.load.us, double* %polly.access.Packed_MemRef_call1518692.us, align 8
  br label %polly.merge683.us

polly.merge683.us:                                ; preds = %polly.then684.us, %polly.cond682.loopexit.us
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next668.us, 100
  br i1 %exitcond1111.not, label %polly.loop_header693.preheader, label %polly.loop_header664.us

polly.cond682.loopexit.us:                        ; preds = %polly.loop_header671.us
  br i1 %.not933, label %polly.merge683.us, label %polly.then684.us

polly.loop_header657.split:                       ; preds = %polly.loop_header657
  br i1 %.not933, label %polly.loop_exit695, label %polly.loop_header664

polly.loop_exit695:                               ; preds = %polly.loop_exit702.loopexit.us, %polly.loop_header657.split, %polly.loop_header693.preheader
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %polly.loop_cond663.not.not = icmp ult i64 %polly.indvar661, %229
  %indvars.iv.next1108 = add i64 %indvars.iv1107, 1
  %indvar.next1263 = add i64 %indvar1262, 1
  br i1 %polly.loop_cond663.not.not, label %polly.loop_header657, label %polly.loop_exit659

polly.loop_header664:                             ; preds = %polly.loop_header657.split, %polly.loop_header664
  %polly.indvar667 = phi i64 [ %polly.indvar_next668, %polly.loop_header664 ], [ 0, %polly.loop_header657.split ]
  %polly.access.add.call1688 = add nuw nsw i64 %248, %polly.indvar667
  %polly.access.call1689 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688
  %polly.access.call1689.load = load double, double* %polly.access.call1689, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1518690 = mul nuw nsw i64 %polly.indvar667, 1200
  %polly.access.add.Packed_MemRef_call1518691 = add nsw i64 %polly.access.mul.Packed_MemRef_call1518690, %246
  %polly.access.Packed_MemRef_call1518692 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691
  store double %polly.access.call1689.load, double* %polly.access.Packed_MemRef_call1518692, align 8
  %polly.indvar_next668 = add nuw nsw i64 %polly.indvar667, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next668, 100
  br i1 %exitcond1097.not, label %polly.loop_header693.preheader, label %polly.loop_header664

polly.loop_header693.preheader:                   ; preds = %polly.loop_header664, %polly.merge683.us
  %251 = mul i64 %247, 9600
  br i1 %polly.loop_guard6741160, label %polly.loop_header693.us, label %polly.loop_exit695

polly.loop_header693.us:                          ; preds = %polly.loop_header693.preheader, %polly.loop_exit702.loopexit.us
  %polly.indvar696.us = phi i64 [ %polly.indvar_next697.us, %polly.loop_exit702.loopexit.us ], [ 0, %polly.loop_header693.preheader ]
  %polly.access.mul.Packed_MemRef_call1518707.us = mul nuw nsw i64 %polly.indvar696.us, 1200
  %252 = add nuw nsw i64 %polly.indvar696.us, %231
  %polly.access.mul.Packed_MemRef_call2520711.us = mul nuw nsw i64 %252, 1200
  %polly.access.add.Packed_MemRef_call2520712.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us, %247
  %polly.access.Packed_MemRef_call2520713.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call2520713.us, align 8
  %polly.access.add.Packed_MemRef_call1518720.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1518707.us, %246
  %polly.access.Packed_MemRef_call1518721.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us
  %_p_scalar_722.us = load double, double* %polly.access.Packed_MemRef_call1518721.us, align 8
  %min.iters.check1265 = icmp ult i64 %245, 4
  br i1 %min.iters.check1265, label %polly.loop_header700.us.preheader, label %vector.ph1266

vector.ph1266:                                    ; preds = %polly.loop_header693.us
  %n.vec1268 = and i64 %245, -4
  %broadcast.splatinsert1274 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1275 = shufflevector <4 x double> %broadcast.splatinsert1274, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1277 = insertelement <4 x double> poison, double %_p_scalar_722.us, i32 0
  %broadcast.splat1278 = shufflevector <4 x double> %broadcast.splatinsert1277, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1260 ]
  %253 = add nuw nsw i64 %index1269, %237
  %254 = add nuw nsw i64 %index1269, %polly.access.mul.Packed_MemRef_call1518707.us
  %255 = getelementptr double, double* %Packed_MemRef_call1518, i64 %254
  %256 = bitcast double* %255 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %256, align 8
  %257 = fmul fast <4 x double> %broadcast.splat1275, %wide.load1273
  %258 = add nuw nsw i64 %253, %polly.access.mul.Packed_MemRef_call2520711.us
  %259 = getelementptr double, double* %Packed_MemRef_call2520, i64 %258
  %260 = bitcast double* %259 to <4 x double>*
  %wide.load1276 = load <4 x double>, <4 x double>* %260, align 8
  %261 = fmul fast <4 x double> %broadcast.splat1278, %wide.load1276
  %262 = shl i64 %253, 3
  %263 = add i64 %262, %251
  %264 = getelementptr i8, i8* %call, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  %wide.load1279 = load <4 x double>, <4 x double>* %265, align 8, !alias.scope !92, !noalias !94
  %266 = fadd fast <4 x double> %261, %257
  %267 = fmul fast <4 x double> %266, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %268 = fadd fast <4 x double> %267, %wide.load1279
  %269 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %268, <4 x double>* %269, align 8, !alias.scope !92, !noalias !94
  %index.next1270 = add i64 %index1269, 4
  %270 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %270, label %middle.block1258, label %vector.body1260, !llvm.loop !103

middle.block1258:                                 ; preds = %vector.body1260
  %cmp.n1272 = icmp eq i64 %245, %n.vec1268
  br i1 %cmp.n1272, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us.preheader

polly.loop_header700.us.preheader:                ; preds = %polly.loop_header693.us, %middle.block1258
  %polly.indvar704.us.ph = phi i64 [ 0, %polly.loop_header693.us ], [ %n.vec1268, %middle.block1258 ]
  br label %polly.loop_header700.us

polly.loop_header700.us:                          ; preds = %polly.loop_header700.us.preheader, %polly.loop_header700.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_header700.us ], [ %polly.indvar704.us.ph, %polly.loop_header700.us.preheader ]
  %271 = add nuw nsw i64 %polly.indvar704.us, %237
  %polly.access.add.Packed_MemRef_call1518708.us = add nuw nsw i64 %polly.indvar704.us, %polly.access.mul.Packed_MemRef_call1518707.us
  %polly.access.Packed_MemRef_call1518709.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1518709.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %polly.access.add.Packed_MemRef_call2520716.us = add nuw nsw i64 %271, %polly.access.mul.Packed_MemRef_call2520711.us
  %polly.access.Packed_MemRef_call2520717.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us
  %_p_scalar_718.us = load double, double* %polly.access.Packed_MemRef_call2520717.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_722.us, %_p_scalar_718.us
  %272 = shl i64 %271, 3
  %273 = add i64 %272, %251
  %scevgep723.us = getelementptr i8, i8* %call, i64 %273
  %scevgep723724.us = bitcast i8* %scevgep723.us to double*
  %_p_scalar_725.us = load double, double* %scevgep723724.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_725.us
  store double %p_add42.i.us, double* %scevgep723724.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next705.us = add nuw nsw i64 %polly.indvar704.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar704.us, %smin1112
  br i1 %exitcond1113.not, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us, !llvm.loop !104

polly.loop_exit702.loopexit.us:                   ; preds = %polly.loop_header700.us, %middle.block1258
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next697.us, 100
  br i1 %exitcond1114.not, label %polly.loop_exit695, label %polly.loop_header693.us

polly.loop_header852:                             ; preds = %entry, %polly.loop_exit860
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit860 ], [ 0, %entry ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %entry ]
  %smin1150 = call i64 @llvm.smin.i64(i64 %indvars.iv1148, i64 -1168)
  %274 = shl nsw i64 %polly.indvar855, 5
  %275 = add nsw i64 %smin1150, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1149 = add nsw i64 %indvars.iv1148, -32
  %exitcond1153.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1153.not, label %polly.loop_header879, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %276 = mul nsw i64 %polly.indvar861, -32
  %smin = call i64 @llvm.smin.i64(i64 %276, i64 -1168)
  %277 = add nsw i64 %smin, 1200
  %smin1146 = call i64 @llvm.smin.i64(i64 %indvars.iv1144, i64 -1168)
  %278 = shl nsw i64 %polly.indvar861, 5
  %279 = add nsw i64 %smin1146, 1199
  br label %polly.loop_header864

polly.loop_exit866:                               ; preds = %polly.loop_exit872
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %indvars.iv.next1145 = add nsw i64 %indvars.iv1144, -32
  %exitcond1152.not = icmp eq i64 %polly.indvar_next862, 38
  br i1 %exitcond1152.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_exit872, %polly.loop_header858
  %polly.indvar867 = phi i64 [ 0, %polly.loop_header858 ], [ %polly.indvar_next868, %polly.loop_exit872 ]
  %280 = add nuw nsw i64 %polly.indvar867, %274
  %281 = trunc i64 %280 to i32
  %282 = mul nuw nsw i64 %280, 9600
  %min.iters.check = icmp eq i64 %277, 0
  br i1 %min.iters.check, label %polly.loop_header870, label %vector.ph1188

vector.ph1188:                                    ; preds = %polly.loop_header864
  %broadcast.splatinsert1195 = insertelement <4 x i64> poison, i64 %278, i32 0
  %broadcast.splat1196 = shufflevector <4 x i64> %broadcast.splatinsert1195, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1197 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1198 = shufflevector <4 x i32> %broadcast.splatinsert1197, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1188
  %index1189 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1190, %vector.body1187 ]
  %vec.ind1193 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1188 ], [ %vec.ind.next1194, %vector.body1187 ]
  %283 = add nuw nsw <4 x i64> %vec.ind1193, %broadcast.splat1196
  %284 = trunc <4 x i64> %283 to <4 x i32>
  %285 = mul <4 x i32> %broadcast.splat1198, %284
  %286 = add <4 x i32> %285, <i32 3, i32 3, i32 3, i32 3>
  %287 = urem <4 x i32> %286, <i32 1200, i32 1200, i32 1200, i32 1200>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %290 = extractelement <4 x i64> %283, i32 0
  %291 = shl i64 %290, 3
  %292 = add nuw nsw i64 %291, %282
  %293 = getelementptr i8, i8* %call, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %289, <4 x double>* %294, align 8, !alias.scope !105, !noalias !107
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %295 = icmp eq i64 %index.next1190, %277
  br i1 %295, label %polly.loop_exit872, label %vector.body1187, !llvm.loop !110

polly.loop_exit872:                               ; preds = %vector.body1187, %polly.loop_header870
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar867, %275
  br i1 %exitcond1151.not, label %polly.loop_exit866, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_header864, %polly.loop_header870
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_header870 ], [ 0, %polly.loop_header864 ]
  %296 = add nuw nsw i64 %polly.indvar873, %278
  %297 = trunc i64 %296 to i32
  %298 = mul i32 %297, %281
  %299 = add i32 %298, 3
  %300 = urem i32 %299, 1200
  %p_conv31.i = sitofp i32 %300 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %301 = shl i64 %296, 3
  %302 = add nuw nsw i64 %301, %282
  %scevgep876 = getelementptr i8, i8* %call, i64 %302
  %scevgep876877 = bitcast i8* %scevgep876 to double*
  store double %p_div33.i, double* %scevgep876877, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar873, %279
  br i1 %exitcond1147.not, label %polly.loop_exit872, label %polly.loop_header870, !llvm.loop !111

polly.loop_header879:                             ; preds = %polly.loop_exit860, %polly.loop_exit887
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %smin1140 = call i64 @llvm.smin.i64(i64 %indvars.iv1138, i64 -1168)
  %303 = shl nsw i64 %polly.indvar882, 5
  %304 = add nsw i64 %smin1140, 1199
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1139 = add nsw i64 %indvars.iv1138, -32
  %exitcond1143.not = icmp eq i64 %polly.indvar_next883, 38
  br i1 %exitcond1143.not, label %polly.loop_header905, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %305 = mul nsw i64 %polly.indvar888, -32
  %smin1202 = call i64 @llvm.smin.i64(i64 %305, i64 -968)
  %306 = add nsw i64 %smin1202, 1000
  %smin1136 = call i64 @llvm.smin.i64(i64 %indvars.iv1134, i64 -968)
  %307 = shl nsw i64 %polly.indvar888, 5
  %308 = add nsw i64 %smin1136, 999
  br label %polly.loop_header891

polly.loop_exit893:                               ; preds = %polly.loop_exit899
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %indvars.iv.next1135 = add nsw i64 %indvars.iv1134, -32
  %exitcond1142.not = icmp eq i64 %polly.indvar_next889, 32
  br i1 %exitcond1142.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_exit899, %polly.loop_header885
  %polly.indvar894 = phi i64 [ 0, %polly.loop_header885 ], [ %polly.indvar_next895, %polly.loop_exit899 ]
  %309 = add nuw nsw i64 %polly.indvar894, %303
  %310 = trunc i64 %309 to i32
  %311 = mul nuw nsw i64 %309, 8000
  %min.iters.check1203 = icmp eq i64 %306, 0
  br i1 %min.iters.check1203, label %polly.loop_header897, label %vector.ph1204

vector.ph1204:                                    ; preds = %polly.loop_header891
  %broadcast.splatinsert1213 = insertelement <4 x i64> poison, i64 %307, i32 0
  %broadcast.splat1214 = shufflevector <4 x i64> %broadcast.splatinsert1213, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1215 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1216 = shufflevector <4 x i32> %broadcast.splatinsert1215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1201 ]
  %vec.ind1211 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1204 ], [ %vec.ind.next1212, %vector.body1201 ]
  %312 = add nuw nsw <4 x i64> %vec.ind1211, %broadcast.splat1214
  %313 = trunc <4 x i64> %312 to <4 x i32>
  %314 = mul <4 x i32> %broadcast.splat1216, %313
  %315 = add <4 x i32> %314, <i32 2, i32 2, i32 2, i32 2>
  %316 = urem <4 x i32> %315, <i32 1000, i32 1000, i32 1000, i32 1000>
  %317 = sitofp <4 x i32> %316 to <4 x double>
  %318 = fmul fast <4 x double> %317, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %319 = extractelement <4 x i64> %312, i32 0
  %320 = shl i64 %319, 3
  %321 = add nuw nsw i64 %320, %311
  %322 = getelementptr i8, i8* %call2, i64 %321
  %323 = bitcast i8* %322 to <4 x double>*
  store <4 x double> %318, <4 x double>* %323, align 8, !alias.scope !109, !noalias !112
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1212 = add <4 x i64> %vec.ind1211, <i64 4, i64 4, i64 4, i64 4>
  %324 = icmp eq i64 %index.next1208, %306
  br i1 %324, label %polly.loop_exit899, label %vector.body1201, !llvm.loop !113

polly.loop_exit899:                               ; preds = %vector.body1201, %polly.loop_header897
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar894, %304
  br i1 %exitcond1141.not, label %polly.loop_exit893, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_header891, %polly.loop_header897
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_header897 ], [ 0, %polly.loop_header891 ]
  %325 = add nuw nsw i64 %polly.indvar900, %307
  %326 = trunc i64 %325 to i32
  %327 = mul i32 %326, %310
  %328 = add i32 %327, 2
  %329 = urem i32 %328, 1000
  %p_conv10.i = sitofp i32 %329 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %330 = shl i64 %325, 3
  %331 = add nuw nsw i64 %330, %311
  %scevgep903 = getelementptr i8, i8* %call2, i64 %331
  %scevgep903904 = bitcast i8* %scevgep903 to double*
  store double %p_div12.i, double* %scevgep903904, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar900, %308
  br i1 %exitcond1137.not, label %polly.loop_exit899, label %polly.loop_header897, !llvm.loop !114

polly.loop_header905:                             ; preds = %polly.loop_exit887, %polly.loop_exit913
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %332 = shl nsw i64 %polly.indvar908, 5
  %333 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next909, 38
  br i1 %exitcond1133.not, label %init_array.exit, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %334 = mul nsw i64 %polly.indvar914, -32
  %smin1220 = call i64 @llvm.smin.i64(i64 %334, i64 -968)
  %335 = add nsw i64 %smin1220, 1000
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -968)
  %336 = shl nsw i64 %polly.indvar914, 5
  %337 = add nsw i64 %smin1126, 999
  br label %polly.loop_header917

polly.loop_exit919:                               ; preds = %polly.loop_exit925
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1132.not = icmp eq i64 %polly.indvar_next915, 32
  br i1 %exitcond1132.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_exit925, %polly.loop_header911
  %polly.indvar920 = phi i64 [ 0, %polly.loop_header911 ], [ %polly.indvar_next921, %polly.loop_exit925 ]
  %338 = add nuw nsw i64 %polly.indvar920, %332
  %339 = trunc i64 %338 to i32
  %340 = mul nuw nsw i64 %338, 8000
  %min.iters.check1221 = icmp eq i64 %335, 0
  br i1 %min.iters.check1221, label %polly.loop_header923, label %vector.ph1222

vector.ph1222:                                    ; preds = %polly.loop_header917
  %broadcast.splatinsert1231 = insertelement <4 x i64> poison, i64 %336, i32 0
  %broadcast.splat1232 = shufflevector <4 x i64> %broadcast.splatinsert1231, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1233 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1234 = shufflevector <4 x i32> %broadcast.splatinsert1233, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1226, %vector.body1219 ]
  %vec.ind1229 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1222 ], [ %vec.ind.next1230, %vector.body1219 ]
  %341 = add nuw nsw <4 x i64> %vec.ind1229, %broadcast.splat1232
  %342 = trunc <4 x i64> %341 to <4 x i32>
  %343 = mul <4 x i32> %broadcast.splat1234, %342
  %344 = add <4 x i32> %343, <i32 1, i32 1, i32 1, i32 1>
  %345 = urem <4 x i32> %344, <i32 1200, i32 1200, i32 1200, i32 1200>
  %346 = sitofp <4 x i32> %345 to <4 x double>
  %347 = fmul fast <4 x double> %346, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %348 = extractelement <4 x i64> %341, i32 0
  %349 = shl i64 %348, 3
  %350 = add nuw nsw i64 %349, %340
  %351 = getelementptr i8, i8* %call1, i64 %350
  %352 = bitcast i8* %351 to <4 x double>*
  store <4 x double> %347, <4 x double>* %352, align 8, !alias.scope !108, !noalias !115
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1230 = add <4 x i64> %vec.ind1229, <i64 4, i64 4, i64 4, i64 4>
  %353 = icmp eq i64 %index.next1226, %335
  br i1 %353, label %polly.loop_exit925, label %vector.body1219, !llvm.loop !116

polly.loop_exit925:                               ; preds = %vector.body1219, %polly.loop_header923
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar920, %333
  br i1 %exitcond1131.not, label %polly.loop_exit919, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_header917, %polly.loop_header923
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_header923 ], [ 0, %polly.loop_header917 ]
  %354 = add nuw nsw i64 %polly.indvar926, %336
  %355 = trunc i64 %354 to i32
  %356 = mul i32 %355, %339
  %357 = add i32 %356, 1
  %358 = urem i32 %357, 1200
  %p_conv.i = sitofp i32 %358 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %359 = shl i64 %354, 3
  %360 = add nuw nsw i64 %359, %340
  %scevgep930 = getelementptr i8, i8* %call1, i64 %360
  %scevgep930931 = bitcast i8* %scevgep930 to double*
  store double %p_div.i, double* %scevgep930931, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar926, %337
  br i1 %exitcond1127.not, label %polly.loop_exit925, label %polly.loop_header923, !llvm.loop !117
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
!26 = !{!"llvm.loop.tile.size", i32 128}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 100}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 96}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !24, !52, !42, !53, !44}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.data.pack.array", !22}
!54 = !{!"llvm.loop.tile.followup_tile", !55}
!55 = distinct !{!55, !12, !56}
!56 = !{!"llvm.loop.id", !"i2"}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !4, i64 0}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !66, !"polly.alias.scope.MemRef_call"}
!66 = distinct !{!66, !"polly.alias.scope.domain"}
!67 = !{!68, !69, !70, !71}
!68 = distinct !{!68, !66, !"polly.alias.scope.MemRef_call1"}
!69 = distinct !{!69, !66, !"polly.alias.scope.MemRef_call2"}
!70 = distinct !{!70, !66, !"polly.alias.scope.Packed_MemRef_call1"}
!71 = distinct !{!71, !66, !"polly.alias.scope.Packed_MemRef_call2"}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !74, !13}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!65, !68, !70, !71}
!76 = !{!65, !69, !70, !71}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !74, !13}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84, !85}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !74, !13}
!88 = !{!79, !82, !84, !85}
!89 = !{!79, !83, !84, !85}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !74, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !74, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !74, !13}
!105 = distinct !{!105, !106, !"polly.alias.scope.MemRef_call"}
!106 = distinct !{!106, !"polly.alias.scope.domain"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"polly.alias.scope.MemRef_call1"}
!109 = distinct !{!109, !106, !"polly.alias.scope.MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !74, !13}
!112 = !{!108, !105}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !74, !13}
!115 = !{!109, !105}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !74, !13}
