; ModuleID = 'syr2k_exhaustive/mmp_all_XL_1078.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_1078.c"
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
  %scevgep1193 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1192 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1191 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1190 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1190, %scevgep1193
  %bound1 = icmp ult i8* %scevgep1192, %scevgep1191
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
  br i1 %exitcond18.not.i, label %vector.ph1197, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1197:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1204 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1205 = shufflevector <4 x i64> %broadcast.splatinsert1204, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %vector.ph1197
  %index1198 = phi i64 [ 0, %vector.ph1197 ], [ %index.next1199, %vector.body1196 ]
  %vec.ind1202 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1197 ], [ %vec.ind.next1203, %vector.body1196 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1202, %broadcast.splat1205
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1198
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1199 = add i64 %index1198, 4
  %vec.ind.next1203 = add <4 x i64> %vec.ind1202, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1199, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1196, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1196
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1197, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1260 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1260, label %for.body3.i46.preheader1415, label %vector.ph1261

vector.ph1261:                                    ; preds = %for.body3.i46.preheader
  %n.vec1263 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1261
  %index1264 = phi i64 [ 0, %vector.ph1261 ], [ %index.next1265, %vector.body1259 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1264
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1265 = add i64 %index1264, 4
  %46 = icmp eq i64 %index.next1265, %n.vec1263
  br i1 %46, label %middle.block1257, label %vector.body1259, !llvm.loop !18

middle.block1257:                                 ; preds = %vector.body1259
  %cmp.n1267 = icmp eq i64 %indvars.iv21.i, %n.vec1263
  br i1 %cmp.n1267, label %for.inc6.i, label %for.body3.i46.preheader1415

for.body3.i46.preheader1415:                      ; preds = %for.body3.i46.preheader, %middle.block1257
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1263, %middle.block1257 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1415, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1415 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1257, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

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
  %min.iters.check1307 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1307, label %for.body3.i60.preheader1411, label %vector.ph1308

vector.ph1308:                                    ; preds = %for.body3.i60.preheader
  %n.vec1310 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1312, %vector.body1306 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1311
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1315 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1315, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1312 = add i64 %index1311, 4
  %57 = icmp eq i64 %index.next1312, %n.vec1310
  br i1 %57, label %middle.block1304, label %vector.body1306, !llvm.loop !64

middle.block1304:                                 ; preds = %vector.body1306
  %cmp.n1314 = icmp eq i64 %indvars.iv21.i52, %n.vec1310
  br i1 %cmp.n1314, label %for.inc6.i63, label %for.body3.i60.preheader1411

for.body3.i60.preheader1411:                      ; preds = %for.body3.i60.preheader, %middle.block1304
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1310, %middle.block1304 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1411, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1411 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1304, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

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
  %min.iters.check1357 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1357, label %for.body3.i99.preheader1407, label %vector.ph1358

vector.ph1358:                                    ; preds = %for.body3.i99.preheader
  %n.vec1360 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %vector.ph1358
  %index1361 = phi i64 [ 0, %vector.ph1358 ], [ %index.next1362, %vector.body1356 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1361
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1365 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1365, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1362 = add i64 %index1361, 4
  %68 = icmp eq i64 %index.next1362, %n.vec1360
  br i1 %68, label %middle.block1354, label %vector.body1356, !llvm.loop !66

middle.block1354:                                 ; preds = %vector.body1356
  %cmp.n1364 = icmp eq i64 %indvars.iv21.i91, %n.vec1360
  br i1 %cmp.n1364, label %for.inc6.i102, label %for.body3.i99.preheader1407

for.body3.i99.preheader1407:                      ; preds = %for.body3.i99.preheader, %middle.block1354
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1360, %middle.block1354 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1407, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1407 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1354, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1369 = phi i64 [ %indvar.next1370, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1369, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1371 = icmp ult i64 %88, 4
  br i1 %min.iters.check1371, label %polly.loop_header192.preheader, label %vector.ph1372

vector.ph1372:                                    ; preds = %polly.loop_header
  %n.vec1374 = and i64 %88, -4
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %vector.ph1372
  %index1375 = phi i64 [ 0, %vector.ph1372 ], [ %index.next1376, %vector.body1368 ]
  %90 = shl nuw nsw i64 %index1375, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1379 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1379, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1376 = add i64 %index1375, 4
  %95 = icmp eq i64 %index.next1376, %n.vec1374
  br i1 %95, label %middle.block1366, label %vector.body1368, !llvm.loop !79

middle.block1366:                                 ; preds = %vector.body1368
  %cmp.n1378 = icmp eq i64 %88, %n.vec1374
  br i1 %cmp.n1378, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1366
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1374, %middle.block1366 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1366
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1370 = add i64 %indvar1369, 1
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
  %indvars.iv1076 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1077, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %113, %polly.loop_exit224 ]
  %97 = shl nuw nsw i64 %polly.indvar203, 2
  %98 = udiv i64 %polly.indvar203, 24
  %99 = mul nuw nsw i64 %98, 96
  %100 = sub nsw i64 %97, %99
  %101 = mul nsw i64 %polly.indvar203, -4
  %102 = add i64 %101, %99
  %103 = udiv i64 %polly.indvar203, 24
  %104 = mul nuw nsw i64 %103, 96
  %105 = sub nsw i64 %indvars.iv1076, %104
  %106 = add i64 %indvars.iv1080, %104
  %107 = mul nsw i64 %polly.indvar203, -4
  %108 = shl nsw i64 %polly.indvar203, 2
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %109 = add nsw i64 %107, 1199
  %polly.access.mul.call1241.us = mul nsw i64 %polly.indvar203, 4000
  %110 = or i64 %108, 1
  %polly.access.mul.call1241.us.1 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %108, 2
  %polly.access.mul.call1241.us.2 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %108, 3
  %polly.access.mul.call1241.us.3 = mul nuw nsw i64 %112, 1000
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit259
  %113 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 4
  %indvars.iv.next1081 = add nsw i64 %indvars.iv1080, -4
  %exitcond1088.not = icmp eq i64 %113, 300
  br i1 %exitcond1088.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1072.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %114 = add nuw nsw i64 %polly.indvar215, %108
  %polly.access.mul.call2219 = mul nuw nsw i64 %114, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit259, %polly.loop_exit208
  %indvar1383 = phi i64 [ %indvar.next1384, %polly.loop_exit259 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit259 ], [ %106, %polly.loop_exit208 ]
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit259 ], [ %105, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit259 ], [ %103, %polly.loop_exit208 ]
  %115 = mul nsw i64 %indvar1383, -96
  %116 = add i64 %100, %115
  %smax1385 = call i64 @llvm.smax.i64(i64 %116, i64 0)
  %117 = mul nuw nsw i64 %indvar1383, 96
  %118 = add i64 %102, %117
  %119 = add i64 %smax1385, %118
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1078, i64 0)
  %120 = add i64 %smax, %indvars.iv1082
  %121 = mul nuw nsw i64 %polly.indvar225, 24
  %.not.not = icmp ugt i64 %121, %polly.indvar203
  %122 = mul nuw nsw i64 %polly.indvar225, 96
  %123 = add nsw i64 %122, %107
  %124 = icmp sgt i64 %123, 0
  %125 = select i1 %124, i64 %123, i64 0
  %126 = add nsw i64 %123, 95
  %127 = icmp slt i64 %109, %126
  %128 = select i1 %127, i64 %109, i64 %126
  %polly.loop_guard.not = icmp sgt i64 %125, %128
  br i1 %.not.not, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit246.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit246.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1242.us.1 = add nuw nsw i64 %polly.access.mul.call1241.us.1, %polly.indvar231.us
  %polly.access.call1243.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.1
  %polly.access.call1243.load.us.1 = load double, double* %polly.access.call1243.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1243.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1242.us.2 = add nuw nsw i64 %polly.access.mul.call1241.us.2, %polly.indvar231.us
  %polly.access.call1243.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.2
  %polly.access.call1243.load.us.2 = load double, double* %polly.access.call1243.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1243.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1242.us.3 = add nuw nsw i64 %polly.access.mul.call1241.us.3, %polly.indvar231.us
  %polly.access.call1243.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.3
  %polly.access.call1243.load.us.3 = load double, double* %polly.access.call1243.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1243.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit246.us, label %polly.loop_header244.us

polly.loop_header244.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header244.us
  %polly.indvar247.us = phi i64 [ %polly.indvar_next248.us, %polly.loop_header244.us ], [ %125, %polly.loop_header228.us ]
  %129 = add nuw nsw i64 %polly.indvar247.us, %108
  %polly.access.mul.call1251.us = mul nsw i64 %129, 1000
  %polly.access.add.call1252.us = add nuw nsw i64 %polly.access.mul.call1251.us, %polly.indvar231.us
  %polly.access.call1253.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1252.us
  %polly.access.call1253.load.us = load double, double* %polly.access.call1253.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1255.us = add nuw nsw i64 %polly.indvar247.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  store double %polly.access.call1253.load.us, double* %polly.access.Packed_MemRef_call1256.us, align 8
  %polly.indvar_next248.us = add nuw nsw i64 %polly.indvar247.us, 1
  %polly.loop_cond249.not.not.us = icmp slt i64 %polly.indvar247.us, %128
  br i1 %polly.loop_cond249.not.not.us, label %polly.loop_header244.us, label %polly.loop_exit246.us

polly.loop_exit246.us:                            ; preds = %polly.loop_header244.us, %polly.loop_header228.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1075.not, label %polly.loop_header257.preheader, label %polly.loop_header228.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  br i1 %polly.loop_guard.not, label %polly.loop_header257.preheader, label %polly.loop_header228

polly.loop_exit259:                               ; preds = %polly.loop_exit266, %polly.loop_header257.preheader
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %polly.loop_cond227 = icmp ult i64 %polly.indvar225, 12
  %indvars.iv.next1079 = add i64 %indvars.iv1078, -96
  %indvars.iv.next1083 = add i64 %indvars.iv1082, 96
  %indvar.next1384 = add i64 %indvar1383, 1
  br i1 %polly.loop_cond227, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.loop_exit246
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit246 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1254 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header244

polly.loop_exit246:                               ; preds = %polly.loop_header244
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1073.not, label %polly.loop_header257.preheader, label %polly.loop_header228

polly.loop_header257.preheader:                   ; preds = %polly.loop_exit246, %polly.loop_exit246.us, %polly.loop_header222.split
  %130 = sub nsw i64 %108, %122
  %131 = icmp sgt i64 %130, 0
  %132 = select i1 %131, i64 %130, i64 0
  %133 = mul nsw i64 %polly.indvar225, -96
  %134 = icmp slt i64 %133, -1104
  %135 = select i1 %134, i64 %133, i64 -1104
  %136 = add nsw i64 %135, 1199
  %polly.loop_guard267.not = icmp sgt i64 %132, %136
  br i1 %polly.loop_guard267.not, label %polly.loop_exit259, label %polly.loop_header257

polly.loop_header244:                             ; preds = %polly.loop_header228, %polly.loop_header244
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_header244 ], [ %125, %polly.loop_header228 ]
  %137 = add nuw nsw i64 %polly.indvar247, %108
  %polly.access.mul.call1251 = mul nsw i64 %137, 1000
  %polly.access.add.call1252 = add nuw nsw i64 %polly.access.mul.call1251, %polly.indvar231
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.indvar247, %polly.access.mul.Packed_MemRef_call1254
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %polly.loop_cond249.not.not = icmp slt i64 %polly.indvar247, %128
  br i1 %polly.loop_cond249.not.not, label %polly.loop_header244, label %polly.loop_exit246

