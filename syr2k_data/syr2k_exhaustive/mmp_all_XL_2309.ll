; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2309.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2309.c"
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
  %97 = mul nsw i64 %polly.indvar219, -96
  %98 = mul nuw nsw i64 %polly.indvar219, 96
  %99 = mul nuw nsw i64 %polly.indvar219, 96
  %100 = mul nsw i64 %polly.indvar219, -96
  %101 = mul nsw i64 %polly.indvar219, -96
  %102 = mul nuw nsw i64 %polly.indvar219, 96
  %103 = mul nuw nsw i64 %polly.indvar219, 96
  %104 = mul nsw i64 %polly.indvar219, -96
  %105 = mul nsw i64 %polly.indvar219, -96
  %106 = mul nuw nsw i64 %polly.indvar219, 96
  %107 = mul nuw nsw i64 %polly.indvar219, 96
  %108 = mul nsw i64 %polly.indvar219, -96
  %109 = mul nsw i64 %polly.indvar219, -96
  %110 = mul nuw nsw i64 %polly.indvar219, 96
  %111 = lshr i64 %indvars.iv1049, 3
  %112 = mul nsw i64 %polly.indvar219, -96
  %113 = icmp slt i64 %112, -1104
  %114 = select i1 %113, i64 %112, i64 -1104
  %115 = add nsw i64 %114, 1199
  %116 = mul nuw nsw i64 %polly.indvar219, 96
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 96
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 3
  %exitcond1053.not = icmp eq i64 %polly.indvar_next220, 13
  br i1 %exitcond1053.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %117 = shl nsw i64 %polly.indvar225, 2
  %118 = or i64 %117, 1
  %119 = or i64 %117, 2
  %120 = or i64 %117, 3
  %polly.access.mul.Packed_MemRef_call2283.us = mul nsw i64 %polly.indvar225, 4800
  %121 = or i64 %117, 1
  %polly.access.mul.Packed_MemRef_call2283.us.1 = mul nuw nsw i64 %121, 1200
  %122 = or i64 %117, 2
  %polly.access.mul.Packed_MemRef_call2283.us.2 = mul nuw nsw i64 %122, 1200
  %123 = or i64 %117, 3
  %polly.access.mul.Packed_MemRef_call2283.us.3 = mul nuw nsw i64 %123, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1052.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit236 ], [ %indvars.iv1038, %polly.loop_header222 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %124 = shl nuw nsw i64 %polly.indvar231, 8
  %125 = add i64 %97, %124
  %smax1635 = call i64 @llvm.smax.i64(i64 %125, i64 0)
  %126 = mul nsw i64 %polly.indvar231, -256
  %127 = add i64 %98, %126
  %128 = add i64 %smax1635, %127
  %129 = shl nuw nsw i64 %polly.indvar231, 11
  %130 = shl nuw nsw i64 %polly.indvar231, 8
  %131 = add i64 %100, %130
  %smax1621 = call i64 @llvm.smax.i64(i64 %131, i64 0)
  %132 = add nuw i64 %99, %smax1621
  %133 = mul nsw i64 %132, 9600
  %134 = add i64 %129, %133
  %135 = or i64 %129, 8
  %136 = add i64 %135, %133
  %137 = mul nsw i64 %polly.indvar231, -256
  %138 = add i64 %99, %137
  %139 = add i64 %smax1621, %138
  %140 = shl nuw nsw i64 %polly.indvar231, 8
  %141 = add i64 %101, %140
  %smax1603 = call i64 @llvm.smax.i64(i64 %141, i64 0)
  %142 = mul nsw i64 %polly.indvar231, -256
  %143 = add i64 %102, %142
  %144 = add i64 %smax1603, %143
  %145 = shl nuw nsw i64 %polly.indvar231, 11
  %146 = shl nuw nsw i64 %polly.indvar231, 8
  %147 = add i64 %104, %146
  %smax1588 = call i64 @llvm.smax.i64(i64 %147, i64 0)
  %148 = add nuw i64 %103, %smax1588
  %149 = mul nsw i64 %148, 9600
  %150 = add i64 %145, %149
  %151 = or i64 %145, 8
  %152 = add i64 %151, %149
  %153 = mul nsw i64 %polly.indvar231, -256
  %154 = add i64 %103, %153
  %155 = add i64 %smax1588, %154
  %156 = shl nuw nsw i64 %polly.indvar231, 8
  %157 = add i64 %105, %156
  %smax1570 = call i64 @llvm.smax.i64(i64 %157, i64 0)
  %158 = mul nsw i64 %polly.indvar231, -256
  %159 = add i64 %106, %158
  %160 = add i64 %smax1570, %159
  %161 = shl nuw nsw i64 %polly.indvar231, 11
  %162 = shl nuw nsw i64 %polly.indvar231, 8
  %163 = add i64 %108, %162
  %smax1555 = call i64 @llvm.smax.i64(i64 %163, i64 0)
  %164 = add nuw i64 %107, %smax1555
  %165 = mul nsw i64 %164, 9600
  %166 = add i64 %161, %165
  %167 = or i64 %161, 8
  %168 = add i64 %167, %165
  %169 = mul nsw i64 %polly.indvar231, -256
  %170 = add i64 %107, %169
  %171 = add i64 %smax1555, %170
  %172 = shl nuw nsw i64 %polly.indvar231, 8
  %173 = add i64 %109, %172
  %smax1535 = call i64 @llvm.smax.i64(i64 %173, i64 0)
  %174 = mul nsw i64 %polly.indvar231, -256
  %175 = add i64 %110, %174
  %176 = add i64 %smax1535, %175
  %177 = shl nsw i64 %polly.indvar231, 8
  %178 = add nsw i64 %177, %112
  %179 = icmp sgt i64 %178, 0
  %180 = select i1 %179, i64 %178, i64 0
  %polly.loop_guard.not = icmp sgt i64 %180, %115
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1036, i64 0)
  %181 = add i64 %smax, %indvars.iv1040
  %182 = sub nsw i64 %116, %177
  %183 = add nuw nsw i64 %177, 256
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 256
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -256
  %exitcond1051.not = icmp eq i64 %polly.indvar231, %111
  br i1 %exitcond1051.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1536 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1537, %polly.loop_exit267 ]
  %indvars.iv1042 = phi i64 [ %181, %polly.loop_header234.preheader ], [ %indvars.iv.next1043, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %180, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %184 = add i64 %128, %indvar1536
  %smin1636 = call i64 @llvm.smin.i64(i64 %184, i64 255)
  %185 = add nsw i64 %smin1636, 1
  %186 = mul i64 %indvar1536, 9600
  %187 = add i64 %134, %186
  %scevgep1622 = getelementptr i8, i8* %call, i64 %187
  %188 = add i64 %136, %186
  %scevgep1623 = getelementptr i8, i8* %call, i64 %188
  %189 = add i64 %139, %indvar1536
  %smin1624 = call i64 @llvm.smin.i64(i64 %189, i64 255)
  %190 = shl i64 %smin1624, 3
  %scevgep1625 = getelementptr i8, i8* %scevgep1623, i64 %190
  %scevgep1627 = getelementptr i8, i8* %scevgep1626, i64 %190
  %191 = add i64 %144, %indvar1536
  %smin1604 = call i64 @llvm.smin.i64(i64 %191, i64 255)
  %192 = add nsw i64 %smin1604, 1
  %193 = mul i64 %indvar1536, 9600
  %194 = add i64 %150, %193
  %scevgep1589 = getelementptr i8, i8* %call, i64 %194
  %195 = add i64 %152, %193
  %scevgep1590 = getelementptr i8, i8* %call, i64 %195
  %196 = add i64 %155, %indvar1536
  %smin1591 = call i64 @llvm.smin.i64(i64 %196, i64 255)
  %197 = shl i64 %smin1591, 3
  %scevgep1592 = getelementptr i8, i8* %scevgep1590, i64 %197
  %scevgep1595 = getelementptr i8, i8* %scevgep1594, i64 %197
  %198 = add i64 %160, %indvar1536
  %smin1571 = call i64 @llvm.smin.i64(i64 %198, i64 255)
  %199 = add nsw i64 %smin1571, 1
  %200 = mul i64 %indvar1536, 9600
  %201 = add i64 %166, %200
  %scevgep1556 = getelementptr i8, i8* %call, i64 %201
  %202 = add i64 %168, %200
  %scevgep1557 = getelementptr i8, i8* %call, i64 %202
  %203 = add i64 %171, %indvar1536
  %smin1558 = call i64 @llvm.smin.i64(i64 %203, i64 255)
  %204 = shl i64 %smin1558, 3
  %scevgep1559 = getelementptr i8, i8* %scevgep1557, i64 %204
  %scevgep1562 = getelementptr i8, i8* %scevgep1561, i64 %204
  %205 = add i64 %176, %indvar1536
  %smin1538 = call i64 @llvm.smin.i64(i64 %205, i64 255)
  %206 = add nsw i64 %smin1538, 1
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 255)
  %207 = add nsw i64 %polly.indvar237, %182
  %polly.loop_guard2501146 = icmp sgt i64 %207, -1
  %208 = add nuw nsw i64 %polly.indvar237, %116
  %.not = icmp ult i64 %208, %183
  %polly.access.mul.call1259 = mul nsw i64 %208, 1000
  %209 = add nuw i64 %polly.access.mul.call1259, %117
  br i1 %polly.loop_guard2501146, label %polly.loop_header247.us, label %polly.loop_header234.split

polly.loop_header247.us:                          ; preds = %polly.loop_header234, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header234 ]
  %210 = add nuw nsw i64 %polly.indvar251.us, %177
  %polly.access.mul.call1255.us = mul nuw nsw i64 %210, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %117, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar251.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar251.us, %smin1046
  br i1 %exitcond1044.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1724, i64 %209
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %207
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.loop_header247.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.loop_header247.us.1.preheader, label %polly.then.us

polly.loop_header247.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header247.us.1

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1724, i64 %209
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %207
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.access.add.call1260.1 = or i64 %209, 1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.1 = add nsw i64 %207, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.access.add.call1260.2 = or i64 %209, 2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.2 = add nsw i64 %207, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.access.add.call1260.3 = or i64 %209, 3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.3 = add nsw i64 %207, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  br label %polly.loop_exit267

polly.loop_exit267:                               ; preds = %polly.loop_header272.us.3, %middle.block1532, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %115
  %indvars.iv.next1043 = add i64 %indvars.iv1042, 1
  %indvar.next1537 = add i64 %indvar1536, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header265.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %211 = mul i64 %208, 9600
  br i1 %polly.loop_guard2501146, label %polly.loop_header265.us.preheader, label %polly.loop_exit267

polly.loop_header265.us.preheader:                ; preds = %polly.loop_header265.preheader
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %208
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %207
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1637 = icmp ult i64 %185, 4
  br i1 %min.iters.check1637, label %polly.loop_header272.us.preheader, label %vector.memcheck1620

vector.memcheck1620:                              ; preds = %polly.loop_header265.us.preheader
  %bound01628 = icmp ult i8* %scevgep1622, %scevgep1627
  %bound11629 = icmp ult i8* %malloccall, %scevgep1625
  %found.conflict1630 = and i1 %bound01628, %bound11629
  br i1 %found.conflict1630, label %polly.loop_header272.us.preheader, label %vector.ph1638

vector.ph1638:                                    ; preds = %vector.memcheck1620
  %n.vec1640 = and i64 %185, -4
  %broadcast.splatinsert1646 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1647 = shufflevector <4 x double> %broadcast.splatinsert1646, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1649 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1650 = shufflevector <4 x double> %broadcast.splatinsert1649, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1634

vector.body1634:                                  ; preds = %vector.body1634, %vector.ph1638
  %index1641 = phi i64 [ 0, %vector.ph1638 ], [ %index.next1642, %vector.body1634 ]
  %212 = add nuw nsw i64 %index1641, %177
  %213 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1641
  %214 = bitcast double* %213 to <4 x double>*
  %wide.load1645 = load <4 x double>, <4 x double>* %214, align 8, !alias.scope !77
  %215 = fmul fast <4 x double> %broadcast.splat1647, %wide.load1645
  %216 = add nuw nsw i64 %212, %polly.access.mul.Packed_MemRef_call2283.us
  %217 = getelementptr double, double* %Packed_MemRef_call2, i64 %216
  %218 = bitcast double* %217 to <4 x double>*
  %wide.load1648 = load <4 x double>, <4 x double>* %218, align 8
  %219 = fmul fast <4 x double> %broadcast.splat1650, %wide.load1648
  %220 = shl i64 %212, 3
  %221 = add i64 %220, %211
  %222 = getelementptr i8, i8* %call, i64 %221
  %223 = bitcast i8* %222 to <4 x double>*
  %wide.load1651 = load <4 x double>, <4 x double>* %223, align 8, !alias.scope !80, !noalias !82
  %224 = fadd fast <4 x double> %219, %215
  %225 = fmul fast <4 x double> %224, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %226 = fadd fast <4 x double> %225, %wide.load1651
  %227 = bitcast i8* %222 to <4 x double>*
  store <4 x double> %226, <4 x double>* %227, align 8, !alias.scope !80, !noalias !82
  %index.next1642 = add i64 %index1641, 4
  %228 = icmp eq i64 %index.next1642, %n.vec1640
  br i1 %228, label %middle.block1632, label %vector.body1634, !llvm.loop !83

