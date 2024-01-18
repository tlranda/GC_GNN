; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2601.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2601.c"
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
  %call872 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1724 = bitcast i8* %call1 to double*
  %polly.access.call1733 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2734 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1733, %call2
  %polly.access.call2753 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2753, %call1
  %2 = or i1 %0, %1
  %polly.access.call773 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call773, %call2
  %4 = icmp ule i8* %polly.access.call2753, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call773, %call1
  %8 = icmp ule i8* %polly.access.call1733, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header846, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1177
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1242
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting512
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start300, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1287
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1291, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1288 = add i64 %index1287, 4
  %57 = icmp eq i64 %index.next1288, %n.vec1286
  br i1 %57, label %middle.block1280, label %vector.body1282, !llvm.loop !56

middle.block1280:                                 ; preds = %vector.body1282
  %cmp.n1290 = icmp eq i64 %indvars.iv21.i52, %n.vec1286
  br i1 %cmp.n1290, label %for.inc6.i63, label %for.body3.i60.preheader1379

for.body3.i60.preheader1379:                      ; preds = %for.body3.i60.preheader, %middle.block1280
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1286, %middle.block1280 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1379, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1379 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting301
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
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1335
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1339, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1336 = add i64 %index1335, 4
  %68 = icmp eq i64 %index.next1336, %n.vec1334
  br i1 %68, label %middle.block1328, label %vector.body1330, !llvm.loop !58

middle.block1328:                                 ; preds = %vector.body1330
  %cmp.n1338 = icmp eq i64 %indvars.iv21.i91, %n.vec1334
  br i1 %cmp.n1338, label %for.inc6.i102, label %for.body3.i99.preheader1377

for.body3.i99.preheader1377:                      ; preds = %for.body3.i99.preheader, %middle.block1328
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1334, %middle.block1328 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1377, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1377 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !60
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !62

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !63

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
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
  %wide.load1353 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1353, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1350 = add i64 %index1349, 4
  %95 = icmp eq i64 %index.next1350, %n.vec1348
  br i1 %95, label %middle.block1340, label %vector.body1342, !llvm.loop !71

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1352 = icmp eq i64 %88, %n.vec1348
  br i1 %cmp.n1352, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1340
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1348, %middle.block1340 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1340
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1344 = add i64 %indvar1343, 1
  br i1 %exitcond1061.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1060.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1059.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1058.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %polly.loop_exit224 ], [ 36, %polly.loop_exit208 ]
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -128
  %98 = shl nuw nsw i64 %polly.indvar219, 7
  %99 = udiv i64 %indvars.iv1051, 25
  %100 = sub nsw i64 %indvars.iv1049, %99
  %smin1053 = call i64 @llvm.smin.i64(i64 %100, i64 20)
  %101 = add nsw i64 %smin1053, 3
  %smax1054 = call i64 @llvm.smax.i64(i64 %101, i64 0)
  %102 = mul nsw i64 %polly.indvar219, -128
  %103 = icmp slt i64 %102, -1072
  %104 = select i1 %103, i64 %102, i64 -1072
  %105 = add nsw i64 %104, 1199
  %106 = shl nsw i64 %polly.indvar219, 7
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 128
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 3
  %indvars.iv.next1052 = add nuw nsw i64 %indvars.iv1051, 11
  %exitcond1057.not = icmp eq i64 %polly.indvar_next220, 10
  br i1 %exitcond1057.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %107 = mul nuw nsw i64 %polly.indvar225, 50
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next226, 20
  br i1 %exitcond1056.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit236 ], [ %indvars.iv1038, %polly.loop_header222 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %108 = mul nuw nsw i64 %polly.indvar231, 50
  %109 = add i64 %97, %108
  %smax1357 = call i64 @llvm.smax.i64(i64 %109, i64 0)
  %110 = mul nsw i64 %polly.indvar231, -50
  %111 = add i64 %98, %110
  %112 = add i64 %smax1357, %111
  %113 = mul nuw nsw i64 %polly.indvar231, 50
  %114 = add nsw i64 %113, %102
  %115 = icmp sgt i64 %114, 0
  %116 = select i1 %115, i64 %114, i64 0
  %polly.loop_guard.not = icmp sgt i64 %116, %105
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1036, i64 0)
  %117 = add i64 %smax, %indvars.iv1040
  %118 = sub nsw i64 %106, %113
  %119 = add nuw nsw i64 %113, 50
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 50
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -50
  %exitcond1055.not = icmp eq i64 %polly.indvar231, %smax1054
  br i1 %exitcond1055.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1358 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1359, %polly.loop_exit267 ]
  %indvars.iv1042 = phi i64 [ %117, %polly.loop_header234.preheader ], [ %indvars.iv.next1043, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %116, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %120 = add i64 %112, %indvar1358
  %smin1360 = call i64 @llvm.smin.i64(i64 %120, i64 49)
  %121 = add nsw i64 %smin1360, 1
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 49)
  %122 = add nsw i64 %polly.indvar237, %118
  %polly.loop_guard2501158 = icmp sgt i64 %122, -1
  %123 = add nuw nsw i64 %polly.indvar237, %106
  %.not = icmp ult i64 %123, %119
  %polly.access.mul.call1259 = mul nsw i64 %123, 1000
  %124 = add nuw i64 %polly.access.mul.call1259, %107
  br i1 %polly.loop_guard2501158, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %125 = add nuw nsw i64 %polly.indvar243.us, %107
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header240.us ]
  %126 = add nuw nsw i64 %polly.indvar251.us, %113
  %polly.access.mul.call1255.us = mul nuw nsw i64 %126, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %125, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar251.us, %smin1046
  br i1 %exitcond1044.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1260.us = add nuw nsw i64 %124, %polly.indvar243.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %122
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next244.us, 50
  br i1 %exitcond1045.not, label %polly.loop_header265.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header234.split, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %105
  %indvars.iv.next1043 = add i64 %indvars.iv1042, 1
  %indvar.next1359 = add i64 %indvar1358, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header240:                             ; preds = %polly.loop_header234.split, %polly.loop_header240
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_header240 ], [ 0, %polly.loop_header234.split ]
  %polly.access.add.call1260 = add nuw nsw i64 %124, %polly.indvar243
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !67, !noalias !75
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar243, 1200
  %polly.access.add.Packed_MemRef_call1263 = add nsw i64 %polly.access.mul.Packed_MemRef_call1262, %122
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next244, 50
  br i1 %exitcond.not, label %polly.loop_header265.preheader, label %polly.loop_header240

