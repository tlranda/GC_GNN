; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1696.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1696.c"
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
  %scevgep1154 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1153 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1152 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1151 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1151, %scevgep1154
  %bound1 = icmp ult i8* %scevgep1153, %scevgep1152
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
  br i1 %exitcond18.not.i, label %vector.ph1158, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1158:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1165 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1166 = shufflevector <4 x i64> %broadcast.splatinsert1165, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %vector.ph1158
  %index1159 = phi i64 [ 0, %vector.ph1158 ], [ %index.next1160, %vector.body1157 ]
  %vec.ind1163 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1158 ], [ %vec.ind.next1164, %vector.body1157 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1163, %broadcast.splat1166
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1159
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1164 = add <4 x i64> %vec.ind1163, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1160, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1157, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1157
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1158, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1220 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1220, label %for.body3.i46.preheader1654, label %vector.ph1221

vector.ph1221:                                    ; preds = %for.body3.i46.preheader
  %n.vec1223 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %vector.ph1221
  %index1224 = phi i64 [ 0, %vector.ph1221 ], [ %index.next1225, %vector.body1219 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1224
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1225 = add i64 %index1224, 4
  %46 = icmp eq i64 %index.next1225, %n.vec1223
  br i1 %46, label %middle.block1217, label %vector.body1219, !llvm.loop !18

middle.block1217:                                 ; preds = %vector.body1219
  %cmp.n1227 = icmp eq i64 %indvars.iv21.i, %n.vec1223
  br i1 %cmp.n1227, label %for.inc6.i, label %for.body3.i46.preheader1654

for.body3.i46.preheader1654:                      ; preds = %for.body3.i46.preheader, %middle.block1217
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1223, %middle.block1217 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1654, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1654 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1217, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

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
  %min.iters.check1363 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1363, label %for.body3.i60.preheader1653, label %vector.ph1364

vector.ph1364:                                    ; preds = %for.body3.i60.preheader
  %n.vec1366 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1362

vector.body1362:                                  ; preds = %vector.body1362, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1368, %vector.body1362 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1367
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1371, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1368 = add i64 %index1367, 4
  %57 = icmp eq i64 %index.next1368, %n.vec1366
  br i1 %57, label %middle.block1360, label %vector.body1362, !llvm.loop !57

middle.block1360:                                 ; preds = %vector.body1362
  %cmp.n1370 = icmp eq i64 %indvars.iv21.i52, %n.vec1366
  br i1 %cmp.n1370, label %for.inc6.i63, label %for.body3.i60.preheader1653

for.body3.i60.preheader1653:                      ; preds = %for.body3.i60.preheader, %middle.block1360
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1366, %middle.block1360 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1653, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1653 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1360, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

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
  %min.iters.check1509 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1509, label %for.body3.i99.preheader1652, label %vector.ph1510

vector.ph1510:                                    ; preds = %for.body3.i99.preheader
  %n.vec1512 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %vector.ph1510
  %index1513 = phi i64 [ 0, %vector.ph1510 ], [ %index.next1514, %vector.body1508 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1513
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1517 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1517, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1514 = add i64 %index1513, 4
  %68 = icmp eq i64 %index.next1514, %n.vec1512
  br i1 %68, label %middle.block1506, label %vector.body1508, !llvm.loop !59

middle.block1506:                                 ; preds = %vector.body1508
  %cmp.n1516 = icmp eq i64 %indvars.iv21.i91, %n.vec1512
  br i1 %cmp.n1516, label %for.inc6.i102, label %for.body3.i99.preheader1652

for.body3.i99.preheader1652:                      ; preds = %for.body3.i99.preheader, %middle.block1506
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1512, %middle.block1506 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1652, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1652 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1506, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1521 = phi i64 [ %indvar.next1522, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1521, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1523 = icmp ult i64 %88, 4
  br i1 %min.iters.check1523, label %polly.loop_header192.preheader, label %vector.ph1524

vector.ph1524:                                    ; preds = %polly.loop_header
  %n.vec1526 = and i64 %88, -4
  br label %vector.body1520

vector.body1520:                                  ; preds = %vector.body1520, %vector.ph1524
  %index1527 = phi i64 [ 0, %vector.ph1524 ], [ %index.next1528, %vector.body1520 ]
  %90 = shl nuw nsw i64 %index1527, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1531 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1531, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1528 = add i64 %index1527, 4
  %95 = icmp eq i64 %index.next1528, %n.vec1526
  br i1 %95, label %middle.block1518, label %vector.body1520, !llvm.loop !72

middle.block1518:                                 ; preds = %vector.body1520
  %cmp.n1530 = icmp eq i64 %88, %n.vec1526
  br i1 %cmp.n1530, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1518
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1526, %middle.block1518 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1518
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1522 = add i64 %indvar1521, 1
  br i1 %exitcond1057.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1056.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1056.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1055.not, label %polly.loop_header216.preheader, label %polly.loop_header200

polly.loop_header216.preheader:                   ; preds = %polly.loop_exit208
  %scevgep1560 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1561 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1593 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1594 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1626 = getelementptr i8, i8* %malloccall, i64 8
  br label %polly.loop_header216

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1054.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit224 ], [ 2, %polly.loop_header216.preheader ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %97 = mul nsw i64 %polly.indvar219, -20
  %98 = mul nuw nsw i64 %polly.indvar219, 20
  %99 = mul nuw nsw i64 %polly.indvar219, 20
  %100 = mul nsw i64 %polly.indvar219, -20
  %101 = mul nsw i64 %polly.indvar219, -20
  %102 = mul nuw nsw i64 %polly.indvar219, 20
  %103 = mul nuw nsw i64 %polly.indvar219, 20
  %104 = mul nsw i64 %polly.indvar219, -20
  %105 = mul nsw i64 %polly.indvar219, -20
  %106 = mul nuw nsw i64 %polly.indvar219, 20
  %107 = mul nuw nsw i64 %polly.indvar219, 20
  %108 = mul nsw i64 %polly.indvar219, -20
  %109 = mul nsw i64 %polly.indvar219, -20
  %110 = mul nuw nsw i64 %polly.indvar219, 20
  %111 = lshr i64 %polly.indvar219, 2
  %112 = add nuw i64 %indvars.iv1049, %111
  %113 = mul nsw i64 %polly.indvar219, -20
  %114 = mul nuw nsw i64 %polly.indvar219, 20
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 20
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next220, 60
  br i1 %exitcond1053.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %115 = shl nsw i64 %polly.indvar225, 2
  %116 = or i64 %115, 1
  %117 = or i64 %115, 2
  %118 = or i64 %115, 3
  %polly.access.mul.Packed_MemRef_call2283.us = mul nsw i64 %polly.indvar225, 4800
  %119 = or i64 %115, 1
  %polly.access.mul.Packed_MemRef_call2283.us.1 = mul nuw nsw i64 %119, 1200
  %120 = or i64 %115, 2
  %polly.access.mul.Packed_MemRef_call2283.us.2 = mul nuw nsw i64 %120, 1200
  %121 = or i64 %115, 3
  %polly.access.mul.Packed_MemRef_call2283.us.3 = mul nuw nsw i64 %121, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1052.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit236 ], [ %indvars.iv1038, %polly.loop_header222 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %122 = shl nuw nsw i64 %polly.indvar231, 4
  %123 = add i64 %97, %122
  %smax1635 = call i64 @llvm.smax.i64(i64 %123, i64 0)
  %124 = mul nsw i64 %polly.indvar231, -16
  %125 = add i64 %98, %124
  %126 = add i64 %smax1635, %125
  %127 = shl nuw nsw i64 %polly.indvar231, 7
  %128 = shl nuw nsw i64 %polly.indvar231, 4
  %129 = add i64 %100, %128
  %smax1621 = call i64 @llvm.smax.i64(i64 %129, i64 0)
  %130 = add nuw i64 %99, %smax1621
  %131 = mul nsw i64 %130, 9600
  %132 = add i64 %127, %131
  %133 = or i64 %127, 8
  %134 = add i64 %133, %131
  %135 = mul nsw i64 %polly.indvar231, -16
  %136 = add i64 %99, %135
  %137 = add i64 %smax1621, %136
  %138 = shl nuw nsw i64 %polly.indvar231, 4
  %139 = add i64 %101, %138
  %smax1603 = call i64 @llvm.smax.i64(i64 %139, i64 0)
  %140 = mul nsw i64 %polly.indvar231, -16
  %141 = add i64 %102, %140
  %142 = add i64 %smax1603, %141
  %143 = shl nuw nsw i64 %polly.indvar231, 7
  %144 = shl nuw nsw i64 %polly.indvar231, 4
  %145 = add i64 %104, %144
  %smax1588 = call i64 @llvm.smax.i64(i64 %145, i64 0)
  %146 = add nuw i64 %103, %smax1588
  %147 = mul nsw i64 %146, 9600
  %148 = add i64 %143, %147
  %149 = or i64 %143, 8
  %150 = add i64 %149, %147
  %151 = mul nsw i64 %polly.indvar231, -16
  %152 = add i64 %103, %151
  %153 = add i64 %smax1588, %152
  %154 = shl nuw nsw i64 %polly.indvar231, 4
  %155 = add i64 %105, %154
  %smax1570 = call i64 @llvm.smax.i64(i64 %155, i64 0)
  %156 = mul nsw i64 %polly.indvar231, -16
  %157 = add i64 %106, %156
  %158 = add i64 %smax1570, %157
  %159 = shl nuw nsw i64 %polly.indvar231, 7
  %160 = shl nuw nsw i64 %polly.indvar231, 4
  %161 = add i64 %108, %160
  %smax1555 = call i64 @llvm.smax.i64(i64 %161, i64 0)
  %162 = add nuw i64 %107, %smax1555
  %163 = mul nsw i64 %162, 9600
  %164 = add i64 %159, %163
  %165 = or i64 %159, 8
  %166 = add i64 %165, %163
  %167 = mul nsw i64 %polly.indvar231, -16
  %168 = add i64 %107, %167
  %169 = add i64 %smax1555, %168
  %170 = shl nuw nsw i64 %polly.indvar231, 4
  %171 = add i64 %109, %170
  %smax1535 = call i64 @llvm.smax.i64(i64 %171, i64 0)
  %172 = mul nsw i64 %polly.indvar231, -16
  %173 = add i64 %110, %172
  %174 = add i64 %smax1535, %173
  %175 = shl nsw i64 %polly.indvar231, 4
  %176 = add nsw i64 %175, %113
  %177 = icmp sgt i64 %176, 0
  %178 = select i1 %177, i64 %176, i64 0
  %polly.loop_guard = icmp slt i64 %178, 20
  br i1 %polly.loop_guard, label %polly.loop_header234.preheader, label %polly.loop_exit236

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1036, i64 0)
  %179 = add i64 %smax, %indvars.iv1040
  %180 = sub nsw i64 %114, %175
  %181 = add nuw nsw i64 %175, 16
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 16
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -16
  %exitcond1051 = icmp eq i64 %polly.indvar_next232, %112
  br i1 %exitcond1051, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1536 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1537, %polly.loop_exit267 ]
  %indvars.iv1042 = phi i64 [ %179, %polly.loop_header234.preheader ], [ %indvars.iv.next1043, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %178, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %182 = add i64 %126, %indvar1536
  %smin1636 = call i64 @llvm.smin.i64(i64 %182, i64 15)
  %183 = add nsw i64 %smin1636, 1
  %184 = mul nuw nsw i64 %indvar1536, 9600
  %185 = add i64 %132, %184
  %scevgep1622 = getelementptr i8, i8* %call, i64 %185
  %186 = add i64 %134, %184
  %scevgep1623 = getelementptr i8, i8* %call, i64 %186
  %187 = add i64 %137, %indvar1536
  %smin1624 = call i64 @llvm.smin.i64(i64 %187, i64 15)
  %188 = shl nsw i64 %smin1624, 3
  %scevgep1625 = getelementptr i8, i8* %scevgep1623, i64 %188
  %scevgep1627 = getelementptr i8, i8* %scevgep1626, i64 %188
  %189 = add i64 %142, %indvar1536
  %smin1604 = call i64 @llvm.smin.i64(i64 %189, i64 15)
  %190 = add nsw i64 %smin1604, 1
  %191 = mul nuw nsw i64 %indvar1536, 9600
  %192 = add i64 %148, %191
  %scevgep1589 = getelementptr i8, i8* %call, i64 %192
  %193 = add i64 %150, %191
  %scevgep1590 = getelementptr i8, i8* %call, i64 %193
  %194 = add i64 %153, %indvar1536
  %smin1591 = call i64 @llvm.smin.i64(i64 %194, i64 15)
  %195 = shl nsw i64 %smin1591, 3
  %scevgep1592 = getelementptr i8, i8* %scevgep1590, i64 %195
  %scevgep1595 = getelementptr i8, i8* %scevgep1594, i64 %195
  %196 = add i64 %158, %indvar1536
  %smin1571 = call i64 @llvm.smin.i64(i64 %196, i64 15)
  %197 = add nsw i64 %smin1571, 1
  %198 = mul nuw nsw i64 %indvar1536, 9600
  %199 = add i64 %164, %198
  %scevgep1556 = getelementptr i8, i8* %call, i64 %199
  %200 = add i64 %166, %198
  %scevgep1557 = getelementptr i8, i8* %call, i64 %200
  %201 = add i64 %169, %indvar1536
  %smin1558 = call i64 @llvm.smin.i64(i64 %201, i64 15)
  %202 = shl nsw i64 %smin1558, 3
  %scevgep1559 = getelementptr i8, i8* %scevgep1557, i64 %202
  %scevgep1562 = getelementptr i8, i8* %scevgep1561, i64 %202
  %203 = add i64 %174, %indvar1536
  %smin1538 = call i64 @llvm.smin.i64(i64 %203, i64 15)
  %204 = add nsw i64 %smin1538, 1
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 15)
  %205 = add nsw i64 %polly.indvar237, %180
  %polly.loop_guard2501146 = icmp sgt i64 %205, -1
  %206 = add nuw nsw i64 %polly.indvar237, %114
  %.not = icmp ult i64 %206, %181
  %polly.access.mul.call1259 = mul nsw i64 %206, 1000
  %207 = add nuw i64 %polly.access.mul.call1259, %115
  br i1 %polly.loop_guard2501146, label %polly.loop_header247.us, label %polly.loop_header234.split

polly.loop_header247.us:                          ; preds = %polly.loop_header234, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header234 ]
  %208 = add nuw nsw i64 %polly.indvar251.us, %175
  %polly.access.mul.call1255.us = mul nuw nsw i64 %208, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %115, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar251.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar251.us, %smin1046
  br i1 %exitcond1044.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1724, i64 %207
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %205
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.loop_header247.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.loop_header247.us.1.preheader, label %polly.then.us

polly.loop_header247.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header247.us.1

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1724, i64 %207
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %205
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.access.add.call1260.1 = or i64 %207, 1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.1 = add nsw i64 %205, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.access.add.call1260.2 = or i64 %207, 2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.2 = add nsw i64 %205, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.access.add.call1260.3 = or i64 %207, 3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.3 = add nsw i64 %205, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  br label %polly.loop_exit267

polly.loop_exit267:                               ; preds = %polly.loop_header272.us.3, %middle.block1532, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239 = icmp ult i64 %polly.indvar237, 19
  %indvars.iv.next1043 = add i64 %indvars.iv1042, 1
  %indvar.next1537 = add i64 %indvar1536, 1
  br i1 %polly.loop_cond239, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header265.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %209 = mul i64 %206, 9600
  br i1 %polly.loop_guard2501146, label %polly.loop_header265.us.preheader, label %polly.loop_exit267

polly.loop_header265.us.preheader:                ; preds = %polly.loop_header265.preheader
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %206
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %205
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1637 = icmp ult i64 %183, 4
  br i1 %min.iters.check1637, label %polly.loop_header272.us.preheader, label %vector.memcheck1620

vector.memcheck1620:                              ; preds = %polly.loop_header265.us.preheader
  %bound01628 = icmp ult i8* %scevgep1622, %scevgep1627
  %bound11629 = icmp ult i8* %malloccall, %scevgep1625
  %found.conflict1630 = and i1 %bound01628, %bound11629
  br i1 %found.conflict1630, label %polly.loop_header272.us.preheader, label %vector.ph1638

vector.ph1638:                                    ; preds = %vector.memcheck1620
  %n.vec1640 = and i64 %183, -4
  %broadcast.splatinsert1646 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1647 = shufflevector <4 x double> %broadcast.splatinsert1646, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1649 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1650 = shufflevector <4 x double> %broadcast.splatinsert1649, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1634

vector.body1634:                                  ; preds = %vector.body1634, %vector.ph1638
  %index1641 = phi i64 [ 0, %vector.ph1638 ], [ %index.next1642, %vector.body1634 ]
  %210 = add nuw nsw i64 %index1641, %175
  %211 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1641
  %212 = bitcast double* %211 to <4 x double>*
  %wide.load1645 = load <4 x double>, <4 x double>* %212, align 8, !alias.scope !77
  %213 = fmul fast <4 x double> %broadcast.splat1647, %wide.load1645
  %214 = add nuw nsw i64 %210, %polly.access.mul.Packed_MemRef_call2283.us
  %215 = getelementptr double, double* %Packed_MemRef_call2, i64 %214
  %216 = bitcast double* %215 to <4 x double>*
  %wide.load1648 = load <4 x double>, <4 x double>* %216, align 8
  %217 = fmul fast <4 x double> %broadcast.splat1650, %wide.load1648
  %218 = shl i64 %210, 3
  %219 = add i64 %218, %209
  %220 = getelementptr i8, i8* %call, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  %wide.load1651 = load <4 x double>, <4 x double>* %221, align 8, !alias.scope !80, !noalias !82
  %222 = fadd fast <4 x double> %217, %213
  %223 = fmul fast <4 x double> %222, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %224 = fadd fast <4 x double> %223, %wide.load1651
  %225 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %224, <4 x double>* %225, align 8, !alias.scope !80, !noalias !82
  %index.next1642 = add i64 %index1641, 4
  %226 = icmp eq i64 %index.next1642, %n.vec1640
  br i1 %226, label %middle.block1632, label %vector.body1634, !llvm.loop !83

middle.block1632:                                 ; preds = %vector.body1634
  %cmp.n1644 = icmp eq i64 %183, %n.vec1640
  br i1 %cmp.n1644, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %vector.memcheck1620, %polly.loop_header265.us.preheader, %middle.block1632
  %polly.indvar276.us.ph = phi i64 [ 0, %vector.memcheck1620 ], [ 0, %polly.loop_header265.us.preheader ], [ %n.vec1640, %middle.block1632 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %227 = add nuw nsw i64 %polly.indvar276.us, %175
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar276.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %227, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %228 = shl i64 %227, 3
  %229 = add i64 %228, %209
  %scevgep295.us = getelementptr i8, i8* %call, i64 %229
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar276.us, %smin1046
  br i1 %exitcond1047.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !84

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1632
  %polly.access.add.Packed_MemRef_call2284.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.1, %206
  %polly.access.Packed_MemRef_call2285.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.1
  %_p_scalar_286.us.1 = load double, double* %polly.access.Packed_MemRef_call2285.us.1, align 8
  %polly.access.add.Packed_MemRef_call1292.us.1 = add nsw i64 %205, 1200
  %polly.access.Packed_MemRef_call1293.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call1293.us.1, align 8
  %min.iters.check1605 = icmp ult i64 %190, 4
  br i1 %min.iters.check1605, label %polly.loop_header272.us.1.preheader, label %vector.memcheck1587

vector.memcheck1587:                              ; preds = %polly.loop_exit274.loopexit.us
  %bound01596 = icmp ult i8* %scevgep1589, %scevgep1595
  %bound11597 = icmp ult i8* %scevgep1593, %scevgep1592
  %found.conflict1598 = and i1 %bound01596, %bound11597
  br i1 %found.conflict1598, label %polly.loop_header272.us.1.preheader, label %vector.ph1606

vector.ph1606:                                    ; preds = %vector.memcheck1587
  %n.vec1608 = and i64 %190, -4
  %broadcast.splatinsert1614 = insertelement <4 x double> poison, double %_p_scalar_286.us.1, i32 0
  %broadcast.splat1615 = shufflevector <4 x double> %broadcast.splatinsert1614, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1617 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1618 = shufflevector <4 x double> %broadcast.splatinsert1617, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1602

vector.body1602:                                  ; preds = %vector.body1602, %vector.ph1606
  %index1609 = phi i64 [ 0, %vector.ph1606 ], [ %index.next1610, %vector.body1602 ]
  %230 = add nuw nsw i64 %index1609, %175
  %231 = add nuw nsw i64 %index1609, 1200
  %232 = getelementptr double, double* %Packed_MemRef_call1, i64 %231
  %233 = bitcast double* %232 to <4 x double>*
  %wide.load1613 = load <4 x double>, <4 x double>* %233, align 8, !alias.scope !85
  %234 = fmul fast <4 x double> %broadcast.splat1615, %wide.load1613
  %235 = add nuw nsw i64 %230, %polly.access.mul.Packed_MemRef_call2283.us.1
  %236 = getelementptr double, double* %Packed_MemRef_call2, i64 %235
  %237 = bitcast double* %236 to <4 x double>*
  %wide.load1616 = load <4 x double>, <4 x double>* %237, align 8
  %238 = fmul fast <4 x double> %broadcast.splat1618, %wide.load1616
  %239 = shl i64 %230, 3
  %240 = add i64 %239, %209
  %241 = getelementptr i8, i8* %call, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  %wide.load1619 = load <4 x double>, <4 x double>* %242, align 8, !alias.scope !88, !noalias !90
  %243 = fadd fast <4 x double> %238, %234
  %244 = fmul fast <4 x double> %243, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %245 = fadd fast <4 x double> %244, %wide.load1619
  %246 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %245, <4 x double>* %246, align 8, !alias.scope !88, !noalias !90
  %index.next1610 = add i64 %index1609, 4
  %247 = icmp eq i64 %index.next1610, %n.vec1608
  br i1 %247, label %middle.block1600, label %vector.body1602, !llvm.loop !91

middle.block1600:                                 ; preds = %vector.body1602
  %cmp.n1612 = icmp eq i64 %190, %n.vec1608
  br i1 %cmp.n1612, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1.preheader

polly.loop_header272.us.1.preheader:              ; preds = %vector.memcheck1587, %polly.loop_exit274.loopexit.us, %middle.block1600
  %polly.indvar276.us.1.ph = phi i64 [ 0, %vector.memcheck1587 ], [ 0, %polly.loop_exit274.loopexit.us ], [ %n.vec1608, %middle.block1600 ]
  br label %polly.loop_header272.us.1

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit428
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1375 = phi i64 [ %indvar.next1376, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %248 = add i64 %indvar1375, 1
  %249 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %249
  %min.iters.check1377 = icmp ult i64 %248, 4
  br i1 %min.iters.check1377, label %polly.loop_header394.preheader, label %vector.ph1378

vector.ph1378:                                    ; preds = %polly.loop_header388
  %n.vec1380 = and i64 %248, -4
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1382, %vector.body1374 ]
  %250 = shl nuw nsw i64 %index1381, 3
  %251 = getelementptr i8, i8* %scevgep400, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  %wide.load1385 = load <4 x double>, <4 x double>* %252, align 8, !alias.scope !92, !noalias !94
  %253 = fmul fast <4 x double> %wide.load1385, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %254 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %253, <4 x double>* %254, align 8, !alias.scope !92, !noalias !94
  %index.next1382 = add i64 %index1381, 4
  %255 = icmp eq i64 %index.next1382, %n.vec1380
  br i1 %255, label %middle.block1372, label %vector.body1374, !llvm.loop !99

middle.block1372:                                 ; preds = %vector.body1374
  %cmp.n1384 = icmp eq i64 %248, %n.vec1380
  br i1 %cmp.n1384, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1372
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1380, %middle.block1372 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1372
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1376 = add i64 %indvar1375, 1
  br i1 %exitcond1084.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %256 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %256
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1083.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !100

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 1200
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond1082.not, label %polly.loop_header420.preheader, label %polly.loop_header404

polly.loop_header420.preheader:                   ; preds = %polly.loop_exit412
  %scevgep1414 = getelementptr i8, i8* %malloccall302, i64 19200
  %scevgep1415 = getelementptr i8, i8* %malloccall302, i64 19208
  %scevgep1447 = getelementptr i8, i8* %malloccall302, i64 9600
  %scevgep1448 = getelementptr i8, i8* %malloccall302, i64 9608
  %scevgep1480 = getelementptr i8, i8* %malloccall302, i64 8
  br label %polly.loop_header420

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %polly.access.mul.call2417 = mul nuw nsw i64 %polly.indvar413, 1000
  %polly.access.add.call2418 = add nuw nsw i64 %polly.access.mul.call2417, %polly.indvar407
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1081.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_header420.preheader, %polly.loop_exit428
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit428 ], [ 2, %polly.loop_header420.preheader ]
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %257 = mul nsw i64 %polly.indvar423, -20
  %258 = mul nuw nsw i64 %polly.indvar423, 20
  %259 = mul nuw nsw i64 %polly.indvar423, 20
  %260 = mul nsw i64 %polly.indvar423, -20
  %261 = mul nsw i64 %polly.indvar423, -20
  %262 = mul nuw nsw i64 %polly.indvar423, 20
  %263 = mul nuw nsw i64 %polly.indvar423, 20
  %264 = mul nsw i64 %polly.indvar423, -20
  %265 = mul nsw i64 %polly.indvar423, -20
  %266 = mul nuw nsw i64 %polly.indvar423, 20
  %267 = mul nuw nsw i64 %polly.indvar423, 20
  %268 = mul nsw i64 %polly.indvar423, -20
  %269 = mul nsw i64 %polly.indvar423, -20
  %270 = mul nuw nsw i64 %polly.indvar423, 20
  %271 = lshr i64 %polly.indvar423, 2
  %272 = add nuw i64 %indvars.iv1076, %271
  %273 = mul nsw i64 %polly.indvar423, -20
  %274 = mul nuw nsw i64 %polly.indvar423, 20
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit435
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -20
  %indvars.iv.next1065 = add nuw nsw i64 %indvars.iv1064, 20
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next424, 60
  br i1 %exitcond1080.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit435, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit435 ]
  %275 = shl nsw i64 %polly.indvar429, 2
  %276 = or i64 %275, 1
  %277 = or i64 %275, 2
  %278 = or i64 %275, 3
  %polly.access.mul.Packed_MemRef_call2305494.us = mul nsw i64 %polly.indvar429, 4800
  %279 = or i64 %275, 1
  %polly.access.mul.Packed_MemRef_call2305494.us.1 = mul nuw nsw i64 %279, 1200
  %280 = or i64 %275, 2
  %polly.access.mul.Packed_MemRef_call2305494.us.2 = mul nuw nsw i64 %280, 1200
  %281 = or i64 %275, 3
  %polly.access.mul.Packed_MemRef_call2305494.us.3 = mul nuw nsw i64 %281, 1200
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit442
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next430, 250
  br i1 %exitcond1079.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header433:                             ; preds = %polly.loop_exit442, %polly.loop_header426
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit442 ], [ %indvars.iv1064, %polly.loop_header426 ]
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit442 ], [ %indvars.iv1059, %polly.loop_header426 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header426 ]
  %282 = shl nuw nsw i64 %polly.indvar436, 4
  %283 = add i64 %257, %282
  %smax1489 = call i64 @llvm.smax.i64(i64 %283, i64 0)
  %284 = mul nsw i64 %polly.indvar436, -16
  %285 = add i64 %258, %284
  %286 = add i64 %smax1489, %285
  %287 = shl nuw nsw i64 %polly.indvar436, 7
  %288 = shl nuw nsw i64 %polly.indvar436, 4
  %289 = add i64 %260, %288
  %smax1475 = call i64 @llvm.smax.i64(i64 %289, i64 0)
  %290 = add nuw i64 %259, %smax1475
  %291 = mul nsw i64 %290, 9600
  %292 = add i64 %287, %291
  %293 = or i64 %287, 8
  %294 = add i64 %293, %291
  %295 = mul nsw i64 %polly.indvar436, -16
  %296 = add i64 %259, %295
  %297 = add i64 %smax1475, %296
  %298 = shl nuw nsw i64 %polly.indvar436, 4
  %299 = add i64 %261, %298
  %smax1457 = call i64 @llvm.smax.i64(i64 %299, i64 0)
  %300 = mul nsw i64 %polly.indvar436, -16
  %301 = add i64 %262, %300
  %302 = add i64 %smax1457, %301
  %303 = shl nuw nsw i64 %polly.indvar436, 7
  %304 = shl nuw nsw i64 %polly.indvar436, 4
  %305 = add i64 %264, %304
  %smax1442 = call i64 @llvm.smax.i64(i64 %305, i64 0)
  %306 = add nuw i64 %263, %smax1442
  %307 = mul nsw i64 %306, 9600
  %308 = add i64 %303, %307
  %309 = or i64 %303, 8
  %310 = add i64 %309, %307
  %311 = mul nsw i64 %polly.indvar436, -16
  %312 = add i64 %263, %311
  %313 = add i64 %smax1442, %312
  %314 = shl nuw nsw i64 %polly.indvar436, 4
  %315 = add i64 %265, %314
  %smax1424 = call i64 @llvm.smax.i64(i64 %315, i64 0)
  %316 = mul nsw i64 %polly.indvar436, -16
  %317 = add i64 %266, %316
  %318 = add i64 %smax1424, %317
  %319 = shl nuw nsw i64 %polly.indvar436, 7
  %320 = shl nuw nsw i64 %polly.indvar436, 4
  %321 = add i64 %268, %320
  %smax1409 = call i64 @llvm.smax.i64(i64 %321, i64 0)
  %322 = add nuw i64 %267, %smax1409
  %323 = mul nsw i64 %322, 9600
  %324 = add i64 %319, %323
  %325 = or i64 %319, 8
  %326 = add i64 %325, %323
  %327 = mul nsw i64 %polly.indvar436, -16
  %328 = add i64 %267, %327
  %329 = add i64 %smax1409, %328
  %330 = shl nuw nsw i64 %polly.indvar436, 4
  %331 = add i64 %269, %330
  %smax1389 = call i64 @llvm.smax.i64(i64 %331, i64 0)
  %332 = mul nsw i64 %polly.indvar436, -16
  %333 = add i64 %270, %332
  %334 = add i64 %smax1389, %333
  %335 = shl nsw i64 %polly.indvar436, 4
  %336 = add nsw i64 %335, %273
  %337 = icmp sgt i64 %336, 0
  %338 = select i1 %337, i64 %336, i64 0
  %polly.loop_guard443 = icmp slt i64 %338, 20
  br i1 %polly.loop_guard443, label %polly.loop_header440.preheader, label %polly.loop_exit442

