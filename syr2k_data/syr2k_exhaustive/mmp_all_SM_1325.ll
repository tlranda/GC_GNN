; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1325.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1325.c"
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
  %call870 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1722 = bitcast i8* %call1 to double*
  %polly.access.call1731 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2732 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1731, %call2
  %polly.access.call2751 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2751, %call1
  %2 = or i1 %0, %1
  %polly.access.call771 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call771, %call2
  %4 = icmp ule i8* %polly.access.call2751, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call771, %call1
  %8 = icmp ule i8* %polly.access.call1731, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header844, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1194 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1193 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1192 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1191 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1191, %scevgep1194
  %bound1 = icmp ult i8* %scevgep1193, %scevgep1192
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
  br i1 %exitcond18.not.i, label %vector.ph1198, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1198:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1205 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1206 = shufflevector <4 x i64> %broadcast.splatinsert1205, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1198
  %index1199 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1198 ], [ %vec.ind.next1204, %vector.body1197 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1203, %broadcast.splat1206
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv7.i, i64 %index1199
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1200, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1197, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1197
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1198, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit905
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1261 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1261, label %for.body3.i46.preheader1416, label %vector.ph1262

vector.ph1262:                                    ; preds = %for.body3.i46.preheader
  %n.vec1264 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1262
  %index1265 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1266, %vector.body1260 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %index1265
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1266 = add i64 %index1265, 4
  %46 = icmp eq i64 %index.next1266, %n.vec1264
  br i1 %46, label %middle.block1258, label %vector.body1260, !llvm.loop !18

middle.block1258:                                 ; preds = %vector.body1260
  %cmp.n1268 = icmp eq i64 %indvars.iv21.i, %n.vec1264
  br i1 %cmp.n1268, label %for.inc6.i, label %for.body3.i46.preheader1416

for.body3.i46.preheader1416:                      ; preds = %for.body3.i46.preheader, %middle.block1258
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1264, %middle.block1258 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1416, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1416 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1258, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1308 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1308, label %for.body3.i60.preheader1412, label %vector.ph1309

vector.ph1309:                                    ; preds = %for.body3.i60.preheader
  %n.vec1311 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1309
  %index1312 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1313, %vector.body1307 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1312
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1316 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1316, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1313 = add i64 %index1312, 4
  %57 = icmp eq i64 %index.next1313, %n.vec1311
  br i1 %57, label %middle.block1305, label %vector.body1307, !llvm.loop !64

middle.block1305:                                 ; preds = %vector.body1307
  %cmp.n1315 = icmp eq i64 %indvars.iv21.i52, %n.vec1311
  br i1 %cmp.n1315, label %for.inc6.i63, label %for.body3.i60.preheader1412

for.body3.i60.preheader1412:                      ; preds = %for.body3.i60.preheader, %middle.block1305
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1311, %middle.block1305 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1412, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1412 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1305, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1358 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1358, label %for.body3.i99.preheader1408, label %vector.ph1359

vector.ph1359:                                    ; preds = %for.body3.i99.preheader
  %n.vec1361 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1359
  %index1362 = phi i64 [ 0, %vector.ph1359 ], [ %index.next1363, %vector.body1357 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1362
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1366, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1363 = add i64 %index1362, 4
  %68 = icmp eq i64 %index.next1363, %n.vec1361
  br i1 %68, label %middle.block1355, label %vector.body1357, !llvm.loop !66

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1365 = icmp eq i64 %indvars.iv21.i91, %n.vec1361
  br i1 %cmp.n1365, label %for.inc6.i102, label %for.body3.i99.preheader1408

for.body3.i99.preheader1408:                      ; preds = %for.body3.i99.preheader, %middle.block1355
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1361, %middle.block1355 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1408, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1408 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1355, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1370 = phi i64 [ %indvar.next1371, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1370, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1372 = icmp ult i64 %88, 4
  br i1 %min.iters.check1372, label %polly.loop_header192.preheader, label %vector.ph1373

vector.ph1373:                                    ; preds = %polly.loop_header
  %n.vec1375 = and i64 %88, -4
  br label %vector.body1369

vector.body1369:                                  ; preds = %vector.body1369, %vector.ph1373
  %index1376 = phi i64 [ 0, %vector.ph1373 ], [ %index.next1377, %vector.body1369 ]
  %90 = shl nuw nsw i64 %index1376, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1380 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1380, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1377 = add i64 %index1376, 4
  %95 = icmp eq i64 %index.next1377, %n.vec1375
  br i1 %95, label %middle.block1367, label %vector.body1369, !llvm.loop !79

middle.block1367:                                 ; preds = %vector.body1369
  %cmp.n1379 = icmp eq i64 %88, %n.vec1375
  br i1 %cmp.n1379, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1367
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1375, %middle.block1367 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1367
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1371 = add i64 %indvar1370, 1
  br i1 %exitcond1085.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1084.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1084.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1074 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1075, %polly.loop_exit224 ]
  %indvars.iv1070 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1071, %polly.loop_exit224 ]
  %indvars.iv1068 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1069, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = mul nuw nsw i64 %polly.indvar203, 50
  %98 = and i64 %97, 9223372036854775680
  %99 = and i64 %97, 126
  %100 = mul nsw i64 %polly.indvar203, -50
  %101 = add i64 %100, %98
  %102 = shl nuw nsw i64 %indvars.iv1070, 1
  %103 = and i64 %102, 9223372036854775680
  %104 = sub nsw i64 %indvars.iv1068, %103
  %105 = add i64 %indvars.iv1074, %103
  %106 = mul nsw i64 %polly.indvar203, -50
  %107 = mul nuw nsw i64 %polly.indvar203, 50
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %108 = add nsw i64 %106, 1199
  %109 = mul nuw nsw i64 %polly.indvar203, 25
  %pexp.p_div_q = lshr i64 %109, 6
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit261
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 50
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 25
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -50
  %exitcond1083.not = icmp eq i64 %polly.indvar_next204, 24
  br i1 %exitcond1083.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1064.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %110 = add nuw nsw i64 %polly.indvar215, %107
  %polly.access.mul.call2219 = mul nuw nsw i64 %110, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit261, %polly.loop_exit208
  %indvar1384 = phi i64 [ %indvar.next1385, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit261 ], [ %105, %polly.loop_exit208 ]
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit261 ], [ %104, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit261 ], [ %pexp.p_div_q, %polly.loop_exit208 ]
  %111 = mul nsw i64 %indvar1384, -128
  %112 = or i64 %99, %111
  %smax1386 = call i64 @llvm.smax.i64(i64 %112, i64 0)
  %113 = shl nuw nsw i64 %indvar1384, 7
  %114 = add i64 %101, %113
  %115 = add i64 %smax1386, %114
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1072, i64 0)
  %116 = add i64 %smax, %indvars.iv1076
  %117 = shl nsw i64 %polly.indvar225, 7
  %118 = add nsw i64 %117, %106
  %119 = add nsw i64 %118, -1
  %.inv = icmp sgt i64 %118, 49
  %120 = select i1 %.inv, i64 49, i64 %119
  %polly.loop_guard = icmp sgt i64 %120, -1
  %121 = icmp sgt i64 %118, 0
  %122 = select i1 %121, i64 %118, i64 0
  %123 = add nsw i64 %118, 127
  %124 = icmp slt i64 %108, %123
  %125 = select i1 %124, i64 %108, i64 %123
  %polly.loop_guard248.not = icmp sgt i64 %122, %125
  br i1 %polly.loop_guard, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit247.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit247.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %126 = add nuw nsw i64 %polly.indvar237.us, %107
  %polly.access.mul.call1241.us = mul nuw nsw i64 %126, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw i64 %polly.indvar237.us, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar237.us, %120
  br i1 %exitcond1066.not, label %polly.loop_exit236.loopexit.us, label %polly.loop_header234.us

