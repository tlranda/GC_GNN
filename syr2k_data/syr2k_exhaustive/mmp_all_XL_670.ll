; ModuleID = 'syr2k_exhaustive/mmp_all_XL_670.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_670.c"
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
  %call945 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1797 = bitcast i8* %call1 to double*
  %polly.access.call1806 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2807 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1806, %call2
  %polly.access.call2826 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2826, %call1
  %2 = or i1 %0, %1
  %polly.access.call846 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call846, %call2
  %4 = icmp ule i8* %polly.access.call2826, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call846, %call1
  %8 = icmp ule i8* %polly.access.call1806, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header919, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv7.i, i64 %index1199
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit980
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start560, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1261 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1261, label %for.body3.i46.preheader1419, label %vector.ph1262

vector.ph1262:                                    ; preds = %for.body3.i46.preheader
  %n.vec1264 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1262
  %index1265 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1266, %vector.body1260 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i, i64 %index1265
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
  br i1 %cmp.n1268, label %for.inc6.i, label %for.body3.i46.preheader1419

for.body3.i46.preheader1419:                      ; preds = %for.body3.i46.preheader, %middle.block1258
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1264, %middle.block1258 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1419, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1419 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting561
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start325, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1308 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1308, label %for.body3.i60.preheader1414, label %vector.ph1309

vector.ph1309:                                    ; preds = %for.body3.i60.preheader
  %n.vec1311 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1309
  %index1312 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1313, %vector.body1307 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i52, i64 %index1312
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1316 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1316, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1313 = add i64 %index1312, 4
  %57 = icmp eq i64 %index.next1313, %n.vec1311
  br i1 %57, label %middle.block1305, label %vector.body1307, !llvm.loop !63

middle.block1305:                                 ; preds = %vector.body1307
  %cmp.n1315 = icmp eq i64 %indvars.iv21.i52, %n.vec1311
  br i1 %cmp.n1315, label %for.inc6.i63, label %for.body3.i60.preheader1414

for.body3.i60.preheader1414:                      ; preds = %for.body3.i60.preheader, %middle.block1305
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1311, %middle.block1305 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1414, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1414 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting326
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
  br i1 %min.iters.check1358, label %for.body3.i99.preheader1409, label %vector.ph1359

vector.ph1359:                                    ; preds = %for.body3.i99.preheader
  %n.vec1361 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1359
  %index1362 = phi i64 [ 0, %vector.ph1359 ], [ %index.next1363, %vector.body1357 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i91, i64 %index1362
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1366, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1363 = add i64 %index1362, 4
  %68 = icmp eq i64 %index.next1363, %n.vec1361
  br i1 %68, label %middle.block1355, label %vector.body1357, !llvm.loop !65

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1365 = icmp eq i64 %indvars.iv21.i91, %n.vec1361
  br i1 %cmp.n1365, label %for.inc6.i102, label %for.body3.i99.preheader1409

for.body3.i99.preheader1409:                      ; preds = %for.body3.i99.preheader, %middle.block1355
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1361, %middle.block1355 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1409, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1409 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall136 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
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
  %wide.load1380 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1380, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1377 = add i64 %index1376, 4
  %95 = icmp eq i64 %index.next1377, %n.vec1375
  br i1 %95, label %middle.block1367, label %vector.body1369, !llvm.loop !78

middle.block1367:                                 ; preds = %vector.body1369
  %cmp.n1379 = icmp eq i64 %88, %n.vec1375
  br i1 %cmp.n1379, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1367
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1375, %middle.block1367 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1367
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1371 = add i64 %indvar1370, 1
  br i1 %exitcond1060.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1059.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1059.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 50
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next204, 20
  br i1 %exitcond1058.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit230 ], [ 50, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = mul nuw nsw i64 %polly.indvar209, 6
  %99 = mul nsw i64 %polly.indvar209, -6
  %100 = shl nsw i64 %polly.indvar209, 8
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %101 = mul nsw i64 %polly.indvar209, -256
  %102 = mul nuw nsw i64 %polly.indvar209, 5
  %103 = shl nsw i64 %polly.indvar209, 7
  %104 = or i64 %103, 1
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit286
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -6
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 6
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, -6
  %exitcond1057.not = icmp eq i64 %polly.indvar_next210, 5
  br i1 %exitcond1057.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %105 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next216, 50
  br i1 %exitcond1033.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %106 = add nuw nsw i64 %polly.indvar221, %100
  %polly.access.mul.call2225 = mul nuw nsw i64 %106, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %105, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2807, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit286, %polly.loop_exit214
  %indvar1384 = phi i64 [ %indvar.next1385, %polly.loop_exit286 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit286 ], [ %indvars.iv1048, %polly.loop_exit214 ]
  %indvars.iv1046 = phi i64 [ %indvars.iv.next1047, %polly.loop_exit286 ], [ %indvars.iv1044, %polly.loop_exit214 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit286 ], [ %indvars.iv1036, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit286 ], [ %102, %polly.loop_exit214 ]
  %107 = mul nsw i64 %indvar1384, -50
  %108 = add i64 %98, %107
  %smax1386 = call i64 @llvm.smax.i64(i64 %108, i64 0)
  %109 = mul nuw nsw i64 %indvar1384, 50
  %110 = add i64 %99, %109
  %111 = add i64 %smax1386, %110
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1046, i64 0)
  %112 = add i64 %smax, %indvars.iv1050
  %113 = mul nuw nsw i64 %polly.indvar231, 25
  %.not = icmp ult i64 %113, %104
  br i1 %.not, label %polly.loop_header265, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %114 = mul nuw nsw i64 %polly.indvar231, 50
  %115 = add nsw i64 %114, %101
  %116 = add nsw i64 %115, -1
  %.inv = icmp sgt i64 %115, 255
  %117 = select i1 %.inv, i64 255, i64 %116
  %polly.loop_guard = icmp sgt i64 %117, -1
  %118 = add nsw i64 %115, 49
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header234.preheader, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header234.preheader ]
  %119 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %120 = add nuw nsw i64 %polly.indvar243.us, %100
  %polly.access.mul.call1247.us = mul nuw nsw i64 %120, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %119, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar243.us, %117
  br i1 %exitcond1035.not, label %polly.loop_header251.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %115, %polly.loop_header240.us ]
  %121 = add nsw i64 %polly.indvar255.us, %100
  %polly.access.mul.call1259.us = mul nuw nsw i64 %121, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %119, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nsw i64 %polly.indvar255.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next256.us, %indvars.iv1038
  br i1 %exitcond1040.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next238.us, 50
  br i1 %exitcond1041.not, label %polly.loop_preheader285, label %polly.loop_header234.us

polly.loop_exit286:                               ; preds = %polly.loop_exit292
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 50
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -50
  %indvars.iv.next1051 = add nsw i64 %indvars.iv1050, 50
  %exitcond1056.not = icmp eq i64 %polly.indvar_next232, 24
  %indvar.next1385 = add i64 %indvar1384, 1
  br i1 %exitcond1056.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header234.preheader ]
  %122 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next238, 50
  br i1 %exitcond1034.not, label %polly.loop_preheader285, label %polly.loop_header234

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %115, %polly.loop_header234 ]
  %123 = add nsw i64 %polly.indvar255, %100
  %polly.access.mul.call1259 = mul nuw nsw i64 %123, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %122, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263 = add nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %118
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.loop_header265:                             ; preds = %polly.loop_header228, %polly.loop_exit273
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit273 ], [ 0, %polly.loop_header228 ]
  %124 = add nuw nsw i64 %polly.indvar268, %97
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar268, 1200
  br label %polly.loop_header271

polly.loop_exit273:                               ; preds = %polly.loop_header271
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next269, 50
  br i1 %exitcond1043.not, label %polly.loop_preheader285.loopexit, label %polly.loop_header265

polly.loop_header271:                             ; preds = %polly.loop_header271, %polly.loop_header265
  %polly.indvar274 = phi i64 [ 0, %polly.loop_header265 ], [ %polly.indvar_next275, %polly.loop_header271 ]
  %125 = add nuw nsw i64 %polly.indvar274, %100
  %polly.access.mul.call1278 = mul nuw nsw i64 %125, 1000
  %polly.access.add.call1279 = add nuw nsw i64 %124, %polly.access.mul.call1278
  %polly.access.call1280 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1279
  %polly.access.call1280.load = load double, double* %polly.access.call1280, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar274, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  store double %polly.access.call1280.load, double* %polly.access.Packed_MemRef_call1283, align 8
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next275, %indvars.iv1036
  br i1 %exitcond1042.not, label %polly.loop_exit273, label %polly.loop_header271

polly.loop_header284:                             ; preds = %polly.loop_exit292, %polly.loop_preheader285
  %polly.indvar287 = phi i64 [ 0, %polly.loop_preheader285 ], [ %polly.indvar_next288, %polly.loop_exit292 ]
  %polly.access.mul.Packed_MemRef_call1304 = mul nuw nsw i64 %polly.indvar287, 1200
  br label %polly.loop_header290

polly.loop_exit292:                               ; preds = %polly.loop_exit299
  %polly.indvar_next288 = add nuw nsw i64 %polly.indvar287, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next288, 50
  br i1 %exitcond1055.not, label %polly.loop_exit286, label %polly.loop_header284

polly.loop_preheader285.loopexit:                 ; preds = %polly.loop_exit273
  %.pre1169 = mul nuw nsw i64 %polly.indvar231, 50
  br label %polly.loop_preheader285

polly.loop_preheader285:                          ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.loop_preheader285.loopexit
  %.pre-phi1170 = phi i64 [ %.pre1169, %polly.loop_preheader285.loopexit ], [ %114, %polly.loop_exit253.us ], [ %114, %polly.loop_exit253 ]
  %126 = sub nsw i64 %100, %.pre-phi1170
  %127 = icmp sgt i64 %126, 0
  %128 = select i1 %127, i64 %126, i64 0
  br label %polly.loop_header284