polly.loop_header265.preheader:                   ; preds = %polly.loop_header240, %polly.merge.us
  %127 = mul i64 %123, 9600
  br i1 %polly.loop_guard2501158, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  %128 = add nuw nsw i64 %polly.indvar268.us, %107
  %polly.access.mul.Packed_MemRef_call2283.us = mul nuw nsw i64 %128, 1200
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %123
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.add.Packed_MemRef_call1292.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %122
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1361 = icmp ult i64 %121, 4
  br i1 %min.iters.check1361, label %polly.loop_header272.us.preheader, label %vector.ph1362

vector.ph1362:                                    ; preds = %polly.loop_header265.us
  %n.vec1364 = and i64 %121, -4
  %broadcast.splatinsert1370 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1371 = shufflevector <4 x double> %broadcast.splatinsert1370, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1373 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1374 = shufflevector <4 x double> %broadcast.splatinsert1373, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %vector.ph1362
  %index1365 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1366, %vector.body1356 ]
  %129 = add nuw nsw i64 %index1365, %113
  %130 = add nuw nsw i64 %index1365, %polly.access.mul.Packed_MemRef_call1279.us
  %131 = getelementptr double, double* %Packed_MemRef_call1, i64 %130
  %132 = bitcast double* %131 to <4 x double>*
  %wide.load1369 = load <4 x double>, <4 x double>* %132, align 8
  %133 = fmul fast <4 x double> %broadcast.splat1371, %wide.load1369
  %134 = add nuw nsw i64 %129, %polly.access.mul.Packed_MemRef_call2283.us
  %135 = getelementptr double, double* %Packed_MemRef_call2, i64 %134
  %136 = bitcast double* %135 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %136, align 8
  %137 = fmul fast <4 x double> %broadcast.splat1374, %wide.load1372
  %138 = shl i64 %129, 3
  %139 = add i64 %138, %127
  %140 = getelementptr i8, i8* %call, i64 %139
  %141 = bitcast i8* %140 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %141, align 8, !alias.scope !64, !noalias !66
  %142 = fadd fast <4 x double> %137, %133
  %143 = fmul fast <4 x double> %142, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %144 = fadd fast <4 x double> %143, %wide.load1375
  %145 = bitcast i8* %140 to <4 x double>*
  store <4 x double> %144, <4 x double>* %145, align 8, !alias.scope !64, !noalias !66
  %index.next1366 = add i64 %index1365, 4
  %146 = icmp eq i64 %index.next1366, %n.vec1364
  br i1 %146, label %middle.block1354, label %vector.body1356, !llvm.loop !76