middle.block1632:                                 ; preds = %vector.body1634
  %cmp.n1644 = icmp eq i64 %185, %n.vec1640
  br i1 %cmp.n1644, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %vector.memcheck1620, %polly.loop_header265.us.preheader, %middle.block1632
  %polly.indvar276.us.ph = phi i64 [ 0, %vector.memcheck1620 ], [ 0, %polly.loop_header265.us.preheader ], [ %n.vec1640, %middle.block1632 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %229 = add nuw nsw i64 %polly.indvar276.us, %177
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar276.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %229, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %230 = shl i64 %229, 3
  %231 = add i64 %230, %211
  %scevgep295.us = getelementptr i8, i8* %call, i64 %231
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
  %polly.access.add.Packed_MemRef_call2284.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.1, %208
  %polly.access.Packed_MemRef_call2285.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.1
  %_p_scalar_286.us.1 = load double, double* %polly.access.Packed_MemRef_call2285.us.1, align 8
  %polly.access.add.Packed_MemRef_call1292.us.1 = add nsw i64 %207, 1200
  %polly.access.Packed_MemRef_call1293.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call1293.us.1, align 8
  %min.iters.check1605 = icmp ult i64 %192, 4
  br i1 %min.iters.check1605, label %polly.loop_header272.us.1.preheader, label %vector.memcheck1587

vector.memcheck1587:                              ; preds = %polly.loop_exit274.loopexit.us
  %bound01596 = icmp ult i8* %scevgep1589, %scevgep1595
  %bound11597 = icmp ult i8* %scevgep1593, %scevgep1592
  %found.conflict1598 = and i1 %bound01596, %bound11597
  br i1 %found.conflict1598, label %polly.loop_header272.us.1.preheader, label %vector.ph1606

vector.ph1606:                                    ; preds = %vector.memcheck1587
  %n.vec1608 = and i64 %192, -4
  %broadcast.splatinsert1614 = insertelement <4 x double> poison, double %_p_scalar_286.us.1, i32 0
  %broadcast.splat1615 = shufflevector <4 x double> %broadcast.splatinsert1614, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1617 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1618 = shufflevector <4 x double> %broadcast.splatinsert1617, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1602

vector.body1602:                                  ; preds = %vector.body1602, %vector.ph1606
  %index1609 = phi i64 [ 0, %vector.ph1606 ], [ %index.next1610, %vector.body1602 ]
  %232 = add nuw nsw i64 %index1609, %177
  %233 = add nuw nsw i64 %index1609, 1200
  %234 = getelementptr double, double* %Packed_MemRef_call1, i64 %233
  %235 = bitcast double* %234 to <4 x double>*
  %wide.load1613 = load <4 x double>, <4 x double>* %235, align 8, !alias.scope !85
  %236 = fmul fast <4 x double> %broadcast.splat1615, %wide.load1613
  %237 = add nuw nsw i64 %232, %polly.access.mul.Packed_MemRef_call2283.us.1
  %238 = getelementptr double, double* %Packed_MemRef_call2, i64 %237
  %239 = bitcast double* %238 to <4 x double>*
  %wide.load1616 = load <4 x double>, <4 x double>* %239, align 8
  %240 = fmul fast <4 x double> %broadcast.splat1618, %wide.load1616
  %241 = shl i64 %232, 3
  %242 = add i64 %241, %211
  %243 = getelementptr i8, i8* %call, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  %wide.load1619 = load <4 x double>, <4 x double>* %244, align 8, !alias.scope !88, !noalias !90
  %245 = fadd fast <4 x double> %240, %236
  %246 = fmul fast <4 x double> %245, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %247 = fadd fast <4 x double> %246, %wide.load1619
  %248 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %247, <4 x double>* %248, align 8, !alias.scope !88, !noalias !90
  %index.next1610 = add i64 %index1609, 4
  %249 = icmp eq i64 %index.next1610, %n.vec1608
  br i1 %249, label %middle.block1600, label %vector.body1602, !llvm.loop !91

middle.block1600:                                 ; preds = %vector.body1602
  %cmp.n1612 = icmp eq i64 %192, %n.vec1608
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
  %250 = add i64 %indvar1375, 1
  %251 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %251
  %min.iters.check1377 = icmp ult i64 %250, 4
  br i1 %min.iters.check1377, label %polly.loop_header394.preheader, label %vector.ph1378

vector.ph1378:                                    ; preds = %polly.loop_header388
  %n.vec1380 = and i64 %250, -4
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1382, %vector.body1374 ]
  %252 = shl nuw nsw i64 %index1381, 3
  %253 = getelementptr i8, i8* %scevgep400, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  %wide.load1385 = load <4 x double>, <4 x double>* %254, align 8, !alias.scope !92, !noalias !94
  %255 = fmul fast <4 x double> %wide.load1385, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %256 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %255, <4 x double>* %256, align 8, !alias.scope !92, !noalias !94
  %index.next1382 = add i64 %index1381, 4
  %257 = icmp eq i64 %index.next1382, %n.vec1380
  br i1 %257, label %middle.block1372, label %vector.body1374, !llvm.loop !99

middle.block1372:                                 ; preds = %vector.body1374
  %cmp.n1384 = icmp eq i64 %250, %n.vec1380
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
  %258 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %258
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
  %259 = mul nsw i64 %polly.indvar423, -96
  %260 = mul nuw nsw i64 %polly.indvar423, 96
  %261 = mul nuw nsw i64 %polly.indvar423, 96
  %262 = mul nsw i64 %polly.indvar423, -96
  %263 = mul nsw i64 %polly.indvar423, -96
  %264 = mul nuw nsw i64 %polly.indvar423, 96
  %265 = mul nuw nsw i64 %polly.indvar423, 96
  %266 = mul nsw i64 %polly.indvar423, -96
  %267 = mul nsw i64 %polly.indvar423, -96
  %268 = mul nuw nsw i64 %polly.indvar423, 96
  %269 = mul nuw nsw i64 %polly.indvar423, 96
  %270 = mul nsw i64 %polly.indvar423, -96
  %271 = mul nsw i64 %polly.indvar423, -96
  %272 = mul nuw nsw i64 %polly.indvar423, 96
  %273 = lshr i64 %indvars.iv1076, 3
  %274 = mul nsw i64 %polly.indvar423, -96
  %275 = icmp slt i64 %274, -1104
  %276 = select i1 %275, i64 %274, i64 -1104
  %277 = add nsw i64 %276, 1199
  %278 = mul nuw nsw i64 %polly.indvar423, 96
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit435
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -96
  %indvars.iv.next1065 = add nuw nsw i64 %indvars.iv1064, 96
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 3
  %exitcond1080.not = icmp eq i64 %polly.indvar_next424, 13
  br i1 %exitcond1080.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit435, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit435 ]
  %279 = shl nsw i64 %polly.indvar429, 2
  %280 = or i64 %279, 1
  %281 = or i64 %279, 2
  %282 = or i64 %279, 3
  %polly.access.mul.Packed_MemRef_call2305494.us = mul nsw i64 %polly.indvar429, 4800
  %283 = or i64 %279, 1
  %polly.access.mul.Packed_MemRef_call2305494.us.1 = mul nuw nsw i64 %283, 1200
  %284 = or i64 %279, 2
  %polly.access.mul.Packed_MemRef_call2305494.us.2 = mul nuw nsw i64 %284, 1200
  %285 = or i64 %279, 3
  %polly.access.mul.Packed_MemRef_call2305494.us.3 = mul nuw nsw i64 %285, 1200
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit442
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next430, 250
  br i1 %exitcond1079.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header433:                             ; preds = %polly.loop_exit442, %polly.loop_header426
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit442 ], [ %indvars.iv1064, %polly.loop_header426 ]
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit442 ], [ %indvars.iv1059, %polly.loop_header426 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header426 ]
  %286 = shl nuw nsw i64 %polly.indvar436, 8
  %287 = add i64 %259, %286
  %smax1489 = call i64 @llvm.smax.i64(i64 %287, i64 0)
  %288 = mul nsw i64 %polly.indvar436, -256
  %289 = add i64 %260, %288
  %290 = add i64 %smax1489, %289
  %291 = shl nuw nsw i64 %polly.indvar436, 11
  %292 = shl nuw nsw i64 %polly.indvar436, 8
  %293 = add i64 %262, %292
  %smax1475 = call i64 @llvm.smax.i64(i64 %293, i64 0)
  %294 = add nuw i64 %261, %smax1475
  %295 = mul nsw i64 %294, 9600
  %296 = add i64 %291, %295
  %297 = or i64 %291, 8
  %298 = add i64 %297, %295
  %299 = mul nsw i64 %polly.indvar436, -256
  %300 = add i64 %261, %299
  %301 = add i64 %smax1475, %300
  %302 = shl nuw nsw i64 %polly.indvar436, 8
  %303 = add i64 %263, %302
  %smax1457 = call i64 @llvm.smax.i64(i64 %303, i64 0)
  %304 = mul nsw i64 %polly.indvar436, -256
  %305 = add i64 %264, %304
  %306 = add i64 %smax1457, %305
  %307 = shl nuw nsw i64 %polly.indvar436, 11
  %308 = shl nuw nsw i64 %polly.indvar436, 8
  %309 = add i64 %266, %308
  %smax1442 = call i64 @llvm.smax.i64(i64 %309, i64 0)
  %310 = add nuw i64 %265, %smax1442
  %311 = mul nsw i64 %310, 9600
  %312 = add i64 %307, %311
  %313 = or i64 %307, 8
  %314 = add i64 %313, %311
  %315 = mul nsw i64 %polly.indvar436, -256
  %316 = add i64 %265, %315
  %317 = add i64 %smax1442, %316
  %318 = shl nuw nsw i64 %polly.indvar436, 8
  %319 = add i64 %267, %318
  %smax1424 = call i64 @llvm.smax.i64(i64 %319, i64 0)
  %320 = mul nsw i64 %polly.indvar436, -256
  %321 = add i64 %268, %320
  %322 = add i64 %smax1424, %321
  %323 = shl nuw nsw i64 %polly.indvar436, 11
  %324 = shl nuw nsw i64 %polly.indvar436, 8
  %325 = add i64 %270, %324
  %smax1409 = call i64 @llvm.smax.i64(i64 %325, i64 0)
  %326 = add nuw i64 %269, %smax1409
  %327 = mul nsw i64 %326, 9600
  %328 = add i64 %323, %327
  %329 = or i64 %323, 8
  %330 = add i64 %329, %327
  %331 = mul nsw i64 %polly.indvar436, -256
  %332 = add i64 %269, %331
  %333 = add i64 %smax1409, %332
  %334 = shl nuw nsw i64 %polly.indvar436, 8
  %335 = add i64 %271, %334
  %smax1389 = call i64 @llvm.smax.i64(i64 %335, i64 0)
  %336 = mul nsw i64 %polly.indvar436, -256
  %337 = add i64 %272, %336
  %338 = add i64 %smax1389, %337
  %339 = shl nsw i64 %polly.indvar436, 8
  %340 = add nsw i64 %339, %274
  %341 = icmp sgt i64 %340, 0
  %342 = select i1 %341, i64 %340, i64 0
  %polly.loop_guard443.not = icmp sgt i64 %342, %277
  br i1 %polly.loop_guard443.not, label %polly.loop_exit442, label %polly.loop_header440.preheader

polly.loop_header440.preheader:                   ; preds = %polly.loop_header433
  %smax1063 = call i64 @llvm.smax.i64(i64 %indvars.iv1061, i64 0)
  %343 = add i64 %smax1063, %indvars.iv1066
  %344 = sub nsw i64 %278, %339
  %345 = add nuw nsw i64 %339, 256
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit478, %polly.loop_header433
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, 256
  %indvars.iv.next1067 = add nsw i64 %indvars.iv1066, -256
  %exitcond1078.not = icmp eq i64 %polly.indvar436, %273
  br i1 %exitcond1078.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_header440.preheader, %polly.loop_exit478
  %indvar1390 = phi i64 [ 0, %polly.loop_header440.preheader ], [ %indvar.next1391, %polly.loop_exit478 ]
  %indvars.iv1068 = phi i64 [ %343, %polly.loop_header440.preheader ], [ %indvars.iv.next1069, %polly.loop_exit478 ]
  %polly.indvar444 = phi i64 [ %342, %polly.loop_header440.preheader ], [ %polly.indvar_next445, %polly.loop_exit478 ]
  %346 = add i64 %290, %indvar1390
  %smin1490 = call i64 @llvm.smin.i64(i64 %346, i64 255)
  %347 = add nsw i64 %smin1490, 1
  %348 = mul i64 %indvar1390, 9600
  %349 = add i64 %296, %348
  %scevgep1476 = getelementptr i8, i8* %call, i64 %349
  %350 = add i64 %298, %348
  %scevgep1477 = getelementptr i8, i8* %call, i64 %350
  %351 = add i64 %301, %indvar1390
  %smin1478 = call i64 @llvm.smin.i64(i64 %351, i64 255)
  %352 = shl i64 %smin1478, 3
  %scevgep1479 = getelementptr i8, i8* %scevgep1477, i64 %352
  %scevgep1481 = getelementptr i8, i8* %scevgep1480, i64 %352
  %353 = add i64 %306, %indvar1390
  %smin1458 = call i64 @llvm.smin.i64(i64 %353, i64 255)
  %354 = add nsw i64 %smin1458, 1
  %355 = mul i64 %indvar1390, 9600
  %356 = add i64 %312, %355
  %scevgep1443 = getelementptr i8, i8* %call, i64 %356
  %357 = add i64 %314, %355
  %scevgep1444 = getelementptr i8, i8* %call, i64 %357
  %358 = add i64 %317, %indvar1390
  %smin1445 = call i64 @llvm.smin.i64(i64 %358, i64 255)
  %359 = shl i64 %smin1445, 3
  %scevgep1446 = getelementptr i8, i8* %scevgep1444, i64 %359
  %scevgep1449 = getelementptr i8, i8* %scevgep1448, i64 %359
  %360 = add i64 %322, %indvar1390
  %smin1425 = call i64 @llvm.smin.i64(i64 %360, i64 255)
  %361 = add nsw i64 %smin1425, 1
  %362 = mul i64 %indvar1390, 9600
  %363 = add i64 %328, %362
  %scevgep1410 = getelementptr i8, i8* %call, i64 %363
  %364 = add i64 %330, %362
  %scevgep1411 = getelementptr i8, i8* %call, i64 %364
  %365 = add i64 %333, %indvar1390
  %smin1412 = call i64 @llvm.smin.i64(i64 %365, i64 255)
  %366 = shl i64 %smin1412, 3
  %scevgep1413 = getelementptr i8, i8* %scevgep1411, i64 %366
  %scevgep1416 = getelementptr i8, i8* %scevgep1415, i64 %366
  %367 = add i64 %338, %indvar1390
  %smin1392 = call i64 @llvm.smin.i64(i64 %367, i64 255)
  %368 = add nsw i64 %smin1392, 1
  %smin1073 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 255)
  %369 = add nsw i64 %polly.indvar444, %344
  %polly.loop_guard4571147 = icmp sgt i64 %369, -1
  %370 = add nuw nsw i64 %polly.indvar444, %278
  %.not926 = icmp ult i64 %370, %345
  %polly.access.mul.call1470 = mul nsw i64 %370, 1000
  %371 = add nuw i64 %polly.access.mul.call1470, %279
  br i1 %polly.loop_guard4571147, label %polly.loop_header454.us, label %polly.loop_header440.split