polly.loop_header257:                             ; preds = %polly.loop_header257.preheader, %polly.loop_exit266
  %polly.indvar260 = phi i64 [ %polly.indvar_next261, %polly.loop_exit266 ], [ 0, %polly.loop_header257.preheader ]
  %polly.access.mul.Packed_MemRef_call1279 = mul nuw nsw i64 %polly.indvar260, 1200
  br label %polly.loop_header264

polly.loop_exit266:                               ; preds = %polly.loop_exit274
  %polly.indvar_next261 = add nuw nsw i64 %polly.indvar260, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next261, 1000
  br i1 %exitcond1087.not, label %polly.loop_exit259, label %polly.loop_header257

polly.loop_header264:                             ; preds = %polly.loop_header257, %polly.loop_exit274
  %indvar1386 = phi i64 [ 0, %polly.loop_header257 ], [ %indvar.next1387, %polly.loop_exit274 ]
  %indvars.iv1084 = phi i64 [ %120, %polly.loop_header257 ], [ %indvars.iv.next1085, %polly.loop_exit274 ]
  %polly.indvar268 = phi i64 [ %132, %polly.loop_header257 ], [ %polly.indvar_next269, %polly.loop_exit274 ]
  %138 = add i64 %119, %indvar1386
  %smin1388 = call i64 @llvm.smin.i64(i64 %138, i64 3)
  %139 = add nsw i64 %smin1388, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1084, i64 3)
  %140 = add nsw i64 %polly.indvar268, %123
  %polly.loop_guard2751176 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard2751176, label %polly.loop_header272.preheader, label %polly.loop_exit274

polly.loop_header272.preheader:                   ; preds = %polly.loop_header264
  %141 = add nuw nsw i64 %polly.indvar268, %122
  %polly.access.add.Packed_MemRef_call2284 = add nsw i64 %140, %polly.access.mul.Packed_MemRef_call1279
  %polly.access.Packed_MemRef_call2285 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284
  %_p_scalar_286 = load double, double* %polly.access.Packed_MemRef_call2285, align 8
  %polly.access.Packed_MemRef_call1293 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2284
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call1293, align 8
  %142 = mul i64 %141, 9600
  %min.iters.check1389 = icmp ult i64 %139, 4
  br i1 %min.iters.check1389, label %polly.loop_header272.preheader1404, label %vector.ph1390

vector.ph1390:                                    ; preds = %polly.loop_header272.preheader
  %n.vec1392 = and i64 %139, -4
  %broadcast.splatinsert1398 = insertelement <4 x double> poison, double %_p_scalar_286, i32 0
  %broadcast.splat1399 = shufflevector <4 x double> %broadcast.splatinsert1398, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1401 = insertelement <4 x double> poison, double %_p_scalar_294, i32 0
  %broadcast.splat1402 = shufflevector <4 x double> %broadcast.splatinsert1401, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1382

vector.body1382:                                  ; preds = %vector.body1382, %vector.ph1390
  %index1393 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1394, %vector.body1382 ]
  %143 = add nuw nsw i64 %index1393, %108
  %144 = add nuw nsw i64 %index1393, %polly.access.mul.Packed_MemRef_call1279
  %145 = getelementptr double, double* %Packed_MemRef_call1, i64 %144
  %146 = bitcast double* %145 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %146, align 8
  %147 = fmul fast <4 x double> %broadcast.splat1399, %wide.load1397
  %148 = getelementptr double, double* %Packed_MemRef_call2, i64 %144
  %149 = bitcast double* %148 to <4 x double>*
  %wide.load1400 = load <4 x double>, <4 x double>* %149, align 8
  %150 = fmul fast <4 x double> %broadcast.splat1402, %wide.load1400
  %151 = shl i64 %143, 3
  %152 = add i64 %151, %142
  %153 = getelementptr i8, i8* %call, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1403 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !72, !noalias !74
  %155 = fadd fast <4 x double> %150, %147
  %156 = fmul fast <4 x double> %155, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %157 = fadd fast <4 x double> %156, %wide.load1403
  %158 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !72, !noalias !74
  %index.next1394 = add i64 %index1393, 4
  %159 = icmp eq i64 %index.next1394, %n.vec1392
  br i1 %159, label %middle.block1380, label %vector.body1382, !llvm.loop !84

middle.block1380:                                 ; preds = %vector.body1382
  %cmp.n1396 = icmp eq i64 %139, %n.vec1392
  br i1 %cmp.n1396, label %polly.loop_exit274, label %polly.loop_header272.preheader1404

polly.loop_header272.preheader1404:               ; preds = %polly.loop_header272.preheader, %middle.block1380
  %polly.indvar276.ph = phi i64 [ 0, %polly.loop_header272.preheader ], [ %n.vec1392, %middle.block1380 ]
  br label %polly.loop_header272