middle.block1354:                                 ; preds = %vector.body1356
  %cmp.n1368 = icmp eq i64 %121, %n.vec1364
  br i1 %cmp.n1368, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %polly.loop_header265.us, %middle.block1354
  %polly.indvar276.us.ph = phi i64 [ 0, %polly.loop_header265.us ], [ %n.vec1364, %middle.block1354 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %147 = add nuw nsw i64 %polly.indvar276.us, %113
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %147, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %148 = shl i64 %147, 3
  %149 = add i64 %148, %127
  %scevgep295.us = getelementptr i8, i8* %call, i64 %149
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar276.us, %smin1046
  br i1 %exitcond1047.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !77

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1354
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next269.us, 50
  br i1 %exitcond1048.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit428
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1295 = phi i64 [ %indvar.next1296, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %150 = add i64 %indvar1295, 1
  %151 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1297 = icmp ult i64 %150, 4
  br i1 %min.iters.check1297, label %polly.loop_header394.preheader, label %vector.ph1298

vector.ph1298:                                    ; preds = %polly.loop_header388
  %n.vec1300 = and i64 %150, -4
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1302, %vector.body1294 ]
  %152 = shl nuw nsw i64 %index1301, 3
  %153 = getelementptr i8, i8* %scevgep400, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !78, !noalias !80
  %155 = fmul fast <4 x double> %wide.load1305, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !78, !noalias !80
  %index.next1302 = add i64 %index1301, 4
  %157 = icmp eq i64 %index.next1302, %n.vec1300
  br i1 %157, label %middle.block1292, label %vector.body1294, !llvm.loop !85

middle.block1292:                                 ; preds = %vector.body1294
  %cmp.n1304 = icmp eq i64 %150, %n.vec1300
  br i1 %cmp.n1304, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1292
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1300, %middle.block1292 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1292
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1296 = add i64 %indvar1295, 1
  br i1 %exitcond1092.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %158
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1091.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !86

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 1200
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond1090.not, label %polly.loop_header420, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %polly.access.mul.call2417 = mul nuw nsw i64 %polly.indvar413, 1000
  %polly.access.add.call2418 = add nuw nsw i64 %polly.access.mul.call2417, %polly.indvar407
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1089.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_exit412, %polly.loop_exit428
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit428 ], [ 36, %polly.loop_exit412 ]
  %indvars.iv1080 = phi i64 [ %indvars.iv.next1081, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %159 = mul nsw i64 %polly.indvar423, -128
  %160 = shl nuw nsw i64 %polly.indvar423, 7
  %161 = udiv i64 %indvars.iv1082, 25
  %162 = sub nsw i64 %indvars.iv1080, %161
  %smin1084 = call i64 @llvm.smin.i64(i64 %162, i64 20)
  %163 = add nsw i64 %smin1084, 3
  %smax1085 = call i64 @llvm.smax.i64(i64 %163, i64 0)
  %164 = mul nsw i64 %polly.indvar423, -128
  %165 = icmp slt i64 %164, -1072
  %166 = select i1 %165, i64 %164, i64 -1072
  %167 = add nsw i64 %166, 1199
  %168 = shl nsw i64 %polly.indvar423, 7
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit435
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -128
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 128
  %indvars.iv.next1081 = add nuw nsw i64 %indvars.iv1080, 3
  %indvars.iv.next1083 = add nuw nsw i64 %indvars.iv1082, 11
  %exitcond1088.not = icmp eq i64 %polly.indvar_next424, 10
  br i1 %exitcond1088.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit435, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit435 ]
  %169 = mul nuw nsw i64 %polly.indvar429, 50
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit442
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next430, 20
  br i1 %exitcond1087.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header433:                             ; preds = %polly.loop_exit442, %polly.loop_header426
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit442 ], [ %indvars.iv1068, %polly.loop_header426 ]
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit442 ], [ %indvars.iv1063, %polly.loop_header426 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header426 ]
  %170 = mul nuw nsw i64 %polly.indvar436, 50
  %171 = add i64 %159, %170
  %smax1309 = call i64 @llvm.smax.i64(i64 %171, i64 0)
  %172 = mul nsw i64 %polly.indvar436, -50
  %173 = add i64 %160, %172
  %174 = add i64 %smax1309, %173
  %175 = mul nuw nsw i64 %polly.indvar436, 50
  %176 = add nsw i64 %175, %164
  %177 = icmp sgt i64 %176, 0
  %178 = select i1 %177, i64 %176, i64 0
  %polly.loop_guard443.not = icmp sgt i64 %178, %167
  br i1 %polly.loop_guard443.not, label %polly.loop_exit442, label %polly.loop_header440.preheader

polly.loop_header440.preheader:                   ; preds = %polly.loop_header433
  %smax1067 = call i64 @llvm.smax.i64(i64 %indvars.iv1065, i64 0)
  %179 = add i64 %smax1067, %indvars.iv1070
  %180 = sub nsw i64 %168, %175
  %181 = add nuw nsw i64 %175, 50
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit478, %polly.loop_header433
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %indvars.iv.next1066 = add nsw i64 %indvars.iv1065, 50
  %indvars.iv.next1071 = add nsw i64 %indvars.iv1070, -50
  %exitcond1086.not = icmp eq i64 %polly.indvar436, %smax1085
  br i1 %exitcond1086.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_header440.preheader, %polly.loop_exit478
  %indvar1310 = phi i64 [ 0, %polly.loop_header440.preheader ], [ %indvar.next1311, %polly.loop_exit478 ]
  %indvars.iv1072 = phi i64 [ %179, %polly.loop_header440.preheader ], [ %indvars.iv.next1073, %polly.loop_exit478 ]
  %polly.indvar444 = phi i64 [ %178, %polly.loop_header440.preheader ], [ %polly.indvar_next445, %polly.loop_exit478 ]
  %182 = add i64 %174, %indvar1310
  %smin1312 = call i64 @llvm.smin.i64(i64 %182, i64 49)
  %183 = add nsw i64 %smin1312, 1
  %smin1077 = call i64 @llvm.smin.i64(i64 %indvars.iv1072, i64 49)
  %184 = add nsw i64 %polly.indvar444, %180
  %polly.loop_guard4571159 = icmp sgt i64 %184, -1
  %185 = add nuw nsw i64 %polly.indvar444, %168
  %.not926 = icmp ult i64 %185, %181
  %polly.access.mul.call1470 = mul nsw i64 %185, 1000
  %186 = add nuw i64 %polly.access.mul.call1470, %169
  br i1 %polly.loop_guard4571159, label %polly.loop_header447.us, label %polly.loop_header440.split

polly.loop_header447.us:                          ; preds = %polly.loop_header440, %polly.merge466.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.merge466.us ], [ 0, %polly.loop_header440 ]
  %187 = add nuw nsw i64 %polly.indvar450.us, %169
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %188 = add nuw nsw i64 %polly.indvar458.us, %175
  %polly.access.mul.call1462.us = mul nuw nsw i64 %188, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %187, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar458.us, %smin1077
  br i1 %exitcond1075.not, label %polly.cond465.loopexit.us, label %polly.loop_header454.us

polly.then467.us:                                 ; preds = %polly.cond465.loopexit.us
  %polly.access.add.call1471.us = add nuw nsw i64 %186, %polly.indvar450.us
  %polly.access.call1472.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us
  %polly.access.call1472.load.us = load double, double* %polly.access.call1472.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1303474.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303.us, %184
  %polly.access.Packed_MemRef_call1303475.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us
  store double %polly.access.call1472.load.us, double* %polly.access.Packed_MemRef_call1303475.us, align 8
  br label %polly.merge466.us

polly.merge466.us:                                ; preds = %polly.then467.us, %polly.cond465.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar_next451.us, 50
  br i1 %exitcond1076.not, label %polly.loop_header476.preheader, label %polly.loop_header447.us