polly.loop_header245.us:                          ; preds = %polly.loop_exit236.loopexit.us, %polly.loop_header245.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header245.us ], [ %122, %polly.loop_exit236.loopexit.us ]
  %127 = add nuw nsw i64 %polly.indvar249.us, %107
  %polly.access.mul.call1253.us = mul nsw i64 %127, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %polly.loop_cond251.not.not.us = icmp slt i64 %polly.indvar249.us, %125
  br i1 %polly.loop_cond251.not.not.us, label %polly.loop_header245.us, label %polly.loop_exit247.us

polly.loop_exit247.us:                            ; preds = %polly.loop_header245.us, %polly.loop_exit236.loopexit.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1067.not, label %polly.loop_header259.preheader, label %polly.loop_header228.us

polly.loop_exit236.loopexit.us:                   ; preds = %polly.loop_header234.us
  br i1 %polly.loop_guard248.not, label %polly.loop_exit247.us, label %polly.loop_header245.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  br i1 %polly.loop_guard248.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_exit261:                               ; preds = %polly.loop_exit268, %polly.loop_header259.preheader
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1073 = add i64 %indvars.iv1072, -128
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 128
  %exitcond1082.not = icmp eq i64 %polly.indvar_next226, 10
  %indvar.next1385 = add i64 %indvar1384, 1
  br i1 %exitcond1082.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.loop_exit247
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit247 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1065.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_header259.preheader:                   ; preds = %polly.loop_exit247, %polly.loop_exit247.us, %polly.loop_header222.split
  %128 = sub nsw i64 %107, %117
  %129 = icmp sgt i64 %128, 0
  %130 = select i1 %129, i64 %128, i64 0
  %131 = mul nsw i64 %polly.indvar225, -128
  %132 = icmp slt i64 %131, -1072
  %133 = select i1 %132, i64 %131, i64 -1072
  %134 = add nsw i64 %133, 1199
  %polly.loop_guard269.not = icmp sgt i64 %130, %134
  br i1 %polly.loop_guard269.not, label %polly.loop_exit261, label %polly.loop_header259

polly.loop_header245:                             ; preds = %polly.loop_header228, %polly.loop_header245
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_header245 ], [ %122, %polly.loop_header228 ]
  %135 = add nuw nsw i64 %polly.indvar249, %107
  %polly.access.mul.call1253 = mul nsw i64 %135, 1000
  %polly.access.add.call1254 = add nuw nsw i64 %polly.access.mul.call1253, %polly.indvar231
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %polly.indvar249, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %polly.loop_cond251.not.not = icmp slt i64 %polly.indvar249, %125
  br i1 %polly.loop_cond251.not.not, label %polly.loop_header245, label %polly.loop_exit247

polly.loop_header259:                             ; preds = %polly.loop_header259.preheader, %polly.loop_exit268
  %polly.indvar262 = phi i64 [ %polly.indvar_next263, %polly.loop_exit268 ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar262, 1200
  br label %polly.loop_header266

polly.loop_exit268:                               ; preds = %polly.loop_exit276
  %polly.indvar_next263 = add nuw nsw i64 %polly.indvar262, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next263, 1000
  br i1 %exitcond1081.not, label %polly.loop_exit261, label %polly.loop_header259

polly.loop_header266:                             ; preds = %polly.loop_header259, %polly.loop_exit276
  %indvar1387 = phi i64 [ 0, %polly.loop_header259 ], [ %indvar.next1388, %polly.loop_exit276 ]
  %indvars.iv1078 = phi i64 [ %116, %polly.loop_header259 ], [ %indvars.iv.next1079, %polly.loop_exit276 ]
  %polly.indvar270 = phi i64 [ %130, %polly.loop_header259 ], [ %polly.indvar_next271, %polly.loop_exit276 ]
  %136 = add i64 %115, %indvar1387
  %smin1389 = call i64 @llvm.smin.i64(i64 %136, i64 49)
  %137 = add nsw i64 %smin1389, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 49)
  %138 = add nsw i64 %polly.indvar270, %118
  %polly.loop_guard2771177 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard2771177, label %polly.loop_header274.preheader, label %polly.loop_exit276

polly.loop_header274.preheader:                   ; preds = %polly.loop_header266
  %139 = add nuw nsw i64 %polly.indvar270, %117
  %polly.access.add.Packed_MemRef_call2286 = add nsw i64 %138, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call2287, align 8
  %polly.access.Packed_MemRef_call1295 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call1295, align 8
  %140 = mul i64 %139, 9600
  %min.iters.check1390 = icmp ult i64 %137, 4
  br i1 %min.iters.check1390, label %polly.loop_header274.preheader1405, label %vector.ph1391

vector.ph1391:                                    ; preds = %polly.loop_header274.preheader
  %n.vec1393 = and i64 %137, -4
  %broadcast.splatinsert1399 = insertelement <4 x double> poison, double %_p_scalar_288, i32 0
  %broadcast.splat1400 = shufflevector <4 x double> %broadcast.splatinsert1399, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1402 = insertelement <4 x double> poison, double %_p_scalar_296, i32 0
  %broadcast.splat1403 = shufflevector <4 x double> %broadcast.splatinsert1402, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1383

vector.body1383:                                  ; preds = %vector.body1383, %vector.ph1391
  %index1394 = phi i64 [ 0, %vector.ph1391 ], [ %index.next1395, %vector.body1383 ]
  %141 = add nuw nsw i64 %index1394, %107
  %142 = add nuw nsw i64 %index1394, %polly.access.mul.Packed_MemRef_call1281
  %143 = getelementptr double, double* %Packed_MemRef_call1, i64 %142
  %144 = bitcast double* %143 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %144, align 8
  %145 = fmul fast <4 x double> %broadcast.splat1400, %wide.load1398
  %146 = getelementptr double, double* %Packed_MemRef_call2, i64 %142
  %147 = bitcast double* %146 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %147, align 8
  %148 = fmul fast <4 x double> %broadcast.splat1403, %wide.load1401
  %149 = shl i64 %141, 3
  %150 = add i64 %149, %140
  %151 = getelementptr i8, i8* %call, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1404 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !72, !noalias !74
  %153 = fadd fast <4 x double> %148, %145
  %154 = fmul fast <4 x double> %153, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %155 = fadd fast <4 x double> %154, %wide.load1404
  %156 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !72, !noalias !74
  %index.next1395 = add i64 %index1394, 4
  %157 = icmp eq i64 %index.next1395, %n.vec1393
  br i1 %157, label %middle.block1381, label %vector.body1383, !llvm.loop !84

middle.block1381:                                 ; preds = %vector.body1383
  %cmp.n1397 = icmp eq i64 %137, %n.vec1393
  br i1 %cmp.n1397, label %polly.loop_exit276, label %polly.loop_header274.preheader1405

polly.loop_header274.preheader1405:               ; preds = %polly.loop_header274.preheader, %middle.block1381
  %polly.indvar278.ph = phi i64 [ 0, %polly.loop_header274.preheader ], [ %n.vec1393, %middle.block1381 ]
  br label %polly.loop_header274

polly.loop_exit276:                               ; preds = %polly.loop_header274, %middle.block1381, %polly.loop_header266
  %polly.indvar_next271 = add nuw nsw i64 %polly.indvar270, 1
  %polly.loop_cond272.not.not = icmp slt i64 %polly.indvar270, %134
  %indvars.iv.next1079 = add i64 %indvars.iv1078, 1
  %indvar.next1388 = add i64 %indvar1387, 1
  br i1 %polly.loop_cond272.not.not, label %polly.loop_header266, label %polly.loop_exit268