polly.loop_exit274:                               ; preds = %polly.loop_header272, %middle.block1380, %polly.loop_header264
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %polly.loop_cond270.not.not = icmp slt i64 %polly.indvar268, %136
  %indvars.iv.next1085 = add i64 %indvars.iv1084, 1
  %indvar.next1387 = add i64 %indvar1386, 1
  br i1 %polly.loop_cond270.not.not, label %polly.loop_header264, label %polly.loop_exit266

polly.loop_header272:                             ; preds = %polly.loop_header272.preheader1404, %polly.loop_header272
  %polly.indvar276 = phi i64 [ %polly.indvar_next277, %polly.loop_header272 ], [ %polly.indvar276.ph, %polly.loop_header272.preheader1404 ]
  %160 = add nuw nsw i64 %polly.indvar276, %108
  %polly.access.add.Packed_MemRef_call1280 = add nuw nsw i64 %polly.indvar276, %polly.access.mul.Packed_MemRef_call1279
  %polly.access.Packed_MemRef_call1281 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280
  %_p_scalar_282 = load double, double* %polly.access.Packed_MemRef_call1281, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_286, %_p_scalar_282
  %polly.access.Packed_MemRef_call2289 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1280
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call2289, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_294, %_p_scalar_290
  %161 = shl i64 %160, 3
  %162 = add i64 %161, %142
  %scevgep295 = getelementptr i8, i8* %call, i64 %162
  %scevgep295296 = bitcast i8* %scevgep295 to double*
  %_p_scalar_297 = load double, double* %scevgep295296, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_297
  store double %p_add42.i118, double* %scevgep295296, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next277 = add nuw nsw i64 %polly.indvar276, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar276, %smin
  br i1 %exitcond1086.not, label %polly.loop_exit274, label %polly.loop_header272, !llvm.loop !85

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit429
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1319 = phi i64 [ %indvar.next1320, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %163 = add i64 %indvar1319, 1
  %164 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %164
  %min.iters.check1321 = icmp ult i64 %163, 4
  br i1 %min.iters.check1321, label %polly.loop_header394.preheader, label %vector.ph1322

vector.ph1322:                                    ; preds = %polly.loop_header388
  %n.vec1324 = and i64 %163, -4
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %vector.ph1322
  %index1325 = phi i64 [ 0, %vector.ph1322 ], [ %index.next1326, %vector.body1318 ]
  %165 = shl nuw nsw i64 %index1325, 3
  %166 = getelementptr i8, i8* %scevgep400, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  %wide.load1329 = load <4 x double>, <4 x double>* %167, align 8, !alias.scope !86, !noalias !88
  %168 = fmul fast <4 x double> %wide.load1329, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %169 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %168, <4 x double>* %169, align 8, !alias.scope !86, !noalias !88
  %index.next1326 = add i64 %index1325, 4
  %170 = icmp eq i64 %index.next1326, %n.vec1324
  br i1 %170, label %middle.block1316, label %vector.body1318, !llvm.loop !93

middle.block1316:                                 ; preds = %vector.body1318
  %cmp.n1328 = icmp eq i64 %163, %n.vec1324
  br i1 %cmp.n1328, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1316
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1324, %middle.block1316 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1316
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1320 = add i64 %indvar1319, 1
  br i1 %exitcond1114.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %171 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %171
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1113.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !94

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit429
  %indvars.iv1103 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %indvars.iv.next1104, %polly.loop_exit429 ]
  %indvars.iv1098 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %indvars.iv.next1099, %polly.loop_exit429 ]
  %indvars.iv1091 = phi i64 [ 1200, %polly.loop_header404.preheader ], [ %indvars.iv.next1092, %polly.loop_exit429 ]
  %polly.indvar407 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %188, %polly.loop_exit429 ]
  %172 = shl nuw nsw i64 %polly.indvar407, 2
  %173 = udiv i64 %polly.indvar407, 24
  %174 = mul nuw nsw i64 %173, 96
  %175 = sub nsw i64 %172, %174
  %176 = mul nsw i64 %polly.indvar407, -4
  %177 = add i64 %176, %174
  %178 = udiv i64 %polly.indvar407, 24
  %179 = mul nuw nsw i64 %178, 96
  %180 = sub nsw i64 %indvars.iv1098, %179
  %181 = add i64 %indvars.iv1103, %179
  %182 = mul nsw i64 %polly.indvar407, -4
  %183 = shl nsw i64 %polly.indvar407, 2
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit418
  %184 = add nsw i64 %182, 1199
  %polly.access.mul.call1450.us = mul nsw i64 %polly.indvar407, 4000
  %185 = or i64 %183, 1
  %polly.access.mul.call1450.us.1 = mul nuw nsw i64 %185, 1000
  %186 = or i64 %183, 2
  %polly.access.mul.call1450.us.2 = mul nuw nsw i64 %186, 1000
  %187 = or i64 %183, 3
  %polly.access.mul.call1450.us.3 = mul nuw nsw i64 %187, 1000
  br label %polly.loop_header427

polly.loop_exit429:                               ; preds = %polly.loop_exit470
  %188 = add nuw nsw i64 %polly.indvar407, 1
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -4
  %indvars.iv.next1099 = add nuw nsw i64 %indvars.iv1098, 4
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, -4
  %exitcond1112.not = icmp eq i64 %188, 300
  br i1 %exitcond1112.not, label %polly.exiting301, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_exit418, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar413, 1200
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_header416
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next414, 1000
  br i1 %exitcond1094.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_header416, %polly.loop_header410
  %polly.indvar419 = phi i64 [ 0, %polly.loop_header410 ], [ %polly.indvar_next420, %polly.loop_header416 ]
  %189 = add nuw nsw i64 %polly.indvar419, %183
  %polly.access.mul.call2423 = mul nuw nsw i64 %189, 1000
  %polly.access.add.call2424 = add nuw nsw i64 %polly.access.mul.call2423, %polly.indvar413
  %polly.access.call2425 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2424
  %polly.access.call2425.load = load double, double* %polly.access.call2425, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar419, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2425.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next420, %indvars.iv1091
  br i1 %exitcond1093.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header427:                             ; preds = %polly.loop_exit470, %polly.loop_exit412
  %indvar1333 = phi i64 [ %indvar.next1334, %polly.loop_exit470 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %polly.loop_exit470 ], [ %181, %polly.loop_exit412 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit470 ], [ %180, %polly.loop_exit412 ]
  %polly.indvar430 = phi i64 [ %polly.indvar_next431, %polly.loop_exit470 ], [ %178, %polly.loop_exit412 ]
  %190 = mul nsw i64 %indvar1333, -96
  %191 = add i64 %175, %190
  %smax1335 = call i64 @llvm.smax.i64(i64 %191, i64 0)
  %192 = mul nuw nsw i64 %indvar1333, 96
  %193 = add i64 %177, %192
  %194 = add i64 %smax1335, %193
  %smax1102 = call i64 @llvm.smax.i64(i64 %indvars.iv1100, i64 0)
  %195 = add i64 %smax1102, %indvars.iv1105
  %196 = mul nuw nsw i64 %polly.indvar430, 24
  %.not.not926 = icmp ugt i64 %196, %polly.indvar407
  %197 = mul nuw nsw i64 %polly.indvar430, 96
  %198 = add nsw i64 %197, %182
  %199 = icmp sgt i64 %198, 0
  %200 = select i1 %199, i64 %198, i64 0
  %201 = add nsw i64 %198, 95
  %202 = icmp slt i64 %184, %201
  %203 = select i1 %202, i64 %184, i64 %201
  %polly.loop_guard457.not = icmp sgt i64 %200, %203
  br i1 %.not.not926, label %polly.loop_header433.us, label %polly.loop_header427.split