polly.cond465.loopexit.us:                        ; preds = %polly.loop_header454.us
  br i1 %.not926, label %polly.merge466.us, label %polly.then467.us

polly.loop_header440.split:                       ; preds = %polly.loop_header440
  br i1 %.not926, label %polly.loop_exit478, label %polly.loop_header447

polly.loop_exit478:                               ; preds = %polly.loop_exit485.loopexit.us, %polly.loop_header440.split, %polly.loop_header476.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446.not.not = icmp ult i64 %polly.indvar444, %167
  %indvars.iv.next1073 = add i64 %indvars.iv1072, 1
  %indvar.next1311 = add i64 %indvar1310, 1
  br i1 %polly.loop_cond446.not.not, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header447:                             ; preds = %polly.loop_header440.split, %polly.loop_header447
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_header447 ], [ 0, %polly.loop_header440.split ]
  %polly.access.add.call1471 = add nuw nsw i64 %186, %polly.indvar450
  %polly.access.call1472 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471
  %polly.access.call1472.load = load double, double* %polly.access.call1472, align 8, !alias.scope !81, !noalias !88
  %polly.access.mul.Packed_MemRef_call1303473 = mul nuw nsw i64 %polly.indvar450, 1200
  %polly.access.add.Packed_MemRef_call1303474 = add nsw i64 %polly.access.mul.Packed_MemRef_call1303473, %184
  %polly.access.Packed_MemRef_call1303475 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474
  store double %polly.access.call1472.load, double* %polly.access.Packed_MemRef_call1303475, align 8
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next451, 50
  br i1 %exitcond1062.not, label %polly.loop_header476.preheader, label %polly.loop_header447

polly.loop_header476.preheader:                   ; preds = %polly.loop_header447, %polly.merge466.us
  %189 = mul i64 %185, 9600
  br i1 %polly.loop_guard4571159, label %polly.loop_header476.us, label %polly.loop_exit478

polly.loop_header476.us:                          ; preds = %polly.loop_header476.preheader, %polly.loop_exit485.loopexit.us
  %polly.indvar479.us = phi i64 [ %polly.indvar_next480.us, %polly.loop_exit485.loopexit.us ], [ 0, %polly.loop_header476.preheader ]
  %polly.access.mul.Packed_MemRef_call1303490.us = mul nuw nsw i64 %polly.indvar479.us, 1200
  %190 = add nuw nsw i64 %polly.indvar479.us, %169
  %polly.access.mul.Packed_MemRef_call2305494.us = mul nuw nsw i64 %190, 1200
  %polly.access.add.Packed_MemRef_call2305495.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us, %185
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.add.Packed_MemRef_call1303503.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303490.us, %184
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %min.iters.check1313 = icmp ult i64 %183, 4
  br i1 %min.iters.check1313, label %polly.loop_header483.us.preheader, label %vector.ph1314

vector.ph1314:                                    ; preds = %polly.loop_header476.us
  %n.vec1316 = and i64 %183, -4
  %broadcast.splatinsert1322 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1323 = shufflevector <4 x double> %broadcast.splatinsert1322, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1325 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1326 = shufflevector <4 x double> %broadcast.splatinsert1325, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1308 ]
  %191 = add nuw nsw i64 %index1317, %175
  %192 = add nuw nsw i64 %index1317, %polly.access.mul.Packed_MemRef_call1303490.us
  %193 = getelementptr double, double* %Packed_MemRef_call1303, i64 %192
  %194 = bitcast double* %193 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %194, align 8
  %195 = fmul fast <4 x double> %broadcast.splat1323, %wide.load1321
  %196 = add nuw nsw i64 %191, %polly.access.mul.Packed_MemRef_call2305494.us
  %197 = getelementptr double, double* %Packed_MemRef_call2305, i64 %196
  %198 = bitcast double* %197 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %198, align 8
  %199 = fmul fast <4 x double> %broadcast.splat1326, %wide.load1324
  %200 = shl i64 %191, 3
  %201 = add i64 %200, %189
  %202 = getelementptr i8, i8* %call, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %203, align 8, !alias.scope !78, !noalias !80
  %204 = fadd fast <4 x double> %199, %195
  %205 = fmul fast <4 x double> %204, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %206 = fadd fast <4 x double> %205, %wide.load1327
  %207 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %206, <4 x double>* %207, align 8, !alias.scope !78, !noalias !80
  %index.next1318 = add i64 %index1317, 4
  %208 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %208, label %middle.block1306, label %vector.body1308, !llvm.loop !89

middle.block1306:                                 ; preds = %vector.body1308
  %cmp.n1320 = icmp eq i64 %183, %n.vec1316
  br i1 %cmp.n1320, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %polly.loop_header476.us, %middle.block1306
  %polly.indvar487.us.ph = phi i64 [ 0, %polly.loop_header476.us ], [ %n.vec1316, %middle.block1306 ]
  br label %polly.loop_header483.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %209 = add nuw nsw i64 %polly.indvar487.us, %175
  %polly.access.add.Packed_MemRef_call1303491.us = add nuw nsw i64 %polly.indvar487.us, %polly.access.mul.Packed_MemRef_call1303490.us
  %polly.access.Packed_MemRef_call1303492.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1303492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.add.Packed_MemRef_call2305499.us = add nuw nsw i64 %209, %polly.access.mul.Packed_MemRef_call2305494.us
  %polly.access.Packed_MemRef_call2305500.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2305500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %210 = shl i64 %209, 3
  %211 = add i64 %210, %189
  %scevgep506.us = getelementptr i8, i8* %call, i64 %211
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_508.us
  store double %p_add42.i79.us, double* %scevgep506507.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar487.us, %smin1077
  br i1 %exitcond1078.not, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us, !llvm.loop !90