polly.loop_header454.us:                          ; preds = %polly.loop_header440, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header440 ]
  %372 = add nuw nsw i64 %polly.indvar458.us, %339
  %polly.access.mul.call1462.us = mul nuw nsw i64 %372, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %279, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar458.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar458.us, %smin1073
  br i1 %exitcond1071.not, label %polly.cond465.loopexit.us, label %polly.loop_header454.us

polly.then467.us:                                 ; preds = %polly.cond465.loopexit.us
  %polly.access.call1472.us = getelementptr double, double* %polly.access.cast.call1724, i64 %371
  %polly.access.call1472.load.us = load double, double* %polly.access.call1472.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303475.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %369
  store double %polly.access.call1472.load.us, double* %polly.access.Packed_MemRef_call1303475.us, align 8
  br label %polly.loop_header454.us.1.preheader

polly.cond465.loopexit.us:                        ; preds = %polly.loop_header454.us
  br i1 %.not926, label %polly.loop_header454.us.1.preheader, label %polly.then467.us

polly.loop_header454.us.1.preheader:              ; preds = %polly.then467.us, %polly.cond465.loopexit.us
  br label %polly.loop_header454.us.1

polly.loop_header440.split:                       ; preds = %polly.loop_header440
  br i1 %.not926, label %polly.loop_exit478, label %polly.loop_header447.preheader

polly.loop_header447.preheader:                   ; preds = %polly.loop_header440.split
  %polly.access.call1472 = getelementptr double, double* %polly.access.cast.call1724, i64 %371
  %polly.access.call1472.load = load double, double* %polly.access.call1472, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303475 = getelementptr double, double* %Packed_MemRef_call1303, i64 %369
  store double %polly.access.call1472.load, double* %polly.access.Packed_MemRef_call1303475, align 8
  %polly.access.add.call1471.1 = or i64 %371, 1
  %polly.access.call1472.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.1
  %polly.access.call1472.load.1 = load double, double* %polly.access.call1472.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.1 = add nsw i64 %369, 1200
  %polly.access.Packed_MemRef_call1303475.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.1
  store double %polly.access.call1472.load.1, double* %polly.access.Packed_MemRef_call1303475.1, align 8
  %polly.access.add.call1471.2 = or i64 %371, 2
  %polly.access.call1472.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.2
  %polly.access.call1472.load.2 = load double, double* %polly.access.call1472.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.2 = add nsw i64 %369, 2400
  %polly.access.Packed_MemRef_call1303475.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.2
  store double %polly.access.call1472.load.2, double* %polly.access.Packed_MemRef_call1303475.2, align 8
  %polly.access.add.call1471.3 = or i64 %371, 3
  %polly.access.call1472.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.3
  %polly.access.call1472.load.3 = load double, double* %polly.access.call1472.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.3 = add nsw i64 %369, 3600
  %polly.access.Packed_MemRef_call1303475.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.3
  store double %polly.access.call1472.load.3, double* %polly.access.Packed_MemRef_call1303475.3, align 8
  br label %polly.loop_exit478

polly.loop_exit478:                               ; preds = %polly.loop_header483.us.3, %middle.block1386, %polly.loop_header440.split, %polly.loop_header447.preheader, %polly.loop_header476.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446.not.not = icmp ult i64 %polly.indvar444, %277
  %indvars.iv.next1069 = add i64 %indvars.iv1068, 1
  %indvar.next1391 = add i64 %indvar1390, 1
  br i1 %polly.loop_cond446.not.not, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header476.preheader:                   ; preds = %polly.cond465.loopexit.us.3, %polly.then467.us.3
  %373 = mul i64 %370, 9600
  br i1 %polly.loop_guard4571147, label %polly.loop_header476.us.preheader, label %polly.loop_exit478

polly.loop_header476.us.preheader:                ; preds = %polly.loop_header476.preheader
  %polly.access.add.Packed_MemRef_call2305495.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us, %370
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %369
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %min.iters.check1491 = icmp ult i64 %347, 4
  br i1 %min.iters.check1491, label %polly.loop_header483.us.preheader, label %vector.memcheck1474

vector.memcheck1474:                              ; preds = %polly.loop_header476.us.preheader
  %bound01482 = icmp ult i8* %scevgep1476, %scevgep1481
  %bound11483 = icmp ult i8* %malloccall302, %scevgep1479
  %found.conflict1484 = and i1 %bound01482, %bound11483
  br i1 %found.conflict1484, label %polly.loop_header483.us.preheader, label %vector.ph1492

vector.ph1492:                                    ; preds = %vector.memcheck1474
  %n.vec1494 = and i64 %347, -4
  %broadcast.splatinsert1500 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1501 = shufflevector <4 x double> %broadcast.splatinsert1500, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1503 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1504 = shufflevector <4 x double> %broadcast.splatinsert1503, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1488

vector.body1488:                                  ; preds = %vector.body1488, %vector.ph1492
  %index1495 = phi i64 [ 0, %vector.ph1492 ], [ %index.next1496, %vector.body1488 ]
  %374 = add nuw nsw i64 %index1495, %339
  %375 = getelementptr double, double* %Packed_MemRef_call1303, i64 %index1495
  %376 = bitcast double* %375 to <4 x double>*
  %wide.load1499 = load <4 x double>, <4 x double>* %376, align 8, !alias.scope !103
  %377 = fmul fast <4 x double> %broadcast.splat1501, %wide.load1499
  %378 = add nuw nsw i64 %374, %polly.access.mul.Packed_MemRef_call2305494.us
  %379 = getelementptr double, double* %Packed_MemRef_call2305, i64 %378
  %380 = bitcast double* %379 to <4 x double>*
  %wide.load1502 = load <4 x double>, <4 x double>* %380, align 8
  %381 = fmul fast <4 x double> %broadcast.splat1504, %wide.load1502
  %382 = shl i64 %374, 3
  %383 = add i64 %382, %373
  %384 = getelementptr i8, i8* %call, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  %wide.load1505 = load <4 x double>, <4 x double>* %385, align 8, !alias.scope !106, !noalias !108
  %386 = fadd fast <4 x double> %381, %377
  %387 = fmul fast <4 x double> %386, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %388 = fadd fast <4 x double> %387, %wide.load1505
  %389 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %388, <4 x double>* %389, align 8, !alias.scope !106, !noalias !108
  %index.next1496 = add i64 %index1495, 4
  %390 = icmp eq i64 %index.next1496, %n.vec1494
  br i1 %390, label %middle.block1486, label %vector.body1488, !llvm.loop !109

middle.block1486:                                 ; preds = %vector.body1488
  %cmp.n1498 = icmp eq i64 %347, %n.vec1494
  br i1 %cmp.n1498, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %vector.memcheck1474, %polly.loop_header476.us.preheader, %middle.block1486
  %polly.indvar487.us.ph = phi i64 [ 0, %vector.memcheck1474 ], [ 0, %polly.loop_header476.us.preheader ], [ %n.vec1494, %middle.block1486 ]
  br label %polly.loop_header483.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %391 = add nuw nsw i64 %polly.indvar487.us, %339
  %polly.access.Packed_MemRef_call1303492.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar487.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1303492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.add.Packed_MemRef_call2305499.us = add nuw nsw i64 %391, %polly.access.mul.Packed_MemRef_call2305494.us
  %polly.access.Packed_MemRef_call2305500.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2305500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %392 = shl i64 %391, 3
  %393 = add i64 %392, %373
  %scevgep506.us = getelementptr i8, i8* %call, i64 %393
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
  %polly.access.add.Packed_MemRef_call2305495.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.1, %370
  %polly.access.Packed_MemRef_call2305496.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call2305496.us.1, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.1 = add nsw i64 %369, 1200
  %polly.access.Packed_MemRef_call1303504.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call1303504.us.1, align 8
  %min.iters.check1459 = icmp ult i64 %354, 4
  br i1 %min.iters.check1459, label %polly.loop_header483.us.1.preheader, label %vector.memcheck1441

vector.memcheck1441:                              ; preds = %polly.loop_exit485.loopexit.us
  %bound01450 = icmp ult i8* %scevgep1443, %scevgep1449
  %bound11451 = icmp ult i8* %scevgep1447, %scevgep1446
  %found.conflict1452 = and i1 %bound01450, %bound11451
  br i1 %found.conflict1452, label %polly.loop_header483.us.1.preheader, label %vector.ph1460

vector.ph1460:                                    ; preds = %vector.memcheck1441
  %n.vec1462 = and i64 %354, -4
  %broadcast.splatinsert1468 = insertelement <4 x double> poison, double %_p_scalar_497.us.1, i32 0
  %broadcast.splat1469 = shufflevector <4 x double> %broadcast.splatinsert1468, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1471 = insertelement <4 x double> poison, double %_p_scalar_505.us.1, i32 0
  %broadcast.splat1472 = shufflevector <4 x double> %broadcast.splatinsert1471, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %vector.ph1460
  %index1463 = phi i64 [ 0, %vector.ph1460 ], [ %index.next1464, %vector.body1456 ]
  %394 = add nuw nsw i64 %index1463, %339
  %395 = add nuw nsw i64 %index1463, 1200
  %396 = getelementptr double, double* %Packed_MemRef_call1303, i64 %395
  %397 = bitcast double* %396 to <4 x double>*
  %wide.load1467 = load <4 x double>, <4 x double>* %397, align 8, !alias.scope !111
  %398 = fmul fast <4 x double> %broadcast.splat1469, %wide.load1467
  %399 = add nuw nsw i64 %394, %polly.access.mul.Packed_MemRef_call2305494.us.1
  %400 = getelementptr double, double* %Packed_MemRef_call2305, i64 %399
  %401 = bitcast double* %400 to <4 x double>*
  %wide.load1470 = load <4 x double>, <4 x double>* %401, align 8
  %402 = fmul fast <4 x double> %broadcast.splat1472, %wide.load1470
  %403 = shl i64 %394, 3
  %404 = add i64 %403, %373
  %405 = getelementptr i8, i8* %call, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  %wide.load1473 = load <4 x double>, <4 x double>* %406, align 8, !alias.scope !114, !noalias !116
  %407 = fadd fast <4 x double> %402, %398
  %408 = fmul fast <4 x double> %407, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %409 = fadd fast <4 x double> %408, %wide.load1473
  %410 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %409, <4 x double>* %410, align 8, !alias.scope !114, !noalias !116
  %index.next1464 = add i64 %index1463, 4
  %411 = icmp eq i64 %index.next1464, %n.vec1462
  br i1 %411, label %middle.block1454, label %vector.body1456, !llvm.loop !117

middle.block1454:                                 ; preds = %vector.body1456
  %cmp.n1466 = icmp eq i64 %354, %n.vec1462
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
  %412 = add i64 %indvar, 1
  %413 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %413
  %min.iters.check1231 = icmp ult i64 %412, 4
  br i1 %min.iters.check1231, label %polly.loop_header605.preheader, label %vector.ph1232

vector.ph1232:                                    ; preds = %polly.loop_header599
  %n.vec1234 = and i64 %412, -4
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1232
  %index1235 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1236, %vector.body1230 ]
  %414 = shl nuw nsw i64 %index1235, 3
  %415 = getelementptr i8, i8* %scevgep611, i64 %414
  %416 = bitcast i8* %415 to <4 x double>*
  %wide.load1239 = load <4 x double>, <4 x double>* %416, align 8, !alias.scope !118, !noalias !120
  %417 = fmul fast <4 x double> %wide.load1239, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %418 = bitcast i8* %415 to <4 x double>*
  store <4 x double> %417, <4 x double>* %418, align 8, !alias.scope !118, !noalias !120
  %index.next1236 = add i64 %index1235, 4
  %419 = icmp eq i64 %index.next1236, %n.vec1234
  br i1 %419, label %middle.block1228, label %vector.body1230, !llvm.loop !125