polly.loop_header440.preheader:                   ; preds = %polly.loop_header433
  %smax1063 = call i64 @llvm.smax.i64(i64 %indvars.iv1061, i64 0)
  %339 = add i64 %smax1063, %indvars.iv1066
  %340 = sub nsw i64 %274, %335
  %341 = add nuw nsw i64 %335, 16
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit478, %polly.loop_header433
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, 16
  %indvars.iv.next1067 = add nsw i64 %indvars.iv1066, -16
  %exitcond1078 = icmp eq i64 %polly.indvar_next437, %272
  br i1 %exitcond1078, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_header440.preheader, %polly.loop_exit478
  %indvar1390 = phi i64 [ 0, %polly.loop_header440.preheader ], [ %indvar.next1391, %polly.loop_exit478 ]
  %indvars.iv1068 = phi i64 [ %339, %polly.loop_header440.preheader ], [ %indvars.iv.next1069, %polly.loop_exit478 ]
  %polly.indvar444 = phi i64 [ %338, %polly.loop_header440.preheader ], [ %polly.indvar_next445, %polly.loop_exit478 ]
  %342 = add i64 %286, %indvar1390
  %smin1490 = call i64 @llvm.smin.i64(i64 %342, i64 15)
  %343 = add nsw i64 %smin1490, 1
  %344 = mul nuw nsw i64 %indvar1390, 9600
  %345 = add i64 %292, %344
  %scevgep1476 = getelementptr i8, i8* %call, i64 %345
  %346 = add i64 %294, %344
  %scevgep1477 = getelementptr i8, i8* %call, i64 %346
  %347 = add i64 %297, %indvar1390
  %smin1478 = call i64 @llvm.smin.i64(i64 %347, i64 15)
  %348 = shl nsw i64 %smin1478, 3
  %scevgep1479 = getelementptr i8, i8* %scevgep1477, i64 %348
  %scevgep1481 = getelementptr i8, i8* %scevgep1480, i64 %348
  %349 = add i64 %302, %indvar1390
  %smin1458 = call i64 @llvm.smin.i64(i64 %349, i64 15)
  %350 = add nsw i64 %smin1458, 1
  %351 = mul nuw nsw i64 %indvar1390, 9600
  %352 = add i64 %308, %351
  %scevgep1443 = getelementptr i8, i8* %call, i64 %352
  %353 = add i64 %310, %351
  %scevgep1444 = getelementptr i8, i8* %call, i64 %353
  %354 = add i64 %313, %indvar1390
  %smin1445 = call i64 @llvm.smin.i64(i64 %354, i64 15)
  %355 = shl nsw i64 %smin1445, 3
  %scevgep1446 = getelementptr i8, i8* %scevgep1444, i64 %355
  %scevgep1449 = getelementptr i8, i8* %scevgep1448, i64 %355
  %356 = add i64 %318, %indvar1390
  %smin1425 = call i64 @llvm.smin.i64(i64 %356, i64 15)
  %357 = add nsw i64 %smin1425, 1
  %358 = mul nuw nsw i64 %indvar1390, 9600
  %359 = add i64 %324, %358
  %scevgep1410 = getelementptr i8, i8* %call, i64 %359
  %360 = add i64 %326, %358
  %scevgep1411 = getelementptr i8, i8* %call, i64 %360
  %361 = add i64 %329, %indvar1390
  %smin1412 = call i64 @llvm.smin.i64(i64 %361, i64 15)
  %362 = shl nsw i64 %smin1412, 3
  %scevgep1413 = getelementptr i8, i8* %scevgep1411, i64 %362
  %scevgep1416 = getelementptr i8, i8* %scevgep1415, i64 %362
  %363 = add i64 %334, %indvar1390
  %smin1392 = call i64 @llvm.smin.i64(i64 %363, i64 15)
  %364 = add nsw i64 %smin1392, 1
  %smin1073 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 15)
  %365 = add nsw i64 %polly.indvar444, %340
  %polly.loop_guard4571147 = icmp sgt i64 %365, -1
  %366 = add nuw nsw i64 %polly.indvar444, %274
  %.not926 = icmp ult i64 %366, %341
  %polly.access.mul.call1470 = mul nsw i64 %366, 1000
  %367 = add nuw i64 %polly.access.mul.call1470, %275
  br i1 %polly.loop_guard4571147, label %polly.loop_header454.us, label %polly.loop_header440.split