polly.loop_header433.us:                          ; preds = %polly.loop_header427, %polly.loop_exit456.us
  %polly.indvar436.us = phi i64 [ %polly.indvar_next437.us, %polly.loop_exit456.us ], [ 0, %polly.loop_header427 ]
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar436.us, 1200
  %polly.access.add.call1451.us = add nuw nsw i64 %polly.access.mul.call1450.us, %polly.indvar436.us
  %polly.access.call1452.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us
  %polly.access.call1452.load.us = load double, double* %polly.access.call1452.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.mul.Packed_MemRef_call1303.us
  store double %polly.access.call1452.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.access.add.call1451.us.1 = add nuw nsw i64 %polly.access.mul.call1450.us.1, %polly.indvar436.us
  %polly.access.call1452.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.1
  %polly.access.call1452.load.us.1 = load double, double* %polly.access.call1452.us.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 1
  %polly.access.Packed_MemRef_call1303.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.1
  store double %polly.access.call1452.load.us.1, double* %polly.access.Packed_MemRef_call1303.us.1, align 8
  %polly.access.add.call1451.us.2 = add nuw nsw i64 %polly.access.mul.call1450.us.2, %polly.indvar436.us
  %polly.access.call1452.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.2
  %polly.access.call1452.load.us.2 = load double, double* %polly.access.call1452.us.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 2
  %polly.access.Packed_MemRef_call1303.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.2
  store double %polly.access.call1452.load.us.2, double* %polly.access.Packed_MemRef_call1303.us.2, align 8
  %polly.access.add.call1451.us.3 = add nuw nsw i64 %polly.access.mul.call1450.us.3, %polly.indvar436.us
  %polly.access.call1452.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.3
  %polly.access.call1452.load.us.3 = load double, double* %polly.access.call1452.us.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 3
  %polly.access.Packed_MemRef_call1303.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.3
  store double %polly.access.call1452.load.us.3, double* %polly.access.Packed_MemRef_call1303.us.3, align 8
  br i1 %polly.loop_guard457.not, label %polly.loop_exit456.us, label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header433.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ %200, %polly.loop_header433.us ]
  %204 = add nuw nsw i64 %polly.indvar458.us, %183
  %polly.access.mul.call1462.us = mul nsw i64 %204, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %polly.access.mul.call1462.us, %polly.indvar436.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303466.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303467.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303466.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303467.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %polly.loop_cond460.not.not.us = icmp slt i64 %polly.indvar458.us, %203
  br i1 %polly.loop_cond460.not.not.us, label %polly.loop_header454.us, label %polly.loop_exit456.us

polly.loop_exit456.us:                            ; preds = %polly.loop_header454.us, %polly.loop_header433.us
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next437.us, 1000
  br i1 %exitcond1097.not, label %polly.loop_header468.preheader, label %polly.loop_header433.us

polly.loop_header427.split:                       ; preds = %polly.loop_header427
  br i1 %polly.loop_guard457.not, label %polly.loop_header468.preheader, label %polly.loop_header433

polly.loop_exit470:                               ; preds = %polly.loop_exit477, %polly.loop_header468.preheader
  %polly.indvar_next431 = add nuw nsw i64 %polly.indvar430, 1
  %polly.loop_cond432 = icmp ult i64 %polly.indvar430, 12
  %indvars.iv.next1101 = add i64 %indvars.iv1100, -96
  %indvars.iv.next1106 = add i64 %indvars.iv1105, 96
  %indvar.next1334 = add i64 %indvar1333, 1
  br i1 %polly.loop_cond432, label %polly.loop_header427, label %polly.loop_exit429

polly.loop_header433:                             ; preds = %polly.loop_header427.split, %polly.loop_exit456
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit456 ], [ 0, %polly.loop_header427.split ]
  %polly.access.mul.Packed_MemRef_call1303465 = mul nuw nsw i64 %polly.indvar436, 1200
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_header454
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next437, 1000
  br i1 %exitcond1095.not, label %polly.loop_header468.preheader, label %polly.loop_header433

polly.loop_header468.preheader:                   ; preds = %polly.loop_exit456, %polly.loop_exit456.us, %polly.loop_header427.split
  %205 = sub nsw i64 %183, %197
  %206 = icmp sgt i64 %205, 0
  %207 = select i1 %206, i64 %205, i64 0
  %208 = mul nsw i64 %polly.indvar430, -96
  %209 = icmp slt i64 %208, -1104
  %210 = select i1 %209, i64 %208, i64 -1104
  %211 = add nsw i64 %210, 1199
  %polly.loop_guard478.not = icmp sgt i64 %207, %211
  br i1 %polly.loop_guard478.not, label %polly.loop_exit470, label %polly.loop_header468

polly.loop_header454:                             ; preds = %polly.loop_header433, %polly.loop_header454
  %polly.indvar458 = phi i64 [ %polly.indvar_next459, %polly.loop_header454 ], [ %200, %polly.loop_header433 ]
  %212 = add nuw nsw i64 %polly.indvar458, %183
  %polly.access.mul.call1462 = mul nsw i64 %212, 1000
  %polly.access.add.call1463 = add nuw nsw i64 %polly.access.mul.call1462, %polly.indvar436
  %polly.access.call1464 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463
  %polly.access.call1464.load = load double, double* %polly.access.call1464, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303466 = add nuw nsw i64 %polly.indvar458, %polly.access.mul.Packed_MemRef_call1303465
  %polly.access.Packed_MemRef_call1303467 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303466
  store double %polly.access.call1464.load, double* %polly.access.Packed_MemRef_call1303467, align 8
  %polly.indvar_next459 = add nuw nsw i64 %polly.indvar458, 1
  %polly.loop_cond460.not.not = icmp slt i64 %polly.indvar458, %203
  br i1 %polly.loop_cond460.not.not, label %polly.loop_header454, label %polly.loop_exit456

polly.loop_header468:                             ; preds = %polly.loop_header468.preheader, %polly.loop_exit477
  %polly.indvar471 = phi i64 [ %polly.indvar_next472, %polly.loop_exit477 ], [ 0, %polly.loop_header468.preheader ]
  %polly.access.mul.Packed_MemRef_call1303490 = mul nuw nsw i64 %polly.indvar471, 1200
  br label %polly.loop_header475

polly.loop_exit477:                               ; preds = %polly.loop_exit485
  %polly.indvar_next472 = add nuw nsw i64 %polly.indvar471, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next472, 1000
  br i1 %exitcond1111.not, label %polly.loop_exit470, label %polly.loop_header468

polly.loop_header475:                             ; preds = %polly.loop_header468, %polly.loop_exit485
  %indvar1336 = phi i64 [ 0, %polly.loop_header468 ], [ %indvar.next1337, %polly.loop_exit485 ]
  %indvars.iv1107 = phi i64 [ %195, %polly.loop_header468 ], [ %indvars.iv.next1108, %polly.loop_exit485 ]
  %polly.indvar479 = phi i64 [ %207, %polly.loop_header468 ], [ %polly.indvar_next480, %polly.loop_exit485 ]
  %213 = add i64 %194, %indvar1336
  %smin1338 = call i64 @llvm.smin.i64(i64 %213, i64 3)
  %214 = add nsw i64 %smin1338, 1
  %smin1109 = call i64 @llvm.smin.i64(i64 %indvars.iv1107, i64 3)
  %215 = add nsw i64 %polly.indvar479, %198
  %polly.loop_guard4861177 = icmp sgt i64 %215, -1
  br i1 %polly.loop_guard4861177, label %polly.loop_header483.preheader, label %polly.loop_exit485

polly.loop_header483.preheader:                   ; preds = %polly.loop_header475
  %216 = add nuw nsw i64 %polly.indvar479, %197
  %polly.access.add.Packed_MemRef_call2305495 = add nsw i64 %215, %polly.access.mul.Packed_MemRef_call1303490
  %polly.access.Packed_MemRef_call2305496 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495
  %_p_scalar_497 = load double, double* %polly.access.Packed_MemRef_call2305496, align 8
  %polly.access.Packed_MemRef_call1303504 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call2305495
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1303504, align 8
  %217 = mul i64 %216, 9600
  %min.iters.check1339 = icmp ult i64 %214, 4
  br i1 %min.iters.check1339, label %polly.loop_header483.preheader1408, label %vector.ph1340