polly.loop_exit485.loopexit.us:                   ; preds = %polly.loop_header483.us, %middle.block1306
  %polly.indvar_next480.us = add nuw nsw i64 %polly.indvar479.us, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next480.us, 50
  br i1 %exitcond1079.not, label %polly.loop_exit478, label %polly.loop_header476.us

polly.start511:                                   ; preds = %init_array.exit
  %malloccall513 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall515 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header599

polly.exiting512:                                 ; preds = %polly.loop_exit639
  tail call void @free(i8* %malloccall513)
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start511
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start511 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start511 ]
  %212 = add i64 %indvar, 1
  %213 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %213
  %min.iters.check1249 = icmp ult i64 %212, 4
  br i1 %min.iters.check1249, label %polly.loop_header605.preheader, label %vector.ph1250

vector.ph1250:                                    ; preds = %polly.loop_header599
  %n.vec1252 = and i64 %212, -4
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1254, %vector.body1248 ]
  %214 = shl nuw nsw i64 %index1253, 3
  %215 = getelementptr i8, i8* %scevgep611, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  %wide.load1257 = load <4 x double>, <4 x double>* %216, align 8, !alias.scope !91, !noalias !93
  %217 = fmul fast <4 x double> %wide.load1257, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %218 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %217, <4 x double>* %218, align 8, !alias.scope !91, !noalias !93
  %index.next1254 = add i64 %index1253, 4
  %219 = icmp eq i64 %index.next1254, %n.vec1252
  br i1 %219, label %middle.block1246, label %vector.body1248, !llvm.loop !98

middle.block1246:                                 ; preds = %vector.body1248
  %cmp.n1256 = icmp eq i64 %212, %n.vec1252
  br i1 %cmp.n1256, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1246
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1252, %middle.block1246 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1246
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1123.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %220 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %220
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !91, !noalias !93
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1122.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !99

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 0, %polly.loop_header615.preheader ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar618, 1200
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next619, 1000
  br i1 %exitcond1121.not, label %polly.loop_header631, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_header621, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_header621 ]
  %polly.access.mul.call2628 = mul nuw nsw i64 %polly.indvar624, 1000
  %polly.access.add.call2629 = add nuw nsw i64 %polly.access.mul.call2628, %polly.indvar618
  %polly.access.call2630 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2629
  %polly.access.call2630.load = load double, double* %polly.access.call2630, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar624, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2630.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next625, 1200
  br i1 %exitcond1120.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header631:                             ; preds = %polly.loop_exit623, %polly.loop_exit639
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit639 ], [ 36, %polly.loop_exit623 ]
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %221 = mul nsw i64 %polly.indvar634, -128
  %222 = shl nuw nsw i64 %polly.indvar634, 7
  %223 = udiv i64 %indvars.iv1113, 25
  %224 = sub nsw i64 %indvars.iv1111, %223
  %smin1115 = call i64 @llvm.smin.i64(i64 %224, i64 20)
  %225 = add nsw i64 %smin1115, 3
  %smax1116 = call i64 @llvm.smax.i64(i64 %225, i64 0)
  %226 = mul nsw i64 %polly.indvar634, -128
  %227 = icmp slt i64 %226, -1072
  %228 = select i1 %227, i64 %226, i64 -1072
  %229 = add nsw i64 %228, 1199
  %230 = shl nsw i64 %polly.indvar634, 7
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit646
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, -128
  %indvars.iv.next1100 = add nuw nsw i64 %indvars.iv1099, 128
  %indvars.iv.next1112 = add nuw nsw i64 %indvars.iv1111, 3
  %indvars.iv.next1114 = add nuw nsw i64 %indvars.iv1113, 11
  %exitcond1119.not = icmp eq i64 %polly.indvar_next635, 10
  br i1 %exitcond1119.not, label %polly.exiting512, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit646, %polly.loop_header631
  %polly.indvar640 = phi i64 [ 0, %polly.loop_header631 ], [ %polly.indvar_next641, %polly.loop_exit646 ]
  %231 = mul nuw nsw i64 %polly.indvar640, 50
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit653
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next641, 20
  br i1 %exitcond1118.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header644:                             ; preds = %polly.loop_exit653, %polly.loop_header637
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit653 ], [ %indvars.iv1099, %polly.loop_header637 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit653 ], [ %indvars.iv1094, %polly.loop_header637 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header637 ]
  %232 = mul nuw nsw i64 %polly.indvar647, 50
  %233 = add i64 %221, %232
  %smax1261 = call i64 @llvm.smax.i64(i64 %233, i64 0)
  %234 = mul nsw i64 %polly.indvar647, -50
  %235 = add i64 %222, %234
  %236 = add i64 %smax1261, %235
  %237 = mul nuw nsw i64 %polly.indvar647, 50
  %238 = add nsw i64 %237, %226
  %239 = icmp sgt i64 %238, 0
  %240 = select i1 %239, i64 %238, i64 0
  %polly.loop_guard654.not = icmp sgt i64 %240, %229
  br i1 %polly.loop_guard654.not, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header644
  %smax1098 = call i64 @llvm.smax.i64(i64 %indvars.iv1096, i64 0)
  %241 = add i64 %smax1098, %indvars.iv1101
  %242 = sub nsw i64 %230, %237
  %243 = add nuw nsw i64 %237, 50
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit689, %polly.loop_header644
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, 50
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -50
  %exitcond1117.not = icmp eq i64 %polly.indvar647, %smax1116
  br i1 %exitcond1117.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_exit689
  %indvar1262 = phi i64 [ 0, %polly.loop_header651.preheader ], [ %indvar.next1263, %polly.loop_exit689 ]
  %indvars.iv1103 = phi i64 [ %241, %polly.loop_header651.preheader ], [ %indvars.iv.next1104, %polly.loop_exit689 ]
  %polly.indvar655 = phi i64 [ %240, %polly.loop_header651.preheader ], [ %polly.indvar_next656, %polly.loop_exit689 ]
  %244 = add i64 %236, %indvar1262
  %smin1264 = call i64 @llvm.smin.i64(i64 %244, i64 49)
  %245 = add nsw i64 %smin1264, 1
  %smin1108 = call i64 @llvm.smin.i64(i64 %indvars.iv1103, i64 49)
  %246 = add nsw i64 %polly.indvar655, %242
  %polly.loop_guard6681160 = icmp sgt i64 %246, -1
  %247 = add nuw nsw i64 %polly.indvar655, %230
  %.not927 = icmp ult i64 %247, %243
  %polly.access.mul.call1681 = mul nsw i64 %247, 1000
  %248 = add nuw i64 %polly.access.mul.call1681, %231
  br i1 %polly.loop_guard6681160, label %polly.loop_header658.us, label %polly.loop_header651.split