middle.block1228:                                 ; preds = %vector.body1230
  %cmp.n1238 = icmp eq i64 %412, %n.vec1234
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
  %420 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %420
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
  %421 = mul nsw i64 %polly.indvar634, -96
  %422 = mul nuw nsw i64 %polly.indvar634, 96
  %423 = mul nuw nsw i64 %polly.indvar634, 96
  %424 = mul nsw i64 %polly.indvar634, -96
  %425 = mul nsw i64 %polly.indvar634, -96
  %426 = mul nuw nsw i64 %polly.indvar634, 96
  %427 = mul nuw nsw i64 %polly.indvar634, 96
  %428 = mul nsw i64 %polly.indvar634, -96
  %429 = mul nsw i64 %polly.indvar634, -96
  %430 = mul nuw nsw i64 %polly.indvar634, 96
  %431 = mul nuw nsw i64 %polly.indvar634, 96
  %432 = mul nsw i64 %polly.indvar634, -96
  %433 = mul nsw i64 %polly.indvar634, -96
  %434 = mul nuw nsw i64 %polly.indvar634, 96
  %435 = lshr i64 %indvars.iv1103, 3
  %436 = mul nsw i64 %polly.indvar634, -96
  %437 = icmp slt i64 %436, -1104
  %438 = select i1 %437, i64 %436, i64 -1104
  %439 = add nsw i64 %438, 1199
  %440 = mul nuw nsw i64 %polly.indvar634, 96
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit646
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -96
  %indvars.iv.next1092 = add nuw nsw i64 %indvars.iv1091, 96
  %indvars.iv.next1104 = add nuw nsw i64 %indvars.iv1103, 3
  %exitcond1107.not = icmp eq i64 %polly.indvar_next635, 13
  br i1 %exitcond1107.not, label %polly.exiting512, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit646, %polly.loop_header631
  %polly.indvar640 = phi i64 [ 0, %polly.loop_header631 ], [ %polly.indvar_next641, %polly.loop_exit646 ]
  %441 = shl nsw i64 %polly.indvar640, 2
  %442 = or i64 %441, 1
  %443 = or i64 %441, 2
  %444 = or i64 %441, 3
  %polly.access.mul.Packed_MemRef_call2516705.us = mul nsw i64 %polly.indvar640, 4800
  %445 = or i64 %441, 1
  %polly.access.mul.Packed_MemRef_call2516705.us.1 = mul nuw nsw i64 %445, 1200
  %446 = or i64 %441, 2
  %polly.access.mul.Packed_MemRef_call2516705.us.2 = mul nuw nsw i64 %446, 1200
  %447 = or i64 %441, 3
  %polly.access.mul.Packed_MemRef_call2516705.us.3 = mul nuw nsw i64 %447, 1200
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit653
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next641, 250
  br i1 %exitcond1106.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header644:                             ; preds = %polly.loop_exit653, %polly.loop_header637
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit653 ], [ %indvars.iv1091, %polly.loop_header637 ]
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit653 ], [ %indvars.iv1086, %polly.loop_header637 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header637 ]
  %448 = shl nuw nsw i64 %polly.indvar647, 8
  %449 = add i64 %421, %448
  %smax1343 = call i64 @llvm.smax.i64(i64 %449, i64 0)
  %450 = mul nsw i64 %polly.indvar647, -256
  %451 = add i64 %422, %450
  %452 = add i64 %smax1343, %451
  %453 = shl nuw nsw i64 %polly.indvar647, 11
  %454 = shl nuw nsw i64 %polly.indvar647, 8
  %455 = add i64 %424, %454
  %smax1329 = call i64 @llvm.smax.i64(i64 %455, i64 0)
  %456 = add nuw i64 %423, %smax1329
  %457 = mul nsw i64 %456, 9600
  %458 = add i64 %453, %457
  %459 = or i64 %453, 8
  %460 = add i64 %459, %457
  %461 = mul nsw i64 %polly.indvar647, -256
  %462 = add i64 %423, %461
  %463 = add i64 %smax1329, %462
  %464 = shl nuw nsw i64 %polly.indvar647, 8
  %465 = add i64 %425, %464
  %smax1311 = call i64 @llvm.smax.i64(i64 %465, i64 0)
  %466 = mul nsw i64 %polly.indvar647, -256
  %467 = add i64 %426, %466
  %468 = add i64 %smax1311, %467
  %469 = shl nuw nsw i64 %polly.indvar647, 11
  %470 = shl nuw nsw i64 %polly.indvar647, 8
  %471 = add i64 %428, %470
  %smax1296 = call i64 @llvm.smax.i64(i64 %471, i64 0)
  %472 = add nuw i64 %427, %smax1296
  %473 = mul nsw i64 %472, 9600
  %474 = add i64 %469, %473
  %475 = or i64 %469, 8
  %476 = add i64 %475, %473
  %477 = mul nsw i64 %polly.indvar647, -256
  %478 = add i64 %427, %477
  %479 = add i64 %smax1296, %478
  %480 = shl nuw nsw i64 %polly.indvar647, 8
  %481 = add i64 %429, %480
  %smax1278 = call i64 @llvm.smax.i64(i64 %481, i64 0)
  %482 = mul nsw i64 %polly.indvar647, -256
  %483 = add i64 %430, %482
  %484 = add i64 %smax1278, %483
  %485 = shl nuw nsw i64 %polly.indvar647, 11
  %486 = shl nuw nsw i64 %polly.indvar647, 8
  %487 = add i64 %432, %486
  %smax1263 = call i64 @llvm.smax.i64(i64 %487, i64 0)
  %488 = add nuw i64 %431, %smax1263
  %489 = mul nsw i64 %488, 9600
  %490 = add i64 %485, %489
  %491 = or i64 %485, 8
  %492 = add i64 %491, %489
  %493 = mul nsw i64 %polly.indvar647, -256
  %494 = add i64 %431, %493
  %495 = add i64 %smax1263, %494
  %496 = shl nuw nsw i64 %polly.indvar647, 8
  %497 = add i64 %433, %496
  %smax1243 = call i64 @llvm.smax.i64(i64 %497, i64 0)
  %498 = mul nsw i64 %polly.indvar647, -256
  %499 = add i64 %434, %498
  %500 = add i64 %smax1243, %499
  %501 = shl nsw i64 %polly.indvar647, 8
  %502 = add nsw i64 %501, %436
  %503 = icmp sgt i64 %502, 0
  %504 = select i1 %503, i64 %502, i64 0
  %polly.loop_guard654.not = icmp sgt i64 %504, %439
  br i1 %polly.loop_guard654.not, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header644
  %smax1090 = call i64 @llvm.smax.i64(i64 %indvars.iv1088, i64 0)
  %505 = add i64 %smax1090, %indvars.iv1093
  %506 = sub nsw i64 %440, %501
  %507 = add nuw nsw i64 %501, 256
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit689, %polly.loop_header644
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, 256
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -256
  %exitcond1105.not = icmp eq i64 %polly.indvar647, %435
  br i1 %exitcond1105.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_exit689
  %indvar1244 = phi i64 [ 0, %polly.loop_header651.preheader ], [ %indvar.next1245, %polly.loop_exit689 ]
  %indvars.iv1095 = phi i64 [ %505, %polly.loop_header651.preheader ], [ %indvars.iv.next1096, %polly.loop_exit689 ]
  %polly.indvar655 = phi i64 [ %504, %polly.loop_header651.preheader ], [ %polly.indvar_next656, %polly.loop_exit689 ]
  %508 = add i64 %452, %indvar1244
  %smin1344 = call i64 @llvm.smin.i64(i64 %508, i64 255)
  %509 = add nsw i64 %smin1344, 1
  %510 = mul i64 %indvar1244, 9600
  %511 = add i64 %458, %510
  %scevgep1330 = getelementptr i8, i8* %call, i64 %511
  %512 = add i64 %460, %510
  %scevgep1331 = getelementptr i8, i8* %call, i64 %512
  %513 = add i64 %463, %indvar1244
  %smin1332 = call i64 @llvm.smin.i64(i64 %513, i64 255)
  %514 = shl i64 %smin1332, 3
  %scevgep1333 = getelementptr i8, i8* %scevgep1331, i64 %514
  %scevgep1335 = getelementptr i8, i8* %scevgep1334, i64 %514
  %515 = add i64 %468, %indvar1244
  %smin1312 = call i64 @llvm.smin.i64(i64 %515, i64 255)
  %516 = add nsw i64 %smin1312, 1
  %517 = mul i64 %indvar1244, 9600
  %518 = add i64 %474, %517
  %scevgep1297 = getelementptr i8, i8* %call, i64 %518
  %519 = add i64 %476, %517
  %scevgep1298 = getelementptr i8, i8* %call, i64 %519
  %520 = add i64 %479, %indvar1244
  %smin1299 = call i64 @llvm.smin.i64(i64 %520, i64 255)
  %521 = shl i64 %smin1299, 3
  %scevgep1300 = getelementptr i8, i8* %scevgep1298, i64 %521
  %scevgep1303 = getelementptr i8, i8* %scevgep1302, i64 %521
  %522 = add i64 %484, %indvar1244
  %smin1279 = call i64 @llvm.smin.i64(i64 %522, i64 255)
  %523 = add nsw i64 %smin1279, 1
  %524 = mul i64 %indvar1244, 9600
  %525 = add i64 %490, %524
  %scevgep1264 = getelementptr i8, i8* %call, i64 %525
  %526 = add i64 %492, %524
  %scevgep1265 = getelementptr i8, i8* %call, i64 %526
  %527 = add i64 %495, %indvar1244
  %smin1266 = call i64 @llvm.smin.i64(i64 %527, i64 255)
  %528 = shl i64 %smin1266, 3
  %scevgep1267 = getelementptr i8, i8* %scevgep1265, i64 %528
  %scevgep1270 = getelementptr i8, i8* %scevgep1269, i64 %528
  %529 = add i64 %500, %indvar1244
  %smin1246 = call i64 @llvm.smin.i64(i64 %529, i64 255)
  %530 = add nsw i64 %smin1246, 1
  %smin1100 = call i64 @llvm.smin.i64(i64 %indvars.iv1095, i64 255)
  %531 = add nsw i64 %polly.indvar655, %506
  %polly.loop_guard6681148 = icmp sgt i64 %531, -1
  %532 = add nuw nsw i64 %polly.indvar655, %440
  %.not927 = icmp ult i64 %532, %507
  %polly.access.mul.call1681 = mul nsw i64 %532, 1000
  %533 = add nuw i64 %polly.access.mul.call1681, %441
  br i1 %polly.loop_guard6681148, label %polly.loop_header665.us, label %polly.loop_header651.split

polly.loop_header665.us:                          ; preds = %polly.loop_header651, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ 0, %polly.loop_header651 ]
  %534 = add nuw nsw i64 %polly.indvar669.us, %501
  %polly.access.mul.call1673.us = mul nuw nsw i64 %534, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %441, %polly.access.mul.call1673.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.indvar669.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar669.us, %smin1100
  br i1 %exitcond1098.not, label %polly.cond676.loopexit.us, label %polly.loop_header665.us

polly.then678.us:                                 ; preds = %polly.cond676.loopexit.us
  %polly.access.call1683.us = getelementptr double, double* %polly.access.cast.call1724, i64 %533
  %polly.access.call1683.load.us = load double, double* %polly.access.call1683.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514686.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %531
  store double %polly.access.call1683.load.us, double* %polly.access.Packed_MemRef_call1514686.us, align 8
  br label %polly.loop_header665.us.1.preheader

polly.cond676.loopexit.us:                        ; preds = %polly.loop_header665.us
  br i1 %.not927, label %polly.loop_header665.us.1.preheader, label %polly.then678.us

polly.loop_header665.us.1.preheader:              ; preds = %polly.then678.us, %polly.cond676.loopexit.us
  br label %polly.loop_header665.us.1

polly.loop_header651.split:                       ; preds = %polly.loop_header651
  br i1 %.not927, label %polly.loop_exit689, label %polly.loop_header658.preheader

polly.loop_header658.preheader:                   ; preds = %polly.loop_header651.split
  %polly.access.call1683 = getelementptr double, double* %polly.access.cast.call1724, i64 %533
  %polly.access.call1683.load = load double, double* %polly.access.call1683, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514686 = getelementptr double, double* %Packed_MemRef_call1514, i64 %531
  store double %polly.access.call1683.load, double* %polly.access.Packed_MemRef_call1514686, align 8
  %polly.access.add.call1682.1 = or i64 %533, 1
  %polly.access.call1683.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.1
  %polly.access.call1683.load.1 = load double, double* %polly.access.call1683.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.1 = add nsw i64 %531, 1200
  %polly.access.Packed_MemRef_call1514686.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.1
  store double %polly.access.call1683.load.1, double* %polly.access.Packed_MemRef_call1514686.1, align 8
  %polly.access.add.call1682.2 = or i64 %533, 2
  %polly.access.call1683.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.2
  %polly.access.call1683.load.2 = load double, double* %polly.access.call1683.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.2 = add nsw i64 %531, 2400
  %polly.access.Packed_MemRef_call1514686.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.2
  store double %polly.access.call1683.load.2, double* %polly.access.Packed_MemRef_call1514686.2, align 8
  %polly.access.add.call1682.3 = or i64 %533, 3
  %polly.access.call1683.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.3
  %polly.access.call1683.load.3 = load double, double* %polly.access.call1683.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.3 = add nsw i64 %531, 3600
  %polly.access.Packed_MemRef_call1514686.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.3
  store double %polly.access.call1683.load.3, double* %polly.access.Packed_MemRef_call1514686.3, align 8
  br label %polly.loop_exit689

polly.loop_exit689:                               ; preds = %polly.loop_header694.us.3, %middle.block1240, %polly.loop_header651.split, %polly.loop_header658.preheader, %polly.loop_header687.preheader
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp ult i64 %polly.indvar655, %439
  %indvars.iv.next1096 = add i64 %indvars.iv1095, 1
  %indvar.next1245 = add i64 %indvar1244, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header687.preheader:                   ; preds = %polly.cond676.loopexit.us.3, %polly.then678.us.3
  %535 = mul i64 %532, 9600
  br i1 %polly.loop_guard6681148, label %polly.loop_header687.us.preheader, label %polly.loop_exit689

polly.loop_header687.us.preheader:                ; preds = %polly.loop_header687.preheader
  %polly.access.add.Packed_MemRef_call2516706.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us, %532
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %531
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %min.iters.check1345 = icmp ult i64 %509, 4
  br i1 %min.iters.check1345, label %polly.loop_header694.us.preheader, label %vector.memcheck1328

vector.memcheck1328:                              ; preds = %polly.loop_header687.us.preheader
  %bound01336 = icmp ult i8* %scevgep1330, %scevgep1335
  %bound11337 = icmp ult i8* %malloccall513, %scevgep1333
  %found.conflict1338 = and i1 %bound01336, %bound11337
  br i1 %found.conflict1338, label %polly.loop_header694.us.preheader, label %vector.ph1346

vector.ph1346:                                    ; preds = %vector.memcheck1328
  %n.vec1348 = and i64 %509, -4
  %broadcast.splatinsert1354 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1355 = shufflevector <4 x double> %broadcast.splatinsert1354, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1357 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1358 = shufflevector <4 x double> %broadcast.splatinsert1357, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1346
  %index1349 = phi i64 [ 0, %vector.ph1346 ], [ %index.next1350, %vector.body1342 ]
  %536 = add nuw nsw i64 %index1349, %501
  %537 = getelementptr double, double* %Packed_MemRef_call1514, i64 %index1349
  %538 = bitcast double* %537 to <4 x double>*
  %wide.load1353 = load <4 x double>, <4 x double>* %538, align 8, !alias.scope !129
  %539 = fmul fast <4 x double> %broadcast.splat1355, %wide.load1353
  %540 = add nuw nsw i64 %536, %polly.access.mul.Packed_MemRef_call2516705.us
  %541 = getelementptr double, double* %Packed_MemRef_call2516, i64 %540
  %542 = bitcast double* %541 to <4 x double>*
  %wide.load1356 = load <4 x double>, <4 x double>* %542, align 8
  %543 = fmul fast <4 x double> %broadcast.splat1358, %wide.load1356
  %544 = shl i64 %536, 3
  %545 = add i64 %544, %535
  %546 = getelementptr i8, i8* %call, i64 %545
  %547 = bitcast i8* %546 to <4 x double>*
  %wide.load1359 = load <4 x double>, <4 x double>* %547, align 8, !alias.scope !132, !noalias !134
  %548 = fadd fast <4 x double> %543, %539
  %549 = fmul fast <4 x double> %548, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %550 = fadd fast <4 x double> %549, %wide.load1359
  %551 = bitcast i8* %546 to <4 x double>*
  store <4 x double> %550, <4 x double>* %551, align 8, !alias.scope !132, !noalias !134
  %index.next1350 = add i64 %index1349, 4
  %552 = icmp eq i64 %index.next1350, %n.vec1348
  br i1 %552, label %middle.block1340, label %vector.body1342, !llvm.loop !135

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1352 = icmp eq i64 %509, %n.vec1348
  br i1 %cmp.n1352, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %vector.memcheck1328, %polly.loop_header687.us.preheader, %middle.block1340
  %polly.indvar698.us.ph = phi i64 [ 0, %vector.memcheck1328 ], [ 0, %polly.loop_header687.us.preheader ], [ %n.vec1348, %middle.block1340 ]
  br label %polly.loop_header694.us