polly.loop_header290:                             ; preds = %polly.loop_exit299, %polly.loop_header284
  %indvar1387 = phi i64 [ %indvar.next1388, %polly.loop_exit299 ], [ 0, %polly.loop_header284 ]
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %polly.loop_exit299 ], [ %112, %polly.loop_header284 ]
  %polly.indvar293 = phi i64 [ %polly.indvar_next294, %polly.loop_exit299 ], [ %128, %polly.loop_header284 ]
  %129 = add i64 %111, %indvar1387
  %smin1389 = call i64 @llvm.smin.i64(i64 %129, i64 255)
  %130 = add nsw i64 %smin1389, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1052, i64 255)
  %131 = add nuw i64 %polly.indvar293, %.pre-phi1170
  %132 = add i64 %131, %101
  %polly.loop_guard3001171 = icmp sgt i64 %132, -1
  br i1 %polly.loop_guard3001171, label %polly.loop_header297.preheader, label %polly.loop_exit299

polly.loop_header297.preheader:                   ; preds = %polly.loop_header290
  %polly.access.add.Packed_MemRef_call2309 = add nsw i64 %polly.access.mul.Packed_MemRef_call1304, %132
  %polly.access.Packed_MemRef_call2310 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2309
  %_p_scalar_311 = load double, double* %polly.access.Packed_MemRef_call2310, align 8
  %polly.access.Packed_MemRef_call1318 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2309
  %_p_scalar_319 = load double, double* %polly.access.Packed_MemRef_call1318, align 8
  %133 = mul i64 %131, 9600
  %min.iters.check1390 = icmp ult i64 %130, 4
  br i1 %min.iters.check1390, label %polly.loop_header297.preheader1405, label %vector.ph1391

vector.ph1391:                                    ; preds = %polly.loop_header297.preheader
  %n.vec1393 = and i64 %130, -4
  %broadcast.splatinsert1399 = insertelement <4 x double> poison, double %_p_scalar_311, i32 0
  %broadcast.splat1400 = shufflevector <4 x double> %broadcast.splatinsert1399, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1402 = insertelement <4 x double> poison, double %_p_scalar_319, i32 0
  %broadcast.splat1403 = shufflevector <4 x double> %broadcast.splatinsert1402, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1383

vector.body1383:                                  ; preds = %vector.body1383, %vector.ph1391
  %index1394 = phi i64 [ 0, %vector.ph1391 ], [ %index.next1395, %vector.body1383 ]
  %134 = add nuw nsw i64 %index1394, %100
  %135 = add nuw nsw i64 %index1394, %polly.access.mul.Packed_MemRef_call1304
  %136 = getelementptr double, double* %Packed_MemRef_call1, i64 %135
  %137 = bitcast double* %136 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %137, align 8
  %138 = fmul fast <4 x double> %broadcast.splat1400, %wide.load1398
  %139 = getelementptr double, double* %Packed_MemRef_call2, i64 %135
  %140 = bitcast double* %139 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %140, align 8
  %141 = fmul fast <4 x double> %broadcast.splat1403, %wide.load1401
  %142 = shl i64 %134, 3
  %143 = add i64 %142, %133
  %144 = getelementptr i8, i8* %call, i64 %143
  %145 = bitcast i8* %144 to <4 x double>*
  %wide.load1404 = load <4 x double>, <4 x double>* %145, align 8, !alias.scope !71, !noalias !73
  %146 = fadd fast <4 x double> %141, %138
  %147 = fmul fast <4 x double> %146, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %148 = fadd fast <4 x double> %147, %wide.load1404
  %149 = bitcast i8* %144 to <4 x double>*
  store <4 x double> %148, <4 x double>* %149, align 8, !alias.scope !71, !noalias !73
  %index.next1395 = add i64 %index1394, 4
  %150 = icmp eq i64 %index.next1395, %n.vec1393
  br i1 %150, label %middle.block1381, label %vector.body1383, !llvm.loop !83

middle.block1381:                                 ; preds = %vector.body1383
  %cmp.n1397 = icmp eq i64 %130, %n.vec1393
  br i1 %cmp.n1397, label %polly.loop_exit299, label %polly.loop_header297.preheader1405

polly.loop_header297.preheader1405:               ; preds = %polly.loop_header297.preheader, %middle.block1381
  %polly.indvar301.ph = phi i64 [ 0, %polly.loop_header297.preheader ], [ %n.vec1393, %middle.block1381 ]
  br label %polly.loop_header297

polly.loop_exit299:                               ; preds = %polly.loop_header297, %middle.block1381, %polly.loop_header290
  %polly.indvar_next294 = add nuw nsw i64 %polly.indvar293, 1
  %polly.loop_cond295 = icmp ult i64 %polly.indvar293, 49
  %indvars.iv.next1053 = add i64 %indvars.iv1052, 1
  %indvar.next1388 = add i64 %indvar1387, 1
  br i1 %polly.loop_cond295, label %polly.loop_header290, label %polly.loop_exit292

polly.loop_header297:                             ; preds = %polly.loop_header297.preheader1405, %polly.loop_header297
  %polly.indvar301 = phi i64 [ %polly.indvar_next302, %polly.loop_header297 ], [ %polly.indvar301.ph, %polly.loop_header297.preheader1405 ]
  %151 = add nuw nsw i64 %polly.indvar301, %100
  %polly.access.add.Packed_MemRef_call1305 = add nuw nsw i64 %polly.indvar301, %polly.access.mul.Packed_MemRef_call1304
  %polly.access.Packed_MemRef_call1306 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1305
  %_p_scalar_307 = load double, double* %polly.access.Packed_MemRef_call1306, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_311, %_p_scalar_307
  %polly.access.Packed_MemRef_call2314 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1305
  %_p_scalar_315 = load double, double* %polly.access.Packed_MemRef_call2314, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_319, %_p_scalar_315
  %152 = shl i64 %151, 3
  %153 = add i64 %152, %133
  %scevgep320 = getelementptr i8, i8* %call, i64 %153
  %scevgep320321 = bitcast i8* %scevgep320 to double*
  %_p_scalar_322 = load double, double* %scevgep320321, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_322
  store double %p_add42.i118, double* %scevgep320321, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next302 = add nuw nsw i64 %polly.indvar301, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar301, %smin
  br i1 %exitcond1054.not, label %polly.loop_exit299, label %polly.loop_header297, !llvm.loop !84

polly.start325:                                   ; preds = %kernel_syr2k.exit
  %malloccall327 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall329 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header413

polly.exiting326:                                 ; preds = %polly.loop_exit437
  tail call void @free(i8* %malloccall327)
  tail call void @free(i8* %malloccall329)
  br label %kernel_syr2k.exit90

polly.loop_header413:                             ; preds = %polly.loop_exit421, %polly.start325
  %indvar1320 = phi i64 [ %indvar.next1321, %polly.loop_exit421 ], [ 0, %polly.start325 ]
  %polly.indvar416 = phi i64 [ %polly.indvar_next417, %polly.loop_exit421 ], [ 1, %polly.start325 ]
  %154 = add i64 %indvar1320, 1
  %155 = mul nuw nsw i64 %polly.indvar416, 9600
  %scevgep425 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check1322 = icmp ult i64 %154, 4
  br i1 %min.iters.check1322, label %polly.loop_header419.preheader, label %vector.ph1323

vector.ph1323:                                    ; preds = %polly.loop_header413
  %n.vec1325 = and i64 %154, -4
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %vector.ph1323
  %index1326 = phi i64 [ 0, %vector.ph1323 ], [ %index.next1327, %vector.body1319 ]
  %156 = shl nuw nsw i64 %index1326, 3
  %157 = getelementptr i8, i8* %scevgep425, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1330 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !85, !noalias !87
  %159 = fmul fast <4 x double> %wide.load1330, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !85, !noalias !87
  %index.next1327 = add i64 %index1326, 4
  %161 = icmp eq i64 %index.next1327, %n.vec1325
  br i1 %161, label %middle.block1317, label %vector.body1319, !llvm.loop !92

middle.block1317:                                 ; preds = %vector.body1319
  %cmp.n1329 = icmp eq i64 %154, %n.vec1325
  br i1 %cmp.n1329, label %polly.loop_exit421, label %polly.loop_header419.preheader

polly.loop_header419.preheader:                   ; preds = %polly.loop_header413, %middle.block1317
  %polly.indvar422.ph = phi i64 [ 0, %polly.loop_header413 ], [ %n.vec1325, %middle.block1317 ]
  br label %polly.loop_header419

polly.loop_exit421:                               ; preds = %polly.loop_header419, %middle.block1317
  %polly.indvar_next417 = add nuw nsw i64 %polly.indvar416, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next417, 1200
  %indvar.next1321 = add i64 %indvar1320, 1
  br i1 %exitcond1093.not, label %polly.loop_header429.preheader, label %polly.loop_header413

polly.loop_header429.preheader:                   ; preds = %polly.loop_exit421
  %Packed_MemRef_call1328 = bitcast i8* %malloccall327 to double*
  %Packed_MemRef_call2330 = bitcast i8* %malloccall329 to double*
  br label %polly.loop_header429