vector.ph1340:                                    ; preds = %polly.loop_header483.preheader
  %n.vec1342 = and i64 %214, -4
  %broadcast.splatinsert1348 = insertelement <4 x double> poison, double %_p_scalar_497, i32 0
  %broadcast.splat1349 = shufflevector <4 x double> %broadcast.splatinsert1348, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1351 = insertelement <4 x double> poison, double %_p_scalar_505, i32 0
  %broadcast.splat1352 = shufflevector <4 x double> %broadcast.splatinsert1351, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.body1332, %vector.ph1340
  %index1343 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1344, %vector.body1332 ]
  %218 = add nuw nsw i64 %index1343, %183
  %219 = add nuw nsw i64 %index1343, %polly.access.mul.Packed_MemRef_call1303490
  %220 = getelementptr double, double* %Packed_MemRef_call1303, i64 %219
  %221 = bitcast double* %220 to <4 x double>*
  %wide.load1347 = load <4 x double>, <4 x double>* %221, align 8
  %222 = fmul fast <4 x double> %broadcast.splat1349, %wide.load1347
  %223 = getelementptr double, double* %Packed_MemRef_call2305, i64 %219
  %224 = bitcast double* %223 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %224, align 8
  %225 = fmul fast <4 x double> %broadcast.splat1352, %wide.load1350
  %226 = shl i64 %218, 3
  %227 = add i64 %226, %217
  %228 = getelementptr i8, i8* %call, i64 %227
  %229 = bitcast i8* %228 to <4 x double>*
  %wide.load1353 = load <4 x double>, <4 x double>* %229, align 8, !alias.scope !86, !noalias !88
  %230 = fadd fast <4 x double> %225, %222
  %231 = fmul fast <4 x double> %230, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %232 = fadd fast <4 x double> %231, %wide.load1353
  %233 = bitcast i8* %228 to <4 x double>*
  store <4 x double> %232, <4 x double>* %233, align 8, !alias.scope !86, !noalias !88
  %index.next1344 = add i64 %index1343, 4
  %234 = icmp eq i64 %index.next1344, %n.vec1342
  br i1 %234, label %middle.block1330, label %vector.body1332, !llvm.loop !97

middle.block1330:                                 ; preds = %vector.body1332
  %cmp.n1346 = icmp eq i64 %214, %n.vec1342
  br i1 %cmp.n1346, label %polly.loop_exit485, label %polly.loop_header483.preheader1408

polly.loop_header483.preheader1408:               ; preds = %polly.loop_header483.preheader, %middle.block1330
  %polly.indvar487.ph = phi i64 [ 0, %polly.loop_header483.preheader ], [ %n.vec1342, %middle.block1330 ]
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483, %middle.block1330, %polly.loop_header475
  %polly.indvar_next480 = add nuw nsw i64 %polly.indvar479, 1
  %polly.loop_cond481.not.not = icmp slt i64 %polly.indvar479, %211
  %indvars.iv.next1108 = add i64 %indvars.iv1107, 1
  %indvar.next1337 = add i64 %indvar1336, 1
  br i1 %polly.loop_cond481.not.not, label %polly.loop_header475, label %polly.loop_exit477

polly.loop_header483:                             ; preds = %polly.loop_header483.preheader1408, %polly.loop_header483
  %polly.indvar487 = phi i64 [ %polly.indvar_next488, %polly.loop_header483 ], [ %polly.indvar487.ph, %polly.loop_header483.preheader1408 ]
  %235 = add nuw nsw i64 %polly.indvar487, %183
  %polly.access.add.Packed_MemRef_call1303491 = add nuw nsw i64 %polly.indvar487, %polly.access.mul.Packed_MemRef_call1303490
  %polly.access.Packed_MemRef_call1303492 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491
  %_p_scalar_493 = load double, double* %polly.access.Packed_MemRef_call1303492, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_497, %_p_scalar_493
  %polly.access.Packed_MemRef_call2305500 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call1303491
  %_p_scalar_501 = load double, double* %polly.access.Packed_MemRef_call2305500, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_505, %_p_scalar_501
  %236 = shl i64 %235, 3
  %237 = add i64 %236, %217
  %scevgep506 = getelementptr i8, i8* %call, i64 %237
  %scevgep506507 = bitcast i8* %scevgep506 to double*
  %_p_scalar_508 = load double, double* %scevgep506507, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_508
  store double %p_add42.i79, double* %scevgep506507, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next488 = add nuw nsw i64 %polly.indvar487, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar487, %smin1109
  br i1 %exitcond1110.not, label %polly.loop_exit485, label %polly.loop_header483, !llvm.loop !98

polly.start511:                                   ; preds = %init_array.exit
  %malloccall513 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall515 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header599

polly.exiting512:                                 ; preds = %polly.loop_exit640
  tail call void @free(i8* %malloccall513)
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start511
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start511 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start511 ]
  %238 = add i64 %indvar, 1
  %239 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %239
  %min.iters.check1271 = icmp ult i64 %238, 4
  br i1 %min.iters.check1271, label %polly.loop_header605.preheader, label %vector.ph1272

vector.ph1272:                                    ; preds = %polly.loop_header599
  %n.vec1274 = and i64 %238, -4
  br label %vector.body1270

vector.body1270:                                  ; preds = %vector.body1270, %vector.ph1272
  %index1275 = phi i64 [ 0, %vector.ph1272 ], [ %index.next1276, %vector.body1270 ]
  %240 = shl nuw nsw i64 %index1275, 3
  %241 = getelementptr i8, i8* %scevgep611, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  %wide.load1279 = load <4 x double>, <4 x double>* %242, align 8, !alias.scope !99, !noalias !101
  %243 = fmul fast <4 x double> %wide.load1279, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %244 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %243, <4 x double>* %244, align 8, !alias.scope !99, !noalias !101
  %index.next1276 = add i64 %index1275, 4
  %245 = icmp eq i64 %index.next1276, %n.vec1274
  br i1 %245, label %middle.block1268, label %vector.body1270, !llvm.loop !106

middle.block1268:                                 ; preds = %vector.body1270
  %cmp.n1278 = icmp eq i64 %238, %n.vec1274
  br i1 %cmp.n1278, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1268
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1274, %middle.block1268 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1268
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1138.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %246 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %246
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1137.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !107

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit640
  %indvars.iv1127 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1128, %polly.loop_exit640 ]
  %indvars.iv1122 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1123, %polly.loop_exit640 ]
  %indvars.iv1115 = phi i64 [ 1200, %polly.loop_header615.preheader ], [ %indvars.iv.next1116, %polly.loop_exit640 ]
  %polly.indvar618 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %263, %polly.loop_exit640 ]
  %247 = shl nuw nsw i64 %polly.indvar618, 2
  %248 = udiv i64 %polly.indvar618, 24
  %249 = mul nuw nsw i64 %248, 96
  %250 = sub nsw i64 %247, %249
  %251 = mul nsw i64 %polly.indvar618, -4
  %252 = add i64 %251, %249
  %253 = udiv i64 %polly.indvar618, 24
  %254 = mul nuw nsw i64 %253, 96
  %255 = sub nsw i64 %indvars.iv1122, %254
  %256 = add i64 %indvars.iv1127, %254
  %257 = mul nsw i64 %polly.indvar618, -4
  %258 = shl nsw i64 %polly.indvar618, 2
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_exit629
  %259 = add nsw i64 %257, 1199
  %polly.access.mul.call1661.us = mul nsw i64 %polly.indvar618, 4000
  %260 = or i64 %258, 1
  %polly.access.mul.call1661.us.1 = mul nuw nsw i64 %260, 1000
  %261 = or i64 %258, 2
  %polly.access.mul.call1661.us.2 = mul nuw nsw i64 %261, 1000
  %262 = or i64 %258, 3
  %polly.access.mul.call1661.us.3 = mul nuw nsw i64 %262, 1000
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit681
  %263 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1116 = add nsw i64 %indvars.iv1115, -4
  %indvars.iv.next1123 = add nuw nsw i64 %indvars.iv1122, 4
  %indvars.iv.next1128 = add nsw i64 %indvars.iv1127, -4
  %exitcond1136.not = icmp eq i64 %263, 300
  br i1 %exitcond1136.not, label %polly.exiting512, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_exit629, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_exit629 ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar624, 1200
  br label %polly.loop_header627