polly.loop_header694.us:                          ; preds = %polly.loop_header694.us.preheader, %polly.loop_header694.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_header694.us ], [ %polly.indvar698.us.ph, %polly.loop_header694.us.preheader ]
  %553 = add nuw nsw i64 %polly.indvar698.us, %501
  %polly.access.Packed_MemRef_call1514703.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.indvar698.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1514703.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %polly.access.add.Packed_MemRef_call2516710.us = add nuw nsw i64 %553, %polly.access.mul.Packed_MemRef_call2516705.us
  %polly.access.Packed_MemRef_call2516711.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2516711.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %554 = shl i64 %553, 3
  %555 = add i64 %554, %535
  %scevgep717.us = getelementptr i8, i8* %call, i64 %555
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
  %polly.access.add.Packed_MemRef_call2516706.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.1, %532
  %polly.access.Packed_MemRef_call2516707.us.1 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.1
  %_p_scalar_708.us.1 = load double, double* %polly.access.Packed_MemRef_call2516707.us.1, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.1 = add nsw i64 %531, 1200
  %polly.access.Packed_MemRef_call1514715.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.1
  %_p_scalar_716.us.1 = load double, double* %polly.access.Packed_MemRef_call1514715.us.1, align 8
  %min.iters.check1313 = icmp ult i64 %516, 4
  br i1 %min.iters.check1313, label %polly.loop_header694.us.1.preheader, label %vector.memcheck1295

vector.memcheck1295:                              ; preds = %polly.loop_exit696.loopexit.us
  %bound01304 = icmp ult i8* %scevgep1297, %scevgep1303
  %bound11305 = icmp ult i8* %scevgep1301, %scevgep1300
  %found.conflict1306 = and i1 %bound01304, %bound11305
  br i1 %found.conflict1306, label %polly.loop_header694.us.1.preheader, label %vector.ph1314

vector.ph1314:                                    ; preds = %vector.memcheck1295
  %n.vec1316 = and i64 %516, -4
  %broadcast.splatinsert1322 = insertelement <4 x double> poison, double %_p_scalar_708.us.1, i32 0
  %broadcast.splat1323 = shufflevector <4 x double> %broadcast.splatinsert1322, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1325 = insertelement <4 x double> poison, double %_p_scalar_716.us.1, i32 0
  %broadcast.splat1326 = shufflevector <4 x double> %broadcast.splatinsert1325, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1310 ]
  %556 = add nuw nsw i64 %index1317, %501
  %557 = add nuw nsw i64 %index1317, 1200
  %558 = getelementptr double, double* %Packed_MemRef_call1514, i64 %557
  %559 = bitcast double* %558 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %559, align 8, !alias.scope !137
  %560 = fmul fast <4 x double> %broadcast.splat1323, %wide.load1321
  %561 = add nuw nsw i64 %556, %polly.access.mul.Packed_MemRef_call2516705.us.1
  %562 = getelementptr double, double* %Packed_MemRef_call2516, i64 %561
  %563 = bitcast double* %562 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %563, align 8
  %564 = fmul fast <4 x double> %broadcast.splat1326, %wide.load1324
  %565 = shl i64 %556, 3
  %566 = add i64 %565, %535
  %567 = getelementptr i8, i8* %call, i64 %566
  %568 = bitcast i8* %567 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %568, align 8, !alias.scope !140, !noalias !142
  %569 = fadd fast <4 x double> %564, %560
  %570 = fmul fast <4 x double> %569, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %571 = fadd fast <4 x double> %570, %wide.load1327
  %572 = bitcast i8* %567 to <4 x double>*
  store <4 x double> %571, <4 x double>* %572, align 8, !alias.scope !140, !noalias !142
  %index.next1318 = add i64 %index1317, 4
  %573 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %573, label %middle.block1308, label %vector.body1310, !llvm.loop !143

middle.block1308:                                 ; preds = %vector.body1310
  %cmp.n1320 = icmp eq i64 %516, %n.vec1316
  br i1 %cmp.n1320, label %polly.loop_exit696.loopexit.us.1, label %polly.loop_header694.us.1.preheader

polly.loop_header694.us.1.preheader:              ; preds = %vector.memcheck1295, %polly.loop_exit696.loopexit.us, %middle.block1308
  %polly.indvar698.us.1.ph = phi i64 [ 0, %vector.memcheck1295 ], [ 0, %polly.loop_exit696.loopexit.us ], [ %n.vec1316, %middle.block1308 ]
  br label %polly.loop_header694.us.1

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1138 = call i64 @llvm.smin.i64(i64 %indvars.iv1136, i64 -1168)
  %574 = shl nsw i64 %polly.indvar849, 5
  %575 = add nsw i64 %smin1138, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1137 = add nsw i64 %indvars.iv1136, -32
  %exitcond1141.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1141.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %576 = mul nsw i64 %polly.indvar855, -32
  %smin = call i64 @llvm.smin.i64(i64 %576, i64 -1168)
  %577 = add nsw i64 %smin, 1200
  %smin1134 = call i64 @llvm.smin.i64(i64 %indvars.iv1132, i64 -1168)
  %578 = shl nsw i64 %polly.indvar855, 5
  %579 = add nsw i64 %smin1134, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1133 = add nsw i64 %indvars.iv1132, -32
  %exitcond1140.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1140.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %580 = add nuw nsw i64 %polly.indvar861, %574
  %581 = trunc i64 %580 to i32
  %582 = mul nuw nsw i64 %580, 9600
  %min.iters.check = icmp eq i64 %577, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1170

vector.ph1170:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1177 = insertelement <4 x i64> poison, i64 %578, i32 0
  %broadcast.splat1178 = shufflevector <4 x i64> %broadcast.splatinsert1177, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1179 = insertelement <4 x i32> poison, i32 %581, i32 0
  %broadcast.splat1180 = shufflevector <4 x i32> %broadcast.splatinsert1179, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %vector.ph1170
  %index1171 = phi i64 [ 0, %vector.ph1170 ], [ %index.next1172, %vector.body1169 ]
  %vec.ind1175 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1170 ], [ %vec.ind.next1176, %vector.body1169 ]
  %583 = add nuw nsw <4 x i64> %vec.ind1175, %broadcast.splat1178
  %584 = trunc <4 x i64> %583 to <4 x i32>
  %585 = mul <4 x i32> %broadcast.splat1180, %584
  %586 = add <4 x i32> %585, <i32 3, i32 3, i32 3, i32 3>
  %587 = urem <4 x i32> %586, <i32 1200, i32 1200, i32 1200, i32 1200>
  %588 = sitofp <4 x i32> %587 to <4 x double>
  %589 = fmul fast <4 x double> %588, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %590 = extractelement <4 x i64> %583, i32 0
  %591 = shl i64 %590, 3
  %592 = add nuw nsw i64 %591, %582
  %593 = getelementptr i8, i8* %call, i64 %592
  %594 = bitcast i8* %593 to <4 x double>*
  store <4 x double> %589, <4 x double>* %594, align 8, !alias.scope !144, !noalias !146
  %index.next1172 = add i64 %index1171, 4
  %vec.ind.next1176 = add <4 x i64> %vec.ind1175, <i64 4, i64 4, i64 4, i64 4>
  %595 = icmp eq i64 %index.next1172, %577
  br i1 %595, label %polly.loop_exit866, label %vector.body1169, !llvm.loop !149

polly.loop_exit866:                               ; preds = %vector.body1169, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar861, %575
  br i1 %exitcond1139.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %596 = add nuw nsw i64 %polly.indvar867, %578
  %597 = trunc i64 %596 to i32
  %598 = mul i32 %597, %581
  %599 = add i32 %598, 3
  %600 = urem i32 %599, 1200
  %p_conv31.i = sitofp i32 %600 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %601 = shl i64 %596, 3
  %602 = add nuw nsw i64 %601, %582
  %scevgep870 = getelementptr i8, i8* %call, i64 %602
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar867, %579
  br i1 %exitcond1135.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !150

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1128 = call i64 @llvm.smin.i64(i64 %indvars.iv1126, i64 -1168)
  %603 = shl nsw i64 %polly.indvar876, 5
  %604 = add nsw i64 %smin1128, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1127 = add nsw i64 %indvars.iv1126, -32
  %exitcond1131.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1131.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %605 = mul nsw i64 %polly.indvar882, -32
  %smin1184 = call i64 @llvm.smin.i64(i64 %605, i64 -968)
  %606 = add nsw i64 %smin1184, 1000
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 -968)
  %607 = shl nsw i64 %polly.indvar882, 5
  %608 = add nsw i64 %smin1124, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, -32
  %exitcond1130.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1130.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %609 = add nuw nsw i64 %polly.indvar888, %603
  %610 = trunc i64 %609 to i32
  %611 = mul nuw nsw i64 %609, 8000
  %min.iters.check1185 = icmp eq i64 %606, 0
  br i1 %min.iters.check1185, label %polly.loop_header891, label %vector.ph1186

vector.ph1186:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1195 = insertelement <4 x i64> poison, i64 %607, i32 0
  %broadcast.splat1196 = shufflevector <4 x i64> %broadcast.splatinsert1195, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1197 = insertelement <4 x i32> poison, i32 %610, i32 0
  %broadcast.splat1198 = shufflevector <4 x i32> %broadcast.splatinsert1197, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1190, %vector.body1183 ]
  %vec.ind1193 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1186 ], [ %vec.ind.next1194, %vector.body1183 ]
  %612 = add nuw nsw <4 x i64> %vec.ind1193, %broadcast.splat1196
  %613 = trunc <4 x i64> %612 to <4 x i32>
  %614 = mul <4 x i32> %broadcast.splat1198, %613
  %615 = add <4 x i32> %614, <i32 2, i32 2, i32 2, i32 2>
  %616 = urem <4 x i32> %615, <i32 1000, i32 1000, i32 1000, i32 1000>
  %617 = sitofp <4 x i32> %616 to <4 x double>
  %618 = fmul fast <4 x double> %617, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %619 = extractelement <4 x i64> %612, i32 0
  %620 = shl i64 %619, 3
  %621 = add nuw nsw i64 %620, %611
  %622 = getelementptr i8, i8* %call2, i64 %621
  %623 = bitcast i8* %622 to <4 x double>*
  store <4 x double> %618, <4 x double>* %623, align 8, !alias.scope !148, !noalias !151
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %624 = icmp eq i64 %index.next1190, %606
  br i1 %624, label %polly.loop_exit893, label %vector.body1183, !llvm.loop !152

polly.loop_exit893:                               ; preds = %vector.body1183, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar888, %604
  br i1 %exitcond1129.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %625 = add nuw nsw i64 %polly.indvar894, %607
  %626 = trunc i64 %625 to i32
  %627 = mul i32 %626, %610
  %628 = add i32 %627, 2
  %629 = urem i32 %628, 1000
  %p_conv10.i = sitofp i32 %629 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %630 = shl i64 %625, 3
  %631 = add nuw nsw i64 %630, %611
  %scevgep897 = getelementptr i8, i8* %call2, i64 %631
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar894, %608
  br i1 %exitcond1125.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !153

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1118 = call i64 @llvm.smin.i64(i64 %indvars.iv1116, i64 -1168)
  %632 = shl nsw i64 %polly.indvar902, 5
  %633 = add nsw i64 %smin1118, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -32
  %exitcond1121.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1121.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %634 = mul nsw i64 %polly.indvar908, -32
  %smin1202 = call i64 @llvm.smin.i64(i64 %634, i64 -968)
  %635 = add nsw i64 %smin1202, 1000
  %smin1114 = call i64 @llvm.smin.i64(i64 %indvars.iv1112, i64 -968)
  %636 = shl nsw i64 %polly.indvar908, 5
  %637 = add nsw i64 %smin1114, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -32
  %exitcond1120.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1120.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %638 = add nuw nsw i64 %polly.indvar914, %632
  %639 = trunc i64 %638 to i32
  %640 = mul nuw nsw i64 %638, 8000
  %min.iters.check1203 = icmp eq i64 %635, 0
  br i1 %min.iters.check1203, label %polly.loop_header917, label %vector.ph1204

vector.ph1204:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1213 = insertelement <4 x i64> poison, i64 %636, i32 0
  %broadcast.splat1214 = shufflevector <4 x i64> %broadcast.splatinsert1213, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1215 = insertelement <4 x i32> poison, i32 %639, i32 0
  %broadcast.splat1216 = shufflevector <4 x i32> %broadcast.splatinsert1215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1201 ]
  %vec.ind1211 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1204 ], [ %vec.ind.next1212, %vector.body1201 ]
  %641 = add nuw nsw <4 x i64> %vec.ind1211, %broadcast.splat1214
  %642 = trunc <4 x i64> %641 to <4 x i32>
  %643 = mul <4 x i32> %broadcast.splat1216, %642
  %644 = add <4 x i32> %643, <i32 1, i32 1, i32 1, i32 1>
  %645 = urem <4 x i32> %644, <i32 1200, i32 1200, i32 1200, i32 1200>
  %646 = sitofp <4 x i32> %645 to <4 x double>
  %647 = fmul fast <4 x double> %646, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %648 = extractelement <4 x i64> %641, i32 0
  %649 = shl i64 %648, 3
  %650 = add nuw nsw i64 %649, %640
  %651 = getelementptr i8, i8* %call1, i64 %650
  %652 = bitcast i8* %651 to <4 x double>*
  store <4 x double> %647, <4 x double>* %652, align 8, !alias.scope !147, !noalias !154
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1212 = add <4 x i64> %vec.ind1211, <i64 4, i64 4, i64 4, i64 4>
  %653 = icmp eq i64 %index.next1208, %635
  br i1 %653, label %polly.loop_exit919, label %vector.body1201, !llvm.loop !155