polly.loop_header419:                             ; preds = %polly.loop_header419.preheader, %polly.loop_header419
  %polly.indvar422 = phi i64 [ %polly.indvar_next423, %polly.loop_header419 ], [ %polly.indvar422.ph, %polly.loop_header419.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar422, 3
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %162
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_428, 1.200000e+00
  store double %p_mul.i57, double* %scevgep426427, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next423 = add nuw nsw i64 %polly.indvar422, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next423, %polly.indvar416
  br i1 %exitcond1092.not, label %polly.loop_exit421, label %polly.loop_header419, !llvm.loop !93

polly.loop_header429:                             ; preds = %polly.loop_header429.preheader, %polly.loop_exit437
  %polly.indvar432 = phi i64 [ %polly.indvar_next433, %polly.loop_exit437 ], [ 0, %polly.loop_header429.preheader ]
  %163 = mul nuw nsw i64 %polly.indvar432, 50
  br label %polly.loop_header435

polly.loop_exit437:                               ; preds = %polly.loop_exit459
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next433, 20
  br i1 %exitcond1091.not, label %polly.exiting326, label %polly.loop_header429

polly.loop_header435:                             ; preds = %polly.loop_exit459, %polly.loop_header429
  %indvars.iv1080 = phi i64 [ %indvars.iv.next1081, %polly.loop_exit459 ], [ 0, %polly.loop_header429 ]
  %indvars.iv1075 = phi i64 [ %indvars.iv.next1076, %polly.loop_exit459 ], [ 0, %polly.loop_header429 ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit459 ], [ 50, %polly.loop_header429 ]
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit459 ], [ 1200, %polly.loop_header429 ]
  %polly.indvar438 = phi i64 [ %polly.indvar_next439, %polly.loop_exit459 ], [ 0, %polly.loop_header429 ]
  %164 = mul nuw nsw i64 %polly.indvar438, 6
  %165 = mul nsw i64 %polly.indvar438, -6
  %166 = shl nsw i64 %polly.indvar438, 8
  br label %polly.loop_header441

polly.loop_exit443:                               ; preds = %polly.loop_exit449
  %167 = mul nsw i64 %polly.indvar438, -256
  %168 = mul nuw nsw i64 %polly.indvar438, 5
  %169 = shl nsw i64 %polly.indvar438, 7
  %170 = or i64 %169, 1
  br label %polly.loop_header457

polly.loop_exit459:                               ; preds = %polly.loop_exit521
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, -256
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -6
  %indvars.iv.next1076 = add nuw nsw i64 %indvars.iv1075, 6
  %indvars.iv.next1081 = add nsw i64 %indvars.iv1080, -6
  %exitcond1090.not = icmp eq i64 %polly.indvar_next439, 5
  br i1 %exitcond1090.not, label %polly.loop_exit437, label %polly.loop_header435

polly.loop_header441:                             ; preds = %polly.loop_exit449, %polly.loop_header435
  %polly.indvar444 = phi i64 [ 0, %polly.loop_header435 ], [ %polly.indvar_next445, %polly.loop_exit449 ]
  %171 = add nuw nsw i64 %polly.indvar444, %163
  %polly.access.mul.Packed_MemRef_call2330 = mul nuw nsw i64 %polly.indvar444, 1200
  br label %polly.loop_header447

polly.loop_exit449:                               ; preds = %polly.loop_header447
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next445, 50
  br i1 %exitcond1064.not, label %polly.loop_exit443, label %polly.loop_header441

polly.loop_header447:                             ; preds = %polly.loop_header447, %polly.loop_header441
  %polly.indvar450 = phi i64 [ 0, %polly.loop_header441 ], [ %polly.indvar_next451, %polly.loop_header447 ]
  %172 = add nuw nsw i64 %polly.indvar450, %166
  %polly.access.mul.call2454 = mul nuw nsw i64 %172, 1000
  %polly.access.add.call2455 = add nuw nsw i64 %171, %polly.access.mul.call2454
  %polly.access.call2456 = getelementptr double, double* %polly.access.cast.call2807, i64 %polly.access.add.call2455
  %polly.access.call2456.load = load double, double* %polly.access.call2456, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2330 = add nuw nsw i64 %polly.indvar450, %polly.access.mul.Packed_MemRef_call2330
  %polly.access.Packed_MemRef_call2330 = getelementptr double, double* %Packed_MemRef_call2330, i64 %polly.access.add.Packed_MemRef_call2330
  store double %polly.access.call2456.load, double* %polly.access.Packed_MemRef_call2330, align 8
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next451, %indvars.iv1061
  br i1 %exitcond1063.not, label %polly.loop_exit449, label %polly.loop_header447

polly.loop_header457:                             ; preds = %polly.loop_exit521, %polly.loop_exit443
  %indvar1334 = phi i64 [ %indvar.next1335, %polly.loop_exit521 ], [ 0, %polly.loop_exit443 ]
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit521 ], [ %indvars.iv1080, %polly.loop_exit443 ]
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit521 ], [ %indvars.iv1075, %polly.loop_exit443 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit521 ], [ %indvars.iv1067, %polly.loop_exit443 ]
  %polly.indvar460 = phi i64 [ %polly.indvar_next461, %polly.loop_exit521 ], [ %168, %polly.loop_exit443 ]
  %173 = mul nsw i64 %indvar1334, -50
  %174 = add i64 %164, %173
  %smax1336 = call i64 @llvm.smax.i64(i64 %174, i64 0)
  %175 = mul nuw nsw i64 %indvar1334, 50
  %176 = add i64 %165, %175
  %177 = add i64 %smax1336, %176
  %smax1079 = call i64 @llvm.smax.i64(i64 %indvars.iv1077, i64 0)
  %178 = add i64 %smax1079, %indvars.iv1082
  %179 = mul nuw nsw i64 %polly.indvar460, 25
  %.not999 = icmp ult i64 %179, %170
  br i1 %.not999, label %polly.loop_header500, label %polly.loop_header467.preheader

polly.loop_header467.preheader:                   ; preds = %polly.loop_header457
  %180 = mul nuw nsw i64 %polly.indvar460, 50
  %181 = add nsw i64 %180, %167
  %182 = add nsw i64 %181, -1
  %.inv1000 = icmp sgt i64 %181, 255
  %183 = select i1 %.inv1000, i64 255, i64 %182
  %polly.loop_guard477 = icmp sgt i64 %183, -1
  %184 = add nsw i64 %181, 49
  br i1 %polly.loop_guard477, label %polly.loop_header467.us, label %polly.loop_header467

polly.loop_header467.us:                          ; preds = %polly.loop_header467.preheader, %polly.loop_exit488.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_exit488.us ], [ 0, %polly.loop_header467.preheader ]
  %185 = add nuw nsw i64 %polly.indvar470.us, %163
  %polly.access.mul.Packed_MemRef_call1328.us = mul nuw nsw i64 %polly.indvar470.us, 1200
  br label %polly.loop_header474.us

polly.loop_header474.us:                          ; preds = %polly.loop_header467.us, %polly.loop_header474.us
  %polly.indvar478.us = phi i64 [ %polly.indvar_next479.us, %polly.loop_header474.us ], [ 0, %polly.loop_header467.us ]
  %186 = add nuw nsw i64 %polly.indvar478.us, %166
  %polly.access.mul.call1482.us = mul nuw nsw i64 %186, 1000
  %polly.access.add.call1483.us = add nuw nsw i64 %185, %polly.access.mul.call1482.us
  %polly.access.call1484.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1483.us
  %polly.access.call1484.load.us = load double, double* %polly.access.call1484.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1328.us = add nuw nsw i64 %polly.indvar478.us, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328.us = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328.us
  store double %polly.access.call1484.load.us, double* %polly.access.Packed_MemRef_call1328.us, align 8
  %polly.indvar_next479.us = add nuw i64 %polly.indvar478.us, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar478.us, %183
  br i1 %exitcond1066.not, label %polly.loop_header486.us, label %polly.loop_header474.us

polly.loop_header486.us:                          ; preds = %polly.loop_header474.us, %polly.loop_header486.us
  %polly.indvar490.us = phi i64 [ %polly.indvar_next491.us, %polly.loop_header486.us ], [ %181, %polly.loop_header474.us ]
  %187 = add nsw i64 %polly.indvar490.us, %166
  %polly.access.mul.call1494.us = mul nuw nsw i64 %187, 1000
  %polly.access.add.call1495.us = add nuw nsw i64 %185, %polly.access.mul.call1494.us
  %polly.access.call1496.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us
  %polly.access.call1496.load.us = load double, double* %polly.access.call1496.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1328498.us = add nsw i64 %polly.indvar490.us, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us
  store double %polly.access.call1496.load.us, double* %polly.access.Packed_MemRef_call1328499.us, align 8
  %polly.indvar_next491.us = add nsw i64 %polly.indvar490.us, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next491.us, %indvars.iv1069
  br i1 %exitcond1071.not, label %polly.loop_exit488.us, label %polly.loop_header486.us

polly.loop_exit488.us:                            ; preds = %polly.loop_header486.us
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next471.us, 50
  br i1 %exitcond1072.not, label %polly.loop_preheader520, label %polly.loop_header467.us

polly.loop_exit521:                               ; preds = %polly.loop_exit527
  %polly.indvar_next461 = add nuw nsw i64 %polly.indvar460, 1
  %indvars.iv.next1070 = add nuw nsw i64 %indvars.iv1069, 50
  %indvars.iv.next1078 = add nsw i64 %indvars.iv1077, -50
  %indvars.iv.next1083 = add nsw i64 %indvars.iv1082, 50
  %exitcond1089.not = icmp eq i64 %polly.indvar_next461, 24
  %indvar.next1335 = add i64 %indvar1334, 1
  br i1 %exitcond1089.not, label %polly.loop_exit459, label %polly.loop_header457

polly.loop_header467:                             ; preds = %polly.loop_header467.preheader, %polly.loop_exit488
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_exit488 ], [ 0, %polly.loop_header467.preheader ]
  %188 = add nuw nsw i64 %polly.indvar470, %163
  %polly.access.mul.Packed_MemRef_call1328497 = mul nuw nsw i64 %polly.indvar470, 1200
  br label %polly.loop_header486

polly.loop_exit488:                               ; preds = %polly.loop_header486
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next471, 50
  br i1 %exitcond1065.not, label %polly.loop_preheader520, label %polly.loop_header467