polly.loop_header454.us:                          ; preds = %polly.loop_header440, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header440 ]
  %368 = add nuw nsw i64 %polly.indvar458.us, %335
  %polly.access.mul.call1462.us = mul nuw nsw i64 %368, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %275, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar458.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar458.us, %smin1073
  br i1 %exitcond1071.not, label %polly.cond465.loopexit.us, label %polly.loop_header454.us

polly.then467.us:                                 ; preds = %polly.cond465.loopexit.us
  %polly.access.call1472.us = getelementptr double, double* %polly.access.cast.call1724, i64 %367
  %polly.access.call1472.load.us = load double, double* %polly.access.call1472.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303475.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %365
  store double %polly.access.call1472.load.us, double* %polly.access.Packed_MemRef_call1303475.us, align 8
  br label %polly.loop_header454.us.1.preheader

polly.cond465.loopexit.us:                        ; preds = %polly.loop_header454.us
  br i1 %.not926, label %polly.loop_header454.us.1.preheader, label %polly.then467.us

polly.loop_header454.us.1.preheader:              ; preds = %polly.then467.us, %polly.cond465.loopexit.us
  br label %polly.loop_header454.us.1

polly.loop_header440.split:                       ; preds = %polly.loop_header440
  br i1 %.not926, label %polly.loop_exit478, label %polly.loop_header447.preheader

polly.loop_header447.preheader:                   ; preds = %polly.loop_header440.split
  %polly.access.call1472 = getelementptr double, double* %polly.access.cast.call1724, i64 %367
  %polly.access.call1472.load = load double, double* %polly.access.call1472, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303475 = getelementptr double, double* %Packed_MemRef_call1303, i64 %365
  store double %polly.access.call1472.load, double* %polly.access.Packed_MemRef_call1303475, align 8
  %polly.access.add.call1471.1 = or i64 %367, 1
  %polly.access.call1472.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.1
  %polly.access.call1472.load.1 = load double, double* %polly.access.call1472.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.1 = add nsw i64 %365, 1200
  %polly.access.Packed_MemRef_call1303475.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.1
  store double %polly.access.call1472.load.1, double* %polly.access.Packed_MemRef_call1303475.1, align 8
  %polly.access.add.call1471.2 = or i64 %367, 2
  %polly.access.call1472.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.2
  %polly.access.call1472.load.2 = load double, double* %polly.access.call1472.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.2 = add nsw i64 %365, 2400
  %polly.access.Packed_MemRef_call1303475.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.2
  store double %polly.access.call1472.load.2, double* %polly.access.Packed_MemRef_call1303475.2, align 8
  %polly.access.add.call1471.3 = or i64 %367, 3
  %polly.access.call1472.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.3
  %polly.access.call1472.load.3 = load double, double* %polly.access.call1472.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.3 = add nsw i64 %365, 3600
  %polly.access.Packed_MemRef_call1303475.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.3
  store double %polly.access.call1472.load.3, double* %polly.access.Packed_MemRef_call1303475.3, align 8
  br label %polly.loop_exit478

polly.loop_exit478:                               ; preds = %polly.loop_header483.us.3, %middle.block1386, %polly.loop_header440.split, %polly.loop_header447.preheader, %polly.loop_header476.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp ult i64 %polly.indvar444, 19
  %indvars.iv.next1069 = add i64 %indvars.iv1068, 1
  %indvar.next1391 = add i64 %indvar1390, 1
  br i1 %polly.loop_cond446, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header476.preheader:                   ; preds = %polly.cond465.loopexit.us.3, %polly.then467.us.3
  %369 = mul i64 %366, 9600
  br i1 %polly.loop_guard4571147, label %polly.loop_header476.us.preheader, label %polly.loop_exit478

polly.loop_header476.us.preheader:                ; preds = %polly.loop_header476.preheader
  %polly.access.add.Packed_MemRef_call2305495.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us, %366
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %365
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %min.iters.check1491 = icmp ult i64 %343, 4
  br i1 %min.iters.check1491, label %polly.loop_header483.us.preheader, label %vector.memcheck1474

vector.memcheck1474:                              ; preds = %polly.loop_header476.us.preheader
  %bound01482 = icmp ult i8* %scevgep1476, %scevgep1481
  %bound11483 = icmp ult i8* %malloccall302, %scevgep1479
  %found.conflict1484 = and i1 %bound01482, %bound11483
  br i1 %found.conflict1484, label %polly.loop_header483.us.preheader, label %vector.ph1492

vector.ph1492:                                    ; preds = %vector.memcheck1474
  %n.vec1494 = and i64 %343, -4
  %broadcast.splatinsert1500 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1501 = shufflevector <4 x double> %broadcast.splatinsert1500, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1503 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1504 = shufflevector <4 x double> %broadcast.splatinsert1503, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1488

vector.body1488:                                  ; preds = %vector.body1488, %vector.ph1492
  %index1495 = phi i64 [ 0, %vector.ph1492 ], [ %index.next1496, %vector.body1488 ]
  %370 = add nuw nsw i64 %index1495, %335
  %371 = getelementptr double, double* %Packed_MemRef_call1303, i64 %index1495
  %372 = bitcast double* %371 to <4 x double>*
  %wide.load1499 = load <4 x double>, <4 x double>* %372, align 8, !alias.scope !103
  %373 = fmul fast <4 x double> %broadcast.splat1501, %wide.load1499
  %374 = add nuw nsw i64 %370, %polly.access.mul.Packed_MemRef_call2305494.us
  %375 = getelementptr double, double* %Packed_MemRef_call2305, i64 %374
  %376 = bitcast double* %375 to <4 x double>*
  %wide.load1502 = load <4 x double>, <4 x double>* %376, align 8
  %377 = fmul fast <4 x double> %broadcast.splat1504, %wide.load1502
  %378 = shl i64 %370, 3
  %379 = add i64 %378, %369
  %380 = getelementptr i8, i8* %call, i64 %379
  %381 = bitcast i8* %380 to <4 x double>*
  %wide.load1505 = load <4 x double>, <4 x double>* %381, align 8, !alias.scope !106, !noalias !108
  %382 = fadd fast <4 x double> %377, %373
  %383 = fmul fast <4 x double> %382, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %384 = fadd fast <4 x double> %383, %wide.load1505
  %385 = bitcast i8* %380 to <4 x double>*
  store <4 x double> %384, <4 x double>* %385, align 8, !alias.scope !106, !noalias !108
  %index.next1496 = add i64 %index1495, 4
  %386 = icmp eq i64 %index.next1496, %n.vec1494
  br i1 %386, label %middle.block1486, label %vector.body1488, !llvm.loop !109

middle.block1486:                                 ; preds = %vector.body1488
  %cmp.n1498 = icmp eq i64 %343, %n.vec1494
  br i1 %cmp.n1498, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %vector.memcheck1474, %polly.loop_header476.us.preheader, %middle.block1486
  %polly.indvar487.us.ph = phi i64 [ 0, %vector.memcheck1474 ], [ 0, %polly.loop_header476.us.preheader ], [ %n.vec1494, %middle.block1486 ]
  br label %polly.loop_header483.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %387 = add nuw nsw i64 %polly.indvar487.us, %335
  %polly.access.Packed_MemRef_call1303492.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar487.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1303492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.add.Packed_MemRef_call2305499.us = add nuw nsw i64 %387, %polly.access.mul.Packed_MemRef_call2305494.us
  %polly.access.Packed_MemRef_call2305500.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2305500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %388 = shl i64 %387, 3
  %389 = add i64 %388, %369
  %scevgep506.us = getelementptr i8, i8* %call, i64 %389
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_508.us
  store double %p_add42.i79.us, double* %scevgep506507.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar487.us, %smin1073
  br i1 %exitcond1074.not, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us, !llvm.loop !110

polly.loop_exit485.loopexit.us:                   ; preds = %polly.loop_header483.us, %middle.block1486
  %polly.access.add.Packed_MemRef_call2305495.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.1, %366
  %polly.access.Packed_MemRef_call2305496.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call2305496.us.1, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.1 = add nsw i64 %365, 1200
  %polly.access.Packed_MemRef_call1303504.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call1303504.us.1, align 8
  %min.iters.check1459 = icmp ult i64 %350, 4
  br i1 %min.iters.check1459, label %polly.loop_header483.us.1.preheader, label %vector.memcheck1441

vector.memcheck1441:                              ; preds = %polly.loop_exit485.loopexit.us
  %bound01450 = icmp ult i8* %scevgep1443, %scevgep1449
  %bound11451 = icmp ult i8* %scevgep1447, %scevgep1446
  %found.conflict1452 = and i1 %bound01450, %bound11451
  br i1 %found.conflict1452, label %polly.loop_header483.us.1.preheader, label %vector.ph1460

vector.ph1460:                                    ; preds = %vector.memcheck1441
  %n.vec1462 = and i64 %350, -4
  %broadcast.splatinsert1468 = insertelement <4 x double> poison, double %_p_scalar_497.us.1, i32 0
  %broadcast.splat1469 = shufflevector <4 x double> %broadcast.splatinsert1468, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1471 = insertelement <4 x double> poison, double %_p_scalar_505.us.1, i32 0
  %broadcast.splat1472 = shufflevector <4 x double> %broadcast.splatinsert1471, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %vector.ph1460
  %index1463 = phi i64 [ 0, %vector.ph1460 ], [ %index.next1464, %vector.body1456 ]
  %390 = add nuw nsw i64 %index1463, %335
  %391 = add nuw nsw i64 %index1463, 1200
  %392 = getelementptr double, double* %Packed_MemRef_call1303, i64 %391
  %393 = bitcast double* %392 to <4 x double>*
  %wide.load1467 = load <4 x double>, <4 x double>* %393, align 8, !alias.scope !111
  %394 = fmul fast <4 x double> %broadcast.splat1469, %wide.load1467
  %395 = add nuw nsw i64 %390, %polly.access.mul.Packed_MemRef_call2305494.us.1
  %396 = getelementptr double, double* %Packed_MemRef_call2305, i64 %395
  %397 = bitcast double* %396 to <4 x double>*
  %wide.load1470 = load <4 x double>, <4 x double>* %397, align 8
  %398 = fmul fast <4 x double> %broadcast.splat1472, %wide.load1470
  %399 = shl i64 %390, 3
  %400 = add i64 %399, %369
  %401 = getelementptr i8, i8* %call, i64 %400
  %402 = bitcast i8* %401 to <4 x double>*
  %wide.load1473 = load <4 x double>, <4 x double>* %402, align 8, !alias.scope !114, !noalias !116
  %403 = fadd fast <4 x double> %398, %394
  %404 = fmul fast <4 x double> %403, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %405 = fadd fast <4 x double> %404, %wide.load1473
  %406 = bitcast i8* %401 to <4 x double>*
  store <4 x double> %405, <4 x double>* %406, align 8, !alias.scope !114, !noalias !116
  %index.next1464 = add i64 %index1463, 4
  %407 = icmp eq i64 %index.next1464, %n.vec1462
  br i1 %407, label %middle.block1454, label %vector.body1456, !llvm.loop !117

middle.block1454:                                 ; preds = %vector.body1456
  %cmp.n1466 = icmp eq i64 %350, %n.vec1462
  br i1 %cmp.n1466, label %polly.loop_exit485.loopexit.us.1, label %polly.loop_header483.us.1.preheader

polly.loop_header483.us.1.preheader:              ; preds = %vector.memcheck1441, %polly.loop_exit485.loopexit.us, %middle.block1454
  %polly.indvar487.us.1.ph = phi i64 [ 0, %vector.memcheck1441 ], [ 0, %polly.loop_exit485.loopexit.us ], [ %n.vec1462, %middle.block1454 ]
  br label %polly.loop_header483.us.1

polly.start511:                                   ; preds = %init_array.exit
  %malloccall513 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall515 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header599

polly.exiting512:                                 ; preds = %polly.loop_exit639
  tail call void @free(i8* %malloccall513)
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start511
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start511 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start511 ]
  %408 = add i64 %indvar, 1
  %409 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %409
  %min.iters.check1231 = icmp ult i64 %408, 4
  br i1 %min.iters.check1231, label %polly.loop_header605.preheader, label %vector.ph1232

vector.ph1232:                                    ; preds = %polly.loop_header599
  %n.vec1234 = and i64 %408, -4
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1232
  %index1235 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1236, %vector.body1230 ]
  %410 = shl nuw nsw i64 %index1235, 3
  %411 = getelementptr i8, i8* %scevgep611, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  %wide.load1239 = load <4 x double>, <4 x double>* %412, align 8, !alias.scope !118, !noalias !120
  %413 = fmul fast <4 x double> %wide.load1239, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %414 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %413, <4 x double>* %414, align 8, !alias.scope !118, !noalias !120
  %index.next1236 = add i64 %index1235, 4
  %415 = icmp eq i64 %index.next1236, %n.vec1234
  br i1 %415, label %middle.block1228, label %vector.body1230, !llvm.loop !125

middle.block1228:                                 ; preds = %vector.body1230
  %cmp.n1238 = icmp eq i64 %408, %n.vec1234
  br i1 %cmp.n1238, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1228
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1234, %middle.block1228 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1228
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1111.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %416 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %416
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !118, !noalias !120
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1110.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !126

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 0, %polly.loop_header615.preheader ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar618, 1200
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next619, 1000
  br i1 %exitcond1109.not, label %polly.loop_header631.preheader, label %polly.loop_header615

polly.loop_header631.preheader:                   ; preds = %polly.loop_exit623
  %scevgep1268 = getelementptr i8, i8* %malloccall513, i64 19200
  %scevgep1269 = getelementptr i8, i8* %malloccall513, i64 19208
  %scevgep1301 = getelementptr i8, i8* %malloccall513, i64 9600
  %scevgep1302 = getelementptr i8, i8* %malloccall513, i64 9608
  %scevgep1334 = getelementptr i8, i8* %malloccall513, i64 8
  br label %polly.loop_header631