polly.loop_header274:                             ; preds = %polly.loop_header274.preheader1405, %polly.loop_header274
  %polly.indvar278 = phi i64 [ %polly.indvar_next279, %polly.loop_header274 ], [ %polly.indvar278.ph, %polly.loop_header274.preheader1405 ]
  %158 = add nuw nsw i64 %polly.indvar278, %107
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar278, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_288, %_p_scalar_284
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %159 = shl i64 %158, 3
  %160 = add i64 %159, %140
  %scevgep297 = getelementptr i8, i8* %call, i64 %160
  %scevgep297298 = bitcast i8* %scevgep297 to double*
  %_p_scalar_299 = load double, double* %scevgep297298, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_299
  store double %p_add42.i118, double* %scevgep297298, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar278, %smin
  br i1 %exitcond1080.not, label %polly.loop_exit276, label %polly.loop_header274, !llvm.loop !85

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall306 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit431
  tail call void @free(i8* %malloccall304)
  tail call void @free(i8* %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1320 = phi i64 [ %indvar.next1321, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %161 = add i64 %indvar1320, 1
  %162 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %162
  %min.iters.check1322 = icmp ult i64 %161, 4
  br i1 %min.iters.check1322, label %polly.loop_header396.preheader, label %vector.ph1323

vector.ph1323:                                    ; preds = %polly.loop_header390
  %n.vec1325 = and i64 %161, -4
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %vector.ph1323
  %index1326 = phi i64 [ 0, %vector.ph1323 ], [ %index.next1327, %vector.body1319 ]
  %163 = shl nuw nsw i64 %index1326, 3
  %164 = getelementptr i8, i8* %scevgep402, i64 %163
  %165 = bitcast i8* %164 to <4 x double>*
  %wide.load1330 = load <4 x double>, <4 x double>* %165, align 8, !alias.scope !86, !noalias !88
  %166 = fmul fast <4 x double> %wide.load1330, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %167 = bitcast i8* %164 to <4 x double>*
  store <4 x double> %166, <4 x double>* %167, align 8, !alias.scope !86, !noalias !88
  %index.next1327 = add i64 %index1326, 4
  %168 = icmp eq i64 %index.next1327, %n.vec1325
  br i1 %168, label %middle.block1317, label %vector.body1319, !llvm.loop !93

middle.block1317:                                 ; preds = %vector.body1319
  %cmp.n1329 = icmp eq i64 %161, %n.vec1325
  br i1 %cmp.n1329, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1317
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1325, %middle.block1317 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1317
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1321 = add i64 %indvar1320, 1
  br i1 %exitcond1112.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %169 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %169
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1111.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !94

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit431
  %indvars.iv1100 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next1101, %polly.loop_exit431 ]
  %indvars.iv1095 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next1096, %polly.loop_exit431 ]
  %indvars.iv1093 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next1094, %polly.loop_exit431 ]
  %indvars.iv1086 = phi i64 [ 1200, %polly.loop_header406.preheader ], [ %indvars.iv.next1087, %polly.loop_exit431 ]
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %polly.indvar_next410, %polly.loop_exit431 ]
  %170 = mul nuw nsw i64 %polly.indvar409, 50
  %171 = and i64 %170, 9223372036854775680
  %172 = and i64 %170, 126
  %173 = mul nsw i64 %polly.indvar409, -50
  %174 = add i64 %173, %171
  %175 = shl nuw nsw i64 %indvars.iv1095, 1
  %176 = and i64 %175, 9223372036854775680
  %177 = sub nsw i64 %indvars.iv1093, %176
  %178 = add i64 %indvars.iv1100, %176
  %179 = mul nsw i64 %polly.indvar409, -50
  %180 = mul nuw nsw i64 %polly.indvar409, 50
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_exit420
  %181 = add nsw i64 %179, 1199
  %182 = mul nuw nsw i64 %polly.indvar409, 25
  %pexp.p_div_q428 = lshr i64 %182, 6
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_exit470
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -50
  %indvars.iv.next1094 = add nuw nsw i64 %indvars.iv1093, 50
  %indvars.iv.next1096 = add nuw nsw i64 %indvars.iv1095, 25
  %indvars.iv.next1101 = add nsw i64 %indvars.iv1100, -50
  %exitcond1110.not = icmp eq i64 %polly.indvar_next410, 24
  br i1 %exitcond1110.not, label %polly.exiting303, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_exit420, %polly.loop_header406
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next416, %polly.loop_exit420 ]
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar415, 1200
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_header418
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next416, 1000
  br i1 %exitcond1089.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_header418, %polly.loop_header412
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header412 ], [ %polly.indvar_next422, %polly.loop_header418 ]
  %183 = add nuw nsw i64 %polly.indvar421, %180
  %polly.access.mul.call2425 = mul nuw nsw i64 %183, 1000
  %polly.access.add.call2426 = add nuw nsw i64 %polly.access.mul.call2425, %polly.indvar415
  %polly.access.call2427 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2426
  %polly.access.call2427.load = load double, double* %polly.access.call2427, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar421, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2427.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next422, %indvars.iv1086
  br i1 %exitcond1088.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header429:                             ; preds = %polly.loop_exit470, %polly.loop_exit414
  %indvar1334 = phi i64 [ %indvar.next1335, %polly.loop_exit470 ], [ 0, %polly.loop_exit414 ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit470 ], [ %178, %polly.loop_exit414 ]
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %polly.loop_exit470 ], [ %177, %polly.loop_exit414 ]
  %polly.indvar432 = phi i64 [ %polly.indvar_next433, %polly.loop_exit470 ], [ %pexp.p_div_q428, %polly.loop_exit414 ]
  %184 = mul nsw i64 %indvar1334, -128
  %185 = or i64 %172, %184
  %smax1336 = call i64 @llvm.smax.i64(i64 %185, i64 0)
  %186 = shl nuw nsw i64 %indvar1334, 7
  %187 = add i64 %174, %186
  %188 = add i64 %smax1336, %187
  %smax1099 = call i64 @llvm.smax.i64(i64 %indvars.iv1097, i64 0)
  %189 = add i64 %smax1099, %indvars.iv1102
  %190 = shl nsw i64 %polly.indvar432, 7
  %191 = add nsw i64 %190, %179
  %192 = add nsw i64 %191, -1
  %.inv924 = icmp sgt i64 %191, 49
  %193 = select i1 %.inv924, i64 49, i64 %192
  %polly.loop_guard445 = icmp sgt i64 %193, -1
  %194 = icmp sgt i64 %191, 0
  %195 = select i1 %194, i64 %191, i64 0
  %196 = add nsw i64 %191, 127
  %197 = icmp slt i64 %181, %196
  %198 = select i1 %197, i64 %181, i64 %196
  %polly.loop_guard457.not = icmp sgt i64 %195, %198
  br i1 %polly.loop_guard445, label %polly.loop_header435.us, label %polly.loop_header429.split

polly.loop_header435.us:                          ; preds = %polly.loop_header429, %polly.loop_exit456.us
  %polly.indvar438.us = phi i64 [ %polly.indvar_next439.us, %polly.loop_exit456.us ], [ 0, %polly.loop_header429 ]
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar438.us, 1200
  br label %polly.loop_header442.us

polly.loop_header442.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header442.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_header442.us ], [ 0, %polly.loop_header435.us ]
  %199 = add nuw nsw i64 %polly.indvar446.us, %180
  %polly.access.mul.call1450.us = mul nuw nsw i64 %199, 1000
  %polly.access.add.call1451.us = add nuw nsw i64 %polly.access.mul.call1450.us, %polly.indvar438.us
  %polly.access.call1452.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1451.us
  %polly.access.call1452.load.us = load double, double* %polly.access.call1452.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar446.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1452.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next447.us = add nuw i64 %polly.indvar446.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar446.us, %193
  br i1 %exitcond1091.not, label %polly.loop_exit444.loopexit.us, label %polly.loop_header442.us

polly.loop_header454.us:                          ; preds = %polly.loop_exit444.loopexit.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ %195, %polly.loop_exit444.loopexit.us ]
  %200 = add nuw nsw i64 %polly.indvar458.us, %180
  %polly.access.mul.call1462.us = mul nsw i64 %200, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %polly.access.mul.call1462.us, %polly.indvar438.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305466.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305467.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305466.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1305467.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %polly.loop_cond460.not.not.us = icmp slt i64 %polly.indvar458.us, %198
  br i1 %polly.loop_cond460.not.not.us, label %polly.loop_header454.us, label %polly.loop_exit456.us

polly.loop_exit456.us:                            ; preds = %polly.loop_header454.us, %polly.loop_exit444.loopexit.us
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next439.us, 1000
  br i1 %exitcond1092.not, label %polly.loop_header468.preheader, label %polly.loop_header435.us