polly.loop_exit919:                               ; preds = %vector.body1201, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar914, %633
  br i1 %exitcond1119.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %654 = add nuw nsw i64 %polly.indvar920, %636
  %655 = trunc i64 %654 to i32
  %656 = mul i32 %655, %639
  %657 = add i32 %656, 1
  %658 = urem i32 %657, 1200
  %p_conv.i = sitofp i32 %658 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %659 = shl i64 %654, 3
  %660 = add nuw nsw i64 %659, %640
  %scevgep924 = getelementptr i8, i8* %call1, i64 %660
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar920, %637
  br i1 %exitcond1115.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !156

polly.loop_header247.us.1:                        ; preds = %polly.loop_header247.us.1.preheader, %polly.loop_header247.us.1
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_header247.us.1 ], [ 0, %polly.loop_header247.us.1.preheader ]
  %661 = add nuw nsw i64 %polly.indvar251.us.1, %177
  %polly.access.mul.call1255.us.1 = mul nuw nsw i64 %661, 1000
  %polly.access.add.call1256.us.1 = add nuw nsw i64 %118, %polly.access.mul.call1255.us.1
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
  %polly.access.add.call1260.us.1 = or i64 %209, 1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nsw i64 %207, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  br label %polly.loop_header247.us.2.preheader

polly.loop_header247.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header247.us.2

polly.loop_header247.us.2:                        ; preds = %polly.loop_header247.us.2.preheader, %polly.loop_header247.us.2
  %polly.indvar251.us.2 = phi i64 [ %polly.indvar_next252.us.2, %polly.loop_header247.us.2 ], [ 0, %polly.loop_header247.us.2.preheader ]
  %662 = add nuw nsw i64 %polly.indvar251.us.2, %177
  %polly.access.mul.call1255.us.2 = mul nuw nsw i64 %662, 1000
  %polly.access.add.call1256.us.2 = add nuw nsw i64 %119, %polly.access.mul.call1255.us.2
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
  %polly.access.add.call1260.us.2 = or i64 %209, 2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nsw i64 %207, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  br label %polly.loop_header247.us.3.preheader

polly.loop_header247.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header247.us.3

polly.loop_header247.us.3:                        ; preds = %polly.loop_header247.us.3.preheader, %polly.loop_header247.us.3
  %polly.indvar251.us.3 = phi i64 [ %polly.indvar_next252.us.3, %polly.loop_header247.us.3 ], [ 0, %polly.loop_header247.us.3.preheader ]
  %663 = add nuw nsw i64 %polly.indvar251.us.3, %177
  %polly.access.mul.call1255.us.3 = mul nuw nsw i64 %663, 1000
  %polly.access.add.call1256.us.3 = add nuw nsw i64 %120, %polly.access.mul.call1255.us.3
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
  %polly.access.add.call1260.us.3 = or i64 %209, 3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nsw i64 %207, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  br label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_header272.us.1.preheader, %polly.loop_header272.us.1
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_header272.us.1 ], [ %polly.indvar276.us.1.ph, %polly.loop_header272.us.1.preheader ]
  %664 = add nuw nsw i64 %polly.indvar276.us.1, %177
  %polly.access.add.Packed_MemRef_call1280.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1200
  %polly.access.Packed_MemRef_call1281.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.1
  %_p_scalar_282.us.1 = load double, double* %polly.access.Packed_MemRef_call1281.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_286.us.1, %_p_scalar_282.us.1
  %polly.access.add.Packed_MemRef_call2288.us.1 = add nuw nsw i64 %664, %polly.access.mul.Packed_MemRef_call2283.us.1
  %polly.access.Packed_MemRef_call2289.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.1
  %_p_scalar_290.us.1 = load double, double* %polly.access.Packed_MemRef_call2289.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_294.us.1, %_p_scalar_290.us.1
  %665 = shl i64 %664, 3
  %666 = add i64 %665, %211
  %scevgep295.us.1 = getelementptr i8, i8* %call, i64 %666
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
  %polly.access.add.Packed_MemRef_call2284.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.2, %208
  %polly.access.Packed_MemRef_call2285.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.2
  %_p_scalar_286.us.2 = load double, double* %polly.access.Packed_MemRef_call2285.us.2, align 8
  %polly.access.add.Packed_MemRef_call1292.us.2 = add nsw i64 %207, 2400
  %polly.access.Packed_MemRef_call1293.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.2
  %_p_scalar_294.us.2 = load double, double* %polly.access.Packed_MemRef_call1293.us.2, align 8
  %min.iters.check1572 = icmp ult i64 %199, 4
  br i1 %min.iters.check1572, label %polly.loop_header272.us.2.preheader, label %vector.memcheck1554

vector.memcheck1554:                              ; preds = %polly.loop_exit274.loopexit.us.1
  %bound01563 = icmp ult i8* %scevgep1556, %scevgep1562
  %bound11564 = icmp ult i8* %scevgep1560, %scevgep1559
  %found.conflict1565 = and i1 %bound01563, %bound11564
  br i1 %found.conflict1565, label %polly.loop_header272.us.2.preheader, label %vector.ph1573

vector.ph1573:                                    ; preds = %vector.memcheck1554
  %n.vec1575 = and i64 %199, -4
  %broadcast.splatinsert1581 = insertelement <4 x double> poison, double %_p_scalar_286.us.2, i32 0
  %broadcast.splat1582 = shufflevector <4 x double> %broadcast.splatinsert1581, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1584 = insertelement <4 x double> poison, double %_p_scalar_294.us.2, i32 0
  %broadcast.splat1585 = shufflevector <4 x double> %broadcast.splatinsert1584, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1569

vector.body1569:                                  ; preds = %vector.body1569, %vector.ph1573
  %index1576 = phi i64 [ 0, %vector.ph1573 ], [ %index.next1577, %vector.body1569 ]
  %667 = add nuw nsw i64 %index1576, %177
  %668 = add nuw nsw i64 %index1576, 2400
  %669 = getelementptr double, double* %Packed_MemRef_call1, i64 %668
  %670 = bitcast double* %669 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %670, align 8, !alias.scope !158
  %671 = fmul fast <4 x double> %broadcast.splat1582, %wide.load1580
  %672 = add nuw nsw i64 %667, %polly.access.mul.Packed_MemRef_call2283.us.2
  %673 = getelementptr double, double* %Packed_MemRef_call2, i64 %672
  %674 = bitcast double* %673 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %674, align 8
  %675 = fmul fast <4 x double> %broadcast.splat1585, %wide.load1583
  %676 = shl i64 %667, 3
  %677 = add i64 %676, %211
  %678 = getelementptr i8, i8* %call, i64 %677
  %679 = bitcast i8* %678 to <4 x double>*
  %wide.load1586 = load <4 x double>, <4 x double>* %679, align 8, !alias.scope !161, !noalias !163
  %680 = fadd fast <4 x double> %675, %671
  %681 = fmul fast <4 x double> %680, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %682 = fadd fast <4 x double> %681, %wide.load1586
  %683 = bitcast i8* %678 to <4 x double>*
  store <4 x double> %682, <4 x double>* %683, align 8, !alias.scope !161, !noalias !163
  %index.next1577 = add i64 %index1576, 4
  %684 = icmp eq i64 %index.next1577, %n.vec1575
  br i1 %684, label %middle.block1567, label %vector.body1569, !llvm.loop !164

middle.block1567:                                 ; preds = %vector.body1569
  %cmp.n1579 = icmp eq i64 %199, %n.vec1575
  br i1 %cmp.n1579, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2.preheader

polly.loop_header272.us.2.preheader:              ; preds = %vector.memcheck1554, %polly.loop_exit274.loopexit.us.1, %middle.block1567
  %polly.indvar276.us.2.ph = phi i64 [ 0, %vector.memcheck1554 ], [ 0, %polly.loop_exit274.loopexit.us.1 ], [ %n.vec1575, %middle.block1567 ]
  br label %polly.loop_header272.us.2

polly.loop_header272.us.2:                        ; preds = %polly.loop_header272.us.2.preheader, %polly.loop_header272.us.2
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_header272.us.2 ], [ %polly.indvar276.us.2.ph, %polly.loop_header272.us.2.preheader ]
  %685 = add nuw nsw i64 %polly.indvar276.us.2, %177
  %polly.access.add.Packed_MemRef_call1280.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 2400
  %polly.access.Packed_MemRef_call1281.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.2
  %_p_scalar_282.us.2 = load double, double* %polly.access.Packed_MemRef_call1281.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_286.us.2, %_p_scalar_282.us.2
  %polly.access.add.Packed_MemRef_call2288.us.2 = add nuw nsw i64 %685, %polly.access.mul.Packed_MemRef_call2283.us.2
  %polly.access.Packed_MemRef_call2289.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.2
  %_p_scalar_290.us.2 = load double, double* %polly.access.Packed_MemRef_call2289.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_294.us.2, %_p_scalar_290.us.2
  %686 = shl i64 %685, 3
  %687 = add i64 %686, %211
  %scevgep295.us.2 = getelementptr i8, i8* %call, i64 %687
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
  %polly.access.add.Packed_MemRef_call2284.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.3, %208
  %polly.access.Packed_MemRef_call2285.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.3
  %_p_scalar_286.us.3 = load double, double* %polly.access.Packed_MemRef_call2285.us.3, align 8
  %polly.access.add.Packed_MemRef_call1292.us.3 = add nsw i64 %207, 3600
  %polly.access.Packed_MemRef_call1293.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.3
  %_p_scalar_294.us.3 = load double, double* %polly.access.Packed_MemRef_call1293.us.3, align 8
  %min.iters.check1539 = icmp ult i64 %206, 4
  br i1 %min.iters.check1539, label %polly.loop_header272.us.3.preheader, label %vector.ph1540

vector.ph1540:                                    ; preds = %polly.loop_exit274.loopexit.us.2
  %n.vec1542 = and i64 %206, -4
  %broadcast.splatinsert1548 = insertelement <4 x double> poison, double %_p_scalar_286.us.3, i32 0
  %broadcast.splat1549 = shufflevector <4 x double> %broadcast.splatinsert1548, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1551 = insertelement <4 x double> poison, double %_p_scalar_294.us.3, i32 0
  %broadcast.splat1552 = shufflevector <4 x double> %broadcast.splatinsert1551, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1534

vector.body1534:                                  ; preds = %vector.body1534, %vector.ph1540
  %index1543 = phi i64 [ 0, %vector.ph1540 ], [ %index.next1544, %vector.body1534 ]
  %688 = add nuw nsw i64 %index1543, %177
  %689 = add nuw nsw i64 %index1543, 3600
  %690 = getelementptr double, double* %Packed_MemRef_call1, i64 %689
  %691 = bitcast double* %690 to <4 x double>*
  %wide.load1547 = load <4 x double>, <4 x double>* %691, align 8
  %692 = fmul fast <4 x double> %broadcast.splat1549, %wide.load1547
  %693 = add nuw nsw i64 %688, %polly.access.mul.Packed_MemRef_call2283.us.3
  %694 = getelementptr double, double* %Packed_MemRef_call2, i64 %693
  %695 = bitcast double* %694 to <4 x double>*
  %wide.load1550 = load <4 x double>, <4 x double>* %695, align 8
  %696 = fmul fast <4 x double> %broadcast.splat1552, %wide.load1550
  %697 = shl i64 %688, 3
  %698 = add i64 %697, %211
  %699 = getelementptr i8, i8* %call, i64 %698
  %700 = bitcast i8* %699 to <4 x double>*
  %wide.load1553 = load <4 x double>, <4 x double>* %700, align 8, !alias.scope !65, !noalias !67
  %701 = fadd fast <4 x double> %696, %692
  %702 = fmul fast <4 x double> %701, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %703 = fadd fast <4 x double> %702, %wide.load1553
  %704 = bitcast i8* %699 to <4 x double>*
  store <4 x double> %703, <4 x double>* %704, align 8, !alias.scope !65, !noalias !67
  %index.next1544 = add i64 %index1543, 4
  %705 = icmp eq i64 %index.next1544, %n.vec1542
  br i1 %705, label %middle.block1532, label %vector.body1534, !llvm.loop !166

middle.block1532:                                 ; preds = %vector.body1534
  %cmp.n1546 = icmp eq i64 %206, %n.vec1542
  br i1 %cmp.n1546, label %polly.loop_exit267, label %polly.loop_header272.us.3.preheader

polly.loop_header272.us.3.preheader:              ; preds = %polly.loop_exit274.loopexit.us.2, %middle.block1532
  %polly.indvar276.us.3.ph = phi i64 [ 0, %polly.loop_exit274.loopexit.us.2 ], [ %n.vec1542, %middle.block1532 ]
  br label %polly.loop_header272.us.3

polly.loop_header272.us.3:                        ; preds = %polly.loop_header272.us.3.preheader, %polly.loop_header272.us.3
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_header272.us.3 ], [ %polly.indvar276.us.3.ph, %polly.loop_header272.us.3.preheader ]
  %706 = add nuw nsw i64 %polly.indvar276.us.3, %177
  %polly.access.add.Packed_MemRef_call1280.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 3600
  %polly.access.Packed_MemRef_call1281.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.3
  %_p_scalar_282.us.3 = load double, double* %polly.access.Packed_MemRef_call1281.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_286.us.3, %_p_scalar_282.us.3
  %polly.access.add.Packed_MemRef_call2288.us.3 = add nuw nsw i64 %706, %polly.access.mul.Packed_MemRef_call2283.us.3
  %polly.access.Packed_MemRef_call2289.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.3
  %_p_scalar_290.us.3 = load double, double* %polly.access.Packed_MemRef_call2289.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_294.us.3, %_p_scalar_290.us.3
  %707 = shl i64 %706, 3
  %708 = add i64 %707, %211
  %scevgep295.us.3 = getelementptr i8, i8* %call, i64 %708
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
  %709 = add nuw nsw i64 %polly.indvar458.us.1, %339
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %709, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %280, %polly.access.mul.call1462.us.1
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
  %polly.access.add.call1471.us.1 = or i64 %371, 1
  %polly.access.call1472.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.1
  %polly.access.call1472.load.us.1 = load double, double* %polly.access.call1472.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.1 = add nsw i64 %369, 1200
  %polly.access.Packed_MemRef_call1303475.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.1
  store double %polly.access.call1472.load.us.1, double* %polly.access.Packed_MemRef_call1303475.us.1, align 8
  br label %polly.loop_header454.us.2.preheader