polly.loop_header621:                             ; preds = %polly.loop_header621, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_header621 ]
  %polly.access.mul.call2628 = mul nuw nsw i64 %polly.indvar624, 1000
  %polly.access.add.call2629 = add nuw nsw i64 %polly.access.mul.call2628, %polly.indvar618
  %polly.access.call2630 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2629
  %polly.access.call2630.load = load double, double* %polly.access.call2630, align 8, !alias.scope !122, !noalias !127
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar624, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2630.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next625, 1200
  br i1 %exitcond1108.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit639
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit639 ], [ 2, %polly.loop_header631.preheader ]
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %417 = mul nsw i64 %polly.indvar634, -20
  %418 = mul nuw nsw i64 %polly.indvar634, 20
  %419 = mul nuw nsw i64 %polly.indvar634, 20
  %420 = mul nsw i64 %polly.indvar634, -20
  %421 = mul nsw i64 %polly.indvar634, -20
  %422 = mul nuw nsw i64 %polly.indvar634, 20
  %423 = mul nuw nsw i64 %polly.indvar634, 20
  %424 = mul nsw i64 %polly.indvar634, -20
  %425 = mul nsw i64 %polly.indvar634, -20
  %426 = mul nuw nsw i64 %polly.indvar634, 20
  %427 = mul nuw nsw i64 %polly.indvar634, 20
  %428 = mul nsw i64 %polly.indvar634, -20
  %429 = mul nsw i64 %polly.indvar634, -20
  %430 = mul nuw nsw i64 %polly.indvar634, 20
  %431 = lshr i64 %polly.indvar634, 2
  %432 = add nuw i64 %indvars.iv1103, %431
  %433 = mul nsw i64 %polly.indvar634, -20
  %434 = mul nuw nsw i64 %polly.indvar634, 20
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit646
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -20
  %indvars.iv.next1092 = add nuw nsw i64 %indvars.iv1091, 20
  %indvars.iv.next1104 = add nuw nsw i64 %indvars.iv1103, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next635, 60
  br i1 %exitcond1107.not, label %polly.exiting512, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit646, %polly.loop_header631
  %polly.indvar640 = phi i64 [ 0, %polly.loop_header631 ], [ %polly.indvar_next641, %polly.loop_exit646 ]
  %435 = shl nsw i64 %polly.indvar640, 2
  %436 = or i64 %435, 1
  %437 = or i64 %435, 2
  %438 = or i64 %435, 3
  %polly.access.mul.Packed_MemRef_call2516705.us = mul nsw i64 %polly.indvar640, 4800
  %439 = or i64 %435, 1
  %polly.access.mul.Packed_MemRef_call2516705.us.1 = mul nuw nsw i64 %439, 1200
  %440 = or i64 %435, 2
  %polly.access.mul.Packed_MemRef_call2516705.us.2 = mul nuw nsw i64 %440, 1200
  %441 = or i64 %435, 3
  %polly.access.mul.Packed_MemRef_call2516705.us.3 = mul nuw nsw i64 %441, 1200
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit653
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next641, 250
  br i1 %exitcond1106.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header644:                             ; preds = %polly.loop_exit653, %polly.loop_header637
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit653 ], [ %indvars.iv1091, %polly.loop_header637 ]
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit653 ], [ %indvars.iv1086, %polly.loop_header637 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header637 ]
  %442 = shl nuw nsw i64 %polly.indvar647, 4
  %443 = add i64 %417, %442
  %smax1343 = call i64 @llvm.smax.i64(i64 %443, i64 0)
  %444 = mul nsw i64 %polly.indvar647, -16
  %445 = add i64 %418, %444
  %446 = add i64 %smax1343, %445
  %447 = shl nuw nsw i64 %polly.indvar647, 7
  %448 = shl nuw nsw i64 %polly.indvar647, 4
  %449 = add i64 %420, %448
  %smax1329 = call i64 @llvm.smax.i64(i64 %449, i64 0)
  %450 = add nuw i64 %419, %smax1329
  %451 = mul nsw i64 %450, 9600
  %452 = add i64 %447, %451
  %453 = or i64 %447, 8
  %454 = add i64 %453, %451
  %455 = mul nsw i64 %polly.indvar647, -16
  %456 = add i64 %419, %455
  %457 = add i64 %smax1329, %456
  %458 = shl nuw nsw i64 %polly.indvar647, 4
  %459 = add i64 %421, %458
  %smax1311 = call i64 @llvm.smax.i64(i64 %459, i64 0)
  %460 = mul nsw i64 %polly.indvar647, -16
  %461 = add i64 %422, %460
  %462 = add i64 %smax1311, %461
  %463 = shl nuw nsw i64 %polly.indvar647, 7
  %464 = shl nuw nsw i64 %polly.indvar647, 4
  %465 = add i64 %424, %464
  %smax1296 = call i64 @llvm.smax.i64(i64 %465, i64 0)
  %466 = add nuw i64 %423, %smax1296
  %467 = mul nsw i64 %466, 9600
  %468 = add i64 %463, %467
  %469 = or i64 %463, 8
  %470 = add i64 %469, %467
  %471 = mul nsw i64 %polly.indvar647, -16
  %472 = add i64 %423, %471
  %473 = add i64 %smax1296, %472
  %474 = shl nuw nsw i64 %polly.indvar647, 4
  %475 = add i64 %425, %474
  %smax1278 = call i64 @llvm.smax.i64(i64 %475, i64 0)
  %476 = mul nsw i64 %polly.indvar647, -16
  %477 = add i64 %426, %476
  %478 = add i64 %smax1278, %477
  %479 = shl nuw nsw i64 %polly.indvar647, 7
  %480 = shl nuw nsw i64 %polly.indvar647, 4
  %481 = add i64 %428, %480
  %smax1263 = call i64 @llvm.smax.i64(i64 %481, i64 0)
  %482 = add nuw i64 %427, %smax1263
  %483 = mul nsw i64 %482, 9600
  %484 = add i64 %479, %483
  %485 = or i64 %479, 8
  %486 = add i64 %485, %483
  %487 = mul nsw i64 %polly.indvar647, -16
  %488 = add i64 %427, %487
  %489 = add i64 %smax1263, %488
  %490 = shl nuw nsw i64 %polly.indvar647, 4
  %491 = add i64 %429, %490
  %smax1243 = call i64 @llvm.smax.i64(i64 %491, i64 0)
  %492 = mul nsw i64 %polly.indvar647, -16
  %493 = add i64 %430, %492
  %494 = add i64 %smax1243, %493
  %495 = shl nsw i64 %polly.indvar647, 4
  %496 = add nsw i64 %495, %433
  %497 = icmp sgt i64 %496, 0
  %498 = select i1 %497, i64 %496, i64 0
  %polly.loop_guard654 = icmp slt i64 %498, 20
  br i1 %polly.loop_guard654, label %polly.loop_header651.preheader, label %polly.loop_exit653

polly.loop_header651.preheader:                   ; preds = %polly.loop_header644
  %smax1090 = call i64 @llvm.smax.i64(i64 %indvars.iv1088, i64 0)
  %499 = add i64 %smax1090, %indvars.iv1093
  %500 = sub nsw i64 %434, %495
  %501 = add nuw nsw i64 %495, 16
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit689, %polly.loop_header644
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, 16
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -16
  %exitcond1105 = icmp eq i64 %polly.indvar_next648, %432
  br i1 %exitcond1105, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_exit689
  %indvar1244 = phi i64 [ 0, %polly.loop_header651.preheader ], [ %indvar.next1245, %polly.loop_exit689 ]
  %indvars.iv1095 = phi i64 [ %499, %polly.loop_header651.preheader ], [ %indvars.iv.next1096, %polly.loop_exit689 ]
  %polly.indvar655 = phi i64 [ %498, %polly.loop_header651.preheader ], [ %polly.indvar_next656, %polly.loop_exit689 ]
  %502 = add i64 %446, %indvar1244
  %smin1344 = call i64 @llvm.smin.i64(i64 %502, i64 15)
  %503 = add nsw i64 %smin1344, 1
  %504 = mul nuw nsw i64 %indvar1244, 9600
  %505 = add i64 %452, %504
  %scevgep1330 = getelementptr i8, i8* %call, i64 %505
  %506 = add i64 %454, %504
  %scevgep1331 = getelementptr i8, i8* %call, i64 %506
  %507 = add i64 %457, %indvar1244
  %smin1332 = call i64 @llvm.smin.i64(i64 %507, i64 15)
  %508 = shl nsw i64 %smin1332, 3
  %scevgep1333 = getelementptr i8, i8* %scevgep1331, i64 %508
  %scevgep1335 = getelementptr i8, i8* %scevgep1334, i64 %508
  %509 = add i64 %462, %indvar1244
  %smin1312 = call i64 @llvm.smin.i64(i64 %509, i64 15)
  %510 = add nsw i64 %smin1312, 1
  %511 = mul nuw nsw i64 %indvar1244, 9600
  %512 = add i64 %468, %511
  %scevgep1297 = getelementptr i8, i8* %call, i64 %512
  %513 = add i64 %470, %511
  %scevgep1298 = getelementptr i8, i8* %call, i64 %513
  %514 = add i64 %473, %indvar1244
  %smin1299 = call i64 @llvm.smin.i64(i64 %514, i64 15)
  %515 = shl nsw i64 %smin1299, 3
  %scevgep1300 = getelementptr i8, i8* %scevgep1298, i64 %515
  %scevgep1303 = getelementptr i8, i8* %scevgep1302, i64 %515
  %516 = add i64 %478, %indvar1244
  %smin1279 = call i64 @llvm.smin.i64(i64 %516, i64 15)
  %517 = add nsw i64 %smin1279, 1
  %518 = mul nuw nsw i64 %indvar1244, 9600
  %519 = add i64 %484, %518
  %scevgep1264 = getelementptr i8, i8* %call, i64 %519
  %520 = add i64 %486, %518
  %scevgep1265 = getelementptr i8, i8* %call, i64 %520
  %521 = add i64 %489, %indvar1244
  %smin1266 = call i64 @llvm.smin.i64(i64 %521, i64 15)
  %522 = shl nsw i64 %smin1266, 3
  %scevgep1267 = getelementptr i8, i8* %scevgep1265, i64 %522
  %scevgep1270 = getelementptr i8, i8* %scevgep1269, i64 %522
  %523 = add i64 %494, %indvar1244
  %smin1246 = call i64 @llvm.smin.i64(i64 %523, i64 15)
  %524 = add nsw i64 %smin1246, 1
  %smin1100 = call i64 @llvm.smin.i64(i64 %indvars.iv1095, i64 15)
  %525 = add nsw i64 %polly.indvar655, %500
  %polly.loop_guard6681148 = icmp sgt i64 %525, -1
  %526 = add nuw nsw i64 %polly.indvar655, %434
  %.not927 = icmp ult i64 %526, %501
  %polly.access.mul.call1681 = mul nsw i64 %526, 1000
  %527 = add nuw i64 %polly.access.mul.call1681, %435
  br i1 %polly.loop_guard6681148, label %polly.loop_header665.us, label %polly.loop_header651.split

polly.loop_header665.us:                          ; preds = %polly.loop_header651, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ 0, %polly.loop_header651 ]
  %528 = add nuw nsw i64 %polly.indvar669.us, %495
  %polly.access.mul.call1673.us = mul nuw nsw i64 %528, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %435, %polly.access.mul.call1673.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.indvar669.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar669.us, %smin1100
  br i1 %exitcond1098.not, label %polly.cond676.loopexit.us, label %polly.loop_header665.us

polly.then678.us:                                 ; preds = %polly.cond676.loopexit.us
  %polly.access.call1683.us = getelementptr double, double* %polly.access.cast.call1724, i64 %527
  %polly.access.call1683.load.us = load double, double* %polly.access.call1683.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514686.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %525
  store double %polly.access.call1683.load.us, double* %polly.access.Packed_MemRef_call1514686.us, align 8
  br label %polly.loop_header665.us.1.preheader

polly.cond676.loopexit.us:                        ; preds = %polly.loop_header665.us
  br i1 %.not927, label %polly.loop_header665.us.1.preheader, label %polly.then678.us

polly.loop_header665.us.1.preheader:              ; preds = %polly.then678.us, %polly.cond676.loopexit.us
  br label %polly.loop_header665.us.1

polly.loop_header651.split:                       ; preds = %polly.loop_header651
  br i1 %.not927, label %polly.loop_exit689, label %polly.loop_header658.preheader

polly.loop_header658.preheader:                   ; preds = %polly.loop_header651.split
  %polly.access.call1683 = getelementptr double, double* %polly.access.cast.call1724, i64 %527
  %polly.access.call1683.load = load double, double* %polly.access.call1683, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514686 = getelementptr double, double* %Packed_MemRef_call1514, i64 %525
  store double %polly.access.call1683.load, double* %polly.access.Packed_MemRef_call1514686, align 8
  %polly.access.add.call1682.1 = or i64 %527, 1
  %polly.access.call1683.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.1
  %polly.access.call1683.load.1 = load double, double* %polly.access.call1683.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.1 = add nsw i64 %525, 1200
  %polly.access.Packed_MemRef_call1514686.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.1
  store double %polly.access.call1683.load.1, double* %polly.access.Packed_MemRef_call1514686.1, align 8
  %polly.access.add.call1682.2 = or i64 %527, 2
  %polly.access.call1683.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.2
  %polly.access.call1683.load.2 = load double, double* %polly.access.call1683.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.2 = add nsw i64 %525, 2400
  %polly.access.Packed_MemRef_call1514686.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.2
  store double %polly.access.call1683.load.2, double* %polly.access.Packed_MemRef_call1514686.2, align 8
  %polly.access.add.call1682.3 = or i64 %527, 3
  %polly.access.call1683.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.3
  %polly.access.call1683.load.3 = load double, double* %polly.access.call1683.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.3 = add nsw i64 %525, 3600
  %polly.access.Packed_MemRef_call1514686.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.3
  store double %polly.access.call1683.load.3, double* %polly.access.Packed_MemRef_call1514686.3, align 8
  br label %polly.loop_exit689

polly.loop_exit689:                               ; preds = %polly.loop_header694.us.3, %middle.block1240, %polly.loop_header651.split, %polly.loop_header658.preheader, %polly.loop_header687.preheader
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657 = icmp ult i64 %polly.indvar655, 19
  %indvars.iv.next1096 = add i64 %indvars.iv1095, 1
  %indvar.next1245 = add i64 %indvar1244, 1
  br i1 %polly.loop_cond657, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header687.preheader:                   ; preds = %polly.cond676.loopexit.us.3, %polly.then678.us.3
  %529 = mul i64 %526, 9600
  br i1 %polly.loop_guard6681148, label %polly.loop_header687.us.preheader, label %polly.loop_exit689

polly.loop_header687.us.preheader:                ; preds = %polly.loop_header687.preheader
  %polly.access.add.Packed_MemRef_call2516706.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us, %526
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %525
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %min.iters.check1345 = icmp ult i64 %503, 4
  br i1 %min.iters.check1345, label %polly.loop_header694.us.preheader, label %vector.memcheck1328

vector.memcheck1328:                              ; preds = %polly.loop_header687.us.preheader
  %bound01336 = icmp ult i8* %scevgep1330, %scevgep1335
  %bound11337 = icmp ult i8* %malloccall513, %scevgep1333
  %found.conflict1338 = and i1 %bound01336, %bound11337
  br i1 %found.conflict1338, label %polly.loop_header694.us.preheader, label %vector.ph1346

vector.ph1346:                                    ; preds = %vector.memcheck1328
  %n.vec1348 = and i64 %503, -4
  %broadcast.splatinsert1354 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1355 = shufflevector <4 x double> %broadcast.splatinsert1354, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1357 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1358 = shufflevector <4 x double> %broadcast.splatinsert1357, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1346
  %index1349 = phi i64 [ 0, %vector.ph1346 ], [ %index.next1350, %vector.body1342 ]
  %530 = add nuw nsw i64 %index1349, %495
  %531 = getelementptr double, double* %Packed_MemRef_call1514, i64 %index1349
  %532 = bitcast double* %531 to <4 x double>*
  %wide.load1353 = load <4 x double>, <4 x double>* %532, align 8, !alias.scope !129
  %533 = fmul fast <4 x double> %broadcast.splat1355, %wide.load1353
  %534 = add nuw nsw i64 %530, %polly.access.mul.Packed_MemRef_call2516705.us
  %535 = getelementptr double, double* %Packed_MemRef_call2516, i64 %534
  %536 = bitcast double* %535 to <4 x double>*
  %wide.load1356 = load <4 x double>, <4 x double>* %536, align 8
  %537 = fmul fast <4 x double> %broadcast.splat1358, %wide.load1356
  %538 = shl i64 %530, 3
  %539 = add i64 %538, %529
  %540 = getelementptr i8, i8* %call, i64 %539
  %541 = bitcast i8* %540 to <4 x double>*
  %wide.load1359 = load <4 x double>, <4 x double>* %541, align 8, !alias.scope !132, !noalias !134
  %542 = fadd fast <4 x double> %537, %533
  %543 = fmul fast <4 x double> %542, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %544 = fadd fast <4 x double> %543, %wide.load1359
  %545 = bitcast i8* %540 to <4 x double>*
  store <4 x double> %544, <4 x double>* %545, align 8, !alias.scope !132, !noalias !134
  %index.next1350 = add i64 %index1349, 4
  %546 = icmp eq i64 %index.next1350, %n.vec1348
  br i1 %546, label %middle.block1340, label %vector.body1342, !llvm.loop !135

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1352 = icmp eq i64 %503, %n.vec1348
  br i1 %cmp.n1352, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %vector.memcheck1328, %polly.loop_header687.us.preheader, %middle.block1340
  %polly.indvar698.us.ph = phi i64 [ 0, %vector.memcheck1328 ], [ 0, %polly.loop_header687.us.preheader ], [ %n.vec1348, %middle.block1340 ]
  br label %polly.loop_header694.us

polly.loop_header694.us:                          ; preds = %polly.loop_header694.us.preheader, %polly.loop_header694.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_header694.us ], [ %polly.indvar698.us.ph, %polly.loop_header694.us.preheader ]
  %547 = add nuw nsw i64 %polly.indvar698.us, %495
  %polly.access.Packed_MemRef_call1514703.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.indvar698.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1514703.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %polly.access.add.Packed_MemRef_call2516710.us = add nuw nsw i64 %547, %polly.access.mul.Packed_MemRef_call2516705.us
  %polly.access.Packed_MemRef_call2516711.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2516711.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %548 = shl i64 %547, 3
  %549 = add i64 %548, %529
  %scevgep717.us = getelementptr i8, i8* %call, i64 %549
  %scevgep717718.us = bitcast i8* %scevgep717.us to double*
  %_p_scalar_719.us = load double, double* %scevgep717718.us, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_719.us
  store double %p_add42.i.us, double* %scevgep717718.us, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar698.us, %smin1100
  br i1 %exitcond1101.not, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us, !llvm.loop !136

polly.loop_exit696.loopexit.us:                   ; preds = %polly.loop_header694.us, %middle.block1340
  %polly.access.add.Packed_MemRef_call2516706.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.1, %526
  %polly.access.Packed_MemRef_call2516707.us.1 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.1
  %_p_scalar_708.us.1 = load double, double* %polly.access.Packed_MemRef_call2516707.us.1, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.1 = add nsw i64 %525, 1200
  %polly.access.Packed_MemRef_call1514715.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.1
  %_p_scalar_716.us.1 = load double, double* %polly.access.Packed_MemRef_call1514715.us.1, align 8
  %min.iters.check1313 = icmp ult i64 %510, 4
  br i1 %min.iters.check1313, label %polly.loop_header694.us.1.preheader, label %vector.memcheck1295

vector.memcheck1295:                              ; preds = %polly.loop_exit696.loopexit.us
  %bound01304 = icmp ult i8* %scevgep1297, %scevgep1303
  %bound11305 = icmp ult i8* %scevgep1301, %scevgep1300
  %found.conflict1306 = and i1 %bound01304, %bound11305
  br i1 %found.conflict1306, label %polly.loop_header694.us.1.preheader, label %vector.ph1314