polly.loop_header486:                             ; preds = %polly.loop_header467, %polly.loop_header486
  %polly.indvar490 = phi i64 [ %polly.indvar_next491, %polly.loop_header486 ], [ %181, %polly.loop_header467 ]
  %189 = add nsw i64 %polly.indvar490, %166
  %polly.access.mul.call1494 = mul nuw nsw i64 %189, 1000
  %polly.access.add.call1495 = add nuw nsw i64 %188, %polly.access.mul.call1494
  %polly.access.call1496 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495
  %polly.access.call1496.load = load double, double* %polly.access.call1496, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1328498 = add nsw i64 %polly.indvar490, %polly.access.mul.Packed_MemRef_call1328497
  %polly.access.Packed_MemRef_call1328499 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498
  store double %polly.access.call1496.load, double* %polly.access.Packed_MemRef_call1328499, align 8
  %polly.indvar_next491 = add nsw i64 %polly.indvar490, 1
  %polly.loop_cond492.not.not = icmp slt i64 %polly.indvar490, %184
  br i1 %polly.loop_cond492.not.not, label %polly.loop_header486, label %polly.loop_exit488

polly.loop_header500:                             ; preds = %polly.loop_header457, %polly.loop_exit508
  %polly.indvar503 = phi i64 [ %polly.indvar_next504, %polly.loop_exit508 ], [ 0, %polly.loop_header457 ]
  %190 = add nuw nsw i64 %polly.indvar503, %163
  %polly.access.mul.Packed_MemRef_call1328516 = mul nuw nsw i64 %polly.indvar503, 1200
  br label %polly.loop_header506

polly.loop_exit508:                               ; preds = %polly.loop_header506
  %polly.indvar_next504 = add nuw nsw i64 %polly.indvar503, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next504, 50
  br i1 %exitcond1074.not, label %polly.loop_preheader520.loopexit, label %polly.loop_header500

polly.loop_header506:                             ; preds = %polly.loop_header506, %polly.loop_header500
  %polly.indvar509 = phi i64 [ 0, %polly.loop_header500 ], [ %polly.indvar_next510, %polly.loop_header506 ]
  %191 = add nuw nsw i64 %polly.indvar509, %166
  %polly.access.mul.call1513 = mul nuw nsw i64 %191, 1000
  %polly.access.add.call1514 = add nuw nsw i64 %190, %polly.access.mul.call1513
  %polly.access.call1515 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1514
  %polly.access.call1515.load = load double, double* %polly.access.call1515, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1328517 = add nuw nsw i64 %polly.indvar509, %polly.access.mul.Packed_MemRef_call1328516
  %polly.access.Packed_MemRef_call1328518 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328517
  store double %polly.access.call1515.load, double* %polly.access.Packed_MemRef_call1328518, align 8
  %polly.indvar_next510 = add nuw nsw i64 %polly.indvar509, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next510, %indvars.iv1067
  br i1 %exitcond1073.not, label %polly.loop_exit508, label %polly.loop_header506

polly.loop_header519:                             ; preds = %polly.loop_exit527, %polly.loop_preheader520
  %polly.indvar522 = phi i64 [ 0, %polly.loop_preheader520 ], [ %polly.indvar_next523, %polly.loop_exit527 ]
  %polly.access.mul.Packed_MemRef_call1328539 = mul nuw nsw i64 %polly.indvar522, 1200
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit534
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next523, 50
  br i1 %exitcond1088.not, label %polly.loop_exit521, label %polly.loop_header519

polly.loop_preheader520.loopexit:                 ; preds = %polly.loop_exit508
  %.pre1167 = mul nuw nsw i64 %polly.indvar460, 50
  br label %polly.loop_preheader520

polly.loop_preheader520:                          ; preds = %polly.loop_exit488, %polly.loop_exit488.us, %polly.loop_preheader520.loopexit
  %.pre-phi1168 = phi i64 [ %.pre1167, %polly.loop_preheader520.loopexit ], [ %180, %polly.loop_exit488.us ], [ %180, %polly.loop_exit488 ]
  %192 = sub nsw i64 %166, %.pre-phi1168
  %193 = icmp sgt i64 %192, 0
  %194 = select i1 %193, i64 %192, i64 0
  br label %polly.loop_header519

polly.loop_header525:                             ; preds = %polly.loop_exit534, %polly.loop_header519
  %indvar1337 = phi i64 [ %indvar.next1338, %polly.loop_exit534 ], [ 0, %polly.loop_header519 ]
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit534 ], [ %178, %polly.loop_header519 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit534 ], [ %194, %polly.loop_header519 ]
  %195 = add i64 %177, %indvar1337
  %smin1339 = call i64 @llvm.smin.i64(i64 %195, i64 255)
  %196 = add nsw i64 %smin1339, 1
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1084, i64 255)
  %197 = add nuw i64 %polly.indvar528, %.pre-phi1168
  %198 = add i64 %197, %167
  %polly.loop_guard5351172 = icmp sgt i64 %198, -1
  br i1 %polly.loop_guard5351172, label %polly.loop_header532.preheader, label %polly.loop_exit534

polly.loop_header532.preheader:                   ; preds = %polly.loop_header525
  %polly.access.add.Packed_MemRef_call2330544 = add nsw i64 %polly.access.mul.Packed_MemRef_call1328539, %198
  %polly.access.Packed_MemRef_call2330545 = getelementptr double, double* %Packed_MemRef_call2330, i64 %polly.access.add.Packed_MemRef_call2330544
  %_p_scalar_546 = load double, double* %polly.access.Packed_MemRef_call2330545, align 8
  %polly.access.Packed_MemRef_call1328553 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call2330544
  %_p_scalar_554 = load double, double* %polly.access.Packed_MemRef_call1328553, align 8
  %199 = mul i64 %197, 9600
  %min.iters.check1340 = icmp ult i64 %196, 4
  br i1 %min.iters.check1340, label %polly.loop_header532.preheader1410, label %vector.ph1341

vector.ph1341:                                    ; preds = %polly.loop_header532.preheader
  %n.vec1343 = and i64 %196, -4
  %broadcast.splatinsert1349 = insertelement <4 x double> poison, double %_p_scalar_546, i32 0
  %broadcast.splat1350 = shufflevector <4 x double> %broadcast.splatinsert1349, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1352 = insertelement <4 x double> poison, double %_p_scalar_554, i32 0
  %broadcast.splat1353 = shufflevector <4 x double> %broadcast.splatinsert1352, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1333

vector.body1333:                                  ; preds = %vector.body1333, %vector.ph1341
  %index1344 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1345, %vector.body1333 ]
  %200 = add nuw nsw i64 %index1344, %166
  %201 = add nuw nsw i64 %index1344, %polly.access.mul.Packed_MemRef_call1328539
  %202 = getelementptr double, double* %Packed_MemRef_call1328, i64 %201
  %203 = bitcast double* %202 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %203, align 8
  %204 = fmul fast <4 x double> %broadcast.splat1350, %wide.load1348
  %205 = getelementptr double, double* %Packed_MemRef_call2330, i64 %201
  %206 = bitcast double* %205 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %206, align 8
  %207 = fmul fast <4 x double> %broadcast.splat1353, %wide.load1351
  %208 = shl i64 %200, 3
  %209 = add i64 %208, %199
  %210 = getelementptr i8, i8* %call, i64 %209
  %211 = bitcast i8* %210 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %211, align 8, !alias.scope !85, !noalias !87
  %212 = fadd fast <4 x double> %207, %204
  %213 = fmul fast <4 x double> %212, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %214 = fadd fast <4 x double> %213, %wide.load1354
  %215 = bitcast i8* %210 to <4 x double>*
  store <4 x double> %214, <4 x double>* %215, align 8, !alias.scope !85, !noalias !87
  %index.next1345 = add i64 %index1344, 4
  %216 = icmp eq i64 %index.next1345, %n.vec1343
  br i1 %216, label %middle.block1331, label %vector.body1333, !llvm.loop !96

middle.block1331:                                 ; preds = %vector.body1333
  %cmp.n1347 = icmp eq i64 %196, %n.vec1343
  br i1 %cmp.n1347, label %polly.loop_exit534, label %polly.loop_header532.preheader1410

polly.loop_header532.preheader1410:               ; preds = %polly.loop_header532.preheader, %middle.block1331
  %polly.indvar536.ph = phi i64 [ 0, %polly.loop_header532.preheader ], [ %n.vec1343, %middle.block1331 ]
  br label %polly.loop_header532

polly.loop_exit534:                               ; preds = %polly.loop_header532, %middle.block1331, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %polly.loop_cond530 = icmp ult i64 %polly.indvar528, 49
  %indvars.iv.next1085 = add i64 %indvars.iv1084, 1
  %indvar.next1338 = add i64 %indvar1337, 1
  br i1 %polly.loop_cond530, label %polly.loop_header525, label %polly.loop_exit527

polly.loop_header532:                             ; preds = %polly.loop_header532.preheader1410, %polly.loop_header532
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_header532 ], [ %polly.indvar536.ph, %polly.loop_header532.preheader1410 ]
  %217 = add nuw nsw i64 %polly.indvar536, %166
  %polly.access.add.Packed_MemRef_call1328540 = add nuw nsw i64 %polly.indvar536, %polly.access.mul.Packed_MemRef_call1328539
  %polly.access.Packed_MemRef_call1328541 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328540
  %_p_scalar_542 = load double, double* %polly.access.Packed_MemRef_call1328541, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_546, %_p_scalar_542
  %polly.access.Packed_MemRef_call2330549 = getelementptr double, double* %Packed_MemRef_call2330, i64 %polly.access.add.Packed_MemRef_call1328540
  %_p_scalar_550 = load double, double* %polly.access.Packed_MemRef_call2330549, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_554, %_p_scalar_550
  %218 = shl i64 %217, 3
  %219 = add i64 %218, %199
  %scevgep555 = getelementptr i8, i8* %call, i64 %219
  %scevgep555556 = bitcast i8* %scevgep555 to double*
  %_p_scalar_557 = load double, double* %scevgep555556, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_557
  store double %p_add42.i79, double* %scevgep555556, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar536, %smin1086
  br i1 %exitcond1087.not, label %polly.loop_exit534, label %polly.loop_header532, !llvm.loop !97