polly.loop_exit444.loopexit.us:                   ; preds = %polly.loop_header442.us
  br i1 %polly.loop_guard457.not, label %polly.loop_exit456.us, label %polly.loop_header454.us

polly.loop_header429.split:                       ; preds = %polly.loop_header429
  br i1 %polly.loop_guard457.not, label %polly.loop_header468.preheader, label %polly.loop_header435

polly.loop_exit470:                               ; preds = %polly.loop_exit477, %polly.loop_header468.preheader
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %indvars.iv.next1098 = add i64 %indvars.iv1097, -128
  %indvars.iv.next1103 = add i64 %indvars.iv1102, 128
  %exitcond1109.not = icmp eq i64 %polly.indvar_next433, 10
  %indvar.next1335 = add i64 %indvar1334, 1
  br i1 %exitcond1109.not, label %polly.loop_exit431, label %polly.loop_header429

polly.loop_header435:                             ; preds = %polly.loop_header429.split, %polly.loop_exit456
  %polly.indvar438 = phi i64 [ %polly.indvar_next439, %polly.loop_exit456 ], [ 0, %polly.loop_header429.split ]
  %polly.access.mul.Packed_MemRef_call1305465 = mul nuw nsw i64 %polly.indvar438, 1200
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_header454
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next439, 1000
  br i1 %exitcond1090.not, label %polly.loop_header468.preheader, label %polly.loop_header435

polly.loop_header468.preheader:                   ; preds = %polly.loop_exit456, %polly.loop_exit456.us, %polly.loop_header429.split
  %201 = sub nsw i64 %180, %190
  %202 = icmp sgt i64 %201, 0
  %203 = select i1 %202, i64 %201, i64 0
  %204 = mul nsw i64 %polly.indvar432, -128
  %205 = icmp slt i64 %204, -1072
  %206 = select i1 %205, i64 %204, i64 -1072
  %207 = add nsw i64 %206, 1199
  %polly.loop_guard478.not = icmp sgt i64 %203, %207
  br i1 %polly.loop_guard478.not, label %polly.loop_exit470, label %polly.loop_header468

polly.loop_header454:                             ; preds = %polly.loop_header435, %polly.loop_header454
  %polly.indvar458 = phi i64 [ %polly.indvar_next459, %polly.loop_header454 ], [ %195, %polly.loop_header435 ]
  %208 = add nuw nsw i64 %polly.indvar458, %180
  %polly.access.mul.call1462 = mul nsw i64 %208, 1000
  %polly.access.add.call1463 = add nuw nsw i64 %polly.access.mul.call1462, %polly.indvar438
  %polly.access.call1464 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1463
  %polly.access.call1464.load = load double, double* %polly.access.call1464, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305466 = add nuw nsw i64 %polly.indvar458, %polly.access.mul.Packed_MemRef_call1305465
  %polly.access.Packed_MemRef_call1305467 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305466
  store double %polly.access.call1464.load, double* %polly.access.Packed_MemRef_call1305467, align 8
  %polly.indvar_next459 = add nuw nsw i64 %polly.indvar458, 1
  %polly.loop_cond460.not.not = icmp slt i64 %polly.indvar458, %198
  br i1 %polly.loop_cond460.not.not, label %polly.loop_header454, label %polly.loop_exit456

polly.loop_header468:                             ; preds = %polly.loop_header468.preheader, %polly.loop_exit477
  %polly.indvar471 = phi i64 [ %polly.indvar_next472, %polly.loop_exit477 ], [ 0, %polly.loop_header468.preheader ]
  %polly.access.mul.Packed_MemRef_call1305490 = mul nuw nsw i64 %polly.indvar471, 1200
  br label %polly.loop_header475

polly.loop_exit477:                               ; preds = %polly.loop_exit485
  %polly.indvar_next472 = add nuw nsw i64 %polly.indvar471, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next472, 1000
  br i1 %exitcond1108.not, label %polly.loop_exit470, label %polly.loop_header468

polly.loop_header475:                             ; preds = %polly.loop_header468, %polly.loop_exit485
  %indvar1337 = phi i64 [ 0, %polly.loop_header468 ], [ %indvar.next1338, %polly.loop_exit485 ]
  %indvars.iv1104 = phi i64 [ %189, %polly.loop_header468 ], [ %indvars.iv.next1105, %polly.loop_exit485 ]
  %polly.indvar479 = phi i64 [ %203, %polly.loop_header468 ], [ %polly.indvar_next480, %polly.loop_exit485 ]
  %209 = add i64 %188, %indvar1337
  %smin1339 = call i64 @llvm.smin.i64(i64 %209, i64 49)
  %210 = add nsw i64 %smin1339, 1
  %smin1106 = call i64 @llvm.smin.i64(i64 %indvars.iv1104, i64 49)
  %211 = add nsw i64 %polly.indvar479, %191
  %polly.loop_guard4861178 = icmp sgt i64 %211, -1
  br i1 %polly.loop_guard4861178, label %polly.loop_header483.preheader, label %polly.loop_exit485

polly.loop_header483.preheader:                   ; preds = %polly.loop_header475
  %212 = add nuw nsw i64 %polly.indvar479, %190
  %polly.access.add.Packed_MemRef_call2307495 = add nsw i64 %211, %polly.access.mul.Packed_MemRef_call1305490
  %polly.access.Packed_MemRef_call2307496 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307495
  %_p_scalar_497 = load double, double* %polly.access.Packed_MemRef_call2307496, align 8
  %polly.access.Packed_MemRef_call1305504 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307495
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1305504, align 8
  %213 = mul i64 %212, 9600
  %min.iters.check1340 = icmp ult i64 %210, 4
  br i1 %min.iters.check1340, label %polly.loop_header483.preheader1409, label %vector.ph1341

vector.ph1341:                                    ; preds = %polly.loop_header483.preheader
  %n.vec1343 = and i64 %210, -4
  %broadcast.splatinsert1349 = insertelement <4 x double> poison, double %_p_scalar_497, i32 0
  %broadcast.splat1350 = shufflevector <4 x double> %broadcast.splatinsert1349, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1352 = insertelement <4 x double> poison, double %_p_scalar_505, i32 0
  %broadcast.splat1353 = shufflevector <4 x double> %broadcast.splatinsert1352, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1333

vector.body1333:                                  ; preds = %vector.body1333, %vector.ph1341
  %index1344 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1345, %vector.body1333 ]
  %214 = add nuw nsw i64 %index1344, %180
  %215 = add nuw nsw i64 %index1344, %polly.access.mul.Packed_MemRef_call1305490
  %216 = getelementptr double, double* %Packed_MemRef_call1305, i64 %215
  %217 = bitcast double* %216 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %217, align 8
  %218 = fmul fast <4 x double> %broadcast.splat1350, %wide.load1348
  %219 = getelementptr double, double* %Packed_MemRef_call2307, i64 %215
  %220 = bitcast double* %219 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %220, align 8
  %221 = fmul fast <4 x double> %broadcast.splat1353, %wide.load1351
  %222 = shl i64 %214, 3
  %223 = add i64 %222, %213
  %224 = getelementptr i8, i8* %call, i64 %223
  %225 = bitcast i8* %224 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %225, align 8, !alias.scope !86, !noalias !88
  %226 = fadd fast <4 x double> %221, %218
  %227 = fmul fast <4 x double> %226, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %228 = fadd fast <4 x double> %227, %wide.load1354
  %229 = bitcast i8* %224 to <4 x double>*
  store <4 x double> %228, <4 x double>* %229, align 8, !alias.scope !86, !noalias !88
  %index.next1345 = add i64 %index1344, 4
  %230 = icmp eq i64 %index.next1345, %n.vec1343
  br i1 %230, label %middle.block1331, label %vector.body1333, !llvm.loop !97

middle.block1331:                                 ; preds = %vector.body1333
  %cmp.n1347 = icmp eq i64 %210, %n.vec1343
  br i1 %cmp.n1347, label %polly.loop_exit485, label %polly.loop_header483.preheader1409