vector.ph1314:                                    ; preds = %vector.memcheck1295
  %n.vec1316 = and i64 %510, -4
  %broadcast.splatinsert1322 = insertelement <4 x double> poison, double %_p_scalar_708.us.1, i32 0
  %broadcast.splat1323 = shufflevector <4 x double> %broadcast.splatinsert1322, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1325 = insertelement <4 x double> poison, double %_p_scalar_716.us.1, i32 0
  %broadcast.splat1326 = shufflevector <4 x double> %broadcast.splatinsert1325, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1310 ]
  %550 = add nuw nsw i64 %index1317, %495
  %551 = add nuw nsw i64 %index1317, 1200
  %552 = getelementptr double, double* %Packed_MemRef_call1514, i64 %551
  %553 = bitcast double* %552 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %553, align 8, !alias.scope !137
  %554 = fmul fast <4 x double> %broadcast.splat1323, %wide.load1321
  %555 = add nuw nsw i64 %550, %polly.access.mul.Packed_MemRef_call2516705.us.1
  %556 = getelementptr double, double* %Packed_MemRef_call2516, i64 %555
  %557 = bitcast double* %556 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %557, align 8
  %558 = fmul fast <4 x double> %broadcast.splat1326, %wide.load1324
  %559 = shl i64 %550, 3
  %560 = add i64 %559, %529
  %561 = getelementptr i8, i8* %call, i64 %560
  %562 = bitcast i8* %561 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %562, align 8, !alias.scope !140, !noalias !142
  %563 = fadd fast <4 x double> %558, %554
  %564 = fmul fast <4 x double> %563, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %565 = fadd fast <4 x double> %564, %wide.load1327
  %566 = bitcast i8* %561 to <4 x double>*
  store <4 x double> %565, <4 x double>* %566, align 8, !alias.scope !140, !noalias !142
  %index.next1318 = add i64 %index1317, 4
  %567 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %567, label %middle.block1308, label %vector.body1310, !llvm.loop !143

middle.block1308:                                 ; preds = %vector.body1310
  %cmp.n1320 = icmp eq i64 %510, %n.vec1316
  br i1 %cmp.n1320, label %polly.loop_exit696.loopexit.us.1, label %polly.loop_header694.us.1.preheader

polly.loop_header694.us.1.preheader:              ; preds = %vector.memcheck1295, %polly.loop_exit696.loopexit.us, %middle.block1308
  %polly.indvar698.us.1.ph = phi i64 [ 0, %vector.memcheck1295 ], [ 0, %polly.loop_exit696.loopexit.us ], [ %n.vec1316, %middle.block1308 ]
  br label %polly.loop_header694.us.1

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1138 = call i64 @llvm.smin.i64(i64 %indvars.iv1136, i64 -1168)
  %568 = shl nsw i64 %polly.indvar849, 5
  %569 = add nsw i64 %smin1138, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1137 = add nsw i64 %indvars.iv1136, -32
  %exitcond1141.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1141.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %570 = mul nsw i64 %polly.indvar855, -32
  %smin = call i64 @llvm.smin.i64(i64 %570, i64 -1168)
  %571 = add nsw i64 %smin, 1200
  %smin1134 = call i64 @llvm.smin.i64(i64 %indvars.iv1132, i64 -1168)
  %572 = shl nsw i64 %polly.indvar855, 5
  %573 = add nsw i64 %smin1134, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1133 = add nsw i64 %indvars.iv1132, -32
  %exitcond1140.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1140.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %574 = add nuw nsw i64 %polly.indvar861, %568
  %575 = trunc i64 %574 to i32
  %576 = mul nuw nsw i64 %574, 9600
  %min.iters.check = icmp eq i64 %571, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1170

vector.ph1170:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1177 = insertelement <4 x i64> poison, i64 %572, i32 0
  %broadcast.splat1178 = shufflevector <4 x i64> %broadcast.splatinsert1177, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1179 = insertelement <4 x i32> poison, i32 %575, i32 0
  %broadcast.splat1180 = shufflevector <4 x i32> %broadcast.splatinsert1179, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %vector.ph1170
  %index1171 = phi i64 [ 0, %vector.ph1170 ], [ %index.next1172, %vector.body1169 ]
  %vec.ind1175 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1170 ], [ %vec.ind.next1176, %vector.body1169 ]
  %577 = add nuw nsw <4 x i64> %vec.ind1175, %broadcast.splat1178
  %578 = trunc <4 x i64> %577 to <4 x i32>
  %579 = mul <4 x i32> %broadcast.splat1180, %578
  %580 = add <4 x i32> %579, <i32 3, i32 3, i32 3, i32 3>
  %581 = urem <4 x i32> %580, <i32 1200, i32 1200, i32 1200, i32 1200>
  %582 = sitofp <4 x i32> %581 to <4 x double>
  %583 = fmul fast <4 x double> %582, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %584 = extractelement <4 x i64> %577, i32 0
  %585 = shl i64 %584, 3
  %586 = add nuw nsw i64 %585, %576
  %587 = getelementptr i8, i8* %call, i64 %586
  %588 = bitcast i8* %587 to <4 x double>*
  store <4 x double> %583, <4 x double>* %588, align 8, !alias.scope !144, !noalias !146
  %index.next1172 = add i64 %index1171, 4
  %vec.ind.next1176 = add <4 x i64> %vec.ind1175, <i64 4, i64 4, i64 4, i64 4>
  %589 = icmp eq i64 %index.next1172, %571
  br i1 %589, label %polly.loop_exit866, label %vector.body1169, !llvm.loop !149

polly.loop_exit866:                               ; preds = %vector.body1169, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar861, %569
  br i1 %exitcond1139.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %590 = add nuw nsw i64 %polly.indvar867, %572
  %591 = trunc i64 %590 to i32
  %592 = mul i32 %591, %575
  %593 = add i32 %592, 3
  %594 = urem i32 %593, 1200
  %p_conv31.i = sitofp i32 %594 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %595 = shl i64 %590, 3
  %596 = add nuw nsw i64 %595, %576
  %scevgep870 = getelementptr i8, i8* %call, i64 %596
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar867, %573
  br i1 %exitcond1135.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !150

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1128 = call i64 @llvm.smin.i64(i64 %indvars.iv1126, i64 -1168)
  %597 = shl nsw i64 %polly.indvar876, 5
  %598 = add nsw i64 %smin1128, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1127 = add nsw i64 %indvars.iv1126, -32
  %exitcond1131.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1131.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %599 = mul nsw i64 %polly.indvar882, -32
  %smin1184 = call i64 @llvm.smin.i64(i64 %599, i64 -968)
  %600 = add nsw i64 %smin1184, 1000
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 -968)
  %601 = shl nsw i64 %polly.indvar882, 5
  %602 = add nsw i64 %smin1124, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, -32
  %exitcond1130.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1130.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %603 = add nuw nsw i64 %polly.indvar888, %597
  %604 = trunc i64 %603 to i32
  %605 = mul nuw nsw i64 %603, 8000
  %min.iters.check1185 = icmp eq i64 %600, 0
  br i1 %min.iters.check1185, label %polly.loop_header891, label %vector.ph1186

vector.ph1186:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1195 = insertelement <4 x i64> poison, i64 %601, i32 0
  %broadcast.splat1196 = shufflevector <4 x i64> %broadcast.splatinsert1195, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1197 = insertelement <4 x i32> poison, i32 %604, i32 0
  %broadcast.splat1198 = shufflevector <4 x i32> %broadcast.splatinsert1197, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1190, %vector.body1183 ]
  %vec.ind1193 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1186 ], [ %vec.ind.next1194, %vector.body1183 ]
  %606 = add nuw nsw <4 x i64> %vec.ind1193, %broadcast.splat1196
  %607 = trunc <4 x i64> %606 to <4 x i32>
  %608 = mul <4 x i32> %broadcast.splat1198, %607
  %609 = add <4 x i32> %608, <i32 2, i32 2, i32 2, i32 2>
  %610 = urem <4 x i32> %609, <i32 1000, i32 1000, i32 1000, i32 1000>
  %611 = sitofp <4 x i32> %610 to <4 x double>
  %612 = fmul fast <4 x double> %611, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %613 = extractelement <4 x i64> %606, i32 0
  %614 = shl i64 %613, 3
  %615 = add nuw nsw i64 %614, %605
  %616 = getelementptr i8, i8* %call2, i64 %615
  %617 = bitcast i8* %616 to <4 x double>*
  store <4 x double> %612, <4 x double>* %617, align 8, !alias.scope !148, !noalias !151
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %618 = icmp eq i64 %index.next1190, %600
  br i1 %618, label %polly.loop_exit893, label %vector.body1183, !llvm.loop !152

polly.loop_exit893:                               ; preds = %vector.body1183, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar888, %598
  br i1 %exitcond1129.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %619 = add nuw nsw i64 %polly.indvar894, %601
  %620 = trunc i64 %619 to i32
  %621 = mul i32 %620, %604
  %622 = add i32 %621, 2
  %623 = urem i32 %622, 1000
  %p_conv10.i = sitofp i32 %623 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %624 = shl i64 %619, 3
  %625 = add nuw nsw i64 %624, %605
  %scevgep897 = getelementptr i8, i8* %call2, i64 %625
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar894, %602
  br i1 %exitcond1125.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !153

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1118 = call i64 @llvm.smin.i64(i64 %indvars.iv1116, i64 -1168)
  %626 = shl nsw i64 %polly.indvar902, 5
  %627 = add nsw i64 %smin1118, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -32
  %exitcond1121.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1121.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %628 = mul nsw i64 %polly.indvar908, -32
  %smin1202 = call i64 @llvm.smin.i64(i64 %628, i64 -968)
  %629 = add nsw i64 %smin1202, 1000
  %smin1114 = call i64 @llvm.smin.i64(i64 %indvars.iv1112, i64 -968)
  %630 = shl nsw i64 %polly.indvar908, 5
  %631 = add nsw i64 %smin1114, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -32
  %exitcond1120.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1120.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %632 = add nuw nsw i64 %polly.indvar914, %626
  %633 = trunc i64 %632 to i32
  %634 = mul nuw nsw i64 %632, 8000
  %min.iters.check1203 = icmp eq i64 %629, 0
  br i1 %min.iters.check1203, label %polly.loop_header917, label %vector.ph1204

vector.ph1204:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1213 = insertelement <4 x i64> poison, i64 %630, i32 0
  %broadcast.splat1214 = shufflevector <4 x i64> %broadcast.splatinsert1213, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1215 = insertelement <4 x i32> poison, i32 %633, i32 0
  %broadcast.splat1216 = shufflevector <4 x i32> %broadcast.splatinsert1215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1201 ]
  %vec.ind1211 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1204 ], [ %vec.ind.next1212, %vector.body1201 ]
  %635 = add nuw nsw <4 x i64> %vec.ind1211, %broadcast.splat1214
  %636 = trunc <4 x i64> %635 to <4 x i32>
  %637 = mul <4 x i32> %broadcast.splat1216, %636
  %638 = add <4 x i32> %637, <i32 1, i32 1, i32 1, i32 1>
  %639 = urem <4 x i32> %638, <i32 1200, i32 1200, i32 1200, i32 1200>
  %640 = sitofp <4 x i32> %639 to <4 x double>
  %641 = fmul fast <4 x double> %640, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %642 = extractelement <4 x i64> %635, i32 0
  %643 = shl i64 %642, 3
  %644 = add nuw nsw i64 %643, %634
  %645 = getelementptr i8, i8* %call1, i64 %644
  %646 = bitcast i8* %645 to <4 x double>*
  store <4 x double> %641, <4 x double>* %646, align 8, !alias.scope !147, !noalias !154
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1212 = add <4 x i64> %vec.ind1211, <i64 4, i64 4, i64 4, i64 4>
  %647 = icmp eq i64 %index.next1208, %629
  br i1 %647, label %polly.loop_exit919, label %vector.body1201, !llvm.loop !155

polly.loop_exit919:                               ; preds = %vector.body1201, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar914, %627
  br i1 %exitcond1119.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %648 = add nuw nsw i64 %polly.indvar920, %630
  %649 = trunc i64 %648 to i32
  %650 = mul i32 %649, %633
  %651 = add i32 %650, 1
  %652 = urem i32 %651, 1200
  %p_conv.i = sitofp i32 %652 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %653 = shl i64 %648, 3
  %654 = add nuw nsw i64 %653, %634
  %scevgep924 = getelementptr i8, i8* %call1, i64 %654
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar920, %631
  br i1 %exitcond1115.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !156

polly.loop_header247.us.1:                        ; preds = %polly.loop_header247.us.1.preheader, %polly.loop_header247.us.1
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_header247.us.1 ], [ 0, %polly.loop_header247.us.1.preheader ]
  %655 = add nuw nsw i64 %polly.indvar251.us.1, %175
  %polly.access.mul.call1255.us.1 = mul nuw nsw i64 %655, 1000
  %polly.access.add.call1256.us.1 = add nuw nsw i64 %116, %polly.access.mul.call1255.us.1
  %polly.access.call1257.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us.1
  %polly.access.call1257.load.us.1 = load double, double* %polly.access.call1257.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar251.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1257.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next252.us.1 = add nuw nsw i64 %polly.indvar251.us.1, 1
  %exitcond1044.1.not = icmp eq i64 %polly.indvar251.us.1, %smin1046
  br i1 %exitcond1044.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header247.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header247.us.1
  br i1 %.not, label %polly.loop_header247.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1260.us.1 = or i64 %207, 1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nsw i64 %205, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  br label %polly.loop_header247.us.2.preheader

polly.loop_header247.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header247.us.2

polly.loop_header247.us.2:                        ; preds = %polly.loop_header247.us.2.preheader, %polly.loop_header247.us.2
  %polly.indvar251.us.2 = phi i64 [ %polly.indvar_next252.us.2, %polly.loop_header247.us.2 ], [ 0, %polly.loop_header247.us.2.preheader ]
  %656 = add nuw nsw i64 %polly.indvar251.us.2, %175
  %polly.access.mul.call1255.us.2 = mul nuw nsw i64 %656, 1000
  %polly.access.add.call1256.us.2 = add nuw nsw i64 %117, %polly.access.mul.call1255.us.2
  %polly.access.call1257.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us.2
  %polly.access.call1257.load.us.2 = load double, double* %polly.access.call1257.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar251.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1257.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next252.us.2 = add nuw nsw i64 %polly.indvar251.us.2, 1
  %exitcond1044.2.not = icmp eq i64 %polly.indvar251.us.2, %smin1046
  br i1 %exitcond1044.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header247.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header247.us.2
  br i1 %.not, label %polly.loop_header247.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1260.us.2 = or i64 %207, 2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nsw i64 %205, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  br label %polly.loop_header247.us.3.preheader

polly.loop_header247.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header247.us.3

polly.loop_header247.us.3:                        ; preds = %polly.loop_header247.us.3.preheader, %polly.loop_header247.us.3
  %polly.indvar251.us.3 = phi i64 [ %polly.indvar_next252.us.3, %polly.loop_header247.us.3 ], [ 0, %polly.loop_header247.us.3.preheader ]
  %657 = add nuw nsw i64 %polly.indvar251.us.3, %175
  %polly.access.mul.call1255.us.3 = mul nuw nsw i64 %657, 1000
  %polly.access.add.call1256.us.3 = add nuw nsw i64 %118, %polly.access.mul.call1255.us.3
  %polly.access.call1257.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us.3
  %polly.access.call1257.load.us.3 = load double, double* %polly.access.call1257.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar251.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1257.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next252.us.3 = add nuw nsw i64 %polly.indvar251.us.3, 1
  %exitcond1044.3.not = icmp eq i64 %polly.indvar251.us.3, %smin1046
  br i1 %exitcond1044.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header247.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header247.us.3
  br i1 %.not, label %polly.loop_header265.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1260.us.3 = or i64 %207, 3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nsw i64 %205, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  br label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_header272.us.1.preheader, %polly.loop_header272.us.1
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_header272.us.1 ], [ %polly.indvar276.us.1.ph, %polly.loop_header272.us.1.preheader ]
  %658 = add nuw nsw i64 %polly.indvar276.us.1, %175
  %polly.access.add.Packed_MemRef_call1280.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1200
  %polly.access.Packed_MemRef_call1281.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.1
  %_p_scalar_282.us.1 = load double, double* %polly.access.Packed_MemRef_call1281.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_286.us.1, %_p_scalar_282.us.1
  %polly.access.add.Packed_MemRef_call2288.us.1 = add nuw nsw i64 %658, %polly.access.mul.Packed_MemRef_call2283.us.1
  %polly.access.Packed_MemRef_call2289.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.1
  %_p_scalar_290.us.1 = load double, double* %polly.access.Packed_MemRef_call2289.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_294.us.1, %_p_scalar_290.us.1
  %659 = shl i64 %658, 3
  %660 = add i64 %659, %209
  %scevgep295.us.1 = getelementptr i8, i8* %call, i64 %660
  %scevgep295296.us.1 = bitcast i8* %scevgep295.us.1 to double*
  %_p_scalar_297.us.1 = load double, double* %scevgep295296.us.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_297.us.1
  store double %p_add42.i118.us.1, double* %scevgep295296.us.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1
  %exitcond1047.1.not = icmp eq i64 %polly.indvar276.us.1, %smin1046
  br i1 %exitcond1047.1.not, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1, !llvm.loop !157

polly.loop_exit274.loopexit.us.1:                 ; preds = %polly.loop_header272.us.1, %middle.block1600
  %polly.access.add.Packed_MemRef_call2284.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.2, %206
  %polly.access.Packed_MemRef_call2285.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.2
  %_p_scalar_286.us.2 = load double, double* %polly.access.Packed_MemRef_call2285.us.2, align 8
  %polly.access.add.Packed_MemRef_call1292.us.2 = add nsw i64 %205, 2400
  %polly.access.Packed_MemRef_call1293.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.2
  %_p_scalar_294.us.2 = load double, double* %polly.access.Packed_MemRef_call1293.us.2, align 8
  %min.iters.check1572 = icmp ult i64 %197, 4
  br i1 %min.iters.check1572, label %polly.loop_header272.us.2.preheader, label %vector.memcheck1554