polly.loop_header658.us:                          ; preds = %polly.loop_header651, %polly.merge677.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.merge677.us ], [ 0, %polly.loop_header651 ]
  %249 = add nuw nsw i64 %polly.indvar661.us, %231
  %polly.access.mul.Packed_MemRef_call1514.us = mul nuw nsw i64 %polly.indvar661.us, 1200
  br label %polly.loop_header665.us

polly.loop_header665.us:                          ; preds = %polly.loop_header658.us, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ 0, %polly.loop_header658.us ]
  %250 = add nuw nsw i64 %polly.indvar669.us, %237
  %polly.access.mul.call1673.us = mul nuw nsw i64 %250, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %249, %polly.access.mul.call1673.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1514.us = add nuw nsw i64 %polly.indvar669.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar669.us, %smin1108
  br i1 %exitcond1106.not, label %polly.cond676.loopexit.us, label %polly.loop_header665.us

polly.then678.us:                                 ; preds = %polly.cond676.loopexit.us
  %polly.access.add.call1682.us = add nuw nsw i64 %248, %polly.indvar661.us
  %polly.access.call1683.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us
  %polly.access.call1683.load.us = load double, double* %polly.access.call1683.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1514685.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1514.us, %246
  %polly.access.Packed_MemRef_call1514686.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us
  store double %polly.access.call1683.load.us, double* %polly.access.Packed_MemRef_call1514686.us, align 8
  br label %polly.merge677.us

polly.merge677.us:                                ; preds = %polly.then678.us, %polly.cond676.loopexit.us
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next662.us, 50
  br i1 %exitcond1107.not, label %polly.loop_header687.preheader, label %polly.loop_header658.us

polly.cond676.loopexit.us:                        ; preds = %polly.loop_header665.us
  br i1 %.not927, label %polly.merge677.us, label %polly.then678.us

polly.loop_header651.split:                       ; preds = %polly.loop_header651
  br i1 %.not927, label %polly.loop_exit689, label %polly.loop_header658

polly.loop_exit689:                               ; preds = %polly.loop_exit696.loopexit.us, %polly.loop_header651.split, %polly.loop_header687.preheader
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp ult i64 %polly.indvar655, %229
  %indvars.iv.next1104 = add i64 %indvars.iv1103, 1
  %indvar.next1263 = add i64 %indvar1262, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header658:                             ; preds = %polly.loop_header651.split, %polly.loop_header658
  %polly.indvar661 = phi i64 [ %polly.indvar_next662, %polly.loop_header658 ], [ 0, %polly.loop_header651.split ]
  %polly.access.add.call1682 = add nuw nsw i64 %248, %polly.indvar661
  %polly.access.call1683 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682
  %polly.access.call1683.load = load double, double* %polly.access.call1683, align 8, !alias.scope !94, !noalias !101
  %polly.access.mul.Packed_MemRef_call1514684 = mul nuw nsw i64 %polly.indvar661, 1200
  %polly.access.add.Packed_MemRef_call1514685 = add nsw i64 %polly.access.mul.Packed_MemRef_call1514684, %246
  %polly.access.Packed_MemRef_call1514686 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685
  store double %polly.access.call1683.load, double* %polly.access.Packed_MemRef_call1514686, align 8
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next662, 50
  br i1 %exitcond1093.not, label %polly.loop_header687.preheader, label %polly.loop_header658

polly.loop_header687.preheader:                   ; preds = %polly.loop_header658, %polly.merge677.us
  %251 = mul i64 %247, 9600
  br i1 %polly.loop_guard6681160, label %polly.loop_header687.us, label %polly.loop_exit689

polly.loop_header687.us:                          ; preds = %polly.loop_header687.preheader, %polly.loop_exit696.loopexit.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_exit696.loopexit.us ], [ 0, %polly.loop_header687.preheader ]
  %polly.access.mul.Packed_MemRef_call1514701.us = mul nuw nsw i64 %polly.indvar690.us, 1200
  %252 = add nuw nsw i64 %polly.indvar690.us, %231
  %polly.access.mul.Packed_MemRef_call2516705.us = mul nuw nsw i64 %252, 1200
  %polly.access.add.Packed_MemRef_call2516706.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us, %247
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.add.Packed_MemRef_call1514714.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1514701.us, %246
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %min.iters.check1265 = icmp ult i64 %245, 4
  br i1 %min.iters.check1265, label %polly.loop_header694.us.preheader, label %vector.ph1266