polly.start560:                                   ; preds = %init_array.exit
  %malloccall562 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall564 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header648

polly.exiting561:                                 ; preds = %polly.loop_exit672
  tail call void @free(i8* %malloccall562)
  tail call void @free(i8* %malloccall564)
  br label %kernel_syr2k.exit

polly.loop_header648:                             ; preds = %polly.loop_exit656, %polly.start560
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit656 ], [ 0, %polly.start560 ]
  %polly.indvar651 = phi i64 [ %polly.indvar_next652, %polly.loop_exit656 ], [ 1, %polly.start560 ]
  %220 = add i64 %indvar, 1
  %221 = mul nuw nsw i64 %polly.indvar651, 9600
  %scevgep660 = getelementptr i8, i8* %call, i64 %221
  %min.iters.check1272 = icmp ult i64 %220, 4
  br i1 %min.iters.check1272, label %polly.loop_header654.preheader, label %vector.ph1273

vector.ph1273:                                    ; preds = %polly.loop_header648
  %n.vec1275 = and i64 %220, -4
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1273
  %index1276 = phi i64 [ 0, %vector.ph1273 ], [ %index.next1277, %vector.body1271 ]
  %222 = shl nuw nsw i64 %index1276, 3
  %223 = getelementptr i8, i8* %scevgep660, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  %wide.load1280 = load <4 x double>, <4 x double>* %224, align 8, !alias.scope !98, !noalias !100
  %225 = fmul fast <4 x double> %wide.load1280, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %226 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %225, <4 x double>* %226, align 8, !alias.scope !98, !noalias !100
  %index.next1277 = add i64 %index1276, 4
  %227 = icmp eq i64 %index.next1277, %n.vec1275
  br i1 %227, label %middle.block1269, label %vector.body1271, !llvm.loop !105

middle.block1269:                                 ; preds = %vector.body1271
  %cmp.n1279 = icmp eq i64 %220, %n.vec1275
  br i1 %cmp.n1279, label %polly.loop_exit656, label %polly.loop_header654.preheader

polly.loop_header654.preheader:                   ; preds = %polly.loop_header648, %middle.block1269
  %polly.indvar657.ph = phi i64 [ 0, %polly.loop_header648 ], [ %n.vec1275, %middle.block1269 ]
  br label %polly.loop_header654

polly.loop_exit656:                               ; preds = %polly.loop_header654, %middle.block1269
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next652, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1126.not, label %polly.loop_header664.preheader, label %polly.loop_header648

polly.loop_header664.preheader:                   ; preds = %polly.loop_exit656
  %Packed_MemRef_call1563 = bitcast i8* %malloccall562 to double*
  %Packed_MemRef_call2565 = bitcast i8* %malloccall564 to double*
  br label %polly.loop_header664

polly.loop_header654:                             ; preds = %polly.loop_header654.preheader, %polly.loop_header654
  %polly.indvar657 = phi i64 [ %polly.indvar_next658, %polly.loop_header654 ], [ %polly.indvar657.ph, %polly.loop_header654.preheader ]
  %228 = shl nuw nsw i64 %polly.indvar657, 3
  %scevgep661 = getelementptr i8, i8* %scevgep660, i64 %228
  %scevgep661662 = bitcast i8* %scevgep661 to double*
  %_p_scalar_663 = load double, double* %scevgep661662, align 8, !alias.scope !98, !noalias !100
  %p_mul.i = fmul fast double %_p_scalar_663, 1.200000e+00
  store double %p_mul.i, double* %scevgep661662, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next658 = add nuw nsw i64 %polly.indvar657, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next658, %polly.indvar651
  br i1 %exitcond1125.not, label %polly.loop_exit656, label %polly.loop_header654, !llvm.loop !106

polly.loop_header664:                             ; preds = %polly.loop_header664.preheader, %polly.loop_exit672
  %polly.indvar667 = phi i64 [ %polly.indvar_next668, %polly.loop_exit672 ], [ 0, %polly.loop_header664.preheader ]
  %229 = mul nuw nsw i64 %polly.indvar667, 50
  br label %polly.loop_header670

polly.loop_exit672:                               ; preds = %polly.loop_exit694
  %polly.indvar_next668 = add nuw nsw i64 %polly.indvar667, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next668, 20
  br i1 %exitcond1124.not, label %polly.exiting561, label %polly.loop_header664

polly.loop_header670:                             ; preds = %polly.loop_exit694, %polly.loop_header664
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit694 ], [ 0, %polly.loop_header664 ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit694 ], [ 0, %polly.loop_header664 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit694 ], [ 50, %polly.loop_header664 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit694 ], [ 1200, %polly.loop_header664 ]
  %polly.indvar673 = phi i64 [ %polly.indvar_next674, %polly.loop_exit694 ], [ 0, %polly.loop_header664 ]
  %230 = mul nuw nsw i64 %polly.indvar673, 6
  %231 = mul nsw i64 %polly.indvar673, -6
  %232 = shl nsw i64 %polly.indvar673, 8
  br label %polly.loop_header676

polly.loop_exit678:                               ; preds = %polly.loop_exit684
  %233 = mul nsw i64 %polly.indvar673, -256
  %234 = mul nuw nsw i64 %polly.indvar673, 5
  %235 = shl nsw i64 %polly.indvar673, 7
  %236 = or i64 %235, 1
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit756
  %polly.indvar_next674 = add nuw nsw i64 %polly.indvar673, 1
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, -256
  %indvars.iv.next1101 = add nsw i64 %indvars.iv1100, -6
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 6
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -6
  %exitcond1123.not = icmp eq i64 %polly.indvar_next674, 5
  br i1 %exitcond1123.not, label %polly.loop_exit672, label %polly.loop_header670

polly.loop_header676:                             ; preds = %polly.loop_exit684, %polly.loop_header670
  %polly.indvar679 = phi i64 [ 0, %polly.loop_header670 ], [ %polly.indvar_next680, %polly.loop_exit684 ]
  %237 = add nuw nsw i64 %polly.indvar679, %229
  %polly.access.mul.Packed_MemRef_call2565 = mul nuw nsw i64 %polly.indvar679, 1200
  br label %polly.loop_header682

polly.loop_exit684:                               ; preds = %polly.loop_header682
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next680, 50
  br i1 %exitcond1097.not, label %polly.loop_exit678, label %polly.loop_header676

polly.loop_header682:                             ; preds = %polly.loop_header682, %polly.loop_header676
  %polly.indvar685 = phi i64 [ 0, %polly.loop_header676 ], [ %polly.indvar_next686, %polly.loop_header682 ]
  %238 = add nuw nsw i64 %polly.indvar685, %232
  %polly.access.mul.call2689 = mul nuw nsw i64 %238, 1000
  %polly.access.add.call2690 = add nuw nsw i64 %237, %polly.access.mul.call2689
  %polly.access.call2691 = getelementptr double, double* %polly.access.cast.call2807, i64 %polly.access.add.call2690
  %polly.access.call2691.load = load double, double* %polly.access.call2691, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2565 = add nuw nsw i64 %polly.indvar685, %polly.access.mul.Packed_MemRef_call2565
  %polly.access.Packed_MemRef_call2565 = getelementptr double, double* %Packed_MemRef_call2565, i64 %polly.access.add.Packed_MemRef_call2565
  store double %polly.access.call2691.load, double* %polly.access.Packed_MemRef_call2565, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next686, %indvars.iv1094
  br i1 %exitcond1096.not, label %polly.loop_exit684, label %polly.loop_header682

polly.loop_header692:                             ; preds = %polly.loop_exit756, %polly.loop_exit678
  %indvar1284 = phi i64 [ %indvar.next1285, %polly.loop_exit756 ], [ 0, %polly.loop_exit678 ]
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit756 ], [ %indvars.iv1113, %polly.loop_exit678 ]
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit756 ], [ %indvars.iv1108, %polly.loop_exit678 ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit756 ], [ %indvars.iv1100, %polly.loop_exit678 ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit756 ], [ %234, %polly.loop_exit678 ]
  %239 = mul nsw i64 %indvar1284, -50
  %240 = add i64 %230, %239
  %smax1286 = call i64 @llvm.smax.i64(i64 %240, i64 0)
  %241 = mul nuw nsw i64 %indvar1284, 50
  %242 = add i64 %231, %241
  %243 = add i64 %smax1286, %242
  %smax1112 = call i64 @llvm.smax.i64(i64 %indvars.iv1110, i64 0)
  %244 = add i64 %smax1112, %indvars.iv1115
  %245 = mul nuw nsw i64 %polly.indvar695, 25
  %.not1001 = icmp ult i64 %245, %236
  br i1 %.not1001, label %polly.loop_header735, label %polly.loop_header702.preheader

polly.loop_header702.preheader:                   ; preds = %polly.loop_header692
  %246 = mul nuw nsw i64 %polly.indvar695, 50
  %247 = add nsw i64 %246, %233
  %248 = add nsw i64 %247, -1
  %.inv1002 = icmp sgt i64 %247, 255
  %249 = select i1 %.inv1002, i64 255, i64 %248
  %polly.loop_guard712 = icmp sgt i64 %249, -1
  %250 = add nsw i64 %247, 49
  br i1 %polly.loop_guard712, label %polly.loop_header702.us, label %polly.loop_header702

polly.loop_header702.us:                          ; preds = %polly.loop_header702.preheader, %polly.loop_exit723.us
  %polly.indvar705.us = phi i64 [ %polly.indvar_next706.us, %polly.loop_exit723.us ], [ 0, %polly.loop_header702.preheader ]
  %251 = add nuw nsw i64 %polly.indvar705.us, %229
  %polly.access.mul.Packed_MemRef_call1563.us = mul nuw nsw i64 %polly.indvar705.us, 1200
  br label %polly.loop_header709.us