polly.loop_exit629:                               ; preds = %polly.loop_header627
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next625, 1000
  br i1 %exitcond1118.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header627:                             ; preds = %polly.loop_header627, %polly.loop_header621
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header621 ], [ %polly.indvar_next631, %polly.loop_header627 ]
  %264 = add nuw nsw i64 %polly.indvar630, %258
  %polly.access.mul.call2634 = mul nuw nsw i64 %264, 1000
  %polly.access.add.call2635 = add nuw nsw i64 %polly.access.mul.call2634, %polly.indvar624
  %polly.access.call2636 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2635
  %polly.access.call2636.load = load double, double* %polly.access.call2636, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2636.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next631, %indvars.iv1115
  br i1 %exitcond1117.not, label %polly.loop_exit629, label %polly.loop_header627

polly.loop_header638:                             ; preds = %polly.loop_exit681, %polly.loop_exit623
  %indvar1283 = phi i64 [ %indvar.next1284, %polly.loop_exit681 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit681 ], [ %256, %polly.loop_exit623 ]
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit681 ], [ %255, %polly.loop_exit623 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit681 ], [ %253, %polly.loop_exit623 ]
  %265 = mul nsw i64 %indvar1283, -96
  %266 = add i64 %250, %265
  %smax1285 = call i64 @llvm.smax.i64(i64 %266, i64 0)
  %267 = mul nuw nsw i64 %indvar1283, 96
  %268 = add i64 %252, %267
  %269 = add i64 %smax1285, %268
  %smax1126 = call i64 @llvm.smax.i64(i64 %indvars.iv1124, i64 0)
  %270 = add i64 %smax1126, %indvars.iv1129
  %271 = mul nuw nsw i64 %polly.indvar641, 24
  %.not.not927 = icmp ugt i64 %271, %polly.indvar618
  %272 = mul nuw nsw i64 %polly.indvar641, 96
  %273 = add nsw i64 %272, %257
  %274 = icmp sgt i64 %273, 0
  %275 = select i1 %274, i64 %273, i64 0
  %276 = add nsw i64 %273, 95
  %277 = icmp slt i64 %259, %276
  %278 = select i1 %277, i64 %259, i64 %276
  %polly.loop_guard668.not = icmp sgt i64 %275, %278
  br i1 %.not.not927, label %polly.loop_header644.us, label %polly.loop_header638.split

polly.loop_header644.us:                          ; preds = %polly.loop_header638, %polly.loop_exit667.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_exit667.us ], [ 0, %polly.loop_header638 ]
  %polly.access.mul.Packed_MemRef_call1514.us = mul nuw nsw i64 %polly.indvar647.us, 1200
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.access.mul.call1661.us, %polly.indvar647.us
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.mul.Packed_MemRef_call1514.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.access.add.call1662.us.1 = add nuw nsw i64 %polly.access.mul.call1661.us.1, %polly.indvar647.us
  %polly.access.call1663.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.1
  %polly.access.call1663.load.us.1 = load double, double* %polly.access.call1663.us.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 1
  %polly.access.Packed_MemRef_call1514.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.1
  store double %polly.access.call1663.load.us.1, double* %polly.access.Packed_MemRef_call1514.us.1, align 8
  %polly.access.add.call1662.us.2 = add nuw nsw i64 %polly.access.mul.call1661.us.2, %polly.indvar647.us
  %polly.access.call1663.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.2
  %polly.access.call1663.load.us.2 = load double, double* %polly.access.call1663.us.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 2
  %polly.access.Packed_MemRef_call1514.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.2
  store double %polly.access.call1663.load.us.2, double* %polly.access.Packed_MemRef_call1514.us.2, align 8
  %polly.access.add.call1662.us.3 = add nuw nsw i64 %polly.access.mul.call1661.us.3, %polly.indvar647.us
  %polly.access.call1663.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.3
  %polly.access.call1663.load.us.3 = load double, double* %polly.access.call1663.us.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 3
  %polly.access.Packed_MemRef_call1514.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.3
  store double %polly.access.call1663.load.us.3, double* %polly.access.Packed_MemRef_call1514.us.3, align 8
  br i1 %polly.loop_guard668.not, label %polly.loop_exit667.us, label %polly.loop_header665.us

polly.loop_header665.us:                          ; preds = %polly.loop_header644.us, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ %275, %polly.loop_header644.us ]
  %279 = add nuw nsw i64 %polly.indvar669.us, %258
  %polly.access.mul.call1673.us = mul nsw i64 %279, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %polly.access.mul.call1673.us, %polly.indvar647.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514677.us = add nuw nsw i64 %polly.indvar669.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514678.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514677.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514678.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %polly.loop_cond671.not.not.us = icmp slt i64 %polly.indvar669.us, %278
  br i1 %polly.loop_cond671.not.not.us, label %polly.loop_header665.us, label %polly.loop_exit667.us

polly.loop_exit667.us:                            ; preds = %polly.loop_header665.us, %polly.loop_header644.us
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next648.us, 1000
  br i1 %exitcond1121.not, label %polly.loop_header679.preheader, label %polly.loop_header644.us

polly.loop_header638.split:                       ; preds = %polly.loop_header638
  br i1 %polly.loop_guard668.not, label %polly.loop_header679.preheader, label %polly.loop_header644

polly.loop_exit681:                               ; preds = %polly.loop_exit688, %polly.loop_header679.preheader
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %polly.loop_cond643 = icmp ult i64 %polly.indvar641, 12
  %indvars.iv.next1125 = add i64 %indvars.iv1124, -96
  %indvars.iv.next1130 = add i64 %indvars.iv1129, 96
  %indvar.next1284 = add i64 %indvar1283, 1
  br i1 %polly.loop_cond643, label %polly.loop_header638, label %polly.loop_exit640

polly.loop_header644:                             ; preds = %polly.loop_header638.split, %polly.loop_exit667
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit667 ], [ 0, %polly.loop_header638.split ]
  %polly.access.mul.Packed_MemRef_call1514676 = mul nuw nsw i64 %polly.indvar647, 1200
  br label %polly.loop_header665

polly.loop_exit667:                               ; preds = %polly.loop_header665
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next648, 1000
  br i1 %exitcond1119.not, label %polly.loop_header679.preheader, label %polly.loop_header644

polly.loop_header679.preheader:                   ; preds = %polly.loop_exit667, %polly.loop_exit667.us, %polly.loop_header638.split
  %280 = sub nsw i64 %258, %272
  %281 = icmp sgt i64 %280, 0
  %282 = select i1 %281, i64 %280, i64 0
  %283 = mul nsw i64 %polly.indvar641, -96
  %284 = icmp slt i64 %283, -1104
  %285 = select i1 %284, i64 %283, i64 -1104
  %286 = add nsw i64 %285, 1199
  %polly.loop_guard689.not = icmp sgt i64 %282, %286
  br i1 %polly.loop_guard689.not, label %polly.loop_exit681, label %polly.loop_header679

polly.loop_header665:                             ; preds = %polly.loop_header644, %polly.loop_header665
  %polly.indvar669 = phi i64 [ %polly.indvar_next670, %polly.loop_header665 ], [ %275, %polly.loop_header644 ]
  %287 = add nuw nsw i64 %polly.indvar669, %258
  %polly.access.mul.call1673 = mul nsw i64 %287, 1000
  %polly.access.add.call1674 = add nuw nsw i64 %polly.access.mul.call1673, %polly.indvar647
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514677 = add nuw nsw i64 %polly.indvar669, %polly.access.mul.Packed_MemRef_call1514676
  %polly.access.Packed_MemRef_call1514678 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514677
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1514678, align 8
  %polly.indvar_next670 = add nuw nsw i64 %polly.indvar669, 1
  %polly.loop_cond671.not.not = icmp slt i64 %polly.indvar669, %278
  br i1 %polly.loop_cond671.not.not, label %polly.loop_header665, label %polly.loop_exit667

polly.loop_header679:                             ; preds = %polly.loop_header679.preheader, %polly.loop_exit688
  %polly.indvar682 = phi i64 [ %polly.indvar_next683, %polly.loop_exit688 ], [ 0, %polly.loop_header679.preheader ]
  %polly.access.mul.Packed_MemRef_call1514701 = mul nuw nsw i64 %polly.indvar682, 1200
  br label %polly.loop_header686