vector.ph1266:                                    ; preds = %polly.loop_header687.us
  %n.vec1268 = and i64 %245, -4
  %broadcast.splatinsert1274 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1275 = shufflevector <4 x double> %broadcast.splatinsert1274, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1277 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1278 = shufflevector <4 x double> %broadcast.splatinsert1277, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1260 ]
  %253 = add nuw nsw i64 %index1269, %237
  %254 = add nuw nsw i64 %index1269, %polly.access.mul.Packed_MemRef_call1514701.us
  %255 = getelementptr double, double* %Packed_MemRef_call1514, i64 %254
  %256 = bitcast double* %255 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %256, align 8
  %257 = fmul fast <4 x double> %broadcast.splat1275, %wide.load1273
  %258 = add nuw nsw i64 %253, %polly.access.mul.Packed_MemRef_call2516705.us
  %259 = getelementptr double, double* %Packed_MemRef_call2516, i64 %258
  %260 = bitcast double* %259 to <4 x double>*
  %wide.load1276 = load <4 x double>, <4 x double>* %260, align 8
  %261 = fmul fast <4 x double> %broadcast.splat1278, %wide.load1276
  %262 = shl i64 %253, 3
  %263 = add i64 %262, %251
  %264 = getelementptr i8, i8* %call, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  %wide.load1279 = load <4 x double>, <4 x double>* %265, align 8, !alias.scope !91, !noalias !93
  %266 = fadd fast <4 x double> %261, %257
  %267 = fmul fast <4 x double> %266, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %268 = fadd fast <4 x double> %267, %wide.load1279
  %269 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %268, <4 x double>* %269, align 8, !alias.scope !91, !noalias !93
  %index.next1270 = add i64 %index1269, 4
  %270 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %270, label %middle.block1258, label %vector.body1260, !llvm.loop !102

middle.block1258:                                 ; preds = %vector.body1260
  %cmp.n1272 = icmp eq i64 %245, %n.vec1268
  br i1 %cmp.n1272, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %polly.loop_header687.us, %middle.block1258
  %polly.indvar698.us.ph = phi i64 [ 0, %polly.loop_header687.us ], [ %n.vec1268, %middle.block1258 ]
  br label %polly.loop_header694.us

polly.loop_header694.us:                          ; preds = %polly.loop_header694.us.preheader, %polly.loop_header694.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_header694.us ], [ %polly.indvar698.us.ph, %polly.loop_header694.us.preheader ]
  %271 = add nuw nsw i64 %polly.indvar698.us, %237
  %polly.access.add.Packed_MemRef_call1514702.us = add nuw nsw i64 %polly.indvar698.us, %polly.access.mul.Packed_MemRef_call1514701.us
  %polly.access.Packed_MemRef_call1514703.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1514703.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %polly.access.add.Packed_MemRef_call2516710.us = add nuw nsw i64 %271, %polly.access.mul.Packed_MemRef_call2516705.us
  %polly.access.Packed_MemRef_call2516711.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2516711.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %272 = shl i64 %271, 3
  %273 = add i64 %272, %251
  %scevgep717.us = getelementptr i8, i8* %call, i64 %273
  %scevgep717718.us = bitcast i8* %scevgep717.us to double*
  %_p_scalar_719.us = load double, double* %scevgep717718.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_719.us
  store double %p_add42.i.us, double* %scevgep717718.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar698.us, %smin1108
  br i1 %exitcond1109.not, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us, !llvm.loop !103

polly.loop_exit696.loopexit.us:                   ; preds = %polly.loop_header694.us, %middle.block1258
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next691.us, 50
  br i1 %exitcond1110.not, label %polly.loop_exit689, label %polly.loop_header687.us

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1150 = call i64 @llvm.smin.i64(i64 %indvars.iv1148, i64 -1168)
  %274 = shl nsw i64 %polly.indvar849, 5
  %275 = add nsw i64 %smin1150, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1149 = add nsw i64 %indvars.iv1148, -32
  %exitcond1153.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1153.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %276 = mul nsw i64 %polly.indvar855, -32
  %smin = call i64 @llvm.smin.i64(i64 %276, i64 -1168)
  %277 = add nsw i64 %smin, 1200
  %smin1146 = call i64 @llvm.smin.i64(i64 %indvars.iv1144, i64 -1168)
  %278 = shl nsw i64 %polly.indvar855, 5
  %279 = add nsw i64 %smin1146, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1145 = add nsw i64 %indvars.iv1144, -32
  %exitcond1152.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1152.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %280 = add nuw nsw i64 %polly.indvar861, %274
  %281 = trunc i64 %280 to i32
  %282 = mul nuw nsw i64 %280, 9600
  %min.iters.check = icmp eq i64 %277, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1188

vector.ph1188:                                    ; preds = %polly.loop_header858
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
  store <4 x double> %289, <4 x double>* %294, align 8, !alias.scope !104, !noalias !106
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %295 = icmp eq i64 %index.next1190, %277
  br i1 %295, label %polly.loop_exit866, label %vector.body1187, !llvm.loop !109