polly.loop_header483.preheader1409:               ; preds = %polly.loop_header483.preheader, %middle.block1331
  %polly.indvar487.ph = phi i64 [ 0, %polly.loop_header483.preheader ], [ %n.vec1343, %middle.block1331 ]
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483, %middle.block1331, %polly.loop_header475
  %polly.indvar_next480 = add nuw nsw i64 %polly.indvar479, 1
  %polly.loop_cond481.not.not = icmp slt i64 %polly.indvar479, %207
  %indvars.iv.next1105 = add i64 %indvars.iv1104, 1
  %indvar.next1338 = add i64 %indvar1337, 1
  br i1 %polly.loop_cond481.not.not, label %polly.loop_header475, label %polly.loop_exit477

polly.loop_header483:                             ; preds = %polly.loop_header483.preheader1409, %polly.loop_header483
  %polly.indvar487 = phi i64 [ %polly.indvar_next488, %polly.loop_header483 ], [ %polly.indvar487.ph, %polly.loop_header483.preheader1409 ]
  %231 = add nuw nsw i64 %polly.indvar487, %180
  %polly.access.add.Packed_MemRef_call1305491 = add nuw nsw i64 %polly.indvar487, %polly.access.mul.Packed_MemRef_call1305490
  %polly.access.Packed_MemRef_call1305492 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305491
  %_p_scalar_493 = load double, double* %polly.access.Packed_MemRef_call1305492, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_497, %_p_scalar_493
  %polly.access.Packed_MemRef_call2307500 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305491
  %_p_scalar_501 = load double, double* %polly.access.Packed_MemRef_call2307500, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_505, %_p_scalar_501
  %232 = shl i64 %231, 3
  %233 = add i64 %232, %213
  %scevgep506 = getelementptr i8, i8* %call, i64 %233
  %scevgep506507 = bitcast i8* %scevgep506 to double*
  %_p_scalar_508 = load double, double* %scevgep506507, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_508
  store double %p_add42.i79, double* %scevgep506507, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next488 = add nuw nsw i64 %polly.indvar487, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar487, %smin1106
  br i1 %exitcond1107.not, label %polly.loop_exit485, label %polly.loop_header483, !llvm.loop !98

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
  %234 = add i64 %indvar, 1
  %235 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %235
  %min.iters.check1272 = icmp ult i64 %234, 4
  br i1 %min.iters.check1272, label %polly.loop_header605.preheader, label %vector.ph1273

vector.ph1273:                                    ; preds = %polly.loop_header599
  %n.vec1275 = and i64 %234, -4
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1273
  %index1276 = phi i64 [ 0, %vector.ph1273 ], [ %index.next1277, %vector.body1271 ]
  %236 = shl nuw nsw i64 %index1276, 3
  %237 = getelementptr i8, i8* %scevgep611, i64 %236
  %238 = bitcast i8* %237 to <4 x double>*
  %wide.load1280 = load <4 x double>, <4 x double>* %238, align 8, !alias.scope !99, !noalias !101
  %239 = fmul fast <4 x double> %wide.load1280, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %240 = bitcast i8* %237 to <4 x double>*
  store <4 x double> %239, <4 x double>* %240, align 8, !alias.scope !99, !noalias !101
  %index.next1277 = add i64 %index1276, 4
  %241 = icmp eq i64 %index.next1277, %n.vec1275
  br i1 %241, label %middle.block1269, label %vector.body1271, !llvm.loop !106

middle.block1269:                                 ; preds = %vector.body1271
  %cmp.n1279 = icmp eq i64 %234, %n.vec1275
  br i1 %cmp.n1279, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1269
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1275, %middle.block1269 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1269
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1139.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %242 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %242
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1138.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !107

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit640
  %indvars.iv1127 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1128, %polly.loop_exit640 ]
  %indvars.iv1122 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1123, %polly.loop_exit640 ]
  %indvars.iv1120 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1121, %polly.loop_exit640 ]
  %indvars.iv1113 = phi i64 [ 1200, %polly.loop_header615.preheader ], [ %indvars.iv.next1114, %polly.loop_exit640 ]
  %polly.indvar618 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %polly.indvar_next619, %polly.loop_exit640 ]
  %243 = mul nuw nsw i64 %polly.indvar618, 50
  %244 = and i64 %243, 9223372036854775680
  %245 = and i64 %243, 126
  %246 = mul nsw i64 %polly.indvar618, -50
  %247 = add i64 %246, %244
  %248 = shl nuw nsw i64 %indvars.iv1122, 1
  %249 = and i64 %248, 9223372036854775680
  %250 = sub nsw i64 %indvars.iv1120, %249
  %251 = add i64 %indvars.iv1127, %249
  %252 = mul nsw i64 %polly.indvar618, -50
  %253 = mul nuw nsw i64 %polly.indvar618, 50
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_exit629
  %254 = add nsw i64 %252, 1199
  %255 = mul nuw nsw i64 %polly.indvar618, 25
  %pexp.p_div_q637 = lshr i64 %255, 6
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit679
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -50
  %indvars.iv.next1121 = add nuw nsw i64 %indvars.iv1120, 50
  %indvars.iv.next1123 = add nuw nsw i64 %indvars.iv1122, 25
  %indvars.iv.next1128 = add nsw i64 %indvars.iv1127, -50
  %exitcond1137.not = icmp eq i64 %polly.indvar_next619, 24
  br i1 %exitcond1137.not, label %polly.exiting512, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_exit629, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_exit629 ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar624, 1200
  br label %polly.loop_header627

polly.loop_exit629:                               ; preds = %polly.loop_header627
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next625, 1000
  br i1 %exitcond1116.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header627:                             ; preds = %polly.loop_header627, %polly.loop_header621
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header621 ], [ %polly.indvar_next631, %polly.loop_header627 ]
  %256 = add nuw nsw i64 %polly.indvar630, %253
  %polly.access.mul.call2634 = mul nuw nsw i64 %256, 1000
  %polly.access.add.call2635 = add nuw nsw i64 %polly.access.mul.call2634, %polly.indvar624
  %polly.access.call2636 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2635
  %polly.access.call2636.load = load double, double* %polly.access.call2636, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2636.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next631, %indvars.iv1113
  br i1 %exitcond1115.not, label %polly.loop_exit629, label %polly.loop_header627

polly.loop_header638:                             ; preds = %polly.loop_exit679, %polly.loop_exit623
  %indvar1284 = phi i64 [ %indvar.next1285, %polly.loop_exit679 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit679 ], [ %251, %polly.loop_exit623 ]
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit679 ], [ %250, %polly.loop_exit623 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit679 ], [ %pexp.p_div_q637, %polly.loop_exit623 ]
  %257 = mul nsw i64 %indvar1284, -128
  %258 = or i64 %245, %257
  %smax1286 = call i64 @llvm.smax.i64(i64 %258, i64 0)
  %259 = shl nuw nsw i64 %indvar1284, 7
  %260 = add i64 %247, %259
  %261 = add i64 %smax1286, %260
  %smax1126 = call i64 @llvm.smax.i64(i64 %indvars.iv1124, i64 0)
  %262 = add i64 %smax1126, %indvars.iv1129
  %263 = shl nsw i64 %polly.indvar641, 7
  %264 = add nsw i64 %263, %252
  %265 = add nsw i64 %264, -1
  %.inv925 = icmp sgt i64 %264, 49
  %266 = select i1 %.inv925, i64 49, i64 %265
  %polly.loop_guard654 = icmp sgt i64 %266, -1
  %267 = icmp sgt i64 %264, 0
  %268 = select i1 %267, i64 %264, i64 0
  %269 = add nsw i64 %264, 127
  %270 = icmp slt i64 %254, %269
  %271 = select i1 %270, i64 %254, i64 %269
  %polly.loop_guard666.not = icmp sgt i64 %268, %271
  br i1 %polly.loop_guard654, label %polly.loop_header644.us, label %polly.loop_header638.split

polly.loop_header644.us:                          ; preds = %polly.loop_header638, %polly.loop_exit665.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_exit665.us ], [ 0, %polly.loop_header638 ]
  %polly.access.mul.Packed_MemRef_call1514.us = mul nuw nsw i64 %polly.indvar647.us, 1200
  br label %polly.loop_header651.us