vector.memcheck1554:                              ; preds = %polly.loop_exit274.loopexit.us.1
  %bound01563 = icmp ult i8* %scevgep1556, %scevgep1562
  %bound11564 = icmp ult i8* %scevgep1560, %scevgep1559
  %found.conflict1565 = and i1 %bound01563, %bound11564
  br i1 %found.conflict1565, label %polly.loop_header272.us.2.preheader, label %vector.ph1573

vector.ph1573:                                    ; preds = %vector.memcheck1554
  %n.vec1575 = and i64 %197, -4
  %broadcast.splatinsert1581 = insertelement <4 x double> poison, double %_p_scalar_286.us.2, i32 0
  %broadcast.splat1582 = shufflevector <4 x double> %broadcast.splatinsert1581, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1584 = insertelement <4 x double> poison, double %_p_scalar_294.us.2, i32 0
  %broadcast.splat1585 = shufflevector <4 x double> %broadcast.splatinsert1584, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1569

vector.body1569:                                  ; preds = %vector.body1569, %vector.ph1573
  %index1576 = phi i64 [ 0, %vector.ph1573 ], [ %index.next1577, %vector.body1569 ]
  %661 = add nuw nsw i64 %index1576, %175
  %662 = add nuw nsw i64 %index1576, 2400
  %663 = getelementptr double, double* %Packed_MemRef_call1, i64 %662
  %664 = bitcast double* %663 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %664, align 8, !alias.scope !158
  %665 = fmul fast <4 x double> %broadcast.splat1582, %wide.load1580
  %666 = add nuw nsw i64 %661, %polly.access.mul.Packed_MemRef_call2283.us.2
  %667 = getelementptr double, double* %Packed_MemRef_call2, i64 %666
  %668 = bitcast double* %667 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %668, align 8
  %669 = fmul fast <4 x double> %broadcast.splat1585, %wide.load1583
  %670 = shl i64 %661, 3
  %671 = add i64 %670, %209
  %672 = getelementptr i8, i8* %call, i64 %671
  %673 = bitcast i8* %672 to <4 x double>*
  %wide.load1586 = load <4 x double>, <4 x double>* %673, align 8, !alias.scope !161, !noalias !163
  %674 = fadd fast <4 x double> %669, %665
  %675 = fmul fast <4 x double> %674, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %676 = fadd fast <4 x double> %675, %wide.load1586
  %677 = bitcast i8* %672 to <4 x double>*
  store <4 x double> %676, <4 x double>* %677, align 8, !alias.scope !161, !noalias !163
  %index.next1577 = add i64 %index1576, 4
  %678 = icmp eq i64 %index.next1577, %n.vec1575
  br i1 %678, label %middle.block1567, label %vector.body1569, !llvm.loop !164

middle.block1567:                                 ; preds = %vector.body1569
  %cmp.n1579 = icmp eq i64 %197, %n.vec1575
  br i1 %cmp.n1579, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2.preheader

polly.loop_header272.us.2.preheader:              ; preds = %vector.memcheck1554, %polly.loop_exit274.loopexit.us.1, %middle.block1567
  %polly.indvar276.us.2.ph = phi i64 [ 0, %vector.memcheck1554 ], [ 0, %polly.loop_exit274.loopexit.us.1 ], [ %n.vec1575, %middle.block1567 ]
  br label %polly.loop_header272.us.2

polly.loop_header272.us.2:                        ; preds = %polly.loop_header272.us.2.preheader, %polly.loop_header272.us.2
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_header272.us.2 ], [ %polly.indvar276.us.2.ph, %polly.loop_header272.us.2.preheader ]
  %679 = add nuw nsw i64 %polly.indvar276.us.2, %175
  %polly.access.add.Packed_MemRef_call1280.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 2400
  %polly.access.Packed_MemRef_call1281.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.2
  %_p_scalar_282.us.2 = load double, double* %polly.access.Packed_MemRef_call1281.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_286.us.2, %_p_scalar_282.us.2
  %polly.access.add.Packed_MemRef_call2288.us.2 = add nuw nsw i64 %679, %polly.access.mul.Packed_MemRef_call2283.us.2
  %polly.access.Packed_MemRef_call2289.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.2
  %_p_scalar_290.us.2 = load double, double* %polly.access.Packed_MemRef_call2289.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_294.us.2, %_p_scalar_290.us.2
  %680 = shl i64 %679, 3
  %681 = add i64 %680, %209
  %scevgep295.us.2 = getelementptr i8, i8* %call, i64 %681
  %scevgep295296.us.2 = bitcast i8* %scevgep295.us.2 to double*
  %_p_scalar_297.us.2 = load double, double* %scevgep295296.us.2, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_297.us.2
  store double %p_add42.i118.us.2, double* %scevgep295296.us.2, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 1
  %exitcond1047.2.not = icmp eq i64 %polly.indvar276.us.2, %smin1046
  br i1 %exitcond1047.2.not, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2, !llvm.loop !165

polly.loop_exit274.loopexit.us.2:                 ; preds = %polly.loop_header272.us.2, %middle.block1567
  %polly.access.add.Packed_MemRef_call2284.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.3, %206
  %polly.access.Packed_MemRef_call2285.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.3
  %_p_scalar_286.us.3 = load double, double* %polly.access.Packed_MemRef_call2285.us.3, align 8
  %polly.access.add.Packed_MemRef_call1292.us.3 = add nsw i64 %205, 3600
  %polly.access.Packed_MemRef_call1293.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.3
  %_p_scalar_294.us.3 = load double, double* %polly.access.Packed_MemRef_call1293.us.3, align 8
  %min.iters.check1539 = icmp ult i64 %204, 4
  br i1 %min.iters.check1539, label %polly.loop_header272.us.3.preheader, label %vector.ph1540

vector.ph1540:                                    ; preds = %polly.loop_exit274.loopexit.us.2
  %n.vec1542 = and i64 %204, -4
  %broadcast.splatinsert1548 = insertelement <4 x double> poison, double %_p_scalar_286.us.3, i32 0
  %broadcast.splat1549 = shufflevector <4 x double> %broadcast.splatinsert1548, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1551 = insertelement <4 x double> poison, double %_p_scalar_294.us.3, i32 0
  %broadcast.splat1552 = shufflevector <4 x double> %broadcast.splatinsert1551, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1534

vector.body1534:                                  ; preds = %vector.body1534, %vector.ph1540
  %index1543 = phi i64 [ 0, %vector.ph1540 ], [ %index.next1544, %vector.body1534 ]
  %682 = add nuw nsw i64 %index1543, %175
  %683 = add nuw nsw i64 %index1543, 3600
  %684 = getelementptr double, double* %Packed_MemRef_call1, i64 %683
  %685 = bitcast double* %684 to <4 x double>*
  %wide.load1547 = load <4 x double>, <4 x double>* %685, align 8
  %686 = fmul fast <4 x double> %broadcast.splat1549, %wide.load1547
  %687 = add nuw nsw i64 %682, %polly.access.mul.Packed_MemRef_call2283.us.3
  %688 = getelementptr double, double* %Packed_MemRef_call2, i64 %687
  %689 = bitcast double* %688 to <4 x double>*
  %wide.load1550 = load <4 x double>, <4 x double>* %689, align 8
  %690 = fmul fast <4 x double> %broadcast.splat1552, %wide.load1550
  %691 = shl i64 %682, 3
  %692 = add i64 %691, %209
  %693 = getelementptr i8, i8* %call, i64 %692
  %694 = bitcast i8* %693 to <4 x double>*
  %wide.load1553 = load <4 x double>, <4 x double>* %694, align 8, !alias.scope !65, !noalias !67
  %695 = fadd fast <4 x double> %690, %686
  %696 = fmul fast <4 x double> %695, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %697 = fadd fast <4 x double> %696, %wide.load1553
  %698 = bitcast i8* %693 to <4 x double>*
  store <4 x double> %697, <4 x double>* %698, align 8, !alias.scope !65, !noalias !67
  %index.next1544 = add i64 %index1543, 4
  %699 = icmp eq i64 %index.next1544, %n.vec1542
  br i1 %699, label %middle.block1532, label %vector.body1534, !llvm.loop !166

middle.block1532:                                 ; preds = %vector.body1534
  %cmp.n1546 = icmp eq i64 %204, %n.vec1542
  br i1 %cmp.n1546, label %polly.loop_exit267, label %polly.loop_header272.us.3.preheader

polly.loop_header272.us.3.preheader:              ; preds = %polly.loop_exit274.loopexit.us.2, %middle.block1532
  %polly.indvar276.us.3.ph = phi i64 [ 0, %polly.loop_exit274.loopexit.us.2 ], [ %n.vec1542, %middle.block1532 ]
  br label %polly.loop_header272.us.3

polly.loop_header272.us.3:                        ; preds = %polly.loop_header272.us.3.preheader, %polly.loop_header272.us.3
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_header272.us.3 ], [ %polly.indvar276.us.3.ph, %polly.loop_header272.us.3.preheader ]
  %700 = add nuw nsw i64 %polly.indvar276.us.3, %175
  %polly.access.add.Packed_MemRef_call1280.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 3600
  %polly.access.Packed_MemRef_call1281.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.3
  %_p_scalar_282.us.3 = load double, double* %polly.access.Packed_MemRef_call1281.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_286.us.3, %_p_scalar_282.us.3
  %polly.access.add.Packed_MemRef_call2288.us.3 = add nuw nsw i64 %700, %polly.access.mul.Packed_MemRef_call2283.us.3
  %polly.access.Packed_MemRef_call2289.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.3
  %_p_scalar_290.us.3 = load double, double* %polly.access.Packed_MemRef_call2289.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_294.us.3, %_p_scalar_290.us.3
  %701 = shl i64 %700, 3
  %702 = add i64 %701, %209
  %scevgep295.us.3 = getelementptr i8, i8* %call, i64 %702
  %scevgep295296.us.3 = bitcast i8* %scevgep295.us.3 to double*
  %_p_scalar_297.us.3 = load double, double* %scevgep295296.us.3, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_297.us.3
  store double %p_add42.i118.us.3, double* %scevgep295296.us.3, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 1
  %exitcond1047.3.not = icmp eq i64 %polly.indvar276.us.3, %smin1046
  br i1 %exitcond1047.3.not, label %polly.loop_exit267, label %polly.loop_header272.us.3, !llvm.loop !167

polly.loop_header454.us.1:                        ; preds = %polly.loop_header454.us.1.preheader, %polly.loop_header454.us.1
  %polly.indvar458.us.1 = phi i64 [ %polly.indvar_next459.us.1, %polly.loop_header454.us.1 ], [ 0, %polly.loop_header454.us.1.preheader ]
  %703 = add nuw nsw i64 %polly.indvar458.us.1, %335
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %703, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %276, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.1 = add nuw nsw i64 %polly.indvar458.us.1, 1200
  %polly.access.Packed_MemRef_call1303.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1303.us.1, align 8
  %polly.indvar_next459.us.1 = add nuw nsw i64 %polly.indvar458.us.1, 1
  %exitcond1071.1.not = icmp eq i64 %polly.indvar458.us.1, %smin1073
  br i1 %exitcond1071.1.not, label %polly.cond465.loopexit.us.1, label %polly.loop_header454.us.1

polly.cond465.loopexit.us.1:                      ; preds = %polly.loop_header454.us.1
  br i1 %.not926, label %polly.loop_header454.us.2.preheader, label %polly.then467.us.1

polly.then467.us.1:                               ; preds = %polly.cond465.loopexit.us.1
  %polly.access.add.call1471.us.1 = or i64 %367, 1
  %polly.access.call1472.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.1
  %polly.access.call1472.load.us.1 = load double, double* %polly.access.call1472.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.1 = add nsw i64 %365, 1200
  %polly.access.Packed_MemRef_call1303475.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.1
  store double %polly.access.call1472.load.us.1, double* %polly.access.Packed_MemRef_call1303475.us.1, align 8
  br label %polly.loop_header454.us.2.preheader

polly.loop_header454.us.2.preheader:              ; preds = %polly.then467.us.1, %polly.cond465.loopexit.us.1
  br label %polly.loop_header454.us.2

polly.loop_header454.us.2:                        ; preds = %polly.loop_header454.us.2.preheader, %polly.loop_header454.us.2
  %polly.indvar458.us.2 = phi i64 [ %polly.indvar_next459.us.2, %polly.loop_header454.us.2 ], [ 0, %polly.loop_header454.us.2.preheader ]
  %704 = add nuw nsw i64 %polly.indvar458.us.2, %335
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %704, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %277, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.2 = add nuw nsw i64 %polly.indvar458.us.2, 2400
  %polly.access.Packed_MemRef_call1303.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1303.us.2, align 8
  %polly.indvar_next459.us.2 = add nuw nsw i64 %polly.indvar458.us.2, 1
  %exitcond1071.2.not = icmp eq i64 %polly.indvar458.us.2, %smin1073
  br i1 %exitcond1071.2.not, label %polly.cond465.loopexit.us.2, label %polly.loop_header454.us.2

polly.cond465.loopexit.us.2:                      ; preds = %polly.loop_header454.us.2
  br i1 %.not926, label %polly.loop_header454.us.3.preheader, label %polly.then467.us.2

polly.then467.us.2:                               ; preds = %polly.cond465.loopexit.us.2
  %polly.access.add.call1471.us.2 = or i64 %367, 2
  %polly.access.call1472.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.2
  %polly.access.call1472.load.us.2 = load double, double* %polly.access.call1472.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.2 = add nsw i64 %365, 2400
  %polly.access.Packed_MemRef_call1303475.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.2
  store double %polly.access.call1472.load.us.2, double* %polly.access.Packed_MemRef_call1303475.us.2, align 8
  br label %polly.loop_header454.us.3.preheader

polly.loop_header454.us.3.preheader:              ; preds = %polly.then467.us.2, %polly.cond465.loopexit.us.2
  br label %polly.loop_header454.us.3

polly.loop_header454.us.3:                        ; preds = %polly.loop_header454.us.3.preheader, %polly.loop_header454.us.3
  %polly.indvar458.us.3 = phi i64 [ %polly.indvar_next459.us.3, %polly.loop_header454.us.3 ], [ 0, %polly.loop_header454.us.3.preheader ]
  %705 = add nuw nsw i64 %polly.indvar458.us.3, %335
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %705, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %278, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.3 = add nuw nsw i64 %polly.indvar458.us.3, 3600
  %polly.access.Packed_MemRef_call1303.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1303.us.3, align 8
  %polly.indvar_next459.us.3 = add nuw nsw i64 %polly.indvar458.us.3, 1
  %exitcond1071.3.not = icmp eq i64 %polly.indvar458.us.3, %smin1073
  br i1 %exitcond1071.3.not, label %polly.cond465.loopexit.us.3, label %polly.loop_header454.us.3

polly.cond465.loopexit.us.3:                      ; preds = %polly.loop_header454.us.3
  br i1 %.not926, label %polly.loop_header476.preheader, label %polly.then467.us.3

polly.then467.us.3:                               ; preds = %polly.cond465.loopexit.us.3
  %polly.access.add.call1471.us.3 = or i64 %367, 3
  %polly.access.call1472.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.3
  %polly.access.call1472.load.us.3 = load double, double* %polly.access.call1472.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.3 = add nsw i64 %365, 3600
  %polly.access.Packed_MemRef_call1303475.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.3
  store double %polly.access.call1472.load.us.3, double* %polly.access.Packed_MemRef_call1303475.us.3, align 8
  br label %polly.loop_header476.preheader

polly.loop_header483.us.1:                        ; preds = %polly.loop_header483.us.1.preheader, %polly.loop_header483.us.1
  %polly.indvar487.us.1 = phi i64 [ %polly.indvar_next488.us.1, %polly.loop_header483.us.1 ], [ %polly.indvar487.us.1.ph, %polly.loop_header483.us.1.preheader ]
  %706 = add nuw nsw i64 %polly.indvar487.us.1, %335
  %polly.access.add.Packed_MemRef_call1303491.us.1 = add nuw nsw i64 %polly.indvar487.us.1, 1200
  %polly.access.Packed_MemRef_call1303492.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.1
  %_p_scalar_493.us.1 = load double, double* %polly.access.Packed_MemRef_call1303492.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_497.us.1, %_p_scalar_493.us.1
  %polly.access.add.Packed_MemRef_call2305499.us.1 = add nuw nsw i64 %706, %polly.access.mul.Packed_MemRef_call2305494.us.1
  %polly.access.Packed_MemRef_call2305500.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call2305500.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_505.us.1, %_p_scalar_501.us.1
  %707 = shl i64 %706, 3
  %708 = add i64 %707, %369
  %scevgep506.us.1 = getelementptr i8, i8* %call, i64 %708
  %scevgep506507.us.1 = bitcast i8* %scevgep506.us.1 to double*
  %_p_scalar_508.us.1 = load double, double* %scevgep506507.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_508.us.1
  store double %p_add42.i79.us.1, double* %scevgep506507.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next488.us.1 = add nuw nsw i64 %polly.indvar487.us.1, 1
  %exitcond1074.1.not = icmp eq i64 %polly.indvar487.us.1, %smin1073
  br i1 %exitcond1074.1.not, label %polly.loop_exit485.loopexit.us.1, label %polly.loop_header483.us.1, !llvm.loop !168