polly.loop_exit866:                               ; preds = %vector.body1187, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar861, %275
  br i1 %exitcond1151.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %296 = add nuw nsw i64 %polly.indvar867, %278
  %297 = trunc i64 %296 to i32
  %298 = mul i32 %297, %281
  %299 = add i32 %298, 3
  %300 = urem i32 %299, 1200
  %p_conv31.i = sitofp i32 %300 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %301 = shl i64 %296, 3
  %302 = add nuw nsw i64 %301, %282
  %scevgep870 = getelementptr i8, i8* %call, i64 %302
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar867, %279
  br i1 %exitcond1147.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !110

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1140 = call i64 @llvm.smin.i64(i64 %indvars.iv1138, i64 -1168)
  %303 = shl nsw i64 %polly.indvar876, 5
  %304 = add nsw i64 %smin1140, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1139 = add nsw i64 %indvars.iv1138, -32
  %exitcond1143.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1143.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %305 = mul nsw i64 %polly.indvar882, -32
  %smin1202 = call i64 @llvm.smin.i64(i64 %305, i64 -968)
  %306 = add nsw i64 %smin1202, 1000
  %smin1136 = call i64 @llvm.smin.i64(i64 %indvars.iv1134, i64 -968)
  %307 = shl nsw i64 %polly.indvar882, 5
  %308 = add nsw i64 %smin1136, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1135 = add nsw i64 %indvars.iv1134, -32
  %exitcond1142.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1142.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %309 = add nuw nsw i64 %polly.indvar888, %303
  %310 = trunc i64 %309 to i32
  %311 = mul nuw nsw i64 %309, 8000
  %min.iters.check1203 = icmp eq i64 %306, 0
  br i1 %min.iters.check1203, label %polly.loop_header891, label %vector.ph1204

vector.ph1204:                                    ; preds = %polly.loop_header885
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
  store <4 x double> %318, <4 x double>* %323, align 8, !alias.scope !108, !noalias !111
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1212 = add <4 x i64> %vec.ind1211, <i64 4, i64 4, i64 4, i64 4>
  %324 = icmp eq i64 %index.next1208, %306
  br i1 %324, label %polly.loop_exit893, label %vector.body1201, !llvm.loop !112

polly.loop_exit893:                               ; preds = %vector.body1201, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar888, %304
  br i1 %exitcond1141.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %325 = add nuw nsw i64 %polly.indvar894, %307
  %326 = trunc i64 %325 to i32
  %327 = mul i32 %326, %310
  %328 = add i32 %327, 2
  %329 = urem i32 %328, 1000
  %p_conv10.i = sitofp i32 %329 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %330 = shl i64 %325, 3
  %331 = add nuw nsw i64 %330, %311
  %scevgep897 = getelementptr i8, i8* %call2, i64 %331
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !108, !noalias !111
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar894, %308
  br i1 %exitcond1137.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !113

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %332 = shl nsw i64 %polly.indvar902, 5
  %333 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1133.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %334 = mul nsw i64 %polly.indvar908, -32
  %smin1220 = call i64 @llvm.smin.i64(i64 %334, i64 -968)
  %335 = add nsw i64 %smin1220, 1000
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -968)
  %336 = shl nsw i64 %polly.indvar908, 5
  %337 = add nsw i64 %smin1126, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1132.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1132.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %338 = add nuw nsw i64 %polly.indvar914, %332
  %339 = trunc i64 %338 to i32
  %340 = mul nuw nsw i64 %338, 8000
  %min.iters.check1221 = icmp eq i64 %335, 0
  br i1 %min.iters.check1221, label %polly.loop_header917, label %vector.ph1222

vector.ph1222:                                    ; preds = %polly.loop_header911
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
  store <4 x double> %347, <4 x double>* %352, align 8, !alias.scope !107, !noalias !114
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1230 = add <4 x i64> %vec.ind1229, <i64 4, i64 4, i64 4, i64 4>
  %353 = icmp eq i64 %index.next1226, %335
  br i1 %353, label %polly.loop_exit919, label %vector.body1219, !llvm.loop !115

polly.loop_exit919:                               ; preds = %vector.body1219, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar914, %333
  br i1 %exitcond1131.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %354 = add nuw nsw i64 %polly.indvar920, %336
  %355 = trunc i64 %354 to i32
  %356 = mul i32 %355, %339
  %357 = add i32 %356, 1
  %358 = urem i32 %357, 1200
  %p_conv.i = sitofp i32 %358 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %359 = shl i64 %354, 3
  %360 = add nuw nsw i64 %359, %340
  %scevgep924 = getelementptr i8, i8* %call1, i64 %360
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !107, !noalias !114
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar920, %337
  br i1 %exitcond1127.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !116
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
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !26, !35, !38}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !24, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !24, !45, !46, !47, !48, !49, !53}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 128}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !24, !51, !41, !52, !43}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.data.pack.array", !22}
!53 = !{!"llvm.loop.tile.followup_tile", !54}
!54 = distinct !{!54, !12, !55}
!55 = !{!"llvm.loop.id", !"i2"}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !4, i64 0}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !65, !"polly.alias.scope.MemRef_call"}
!65 = distinct !{!65, !"polly.alias.scope.domain"}
!66 = !{!67, !68, !69, !70}
!67 = distinct !{!67, !65, !"polly.alias.scope.MemRef_call1"}
!68 = distinct !{!68, !65, !"polly.alias.scope.MemRef_call2"}
!69 = distinct !{!69, !65, !"polly.alias.scope.Packed_MemRef_call1"}
!70 = distinct !{!70, !65, !"polly.alias.scope.Packed_MemRef_call2"}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !73, !13}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!64, !67, !69, !70}
!75 = !{!64, !68, !69, !70}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !73, !13}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83, !84}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !73, !13}
!87 = !{!78, !81, !83, !84}
!88 = !{!78, !82, !83, !84}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !73, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !73, !13}
!100 = !{!91, !94, !96, !97}
!101 = !{!91, !95, !96, !97}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !73, !13}
!104 = distinct !{!104, !105, !"polly.alias.scope.MemRef_call"}
!105 = distinct !{!105, !"polly.alias.scope.domain"}
!106 = !{!107, !108}
!107 = distinct !{!107, !105, !"polly.alias.scope.MemRef_call1"}
!108 = distinct !{!108, !105, !"polly.alias.scope.MemRef_call2"}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !73, !13}
!111 = !{!107, !104}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !73, !13}
!114 = !{!108, !104}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !73, !13}