polly.loop_header454.us.2.preheader:              ; preds = %polly.then467.us.1, %polly.cond465.loopexit.us.1
  br label %polly.loop_header454.us.2

polly.loop_header454.us.2:                        ; preds = %polly.loop_header454.us.2.preheader, %polly.loop_header454.us.2
  %polly.indvar458.us.2 = phi i64 [ %polly.indvar_next459.us.2, %polly.loop_header454.us.2 ], [ 0, %polly.loop_header454.us.2.preheader ]
  %710 = add nuw nsw i64 %polly.indvar458.us.2, %339
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %710, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %281, %polly.access.mul.call1462.us.2
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
  %polly.access.add.call1471.us.2 = or i64 %371, 2
  %polly.access.call1472.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.2
  %polly.access.call1472.load.us.2 = load double, double* %polly.access.call1472.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.2 = add nsw i64 %369, 2400
  %polly.access.Packed_MemRef_call1303475.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.2
  store double %polly.access.call1472.load.us.2, double* %polly.access.Packed_MemRef_call1303475.us.2, align 8
  br label %polly.loop_header454.us.3.preheader

polly.loop_header454.us.3.preheader:              ; preds = %polly.then467.us.2, %polly.cond465.loopexit.us.2
  br label %polly.loop_header454.us.3

polly.loop_header454.us.3:                        ; preds = %polly.loop_header454.us.3.preheader, %polly.loop_header454.us.3
  %polly.indvar458.us.3 = phi i64 [ %polly.indvar_next459.us.3, %polly.loop_header454.us.3 ], [ 0, %polly.loop_header454.us.3.preheader ]
  %711 = add nuw nsw i64 %polly.indvar458.us.3, %339
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %711, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %282, %polly.access.mul.call1462.us.3
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
  %polly.access.add.call1471.us.3 = or i64 %371, 3
  %polly.access.call1472.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.3
  %polly.access.call1472.load.us.3 = load double, double* %polly.access.call1472.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.3 = add nsw i64 %369, 3600
  %polly.access.Packed_MemRef_call1303475.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.3
  store double %polly.access.call1472.load.us.3, double* %polly.access.Packed_MemRef_call1303475.us.3, align 8
  br label %polly.loop_header476.preheader

polly.loop_header483.us.1:                        ; preds = %polly.loop_header483.us.1.preheader, %polly.loop_header483.us.1
  %polly.indvar487.us.1 = phi i64 [ %polly.indvar_next488.us.1, %polly.loop_header483.us.1 ], [ %polly.indvar487.us.1.ph, %polly.loop_header483.us.1.preheader ]
  %712 = add nuw nsw i64 %polly.indvar487.us.1, %339
  %polly.access.add.Packed_MemRef_call1303491.us.1 = add nuw nsw i64 %polly.indvar487.us.1, 1200
  %polly.access.Packed_MemRef_call1303492.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.1
  %_p_scalar_493.us.1 = load double, double* %polly.access.Packed_MemRef_call1303492.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_497.us.1, %_p_scalar_493.us.1
  %polly.access.add.Packed_MemRef_call2305499.us.1 = add nuw nsw i64 %712, %polly.access.mul.Packed_MemRef_call2305494.us.1
  %polly.access.Packed_MemRef_call2305500.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call2305500.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_505.us.1, %_p_scalar_501.us.1
  %713 = shl i64 %712, 3
  %714 = add i64 %713, %373
  %scevgep506.us.1 = getelementptr i8, i8* %call, i64 %714
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
  %polly.access.add.Packed_MemRef_call2305495.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.2, %370
  %polly.access.Packed_MemRef_call2305496.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call2305496.us.2, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.2 = add nsw i64 %369, 2400
  %polly.access.Packed_MemRef_call1303504.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call1303504.us.2, align 8
  %min.iters.check1426 = icmp ult i64 %361, 4
  br i1 %min.iters.check1426, label %polly.loop_header483.us.2.preheader, label %vector.memcheck1408

vector.memcheck1408:                              ; preds = %polly.loop_exit485.loopexit.us.1
  %bound01417 = icmp ult i8* %scevgep1410, %scevgep1416
  %bound11418 = icmp ult i8* %scevgep1414, %scevgep1413
  %found.conflict1419 = and i1 %bound01417, %bound11418
  br i1 %found.conflict1419, label %polly.loop_header483.us.2.preheader, label %vector.ph1427

vector.ph1427:                                    ; preds = %vector.memcheck1408
  %n.vec1429 = and i64 %361, -4
  %broadcast.splatinsert1435 = insertelement <4 x double> poison, double %_p_scalar_497.us.2, i32 0
  %broadcast.splat1436 = shufflevector <4 x double> %broadcast.splatinsert1435, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1438 = insertelement <4 x double> poison, double %_p_scalar_505.us.2, i32 0
  %broadcast.splat1439 = shufflevector <4 x double> %broadcast.splatinsert1438, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1423

vector.body1423:                                  ; preds = %vector.body1423, %vector.ph1427
  %index1430 = phi i64 [ 0, %vector.ph1427 ], [ %index.next1431, %vector.body1423 ]
  %715 = add nuw nsw i64 %index1430, %339
  %716 = add nuw nsw i64 %index1430, 2400
  %717 = getelementptr double, double* %Packed_MemRef_call1303, i64 %716
  %718 = bitcast double* %717 to <4 x double>*
  %wide.load1434 = load <4 x double>, <4 x double>* %718, align 8, !alias.scope !169
  %719 = fmul fast <4 x double> %broadcast.splat1436, %wide.load1434
  %720 = add nuw nsw i64 %715, %polly.access.mul.Packed_MemRef_call2305494.us.2
  %721 = getelementptr double, double* %Packed_MemRef_call2305, i64 %720
  %722 = bitcast double* %721 to <4 x double>*
  %wide.load1437 = load <4 x double>, <4 x double>* %722, align 8
  %723 = fmul fast <4 x double> %broadcast.splat1439, %wide.load1437
  %724 = shl i64 %715, 3
  %725 = add i64 %724, %373
  %726 = getelementptr i8, i8* %call, i64 %725
  %727 = bitcast i8* %726 to <4 x double>*
  %wide.load1440 = load <4 x double>, <4 x double>* %727, align 8, !alias.scope !172, !noalias !174
  %728 = fadd fast <4 x double> %723, %719
  %729 = fmul fast <4 x double> %728, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %730 = fadd fast <4 x double> %729, %wide.load1440
  %731 = bitcast i8* %726 to <4 x double>*
  store <4 x double> %730, <4 x double>* %731, align 8, !alias.scope !172, !noalias !174
  %index.next1431 = add i64 %index1430, 4
  %732 = icmp eq i64 %index.next1431, %n.vec1429
  br i1 %732, label %middle.block1421, label %vector.body1423, !llvm.loop !175

middle.block1421:                                 ; preds = %vector.body1423
  %cmp.n1433 = icmp eq i64 %361, %n.vec1429
  br i1 %cmp.n1433, label %polly.loop_exit485.loopexit.us.2, label %polly.loop_header483.us.2.preheader

polly.loop_header483.us.2.preheader:              ; preds = %vector.memcheck1408, %polly.loop_exit485.loopexit.us.1, %middle.block1421
  %polly.indvar487.us.2.ph = phi i64 [ 0, %vector.memcheck1408 ], [ 0, %polly.loop_exit485.loopexit.us.1 ], [ %n.vec1429, %middle.block1421 ]
  br label %polly.loop_header483.us.2

polly.loop_header483.us.2:                        ; preds = %polly.loop_header483.us.2.preheader, %polly.loop_header483.us.2
  %polly.indvar487.us.2 = phi i64 [ %polly.indvar_next488.us.2, %polly.loop_header483.us.2 ], [ %polly.indvar487.us.2.ph, %polly.loop_header483.us.2.preheader ]
  %733 = add nuw nsw i64 %polly.indvar487.us.2, %339
  %polly.access.add.Packed_MemRef_call1303491.us.2 = add nuw nsw i64 %polly.indvar487.us.2, 2400
  %polly.access.Packed_MemRef_call1303492.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.2
  %_p_scalar_493.us.2 = load double, double* %polly.access.Packed_MemRef_call1303492.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_497.us.2, %_p_scalar_493.us.2
  %polly.access.add.Packed_MemRef_call2305499.us.2 = add nuw nsw i64 %733, %polly.access.mul.Packed_MemRef_call2305494.us.2
  %polly.access.Packed_MemRef_call2305500.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call2305500.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_505.us.2, %_p_scalar_501.us.2
  %734 = shl i64 %733, 3
  %735 = add i64 %734, %373
  %scevgep506.us.2 = getelementptr i8, i8* %call, i64 %735
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
  %polly.access.add.Packed_MemRef_call2305495.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.3, %370
  %polly.access.Packed_MemRef_call2305496.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call2305496.us.3, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.3 = add nsw i64 %369, 3600
  %polly.access.Packed_MemRef_call1303504.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call1303504.us.3, align 8
  %min.iters.check1393 = icmp ult i64 %368, 4
  br i1 %min.iters.check1393, label %polly.loop_header483.us.3.preheader, label %vector.ph1394

vector.ph1394:                                    ; preds = %polly.loop_exit485.loopexit.us.2
  %n.vec1396 = and i64 %368, -4
  %broadcast.splatinsert1402 = insertelement <4 x double> poison, double %_p_scalar_497.us.3, i32 0
  %broadcast.splat1403 = shufflevector <4 x double> %broadcast.splatinsert1402, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1405 = insertelement <4 x double> poison, double %_p_scalar_505.us.3, i32 0
  %broadcast.splat1406 = shufflevector <4 x double> %broadcast.splatinsert1405, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1388

vector.body1388:                                  ; preds = %vector.body1388, %vector.ph1394
  %index1397 = phi i64 [ 0, %vector.ph1394 ], [ %index.next1398, %vector.body1388 ]
  %736 = add nuw nsw i64 %index1397, %339
  %737 = add nuw nsw i64 %index1397, 3600
  %738 = getelementptr double, double* %Packed_MemRef_call1303, i64 %737
  %739 = bitcast double* %738 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %739, align 8
  %740 = fmul fast <4 x double> %broadcast.splat1403, %wide.load1401
  %741 = add nuw nsw i64 %736, %polly.access.mul.Packed_MemRef_call2305494.us.3
  %742 = getelementptr double, double* %Packed_MemRef_call2305, i64 %741
  %743 = bitcast double* %742 to <4 x double>*
  %wide.load1404 = load <4 x double>, <4 x double>* %743, align 8
  %744 = fmul fast <4 x double> %broadcast.splat1406, %wide.load1404
  %745 = shl i64 %736, 3
  %746 = add i64 %745, %373
  %747 = getelementptr i8, i8* %call, i64 %746
  %748 = bitcast i8* %747 to <4 x double>*
  %wide.load1407 = load <4 x double>, <4 x double>* %748, align 8, !alias.scope !92, !noalias !94
  %749 = fadd fast <4 x double> %744, %740
  %750 = fmul fast <4 x double> %749, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %751 = fadd fast <4 x double> %750, %wide.load1407
  %752 = bitcast i8* %747 to <4 x double>*
  store <4 x double> %751, <4 x double>* %752, align 8, !alias.scope !92, !noalias !94
  %index.next1398 = add i64 %index1397, 4
  %753 = icmp eq i64 %index.next1398, %n.vec1396
  br i1 %753, label %middle.block1386, label %vector.body1388, !llvm.loop !177

middle.block1386:                                 ; preds = %vector.body1388
  %cmp.n1400 = icmp eq i64 %368, %n.vec1396
  br i1 %cmp.n1400, label %polly.loop_exit478, label %polly.loop_header483.us.3.preheader

polly.loop_header483.us.3.preheader:              ; preds = %polly.loop_exit485.loopexit.us.2, %middle.block1386
  %polly.indvar487.us.3.ph = phi i64 [ 0, %polly.loop_exit485.loopexit.us.2 ], [ %n.vec1396, %middle.block1386 ]
  br label %polly.loop_header483.us.3

polly.loop_header483.us.3:                        ; preds = %polly.loop_header483.us.3.preheader, %polly.loop_header483.us.3
  %polly.indvar487.us.3 = phi i64 [ %polly.indvar_next488.us.3, %polly.loop_header483.us.3 ], [ %polly.indvar487.us.3.ph, %polly.loop_header483.us.3.preheader ]
  %754 = add nuw nsw i64 %polly.indvar487.us.3, %339
  %polly.access.add.Packed_MemRef_call1303491.us.3 = add nuw nsw i64 %polly.indvar487.us.3, 3600
  %polly.access.Packed_MemRef_call1303492.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.3
  %_p_scalar_493.us.3 = load double, double* %polly.access.Packed_MemRef_call1303492.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_497.us.3, %_p_scalar_493.us.3
  %polly.access.add.Packed_MemRef_call2305499.us.3 = add nuw nsw i64 %754, %polly.access.mul.Packed_MemRef_call2305494.us.3
  %polly.access.Packed_MemRef_call2305500.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call2305500.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_505.us.3, %_p_scalar_501.us.3
  %755 = shl i64 %754, 3
  %756 = add i64 %755, %373
  %scevgep506.us.3 = getelementptr i8, i8* %call, i64 %756
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
  %757 = add nuw nsw i64 %polly.indvar669.us.1, %501
  %polly.access.mul.call1673.us.1 = mul nuw nsw i64 %757, 1000
  %polly.access.add.call1674.us.1 = add nuw nsw i64 %442, %polly.access.mul.call1673.us.1
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
  %polly.access.add.call1682.us.1 = or i64 %533, 1
  %polly.access.call1683.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.1
  %polly.access.call1683.load.us.1 = load double, double* %polly.access.call1683.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.1 = add nsw i64 %531, 1200
  %polly.access.Packed_MemRef_call1514686.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.1
  store double %polly.access.call1683.load.us.1, double* %polly.access.Packed_MemRef_call1514686.us.1, align 8
  br label %polly.loop_header665.us.2.preheader