polly.loop_header651.us:                          ; preds = %polly.loop_header644.us, %polly.loop_header651.us
  %polly.indvar655.us = phi i64 [ %polly.indvar_next656.us, %polly.loop_header651.us ], [ 0, %polly.loop_header644.us ]
  %272 = add nuw nsw i64 %polly.indvar655.us, %253
  %polly.access.mul.call1659.us = mul nuw nsw i64 %272, 1000
  %polly.access.add.call1660.us = add nuw nsw i64 %polly.access.mul.call1659.us, %polly.indvar647.us
  %polly.access.call1661.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1660.us
  %polly.access.call1661.load.us = load double, double* %polly.access.call1661.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us = add nuw nsw i64 %polly.indvar655.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us
  store double %polly.access.call1661.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next656.us = add nuw i64 %polly.indvar655.us, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar655.us, %266
  br i1 %exitcond1118.not, label %polly.loop_exit653.loopexit.us, label %polly.loop_header651.us

polly.loop_header663.us:                          ; preds = %polly.loop_exit653.loopexit.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ %268, %polly.loop_exit653.loopexit.us ]
  %273 = add nuw nsw i64 %polly.indvar667.us, %253
  %polly.access.mul.call1671.us = mul nsw i64 %273, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %polly.access.mul.call1671.us, %polly.indvar647.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514675.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514676.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514675.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1514676.us, align 8
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %polly.loop_cond669.not.not.us = icmp slt i64 %polly.indvar667.us, %271
  br i1 %polly.loop_cond669.not.not.us, label %polly.loop_header663.us, label %polly.loop_exit665.us

polly.loop_exit665.us:                            ; preds = %polly.loop_header663.us, %polly.loop_exit653.loopexit.us
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next648.us, 1000
  br i1 %exitcond1119.not, label %polly.loop_header677.preheader, label %polly.loop_header644.us

polly.loop_exit653.loopexit.us:                   ; preds = %polly.loop_header651.us
  br i1 %polly.loop_guard666.not, label %polly.loop_exit665.us, label %polly.loop_header663.us

polly.loop_header638.split:                       ; preds = %polly.loop_header638
  br i1 %polly.loop_guard666.not, label %polly.loop_header677.preheader, label %polly.loop_header644

polly.loop_exit679:                               ; preds = %polly.loop_exit686, %polly.loop_header677.preheader
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %indvars.iv.next1125 = add i64 %indvars.iv1124, -128
  %indvars.iv.next1130 = add i64 %indvars.iv1129, 128
  %exitcond1136.not = icmp eq i64 %polly.indvar_next642, 10
  %indvar.next1285 = add i64 %indvar1284, 1
  br i1 %exitcond1136.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header644:                             ; preds = %polly.loop_header638.split, %polly.loop_exit665
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit665 ], [ 0, %polly.loop_header638.split ]
  %polly.access.mul.Packed_MemRef_call1514674 = mul nuw nsw i64 %polly.indvar647, 1200
  br label %polly.loop_header663

polly.loop_exit665:                               ; preds = %polly.loop_header663
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next648, 1000
  br i1 %exitcond1117.not, label %polly.loop_header677.preheader, label %polly.loop_header644

polly.loop_header677.preheader:                   ; preds = %polly.loop_exit665, %polly.loop_exit665.us, %polly.loop_header638.split
  %274 = sub nsw i64 %253, %263
  %275 = icmp sgt i64 %274, 0
  %276 = select i1 %275, i64 %274, i64 0
  %277 = mul nsw i64 %polly.indvar641, -128
  %278 = icmp slt i64 %277, -1072
  %279 = select i1 %278, i64 %277, i64 -1072
  %280 = add nsw i64 %279, 1199
  %polly.loop_guard687.not = icmp sgt i64 %276, %280
  br i1 %polly.loop_guard687.not, label %polly.loop_exit679, label %polly.loop_header677

polly.loop_header663:                             ; preds = %polly.loop_header644, %polly.loop_header663
  %polly.indvar667 = phi i64 [ %polly.indvar_next668, %polly.loop_header663 ], [ %268, %polly.loop_header644 ]
  %281 = add nuw nsw i64 %polly.indvar667, %253
  %polly.access.mul.call1671 = mul nsw i64 %281, 1000
  %polly.access.add.call1672 = add nuw nsw i64 %polly.access.mul.call1671, %polly.indvar647
  %polly.access.call1673 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672
  %polly.access.call1673.load = load double, double* %polly.access.call1673, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514675 = add nuw nsw i64 %polly.indvar667, %polly.access.mul.Packed_MemRef_call1514674
  %polly.access.Packed_MemRef_call1514676 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514675
  store double %polly.access.call1673.load, double* %polly.access.Packed_MemRef_call1514676, align 8
  %polly.indvar_next668 = add nuw nsw i64 %polly.indvar667, 1
  %polly.loop_cond669.not.not = icmp slt i64 %polly.indvar667, %271
  br i1 %polly.loop_cond669.not.not, label %polly.loop_header663, label %polly.loop_exit665

polly.loop_header677:                             ; preds = %polly.loop_header677.preheader, %polly.loop_exit686
  %polly.indvar680 = phi i64 [ %polly.indvar_next681, %polly.loop_exit686 ], [ 0, %polly.loop_header677.preheader ]
  %polly.access.mul.Packed_MemRef_call1514699 = mul nuw nsw i64 %polly.indvar680, 1200
  br label %polly.loop_header684

polly.loop_exit686:                               ; preds = %polly.loop_exit694
  %polly.indvar_next681 = add nuw nsw i64 %polly.indvar680, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next681, 1000
  br i1 %exitcond1135.not, label %polly.loop_exit679, label %polly.loop_header677

polly.loop_header684:                             ; preds = %polly.loop_header677, %polly.loop_exit694
  %indvar1287 = phi i64 [ 0, %polly.loop_header677 ], [ %indvar.next1288, %polly.loop_exit694 ]
  %indvars.iv1131 = phi i64 [ %262, %polly.loop_header677 ], [ %indvars.iv.next1132, %polly.loop_exit694 ]
  %polly.indvar688 = phi i64 [ %276, %polly.loop_header677 ], [ %polly.indvar_next689, %polly.loop_exit694 ]
  %282 = add i64 %261, %indvar1287
  %smin1289 = call i64 @llvm.smin.i64(i64 %282, i64 49)
  %283 = add nsw i64 %smin1289, 1
  %smin1133 = call i64 @llvm.smin.i64(i64 %indvars.iv1131, i64 49)
  %284 = add nsw i64 %polly.indvar688, %264
  %polly.loop_guard6951179 = icmp sgt i64 %284, -1
  br i1 %polly.loop_guard6951179, label %polly.loop_header692.preheader, label %polly.loop_exit694

polly.loop_header692.preheader:                   ; preds = %polly.loop_header684
  %285 = add nuw nsw i64 %polly.indvar688, %263
  %polly.access.add.Packed_MemRef_call2516704 = add nsw i64 %284, %polly.access.mul.Packed_MemRef_call1514699
  %polly.access.Packed_MemRef_call2516705 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516704
  %_p_scalar_706 = load double, double* %polly.access.Packed_MemRef_call2516705, align 8
  %polly.access.Packed_MemRef_call1514713 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call2516704
  %_p_scalar_714 = load double, double* %polly.access.Packed_MemRef_call1514713, align 8
  %286 = mul i64 %285, 9600
  %min.iters.check1290 = icmp ult i64 %283, 4
  br i1 %min.iters.check1290, label %polly.loop_header692.preheader1413, label %vector.ph1291