polly.loop_exit485.loopexit.us.1:                 ; preds = %polly.loop_header483.us.1, %middle.block1454
  %polly.access.add.Packed_MemRef_call2305495.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.2, %366
  %polly.access.Packed_MemRef_call2305496.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call2305496.us.2, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.2 = add nsw i64 %365, 2400
  %polly.access.Packed_MemRef_call1303504.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call1303504.us.2, align 8
  %min.iters.check1426 = icmp ult i64 %357, 4
  br i1 %min.iters.check1426, label %polly.loop_header483.us.2.preheader, label %vector.memcheck1408

vector.memcheck1408:                              ; preds = %polly.loop_exit485.loopexit.us.1
  %bound01417 = icmp ult i8* %scevgep1410, %scevgep1416
  %bound11418 = icmp ult i8* %scevgep1414, %scevgep1413
  %found.conflict1419 = and i1 %bound01417, %bound11418
  br i1 %found.conflict1419, label %polly.loop_header483.us.2.preheader, label %vector.ph1427

vector.ph1427:                                    ; preds = %vector.memcheck1408
  %n.vec1429 = and i64 %357, -4
  %broadcast.splatinsert1435 = insertelement <4 x double> poison, double %_p_scalar_497.us.2, i32 0
  %broadcast.splat1436 = shufflevector <4 x double> %broadcast.splatinsert1435, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1438 = insertelement <4 x double> poison, double %_p_scalar_505.us.2, i32 0
  %broadcast.splat1439 = shufflevector <4 x double> %broadcast.splatinsert1438, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1423

vector.body1423:                                  ; preds = %vector.body1423, %vector.ph1427
  %index1430 = phi i64 [ 0, %vector.ph1427 ], [ %index.next1431, %vector.body1423 ]
  %709 = add nuw nsw i64 %index1430, %335
  %710 = add nuw nsw i64 %index1430, 2400
  %711 = getelementptr double, double* %Packed_MemRef_call1303, i64 %710
  %712 = bitcast double* %711 to <4 x double>*
  %wide.load1434 = load <4 x double>, <4 x double>* %712, align 8, !alias.scope !169
  %713 = fmul fast <4 x double> %broadcast.splat1436, %wide.load1434
  %714 = add nuw nsw i64 %709, %polly.access.mul.Packed_MemRef_call2305494.us.2
  %715 = getelementptr double, double* %Packed_MemRef_call2305, i64 %714
  %716 = bitcast double* %715 to <4 x double>*
  %wide.load1437 = load <4 x double>, <4 x double>* %716, align 8
  %717 = fmul fast <4 x double> %broadcast.splat1439, %wide.load1437
  %718 = shl i64 %709, 3
  %719 = add i64 %718, %369
  %720 = getelementptr i8, i8* %call, i64 %719
  %721 = bitcast i8* %720 to <4 x double>*
  %wide.load1440 = load <4 x double>, <4 x double>* %721, align 8, !alias.scope !172, !noalias !174
  %722 = fadd fast <4 x double> %717, %713
  %723 = fmul fast <4 x double> %722, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %724 = fadd fast <4 x double> %723, %wide.load1440
  %725 = bitcast i8* %720 to <4 x double>*
  store <4 x double> %724, <4 x double>* %725, align 8, !alias.scope !172, !noalias !174
  %index.next1431 = add i64 %index1430, 4
  %726 = icmp eq i64 %index.next1431, %n.vec1429
  br i1 %726, label %middle.block1421, label %vector.body1423, !llvm.loop !175

middle.block1421:                                 ; preds = %vector.body1423
  %cmp.n1433 = icmp eq i64 %357, %n.vec1429
  br i1 %cmp.n1433, label %polly.loop_exit485.loopexit.us.2, label %polly.loop_header483.us.2.preheader

polly.loop_header483.us.2.preheader:              ; preds = %vector.memcheck1408, %polly.loop_exit485.loopexit.us.1, %middle.block1421
  %polly.indvar487.us.2.ph = phi i64 [ 0, %vector.memcheck1408 ], [ 0, %polly.loop_exit485.loopexit.us.1 ], [ %n.vec1429, %middle.block1421 ]
  br label %polly.loop_header483.us.2

polly.loop_header483.us.2:                        ; preds = %polly.loop_header483.us.2.preheader, %polly.loop_header483.us.2
  %polly.indvar487.us.2 = phi i64 [ %polly.indvar_next488.us.2, %polly.loop_header483.us.2 ], [ %polly.indvar487.us.2.ph, %polly.loop_header483.us.2.preheader ]
  %727 = add nuw nsw i64 %polly.indvar487.us.2, %335
  %polly.access.add.Packed_MemRef_call1303491.us.2 = add nuw nsw i64 %polly.indvar487.us.2, 2400
  %polly.access.Packed_MemRef_call1303492.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.2
  %_p_scalar_493.us.2 = load double, double* %polly.access.Packed_MemRef_call1303492.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_497.us.2, %_p_scalar_493.us.2
  %polly.access.add.Packed_MemRef_call2305499.us.2 = add nuw nsw i64 %727, %polly.access.mul.Packed_MemRef_call2305494.us.2
  %polly.access.Packed_MemRef_call2305500.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call2305500.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_505.us.2, %_p_scalar_501.us.2
  %728 = shl i64 %727, 3
  %729 = add i64 %728, %369
  %scevgep506.us.2 = getelementptr i8, i8* %call, i64 %729
  %scevgep506507.us.2 = bitcast i8* %scevgep506.us.2 to double*
  %_p_scalar_508.us.2 = load double, double* %scevgep506507.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_508.us.2
  store double %p_add42.i79.us.2, double* %scevgep506507.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next488.us.2 = add nuw nsw i64 %polly.indvar487.us.2, 1
  %exitcond1074.2.not = icmp eq i64 %polly.indvar487.us.2, %smin1073
  br i1 %exitcond1074.2.not, label %polly.loop_exit485.loopexit.us.2, label %polly.loop_header483.us.2, !llvm.loop !176

polly.loop_exit485.loopexit.us.2:                 ; preds = %polly.loop_header483.us.2, %middle.block1421
  %polly.access.add.Packed_MemRef_call2305495.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.3, %366
  %polly.access.Packed_MemRef_call2305496.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call2305496.us.3, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.3 = add nsw i64 %365, 3600
  %polly.access.Packed_MemRef_call1303504.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call1303504.us.3, align 8
  %min.iters.check1393 = icmp ult i64 %364, 4
  br i1 %min.iters.check1393, label %polly.loop_header483.us.3.preheader, label %vector.ph1394

vector.ph1394:                                    ; preds = %polly.loop_exit485.loopexit.us.2
  %n.vec1396 = and i64 %364, -4
  %broadcast.splatinsert1402 = insertelement <4 x double> poison, double %_p_scalar_497.us.3, i32 0
  %broadcast.splat1403 = shufflevector <4 x double> %broadcast.splatinsert1402, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1405 = insertelement <4 x double> poison, double %_p_scalar_505.us.3, i32 0
  %broadcast.splat1406 = shufflevector <4 x double> %broadcast.splatinsert1405, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1388

vector.body1388:                                  ; preds = %vector.body1388, %vector.ph1394
  %index1397 = phi i64 [ 0, %vector.ph1394 ], [ %index.next1398, %vector.body1388 ]
  %730 = add nuw nsw i64 %index1397, %335
  %731 = add nuw nsw i64 %index1397, 3600
  %732 = getelementptr double, double* %Packed_MemRef_call1303, i64 %731
  %733 = bitcast double* %732 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %733, align 8
  %734 = fmul fast <4 x double> %broadcast.splat1403, %wide.load1401
  %735 = add nuw nsw i64 %730, %polly.access.mul.Packed_MemRef_call2305494.us.3
  %736 = getelementptr double, double* %Packed_MemRef_call2305, i64 %735
  %737 = bitcast double* %736 to <4 x double>*
  %wide.load1404 = load <4 x double>, <4 x double>* %737, align 8
  %738 = fmul fast <4 x double> %broadcast.splat1406, %wide.load1404
  %739 = shl i64 %730, 3
  %740 = add i64 %739, %369
  %741 = getelementptr i8, i8* %call, i64 %740
  %742 = bitcast i8* %741 to <4 x double>*
  %wide.load1407 = load <4 x double>, <4 x double>* %742, align 8, !alias.scope !92, !noalias !94
  %743 = fadd fast <4 x double> %738, %734
  %744 = fmul fast <4 x double> %743, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %745 = fadd fast <4 x double> %744, %wide.load1407
  %746 = bitcast i8* %741 to <4 x double>*
  store <4 x double> %745, <4 x double>* %746, align 8, !alias.scope !92, !noalias !94
  %index.next1398 = add i64 %index1397, 4
  %747 = icmp eq i64 %index.next1398, %n.vec1396
  br i1 %747, label %middle.block1386, label %vector.body1388, !llvm.loop !177

middle.block1386:                                 ; preds = %vector.body1388
  %cmp.n1400 = icmp eq i64 %364, %n.vec1396
  br i1 %cmp.n1400, label %polly.loop_exit478, label %polly.loop_header483.us.3.preheader

polly.loop_header483.us.3.preheader:              ; preds = %polly.loop_exit485.loopexit.us.2, %middle.block1386
  %polly.indvar487.us.3.ph = phi i64 [ 0, %polly.loop_exit485.loopexit.us.2 ], [ %n.vec1396, %middle.block1386 ]
  br label %polly.loop_header483.us.3

polly.loop_header483.us.3:                        ; preds = %polly.loop_header483.us.3.preheader, %polly.loop_header483.us.3
  %polly.indvar487.us.3 = phi i64 [ %polly.indvar_next488.us.3, %polly.loop_header483.us.3 ], [ %polly.indvar487.us.3.ph, %polly.loop_header483.us.3.preheader ]
  %748 = add nuw nsw i64 %polly.indvar487.us.3, %335
  %polly.access.add.Packed_MemRef_call1303491.us.3 = add nuw nsw i64 %polly.indvar487.us.3, 3600
  %polly.access.Packed_MemRef_call1303492.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.3
  %_p_scalar_493.us.3 = load double, double* %polly.access.Packed_MemRef_call1303492.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_497.us.3, %_p_scalar_493.us.3
  %polly.access.add.Packed_MemRef_call2305499.us.3 = add nuw nsw i64 %748, %polly.access.mul.Packed_MemRef_call2305494.us.3
  %polly.access.Packed_MemRef_call2305500.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call2305500.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_505.us.3, %_p_scalar_501.us.3
  %749 = shl i64 %748, 3
  %750 = add i64 %749, %369
  %scevgep506.us.3 = getelementptr i8, i8* %call, i64 %750
  %scevgep506507.us.3 = bitcast i8* %scevgep506.us.3 to double*
  %_p_scalar_508.us.3 = load double, double* %scevgep506507.us.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_508.us.3
  store double %p_add42.i79.us.3, double* %scevgep506507.us.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next488.us.3 = add nuw nsw i64 %polly.indvar487.us.3, 1
  %exitcond1074.3.not = icmp eq i64 %polly.indvar487.us.3, %smin1073
  br i1 %exitcond1074.3.not, label %polly.loop_exit478, label %polly.loop_header483.us.3, !llvm.loop !178

polly.loop_header665.us.1:                        ; preds = %polly.loop_header665.us.1.preheader, %polly.loop_header665.us.1
  %polly.indvar669.us.1 = phi i64 [ %polly.indvar_next670.us.1, %polly.loop_header665.us.1 ], [ 0, %polly.loop_header665.us.1.preheader ]
  %751 = add nuw nsw i64 %polly.indvar669.us.1, %495
  %polly.access.mul.call1673.us.1 = mul nuw nsw i64 %751, 1000
  %polly.access.add.call1674.us.1 = add nuw nsw i64 %436, %polly.access.mul.call1673.us.1
  %polly.access.call1675.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us.1
  %polly.access.call1675.load.us.1 = load double, double* %polly.access.call1675.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514.us.1 = add nuw nsw i64 %polly.indvar669.us.1, 1200
  %polly.access.Packed_MemRef_call1514.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.1
  store double %polly.access.call1675.load.us.1, double* %polly.access.Packed_MemRef_call1514.us.1, align 8
  %polly.indvar_next670.us.1 = add nuw nsw i64 %polly.indvar669.us.1, 1
  %exitcond1098.1.not = icmp eq i64 %polly.indvar669.us.1, %smin1100
  br i1 %exitcond1098.1.not, label %polly.cond676.loopexit.us.1, label %polly.loop_header665.us.1

polly.cond676.loopexit.us.1:                      ; preds = %polly.loop_header665.us.1
  br i1 %.not927, label %polly.loop_header665.us.2.preheader, label %polly.then678.us.1

polly.then678.us.1:                               ; preds = %polly.cond676.loopexit.us.1
  %polly.access.add.call1682.us.1 = or i64 %527, 1
  %polly.access.call1683.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.1
  %polly.access.call1683.load.us.1 = load double, double* %polly.access.call1683.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.1 = add nsw i64 %525, 1200
  %polly.access.Packed_MemRef_call1514686.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.1
  store double %polly.access.call1683.load.us.1, double* %polly.access.Packed_MemRef_call1514686.us.1, align 8
  br label %polly.loop_header665.us.2.preheader

polly.loop_header665.us.2.preheader:              ; preds = %polly.then678.us.1, %polly.cond676.loopexit.us.1
  br label %polly.loop_header665.us.2

polly.loop_header665.us.2:                        ; preds = %polly.loop_header665.us.2.preheader, %polly.loop_header665.us.2
  %polly.indvar669.us.2 = phi i64 [ %polly.indvar_next670.us.2, %polly.loop_header665.us.2 ], [ 0, %polly.loop_header665.us.2.preheader ]
  %752 = add nuw nsw i64 %polly.indvar669.us.2, %495
  %polly.access.mul.call1673.us.2 = mul nuw nsw i64 %752, 1000
  %polly.access.add.call1674.us.2 = add nuw nsw i64 %437, %polly.access.mul.call1673.us.2
  %polly.access.call1675.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us.2
  %polly.access.call1675.load.us.2 = load double, double* %polly.access.call1675.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514.us.2 = add nuw nsw i64 %polly.indvar669.us.2, 2400
  %polly.access.Packed_MemRef_call1514.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.2
  store double %polly.access.call1675.load.us.2, double* %polly.access.Packed_MemRef_call1514.us.2, align 8
  %polly.indvar_next670.us.2 = add nuw nsw i64 %polly.indvar669.us.2, 1
  %exitcond1098.2.not = icmp eq i64 %polly.indvar669.us.2, %smin1100
  br i1 %exitcond1098.2.not, label %polly.cond676.loopexit.us.2, label %polly.loop_header665.us.2

polly.cond676.loopexit.us.2:                      ; preds = %polly.loop_header665.us.2
  br i1 %.not927, label %polly.loop_header665.us.3.preheader, label %polly.then678.us.2

polly.then678.us.2:                               ; preds = %polly.cond676.loopexit.us.2
  %polly.access.add.call1682.us.2 = or i64 %527, 2
  %polly.access.call1683.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.2
  %polly.access.call1683.load.us.2 = load double, double* %polly.access.call1683.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.2 = add nsw i64 %525, 2400
  %polly.access.Packed_MemRef_call1514686.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.2
  store double %polly.access.call1683.load.us.2, double* %polly.access.Packed_MemRef_call1514686.us.2, align 8
  br label %polly.loop_header665.us.3.preheader

polly.loop_header665.us.3.preheader:              ; preds = %polly.then678.us.2, %polly.cond676.loopexit.us.2
  br label %polly.loop_header665.us.3

polly.loop_header665.us.3:                        ; preds = %polly.loop_header665.us.3.preheader, %polly.loop_header665.us.3
  %polly.indvar669.us.3 = phi i64 [ %polly.indvar_next670.us.3, %polly.loop_header665.us.3 ], [ 0, %polly.loop_header665.us.3.preheader ]
  %753 = add nuw nsw i64 %polly.indvar669.us.3, %495
  %polly.access.mul.call1673.us.3 = mul nuw nsw i64 %753, 1000
  %polly.access.add.call1674.us.3 = add nuw nsw i64 %438, %polly.access.mul.call1673.us.3
  %polly.access.call1675.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us.3
  %polly.access.call1675.load.us.3 = load double, double* %polly.access.call1675.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514.us.3 = add nuw nsw i64 %polly.indvar669.us.3, 3600
  %polly.access.Packed_MemRef_call1514.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.3
  store double %polly.access.call1675.load.us.3, double* %polly.access.Packed_MemRef_call1514.us.3, align 8
  %polly.indvar_next670.us.3 = add nuw nsw i64 %polly.indvar669.us.3, 1
  %exitcond1098.3.not = icmp eq i64 %polly.indvar669.us.3, %smin1100
  br i1 %exitcond1098.3.not, label %polly.cond676.loopexit.us.3, label %polly.loop_header665.us.3

polly.cond676.loopexit.us.3:                      ; preds = %polly.loop_header665.us.3
  br i1 %.not927, label %polly.loop_header687.preheader, label %polly.then678.us.3

polly.then678.us.3:                               ; preds = %polly.cond676.loopexit.us.3
  %polly.access.add.call1682.us.3 = or i64 %527, 3
  %polly.access.call1683.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.3
  %polly.access.call1683.load.us.3 = load double, double* %polly.access.call1683.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.3 = add nsw i64 %525, 3600
  %polly.access.Packed_MemRef_call1514686.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.3
  store double %polly.access.call1683.load.us.3, double* %polly.access.Packed_MemRef_call1514686.us.3, align 8
  br label %polly.loop_header687.preheader