polly.loop_header709.us:                          ; preds = %polly.loop_header702.us, %polly.loop_header709.us
  %polly.indvar713.us = phi i64 [ %polly.indvar_next714.us, %polly.loop_header709.us ], [ 0, %polly.loop_header702.us ]
  %252 = add nuw nsw i64 %polly.indvar713.us, %232
  %polly.access.mul.call1717.us = mul nuw nsw i64 %252, 1000
  %polly.access.add.call1718.us = add nuw nsw i64 %251, %polly.access.mul.call1717.us
  %polly.access.call1719.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1718.us
  %polly.access.call1719.load.us = load double, double* %polly.access.call1719.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1563.us = add nuw nsw i64 %polly.indvar713.us, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563.us = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563.us
  store double %polly.access.call1719.load.us, double* %polly.access.Packed_MemRef_call1563.us, align 8
  %polly.indvar_next714.us = add nuw i64 %polly.indvar713.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar713.us, %249
  br i1 %exitcond1099.not, label %polly.loop_header721.us, label %polly.loop_header709.us

polly.loop_header721.us:                          ; preds = %polly.loop_header709.us, %polly.loop_header721.us
  %polly.indvar725.us = phi i64 [ %polly.indvar_next726.us, %polly.loop_header721.us ], [ %247, %polly.loop_header709.us ]
  %253 = add nsw i64 %polly.indvar725.us, %232
  %polly.access.mul.call1729.us = mul nuw nsw i64 %253, 1000
  %polly.access.add.call1730.us = add nuw nsw i64 %251, %polly.access.mul.call1729.us
  %polly.access.call1731.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us
  %polly.access.call1731.load.us = load double, double* %polly.access.call1731.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1563733.us = add nsw i64 %polly.indvar725.us, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us
  store double %polly.access.call1731.load.us, double* %polly.access.Packed_MemRef_call1563734.us, align 8
  %polly.indvar_next726.us = add nsw i64 %polly.indvar725.us, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next726.us, %indvars.iv1102
  br i1 %exitcond1104.not, label %polly.loop_exit723.us, label %polly.loop_header721.us

polly.loop_exit723.us:                            ; preds = %polly.loop_header721.us
  %polly.indvar_next706.us = add nuw nsw i64 %polly.indvar705.us, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next706.us, 50
  br i1 %exitcond1105.not, label %polly.loop_preheader755, label %polly.loop_header702.us

polly.loop_exit756:                               ; preds = %polly.loop_exit762
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next1103 = add nuw nsw i64 %indvars.iv1102, 50
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -50
  %indvars.iv.next1116 = add nsw i64 %indvars.iv1115, 50
  %exitcond1122.not = icmp eq i64 %polly.indvar_next696, 24
  %indvar.next1285 = add i64 %indvar1284, 1
  br i1 %exitcond1122.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header702:                             ; preds = %polly.loop_header702.preheader, %polly.loop_exit723
  %polly.indvar705 = phi i64 [ %polly.indvar_next706, %polly.loop_exit723 ], [ 0, %polly.loop_header702.preheader ]
  %254 = add nuw nsw i64 %polly.indvar705, %229
  %polly.access.mul.Packed_MemRef_call1563732 = mul nuw nsw i64 %polly.indvar705, 1200
  br label %polly.loop_header721

polly.loop_exit723:                               ; preds = %polly.loop_header721
  %polly.indvar_next706 = add nuw nsw i64 %polly.indvar705, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next706, 50
  br i1 %exitcond1098.not, label %polly.loop_preheader755, label %polly.loop_header702

polly.loop_header721:                             ; preds = %polly.loop_header702, %polly.loop_header721
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_header721 ], [ %247, %polly.loop_header702 ]
  %255 = add nsw i64 %polly.indvar725, %232
  %polly.access.mul.call1729 = mul nuw nsw i64 %255, 1000
  %polly.access.add.call1730 = add nuw nsw i64 %254, %polly.access.mul.call1729
  %polly.access.call1731 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730
  %polly.access.call1731.load = load double, double* %polly.access.call1731, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1563733 = add nsw i64 %polly.indvar725, %polly.access.mul.Packed_MemRef_call1563732
  %polly.access.Packed_MemRef_call1563734 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733
  store double %polly.access.call1731.load, double* %polly.access.Packed_MemRef_call1563734, align 8
  %polly.indvar_next726 = add nsw i64 %polly.indvar725, 1
  %polly.loop_cond727.not.not = icmp slt i64 %polly.indvar725, %250
  br i1 %polly.loop_cond727.not.not, label %polly.loop_header721, label %polly.loop_exit723

polly.loop_header735:                             ; preds = %polly.loop_header692, %polly.loop_exit743
  %polly.indvar738 = phi i64 [ %polly.indvar_next739, %polly.loop_exit743 ], [ 0, %polly.loop_header692 ]
  %256 = add nuw nsw i64 %polly.indvar738, %229
  %polly.access.mul.Packed_MemRef_call1563751 = mul nuw nsw i64 %polly.indvar738, 1200
  br label %polly.loop_header741

polly.loop_exit743:                               ; preds = %polly.loop_header741
  %polly.indvar_next739 = add nuw nsw i64 %polly.indvar738, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next739, 50
  br i1 %exitcond1107.not, label %polly.loop_preheader755.loopexit, label %polly.loop_header735

polly.loop_header741:                             ; preds = %polly.loop_header741, %polly.loop_header735
  %polly.indvar744 = phi i64 [ 0, %polly.loop_header735 ], [ %polly.indvar_next745, %polly.loop_header741 ]
  %257 = add nuw nsw i64 %polly.indvar744, %232
  %polly.access.mul.call1748 = mul nuw nsw i64 %257, 1000
  %polly.access.add.call1749 = add nuw nsw i64 %256, %polly.access.mul.call1748
  %polly.access.call1750 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1749
  %polly.access.call1750.load = load double, double* %polly.access.call1750, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1563752 = add nuw nsw i64 %polly.indvar744, %polly.access.mul.Packed_MemRef_call1563751
  %polly.access.Packed_MemRef_call1563753 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563752
  store double %polly.access.call1750.load, double* %polly.access.Packed_MemRef_call1563753, align 8
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next745, %indvars.iv1100
  br i1 %exitcond1106.not, label %polly.loop_exit743, label %polly.loop_header741

polly.loop_header754:                             ; preds = %polly.loop_exit762, %polly.loop_preheader755
  %polly.indvar757 = phi i64 [ 0, %polly.loop_preheader755 ], [ %polly.indvar_next758, %polly.loop_exit762 ]
  %polly.access.mul.Packed_MemRef_call1563774 = mul nuw nsw i64 %polly.indvar757, 1200
  br label %polly.loop_header760

polly.loop_exit762:                               ; preds = %polly.loop_exit769
  %polly.indvar_next758 = add nuw nsw i64 %polly.indvar757, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next758, 50
  br i1 %exitcond1121.not, label %polly.loop_exit756, label %polly.loop_header754

polly.loop_preheader755.loopexit:                 ; preds = %polly.loop_exit743
  %.pre = mul nuw nsw i64 %polly.indvar695, 50
  br label %polly.loop_preheader755

polly.loop_preheader755:                          ; preds = %polly.loop_exit723, %polly.loop_exit723.us, %polly.loop_preheader755.loopexit
  %.pre-phi = phi i64 [ %.pre, %polly.loop_preheader755.loopexit ], [ %246, %polly.loop_exit723.us ], [ %246, %polly.loop_exit723 ]
  %258 = sub nsw i64 %232, %.pre-phi
  %259 = icmp sgt i64 %258, 0
  %260 = select i1 %259, i64 %258, i64 0
  br label %polly.loop_header754

polly.loop_header760:                             ; preds = %polly.loop_exit769, %polly.loop_header754
  %indvar1287 = phi i64 [ %indvar.next1288, %polly.loop_exit769 ], [ 0, %polly.loop_header754 ]
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit769 ], [ %244, %polly.loop_header754 ]
  %polly.indvar763 = phi i64 [ %polly.indvar_next764, %polly.loop_exit769 ], [ %260, %polly.loop_header754 ]
  %261 = add i64 %243, %indvar1287
  %smin1289 = call i64 @llvm.smin.i64(i64 %261, i64 255)
  %262 = add nsw i64 %smin1289, 1
  %smin1119 = call i64 @llvm.smin.i64(i64 %indvars.iv1117, i64 255)
  %263 = add nuw i64 %polly.indvar763, %.pre-phi
  %264 = add i64 %263, %233
  %polly.loop_guard7701173 = icmp sgt i64 %264, -1
  br i1 %polly.loop_guard7701173, label %polly.loop_header767.preheader, label %polly.loop_exit769

polly.loop_header767.preheader:                   ; preds = %polly.loop_header760
  %polly.access.add.Packed_MemRef_call2565779 = add nsw i64 %polly.access.mul.Packed_MemRef_call1563774, %264
  %polly.access.Packed_MemRef_call2565780 = getelementptr double, double* %Packed_MemRef_call2565, i64 %polly.access.add.Packed_MemRef_call2565779
  %_p_scalar_781 = load double, double* %polly.access.Packed_MemRef_call2565780, align 8
  %polly.access.Packed_MemRef_call1563788 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call2565779
  %_p_scalar_789 = load double, double* %polly.access.Packed_MemRef_call1563788, align 8
  %265 = mul i64 %263, 9600
  %min.iters.check1290 = icmp ult i64 %262, 4
  br i1 %min.iters.check1290, label %polly.loop_header767.preheader1415, label %vector.ph1291