vector.ph1291:                                    ; preds = %polly.loop_header692.preheader
  %n.vec1293 = and i64 %283, -4
  %broadcast.splatinsert1299 = insertelement <4 x double> poison, double %_p_scalar_706, i32 0
  %broadcast.splat1300 = shufflevector <4 x double> %broadcast.splatinsert1299, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1302 = insertelement <4 x double> poison, double %_p_scalar_714, i32 0
  %broadcast.splat1303 = shufflevector <4 x double> %broadcast.splatinsert1302, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %vector.ph1291
  %index1294 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1295, %vector.body1283 ]
  %287 = add nuw nsw i64 %index1294, %253
  %288 = add nuw nsw i64 %index1294, %polly.access.mul.Packed_MemRef_call1514699
  %289 = getelementptr double, double* %Packed_MemRef_call1514, i64 %288
  %290 = bitcast double* %289 to <4 x double>*
  %wide.load1298 = load <4 x double>, <4 x double>* %290, align 8
  %291 = fmul fast <4 x double> %broadcast.splat1300, %wide.load1298
  %292 = getelementptr double, double* %Packed_MemRef_call2516, i64 %288
  %293 = bitcast double* %292 to <4 x double>*
  %wide.load1301 = load <4 x double>, <4 x double>* %293, align 8
  %294 = fmul fast <4 x double> %broadcast.splat1303, %wide.load1301
  %295 = shl i64 %287, 3
  %296 = add i64 %295, %286
  %297 = getelementptr i8, i8* %call, i64 %296
  %298 = bitcast i8* %297 to <4 x double>*
  %wide.load1304 = load <4 x double>, <4 x double>* %298, align 8, !alias.scope !99, !noalias !101
  %299 = fadd fast <4 x double> %294, %291
  %300 = fmul fast <4 x double> %299, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %301 = fadd fast <4 x double> %300, %wide.load1304
  %302 = bitcast i8* %297 to <4 x double>*
  store <4 x double> %301, <4 x double>* %302, align 8, !alias.scope !99, !noalias !101
  %index.next1295 = add i64 %index1294, 4
  %303 = icmp eq i64 %index.next1295, %n.vec1293
  br i1 %303, label %middle.block1281, label %vector.body1283, !llvm.loop !110

middle.block1281:                                 ; preds = %vector.body1283
  %cmp.n1297 = icmp eq i64 %283, %n.vec1293
  br i1 %cmp.n1297, label %polly.loop_exit694, label %polly.loop_header692.preheader1413

polly.loop_header692.preheader1413:               ; preds = %polly.loop_header692.preheader, %middle.block1281
  %polly.indvar696.ph = phi i64 [ 0, %polly.loop_header692.preheader ], [ %n.vec1293, %middle.block1281 ]
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_header692, %middle.block1281, %polly.loop_header684
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %polly.loop_cond690.not.not = icmp slt i64 %polly.indvar688, %280
  %indvars.iv.next1132 = add i64 %indvars.iv1131, 1
  %indvar.next1288 = add i64 %indvar1287, 1
  br i1 %polly.loop_cond690.not.not, label %polly.loop_header684, label %polly.loop_exit686

polly.loop_header692:                             ; preds = %polly.loop_header692.preheader1413, %polly.loop_header692
  %polly.indvar696 = phi i64 [ %polly.indvar_next697, %polly.loop_header692 ], [ %polly.indvar696.ph, %polly.loop_header692.preheader1413 ]
  %304 = add nuw nsw i64 %polly.indvar696, %253
  %polly.access.add.Packed_MemRef_call1514700 = add nuw nsw i64 %polly.indvar696, %polly.access.mul.Packed_MemRef_call1514699
  %polly.access.Packed_MemRef_call1514701 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514700
  %_p_scalar_702 = load double, double* %polly.access.Packed_MemRef_call1514701, align 8
  %p_mul27.i = fmul fast double %_p_scalar_706, %_p_scalar_702
  %polly.access.Packed_MemRef_call2516709 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call1514700
  %_p_scalar_710 = load double, double* %polly.access.Packed_MemRef_call2516709, align 8
  %p_mul37.i = fmul fast double %_p_scalar_714, %_p_scalar_710
  %305 = shl i64 %304, 3
  %306 = add i64 %305, %286
  %scevgep715 = getelementptr i8, i8* %call, i64 %306
  %scevgep715716 = bitcast i8* %scevgep715 to double*
  %_p_scalar_717 = load double, double* %scevgep715716, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_717
  store double %p_add42.i, double* %scevgep715716, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next697 = add nuw nsw i64 %polly.indvar696, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar696, %smin1133
  br i1 %exitcond1134.not, label %polly.loop_exit694, label %polly.loop_header692, !llvm.loop !111

polly.loop_header844:                             ; preds = %entry, %polly.loop_exit852
  %indvars.iv1164 = phi i64 [ %indvars.iv.next1165, %polly.loop_exit852 ], [ 0, %entry ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %entry ]
  %smin1166 = call i64 @llvm.smin.i64(i64 %indvars.iv1164, i64 -1168)
  %307 = shl nsw i64 %polly.indvar847, 5
  %308 = add nsw i64 %smin1166, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1165 = add nsw i64 %indvars.iv1164, -32
  %exitcond1169.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1169.not, label %polly.loop_header871, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %indvars.iv1160 = phi i64 [ %indvars.iv.next1161, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %309 = mul nsw i64 %polly.indvar853, -32
  %smin1210 = call i64 @llvm.smin.i64(i64 %309, i64 -1168)
  %310 = add nsw i64 %smin1210, 1200
  %smin1162 = call i64 @llvm.smin.i64(i64 %indvars.iv1160, i64 -1168)
  %311 = shl nsw i64 %polly.indvar853, 5
  %312 = add nsw i64 %smin1162, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1161 = add nsw i64 %indvars.iv1160, -32
  %exitcond1168.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1168.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %polly.indvar859 = phi i64 [ 0, %polly.loop_header850 ], [ %polly.indvar_next860, %polly.loop_exit864 ]
  %313 = add nuw nsw i64 %polly.indvar859, %307
  %314 = trunc i64 %313 to i32
  %315 = mul nuw nsw i64 %313, 9600
  %min.iters.check = icmp eq i64 %310, 0
  br i1 %min.iters.check, label %polly.loop_header862, label %vector.ph1211

vector.ph1211:                                    ; preds = %polly.loop_header856
  %broadcast.splatinsert1218 = insertelement <4 x i64> poison, i64 %311, i32 0
  %broadcast.splat1219 = shufflevector <4 x i64> %broadcast.splatinsert1218, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1220 = insertelement <4 x i32> poison, i32 %314, i32 0
  %broadcast.splat1221 = shufflevector <4 x i32> %broadcast.splatinsert1220, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1211
  %index1212 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1213, %vector.body1209 ]
  %vec.ind1216 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1211 ], [ %vec.ind.next1217, %vector.body1209 ]
  %316 = add nuw nsw <4 x i64> %vec.ind1216, %broadcast.splat1219
  %317 = trunc <4 x i64> %316 to <4 x i32>
  %318 = mul <4 x i32> %broadcast.splat1221, %317
  %319 = add <4 x i32> %318, <i32 3, i32 3, i32 3, i32 3>
  %320 = urem <4 x i32> %319, <i32 1200, i32 1200, i32 1200, i32 1200>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %323 = extractelement <4 x i64> %316, i32 0
  %324 = shl i64 %323, 3
  %325 = add nuw nsw i64 %324, %315
  %326 = getelementptr i8, i8* %call, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %322, <4 x double>* %327, align 8, !alias.scope !112, !noalias !114
  %index.next1213 = add i64 %index1212, 4
  %vec.ind.next1217 = add <4 x i64> %vec.ind1216, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %index.next1213, %310
  br i1 %328, label %polly.loop_exit864, label %vector.body1209, !llvm.loop !117

polly.loop_exit864:                               ; preds = %vector.body1209, %polly.loop_header862
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar859, %308
  br i1 %exitcond1167.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_header856, %polly.loop_header862
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_header862 ], [ 0, %polly.loop_header856 ]
  %329 = add nuw nsw i64 %polly.indvar865, %311
  %330 = trunc i64 %329 to i32
  %331 = mul i32 %330, %314
  %332 = add i32 %331, 3
  %333 = urem i32 %332, 1200
  %p_conv31.i = sitofp i32 %333 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %334 = shl i64 %329, 3
  %335 = add nuw nsw i64 %334, %315
  %scevgep868 = getelementptr i8, i8* %call, i64 %335
  %scevgep868869 = bitcast i8* %scevgep868 to double*
  store double %p_div33.i, double* %scevgep868869, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar865, %312
  br i1 %exitcond1163.not, label %polly.loop_exit864, label %polly.loop_header862, !llvm.loop !118