polly.loop_exit688:                               ; preds = %polly.loop_exit696
  %polly.indvar_next683 = add nuw nsw i64 %polly.indvar682, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next683, 1000
  br i1 %exitcond1135.not, label %polly.loop_exit681, label %polly.loop_header679

polly.loop_header686:                             ; preds = %polly.loop_header679, %polly.loop_exit696
  %indvar1286 = phi i64 [ 0, %polly.loop_header679 ], [ %indvar.next1287, %polly.loop_exit696 ]
  %indvars.iv1131 = phi i64 [ %270, %polly.loop_header679 ], [ %indvars.iv.next1132, %polly.loop_exit696 ]
  %polly.indvar690 = phi i64 [ %282, %polly.loop_header679 ], [ %polly.indvar_next691, %polly.loop_exit696 ]
  %288 = add i64 %269, %indvar1286
  %smin1288 = call i64 @llvm.smin.i64(i64 %288, i64 3)
  %289 = add nsw i64 %smin1288, 1
  %smin1133 = call i64 @llvm.smin.i64(i64 %indvars.iv1131, i64 3)
  %290 = add nsw i64 %polly.indvar690, %273
  %polly.loop_guard6971178 = icmp sgt i64 %290, -1
  br i1 %polly.loop_guard6971178, label %polly.loop_header694.preheader, label %polly.loop_exit696

polly.loop_header694.preheader:                   ; preds = %polly.loop_header686
  %291 = add nuw nsw i64 %polly.indvar690, %272
  %polly.access.add.Packed_MemRef_call2516706 = add nsw i64 %290, %polly.access.mul.Packed_MemRef_call1514701
  %polly.access.Packed_MemRef_call2516707 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706
  %_p_scalar_708 = load double, double* %polly.access.Packed_MemRef_call2516707, align 8
  %polly.access.Packed_MemRef_call1514715 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call2516706
  %_p_scalar_716 = load double, double* %polly.access.Packed_MemRef_call1514715, align 8
  %292 = mul i64 %291, 9600
  %min.iters.check1289 = icmp ult i64 %289, 4
  br i1 %min.iters.check1289, label %polly.loop_header694.preheader1412, label %vector.ph1290

vector.ph1290:                                    ; preds = %polly.loop_header694.preheader
  %n.vec1292 = and i64 %289, -4
  %broadcast.splatinsert1298 = insertelement <4 x double> poison, double %_p_scalar_708, i32 0
  %broadcast.splat1299 = shufflevector <4 x double> %broadcast.splatinsert1298, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1301 = insertelement <4 x double> poison, double %_p_scalar_716, i32 0
  %broadcast.splat1302 = shufflevector <4 x double> %broadcast.splatinsert1301, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.body1282, %vector.ph1290
  %index1293 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1294, %vector.body1282 ]
  %293 = add nuw nsw i64 %index1293, %258
  %294 = add nuw nsw i64 %index1293, %polly.access.mul.Packed_MemRef_call1514701
  %295 = getelementptr double, double* %Packed_MemRef_call1514, i64 %294
  %296 = bitcast double* %295 to <4 x double>*
  %wide.load1297 = load <4 x double>, <4 x double>* %296, align 8
  %297 = fmul fast <4 x double> %broadcast.splat1299, %wide.load1297
  %298 = getelementptr double, double* %Packed_MemRef_call2516, i64 %294
  %299 = bitcast double* %298 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %299, align 8
  %300 = fmul fast <4 x double> %broadcast.splat1302, %wide.load1300
  %301 = shl i64 %293, 3
  %302 = add i64 %301, %292
  %303 = getelementptr i8, i8* %call, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  %wide.load1303 = load <4 x double>, <4 x double>* %304, align 8, !alias.scope !99, !noalias !101
  %305 = fadd fast <4 x double> %300, %297
  %306 = fmul fast <4 x double> %305, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %307 = fadd fast <4 x double> %306, %wide.load1303
  %308 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %307, <4 x double>* %308, align 8, !alias.scope !99, !noalias !101
  %index.next1294 = add i64 %index1293, 4
  %309 = icmp eq i64 %index.next1294, %n.vec1292
  br i1 %309, label %middle.block1280, label %vector.body1282, !llvm.loop !110

middle.block1280:                                 ; preds = %vector.body1282
  %cmp.n1296 = icmp eq i64 %289, %n.vec1292
  br i1 %cmp.n1296, label %polly.loop_exit696, label %polly.loop_header694.preheader1412

polly.loop_header694.preheader1412:               ; preds = %polly.loop_header694.preheader, %middle.block1280
  %polly.indvar698.ph = phi i64 [ 0, %polly.loop_header694.preheader ], [ %n.vec1292, %middle.block1280 ]
  br label %polly.loop_header694

polly.loop_exit696:                               ; preds = %polly.loop_header694, %middle.block1280, %polly.loop_header686
  %polly.indvar_next691 = add nuw nsw i64 %polly.indvar690, 1
  %polly.loop_cond692.not.not = icmp slt i64 %polly.indvar690, %286
  %indvars.iv.next1132 = add i64 %indvars.iv1131, 1
  %indvar.next1287 = add i64 %indvar1286, 1
  br i1 %polly.loop_cond692.not.not, label %polly.loop_header686, label %polly.loop_exit688

polly.loop_header694:                             ; preds = %polly.loop_header694.preheader1412, %polly.loop_header694
  %polly.indvar698 = phi i64 [ %polly.indvar_next699, %polly.loop_header694 ], [ %polly.indvar698.ph, %polly.loop_header694.preheader1412 ]
  %310 = add nuw nsw i64 %polly.indvar698, %258
  %polly.access.add.Packed_MemRef_call1514702 = add nuw nsw i64 %polly.indvar698, %polly.access.mul.Packed_MemRef_call1514701
  %polly.access.Packed_MemRef_call1514703 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702
  %_p_scalar_704 = load double, double* %polly.access.Packed_MemRef_call1514703, align 8
  %p_mul27.i = fmul fast double %_p_scalar_708, %_p_scalar_704
  %polly.access.Packed_MemRef_call2516711 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call1514702
  %_p_scalar_712 = load double, double* %polly.access.Packed_MemRef_call2516711, align 8
  %p_mul37.i = fmul fast double %_p_scalar_716, %_p_scalar_712
  %311 = shl i64 %310, 3
  %312 = add i64 %311, %292
  %scevgep717 = getelementptr i8, i8* %call, i64 %312
  %scevgep717718 = bitcast i8* %scevgep717 to double*
  %_p_scalar_719 = load double, double* %scevgep717718, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_719
  store double %p_add42.i, double* %scevgep717718, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next699 = add nuw nsw i64 %polly.indvar698, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar698, %smin1133
  br i1 %exitcond1134.not, label %polly.loop_exit696, label %polly.loop_header694, !llvm.loop !111

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1165 = call i64 @llvm.smin.i64(i64 %indvars.iv1163, i64 -1168)
  %313 = shl nsw i64 %polly.indvar849, 5
  %314 = add nsw i64 %smin1165, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1164 = add nsw i64 %indvars.iv1163, -32
  %exitcond1168.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1168.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %315 = mul nsw i64 %polly.indvar855, -32
  %smin1209 = call i64 @llvm.smin.i64(i64 %315, i64 -1168)
  %316 = add nsw i64 %smin1209, 1200
  %smin1161 = call i64 @llvm.smin.i64(i64 %indvars.iv1159, i64 -1168)
  %317 = shl nsw i64 %polly.indvar855, 5
  %318 = add nsw i64 %smin1161, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1160 = add nsw i64 %indvars.iv1159, -32
  %exitcond1167.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1167.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %319 = add nuw nsw i64 %polly.indvar861, %313
  %320 = trunc i64 %319 to i32
  %321 = mul nuw nsw i64 %319, 9600
  %min.iters.check = icmp eq i64 %316, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1210