polly.loop_header665.us.2.preheader:              ; preds = %polly.then678.us.1, %polly.cond676.loopexit.us.1
  br label %polly.loop_header665.us.2

polly.loop_header665.us.2:                        ; preds = %polly.loop_header665.us.2.preheader, %polly.loop_header665.us.2
  %polly.indvar669.us.2 = phi i64 [ %polly.indvar_next670.us.2, %polly.loop_header665.us.2 ], [ 0, %polly.loop_header665.us.2.preheader ]
  %758 = add nuw nsw i64 %polly.indvar669.us.2, %501
  %polly.access.mul.call1673.us.2 = mul nuw nsw i64 %758, 1000
  %polly.access.add.call1674.us.2 = add nuw nsw i64 %443, %polly.access.mul.call1673.us.2
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
  %polly.access.add.call1682.us.2 = or i64 %533, 2
  %polly.access.call1683.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.2
  %polly.access.call1683.load.us.2 = load double, double* %polly.access.call1683.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.2 = add nsw i64 %531, 2400
  %polly.access.Packed_MemRef_call1514686.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.2
  store double %polly.access.call1683.load.us.2, double* %polly.access.Packed_MemRef_call1514686.us.2, align 8
  br label %polly.loop_header665.us.3.preheader

polly.loop_header665.us.3.preheader:              ; preds = %polly.then678.us.2, %polly.cond676.loopexit.us.2
  br label %polly.loop_header665.us.3

polly.loop_header665.us.3:                        ; preds = %polly.loop_header665.us.3.preheader, %polly.loop_header665.us.3
  %polly.indvar669.us.3 = phi i64 [ %polly.indvar_next670.us.3, %polly.loop_header665.us.3 ], [ 0, %polly.loop_header665.us.3.preheader ]
  %759 = add nuw nsw i64 %polly.indvar669.us.3, %501
  %polly.access.mul.call1673.us.3 = mul nuw nsw i64 %759, 1000
  %polly.access.add.call1674.us.3 = add nuw nsw i64 %444, %polly.access.mul.call1673.us.3
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
  %polly.access.add.call1682.us.3 = or i64 %533, 3
  %polly.access.call1683.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.3
  %polly.access.call1683.load.us.3 = load double, double* %polly.access.call1683.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.3 = add nsw i64 %531, 3600
  %polly.access.Packed_MemRef_call1514686.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.3
  store double %polly.access.call1683.load.us.3, double* %polly.access.Packed_MemRef_call1514686.us.3, align 8
  br label %polly.loop_header687.preheader

polly.loop_header694.us.1:                        ; preds = %polly.loop_header694.us.1.preheader, %polly.loop_header694.us.1
  %polly.indvar698.us.1 = phi i64 [ %polly.indvar_next699.us.1, %polly.loop_header694.us.1 ], [ %polly.indvar698.us.1.ph, %polly.loop_header694.us.1.preheader ]
  %760 = add nuw nsw i64 %polly.indvar698.us.1, %501
  %polly.access.add.Packed_MemRef_call1514702.us.1 = add nuw nsw i64 %polly.indvar698.us.1, 1200
  %polly.access.Packed_MemRef_call1514703.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.1
  %_p_scalar_704.us.1 = load double, double* %polly.access.Packed_MemRef_call1514703.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_708.us.1, %_p_scalar_704.us.1
  %polly.access.add.Packed_MemRef_call2516710.us.1 = add nuw nsw i64 %760, %polly.access.mul.Packed_MemRef_call2516705.us.1
  %polly.access.Packed_MemRef_call2516711.us.1 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.1
  %_p_scalar_712.us.1 = load double, double* %polly.access.Packed_MemRef_call2516711.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_716.us.1, %_p_scalar_712.us.1
  %761 = shl i64 %760, 3
  %762 = add i64 %761, %535
  %scevgep717.us.1 = getelementptr i8, i8* %call, i64 %762
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
  %polly.access.add.Packed_MemRef_call2516706.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.2, %532
  %polly.access.Packed_MemRef_call2516707.us.2 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.2
  %_p_scalar_708.us.2 = load double, double* %polly.access.Packed_MemRef_call2516707.us.2, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.2 = add nsw i64 %531, 2400
  %polly.access.Packed_MemRef_call1514715.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.2
  %_p_scalar_716.us.2 = load double, double* %polly.access.Packed_MemRef_call1514715.us.2, align 8
  %min.iters.check1280 = icmp ult i64 %523, 4
  br i1 %min.iters.check1280, label %polly.loop_header694.us.2.preheader, label %vector.memcheck1262

vector.memcheck1262:                              ; preds = %polly.loop_exit696.loopexit.us.1
  %bound01271 = icmp ult i8* %scevgep1264, %scevgep1270
  %bound11272 = icmp ult i8* %scevgep1268, %scevgep1267
  %found.conflict1273 = and i1 %bound01271, %bound11272
  br i1 %found.conflict1273, label %polly.loop_header694.us.2.preheader, label %vector.ph1281

vector.ph1281:                                    ; preds = %vector.memcheck1262
  %n.vec1283 = and i64 %523, -4
  %broadcast.splatinsert1289 = insertelement <4 x double> poison, double %_p_scalar_708.us.2, i32 0
  %broadcast.splat1290 = shufflevector <4 x double> %broadcast.splatinsert1289, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1292 = insertelement <4 x double> poison, double %_p_scalar_716.us.2, i32 0
  %broadcast.splat1293 = shufflevector <4 x double> %broadcast.splatinsert1292, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1277 ]
  %763 = add nuw nsw i64 %index1284, %501
  %764 = add nuw nsw i64 %index1284, 2400
  %765 = getelementptr double, double* %Packed_MemRef_call1514, i64 %764
  %766 = bitcast double* %765 to <4 x double>*
  %wide.load1288 = load <4 x double>, <4 x double>* %766, align 8, !alias.scope !180
  %767 = fmul fast <4 x double> %broadcast.splat1290, %wide.load1288
  %768 = add nuw nsw i64 %763, %polly.access.mul.Packed_MemRef_call2516705.us.2
  %769 = getelementptr double, double* %Packed_MemRef_call2516, i64 %768
  %770 = bitcast double* %769 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %770, align 8
  %771 = fmul fast <4 x double> %broadcast.splat1293, %wide.load1291
  %772 = shl i64 %763, 3
  %773 = add i64 %772, %535
  %774 = getelementptr i8, i8* %call, i64 %773
  %775 = bitcast i8* %774 to <4 x double>*
  %wide.load1294 = load <4 x double>, <4 x double>* %775, align 8, !alias.scope !183, !noalias !185
  %776 = fadd fast <4 x double> %771, %767
  %777 = fmul fast <4 x double> %776, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %778 = fadd fast <4 x double> %777, %wide.load1294
  %779 = bitcast i8* %774 to <4 x double>*
  store <4 x double> %778, <4 x double>* %779, align 8, !alias.scope !183, !noalias !185
  %index.next1285 = add i64 %index1284, 4
  %780 = icmp eq i64 %index.next1285, %n.vec1283
  br i1 %780, label %middle.block1275, label %vector.body1277, !llvm.loop !186

middle.block1275:                                 ; preds = %vector.body1277
  %cmp.n1287 = icmp eq i64 %523, %n.vec1283
  br i1 %cmp.n1287, label %polly.loop_exit696.loopexit.us.2, label %polly.loop_header694.us.2.preheader

polly.loop_header694.us.2.preheader:              ; preds = %vector.memcheck1262, %polly.loop_exit696.loopexit.us.1, %middle.block1275
  %polly.indvar698.us.2.ph = phi i64 [ 0, %vector.memcheck1262 ], [ 0, %polly.loop_exit696.loopexit.us.1 ], [ %n.vec1283, %middle.block1275 ]
  br label %polly.loop_header694.us.2

polly.loop_header694.us.2:                        ; preds = %polly.loop_header694.us.2.preheader, %polly.loop_header694.us.2
  %polly.indvar698.us.2 = phi i64 [ %polly.indvar_next699.us.2, %polly.loop_header694.us.2 ], [ %polly.indvar698.us.2.ph, %polly.loop_header694.us.2.preheader ]
  %781 = add nuw nsw i64 %polly.indvar698.us.2, %501
  %polly.access.add.Packed_MemRef_call1514702.us.2 = add nuw nsw i64 %polly.indvar698.us.2, 2400
  %polly.access.Packed_MemRef_call1514703.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.2
  %_p_scalar_704.us.2 = load double, double* %polly.access.Packed_MemRef_call1514703.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_708.us.2, %_p_scalar_704.us.2
  %polly.access.add.Packed_MemRef_call2516710.us.2 = add nuw nsw i64 %781, %polly.access.mul.Packed_MemRef_call2516705.us.2
  %polly.access.Packed_MemRef_call2516711.us.2 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.2
  %_p_scalar_712.us.2 = load double, double* %polly.access.Packed_MemRef_call2516711.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_716.us.2, %_p_scalar_712.us.2
  %782 = shl i64 %781, 3
  %783 = add i64 %782, %535
  %scevgep717.us.2 = getelementptr i8, i8* %call, i64 %783
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
  %polly.access.add.Packed_MemRef_call2516706.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.3, %532
  %polly.access.Packed_MemRef_call2516707.us.3 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.3
  %_p_scalar_708.us.3 = load double, double* %polly.access.Packed_MemRef_call2516707.us.3, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.3 = add nsw i64 %531, 3600
  %polly.access.Packed_MemRef_call1514715.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.3
  %_p_scalar_716.us.3 = load double, double* %polly.access.Packed_MemRef_call1514715.us.3, align 8
  %min.iters.check1247 = icmp ult i64 %530, 4
  br i1 %min.iters.check1247, label %polly.loop_header694.us.3.preheader, label %vector.ph1248

vector.ph1248:                                    ; preds = %polly.loop_exit696.loopexit.us.2
  %n.vec1250 = and i64 %530, -4
  %broadcast.splatinsert1256 = insertelement <4 x double> poison, double %_p_scalar_708.us.3, i32 0
  %broadcast.splat1257 = shufflevector <4 x double> %broadcast.splatinsert1256, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1259 = insertelement <4 x double> poison, double %_p_scalar_716.us.3, i32 0
  %broadcast.splat1260 = shufflevector <4 x double> %broadcast.splatinsert1259, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1242 ]
  %784 = add nuw nsw i64 %index1251, %501
  %785 = add nuw nsw i64 %index1251, 3600
  %786 = getelementptr double, double* %Packed_MemRef_call1514, i64 %785
  %787 = bitcast double* %786 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %787, align 8
  %788 = fmul fast <4 x double> %broadcast.splat1257, %wide.load1255
  %789 = add nuw nsw i64 %784, %polly.access.mul.Packed_MemRef_call2516705.us.3
  %790 = getelementptr double, double* %Packed_MemRef_call2516, i64 %789
  %791 = bitcast double* %790 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %791, align 8
  %792 = fmul fast <4 x double> %broadcast.splat1260, %wide.load1258
  %793 = shl i64 %784, 3
  %794 = add i64 %793, %535
  %795 = getelementptr i8, i8* %call, i64 %794
  %796 = bitcast i8* %795 to <4 x double>*
  %wide.load1261 = load <4 x double>, <4 x double>* %796, align 8, !alias.scope !118, !noalias !120
  %797 = fadd fast <4 x double> %792, %788
  %798 = fmul fast <4 x double> %797, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %799 = fadd fast <4 x double> %798, %wide.load1261
  %800 = bitcast i8* %795 to <4 x double>*
  store <4 x double> %799, <4 x double>* %800, align 8, !alias.scope !118, !noalias !120
  %index.next1252 = add i64 %index1251, 4
  %801 = icmp eq i64 %index.next1252, %n.vec1250
  br i1 %801, label %middle.block1240, label %vector.body1242, !llvm.loop !188

middle.block1240:                                 ; preds = %vector.body1242
  %cmp.n1254 = icmp eq i64 %530, %n.vec1250
  br i1 %cmp.n1254, label %polly.loop_exit689, label %polly.loop_header694.us.3.preheader

polly.loop_header694.us.3.preheader:              ; preds = %polly.loop_exit696.loopexit.us.2, %middle.block1240
  %polly.indvar698.us.3.ph = phi i64 [ 0, %polly.loop_exit696.loopexit.us.2 ], [ %n.vec1250, %middle.block1240 ]
  br label %polly.loop_header694.us.3

polly.loop_header694.us.3:                        ; preds = %polly.loop_header694.us.3.preheader, %polly.loop_header694.us.3
  %polly.indvar698.us.3 = phi i64 [ %polly.indvar_next699.us.3, %polly.loop_header694.us.3 ], [ %polly.indvar698.us.3.ph, %polly.loop_header694.us.3.preheader ]
  %802 = add nuw nsw i64 %polly.indvar698.us.3, %501
  %polly.access.add.Packed_MemRef_call1514702.us.3 = add nuw nsw i64 %polly.indvar698.us.3, 3600
  %polly.access.Packed_MemRef_call1514703.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.3
  %_p_scalar_704.us.3 = load double, double* %polly.access.Packed_MemRef_call1514703.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_708.us.3, %_p_scalar_704.us.3
  %polly.access.add.Packed_MemRef_call2516710.us.3 = add nuw nsw i64 %802, %polly.access.mul.Packed_MemRef_call2516705.us.3
  %polly.access.Packed_MemRef_call2516711.us.3 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.3
  %_p_scalar_712.us.3 = load double, double* %polly.access.Packed_MemRef_call2516711.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_716.us.3, %_p_scalar_712.us.3
  %803 = shl i64 %802, 3
  %804 = add i64 %803, %535
  %scevgep717.us.3 = getelementptr i8, i8* %call, i64 %804
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
!26 = !{!"llvm.loop.tile.size", i32 256}
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