polly.loop_header871:                             ; preds = %polly.loop_exit852, %polly.loop_exit879
  %indvars.iv1154 = phi i64 [ %indvars.iv.next1155, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %smin1156 = call i64 @llvm.smin.i64(i64 %indvars.iv1154, i64 -1168)
  %336 = shl nsw i64 %polly.indvar874, 5
  %337 = add nsw i64 %smin1156, 1199
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1155 = add nsw i64 %indvars.iv1154, -32
  %exitcond1159.not = icmp eq i64 %polly.indvar_next875, 38
  br i1 %exitcond1159.not, label %polly.loop_header897, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %338 = mul nsw i64 %polly.indvar880, -32
  %smin1225 = call i64 @llvm.smin.i64(i64 %338, i64 -968)
  %339 = add nsw i64 %smin1225, 1000
  %smin1152 = call i64 @llvm.smin.i64(i64 %indvars.iv1150, i64 -968)
  %340 = shl nsw i64 %polly.indvar880, 5
  %341 = add nsw i64 %smin1152, 999
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1151 = add nsw i64 %indvars.iv1150, -32
  %exitcond1158.not = icmp eq i64 %polly.indvar_next881, 32
  br i1 %exitcond1158.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %polly.indvar886 = phi i64 [ 0, %polly.loop_header877 ], [ %polly.indvar_next887, %polly.loop_exit891 ]
  %342 = add nuw nsw i64 %polly.indvar886, %336
  %343 = trunc i64 %342 to i32
  %344 = mul nuw nsw i64 %342, 8000
  %min.iters.check1226 = icmp eq i64 %339, 0
  br i1 %min.iters.check1226, label %polly.loop_header889, label %vector.ph1227

vector.ph1227:                                    ; preds = %polly.loop_header883
  %broadcast.splatinsert1236 = insertelement <4 x i64> poison, i64 %340, i32 0
  %broadcast.splat1237 = shufflevector <4 x i64> %broadcast.splatinsert1236, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %343, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1227
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1231, %vector.body1224 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1227 ], [ %vec.ind.next1235, %vector.body1224 ]
  %345 = add nuw nsw <4 x i64> %vec.ind1234, %broadcast.splat1237
  %346 = trunc <4 x i64> %345 to <4 x i32>
  %347 = mul <4 x i32> %broadcast.splat1239, %346
  %348 = add <4 x i32> %347, <i32 2, i32 2, i32 2, i32 2>
  %349 = urem <4 x i32> %348, <i32 1000, i32 1000, i32 1000, i32 1000>
  %350 = sitofp <4 x i32> %349 to <4 x double>
  %351 = fmul fast <4 x double> %350, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %352 = extractelement <4 x i64> %345, i32 0
  %353 = shl i64 %352, 3
  %354 = add nuw nsw i64 %353, %344
  %355 = getelementptr i8, i8* %call2, i64 %354
  %356 = bitcast i8* %355 to <4 x double>*
  store <4 x double> %351, <4 x double>* %356, align 8, !alias.scope !116, !noalias !119
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %357 = icmp eq i64 %index.next1231, %339
  br i1 %357, label %polly.loop_exit891, label %vector.body1224, !llvm.loop !120

polly.loop_exit891:                               ; preds = %vector.body1224, %polly.loop_header889
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar886, %337
  br i1 %exitcond1157.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_header883, %polly.loop_header889
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_header889 ], [ 0, %polly.loop_header883 ]
  %358 = add nuw nsw i64 %polly.indvar892, %340
  %359 = trunc i64 %358 to i32
  %360 = mul i32 %359, %343
  %361 = add i32 %360, 2
  %362 = urem i32 %361, 1000
  %p_conv10.i = sitofp i32 %362 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %363 = shl i64 %358, 3
  %364 = add nuw nsw i64 %363, %344
  %scevgep895 = getelementptr i8, i8* %call2, i64 %364
  %scevgep895896 = bitcast i8* %scevgep895 to double*
  store double %p_div12.i, double* %scevgep895896, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar892, %341
  br i1 %exitcond1153.not, label %polly.loop_exit891, label %polly.loop_header889, !llvm.loop !121

polly.loop_header897:                             ; preds = %polly.loop_exit879, %polly.loop_exit905
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %smin1146 = call i64 @llvm.smin.i64(i64 %indvars.iv1144, i64 -1168)
  %365 = shl nsw i64 %polly.indvar900, 5
  %366 = add nsw i64 %smin1146, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1145 = add nsw i64 %indvars.iv1144, -32
  %exitcond1149.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1149.not, label %init_array.exit, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %367 = mul nsw i64 %polly.indvar906, -32
  %smin1243 = call i64 @llvm.smin.i64(i64 %367, i64 -968)
  %368 = add nsw i64 %smin1243, 1000
  %smin1142 = call i64 @llvm.smin.i64(i64 %indvars.iv1140, i64 -968)
  %369 = shl nsw i64 %polly.indvar906, 5
  %370 = add nsw i64 %smin1142, 999
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -32
  %exitcond1148.not = icmp eq i64 %polly.indvar_next907, 32
  br i1 %exitcond1148.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %polly.indvar912 = phi i64 [ 0, %polly.loop_header903 ], [ %polly.indvar_next913, %polly.loop_exit917 ]
  %371 = add nuw nsw i64 %polly.indvar912, %365
  %372 = trunc i64 %371 to i32
  %373 = mul nuw nsw i64 %371, 8000
  %min.iters.check1244 = icmp eq i64 %368, 0
  br i1 %min.iters.check1244, label %polly.loop_header915, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header909
  %broadcast.splatinsert1254 = insertelement <4 x i64> poison, i64 %369, i32 0
  %broadcast.splat1255 = shufflevector <4 x i64> %broadcast.splatinsert1254, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1256 = insertelement <4 x i32> poison, i32 %372, i32 0
  %broadcast.splat1257 = shufflevector <4 x i32> %broadcast.splatinsert1256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1242 ]
  %vec.ind1252 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1245 ], [ %vec.ind.next1253, %vector.body1242 ]
  %374 = add nuw nsw <4 x i64> %vec.ind1252, %broadcast.splat1255
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat1257, %375
  %377 = add <4 x i32> %376, <i32 1, i32 1, i32 1, i32 1>
  %378 = urem <4 x i32> %377, <i32 1200, i32 1200, i32 1200, i32 1200>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add nuw nsw i64 %382, %373
  %384 = getelementptr i8, i8* %call1, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !115, !noalias !122
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1253 = add <4 x i64> %vec.ind1252, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next1249, %368
  br i1 %386, label %polly.loop_exit917, label %vector.body1242, !llvm.loop !123

polly.loop_exit917:                               ; preds = %vector.body1242, %polly.loop_header915
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar912, %366
  br i1 %exitcond1147.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_header909, %polly.loop_header915
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_header915 ], [ 0, %polly.loop_header909 ]
  %387 = add nuw nsw i64 %polly.indvar918, %369
  %388 = trunc i64 %387 to i32
  %389 = mul i32 %388, %372
  %390 = add i32 %389, 1
  %391 = urem i32 %390, 1200
  %p_conv.i = sitofp i32 %391 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %392 = shl i64 %387, 3
  %393 = add nuw nsw i64 %392, %373
  %scevgep922 = getelementptr i8, i8* %call1, i64 %393
  %scevgep922923 = bitcast i8* %scevgep922 to double*
  store double %p_div.i, double* %scevgep922923, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar918, %370
  br i1 %exitcond1143.not, label %polly.loop_exit917, label %polly.loop_header915, !llvm.loop !124
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
!51 = !{!"llvm.loop.tile.size", i32 128}
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