vector.ph1291:                                    ; preds = %polly.loop_header767.preheader
  %n.vec1293 = and i64 %262, -4
  %broadcast.splatinsert1299 = insertelement <4 x double> poison, double %_p_scalar_781, i32 0
  %broadcast.splat1300 = shufflevector <4 x double> %broadcast.splatinsert1299, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1302 = insertelement <4 x double> poison, double %_p_scalar_789, i32 0
  %broadcast.splat1303 = shufflevector <4 x double> %broadcast.splatinsert1302, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %vector.ph1291
  %index1294 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1295, %vector.body1283 ]
  %266 = add nuw nsw i64 %index1294, %232
  %267 = add nuw nsw i64 %index1294, %polly.access.mul.Packed_MemRef_call1563774
  %268 = getelementptr double, double* %Packed_MemRef_call1563, i64 %267
  %269 = bitcast double* %268 to <4 x double>*
  %wide.load1298 = load <4 x double>, <4 x double>* %269, align 8
  %270 = fmul fast <4 x double> %broadcast.splat1300, %wide.load1298
  %271 = getelementptr double, double* %Packed_MemRef_call2565, i64 %267
  %272 = bitcast double* %271 to <4 x double>*
  %wide.load1301 = load <4 x double>, <4 x double>* %272, align 8
  %273 = fmul fast <4 x double> %broadcast.splat1303, %wide.load1301
  %274 = shl i64 %266, 3
  %275 = add i64 %274, %265
  %276 = getelementptr i8, i8* %call, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  %wide.load1304 = load <4 x double>, <4 x double>* %277, align 8, !alias.scope !98, !noalias !100
  %278 = fadd fast <4 x double> %273, %270
  %279 = fmul fast <4 x double> %278, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %280 = fadd fast <4 x double> %279, %wide.load1304
  %281 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %280, <4 x double>* %281, align 8, !alias.scope !98, !noalias !100
  %index.next1295 = add i64 %index1294, 4
  %282 = icmp eq i64 %index.next1295, %n.vec1293
  br i1 %282, label %middle.block1281, label %vector.body1283, !llvm.loop !109

middle.block1281:                                 ; preds = %vector.body1283
  %cmp.n1297 = icmp eq i64 %262, %n.vec1293
  br i1 %cmp.n1297, label %polly.loop_exit769, label %polly.loop_header767.preheader1415

polly.loop_header767.preheader1415:               ; preds = %polly.loop_header767.preheader, %middle.block1281
  %polly.indvar771.ph = phi i64 [ 0, %polly.loop_header767.preheader ], [ %n.vec1293, %middle.block1281 ]
  br label %polly.loop_header767

polly.loop_exit769:                               ; preds = %polly.loop_header767, %middle.block1281, %polly.loop_header760
  %polly.indvar_next764 = add nuw nsw i64 %polly.indvar763, 1
  %polly.loop_cond765 = icmp ult i64 %polly.indvar763, 49
  %indvars.iv.next1118 = add i64 %indvars.iv1117, 1
  %indvar.next1288 = add i64 %indvar1287, 1
  br i1 %polly.loop_cond765, label %polly.loop_header760, label %polly.loop_exit762

polly.loop_header767:                             ; preds = %polly.loop_header767.preheader1415, %polly.loop_header767
  %polly.indvar771 = phi i64 [ %polly.indvar_next772, %polly.loop_header767 ], [ %polly.indvar771.ph, %polly.loop_header767.preheader1415 ]
  %283 = add nuw nsw i64 %polly.indvar771, %232
  %polly.access.add.Packed_MemRef_call1563775 = add nuw nsw i64 %polly.indvar771, %polly.access.mul.Packed_MemRef_call1563774
  %polly.access.Packed_MemRef_call1563776 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563775
  %_p_scalar_777 = load double, double* %polly.access.Packed_MemRef_call1563776, align 8
  %p_mul27.i = fmul fast double %_p_scalar_781, %_p_scalar_777
  %polly.access.Packed_MemRef_call2565784 = getelementptr double, double* %Packed_MemRef_call2565, i64 %polly.access.add.Packed_MemRef_call1563775
  %_p_scalar_785 = load double, double* %polly.access.Packed_MemRef_call2565784, align 8
  %p_mul37.i = fmul fast double %_p_scalar_789, %_p_scalar_785
  %284 = shl i64 %283, 3
  %285 = add i64 %284, %265
  %scevgep790 = getelementptr i8, i8* %call, i64 %285
  %scevgep790791 = bitcast i8* %scevgep790 to double*
  %_p_scalar_792 = load double, double* %scevgep790791, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_792
  store double %p_add42.i, double* %scevgep790791, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next772 = add nuw nsw i64 %polly.indvar771, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar771, %smin1119
  br i1 %exitcond1120.not, label %polly.loop_exit769, label %polly.loop_header767, !llvm.loop !110

polly.loop_header919:                             ; preds = %entry, %polly.loop_exit927
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit927 ], [ 0, %entry ]
  %polly.indvar922 = phi i64 [ %polly.indvar_next923, %polly.loop_exit927 ], [ 0, %entry ]
  %smin1153 = call i64 @llvm.smin.i64(i64 %indvars.iv1151, i64 -1168)
  %286 = shl nsw i64 %polly.indvar922, 5
  %287 = add nsw i64 %smin1153, 1199
  br label %polly.loop_header925

polly.loop_exit927:                               ; preds = %polly.loop_exit933
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %indvars.iv.next1152 = add nsw i64 %indvars.iv1151, -32
  %exitcond1156.not = icmp eq i64 %polly.indvar_next923, 38
  br i1 %exitcond1156.not, label %polly.loop_header946, label %polly.loop_header919

polly.loop_header925:                             ; preds = %polly.loop_exit933, %polly.loop_header919
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit933 ], [ 0, %polly.loop_header919 ]
  %polly.indvar928 = phi i64 [ %polly.indvar_next929, %polly.loop_exit933 ], [ 0, %polly.loop_header919 ]
  %288 = mul nsw i64 %polly.indvar928, -32
  %smin1210 = call i64 @llvm.smin.i64(i64 %288, i64 -1168)
  %289 = add nsw i64 %smin1210, 1200
  %smin1149 = call i64 @llvm.smin.i64(i64 %indvars.iv1147, i64 -1168)
  %290 = shl nsw i64 %polly.indvar928, 5
  %291 = add nsw i64 %smin1149, 1199
  br label %polly.loop_header931

polly.loop_exit933:                               ; preds = %polly.loop_exit939
  %polly.indvar_next929 = add nuw nsw i64 %polly.indvar928, 1
  %indvars.iv.next1148 = add nsw i64 %indvars.iv1147, -32
  %exitcond1155.not = icmp eq i64 %polly.indvar_next929, 38
  br i1 %exitcond1155.not, label %polly.loop_exit927, label %polly.loop_header925

polly.loop_header931:                             ; preds = %polly.loop_exit939, %polly.loop_header925
  %polly.indvar934 = phi i64 [ 0, %polly.loop_header925 ], [ %polly.indvar_next935, %polly.loop_exit939 ]
  %292 = add nuw nsw i64 %polly.indvar934, %286
  %293 = trunc i64 %292 to i32
  %294 = mul nuw nsw i64 %292, 9600
  %min.iters.check = icmp eq i64 %289, 0
  br i1 %min.iters.check, label %polly.loop_header937, label %vector.ph1211

vector.ph1211:                                    ; preds = %polly.loop_header931
  %broadcast.splatinsert1218 = insertelement <4 x i64> poison, i64 %290, i32 0
  %broadcast.splat1219 = shufflevector <4 x i64> %broadcast.splatinsert1218, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1220 = insertelement <4 x i32> poison, i32 %293, i32 0
  %broadcast.splat1221 = shufflevector <4 x i32> %broadcast.splatinsert1220, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1211
  %index1212 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1213, %vector.body1209 ]
  %vec.ind1216 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1211 ], [ %vec.ind.next1217, %vector.body1209 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1216, %broadcast.splat1219
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1221, %296
  %298 = add <4 x i32> %297, <i32 3, i32 3, i32 3, i32 3>
  %299 = urem <4 x i32> %298, <i32 1200, i32 1200, i32 1200, i32 1200>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add nuw nsw i64 %303, %294
  %305 = getelementptr i8, i8* %call, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !111, !noalias !113
  %index.next1213 = add i64 %index1212, 4
  %vec.ind.next1217 = add <4 x i64> %vec.ind1216, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1213, %289
  br i1 %307, label %polly.loop_exit939, label %vector.body1209, !llvm.loop !116

polly.loop_exit939:                               ; preds = %vector.body1209, %polly.loop_header937
  %polly.indvar_next935 = add nuw nsw i64 %polly.indvar934, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar934, %287
  br i1 %exitcond1154.not, label %polly.loop_exit933, label %polly.loop_header931

polly.loop_header937:                             ; preds = %polly.loop_header931, %polly.loop_header937
  %polly.indvar940 = phi i64 [ %polly.indvar_next941, %polly.loop_header937 ], [ 0, %polly.loop_header931 ]
  %308 = add nuw nsw i64 %polly.indvar940, %290
  %309 = trunc i64 %308 to i32
  %310 = mul i32 %309, %293
  %311 = add i32 %310, 3
  %312 = urem i32 %311, 1200
  %p_conv31.i = sitofp i32 %312 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %313 = shl i64 %308, 3
  %314 = add nuw nsw i64 %313, %294
  %scevgep943 = getelementptr i8, i8* %call, i64 %314
  %scevgep943944 = bitcast i8* %scevgep943 to double*
  store double %p_div33.i, double* %scevgep943944, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next941 = add nuw nsw i64 %polly.indvar940, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar940, %291
  br i1 %exitcond1150.not, label %polly.loop_exit939, label %polly.loop_header937, !llvm.loop !117

polly.loop_header946:                             ; preds = %polly.loop_exit927, %polly.loop_exit954
  %indvars.iv1141 = phi i64 [ %indvars.iv.next1142, %polly.loop_exit954 ], [ 0, %polly.loop_exit927 ]
  %polly.indvar949 = phi i64 [ %polly.indvar_next950, %polly.loop_exit954 ], [ 0, %polly.loop_exit927 ]
  %smin1143 = call i64 @llvm.smin.i64(i64 %indvars.iv1141, i64 -1168)
  %315 = shl nsw i64 %polly.indvar949, 5
  %316 = add nsw i64 %smin1143, 1199
  br label %polly.loop_header952

polly.loop_exit954:                               ; preds = %polly.loop_exit960
  %polly.indvar_next950 = add nuw nsw i64 %polly.indvar949, 1
  %indvars.iv.next1142 = add nsw i64 %indvars.iv1141, -32
  %exitcond1146.not = icmp eq i64 %polly.indvar_next950, 38
  br i1 %exitcond1146.not, label %polly.loop_header972, label %polly.loop_header946

polly.loop_header952:                             ; preds = %polly.loop_exit960, %polly.loop_header946
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit960 ], [ 0, %polly.loop_header946 ]
  %polly.indvar955 = phi i64 [ %polly.indvar_next956, %polly.loop_exit960 ], [ 0, %polly.loop_header946 ]
  %317 = mul nsw i64 %polly.indvar955, -32
  %smin1225 = call i64 @llvm.smin.i64(i64 %317, i64 -968)
  %318 = add nsw i64 %smin1225, 1000
  %smin1139 = call i64 @llvm.smin.i64(i64 %indvars.iv1137, i64 -968)
  %319 = shl nsw i64 %polly.indvar955, 5
  %320 = add nsw i64 %smin1139, 999
  br label %polly.loop_header958