polly.loop_header694.us.1:                        ; preds = %polly.loop_header694.us.1.preheader, %polly.loop_header694.us.1
  %polly.indvar698.us.1 = phi i64 [ %polly.indvar_next699.us.1, %polly.loop_header694.us.1 ], [ %polly.indvar698.us.1.ph, %polly.loop_header694.us.1.preheader ]
  %754 = add nuw nsw i64 %polly.indvar698.us.1, %495
  %polly.access.add.Packed_MemRef_call1514702.us.1 = add nuw nsw i64 %polly.indvar698.us.1, 1200
  %polly.access.Packed_MemRef_call1514703.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.1
  %_p_scalar_704.us.1 = load double, double* %polly.access.Packed_MemRef_call1514703.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_708.us.1, %_p_scalar_704.us.1
  %polly.access.add.Packed_MemRef_call2516710.us.1 = add nuw nsw i64 %754, %polly.access.mul.Packed_MemRef_call2516705.us.1
  %polly.access.Packed_MemRef_call2516711.us.1 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.1
  %_p_scalar_712.us.1 = load double, double* %polly.access.Packed_MemRef_call2516711.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_716.us.1, %_p_scalar_712.us.1
  %755 = shl i64 %754, 3
  %756 = add i64 %755, %529
  %scevgep717.us.1 = getelementptr i8, i8* %call, i64 %756
  %scevgep717718.us.1 = bitcast i8* %scevgep717.us.1 to double*
  %_p_scalar_719.us.1 = load double, double* %scevgep717718.us.1, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_719.us.1
  store double %p_add42.i.us.1, double* %scevgep717718.us.1, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us.1 = add nuw nsw i64 %polly.indvar698.us.1, 1
  %exitcond1101.1.not = icmp eq i64 %polly.indvar698.us.1, %smin1100
  br i1 %exitcond1101.1.not, label %polly.loop_exit696.loopexit.us.1, label %polly.loop_header694.us.1, !llvm.loop !179

polly.loop_exit696.loopexit.us.1:                 ; preds = %polly.loop_header694.us.1, %middle.block1308
  %polly.access.add.Packed_MemRef_call2516706.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.2, %526
  %polly.access.Packed_MemRef_call2516707.us.2 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.2
  %_p_scalar_708.us.2 = load double, double* %polly.access.Packed_MemRef_call2516707.us.2, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.2 = add nsw i64 %525, 2400
  %polly.access.Packed_MemRef_call1514715.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.2
  %_p_scalar_716.us.2 = load double, double* %polly.access.Packed_MemRef_call1514715.us.2, align 8
  %min.iters.check1280 = icmp ult i64 %517, 4
  br i1 %min.iters.check1280, label %polly.loop_header694.us.2.preheader, label %vector.memcheck1262

vector.memcheck1262:                              ; preds = %polly.loop_exit696.loopexit.us.1
  %bound01271 = icmp ult i8* %scevgep1264, %scevgep1270
  %bound11272 = icmp ult i8* %scevgep1268, %scevgep1267
  %found.conflict1273 = and i1 %bound01271, %bound11272
  br i1 %found.conflict1273, label %polly.loop_header694.us.2.preheader, label %vector.ph1281

vector.ph1281:                                    ; preds = %vector.memcheck1262
  %n.vec1283 = and i64 %517, -4
  %broadcast.splatinsert1289 = insertelement <4 x double> poison, double %_p_scalar_708.us.2, i32 0
  %broadcast.splat1290 = shufflevector <4 x double> %broadcast.splatinsert1289, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1292 = insertelement <4 x double> poison, double %_p_scalar_716.us.2, i32 0
  %broadcast.splat1293 = shufflevector <4 x double> %broadcast.splatinsert1292, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1277 ]
  %757 = add nuw nsw i64 %index1284, %495
  %758 = add nuw nsw i64 %index1284, 2400
  %759 = getelementptr double, double* %Packed_MemRef_call1514, i64 %758
  %760 = bitcast double* %759 to <4 x double>*
  %wide.load1288 = load <4 x double>, <4 x double>* %760, align 8, !alias.scope !180
  %761 = fmul fast <4 x double> %broadcast.splat1290, %wide.load1288
  %762 = add nuw nsw i64 %757, %polly.access.mul.Packed_MemRef_call2516705.us.2
  %763 = getelementptr double, double* %Packed_MemRef_call2516, i64 %762
  %764 = bitcast double* %763 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %764, align 8
  %765 = fmul fast <4 x double> %broadcast.splat1293, %wide.load1291
  %766 = shl i64 %757, 3
  %767 = add i64 %766, %529
  %768 = getelementptr i8, i8* %call, i64 %767
  %769 = bitcast i8* %768 to <4 x double>*
  %wide.load1294 = load <4 x double>, <4 x double>* %769, align 8, !alias.scope !183, !noalias !185
  %770 = fadd fast <4 x double> %765, %761
  %771 = fmul fast <4 x double> %770, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %772 = fadd fast <4 x double> %771, %wide.load1294
  %773 = bitcast i8* %768 to <4 x double>*
  store <4 x double> %772, <4 x double>* %773, align 8, !alias.scope !183, !noalias !185
  %index.next1285 = add i64 %index1284, 4
  %774 = icmp eq i64 %index.next1285, %n.vec1283
  br i1 %774, label %middle.block1275, label %vector.body1277, !llvm.loop !186

middle.block1275:                                 ; preds = %vector.body1277
  %cmp.n1287 = icmp eq i64 %517, %n.vec1283
  br i1 %cmp.n1287, label %polly.loop_exit696.loopexit.us.2, label %polly.loop_header694.us.2.preheader

polly.loop_header694.us.2.preheader:              ; preds = %vector.memcheck1262, %polly.loop_exit696.loopexit.us.1, %middle.block1275
  %polly.indvar698.us.2.ph = phi i64 [ 0, %vector.memcheck1262 ], [ 0, %polly.loop_exit696.loopexit.us.1 ], [ %n.vec1283, %middle.block1275 ]
  br label %polly.loop_header694.us.2

polly.loop_header694.us.2:                        ; preds = %polly.loop_header694.us.2.preheader, %polly.loop_header694.us.2
  %polly.indvar698.us.2 = phi i64 [ %polly.indvar_next699.us.2, %polly.loop_header694.us.2 ], [ %polly.indvar698.us.2.ph, %polly.loop_header694.us.2.preheader ]
  %775 = add nuw nsw i64 %polly.indvar698.us.2, %495
  %polly.access.add.Packed_MemRef_call1514702.us.2 = add nuw nsw i64 %polly.indvar698.us.2, 2400
  %polly.access.Packed_MemRef_call1514703.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.2
  %_p_scalar_704.us.2 = load double, double* %polly.access.Packed_MemRef_call1514703.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_708.us.2, %_p_scalar_704.us.2
  %polly.access.add.Packed_MemRef_call2516710.us.2 = add nuw nsw i64 %775, %polly.access.mul.Packed_MemRef_call2516705.us.2
  %polly.access.Packed_MemRef_call2516711.us.2 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.2
  %_p_scalar_712.us.2 = load double, double* %polly.access.Packed_MemRef_call2516711.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_716.us.2, %_p_scalar_712.us.2
  %776 = shl i64 %775, 3
  %777 = add i64 %776, %529
  %scevgep717.us.2 = getelementptr i8, i8* %call, i64 %777
  %scevgep717718.us.2 = bitcast i8* %scevgep717.us.2 to double*
  %_p_scalar_719.us.2 = load double, double* %scevgep717718.us.2, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_719.us.2
  store double %p_add42.i.us.2, double* %scevgep717718.us.2, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us.2 = add nuw nsw i64 %polly.indvar698.us.2, 1
  %exitcond1101.2.not = icmp eq i64 %polly.indvar698.us.2, %smin1100
  br i1 %exitcond1101.2.not, label %polly.loop_exit696.loopexit.us.2, label %polly.loop_header694.us.2, !llvm.loop !187

polly.loop_exit696.loopexit.us.2:                 ; preds = %polly.loop_header694.us.2, %middle.block1275
  %polly.access.add.Packed_MemRef_call2516706.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.3, %526
  %polly.access.Packed_MemRef_call2516707.us.3 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.3
  %_p_scalar_708.us.3 = load double, double* %polly.access.Packed_MemRef_call2516707.us.3, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.3 = add nsw i64 %525, 3600
  %polly.access.Packed_MemRef_call1514715.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.3
  %_p_scalar_716.us.3 = load double, double* %polly.access.Packed_MemRef_call1514715.us.3, align 8
  %min.iters.check1247 = icmp ult i64 %524, 4
  br i1 %min.iters.check1247, label %polly.loop_header694.us.3.preheader, label %vector.ph1248

vector.ph1248:                                    ; preds = %polly.loop_exit696.loopexit.us.2
  %n.vec1250 = and i64 %524, -4
  %broadcast.splatinsert1256 = insertelement <4 x double> poison, double %_p_scalar_708.us.3, i32 0
  %broadcast.splat1257 = shufflevector <4 x double> %broadcast.splatinsert1256, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1259 = insertelement <4 x double> poison, double %_p_scalar_716.us.3, i32 0
  %broadcast.splat1260 = shufflevector <4 x double> %broadcast.splatinsert1259, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1242 ]
  %778 = add nuw nsw i64 %index1251, %495
  %779 = add nuw nsw i64 %index1251, 3600
  %780 = getelementptr double, double* %Packed_MemRef_call1514, i64 %779
  %781 = bitcast double* %780 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %781, align 8
  %782 = fmul fast <4 x double> %broadcast.splat1257, %wide.load1255
  %783 = add nuw nsw i64 %778, %polly.access.mul.Packed_MemRef_call2516705.us.3
  %784 = getelementptr double, double* %Packed_MemRef_call2516, i64 %783
  %785 = bitcast double* %784 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %785, align 8
  %786 = fmul fast <4 x double> %broadcast.splat1260, %wide.load1258
  %787 = shl i64 %778, 3
  %788 = add i64 %787, %529
  %789 = getelementptr i8, i8* %call, i64 %788
  %790 = bitcast i8* %789 to <4 x double>*
  %wide.load1261 = load <4 x double>, <4 x double>* %790, align 8, !alias.scope !118, !noalias !120
  %791 = fadd fast <4 x double> %786, %782
  %792 = fmul fast <4 x double> %791, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %793 = fadd fast <4 x double> %792, %wide.load1261
  %794 = bitcast i8* %789 to <4 x double>*
  store <4 x double> %793, <4 x double>* %794, align 8, !alias.scope !118, !noalias !120
  %index.next1252 = add i64 %index1251, 4
  %795 = icmp eq i64 %index.next1252, %n.vec1250
  br i1 %795, label %middle.block1240, label %vector.body1242, !llvm.loop !188

middle.block1240:                                 ; preds = %vector.body1242
  %cmp.n1254 = icmp eq i64 %524, %n.vec1250
  br i1 %cmp.n1254, label %polly.loop_exit689, label %polly.loop_header694.us.3.preheader

polly.loop_header694.us.3.preheader:              ; preds = %polly.loop_exit696.loopexit.us.2, %middle.block1240
  %polly.indvar698.us.3.ph = phi i64 [ 0, %polly.loop_exit696.loopexit.us.2 ], [ %n.vec1250, %middle.block1240 ]
  br label %polly.loop_header694.us.3

polly.loop_header694.us.3:                        ; preds = %polly.loop_header694.us.3.preheader, %polly.loop_header694.us.3
  %polly.indvar698.us.3 = phi i64 [ %polly.indvar_next699.us.3, %polly.loop_header694.us.3 ], [ %polly.indvar698.us.3.ph, %polly.loop_header694.us.3.preheader ]
  %796 = add nuw nsw i64 %polly.indvar698.us.3, %495
  %polly.access.add.Packed_MemRef_call1514702.us.3 = add nuw nsw i64 %polly.indvar698.us.3, 3600
  %polly.access.Packed_MemRef_call1514703.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.3
  %_p_scalar_704.us.3 = load double, double* %polly.access.Packed_MemRef_call1514703.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_708.us.3, %_p_scalar_704.us.3
  %polly.access.add.Packed_MemRef_call2516710.us.3 = add nuw nsw i64 %796, %polly.access.mul.Packed_MemRef_call2516705.us.3
  %polly.access.Packed_MemRef_call2516711.us.3 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.3
  %_p_scalar_712.us.3 = load double, double* %polly.access.Packed_MemRef_call2516711.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_716.us.3, %_p_scalar_712.us.3
  %797 = shl i64 %796, 3
  %798 = add i64 %797, %529
  %scevgep717.us.3 = getelementptr i8, i8* %call, i64 %798
  %scevgep717718.us.3 = bitcast i8* %scevgep717.us.3 to double*
  %_p_scalar_719.us.3 = load double, double* %scevgep717718.us.3, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_719.us.3
  store double %p_add42.i.us.3, double* %scevgep717718.us.3, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us.3 = add nuw nsw i64 %polly.indvar698.us.3, 1
  %exitcond1101.3.not = icmp eq i64 %polly.indvar698.us.3, %smin1100
  br i1 %exitcond1101.3.not, label %polly.loop_exit689, label %polly.loop_header694.us.3, !llvm.loop !189
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
!26 = !{!"llvm.loop.tile.size", i32 16}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 4}
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
!49 = !{!"llvm.loop.tile.size", i32 20}
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
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!65, !66, !"polly.alias.scope.MemRef_call", !81}
!81 = distinct !{!81, !79}
!82 = !{!68, !69, !70, !71, !78}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = !{!86}
!86 = distinct !{!86, !87}
!87 = distinct !{!87, !"LVerDomain"}
!88 = !{!65, !66, !"polly.alias.scope.MemRef_call", !89}
!89 = distinct !{!89, !87}
!90 = !{!68, !69, !70, !71, !86}
!91 = distinct !{!91, !13}
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
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!92, !93, !"polly.alias.scope.MemRef_call", !107}
!107 = distinct !{!107, !105}
!108 = !{!95, !96, !97, !98, !104}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = !{!112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!92, !93, !"polly.alias.scope.MemRef_call", !115}
!115 = distinct !{!115, !113}
!116 = !{!95, !96, !97, !98, !112}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !119, !"polly.alias.scope.MemRef_call"}
!119 = distinct !{!119, !"polly.alias.scope.domain"}
!120 = !{!121, !122, !123, !124}
!121 = distinct !{!121, !119, !"polly.alias.scope.MemRef_call1"}
!122 = distinct !{!122, !119, !"polly.alias.scope.MemRef_call2"}
!123 = distinct !{!123, !119, !"polly.alias.scope.Packed_MemRef_call1"}
!124 = distinct !{!124, !119, !"polly.alias.scope.Packed_MemRef_call2"}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !74, !13}
!127 = !{!118, !121, !123, !124}
!128 = !{!118, !122, !123, !124}
!129 = !{!130}
!130 = distinct !{!130, !131}
!131 = distinct !{!131, !"LVerDomain"}
!132 = !{!118, !119, !"polly.alias.scope.MemRef_call", !133}
!133 = distinct !{!133, !131}
!134 = !{!121, !122, !123, !124, !130}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!118, !119, !"polly.alias.scope.MemRef_call", !141}
!141 = distinct !{!141, !139}
!142 = !{!121, !122, !123, !124, !138}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !145, !"polly.alias.scope.MemRef_call"}
!145 = distinct !{!145, !"polly.alias.scope.domain"}
!146 = !{!147, !148}
!147 = distinct !{!147, !145, !"polly.alias.scope.MemRef_call1"}
!148 = distinct !{!148, !145, !"polly.alias.scope.MemRef_call2"}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !74, !13}
!151 = !{!147, !144}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !74, !13}
!154 = !{!148, !144}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !74, !13}
!157 = distinct !{!157, !13}
!158 = !{!159}
!159 = distinct !{!159, !160}
!160 = distinct !{!160, !"LVerDomain"}
!161 = !{!65, !66, !"polly.alias.scope.MemRef_call", !162}
!162 = distinct !{!162, !160}
!163 = !{!68, !69, !70, !71, !159}
!164 = distinct !{!164, !13}
!165 = distinct !{!165, !13}
!166 = distinct !{!166, !13}
!167 = distinct !{!167, !74, !13}
!168 = distinct !{!168, !13}
!169 = !{!170}
!170 = distinct !{!170, !171}
!171 = distinct !{!171, !"LVerDomain"}
!172 = !{!92, !93, !"polly.alias.scope.MemRef_call", !173}
!173 = distinct !{!173, !171}
!174 = !{!95, !96, !97, !98, !170}
!175 = distinct !{!175, !13}
!176 = distinct !{!176, !13}
!177 = distinct !{!177, !13}
!178 = distinct !{!178, !74, !13}
!179 = distinct !{!179, !13}
!180 = !{!181}
!181 = distinct !{!181, !182}
!182 = distinct !{!182, !"LVerDomain"}
!183 = !{!118, !119, !"polly.alias.scope.MemRef_call", !184}
!184 = distinct !{!184, !182}
!185 = !{!121, !122, !123, !124, !181}
!186 = distinct !{!186, !13}
!187 = distinct !{!187, !13}
!188 = distinct !{!188, !13}
!189 = distinct !{!189, !74, !13}