vector.ph1210:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1217 = insertelement <4 x i64> poison, i64 %317, i32 0
  %broadcast.splat1218 = shufflevector <4 x i64> %broadcast.splatinsert1217, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1210
  %index1211 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1212, %vector.body1208 ]
  %vec.ind1215 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1210 ], [ %vec.ind.next1216, %vector.body1208 ]
  %322 = add nuw nsw <4 x i64> %vec.ind1215, %broadcast.splat1218
  %323 = trunc <4 x i64> %322 to <4 x i32>
  %324 = mul <4 x i32> %broadcast.splat1220, %323
  %325 = add <4 x i32> %324, <i32 3, i32 3, i32 3, i32 3>
  %326 = urem <4 x i32> %325, <i32 1200, i32 1200, i32 1200, i32 1200>
  %327 = sitofp <4 x i32> %326 to <4 x double>
  %328 = fmul fast <4 x double> %327, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %329 = extractelement <4 x i64> %322, i32 0
  %330 = shl i64 %329, 3
  %331 = add nuw nsw i64 %330, %321
  %332 = getelementptr i8, i8* %call, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %328, <4 x double>* %333, align 8, !alias.scope !112, !noalias !114
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1216 = add <4 x i64> %vec.ind1215, <i64 4, i64 4, i64 4, i64 4>
  %334 = icmp eq i64 %index.next1212, %316
  br i1 %334, label %polly.loop_exit866, label %vector.body1208, !llvm.loop !117

polly.loop_exit866:                               ; preds = %vector.body1208, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar861, %314
  br i1 %exitcond1166.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %335 = add nuw nsw i64 %polly.indvar867, %317
  %336 = trunc i64 %335 to i32
  %337 = mul i32 %336, %320
  %338 = add i32 %337, 3
  %339 = urem i32 %338, 1200
  %p_conv31.i = sitofp i32 %339 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %340 = shl i64 %335, 3
  %341 = add nuw nsw i64 %340, %321
  %scevgep870 = getelementptr i8, i8* %call, i64 %341
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar867, %318
  br i1 %exitcond1162.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !118

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1155 = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 -1168)
  %342 = shl nsw i64 %polly.indvar876, 5
  %343 = add nsw i64 %smin1155, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -32
  %exitcond1158.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1158.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %344 = mul nsw i64 %polly.indvar882, -32
  %smin1224 = call i64 @llvm.smin.i64(i64 %344, i64 -968)
  %345 = add nsw i64 %smin1224, 1000
  %smin1151 = call i64 @llvm.smin.i64(i64 %indvars.iv1149, i64 -968)
  %346 = shl nsw i64 %polly.indvar882, 5
  %347 = add nsw i64 %smin1151, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, -32
  %exitcond1157.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1157.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %348 = add nuw nsw i64 %polly.indvar888, %342
  %349 = trunc i64 %348 to i32
  %350 = mul nuw nsw i64 %348, 8000
  %min.iters.check1225 = icmp eq i64 %345, 0
  br i1 %min.iters.check1225, label %polly.loop_header891, label %vector.ph1226

vector.ph1226:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1235 = insertelement <4 x i64> poison, i64 %346, i32 0
  %broadcast.splat1236 = shufflevector <4 x i64> %broadcast.splatinsert1235, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1237 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat1238 = shufflevector <4 x i32> %broadcast.splatinsert1237, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1226
  %index1229 = phi i64 [ 0, %vector.ph1226 ], [ %index.next1230, %vector.body1223 ]
  %vec.ind1233 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1226 ], [ %vec.ind.next1234, %vector.body1223 ]
  %351 = add nuw nsw <4 x i64> %vec.ind1233, %broadcast.splat1236
  %352 = trunc <4 x i64> %351 to <4 x i32>
  %353 = mul <4 x i32> %broadcast.splat1238, %352
  %354 = add <4 x i32> %353, <i32 2, i32 2, i32 2, i32 2>
  %355 = urem <4 x i32> %354, <i32 1000, i32 1000, i32 1000, i32 1000>
  %356 = sitofp <4 x i32> %355 to <4 x double>
  %357 = fmul fast <4 x double> %356, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %358 = extractelement <4 x i64> %351, i32 0
  %359 = shl i64 %358, 3
  %360 = add nuw nsw i64 %359, %350
  %361 = getelementptr i8, i8* %call2, i64 %360
  %362 = bitcast i8* %361 to <4 x double>*
  store <4 x double> %357, <4 x double>* %362, align 8, !alias.scope !116, !noalias !119
  %index.next1230 = add i64 %index1229, 4
  %vec.ind.next1234 = add <4 x i64> %vec.ind1233, <i64 4, i64 4, i64 4, i64 4>
  %363 = icmp eq i64 %index.next1230, %345
  br i1 %363, label %polly.loop_exit893, label %vector.body1223, !llvm.loop !120

polly.loop_exit893:                               ; preds = %vector.body1223, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar888, %343
  br i1 %exitcond1156.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %364 = add nuw nsw i64 %polly.indvar894, %346
  %365 = trunc i64 %364 to i32
  %366 = mul i32 %365, %349
  %367 = add i32 %366, 2
  %368 = urem i32 %367, 1000
  %p_conv10.i = sitofp i32 %368 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %369 = shl i64 %364, 3
  %370 = add nuw nsw i64 %369, %350
  %scevgep897 = getelementptr i8, i8* %call2, i64 %370
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar894, %347
  br i1 %exitcond1152.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !121

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1145 = call i64 @llvm.smin.i64(i64 %indvars.iv1143, i64 -1168)
  %371 = shl nsw i64 %polly.indvar902, 5
  %372 = add nsw i64 %smin1145, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1144 = add nsw i64 %indvars.iv1143, -32
  %exitcond1148.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1148.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1139 = phi i64 [ %indvars.iv.next1140, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %373 = mul nsw i64 %polly.indvar908, -32
  %smin1242 = call i64 @llvm.smin.i64(i64 %373, i64 -968)
  %374 = add nsw i64 %smin1242, 1000
  %smin1141 = call i64 @llvm.smin.i64(i64 %indvars.iv1139, i64 -968)
  %375 = shl nsw i64 %polly.indvar908, 5
  %376 = add nsw i64 %smin1141, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1140 = add nsw i64 %indvars.iv1139, -32
  %exitcond1147.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1147.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %377 = add nuw nsw i64 %polly.indvar914, %371
  %378 = trunc i64 %377 to i32
  %379 = mul nuw nsw i64 %377, 8000
  %min.iters.check1243 = icmp eq i64 %374, 0
  br i1 %min.iters.check1243, label %polly.loop_header917, label %vector.ph1244

vector.ph1244:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1253 = insertelement <4 x i64> poison, i64 %375, i32 0
  %broadcast.splat1254 = shufflevector <4 x i64> %broadcast.splatinsert1253, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1255 = insertelement <4 x i32> poison, i32 %378, i32 0
  %broadcast.splat1256 = shufflevector <4 x i32> %broadcast.splatinsert1255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %vector.ph1244
  %index1247 = phi i64 [ 0, %vector.ph1244 ], [ %index.next1248, %vector.body1241 ]
  %vec.ind1251 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1244 ], [ %vec.ind.next1252, %vector.body1241 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1251, %broadcast.splat1254
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1256, %381
  %383 = add <4 x i32> %382, <i32 1, i32 1, i32 1, i32 1>
  %384 = urem <4 x i32> %383, <i32 1200, i32 1200, i32 1200, i32 1200>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %379
  %390 = getelementptr i8, i8* %call1, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !115, !noalias !122
  %index.next1248 = add i64 %index1247, 4
  %vec.ind.next1252 = add <4 x i64> %vec.ind1251, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1248, %374
  br i1 %392, label %polly.loop_exit919, label %vector.body1241, !llvm.loop !123

polly.loop_exit919:                               ; preds = %vector.body1241, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar914, %372
  br i1 %exitcond1146.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %393 = add nuw nsw i64 %polly.indvar920, %375
  %394 = trunc i64 %393 to i32
  %395 = mul i32 %394, %378
  %396 = add i32 %395, 1
  %397 = urem i32 %396, 1200
  %p_conv.i = sitofp i32 %397 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %398 = shl i64 %393, 3
  %399 = add nuw nsw i64 %398, %379
  %scevgep924 = getelementptr i8, i8* %call1, i64 %399
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar920, %376
  br i1 %exitcond1142.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !124
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