polly.loop_exit960:                               ; preds = %polly.loop_exit966
  %polly.indvar_next956 = add nuw nsw i64 %polly.indvar955, 1
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, -32
  %exitcond1145.not = icmp eq i64 %polly.indvar_next956, 32
  br i1 %exitcond1145.not, label %polly.loop_exit954, label %polly.loop_header952

polly.loop_header958:                             ; preds = %polly.loop_exit966, %polly.loop_header952
  %polly.indvar961 = phi i64 [ 0, %polly.loop_header952 ], [ %polly.indvar_next962, %polly.loop_exit966 ]
  %321 = add nuw nsw i64 %polly.indvar961, %315
  %322 = trunc i64 %321 to i32
  %323 = mul nuw nsw i64 %321, 8000
  %min.iters.check1226 = icmp eq i64 %318, 0
  br i1 %min.iters.check1226, label %polly.loop_header964, label %vector.ph1227

vector.ph1227:                                    ; preds = %polly.loop_header958
  %broadcast.splatinsert1236 = insertelement <4 x i64> poison, i64 %319, i32 0
  %broadcast.splat1237 = shufflevector <4 x i64> %broadcast.splatinsert1236, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1227
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1231, %vector.body1224 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1227 ], [ %vec.ind.next1235, %vector.body1224 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1234, %broadcast.splat1237
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1239, %325
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 1000, i32 1000, i32 1000, i32 1000>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add nuw nsw i64 %332, %323
  %334 = getelementptr i8, i8* %call2, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !115, !noalias !118
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1231, %318
  br i1 %336, label %polly.loop_exit966, label %vector.body1224, !llvm.loop !119

polly.loop_exit966:                               ; preds = %vector.body1224, %polly.loop_header964
  %polly.indvar_next962 = add nuw nsw i64 %polly.indvar961, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar961, %316
  br i1 %exitcond1144.not, label %polly.loop_exit960, label %polly.loop_header958

polly.loop_header964:                             ; preds = %polly.loop_header958, %polly.loop_header964
  %polly.indvar967 = phi i64 [ %polly.indvar_next968, %polly.loop_header964 ], [ 0, %polly.loop_header958 ]
  %337 = add nuw nsw i64 %polly.indvar967, %319
  %338 = trunc i64 %337 to i32
  %339 = mul i32 %338, %322
  %340 = add i32 %339, 2
  %341 = urem i32 %340, 1000
  %p_conv10.i = sitofp i32 %341 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %342 = shl i64 %337, 3
  %343 = add nuw nsw i64 %342, %323
  %scevgep970 = getelementptr i8, i8* %call2, i64 %343
  %scevgep970971 = bitcast i8* %scevgep970 to double*
  store double %p_div12.i, double* %scevgep970971, align 8, !alias.scope !115, !noalias !118
  %polly.indvar_next968 = add nuw nsw i64 %polly.indvar967, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar967, %320
  br i1 %exitcond1140.not, label %polly.loop_exit966, label %polly.loop_header964, !llvm.loop !120

polly.loop_header972:                             ; preds = %polly.loop_exit954, %polly.loop_exit980
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit980 ], [ 0, %polly.loop_exit954 ]
  %polly.indvar975 = phi i64 [ %polly.indvar_next976, %polly.loop_exit980 ], [ 0, %polly.loop_exit954 ]
  %smin1133 = call i64 @llvm.smin.i64(i64 %indvars.iv1131, i64 -1168)
  %344 = shl nsw i64 %polly.indvar975, 5
  %345 = add nsw i64 %smin1133, 1199
  br label %polly.loop_header978

polly.loop_exit980:                               ; preds = %polly.loop_exit986
  %polly.indvar_next976 = add nuw nsw i64 %polly.indvar975, 1
  %indvars.iv.next1132 = add nsw i64 %indvars.iv1131, -32
  %exitcond1136.not = icmp eq i64 %polly.indvar_next976, 38
  br i1 %exitcond1136.not, label %init_array.exit, label %polly.loop_header972

polly.loop_header978:                             ; preds = %polly.loop_exit986, %polly.loop_header972
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit986 ], [ 0, %polly.loop_header972 ]
  %polly.indvar981 = phi i64 [ %polly.indvar_next982, %polly.loop_exit986 ], [ 0, %polly.loop_header972 ]
  %346 = mul nsw i64 %polly.indvar981, -32
  %smin1243 = call i64 @llvm.smin.i64(i64 %346, i64 -968)
  %347 = add nsw i64 %smin1243, 1000
  %smin1129 = call i64 @llvm.smin.i64(i64 %indvars.iv1127, i64 -968)
  %348 = shl nsw i64 %polly.indvar981, 5
  %349 = add nsw i64 %smin1129, 999
  br label %polly.loop_header984

polly.loop_exit986:                               ; preds = %polly.loop_exit992
  %polly.indvar_next982 = add nuw nsw i64 %polly.indvar981, 1
  %indvars.iv.next1128 = add nsw i64 %indvars.iv1127, -32
  %exitcond1135.not = icmp eq i64 %polly.indvar_next982, 32
  br i1 %exitcond1135.not, label %polly.loop_exit980, label %polly.loop_header978

polly.loop_header984:                             ; preds = %polly.loop_exit992, %polly.loop_header978
  %polly.indvar987 = phi i64 [ 0, %polly.loop_header978 ], [ %polly.indvar_next988, %polly.loop_exit992 ]
  %350 = add nuw nsw i64 %polly.indvar987, %344
  %351 = trunc i64 %350 to i32
  %352 = mul nuw nsw i64 %350, 8000
  %min.iters.check1244 = icmp eq i64 %347, 0
  br i1 %min.iters.check1244, label %polly.loop_header990, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header984
  %broadcast.splatinsert1254 = insertelement <4 x i64> poison, i64 %348, i32 0
  %broadcast.splat1255 = shufflevector <4 x i64> %broadcast.splatinsert1254, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1256 = insertelement <4 x i32> poison, i32 %351, i32 0
  %broadcast.splat1257 = shufflevector <4 x i32> %broadcast.splatinsert1256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1242 ]
  %vec.ind1252 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1245 ], [ %vec.ind.next1253, %vector.body1242 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1252, %broadcast.splat1255
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1257, %354
  %356 = add <4 x i32> %355, <i32 1, i32 1, i32 1, i32 1>
  %357 = urem <4 x i32> %356, <i32 1200, i32 1200, i32 1200, i32 1200>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add nuw nsw i64 %361, %352
  %363 = getelementptr i8, i8* %call1, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !114, !noalias !121
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1253 = add <4 x i64> %vec.ind1252, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1249, %347
  br i1 %365, label %polly.loop_exit992, label %vector.body1242, !llvm.loop !122

polly.loop_exit992:                               ; preds = %vector.body1242, %polly.loop_header990
  %polly.indvar_next988 = add nuw nsw i64 %polly.indvar987, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar987, %345
  br i1 %exitcond1134.not, label %polly.loop_exit986, label %polly.loop_header984

polly.loop_header990:                             ; preds = %polly.loop_header984, %polly.loop_header990
  %polly.indvar993 = phi i64 [ %polly.indvar_next994, %polly.loop_header990 ], [ 0, %polly.loop_header984 ]
  %366 = add nuw nsw i64 %polly.indvar993, %348
  %367 = trunc i64 %366 to i32
  %368 = mul i32 %367, %351
  %369 = add i32 %368, 1
  %370 = urem i32 %369, 1200
  %p_conv.i = sitofp i32 %370 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %371 = shl i64 %366, 3
  %372 = add nuw nsw i64 %371, %352
  %scevgep997 = getelementptr i8, i8* %call1, i64 %372
  %scevgep997998 = bitcast i8* %scevgep997 to double*
  store double %p_div.i, double* %scevgep997998, align 8, !alias.scope !114, !noalias !121
  %polly.indvar_next994 = add nuw nsw i64 %polly.indvar993, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar993, %349
  br i1 %exitcond1130.not, label %polly.loop_exit992, label %polly.loop_header990, !llvm.loop !123
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
!35 = !{!"llvm.loop.tile.size", i32 50}
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
!47 = distinct !{!47, !12, !24, !48, !49, !50, !35, !51, !60}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !24, !53, !54, !55, !56, !57}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.interchange.followup_interchanged", !58}
!58 = distinct !{!58, !12, !24, !53, !44, !59, !46}
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
